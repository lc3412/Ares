; ModuleID = './line250-keyboard.o.i'
source_filename = "./line250-keyboard.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GSList = type { i8*, %struct._GSList* }
%struct._GHashTable = type opaque
%struct._CONFIG_REC = type { i8*, i32, i32, i8*, %struct._CONFIG_NODE*, %struct._GHashTable*, %struct._GHashTable*, %struct._GScanner*, %struct._GIOChannel*, i32, i32 }
%struct._CONFIG_NODE = type { i32, i8*, i8* }
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
%struct._GTree = type opaque
%struct._WINDOW_REC = type { i32, i8*, i32, i32, %struct._GSList*, %struct._WI_ITEM_REC*, %struct._SERVER_REC*, %struct._SERVER_REC*, i8*, i32, %struct._GSList*, i8, %struct.HISTORY_REC*, i8*, i32, i8*, i64, i64, i8*, i8*, i8* }
%struct._WI_ITEM_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)* }
%struct._SERVER_REC = type opaque
%struct.HISTORY_REC = type { i8*, %struct._GList*, i32, i32, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._KEYBOARD_REC = type { i8*, i32, i8* }
%struct._KEYINFO_REC = type { i8*, i8*, %struct._GSList*, %struct._GSList* }
%struct._KEY_REC = type { %struct._KEYINFO_REC*, i8*, i8* }

@.str = private unnamed_addr constant [17 x i8] c"keyboard created\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"keyboard destroyed\00", align 1
@keyinfos = common global %struct._GSList* null, align 8
@key_config_frozen = internal global i32 0, align 4
@__func__.key_configure_thaw = private unnamed_addr constant [19 x i8] c"key_configure_thaw\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"key_config_frozen > 0\00", align 1
@__func__.key_bind = private unnamed_addr constant [9 x i8] c"key_bind\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"id != NULL\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"func != NULL\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"key_bind(%s) should have description!\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"key \00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"fe-common/core\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"keyinfo created\00", align 1
@__func__.key_unbind = private unnamed_addr constant [11 x i8] c"key_unbind\00", align 1
@__func__.key_configure_add = private unnamed_addr constant [18 x i8] c"key_configure_add\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"key != NULL && *key != '\5C0'\00", align 1
@__func__.key_configure_remove = private unnamed_addr constant [21 x i8] c"key_configure_remove\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"key != NULL\00", align 1
@keys = internal global %struct._GHashTable* null, align 8
@__func__.key_configure_reset = private unnamed_addr constant [20 x i8] c"key_configure_reset\00", align 1
@mainconfig = external global %struct._CONFIG_REC*, align 8
@.str.11 = private unnamed_addr constant [10 x i8] c"(keyboard\00", align 1
@default_keys = internal global %struct._GHashTable* null, align 8
@__func__.key_pressed = private unnamed_addr constant [12 x i8] c"key_pressed\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"keyboard != NULL\00", align 1
@used_keys = internal global [256 x i8] zeroinitializer, align 16
@.str.13 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@key_states = internal global %struct._GTree* null, align 8
@key_timeout = internal global i32 0, align 4
@.str.14 = private unnamed_addr constant [19 x i8] c"gui entry redirect\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"key_timeout\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"Run any command\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"Specify name for key binding\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"multi\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"Run multiple commands\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"nothing\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"Do nothing\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"irssi init read settings\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"setup reread\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"complete command bind\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"delete reset list\00", align 1
@g_utf8_skip = external constant i8*, align 8
@__func__.key_configure_create = private unnamed_addr constant [21 x i8] c"key_configure_create\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"key created\00", align 1
@__func__.keyinfo_remove = private unnamed_addr constant [15 x i8] c"keyinfo_remove\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"info != NULL\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"keyinfo destroyed\00", align 1
@__func__.keyconfig_save = private unnamed_addr constant [15 x i8] c"keyconfig_save\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@__func__.keyconfig_clear = private unnamed_addr constant [16 x i8] c"keyconfig_clear\00", align 1
@__func__.key_configure_destroy = private unnamed_addr constant [22 x i8] c"key_configure_destroy\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"rec != NULL\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"key destroyed\00", align 1
@.str.37 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"cmdchars\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"%c%s\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"send command\00", align 1
@active_win = external global %struct._WINDOW_REC*, align 8
@.str.41 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"keyboard\00", align 1
@__func__.key_config_read = private unnamed_addr constant [16 x i8] c"key_config_read\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"node != NULL\00", align 1
@__func__.sig_complete_bind = private unnamed_addr constant [18 x i8] c"sig_complete_bind\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"list != NULL\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"word != NULL\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"line != NULL\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: nounwind uwtable
define %struct._KEYBOARD_REC* @keyboard_create(i8*) #0 !dbg !420 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._KEYBOARD_REC*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !424, metadata !425), !dbg !426
  call void @llvm.dbg.declare(metadata %struct._KEYBOARD_REC** %3, metadata !427, metadata !425), !dbg !428
  %4 = call noalias i8* @g_malloc0_n(i64 1, i64 24), !dbg !429
  %5 = bitcast i8* %4 to %struct._KEYBOARD_REC*, !dbg !430
  store %struct._KEYBOARD_REC* %5, %struct._KEYBOARD_REC** %3, align 8, !dbg !431
  %6 = load i8*, i8** %2, align 8, !dbg !432
  %7 = load %struct._KEYBOARD_REC*, %struct._KEYBOARD_REC** %3, align 8, !dbg !433
  %8 = getelementptr inbounds %struct._KEYBOARD_REC, %struct._KEYBOARD_REC* %7, i32 0, i32 2, !dbg !434
  store i8* %6, i8** %8, align 8, !dbg !435
  %9 = load %struct._KEYBOARD_REC*, %struct._KEYBOARD_REC** %3, align 8, !dbg !436
  %10 = getelementptr inbounds %struct._KEYBOARD_REC, %struct._KEYBOARD_REC* %9, i32 0, i32 1, !dbg !437
  store i32 0, i32* %10, align 8, !dbg !438
  %11 = load %struct._KEYBOARD_REC*, %struct._KEYBOARD_REC** %3, align 8, !dbg !439
  %12 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct._KEYBOARD_REC* %11), !dbg !440
  %13 = load %struct._KEYBOARD_REC*, %struct._KEYBOARD_REC** %3, align 8, !dbg !441
  ret %struct._KEYBOARD_REC* %13, !dbg !442
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare noalias i8* @g_malloc0_n(i64, i64) #2

declare i32 @signal_emit(i8*, i32, ...) #2

; Function Attrs: nounwind uwtable
define void @keyboard_destroy(%struct._KEYBOARD_REC*) #0 !dbg !443 {
  %2 = alloca %struct._KEYBOARD_REC*, align 8
  store %struct._KEYBOARD_REC* %0, %struct._KEYBOARD_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._KEYBOARD_REC** %2, metadata !446, metadata !425), !dbg !447
  %3 = load %struct._KEYBOARD_REC*, %struct._KEYBOARD_REC** %2, align 8, !dbg !448
  %4 = getelementptr inbounds %struct._KEYBOARD_REC, %struct._KEYBOARD_REC* %3, i32 0, i32 1, !dbg !450
  %5 = load i32, i32* %4, align 8, !dbg !450
  %6 = icmp ugt i32 %5, 0, !dbg !451
  br i1 %6, label %7, label %14, !dbg !452

; <label>:7:                                      ; preds = %1
  %8 = load %struct._KEYBOARD_REC*, %struct._KEYBOARD_REC** %2, align 8, !dbg !453
  %9 = getelementptr inbounds %struct._KEYBOARD_REC, %struct._KEYBOARD_REC* %8, i32 0, i32 1, !dbg !455
  %10 = load i32, i32* %9, align 8, !dbg !455
  %11 = call i32 @g_source_remove(i32 %10), !dbg !456
  %12 = load %struct._KEYBOARD_REC*, %struct._KEYBOARD_REC** %2, align 8, !dbg !457
  %13 = getelementptr inbounds %struct._KEYBOARD_REC, %struct._KEYBOARD_REC* %12, i32 0, i32 1, !dbg !458
  store i32 0, i32* %13, align 8, !dbg !459
  br label %14, !dbg !460

; <label>:14:                                     ; preds = %7, %1
  %15 = load %struct._KEYBOARD_REC*, %struct._KEYBOARD_REC** %2, align 8, !dbg !461
  %16 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 1, %struct._KEYBOARD_REC* %15), !dbg !462
  %17 = load %struct._KEYBOARD_REC*, %struct._KEYBOARD_REC** %2, align 8, !dbg !463
  %18 = getelementptr inbounds %struct._KEYBOARD_REC, %struct._KEYBOARD_REC* %17, i32 0, i32 0, !dbg !464
  %19 = load i8*, i8** %18, align 8, !dbg !464
  call void @g_free(i8* %19), !dbg !465
  %20 = load %struct._KEYBOARD_REC*, %struct._KEYBOARD_REC** %2, align 8, !dbg !466
  %21 = bitcast %struct._KEYBOARD_REC* %20 to i8*, !dbg !466
  call void @g_free(i8* %21), !dbg !467
  ret void, !dbg !468
}

declare i32 @g_source_remove(i32) #2

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define %struct._KEYINFO_REC* @key_info_find(i8*) #0 !dbg !469 {
  %2 = alloca %struct._KEYINFO_REC*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct._KEYINFO_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !472, metadata !425), !dbg !473
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !474, metadata !425), !dbg !475
  %6 = load %struct._GSList*, %struct._GSList** @keyinfos, align 8, !dbg !476
  store %struct._GSList* %6, %struct._GSList** %4, align 8, !dbg !478
  br label %7, !dbg !479

; <label>:7:                                      ; preds = %24, %1
  %8 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !480
  %9 = icmp ne %struct._GSList* %8, null, !dbg !483
  br i1 %9, label %10, label %28, !dbg !484

; <label>:10:                                     ; preds = %7
  call void @llvm.dbg.declare(metadata %struct._KEYINFO_REC** %5, metadata !485, metadata !425), !dbg !487
  %11 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !488
  %12 = getelementptr inbounds %struct._GSList, %struct._GSList* %11, i32 0, i32 0, !dbg !489
  %13 = load i8*, i8** %12, align 8, !dbg !489
  %14 = bitcast i8* %13 to %struct._KEYINFO_REC*, !dbg !488
  store %struct._KEYINFO_REC* %14, %struct._KEYINFO_REC** %5, align 8, !dbg !487
  %15 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %5, align 8, !dbg !490
  %16 = getelementptr inbounds %struct._KEYINFO_REC, %struct._KEYINFO_REC* %15, i32 0, i32 0, !dbg !492
  %17 = load i8*, i8** %16, align 8, !dbg !492
  %18 = load i8*, i8** %3, align 8, !dbg !493
  %19 = call i32 @g_ascii_strcasecmp(i8* %17, i8* %18), !dbg !494
  %20 = icmp eq i32 %19, 0, !dbg !495
  br i1 %20, label %21, label %23, !dbg !496

; <label>:21:                                     ; preds = %10
  %22 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %5, align 8, !dbg !497
  store %struct._KEYINFO_REC* %22, %struct._KEYINFO_REC** %2, align 8, !dbg !498
  br label %29, !dbg !498

; <label>:23:                                     ; preds = %10
  br label %24, !dbg !499

; <label>:24:                                     ; preds = %23
  %25 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !500
  %26 = getelementptr inbounds %struct._GSList, %struct._GSList* %25, i32 0, i32 1, !dbg !502
  %27 = load %struct._GSList*, %struct._GSList** %26, align 8, !dbg !502
  store %struct._GSList* %27, %struct._GSList** %4, align 8, !dbg !503
  br label %7, !dbg !504, !llvm.loop !505

; <label>:28:                                     ; preds = %7
  store %struct._KEYINFO_REC* null, %struct._KEYINFO_REC** %2, align 8, !dbg !507
  br label %29, !dbg !507

; <label>:29:                                     ; preds = %28, %21
  %30 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %2, align 8, !dbg !508
  ret %struct._KEYINFO_REC* %30, !dbg !508
}

declare i32 @g_ascii_strcasecmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @key_configure_freeze() #0 !dbg !509 {
  %1 = load i32, i32* @key_config_frozen, align 4, !dbg !512
  %2 = add nsw i32 %1, 1, !dbg !512
  store i32 %2, i32* @key_config_frozen, align 4, !dbg !512
  ret void, !dbg !513
}

; Function Attrs: nounwind uwtable
define void @key_configure_thaw() #0 !dbg !514 {
  br label %1, !dbg !515, !llvm.loop !516

; <label>:1:                                      ; preds = %0
  %2 = load i32, i32* @key_config_frozen, align 4, !dbg !517
  %3 = icmp sgt i32 %2, 0, !dbg !521
  br i1 %3, label %4, label %5, !dbg !517

; <label>:4:                                      ; preds = %1
  br label %6, !dbg !522

; <label>:5:                                      ; preds = %1
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.key_configure_thaw, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0)), !dbg !525
  br label %12, !dbg !528

; <label>:6:                                      ; preds = %4
  br label %7, !dbg !529

; <label>:7:                                      ; preds = %6
  %8 = load i32, i32* @key_config_frozen, align 4, !dbg !531
  %9 = add nsw i32 %8, -1, !dbg !531
  store i32 %9, i32* @key_config_frozen, align 4, !dbg !531
  %10 = icmp eq i32 %9, 0, !dbg !533
  br i1 %10, label %11, label %12, !dbg !534

; <label>:11:                                     ; preds = %7
  call void @key_states_rescan(), !dbg !535
  br label %12, !dbg !535

; <label>:12:                                     ; preds = %5, %11, %7
  ret void, !dbg !536
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @key_states_rescan() #0 !dbg !537 {
  %1 = alloca %struct._GString*, align 8
  call void @llvm.dbg.declare(metadata %struct._GString** %1, metadata !538, metadata !425), !dbg !550
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @used_keys, i32 0, i32 0), i8 0, i64 256, i32 16, i1 false), !dbg !551
  %2 = load %struct._GTree*, %struct._GTree** @key_states, align 8, !dbg !552
  call void @g_tree_foreach(%struct._GTree* %2, i32 (i8*, i8*, i8*)* bitcast (i32 (i8*)* @key_state_destroy to i32 (i8*, i8*, i8*)*), i8* null), !dbg !553
  %3 = load %struct._GTree*, %struct._GTree** @key_states, align 8, !dbg !554
  call void @g_tree_destroy(%struct._GTree* %3), !dbg !555
  %4 = call %struct._GTree* @g_tree_new(i32 (i8*, i8*)* @g_strcmp0), !dbg !556
  store %struct._GTree* %4, %struct._GTree** @key_states, align 8, !dbg !557
  %5 = call %struct._GString* @g_string_new(i8* null), !dbg !558
  store %struct._GString* %5, %struct._GString** %1, align 8, !dbg !559
  %6 = load %struct._GHashTable*, %struct._GHashTable** @keys, align 8, !dbg !560
  %7 = load %struct._GString*, %struct._GString** %1, align 8, !dbg !561
  %8 = bitcast %struct._GString* %7 to i8*, !dbg !561
  call void @g_hash_table_foreach(%struct._GHashTable* %6, void (i8*, i8*, i8*)* bitcast (void (i8*, %struct._KEY_REC*)* @key_states_scan_key to void (i8*, i8*, i8*)*), i8* %8), !dbg !562
  %9 = load %struct._GString*, %struct._GString** %1, align 8, !dbg !563
  %10 = call i8* @g_string_free(%struct._GString* %9, i32 1), !dbg !564
  ret void, !dbg !565
}

; Function Attrs: nounwind uwtable
define void @key_bind(i8*, i8*, i8*, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*) #0 !dbg !566 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca void (i8*, i8*, i8*, i8*, i8*, i8*)*, align 8
  %11 = alloca %struct._KEYINFO_REC*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !569, metadata !425), !dbg !570
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !571, metadata !425), !dbg !572
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !573, metadata !425), !dbg !574
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !575, metadata !425), !dbg !576
  store void (i8*, i8*, i8*, i8*, i8*, i8*)* %4, void (i8*, i8*, i8*, i8*, i8*, i8*)** %10, align 8
  call void @llvm.dbg.declare(metadata void (i8*, i8*, i8*, i8*, i8*, i8*)** %10, metadata !577, metadata !425), !dbg !578
  call void @llvm.dbg.declare(metadata %struct._KEYINFO_REC** %11, metadata !579, metadata !425), !dbg !580
  call void @llvm.dbg.declare(metadata i8** %12, metadata !581, metadata !425), !dbg !582
  br label %13, !dbg !583, !llvm.loop !584

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %6, align 8, !dbg !585
  %15 = icmp ne i8* %14, null, !dbg !589
  br i1 %15, label %16, label %17, !dbg !585

; <label>:16:                                     ; preds = %13
  br label %18, !dbg !590

; <label>:17:                                     ; preds = %13
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.key_bind, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0)), !dbg !593
  br label %73, !dbg !596

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !597

; <label>:19:                                     ; preds = %18
  %20 = load i8*, i8** %6, align 8, !dbg !599
  %21 = call %struct._KEYINFO_REC* @key_info_find(i8* %20), !dbg !600
  store %struct._KEYINFO_REC* %21, %struct._KEYINFO_REC** %11, align 8, !dbg !601
  %22 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %11, align 8, !dbg !602
  %23 = icmp eq %struct._KEYINFO_REC* %22, null, !dbg !604
  br i1 %23, label %24, label %58, !dbg !605

; <label>:24:                                     ; preds = %19
  br label %25, !dbg !606, !llvm.loop !608

; <label>:25:                                     ; preds = %24
  %26 = load void (i8*, i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*, i8*)** %10, align 8, !dbg !609
  %27 = icmp ne void (i8*, i8*, i8*, i8*, i8*, i8*)* %26, null, !dbg !613
  br i1 %27, label %28, label %29, !dbg !609

; <label>:28:                                     ; preds = %25
  br label %30, !dbg !614

; <label>:29:                                     ; preds = %25
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.key_bind, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0)), !dbg !617
  br label %73, !dbg !620

; <label>:30:                                     ; preds = %28
  br label %31, !dbg !621

; <label>:31:                                     ; preds = %30
  %32 = load i8*, i8** %7, align 8, !dbg !623
  %33 = icmp eq i8* %32, null, !dbg !625
  br i1 %33, label %34, label %36, !dbg !626

; <label>:34:                                     ; preds = %31
  %35 = load i8*, i8** %6, align 8, !dbg !627
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0), i8* %35), !dbg !628
  br label %36, !dbg !628

; <label>:36:                                     ; preds = %34, %31
  %37 = call noalias i8* @g_malloc0_n(i64 1, i64 32), !dbg !629
  %38 = bitcast i8* %37 to %struct._KEYINFO_REC*, !dbg !630
  store %struct._KEYINFO_REC* %38, %struct._KEYINFO_REC** %11, align 8, !dbg !631
  %39 = load i8*, i8** %6, align 8, !dbg !632
  %40 = call noalias i8* @g_strdup(i8* %39), !dbg !633
  %41 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %11, align 8, !dbg !634
  %42 = getelementptr inbounds %struct._KEYINFO_REC, %struct._KEYINFO_REC* %41, i32 0, i32 0, !dbg !635
  store i8* %40, i8** %42, align 8, !dbg !636
  %43 = load i8*, i8** %7, align 8, !dbg !637
  %44 = call noalias i8* @g_strdup(i8* %43), !dbg !638
  %45 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %11, align 8, !dbg !639
  %46 = getelementptr inbounds %struct._KEYINFO_REC, %struct._KEYINFO_REC* %45, i32 0, i32 1, !dbg !640
  store i8* %44, i8** %46, align 8, !dbg !641
  %47 = load %struct._GSList*, %struct._GSList** @keyinfos, align 8, !dbg !642
  %48 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %11, align 8, !dbg !643
  %49 = bitcast %struct._KEYINFO_REC* %48 to i8*, !dbg !643
  %50 = call %struct._GSList* @g_slist_append(%struct._GSList* %47, i8* %49), !dbg !644
  store %struct._GSList* %50, %struct._GSList** @keyinfos, align 8, !dbg !645
  %51 = load i8*, i8** %6, align 8, !dbg !646
  %52 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* %51, i8* null), !dbg !647
  store i8* %52, i8** %12, align 8, !dbg !648
  %53 = load i8*, i8** %12, align 8, !dbg !649
  %54 = load void (i8*, i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*, i8*)** %10, align 8, !dbg !650
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i32 0, i8* %53, void (i8*, i8*, i8*, i8*, i8*, i8*)* %54, i8* null), !dbg !651
  %55 = load i8*, i8** %12, align 8, !dbg !652
  call void @g_free(i8* %55), !dbg !653
  %56 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %11, align 8, !dbg !654
  %57 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i32 1, %struct._KEYINFO_REC* %56), !dbg !655
  br label %58, !dbg !656

; <label>:58:                                     ; preds = %36, %19
  %59 = load i8*, i8** %8, align 8, !dbg !657
  %60 = icmp ne i8* %59, null, !dbg !659
  br i1 %60, label %61, label %73, !dbg !660

; <label>:61:                                     ; preds = %58
  %62 = load i8*, i8** %8, align 8, !dbg !661
  %63 = load i8, i8* %62, align 1, !dbg !663
  %64 = sext i8 %63 to i32, !dbg !663
  %65 = icmp ne i32 %64, 0, !dbg !664
  br i1 %65, label %66, label %73, !dbg !665

; <label>:66:                                     ; preds = %61
  %67 = load i8*, i8** %6, align 8, !dbg !666
  %68 = load i8*, i8** %8, align 8, !dbg !668
  %69 = load i8*, i8** %9, align 8, !dbg !669
  call void @key_default_add(i8* %67, i8* %68, i8* %69), !dbg !670
  %70 = load i8*, i8** %6, align 8, !dbg !671
  %71 = load i8*, i8** %8, align 8, !dbg !672
  %72 = load i8*, i8** %9, align 8, !dbg !673
  call void @key_configure_create(i8* %70, i8* %71, i8* %72), !dbg !674
  br label %73, !dbg !675

; <label>:73:                                     ; preds = %17, %29, %66, %61, %58
  ret void, !dbg !676
}

declare void @g_log(i8*, i32, i8*, ...) #2

declare noalias i8* @g_strdup(i8*) #2

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #2

declare noalias i8* @g_strconcat(i8*, ...) #2

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @key_default_add(i8*, i8*, i8*) #0 !dbg !677 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._KEYINFO_REC*, align 8
  %8 = alloca %struct._KEY_REC*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !680, metadata !425), !dbg !681
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !682, metadata !425), !dbg !683
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !684, metadata !425), !dbg !685
  call void @llvm.dbg.declare(metadata %struct._KEYINFO_REC** %7, metadata !686, metadata !425), !dbg !687
  call void @llvm.dbg.declare(metadata %struct._KEY_REC** %8, metadata !688, metadata !425), !dbg !689
  %9 = load i8*, i8** %4, align 8, !dbg !690
  %10 = call %struct._KEYINFO_REC* @key_info_find(i8* %9), !dbg !691
  store %struct._KEYINFO_REC* %10, %struct._KEYINFO_REC** %7, align 8, !dbg !692
  %11 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %7, align 8, !dbg !693
  %12 = icmp eq %struct._KEYINFO_REC* %11, null, !dbg !695
  br i1 %12, label %13, label %14, !dbg !696

; <label>:13:                                     ; preds = %3
  br label %65, !dbg !697

; <label>:14:                                     ; preds = %3
  %15 = load %struct._GHashTable*, %struct._GHashTable** @default_keys, align 8, !dbg !698
  %16 = load i8*, i8** %5, align 8, !dbg !699
  %17 = call i8* @g_hash_table_lookup(%struct._GHashTable* %15, i8* %16), !dbg !700
  %18 = bitcast i8* %17 to %struct._KEY_REC*, !dbg !700
  store %struct._KEY_REC* %18, %struct._KEY_REC** %8, align 8, !dbg !701
  %19 = load %struct._KEY_REC*, %struct._KEY_REC** %8, align 8, !dbg !702
  %20 = icmp ne %struct._KEY_REC* %19, null, !dbg !704
  br i1 %20, label %21, label %36, !dbg !705

; <label>:21:                                     ; preds = %14
  %22 = load %struct._KEY_REC*, %struct._KEY_REC** %8, align 8, !dbg !706
  %23 = getelementptr inbounds %struct._KEY_REC, %struct._KEY_REC* %22, i32 0, i32 0, !dbg !708
  %24 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %23, align 8, !dbg !708
  %25 = getelementptr inbounds %struct._KEYINFO_REC, %struct._KEYINFO_REC* %24, i32 0, i32 3, !dbg !709
  %26 = load %struct._GSList*, %struct._GSList** %25, align 8, !dbg !709
  %27 = load %struct._KEY_REC*, %struct._KEY_REC** %8, align 8, !dbg !710
  %28 = bitcast %struct._KEY_REC* %27 to i8*, !dbg !710
  %29 = call %struct._GSList* @g_slist_remove(%struct._GSList* %26, i8* %28), !dbg !711
  %30 = load %struct._KEY_REC*, %struct._KEY_REC** %8, align 8, !dbg !712
  %31 = getelementptr inbounds %struct._KEY_REC, %struct._KEY_REC* %30, i32 0, i32 0, !dbg !713
  %32 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %31, align 8, !dbg !713
  %33 = getelementptr inbounds %struct._KEYINFO_REC, %struct._KEYINFO_REC* %32, i32 0, i32 3, !dbg !714
  store %struct._GSList* %29, %struct._GSList** %33, align 8, !dbg !715
  %34 = load %struct._KEY_REC*, %struct._KEY_REC** %8, align 8, !dbg !716
  %35 = load %struct._GHashTable*, %struct._GHashTable** @default_keys, align 8, !dbg !717
  call void @key_destroy(%struct._KEY_REC* %34, %struct._GHashTable* %35), !dbg !718
  br label %36, !dbg !719

; <label>:36:                                     ; preds = %21, %14
  %37 = call noalias i8* @g_malloc0_n(i64 1, i64 24), !dbg !720
  %38 = bitcast i8* %37 to %struct._KEY_REC*, !dbg !721
  store %struct._KEY_REC* %38, %struct._KEY_REC** %8, align 8, !dbg !722
  %39 = load i8*, i8** %5, align 8, !dbg !723
  %40 = call noalias i8* @g_strdup(i8* %39), !dbg !724
  %41 = load %struct._KEY_REC*, %struct._KEY_REC** %8, align 8, !dbg !725
  %42 = getelementptr inbounds %struct._KEY_REC, %struct._KEY_REC* %41, i32 0, i32 1, !dbg !726
  store i8* %40, i8** %42, align 8, !dbg !727
  %43 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %7, align 8, !dbg !728
  %44 = load %struct._KEY_REC*, %struct._KEY_REC** %8, align 8, !dbg !729
  %45 = getelementptr inbounds %struct._KEY_REC, %struct._KEY_REC* %44, i32 0, i32 0, !dbg !730
  store %struct._KEYINFO_REC* %43, %struct._KEYINFO_REC** %45, align 8, !dbg !731
  %46 = load i8*, i8** %6, align 8, !dbg !732
  %47 = call noalias i8* @g_strdup(i8* %46), !dbg !733
  %48 = load %struct._KEY_REC*, %struct._KEY_REC** %8, align 8, !dbg !734
  %49 = getelementptr inbounds %struct._KEY_REC, %struct._KEY_REC* %48, i32 0, i32 2, !dbg !735
  store i8* %47, i8** %49, align 8, !dbg !736
  %50 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %7, align 8, !dbg !737
  %51 = getelementptr inbounds %struct._KEYINFO_REC, %struct._KEYINFO_REC* %50, i32 0, i32 3, !dbg !738
  %52 = load %struct._GSList*, %struct._GSList** %51, align 8, !dbg !738
  %53 = load %struct._KEY_REC*, %struct._KEY_REC** %8, align 8, !dbg !739
  %54 = bitcast %struct._KEY_REC* %53 to i8*, !dbg !739
  %55 = call %struct._GSList* @g_slist_append(%struct._GSList* %52, i8* %54), !dbg !740
  %56 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %7, align 8, !dbg !741
  %57 = getelementptr inbounds %struct._KEYINFO_REC, %struct._KEYINFO_REC* %56, i32 0, i32 3, !dbg !742
  store %struct._GSList* %55, %struct._GSList** %57, align 8, !dbg !743
  %58 = load %struct._GHashTable*, %struct._GHashTable** @default_keys, align 8, !dbg !744
  %59 = load %struct._KEY_REC*, %struct._KEY_REC** %8, align 8, !dbg !745
  %60 = getelementptr inbounds %struct._KEY_REC, %struct._KEY_REC* %59, i32 0, i32 1, !dbg !746
  %61 = load i8*, i8** %60, align 8, !dbg !746
  %62 = load %struct._KEY_REC*, %struct._KEY_REC** %8, align 8, !dbg !747
  %63 = bitcast %struct._KEY_REC* %62 to i8*, !dbg !747
  %64 = call i32 @g_hash_table_insert(%struct._GHashTable* %58, i8* %61, i8* %63), !dbg !748
  br label %65, !dbg !749

; <label>:65:                                     ; preds = %36, %13
  ret void, !dbg !750
}

; Function Attrs: nounwind uwtable
define internal void @key_configure_create(i8*, i8*, i8*) #0 !dbg !752 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._KEYINFO_REC*, align 8
  %8 = alloca %struct._KEY_REC*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !753, metadata !425), !dbg !754
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !755, metadata !425), !dbg !756
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !757, metadata !425), !dbg !758
  call void @llvm.dbg.declare(metadata %struct._KEYINFO_REC** %7, metadata !759, metadata !425), !dbg !760
  call void @llvm.dbg.declare(metadata %struct._KEY_REC** %8, metadata !761, metadata !425), !dbg !762
  br label %9, !dbg !763, !llvm.loop !764

; <label>:9:                                      ; preds = %3
  %10 = load i8*, i8** %4, align 8, !dbg !765
  %11 = icmp ne i8* %10, null, !dbg !769
  br i1 %11, label %12, label %13, !dbg !765

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !770

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.key_configure_create, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0)), !dbg !773
  br label %76, !dbg !776

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !777

; <label>:15:                                     ; preds = %14
  br label %16, !dbg !779, !llvm.loop !780

; <label>:16:                                     ; preds = %15
  %17 = load i8*, i8** %5, align 8, !dbg !781
  %18 = icmp ne i8* %17, null, !dbg !785
  br i1 %18, label %19, label %25, !dbg !786

; <label>:19:                                     ; preds = %16
  %20 = load i8*, i8** %5, align 8, !dbg !787
  %21 = load i8, i8* %20, align 1, !dbg !789
  %22 = sext i8 %21 to i32, !dbg !789
  %23 = icmp ne i32 %22, 0, !dbg !790
  br i1 %23, label %24, label %25, !dbg !791

; <label>:24:                                     ; preds = %19
  br label %26, !dbg !792

; <label>:25:                                     ; preds = %19, %16
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.key_configure_create, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0)), !dbg !795
  br label %76, !dbg !798

; <label>:26:                                     ; preds = %24
  br label %27, !dbg !799

; <label>:27:                                     ; preds = %26
  %28 = load i8*, i8** %4, align 8, !dbg !801
  %29 = call %struct._KEYINFO_REC* @key_info_find(i8* %28), !dbg !802
  store %struct._KEYINFO_REC* %29, %struct._KEYINFO_REC** %7, align 8, !dbg !803
  %30 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %7, align 8, !dbg !804
  %31 = icmp eq %struct._KEYINFO_REC* %30, null, !dbg !806
  br i1 %31, label %32, label %33, !dbg !807

; <label>:32:                                     ; preds = %27
  br label %76, !dbg !808

; <label>:33:                                     ; preds = %27
  %34 = load %struct._GHashTable*, %struct._GHashTable** @keys, align 8, !dbg !809
  %35 = load i8*, i8** %5, align 8, !dbg !810
  %36 = call i8* @g_hash_table_lookup(%struct._GHashTable* %34, i8* %35), !dbg !811
  %37 = bitcast i8* %36 to %struct._KEY_REC*, !dbg !811
  store %struct._KEY_REC* %37, %struct._KEY_REC** %8, align 8, !dbg !812
  %38 = load %struct._KEY_REC*, %struct._KEY_REC** %8, align 8, !dbg !813
  %39 = icmp ne %struct._KEY_REC* %38, null, !dbg !815
  br i1 %39, label %40, label %42, !dbg !816

; <label>:40:                                     ; preds = %33
  %41 = load %struct._KEY_REC*, %struct._KEY_REC** %8, align 8, !dbg !817
  call void @key_configure_destroy(%struct._KEY_REC* %41), !dbg !818
  br label %42, !dbg !818

; <label>:42:                                     ; preds = %40, %33
  %43 = call noalias i8* @g_malloc0_n(i64 1, i64 24), !dbg !819
  %44 = bitcast i8* %43 to %struct._KEY_REC*, !dbg !820
  store %struct._KEY_REC* %44, %struct._KEY_REC** %8, align 8, !dbg !821
  %45 = load i8*, i8** %5, align 8, !dbg !822
  %46 = call noalias i8* @g_strdup(i8* %45), !dbg !823
  %47 = load %struct._KEY_REC*, %struct._KEY_REC** %8, align 8, !dbg !824
  %48 = getelementptr inbounds %struct._KEY_REC, %struct._KEY_REC* %47, i32 0, i32 1, !dbg !825
  store i8* %46, i8** %48, align 8, !dbg !826
  %49 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %7, align 8, !dbg !827
  %50 = load %struct._KEY_REC*, %struct._KEY_REC** %8, align 8, !dbg !828
  %51 = getelementptr inbounds %struct._KEY_REC, %struct._KEY_REC* %50, i32 0, i32 0, !dbg !829
  store %struct._KEYINFO_REC* %49, %struct._KEYINFO_REC** %51, align 8, !dbg !830
  %52 = load i8*, i8** %6, align 8, !dbg !831
  %53 = call noalias i8* @g_strdup(i8* %52), !dbg !832
  %54 = load %struct._KEY_REC*, %struct._KEY_REC** %8, align 8, !dbg !833
  %55 = getelementptr inbounds %struct._KEY_REC, %struct._KEY_REC* %54, i32 0, i32 2, !dbg !834
  store i8* %53, i8** %55, align 8, !dbg !835
  %56 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %7, align 8, !dbg !836
  %57 = getelementptr inbounds %struct._KEYINFO_REC, %struct._KEYINFO_REC* %56, i32 0, i32 2, !dbg !837
  %58 = load %struct._GSList*, %struct._GSList** %57, align 8, !dbg !837
  %59 = load %struct._KEY_REC*, %struct._KEY_REC** %8, align 8, !dbg !838
  %60 = bitcast %struct._KEY_REC* %59 to i8*, !dbg !838
  %61 = call %struct._GSList* @g_slist_append(%struct._GSList* %58, i8* %60), !dbg !839
  %62 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %7, align 8, !dbg !840
  %63 = getelementptr inbounds %struct._KEYINFO_REC, %struct._KEYINFO_REC* %62, i32 0, i32 2, !dbg !841
  store %struct._GSList* %61, %struct._GSList** %63, align 8, !dbg !842
  %64 = load %struct._GHashTable*, %struct._GHashTable** @keys, align 8, !dbg !843
  %65 = load %struct._KEY_REC*, %struct._KEY_REC** %8, align 8, !dbg !844
  %66 = getelementptr inbounds %struct._KEY_REC, %struct._KEY_REC* %65, i32 0, i32 1, !dbg !845
  %67 = load i8*, i8** %66, align 8, !dbg !845
  %68 = load %struct._KEY_REC*, %struct._KEY_REC** %8, align 8, !dbg !846
  %69 = bitcast %struct._KEY_REC* %68 to i8*, !dbg !846
  %70 = call i32 @g_hash_table_insert(%struct._GHashTable* %64, i8* %67, i8* %69), !dbg !847
  %71 = load %struct._KEY_REC*, %struct._KEY_REC** %8, align 8, !dbg !848
  %72 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct._KEY_REC* %71), !dbg !849
  %73 = load i32, i32* @key_config_frozen, align 4, !dbg !850
  %74 = icmp ne i32 %73, 0, !dbg !850
  br i1 %74, label %76, label %75, !dbg !852

; <label>:75:                                     ; preds = %42
  call void @key_states_rescan(), !dbg !853
  br label %76, !dbg !853

; <label>:76:                                     ; preds = %13, %25, %32, %75, %42
  ret void, !dbg !854
}

; Function Attrs: nounwind uwtable
define void @key_unbind(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*) #0 !dbg !855 {
  %3 = alloca i8*, align 8
  %4 = alloca void (i8*, i8*, i8*, i8*, i8*, i8*)*, align 8
  %5 = alloca %struct._KEYINFO_REC*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !858, metadata !425), !dbg !859
  store void (i8*, i8*, i8*, i8*, i8*, i8*)* %1, void (i8*, i8*, i8*, i8*, i8*, i8*)** %4, align 8
  call void @llvm.dbg.declare(metadata void (i8*, i8*, i8*, i8*, i8*, i8*)** %4, metadata !860, metadata !425), !dbg !861
  call void @llvm.dbg.declare(metadata %struct._KEYINFO_REC** %5, metadata !862, metadata !425), !dbg !863
  call void @llvm.dbg.declare(metadata i8** %6, metadata !864, metadata !425), !dbg !865
  br label %7, !dbg !866, !llvm.loop !867

; <label>:7:                                      ; preds = %2
  %8 = load i8*, i8** %3, align 8, !dbg !868
  %9 = icmp ne i8* %8, null, !dbg !872
  br i1 %9, label %10, label %11, !dbg !868

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !873

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.key_unbind, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0)), !dbg !876
  br label %33, !dbg !879

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !880

; <label>:13:                                     ; preds = %12
  br label %14, !dbg !882, !llvm.loop !883

; <label>:14:                                     ; preds = %13
  %15 = load void (i8*, i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*, i8*)** %4, align 8, !dbg !884
  %16 = icmp ne void (i8*, i8*, i8*, i8*, i8*, i8*)* %15, null, !dbg !888
  br i1 %16, label %17, label %18, !dbg !884

; <label>:17:                                     ; preds = %14
  br label %19, !dbg !889

; <label>:18:                                     ; preds = %14
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.key_unbind, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0)), !dbg !892
  br label %33, !dbg !895

; <label>:19:                                     ; preds = %17
  br label %20, !dbg !896

; <label>:20:                                     ; preds = %19
  %21 = load i8*, i8** %3, align 8, !dbg !898
  %22 = call %struct._KEYINFO_REC* @key_info_find(i8* %21), !dbg !899
  store %struct._KEYINFO_REC* %22, %struct._KEYINFO_REC** %5, align 8, !dbg !900
  %23 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %5, align 8, !dbg !901
  %24 = icmp ne %struct._KEYINFO_REC* %23, null, !dbg !903
  br i1 %24, label %25, label %27, !dbg !904

; <label>:25:                                     ; preds = %20
  %26 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %5, align 8, !dbg !905
  call void @keyinfo_remove(%struct._KEYINFO_REC* %26), !dbg !906
  br label %27, !dbg !906

; <label>:27:                                     ; preds = %25, %20
  %28 = load i8*, i8** %3, align 8, !dbg !907
  %29 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* %28, i8* null), !dbg !908
  store i8* %29, i8** %6, align 8, !dbg !909
  %30 = load i8*, i8** %6, align 8, !dbg !910
  %31 = load void (i8*, i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*, i8*)** %4, align 8, !dbg !911
  call void @signal_remove_full(i8* %30, void (i8*, i8*, i8*, i8*, i8*, i8*)* %31, i8* null), !dbg !912
  %32 = load i8*, i8** %6, align 8, !dbg !913
  call void @g_free(i8* %32), !dbg !914
  br label %33, !dbg !915

; <label>:33:                                     ; preds = %27, %18, %11
  ret void, !dbg !916
}

; Function Attrs: nounwind uwtable
define internal void @keyinfo_remove(%struct._KEYINFO_REC*) #0 !dbg !918 {
  %2 = alloca %struct._KEYINFO_REC*, align 8
  store %struct._KEYINFO_REC* %0, %struct._KEYINFO_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._KEYINFO_REC** %2, metadata !921, metadata !425), !dbg !922
  br label %3, !dbg !923, !llvm.loop !924

; <label>:3:                                      ; preds = %1
  %4 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %2, align 8, !dbg !925
  %5 = icmp ne %struct._KEYINFO_REC* %4, null, !dbg !929
  br i1 %5, label %6, label %7, !dbg !925

; <label>:6:                                      ; preds = %3
  br label %8, !dbg !930

; <label>:7:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.keyinfo_remove, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0)), !dbg !933
  br label %40, !dbg !936

; <label>:8:                                      ; preds = %6
  br label %9, !dbg !937

; <label>:9:                                      ; preds = %8
  %10 = load %struct._GSList*, %struct._GSList** @keyinfos, align 8, !dbg !939
  %11 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %2, align 8, !dbg !940
  %12 = bitcast %struct._KEYINFO_REC* %11 to i8*, !dbg !940
  %13 = call %struct._GSList* @g_slist_remove(%struct._GSList* %10, i8* %12), !dbg !941
  store %struct._GSList* %13, %struct._GSList** @keyinfos, align 8, !dbg !942
  %14 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %2, align 8, !dbg !943
  %15 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i32 0, i32 0), i32 1, %struct._KEYINFO_REC* %14), !dbg !944
  %16 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %2, align 8, !dbg !945
  %17 = getelementptr inbounds %struct._KEYINFO_REC, %struct._KEYINFO_REC* %16, i32 0, i32 2, !dbg !946
  %18 = load %struct._GSList*, %struct._GSList** %17, align 8, !dbg !946
  %19 = load %struct._GHashTable*, %struct._GHashTable** @keys, align 8, !dbg !947
  %20 = bitcast %struct._GHashTable* %19 to i8*, !dbg !947
  call void @g_slist_foreach(%struct._GSList* %18, void (i8*, i8*)* bitcast (void (%struct._KEY_REC*, %struct._GHashTable*)* @key_destroy to void (i8*, i8*)*), i8* %20), !dbg !948
  %21 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %2, align 8, !dbg !949
  %22 = getelementptr inbounds %struct._KEYINFO_REC, %struct._KEYINFO_REC* %21, i32 0, i32 3, !dbg !950
  %23 = load %struct._GSList*, %struct._GSList** %22, align 8, !dbg !950
  %24 = load %struct._GHashTable*, %struct._GHashTable** @default_keys, align 8, !dbg !951
  %25 = bitcast %struct._GHashTable* %24 to i8*, !dbg !951
  call void @g_slist_foreach(%struct._GSList* %23, void (i8*, i8*)* bitcast (void (%struct._KEY_REC*, %struct._GHashTable*)* @key_destroy to void (i8*, i8*)*), i8* %25), !dbg !952
  %26 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %2, align 8, !dbg !953
  %27 = getelementptr inbounds %struct._KEYINFO_REC, %struct._KEYINFO_REC* %26, i32 0, i32 2, !dbg !954
  %28 = load %struct._GSList*, %struct._GSList** %27, align 8, !dbg !954
  call void @g_slist_free(%struct._GSList* %28), !dbg !955
  %29 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %2, align 8, !dbg !956
  %30 = getelementptr inbounds %struct._KEYINFO_REC, %struct._KEYINFO_REC* %29, i32 0, i32 3, !dbg !957
  %31 = load %struct._GSList*, %struct._GSList** %30, align 8, !dbg !957
  call void @g_slist_free(%struct._GSList* %31), !dbg !958
  %32 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %2, align 8, !dbg !959
  %33 = getelementptr inbounds %struct._KEYINFO_REC, %struct._KEYINFO_REC* %32, i32 0, i32 1, !dbg !960
  %34 = load i8*, i8** %33, align 8, !dbg !960
  call void @g_free(i8* %34), !dbg !961
  %35 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %2, align 8, !dbg !962
  %36 = getelementptr inbounds %struct._KEYINFO_REC, %struct._KEYINFO_REC* %35, i32 0, i32 0, !dbg !963
  %37 = load i8*, i8** %36, align 8, !dbg !963
  call void @g_free(i8* %37), !dbg !964
  %38 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %2, align 8, !dbg !965
  %39 = bitcast %struct._KEYINFO_REC* %38 to i8*, !dbg !965
  call void @g_free(i8* %39), !dbg !966
  br label %40, !dbg !967

; <label>:40:                                     ; preds = %9, %7
  ret void, !dbg !968
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define void @key_configure_add(i8*, i8*, i8*) #0 !dbg !970 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !971, metadata !425), !dbg !972
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !973, metadata !425), !dbg !974
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !975, metadata !425), !dbg !976
  br label %7, !dbg !977, !llvm.loop !978

; <label>:7:                                      ; preds = %3
  %8 = load i8*, i8** %4, align 8, !dbg !979
  %9 = icmp ne i8* %8, null, !dbg !983
  br i1 %9, label %10, label %11, !dbg !979

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !984

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.key_configure_add, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0)), !dbg !987
  br label %32, !dbg !990

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !991

; <label>:13:                                     ; preds = %12
  br label %14, !dbg !993, !llvm.loop !994

; <label>:14:                                     ; preds = %13
  %15 = load i8*, i8** %5, align 8, !dbg !995
  %16 = icmp ne i8* %15, null, !dbg !999
  br i1 %16, label %17, label %23, !dbg !1000

; <label>:17:                                     ; preds = %14
  %18 = load i8*, i8** %5, align 8, !dbg !1001
  %19 = load i8, i8* %18, align 1, !dbg !1003
  %20 = sext i8 %19 to i32, !dbg !1003
  %21 = icmp ne i32 %20, 0, !dbg !1004
  br i1 %21, label %22, label %23, !dbg !1005

; <label>:22:                                     ; preds = %17
  br label %24, !dbg !1006

; <label>:23:                                     ; preds = %17, %14
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.key_configure_add, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0)), !dbg !1009
  br label %32, !dbg !1012

; <label>:24:                                     ; preds = %22
  br label %25, !dbg !1013

; <label>:25:                                     ; preds = %24
  %26 = load i8*, i8** %4, align 8, !dbg !1015
  %27 = load i8*, i8** %5, align 8, !dbg !1016
  %28 = load i8*, i8** %6, align 8, !dbg !1017
  call void @key_configure_create(i8* %26, i8* %27, i8* %28), !dbg !1018
  %29 = load i8*, i8** %4, align 8, !dbg !1019
  %30 = load i8*, i8** %5, align 8, !dbg !1020
  %31 = load i8*, i8** %6, align 8, !dbg !1021
  call void @keyconfig_save(i8* %29, i8* %30, i8* %31), !dbg !1022
  br label %32, !dbg !1023

; <label>:32:                                     ; preds = %25, %23, %11
  ret void, !dbg !1024
}

; Function Attrs: nounwind uwtable
define internal void @keyconfig_save(i8*, i8*, i8*) #0 !dbg !1026 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._CONFIG_NODE*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1027, metadata !425), !dbg !1028
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1029, metadata !425), !dbg !1030
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1031, metadata !425), !dbg !1032
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %7, metadata !1033, metadata !425), !dbg !1041
  br label %8, !dbg !1042, !llvm.loop !1043

; <label>:8:                                      ; preds = %3
  %9 = load i8*, i8** %4, align 8, !dbg !1044
  %10 = icmp ne i8* %9, null, !dbg !1048
  br i1 %10, label %11, label %12, !dbg !1044

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !1049

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.keyconfig_save, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0)), !dbg !1052
  br label %42, !dbg !1055

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !1056

; <label>:14:                                     ; preds = %13
  br label %15, !dbg !1058, !llvm.loop !1059

; <label>:15:                                     ; preds = %14
  %16 = load i8*, i8** %5, align 8, !dbg !1060
  %17 = icmp ne i8* %16, null, !dbg !1064
  br i1 %17, label %18, label %19, !dbg !1060

; <label>:18:                                     ; preds = %15
  br label %20, !dbg !1065

; <label>:19:                                     ; preds = %15
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.keyconfig_save, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0)), !dbg !1068
  br label %42, !dbg !1071

; <label>:20:                                     ; preds = %18
  br label %21, !dbg !1072

; <label>:21:                                     ; preds = %20
  %22 = load i8*, i8** %5, align 8, !dbg !1074
  %23 = call %struct._CONFIG_NODE* @key_config_find(i8* %22), !dbg !1075
  store %struct._CONFIG_NODE* %23, %struct._CONFIG_NODE** %7, align 8, !dbg !1076
  %24 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !1077
  %25 = icmp eq %struct._CONFIG_NODE* %24, null, !dbg !1079
  br i1 %25, label %26, label %32, !dbg !1080

; <label>:26:                                     ; preds = %21
  %27 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1081
  %28 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i32 1), !dbg !1083
  store %struct._CONFIG_NODE* %28, %struct._CONFIG_NODE** %7, align 8, !dbg !1084
  %29 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1085
  %30 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !1086
  %31 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* %29, %struct._CONFIG_NODE* %30, i8* null, i32 2), !dbg !1087
  store %struct._CONFIG_NODE* %31, %struct._CONFIG_NODE** %7, align 8, !dbg !1088
  br label %32, !dbg !1089

; <label>:32:                                     ; preds = %26, %21
  %33 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1090
  %34 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !1091
  %35 = load i8*, i8** %5, align 8, !dbg !1092
  call void @config_node_set_str(%struct._CONFIG_REC* %33, %struct._CONFIG_NODE* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), i8* %35), !dbg !1093
  %36 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1094
  %37 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !1095
  %38 = load i8*, i8** %4, align 8, !dbg !1096
  call void @config_node_set_str(%struct._CONFIG_REC* %36, %struct._CONFIG_NODE* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0), i8* %38), !dbg !1097
  %39 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1098
  %40 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !1099
  %41 = load i8*, i8** %6, align 8, !dbg !1100
  call void @config_node_set_str(%struct._CONFIG_REC* %39, %struct._CONFIG_NODE* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i8* %41), !dbg !1101
  br label %42, !dbg !1102

; <label>:42:                                     ; preds = %32, %19, %12
  ret void, !dbg !1103
}

; Function Attrs: nounwind uwtable
define void @key_configure_remove(i8*) #0 !dbg !1105 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._KEY_REC*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1108, metadata !425), !dbg !1109
  call void @llvm.dbg.declare(metadata %struct._KEY_REC** %3, metadata !1110, metadata !425), !dbg !1111
  br label %4, !dbg !1112, !llvm.loop !1113

; <label>:4:                                      ; preds = %1
  %5 = load i8*, i8** %2, align 8, !dbg !1114
  %6 = icmp ne i8* %5, null, !dbg !1118
  br i1 %6, label %7, label %8, !dbg !1114

; <label>:7:                                      ; preds = %4
  br label %9, !dbg !1119

; <label>:8:                                      ; preds = %4
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.key_configure_remove, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0)), !dbg !1122
  br label %21, !dbg !1125

; <label>:9:                                      ; preds = %7
  br label %10, !dbg !1126

; <label>:10:                                     ; preds = %9
  %11 = load i8*, i8** %2, align 8, !dbg !1128
  call void @keyconfig_clear(i8* %11), !dbg !1129
  %12 = load %struct._GHashTable*, %struct._GHashTable** @keys, align 8, !dbg !1130
  %13 = load i8*, i8** %2, align 8, !dbg !1131
  %14 = call i8* @g_hash_table_lookup(%struct._GHashTable* %12, i8* %13), !dbg !1132
  %15 = bitcast i8* %14 to %struct._KEY_REC*, !dbg !1132
  store %struct._KEY_REC* %15, %struct._KEY_REC** %3, align 8, !dbg !1133
  %16 = load %struct._KEY_REC*, %struct._KEY_REC** %3, align 8, !dbg !1134
  %17 = icmp eq %struct._KEY_REC* %16, null, !dbg !1136
  br i1 %17, label %18, label %19, !dbg !1137

; <label>:18:                                     ; preds = %10
  br label %21, !dbg !1138

; <label>:19:                                     ; preds = %10
  %20 = load %struct._KEY_REC*, %struct._KEY_REC** %3, align 8, !dbg !1140
  call void @key_configure_destroy(%struct._KEY_REC* %20), !dbg !1141
  br label %21, !dbg !1142

; <label>:21:                                     ; preds = %19, %18, %8
  ret void, !dbg !1143
}

; Function Attrs: nounwind uwtable
define internal void @keyconfig_clear(i8*) #0 !dbg !1145 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._CONFIG_NODE*, align 8
  %4 = alloca %struct._KEY_REC*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1146, metadata !425), !dbg !1147
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %3, metadata !1148, metadata !425), !dbg !1149
  call void @llvm.dbg.declare(metadata %struct._KEY_REC** %4, metadata !1150, metadata !425), !dbg !1151
  br label %5, !dbg !1152, !llvm.loop !1153

; <label>:5:                                      ; preds = %1
  %6 = load i8*, i8** %2, align 8, !dbg !1154
  %7 = icmp ne i8* %6, null, !dbg !1158
  br i1 %7, label %8, label %9, !dbg !1154

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !1159

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.keyconfig_clear, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0)), !dbg !1162
  br label %36, !dbg !1165

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !1166

; <label>:11:                                     ; preds = %10
  %12 = load i8*, i8** %2, align 8, !dbg !1168
  %13 = call %struct._CONFIG_NODE* @key_config_find(i8* %12), !dbg !1169
  store %struct._CONFIG_NODE* %13, %struct._CONFIG_NODE** %3, align 8, !dbg !1170
  %14 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1171
  %15 = icmp ne %struct._CONFIG_NODE* %14, null, !dbg !1173
  br i1 %15, label %16, label %21, !dbg !1174

; <label>:16:                                     ; preds = %11
  %17 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1175
  %18 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1177
  %19 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i32 0), !dbg !1178
  %20 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1179
  call void @config_node_remove(%struct._CONFIG_REC* %17, %struct._CONFIG_NODE* %19, %struct._CONFIG_NODE* %20), !dbg !1180
  br label %21, !dbg !1182

; <label>:21:                                     ; preds = %16, %11
  %22 = load %struct._GHashTable*, %struct._GHashTable** @default_keys, align 8, !dbg !1183
  %23 = load i8*, i8** %2, align 8, !dbg !1185
  %24 = call i8* @g_hash_table_lookup(%struct._GHashTable* %22, i8* %23), !dbg !1186
  %25 = bitcast i8* %24 to %struct._KEY_REC*, !dbg !1186
  store %struct._KEY_REC* %25, %struct._KEY_REC** %4, align 8, !dbg !1187
  %26 = icmp ne %struct._KEY_REC* %25, null, !dbg !1188
  br i1 %26, label %27, label %36, !dbg !1189

; <label>:27:                                     ; preds = %21
  %28 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1190
  %29 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i32 1), !dbg !1192
  store %struct._CONFIG_NODE* %29, %struct._CONFIG_NODE** %3, align 8, !dbg !1193
  %30 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1194
  %31 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1195
  %32 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* %30, %struct._CONFIG_NODE* %31, i8* null, i32 2), !dbg !1196
  store %struct._CONFIG_NODE* %32, %struct._CONFIG_NODE** %3, align 8, !dbg !1197
  %33 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1198
  %34 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1199
  %35 = load i8*, i8** %2, align 8, !dbg !1200
  call void @config_node_set_str(%struct._CONFIG_REC* %33, %struct._CONFIG_NODE* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), i8* %35), !dbg !1201
  br label %36, !dbg !1202

; <label>:36:                                     ; preds = %9, %27, %21
  ret void, !dbg !1203
}

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @key_configure_destroy(%struct._KEY_REC*) #0 !dbg !1204 {
  %2 = alloca %struct._KEY_REC*, align 8
  store %struct._KEY_REC* %0, %struct._KEY_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._KEY_REC** %2, metadata !1207, metadata !425), !dbg !1208
  br label %3, !dbg !1209, !llvm.loop !1210

; <label>:3:                                      ; preds = %1
  %4 = load %struct._KEY_REC*, %struct._KEY_REC** %2, align 8, !dbg !1211
  %5 = icmp ne %struct._KEY_REC* %4, null, !dbg !1215
  br i1 %5, label %6, label %7, !dbg !1211

; <label>:6:                                      ; preds = %3
  br label %8, !dbg !1216

; <label>:7:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.key_configure_destroy, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0)), !dbg !1219
  br label %41, !dbg !1222

; <label>:8:                                      ; preds = %6
  br label %9, !dbg !1223

; <label>:9:                                      ; preds = %8
  %10 = load %struct._KEY_REC*, %struct._KEY_REC** %2, align 8, !dbg !1225
  %11 = getelementptr inbounds %struct._KEY_REC, %struct._KEY_REC* %10, i32 0, i32 0, !dbg !1226
  %12 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %11, align 8, !dbg !1226
  %13 = getelementptr inbounds %struct._KEYINFO_REC, %struct._KEYINFO_REC* %12, i32 0, i32 2, !dbg !1227
  %14 = load %struct._GSList*, %struct._GSList** %13, align 8, !dbg !1227
  %15 = load %struct._KEY_REC*, %struct._KEY_REC** %2, align 8, !dbg !1228
  %16 = bitcast %struct._KEY_REC* %15 to i8*, !dbg !1228
  %17 = call %struct._GSList* @g_slist_remove(%struct._GSList* %14, i8* %16), !dbg !1229
  %18 = load %struct._KEY_REC*, %struct._KEY_REC** %2, align 8, !dbg !1230
  %19 = getelementptr inbounds %struct._KEY_REC, %struct._KEY_REC* %18, i32 0, i32 0, !dbg !1231
  %20 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %19, align 8, !dbg !1231
  %21 = getelementptr inbounds %struct._KEYINFO_REC, %struct._KEYINFO_REC* %20, i32 0, i32 2, !dbg !1232
  store %struct._GSList* %17, %struct._GSList** %21, align 8, !dbg !1233
  %22 = load %struct._GHashTable*, %struct._GHashTable** @keys, align 8, !dbg !1234
  %23 = load %struct._KEY_REC*, %struct._KEY_REC** %2, align 8, !dbg !1235
  %24 = getelementptr inbounds %struct._KEY_REC, %struct._KEY_REC* %23, i32 0, i32 1, !dbg !1236
  %25 = load i8*, i8** %24, align 8, !dbg !1236
  %26 = call i32 @g_hash_table_remove(%struct._GHashTable* %22, i8* %25), !dbg !1237
  %27 = load %struct._KEY_REC*, %struct._KEY_REC** %2, align 8, !dbg !1238
  %28 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0), i32 1, %struct._KEY_REC* %27), !dbg !1239
  %29 = load i32, i32* @key_config_frozen, align 4, !dbg !1240
  %30 = icmp ne i32 %29, 0, !dbg !1240
  br i1 %30, label %32, label %31, !dbg !1242

; <label>:31:                                     ; preds = %9
  call void @key_states_rescan(), !dbg !1243
  br label %32, !dbg !1243

; <label>:32:                                     ; preds = %31, %9
  %33 = load %struct._KEY_REC*, %struct._KEY_REC** %2, align 8, !dbg !1244
  %34 = getelementptr inbounds %struct._KEY_REC, %struct._KEY_REC* %33, i32 0, i32 2, !dbg !1245
  %35 = load i8*, i8** %34, align 8, !dbg !1245
  call void @g_free(i8* %35), !dbg !1246
  %36 = load %struct._KEY_REC*, %struct._KEY_REC** %2, align 8, !dbg !1247
  %37 = getelementptr inbounds %struct._KEY_REC, %struct._KEY_REC* %36, i32 0, i32 1, !dbg !1248
  %38 = load i8*, i8** %37, align 8, !dbg !1248
  call void @g_free(i8* %38), !dbg !1249
  %39 = load %struct._KEY_REC*, %struct._KEY_REC** %2, align 8, !dbg !1250
  %40 = bitcast %struct._KEY_REC* %39 to i8*, !dbg !1250
  call void @g_free(i8* %40), !dbg !1251
  br label %41, !dbg !1252

; <label>:41:                                     ; preds = %32, %7
  ret void, !dbg !1253
}

; Function Attrs: nounwind uwtable
define void @key_configure_reset(i8*) #0 !dbg !1255 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._KEY_REC*, align 8
  %4 = alloca %struct._CONFIG_NODE*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1256, metadata !425), !dbg !1257
  call void @llvm.dbg.declare(metadata %struct._KEY_REC** %3, metadata !1258, metadata !425), !dbg !1259
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %4, metadata !1260, metadata !425), !dbg !1261
  br label %5, !dbg !1262, !llvm.loop !1263

; <label>:5:                                      ; preds = %1
  %6 = load i8*, i8** %2, align 8, !dbg !1264
  %7 = icmp ne i8* %6, null, !dbg !1268
  br i1 %7, label %8, label %9, !dbg !1264

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !1269

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.key_configure_reset, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0)), !dbg !1272
  br label %49, !dbg !1275

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !1276

; <label>:11:                                     ; preds = %10
  %12 = load i8*, i8** %2, align 8, !dbg !1278
  %13 = call %struct._CONFIG_NODE* @key_config_find(i8* %12), !dbg !1279
  store %struct._CONFIG_NODE* %13, %struct._CONFIG_NODE** %4, align 8, !dbg !1280
  %14 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1281
  %15 = icmp ne %struct._CONFIG_NODE* %14, null, !dbg !1283
  br i1 %15, label %16, label %21, !dbg !1284

; <label>:16:                                     ; preds = %11
  %17 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1285
  %18 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1287
  %19 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i32 0), !dbg !1288
  %20 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1289
  call void @config_node_remove(%struct._CONFIG_REC* %17, %struct._CONFIG_NODE* %19, %struct._CONFIG_NODE* %20), !dbg !1290
  br label %21, !dbg !1292

; <label>:21:                                     ; preds = %16, %11
  %22 = load %struct._GHashTable*, %struct._GHashTable** @default_keys, align 8, !dbg !1293
  %23 = load i8*, i8** %2, align 8, !dbg !1295
  %24 = call i8* @g_hash_table_lookup(%struct._GHashTable* %22, i8* %23), !dbg !1296
  %25 = bitcast i8* %24 to %struct._KEY_REC*, !dbg !1296
  store %struct._KEY_REC* %25, %struct._KEY_REC** %3, align 8, !dbg !1297
  %26 = icmp ne %struct._KEY_REC* %25, null, !dbg !1298
  br i1 %26, label %27, label %39, !dbg !1299

; <label>:27:                                     ; preds = %21
  %28 = load %struct._KEY_REC*, %struct._KEY_REC** %3, align 8, !dbg !1300
  %29 = getelementptr inbounds %struct._KEY_REC, %struct._KEY_REC* %28, i32 0, i32 0, !dbg !1302
  %30 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %29, align 8, !dbg !1302
  %31 = getelementptr inbounds %struct._KEYINFO_REC, %struct._KEYINFO_REC* %30, i32 0, i32 0, !dbg !1303
  %32 = load i8*, i8** %31, align 8, !dbg !1303
  %33 = load %struct._KEY_REC*, %struct._KEY_REC** %3, align 8, !dbg !1304
  %34 = getelementptr inbounds %struct._KEY_REC, %struct._KEY_REC* %33, i32 0, i32 1, !dbg !1305
  %35 = load i8*, i8** %34, align 8, !dbg !1305
  %36 = load %struct._KEY_REC*, %struct._KEY_REC** %3, align 8, !dbg !1306
  %37 = getelementptr inbounds %struct._KEY_REC, %struct._KEY_REC* %36, i32 0, i32 2, !dbg !1307
  %38 = load i8*, i8** %37, align 8, !dbg !1307
  call void @key_configure_create(i8* %32, i8* %35, i8* %38), !dbg !1308
  br label %49, !dbg !1309

; <label>:39:                                     ; preds = %21
  %40 = load %struct._GHashTable*, %struct._GHashTable** @keys, align 8, !dbg !1310
  %41 = load i8*, i8** %2, align 8, !dbg !1312
  %42 = call i8* @g_hash_table_lookup(%struct._GHashTable* %40, i8* %41), !dbg !1313
  %43 = bitcast i8* %42 to %struct._KEY_REC*, !dbg !1313
  store %struct._KEY_REC* %43, %struct._KEY_REC** %3, align 8, !dbg !1314
  %44 = load %struct._KEY_REC*, %struct._KEY_REC** %3, align 8, !dbg !1315
  %45 = icmp eq %struct._KEY_REC* %44, null, !dbg !1317
  br i1 %45, label %46, label %47, !dbg !1318

; <label>:46:                                     ; preds = %39
  br label %49, !dbg !1319

; <label>:47:                                     ; preds = %39
  %48 = load %struct._KEY_REC*, %struct._KEY_REC** %3, align 8, !dbg !1320
  call void @key_configure_destroy(%struct._KEY_REC* %48), !dbg !1321
  br label %49

; <label>:49:                                     ; preds = %9, %46, %47, %27
  ret void, !dbg !1322
}

; Function Attrs: nounwind uwtable
define internal %struct._CONFIG_NODE* @key_config_find(i8*) #0 !dbg !1323 {
  %2 = alloca %struct._CONFIG_NODE*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._CONFIG_NODE*, align 8
  %5 = alloca %struct._GSList*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1326, metadata !425), !dbg !1327
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %4, metadata !1328, metadata !425), !dbg !1329
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !1330, metadata !425), !dbg !1331
  %6 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1332
  %7 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i32 1), !dbg !1333
  store %struct._CONFIG_NODE* %7, %struct._CONFIG_NODE** %4, align 8, !dbg !1334
  %8 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1335
  %9 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %8, i32 0, i32 2, !dbg !1336
  %10 = load i8*, i8** %9, align 8, !dbg !1336
  %11 = bitcast i8* %10 to %struct._GSList*, !dbg !1335
  %12 = call %struct._GSList* @config_node_first(%struct._GSList* %11), !dbg !1337
  store %struct._GSList* %12, %struct._GSList** %5, align 8, !dbg !1338
  br label %13, !dbg !1339

; <label>:13:                                     ; preds = %29, %1
  %14 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1340
  %15 = icmp ne %struct._GSList* %14, null, !dbg !1344
  br i1 %15, label %16, label %32, !dbg !1345

; <label>:16:                                     ; preds = %13
  %17 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1346
  %18 = getelementptr inbounds %struct._GSList, %struct._GSList* %17, i32 0, i32 0, !dbg !1348
  %19 = load i8*, i8** %18, align 8, !dbg !1348
  %20 = bitcast i8* %19 to %struct._CONFIG_NODE*, !dbg !1346
  store %struct._CONFIG_NODE* %20, %struct._CONFIG_NODE** %4, align 8, !dbg !1349
  %21 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1350
  %22 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.37, i32 0, i32 0)), !dbg !1352
  %23 = load i8*, i8** %3, align 8, !dbg !1353
  %24 = call i32 @g_strcmp0(i8* %22, i8* %23), !dbg !1354
  %25 = icmp eq i32 %24, 0, !dbg !1356
  br i1 %25, label %26, label %28, !dbg !1357

; <label>:26:                                     ; preds = %16
  %27 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1358
  store %struct._CONFIG_NODE* %27, %struct._CONFIG_NODE** %2, align 8, !dbg !1359
  br label %33, !dbg !1359

; <label>:28:                                     ; preds = %16
  br label %29, !dbg !1360

; <label>:29:                                     ; preds = %28
  %30 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1361
  %31 = call %struct._GSList* @config_node_next(%struct._GSList* %30), !dbg !1363
  store %struct._GSList* %31, %struct._GSList** %5, align 8, !dbg !1364
  br label %13, !dbg !1365, !llvm.loop !1366

; <label>:32:                                     ; preds = %13
  store %struct._CONFIG_NODE* null, %struct._CONFIG_NODE** %2, align 8, !dbg !1367
  br label %33, !dbg !1367

; <label>:33:                                     ; preds = %32, %26
  %34 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %2, align 8, !dbg !1368
  ret %struct._CONFIG_NODE* %34, !dbg !1368
}

declare void @config_node_remove(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, %struct._CONFIG_NODE*) #2

declare %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @key_pressed(%struct._KEYBOARD_REC*, i8*) #0 !dbg !1369 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._KEYBOARD_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._KEY_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct._KEYBOARD_REC* %0, %struct._KEYBOARD_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._KEYBOARD_REC** %4, metadata !1372, metadata !425), !dbg !1373
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1374, metadata !425), !dbg !1375
  call void @llvm.dbg.declare(metadata %struct._KEY_REC** %6, metadata !1376, metadata !425), !dbg !1377
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1378, metadata !425), !dbg !1379
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1380, metadata !425), !dbg !1381
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1382, metadata !425), !dbg !1383
  br label %10, !dbg !1384, !llvm.loop !1385

; <label>:10:                                     ; preds = %2
  %11 = load %struct._KEYBOARD_REC*, %struct._KEYBOARD_REC** %4, align 8, !dbg !1386
  %12 = icmp ne %struct._KEYBOARD_REC* %11, null, !dbg !1390
  br i1 %12, label %13, label %14, !dbg !1386

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !1391

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.key_pressed, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0)), !dbg !1394
  store i32 0, i32* %3, align 4, !dbg !1397
  br label %135, !dbg !1397

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !1398

; <label>:16:                                     ; preds = %15
  br label %17, !dbg !1400, !llvm.loop !1401

; <label>:17:                                     ; preds = %16
  %18 = load i8*, i8** %5, align 8, !dbg !1402
  %19 = icmp ne i8* %18, null, !dbg !1406
  br i1 %19, label %20, label %26, !dbg !1407

; <label>:20:                                     ; preds = %17
  %21 = load i8*, i8** %5, align 8, !dbg !1408
  %22 = load i8, i8* %21, align 1, !dbg !1410
  %23 = sext i8 %22 to i32, !dbg !1410
  %24 = icmp ne i32 %23, 0, !dbg !1411
  br i1 %24, label %25, label %26, !dbg !1412

; <label>:25:                                     ; preds = %20
  br label %27, !dbg !1413

; <label>:26:                                     ; preds = %20, %17
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.key_pressed, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0)), !dbg !1416
  store i32 0, i32* %3, align 4, !dbg !1419
  br label %135, !dbg !1419

; <label>:27:                                     ; preds = %25
  br label %28, !dbg !1420

; <label>:28:                                     ; preds = %27
  %29 = load %struct._KEYBOARD_REC*, %struct._KEYBOARD_REC** %4, align 8, !dbg !1422
  %30 = getelementptr inbounds %struct._KEYBOARD_REC, %struct._KEYBOARD_REC* %29, i32 0, i32 1, !dbg !1424
  %31 = load i32, i32* %30, align 8, !dbg !1424
  %32 = icmp ugt i32 %31, 0, !dbg !1425
  br i1 %32, label %33, label %40, !dbg !1426

; <label>:33:                                     ; preds = %28
  %34 = load %struct._KEYBOARD_REC*, %struct._KEYBOARD_REC** %4, align 8, !dbg !1427
  %35 = getelementptr inbounds %struct._KEYBOARD_REC, %struct._KEYBOARD_REC* %34, i32 0, i32 1, !dbg !1429
  %36 = load i32, i32* %35, align 8, !dbg !1429
  %37 = call i32 @g_source_remove(i32 %36), !dbg !1430
  %38 = load %struct._KEYBOARD_REC*, %struct._KEYBOARD_REC** %4, align 8, !dbg !1431
  %39 = getelementptr inbounds %struct._KEYBOARD_REC, %struct._KEYBOARD_REC* %38, i32 0, i32 1, !dbg !1432
  store i32 0, i32* %39, align 8, !dbg !1433
  br label %40, !dbg !1434

; <label>:40:                                     ; preds = %33, %28
  %41 = load %struct._KEYBOARD_REC*, %struct._KEYBOARD_REC** %4, align 8, !dbg !1435
  %42 = getelementptr inbounds %struct._KEYBOARD_REC, %struct._KEYBOARD_REC* %41, i32 0, i32 0, !dbg !1437
  %43 = load i8*, i8** %42, align 8, !dbg !1437
  %44 = icmp eq i8* %43, null, !dbg !1438
  br i1 %44, label %45, label %61, !dbg !1439

; <label>:45:                                     ; preds = %40
  %46 = load i8*, i8** %5, align 8, !dbg !1440
  %47 = getelementptr inbounds i8, i8* %46, i64 1, !dbg !1440
  %48 = load i8, i8* %47, align 1, !dbg !1440
  %49 = sext i8 %48 to i32, !dbg !1440
  %50 = icmp eq i32 %49, 0, !dbg !1442
  br i1 %50, label %51, label %61, !dbg !1443

; <label>:51:                                     ; preds = %45
  %52 = load i8*, i8** %5, align 8, !dbg !1444
  %53 = getelementptr inbounds i8, i8* %52, i64 0, !dbg !1444
  %54 = load i8, i8* %53, align 1, !dbg !1444
  %55 = zext i8 %54 to i32, !dbg !1445
  %56 = sext i32 %55 to i64, !dbg !1446
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* @used_keys, i64 0, i64 %56, !dbg !1446
  %58 = load i8, i8* %57, align 1, !dbg !1446
  %59 = icmp ne i8 %58, 0, !dbg !1446
  br i1 %59, label %61, label %60, !dbg !1447

; <label>:60:                                     ; preds = %51
  store i32 -1, i32* %3, align 4, !dbg !1449
  br label %135, !dbg !1449

; <label>:61:                                     ; preds = %51, %45, %40
  %62 = load %struct._KEYBOARD_REC*, %struct._KEYBOARD_REC** %4, align 8, !dbg !1451
  %63 = getelementptr inbounds %struct._KEYBOARD_REC, %struct._KEYBOARD_REC* %62, i32 0, i32 0, !dbg !1452
  %64 = load i8*, i8** %63, align 8, !dbg !1452
  %65 = icmp eq i8* %64, null, !dbg !1453
  %66 = zext i1 %65 to i32, !dbg !1453
  store i32 %66, i32* %8, align 4, !dbg !1454
  %67 = load %struct._KEYBOARD_REC*, %struct._KEYBOARD_REC** %4, align 8, !dbg !1455
  %68 = getelementptr inbounds %struct._KEYBOARD_REC, %struct._KEYBOARD_REC* %67, i32 0, i32 0, !dbg !1456
  %69 = load i8*, i8** %68, align 8, !dbg !1456
  %70 = icmp eq i8* %69, null, !dbg !1457
  br i1 %70, label %71, label %74, !dbg !1455

; <label>:71:                                     ; preds = %61
  %72 = load i8*, i8** %5, align 8, !dbg !1458
  %73 = call noalias i8* @g_strdup(i8* %72), !dbg !1460
  br label %80, !dbg !1461

; <label>:74:                                     ; preds = %61
  %75 = load %struct._KEYBOARD_REC*, %struct._KEYBOARD_REC** %4, align 8, !dbg !1462
  %76 = getelementptr inbounds %struct._KEYBOARD_REC, %struct._KEYBOARD_REC* %75, i32 0, i32 0, !dbg !1463
  %77 = load i8*, i8** %76, align 8, !dbg !1463
  %78 = load i8*, i8** %5, align 8, !dbg !1464
  %79 = call noalias i8* (i8*, ...) @g_strconcat(i8* %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), i8* %78, i8* null), !dbg !1465
  br label %80, !dbg !1466

; <label>:80:                                     ; preds = %74, %71
  %81 = phi i8* [ %73, %71 ], [ %79, %74 ], !dbg !1467
  store i8* %81, i8** %7, align 8, !dbg !1469
  br label %82, !dbg !1470, !llvm.loop !1471

; <label>:82:                                     ; preds = %80
  %83 = load %struct._KEYBOARD_REC*, %struct._KEYBOARD_REC** %4, align 8, !dbg !1472
  %84 = getelementptr inbounds %struct._KEYBOARD_REC, %struct._KEYBOARD_REC* %83, i32 0, i32 0, !dbg !1476
  %85 = load i8*, i8** %84, align 8, !dbg !1476
  %86 = icmp ne i8* %85, null, !dbg !1472
  br i1 %86, label %87, label %93, !dbg !1472

; <label>:87:                                     ; preds = %82
  %88 = load %struct._KEYBOARD_REC*, %struct._KEYBOARD_REC** %4, align 8, !dbg !1477
  %89 = getelementptr inbounds %struct._KEYBOARD_REC, %struct._KEYBOARD_REC* %88, i32 0, i32 0, !dbg !1480
  %90 = load i8*, i8** %89, align 8, !dbg !1480
  call void @g_free(i8* %90), !dbg !1481
  %91 = load %struct._KEYBOARD_REC*, %struct._KEYBOARD_REC** %4, align 8, !dbg !1482
  %92 = getelementptr inbounds %struct._KEYBOARD_REC, %struct._KEYBOARD_REC* %91, i32 0, i32 0, !dbg !1483
  store i8* null, i8** %92, align 8, !dbg !1484
  br label %93, !dbg !1485

; <label>:93:                                     ; preds = %87, %82
  br label %94, !dbg !1486

; <label>:94:                                     ; preds = %93
  %95 = load %struct._GTree*, %struct._GTree** @key_states, align 8, !dbg !1488
  %96 = load i8*, i8** %7, align 8, !dbg !1489
  %97 = call i8* @g_tree_search(%struct._GTree* %95, i32 (i8*, i8*)* @key_states_search, i8* %96), !dbg !1490
  %98 = bitcast i8* %97 to %struct._KEY_REC*, !dbg !1490
  store %struct._KEY_REC* %98, %struct._KEY_REC** %6, align 8, !dbg !1491
  %99 = load %struct._KEY_REC*, %struct._KEY_REC** %6, align 8, !dbg !1492
  %100 = icmp eq %struct._KEY_REC* %99, null, !dbg !1494
  br i1 %100, label %101, label %106, !dbg !1495

; <label>:101:                                    ; preds = %94
  %102 = load i8*, i8** %7, align 8, !dbg !1496
  call void @g_free(i8* %102), !dbg !1498
  %103 = load i32, i32* %8, align 4, !dbg !1499
  %104 = icmp ne i32 %103, 0, !dbg !1499
  %105 = select i1 %104, i32 -1, i32 1, !dbg !1499
  store i32 %105, i32* %3, align 4, !dbg !1500
  br label %135, !dbg !1500

; <label>:106:                                    ; preds = %94
  %107 = load %struct._GTree*, %struct._GTree** @key_states, align 8, !dbg !1501
  %108 = load i8*, i8** %7, align 8, !dbg !1503
  %109 = call i8* @g_tree_lookup(%struct._GTree* %107, i8* %108), !dbg !1504
  %110 = load %struct._KEY_REC*, %struct._KEY_REC** %6, align 8, !dbg !1505
  %111 = bitcast %struct._KEY_REC* %110 to i8*, !dbg !1505
  %112 = icmp ne i8* %109, %111, !dbg !1506
  br i1 %112, label %113, label %127, !dbg !1507

; <label>:113:                                    ; preds = %106
  %114 = load i8*, i8** %7, align 8, !dbg !1508
  %115 = load %struct._KEYBOARD_REC*, %struct._KEYBOARD_REC** %4, align 8, !dbg !1510
  %116 = getelementptr inbounds %struct._KEYBOARD_REC, %struct._KEYBOARD_REC* %115, i32 0, i32 0, !dbg !1511
  store i8* %114, i8** %116, align 8, !dbg !1512
  %117 = load i32, i32* @key_timeout, align 4, !dbg !1513
  %118 = icmp sgt i32 %117, 0, !dbg !1515
  br i1 %118, label %119, label %126, !dbg !1516

; <label>:119:                                    ; preds = %113
  %120 = load i32, i32* @key_timeout, align 4, !dbg !1517
  %121 = load %struct._KEYBOARD_REC*, %struct._KEYBOARD_REC** %4, align 8, !dbg !1519
  %122 = bitcast %struct._KEYBOARD_REC* %121 to i8*, !dbg !1519
  %123 = call i32 @g_timeout_add(i32 %120, i32 (i8*)* bitcast (i32 (%struct._KEYBOARD_REC*)* @key_timeout_expired to i32 (i8*)*), i8* %122), !dbg !1520
  %124 = load %struct._KEYBOARD_REC*, %struct._KEYBOARD_REC** %4, align 8, !dbg !1521
  %125 = getelementptr inbounds %struct._KEYBOARD_REC, %struct._KEYBOARD_REC* %124, i32 0, i32 1, !dbg !1522
  store i32 %123, i32* %125, align 8, !dbg !1523
  br label %126, !dbg !1524

; <label>:126:                                    ; preds = %119, %113
  store i32 0, i32* %3, align 4, !dbg !1525
  br label %135, !dbg !1525

; <label>:127:                                    ; preds = %106
  %128 = load i8*, i8** %7, align 8, !dbg !1526
  call void @g_free(i8* %128), !dbg !1527
  %129 = load %struct._KEYBOARD_REC*, %struct._KEYBOARD_REC** %4, align 8, !dbg !1528
  %130 = load %struct._KEY_REC*, %struct._KEY_REC** %6, align 8, !dbg !1529
  %131 = call i32 @key_emit_signal(%struct._KEYBOARD_REC* %129, %struct._KEY_REC* %130), !dbg !1530
  store i32 %131, i32* %9, align 4, !dbg !1531
  %132 = load i32, i32* %9, align 4, !dbg !1532
  %133 = icmp ne i32 %132, 0, !dbg !1532
  %134 = select i1 %133, i32 1, i32 -1, !dbg !1532
  store i32 %134, i32* %3, align 4, !dbg !1533
  br label %135, !dbg !1533

; <label>:135:                                    ; preds = %127, %126, %101, %60, %26, %14
  %136 = load i32, i32* %3, align 4, !dbg !1534
  ret i32 %136, !dbg !1534
}

declare i8* @g_tree_search(%struct._GTree*, i32 (i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @key_states_search(i8*, i8*) #0 !dbg !1535 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1540, metadata !425), !dbg !1541
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1542, metadata !425), !dbg !1543
  br label %6, !dbg !1544

; <label>:6:                                      ; preds = %27, %2
  %7 = load i8*, i8** %5, align 8, !dbg !1545
  %8 = load i8, i8* %7, align 1, !dbg !1547
  %9 = zext i8 %8 to i32, !dbg !1547
  %10 = icmp ne i32 %9, 0, !dbg !1548
  br i1 %10, label %11, label %32, !dbg !1549

; <label>:11:                                     ; preds = %6
  %12 = load i8*, i8** %4, align 8, !dbg !1550
  %13 = load i8, i8* %12, align 1, !dbg !1553
  %14 = zext i8 %13 to i32, !dbg !1553
  %15 = load i8*, i8** %5, align 8, !dbg !1554
  %16 = load i8, i8* %15, align 1, !dbg !1555
  %17 = zext i8 %16 to i32, !dbg !1555
  %18 = icmp ne i32 %14, %17, !dbg !1556
  br i1 %18, label %19, label %27, !dbg !1557

; <label>:19:                                     ; preds = %11
  %20 = load i8*, i8** %5, align 8, !dbg !1558
  %21 = load i8, i8* %20, align 1, !dbg !1559
  %22 = zext i8 %21 to i32, !dbg !1559
  %23 = load i8*, i8** %4, align 8, !dbg !1560
  %24 = load i8, i8* %23, align 1, !dbg !1561
  %25 = zext i8 %24 to i32, !dbg !1561
  %26 = sub nsw i32 %22, %25, !dbg !1562
  store i32 %26, i32* %3, align 4, !dbg !1563
  br label %33, !dbg !1563

; <label>:27:                                     ; preds = %11
  %28 = load i8*, i8** %5, align 8, !dbg !1564
  %29 = getelementptr inbounds i8, i8* %28, i32 1, !dbg !1564
  store i8* %29, i8** %5, align 8, !dbg !1564
  %30 = load i8*, i8** %4, align 8, !dbg !1565
  %31 = getelementptr inbounds i8, i8* %30, i32 1, !dbg !1565
  store i8* %31, i8** %4, align 8, !dbg !1565
  br label %6, !dbg !1566, !llvm.loop !1568

; <label>:32:                                     ; preds = %6
  store i32 0, i32* %3, align 4, !dbg !1569
  br label %33, !dbg !1569

; <label>:33:                                     ; preds = %32, %19
  %34 = load i32, i32* %3, align 4, !dbg !1570
  ret i32 %34, !dbg !1570
}

declare i8* @g_tree_lookup(%struct._GTree*, i8*) #2

declare i32 @g_timeout_add(i32, i32 (i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @key_timeout_expired(%struct._KEYBOARD_REC*) #0 !dbg !1571 {
  %2 = alloca %struct._KEYBOARD_REC*, align 8
  %3 = alloca %struct._KEY_REC*, align 8
  store %struct._KEYBOARD_REC* %0, %struct._KEYBOARD_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._KEYBOARD_REC** %2, metadata !1574, metadata !425), !dbg !1575
  call void @llvm.dbg.declare(metadata %struct._KEY_REC** %3, metadata !1576, metadata !425), !dbg !1577
  %4 = load %struct._KEYBOARD_REC*, %struct._KEYBOARD_REC** %2, align 8, !dbg !1578
  %5 = getelementptr inbounds %struct._KEYBOARD_REC, %struct._KEYBOARD_REC* %4, i32 0, i32 1, !dbg !1579
  store i32 0, i32* %5, align 8, !dbg !1580
  %6 = load %struct._GTree*, %struct._GTree** @key_states, align 8, !dbg !1581
  %7 = load %struct._KEYBOARD_REC*, %struct._KEYBOARD_REC** %2, align 8, !dbg !1582
  %8 = getelementptr inbounds %struct._KEYBOARD_REC, %struct._KEYBOARD_REC* %7, i32 0, i32 0, !dbg !1583
  %9 = load i8*, i8** %8, align 8, !dbg !1583
  %10 = call i8* @g_tree_lookup(%struct._GTree* %6, i8* %9), !dbg !1584
  %11 = bitcast i8* %10 to %struct._KEY_REC*, !dbg !1584
  store %struct._KEY_REC* %11, %struct._KEY_REC** %3, align 8, !dbg !1585
  br label %12, !dbg !1586, !llvm.loop !1587

; <label>:12:                                     ; preds = %1
  %13 = load %struct._KEYBOARD_REC*, %struct._KEYBOARD_REC** %2, align 8, !dbg !1588
  %14 = getelementptr inbounds %struct._KEYBOARD_REC, %struct._KEYBOARD_REC* %13, i32 0, i32 0, !dbg !1592
  %15 = load i8*, i8** %14, align 8, !dbg !1592
  %16 = icmp ne i8* %15, null, !dbg !1588
  br i1 %16, label %17, label %23, !dbg !1588

; <label>:17:                                     ; preds = %12
  %18 = load %struct._KEYBOARD_REC*, %struct._KEYBOARD_REC** %2, align 8, !dbg !1593
  %19 = getelementptr inbounds %struct._KEYBOARD_REC, %struct._KEYBOARD_REC* %18, i32 0, i32 0, !dbg !1596
  %20 = load i8*, i8** %19, align 8, !dbg !1596
  call void @g_free(i8* %20), !dbg !1597
  %21 = load %struct._KEYBOARD_REC*, %struct._KEYBOARD_REC** %2, align 8, !dbg !1598
  %22 = getelementptr inbounds %struct._KEYBOARD_REC, %struct._KEYBOARD_REC* %21, i32 0, i32 0, !dbg !1599
  store i8* null, i8** %22, align 8, !dbg !1600
  br label %23, !dbg !1601

; <label>:23:                                     ; preds = %17, %12
  br label %24, !dbg !1602

; <label>:24:                                     ; preds = %23
  %25 = load %struct._KEY_REC*, %struct._KEY_REC** %3, align 8, !dbg !1604
  %26 = icmp ne %struct._KEY_REC* %25, null, !dbg !1606
  br i1 %26, label %27, label %31, !dbg !1607

; <label>:27:                                     ; preds = %24
  %28 = load %struct._KEYBOARD_REC*, %struct._KEYBOARD_REC** %2, align 8, !dbg !1608
  %29 = load %struct._KEY_REC*, %struct._KEY_REC** %3, align 8, !dbg !1610
  %30 = call i32 @key_emit_signal(%struct._KEYBOARD_REC* %28, %struct._KEY_REC* %29), !dbg !1611
  br label %31, !dbg !1612

; <label>:31:                                     ; preds = %27, %24
  ret i32 0, !dbg !1613
}

; Function Attrs: nounwind uwtable
define internal i32 @key_emit_signal(%struct._KEYBOARD_REC*, %struct._KEY_REC*) #0 !dbg !1614 {
  %3 = alloca %struct._KEYBOARD_REC*, align 8
  %4 = alloca %struct._KEY_REC*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct._KEYBOARD_REC* %0, %struct._KEYBOARD_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._KEYBOARD_REC** %3, metadata !1617, metadata !425), !dbg !1618
  store %struct._KEY_REC* %1, %struct._KEY_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._KEY_REC** %4, metadata !1619, metadata !425), !dbg !1620
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1621, metadata !425), !dbg !1622
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1623, metadata !425), !dbg !1624
  %7 = load %struct._KEY_REC*, %struct._KEY_REC** %4, align 8, !dbg !1625
  %8 = getelementptr inbounds %struct._KEY_REC, %struct._KEY_REC* %7, i32 0, i32 0, !dbg !1626
  %9 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %8, align 8, !dbg !1626
  %10 = getelementptr inbounds %struct._KEYINFO_REC, %struct._KEYINFO_REC* %9, i32 0, i32 0, !dbg !1627
  %11 = load i8*, i8** %10, align 8, !dbg !1627
  %12 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* %11, i8* null), !dbg !1628
  store i8* %12, i8** %6, align 8, !dbg !1629
  %13 = load i8*, i8** %6, align 8, !dbg !1630
  %14 = load %struct._KEY_REC*, %struct._KEY_REC** %4, align 8, !dbg !1631
  %15 = getelementptr inbounds %struct._KEY_REC, %struct._KEY_REC* %14, i32 0, i32 2, !dbg !1632
  %16 = load i8*, i8** %15, align 8, !dbg !1632
  %17 = load %struct._KEYBOARD_REC*, %struct._KEYBOARD_REC** %3, align 8, !dbg !1633
  %18 = getelementptr inbounds %struct._KEYBOARD_REC, %struct._KEYBOARD_REC* %17, i32 0, i32 2, !dbg !1634
  %19 = load i8*, i8** %18, align 8, !dbg !1634
  %20 = load %struct._KEY_REC*, %struct._KEY_REC** %4, align 8, !dbg !1635
  %21 = getelementptr inbounds %struct._KEY_REC, %struct._KEY_REC* %20, i32 0, i32 0, !dbg !1636
  %22 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %21, align 8, !dbg !1636
  %23 = call i32 (i8*, i32, ...) @signal_emit(i8* %13, i32 3, i8* %16, i8* %19, %struct._KEYINFO_REC* %22), !dbg !1637
  store i32 %23, i32* %5, align 4, !dbg !1638
  %24 = load i8*, i8** %6, align 8, !dbg !1639
  call void @g_free(i8* %24), !dbg !1640
  %25 = load i32, i32* %5, align 4, !dbg !1641
  ret i32 %25, !dbg !1642
}

; Function Attrs: nounwind uwtable
define void @keyboard_entry_redirect(void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*, i32, i8*) #0 !dbg !1643 {
  %5 = alloca void (i8*, i8*, i8*, i8*, i8*, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store void (i8*, i8*, i8*, i8*, i8*, i8*)* %0, void (i8*, i8*, i8*, i8*, i8*, i8*)** %5, align 8
  call void @llvm.dbg.declare(metadata void (i8*, i8*, i8*, i8*, i8*, i8*)** %5, metadata !1646, metadata !425), !dbg !1647
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1648, metadata !425), !dbg !1649
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1650, metadata !425), !dbg !1651
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1652, metadata !425), !dbg !1653
  %9 = load void (i8*, i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*, i8*)** %5, align 8, !dbg !1654
  %10 = load i8*, i8** %6, align 8, !dbg !1655
  %11 = load i32, i32* %7, align 4, !dbg !1656
  %12 = sext i32 %11 to i64, !dbg !1657
  %13 = inttoptr i64 %12 to i8*, !dbg !1658
  %14 = load i8*, i8** %8, align 8, !dbg !1659
  %15 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0), i32 4, void (i8*, i8*, i8*, i8*, i8*, i8*)* %9, i8* %10, i8* %13, i8* %14), !dbg !1660
  ret void, !dbg !1661
}

; Function Attrs: nounwind uwtable
define void @keyboard_init() #0 !dbg !1662 {
  %1 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal), !dbg !1663
  store %struct._GHashTable* %1, %struct._GHashTable** @keys, align 8, !dbg !1664
  %2 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal), !dbg !1665
  store %struct._GHashTable* %2, %struct._GHashTable** @default_keys, align 8, !dbg !1666
  store %struct._GSList* null, %struct._GSList** @keyinfos, align 8, !dbg !1667
  %3 = call %struct._GTree* @g_tree_new(i32 (i8*, i8*)* @g_strcmp0), !dbg !1668
  store %struct._GTree* %3, %struct._GTree** @key_states, align 8, !dbg !1669
  store i32 0, i32* @key_config_frozen, align 4, !dbg !1670
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @used_keys, i32 0, i32 0), i8 0, i64 256, i32 16, i1 false), !dbg !1671
  call void @settings_add_int_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i32 0), !dbg !1672
  call void @key_bind(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0), i8* null, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @sig_command to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1673
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i32 0, i32 0), i8* null, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @sig_key to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1674
  call void @key_bind(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0), i8* null, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, i8*)* @sig_multi to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1675
  call void @key_bind(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), i8* null, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @sig_nothing to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1676
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_keyboard_config to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1677
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_keyboard_config to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1678
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_bind to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1679
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_bind to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1680
  call void @command_set_options_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0)), !dbg !1681
  ret void, !dbg !1682
}

declare %struct._GHashTable* @g_hash_table_new(i32 (i8*)*, i32 (i8*, i8*)*) #2

declare i32 @g_str_hash(i8*) #2

declare i32 @g_str_equal(i8*, i8*) #2

declare %struct._GTree* @g_tree_new(i32 (i8*, i8*)*) #2

declare i32 @g_strcmp0(i8*, i8*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

declare void @settings_add_int_module(i8*, i8*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @sig_command(i8*) #0 !dbg !1683 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1684, metadata !425), !dbg !1685
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1686, metadata !425), !dbg !1687
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1688, metadata !425), !dbg !1689
  %5 = call i8* @settings_get_str(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0)), !dbg !1690
  store i8* %5, i8** %3, align 8, !dbg !1691
  %6 = load i8*, i8** %3, align 8, !dbg !1692
  %7 = load i8*, i8** %2, align 8, !dbg !1693
  %8 = load i8, i8* %7, align 1, !dbg !1694
  %9 = sext i8 %8 to i32, !dbg !1694
  %10 = call i8* @strchr(i8* %6, i32 %9) #7, !dbg !1695
  %11 = icmp ne i8* %10, null, !dbg !1696
  br i1 %11, label %12, label %15, !dbg !1695

; <label>:12:                                     ; preds = %1
  %13 = load i8*, i8** %2, align 8, !dbg !1697
  %14 = call noalias i8* @g_strdup(i8* %13), !dbg !1699
  br label %21, !dbg !1700

; <label>:15:                                     ; preds = %1
  %16 = load i8*, i8** %3, align 8, !dbg !1701
  %17 = load i8, i8* %16, align 1, !dbg !1702
  %18 = sext i8 %17 to i32, !dbg !1702
  %19 = load i8*, i8** %2, align 8, !dbg !1703
  %20 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i32 %18, i8* %19), !dbg !1704
  br label %21, !dbg !1705

; <label>:21:                                     ; preds = %15, %12
  %22 = phi i8* [ %14, %12 ], [ %20, %15 ], !dbg !1707
  store i8* %22, i8** %4, align 8, !dbg !1709
  %23 = load i8*, i8** %4, align 8, !dbg !1710
  %24 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1711
  %25 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %24, i32 0, i32 6, !dbg !1712
  %26 = load %struct._SERVER_REC*, %struct._SERVER_REC** %25, align 8, !dbg !1712
  %27 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1713
  %28 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %27, i32 0, i32 5, !dbg !1714
  %29 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %28, align 8, !dbg !1714
  %30 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i32 0, i32 0), i32 3, i8* %23, %struct._SERVER_REC* %26, %struct._WI_ITEM_REC* %29), !dbg !1715
  %31 = load i8*, i8** %4, align 8, !dbg !1716
  call void @g_free(i8* %31), !dbg !1717
  ret void, !dbg !1718
}

; Function Attrs: nounwind uwtable
define internal void @sig_key(i8*) #0 !dbg !1719 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1720, metadata !425), !dbg !1721
  ret void, !dbg !1722
}

; Function Attrs: nounwind uwtable
define internal void @sig_multi(i8*, i8*) #0 !dbg !1723 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._KEYINFO_REC*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1726, metadata !425), !dbg !1727
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1728, metadata !425), !dbg !1729
  call void @llvm.dbg.declare(metadata %struct._KEYINFO_REC** %5, metadata !1730, metadata !425), !dbg !1731
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !1732, metadata !425), !dbg !1734
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !1735, metadata !425), !dbg !1736
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1737, metadata !425), !dbg !1738
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1739, metadata !425), !dbg !1740
  %10 = load i8*, i8** %3, align 8, !dbg !1741
  %11 = call noalias i8** @g_strsplit(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i32 0, i32 0), i32 -1), !dbg !1742
  store i8** %11, i8*** %6, align 8, !dbg !1743
  %12 = load i8**, i8*** %6, align 8, !dbg !1744
  store i8** %12, i8*** %7, align 8, !dbg !1746
  br label %13, !dbg !1747

; <label>:13:                                     ; preds = %45, %2
  %14 = load i8**, i8*** %7, align 8, !dbg !1748
  %15 = load i8*, i8** %14, align 8, !dbg !1751
  %16 = icmp ne i8* %15, null, !dbg !1752
  br i1 %16, label %17, label %48, !dbg !1753

; <label>:17:                                     ; preds = %13
  %18 = load i8**, i8*** %7, align 8, !dbg !1754
  %19 = load i8*, i8** %18, align 8, !dbg !1756
  %20 = call i8* @strchr(i8* %19, i32 32) #7, !dbg !1757
  store i8* %20, i8** %8, align 8, !dbg !1758
  %21 = load i8*, i8** %8, align 8, !dbg !1759
  %22 = icmp ne i8* %21, null, !dbg !1761
  br i1 %22, label %23, label %26, !dbg !1762

; <label>:23:                                     ; preds = %17
  %24 = load i8*, i8** %8, align 8, !dbg !1763
  %25 = getelementptr inbounds i8, i8* %24, i32 1, !dbg !1763
  store i8* %25, i8** %8, align 8, !dbg !1763
  store i8 0, i8* %24, align 1, !dbg !1765
  br label %27, !dbg !1766

; <label>:26:                                     ; preds = %17
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.37, i32 0, i32 0), i8** %8, align 8, !dbg !1767
  br label %27

; <label>:27:                                     ; preds = %26, %23
  %28 = load i8**, i8*** %7, align 8, !dbg !1769
  %29 = load i8*, i8** %28, align 8, !dbg !1770
  %30 = call %struct._KEYINFO_REC* @key_info_find(i8* %29), !dbg !1771
  store %struct._KEYINFO_REC* %30, %struct._KEYINFO_REC** %5, align 8, !dbg !1772
  %31 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %5, align 8, !dbg !1773
  %32 = icmp ne %struct._KEYINFO_REC* %31, null, !dbg !1775
  br i1 %32, label %33, label %44, !dbg !1776

; <label>:33:                                     ; preds = %27
  %34 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %5, align 8, !dbg !1777
  %35 = getelementptr inbounds %struct._KEYINFO_REC, %struct._KEYINFO_REC* %34, i32 0, i32 0, !dbg !1779
  %36 = load i8*, i8** %35, align 8, !dbg !1779
  %37 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* %36, i8* null), !dbg !1780
  store i8* %37, i8** %9, align 8, !dbg !1781
  %38 = load i8*, i8** %9, align 8, !dbg !1782
  %39 = load i8*, i8** %8, align 8, !dbg !1783
  %40 = load i8*, i8** %4, align 8, !dbg !1784
  %41 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %5, align 8, !dbg !1785
  %42 = call i32 (i8*, i32, ...) @signal_emit(i8* %38, i32 3, i8* %39, i8* %40, %struct._KEYINFO_REC* %41), !dbg !1786
  %43 = load i8*, i8** %9, align 8, !dbg !1787
  call void @g_free(i8* %43), !dbg !1788
  br label %44, !dbg !1789

; <label>:44:                                     ; preds = %33, %27
  br label %45, !dbg !1790

; <label>:45:                                     ; preds = %44
  %46 = load i8**, i8*** %7, align 8, !dbg !1791
  %47 = getelementptr inbounds i8*, i8** %46, i32 1, !dbg !1791
  store i8** %47, i8*** %7, align 8, !dbg !1791
  br label %13, !dbg !1793, !llvm.loop !1794

; <label>:48:                                     ; preds = %13
  %49 = load i8**, i8*** %6, align 8, !dbg !1796
  call void @g_strfreev(i8** %49), !dbg !1797
  ret void, !dbg !1798
}

; Function Attrs: nounwind uwtable
define internal void @sig_nothing(i8*) #0 !dbg !1799 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1800, metadata !425), !dbg !1801
  ret void, !dbg !1802
}

; Function Attrs: nounwind uwtable
define internal void @read_keyboard_config() #0 !dbg !1803 {
  %1 = alloca %struct._CONFIG_NODE*, align 8
  %2 = alloca %struct._GSList*, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %1, metadata !1804, metadata !425), !dbg !1805
  call void @llvm.dbg.declare(metadata %struct._GSList** %2, metadata !1806, metadata !425), !dbg !1807
  call void @key_configure_freeze(), !dbg !1808
  call void @keyboard_reset_defaults(), !dbg !1809
  %3 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1810
  %4 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), i32 0), !dbg !1811
  store %struct._CONFIG_NODE* %4, %struct._CONFIG_NODE** %1, align 8, !dbg !1812
  %5 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %1, align 8, !dbg !1813
  %6 = icmp eq %struct._CONFIG_NODE* %5, null, !dbg !1815
  br i1 %6, label %7, label %8, !dbg !1816

; <label>:7:                                      ; preds = %0
  call void @key_configure_thaw(), !dbg !1817
  br label %35, !dbg !1819

; <label>:8:                                      ; preds = %0
  %9 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %1, align 8, !dbg !1820
  %10 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %9, i32 0, i32 0, !dbg !1822
  %11 = load i32, i32* %10, align 8, !dbg !1822
  %12 = icmp ne i32 %11, 3, !dbg !1823
  br i1 %12, label %13, label %16, !dbg !1824

; <label>:13:                                     ; preds = %8
  %14 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1825
  %15 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %1, align 8, !dbg !1827
  call void @config_node_remove(%struct._CONFIG_REC* %14, %struct._CONFIG_NODE* null, %struct._CONFIG_NODE* %15), !dbg !1828
  call void @key_configure_thaw(), !dbg !1829
  br label %35, !dbg !1830

; <label>:16:                                     ; preds = %8
  %17 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %1, align 8, !dbg !1831
  %18 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %17, i32 0, i32 2, !dbg !1832
  %19 = load i8*, i8** %18, align 8, !dbg !1832
  %20 = bitcast i8* %19 to %struct._GSList*, !dbg !1831
  %21 = call %struct._GSList* @config_node_first(%struct._GSList* %20), !dbg !1833
  store %struct._GSList* %21, %struct._GSList** %2, align 8, !dbg !1834
  br label %22, !dbg !1835

; <label>:22:                                     ; preds = %30, %16
  %23 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !1836
  %24 = icmp ne %struct._GSList* %23, null, !dbg !1840
  br i1 %24, label %25, label %33, !dbg !1841

; <label>:25:                                     ; preds = %22
  %26 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !1842
  %27 = getelementptr inbounds %struct._GSList, %struct._GSList* %26, i32 0, i32 0, !dbg !1843
  %28 = load i8*, i8** %27, align 8, !dbg !1843
  %29 = bitcast i8* %28 to %struct._CONFIG_NODE*, !dbg !1842
  call void @key_config_read(%struct._CONFIG_NODE* %29), !dbg !1844
  br label %30, !dbg !1844

; <label>:30:                                     ; preds = %25
  %31 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !1845
  %32 = call %struct._GSList* @config_node_next(%struct._GSList* %31), !dbg !1847
  store %struct._GSList* %32, %struct._GSList** %2, align 8, !dbg !1848
  br label %22, !dbg !1849, !llvm.loop !1850

; <label>:33:                                     ; preds = %22
  call void @key_configure_thaw(), !dbg !1851
  %34 = call i32 @settings_get_int(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0)), !dbg !1852
  store i32 %34, i32* @key_timeout, align 4, !dbg !1853
  br label %35, !dbg !1854

; <label>:35:                                     ; preds = %33, %13, %7
  ret void, !dbg !1855
}

; Function Attrs: nounwind uwtable
define internal void @sig_complete_bind(%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*) #0 !dbg !1857 {
  %6 = alloca %struct._GList**, align 8
  %7 = alloca %struct._WINDOW_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store %struct._GList** %0, %struct._GList*** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GList*** %6, metadata !1940, metadata !425), !dbg !1941
  store %struct._WINDOW_REC* %1, %struct._WINDOW_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %7, metadata !1942, metadata !425), !dbg !1943
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1944, metadata !425), !dbg !1945
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1946, metadata !425), !dbg !1947
  store i32* %4, i32** %10, align 8
  call void @llvm.dbg.declare(metadata i32** %10, metadata !1948, metadata !425), !dbg !1949
  br label %11, !dbg !1950, !llvm.loop !1951

; <label>:11:                                     ; preds = %5
  %12 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !1952
  %13 = icmp ne %struct._GList** %12, null, !dbg !1956
  br i1 %13, label %14, label %15, !dbg !1952

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !1957

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.sig_complete_bind, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i32 0, i32 0)), !dbg !1960
  br label %49, !dbg !1963

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !1964

; <label>:17:                                     ; preds = %16
  br label %18, !dbg !1966, !llvm.loop !1967

; <label>:18:                                     ; preds = %17
  %19 = load i8*, i8** %8, align 8, !dbg !1968
  %20 = icmp ne i8* %19, null, !dbg !1972
  br i1 %20, label %21, label %22, !dbg !1968

; <label>:21:                                     ; preds = %18
  br label %23, !dbg !1973

; <label>:22:                                     ; preds = %18
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.sig_complete_bind, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i32 0, i32 0)), !dbg !1976
  br label %49, !dbg !1979

; <label>:23:                                     ; preds = %21
  br label %24, !dbg !1980

; <label>:24:                                     ; preds = %23
  br label %25, !dbg !1982, !llvm.loop !1983

; <label>:25:                                     ; preds = %24
  %26 = load i8*, i8** %9, align 8, !dbg !1984
  %27 = icmp ne i8* %26, null, !dbg !1988
  br i1 %27, label %28, label %29, !dbg !1984

; <label>:28:                                     ; preds = %25
  br label %30, !dbg !1989

; <label>:29:                                     ; preds = %25
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.sig_complete_bind, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i32 0, i32 0)), !dbg !1992
  br label %49, !dbg !1995

; <label>:30:                                     ; preds = %28
  br label %31, !dbg !1996

; <label>:31:                                     ; preds = %30
  %32 = load i8*, i8** %9, align 8, !dbg !1998
  %33 = load i8, i8* %32, align 1, !dbg !2000
  %34 = sext i8 %33 to i32, !dbg !2000
  %35 = icmp eq i32 %34, 0, !dbg !2001
  br i1 %35, label %40, label %36, !dbg !2002

; <label>:36:                                     ; preds = %31
  %37 = load i8*, i8** %9, align 8, !dbg !2003
  %38 = call i8* @strchr(i8* %37, i32 32) #7, !dbg !2005
  %39 = icmp ne i8* %38, null, !dbg !2006
  br i1 %39, label %40, label %41, !dbg !2007

; <label>:40:                                     ; preds = %36, %31
  br label %49, !dbg !2008

; <label>:41:                                     ; preds = %36
  %42 = load i8*, i8** %8, align 8, !dbg !2009
  %43 = call %struct._GList* @completion_get_keyinfos(i8* %42), !dbg !2010
  %44 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2011
  store %struct._GList* %43, %struct._GList** %44, align 8, !dbg !2012
  %45 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2013
  %46 = load %struct._GList*, %struct._GList** %45, align 8, !dbg !2015
  %47 = icmp ne %struct._GList* %46, null, !dbg !2016
  br i1 %47, label %48, label %49, !dbg !2017

; <label>:48:                                     ; preds = %41
  call void @signal_stop(), !dbg !2018
  br label %49, !dbg !2018

; <label>:49:                                     ; preds = %15, %22, %29, %40, %48, %41
  ret void, !dbg !2020
}

declare void @command_bind_full(i8*, i32, i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @cmd_bind(i8*) #0 !dbg !2021 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._GHashTable*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct._GSList*, align 8
  %10 = alloca %struct._KEYINFO_REC*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2022, metadata !425), !dbg !2023
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %3, metadata !2024, metadata !425), !dbg !2025
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2026, metadata !425), !dbg !2027
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2028, metadata !425), !dbg !2029
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2030, metadata !425), !dbg !2031
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2032, metadata !425), !dbg !2033
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2034, metadata !425), !dbg !2035
  %11 = load i8*, i8** %2, align 8, !dbg !2036
  %12 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %11, i8** %7, i32 24579, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), %struct._GHashTable** %3, i8** %4, i8** %5, i8** %6), !dbg !2038
  %13 = icmp ne i32 %12, 0, !dbg !2038
  br i1 %13, label %15, label %14, !dbg !2039

; <label>:14:                                     ; preds = %1
  br label %116, !dbg !2040

; <label>:15:                                     ; preds = %1
  %16 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !2041
  %17 = call i8* @g_hash_table_lookup(%struct._GHashTable* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0)), !dbg !2043
  %18 = icmp ne i8* %17, null, !dbg !2043
  br i1 %18, label %19, label %49, !dbg !2044

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.declare(metadata %struct._GSList** %9, metadata !2045, metadata !425), !dbg !2047
  %20 = load %struct._GSList*, %struct._GSList** @keyinfos, align 8, !dbg !2048
  store %struct._GSList* %20, %struct._GSList** %9, align 8, !dbg !2050
  br label %21, !dbg !2051

; <label>:21:                                     ; preds = %43, %19
  %22 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !2052
  %23 = icmp ne %struct._GSList* %22, null, !dbg !2055
  br i1 %23, label %24, label %47, !dbg !2056

; <label>:24:                                     ; preds = %21
  call void @llvm.dbg.declare(metadata %struct._KEYINFO_REC** %10, metadata !2057, metadata !425), !dbg !2059
  %25 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !2060
  %26 = getelementptr inbounds %struct._GSList, %struct._GSList* %25, i32 0, i32 0, !dbg !2061
  %27 = load i8*, i8** %26, align 8, !dbg !2061
  %28 = bitcast i8* %27 to %struct._KEYINFO_REC*, !dbg !2060
  store %struct._KEYINFO_REC* %28, %struct._KEYINFO_REC** %10, align 8, !dbg !2059
  %29 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %10, align 8, !dbg !2062
  %30 = getelementptr inbounds %struct._KEYINFO_REC, %struct._KEYINFO_REC* %29, i32 0, i32 0, !dbg !2063
  %31 = load i8*, i8** %30, align 8, !dbg !2063
  %32 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %10, align 8, !dbg !2064
  %33 = getelementptr inbounds %struct._KEYINFO_REC, %struct._KEYINFO_REC* %32, i32 0, i32 1, !dbg !2065
  %34 = load i8*, i8** %33, align 8, !dbg !2065
  %35 = icmp ne i8* %34, null, !dbg !2064
  br i1 %35, label %36, label %40, !dbg !2064

; <label>:36:                                     ; preds = %24
  %37 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %10, align 8, !dbg !2066
  %38 = getelementptr inbounds %struct._KEYINFO_REC, %struct._KEYINFO_REC* %37, i32 0, i32 1, !dbg !2068
  %39 = load i8*, i8** %38, align 8, !dbg !2068
  br label %41, !dbg !2069

; <label>:40:                                     ; preds = %24
  br label %41, !dbg !2070

; <label>:41:                                     ; preds = %40, %36
  %42 = phi i8* [ %39, %36 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.37, i32 0, i32 0), %40 ], !dbg !2072
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 209, i8* %31, i8* %42), !dbg !2074
  br label %43, !dbg !2075

; <label>:43:                                     ; preds = %41
  %44 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !2076
  %45 = getelementptr inbounds %struct._GSList, %struct._GSList* %44, i32 0, i32 1, !dbg !2078
  %46 = load %struct._GSList*, %struct._GSList** %45, align 8, !dbg !2078
  store %struct._GSList* %46, %struct._GSList** %9, align 8, !dbg !2079
  br label %21, !dbg !2080, !llvm.loop !2081

; <label>:47:                                     ; preds = %21
  %48 = load i8*, i8** %7, align 8, !dbg !2083
  call void @cmd_params_free(i8* %48), !dbg !2084
  br label %116, !dbg !2085

; <label>:49:                                     ; preds = %15
  %50 = load i8*, i8** %4, align 8, !dbg !2086
  %51 = load i8, i8* %50, align 1, !dbg !2088
  %52 = sext i8 %51 to i32, !dbg !2088
  %53 = icmp ne i32 %52, 0, !dbg !2089
  br i1 %53, label %54, label %61, !dbg !2090

; <label>:54:                                     ; preds = %49
  %55 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !2091
  %56 = call i8* @g_hash_table_lookup(%struct._GHashTable* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0)), !dbg !2093
  %57 = icmp ne i8* %56, null, !dbg !2093
  br i1 %57, label %58, label %61, !dbg !2094

; <label>:58:                                     ; preds = %54
  %59 = load i8*, i8** %4, align 8, !dbg !2095
  call void @key_configure_remove(i8* %59), !dbg !2097
  %60 = load i8*, i8** %7, align 8, !dbg !2098
  call void @cmd_params_free(i8* %60), !dbg !2099
  br label %116, !dbg !2100

; <label>:61:                                     ; preds = %54, %49
  %62 = load i8*, i8** %4, align 8, !dbg !2101
  %63 = load i8, i8* %62, align 1, !dbg !2103
  %64 = sext i8 %63 to i32, !dbg !2103
  %65 = icmp ne i32 %64, 0, !dbg !2104
  br i1 %65, label %66, label %74, !dbg !2105

; <label>:66:                                     ; preds = %61
  %67 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !2106
  %68 = call i8* @g_hash_table_lookup(%struct._GHashTable* %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0)), !dbg !2108
  %69 = icmp ne i8* %68, null, !dbg !2108
  br i1 %69, label %70, label %74, !dbg !2109

; <label>:70:                                     ; preds = %66
  %71 = load i8*, i8** %4, align 8, !dbg !2110
  call void @key_configure_reset(i8* %71), !dbg !2112
  %72 = load i8*, i8** %4, align 8, !dbg !2113
  call void @cmd_show_keys(i8* %72, i32 1), !dbg !2114
  %73 = load i8*, i8** %7, align 8, !dbg !2115
  call void @cmd_params_free(i8* %73), !dbg !2116
  br label %116, !dbg !2117

; <label>:74:                                     ; preds = %66, %61
  br label %75

; <label>:75:                                     ; preds = %74
  %76 = load i8*, i8** %5, align 8, !dbg !2118
  %77 = load i8, i8* %76, align 1, !dbg !2120
  %78 = sext i8 %77 to i32, !dbg !2120
  %79 = icmp eq i32 %78, 0, !dbg !2121
  br i1 %79, label %80, label %83, !dbg !2122

; <label>:80:                                     ; preds = %75
  %81 = load i8*, i8** %4, align 8, !dbg !2123
  call void @cmd_show_keys(i8* %81, i32 0), !dbg !2125
  %82 = load i8*, i8** %7, align 8, !dbg !2126
  call void @cmd_params_free(i8* %82), !dbg !2127
  br label %116, !dbg !2128

; <label>:83:                                     ; preds = %75
  %84 = call i8* @settings_get_str(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0)), !dbg !2129
  %85 = load i8*, i8** %5, align 8, !dbg !2130
  %86 = load i8, i8* %85, align 1, !dbg !2131
  %87 = sext i8 %86 to i32, !dbg !2131
  %88 = call i8* @strchr(i8* %84, i32 %87) #7, !dbg !2132
  %89 = icmp ne i8* %88, null, !dbg !2134
  %90 = zext i1 %89 to i32, !dbg !2134
  store i32 %90, i32* %8, align 4, !dbg !2135
  %91 = load i32, i32* %8, align 4, !dbg !2136
  %92 = icmp ne i32 %91, 0, !dbg !2136
  br i1 %92, label %93, label %98, !dbg !2138

; <label>:93:                                     ; preds = %83
  %94 = load i8*, i8** %5, align 8, !dbg !2139
  %95 = getelementptr inbounds i8, i8* %94, i64 1, !dbg !2141
  %96 = load i8*, i8** %6, align 8, !dbg !2142
  %97 = call noalias i8* (i8*, ...) @g_strconcat(i8* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i32 0, i32 0), i8* %96, i8* null), !dbg !2143
  store i8* %97, i8** %6, align 8, !dbg !2144
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8** %5, align 8, !dbg !2145
  br label %98, !dbg !2146

; <label>:98:                                     ; preds = %93, %83
  %99 = load i8*, i8** %5, align 8, !dbg !2147
  %100 = call %struct._KEYINFO_REC* @key_info_find(i8* %99), !dbg !2149
  %101 = icmp eq %struct._KEYINFO_REC* %100, null, !dbg !2150
  br i1 %101, label %102, label %104, !dbg !2151

; <label>:102:                                    ; preds = %98
  %103 = load i8*, i8** %5, align 8, !dbg !2152
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, i32 1048576, i32 211, i8* %103), !dbg !2153
  br label %109, !dbg !2153

; <label>:104:                                    ; preds = %98
  %105 = load i8*, i8** %5, align 8, !dbg !2154
  %106 = load i8*, i8** %4, align 8, !dbg !2156
  %107 = load i8*, i8** %6, align 8, !dbg !2157
  call void @key_configure_add(i8* %105, i8* %106, i8* %107), !dbg !2158
  %108 = load i8*, i8** %4, align 8, !dbg !2159
  call void @cmd_show_keys(i8* %108, i32 1), !dbg !2160
  br label %109

; <label>:109:                                    ; preds = %104, %102
  %110 = load i32, i32* %8, align 4, !dbg !2161
  %111 = icmp ne i32 %110, 0, !dbg !2161
  br i1 %111, label %112, label %114, !dbg !2163

; <label>:112:                                    ; preds = %109
  %113 = load i8*, i8** %6, align 8, !dbg !2164
  call void @g_free(i8* %113), !dbg !2166
  br label %114, !dbg !2166

; <label>:114:                                    ; preds = %112, %109
  %115 = load i8*, i8** %7, align 8, !dbg !2167
  call void @cmd_params_free(i8* %115), !dbg !2168
  br label %116, !dbg !2169

; <label>:116:                                    ; preds = %114, %80, %70, %58, %47, %14
  ret void, !dbg !2170
}

declare void @command_set_options_module(i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @keyboard_deinit() #0 !dbg !2171 {
  call void @key_unbind(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @sig_command to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !2172
  call void @key_unbind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @sig_key to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !2173
  call void @key_unbind(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, i8*)* @sig_multi to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !2174
  call void @key_unbind(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @sig_nothing to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !2175
  br label %1, !dbg !2176

; <label>:1:                                      ; preds = %4, %0
  %2 = load %struct._GSList*, %struct._GSList** @keyinfos, align 8, !dbg !2177
  %3 = icmp ne %struct._GSList* %2, null, !dbg !2179
  br i1 %3, label %4, label %9, !dbg !2180

; <label>:4:                                      ; preds = %1
  %5 = load %struct._GSList*, %struct._GSList** @keyinfos, align 8, !dbg !2181
  %6 = getelementptr inbounds %struct._GSList, %struct._GSList* %5, i32 0, i32 0, !dbg !2182
  %7 = load i8*, i8** %6, align 8, !dbg !2182
  %8 = bitcast i8* %7 to %struct._KEYINFO_REC*, !dbg !2181
  call void @keyinfo_remove(%struct._KEYINFO_REC* %8), !dbg !2183
  br label %1, !dbg !2184, !llvm.loop !2186

; <label>:9:                                      ; preds = %1
  %10 = load %struct._GHashTable*, %struct._GHashTable** @keys, align 8, !dbg !2187
  call void @g_hash_table_destroy(%struct._GHashTable* %10), !dbg !2188
  %11 = load %struct._GHashTable*, %struct._GHashTable** @default_keys, align 8, !dbg !2189
  call void @g_hash_table_destroy(%struct._GHashTable* %11), !dbg !2190
  %12 = load %struct._GTree*, %struct._GTree** @key_states, align 8, !dbg !2191
  call void @g_tree_foreach(%struct._GTree* %12, i32 (i8*, i8*, i8*)* bitcast (i32 (i8*)* @key_state_destroy to i32 (i8*, i8*, i8*)*), i8* null), !dbg !2192
  %13 = load %struct._GTree*, %struct._GTree** @key_states, align 8, !dbg !2193
  call void @g_tree_destroy(%struct._GTree* %13), !dbg !2194
  call void @signal_remove_full(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_keyboard_config to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2195
  call void @signal_remove_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_keyboard_config to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2196
  call void @signal_remove_full(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_bind to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2197
  call void @command_unbind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_bind to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2198
  ret void, !dbg !2199
}

declare void @g_hash_table_destroy(%struct._GHashTable*) #2

declare void @g_tree_foreach(%struct._GTree*, i32 (i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @key_state_destroy(i8*) #0 !dbg !2200 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2203, metadata !425), !dbg !2204
  %3 = load i8*, i8** %2, align 8, !dbg !2205
  call void @g_free(i8* %3), !dbg !2206
  ret i32 0, !dbg !2207
}

declare void @g_tree_destroy(%struct._GTree*) #2

declare void @command_unbind_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare %struct._GString* @g_string_new(i8*) #2

declare void @g_hash_table_foreach(%struct._GHashTable*, void (i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @key_states_scan_key(i8*, %struct._KEY_REC*) #0 !dbg !2208 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._KEY_REC*, align 8
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._GString*, align 8
  %9 = alloca %struct._GSList*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2211, metadata !425), !dbg !2212
  store %struct._KEY_REC* %1, %struct._KEY_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._KEY_REC** %4, metadata !2213, metadata !425), !dbg !2214
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !2215, metadata !425), !dbg !2216
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !2217, metadata !425), !dbg !2218
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2219, metadata !425), !dbg !2220
  store i32 100, i32* %7, align 4, !dbg !2220
  %10 = load %struct._KEY_REC*, %struct._KEY_REC** %4, align 8, !dbg !2221
  %11 = getelementptr inbounds %struct._KEY_REC, %struct._KEY_REC* %10, i32 0, i32 0, !dbg !2223
  %12 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %11, align 8, !dbg !2223
  %13 = getelementptr inbounds %struct._KEYINFO_REC, %struct._KEYINFO_REC* %12, i32 0, i32 0, !dbg !2224
  %14 = load i8*, i8** %13, align 8, !dbg !2224
  %15 = call i32 @g_strcmp0(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0)), !dbg !2225
  %16 = icmp eq i32 %15, 0, !dbg !2226
  br i1 %16, label %17, label %18, !dbg !2227

; <label>:17:                                     ; preds = %2
  br label %89, !dbg !2228

; <label>:18:                                     ; preds = %2
  %19 = call %struct._GString* @g_string_new(i8* null), !dbg !2229
  %20 = bitcast %struct._GString* %19 to i8*, !dbg !2229
  %21 = call %struct._GSList* @g_slist_append(%struct._GSList* null, i8* %20), !dbg !2230
  store %struct._GSList* %21, %struct._GSList** %6, align 8, !dbg !2232
  %22 = load i8*, i8** %3, align 8, !dbg !2233
  %23 = call i32 @expand_key(i8* %22, %struct._GSList** %6, i32* %7), !dbg !2235
  %24 = icmp ne i32 %23, 0, !dbg !2235
  br i1 %24, label %25, label %72, !dbg !2236

; <label>:25:                                     ; preds = %18
  %26 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !2237
  store %struct._GSList* %26, %struct._GSList** %5, align 8, !dbg !2240
  br label %27, !dbg !2241

; <label>:27:                                     ; preds = %67, %25
  %28 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2242
  %29 = icmp ne %struct._GSList* %28, null, !dbg !2245
  br i1 %29, label %30, label %71, !dbg !2246

; <label>:30:                                     ; preds = %27
  call void @llvm.dbg.declare(metadata %struct._GString** %8, metadata !2247, metadata !425), !dbg !2249
  %31 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2250
  %32 = getelementptr inbounds %struct._GSList, %struct._GSList* %31, i32 0, i32 0, !dbg !2251
  %33 = load i8*, i8** %32, align 8, !dbg !2251
  %34 = bitcast i8* %33 to %struct._GString*, !dbg !2250
  store %struct._GString* %34, %struct._GString** %8, align 8, !dbg !2249
  %35 = load %struct._GString*, %struct._GString** %8, align 8, !dbg !2252
  %36 = getelementptr inbounds %struct._GString, %struct._GString* %35, i32 0, i32 0, !dbg !2254
  %37 = load i8*, i8** %36, align 8, !dbg !2254
  %38 = getelementptr inbounds i8, i8* %37, i64 1, !dbg !2252
  %39 = load i8, i8* %38, align 1, !dbg !2252
  %40 = sext i8 %39 to i32, !dbg !2252
  %41 = icmp eq i32 %40, 45, !dbg !2255
  br i1 %41, label %50, label %42, !dbg !2256

; <label>:42:                                     ; preds = %30
  %43 = load %struct._GString*, %struct._GString** %8, align 8, !dbg !2257
  %44 = getelementptr inbounds %struct._GString, %struct._GString* %43, i32 0, i32 0, !dbg !2259
  %45 = load i8*, i8** %44, align 8, !dbg !2259
  %46 = getelementptr inbounds i8, i8* %45, i64 1, !dbg !2257
  %47 = load i8, i8* %46, align 1, !dbg !2257
  %48 = sext i8 %47 to i32, !dbg !2257
  %49 = icmp eq i32 %48, 0, !dbg !2260
  br i1 %49, label %50, label %59, !dbg !2261

; <label>:50:                                     ; preds = %42, %30
  %51 = load %struct._GString*, %struct._GString** %8, align 8, !dbg !2262
  %52 = getelementptr inbounds %struct._GString, %struct._GString* %51, i32 0, i32 0, !dbg !2263
  %53 = load i8*, i8** %52, align 8, !dbg !2263
  %54 = getelementptr inbounds i8, i8* %53, i64 0, !dbg !2262
  %55 = load i8, i8* %54, align 1, !dbg !2262
  %56 = zext i8 %55 to i32, !dbg !2264
  %57 = sext i32 %56 to i64, !dbg !2265
  %58 = getelementptr inbounds [256 x i8], [256 x i8]* @used_keys, i64 0, i64 %57, !dbg !2265
  store i8 1, i8* %58, align 1, !dbg !2266
  br label %59, !dbg !2265

; <label>:59:                                     ; preds = %50, %42
  %60 = load %struct._GTree*, %struct._GTree** @key_states, align 8, !dbg !2267
  %61 = load %struct._GString*, %struct._GString** %8, align 8, !dbg !2268
  %62 = getelementptr inbounds %struct._GString, %struct._GString* %61, i32 0, i32 0, !dbg !2269
  %63 = load i8*, i8** %62, align 8, !dbg !2269
  %64 = call noalias i8* @g_strdup(i8* %63), !dbg !2270
  %65 = load %struct._KEY_REC*, %struct._KEY_REC** %4, align 8, !dbg !2271
  %66 = bitcast %struct._KEY_REC* %65 to i8*, !dbg !2271
  call void @g_tree_insert(%struct._GTree* %60, i8* %64, i8* %66), !dbg !2272
  br label %67, !dbg !2274

; <label>:67:                                     ; preds = %59
  %68 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2275
  %69 = getelementptr inbounds %struct._GSList, %struct._GSList* %68, i32 0, i32 1, !dbg !2277
  %70 = load %struct._GSList*, %struct._GSList** %69, align 8, !dbg !2277
  store %struct._GSList* %70, %struct._GSList** %5, align 8, !dbg !2278
  br label %27, !dbg !2279, !llvm.loop !2280

; <label>:71:                                     ; preds = %27
  br label %72, !dbg !2282

; <label>:72:                                     ; preds = %71, %18
  call void @llvm.dbg.declare(metadata %struct._GSList** %9, metadata !2283, metadata !425), !dbg !2285
  %73 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !2286
  store %struct._GSList* %73, %struct._GSList** %9, align 8, !dbg !2288
  br label %74, !dbg !2289

; <label>:74:                                     ; preds = %83, %72
  %75 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !2290
  %76 = icmp ne %struct._GSList* %75, null, !dbg !2293
  br i1 %76, label %77, label %87, !dbg !2294

; <label>:77:                                     ; preds = %74
  %78 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !2295
  %79 = getelementptr inbounds %struct._GSList, %struct._GSList* %78, i32 0, i32 0, !dbg !2297
  %80 = load i8*, i8** %79, align 8, !dbg !2297
  %81 = bitcast i8* %80 to %struct._GString*, !dbg !2295
  %82 = call i8* @g_string_free(%struct._GString* %81, i32 1), !dbg !2298
  br label %83, !dbg !2298

; <label>:83:                                     ; preds = %77
  %84 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !2299
  %85 = getelementptr inbounds %struct._GSList, %struct._GSList* %84, i32 0, i32 1, !dbg !2301
  %86 = load %struct._GSList*, %struct._GSList** %85, align 8, !dbg !2301
  store %struct._GSList* %86, %struct._GSList** %9, align 8, !dbg !2302
  br label %74, !dbg !2303, !llvm.loop !2304

; <label>:87:                                     ; preds = %74
  %88 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !2306
  call void @g_slist_free(%struct._GSList* %88), !dbg !2308
  store %struct._GSList* null, %struct._GSList** %6, align 8, !dbg !2309
  br label %89, !dbg !2310

; <label>:89:                                     ; preds = %87, %17
  ret void, !dbg !2311
}

declare i8* @g_string_free(%struct._GString*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @expand_key(i8*, %struct._GSList**, i32*) #0 !dbg !2312 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct._GSList**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct._GSList*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct._GSList*, align 8
  %12 = alloca %struct._GSList*, align 8
  %13 = alloca %struct._GSList*, align 8
  %14 = alloca %struct._GSList*, align 8
  %15 = alloca %struct._GSList*, align 8
  %16 = alloca %struct._GSList*, align 8
  %17 = alloca %struct._GSList*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct._GSList*, align 8
  %21 = alloca %struct._GSList*, align 8
  %22 = alloca %struct._GSList*, align 8
  %23 = alloca %struct._GSList*, align 8
  %24 = alloca %struct._GString*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2316, metadata !425), !dbg !2317
  store %struct._GSList** %1, %struct._GSList*** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList*** %6, metadata !2318, metadata !425), !dbg !2319
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !2320, metadata !425), !dbg !2321
  call void @llvm.dbg.declare(metadata %struct._GSList** %8, metadata !2322, metadata !425), !dbg !2323
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2324, metadata !425), !dbg !2325
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2326, metadata !425), !dbg !2327
  %25 = load i32*, i32** %7, align 8, !dbg !2328
  %26 = load i32, i32* %25, align 4, !dbg !2330
  %27 = add nsw i32 %26, -1, !dbg !2330
  store i32 %27, i32* %25, align 4, !dbg !2330
  %28 = icmp slt i32 %26, 0, !dbg !2331
  br i1 %28, label %29, label %30, !dbg !2332

; <label>:29:                                     ; preds = %3
  store i32 0, i32* %4, align 4, !dbg !2333
  br label %369, !dbg !2333

; <label>:30:                                     ; preds = %3
  store i8* null, i8** %9, align 8, !dbg !2335
  store i32 1, i32* %10, align 4, !dbg !2336
  br label %31, !dbg !2337

; <label>:31:                                     ; preds = %334, %30
  %32 = load i8*, i8** %5, align 8, !dbg !2338
  %33 = load i8, i8* %32, align 1, !dbg !2342
  %34 = sext i8 %33 to i32, !dbg !2342
  %35 = icmp ne i32 %34, 0, !dbg !2343
  br i1 %35, label %36, label %337, !dbg !2344

; <label>:36:                                     ; preds = %31
  %37 = load i8*, i8** %9, align 8, !dbg !2345
  %38 = icmp ne i8* %37, null, !dbg !2348
  br i1 %38, label %39, label %83, !dbg !2349

; <label>:39:                                     ; preds = %36
  %40 = load i8*, i8** %5, align 8, !dbg !2350
  %41 = load i8, i8* %40, align 1, !dbg !2353
  %42 = zext i8 %41 to i32, !dbg !2354
  %43 = sext i32 %42 to i64, !dbg !2355
  %44 = call i16** @__ctype_b_loc() #1, !dbg !2356
  %45 = load i16*, i16** %44, align 8, !dbg !2357
  %46 = getelementptr inbounds i16, i16* %45, i64 %43, !dbg !2355
  %47 = load i16, i16* %46, align 2, !dbg !2355
  %48 = zext i16 %47 to i32, !dbg !2355
  %49 = and i32 %48, 8, !dbg !2358
  %50 = icmp ne i32 %49, 0, !dbg !2358
  br i1 %50, label %56, label %51, !dbg !2359

; <label>:51:                                     ; preds = %39
  %52 = load i8*, i8** %5, align 8, !dbg !2360
  %53 = load i8, i8* %52, align 1, !dbg !2362
  %54 = sext i8 %53 to i32, !dbg !2362
  %55 = icmp eq i32 %54, 95, !dbg !2363
  br i1 %55, label %56, label %57, !dbg !2364

; <label>:56:                                     ; preds = %51, %39
  br label %334, !dbg !2365

; <label>:57:                                     ; preds = %51
  %58 = load i8*, i8** %9, align 8, !dbg !2367
  %59 = load i8*, i8** %5, align 8, !dbg !2369
  %60 = getelementptr inbounds i8, i8* %59, i64 -1, !dbg !2370
  %61 = load %struct._GSList**, %struct._GSList*** %6, align 8, !dbg !2371
  %62 = load i32*, i32** %7, align 8, !dbg !2372
  %63 = call i32 @expand_combo(i8* %58, i8* %60, %struct._GSList** %61, i32* %62), !dbg !2373
  %64 = icmp ne i32 %63, 0, !dbg !2373
  br i1 %64, label %66, label %65, !dbg !2374

; <label>:65:                                     ; preds = %57
  store i32 0, i32* %4, align 4, !dbg !2375
  br label %369, !dbg !2375

; <label>:66:                                     ; preds = %57
  call void @llvm.dbg.declare(metadata %struct._GSList** %11, metadata !2376, metadata !425), !dbg !2378
  %67 = load %struct._GSList**, %struct._GSList*** %6, align 8, !dbg !2379
  %68 = load %struct._GSList*, %struct._GSList** %67, align 8, !dbg !2381
  store %struct._GSList* %68, %struct._GSList** %11, align 8, !dbg !2382
  br label %69, !dbg !2383

; <label>:69:                                     ; preds = %78, %66
  %70 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !2384
  %71 = icmp ne %struct._GSList* %70, null, !dbg !2387
  br i1 %71, label %72, label %82, !dbg !2388

; <label>:72:                                     ; preds = %69
  %73 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !2389
  %74 = getelementptr inbounds %struct._GSList, %struct._GSList* %73, i32 0, i32 0, !dbg !2391
  %75 = load i8*, i8** %74, align 8, !dbg !2391
  %76 = bitcast i8* %75 to %struct._GString*, !dbg !2389
  %77 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %76, i8 signext 45), !dbg !2392
  br label %78, !dbg !2392

; <label>:78:                                     ; preds = %72
  %79 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !2393
  %80 = getelementptr inbounds %struct._GSList, %struct._GSList* %79, i32 0, i32 1, !dbg !2395
  %81 = load %struct._GSList*, %struct._GSList** %80, align 8, !dbg !2395
  store %struct._GSList* %81, %struct._GSList** %11, align 8, !dbg !2396
  br label %69, !dbg !2397, !llvm.loop !2398

; <label>:82:                                     ; preds = %69
  store i8* null, i8** %9, align 8, !dbg !2400
  br label %83, !dbg !2401

; <label>:83:                                     ; preds = %82, %36
  %84 = load i8*, i8** %5, align 8, !dbg !2402
  %85 = load i8, i8* %84, align 1, !dbg !2404
  %86 = sext i8 %85 to i32, !dbg !2404
  %87 = icmp eq i32 %86, 45, !dbg !2405
  br i1 %87, label %88, label %129, !dbg !2406

; <label>:88:                                     ; preds = %83
  %89 = load i32, i32* %10, align 4, !dbg !2407
  %90 = icmp ne i32 %89, 0, !dbg !2407
  br i1 %90, label %91, label %124, !dbg !2410

; <label>:91:                                     ; preds = %88
  call void @llvm.dbg.declare(metadata %struct._GSList** %12, metadata !2411, metadata !425), !dbg !2414
  %92 = load %struct._GSList**, %struct._GSList*** %6, align 8, !dbg !2415
  %93 = load %struct._GSList*, %struct._GSList** %92, align 8, !dbg !2417
  store %struct._GSList* %93, %struct._GSList** %12, align 8, !dbg !2418
  br label %94, !dbg !2419

; <label>:94:                                     ; preds = %103, %91
  %95 = load %struct._GSList*, %struct._GSList** %12, align 8, !dbg !2420
  %96 = icmp ne %struct._GSList* %95, null, !dbg !2423
  br i1 %96, label %97, label %107, !dbg !2424

; <label>:97:                                     ; preds = %94
  %98 = load %struct._GSList*, %struct._GSList** %12, align 8, !dbg !2425
  %99 = getelementptr inbounds %struct._GSList, %struct._GSList* %98, i32 0, i32 0, !dbg !2427
  %100 = load i8*, i8** %99, align 8, !dbg !2427
  %101 = bitcast i8* %100 to %struct._GString*, !dbg !2425
  %102 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %101, i8 signext 45), !dbg !2428
  br label %103, !dbg !2428

; <label>:103:                                    ; preds = %97
  %104 = load %struct._GSList*, %struct._GSList** %12, align 8, !dbg !2429
  %105 = getelementptr inbounds %struct._GSList, %struct._GSList* %104, i32 0, i32 1, !dbg !2431
  %106 = load %struct._GSList*, %struct._GSList** %105, align 8, !dbg !2431
  store %struct._GSList* %106, %struct._GSList** %12, align 8, !dbg !2432
  br label %94, !dbg !2433, !llvm.loop !2434

; <label>:107:                                    ; preds = %94
  call void @llvm.dbg.declare(metadata %struct._GSList** %13, metadata !2436, metadata !425), !dbg !2438
  %108 = load %struct._GSList**, %struct._GSList*** %6, align 8, !dbg !2439
  %109 = load %struct._GSList*, %struct._GSList** %108, align 8, !dbg !2441
  store %struct._GSList* %109, %struct._GSList** %13, align 8, !dbg !2442
  br label %110, !dbg !2443

; <label>:110:                                    ; preds = %119, %107
  %111 = load %struct._GSList*, %struct._GSList** %13, align 8, !dbg !2444
  %112 = icmp ne %struct._GSList* %111, null, !dbg !2447
  br i1 %112, label %113, label %123, !dbg !2448

; <label>:113:                                    ; preds = %110
  %114 = load %struct._GSList*, %struct._GSList** %13, align 8, !dbg !2449
  %115 = getelementptr inbounds %struct._GSList, %struct._GSList* %114, i32 0, i32 0, !dbg !2451
  %116 = load i8*, i8** %115, align 8, !dbg !2451
  %117 = bitcast i8* %116 to %struct._GString*, !dbg !2449
  %118 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %117, i8 signext 45), !dbg !2452
  br label %119, !dbg !2452

; <label>:119:                                    ; preds = %113
  %120 = load %struct._GSList*, %struct._GSList** %13, align 8, !dbg !2453
  %121 = getelementptr inbounds %struct._GSList, %struct._GSList* %120, i32 0, i32 1, !dbg !2455
  %122 = load %struct._GSList*, %struct._GSList** %121, align 8, !dbg !2455
  store %struct._GSList* %122, %struct._GSList** %13, align 8, !dbg !2456
  br label %110, !dbg !2457, !llvm.loop !2458

; <label>:123:                                    ; preds = %110
  br label %124, !dbg !2460

; <label>:124:                                    ; preds = %123, %88
  %125 = load i32, i32* %10, align 4, !dbg !2461
  %126 = icmp ne i32 %125, 0, !dbg !2462
  %127 = xor i1 %126, true, !dbg !2462
  %128 = zext i1 %127 to i32, !dbg !2462
  store i32 %128, i32* %10, align 4, !dbg !2463
  br label %333, !dbg !2464

; <label>:129:                                    ; preds = %83
  %130 = load i8*, i8** %5, align 8, !dbg !2465
  %131 = load i8, i8* %130, align 1, !dbg !2468
  %132 = sext i8 %131 to i32, !dbg !2468
  %133 = icmp eq i32 %132, 94, !dbg !2469
  br i1 %133, label %134, label %217, !dbg !2468

; <label>:134:                                    ; preds = %129
  call void @llvm.dbg.declare(metadata %struct._GSList** %14, metadata !2470, metadata !425), !dbg !2473
  %135 = load %struct._GSList**, %struct._GSList*** %6, align 8, !dbg !2474
  %136 = load %struct._GSList*, %struct._GSList** %135, align 8, !dbg !2476
  store %struct._GSList* %136, %struct._GSList** %14, align 8, !dbg !2477
  br label %137, !dbg !2478

; <label>:137:                                    ; preds = %146, %134
  %138 = load %struct._GSList*, %struct._GSList** %14, align 8, !dbg !2479
  %139 = icmp ne %struct._GSList* %138, null, !dbg !2482
  br i1 %139, label %140, label %150, !dbg !2483

; <label>:140:                                    ; preds = %137
  %141 = load %struct._GSList*, %struct._GSList** %14, align 8, !dbg !2484
  %142 = getelementptr inbounds %struct._GSList, %struct._GSList* %141, i32 0, i32 0, !dbg !2486
  %143 = load i8*, i8** %142, align 8, !dbg !2486
  %144 = bitcast i8* %143 to %struct._GString*, !dbg !2484
  %145 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %144, i8 signext 94), !dbg !2487
  br label %146, !dbg !2487

; <label>:146:                                    ; preds = %140
  %147 = load %struct._GSList*, %struct._GSList** %14, align 8, !dbg !2488
  %148 = getelementptr inbounds %struct._GSList, %struct._GSList* %147, i32 0, i32 1, !dbg !2490
  %149 = load %struct._GSList*, %struct._GSList** %148, align 8, !dbg !2490
  store %struct._GSList* %149, %struct._GSList** %14, align 8, !dbg !2491
  br label %137, !dbg !2492, !llvm.loop !2493

; <label>:150:                                    ; preds = %137
  %151 = load i8*, i8** %5, align 8, !dbg !2495
  %152 = getelementptr inbounds i8, i8* %151, i64 1, !dbg !2495
  %153 = load i8, i8* %152, align 1, !dbg !2495
  %154 = sext i8 %153 to i32, !dbg !2495
  %155 = icmp ne i32 %154, 0, !dbg !2497
  br i1 %155, label %156, label %183, !dbg !2498

; <label>:156:                                    ; preds = %150
  %157 = load i8*, i8** %5, align 8, !dbg !2499
  %158 = getelementptr inbounds i8, i8* %157, i64 1, !dbg !2499
  %159 = load i8, i8* %158, align 1, !dbg !2499
  %160 = sext i8 %159 to i32, !dbg !2499
  %161 = icmp ne i32 %160, 45, !dbg !2501
  br i1 %161, label %162, label %183, !dbg !2502

; <label>:162:                                    ; preds = %156
  %163 = load i8*, i8** %5, align 8, !dbg !2503
  %164 = getelementptr inbounds i8, i8* %163, i32 1, !dbg !2503
  store i8* %164, i8** %5, align 8, !dbg !2503
  call void @llvm.dbg.declare(metadata %struct._GSList** %15, metadata !2505, metadata !425), !dbg !2507
  %165 = load %struct._GSList**, %struct._GSList*** %6, align 8, !dbg !2508
  %166 = load %struct._GSList*, %struct._GSList** %165, align 8, !dbg !2510
  store %struct._GSList* %166, %struct._GSList** %15, align 8, !dbg !2511
  br label %167, !dbg !2512

; <label>:167:                                    ; preds = %178, %162
  %168 = load %struct._GSList*, %struct._GSList** %15, align 8, !dbg !2513
  %169 = icmp ne %struct._GSList* %168, null, !dbg !2516
  br i1 %169, label %170, label %182, !dbg !2517

; <label>:170:                                    ; preds = %167
  %171 = load %struct._GSList*, %struct._GSList** %15, align 8, !dbg !2518
  %172 = getelementptr inbounds %struct._GSList, %struct._GSList* %171, i32 0, i32 0, !dbg !2520
  %173 = load i8*, i8** %172, align 8, !dbg !2520
  %174 = bitcast i8* %173 to %struct._GString*, !dbg !2518
  %175 = load i8*, i8** %5, align 8, !dbg !2521
  %176 = load i8, i8* %175, align 1, !dbg !2522
  %177 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %174, i8 signext %176), !dbg !2523
  br label %178, !dbg !2523

; <label>:178:                                    ; preds = %170
  %179 = load %struct._GSList*, %struct._GSList** %15, align 8, !dbg !2524
  %180 = getelementptr inbounds %struct._GSList, %struct._GSList* %179, i32 0, i32 1, !dbg !2526
  %181 = load %struct._GSList*, %struct._GSList** %180, align 8, !dbg !2526
  store %struct._GSList* %181, %struct._GSList** %15, align 8, !dbg !2527
  br label %167, !dbg !2528, !llvm.loop !2529

; <label>:182:                                    ; preds = %167
  br label %200, !dbg !2531

; <label>:183:                                    ; preds = %156, %150
  call void @llvm.dbg.declare(metadata %struct._GSList** %16, metadata !2532, metadata !425), !dbg !2535
  %184 = load %struct._GSList**, %struct._GSList*** %6, align 8, !dbg !2536
  %185 = load %struct._GSList*, %struct._GSList** %184, align 8, !dbg !2538
  store %struct._GSList* %185, %struct._GSList** %16, align 8, !dbg !2539
  br label %186, !dbg !2540

; <label>:186:                                    ; preds = %195, %183
  %187 = load %struct._GSList*, %struct._GSList** %16, align 8, !dbg !2541
  %188 = icmp ne %struct._GSList* %187, null, !dbg !2544
  br i1 %188, label %189, label %199, !dbg !2545

; <label>:189:                                    ; preds = %186
  %190 = load %struct._GSList*, %struct._GSList** %16, align 8, !dbg !2546
  %191 = getelementptr inbounds %struct._GSList, %struct._GSList* %190, i32 0, i32 0, !dbg !2548
  %192 = load i8*, i8** %191, align 8, !dbg !2548
  %193 = bitcast i8* %192 to %struct._GString*, !dbg !2546
  %194 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %193, i8 signext 45), !dbg !2549
  br label %195, !dbg !2549

; <label>:195:                                    ; preds = %189
  %196 = load %struct._GSList*, %struct._GSList** %16, align 8, !dbg !2550
  %197 = getelementptr inbounds %struct._GSList, %struct._GSList* %196, i32 0, i32 1, !dbg !2552
  %198 = load %struct._GSList*, %struct._GSList** %197, align 8, !dbg !2552
  store %struct._GSList* %198, %struct._GSList** %16, align 8, !dbg !2553
  br label %186, !dbg !2554, !llvm.loop !2555

; <label>:199:                                    ; preds = %186
  br label %200

; <label>:200:                                    ; preds = %199, %182
  call void @llvm.dbg.declare(metadata %struct._GSList** %17, metadata !2557, metadata !425), !dbg !2559
  %201 = load %struct._GSList**, %struct._GSList*** %6, align 8, !dbg !2560
  %202 = load %struct._GSList*, %struct._GSList** %201, align 8, !dbg !2562
  store %struct._GSList* %202, %struct._GSList** %17, align 8, !dbg !2563
  br label %203, !dbg !2564

; <label>:203:                                    ; preds = %212, %200
  %204 = load %struct._GSList*, %struct._GSList** %17, align 8, !dbg !2565
  %205 = icmp ne %struct._GSList* %204, null, !dbg !2568
  br i1 %205, label %206, label %216, !dbg !2569

; <label>:206:                                    ; preds = %203
  %207 = load %struct._GSList*, %struct._GSList** %17, align 8, !dbg !2570
  %208 = getelementptr inbounds %struct._GSList, %struct._GSList* %207, i32 0, i32 0, !dbg !2572
  %209 = load i8*, i8** %208, align 8, !dbg !2572
  %210 = bitcast i8* %209 to %struct._GString*, !dbg !2570
  %211 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %210, i8 signext 45), !dbg !2573
  br label %212, !dbg !2573

; <label>:212:                                    ; preds = %206
  %213 = load %struct._GSList*, %struct._GSList** %17, align 8, !dbg !2574
  %214 = getelementptr inbounds %struct._GSList, %struct._GSList* %213, i32 0, i32 1, !dbg !2576
  %215 = load %struct._GSList*, %struct._GSList** %214, align 8, !dbg !2576
  store %struct._GSList* %215, %struct._GSList** %17, align 8, !dbg !2577
  br label %203, !dbg !2578, !llvm.loop !2579

; <label>:216:                                    ; preds = %203
  store i32 0, i32* %10, align 4, !dbg !2581
  br label %332, !dbg !2582

; <label>:217:                                    ; preds = %129
  %218 = load i32, i32* %10, align 4, !dbg !2583
  %219 = icmp ne i32 %218, 0, !dbg !2583
  br i1 %219, label %220, label %234, !dbg !2586

; <label>:220:                                    ; preds = %217
  %221 = load i8*, i8** %5, align 8, !dbg !2587
  %222 = load i8, i8* %221, align 1, !dbg !2589
  %223 = zext i8 %222 to i32, !dbg !2590
  %224 = sext i32 %223 to i64, !dbg !2591
  %225 = call i16** @__ctype_b_loc() #1, !dbg !2592
  %226 = load i16*, i16** %225, align 8, !dbg !2593
  %227 = getelementptr inbounds i16, i16* %226, i64 %224, !dbg !2591
  %228 = load i16, i16* %227, align 2, !dbg !2591
  %229 = zext i16 %228 to i32, !dbg !2591
  %230 = and i32 %229, 1024, !dbg !2594
  %231 = icmp ne i32 %230, 0, !dbg !2594
  br i1 %231, label %232, label %234, !dbg !2595

; <label>:232:                                    ; preds = %220
  %233 = load i8*, i8** %5, align 8, !dbg !2596
  store i8* %233, i8** %9, align 8, !dbg !2598
  store i32 0, i32* %10, align 4, !dbg !2599
  br label %331, !dbg !2600

; <label>:234:                                    ; preds = %220, %217
  %235 = load i8*, i8** %5, align 8, !dbg !2601
  %236 = call i32 @g_utf8_validate(i8* %235, i64 -1, i8** null), !dbg !2604
  %237 = icmp ne i32 %236, 0, !dbg !2604
  br i1 %237, label %238, label %295, !dbg !2604

; <label>:238:                                    ; preds = %234
  call void @llvm.dbg.declare(metadata i8** %18, metadata !2605, metadata !425), !dbg !2607
  call void @llvm.dbg.declare(metadata i8** %19, metadata !2608, metadata !425), !dbg !2609
  %239 = load i8*, i8** %5, align 8, !dbg !2610
  %240 = load i8*, i8** %5, align 8, !dbg !2611
  %241 = load i8, i8* %240, align 1, !dbg !2612
  %242 = zext i8 %241 to i64, !dbg !2613
  %243 = load i8*, i8** @g_utf8_skip, align 8, !dbg !2613
  %244 = getelementptr inbounds i8, i8* %243, i64 %242, !dbg !2613
  %245 = load i8, i8* %244, align 1, !dbg !2613
  %246 = sext i8 %245 to i32, !dbg !2613
  %247 = sext i32 %246 to i64, !dbg !2614
  %248 = getelementptr inbounds i8, i8* %239, i64 %247, !dbg !2614
  store i8* %248, i8** %19, align 8, !dbg !2609
  %249 = load i8*, i8** %5, align 8, !dbg !2615
  store i8* %249, i8** %18, align 8, !dbg !2617
  br label %250, !dbg !2618

; <label>:250:                                    ; preds = %273, %238
  %251 = load i8*, i8** %18, align 8, !dbg !2619
  %252 = load i8*, i8** %19, align 8, !dbg !2622
  %253 = icmp ne i8* %251, %252, !dbg !2623
  br i1 %253, label %254, label %276, !dbg !2624

; <label>:254:                                    ; preds = %250
  call void @llvm.dbg.declare(metadata %struct._GSList** %20, metadata !2625, metadata !425), !dbg !2627
  %255 = load %struct._GSList**, %struct._GSList*** %6, align 8, !dbg !2628
  %256 = load %struct._GSList*, %struct._GSList** %255, align 8, !dbg !2630
  store %struct._GSList* %256, %struct._GSList** %20, align 8, !dbg !2631
  br label %257, !dbg !2632

; <label>:257:                                    ; preds = %268, %254
  %258 = load %struct._GSList*, %struct._GSList** %20, align 8, !dbg !2633
  %259 = icmp ne %struct._GSList* %258, null, !dbg !2636
  br i1 %259, label %260, label %272, !dbg !2637

; <label>:260:                                    ; preds = %257
  %261 = load %struct._GSList*, %struct._GSList** %20, align 8, !dbg !2638
  %262 = getelementptr inbounds %struct._GSList, %struct._GSList* %261, i32 0, i32 0, !dbg !2640
  %263 = load i8*, i8** %262, align 8, !dbg !2640
  %264 = bitcast i8* %263 to %struct._GString*, !dbg !2638
  %265 = load i8*, i8** %18, align 8, !dbg !2641
  %266 = load i8, i8* %265, align 1, !dbg !2642
  %267 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %264, i8 signext %266), !dbg !2643
  br label %268, !dbg !2643

; <label>:268:                                    ; preds = %260
  %269 = load %struct._GSList*, %struct._GSList** %20, align 8, !dbg !2644
  %270 = getelementptr inbounds %struct._GSList, %struct._GSList* %269, i32 0, i32 1, !dbg !2646
  %271 = load %struct._GSList*, %struct._GSList** %270, align 8, !dbg !2646
  store %struct._GSList* %271, %struct._GSList** %20, align 8, !dbg !2647
  br label %257, !dbg !2648, !llvm.loop !2649

; <label>:272:                                    ; preds = %257
  br label %273, !dbg !2651

; <label>:273:                                    ; preds = %272
  %274 = load i8*, i8** %18, align 8, !dbg !2653
  %275 = getelementptr inbounds i8, i8* %274, i32 1, !dbg !2653
  store i8* %275, i8** %18, align 8, !dbg !2653
  br label %250, !dbg !2655, !llvm.loop !2656

; <label>:276:                                    ; preds = %250
  call void @llvm.dbg.declare(metadata %struct._GSList** %21, metadata !2658, metadata !425), !dbg !2660
  %277 = load %struct._GSList**, %struct._GSList*** %6, align 8, !dbg !2661
  %278 = load %struct._GSList*, %struct._GSList** %277, align 8, !dbg !2663
  store %struct._GSList* %278, %struct._GSList** %21, align 8, !dbg !2664
  br label %279, !dbg !2665

; <label>:279:                                    ; preds = %288, %276
  %280 = load %struct._GSList*, %struct._GSList** %21, align 8, !dbg !2666
  %281 = icmp ne %struct._GSList* %280, null, !dbg !2669
  br i1 %281, label %282, label %292, !dbg !2670

; <label>:282:                                    ; preds = %279
  %283 = load %struct._GSList*, %struct._GSList** %21, align 8, !dbg !2671
  %284 = getelementptr inbounds %struct._GSList, %struct._GSList* %283, i32 0, i32 0, !dbg !2673
  %285 = load i8*, i8** %284, align 8, !dbg !2673
  %286 = bitcast i8* %285 to %struct._GString*, !dbg !2671
  %287 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %286, i8 signext 45), !dbg !2674
  br label %288, !dbg !2674

; <label>:288:                                    ; preds = %282
  %289 = load %struct._GSList*, %struct._GSList** %21, align 8, !dbg !2675
  %290 = getelementptr inbounds %struct._GSList, %struct._GSList* %289, i32 0, i32 1, !dbg !2677
  %291 = load %struct._GSList*, %struct._GSList** %290, align 8, !dbg !2677
  store %struct._GSList* %291, %struct._GSList** %21, align 8, !dbg !2678
  br label %279, !dbg !2679, !llvm.loop !2680

; <label>:292:                                    ; preds = %279
  %293 = load i8*, i8** %19, align 8, !dbg !2682
  %294 = getelementptr inbounds i8, i8* %293, i64 -1, !dbg !2683
  store i8* %294, i8** %5, align 8, !dbg !2684
  store i32 0, i32* %10, align 4, !dbg !2685
  br label %330, !dbg !2686

; <label>:295:                                    ; preds = %234
  call void @llvm.dbg.declare(metadata %struct._GSList** %22, metadata !2687, metadata !425), !dbg !2690
  %296 = load %struct._GSList**, %struct._GSList*** %6, align 8, !dbg !2691
  %297 = load %struct._GSList*, %struct._GSList** %296, align 8, !dbg !2693
  store %struct._GSList* %297, %struct._GSList** %22, align 8, !dbg !2694
  br label %298, !dbg !2695

; <label>:298:                                    ; preds = %309, %295
  %299 = load %struct._GSList*, %struct._GSList** %22, align 8, !dbg !2696
  %300 = icmp ne %struct._GSList* %299, null, !dbg !2699
  br i1 %300, label %301, label %313, !dbg !2700

; <label>:301:                                    ; preds = %298
  %302 = load %struct._GSList*, %struct._GSList** %22, align 8, !dbg !2701
  %303 = getelementptr inbounds %struct._GSList, %struct._GSList* %302, i32 0, i32 0, !dbg !2703
  %304 = load i8*, i8** %303, align 8, !dbg !2703
  %305 = bitcast i8* %304 to %struct._GString*, !dbg !2701
  %306 = load i8*, i8** %5, align 8, !dbg !2704
  %307 = load i8, i8* %306, align 1, !dbg !2705
  %308 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %305, i8 signext %307), !dbg !2706
  br label %309, !dbg !2706

; <label>:309:                                    ; preds = %301
  %310 = load %struct._GSList*, %struct._GSList** %22, align 8, !dbg !2707
  %311 = getelementptr inbounds %struct._GSList, %struct._GSList* %310, i32 0, i32 1, !dbg !2709
  %312 = load %struct._GSList*, %struct._GSList** %311, align 8, !dbg !2709
  store %struct._GSList* %312, %struct._GSList** %22, align 8, !dbg !2710
  br label %298, !dbg !2711, !llvm.loop !2712

; <label>:313:                                    ; preds = %298
  call void @llvm.dbg.declare(metadata %struct._GSList** %23, metadata !2714, metadata !425), !dbg !2716
  %314 = load %struct._GSList**, %struct._GSList*** %6, align 8, !dbg !2717
  %315 = load %struct._GSList*, %struct._GSList** %314, align 8, !dbg !2719
  store %struct._GSList* %315, %struct._GSList** %23, align 8, !dbg !2720
  br label %316, !dbg !2721

; <label>:316:                                    ; preds = %325, %313
  %317 = load %struct._GSList*, %struct._GSList** %23, align 8, !dbg !2722
  %318 = icmp ne %struct._GSList* %317, null, !dbg !2725
  br i1 %318, label %319, label %329, !dbg !2726

; <label>:319:                                    ; preds = %316
  %320 = load %struct._GSList*, %struct._GSList** %23, align 8, !dbg !2727
  %321 = getelementptr inbounds %struct._GSList, %struct._GSList* %320, i32 0, i32 0, !dbg !2729
  %322 = load i8*, i8** %321, align 8, !dbg !2729
  %323 = bitcast i8* %322 to %struct._GString*, !dbg !2727
  %324 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %323, i8 signext 45), !dbg !2730
  br label %325, !dbg !2730

; <label>:325:                                    ; preds = %319
  %326 = load %struct._GSList*, %struct._GSList** %23, align 8, !dbg !2731
  %327 = getelementptr inbounds %struct._GSList, %struct._GSList* %326, i32 0, i32 1, !dbg !2733
  %328 = load %struct._GSList*, %struct._GSList** %327, align 8, !dbg !2733
  store %struct._GSList* %328, %struct._GSList** %23, align 8, !dbg !2734
  br label %316, !dbg !2735, !llvm.loop !2736

; <label>:329:                                    ; preds = %316
  store i32 0, i32* %10, align 4, !dbg !2738
  br label %330

; <label>:330:                                    ; preds = %329, %292
  br label %331

; <label>:331:                                    ; preds = %330, %232
  br label %332

; <label>:332:                                    ; preds = %331, %216
  br label %333

; <label>:333:                                    ; preds = %332, %124
  br label %334, !dbg !2739

; <label>:334:                                    ; preds = %333, %56
  %335 = load i8*, i8** %5, align 8, !dbg !2740
  %336 = getelementptr inbounds i8, i8* %335, i32 1, !dbg !2740
  store i8* %336, i8** %5, align 8, !dbg !2740
  br label %31, !dbg !2742, !llvm.loop !2743

; <label>:337:                                    ; preds = %31
  %338 = load i8*, i8** %9, align 8, !dbg !2744
  %339 = icmp ne i8* %338, null, !dbg !2746
  br i1 %339, label %340, label %347, !dbg !2747

; <label>:340:                                    ; preds = %337
  %341 = load i8*, i8** %9, align 8, !dbg !2748
  %342 = load i8*, i8** %5, align 8, !dbg !2749
  %343 = getelementptr inbounds i8, i8* %342, i64 -1, !dbg !2750
  %344 = load %struct._GSList**, %struct._GSList*** %6, align 8, !dbg !2751
  %345 = load i32*, i32** %7, align 8, !dbg !2752
  %346 = call i32 @expand_combo(i8* %341, i8* %343, %struct._GSList** %344, i32* %345), !dbg !2753
  store i32 %346, i32* %4, align 4, !dbg !2754
  br label %369, !dbg !2754

; <label>:347:                                    ; preds = %337
  %348 = load %struct._GSList**, %struct._GSList*** %6, align 8, !dbg !2755
  %349 = load %struct._GSList*, %struct._GSList** %348, align 8, !dbg !2757
  store %struct._GSList* %349, %struct._GSList** %8, align 8, !dbg !2758
  br label %350, !dbg !2759

; <label>:350:                                    ; preds = %364, %347
  %351 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !2760
  %352 = icmp ne %struct._GSList* %351, null, !dbg !2763
  br i1 %352, label %353, label %368, !dbg !2764

; <label>:353:                                    ; preds = %350
  call void @llvm.dbg.declare(metadata %struct._GString** %24, metadata !2765, metadata !425), !dbg !2767
  %354 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !2768
  %355 = getelementptr inbounds %struct._GSList, %struct._GSList* %354, i32 0, i32 0, !dbg !2769
  %356 = load i8*, i8** %355, align 8, !dbg !2769
  %357 = bitcast i8* %356 to %struct._GString*, !dbg !2768
  store %struct._GString* %357, %struct._GString** %24, align 8, !dbg !2767
  %358 = load %struct._GString*, %struct._GString** %24, align 8, !dbg !2770
  %359 = load %struct._GString*, %struct._GString** %24, align 8, !dbg !2771
  %360 = getelementptr inbounds %struct._GString, %struct._GString* %359, i32 0, i32 1, !dbg !2772
  %361 = load i64, i64* %360, align 8, !dbg !2772
  %362 = sub i64 %361, 1, !dbg !2773
  %363 = call %struct._GString* @g_string_truncate(%struct._GString* %358, i64 %362), !dbg !2774
  br label %364, !dbg !2775

; <label>:364:                                    ; preds = %353
  %365 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !2776
  %366 = getelementptr inbounds %struct._GSList, %struct._GSList* %365, i32 0, i32 1, !dbg !2778
  %367 = load %struct._GSList*, %struct._GSList** %366, align 8, !dbg !2778
  store %struct._GSList* %367, %struct._GSList** %8, align 8, !dbg !2779
  br label %350, !dbg !2780, !llvm.loop !2781

; <label>:368:                                    ; preds = %350
  store i32 1, i32* %4, align 4, !dbg !2783
  br label %369, !dbg !2783

; <label>:369:                                    ; preds = %368, %340, %65, %29
  %370 = load i32, i32* %4, align 4, !dbg !2784
  ret i32 %370, !dbg !2784
}

declare void @g_tree_insert(%struct._GTree*, i8*, i8*) #2

declare void @g_slist_free(%struct._GSList*) #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: nounwind uwtable
define internal i32 @expand_combo(i8*, i8*, %struct._GSList**, i32*) #0 !dbg !2785 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._GSList**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct._KEY_REC*, align 8
  %11 = alloca %struct._KEYINFO_REC*, align 8
  %12 = alloca %struct._GSList*, align 8
  %13 = alloca %struct._GSList*, align 8
  %14 = alloca %struct._GSList*, align 8
  %15 = alloca %struct._GSList*, align 8
  %16 = alloca %struct._GSList*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct._GSList*, align 8
  %20 = alloca %struct._KEY_REC*, align 8
  %21 = alloca %struct._GSList*, align 8
  %22 = alloca %struct._KEY_REC*, align 8
  %23 = alloca %struct._GString*, align 8
  %24 = alloca %struct._GSList*, align 8
  %25 = alloca %struct._GSList*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2788, metadata !425), !dbg !2789
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2790, metadata !425), !dbg !2791
  store %struct._GSList** %2, %struct._GSList*** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList*** %8, metadata !2792, metadata !425), !dbg !2793
  store i32* %3, i32** %9, align 8
  call void @llvm.dbg.declare(metadata i32** %9, metadata !2794, metadata !425), !dbg !2795
  call void @llvm.dbg.declare(metadata %struct._KEY_REC** %10, metadata !2796, metadata !425), !dbg !2797
  call void @llvm.dbg.declare(metadata %struct._KEYINFO_REC** %11, metadata !2798, metadata !425), !dbg !2799
  call void @llvm.dbg.declare(metadata %struct._GSList** %12, metadata !2800, metadata !425), !dbg !2801
  call void @llvm.dbg.declare(metadata %struct._GSList** %13, metadata !2802, metadata !425), !dbg !2803
  call void @llvm.dbg.declare(metadata %struct._GSList** %14, metadata !2804, metadata !425), !dbg !2805
  call void @llvm.dbg.declare(metadata %struct._GSList** %15, metadata !2806, metadata !425), !dbg !2807
  call void @llvm.dbg.declare(metadata %struct._GSList** %16, metadata !2808, metadata !425), !dbg !2809
  call void @llvm.dbg.declare(metadata i8** %17, metadata !2810, metadata !425), !dbg !2811
  call void @llvm.dbg.declare(metadata i8** %18, metadata !2812, metadata !425), !dbg !2813
  %26 = load i32*, i32** %9, align 8, !dbg !2814
  %27 = load i32, i32* %26, align 4, !dbg !2816
  %28 = add nsw i32 %27, -1, !dbg !2816
  store i32 %28, i32* %26, align 4, !dbg !2816
  %29 = icmp slt i32 %27, 0, !dbg !2817
  br i1 %29, label %30, label %31, !dbg !2818

; <label>:30:                                     ; preds = %4
  store i32 0, i32* %5, align 4, !dbg !2819
  br label %268, !dbg !2819

; <label>:31:                                     ; preds = %4
  %32 = load i8*, i8** %6, align 8, !dbg !2821
  %33 = load i8*, i8** %7, align 8, !dbg !2823
  %34 = icmp eq i8* %32, %33, !dbg !2824
  br i1 %34, label %35, label %54, !dbg !2825

; <label>:35:                                     ; preds = %31
  call void @llvm.dbg.declare(metadata %struct._GSList** %19, metadata !2826, metadata !425), !dbg !2829
  %36 = load %struct._GSList**, %struct._GSList*** %8, align 8, !dbg !2830
  %37 = load %struct._GSList*, %struct._GSList** %36, align 8, !dbg !2832
  store %struct._GSList* %37, %struct._GSList** %19, align 8, !dbg !2833
  br label %38, !dbg !2834

; <label>:38:                                     ; preds = %49, %35
  %39 = load %struct._GSList*, %struct._GSList** %19, align 8, !dbg !2835
  %40 = icmp ne %struct._GSList* %39, null, !dbg !2838
  br i1 %40, label %41, label %53, !dbg !2839

; <label>:41:                                     ; preds = %38
  %42 = load %struct._GSList*, %struct._GSList** %19, align 8, !dbg !2840
  %43 = getelementptr inbounds %struct._GSList, %struct._GSList* %42, i32 0, i32 0, !dbg !2842
  %44 = load i8*, i8** %43, align 8, !dbg !2842
  %45 = bitcast i8* %44 to %struct._GString*, !dbg !2840
  %46 = load i8*, i8** %6, align 8, !dbg !2843
  %47 = load i8, i8* %46, align 1, !dbg !2844
  %48 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %45, i8 signext %47), !dbg !2845
  br label %49, !dbg !2845

; <label>:49:                                     ; preds = %41
  %50 = load %struct._GSList*, %struct._GSList** %19, align 8, !dbg !2846
  %51 = getelementptr inbounds %struct._GSList, %struct._GSList* %50, i32 0, i32 1, !dbg !2848
  %52 = load %struct._GSList*, %struct._GSList** %51, align 8, !dbg !2848
  store %struct._GSList* %52, %struct._GSList** %19, align 8, !dbg !2849
  br label %38, !dbg !2850, !llvm.loop !2851

; <label>:53:                                     ; preds = %38
  store i32 1, i32* %5, align 4, !dbg !2853
  br label %268, !dbg !2853

; <label>:54:                                     ; preds = %31
  %55 = call %struct._KEYINFO_REC* @key_info_find(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0)), !dbg !2854
  store %struct._KEYINFO_REC* %55, %struct._KEYINFO_REC** %11, align 8, !dbg !2855
  %56 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %11, align 8, !dbg !2856
  %57 = icmp eq %struct._KEYINFO_REC* %56, null, !dbg !2858
  br i1 %57, label %58, label %59, !dbg !2859

; <label>:58:                                     ; preds = %54
  store i32 0, i32* %5, align 4, !dbg !2860
  br label %268, !dbg !2860

; <label>:59:                                     ; preds = %54
  store %struct._GSList* null, %struct._GSList** %14, align 8, !dbg !2861
  %60 = load i8*, i8** %6, align 8, !dbg !2862
  %61 = load i8*, i8** %7, align 8, !dbg !2863
  %62 = load i8*, i8** %6, align 8, !dbg !2864
  %63 = ptrtoint i8* %61 to i64, !dbg !2865
  %64 = ptrtoint i8* %62 to i64, !dbg !2865
  %65 = sub i64 %63, %64, !dbg !2865
  %66 = trunc i64 %65 to i32, !dbg !2866
  %67 = add nsw i32 %66, 1, !dbg !2867
  %68 = sext i32 %67 to i64, !dbg !2866
  %69 = call noalias i8* @g_strndup(i8* %60, i64 %68), !dbg !2868
  store i8* %69, i8** %17, align 8, !dbg !2869
  %70 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %11, align 8, !dbg !2870
  %71 = getelementptr inbounds %struct._KEYINFO_REC, %struct._KEYINFO_REC* %70, i32 0, i32 2, !dbg !2872
  %72 = load %struct._GSList*, %struct._GSList** %71, align 8, !dbg !2872
  store %struct._GSList* %72, %struct._GSList** %12, align 8, !dbg !2873
  br label %73, !dbg !2874

; <label>:73:                                     ; preds = %93, %59
  %74 = load %struct._GSList*, %struct._GSList** %12, align 8, !dbg !2875
  %75 = icmp ne %struct._GSList* %74, null, !dbg !2878
  br i1 %75, label %76, label %97, !dbg !2879

; <label>:76:                                     ; preds = %73
  call void @llvm.dbg.declare(metadata %struct._KEY_REC** %20, metadata !2880, metadata !425), !dbg !2882
  %77 = load %struct._GSList*, %struct._GSList** %12, align 8, !dbg !2883
  %78 = getelementptr inbounds %struct._GSList, %struct._GSList* %77, i32 0, i32 0, !dbg !2884
  %79 = load i8*, i8** %78, align 8, !dbg !2884
  %80 = bitcast i8* %79 to %struct._KEY_REC*, !dbg !2883
  store %struct._KEY_REC* %80, %struct._KEY_REC** %20, align 8, !dbg !2882
  %81 = load %struct._KEY_REC*, %struct._KEY_REC** %20, align 8, !dbg !2885
  %82 = getelementptr inbounds %struct._KEY_REC, %struct._KEY_REC* %81, i32 0, i32 2, !dbg !2887
  %83 = load i8*, i8** %82, align 8, !dbg !2887
  %84 = load i8*, i8** %17, align 8, !dbg !2888
  %85 = call i32 @g_strcmp0(i8* %83, i8* %84), !dbg !2889
  %86 = icmp eq i32 %85, 0, !dbg !2890
  br i1 %86, label %87, label %92, !dbg !2891

; <label>:87:                                     ; preds = %76
  %88 = load %struct._GSList*, %struct._GSList** %14, align 8, !dbg !2892
  %89 = load %struct._KEY_REC*, %struct._KEY_REC** %20, align 8, !dbg !2893
  %90 = bitcast %struct._KEY_REC* %89 to i8*, !dbg !2893
  %91 = call %struct._GSList* @g_slist_append(%struct._GSList* %88, i8* %90), !dbg !2894
  store %struct._GSList* %91, %struct._GSList** %14, align 8, !dbg !2895
  br label %92, !dbg !2896

; <label>:92:                                     ; preds = %87, %76
  br label %93, !dbg !2897

; <label>:93:                                     ; preds = %92
  %94 = load %struct._GSList*, %struct._GSList** %12, align 8, !dbg !2898
  %95 = getelementptr inbounds %struct._GSList, %struct._GSList* %94, i32 0, i32 1, !dbg !2900
  %96 = load %struct._GSList*, %struct._GSList** %95, align 8, !dbg !2900
  store %struct._GSList* %96, %struct._GSList** %12, align 8, !dbg !2901
  br label %73, !dbg !2902, !llvm.loop !2903

; <label>:97:                                     ; preds = %73
  %98 = load %struct._GSList*, %struct._GSList** %14, align 8, !dbg !2905
  %99 = icmp eq %struct._GSList* %98, null, !dbg !2907
  br i1 %99, label %100, label %131, !dbg !2908

; <label>:100:                                    ; preds = %97
  %101 = load i8*, i8** %17, align 8, !dbg !2909
  store i8* %101, i8** %18, align 8, !dbg !2912
  br label %102, !dbg !2913

; <label>:102:                                    ; preds = %126, %100
  %103 = load i8*, i8** %18, align 8, !dbg !2914
  %104 = load i8, i8* %103, align 1, !dbg !2917
  %105 = sext i8 %104 to i32, !dbg !2917
  %106 = icmp ne i32 %105, 0, !dbg !2918
  br i1 %106, label %107, label %129, !dbg !2919

; <label>:107:                                    ; preds = %102
  call void @llvm.dbg.declare(metadata %struct._GSList** %21, metadata !2920, metadata !425), !dbg !2922
  %108 = load %struct._GSList**, %struct._GSList*** %8, align 8, !dbg !2923
  %109 = load %struct._GSList*, %struct._GSList** %108, align 8, !dbg !2925
  store %struct._GSList* %109, %struct._GSList** %21, align 8, !dbg !2926
  br label %110, !dbg !2927

; <label>:110:                                    ; preds = %121, %107
  %111 = load %struct._GSList*, %struct._GSList** %21, align 8, !dbg !2928
  %112 = icmp ne %struct._GSList* %111, null, !dbg !2931
  br i1 %112, label %113, label %125, !dbg !2932

; <label>:113:                                    ; preds = %110
  %114 = load %struct._GSList*, %struct._GSList** %21, align 8, !dbg !2933
  %115 = getelementptr inbounds %struct._GSList, %struct._GSList* %114, i32 0, i32 0, !dbg !2935
  %116 = load i8*, i8** %115, align 8, !dbg !2935
  %117 = bitcast i8* %116 to %struct._GString*, !dbg !2933
  %118 = load i8*, i8** %18, align 8, !dbg !2936
  %119 = load i8, i8* %118, align 1, !dbg !2937
  %120 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %117, i8 signext %119), !dbg !2938
  br label %121, !dbg !2938

; <label>:121:                                    ; preds = %113
  %122 = load %struct._GSList*, %struct._GSList** %21, align 8, !dbg !2939
  %123 = getelementptr inbounds %struct._GSList, %struct._GSList* %122, i32 0, i32 1, !dbg !2941
  %124 = load %struct._GSList*, %struct._GSList** %123, align 8, !dbg !2941
  store %struct._GSList* %124, %struct._GSList** %21, align 8, !dbg !2942
  br label %110, !dbg !2943, !llvm.loop !2944

; <label>:125:                                    ; preds = %110
  br label %126, !dbg !2946

; <label>:126:                                    ; preds = %125
  %127 = load i8*, i8** %18, align 8, !dbg !2948
  %128 = getelementptr inbounds i8, i8* %127, i32 1, !dbg !2948
  store i8* %128, i8** %18, align 8, !dbg !2948
  br label %102, !dbg !2950, !llvm.loop !2951

; <label>:129:                                    ; preds = %102
  %130 = load i8*, i8** %17, align 8, !dbg !2953
  call void @g_free(i8* %130), !dbg !2954
  store i32 1, i32* %5, align 4, !dbg !2955
  br label %268, !dbg !2955

; <label>:131:                                    ; preds = %97
  %132 = load i8*, i8** %17, align 8, !dbg !2956
  call void @g_free(i8* %132), !dbg !2957
  %133 = load %struct._GSList*, %struct._GSList** %14, align 8, !dbg !2958
  %134 = getelementptr inbounds %struct._GSList, %struct._GSList* %133, i32 0, i32 1, !dbg !2960
  %135 = load %struct._GSList*, %struct._GSList** %134, align 8, !dbg !2960
  %136 = icmp eq %struct._GSList* %135, null, !dbg !2961
  br i1 %136, label %137, label %149, !dbg !2962

; <label>:137:                                    ; preds = %131
  %138 = load %struct._GSList*, %struct._GSList** %14, align 8, !dbg !2963
  %139 = getelementptr inbounds %struct._GSList, %struct._GSList* %138, i32 0, i32 0, !dbg !2965
  %140 = load i8*, i8** %139, align 8, !dbg !2965
  %141 = bitcast i8* %140 to %struct._KEY_REC*, !dbg !2963
  store %struct._KEY_REC* %141, %struct._KEY_REC** %10, align 8, !dbg !2966
  %142 = load %struct._GSList*, %struct._GSList** %14, align 8, !dbg !2967
  call void @g_slist_free(%struct._GSList* %142), !dbg !2968
  %143 = load %struct._KEY_REC*, %struct._KEY_REC** %10, align 8, !dbg !2969
  %144 = getelementptr inbounds %struct._KEY_REC, %struct._KEY_REC* %143, i32 0, i32 1, !dbg !2970
  %145 = load i8*, i8** %144, align 8, !dbg !2970
  %146 = load %struct._GSList**, %struct._GSList*** %8, align 8, !dbg !2971
  %147 = load i32*, i32** %9, align 8, !dbg !2972
  %148 = call i32 @expand_key(i8* %145, %struct._GSList** %146, i32* %147), !dbg !2973
  store i32 %148, i32* %5, align 4, !dbg !2974
  br label %268, !dbg !2974

; <label>:149:                                    ; preds = %131
  store %struct._GSList* null, %struct._GSList** %16, align 8, !dbg !2975
  %150 = load %struct._GSList*, %struct._GSList** %14, align 8, !dbg !2976
  %151 = getelementptr inbounds %struct._GSList, %struct._GSList* %150, i32 0, i32 1, !dbg !2978
  %152 = load %struct._GSList*, %struct._GSList** %151, align 8, !dbg !2978
  store %struct._GSList* %152, %struct._GSList** %12, align 8, !dbg !2979
  br label %153, !dbg !2980

; <label>:153:                                    ; preds = %216, %149
  %154 = load %struct._GSList*, %struct._GSList** %12, align 8, !dbg !2981
  %155 = icmp ne %struct._GSList* %154, null, !dbg !2984
  br i1 %155, label %156, label %220, !dbg !2985

; <label>:156:                                    ; preds = %153
  call void @llvm.dbg.declare(metadata %struct._KEY_REC** %22, metadata !2986, metadata !425), !dbg !2988
  %157 = load %struct._GSList*, %struct._GSList** %12, align 8, !dbg !2989
  %158 = getelementptr inbounds %struct._GSList, %struct._GSList* %157, i32 0, i32 0, !dbg !2990
  %159 = load i8*, i8** %158, align 8, !dbg !2990
  %160 = bitcast i8* %159 to %struct._KEY_REC*, !dbg !2989
  store %struct._KEY_REC* %160, %struct._KEY_REC** %22, align 8, !dbg !2988
  store %struct._GSList* null, %struct._GSList** %15, align 8, !dbg !2991
  %161 = load %struct._GSList**, %struct._GSList*** %8, align 8, !dbg !2992
  %162 = load %struct._GSList*, %struct._GSList** %161, align 8, !dbg !2994
  store %struct._GSList* %162, %struct._GSList** %13, align 8, !dbg !2995
  br label %163, !dbg !2996

; <label>:163:                                    ; preds = %178, %156
  %164 = load %struct._GSList*, %struct._GSList** %13, align 8, !dbg !2997
  %165 = icmp ne %struct._GSList* %164, null, !dbg !3000
  br i1 %165, label %166, label %182, !dbg !3001

; <label>:166:                                    ; preds = %163
  call void @llvm.dbg.declare(metadata %struct._GString** %23, metadata !3002, metadata !425), !dbg !3004
  %167 = load %struct._GSList*, %struct._GSList** %13, align 8, !dbg !3005
  %168 = getelementptr inbounds %struct._GSList, %struct._GSList* %167, i32 0, i32 0, !dbg !3006
  %169 = load i8*, i8** %168, align 8, !dbg !3006
  %170 = bitcast i8* %169 to %struct._GString*, !dbg !3005
  store %struct._GString* %170, %struct._GString** %23, align 8, !dbg !3004
  %171 = load %struct._GSList*, %struct._GSList** %15, align 8, !dbg !3007
  %172 = load %struct._GString*, %struct._GString** %23, align 8, !dbg !3008
  %173 = getelementptr inbounds %struct._GString, %struct._GString* %172, i32 0, i32 0, !dbg !3009
  %174 = load i8*, i8** %173, align 8, !dbg !3009
  %175 = call %struct._GString* @g_string_new(i8* %174), !dbg !3010
  %176 = bitcast %struct._GString* %175 to i8*, !dbg !3010
  %177 = call %struct._GSList* @g_slist_append(%struct._GSList* %171, i8* %176), !dbg !3011
  store %struct._GSList* %177, %struct._GSList** %15, align 8, !dbg !3013
  br label %178, !dbg !3014

; <label>:178:                                    ; preds = %166
  %179 = load %struct._GSList*, %struct._GSList** %13, align 8, !dbg !3015
  %180 = getelementptr inbounds %struct._GSList, %struct._GSList* %179, i32 0, i32 1, !dbg !3017
  %181 = load %struct._GSList*, %struct._GSList** %180, align 8, !dbg !3017
  store %struct._GSList* %181, %struct._GSList** %13, align 8, !dbg !3018
  br label %163, !dbg !3019, !llvm.loop !3020

; <label>:182:                                    ; preds = %163
  %183 = load %struct._KEY_REC*, %struct._KEY_REC** %22, align 8, !dbg !3022
  %184 = getelementptr inbounds %struct._KEY_REC, %struct._KEY_REC* %183, i32 0, i32 1, !dbg !3024
  %185 = load i8*, i8** %184, align 8, !dbg !3024
  %186 = load i32*, i32** %9, align 8, !dbg !3025
  %187 = call i32 @expand_key(i8* %185, %struct._GSList** %15, i32* %186), !dbg !3026
  %188 = icmp ne i32 %187, 0, !dbg !3026
  br i1 %188, label %211, label %189, !dbg !3027

; <label>:189:                                    ; preds = %182
  %190 = load i32*, i32** %9, align 8, !dbg !3028
  %191 = load i32, i32* %190, align 4, !dbg !3031
  %192 = icmp slt i32 %191, 0, !dbg !3032
  br i1 %192, label %193, label %194, !dbg !3033

; <label>:193:                                    ; preds = %189
  store i32 0, i32* %5, align 4, !dbg !3034
  br label %268, !dbg !3034

; <label>:194:                                    ; preds = %189
  call void @llvm.dbg.declare(metadata %struct._GSList** %24, metadata !3036, metadata !425), !dbg !3038
  %195 = load %struct._GSList*, %struct._GSList** %15, align 8, !dbg !3039
  store %struct._GSList* %195, %struct._GSList** %24, align 8, !dbg !3041
  br label %196, !dbg !3042

; <label>:196:                                    ; preds = %205, %194
  %197 = load %struct._GSList*, %struct._GSList** %24, align 8, !dbg !3043
  %198 = icmp ne %struct._GSList* %197, null, !dbg !3046
  br i1 %198, label %199, label %209, !dbg !3047

; <label>:199:                                    ; preds = %196
  %200 = load %struct._GSList*, %struct._GSList** %24, align 8, !dbg !3048
  %201 = getelementptr inbounds %struct._GSList, %struct._GSList* %200, i32 0, i32 0, !dbg !3050
  %202 = load i8*, i8** %201, align 8, !dbg !3050
  %203 = bitcast i8* %202 to %struct._GString*, !dbg !3048
  %204 = call i8* @g_string_free(%struct._GString* %203, i32 1), !dbg !3051
  br label %205, !dbg !3051

; <label>:205:                                    ; preds = %199
  %206 = load %struct._GSList*, %struct._GSList** %24, align 8, !dbg !3052
  %207 = getelementptr inbounds %struct._GSList, %struct._GSList* %206, i32 0, i32 1, !dbg !3054
  %208 = load %struct._GSList*, %struct._GSList** %207, align 8, !dbg !3054
  store %struct._GSList* %208, %struct._GSList** %24, align 8, !dbg !3055
  br label %196, !dbg !3056, !llvm.loop !3057

; <label>:209:                                    ; preds = %196
  %210 = load %struct._GSList*, %struct._GSList** %15, align 8, !dbg !3059
  call void @g_slist_free(%struct._GSList* %210), !dbg !3061
  store %struct._GSList* null, %struct._GSList** %15, align 8, !dbg !3062
  br label %215, !dbg !3063

; <label>:211:                                    ; preds = %182
  %212 = load %struct._GSList*, %struct._GSList** %16, align 8, !dbg !3064
  %213 = load %struct._GSList*, %struct._GSList** %15, align 8, !dbg !3066
  %214 = call %struct._GSList* @g_slist_concat(%struct._GSList* %212, %struct._GSList* %213), !dbg !3067
  store %struct._GSList* %214, %struct._GSList** %16, align 8, !dbg !3068
  br label %215

; <label>:215:                                    ; preds = %211, %209
  br label %216, !dbg !3069

; <label>:216:                                    ; preds = %215
  %217 = load %struct._GSList*, %struct._GSList** %12, align 8, !dbg !3070
  %218 = getelementptr inbounds %struct._GSList, %struct._GSList* %217, i32 0, i32 1, !dbg !3072
  %219 = load %struct._GSList*, %struct._GSList** %218, align 8, !dbg !3072
  store %struct._GSList* %219, %struct._GSList** %12, align 8, !dbg !3073
  br label %153, !dbg !3074, !llvm.loop !3075

; <label>:220:                                    ; preds = %153
  %221 = load %struct._GSList*, %struct._GSList** %14, align 8, !dbg !3077
  %222 = getelementptr inbounds %struct._GSList, %struct._GSList* %221, i32 0, i32 0, !dbg !3078
  %223 = load i8*, i8** %222, align 8, !dbg !3078
  %224 = bitcast i8* %223 to %struct._KEY_REC*, !dbg !3077
  store %struct._KEY_REC* %224, %struct._KEY_REC** %10, align 8, !dbg !3079
  %225 = load %struct._GSList*, %struct._GSList** %14, align 8, !dbg !3080
  call void @g_slist_free(%struct._GSList* %225), !dbg !3081
  %226 = load %struct._KEY_REC*, %struct._KEY_REC** %10, align 8, !dbg !3082
  %227 = getelementptr inbounds %struct._KEY_REC, %struct._KEY_REC* %226, i32 0, i32 1, !dbg !3084
  %228 = load i8*, i8** %227, align 8, !dbg !3084
  %229 = load %struct._GSList**, %struct._GSList*** %8, align 8, !dbg !3085
  %230 = load i32*, i32** %9, align 8, !dbg !3086
  %231 = call i32 @expand_key(i8* %228, %struct._GSList** %229, i32* %230), !dbg !3087
  %232 = icmp ne i32 %231, 0, !dbg !3087
  br i1 %232, label %258, label %233, !dbg !3088

; <label>:233:                                    ; preds = %220
  %234 = load i32*, i32** %9, align 8, !dbg !3089
  %235 = load i32, i32* %234, align 4, !dbg !3092
  %236 = icmp slt i32 %235, 0, !dbg !3093
  br i1 %236, label %237, label %238, !dbg !3094

; <label>:237:                                    ; preds = %233
  store i32 0, i32* %5, align 4, !dbg !3095
  br label %268, !dbg !3095

; <label>:238:                                    ; preds = %233
  call void @llvm.dbg.declare(metadata %struct._GSList** %25, metadata !3097, metadata !425), !dbg !3099
  %239 = load %struct._GSList**, %struct._GSList*** %8, align 8, !dbg !3100
  %240 = load %struct._GSList*, %struct._GSList** %239, align 8, !dbg !3102
  store %struct._GSList* %240, %struct._GSList** %25, align 8, !dbg !3103
  br label %241, !dbg !3104

; <label>:241:                                    ; preds = %250, %238
  %242 = load %struct._GSList*, %struct._GSList** %25, align 8, !dbg !3105
  %243 = icmp ne %struct._GSList* %242, null, !dbg !3108
  br i1 %243, label %244, label %254, !dbg !3109

; <label>:244:                                    ; preds = %241
  %245 = load %struct._GSList*, %struct._GSList** %25, align 8, !dbg !3110
  %246 = getelementptr inbounds %struct._GSList, %struct._GSList* %245, i32 0, i32 0, !dbg !3112
  %247 = load i8*, i8** %246, align 8, !dbg !3112
  %248 = bitcast i8* %247 to %struct._GString*, !dbg !3110
  %249 = call i8* @g_string_free(%struct._GString* %248, i32 1), !dbg !3113
  br label %250, !dbg !3113

; <label>:250:                                    ; preds = %244
  %251 = load %struct._GSList*, %struct._GSList** %25, align 8, !dbg !3114
  %252 = getelementptr inbounds %struct._GSList, %struct._GSList* %251, i32 0, i32 1, !dbg !3116
  %253 = load %struct._GSList*, %struct._GSList** %252, align 8, !dbg !3116
  store %struct._GSList* %253, %struct._GSList** %25, align 8, !dbg !3117
  br label %241, !dbg !3118, !llvm.loop !3119

; <label>:254:                                    ; preds = %241
  %255 = load %struct._GSList**, %struct._GSList*** %8, align 8, !dbg !3121
  %256 = load %struct._GSList*, %struct._GSList** %255, align 8, !dbg !3123
  call void @g_slist_free(%struct._GSList* %256), !dbg !3124
  %257 = load %struct._GSList**, %struct._GSList*** %8, align 8, !dbg !3125
  store %struct._GSList* null, %struct._GSList** %257, align 8, !dbg !3126
  br label %258, !dbg !3127

; <label>:258:                                    ; preds = %254, %220
  %259 = load %struct._GSList**, %struct._GSList*** %8, align 8, !dbg !3128
  %260 = load %struct._GSList*, %struct._GSList** %259, align 8, !dbg !3129
  %261 = load %struct._GSList*, %struct._GSList** %16, align 8, !dbg !3130
  %262 = call %struct._GSList* @g_slist_concat(%struct._GSList* %260, %struct._GSList* %261), !dbg !3131
  %263 = load %struct._GSList**, %struct._GSList*** %8, align 8, !dbg !3132
  store %struct._GSList* %262, %struct._GSList** %263, align 8, !dbg !3133
  %264 = load %struct._GSList**, %struct._GSList*** %8, align 8, !dbg !3134
  %265 = load %struct._GSList*, %struct._GSList** %264, align 8, !dbg !3135
  %266 = icmp ne %struct._GSList* %265, null, !dbg !3136
  %267 = zext i1 %266 to i32, !dbg !3136
  store i32 %267, i32* %5, align 4, !dbg !3137
  br label %268, !dbg !3137

; <label>:268:                                    ; preds = %258, %237, %193, %137, %129, %58, %53, %30
  %269 = load i32, i32* %5, align 4, !dbg !3138
  ret i32 %269, !dbg !3138
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._GString* @g_string_append_c_inline(%struct._GString*, i8 signext) #5 !dbg !3139 {
  %3 = alloca %struct._GString*, align 8
  %4 = alloca i8, align 1
  store %struct._GString* %0, %struct._GString** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._GString** %3, metadata !3142, metadata !425), !dbg !3143
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !3144, metadata !425), !dbg !3145
  %5 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !3146
  %6 = getelementptr inbounds %struct._GString, %struct._GString* %5, i32 0, i32 1, !dbg !3148
  %7 = load i64, i64* %6, align 8, !dbg !3148
  %8 = add i64 %7, 1, !dbg !3149
  %9 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !3150
  %10 = getelementptr inbounds %struct._GString, %struct._GString* %9, i32 0, i32 2, !dbg !3151
  %11 = load i64, i64* %10, align 8, !dbg !3151
  %12 = icmp ult i64 %8, %11, !dbg !3152
  br i1 %12, label %13, label %30, !dbg !3153

; <label>:13:                                     ; preds = %2
  %14 = load i8, i8* %4, align 1, !dbg !3154
  %15 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !3156
  %16 = getelementptr inbounds %struct._GString, %struct._GString* %15, i32 0, i32 1, !dbg !3157
  %17 = load i64, i64* %16, align 8, !dbg !3158
  %18 = add i64 %17, 1, !dbg !3158
  store i64 %18, i64* %16, align 8, !dbg !3158
  %19 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !3159
  %20 = getelementptr inbounds %struct._GString, %struct._GString* %19, i32 0, i32 0, !dbg !3160
  %21 = load i8*, i8** %20, align 8, !dbg !3160
  %22 = getelementptr inbounds i8, i8* %21, i64 %17, !dbg !3159
  store i8 %14, i8* %22, align 1, !dbg !3161
  %23 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !3162
  %24 = getelementptr inbounds %struct._GString, %struct._GString* %23, i32 0, i32 1, !dbg !3163
  %25 = load i64, i64* %24, align 8, !dbg !3163
  %26 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !3164
  %27 = getelementptr inbounds %struct._GString, %struct._GString* %26, i32 0, i32 0, !dbg !3165
  %28 = load i8*, i8** %27, align 8, !dbg !3165
  %29 = getelementptr inbounds i8, i8* %28, i64 %25, !dbg !3164
  store i8 0, i8* %29, align 1, !dbg !3166
  br label %34, !dbg !3167

; <label>:30:                                     ; preds = %2
  %31 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !3168
  %32 = load i8, i8* %4, align 1, !dbg !3169
  %33 = call %struct._GString* @g_string_insert_c(%struct._GString* %31, i64 -1, i8 signext %32), !dbg !3170
  br label %34

; <label>:34:                                     ; preds = %30, %13
  %35 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !3171
  ret %struct._GString* %35, !dbg !3172
}

declare i32 @g_utf8_validate(i8*, i64, i8**) #2

declare %struct._GString* @g_string_truncate(%struct._GString*, i64) #2

declare noalias i8* @g_strndup(i8*, i64) #2

declare %struct._GSList* @g_slist_concat(%struct._GSList*, %struct._GSList*) #2

declare %struct._GString* @g_string_insert_c(%struct._GString*, i64, i8 signext) #2

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @key_destroy(%struct._KEY_REC*, %struct._GHashTable*) #0 !dbg !3173 {
  %3 = alloca %struct._KEY_REC*, align 8
  %4 = alloca %struct._GHashTable*, align 8
  store %struct._KEY_REC* %0, %struct._KEY_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._KEY_REC** %3, metadata !3176, metadata !425), !dbg !3177
  store %struct._GHashTable* %1, %struct._GHashTable** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %4, metadata !3178, metadata !425), !dbg !3179
  %5 = load %struct._GHashTable*, %struct._GHashTable** %4, align 8, !dbg !3180
  %6 = load %struct._KEY_REC*, %struct._KEY_REC** %3, align 8, !dbg !3181
  %7 = getelementptr inbounds %struct._KEY_REC, %struct._KEY_REC* %6, i32 0, i32 1, !dbg !3182
  %8 = load i8*, i8** %7, align 8, !dbg !3182
  %9 = call i32 @g_hash_table_remove(%struct._GHashTable* %5, i8* %8), !dbg !3183
  %10 = load %struct._KEY_REC*, %struct._KEY_REC** %3, align 8, !dbg !3184
  %11 = getelementptr inbounds %struct._KEY_REC, %struct._KEY_REC* %10, i32 0, i32 2, !dbg !3185
  %12 = load i8*, i8** %11, align 8, !dbg !3185
  call void @g_free(i8* %12), !dbg !3186
  %13 = load %struct._KEY_REC*, %struct._KEY_REC** %3, align 8, !dbg !3187
  %14 = getelementptr inbounds %struct._KEY_REC, %struct._KEY_REC* %13, i32 0, i32 1, !dbg !3188
  %15 = load i8*, i8** %14, align 8, !dbg !3188
  call void @g_free(i8* %15), !dbg !3189
  %16 = load %struct._KEY_REC*, %struct._KEY_REC** %3, align 8, !dbg !3190
  %17 = bitcast %struct._KEY_REC* %16 to i8*, !dbg !3190
  call void @g_free(i8* %17), !dbg !3191
  ret void, !dbg !3192
}

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #2

declare i32 @g_hash_table_remove(%struct._GHashTable*, i8*) #2

declare void @g_slist_foreach(%struct._GSList*, void (i8*, i8*)*, i8*) #2

declare %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i32) #2

declare void @config_node_set_str(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i8*) #2

declare %struct._GSList* @config_node_first(%struct._GSList*) #2

declare i8* @config_node_get_str(%struct._CONFIG_NODE*, i8*, i8*) #2

declare %struct._GSList* @config_node_next(%struct._GSList*) #2

declare i8* @settings_get_str(i8*) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #6

declare noalias i8* @g_strdup_printf(i8*, ...) #2

declare noalias i8** @g_strsplit(i8*, i8*, i32) #2

declare void @g_strfreev(i8**) #2

; Function Attrs: nounwind uwtable
define internal void @keyboard_reset_defaults() #0 !dbg !3193 {
  %1 = load %struct._GHashTable*, %struct._GHashTable** @keys, align 8, !dbg !3194
  %2 = call i32 @g_hash_table_foreach_remove(%struct._GHashTable* %1, i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, %struct._KEY_REC*)* @key_destroy_hash to i32 (i8*, i8*, i8*)*), i8* null), !dbg !3195
  %3 = load %struct._GHashTable*, %struct._GHashTable** @default_keys, align 8, !dbg !3196
  call void @g_hash_table_foreach(%struct._GHashTable* %3, void (i8*, i8*, i8*)* bitcast (void (i8*, %struct._KEY_REC*)* @key_copy_default to void (i8*, i8*, i8*)*), i8* null), !dbg !3197
  ret void, !dbg !3198
}

; Function Attrs: nounwind uwtable
define internal void @key_config_read(%struct._CONFIG_NODE*) #0 !dbg !3199 {
  %2 = alloca %struct._CONFIG_NODE*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._KEY_REC*, align 8
  store %struct._CONFIG_NODE* %0, %struct._CONFIG_NODE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %2, metadata !3202, metadata !425), !dbg !3203
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3204, metadata !425), !dbg !3205
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3206, metadata !425), !dbg !3207
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3208, metadata !425), !dbg !3209
  br label %7, !dbg !3210, !llvm.loop !3211

; <label>:7:                                      ; preds = %1
  %8 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %2, align 8, !dbg !3212
  %9 = icmp ne %struct._CONFIG_NODE* %8, null, !dbg !3216
  br i1 %9, label %10, label %11, !dbg !3212

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !3217

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.key_config_read, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i32 0, i32 0)), !dbg !3220
  br label %49, !dbg !3223

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !3224

; <label>:13:                                     ; preds = %12
  %14 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %2, align 8, !dbg !3226
  %15 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), i8* null), !dbg !3227
  store i8* %15, i8** %3, align 8, !dbg !3228
  %16 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %2, align 8, !dbg !3229
  %17 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0), i8* null), !dbg !3230
  store i8* %17, i8** %4, align 8, !dbg !3231
  %18 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %2, align 8, !dbg !3232
  %19 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i8* null), !dbg !3233
  store i8* %19, i8** %5, align 8, !dbg !3234
  %20 = load i8*, i8** %3, align 8, !dbg !3235
  %21 = icmp ne i8* %20, null, !dbg !3237
  br i1 %21, label %22, label %29, !dbg !3238

; <label>:22:                                     ; preds = %13
  %23 = load i8*, i8** %4, align 8, !dbg !3239
  %24 = icmp ne i8* %23, null, !dbg !3241
  br i1 %24, label %25, label %29, !dbg !3242

; <label>:25:                                     ; preds = %22
  %26 = load i8*, i8** %4, align 8, !dbg !3243
  %27 = load i8*, i8** %3, align 8, !dbg !3245
  %28 = load i8*, i8** %5, align 8, !dbg !3246
  call void @key_configure_create(i8* %26, i8* %27, i8* %28), !dbg !3247
  br label %49, !dbg !3248

; <label>:29:                                     ; preds = %22, %13
  %30 = load i8*, i8** %3, align 8, !dbg !3249
  %31 = icmp ne i8* %30, null, !dbg !3252
  br i1 %31, label %32, label %48, !dbg !3253

; <label>:32:                                     ; preds = %29
  %33 = load i8*, i8** %4, align 8, !dbg !3254
  %34 = icmp eq i8* %33, null, !dbg !3256
  br i1 %34, label %35, label %48, !dbg !3257

; <label>:35:                                     ; preds = %32
  %36 = load i8*, i8** %5, align 8, !dbg !3258
  %37 = icmp eq i8* %36, null, !dbg !3260
  br i1 %37, label %38, label %48, !dbg !3261

; <label>:38:                                     ; preds = %35
  call void @llvm.dbg.declare(metadata %struct._KEY_REC** %6, metadata !3262, metadata !425), !dbg !3264
  %39 = load %struct._GHashTable*, %struct._GHashTable** @keys, align 8, !dbg !3265
  %40 = load i8*, i8** %3, align 8, !dbg !3266
  %41 = call i8* @g_hash_table_lookup(%struct._GHashTable* %39, i8* %40), !dbg !3267
  %42 = bitcast i8* %41 to %struct._KEY_REC*, !dbg !3267
  store %struct._KEY_REC* %42, %struct._KEY_REC** %6, align 8, !dbg !3264
  %43 = load %struct._KEY_REC*, %struct._KEY_REC** %6, align 8, !dbg !3268
  %44 = icmp ne %struct._KEY_REC* %43, null, !dbg !3270
  br i1 %44, label %45, label %47, !dbg !3271

; <label>:45:                                     ; preds = %38
  %46 = load %struct._KEY_REC*, %struct._KEY_REC** %6, align 8, !dbg !3272
  call void @key_configure_destroy(%struct._KEY_REC* %46), !dbg !3273
  br label %47, !dbg !3273

; <label>:47:                                     ; preds = %45, %38
  br label %48, !dbg !3274

; <label>:48:                                     ; preds = %47, %35, %32, %29
  br label %49

; <label>:49:                                     ; preds = %11, %48, %25
  ret void, !dbg !3275
}

declare i32 @settings_get_int(i8*) #2

declare i32 @g_hash_table_foreach_remove(%struct._GHashTable*, i32 (i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @key_destroy_hash(i8*, %struct._KEY_REC*) #0 !dbg !3276 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._KEY_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3279, metadata !425), !dbg !3280
  store %struct._KEY_REC* %1, %struct._KEY_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._KEY_REC** %4, metadata !3281, metadata !425), !dbg !3282
  %5 = load %struct._KEY_REC*, %struct._KEY_REC** %4, align 8, !dbg !3283
  %6 = getelementptr inbounds %struct._KEY_REC, %struct._KEY_REC* %5, i32 0, i32 0, !dbg !3284
  %7 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %6, align 8, !dbg !3284
  %8 = getelementptr inbounds %struct._KEYINFO_REC, %struct._KEYINFO_REC* %7, i32 0, i32 2, !dbg !3285
  %9 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !3285
  %10 = load %struct._KEY_REC*, %struct._KEY_REC** %4, align 8, !dbg !3286
  %11 = bitcast %struct._KEY_REC* %10 to i8*, !dbg !3286
  %12 = call %struct._GSList* @g_slist_remove(%struct._GSList* %9, i8* %11), !dbg !3287
  %13 = load %struct._KEY_REC*, %struct._KEY_REC** %4, align 8, !dbg !3288
  %14 = getelementptr inbounds %struct._KEY_REC, %struct._KEY_REC* %13, i32 0, i32 0, !dbg !3289
  %15 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %14, align 8, !dbg !3289
  %16 = getelementptr inbounds %struct._KEYINFO_REC, %struct._KEYINFO_REC* %15, i32 0, i32 2, !dbg !3290
  store %struct._GSList* %12, %struct._GSList** %16, align 8, !dbg !3291
  %17 = load %struct._KEY_REC*, %struct._KEY_REC** %4, align 8, !dbg !3292
  %18 = getelementptr inbounds %struct._KEY_REC, %struct._KEY_REC* %17, i32 0, i32 2, !dbg !3293
  %19 = load i8*, i8** %18, align 8, !dbg !3293
  call void @g_free(i8* %19), !dbg !3294
  %20 = load %struct._KEY_REC*, %struct._KEY_REC** %4, align 8, !dbg !3295
  %21 = getelementptr inbounds %struct._KEY_REC, %struct._KEY_REC* %20, i32 0, i32 1, !dbg !3296
  %22 = load i8*, i8** %21, align 8, !dbg !3296
  call void @g_free(i8* %22), !dbg !3297
  %23 = load %struct._KEY_REC*, %struct._KEY_REC** %4, align 8, !dbg !3298
  %24 = bitcast %struct._KEY_REC* %23 to i8*, !dbg !3298
  call void @g_free(i8* %24), !dbg !3299
  ret i32 1, !dbg !3300
}

; Function Attrs: nounwind uwtable
define internal void @key_copy_default(i8*, %struct._KEY_REC*) #0 !dbg !3301 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._KEY_REC*, align 8
  %5 = alloca %struct._KEY_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3302, metadata !425), !dbg !3303
  store %struct._KEY_REC* %1, %struct._KEY_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._KEY_REC** %4, metadata !3304, metadata !425), !dbg !3305
  call void @llvm.dbg.declare(metadata %struct._KEY_REC** %5, metadata !3306, metadata !425), !dbg !3307
  %6 = call noalias i8* @g_malloc0_n(i64 1, i64 24), !dbg !3308
  %7 = bitcast i8* %6 to %struct._KEY_REC*, !dbg !3309
  store %struct._KEY_REC* %7, %struct._KEY_REC** %5, align 8, !dbg !3310
  %8 = load %struct._KEY_REC*, %struct._KEY_REC** %4, align 8, !dbg !3311
  %9 = getelementptr inbounds %struct._KEY_REC, %struct._KEY_REC* %8, i32 0, i32 1, !dbg !3312
  %10 = load i8*, i8** %9, align 8, !dbg !3312
  %11 = call noalias i8* @g_strdup(i8* %10), !dbg !3313
  %12 = load %struct._KEY_REC*, %struct._KEY_REC** %5, align 8, !dbg !3314
  %13 = getelementptr inbounds %struct._KEY_REC, %struct._KEY_REC* %12, i32 0, i32 1, !dbg !3315
  store i8* %11, i8** %13, align 8, !dbg !3316
  %14 = load %struct._KEY_REC*, %struct._KEY_REC** %4, align 8, !dbg !3317
  %15 = getelementptr inbounds %struct._KEY_REC, %struct._KEY_REC* %14, i32 0, i32 0, !dbg !3318
  %16 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %15, align 8, !dbg !3318
  %17 = load %struct._KEY_REC*, %struct._KEY_REC** %5, align 8, !dbg !3319
  %18 = getelementptr inbounds %struct._KEY_REC, %struct._KEY_REC* %17, i32 0, i32 0, !dbg !3320
  store %struct._KEYINFO_REC* %16, %struct._KEYINFO_REC** %18, align 8, !dbg !3321
  %19 = load %struct._KEY_REC*, %struct._KEY_REC** %4, align 8, !dbg !3322
  %20 = getelementptr inbounds %struct._KEY_REC, %struct._KEY_REC* %19, i32 0, i32 2, !dbg !3323
  %21 = load i8*, i8** %20, align 8, !dbg !3323
  %22 = call noalias i8* @g_strdup(i8* %21), !dbg !3324
  %23 = load %struct._KEY_REC*, %struct._KEY_REC** %5, align 8, !dbg !3325
  %24 = getelementptr inbounds %struct._KEY_REC, %struct._KEY_REC* %23, i32 0, i32 2, !dbg !3326
  store i8* %22, i8** %24, align 8, !dbg !3327
  %25 = load %struct._KEY_REC*, %struct._KEY_REC** %5, align 8, !dbg !3328
  %26 = getelementptr inbounds %struct._KEY_REC, %struct._KEY_REC* %25, i32 0, i32 0, !dbg !3329
  %27 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %26, align 8, !dbg !3329
  %28 = getelementptr inbounds %struct._KEYINFO_REC, %struct._KEYINFO_REC* %27, i32 0, i32 2, !dbg !3330
  %29 = load %struct._GSList*, %struct._GSList** %28, align 8, !dbg !3330
  %30 = load %struct._KEY_REC*, %struct._KEY_REC** %5, align 8, !dbg !3331
  %31 = bitcast %struct._KEY_REC* %30 to i8*, !dbg !3331
  %32 = call %struct._GSList* @g_slist_append(%struct._GSList* %29, i8* %31), !dbg !3332
  %33 = load %struct._KEY_REC*, %struct._KEY_REC** %5, align 8, !dbg !3333
  %34 = getelementptr inbounds %struct._KEY_REC, %struct._KEY_REC* %33, i32 0, i32 0, !dbg !3334
  %35 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %34, align 8, !dbg !3334
  %36 = getelementptr inbounds %struct._KEYINFO_REC, %struct._KEYINFO_REC* %35, i32 0, i32 2, !dbg !3335
  store %struct._GSList* %32, %struct._GSList** %36, align 8, !dbg !3336
  %37 = load %struct._GHashTable*, %struct._GHashTable** @keys, align 8, !dbg !3337
  %38 = load %struct._KEY_REC*, %struct._KEY_REC** %5, align 8, !dbg !3338
  %39 = getelementptr inbounds %struct._KEY_REC, %struct._KEY_REC* %38, i32 0, i32 1, !dbg !3339
  %40 = load i8*, i8** %39, align 8, !dbg !3339
  %41 = load %struct._KEY_REC*, %struct._KEY_REC** %5, align 8, !dbg !3340
  %42 = bitcast %struct._KEY_REC* %41 to i8*, !dbg !3340
  %43 = call i32 @g_hash_table_insert(%struct._GHashTable* %37, i8* %40, i8* %42), !dbg !3341
  ret void, !dbg !3342
}

; Function Attrs: nounwind uwtable
define internal %struct._GList* @completion_get_keyinfos(i8*) #0 !dbg !3343 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._GList*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._KEYINFO_REC*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3346, metadata !425), !dbg !3347
  call void @llvm.dbg.declare(metadata %struct._GList** %3, metadata !3348, metadata !425), !dbg !3349
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !3350, metadata !425), !dbg !3351
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3352, metadata !425), !dbg !3353
  store %struct._GList* null, %struct._GList** %3, align 8, !dbg !3354
  %7 = load i8*, i8** %2, align 8, !dbg !3355
  %8 = call i64 @strlen(i8* %7) #7, !dbg !3356
  %9 = trunc i64 %8 to i32, !dbg !3356
  store i32 %9, i32* %5, align 4, !dbg !3357
  %10 = load %struct._GSList*, %struct._GSList** @keyinfos, align 8, !dbg !3358
  store %struct._GSList* %10, %struct._GSList** %4, align 8, !dbg !3360
  br label %11, !dbg !3361

; <label>:11:                                     ; preds = %35, %1
  %12 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !3362
  %13 = icmp ne %struct._GSList* %12, null, !dbg !3365
  br i1 %13, label %14, label %39, !dbg !3366

; <label>:14:                                     ; preds = %11
  call void @llvm.dbg.declare(metadata %struct._KEYINFO_REC** %6, metadata !3367, metadata !425), !dbg !3369
  %15 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !3370
  %16 = getelementptr inbounds %struct._GSList, %struct._GSList* %15, i32 0, i32 0, !dbg !3371
  %17 = load i8*, i8** %16, align 8, !dbg !3371
  %18 = bitcast i8* %17 to %struct._KEYINFO_REC*, !dbg !3370
  store %struct._KEYINFO_REC* %18, %struct._KEYINFO_REC** %6, align 8, !dbg !3369
  %19 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %6, align 8, !dbg !3372
  %20 = getelementptr inbounds %struct._KEYINFO_REC, %struct._KEYINFO_REC* %19, i32 0, i32 0, !dbg !3374
  %21 = load i8*, i8** %20, align 8, !dbg !3374
  %22 = load i8*, i8** %2, align 8, !dbg !3375
  %23 = load i32, i32* %5, align 4, !dbg !3376
  %24 = sext i32 %23 to i64, !dbg !3376
  %25 = call i32 @g_ascii_strncasecmp(i8* %21, i8* %22, i64 %24), !dbg !3377
  %26 = icmp eq i32 %25, 0, !dbg !3378
  br i1 %26, label %27, label %34, !dbg !3379

; <label>:27:                                     ; preds = %14
  %28 = load %struct._GList*, %struct._GList** %3, align 8, !dbg !3380
  %29 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %6, align 8, !dbg !3381
  %30 = getelementptr inbounds %struct._KEYINFO_REC, %struct._KEYINFO_REC* %29, i32 0, i32 0, !dbg !3382
  %31 = load i8*, i8** %30, align 8, !dbg !3382
  %32 = call noalias i8* @g_strdup(i8* %31), !dbg !3383
  %33 = call %struct._GList* @g_list_append(%struct._GList* %28, i8* %32), !dbg !3384
  store %struct._GList* %33, %struct._GList** %3, align 8, !dbg !3386
  br label %34, !dbg !3387

; <label>:34:                                     ; preds = %27, %14
  br label %35, !dbg !3388

; <label>:35:                                     ; preds = %34
  %36 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !3389
  %37 = getelementptr inbounds %struct._GSList, %struct._GSList* %36, i32 0, i32 1, !dbg !3391
  %38 = load %struct._GSList*, %struct._GSList** %37, align 8, !dbg !3391
  store %struct._GSList* %38, %struct._GSList** %4, align 8, !dbg !3392
  br label %11, !dbg !3393, !llvm.loop !3394

; <label>:39:                                     ; preds = %11
  %40 = load %struct._GList*, %struct._GList** %3, align 8, !dbg !3396
  ret %struct._GList* %40, !dbg !3397
}

declare void @signal_stop() #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #6

declare i32 @g_ascii_strncasecmp(i8*, i8*, i64) #2

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #2

declare i32 @cmd_get_params(i8*, i8**, i32, ...) #2

declare void @printformat_module(i8*, i8*, i8*, i32, i32, ...) #2

declare void @cmd_params_free(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @cmd_show_keys(i8*, i32) #0 !dbg !3398 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._KEYINFO_REC*, align 8
  %9 = alloca %struct._KEY_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3401, metadata !425), !dbg !3402
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3403, metadata !425), !dbg !3404
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !3405, metadata !425), !dbg !3406
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !3407, metadata !425), !dbg !3408
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3409, metadata !425), !dbg !3410
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 207), !dbg !3411
  %10 = load i8*, i8** %3, align 8, !dbg !3412
  %11 = icmp eq i8* %10, null, !dbg !3413
  br i1 %11, label %12, label %13, !dbg !3412

; <label>:12:                                     ; preds = %2
  br label %16, !dbg !3414

; <label>:13:                                     ; preds = %2
  %14 = load i8*, i8** %3, align 8, !dbg !3416
  %15 = call i64 @strlen(i8* %14) #7, !dbg !3418
  br label %16, !dbg !3419

; <label>:16:                                     ; preds = %13, %12
  %17 = phi i64 [ 0, %12 ], [ %15, %13 ], !dbg !3420
  %18 = trunc i64 %17 to i32, !dbg !3420
  store i32 %18, i32* %7, align 4, !dbg !3422
  %19 = load %struct._GSList*, %struct._GSList** @keyinfos, align 8, !dbg !3423
  store %struct._GSList* %19, %struct._GSList** %5, align 8, !dbg !3425
  br label %20, !dbg !3426

; <label>:20:                                     ; preds = %101, %16
  %21 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !3427
  %22 = icmp ne %struct._GSList* %21, null, !dbg !3430
  br i1 %22, label %23, label %105, !dbg !3431

; <label>:23:                                     ; preds = %20
  call void @llvm.dbg.declare(metadata %struct._KEYINFO_REC** %8, metadata !3432, metadata !425), !dbg !3434
  %24 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !3435
  %25 = getelementptr inbounds %struct._GSList, %struct._GSList* %24, i32 0, i32 0, !dbg !3436
  %26 = load i8*, i8** %25, align 8, !dbg !3436
  %27 = bitcast i8* %26 to %struct._KEYINFO_REC*, !dbg !3435
  store %struct._KEYINFO_REC* %27, %struct._KEYINFO_REC** %8, align 8, !dbg !3434
  %28 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %8, align 8, !dbg !3437
  %29 = getelementptr inbounds %struct._KEYINFO_REC, %struct._KEYINFO_REC* %28, i32 0, i32 2, !dbg !3439
  %30 = load %struct._GSList*, %struct._GSList** %29, align 8, !dbg !3439
  store %struct._GSList* %30, %struct._GSList** %6, align 8, !dbg !3440
  br label %31, !dbg !3441

; <label>:31:                                     ; preds = %96, %23
  %32 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !3442
  %33 = icmp ne %struct._GSList* %32, null, !dbg !3445
  br i1 %33, label %34, label %100, !dbg !3446

; <label>:34:                                     ; preds = %31
  call void @llvm.dbg.declare(metadata %struct._KEY_REC** %9, metadata !3447, metadata !425), !dbg !3449
  %35 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !3450
  %36 = getelementptr inbounds %struct._GSList, %struct._GSList* %35, i32 0, i32 0, !dbg !3451
  %37 = load i8*, i8** %36, align 8, !dbg !3451
  %38 = bitcast i8* %37 to %struct._KEY_REC*, !dbg !3450
  store %struct._KEY_REC* %38, %struct._KEY_REC** %9, align 8, !dbg !3449
  %39 = load i32, i32* %7, align 4, !dbg !3452
  %40 = icmp eq i32 %39, 0, !dbg !3454
  br i1 %40, label %62, label %41, !dbg !3455

; <label>:41:                                     ; preds = %34
  %42 = load i32, i32* %4, align 4, !dbg !3456
  %43 = icmp ne i32 %42, 0, !dbg !3456
  br i1 %43, label %44, label %53, !dbg !3457

; <label>:44:                                     ; preds = %41
  %45 = load %struct._KEY_REC*, %struct._KEY_REC** %9, align 8, !dbg !3458
  %46 = getelementptr inbounds %struct._KEY_REC, %struct._KEY_REC* %45, i32 0, i32 1, !dbg !3460
  %47 = load i8*, i8** %46, align 8, !dbg !3460
  %48 = load i8*, i8** %3, align 8, !dbg !3461
  %49 = load i32, i32* %7, align 4, !dbg !3462
  %50 = sext i32 %49 to i64, !dbg !3462
  %51 = call i32 @strncmp(i8* %47, i8* %48, i64 %50) #7, !dbg !3463
  %52 = icmp eq i32 %51, 0, !dbg !3464
  br i1 %52, label %62, label %95, !dbg !3465

; <label>:53:                                     ; preds = %41
  %54 = load %struct._KEY_REC*, %struct._KEY_REC** %9, align 8, !dbg !3466
  %55 = getelementptr inbounds %struct._KEY_REC, %struct._KEY_REC* %54, i32 0, i32 1, !dbg !3467
  %56 = load i8*, i8** %55, align 8, !dbg !3467
  %57 = load i8*, i8** %3, align 8, !dbg !3468
  %58 = load i32, i32* %7, align 4, !dbg !3469
  %59 = sext i32 %58 to i64, !dbg !3469
  %60 = call i32 @g_ascii_strncasecmp(i8* %56, i8* %57, i64 %59), !dbg !3470
  %61 = icmp eq i32 %60, 0, !dbg !3471
  br i1 %61, label %62, label %95, !dbg !3472

; <label>:62:                                     ; preds = %53, %44, %34
  %63 = load i32, i32* %4, align 4, !dbg !3473
  %64 = icmp ne i32 %63, 0, !dbg !3473
  br i1 %64, label %65, label %75, !dbg !3474

; <label>:65:                                     ; preds = %62
  %66 = load i32, i32* %7, align 4, !dbg !3475
  %67 = sext i32 %66 to i64, !dbg !3476
  %68 = load %struct._KEY_REC*, %struct._KEY_REC** %9, align 8, !dbg !3476
  %69 = getelementptr inbounds %struct._KEY_REC, %struct._KEY_REC* %68, i32 0, i32 1, !dbg !3477
  %70 = load i8*, i8** %69, align 8, !dbg !3477
  %71 = getelementptr inbounds i8, i8* %70, i64 %67, !dbg !3476
  %72 = load i8, i8* %71, align 1, !dbg !3476
  %73 = sext i8 %72 to i32, !dbg !3476
  %74 = icmp eq i32 %73, 0, !dbg !3478
  br i1 %74, label %75, label %95, !dbg !3479

; <label>:75:                                     ; preds = %65, %62
  %76 = load %struct._KEY_REC*, %struct._KEY_REC** %9, align 8, !dbg !3481
  %77 = getelementptr inbounds %struct._KEY_REC, %struct._KEY_REC* %76, i32 0, i32 1, !dbg !3483
  %78 = load i8*, i8** %77, align 8, !dbg !3483
  %79 = load %struct._KEY_REC*, %struct._KEY_REC** %9, align 8, !dbg !3484
  %80 = getelementptr inbounds %struct._KEY_REC, %struct._KEY_REC* %79, i32 0, i32 0, !dbg !3485
  %81 = load %struct._KEYINFO_REC*, %struct._KEYINFO_REC** %80, align 8, !dbg !3485
  %82 = getelementptr inbounds %struct._KEYINFO_REC, %struct._KEYINFO_REC* %81, i32 0, i32 0, !dbg !3486
  %83 = load i8*, i8** %82, align 8, !dbg !3486
  %84 = load %struct._KEY_REC*, %struct._KEY_REC** %9, align 8, !dbg !3487
  %85 = getelementptr inbounds %struct._KEY_REC, %struct._KEY_REC* %84, i32 0, i32 2, !dbg !3488
  %86 = load i8*, i8** %85, align 8, !dbg !3488
  %87 = icmp eq i8* %86, null, !dbg !3489
  br i1 %87, label %88, label %89, !dbg !3487

; <label>:88:                                     ; preds = %75
  br label %93, !dbg !3490

; <label>:89:                                     ; preds = %75
  %90 = load %struct._KEY_REC*, %struct._KEY_REC** %9, align 8, !dbg !3492
  %91 = getelementptr inbounds %struct._KEY_REC, %struct._KEY_REC* %90, i32 0, i32 2, !dbg !3494
  %92 = load i8*, i8** %91, align 8, !dbg !3494
  br label %93, !dbg !3495

; <label>:93:                                     ; preds = %89, %88
  %94 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.37, i32 0, i32 0), %88 ], [ %92, %89 ], !dbg !3496
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 208, i8* %78, i8* %83, i8* %94), !dbg !3498
  br label %95, !dbg !3499

; <label>:95:                                     ; preds = %93, %65, %53, %44
  br label %96, !dbg !3500

; <label>:96:                                     ; preds = %95
  %97 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !3501
  %98 = getelementptr inbounds %struct._GSList, %struct._GSList* %97, i32 0, i32 1, !dbg !3503
  %99 = load %struct._GSList*, %struct._GSList** %98, align 8, !dbg !3503
  store %struct._GSList* %99, %struct._GSList** %6, align 8, !dbg !3504
  br label %31, !dbg !3505, !llvm.loop !3506

; <label>:100:                                    ; preds = %31
  br label %101, !dbg !3508

; <label>:101:                                    ; preds = %100
  %102 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !3509
  %103 = getelementptr inbounds %struct._GSList, %struct._GSList* %102, i32 0, i32 1, !dbg !3511
  %104 = load %struct._GSList*, %struct._GSList** %103, align 8, !dbg !3511
  store %struct._GSList* %104, %struct._GSList** %5, align 8, !dbg !3512
  br label %20, !dbg !3513, !llvm.loop !3514

; <label>:105:                                    ; preds = %20
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 210), !dbg !3516
  ret void, !dbg !3517
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!417, !418}
!llvm.ident = !{!419}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !311, globals: !400)
!1 = !DIFile(filename: "line250-keyboard.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !15, !30, !38, !69}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 51, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/irssi/task1")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14}
!6 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!7 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!8 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!9 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!10 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!11 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!12 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!13 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!14 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 46, size: 32, align: 32, elements: !17)
!16 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/lichi/Desktop/irssi/task1")
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29}
!18 = !DIEnumerator(name: "_ISupper", value: 256)
!19 = !DIEnumerator(name: "_ISlower", value: 512)
!20 = !DIEnumerator(name: "_ISalpha", value: 1024)
!21 = !DIEnumerator(name: "_ISdigit", value: 2048)
!22 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!23 = !DIEnumerator(name: "_ISspace", value: 8192)
!24 = !DIEnumerator(name: "_ISprint", value: 16384)
!25 = !DIEnumerator(name: "_ISgraph", value: 32768)
!26 = !DIEnumerator(name: "_ISblank", value: 1)
!27 = !DIEnumerator(name: "_IScntrl", value: 2)
!28 = !DIEnumerator(name: "_ISpunct", value: 4)
!29 = !DIEnumerator(name: "_ISalnum", value: 8)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !31, line: 4, size: 32, align: 32, elements: !32)
!31 = !DIFile(filename: "../../../src/lib-config/iconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!32 = !{!33, !34, !35, !36, !37}
!33 = !DIEnumerator(name: "NODE_TYPE_KEY", value: 0)
!34 = !DIEnumerator(name: "NODE_TYPE_VALUE", value: 1)
!35 = !DIEnumerator(name: "NODE_TYPE_BLOCK", value: 2)
!36 = !DIEnumerator(name: "NODE_TYPE_LIST", value: 3)
!37 = !DIEnumerator(name: "NODE_TYPE_COMMENT", value: 4)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !39, line: 10, size: 32, align: 32, elements: !40)
!39 = !DIFile(filename: "../../../src/core/levels.h", directory: "/home/lichi/Desktop/irssi/task1")
!40 = !{!41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68}
!41 = !DIEnumerator(name: "MSGLEVEL_CRAP", value: 1)
!42 = !DIEnumerator(name: "MSGLEVEL_MSGS", value: 2)
!43 = !DIEnumerator(name: "MSGLEVEL_PUBLIC", value: 4)
!44 = !DIEnumerator(name: "MSGLEVEL_NOTICES", value: 8)
!45 = !DIEnumerator(name: "MSGLEVEL_SNOTES", value: 16)
!46 = !DIEnumerator(name: "MSGLEVEL_CTCPS", value: 32)
!47 = !DIEnumerator(name: "MSGLEVEL_ACTIONS", value: 64)
!48 = !DIEnumerator(name: "MSGLEVEL_JOINS", value: 128)
!49 = !DIEnumerator(name: "MSGLEVEL_PARTS", value: 256)
!50 = !DIEnumerator(name: "MSGLEVEL_QUITS", value: 512)
!51 = !DIEnumerator(name: "MSGLEVEL_KICKS", value: 1024)
!52 = !DIEnumerator(name: "MSGLEVEL_MODES", value: 2048)
!53 = !DIEnumerator(name: "MSGLEVEL_TOPICS", value: 4096)
!54 = !DIEnumerator(name: "MSGLEVEL_WALLOPS", value: 8192)
!55 = !DIEnumerator(name: "MSGLEVEL_INVITES", value: 16384)
!56 = !DIEnumerator(name: "MSGLEVEL_NICKS", value: 32768)
!57 = !DIEnumerator(name: "MSGLEVEL_DCC", value: 65536)
!58 = !DIEnumerator(name: "MSGLEVEL_DCCMSGS", value: 131072)
!59 = !DIEnumerator(name: "MSGLEVEL_CLIENTNOTICE", value: 262144)
!60 = !DIEnumerator(name: "MSGLEVEL_CLIENTCRAP", value: 524288)
!61 = !DIEnumerator(name: "MSGLEVEL_CLIENTERROR", value: 1048576)
!62 = !DIEnumerator(name: "MSGLEVEL_HILIGHT", value: 2097152)
!63 = !DIEnumerator(name: "MSGLEVEL_ALL", value: 4194303)
!64 = !DIEnumerator(name: "MSGLEVEL_NOHILIGHT", value: 16777216)
!65 = !DIEnumerator(name: "MSGLEVEL_NO_ACT", value: 33554432)
!66 = !DIEnumerator(name: "MSGLEVEL_NEVER", value: 67108864)
!67 = !DIEnumerator(name: "MSGLEVEL_LASTLOG", value: 134217728)
!68 = !DIEnumerator(name: "MSGLEVEL_HIDDEN", value: 268435456)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !70, line: 3, size: 32, align: 32, elements: !71)
!70 = !DIFile(filename: "module-formats.h", directory: "/home/lichi/Desktop/irssi/task1")
!71 = !{!72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310}
!72 = !DIEnumerator(name: "TXT_MODULE_NAME", value: 0)
!73 = !DIEnumerator(name: "TXT_FILL_1", value: 1)
!74 = !DIEnumerator(name: "TXT_LINE_START", value: 2)
!75 = !DIEnumerator(name: "TXT_LINE_START_IRSSI", value: 3)
!76 = !DIEnumerator(name: "TXT_TIMESTAMP", value: 4)
!77 = !DIEnumerator(name: "TXT_SERVERTAG", value: 5)
!78 = !DIEnumerator(name: "TXT_DAYCHANGE", value: 6)
!79 = !DIEnumerator(name: "TXT_TALKING_WITH", value: 7)
!80 = !DIEnumerator(name: "TXT_REFNUM_TOO_LOW", value: 8)
!81 = !DIEnumerator(name: "TXT_ERROR_SERVER_STICKY", value: 9)
!82 = !DIEnumerator(name: "TXT_SET_SERVER_STICKY", value: 10)
!83 = !DIEnumerator(name: "TXT_UNSET_SERVER_STICKY", value: 11)
!84 = !DIEnumerator(name: "TXT_WINDOW_NAME_NOT_UNIQUE", value: 12)
!85 = !DIEnumerator(name: "TXT_WINDOW_LEVEL", value: 13)
!86 = !DIEnumerator(name: "TXT_WINDOW_SET_IMMORTAL", value: 14)
!87 = !DIEnumerator(name: "TXT_WINDOW_UNSET_IMMORTAL", value: 15)
!88 = !DIEnumerator(name: "TXT_WINDOW_IMMORTAL_ERROR", value: 16)
!89 = !DIEnumerator(name: "TXT_WINDOWLIST_HEADER", value: 17)
!90 = !DIEnumerator(name: "TXT_WINDOWLIST_LINE", value: 18)
!91 = !DIEnumerator(name: "TXT_WINDOWLIST_FOOTER", value: 19)
!92 = !DIEnumerator(name: "TXT_WINDOWS_LAYOUT_SAVED", value: 20)
!93 = !DIEnumerator(name: "TXT_WINDOWS_LAYOUT_RESET", value: 21)
!94 = !DIEnumerator(name: "TXT_WINDOW_INFO_HEADER", value: 22)
!95 = !DIEnumerator(name: "TXT_WINDOW_INFO_FOOTER", value: 23)
!96 = !DIEnumerator(name: "TXT_WINDOW_INFO_REFNUM", value: 24)
!97 = !DIEnumerator(name: "TXT_WINDOW_INFO_REFNUM_STICKY", value: 25)
!98 = !DIEnumerator(name: "TXT_WINDOW_INFO_NAME", value: 26)
!99 = !DIEnumerator(name: "TXT_WINDOW_INFO_HISTORY", value: 27)
!100 = !DIEnumerator(name: "TXT_WINDOW_INFO_IMMORTAL", value: 28)
!101 = !DIEnumerator(name: "TXT_WINDOW_INFO_SIZE", value: 29)
!102 = !DIEnumerator(name: "TXT_WINDOW_INFO_LEVEL", value: 30)
!103 = !DIEnumerator(name: "TXT_WINDOW_INFO_SERVER", value: 31)
!104 = !DIEnumerator(name: "TXT_WINDOW_INFO_SERVER_STICKY", value: 32)
!105 = !DIEnumerator(name: "TXT_WINDOW_INFO_THEME", value: 33)
!106 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEMS_HEADER", value: 34)
!107 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEM", value: 35)
!108 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEMS_FOOTER", value: 36)
!109 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEMS_HEADER", value: 37)
!110 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEM", value: 38)
!111 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEMS_FOOTER", value: 39)
!112 = !DIEnumerator(name: "TXT_FILL_2", value: 40)
!113 = !DIEnumerator(name: "TXT_LOOKING_UP", value: 41)
!114 = !DIEnumerator(name: "TXT_CONNECTING", value: 42)
!115 = !DIEnumerator(name: "TXT_RECONNECTING", value: 43)
!116 = !DIEnumerator(name: "TXT_CONNECTION_ESTABLISHED", value: 44)
!117 = !DIEnumerator(name: "TXT_CANT_CONNECT", value: 45)
!118 = !DIEnumerator(name: "TXT_CONNECTION_LOST", value: 46)
!119 = !DIEnumerator(name: "TXT_LAG_DISCONNECTED", value: 47)
!120 = !DIEnumerator(name: "TXT_DISCONNECTED", value: 48)
!121 = !DIEnumerator(name: "TXT_SERVER_QUIT", value: 49)
!122 = !DIEnumerator(name: "TXT_SERVER_CHANGED", value: 50)
!123 = !DIEnumerator(name: "TXT_UNKNOWN_SERVER_TAG", value: 51)
!124 = !DIEnumerator(name: "TXT_NO_CONNECTED_SERVERS", value: 52)
!125 = !DIEnumerator(name: "TXT_SERVER_LIST", value: 53)
!126 = !DIEnumerator(name: "TXT_SERVER_LOOKUP_LIST", value: 54)
!127 = !DIEnumerator(name: "TXT_SERVER_RECONNECT_LIST", value: 55)
!128 = !DIEnumerator(name: "TXT_RECONNECT_REMOVED", value: 56)
!129 = !DIEnumerator(name: "TXT_RECONNECT_NOT_FOUND", value: 57)
!130 = !DIEnumerator(name: "TXT_SETUPSERVER_ADDED", value: 58)
!131 = !DIEnumerator(name: "TXT_SETUPSERVER_REMOVED", value: 59)
!132 = !DIEnumerator(name: "TXT_SETUPSERVER_NOT_FOUND", value: 60)
!133 = !DIEnumerator(name: "TXT_YOUR_NICK", value: 61)
!134 = !DIEnumerator(name: "TXT_FILL_3", value: 62)
!135 = !DIEnumerator(name: "TXT_JOIN", value: 63)
!136 = !DIEnumerator(name: "TXT_PART", value: 64)
!137 = !DIEnumerator(name: "TXT_KICK", value: 65)
!138 = !DIEnumerator(name: "TXT_QUIT", value: 66)
!139 = !DIEnumerator(name: "TXT_QUIT_ONCE", value: 67)
!140 = !DIEnumerator(name: "TXT_INVITE", value: 68)
!141 = !DIEnumerator(name: "TXT_NOT_INVITED", value: 69)
!142 = !DIEnumerator(name: "TXT_NEW_TOPIC", value: 70)
!143 = !DIEnumerator(name: "TXT_TOPIC_UNSET", value: 71)
!144 = !DIEnumerator(name: "TXT_YOUR_NICK_CHANGED", value: 72)
!145 = !DIEnumerator(name: "TXT_NICK_CHANGED", value: 73)
!146 = !DIEnumerator(name: "TXT_TALKING_IN", value: 74)
!147 = !DIEnumerator(name: "TXT_NOT_IN_CHANNELS", value: 75)
!148 = !DIEnumerator(name: "TXT_CURRENT_CHANNEL", value: 76)
!149 = !DIEnumerator(name: "TXT_NAMES", value: 77)
!150 = !DIEnumerator(name: "TXT_NAMES_PREFIX", value: 78)
!151 = !DIEnumerator(name: "TXT_NAMES_NICK_OP", value: 79)
!152 = !DIEnumerator(name: "TXT_NAMES_NICK_HALFOP", value: 80)
!153 = !DIEnumerator(name: "TXT_NAMES_NICK_VOICE", value: 81)
!154 = !DIEnumerator(name: "TXT_NAMES_NICK", value: 82)
!155 = !DIEnumerator(name: "TXT_ENDOFNAMES", value: 83)
!156 = !DIEnumerator(name: "TXT_CHANLIST_HEADER", value: 84)
!157 = !DIEnumerator(name: "TXT_CHANLIST_LINE", value: 85)
!158 = !DIEnumerator(name: "TXT_CHANSETUP_NOT_FOUND", value: 86)
!159 = !DIEnumerator(name: "TXT_CHANSETUP_ADDED", value: 87)
!160 = !DIEnumerator(name: "TXT_CHANSETUP_REMOVED", value: 88)
!161 = !DIEnumerator(name: "TXT_CHANSETUP_HEADER", value: 89)
!162 = !DIEnumerator(name: "TXT_CHANSETUP_LINE", value: 90)
!163 = !DIEnumerator(name: "TXT_CHANSETUP_FOOTER", value: 91)
!164 = !DIEnumerator(name: "TXT_FILL_4", value: 92)
!165 = !DIEnumerator(name: "TXT_OWN_MSG", value: 93)
!166 = !DIEnumerator(name: "TXT_OWN_MSG_CHANNEL", value: 94)
!167 = !DIEnumerator(name: "TXT_OWN_MSG_PRIVATE", value: 95)
!168 = !DIEnumerator(name: "TXT_OWN_MSG_PRIVATE_QUERY", value: 96)
!169 = !DIEnumerator(name: "TXT_PUBMSG_ME", value: 97)
!170 = !DIEnumerator(name: "TXT_PUBMSG_ME_CHANNEL", value: 98)
!171 = !DIEnumerator(name: "TXT_PUBMSG_HILIGHT", value: 99)
!172 = !DIEnumerator(name: "TXT_PUBMSG_HILIGHT_CHANNEL", value: 100)
!173 = !DIEnumerator(name: "TXT_PUBMSG", value: 101)
!174 = !DIEnumerator(name: "TXT_PUBMSG_CHANNEL", value: 102)
!175 = !DIEnumerator(name: "TXT_MSG_PRIVATE", value: 103)
!176 = !DIEnumerator(name: "TXT_MSG_PRIVATE_QUERY", value: 104)
!177 = !DIEnumerator(name: "TXT_NO_MSGS_GOT", value: 105)
!178 = !DIEnumerator(name: "TXT_NO_MSGS_SENT", value: 106)
!179 = !DIEnumerator(name: "TXT_FILL_5", value: 107)
!180 = !DIEnumerator(name: "TXT_QUERY_START", value: 108)
!181 = !DIEnumerator(name: "TXT_QUERY_STOP", value: 109)
!182 = !DIEnumerator(name: "TXT_NO_QUERY", value: 110)
!183 = !DIEnumerator(name: "TXT_QUERY_SERVER_CHANGED", value: 111)
!184 = !DIEnumerator(name: "TXT_FILL_6", value: 112)
!185 = !DIEnumerator(name: "TXT_HILIGHT_HEADER", value: 113)
!186 = !DIEnumerator(name: "TXT_HILIGHT_LINE", value: 114)
!187 = !DIEnumerator(name: "TXT_HILIGHT_FOOTER", value: 115)
!188 = !DIEnumerator(name: "TXT_HILIGHT_NOT_FOUND", value: 116)
!189 = !DIEnumerator(name: "TXT_HILIGHT_REMOVED", value: 117)
!190 = !DIEnumerator(name: "TXT_FILL_7", value: 118)
!191 = !DIEnumerator(name: "TXT_ALIAS_ADDED", value: 119)
!192 = !DIEnumerator(name: "TXT_ALIAS_REMOVED", value: 120)
!193 = !DIEnumerator(name: "TXT_ALIAS_NOT_FOUND", value: 121)
!194 = !DIEnumerator(name: "TXT_ALIASLIST_HEADER", value: 122)
!195 = !DIEnumerator(name: "TXT_ALIASLIST_LINE", value: 123)
!196 = !DIEnumerator(name: "TXT_ALIASLIST_FOOTER", value: 124)
!197 = !DIEnumerator(name: "TXT_FILL_8", value: 125)
!198 = !DIEnumerator(name: "TXT_LOG_OPENED", value: 126)
!199 = !DIEnumerator(name: "TXT_LOG_CLOSED", value: 127)
!200 = !DIEnumerator(name: "TXT_LOG_CREATE_FAILED", value: 128)
!201 = !DIEnumerator(name: "TXT_LOG_LOCKED", value: 129)
!202 = !DIEnumerator(name: "TXT_LOG_NOT_OPEN", value: 130)
!203 = !DIEnumerator(name: "TXT_LOG_STARTED", value: 131)
!204 = !DIEnumerator(name: "TXT_LOG_STOPPED", value: 132)
!205 = !DIEnumerator(name: "TXT_LOG_LIST_HEADER", value: 133)
!206 = !DIEnumerator(name: "TXT_LOG_LIST", value: 134)
!207 = !DIEnumerator(name: "TXT_LOG_LIST_FOOTER", value: 135)
!208 = !DIEnumerator(name: "TXT_WINDOWLOG_FILE", value: 136)
!209 = !DIEnumerator(name: "TXT_WINDOWLOG_FILE_LOGGING", value: 137)
!210 = !DIEnumerator(name: "TXT_LOG_NO_AWAY_MSGS", value: 138)
!211 = !DIEnumerator(name: "TXT_LOG_AWAY_MSGS", value: 139)
!212 = !DIEnumerator(name: "TXT_FILL_9", value: 140)
!213 = !DIEnumerator(name: "TXT_MODULE_HEADER", value: 141)
!214 = !DIEnumerator(name: "TXT_MODULE_LINE", value: 142)
!215 = !DIEnumerator(name: "TXT_MODULE_FOOTER", value: 143)
!216 = !DIEnumerator(name: "TXT_MODULE_ALREADY_LOADED", value: 144)
!217 = !DIEnumerator(name: "TXT_MODULE_NOT_LOADED", value: 145)
!218 = !DIEnumerator(name: "TXT_MODULE_LOAD_ERROR", value: 146)
!219 = !DIEnumerator(name: "TXT_MODULE_VERSION_MISMATCH", value: 147)
!220 = !DIEnumerator(name: "TXT_MODULE_INVALID", value: 148)
!221 = !DIEnumerator(name: "TXT_MODULE_LOADED", value: 149)
!222 = !DIEnumerator(name: "TXT_MODULE_UNLOADED", value: 150)
!223 = !DIEnumerator(name: "TXT_FILL_10", value: 151)
!224 = !DIEnumerator(name: "TXT_COMMAND_UNKNOWN", value: 152)
!225 = !DIEnumerator(name: "TXT_COMMAND_AMBIGUOUS", value: 153)
!226 = !DIEnumerator(name: "TXT_OPTION_UNKNOWN", value: 154)
!227 = !DIEnumerator(name: "TXT_OPTION_AMBIGUOUS", value: 155)
!228 = !DIEnumerator(name: "TXT_OPTION_MISSING_ARG", value: 156)
!229 = !DIEnumerator(name: "TXT_NOT_ENOUGH_PARAMS", value: 157)
!230 = !DIEnumerator(name: "TXT_NOT_CONNECTED", value: 158)
!231 = !DIEnumerator(name: "TXT_NOT_JOINED", value: 159)
!232 = !DIEnumerator(name: "TXT_CHAN_NOT_FOUND", value: 160)
!233 = !DIEnumerator(name: "TXT_CHAN_NOT_SYNCED", value: 161)
!234 = !DIEnumerator(name: "TXT_ILLEGAL_PROTO", value: 162)
!235 = !DIEnumerator(name: "TXT_NOT_GOOD_IDEA", value: 163)
!236 = !DIEnumerator(name: "TXT_INVALID_NUMBER", value: 164)
!237 = !DIEnumerator(name: "TXT_INVALID_TIME", value: 165)
!238 = !DIEnumerator(name: "TXT_INVALID_LEVEL", value: 166)
!239 = !DIEnumerator(name: "TXT_INVALID_SIZE", value: 167)
!240 = !DIEnumerator(name: "TXT_INVALID_CHARSET", value: 168)
!241 = !DIEnumerator(name: "TXT_INVALID_CHOICE", value: 169)
!242 = !DIEnumerator(name: "TXT_EVAL_MAX_RECURSE", value: 170)
!243 = !DIEnumerator(name: "TXT_PROGRAM_NOT_FOUND", value: 171)
!244 = !DIEnumerator(name: "TXT_NO_SERVER_DEFINED", value: 172)
!245 = !DIEnumerator(name: "TXT_FILL_11", value: 173)
!246 = !DIEnumerator(name: "TXT_THEME_SAVED", value: 174)
!247 = !DIEnumerator(name: "TXT_THEME_SAVE_FAILED", value: 175)
!248 = !DIEnumerator(name: "TXT_THEME_NOT_FOUND", value: 176)
!249 = !DIEnumerator(name: "TXT_THEME_CHANGED", value: 177)
!250 = !DIEnumerator(name: "TXT_WINDOW_THEME", value: 178)
!251 = !DIEnumerator(name: "TXT_WINDOW_THEME_DEFAULT", value: 179)
!252 = !DIEnumerator(name: "TXT_WINDOW_THEME_CHANGED", value: 180)
!253 = !DIEnumerator(name: "TXT_WINDOW_THEME_REMOVED", value: 181)
!254 = !DIEnumerator(name: "TXT_FORMAT_TITLE", value: 182)
!255 = !DIEnumerator(name: "TXT_FORMAT_SUBTITLE", value: 183)
!256 = !DIEnumerator(name: "TXT_FORMAT_ITEM", value: 184)
!257 = !DIEnumerator(name: "TXT_FILL_12", value: 185)
!258 = !DIEnumerator(name: "TXT_IGNORED", value: 186)
!259 = !DIEnumerator(name: "TXT_IGNORED_OPTIONS", value: 187)
!260 = !DIEnumerator(name: "TXT_UNIGNORED", value: 188)
!261 = !DIEnumerator(name: "TXT_IGNORE_NOT_FOUND", value: 189)
!262 = !DIEnumerator(name: "TXT_IGNORE_NO_IGNORES", value: 190)
!263 = !DIEnumerator(name: "TXT_IGNORE_HEADER", value: 191)
!264 = !DIEnumerator(name: "TXT_IGNORE_LINE", value: 192)
!265 = !DIEnumerator(name: "TXT_IGNORE_FOOTER", value: 193)
!266 = !DIEnumerator(name: "TXT_FILL_13", value: 194)
!267 = !DIEnumerator(name: "TXT_NOT_CHANNEL_OR_QUERY", value: 195)
!268 = !DIEnumerator(name: "TXT_CONVERSION_ADDED", value: 196)
!269 = !DIEnumerator(name: "TXT_CONVERSION_REMOVED", value: 197)
!270 = !DIEnumerator(name: "TXT_CONVERSION_NOT_FOUND", value: 198)
!271 = !DIEnumerator(name: "TXT_CONVERSION_NO_TRANSLITS", value: 199)
!272 = !DIEnumerator(name: "TXT_RECODE_HEADER", value: 200)
!273 = !DIEnumerator(name: "TXT_RECODE_LINE", value: 201)
!274 = !DIEnumerator(name: "TXT_FILL_14", value: 202)
!275 = !DIEnumerator(name: "TXT_UNKNOWN_CHAT_PROTOCOL", value: 203)
!276 = !DIEnumerator(name: "TXT_UNKNOWN_CHATNET", value: 204)
!277 = !DIEnumerator(name: "TXT_NOT_TOGGLE", value: 205)
!278 = !DIEnumerator(name: "TXT_PERL_ERROR", value: 206)
!279 = !DIEnumerator(name: "TXT_BIND_HEADER", value: 207)
!280 = !DIEnumerator(name: "TXT_BIND_LIST", value: 208)
!281 = !DIEnumerator(name: "TXT_BIND_COMMAND_LIST", value: 209)
!282 = !DIEnumerator(name: "TXT_BIND_FOOTER", value: 210)
!283 = !DIEnumerator(name: "TXT_BIND_UNKNOWN_ID", value: 211)
!284 = !DIEnumerator(name: "TXT_CONFIG_SAVED", value: 212)
!285 = !DIEnumerator(name: "TXT_CONFIG_RELOADED", value: 213)
!286 = !DIEnumerator(name: "TXT_CONFIG_MODIFIED", value: 214)
!287 = !DIEnumerator(name: "TXT_GLIB_ERROR", value: 215)
!288 = !DIEnumerator(name: "TXT_OVERWRITE_CONFIG", value: 216)
!289 = !DIEnumerator(name: "TXT_SET_TITLE", value: 217)
!290 = !DIEnumerator(name: "TXT_SET_ITEM", value: 218)
!291 = !DIEnumerator(name: "TXT_SET_UNKNOWN", value: 219)
!292 = !DIEnumerator(name: "TXT_SET_NOT_BOOLEAN", value: 220)
!293 = !DIEnumerator(name: "TXT_NO_COMPLETIONS", value: 221)
!294 = !DIEnumerator(name: "TXT_COMPLETION_REMOVED", value: 222)
!295 = !DIEnumerator(name: "TXT_COMPLETION_HEADER", value: 223)
!296 = !DIEnumerator(name: "TXT_COMPLETION_LINE", value: 224)
!297 = !DIEnumerator(name: "TXT_COMPLETION_FOOTER", value: 225)
!298 = !DIEnumerator(name: "TXT_CAPSICUM_ENABLED", value: 226)
!299 = !DIEnumerator(name: "TXT_CAPSICUM_DISABLED", value: 227)
!300 = !DIEnumerator(name: "TXT_CAPSICUM_FAILED", value: 228)
!301 = !DIEnumerator(name: "TLS_FILL_15", value: 229)
!302 = !DIEnumerator(name: "TXT_TLS_EPHEMERAL_KEY", value: 230)
!303 = !DIEnumerator(name: "TXT_TLS_EPHEMERAL_KEY_UNAVAILBLE", value: 231)
!304 = !DIEnumerator(name: "TXT_TLS_PUBKEY", value: 232)
!305 = !DIEnumerator(name: "TXT_TLS_CERT_HEADER", value: 233)
!306 = !DIEnumerator(name: "TXT_TLS_CERT_SUBJECT", value: 234)
!307 = !DIEnumerator(name: "TXT_TLS_CERT_ISSUER", value: 235)
!308 = !DIEnumerator(name: "TXT_TLS_PUBKEY_FINGERPRINT", value: 236)
!309 = !DIEnumerator(name: "TXT_TLS_CERT_FINGERPRINT", value: 237)
!310 = !DIEnumerator(name: "TXT_TLS_PROTOCOL_VERSION", value: 238)
!311 = !{!312, !326, !327, !329, !331, !347, !354, !355, !356, !362, !344, !368, !370, !374, !379, !383, !319, !384, !387, !394, !398}
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64, align: 64)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "KEYBOARD_REC", file: !314, line: 6, baseType: !315)
!314 = !DIFile(filename: "keyboard.h", directory: "/home/lichi/Desktop/irssi/task1")
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_KEYBOARD_REC", file: !316, line: 50, size: 192, align: 64, elements: !317)
!316 = !DIFile(filename: "keyboard.c", directory: "/home/lichi/Desktop/irssi/task1")
!317 = !{!318, !321, !325}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "key_state", scope: !315, file: !316, line: 51, baseType: !319, size: 64, align: 64)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64, align: 64)
!320 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "timer_tag", scope: !315, file: !316, line: 52, baseType: !322, size: 32, align: 32, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !323, line: 55, baseType: !324)
!323 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!324 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "gui_data", scope: !315, file: !316, line: 53, baseType: !326, size: 64, align: 64, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64, align: 64)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !323, line: 46, baseType: !320)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64, align: 64)
!330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !320)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64, align: 64)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "KEYINFO_REC", file: !314, line: 7, baseType: !333)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_KEYINFO_REC", file: !314, line: 10, size: 256, align: 64, elements: !334)
!334 = !{!335, !336, !337, !346}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !333, file: !314, line: 11, baseType: !319, size: 64, align: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !333, file: !314, line: 12, baseType: !319, size: 64, align: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !333, file: !314, line: 14, baseType: !338, size: 64, align: 64, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64, align: 64)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !340, line: 37, baseType: !341)
!340 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !340, line: 39, size: 128, align: 64, elements: !342)
!342 = !{!343, !345}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !341, file: !340, line: 41, baseType: !344, size: 64, align: 64)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !323, line: 77, baseType: !326)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !341, file: !340, line: 42, baseType: !338, size: 64, align: 64, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "default_keys", scope: !333, file: !314, line: 14, baseType: !338, size: 64, align: 64, offset: 192)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !348, line: 9, baseType: !349)
!348 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64, align: 64)
!350 = !DISubroutineType(types: !351)
!351 = !{null, !352, !352, !352, !352, !352, !352}
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64, align: 64)
!353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!354 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!355 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCompareFunc", file: !323, line: 80, baseType: !357)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64, align: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{!360, !361, !361}
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !323, line: 49, baseType: !354)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "gconstpointer", file: !323, line: 78, baseType: !352)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !363, line: 155, baseType: !364)
!363 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/irssi/task1")
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64, align: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{!367, !344}
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !323, line: 50, baseType: !360)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !323, line: 48, baseType: !369)
!369 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashFunc", file: !323, line: 90, baseType: !371)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64, align: 64)
!372 = !DISubroutineType(types: !373)
!373 = !{!322, !361}
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTraverseFunc", file: !375, line: 38, baseType: !376)
!375 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtree.h", directory: "/home/lichi/Desktop/irssi/task1")
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64, align: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{!367, !344, !344, !344}
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHFunc", file: !323, line: 91, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64, align: 64)
!381 = !DISubroutineType(types: !382)
!382 = !{null, !344, !344, !344}
!383 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64, align: 64)
!385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !386)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "guchar", file: !323, line: 52, baseType: !355)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64, align: 64)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "KEY_REC", file: !314, line: 8, baseType: !389)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_KEY_REC", file: !314, line: 17, size: 192, align: 64, elements: !390)
!390 = !{!391, !392, !393}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !389, file: !314, line: 18, baseType: !331, size: 64, align: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !389, file: !314, line: 20, baseType: !319, size: 64, align: 64, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !389, file: !314, line: 21, baseType: !319, size: 64, align: 64, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "GFunc", file: !323, line: 88, baseType: !395)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64, align: 64)
!396 = !DISubroutineType(types: !397)
!397 = !{null, !344, !344}
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHRFunc", file: !399, line: 39, baseType: !376)
!399 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!400 = !{!401, !402, !406, !407, !408, !412, !416}
!401 = distinct !DIGlobalVariable(name: "keyinfos", scope: !0, file: !316, line: 36, type: !338, isLocal: false, isDefinition: true, variable: %struct._GSList** @keyinfos)
!402 = distinct !DIGlobalVariable(name: "keys", scope: !0, file: !316, line: 37, type: !403, isLocal: true, isDefinition: true, variable: %struct._GHashTable** @keys)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64, align: 64)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !399, line: 37, baseType: !405)
!405 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !399, line: 37, flags: DIFlagFwdDecl)
!406 = distinct !DIGlobalVariable(name: "default_keys", scope: !0, file: !316, line: 37, type: !403, isLocal: true, isDefinition: true, variable: %struct._GHashTable** @default_keys)
!407 = distinct !DIGlobalVariable(name: "key_timeout", scope: !0, file: !316, line: 38, type: !354, isLocal: true, isDefinition: true, variable: i32* @key_timeout)
!408 = distinct !DIGlobalVariable(name: "used_keys", scope: !0, file: !316, line: 42, type: !409, isLocal: true, isDefinition: true, variable: [256 x i8]* @used_keys)
!409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, size: 2048, align: 8, elements: !410)
!410 = !{!411}
!411 = !DISubrange(count: 256)
!412 = distinct !DIGlobalVariable(name: "key_states", scope: !0, file: !316, line: 47, type: !413, isLocal: true, isDefinition: true, variable: %struct._GTree** @key_states)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64, align: 64)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTree", file: !375, line: 36, baseType: !415)
!415 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GTree", file: !375, line: 36, flags: DIFlagFwdDecl)
!416 = distinct !DIGlobalVariable(name: "key_config_frozen", scope: !0, file: !316, line: 48, type: !354, isLocal: true, isDefinition: true, variable: i32* @key_config_frozen)
!417 = !{i32 2, !"Dwarf Version", i32 4}
!418 = !{i32 2, !"Debug Info Version", i32 3}
!419 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!420 = distinct !DISubprogram(name: "keyboard_create", scope: !316, file: !316, line: 59, type: !421, isLocal: false, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!421 = !DISubroutineType(types: !422)
!422 = !{!312, !326}
!423 = !{}
!424 = !DILocalVariable(name: "data", arg: 1, scope: !420, file: !316, line: 59, type: !326)
!425 = !DIExpression()
!426 = !DILocation(line: 59, column: 37, scope: !420)
!427 = !DILocalVariable(name: "rec", scope: !420, file: !316, line: 61, type: !312)
!428 = !DILocation(line: 61, column: 16, scope: !420)
!429 = !DILocation(line: 63, column: 26, scope: !420)
!430 = !DILocation(line: 63, column: 9, scope: !420)
!431 = !DILocation(line: 63, column: 6, scope: !420)
!432 = !DILocation(line: 64, column: 18, scope: !420)
!433 = !DILocation(line: 64, column: 2, scope: !420)
!434 = !DILocation(line: 64, column: 7, scope: !420)
!435 = !DILocation(line: 64, column: 16, scope: !420)
!436 = !DILocation(line: 65, column: 2, scope: !420)
!437 = !DILocation(line: 65, column: 7, scope: !420)
!438 = !DILocation(line: 65, column: 17, scope: !420)
!439 = !DILocation(line: 67, column: 37, scope: !420)
!440 = !DILocation(line: 67, column: 2, scope: !420)
!441 = !DILocation(line: 68, column: 16, scope: !420)
!442 = !DILocation(line: 68, column: 9, scope: !420)
!443 = distinct !DISubprogram(name: "keyboard_destroy", scope: !316, file: !316, line: 72, type: !444, isLocal: false, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!444 = !DISubroutineType(types: !445)
!445 = !{null, !312}
!446 = !DILocalVariable(name: "keyboard", arg: 1, scope: !443, file: !316, line: 72, type: !312)
!447 = !DILocation(line: 72, column: 37, scope: !443)
!448 = !DILocation(line: 74, column: 6, scope: !449)
!449 = distinct !DILexicalBlock(scope: !443, file: !316, line: 74, column: 6)
!450 = !DILocation(line: 74, column: 16, scope: !449)
!451 = !DILocation(line: 74, column: 26, scope: !449)
!452 = !DILocation(line: 74, column: 6, scope: !443)
!453 = !DILocation(line: 75, column: 19, scope: !454)
!454 = distinct !DILexicalBlock(scope: !449, file: !316, line: 74, column: 31)
!455 = !DILocation(line: 75, column: 29, scope: !454)
!456 = !DILocation(line: 75, column: 3, scope: !454)
!457 = !DILocation(line: 76, column: 3, scope: !454)
!458 = !DILocation(line: 76, column: 13, scope: !454)
!459 = !DILocation(line: 76, column: 23, scope: !454)
!460 = !DILocation(line: 77, column: 2, scope: !454)
!461 = !DILocation(line: 79, column: 39, scope: !443)
!462 = !DILocation(line: 79, column: 2, scope: !443)
!463 = !DILocation(line: 81, column: 16, scope: !443)
!464 = !DILocation(line: 81, column: 26, scope: !443)
!465 = !DILocation(line: 81, column: 9, scope: !443)
!466 = !DILocation(line: 82, column: 16, scope: !443)
!467 = !DILocation(line: 82, column: 9, scope: !443)
!468 = !DILocation(line: 83, column: 1, scope: !443)
!469 = distinct !DISubprogram(name: "key_info_find", scope: !316, file: !316, line: 176, type: !470, isLocal: false, isDefinition: true, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!470 = !DISubroutineType(types: !471)
!471 = !{!331, !329}
!472 = !DILocalVariable(name: "id", arg: 1, scope: !469, file: !316, line: 176, type: !329)
!473 = !DILocation(line: 176, column: 40, scope: !469)
!474 = !DILocalVariable(name: "tmp", scope: !469, file: !316, line: 178, type: !338)
!475 = !DILocation(line: 178, column: 10, scope: !469)
!476 = !DILocation(line: 180, column: 13, scope: !477)
!477 = distinct !DILexicalBlock(scope: !469, file: !316, line: 180, column: 2)
!478 = !DILocation(line: 180, column: 11, scope: !477)
!479 = !DILocation(line: 180, column: 7, scope: !477)
!480 = !DILocation(line: 180, column: 23, scope: !481)
!481 = !DILexicalBlockFile(scope: !482, file: !316, discriminator: 1)
!482 = distinct !DILexicalBlock(scope: !477, file: !316, line: 180, column: 2)
!483 = !DILocation(line: 180, column: 27, scope: !481)
!484 = !DILocation(line: 180, column: 2, scope: !481)
!485 = !DILocalVariable(name: "rec", scope: !486, file: !316, line: 181, type: !331)
!486 = distinct !DILexicalBlock(scope: !482, file: !316, line: 180, column: 52)
!487 = !DILocation(line: 181, column: 16, scope: !486)
!488 = !DILocation(line: 181, column: 22, scope: !486)
!489 = !DILocation(line: 181, column: 27, scope: !486)
!490 = !DILocation(line: 183, column: 26, scope: !491)
!491 = distinct !DILexicalBlock(scope: !486, file: !316, line: 183, column: 7)
!492 = !DILocation(line: 183, column: 31, scope: !491)
!493 = !DILocation(line: 183, column: 35, scope: !491)
!494 = !DILocation(line: 183, column: 7, scope: !491)
!495 = !DILocation(line: 183, column: 39, scope: !491)
!496 = !DILocation(line: 183, column: 7, scope: !486)
!497 = !DILocation(line: 184, column: 11, scope: !491)
!498 = !DILocation(line: 184, column: 4, scope: !491)
!499 = !DILocation(line: 185, column: 2, scope: !486)
!500 = !DILocation(line: 180, column: 41, scope: !501)
!501 = !DILexicalBlockFile(scope: !482, file: !316, discriminator: 2)
!502 = !DILocation(line: 180, column: 46, scope: !501)
!503 = !DILocation(line: 180, column: 39, scope: !501)
!504 = !DILocation(line: 180, column: 2, scope: !501)
!505 = distinct !{!505, !506}
!506 = !DILocation(line: 180, column: 2, scope: !469)
!507 = !DILocation(line: 187, column: 2, scope: !469)
!508 = !DILocation(line: 188, column: 1, scope: !469)
!509 = distinct !DISubprogram(name: "key_configure_freeze", scope: !316, file: !316, line: 426, type: !510, isLocal: false, isDefinition: true, scopeLine: 427, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!510 = !DISubroutineType(types: !511)
!511 = !{null}
!512 = !DILocation(line: 428, column: 26, scope: !509)
!513 = !DILocation(line: 429, column: 1, scope: !509)
!514 = distinct !DISubprogram(name: "key_configure_thaw", scope: !316, file: !316, line: 431, type: !510, isLocal: false, isDefinition: true, scopeLine: 432, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!515 = !DILocation(line: 433, column: 9, scope: !514)
!516 = distinct !{!516, !515}
!517 = !DILocation(line: 433, column: 17, scope: !518)
!518 = !DILexicalBlockFile(scope: !519, file: !316, discriminator: 1)
!519 = distinct !DILexicalBlock(scope: !520, file: !316, line: 433, column: 17)
!520 = distinct !DILexicalBlock(scope: !514, file: !316, line: 433, column: 11)
!521 = !DILocation(line: 433, column: 35, scope: !518)
!522 = !DILocation(line: 433, column: 42, scope: !523)
!523 = !DILexicalBlockFile(scope: !524, file: !316, discriminator: 2)
!524 = distinct !DILexicalBlock(scope: !519, file: !316, line: 433, column: 40)
!525 = !DILocation(line: 433, column: 51, scope: !526)
!526 = !DILexicalBlockFile(scope: !527, file: !316, discriminator: 3)
!527 = distinct !DILexicalBlock(scope: !519, file: !316, line: 433, column: 49)
!528 = !DILocation(line: 433, column: 145, scope: !526)
!529 = !DILocation(line: 433, column: 156, scope: !530)
!530 = !DILexicalBlockFile(scope: !520, file: !316, discriminator: 4)
!531 = !DILocation(line: 435, column: 6, scope: !532)
!532 = distinct !DILexicalBlock(scope: !514, file: !316, line: 435, column: 6)
!533 = !DILocation(line: 435, column: 26, scope: !532)
!534 = !DILocation(line: 435, column: 6, scope: !514)
!535 = !DILocation(line: 436, column: 3, scope: !532)
!536 = !DILocation(line: 437, column: 1, scope: !514)
!537 = distinct !DISubprogram(name: "key_states_rescan", scope: !316, file: !316, line: 410, type: !510, isLocal: true, isDefinition: true, scopeLine: 411, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!538 = !DILocalVariable(name: "temp", scope: !537, file: !316, line: 412, type: !539)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64, align: 64)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !541, line: 39, baseType: !542)
!541 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !541, line: 41, size: 192, align: 64, elements: !543)
!543 = !{!544, !545, !549}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !542, file: !541, line: 43, baseType: !327, size: 64, align: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !542, file: !541, line: 44, baseType: !546, size: 64, align: 64, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !547, line: 66, baseType: !548)
!547 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!548 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !542, file: !541, line: 45, baseType: !546, size: 64, align: 64, offset: 128)
!550 = !DILocation(line: 412, column: 11, scope: !537)
!551 = !DILocation(line: 414, column: 2, scope: !537)
!552 = !DILocation(line: 416, column: 17, scope: !537)
!553 = !DILocation(line: 416, column: 2, scope: !537)
!554 = !DILocation(line: 418, column: 17, scope: !537)
!555 = !DILocation(line: 418, column: 2, scope: !537)
!556 = !DILocation(line: 419, column: 15, scope: !537)
!557 = !DILocation(line: 419, column: 13, scope: !537)
!558 = !DILocation(line: 421, column: 16, scope: !537)
!559 = !DILocation(line: 421, column: 14, scope: !537)
!560 = !DILocation(line: 422, column: 23, scope: !537)
!561 = !DILocation(line: 422, column: 59, scope: !537)
!562 = !DILocation(line: 422, column: 2, scope: !537)
!563 = !DILocation(line: 423, column: 23, scope: !537)
!564 = !DILocation(line: 423, column: 9, scope: !537)
!565 = !DILocation(line: 424, column: 1, scope: !537)
!566 = distinct !DISubprogram(name: "key_bind", scope: !316, file: !316, line: 488, type: !567, isLocal: false, isDefinition: true, scopeLine: 490, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!567 = !DISubroutineType(types: !568)
!568 = !{null, !329, !329, !329, !329, !347}
!569 = !DILocalVariable(name: "id", arg: 1, scope: !566, file: !316, line: 488, type: !329)
!570 = !DILocation(line: 488, column: 27, scope: !566)
!571 = !DILocalVariable(name: "description", arg: 2, scope: !566, file: !316, line: 488, type: !329)
!572 = !DILocation(line: 488, column: 43, scope: !566)
!573 = !DILocalVariable(name: "key_default", arg: 3, scope: !566, file: !316, line: 489, type: !329)
!574 = !DILocation(line: 489, column: 20, scope: !566)
!575 = !DILocalVariable(name: "data", arg: 4, scope: !566, file: !316, line: 489, type: !329)
!576 = !DILocation(line: 489, column: 45, scope: !566)
!577 = !DILocalVariable(name: "func", arg: 5, scope: !566, file: !316, line: 489, type: !347)
!578 = !DILocation(line: 489, column: 63, scope: !566)
!579 = !DILocalVariable(name: "info", scope: !566, file: !316, line: 491, type: !331)
!580 = !DILocation(line: 491, column: 15, scope: !566)
!581 = !DILocalVariable(name: "key", scope: !566, file: !316, line: 492, type: !319)
!582 = !DILocation(line: 492, column: 8, scope: !566)
!583 = !DILocation(line: 494, column: 2, scope: !566)
!584 = distinct !{!584, !583}
!585 = !DILocation(line: 494, column: 10, scope: !586)
!586 = !DILexicalBlockFile(scope: !587, file: !316, discriminator: 1)
!587 = distinct !DILexicalBlock(scope: !588, file: !316, line: 494, column: 10)
!588 = distinct !DILexicalBlock(scope: !566, file: !316, line: 494, column: 4)
!589 = !DILocation(line: 494, column: 13, scope: !586)
!590 = !DILocation(line: 494, column: 5, scope: !591)
!591 = !DILexicalBlockFile(scope: !592, file: !316, discriminator: 2)
!592 = distinct !DILexicalBlock(scope: !587, file: !316, line: 494, column: 3)
!593 = !DILocation(line: 494, column: 14, scope: !594)
!594 = !DILexicalBlockFile(scope: !595, file: !316, discriminator: 3)
!595 = distinct !DILexicalBlock(scope: !587, file: !316, line: 494, column: 12)
!596 = !DILocation(line: 494, column: 97, scope: !594)
!597 = !DILocation(line: 494, column: 108, scope: !598)
!598 = !DILexicalBlockFile(scope: !588, file: !316, discriminator: 4)
!599 = !DILocation(line: 497, column: 23, scope: !566)
!600 = !DILocation(line: 497, column: 9, scope: !566)
!601 = !DILocation(line: 497, column: 7, scope: !566)
!602 = !DILocation(line: 498, column: 6, scope: !603)
!603 = distinct !DILexicalBlock(scope: !566, file: !316, line: 498, column: 6)
!604 = !DILocation(line: 498, column: 11, scope: !603)
!605 = !DILocation(line: 498, column: 6, scope: !566)
!606 = !DILocation(line: 499, column: 3, scope: !607)
!607 = distinct !DILexicalBlock(scope: !603, file: !316, line: 498, column: 19)
!608 = distinct !{!608, !606}
!609 = !DILocation(line: 499, column: 11, scope: !610)
!610 = !DILexicalBlockFile(scope: !611, file: !316, discriminator: 1)
!611 = distinct !DILexicalBlock(scope: !612, file: !316, line: 499, column: 11)
!612 = distinct !DILexicalBlock(scope: !607, file: !316, line: 499, column: 5)
!613 = !DILocation(line: 499, column: 16, scope: !610)
!614 = !DILocation(line: 499, column: 6, scope: !615)
!615 = !DILexicalBlockFile(scope: !616, file: !316, discriminator: 2)
!616 = distinct !DILexicalBlock(scope: !611, file: !316, line: 499, column: 4)
!617 = !DILocation(line: 499, column: 15, scope: !618)
!618 = !DILexicalBlockFile(scope: !619, file: !316, discriminator: 3)
!619 = distinct !DILexicalBlock(scope: !611, file: !316, line: 499, column: 13)
!620 = !DILocation(line: 499, column: 100, scope: !618)
!621 = !DILocation(line: 499, column: 111, scope: !622)
!622 = !DILexicalBlockFile(scope: !612, file: !316, discriminator: 4)
!623 = !DILocation(line: 501, column: 7, scope: !624)
!624 = distinct !DILexicalBlock(scope: !607, file: !316, line: 501, column: 7)
!625 = !DILocation(line: 501, column: 19, scope: !624)
!626 = !DILocation(line: 501, column: 7, scope: !607)
!627 = !DILocation(line: 502, column: 87, scope: !624)
!628 = !DILocation(line: 502, column: 4, scope: !624)
!629 = !DILocation(line: 503, column: 27, scope: !607)
!630 = !DILocation(line: 503, column: 11, scope: !607)
!631 = !DILocation(line: 503, column: 8, scope: !607)
!632 = !DILocation(line: 504, column: 23, scope: !607)
!633 = !DILocation(line: 504, column: 14, scope: !607)
!634 = !DILocation(line: 504, column: 3, scope: !607)
!635 = !DILocation(line: 504, column: 9, scope: !607)
!636 = !DILocation(line: 504, column: 12, scope: !607)
!637 = !DILocation(line: 505, column: 32, scope: !607)
!638 = !DILocation(line: 505, column: 23, scope: !607)
!639 = !DILocation(line: 505, column: 3, scope: !607)
!640 = !DILocation(line: 505, column: 9, scope: !607)
!641 = !DILocation(line: 505, column: 21, scope: !607)
!642 = !DILocation(line: 506, column: 29, scope: !607)
!643 = !DILocation(line: 506, column: 39, scope: !607)
!644 = !DILocation(line: 506, column: 14, scope: !607)
!645 = !DILocation(line: 506, column: 12, scope: !607)
!646 = !DILocation(line: 509, column: 29, scope: !607)
!647 = !DILocation(line: 509, column: 9, scope: !607)
!648 = !DILocation(line: 509, column: 7, scope: !607)
!649 = !DILocation(line: 510, column: 41, scope: !607)
!650 = !DILocation(line: 510, column: 62, scope: !607)
!651 = !DILocation(line: 510, column: 3, scope: !607)
!652 = !DILocation(line: 511, column: 10, scope: !607)
!653 = !DILocation(line: 511, column: 3, scope: !607)
!654 = !DILocation(line: 513, column: 37, scope: !607)
!655 = !DILocation(line: 513, column: 3, scope: !607)
!656 = !DILocation(line: 514, column: 2, scope: !607)
!657 = !DILocation(line: 516, column: 6, scope: !658)
!658 = distinct !DILexicalBlock(scope: !566, file: !316, line: 516, column: 6)
!659 = !DILocation(line: 516, column: 18, scope: !658)
!660 = !DILocation(line: 516, column: 25, scope: !658)
!661 = !DILocation(line: 516, column: 29, scope: !662)
!662 = !DILexicalBlockFile(scope: !658, file: !316, discriminator: 1)
!663 = !DILocation(line: 516, column: 28, scope: !662)
!664 = !DILocation(line: 516, column: 41, scope: !662)
!665 = !DILocation(line: 516, column: 6, scope: !662)
!666 = !DILocation(line: 517, column: 33, scope: !667)
!667 = distinct !DILexicalBlock(scope: !658, file: !316, line: 516, column: 50)
!668 = !DILocation(line: 517, column: 37, scope: !667)
!669 = !DILocation(line: 517, column: 50, scope: !667)
!670 = !DILocation(line: 517, column: 17, scope: !667)
!671 = !DILocation(line: 518, column: 24, scope: !667)
!672 = !DILocation(line: 518, column: 28, scope: !667)
!673 = !DILocation(line: 518, column: 41, scope: !667)
!674 = !DILocation(line: 518, column: 3, scope: !667)
!675 = !DILocation(line: 519, column: 2, scope: !667)
!676 = !DILocation(line: 520, column: 1, scope: !566)
!677 = distinct !DISubprogram(name: "key_default_add", scope: !316, file: !316, line: 94, type: !678, isLocal: true, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!678 = !DISubroutineType(types: !679)
!679 = !{null, !329, !329, !329}
!680 = !DILocalVariable(name: "id", arg: 1, scope: !677, file: !316, line: 94, type: !329)
!681 = !DILocation(line: 94, column: 41, scope: !677)
!682 = !DILocalVariable(name: "key", arg: 2, scope: !677, file: !316, line: 94, type: !329)
!683 = !DILocation(line: 94, column: 57, scope: !677)
!684 = !DILocalVariable(name: "data", arg: 3, scope: !677, file: !316, line: 94, type: !329)
!685 = !DILocation(line: 94, column: 74, scope: !677)
!686 = !DILocalVariable(name: "info", scope: !677, file: !316, line: 96, type: !331)
!687 = !DILocation(line: 96, column: 22, scope: !677)
!688 = !DILocalVariable(name: "rec", scope: !677, file: !316, line: 97, type: !387)
!689 = !DILocation(line: 97, column: 11, scope: !677)
!690 = !DILocation(line: 99, column: 23, scope: !677)
!691 = !DILocation(line: 99, column: 9, scope: !677)
!692 = !DILocation(line: 99, column: 7, scope: !677)
!693 = !DILocation(line: 100, column: 6, scope: !694)
!694 = distinct !DILexicalBlock(scope: !677, file: !316, line: 100, column: 6)
!695 = !DILocation(line: 100, column: 11, scope: !694)
!696 = !DILocation(line: 100, column: 6, scope: !677)
!697 = !DILocation(line: 101, column: 3, scope: !694)
!698 = !DILocation(line: 103, column: 28, scope: !677)
!699 = !DILocation(line: 103, column: 42, scope: !677)
!700 = !DILocation(line: 103, column: 8, scope: !677)
!701 = !DILocation(line: 103, column: 6, scope: !677)
!702 = !DILocation(line: 104, column: 6, scope: !703)
!703 = distinct !DILexicalBlock(scope: !677, file: !316, line: 104, column: 6)
!704 = !DILocation(line: 104, column: 10, scope: !703)
!705 = !DILocation(line: 104, column: 6, scope: !677)
!706 = !DILocation(line: 107, column: 19, scope: !707)
!707 = distinct !DILexicalBlock(scope: !703, file: !316, line: 104, column: 18)
!708 = !DILocation(line: 107, column: 24, scope: !707)
!709 = !DILocation(line: 107, column: 30, scope: !707)
!710 = !DILocation(line: 107, column: 44, scope: !707)
!711 = !DILocation(line: 107, column: 4, scope: !707)
!712 = !DILocation(line: 106, column: 3, scope: !707)
!713 = !DILocation(line: 106, column: 8, scope: !707)
!714 = !DILocation(line: 106, column: 14, scope: !707)
!715 = !DILocation(line: 106, column: 27, scope: !707)
!716 = !DILocation(line: 108, column: 15, scope: !707)
!717 = !DILocation(line: 108, column: 20, scope: !707)
!718 = !DILocation(line: 108, column: 3, scope: !707)
!719 = !DILocation(line: 109, column: 2, scope: !707)
!720 = !DILocation(line: 111, column: 21, scope: !677)
!721 = !DILocation(line: 111, column: 9, scope: !677)
!722 = !DILocation(line: 111, column: 6, scope: !677)
!723 = !DILocation(line: 112, column: 22, scope: !677)
!724 = !DILocation(line: 112, column: 13, scope: !677)
!725 = !DILocation(line: 112, column: 2, scope: !677)
!726 = !DILocation(line: 112, column: 7, scope: !677)
!727 = !DILocation(line: 112, column: 11, scope: !677)
!728 = !DILocation(line: 113, column: 14, scope: !677)
!729 = !DILocation(line: 113, column: 2, scope: !677)
!730 = !DILocation(line: 113, column: 7, scope: !677)
!731 = !DILocation(line: 113, column: 12, scope: !677)
!732 = !DILocation(line: 114, column: 23, scope: !677)
!733 = !DILocation(line: 114, column: 14, scope: !677)
!734 = !DILocation(line: 114, column: 2, scope: !677)
!735 = !DILocation(line: 114, column: 7, scope: !677)
!736 = !DILocation(line: 114, column: 12, scope: !677)
!737 = !DILocation(line: 115, column: 45, scope: !677)
!738 = !DILocation(line: 115, column: 51, scope: !677)
!739 = !DILocation(line: 115, column: 65, scope: !677)
!740 = !DILocation(line: 115, column: 30, scope: !677)
!741 = !DILocation(line: 115, column: 9, scope: !677)
!742 = !DILocation(line: 115, column: 15, scope: !677)
!743 = !DILocation(line: 115, column: 28, scope: !677)
!744 = !DILocation(line: 116, column: 22, scope: !677)
!745 = !DILocation(line: 116, column: 36, scope: !677)
!746 = !DILocation(line: 116, column: 41, scope: !677)
!747 = !DILocation(line: 116, column: 46, scope: !677)
!748 = !DILocation(line: 116, column: 2, scope: !677)
!749 = !DILocation(line: 117, column: 1, scope: !677)
!750 = !DILocation(line: 117, column: 1, scope: !751)
!751 = !DILexicalBlockFile(scope: !677, file: !316, discriminator: 1)
!752 = distinct !DISubprogram(name: "key_configure_create", scope: !316, file: !316, line: 457, type: !678, isLocal: true, isDefinition: true, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!753 = !DILocalVariable(name: "id", arg: 1, scope: !752, file: !316, line: 457, type: !329)
!754 = !DILocation(line: 457, column: 46, scope: !752)
!755 = !DILocalVariable(name: "key", arg: 2, scope: !752, file: !316, line: 457, type: !329)
!756 = !DILocation(line: 457, column: 62, scope: !752)
!757 = !DILocalVariable(name: "data", arg: 3, scope: !752, file: !316, line: 458, type: !329)
!758 = !DILocation(line: 458, column: 18, scope: !752)
!759 = !DILocalVariable(name: "info", scope: !752, file: !316, line: 460, type: !331)
!760 = !DILocation(line: 460, column: 15, scope: !752)
!761 = !DILocalVariable(name: "rec", scope: !752, file: !316, line: 461, type: !387)
!762 = !DILocation(line: 461, column: 11, scope: !752)
!763 = !DILocation(line: 463, column: 2, scope: !752)
!764 = distinct !{!764, !763}
!765 = !DILocation(line: 463, column: 10, scope: !766)
!766 = !DILexicalBlockFile(scope: !767, file: !316, discriminator: 1)
!767 = distinct !DILexicalBlock(scope: !768, file: !316, line: 463, column: 10)
!768 = distinct !DILexicalBlock(scope: !752, file: !316, line: 463, column: 4)
!769 = !DILocation(line: 463, column: 13, scope: !766)
!770 = !DILocation(line: 463, column: 5, scope: !771)
!771 = !DILexicalBlockFile(scope: !772, file: !316, discriminator: 2)
!772 = distinct !DILexicalBlock(scope: !767, file: !316, line: 463, column: 3)
!773 = !DILocation(line: 463, column: 14, scope: !774)
!774 = !DILexicalBlockFile(scope: !775, file: !316, discriminator: 3)
!775 = distinct !DILexicalBlock(scope: !767, file: !316, line: 463, column: 12)
!776 = !DILocation(line: 463, column: 97, scope: !774)
!777 = !DILocation(line: 463, column: 108, scope: !778)
!778 = !DILexicalBlockFile(scope: !768, file: !316, discriminator: 4)
!779 = !DILocation(line: 464, column: 2, scope: !752)
!780 = distinct !{!780, !779}
!781 = !DILocation(line: 464, column: 10, scope: !782)
!782 = !DILexicalBlockFile(scope: !783, file: !316, discriminator: 1)
!783 = distinct !DILexicalBlock(scope: !784, file: !316, line: 464, column: 10)
!784 = distinct !DILexicalBlock(scope: !752, file: !316, line: 464, column: 4)
!785 = !DILocation(line: 464, column: 14, scope: !782)
!786 = !DILocation(line: 464, column: 1, scope: !782)
!787 = !DILocation(line: 464, column: 5, scope: !788)
!788 = !DILexicalBlockFile(scope: !783, file: !316, discriminator: 2)
!789 = !DILocation(line: 464, column: 4, scope: !788)
!790 = !DILocation(line: 464, column: 9, scope: !788)
!791 = !DILocation(line: 464, column: 10, scope: !788)
!792 = !DILocation(line: 464, column: 20, scope: !793)
!793 = !DILexicalBlockFile(scope: !794, file: !316, discriminator: 3)
!794 = distinct !DILexicalBlock(scope: !783, file: !316, line: 464, column: 18)
!795 = !DILocation(line: 464, column: 29, scope: !796)
!796 = !DILexicalBlockFile(scope: !797, file: !316, discriminator: 4)
!797 = distinct !DILexicalBlock(scope: !783, file: !316, line: 464, column: 27)
!798 = !DILocation(line: 464, column: 130, scope: !796)
!799 = !DILocation(line: 464, column: 141, scope: !800)
!800 = !DILexicalBlockFile(scope: !784, file: !316, discriminator: 5)
!801 = !DILocation(line: 466, column: 23, scope: !752)
!802 = !DILocation(line: 466, column: 9, scope: !752)
!803 = !DILocation(line: 466, column: 7, scope: !752)
!804 = !DILocation(line: 467, column: 6, scope: !805)
!805 = distinct !DILexicalBlock(scope: !752, file: !316, line: 467, column: 6)
!806 = !DILocation(line: 467, column: 11, scope: !805)
!807 = !DILocation(line: 467, column: 6, scope: !752)
!808 = !DILocation(line: 468, column: 3, scope: !805)
!809 = !DILocation(line: 470, column: 28, scope: !752)
!810 = !DILocation(line: 470, column: 34, scope: !752)
!811 = !DILocation(line: 470, column: 8, scope: !752)
!812 = !DILocation(line: 470, column: 6, scope: !752)
!813 = !DILocation(line: 471, column: 6, scope: !814)
!814 = distinct !DILexicalBlock(scope: !752, file: !316, line: 471, column: 6)
!815 = !DILocation(line: 471, column: 10, scope: !814)
!816 = !DILocation(line: 471, column: 6, scope: !752)
!817 = !DILocation(line: 472, column: 25, scope: !814)
!818 = !DILocation(line: 472, column: 3, scope: !814)
!819 = !DILocation(line: 474, column: 21, scope: !752)
!820 = !DILocation(line: 474, column: 9, scope: !752)
!821 = !DILocation(line: 474, column: 6, scope: !752)
!822 = !DILocation(line: 475, column: 22, scope: !752)
!823 = !DILocation(line: 475, column: 13, scope: !752)
!824 = !DILocation(line: 475, column: 2, scope: !752)
!825 = !DILocation(line: 475, column: 7, scope: !752)
!826 = !DILocation(line: 475, column: 11, scope: !752)
!827 = !DILocation(line: 476, column: 14, scope: !752)
!828 = !DILocation(line: 476, column: 2, scope: !752)
!829 = !DILocation(line: 476, column: 7, scope: !752)
!830 = !DILocation(line: 476, column: 12, scope: !752)
!831 = !DILocation(line: 477, column: 23, scope: !752)
!832 = !DILocation(line: 477, column: 14, scope: !752)
!833 = !DILocation(line: 477, column: 2, scope: !752)
!834 = !DILocation(line: 477, column: 7, scope: !752)
!835 = !DILocation(line: 477, column: 12, scope: !752)
!836 = !DILocation(line: 478, column: 30, scope: !752)
!837 = !DILocation(line: 478, column: 36, scope: !752)
!838 = !DILocation(line: 478, column: 42, scope: !752)
!839 = !DILocation(line: 478, column: 15, scope: !752)
!840 = !DILocation(line: 478, column: 2, scope: !752)
!841 = !DILocation(line: 478, column: 8, scope: !752)
!842 = !DILocation(line: 478, column: 13, scope: !752)
!843 = !DILocation(line: 479, column: 22, scope: !752)
!844 = !DILocation(line: 479, column: 28, scope: !752)
!845 = !DILocation(line: 479, column: 33, scope: !752)
!846 = !DILocation(line: 479, column: 38, scope: !752)
!847 = !DILocation(line: 479, column: 2, scope: !752)
!848 = !DILocation(line: 481, column: 32, scope: !752)
!849 = !DILocation(line: 481, column: 2, scope: !752)
!850 = !DILocation(line: 483, column: 7, scope: !851)
!851 = distinct !DILexicalBlock(scope: !752, file: !316, line: 483, column: 6)
!852 = !DILocation(line: 483, column: 6, scope: !752)
!853 = !DILocation(line: 484, column: 17, scope: !851)
!854 = !DILocation(line: 485, column: 1, scope: !752)
!855 = distinct !DISubprogram(name: "key_unbind", scope: !316, file: !316, line: 542, type: !856, isLocal: false, isDefinition: true, scopeLine: 543, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!856 = !DISubroutineType(types: !857)
!857 = !{null, !329, !347}
!858 = !DILocalVariable(name: "id", arg: 1, scope: !855, file: !316, line: 542, type: !329)
!859 = !DILocation(line: 542, column: 29, scope: !855)
!860 = !DILocalVariable(name: "func", arg: 2, scope: !855, file: !316, line: 542, type: !347)
!861 = !DILocation(line: 542, column: 45, scope: !855)
!862 = !DILocalVariable(name: "info", scope: !855, file: !316, line: 544, type: !331)
!863 = !DILocation(line: 544, column: 15, scope: !855)
!864 = !DILocalVariable(name: "key", scope: !855, file: !316, line: 545, type: !319)
!865 = !DILocation(line: 545, column: 8, scope: !855)
!866 = !DILocation(line: 547, column: 2, scope: !855)
!867 = distinct !{!867, !866}
!868 = !DILocation(line: 547, column: 10, scope: !869)
!869 = !DILexicalBlockFile(scope: !870, file: !316, discriminator: 1)
!870 = distinct !DILexicalBlock(scope: !871, file: !316, line: 547, column: 10)
!871 = distinct !DILexicalBlock(scope: !855, file: !316, line: 547, column: 4)
!872 = !DILocation(line: 547, column: 13, scope: !869)
!873 = !DILocation(line: 547, column: 5, scope: !874)
!874 = !DILexicalBlockFile(scope: !875, file: !316, discriminator: 2)
!875 = distinct !DILexicalBlock(scope: !870, file: !316, line: 547, column: 3)
!876 = !DILocation(line: 547, column: 14, scope: !877)
!877 = !DILexicalBlockFile(scope: !878, file: !316, discriminator: 3)
!878 = distinct !DILexicalBlock(scope: !870, file: !316, line: 547, column: 12)
!879 = !DILocation(line: 547, column: 97, scope: !877)
!880 = !DILocation(line: 547, column: 108, scope: !881)
!881 = !DILexicalBlockFile(scope: !871, file: !316, discriminator: 4)
!882 = !DILocation(line: 548, column: 2, scope: !855)
!883 = distinct !{!883, !882}
!884 = !DILocation(line: 548, column: 10, scope: !885)
!885 = !DILexicalBlockFile(scope: !886, file: !316, discriminator: 1)
!886 = distinct !DILexicalBlock(scope: !887, file: !316, line: 548, column: 10)
!887 = distinct !DILexicalBlock(scope: !855, file: !316, line: 548, column: 4)
!888 = !DILocation(line: 548, column: 15, scope: !885)
!889 = !DILocation(line: 548, column: 5, scope: !890)
!890 = !DILexicalBlockFile(scope: !891, file: !316, discriminator: 2)
!891 = distinct !DILexicalBlock(scope: !886, file: !316, line: 548, column: 3)
!892 = !DILocation(line: 548, column: 14, scope: !893)
!893 = !DILexicalBlockFile(scope: !894, file: !316, discriminator: 3)
!894 = distinct !DILexicalBlock(scope: !886, file: !316, line: 548, column: 12)
!895 = !DILocation(line: 548, column: 99, scope: !893)
!896 = !DILocation(line: 548, column: 110, scope: !897)
!897 = !DILexicalBlockFile(scope: !887, file: !316, discriminator: 4)
!898 = !DILocation(line: 551, column: 23, scope: !855)
!899 = !DILocation(line: 551, column: 9, scope: !855)
!900 = !DILocation(line: 551, column: 7, scope: !855)
!901 = !DILocation(line: 552, column: 6, scope: !902)
!902 = distinct !DILexicalBlock(scope: !855, file: !316, line: 552, column: 6)
!903 = !DILocation(line: 552, column: 11, scope: !902)
!904 = !DILocation(line: 552, column: 6, scope: !855)
!905 = !DILocation(line: 553, column: 18, scope: !902)
!906 = !DILocation(line: 553, column: 3, scope: !902)
!907 = !DILocation(line: 556, column: 28, scope: !855)
!908 = !DILocation(line: 556, column: 8, scope: !855)
!909 = !DILocation(line: 556, column: 6, scope: !855)
!910 = !DILocation(line: 557, column: 22, scope: !855)
!911 = !DILocation(line: 557, column: 43, scope: !855)
!912 = !DILocation(line: 557, column: 2, scope: !855)
!913 = !DILocation(line: 558, column: 9, scope: !855)
!914 = !DILocation(line: 558, column: 2, scope: !855)
!915 = !DILocation(line: 559, column: 1, scope: !855)
!916 = !DILocation(line: 559, column: 1, scope: !917)
!917 = !DILexicalBlockFile(scope: !855, file: !316, discriminator: 1)
!918 = distinct !DISubprogram(name: "keyinfo_remove", scope: !316, file: !316, line: 522, type: !919, isLocal: true, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!919 = !DISubroutineType(types: !920)
!920 = !{null, !331}
!921 = !DILocalVariable(name: "info", arg: 1, scope: !918, file: !316, line: 522, type: !331)
!922 = !DILocation(line: 522, column: 41, scope: !918)
!923 = !DILocation(line: 524, column: 2, scope: !918)
!924 = distinct !{!924, !923}
!925 = !DILocation(line: 524, column: 10, scope: !926)
!926 = !DILexicalBlockFile(scope: !927, file: !316, discriminator: 1)
!927 = distinct !DILexicalBlock(scope: !928, file: !316, line: 524, column: 10)
!928 = distinct !DILexicalBlock(scope: !918, file: !316, line: 524, column: 4)
!929 = !DILocation(line: 524, column: 15, scope: !926)
!930 = !DILocation(line: 524, column: 5, scope: !931)
!931 = !DILexicalBlockFile(scope: !932, file: !316, discriminator: 2)
!932 = distinct !DILexicalBlock(scope: !927, file: !316, line: 524, column: 3)
!933 = !DILocation(line: 524, column: 14, scope: !934)
!934 = !DILexicalBlockFile(scope: !935, file: !316, discriminator: 3)
!935 = distinct !DILexicalBlock(scope: !927, file: !316, line: 524, column: 12)
!936 = !DILocation(line: 524, column: 99, scope: !934)
!937 = !DILocation(line: 524, column: 110, scope: !938)
!938 = !DILexicalBlockFile(scope: !928, file: !316, discriminator: 4)
!939 = !DILocation(line: 526, column: 28, scope: !918)
!940 = !DILocation(line: 526, column: 38, scope: !918)
!941 = !DILocation(line: 526, column: 13, scope: !918)
!942 = !DILocation(line: 526, column: 11, scope: !918)
!943 = !DILocation(line: 527, column: 38, scope: !918)
!944 = !DILocation(line: 527, column: 2, scope: !918)
!945 = !DILocation(line: 530, column: 25, scope: !918)
!946 = !DILocation(line: 530, column: 31, scope: !918)
!947 = !DILocation(line: 530, column: 58, scope: !918)
!948 = !DILocation(line: 530, column: 9, scope: !918)
!949 = !DILocation(line: 531, column: 25, scope: !918)
!950 = !DILocation(line: 531, column: 31, scope: !918)
!951 = !DILocation(line: 531, column: 66, scope: !918)
!952 = !DILocation(line: 531, column: 9, scope: !918)
!953 = !DILocation(line: 534, column: 15, scope: !918)
!954 = !DILocation(line: 534, column: 21, scope: !918)
!955 = !DILocation(line: 534, column: 2, scope: !918)
!956 = !DILocation(line: 535, column: 15, scope: !918)
!957 = !DILocation(line: 535, column: 21, scope: !918)
!958 = !DILocation(line: 535, column: 2, scope: !918)
!959 = !DILocation(line: 536, column: 9, scope: !918)
!960 = !DILocation(line: 536, column: 15, scope: !918)
!961 = !DILocation(line: 536, column: 2, scope: !918)
!962 = !DILocation(line: 537, column: 9, scope: !918)
!963 = !DILocation(line: 537, column: 15, scope: !918)
!964 = !DILocation(line: 537, column: 2, scope: !918)
!965 = !DILocation(line: 538, column: 9, scope: !918)
!966 = !DILocation(line: 538, column: 2, scope: !918)
!967 = !DILocation(line: 539, column: 1, scope: !918)
!968 = !DILocation(line: 539, column: 1, scope: !969)
!969 = !DILexicalBlockFile(scope: !918, file: !316, discriminator: 1)
!970 = distinct !DISubprogram(name: "key_configure_add", scope: !316, file: !316, line: 562, type: !678, isLocal: false, isDefinition: true, scopeLine: 563, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!971 = !DILocalVariable(name: "id", arg: 1, scope: !970, file: !316, line: 562, type: !329)
!972 = !DILocation(line: 562, column: 36, scope: !970)
!973 = !DILocalVariable(name: "key", arg: 2, scope: !970, file: !316, line: 562, type: !329)
!974 = !DILocation(line: 562, column: 52, scope: !970)
!975 = !DILocalVariable(name: "data", arg: 3, scope: !970, file: !316, line: 562, type: !329)
!976 = !DILocation(line: 562, column: 69, scope: !970)
!977 = !DILocation(line: 564, column: 2, scope: !970)
!978 = distinct !{!978, !977}
!979 = !DILocation(line: 564, column: 10, scope: !980)
!980 = !DILexicalBlockFile(scope: !981, file: !316, discriminator: 1)
!981 = distinct !DILexicalBlock(scope: !982, file: !316, line: 564, column: 10)
!982 = distinct !DILexicalBlock(scope: !970, file: !316, line: 564, column: 4)
!983 = !DILocation(line: 564, column: 13, scope: !980)
!984 = !DILocation(line: 564, column: 5, scope: !985)
!985 = !DILexicalBlockFile(scope: !986, file: !316, discriminator: 2)
!986 = distinct !DILexicalBlock(scope: !981, file: !316, line: 564, column: 3)
!987 = !DILocation(line: 564, column: 14, scope: !988)
!988 = !DILexicalBlockFile(scope: !989, file: !316, discriminator: 3)
!989 = distinct !DILexicalBlock(scope: !981, file: !316, line: 564, column: 12)
!990 = !DILocation(line: 564, column: 97, scope: !988)
!991 = !DILocation(line: 564, column: 108, scope: !992)
!992 = !DILexicalBlockFile(scope: !982, file: !316, discriminator: 4)
!993 = !DILocation(line: 565, column: 2, scope: !970)
!994 = distinct !{!994, !993}
!995 = !DILocation(line: 565, column: 10, scope: !996)
!996 = !DILexicalBlockFile(scope: !997, file: !316, discriminator: 1)
!997 = distinct !DILexicalBlock(scope: !998, file: !316, line: 565, column: 10)
!998 = distinct !DILexicalBlock(scope: !970, file: !316, line: 565, column: 4)
!999 = !DILocation(line: 565, column: 14, scope: !996)
!1000 = !DILocation(line: 565, column: 1, scope: !996)
!1001 = !DILocation(line: 565, column: 5, scope: !1002)
!1002 = !DILexicalBlockFile(scope: !997, file: !316, discriminator: 2)
!1003 = !DILocation(line: 565, column: 4, scope: !1002)
!1004 = !DILocation(line: 565, column: 9, scope: !1002)
!1005 = !DILocation(line: 565, column: 10, scope: !1002)
!1006 = !DILocation(line: 565, column: 20, scope: !1007)
!1007 = !DILexicalBlockFile(scope: !1008, file: !316, discriminator: 3)
!1008 = distinct !DILexicalBlock(scope: !997, file: !316, line: 565, column: 18)
!1009 = !DILocation(line: 565, column: 29, scope: !1010)
!1010 = !DILexicalBlockFile(scope: !1011, file: !316, discriminator: 4)
!1011 = distinct !DILexicalBlock(scope: !997, file: !316, line: 565, column: 27)
!1012 = !DILocation(line: 565, column: 130, scope: !1010)
!1013 = !DILocation(line: 565, column: 141, scope: !1014)
!1014 = !DILexicalBlockFile(scope: !998, file: !316, discriminator: 5)
!1015 = !DILocation(line: 567, column: 23, scope: !970)
!1016 = !DILocation(line: 567, column: 27, scope: !970)
!1017 = !DILocation(line: 567, column: 32, scope: !970)
!1018 = !DILocation(line: 567, column: 2, scope: !970)
!1019 = !DILocation(line: 568, column: 17, scope: !970)
!1020 = !DILocation(line: 568, column: 21, scope: !970)
!1021 = !DILocation(line: 568, column: 26, scope: !970)
!1022 = !DILocation(line: 568, column: 2, scope: !970)
!1023 = !DILocation(line: 569, column: 1, scope: !970)
!1024 = !DILocation(line: 569, column: 1, scope: !1025)
!1025 = !DILexicalBlockFile(scope: !970, file: !316, discriminator: 1)
!1026 = distinct !DISubprogram(name: "keyconfig_save", scope: !316, file: !316, line: 138, type: !678, isLocal: true, isDefinition: true, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!1027 = !DILocalVariable(name: "id", arg: 1, scope: !1026, file: !316, line: 138, type: !329)
!1028 = !DILocation(line: 138, column: 40, scope: !1026)
!1029 = !DILocalVariable(name: "key", arg: 2, scope: !1026, file: !316, line: 138, type: !329)
!1030 = !DILocation(line: 138, column: 56, scope: !1026)
!1031 = !DILocalVariable(name: "data", arg: 3, scope: !1026, file: !316, line: 138, type: !329)
!1032 = !DILocation(line: 138, column: 73, scope: !1026)
!1033 = !DILocalVariable(name: "node", scope: !1026, file: !316, line: 140, type: !1034)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64, align: 64)
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "CONFIG_NODE", file: !31, line: 17, baseType: !1036)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CONFIG_NODE", file: !31, line: 20, size: 192, align: 64, elements: !1037)
!1037 = !{!1038, !1039, !1040}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1036, file: !31, line: 21, baseType: !354, size: 32, align: 32)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1036, file: !31, line: 22, baseType: !319, size: 64, align: 64, offset: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1036, file: !31, line: 23, baseType: !326, size: 64, align: 64, offset: 128)
!1041 = !DILocation(line: 140, column: 15, scope: !1026)
!1042 = !DILocation(line: 142, column: 2, scope: !1026)
!1043 = distinct !{!1043, !1042}
!1044 = !DILocation(line: 142, column: 10, scope: !1045)
!1045 = !DILexicalBlockFile(scope: !1046, file: !316, discriminator: 1)
!1046 = distinct !DILexicalBlock(scope: !1047, file: !316, line: 142, column: 10)
!1047 = distinct !DILexicalBlock(scope: !1026, file: !316, line: 142, column: 4)
!1048 = !DILocation(line: 142, column: 13, scope: !1045)
!1049 = !DILocation(line: 142, column: 5, scope: !1050)
!1050 = !DILexicalBlockFile(scope: !1051, file: !316, discriminator: 2)
!1051 = distinct !DILexicalBlock(scope: !1046, file: !316, line: 142, column: 3)
!1052 = !DILocation(line: 142, column: 14, scope: !1053)
!1053 = !DILexicalBlockFile(scope: !1054, file: !316, discriminator: 3)
!1054 = distinct !DILexicalBlock(scope: !1046, file: !316, line: 142, column: 12)
!1055 = !DILocation(line: 142, column: 97, scope: !1053)
!1056 = !DILocation(line: 142, column: 108, scope: !1057)
!1057 = !DILexicalBlockFile(scope: !1047, file: !316, discriminator: 4)
!1058 = !DILocation(line: 143, column: 2, scope: !1026)
!1059 = distinct !{!1059, !1058}
!1060 = !DILocation(line: 143, column: 10, scope: !1061)
!1061 = !DILexicalBlockFile(scope: !1062, file: !316, discriminator: 1)
!1062 = distinct !DILexicalBlock(scope: !1063, file: !316, line: 143, column: 10)
!1063 = distinct !DILexicalBlock(scope: !1026, file: !316, line: 143, column: 4)
!1064 = !DILocation(line: 143, column: 14, scope: !1061)
!1065 = !DILocation(line: 143, column: 5, scope: !1066)
!1066 = !DILexicalBlockFile(scope: !1067, file: !316, discriminator: 2)
!1067 = distinct !DILexicalBlock(scope: !1062, file: !316, line: 143, column: 3)
!1068 = !DILocation(line: 143, column: 14, scope: !1069)
!1069 = !DILexicalBlockFile(scope: !1070, file: !316, discriminator: 3)
!1070 = distinct !DILexicalBlock(scope: !1062, file: !316, line: 143, column: 12)
!1071 = !DILocation(line: 143, column: 98, scope: !1069)
!1072 = !DILocation(line: 143, column: 109, scope: !1073)
!1073 = !DILexicalBlockFile(scope: !1063, file: !316, discriminator: 4)
!1074 = !DILocation(line: 145, column: 25, scope: !1026)
!1075 = !DILocation(line: 145, column: 9, scope: !1026)
!1076 = !DILocation(line: 145, column: 7, scope: !1026)
!1077 = !DILocation(line: 146, column: 6, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1026, file: !316, line: 146, column: 6)
!1079 = !DILocation(line: 146, column: 11, scope: !1078)
!1080 = !DILocation(line: 146, column: 6, scope: !1026)
!1081 = !DILocation(line: 147, column: 31, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1078, file: !316, line: 146, column: 19)
!1083 = !DILocation(line: 147, column: 10, scope: !1082)
!1084 = !DILocation(line: 147, column: 8, scope: !1082)
!1085 = !DILocation(line: 148, column: 30, scope: !1082)
!1086 = !DILocation(line: 148, column: 42, scope: !1082)
!1087 = !DILocation(line: 148, column: 10, scope: !1082)
!1088 = !DILocation(line: 148, column: 8, scope: !1082)
!1089 = !DILocation(line: 149, column: 2, scope: !1082)
!1090 = !DILocation(line: 151, column: 22, scope: !1026)
!1091 = !DILocation(line: 151, column: 34, scope: !1026)
!1092 = !DILocation(line: 151, column: 47, scope: !1026)
!1093 = !DILocation(line: 151, column: 2, scope: !1026)
!1094 = !DILocation(line: 152, column: 22, scope: !1026)
!1095 = !DILocation(line: 152, column: 34, scope: !1026)
!1096 = !DILocation(line: 152, column: 46, scope: !1026)
!1097 = !DILocation(line: 152, column: 2, scope: !1026)
!1098 = !DILocation(line: 153, column: 22, scope: !1026)
!1099 = !DILocation(line: 153, column: 34, scope: !1026)
!1100 = !DILocation(line: 153, column: 48, scope: !1026)
!1101 = !DILocation(line: 153, column: 2, scope: !1026)
!1102 = !DILocation(line: 154, column: 1, scope: !1026)
!1103 = !DILocation(line: 154, column: 1, scope: !1104)
!1104 = !DILexicalBlockFile(scope: !1026, file: !316, discriminator: 1)
!1105 = distinct !DISubprogram(name: "key_configure_remove", scope: !316, file: !316, line: 572, type: !1106, isLocal: false, isDefinition: true, scopeLine: 573, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{null, !329}
!1108 = !DILocalVariable(name: "key", arg: 1, scope: !1105, file: !316, line: 572, type: !329)
!1109 = !DILocation(line: 572, column: 39, scope: !1105)
!1110 = !DILocalVariable(name: "rec", scope: !1105, file: !316, line: 574, type: !387)
!1111 = !DILocation(line: 574, column: 11, scope: !1105)
!1112 = !DILocation(line: 576, column: 2, scope: !1105)
!1113 = distinct !{!1113, !1112}
!1114 = !DILocation(line: 576, column: 10, scope: !1115)
!1115 = !DILexicalBlockFile(scope: !1116, file: !316, discriminator: 1)
!1116 = distinct !DILexicalBlock(scope: !1117, file: !316, line: 576, column: 10)
!1117 = distinct !DILexicalBlock(scope: !1105, file: !316, line: 576, column: 4)
!1118 = !DILocation(line: 576, column: 14, scope: !1115)
!1119 = !DILocation(line: 576, column: 5, scope: !1120)
!1120 = !DILexicalBlockFile(scope: !1121, file: !316, discriminator: 2)
!1121 = distinct !DILexicalBlock(scope: !1116, file: !316, line: 576, column: 3)
!1122 = !DILocation(line: 576, column: 14, scope: !1123)
!1123 = !DILexicalBlockFile(scope: !1124, file: !316, discriminator: 3)
!1124 = distinct !DILexicalBlock(scope: !1116, file: !316, line: 576, column: 12)
!1125 = !DILocation(line: 576, column: 98, scope: !1123)
!1126 = !DILocation(line: 576, column: 109, scope: !1127)
!1127 = !DILexicalBlockFile(scope: !1117, file: !316, discriminator: 4)
!1128 = !DILocation(line: 578, column: 18, scope: !1105)
!1129 = !DILocation(line: 578, column: 2, scope: !1105)
!1130 = !DILocation(line: 580, column: 28, scope: !1105)
!1131 = !DILocation(line: 580, column: 34, scope: !1105)
!1132 = !DILocation(line: 580, column: 8, scope: !1105)
!1133 = !DILocation(line: 580, column: 6, scope: !1105)
!1134 = !DILocation(line: 581, column: 6, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1105, file: !316, line: 581, column: 6)
!1136 = !DILocation(line: 581, column: 10, scope: !1135)
!1137 = !DILocation(line: 581, column: 6, scope: !1105)
!1138 = !DILocation(line: 581, column: 18, scope: !1139)
!1139 = !DILexicalBlockFile(scope: !1135, file: !316, discriminator: 1)
!1140 = !DILocation(line: 583, column: 24, scope: !1105)
!1141 = !DILocation(line: 583, column: 2, scope: !1105)
!1142 = !DILocation(line: 584, column: 1, scope: !1105)
!1143 = !DILocation(line: 584, column: 1, scope: !1144)
!1144 = !DILexicalBlockFile(scope: !1105, file: !316, discriminator: 1)
!1145 = distinct !DISubprogram(name: "keyconfig_clear", scope: !316, file: !316, line: 156, type: !1106, isLocal: true, isDefinition: true, scopeLine: 157, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!1146 = !DILocalVariable(name: "key", arg: 1, scope: !1145, file: !316, line: 156, type: !329)
!1147 = !DILocation(line: 156, column: 41, scope: !1145)
!1148 = !DILocalVariable(name: "node", scope: !1145, file: !316, line: 158, type: !1034)
!1149 = !DILocation(line: 158, column: 15, scope: !1145)
!1150 = !DILocalVariable(name: "rec", scope: !1145, file: !316, line: 159, type: !387)
!1151 = !DILocation(line: 159, column: 11, scope: !1145)
!1152 = !DILocation(line: 161, column: 2, scope: !1145)
!1153 = distinct !{!1153, !1152}
!1154 = !DILocation(line: 161, column: 10, scope: !1155)
!1155 = !DILexicalBlockFile(scope: !1156, file: !316, discriminator: 1)
!1156 = distinct !DILexicalBlock(scope: !1157, file: !316, line: 161, column: 10)
!1157 = distinct !DILexicalBlock(scope: !1145, file: !316, line: 161, column: 4)
!1158 = !DILocation(line: 161, column: 14, scope: !1155)
!1159 = !DILocation(line: 161, column: 5, scope: !1160)
!1160 = !DILexicalBlockFile(scope: !1161, file: !316, discriminator: 2)
!1161 = distinct !DILexicalBlock(scope: !1156, file: !316, line: 161, column: 3)
!1162 = !DILocation(line: 161, column: 14, scope: !1163)
!1163 = !DILexicalBlockFile(scope: !1164, file: !316, discriminator: 3)
!1164 = distinct !DILexicalBlock(scope: !1156, file: !316, line: 161, column: 12)
!1165 = !DILocation(line: 161, column: 98, scope: !1163)
!1166 = !DILocation(line: 161, column: 109, scope: !1167)
!1167 = !DILexicalBlockFile(scope: !1157, file: !316, discriminator: 4)
!1168 = !DILocation(line: 164, column: 25, scope: !1145)
!1169 = !DILocation(line: 164, column: 9, scope: !1145)
!1170 = !DILocation(line: 164, column: 7, scope: !1145)
!1171 = !DILocation(line: 165, column: 6, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1145, file: !316, line: 165, column: 6)
!1173 = !DILocation(line: 165, column: 11, scope: !1172)
!1174 = !DILocation(line: 165, column: 6, scope: !1145)
!1175 = !DILocation(line: 166, column: 22, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1172, file: !316, line: 165, column: 19)
!1177 = !DILocation(line: 166, column: 55, scope: !1176)
!1178 = !DILocation(line: 166, column: 34, scope: !1176)
!1179 = !DILocation(line: 166, column: 86, scope: !1176)
!1180 = !DILocation(line: 166, column: 3, scope: !1181)
!1181 = !DILexicalBlockFile(scope: !1176, file: !316, discriminator: 1)
!1182 = !DILocation(line: 168, column: 2, scope: !1176)
!1183 = !DILocation(line: 169, column: 33, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1145, file: !316, line: 169, column: 6)
!1185 = !DILocation(line: 169, column: 47, scope: !1184)
!1186 = !DILocation(line: 169, column: 13, scope: !1184)
!1187 = !DILocation(line: 169, column: 11, scope: !1184)
!1188 = !DILocation(line: 169, column: 53, scope: !1184)
!1189 = !DILocation(line: 169, column: 6, scope: !1145)
!1190 = !DILocation(line: 170, column: 31, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1184, file: !316, line: 169, column: 61)
!1192 = !DILocation(line: 170, column: 10, scope: !1191)
!1193 = !DILocation(line: 170, column: 8, scope: !1191)
!1194 = !DILocation(line: 171, column: 30, scope: !1191)
!1195 = !DILocation(line: 171, column: 42, scope: !1191)
!1196 = !DILocation(line: 171, column: 10, scope: !1191)
!1197 = !DILocation(line: 171, column: 8, scope: !1191)
!1198 = !DILocation(line: 172, column: 23, scope: !1191)
!1199 = !DILocation(line: 172, column: 35, scope: !1191)
!1200 = !DILocation(line: 172, column: 48, scope: !1191)
!1201 = !DILocation(line: 172, column: 3, scope: !1191)
!1202 = !DILocation(line: 173, column: 2, scope: !1191)
!1203 = !DILocation(line: 174, column: 1, scope: !1145)
!1204 = distinct !DISubprogram(name: "key_configure_destroy", scope: !316, file: !316, line: 439, type: !1205, isLocal: true, isDefinition: true, scopeLine: 440, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{null, !387}
!1207 = !DILocalVariable(name: "rec", arg: 1, scope: !1204, file: !316, line: 439, type: !387)
!1208 = !DILocation(line: 439, column: 44, scope: !1204)
!1209 = !DILocation(line: 441, column: 2, scope: !1204)
!1210 = distinct !{!1210, !1209}
!1211 = !DILocation(line: 441, column: 10, scope: !1212)
!1212 = !DILexicalBlockFile(scope: !1213, file: !316, discriminator: 1)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !316, line: 441, column: 10)
!1214 = distinct !DILexicalBlock(scope: !1204, file: !316, line: 441, column: 4)
!1215 = !DILocation(line: 441, column: 14, scope: !1212)
!1216 = !DILocation(line: 441, column: 5, scope: !1217)
!1217 = !DILexicalBlockFile(scope: !1218, file: !316, discriminator: 2)
!1218 = distinct !DILexicalBlock(scope: !1213, file: !316, line: 441, column: 3)
!1219 = !DILocation(line: 441, column: 14, scope: !1220)
!1220 = !DILexicalBlockFile(scope: !1221, file: !316, discriminator: 3)
!1221 = distinct !DILexicalBlock(scope: !1213, file: !316, line: 441, column: 12)
!1222 = !DILocation(line: 441, column: 98, scope: !1220)
!1223 = !DILocation(line: 441, column: 109, scope: !1224)
!1224 = !DILexicalBlockFile(scope: !1214, file: !316, discriminator: 4)
!1225 = !DILocation(line: 443, column: 35, scope: !1204)
!1226 = !DILocation(line: 443, column: 40, scope: !1204)
!1227 = !DILocation(line: 443, column: 46, scope: !1204)
!1228 = !DILocation(line: 443, column: 52, scope: !1204)
!1229 = !DILocation(line: 443, column: 20, scope: !1204)
!1230 = !DILocation(line: 443, column: 2, scope: !1204)
!1231 = !DILocation(line: 443, column: 7, scope: !1204)
!1232 = !DILocation(line: 443, column: 13, scope: !1204)
!1233 = !DILocation(line: 443, column: 18, scope: !1204)
!1234 = !DILocation(line: 444, column: 22, scope: !1204)
!1235 = !DILocation(line: 444, column: 28, scope: !1204)
!1236 = !DILocation(line: 444, column: 33, scope: !1204)
!1237 = !DILocation(line: 444, column: 2, scope: !1204)
!1238 = !DILocation(line: 446, column: 34, scope: !1204)
!1239 = !DILocation(line: 446, column: 2, scope: !1204)
!1240 = !DILocation(line: 448, column: 7, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1204, file: !316, line: 448, column: 6)
!1242 = !DILocation(line: 448, column: 6, scope: !1204)
!1243 = !DILocation(line: 449, column: 17, scope: !1241)
!1244 = !DILocation(line: 451, column: 9, scope: !1204)
!1245 = !DILocation(line: 451, column: 14, scope: !1204)
!1246 = !DILocation(line: 451, column: 2, scope: !1204)
!1247 = !DILocation(line: 452, column: 9, scope: !1204)
!1248 = !DILocation(line: 452, column: 14, scope: !1204)
!1249 = !DILocation(line: 452, column: 2, scope: !1204)
!1250 = !DILocation(line: 453, column: 9, scope: !1204)
!1251 = !DILocation(line: 453, column: 2, scope: !1204)
!1252 = !DILocation(line: 454, column: 1, scope: !1204)
!1253 = !DILocation(line: 454, column: 1, scope: !1254)
!1254 = !DILexicalBlockFile(scope: !1204, file: !316, discriminator: 1)
!1255 = distinct !DISubprogram(name: "key_configure_reset", scope: !316, file: !316, line: 587, type: !1106, isLocal: false, isDefinition: true, scopeLine: 588, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!1256 = !DILocalVariable(name: "key", arg: 1, scope: !1255, file: !316, line: 587, type: !329)
!1257 = !DILocation(line: 587, column: 38, scope: !1255)
!1258 = !DILocalVariable(name: "rec", scope: !1255, file: !316, line: 589, type: !387)
!1259 = !DILocation(line: 589, column: 11, scope: !1255)
!1260 = !DILocalVariable(name: "node", scope: !1255, file: !316, line: 590, type: !1034)
!1261 = !DILocation(line: 590, column: 15, scope: !1255)
!1262 = !DILocation(line: 592, column: 2, scope: !1255)
!1263 = distinct !{!1263, !1262}
!1264 = !DILocation(line: 592, column: 10, scope: !1265)
!1265 = !DILexicalBlockFile(scope: !1266, file: !316, discriminator: 1)
!1266 = distinct !DILexicalBlock(scope: !1267, file: !316, line: 592, column: 10)
!1267 = distinct !DILexicalBlock(scope: !1255, file: !316, line: 592, column: 4)
!1268 = !DILocation(line: 592, column: 14, scope: !1265)
!1269 = !DILocation(line: 592, column: 5, scope: !1270)
!1270 = !DILexicalBlockFile(scope: !1271, file: !316, discriminator: 2)
!1271 = distinct !DILexicalBlock(scope: !1266, file: !316, line: 592, column: 3)
!1272 = !DILocation(line: 592, column: 14, scope: !1273)
!1273 = !DILexicalBlockFile(scope: !1274, file: !316, discriminator: 3)
!1274 = distinct !DILexicalBlock(scope: !1266, file: !316, line: 592, column: 12)
!1275 = !DILocation(line: 592, column: 98, scope: !1273)
!1276 = !DILocation(line: 592, column: 109, scope: !1277)
!1277 = !DILexicalBlockFile(scope: !1267, file: !316, discriminator: 4)
!1278 = !DILocation(line: 594, column: 25, scope: !1255)
!1279 = !DILocation(line: 594, column: 9, scope: !1255)
!1280 = !DILocation(line: 594, column: 7, scope: !1255)
!1281 = !DILocation(line: 595, column: 6, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1255, file: !316, line: 595, column: 6)
!1283 = !DILocation(line: 595, column: 11, scope: !1282)
!1284 = !DILocation(line: 595, column: 6, scope: !1255)
!1285 = !DILocation(line: 596, column: 22, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1282, file: !316, line: 595, column: 19)
!1287 = !DILocation(line: 596, column: 55, scope: !1286)
!1288 = !DILocation(line: 596, column: 34, scope: !1286)
!1289 = !DILocation(line: 596, column: 86, scope: !1286)
!1290 = !DILocation(line: 596, column: 3, scope: !1291)
!1291 = !DILexicalBlockFile(scope: !1286, file: !316, discriminator: 1)
!1292 = !DILocation(line: 597, column: 2, scope: !1286)
!1293 = !DILocation(line: 599, column: 33, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1255, file: !316, line: 599, column: 6)
!1295 = !DILocation(line: 599, column: 47, scope: !1294)
!1296 = !DILocation(line: 599, column: 13, scope: !1294)
!1297 = !DILocation(line: 599, column: 11, scope: !1294)
!1298 = !DILocation(line: 599, column: 53, scope: !1294)
!1299 = !DILocation(line: 599, column: 6, scope: !1255)
!1300 = !DILocation(line: 600, column: 24, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1294, file: !316, line: 599, column: 61)
!1302 = !DILocation(line: 600, column: 29, scope: !1301)
!1303 = !DILocation(line: 600, column: 35, scope: !1301)
!1304 = !DILocation(line: 600, column: 39, scope: !1301)
!1305 = !DILocation(line: 600, column: 44, scope: !1301)
!1306 = !DILocation(line: 600, column: 49, scope: !1301)
!1307 = !DILocation(line: 600, column: 54, scope: !1301)
!1308 = !DILocation(line: 600, column: 3, scope: !1301)
!1309 = !DILocation(line: 601, column: 2, scope: !1301)
!1310 = !DILocation(line: 602, column: 29, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1294, file: !316, line: 601, column: 9)
!1312 = !DILocation(line: 602, column: 35, scope: !1311)
!1313 = !DILocation(line: 602, column: 9, scope: !1311)
!1314 = !DILocation(line: 602, column: 7, scope: !1311)
!1315 = !DILocation(line: 603, column: 7, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1311, file: !316, line: 603, column: 7)
!1317 = !DILocation(line: 603, column: 11, scope: !1316)
!1318 = !DILocation(line: 603, column: 7, scope: !1311)
!1319 = !DILocation(line: 604, column: 4, scope: !1316)
!1320 = !DILocation(line: 606, column: 25, scope: !1311)
!1321 = !DILocation(line: 606, column: 3, scope: !1311)
!1322 = !DILocation(line: 608, column: 1, scope: !1255)
!1323 = distinct !DISubprogram(name: "key_config_find", scope: !316, file: !316, line: 119, type: !1324, isLocal: true, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!1034, !329}
!1326 = !DILocalVariable(name: "key", arg: 1, scope: !1323, file: !316, line: 119, type: !329)
!1327 = !DILocation(line: 119, column: 49, scope: !1323)
!1328 = !DILocalVariable(name: "node", scope: !1323, file: !316, line: 121, type: !1034)
!1329 = !DILocation(line: 121, column: 15, scope: !1323)
!1330 = !DILocalVariable(name: "tmp", scope: !1323, file: !316, line: 122, type: !338)
!1331 = !DILocation(line: 122, column: 17, scope: !1323)
!1332 = !DILocation(line: 125, column: 30, scope: !1323)
!1333 = !DILocation(line: 125, column: 9, scope: !1323)
!1334 = !DILocation(line: 125, column: 7, scope: !1323)
!1335 = !DILocation(line: 127, column: 26, scope: !1323)
!1336 = !DILocation(line: 127, column: 32, scope: !1323)
!1337 = !DILocation(line: 127, column: 8, scope: !1323)
!1338 = !DILocation(line: 127, column: 6, scope: !1323)
!1339 = !DILocation(line: 128, column: 2, scope: !1323)
!1340 = !DILocation(line: 128, column: 9, scope: !1341)
!1341 = !DILexicalBlockFile(scope: !1342, file: !316, discriminator: 1)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !316, line: 128, column: 2)
!1343 = distinct !DILexicalBlock(scope: !1323, file: !316, line: 128, column: 2)
!1344 = !DILocation(line: 128, column: 13, scope: !1341)
!1345 = !DILocation(line: 128, column: 2, scope: !1341)
!1346 = !DILocation(line: 129, column: 10, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1342, file: !316, line: 128, column: 50)
!1348 = !DILocation(line: 129, column: 15, scope: !1347)
!1349 = !DILocation(line: 129, column: 8, scope: !1347)
!1350 = !DILocation(line: 131, column: 37, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1347, file: !316, line: 131, column: 7)
!1352 = !DILocation(line: 131, column: 17, scope: !1351)
!1353 = !DILocation(line: 131, column: 55, scope: !1351)
!1354 = !DILocation(line: 131, column: 7, scope: !1355)
!1355 = !DILexicalBlockFile(scope: !1351, file: !316, discriminator: 1)
!1356 = !DILocation(line: 131, column: 60, scope: !1351)
!1357 = !DILocation(line: 131, column: 7, scope: !1347)
!1358 = !DILocation(line: 132, column: 32, scope: !1351)
!1359 = !DILocation(line: 132, column: 25, scope: !1351)
!1360 = !DILocation(line: 133, column: 2, scope: !1347)
!1361 = !DILocation(line: 128, column: 44, scope: !1362)
!1362 = !DILexicalBlockFile(scope: !1342, file: !316, discriminator: 2)
!1363 = !DILocation(line: 128, column: 27, scope: !1362)
!1364 = !DILocation(line: 128, column: 25, scope: !1362)
!1365 = !DILocation(line: 128, column: 2, scope: !1362)
!1366 = distinct !{!1366, !1339}
!1367 = !DILocation(line: 135, column: 9, scope: !1323)
!1368 = !DILocation(line: 136, column: 1, scope: !1323)
!1369 = distinct !DISubprogram(name: "key_pressed", scope: !316, file: !316, line: 653, type: !1370, isLocal: false, isDefinition: true, scopeLine: 654, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!354, !312, !329}
!1372 = !DILocalVariable(name: "keyboard", arg: 1, scope: !1369, file: !316, line: 653, type: !312)
!1373 = !DILocation(line: 653, column: 31, scope: !1369)
!1374 = !DILocalVariable(name: "key", arg: 2, scope: !1369, file: !316, line: 653, type: !329)
!1375 = !DILocation(line: 653, column: 53, scope: !1369)
!1376 = !DILocalVariable(name: "rec", scope: !1369, file: !316, line: 655, type: !387)
!1377 = !DILocation(line: 655, column: 11, scope: !1369)
!1378 = !DILocalVariable(name: "combo", scope: !1369, file: !316, line: 656, type: !319)
!1379 = !DILocation(line: 656, column: 15, scope: !1369)
!1380 = !DILocalVariable(name: "first_key", scope: !1369, file: !316, line: 657, type: !354)
!1381 = !DILocation(line: 657, column: 13, scope: !1369)
!1382 = !DILocalVariable(name: "consumed", scope: !1369, file: !316, line: 657, type: !354)
!1383 = !DILocation(line: 657, column: 24, scope: !1369)
!1384 = !DILocation(line: 659, column: 2, scope: !1369)
!1385 = distinct !{!1385, !1384}
!1386 = !DILocation(line: 659, column: 10, scope: !1387)
!1387 = !DILexicalBlockFile(scope: !1388, file: !316, discriminator: 1)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !316, line: 659, column: 10)
!1389 = distinct !DILexicalBlock(scope: !1369, file: !316, line: 659, column: 4)
!1390 = !DILocation(line: 659, column: 19, scope: !1387)
!1391 = !DILocation(line: 659, column: 5, scope: !1392)
!1392 = !DILexicalBlockFile(scope: !1393, file: !316, discriminator: 2)
!1393 = distinct !DILexicalBlock(scope: !1388, file: !316, line: 659, column: 3)
!1394 = !DILocation(line: 659, column: 14, scope: !1395)
!1395 = !DILexicalBlockFile(scope: !1396, file: !316, discriminator: 3)
!1396 = distinct !DILexicalBlock(scope: !1388, file: !316, line: 659, column: 12)
!1397 = !DILocation(line: 659, column: 103, scope: !1395)
!1398 = !DILocation(line: 659, column: 120, scope: !1399)
!1399 = !DILexicalBlockFile(scope: !1389, file: !316, discriminator: 4)
!1400 = !DILocation(line: 660, column: 2, scope: !1369)
!1401 = distinct !{!1401, !1400}
!1402 = !DILocation(line: 660, column: 10, scope: !1403)
!1403 = !DILexicalBlockFile(scope: !1404, file: !316, discriminator: 1)
!1404 = distinct !DILexicalBlock(scope: !1405, file: !316, line: 660, column: 10)
!1405 = distinct !DILexicalBlock(scope: !1369, file: !316, line: 660, column: 4)
!1406 = !DILocation(line: 660, column: 14, scope: !1403)
!1407 = !DILocation(line: 660, column: 1, scope: !1403)
!1408 = !DILocation(line: 660, column: 5, scope: !1409)
!1409 = !DILexicalBlockFile(scope: !1404, file: !316, discriminator: 2)
!1410 = !DILocation(line: 660, column: 4, scope: !1409)
!1411 = !DILocation(line: 660, column: 9, scope: !1409)
!1412 = !DILocation(line: 660, column: 10, scope: !1409)
!1413 = !DILocation(line: 660, column: 20, scope: !1414)
!1414 = !DILexicalBlockFile(scope: !1415, file: !316, discriminator: 3)
!1415 = distinct !DILexicalBlock(scope: !1404, file: !316, line: 660, column: 18)
!1416 = !DILocation(line: 660, column: 29, scope: !1417)
!1417 = !DILexicalBlockFile(scope: !1418, file: !316, discriminator: 4)
!1418 = distinct !DILexicalBlock(scope: !1404, file: !316, line: 660, column: 27)
!1419 = !DILocation(line: 660, column: 130, scope: !1417)
!1420 = !DILocation(line: 660, column: 147, scope: !1421)
!1421 = !DILexicalBlockFile(scope: !1405, file: !316, discriminator: 5)
!1422 = !DILocation(line: 662, column: 6, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1369, file: !316, line: 662, column: 6)
!1424 = !DILocation(line: 662, column: 16, scope: !1423)
!1425 = !DILocation(line: 662, column: 26, scope: !1423)
!1426 = !DILocation(line: 662, column: 6, scope: !1369)
!1427 = !DILocation(line: 663, column: 19, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1423, file: !316, line: 662, column: 31)
!1429 = !DILocation(line: 663, column: 29, scope: !1428)
!1430 = !DILocation(line: 663, column: 3, scope: !1428)
!1431 = !DILocation(line: 664, column: 3, scope: !1428)
!1432 = !DILocation(line: 664, column: 13, scope: !1428)
!1433 = !DILocation(line: 664, column: 23, scope: !1428)
!1434 = !DILocation(line: 665, column: 2, scope: !1428)
!1435 = !DILocation(line: 667, column: 6, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1369, file: !316, line: 667, column: 6)
!1437 = !DILocation(line: 667, column: 16, scope: !1436)
!1438 = !DILocation(line: 667, column: 26, scope: !1436)
!1439 = !DILocation(line: 667, column: 33, scope: !1436)
!1440 = !DILocation(line: 667, column: 36, scope: !1441)
!1441 = !DILexicalBlockFile(scope: !1436, file: !316, discriminator: 1)
!1442 = !DILocation(line: 667, column: 43, scope: !1441)
!1443 = !DILocation(line: 667, column: 51, scope: !1441)
!1444 = !DILocation(line: 668, column: 39, scope: !1436)
!1445 = !DILocation(line: 668, column: 17, scope: !1436)
!1446 = !DILocation(line: 668, column: 7, scope: !1436)
!1447 = !DILocation(line: 667, column: 6, scope: !1448)
!1448 = !DILexicalBlockFile(scope: !1369, file: !316, discriminator: 2)
!1449 = !DILocation(line: 670, column: 3, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1436, file: !316, line: 668, column: 48)
!1451 = !DILocation(line: 673, column: 21, scope: !1369)
!1452 = !DILocation(line: 673, column: 31, scope: !1369)
!1453 = !DILocation(line: 673, column: 41, scope: !1369)
!1454 = !DILocation(line: 673, column: 19, scope: !1369)
!1455 = !DILocation(line: 674, column: 10, scope: !1369)
!1456 = !DILocation(line: 674, column: 20, scope: !1369)
!1457 = !DILocation(line: 674, column: 30, scope: !1369)
!1458 = !DILocation(line: 674, column: 48, scope: !1459)
!1459 = !DILexicalBlockFile(scope: !1369, file: !316, discriminator: 1)
!1460 = !DILocation(line: 674, column: 39, scope: !1459)
!1461 = !DILocation(line: 674, column: 10, scope: !1459)
!1462 = !DILocation(line: 675, column: 29, scope: !1369)
!1463 = !DILocation(line: 675, column: 39, scope: !1369)
!1464 = !DILocation(line: 675, column: 55, scope: !1369)
!1465 = !DILocation(line: 675, column: 17, scope: !1369)
!1466 = !DILocation(line: 674, column: 10, scope: !1448)
!1467 = !DILocation(line: 674, column: 10, scope: !1468)
!1468 = !DILexicalBlockFile(scope: !1369, file: !316, discriminator: 3)
!1469 = !DILocation(line: 674, column: 8, scope: !1468)
!1470 = !DILocation(line: 676, column: 2, scope: !1369)
!1471 = distinct !{!1471, !1470}
!1472 = !DILocation(line: 676, column: 11, scope: !1473)
!1473 = !DILexicalBlockFile(scope: !1474, file: !316, discriminator: 1)
!1474 = distinct !DILexicalBlock(scope: !1475, file: !316, line: 676, column: 11)
!1475 = distinct !DILexicalBlock(scope: !1369, file: !316, line: 676, column: 5)
!1476 = !DILocation(line: 676, column: 21, scope: !1473)
!1477 = !DILocation(line: 676, column: 41, scope: !1478)
!1478 = !DILexicalBlockFile(scope: !1479, file: !316, discriminator: 2)
!1479 = distinct !DILexicalBlock(scope: !1474, file: !316, line: 676, column: 32)
!1480 = !DILocation(line: 676, column: 51, scope: !1478)
!1481 = !DILocation(line: 676, column: 34, scope: !1478)
!1482 = !DILocation(line: 676, column: 64, scope: !1478)
!1483 = !DILocation(line: 676, column: 74, scope: !1478)
!1484 = !DILocation(line: 676, column: 85, scope: !1478)
!1485 = !DILocation(line: 676, column: 3, scope: !1478)
!1486 = !DILocation(line: 676, column: 5, scope: !1487)
!1487 = !DILexicalBlockFile(scope: !1475, file: !316, discriminator: 3)
!1488 = !DILocation(line: 678, column: 22, scope: !1369)
!1489 = !DILocation(line: 680, column: 8, scope: !1369)
!1490 = !DILocation(line: 678, column: 8, scope: !1369)
!1491 = !DILocation(line: 678, column: 6, scope: !1369)
!1492 = !DILocation(line: 681, column: 6, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1369, file: !316, line: 681, column: 6)
!1494 = !DILocation(line: 681, column: 10, scope: !1493)
!1495 = !DILocation(line: 681, column: 6, scope: !1369)
!1496 = !DILocation(line: 684, column: 24, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1493, file: !316, line: 681, column: 18)
!1498 = !DILocation(line: 684, column: 17, scope: !1497)
!1499 = !DILocation(line: 685, column: 10, scope: !1497)
!1500 = !DILocation(line: 685, column: 3, scope: !1497)
!1501 = !DILocation(line: 688, column: 20, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1369, file: !316, line: 688, column: 6)
!1503 = !DILocation(line: 688, column: 32, scope: !1502)
!1504 = !DILocation(line: 688, column: 6, scope: !1502)
!1505 = !DILocation(line: 688, column: 42, scope: !1502)
!1506 = !DILocation(line: 688, column: 39, scope: !1502)
!1507 = !DILocation(line: 688, column: 6, scope: !1369)
!1508 = !DILocation(line: 690, column: 25, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1502, file: !316, line: 688, column: 47)
!1510 = !DILocation(line: 690, column: 3, scope: !1509)
!1511 = !DILocation(line: 690, column: 13, scope: !1509)
!1512 = !DILocation(line: 690, column: 23, scope: !1509)
!1513 = !DILocation(line: 692, column: 7, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1509, file: !316, line: 692, column: 7)
!1515 = !DILocation(line: 692, column: 19, scope: !1514)
!1516 = !DILocation(line: 692, column: 7, scope: !1509)
!1517 = !DILocation(line: 694, column: 19, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1514, file: !316, line: 692, column: 24)
!1519 = !DILocation(line: 696, column: 12, scope: !1518)
!1520 = !DILocation(line: 694, column: 5, scope: !1518)
!1521 = !DILocation(line: 693, column: 4, scope: !1518)
!1522 = !DILocation(line: 693, column: 14, scope: !1518)
!1523 = !DILocation(line: 693, column: 24, scope: !1518)
!1524 = !DILocation(line: 697, column: 3, scope: !1518)
!1525 = !DILocation(line: 698, column: 17, scope: !1509)
!1526 = !DILocation(line: 702, column: 16, scope: !1369)
!1527 = !DILocation(line: 702, column: 9, scope: !1369)
!1528 = !DILocation(line: 703, column: 29, scope: !1369)
!1529 = !DILocation(line: 703, column: 39, scope: !1369)
!1530 = !DILocation(line: 703, column: 13, scope: !1369)
!1531 = !DILocation(line: 703, column: 11, scope: !1369)
!1532 = !DILocation(line: 706, column: 9, scope: !1369)
!1533 = !DILocation(line: 706, column: 2, scope: !1369)
!1534 = !DILocation(line: 707, column: 1, scope: !1369)
!1535 = distinct !DISubprogram(name: "key_states_search", scope: !316, file: !316, line: 622, type: !1536, isLocal: true, isDefinition: true, scopeLine: 624, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!354, !1538, !1538}
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64, align: 64)
!1539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!1540 = !DILocalVariable(name: "combo", arg: 1, scope: !1535, file: !316, line: 622, type: !1538)
!1541 = !DILocation(line: 622, column: 51, scope: !1535)
!1542 = !DILocalVariable(name: "search", arg: 2, scope: !1535, file: !316, line: 623, type: !1538)
!1543 = !DILocation(line: 623, column: 30, scope: !1535)
!1544 = !DILocation(line: 625, column: 2, scope: !1535)
!1545 = !DILocation(line: 625, column: 10, scope: !1546)
!1546 = !DILexicalBlockFile(scope: !1535, file: !316, discriminator: 1)
!1547 = !DILocation(line: 625, column: 9, scope: !1546)
!1548 = !DILocation(line: 625, column: 17, scope: !1546)
!1549 = !DILocation(line: 625, column: 2, scope: !1546)
!1550 = !DILocation(line: 626, column: 8, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !316, line: 626, column: 7)
!1552 = distinct !DILexicalBlock(scope: !1535, file: !316, line: 625, column: 26)
!1553 = !DILocation(line: 626, column: 7, scope: !1551)
!1554 = !DILocation(line: 626, column: 18, scope: !1551)
!1555 = !DILocation(line: 626, column: 17, scope: !1551)
!1556 = !DILocation(line: 626, column: 14, scope: !1551)
!1557 = !DILocation(line: 626, column: 7, scope: !1552)
!1558 = !DILocation(line: 627, column: 12, scope: !1551)
!1559 = !DILocation(line: 627, column: 11, scope: !1551)
!1560 = !DILocation(line: 627, column: 22, scope: !1551)
!1561 = !DILocation(line: 627, column: 21, scope: !1551)
!1562 = !DILocation(line: 627, column: 19, scope: !1551)
!1563 = !DILocation(line: 627, column: 4, scope: !1551)
!1564 = !DILocation(line: 628, column: 23, scope: !1552)
!1565 = !DILocation(line: 628, column: 32, scope: !1552)
!1566 = !DILocation(line: 625, column: 2, scope: !1567)
!1567 = !DILexicalBlockFile(scope: !1535, file: !316, discriminator: 2)
!1568 = distinct !{!1568, !1544}
!1569 = !DILocation(line: 631, column: 9, scope: !1535)
!1570 = !DILocation(line: 632, column: 1, scope: !1535)
!1571 = distinct !DISubprogram(name: "key_timeout_expired", scope: !316, file: !316, line: 634, type: !1572, isLocal: true, isDefinition: true, scopeLine: 635, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!367, !312}
!1574 = !DILocalVariable(name: "keyboard", arg: 1, scope: !1571, file: !316, line: 634, type: !312)
!1575 = !DILocation(line: 634, column: 51, scope: !1571)
!1576 = !DILocalVariable(name: "rec", scope: !1571, file: !316, line: 636, type: !387)
!1577 = !DILocation(line: 636, column: 11, scope: !1571)
!1578 = !DILocation(line: 638, column: 2, scope: !1571)
!1579 = !DILocation(line: 638, column: 12, scope: !1571)
!1580 = !DILocation(line: 638, column: 22, scope: !1571)
!1581 = !DILocation(line: 642, column: 22, scope: !1571)
!1582 = !DILocation(line: 642, column: 34, scope: !1571)
!1583 = !DILocation(line: 642, column: 44, scope: !1571)
!1584 = !DILocation(line: 642, column: 8, scope: !1571)
!1585 = !DILocation(line: 642, column: 6, scope: !1571)
!1586 = !DILocation(line: 644, column: 2, scope: !1571)
!1587 = distinct !{!1587, !1586}
!1588 = !DILocation(line: 644, column: 11, scope: !1589)
!1589 = !DILexicalBlockFile(scope: !1590, file: !316, discriminator: 1)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !316, line: 644, column: 11)
!1591 = distinct !DILexicalBlock(scope: !1571, file: !316, line: 644, column: 5)
!1592 = !DILocation(line: 644, column: 21, scope: !1589)
!1593 = !DILocation(line: 644, column: 41, scope: !1594)
!1594 = !DILexicalBlockFile(scope: !1595, file: !316, discriminator: 2)
!1595 = distinct !DILexicalBlock(scope: !1590, file: !316, line: 644, column: 32)
!1596 = !DILocation(line: 644, column: 51, scope: !1594)
!1597 = !DILocation(line: 644, column: 34, scope: !1594)
!1598 = !DILocation(line: 644, column: 64, scope: !1594)
!1599 = !DILocation(line: 644, column: 74, scope: !1594)
!1600 = !DILocation(line: 644, column: 85, scope: !1594)
!1601 = !DILocation(line: 644, column: 3, scope: !1594)
!1602 = !DILocation(line: 644, column: 5, scope: !1603)
!1603 = !DILexicalBlockFile(scope: !1591, file: !316, discriminator: 3)
!1604 = !DILocation(line: 646, column: 6, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1571, file: !316, line: 646, column: 6)
!1606 = !DILocation(line: 646, column: 10, scope: !1605)
!1607 = !DILocation(line: 646, column: 6, scope: !1571)
!1608 = !DILocation(line: 647, column: 25, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1605, file: !316, line: 646, column: 18)
!1610 = !DILocation(line: 647, column: 35, scope: !1609)
!1611 = !DILocation(line: 647, column: 9, scope: !1609)
!1612 = !DILocation(line: 648, column: 2, scope: !1609)
!1613 = !DILocation(line: 650, column: 2, scope: !1571)
!1614 = distinct !DISubprogram(name: "key_emit_signal", scope: !316, file: !316, line: 610, type: !1615, isLocal: true, isDefinition: true, scopeLine: 611, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!354, !312, !387}
!1617 = !DILocalVariable(name: "keyboard", arg: 1, scope: !1614, file: !316, line: 610, type: !312)
!1618 = !DILocation(line: 610, column: 42, scope: !1614)
!1619 = !DILocalVariable(name: "key", arg: 2, scope: !1614, file: !316, line: 610, type: !387)
!1620 = !DILocation(line: 610, column: 61, scope: !1614)
!1621 = !DILocalVariable(name: "consumed", scope: !1614, file: !316, line: 612, type: !354)
!1622 = !DILocation(line: 612, column: 6, scope: !1614)
!1623 = !DILocalVariable(name: "str", scope: !1614, file: !316, line: 613, type: !319)
!1624 = !DILocation(line: 613, column: 15, scope: !1614)
!1625 = !DILocation(line: 615, column: 28, scope: !1614)
!1626 = !DILocation(line: 615, column: 33, scope: !1614)
!1627 = !DILocation(line: 615, column: 39, scope: !1614)
!1628 = !DILocation(line: 615, column: 8, scope: !1614)
!1629 = !DILocation(line: 615, column: 6, scope: !1614)
!1630 = !DILocation(line: 616, column: 25, scope: !1614)
!1631 = !DILocation(line: 616, column: 33, scope: !1614)
!1632 = !DILocation(line: 616, column: 38, scope: !1614)
!1633 = !DILocation(line: 616, column: 44, scope: !1614)
!1634 = !DILocation(line: 616, column: 54, scope: !1614)
!1635 = !DILocation(line: 616, column: 64, scope: !1614)
!1636 = !DILocation(line: 616, column: 69, scope: !1614)
!1637 = !DILocation(line: 616, column: 13, scope: !1614)
!1638 = !DILocation(line: 616, column: 11, scope: !1614)
!1639 = !DILocation(line: 617, column: 9, scope: !1614)
!1640 = !DILocation(line: 617, column: 2, scope: !1614)
!1641 = !DILocation(line: 619, column: 16, scope: !1614)
!1642 = !DILocation(line: 619, column: 9, scope: !1614)
!1643 = distinct !DISubprogram(name: "keyboard_entry_redirect", scope: !316, file: !316, line: 709, type: !1644, isLocal: false, isDefinition: true, scopeLine: 711, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{null, !347, !329, !354, !326}
!1646 = !DILocalVariable(name: "func", arg: 1, scope: !1643, file: !316, line: 709, type: !347)
!1647 = !DILocation(line: 709, column: 42, scope: !1643)
!1648 = !DILocalVariable(name: "entry", arg: 2, scope: !1643, file: !316, line: 709, type: !329)
!1649 = !DILocation(line: 709, column: 60, scope: !1643)
!1650 = !DILocalVariable(name: "flags", arg: 3, scope: !1643, file: !316, line: 710, type: !354)
!1651 = !DILocation(line: 710, column: 13, scope: !1643)
!1652 = !DILocalVariable(name: "data", arg: 4, scope: !1643, file: !316, line: 710, type: !326)
!1653 = !DILocation(line: 710, column: 26, scope: !1643)
!1654 = !DILocation(line: 712, column: 39, scope: !1643)
!1655 = !DILocation(line: 712, column: 45, scope: !1643)
!1656 = !DILocation(line: 713, column: 28, scope: !1643)
!1657 = !DILocation(line: 713, column: 19, scope: !1643)
!1658 = !DILocation(line: 713, column: 8, scope: !1643)
!1659 = !DILocation(line: 713, column: 37, scope: !1643)
!1660 = !DILocation(line: 712, column: 2, scope: !1643)
!1661 = !DILocation(line: 714, column: 1, scope: !1643)
!1662 = distinct !DISubprogram(name: "keyboard_init", scope: !316, file: !316, line: 961, type: !510, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!1663 = !DILocation(line: 963, column: 9, scope: !1662)
!1664 = !DILocation(line: 963, column: 7, scope: !1662)
!1665 = !DILocation(line: 965, column: 17, scope: !1662)
!1666 = !DILocation(line: 965, column: 15, scope: !1662)
!1667 = !DILocation(line: 967, column: 11, scope: !1662)
!1668 = !DILocation(line: 968, column: 15, scope: !1662)
!1669 = !DILocation(line: 968, column: 13, scope: !1662)
!1670 = !DILocation(line: 969, column: 27, scope: !1662)
!1671 = !DILocation(line: 970, column: 2, scope: !1662)
!1672 = !DILocation(line: 972, column: 2, scope: !1662)
!1673 = !DILocation(line: 974, column: 2, scope: !1662)
!1674 = !DILocation(line: 975, column: 2, scope: !1662)
!1675 = !DILocation(line: 976, column: 2, scope: !1662)
!1676 = !DILocation(line: 977, column: 2, scope: !1662)
!1677 = !DILocation(line: 980, column: 2, scope: !1662)
!1678 = !DILocation(line: 981, column: 2, scope: !1662)
!1679 = !DILocation(line: 982, column: 2, scope: !1662)
!1680 = !DILocation(line: 984, column: 2, scope: !1662)
!1681 = !DILocation(line: 985, column: 2, scope: !1662)
!1682 = !DILocation(line: 986, column: 1, scope: !1662)
!1683 = distinct !DISubprogram(name: "sig_command", scope: !316, file: !316, line: 716, type: !1106, isLocal: true, isDefinition: true, scopeLine: 717, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!1684 = !DILocalVariable(name: "data", arg: 1, scope: !1683, file: !316, line: 716, type: !329)
!1685 = !DILocation(line: 716, column: 37, scope: !1683)
!1686 = !DILocalVariable(name: "cmdchars", scope: !1683, file: !316, line: 718, type: !329)
!1687 = !DILocation(line: 718, column: 14, scope: !1683)
!1688 = !DILocalVariable(name: "str", scope: !1683, file: !316, line: 719, type: !319)
!1689 = !DILocation(line: 719, column: 8, scope: !1683)
!1690 = !DILocation(line: 721, column: 13, scope: !1683)
!1691 = !DILocation(line: 721, column: 11, scope: !1683)
!1692 = !DILocation(line: 722, column: 15, scope: !1683)
!1693 = !DILocation(line: 722, column: 26, scope: !1683)
!1694 = !DILocation(line: 722, column: 25, scope: !1683)
!1695 = !DILocation(line: 722, column: 8, scope: !1683)
!1696 = !DILocation(line: 722, column: 32, scope: !1683)
!1697 = !DILocation(line: 722, column: 50, scope: !1698)
!1698 = !DILexicalBlockFile(scope: !1683, file: !316, discriminator: 1)
!1699 = !DILocation(line: 722, column: 41, scope: !1698)
!1700 = !DILocation(line: 722, column: 8, scope: !1698)
!1701 = !DILocation(line: 723, column: 28, scope: !1683)
!1702 = !DILocation(line: 723, column: 27, scope: !1683)
!1703 = !DILocation(line: 723, column: 38, scope: !1683)
!1704 = !DILocation(line: 723, column: 3, scope: !1683)
!1705 = !DILocation(line: 722, column: 8, scope: !1706)
!1706 = !DILexicalBlockFile(scope: !1683, file: !316, discriminator: 2)
!1707 = !DILocation(line: 722, column: 8, scope: !1708)
!1708 = !DILexicalBlockFile(scope: !1683, file: !316, discriminator: 3)
!1709 = !DILocation(line: 722, column: 6, scope: !1708)
!1710 = !DILocation(line: 725, column: 33, scope: !1683)
!1711 = !DILocation(line: 725, column: 38, scope: !1683)
!1712 = !DILocation(line: 725, column: 50, scope: !1683)
!1713 = !DILocation(line: 725, column: 65, scope: !1683)
!1714 = !DILocation(line: 725, column: 77, scope: !1683)
!1715 = !DILocation(line: 725, column: 2, scope: !1683)
!1716 = !DILocation(line: 727, column: 9, scope: !1683)
!1717 = !DILocation(line: 727, column: 2, scope: !1683)
!1718 = !DILocation(line: 728, column: 1, scope: !1683)
!1719 = distinct !DISubprogram(name: "sig_key", scope: !316, file: !316, line: 730, type: !1106, isLocal: true, isDefinition: true, scopeLine: 731, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!1720 = !DILocalVariable(name: "data", arg: 1, scope: !1719, file: !316, line: 730, type: !329)
!1721 = !DILocation(line: 730, column: 33, scope: !1719)
!1722 = !DILocation(line: 733, column: 1, scope: !1719)
!1723 = distinct !DISubprogram(name: "sig_multi", scope: !316, file: !316, line: 735, type: !1724, isLocal: true, isDefinition: true, scopeLine: 736, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{null, !329, !326}
!1726 = !DILocalVariable(name: "data", arg: 1, scope: !1723, file: !316, line: 735, type: !329)
!1727 = !DILocation(line: 735, column: 35, scope: !1723)
!1728 = !DILocalVariable(name: "gui_data", arg: 2, scope: !1723, file: !316, line: 735, type: !326)
!1729 = !DILocation(line: 735, column: 47, scope: !1723)
!1730 = !DILocalVariable(name: "info", scope: !1723, file: !316, line: 737, type: !331)
!1731 = !DILocation(line: 737, column: 22, scope: !1723)
!1732 = !DILocalVariable(name: "list", scope: !1723, file: !316, line: 738, type: !1733)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64, align: 64)
!1734 = !DILocation(line: 738, column: 9, scope: !1723)
!1735 = !DILocalVariable(name: "tmp", scope: !1723, file: !316, line: 738, type: !1733)
!1736 = !DILocation(line: 738, column: 17, scope: !1723)
!1737 = !DILocalVariable(name: "p", scope: !1723, file: !316, line: 738, type: !319)
!1738 = !DILocation(line: 738, column: 23, scope: !1723)
!1739 = !DILocalVariable(name: "str", scope: !1723, file: !316, line: 738, type: !319)
!1740 = !DILocation(line: 738, column: 27, scope: !1723)
!1741 = !DILocation(line: 740, column: 20, scope: !1723)
!1742 = !DILocation(line: 740, column: 9, scope: !1723)
!1743 = !DILocation(line: 740, column: 7, scope: !1723)
!1744 = !DILocation(line: 741, column: 13, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1723, file: !316, line: 741, column: 2)
!1746 = !DILocation(line: 741, column: 11, scope: !1745)
!1747 = !DILocation(line: 741, column: 7, scope: !1745)
!1748 = !DILocation(line: 741, column: 20, scope: !1749)
!1749 = !DILexicalBlockFile(scope: !1750, file: !316, discriminator: 1)
!1750 = distinct !DILexicalBlock(scope: !1745, file: !316, line: 741, column: 2)
!1751 = !DILocation(line: 741, column: 19, scope: !1749)
!1752 = !DILocation(line: 741, column: 24, scope: !1749)
!1753 = !DILocation(line: 741, column: 2, scope: !1749)
!1754 = !DILocation(line: 742, column: 15, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1750, file: !316, line: 741, column: 39)
!1756 = !DILocation(line: 742, column: 14, scope: !1755)
!1757 = !DILocation(line: 742, column: 7, scope: !1755)
!1758 = !DILocation(line: 742, column: 5, scope: !1755)
!1759 = !DILocation(line: 743, column: 7, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1755, file: !316, line: 743, column: 7)
!1761 = !DILocation(line: 743, column: 9, scope: !1760)
!1762 = !DILocation(line: 743, column: 7, scope: !1755)
!1763 = !DILocation(line: 743, column: 19, scope: !1764)
!1764 = !DILexicalBlockFile(scope: !1760, file: !316, discriminator: 1)
!1765 = !DILocation(line: 743, column: 22, scope: !1764)
!1766 = !DILocation(line: 743, column: 17, scope: !1764)
!1767 = !DILocation(line: 743, column: 37, scope: !1768)
!1768 = !DILexicalBlockFile(scope: !1760, file: !316, discriminator: 2)
!1769 = !DILocation(line: 745, column: 25, scope: !1755)
!1770 = !DILocation(line: 745, column: 24, scope: !1755)
!1771 = !DILocation(line: 745, column: 10, scope: !1755)
!1772 = !DILocation(line: 745, column: 8, scope: !1755)
!1773 = !DILocation(line: 746, column: 7, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1755, file: !316, line: 746, column: 7)
!1775 = !DILocation(line: 746, column: 12, scope: !1774)
!1776 = !DILocation(line: 746, column: 7, scope: !1755)
!1777 = !DILocation(line: 747, column: 30, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1774, file: !316, line: 746, column: 20)
!1779 = !DILocation(line: 747, column: 36, scope: !1778)
!1780 = !DILocation(line: 747, column: 10, scope: !1778)
!1781 = !DILocation(line: 747, column: 8, scope: !1778)
!1782 = !DILocation(line: 748, column: 16, scope: !1778)
!1783 = !DILocation(line: 748, column: 24, scope: !1778)
!1784 = !DILocation(line: 748, column: 27, scope: !1778)
!1785 = !DILocation(line: 748, column: 37, scope: !1778)
!1786 = !DILocation(line: 748, column: 4, scope: !1778)
!1787 = !DILocation(line: 749, column: 11, scope: !1778)
!1788 = !DILocation(line: 749, column: 4, scope: !1778)
!1789 = !DILocation(line: 750, column: 3, scope: !1778)
!1790 = !DILocation(line: 751, column: 2, scope: !1755)
!1791 = !DILocation(line: 741, column: 35, scope: !1792)
!1792 = !DILexicalBlockFile(scope: !1750, file: !316, discriminator: 2)
!1793 = !DILocation(line: 741, column: 2, scope: !1792)
!1794 = distinct !{!1794, !1795}
!1795 = !DILocation(line: 741, column: 2, scope: !1723)
!1796 = !DILocation(line: 752, column: 20, scope: !1723)
!1797 = !DILocation(line: 752, column: 9, scope: !1723)
!1798 = !DILocation(line: 753, column: 1, scope: !1723)
!1799 = distinct !DISubprogram(name: "sig_nothing", scope: !316, file: !316, line: 755, type: !1106, isLocal: true, isDefinition: true, scopeLine: 756, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!1800 = !DILocalVariable(name: "data", arg: 1, scope: !1799, file: !316, line: 755, type: !329)
!1801 = !DILocation(line: 755, column: 37, scope: !1799)
!1802 = !DILocation(line: 757, column: 1, scope: !1799)
!1803 = distinct !DISubprogram(name: "read_keyboard_config", scope: !316, file: !316, line: 929, type: !510, isLocal: true, isDefinition: true, scopeLine: 930, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!1804 = !DILocalVariable(name: "node", scope: !1803, file: !316, line: 931, type: !1034)
!1805 = !DILocation(line: 931, column: 15, scope: !1803)
!1806 = !DILocalVariable(name: "tmp", scope: !1803, file: !316, line: 932, type: !338)
!1807 = !DILocation(line: 932, column: 10, scope: !1803)
!1808 = !DILocation(line: 934, column: 9, scope: !1803)
!1809 = !DILocation(line: 936, column: 2, scope: !1803)
!1810 = !DILocation(line: 938, column: 30, scope: !1803)
!1811 = !DILocation(line: 938, column: 9, scope: !1803)
!1812 = !DILocation(line: 938, column: 7, scope: !1803)
!1813 = !DILocation(line: 939, column: 6, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1803, file: !316, line: 939, column: 6)
!1815 = !DILocation(line: 939, column: 11, scope: !1814)
!1816 = !DILocation(line: 939, column: 6, scope: !1803)
!1817 = !DILocation(line: 940, column: 3, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1814, file: !316, line: 939, column: 19)
!1819 = !DILocation(line: 941, column: 3, scope: !1818)
!1820 = !DILocation(line: 945, column: 6, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1803, file: !316, line: 945, column: 6)
!1822 = !DILocation(line: 945, column: 12, scope: !1821)
!1823 = !DILocation(line: 945, column: 17, scope: !1821)
!1824 = !DILocation(line: 945, column: 6, scope: !1803)
!1825 = !DILocation(line: 946, column: 36, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1821, file: !316, line: 945, column: 36)
!1827 = !DILocation(line: 946, column: 18, scope: !1826)
!1828 = !DILocation(line: 946, column: 17, scope: !1826)
!1829 = !DILocation(line: 947, column: 3, scope: !1826)
!1830 = !DILocation(line: 948, column: 3, scope: !1826)
!1831 = !DILocation(line: 951, column: 26, scope: !1803)
!1832 = !DILocation(line: 951, column: 32, scope: !1803)
!1833 = !DILocation(line: 951, column: 8, scope: !1803)
!1834 = !DILocation(line: 951, column: 6, scope: !1803)
!1835 = !DILocation(line: 952, column: 2, scope: !1803)
!1836 = !DILocation(line: 952, column: 9, scope: !1837)
!1837 = !DILexicalBlockFile(scope: !1838, file: !316, discriminator: 1)
!1838 = distinct !DILexicalBlock(scope: !1839, file: !316, line: 952, column: 2)
!1839 = distinct !DILexicalBlock(scope: !1803, file: !316, line: 952, column: 2)
!1840 = !DILocation(line: 952, column: 13, scope: !1837)
!1841 = !DILocation(line: 952, column: 2, scope: !1837)
!1842 = !DILocation(line: 953, column: 19, scope: !1838)
!1843 = !DILocation(line: 953, column: 24, scope: !1838)
!1844 = !DILocation(line: 953, column: 3, scope: !1838)
!1845 = !DILocation(line: 952, column: 44, scope: !1846)
!1846 = !DILexicalBlockFile(scope: !1838, file: !316, discriminator: 2)
!1847 = !DILocation(line: 952, column: 27, scope: !1846)
!1848 = !DILocation(line: 952, column: 25, scope: !1846)
!1849 = !DILocation(line: 952, column: 2, scope: !1846)
!1850 = distinct !{!1850, !1835}
!1851 = !DILocation(line: 955, column: 9, scope: !1803)
!1852 = !DILocation(line: 958, column: 16, scope: !1803)
!1853 = !DILocation(line: 958, column: 14, scope: !1803)
!1854 = !DILocation(line: 959, column: 1, scope: !1803)
!1855 = !DILocation(line: 959, column: 1, scope: !1856)
!1856 = !DILexicalBlockFile(scope: !1803, file: !316, discriminator: 1)
!1857 = distinct !DISubprogram(name: "sig_complete_bind", scope: !316, file: !316, line: 866, type: !1858, isLocal: true, isDefinition: true, scopeLine: 869, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{null, !1860, !1869, !329, !329, !1939}
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64, align: 64)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64, align: 64)
!1862 = !DIDerivedType(tag: DW_TAG_typedef, name: "GList", file: !1863, line: 37, baseType: !1864)
!1863 = !DIFile(filename: "/usr/include/glib-2.0/glib/glist.h", directory: "/home/lichi/Desktop/irssi/task1")
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GList", file: !1863, line: 39, size: 192, align: 64, elements: !1865)
!1865 = !{!1866, !1867, !1868}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1864, file: !1863, line: 41, baseType: !344, size: 64, align: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1864, file: !1863, line: 42, baseType: !1861, size: 64, align: 64, offset: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1864, file: !1863, line: 43, baseType: !1861, size: 64, align: 64, offset: 128)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64, align: 64)
!1870 = !DIDerivedType(tag: DW_TAG_typedef, name: "WINDOW_REC", file: !1871, line: 117, baseType: !1872)
!1871 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WINDOW_REC", file: !1873, line: 28, size: 1280, align: 64, elements: !1874)
!1873 = !DIFile(filename: "fe-windows.h", directory: "/home/lichi/Desktop/irssi/task1")
!1874 = !{!1875, !1876, !1877, !1878, !1879, !1880, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "refnum", scope: !1872, file: !1873, line: 29, baseType: !354, size: 32, align: 32)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1872, file: !1873, line: 30, baseType: !319, size: 64, align: 64, offset: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !1872, file: !1873, line: 32, baseType: !354, size: 32, align: 32, offset: 128)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !1872, file: !1873, line: 32, baseType: !354, size: 32, align: 32, offset: 160)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !1872, file: !1873, line: 34, baseType: !338, size: 64, align: 64, offset: 192)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1872, file: !1873, line: 35, baseType: !1881, size: 64, align: 64, offset: 256)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64, align: 64)
!1882 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !1871, line: 108, baseType: !1883)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !1884, line: 5, size: 704, align: 64, elements: !1885)
!1884 = !DIFile(filename: "../../../src/core/window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!1885 = !{!1886, !1888, !1889, !1890, !1891, !1895, !1896, !1897, !1902, !1903, !1904, !1908}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1883, file: !1887, line: 3, baseType: !354, size: 32, align: 32)
!1887 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !1883, file: !1887, line: 4, baseType: !354, size: 32, align: 32, offset: 32)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !1883, file: !1887, line: 5, baseType: !403, size: 64, align: 64, offset: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !1883, file: !1887, line: 7, baseType: !326, size: 64, align: 64, offset: 128)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1883, file: !1887, line: 8, baseType: !1892, size: 64, align: 64, offset: 192)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64, align: 64)
!1893 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !1871, line: 107, baseType: !1894)
!1894 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !1871, line: 107, flags: DIFlagFwdDecl)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !1883, file: !1887, line: 9, baseType: !319, size: 64, align: 64, offset: 256)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1883, file: !1887, line: 10, baseType: !319, size: 64, align: 64, offset: 320)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !1883, file: !1887, line: 11, baseType: !1898, size: 64, align: 64, offset: 384)
!1898 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !1899, line: 75, baseType: !1900)
!1899 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!1900 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1901, line: 139, baseType: !369)
!1901 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !1883, file: !1887, line: 12, baseType: !354, size: 32, align: 32, offset: 448)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !1883, file: !1887, line: 13, baseType: !319, size: 64, align: 64, offset: 512)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !1883, file: !1887, line: 15, baseType: !1905, size: 64, align: 64, offset: 576)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64, align: 64)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{null, !1881}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !1883, file: !1887, line: 17, baseType: !1909, size: 64, align: 64, offset: 640)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64, align: 64)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{!329, !1881}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "active_server", scope: !1872, file: !1873, line: 36, baseType: !1892, size: 64, align: 64, offset: 320)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "connect_server", scope: !1872, file: !1873, line: 37, baseType: !1892, size: 64, align: 64, offset: 384)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !1872, file: !1873, line: 38, baseType: !319, size: 64, align: 64, offset: 448)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1872, file: !1873, line: 40, baseType: !354, size: 32, align: 32, offset: 512)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "bound_items", scope: !1872, file: !1873, line: 41, baseType: !338, size: 64, align: 64, offset: 576)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "immortal", scope: !1872, file: !1873, line: 43, baseType: !324, size: 1, align: 32, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "sticky_refnum", scope: !1872, file: !1873, line: 44, baseType: !324, size: 1, align: 32, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !1872, file: !1873, line: 45, baseType: !324, size: 1, align: 32, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !1872, file: !1873, line: 48, baseType: !1921, size: 64, align: 64, offset: 704)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64, align: 64)
!1922 = !DIDerivedType(tag: DW_TAG_typedef, name: "HISTORY_REC", file: !1923, line: 14, baseType: !1924)
!1923 = !DIFile(filename: "command-history.h", directory: "/home/lichi/Desktop/irssi/task1")
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1923, line: 6, size: 256, align: 64, elements: !1925)
!1925 = !{!1926, !1927, !1928, !1929, !1930}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1924, file: !1923, line: 7, baseType: !319, size: 64, align: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1924, file: !1923, line: 9, baseType: !1861, size: 64, align: 64, offset: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !1924, file: !1923, line: 10, baseType: !354, size: 32, align: 32, offset: 128)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1924, file: !1923, line: 12, baseType: !354, size: 32, align: 32, offset: 160)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "redo", scope: !1924, file: !1923, line: 13, baseType: !354, size: 1, align: 32, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "history_name", scope: !1872, file: !1873, line: 49, baseType: !319, size: 64, align: 64, offset: 768)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !1872, file: !1873, line: 51, baseType: !354, size: 32, align: 32, offset: 832)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !1872, file: !1873, line: 52, baseType: !319, size: 64, align: 64, offset: 896)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "last_timestamp", scope: !1872, file: !1873, line: 54, baseType: !1898, size: 64, align: 64, offset: 960)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "last_line", scope: !1872, file: !1873, line: 55, baseType: !1898, size: 64, align: 64, offset: 1024)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "theme_name", scope: !1872, file: !1873, line: 57, baseType: !319, size: 64, align: 64, offset: 1088)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "theme", scope: !1872, file: !1873, line: 58, baseType: !326, size: 64, align: 64, offset: 1152)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "gui_data", scope: !1872, file: !1873, line: 60, baseType: !326, size: 64, align: 64, offset: 1216)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64, align: 64)
!1940 = !DILocalVariable(name: "list", arg: 1, scope: !1857, file: !316, line: 866, type: !1860)
!1941 = !DILocation(line: 866, column: 39, scope: !1857)
!1942 = !DILocalVariable(name: "window", arg: 2, scope: !1857, file: !316, line: 866, type: !1869)
!1943 = !DILocation(line: 866, column: 57, scope: !1857)
!1944 = !DILocalVariable(name: "word", arg: 3, scope: !1857, file: !316, line: 867, type: !329)
!1945 = !DILocation(line: 867, column: 22, scope: !1857)
!1946 = !DILocalVariable(name: "line", arg: 4, scope: !1857, file: !316, line: 867, type: !329)
!1947 = !DILocation(line: 867, column: 40, scope: !1857)
!1948 = !DILocalVariable(name: "want_space", arg: 5, scope: !1857, file: !316, line: 868, type: !1939)
!1949 = !DILocation(line: 868, column: 15, scope: !1857)
!1950 = !DILocation(line: 870, column: 2, scope: !1857)
!1951 = distinct !{!1951, !1950}
!1952 = !DILocation(line: 870, column: 10, scope: !1953)
!1953 = !DILexicalBlockFile(scope: !1954, file: !316, discriminator: 1)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !316, line: 870, column: 10)
!1955 = distinct !DILexicalBlock(scope: !1857, file: !316, line: 870, column: 4)
!1956 = !DILocation(line: 870, column: 15, scope: !1953)
!1957 = !DILocation(line: 870, column: 5, scope: !1958)
!1958 = !DILexicalBlockFile(scope: !1959, file: !316, discriminator: 2)
!1959 = distinct !DILexicalBlock(scope: !1954, file: !316, line: 870, column: 3)
!1960 = !DILocation(line: 870, column: 14, scope: !1961)
!1961 = !DILexicalBlockFile(scope: !1962, file: !316, discriminator: 3)
!1962 = distinct !DILexicalBlock(scope: !1954, file: !316, line: 870, column: 12)
!1963 = !DILocation(line: 870, column: 99, scope: !1961)
!1964 = !DILocation(line: 870, column: 110, scope: !1965)
!1965 = !DILexicalBlockFile(scope: !1955, file: !316, discriminator: 4)
!1966 = !DILocation(line: 871, column: 2, scope: !1857)
!1967 = distinct !{!1967, !1966}
!1968 = !DILocation(line: 871, column: 10, scope: !1969)
!1969 = !DILexicalBlockFile(scope: !1970, file: !316, discriminator: 1)
!1970 = distinct !DILexicalBlock(scope: !1971, file: !316, line: 871, column: 10)
!1971 = distinct !DILexicalBlock(scope: !1857, file: !316, line: 871, column: 4)
!1972 = !DILocation(line: 871, column: 15, scope: !1969)
!1973 = !DILocation(line: 871, column: 5, scope: !1974)
!1974 = !DILexicalBlockFile(scope: !1975, file: !316, discriminator: 2)
!1975 = distinct !DILexicalBlock(scope: !1970, file: !316, line: 871, column: 3)
!1976 = !DILocation(line: 871, column: 14, scope: !1977)
!1977 = !DILexicalBlockFile(scope: !1978, file: !316, discriminator: 3)
!1978 = distinct !DILexicalBlock(scope: !1970, file: !316, line: 871, column: 12)
!1979 = !DILocation(line: 871, column: 99, scope: !1977)
!1980 = !DILocation(line: 871, column: 110, scope: !1981)
!1981 = !DILexicalBlockFile(scope: !1971, file: !316, discriminator: 4)
!1982 = !DILocation(line: 872, column: 2, scope: !1857)
!1983 = distinct !{!1983, !1982}
!1984 = !DILocation(line: 872, column: 10, scope: !1985)
!1985 = !DILexicalBlockFile(scope: !1986, file: !316, discriminator: 1)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !316, line: 872, column: 10)
!1987 = distinct !DILexicalBlock(scope: !1857, file: !316, line: 872, column: 4)
!1988 = !DILocation(line: 872, column: 15, scope: !1985)
!1989 = !DILocation(line: 872, column: 5, scope: !1990)
!1990 = !DILexicalBlockFile(scope: !1991, file: !316, discriminator: 2)
!1991 = distinct !DILexicalBlock(scope: !1986, file: !316, line: 872, column: 3)
!1992 = !DILocation(line: 872, column: 14, scope: !1993)
!1993 = !DILexicalBlockFile(scope: !1994, file: !316, discriminator: 3)
!1994 = distinct !DILexicalBlock(scope: !1986, file: !316, line: 872, column: 12)
!1995 = !DILocation(line: 872, column: 99, scope: !1993)
!1996 = !DILocation(line: 872, column: 110, scope: !1997)
!1997 = !DILexicalBlockFile(scope: !1987, file: !316, discriminator: 4)
!1998 = !DILocation(line: 874, column: 7, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1857, file: !316, line: 874, column: 6)
!2000 = !DILocation(line: 874, column: 6, scope: !1999)
!2001 = !DILocation(line: 874, column: 12, scope: !1999)
!2002 = !DILocation(line: 874, column: 20, scope: !1999)
!2003 = !DILocation(line: 874, column: 30, scope: !2004)
!2004 = !DILexicalBlockFile(scope: !1999, file: !316, discriminator: 1)
!2005 = !DILocation(line: 874, column: 23, scope: !2004)
!2006 = !DILocation(line: 874, column: 41, scope: !2004)
!2007 = !DILocation(line: 874, column: 6, scope: !2004)
!2008 = !DILocation(line: 875, column: 3, scope: !1999)
!2009 = !DILocation(line: 877, column: 34, scope: !1857)
!2010 = !DILocation(line: 877, column: 10, scope: !1857)
!2011 = !DILocation(line: 877, column: 3, scope: !1857)
!2012 = !DILocation(line: 877, column: 8, scope: !1857)
!2013 = !DILocation(line: 878, column: 7, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !1857, file: !316, line: 878, column: 6)
!2015 = !DILocation(line: 878, column: 6, scope: !2014)
!2016 = !DILocation(line: 878, column: 12, scope: !2014)
!2017 = !DILocation(line: 878, column: 6, scope: !1857)
!2018 = !DILocation(line: 878, column: 20, scope: !2019)
!2019 = !DILexicalBlockFile(scope: !2014, file: !316, discriminator: 1)
!2020 = !DILocation(line: 879, column: 1, scope: !1857)
!2021 = distinct !DISubprogram(name: "cmd_bind", scope: !316, file: !316, line: 787, type: !1106, isLocal: true, isDefinition: true, scopeLine: 788, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!2022 = !DILocalVariable(name: "data", arg: 1, scope: !2021, file: !316, line: 787, type: !329)
!2023 = !DILocation(line: 787, column: 34, scope: !2021)
!2024 = !DILocalVariable(name: "optlist", scope: !2021, file: !316, line: 789, type: !403)
!2025 = !DILocation(line: 789, column: 14, scope: !2021)
!2026 = !DILocalVariable(name: "key", scope: !2021, file: !316, line: 790, type: !319)
!2027 = !DILocation(line: 790, column: 8, scope: !2021)
!2028 = !DILocalVariable(name: "id", scope: !2021, file: !316, line: 790, type: !319)
!2029 = !DILocation(line: 790, column: 14, scope: !2021)
!2030 = !DILocalVariable(name: "keydata", scope: !2021, file: !316, line: 790, type: !319)
!2031 = !DILocation(line: 790, column: 19, scope: !2021)
!2032 = !DILocalVariable(name: "free_arg", scope: !2021, file: !316, line: 791, type: !326)
!2033 = !DILocation(line: 791, column: 8, scope: !2021)
!2034 = !DILocalVariable(name: "command_id", scope: !2021, file: !316, line: 792, type: !354)
!2035 = !DILocation(line: 792, column: 6, scope: !2021)
!2036 = !DILocation(line: 794, column: 22, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2021, file: !316, line: 794, column: 6)
!2038 = !DILocation(line: 794, column: 7, scope: !2037)
!2039 = !DILocation(line: 794, column: 6, scope: !2021)
!2040 = !DILocation(line: 796, column: 3, scope: !2037)
!2041 = !DILocation(line: 798, column: 26, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2021, file: !316, line: 798, column: 6)
!2043 = !DILocation(line: 798, column: 6, scope: !2042)
!2044 = !DILocation(line: 798, column: 6, scope: !2021)
!2045 = !DILocalVariable(name: "tmp", scope: !2046, file: !316, line: 799, type: !338)
!2046 = distinct !DILexicalBlock(scope: !2042, file: !316, line: 798, column: 44)
!2047 = !DILocation(line: 799, column: 11, scope: !2046)
!2048 = !DILocation(line: 801, column: 14, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2046, file: !316, line: 801, column: 3)
!2050 = !DILocation(line: 801, column: 12, scope: !2049)
!2051 = !DILocation(line: 801, column: 8, scope: !2049)
!2052 = !DILocation(line: 801, column: 24, scope: !2053)
!2053 = !DILexicalBlockFile(scope: !2054, file: !316, discriminator: 1)
!2054 = distinct !DILexicalBlock(scope: !2049, file: !316, line: 801, column: 3)
!2055 = !DILocation(line: 801, column: 28, scope: !2053)
!2056 = !DILocation(line: 801, column: 3, scope: !2053)
!2057 = !DILocalVariable(name: "rec", scope: !2058, file: !316, line: 802, type: !331)
!2058 = distinct !DILexicalBlock(scope: !2054, file: !316, line: 801, column: 53)
!2059 = !DILocation(line: 802, column: 17, scope: !2058)
!2060 = !DILocation(line: 802, column: 23, scope: !2058)
!2061 = !DILocation(line: 802, column: 28, scope: !2058)
!2062 = !DILocation(line: 804, column: 49, scope: !2058)
!2063 = !DILocation(line: 804, column: 54, scope: !2058)
!2064 = !DILocation(line: 804, column: 58, scope: !2058)
!2065 = !DILocation(line: 804, column: 63, scope: !2058)
!2066 = !DILocation(line: 804, column: 77, scope: !2067)
!2067 = !DILexicalBlockFile(scope: !2058, file: !316, discriminator: 1)
!2068 = !DILocation(line: 804, column: 82, scope: !2067)
!2069 = !DILocation(line: 804, column: 58, scope: !2067)
!2070 = !DILocation(line: 804, column: 58, scope: !2071)
!2071 = !DILexicalBlockFile(scope: !2058, file: !316, discriminator: 2)
!2072 = !DILocation(line: 804, column: 58, scope: !2073)
!2073 = !DILexicalBlockFile(scope: !2058, file: !316, discriminator: 3)
!2074 = !DILocation(line: 804, column: 4, scope: !2073)
!2075 = !DILocation(line: 806, column: 3, scope: !2058)
!2076 = !DILocation(line: 801, column: 42, scope: !2077)
!2077 = !DILexicalBlockFile(scope: !2054, file: !316, discriminator: 2)
!2078 = !DILocation(line: 801, column: 47, scope: !2077)
!2079 = !DILocation(line: 801, column: 40, scope: !2077)
!2080 = !DILocation(line: 801, column: 3, scope: !2077)
!2081 = distinct !{!2081, !2082}
!2082 = !DILocation(line: 801, column: 3, scope: !2046)
!2083 = !DILocation(line: 807, column: 19, scope: !2046)
!2084 = !DILocation(line: 807, column: 3, scope: !2046)
!2085 = !DILocation(line: 808, column: 3, scope: !2046)
!2086 = !DILocation(line: 811, column: 7, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2021, file: !316, line: 811, column: 6)
!2088 = !DILocation(line: 811, column: 6, scope: !2087)
!2089 = !DILocation(line: 811, column: 11, scope: !2087)
!2090 = !DILocation(line: 811, column: 19, scope: !2087)
!2091 = !DILocation(line: 811, column: 42, scope: !2092)
!2092 = !DILexicalBlockFile(scope: !2087, file: !316, discriminator: 1)
!2093 = !DILocation(line: 811, column: 22, scope: !2092)
!2094 = !DILocation(line: 811, column: 6, scope: !2092)
!2095 = !DILocation(line: 813, column: 24, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2087, file: !316, line: 811, column: 62)
!2097 = !DILocation(line: 813, column: 3, scope: !2096)
!2098 = !DILocation(line: 814, column: 19, scope: !2096)
!2099 = !DILocation(line: 814, column: 3, scope: !2096)
!2100 = !DILocation(line: 815, column: 3, scope: !2096)
!2101 = !DILocation(line: 816, column: 14, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2087, file: !316, line: 816, column: 13)
!2103 = !DILocation(line: 816, column: 13, scope: !2102)
!2104 = !DILocation(line: 816, column: 18, scope: !2102)
!2105 = !DILocation(line: 816, column: 26, scope: !2102)
!2106 = !DILocation(line: 816, column: 49, scope: !2107)
!2107 = !DILexicalBlockFile(scope: !2102, file: !316, discriminator: 1)
!2108 = !DILocation(line: 816, column: 29, scope: !2107)
!2109 = !DILocation(line: 816, column: 13, scope: !2107)
!2110 = !DILocation(line: 818, column: 23, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2102, file: !316, line: 816, column: 68)
!2112 = !DILocation(line: 818, column: 3, scope: !2111)
!2113 = !DILocation(line: 819, column: 17, scope: !2111)
!2114 = !DILocation(line: 819, column: 3, scope: !2111)
!2115 = !DILocation(line: 820, column: 19, scope: !2111)
!2116 = !DILocation(line: 820, column: 3, scope: !2111)
!2117 = !DILocation(line: 821, column: 3, scope: !2111)
!2118 = !DILocation(line: 824, column: 7, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2021, file: !316, line: 824, column: 6)
!2120 = !DILocation(line: 824, column: 6, scope: !2119)
!2121 = !DILocation(line: 824, column: 10, scope: !2119)
!2122 = !DILocation(line: 824, column: 6, scope: !2021)
!2123 = !DILocation(line: 826, column: 17, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2119, file: !316, line: 824, column: 19)
!2125 = !DILocation(line: 826, column: 3, scope: !2124)
!2126 = !DILocation(line: 827, column: 19, scope: !2124)
!2127 = !DILocation(line: 827, column: 3, scope: !2124)
!2128 = !DILocation(line: 828, column: 3, scope: !2124)
!2129 = !DILocation(line: 831, column: 22, scope: !2021)
!2130 = !DILocation(line: 831, column: 53, scope: !2021)
!2131 = !DILocation(line: 831, column: 52, scope: !2021)
!2132 = !DILocation(line: 831, column: 15, scope: !2133)
!2133 = !DILexicalBlockFile(scope: !2021, file: !316, discriminator: 1)
!2134 = !DILocation(line: 831, column: 57, scope: !2021)
!2135 = !DILocation(line: 831, column: 13, scope: !2021)
!2136 = !DILocation(line: 832, column: 6, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2021, file: !316, line: 832, column: 6)
!2138 = !DILocation(line: 832, column: 6, scope: !2021)
!2139 = !DILocation(line: 834, column: 25, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2137, file: !316, line: 832, column: 18)
!2141 = !DILocation(line: 834, column: 27, scope: !2140)
!2142 = !DILocation(line: 834, column: 36, scope: !2140)
!2143 = !DILocation(line: 834, column: 13, scope: !2140)
!2144 = !DILocation(line: 834, column: 11, scope: !2140)
!2145 = !DILocation(line: 835, column: 6, scope: !2140)
!2146 = !DILocation(line: 836, column: 2, scope: !2140)
!2147 = !DILocation(line: 838, column: 20, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2021, file: !316, line: 838, column: 6)
!2149 = !DILocation(line: 838, column: 6, scope: !2148)
!2150 = !DILocation(line: 838, column: 24, scope: !2148)
!2151 = !DILocation(line: 838, column: 6, scope: !2021)
!2152 = !DILocation(line: 839, column: 47, scope: !2148)
!2153 = !DILocation(line: 839, column: 3, scope: !2148)
!2154 = !DILocation(line: 841, column: 21, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2148, file: !316, line: 840, column: 7)
!2156 = !DILocation(line: 841, column: 25, scope: !2155)
!2157 = !DILocation(line: 841, column: 30, scope: !2155)
!2158 = !DILocation(line: 841, column: 3, scope: !2155)
!2159 = !DILocation(line: 842, column: 17, scope: !2155)
!2160 = !DILocation(line: 842, column: 3, scope: !2155)
!2161 = !DILocation(line: 845, column: 6, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2021, file: !316, line: 845, column: 6)
!2163 = !DILocation(line: 845, column: 6, scope: !2021)
!2164 = !DILocation(line: 845, column: 25, scope: !2165)
!2165 = !DILexicalBlockFile(scope: !2162, file: !316, discriminator: 1)
!2166 = !DILocation(line: 845, column: 18, scope: !2165)
!2167 = !DILocation(line: 846, column: 25, scope: !2021)
!2168 = !DILocation(line: 846, column: 9, scope: !2021)
!2169 = !DILocation(line: 847, column: 1, scope: !2021)
!2170 = !DILocation(line: 847, column: 1, scope: !2133)
!2171 = distinct !DISubprogram(name: "keyboard_deinit", scope: !316, file: !316, line: 988, type: !510, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!2172 = !DILocation(line: 990, column: 2, scope: !2171)
!2173 = !DILocation(line: 991, column: 2, scope: !2171)
!2174 = !DILocation(line: 992, column: 2, scope: !2171)
!2175 = !DILocation(line: 993, column: 2, scope: !2171)
!2176 = !DILocation(line: 995, column: 2, scope: !2171)
!2177 = !DILocation(line: 995, column: 9, scope: !2178)
!2178 = !DILexicalBlockFile(scope: !2171, file: !316, discriminator: 1)
!2179 = !DILocation(line: 995, column: 18, scope: !2178)
!2180 = !DILocation(line: 995, column: 2, scope: !2178)
!2181 = !DILocation(line: 996, column: 18, scope: !2171)
!2182 = !DILocation(line: 996, column: 28, scope: !2171)
!2183 = !DILocation(line: 996, column: 3, scope: !2171)
!2184 = !DILocation(line: 995, column: 2, scope: !2185)
!2185 = !DILexicalBlockFile(scope: !2171, file: !316, discriminator: 2)
!2186 = distinct !{!2186, !2176}
!2187 = !DILocation(line: 997, column: 23, scope: !2171)
!2188 = !DILocation(line: 997, column: 2, scope: !2171)
!2189 = !DILocation(line: 998, column: 23, scope: !2171)
!2190 = !DILocation(line: 998, column: 2, scope: !2171)
!2191 = !DILocation(line: 1000, column: 17, scope: !2171)
!2192 = !DILocation(line: 1000, column: 2, scope: !2171)
!2193 = !DILocation(line: 1002, column: 17, scope: !2171)
!2194 = !DILocation(line: 1002, column: 2, scope: !2171)
!2195 = !DILocation(line: 1004, column: 2, scope: !2171)
!2196 = !DILocation(line: 1005, column: 9, scope: !2171)
!2197 = !DILocation(line: 1006, column: 2, scope: !2171)
!2198 = !DILocation(line: 1007, column: 2, scope: !2171)
!2199 = !DILocation(line: 1008, column: 1, scope: !2171)
!2200 = distinct !DISubprogram(name: "key_state_destroy", scope: !316, file: !316, line: 401, type: !2201, isLocal: true, isDefinition: true, scopeLine: 402, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!354, !319}
!2203 = !DILocalVariable(name: "key", arg: 1, scope: !2200, file: !316, line: 401, type: !319)
!2204 = !DILocation(line: 401, column: 36, scope: !2200)
!2205 = !DILocation(line: 403, column: 9, scope: !2200)
!2206 = !DILocation(line: 403, column: 2, scope: !2200)
!2207 = !DILocation(line: 404, column: 9, scope: !2200)
!2208 = distinct !DISubprogram(name: "key_states_scan_key", scope: !316, file: !316, line: 378, type: !2209, isLocal: true, isDefinition: true, scopeLine: 379, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{null, !329, !387}
!2211 = !DILocalVariable(name: "key", arg: 1, scope: !2208, file: !316, line: 378, type: !329)
!2212 = !DILocation(line: 378, column: 45, scope: !2208)
!2213 = !DILocalVariable(name: "rec", arg: 2, scope: !2208, file: !316, line: 378, type: !387)
!2214 = !DILocation(line: 378, column: 59, scope: !2208)
!2215 = !DILocalVariable(name: "tmp", scope: !2208, file: !316, line: 380, type: !338)
!2216 = !DILocation(line: 380, column: 10, scope: !2208)
!2217 = !DILocalVariable(name: "out", scope: !2208, file: !316, line: 380, type: !338)
!2218 = !DILocation(line: 380, column: 16, scope: !2208)
!2219 = !DILocalVariable(name: "limit", scope: !2208, file: !316, line: 381, type: !354)
!2220 = !DILocation(line: 381, column: 6, scope: !2208)
!2221 = !DILocation(line: 383, column: 16, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2208, file: !316, line: 383, column: 6)
!2223 = !DILocation(line: 383, column: 21, scope: !2222)
!2224 = !DILocation(line: 383, column: 27, scope: !2222)
!2225 = !DILocation(line: 383, column: 6, scope: !2222)
!2226 = !DILocation(line: 383, column: 38, scope: !2222)
!2227 = !DILocation(line: 383, column: 6, scope: !2208)
!2228 = !DILocation(line: 384, column: 3, scope: !2222)
!2229 = !DILocation(line: 386, column: 35, scope: !2208)
!2230 = !DILocation(line: 386, column: 15, scope: !2231)
!2231 = !DILexicalBlockFile(scope: !2208, file: !316, discriminator: 1)
!2232 = !DILocation(line: 386, column: 13, scope: !2208)
!2233 = !DILocation(line: 387, column: 17, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2208, file: !316, line: 387, column: 6)
!2235 = !DILocation(line: 387, column: 6, scope: !2234)
!2236 = !DILocation(line: 387, column: 6, scope: !2208)
!2237 = !DILocation(line: 388, column: 14, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2239, file: !316, line: 388, column: 3)
!2239 = distinct !DILexicalBlock(scope: !2234, file: !316, line: 387, column: 37)
!2240 = !DILocation(line: 388, column: 12, scope: !2238)
!2241 = !DILocation(line: 388, column: 8, scope: !2238)
!2242 = !DILocation(line: 388, column: 19, scope: !2243)
!2243 = !DILexicalBlockFile(scope: !2244, file: !316, discriminator: 1)
!2244 = distinct !DILexicalBlock(scope: !2238, file: !316, line: 388, column: 3)
!2245 = !DILocation(line: 388, column: 23, scope: !2243)
!2246 = !DILocation(line: 388, column: 3, scope: !2243)
!2247 = !DILocalVariable(name: "str", scope: !2248, file: !316, line: 389, type: !539)
!2248 = distinct !DILexicalBlock(scope: !2244, file: !316, line: 388, column: 48)
!2249 = !DILocation(line: 389, column: 13, scope: !2248)
!2250 = !DILocation(line: 389, column: 19, scope: !2248)
!2251 = !DILocation(line: 389, column: 24, scope: !2248)
!2252 = !DILocation(line: 391, column: 8, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2248, file: !316, line: 391, column: 8)
!2254 = !DILocation(line: 391, column: 13, scope: !2253)
!2255 = !DILocation(line: 391, column: 20, scope: !2253)
!2256 = !DILocation(line: 391, column: 27, scope: !2253)
!2257 = !DILocation(line: 391, column: 30, scope: !2258)
!2258 = !DILexicalBlockFile(scope: !2253, file: !316, discriminator: 1)
!2259 = !DILocation(line: 391, column: 35, scope: !2258)
!2260 = !DILocation(line: 391, column: 42, scope: !2258)
!2261 = !DILocation(line: 391, column: 8, scope: !2258)
!2262 = !DILocation(line: 392, column: 35, scope: !2253)
!2263 = !DILocation(line: 392, column: 40, scope: !2253)
!2264 = !DILocation(line: 392, column: 15, scope: !2253)
!2265 = !DILocation(line: 392, column: 5, scope: !2253)
!2266 = !DILocation(line: 392, column: 48, scope: !2253)
!2267 = !DILocation(line: 394, column: 18, scope: !2248)
!2268 = !DILocation(line: 394, column: 39, scope: !2248)
!2269 = !DILocation(line: 394, column: 44, scope: !2248)
!2270 = !DILocation(line: 394, column: 30, scope: !2248)
!2271 = !DILocation(line: 394, column: 50, scope: !2248)
!2272 = !DILocation(line: 394, column: 4, scope: !2273)
!2273 = !DILexicalBlockFile(scope: !2248, file: !316, discriminator: 1)
!2274 = !DILocation(line: 395, column: 3, scope: !2248)
!2275 = !DILocation(line: 388, column: 37, scope: !2276)
!2276 = !DILexicalBlockFile(scope: !2244, file: !316, discriminator: 2)
!2277 = !DILocation(line: 388, column: 42, scope: !2276)
!2278 = !DILocation(line: 388, column: 35, scope: !2276)
!2279 = !DILocation(line: 388, column: 3, scope: !2276)
!2280 = distinct !{!2280, !2281}
!2281 = !DILocation(line: 388, column: 3, scope: !2239)
!2282 = !DILocation(line: 396, column: 2, scope: !2239)
!2283 = !DILocalVariable(name: "tmp", scope: !2284, file: !316, line: 398, type: !338)
!2284 = distinct !DILexicalBlock(scope: !2208, file: !316, line: 398, column: 2)
!2285 = !DILocation(line: 398, column: 12, scope: !2284)
!2286 = !DILocation(line: 398, column: 28, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2284, file: !316, line: 398, column: 17)
!2288 = !DILocation(line: 398, column: 26, scope: !2287)
!2289 = !DILocation(line: 398, column: 22, scope: !2287)
!2290 = !DILocation(line: 398, column: 33, scope: !2291)
!2291 = !DILexicalBlockFile(scope: !2292, file: !316, discriminator: 1)
!2292 = distinct !DILexicalBlock(scope: !2287, file: !316, line: 398, column: 17)
!2293 = !DILocation(line: 398, column: 37, scope: !2291)
!2294 = !DILocation(line: 398, column: 17, scope: !2291)
!2295 = !DILocation(line: 398, column: 34, scope: !2296)
!2296 = !DILexicalBlockFile(scope: !2292, file: !316, discriminator: 2)
!2297 = !DILocation(line: 398, column: 39, scope: !2296)
!2298 = !DILocation(line: 398, column: 20, scope: !2296)
!2299 = !DILocation(line: 398, column: 9, scope: !2300)
!2300 = !DILexicalBlockFile(scope: !2292, file: !316, discriminator: 3)
!2301 = !DILocation(line: 398, column: 14, scope: !2300)
!2302 = !DILocation(line: 398, column: 7, scope: !2300)
!2303 = !DILocation(line: 398, column: 17, scope: !2300)
!2304 = distinct !{!2304, !2305}
!2305 = !DILocation(line: 398, column: 17, scope: !2284)
!2306 = !DILocation(line: 398, column: 67, scope: !2307)
!2307 = !DILexicalBlockFile(scope: !2284, file: !316, discriminator: 4)
!2308 = !DILocation(line: 398, column: 54, scope: !2307)
!2309 = !DILocation(line: 398, column: 77, scope: !2307)
!2310 = !DILocation(line: 399, column: 1, scope: !2208)
!2311 = !DILocation(line: 399, column: 1, scope: !2231)
!2312 = distinct !DISubprogram(name: "expand_key", scope: !316, file: !316, line: 295, type: !2313, isLocal: true, isDefinition: true, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!354, !329, !2315, !1939}
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64, align: 64)
!2316 = !DILocalVariable(name: "key", arg: 1, scope: !2312, file: !316, line: 295, type: !329)
!2317 = !DILocation(line: 295, column: 35, scope: !2312)
!2318 = !DILocalVariable(name: "out", arg: 2, scope: !2312, file: !316, line: 295, type: !2315)
!2319 = !DILocation(line: 295, column: 49, scope: !2312)
!2320 = !DILocalVariable(name: "limit", arg: 3, scope: !2312, file: !316, line: 295, type: !1939)
!2321 = !DILocation(line: 295, column: 59, scope: !2312)
!2322 = !DILocalVariable(name: "tmp", scope: !2312, file: !316, line: 297, type: !338)
!2323 = !DILocation(line: 297, column: 10, scope: !2312)
!2324 = !DILocalVariable(name: "start", scope: !2312, file: !316, line: 298, type: !329)
!2325 = !DILocation(line: 298, column: 14, scope: !2312)
!2326 = !DILocalVariable(name: "last_hyphen", scope: !2312, file: !316, line: 299, type: !354)
!2327 = !DILocation(line: 299, column: 6, scope: !2312)
!2328 = !DILocation(line: 301, column: 8, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2312, file: !316, line: 301, column: 6)
!2330 = !DILocation(line: 301, column: 14, scope: !2329)
!2331 = !DILocation(line: 301, column: 17, scope: !2329)
!2332 = !DILocation(line: 301, column: 6, scope: !2312)
!2333 = !DILocation(line: 302, column: 3, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2329, file: !316, line: 301, column: 22)
!2335 = !DILocation(line: 306, column: 15, scope: !2312)
!2336 = !DILocation(line: 306, column: 34, scope: !2312)
!2337 = !DILocation(line: 307, column: 2, scope: !2312)
!2338 = !DILocation(line: 307, column: 10, scope: !2339)
!2339 = !DILexicalBlockFile(scope: !2340, file: !316, discriminator: 1)
!2340 = distinct !DILexicalBlock(scope: !2341, file: !316, line: 307, column: 2)
!2341 = distinct !DILexicalBlock(scope: !2312, file: !316, line: 307, column: 2)
!2342 = !DILocation(line: 307, column: 9, scope: !2339)
!2343 = !DILocation(line: 307, column: 14, scope: !2339)
!2344 = !DILocation(line: 307, column: 2, scope: !2339)
!2345 = !DILocation(line: 308, column: 7, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2347, file: !316, line: 308, column: 7)
!2347 = distinct !DILexicalBlock(scope: !2340, file: !316, line: 307, column: 30)
!2348 = !DILocation(line: 308, column: 13, scope: !2346)
!2349 = !DILocation(line: 308, column: 7, scope: !2347)
!2350 = !DILocation(line: 309, column: 31, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2352, file: !316, line: 309, column: 7)
!2352 = distinct !DILexicalBlock(scope: !2346, file: !316, line: 308, column: 21)
!2353 = !DILocation(line: 309, column: 30, scope: !2351)
!2354 = !DILocation(line: 309, column: 7, scope: !2351)
!2355 = !DILocation(line: 309, column: 8, scope: !2351)
!2356 = !DILocation(line: 309, column: 10, scope: !2351)
!2357 = !DILocation(line: 309, column: 9, scope: !2351)
!2358 = !DILocation(line: 309, column: 11, scope: !2351)
!2359 = !DILocation(line: 309, column: 23, scope: !2351)
!2360 = !DILocation(line: 309, column: 27, scope: !2361)
!2361 = !DILexicalBlockFile(scope: !2351, file: !316, discriminator: 1)
!2362 = !DILocation(line: 309, column: 26, scope: !2361)
!2363 = !DILocation(line: 309, column: 31, scope: !2361)
!2364 = !DILocation(line: 309, column: 7, scope: !2361)
!2365 = !DILocation(line: 311, column: 5, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2351, file: !316, line: 309, column: 39)
!2367 = !DILocation(line: 314, column: 22, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2352, file: !316, line: 314, column: 8)
!2369 = !DILocation(line: 314, column: 29, scope: !2368)
!2370 = !DILocation(line: 314, column: 32, scope: !2368)
!2371 = !DILocation(line: 314, column: 36, scope: !2368)
!2372 = !DILocation(line: 314, column: 41, scope: !2368)
!2373 = !DILocation(line: 314, column: 9, scope: !2368)
!2374 = !DILocation(line: 314, column: 8, scope: !2352)
!2375 = !DILocation(line: 315, column: 33, scope: !2368)
!2376 = !DILocalVariable(name: "tmp", scope: !2377, file: !316, line: 316, type: !338)
!2377 = distinct !DILexicalBlock(scope: !2352, file: !316, line: 316, column: 4)
!2378 = !DILocation(line: 316, column: 14, scope: !2377)
!2379 = !DILocation(line: 316, column: 31, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2377, file: !316, line: 316, column: 19)
!2381 = !DILocation(line: 316, column: 30, scope: !2380)
!2382 = !DILocation(line: 316, column: 28, scope: !2380)
!2383 = !DILocation(line: 316, column: 24, scope: !2380)
!2384 = !DILocation(line: 316, column: 36, scope: !2385)
!2385 = !DILexicalBlockFile(scope: !2386, file: !316, discriminator: 1)
!2386 = distinct !DILexicalBlock(scope: !2380, file: !316, line: 316, column: 19)
!2387 = !DILocation(line: 316, column: 40, scope: !2385)
!2388 = !DILocation(line: 316, column: 19, scope: !2385)
!2389 = !DILocation(line: 316, column: 48, scope: !2390)
!2390 = !DILexicalBlockFile(scope: !2386, file: !316, discriminator: 2)
!2391 = !DILocation(line: 316, column: 53, scope: !2390)
!2392 = !DILocation(line: 316, column: 22, scope: !2390)
!2393 = !DILocation(line: 316, column: 11, scope: !2394)
!2394 = !DILexicalBlockFile(scope: !2386, file: !316, discriminator: 3)
!2395 = !DILocation(line: 316, column: 16, scope: !2394)
!2396 = !DILocation(line: 316, column: 9, scope: !2394)
!2397 = !DILocation(line: 316, column: 19, scope: !2394)
!2398 = distinct !{!2398, !2399}
!2399 = !DILocation(line: 316, column: 19, scope: !2377)
!2400 = !DILocation(line: 317, column: 31, scope: !2352)
!2401 = !DILocation(line: 318, column: 3, scope: !2352)
!2402 = !DILocation(line: 320, column: 8, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2347, file: !316, line: 320, column: 7)
!2404 = !DILocation(line: 320, column: 7, scope: !2403)
!2405 = !DILocation(line: 320, column: 12, scope: !2403)
!2406 = !DILocation(line: 320, column: 7, scope: !2347)
!2407 = !DILocation(line: 321, column: 8, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2409, file: !316, line: 321, column: 8)
!2409 = distinct !DILexicalBlock(scope: !2403, file: !316, line: 320, column: 20)
!2410 = !DILocation(line: 321, column: 8, scope: !2409)
!2411 = !DILocalVariable(name: "tmp", scope: !2412, file: !316, line: 322, type: !338)
!2412 = distinct !DILexicalBlock(scope: !2413, file: !316, line: 322, column: 33)
!2413 = distinct !DILexicalBlock(scope: !2408, file: !316, line: 321, column: 21)
!2414 = !DILocation(line: 322, column: 43, scope: !2412)
!2415 = !DILocation(line: 322, column: 60, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2412, file: !316, line: 322, column: 48)
!2417 = !DILocation(line: 322, column: 59, scope: !2416)
!2418 = !DILocation(line: 322, column: 57, scope: !2416)
!2419 = !DILocation(line: 322, column: 53, scope: !2416)
!2420 = !DILocation(line: 322, column: 65, scope: !2421)
!2421 = !DILexicalBlockFile(scope: !2422, file: !316, discriminator: 1)
!2422 = distinct !DILexicalBlock(scope: !2416, file: !316, line: 322, column: 48)
!2423 = !DILocation(line: 322, column: 69, scope: !2421)
!2424 = !DILocation(line: 322, column: 48, scope: !2421)
!2425 = !DILocation(line: 322, column: 77, scope: !2426)
!2426 = !DILexicalBlockFile(scope: !2422, file: !316, discriminator: 2)
!2427 = !DILocation(line: 322, column: 82, scope: !2426)
!2428 = !DILocation(line: 322, column: 51, scope: !2426)
!2429 = !DILocation(line: 322, column: 40, scope: !2430)
!2430 = !DILexicalBlockFile(scope: !2422, file: !316, discriminator: 3)
!2431 = !DILocation(line: 322, column: 45, scope: !2430)
!2432 = !DILocation(line: 322, column: 38, scope: !2430)
!2433 = !DILocation(line: 322, column: 48, scope: !2430)
!2434 = distinct !{!2434, !2435}
!2435 = !DILocation(line: 322, column: 48, scope: !2412)
!2436 = !DILocalVariable(name: "tmp", scope: !2437, file: !316, line: 323, type: !338)
!2437 = distinct !DILexicalBlock(scope: !2413, file: !316, line: 323, column: 33)
!2438 = !DILocation(line: 323, column: 43, scope: !2437)
!2439 = !DILocation(line: 323, column: 60, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2437, file: !316, line: 323, column: 48)
!2441 = !DILocation(line: 323, column: 59, scope: !2440)
!2442 = !DILocation(line: 323, column: 57, scope: !2440)
!2443 = !DILocation(line: 323, column: 53, scope: !2440)
!2444 = !DILocation(line: 323, column: 65, scope: !2445)
!2445 = !DILexicalBlockFile(scope: !2446, file: !316, discriminator: 1)
!2446 = distinct !DILexicalBlock(scope: !2440, file: !316, line: 323, column: 48)
!2447 = !DILocation(line: 323, column: 69, scope: !2445)
!2448 = !DILocation(line: 323, column: 48, scope: !2445)
!2449 = !DILocation(line: 323, column: 77, scope: !2450)
!2450 = !DILexicalBlockFile(scope: !2446, file: !316, discriminator: 2)
!2451 = !DILocation(line: 323, column: 82, scope: !2450)
!2452 = !DILocation(line: 323, column: 51, scope: !2450)
!2453 = !DILocation(line: 323, column: 40, scope: !2454)
!2454 = !DILexicalBlockFile(scope: !2446, file: !316, discriminator: 3)
!2455 = !DILocation(line: 323, column: 45, scope: !2454)
!2456 = !DILocation(line: 323, column: 38, scope: !2454)
!2457 = !DILocation(line: 323, column: 48, scope: !2454)
!2458 = distinct !{!2458, !2459}
!2459 = !DILocation(line: 323, column: 48, scope: !2437)
!2460 = !DILocation(line: 324, column: 4, scope: !2413)
!2461 = !DILocation(line: 325, column: 19, scope: !2409)
!2462 = !DILocation(line: 325, column: 18, scope: !2409)
!2463 = !DILocation(line: 325, column: 16, scope: !2409)
!2464 = !DILocation(line: 326, column: 3, scope: !2409)
!2465 = !DILocation(line: 326, column: 15, scope: !2466)
!2466 = !DILexicalBlockFile(scope: !2467, file: !316, discriminator: 1)
!2467 = distinct !DILexicalBlock(scope: !2403, file: !316, line: 326, column: 14)
!2468 = !DILocation(line: 326, column: 14, scope: !2466)
!2469 = !DILocation(line: 326, column: 19, scope: !2466)
!2470 = !DILocalVariable(name: "tmp", scope: !2471, file: !316, line: 327, type: !338)
!2471 = distinct !DILexicalBlock(scope: !2472, file: !316, line: 327, column: 4)
!2472 = distinct !DILexicalBlock(scope: !2467, file: !316, line: 326, column: 27)
!2473 = !DILocation(line: 327, column: 14, scope: !2471)
!2474 = !DILocation(line: 327, column: 31, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2471, file: !316, line: 327, column: 19)
!2476 = !DILocation(line: 327, column: 30, scope: !2475)
!2477 = !DILocation(line: 327, column: 28, scope: !2475)
!2478 = !DILocation(line: 327, column: 24, scope: !2475)
!2479 = !DILocation(line: 327, column: 36, scope: !2480)
!2480 = !DILexicalBlockFile(scope: !2481, file: !316, discriminator: 1)
!2481 = distinct !DILexicalBlock(scope: !2475, file: !316, line: 327, column: 19)
!2482 = !DILocation(line: 327, column: 40, scope: !2480)
!2483 = !DILocation(line: 327, column: 19, scope: !2480)
!2484 = !DILocation(line: 327, column: 48, scope: !2485)
!2485 = !DILexicalBlockFile(scope: !2481, file: !316, discriminator: 2)
!2486 = !DILocation(line: 327, column: 53, scope: !2485)
!2487 = !DILocation(line: 327, column: 22, scope: !2485)
!2488 = !DILocation(line: 327, column: 11, scope: !2489)
!2489 = !DILexicalBlockFile(scope: !2481, file: !316, discriminator: 3)
!2490 = !DILocation(line: 327, column: 16, scope: !2489)
!2491 = !DILocation(line: 327, column: 9, scope: !2489)
!2492 = !DILocation(line: 327, column: 19, scope: !2489)
!2493 = distinct !{!2493, !2494}
!2494 = !DILocation(line: 327, column: 19, scope: !2471)
!2495 = !DILocation(line: 330, column: 8, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2472, file: !316, line: 330, column: 8)
!2497 = !DILocation(line: 330, column: 15, scope: !2496)
!2498 = !DILocation(line: 330, column: 23, scope: !2496)
!2499 = !DILocation(line: 330, column: 26, scope: !2500)
!2500 = !DILexicalBlockFile(scope: !2496, file: !316, discriminator: 1)
!2501 = !DILocation(line: 330, column: 33, scope: !2500)
!2502 = !DILocation(line: 330, column: 8, scope: !2500)
!2503 = !DILocation(line: 331, column: 8, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2496, file: !316, line: 330, column: 41)
!2505 = !DILocalVariable(name: "tmp", scope: !2506, file: !316, line: 332, type: !338)
!2506 = distinct !DILexicalBlock(scope: !2504, file: !316, line: 332, column: 5)
!2507 = !DILocation(line: 332, column: 15, scope: !2506)
!2508 = !DILocation(line: 332, column: 32, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2506, file: !316, line: 332, column: 20)
!2510 = !DILocation(line: 332, column: 31, scope: !2509)
!2511 = !DILocation(line: 332, column: 29, scope: !2509)
!2512 = !DILocation(line: 332, column: 25, scope: !2509)
!2513 = !DILocation(line: 332, column: 37, scope: !2514)
!2514 = !DILexicalBlockFile(scope: !2515, file: !316, discriminator: 1)
!2515 = distinct !DILexicalBlock(scope: !2509, file: !316, line: 332, column: 20)
!2516 = !DILocation(line: 332, column: 41, scope: !2514)
!2517 = !DILocation(line: 332, column: 20, scope: !2514)
!2518 = !DILocation(line: 332, column: 49, scope: !2519)
!2519 = !DILexicalBlockFile(scope: !2515, file: !316, discriminator: 2)
!2520 = !DILocation(line: 332, column: 54, scope: !2519)
!2521 = !DILocation(line: 332, column: 61, scope: !2519)
!2522 = !DILocation(line: 332, column: 60, scope: !2519)
!2523 = !DILocation(line: 332, column: 23, scope: !2519)
!2524 = !DILocation(line: 332, column: 12, scope: !2525)
!2525 = !DILexicalBlockFile(scope: !2515, file: !316, discriminator: 3)
!2526 = !DILocation(line: 332, column: 17, scope: !2525)
!2527 = !DILocation(line: 332, column: 10, scope: !2525)
!2528 = !DILocation(line: 332, column: 20, scope: !2525)
!2529 = distinct !{!2529, !2530}
!2530 = !DILocation(line: 332, column: 20, scope: !2506)
!2531 = !DILocation(line: 333, column: 4, scope: !2504)
!2532 = !DILocalVariable(name: "tmp", scope: !2533, file: !316, line: 336, type: !338)
!2533 = distinct !DILexicalBlock(scope: !2534, file: !316, line: 336, column: 5)
!2534 = distinct !DILexicalBlock(scope: !2496, file: !316, line: 334, column: 9)
!2535 = !DILocation(line: 336, column: 15, scope: !2533)
!2536 = !DILocation(line: 336, column: 32, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2533, file: !316, line: 336, column: 20)
!2538 = !DILocation(line: 336, column: 31, scope: !2537)
!2539 = !DILocation(line: 336, column: 29, scope: !2537)
!2540 = !DILocation(line: 336, column: 25, scope: !2537)
!2541 = !DILocation(line: 336, column: 37, scope: !2542)
!2542 = !DILexicalBlockFile(scope: !2543, file: !316, discriminator: 1)
!2543 = distinct !DILexicalBlock(scope: !2537, file: !316, line: 336, column: 20)
!2544 = !DILocation(line: 336, column: 41, scope: !2542)
!2545 = !DILocation(line: 336, column: 20, scope: !2542)
!2546 = !DILocation(line: 336, column: 49, scope: !2547)
!2547 = !DILexicalBlockFile(scope: !2543, file: !316, discriminator: 2)
!2548 = !DILocation(line: 336, column: 54, scope: !2547)
!2549 = !DILocation(line: 336, column: 23, scope: !2547)
!2550 = !DILocation(line: 336, column: 12, scope: !2551)
!2551 = !DILexicalBlockFile(scope: !2543, file: !316, discriminator: 3)
!2552 = !DILocation(line: 336, column: 17, scope: !2551)
!2553 = !DILocation(line: 336, column: 10, scope: !2551)
!2554 = !DILocation(line: 336, column: 20, scope: !2551)
!2555 = distinct !{!2555, !2556}
!2556 = !DILocation(line: 336, column: 20, scope: !2533)
!2557 = !DILocalVariable(name: "tmp", scope: !2558, file: !316, line: 339, type: !338)
!2558 = distinct !DILexicalBlock(scope: !2472, file: !316, line: 339, column: 4)
!2559 = !DILocation(line: 339, column: 14, scope: !2558)
!2560 = !DILocation(line: 339, column: 31, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2558, file: !316, line: 339, column: 19)
!2562 = !DILocation(line: 339, column: 30, scope: !2561)
!2563 = !DILocation(line: 339, column: 28, scope: !2561)
!2564 = !DILocation(line: 339, column: 24, scope: !2561)
!2565 = !DILocation(line: 339, column: 36, scope: !2566)
!2566 = !DILexicalBlockFile(scope: !2567, file: !316, discriminator: 1)
!2567 = distinct !DILexicalBlock(scope: !2561, file: !316, line: 339, column: 19)
!2568 = !DILocation(line: 339, column: 40, scope: !2566)
!2569 = !DILocation(line: 339, column: 19, scope: !2566)
!2570 = !DILocation(line: 339, column: 48, scope: !2571)
!2571 = !DILexicalBlockFile(scope: !2567, file: !316, discriminator: 2)
!2572 = !DILocation(line: 339, column: 53, scope: !2571)
!2573 = !DILocation(line: 339, column: 22, scope: !2571)
!2574 = !DILocation(line: 339, column: 11, scope: !2575)
!2575 = !DILexicalBlockFile(scope: !2567, file: !316, discriminator: 3)
!2576 = !DILocation(line: 339, column: 16, scope: !2575)
!2577 = !DILocation(line: 339, column: 9, scope: !2575)
!2578 = !DILocation(line: 339, column: 19, scope: !2575)
!2579 = distinct !{!2579, !2580}
!2580 = !DILocation(line: 339, column: 19, scope: !2558)
!2581 = !DILocation(line: 340, column: 37, scope: !2472)
!2582 = !DILocation(line: 341, column: 3, scope: !2472)
!2583 = !DILocation(line: 341, column: 14, scope: !2584)
!2584 = !DILexicalBlockFile(scope: !2585, file: !316, discriminator: 1)
!2585 = distinct !DILexicalBlock(scope: !2467, file: !316, line: 341, column: 14)
!2586 = !DILocation(line: 341, column: 26, scope: !2584)
!2587 = !DILocation(line: 341, column: 52, scope: !2588)
!2588 = !DILexicalBlockFile(scope: !2585, file: !316, discriminator: 2)
!2589 = !DILocation(line: 341, column: 51, scope: !2588)
!2590 = !DILocation(line: 341, column: 28, scope: !2588)
!2591 = !DILocation(line: 341, column: 29, scope: !2588)
!2592 = !DILocation(line: 341, column: 31, scope: !2588)
!2593 = !DILocation(line: 341, column: 30, scope: !2588)
!2594 = !DILocation(line: 341, column: 32, scope: !2588)
!2595 = !DILocation(line: 341, column: 14, scope: !2588)
!2596 = !DILocation(line: 343, column: 12, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2585, file: !316, line: 341, column: 45)
!2598 = !DILocation(line: 343, column: 10, scope: !2597)
!2599 = !DILocation(line: 344, column: 37, scope: !2597)
!2600 = !DILocation(line: 345, column: 3, scope: !2597)
!2601 = !DILocation(line: 345, column: 30, scope: !2602)
!2602 = !DILexicalBlockFile(scope: !2603, file: !316, discriminator: 1)
!2603 = distinct !DILexicalBlock(scope: !2585, file: !316, line: 345, column: 14)
!2604 = !DILocation(line: 345, column: 14, scope: !2602)
!2605 = !DILocalVariable(name: "p", scope: !2606, file: !316, line: 350, type: !329)
!2606 = distinct !DILexicalBlock(scope: !2603, file: !316, line: 345, column: 45)
!2607 = !DILocation(line: 350, column: 16, scope: !2606)
!2608 = !DILocalVariable(name: "end", scope: !2606, file: !316, line: 350, type: !329)
!2609 = !DILocation(line: 350, column: 20, scope: !2606)
!2610 = !DILocation(line: 350, column: 36, scope: !2606)
!2611 = !DILocation(line: 350, column: 73, scope: !2606)
!2612 = !DILocation(line: 350, column: 55, scope: !2606)
!2613 = !DILocation(line: 350, column: 43, scope: !2606)
!2614 = !DILocation(line: 350, column: 41, scope: !2606)
!2615 = !DILocation(line: 351, column: 13, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2606, file: !316, line: 351, column: 4)
!2617 = !DILocation(line: 351, column: 11, scope: !2616)
!2618 = !DILocation(line: 351, column: 9, scope: !2616)
!2619 = !DILocation(line: 351, column: 18, scope: !2620)
!2620 = !DILexicalBlockFile(scope: !2621, file: !316, discriminator: 1)
!2621 = distinct !DILexicalBlock(scope: !2616, file: !316, line: 351, column: 4)
!2622 = !DILocation(line: 351, column: 23, scope: !2620)
!2623 = !DILocation(line: 351, column: 20, scope: !2620)
!2624 = !DILocation(line: 351, column: 4, scope: !2620)
!2625 = !DILocalVariable(name: "tmp", scope: !2626, file: !316, line: 352, type: !338)
!2626 = distinct !DILexicalBlock(scope: !2621, file: !316, line: 352, column: 5)
!2627 = !DILocation(line: 352, column: 15, scope: !2626)
!2628 = !DILocation(line: 352, column: 32, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2626, file: !316, line: 352, column: 20)
!2630 = !DILocation(line: 352, column: 31, scope: !2629)
!2631 = !DILocation(line: 352, column: 29, scope: !2629)
!2632 = !DILocation(line: 352, column: 25, scope: !2629)
!2633 = !DILocation(line: 352, column: 37, scope: !2634)
!2634 = !DILexicalBlockFile(scope: !2635, file: !316, discriminator: 1)
!2635 = distinct !DILexicalBlock(scope: !2629, file: !316, line: 352, column: 20)
!2636 = !DILocation(line: 352, column: 41, scope: !2634)
!2637 = !DILocation(line: 352, column: 20, scope: !2634)
!2638 = !DILocation(line: 352, column: 49, scope: !2639)
!2639 = !DILexicalBlockFile(scope: !2635, file: !316, discriminator: 2)
!2640 = !DILocation(line: 352, column: 54, scope: !2639)
!2641 = !DILocation(line: 352, column: 61, scope: !2639)
!2642 = !DILocation(line: 352, column: 60, scope: !2639)
!2643 = !DILocation(line: 352, column: 23, scope: !2639)
!2644 = !DILocation(line: 352, column: 12, scope: !2645)
!2645 = !DILexicalBlockFile(scope: !2635, file: !316, discriminator: 3)
!2646 = !DILocation(line: 352, column: 17, scope: !2645)
!2647 = !DILocation(line: 352, column: 10, scope: !2645)
!2648 = !DILocation(line: 352, column: 20, scope: !2645)
!2649 = distinct !{!2649, !2650}
!2650 = !DILocation(line: 352, column: 20, scope: !2626)
!2651 = !DILocation(line: 352, column: 65, scope: !2652)
!2652 = !DILexicalBlockFile(scope: !2626, file: !316, discriminator: 4)
!2653 = !DILocation(line: 351, column: 29, scope: !2654)
!2654 = !DILexicalBlockFile(scope: !2621, file: !316, discriminator: 2)
!2655 = !DILocation(line: 351, column: 4, scope: !2654)
!2656 = distinct !{!2656, !2657}
!2657 = !DILocation(line: 351, column: 4, scope: !2606)
!2658 = !DILocalVariable(name: "tmp", scope: !2659, file: !316, line: 353, type: !338)
!2659 = distinct !DILexicalBlock(scope: !2606, file: !316, line: 353, column: 4)
!2660 = !DILocation(line: 353, column: 14, scope: !2659)
!2661 = !DILocation(line: 353, column: 31, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2659, file: !316, line: 353, column: 19)
!2663 = !DILocation(line: 353, column: 30, scope: !2662)
!2664 = !DILocation(line: 353, column: 28, scope: !2662)
!2665 = !DILocation(line: 353, column: 24, scope: !2662)
!2666 = !DILocation(line: 353, column: 36, scope: !2667)
!2667 = !DILexicalBlockFile(scope: !2668, file: !316, discriminator: 1)
!2668 = distinct !DILexicalBlock(scope: !2662, file: !316, line: 353, column: 19)
!2669 = !DILocation(line: 353, column: 40, scope: !2667)
!2670 = !DILocation(line: 353, column: 19, scope: !2667)
!2671 = !DILocation(line: 353, column: 48, scope: !2672)
!2672 = !DILexicalBlockFile(scope: !2668, file: !316, discriminator: 2)
!2673 = !DILocation(line: 353, column: 53, scope: !2672)
!2674 = !DILocation(line: 353, column: 22, scope: !2672)
!2675 = !DILocation(line: 353, column: 11, scope: !2676)
!2676 = !DILexicalBlockFile(scope: !2668, file: !316, discriminator: 3)
!2677 = !DILocation(line: 353, column: 16, scope: !2676)
!2678 = !DILocation(line: 353, column: 9, scope: !2676)
!2679 = !DILocation(line: 353, column: 19, scope: !2676)
!2680 = distinct !{!2680, !2681}
!2681 = !DILocation(line: 353, column: 19, scope: !2659)
!2682 = !DILocation(line: 357, column: 10, scope: !2606)
!2683 = !DILocation(line: 357, column: 14, scope: !2606)
!2684 = !DILocation(line: 357, column: 8, scope: !2606)
!2685 = !DILocation(line: 358, column: 16, scope: !2606)
!2686 = !DILocation(line: 359, column: 3, scope: !2606)
!2687 = !DILocalVariable(name: "tmp", scope: !2688, file: !316, line: 360, type: !338)
!2688 = distinct !DILexicalBlock(scope: !2689, file: !316, line: 360, column: 4)
!2689 = distinct !DILexicalBlock(scope: !2603, file: !316, line: 359, column: 10)
!2690 = !DILocation(line: 360, column: 14, scope: !2688)
!2691 = !DILocation(line: 360, column: 31, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2688, file: !316, line: 360, column: 19)
!2693 = !DILocation(line: 360, column: 30, scope: !2692)
!2694 = !DILocation(line: 360, column: 28, scope: !2692)
!2695 = !DILocation(line: 360, column: 24, scope: !2692)
!2696 = !DILocation(line: 360, column: 36, scope: !2697)
!2697 = !DILexicalBlockFile(scope: !2698, file: !316, discriminator: 1)
!2698 = distinct !DILexicalBlock(scope: !2692, file: !316, line: 360, column: 19)
!2699 = !DILocation(line: 360, column: 40, scope: !2697)
!2700 = !DILocation(line: 360, column: 19, scope: !2697)
!2701 = !DILocation(line: 360, column: 48, scope: !2702)
!2702 = !DILexicalBlockFile(scope: !2698, file: !316, discriminator: 2)
!2703 = !DILocation(line: 360, column: 53, scope: !2702)
!2704 = !DILocation(line: 360, column: 60, scope: !2702)
!2705 = !DILocation(line: 360, column: 59, scope: !2702)
!2706 = !DILocation(line: 360, column: 22, scope: !2702)
!2707 = !DILocation(line: 360, column: 11, scope: !2708)
!2708 = !DILexicalBlockFile(scope: !2698, file: !316, discriminator: 3)
!2709 = !DILocation(line: 360, column: 16, scope: !2708)
!2710 = !DILocation(line: 360, column: 9, scope: !2708)
!2711 = !DILocation(line: 360, column: 19, scope: !2708)
!2712 = distinct !{!2712, !2713}
!2713 = !DILocation(line: 360, column: 19, scope: !2688)
!2714 = !DILocalVariable(name: "tmp", scope: !2715, file: !316, line: 361, type: !338)
!2715 = distinct !DILexicalBlock(scope: !2689, file: !316, line: 361, column: 4)
!2716 = !DILocation(line: 361, column: 14, scope: !2715)
!2717 = !DILocation(line: 361, column: 31, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2715, file: !316, line: 361, column: 19)
!2719 = !DILocation(line: 361, column: 30, scope: !2718)
!2720 = !DILocation(line: 361, column: 28, scope: !2718)
!2721 = !DILocation(line: 361, column: 24, scope: !2718)
!2722 = !DILocation(line: 361, column: 36, scope: !2723)
!2723 = !DILexicalBlockFile(scope: !2724, file: !316, discriminator: 1)
!2724 = distinct !DILexicalBlock(scope: !2718, file: !316, line: 361, column: 19)
!2725 = !DILocation(line: 361, column: 40, scope: !2723)
!2726 = !DILocation(line: 361, column: 19, scope: !2723)
!2727 = !DILocation(line: 361, column: 48, scope: !2728)
!2728 = !DILexicalBlockFile(scope: !2724, file: !316, discriminator: 2)
!2729 = !DILocation(line: 361, column: 53, scope: !2728)
!2730 = !DILocation(line: 361, column: 22, scope: !2728)
!2731 = !DILocation(line: 361, column: 11, scope: !2732)
!2732 = !DILexicalBlockFile(scope: !2724, file: !316, discriminator: 3)
!2733 = !DILocation(line: 361, column: 16, scope: !2732)
!2734 = !DILocation(line: 361, column: 9, scope: !2732)
!2735 = !DILocation(line: 361, column: 19, scope: !2732)
!2736 = distinct !{!2736, !2737}
!2737 = !DILocation(line: 361, column: 19, scope: !2715)
!2738 = !DILocation(line: 362, column: 37, scope: !2689)
!2739 = !DILocation(line: 364, column: 2, scope: !2347)
!2740 = !DILocation(line: 307, column: 26, scope: !2741)
!2741 = !DILexicalBlockFile(scope: !2340, file: !316, discriminator: 2)
!2742 = !DILocation(line: 307, column: 2, scope: !2741)
!2743 = distinct !{!2743, !2337}
!2744 = !DILocation(line: 366, column: 6, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2312, file: !316, line: 366, column: 6)
!2746 = !DILocation(line: 366, column: 12, scope: !2745)
!2747 = !DILocation(line: 366, column: 6, scope: !2312)
!2748 = !DILocation(line: 367, column: 23, scope: !2745)
!2749 = !DILocation(line: 367, column: 30, scope: !2745)
!2750 = !DILocation(line: 367, column: 33, scope: !2745)
!2751 = !DILocation(line: 367, column: 37, scope: !2745)
!2752 = !DILocation(line: 367, column: 42, scope: !2745)
!2753 = !DILocation(line: 367, column: 10, scope: !2745)
!2754 = !DILocation(line: 367, column: 3, scope: !2745)
!2755 = !DILocation(line: 369, column: 14, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2312, file: !316, line: 369, column: 2)
!2757 = !DILocation(line: 369, column: 13, scope: !2756)
!2758 = !DILocation(line: 369, column: 11, scope: !2756)
!2759 = !DILocation(line: 369, column: 7, scope: !2756)
!2760 = !DILocation(line: 369, column: 19, scope: !2761)
!2761 = !DILexicalBlockFile(scope: !2762, file: !316, discriminator: 1)
!2762 = distinct !DILexicalBlock(scope: !2756, file: !316, line: 369, column: 2)
!2763 = !DILocation(line: 369, column: 23, scope: !2761)
!2764 = !DILocation(line: 369, column: 2, scope: !2761)
!2765 = !DILocalVariable(name: "str", scope: !2766, file: !316, line: 370, type: !539)
!2766 = distinct !DILexicalBlock(scope: !2762, file: !316, line: 369, column: 48)
!2767 = !DILocation(line: 370, column: 12, scope: !2766)
!2768 = !DILocation(line: 370, column: 18, scope: !2766)
!2769 = !DILocation(line: 370, column: 23, scope: !2766)
!2770 = !DILocation(line: 372, column: 21, scope: !2766)
!2771 = !DILocation(line: 372, column: 26, scope: !2766)
!2772 = !DILocation(line: 372, column: 31, scope: !2766)
!2773 = !DILocation(line: 372, column: 34, scope: !2766)
!2774 = !DILocation(line: 372, column: 3, scope: !2766)
!2775 = !DILocation(line: 373, column: 2, scope: !2766)
!2776 = !DILocation(line: 369, column: 37, scope: !2777)
!2777 = !DILexicalBlockFile(scope: !2762, file: !316, discriminator: 2)
!2778 = !DILocation(line: 369, column: 42, scope: !2777)
!2779 = !DILocation(line: 369, column: 35, scope: !2777)
!2780 = !DILocation(line: 369, column: 2, scope: !2777)
!2781 = distinct !{!2781, !2782}
!2782 = !DILocation(line: 369, column: 2, scope: !2312)
!2783 = !DILocation(line: 375, column: 9, scope: !2312)
!2784 = !DILocation(line: 376, column: 1, scope: !2312)
!2785 = distinct !DISubprogram(name: "expand_combo", scope: !316, file: !316, line: 207, type: !2786, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!2786 = !DISubroutineType(types: !2787)
!2787 = !{!354, !329, !329, !2315, !1939}
!2788 = !DILocalVariable(name: "start", arg: 1, scope: !2785, file: !316, line: 207, type: !329)
!2789 = !DILocation(line: 207, column: 37, scope: !2785)
!2790 = !DILocalVariable(name: "end", arg: 2, scope: !2785, file: !316, line: 207, type: !329)
!2791 = !DILocation(line: 207, column: 56, scope: !2785)
!2792 = !DILocalVariable(name: "out", arg: 3, scope: !2785, file: !316, line: 207, type: !2315)
!2793 = !DILocation(line: 207, column: 70, scope: !2785)
!2794 = !DILocalVariable(name: "limit", arg: 4, scope: !2785, file: !316, line: 207, type: !1939)
!2795 = !DILocation(line: 207, column: 80, scope: !2785)
!2796 = !DILocalVariable(name: "rec", scope: !2785, file: !316, line: 209, type: !387)
!2797 = !DILocation(line: 209, column: 18, scope: !2785)
!2798 = !DILocalVariable(name: "info", scope: !2785, file: !316, line: 210, type: !331)
!2799 = !DILocation(line: 210, column: 15, scope: !2785)
!2800 = !DILocalVariable(name: "tmp", scope: !2785, file: !316, line: 211, type: !338)
!2801 = !DILocation(line: 211, column: 17, scope: !2785)
!2802 = !DILocalVariable(name: "tmp2", scope: !2785, file: !316, line: 211, type: !338)
!2803 = !DILocation(line: 211, column: 23, scope: !2785)
!2804 = !DILocalVariable(name: "list", scope: !2785, file: !316, line: 211, type: !338)
!2805 = !DILocation(line: 211, column: 30, scope: !2785)
!2806 = !DILocalVariable(name: "copy", scope: !2785, file: !316, line: 211, type: !338)
!2807 = !DILocation(line: 211, column: 37, scope: !2785)
!2808 = !DILocalVariable(name: "newout", scope: !2785, file: !316, line: 211, type: !338)
!2809 = !DILocation(line: 211, column: 44, scope: !2785)
!2810 = !DILocalVariable(name: "str", scope: !2785, file: !316, line: 212, type: !319)
!2811 = !DILocation(line: 212, column: 8, scope: !2785)
!2812 = !DILocalVariable(name: "p", scope: !2785, file: !316, line: 212, type: !319)
!2813 = !DILocation(line: 212, column: 14, scope: !2785)
!2814 = !DILocation(line: 214, column: 8, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2785, file: !316, line: 214, column: 6)
!2816 = !DILocation(line: 214, column: 14, scope: !2815)
!2817 = !DILocation(line: 214, column: 17, scope: !2815)
!2818 = !DILocation(line: 214, column: 6, scope: !2785)
!2819 = !DILocation(line: 215, column: 3, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2815, file: !316, line: 214, column: 22)
!2821 = !DILocation(line: 218, column: 6, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2785, file: !316, line: 218, column: 6)
!2823 = !DILocation(line: 218, column: 15, scope: !2822)
!2824 = !DILocation(line: 218, column: 12, scope: !2822)
!2825 = !DILocation(line: 218, column: 6, scope: !2785)
!2826 = !DILocalVariable(name: "tmp", scope: !2827, file: !316, line: 220, type: !338)
!2827 = distinct !DILexicalBlock(scope: !2828, file: !316, line: 220, column: 3)
!2828 = distinct !DILexicalBlock(scope: !2822, file: !316, line: 218, column: 20)
!2829 = !DILocation(line: 220, column: 13, scope: !2827)
!2830 = !DILocation(line: 220, column: 30, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2827, file: !316, line: 220, column: 18)
!2832 = !DILocation(line: 220, column: 29, scope: !2831)
!2833 = !DILocation(line: 220, column: 27, scope: !2831)
!2834 = !DILocation(line: 220, column: 23, scope: !2831)
!2835 = !DILocation(line: 220, column: 35, scope: !2836)
!2836 = !DILexicalBlockFile(scope: !2837, file: !316, discriminator: 1)
!2837 = distinct !DILexicalBlock(scope: !2831, file: !316, line: 220, column: 18)
!2838 = !DILocation(line: 220, column: 39, scope: !2836)
!2839 = !DILocation(line: 220, column: 18, scope: !2836)
!2840 = !DILocation(line: 220, column: 47, scope: !2841)
!2841 = !DILexicalBlockFile(scope: !2837, file: !316, discriminator: 2)
!2842 = !DILocation(line: 220, column: 52, scope: !2841)
!2843 = !DILocation(line: 220, column: 59, scope: !2841)
!2844 = !DILocation(line: 220, column: 58, scope: !2841)
!2845 = !DILocation(line: 220, column: 21, scope: !2841)
!2846 = !DILocation(line: 220, column: 10, scope: !2847)
!2847 = !DILexicalBlockFile(scope: !2837, file: !316, discriminator: 3)
!2848 = !DILocation(line: 220, column: 15, scope: !2847)
!2849 = !DILocation(line: 220, column: 8, scope: !2847)
!2850 = !DILocation(line: 220, column: 18, scope: !2847)
!2851 = distinct !{!2851, !2852}
!2852 = !DILocation(line: 220, column: 18, scope: !2827)
!2853 = !DILocation(line: 221, column: 17, scope: !2828)
!2854 = !DILocation(line: 224, column: 9, scope: !2785)
!2855 = !DILocation(line: 224, column: 7, scope: !2785)
!2856 = !DILocation(line: 225, column: 6, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2785, file: !316, line: 225, column: 6)
!2858 = !DILocation(line: 225, column: 11, scope: !2857)
!2859 = !DILocation(line: 225, column: 6, scope: !2785)
!2860 = !DILocation(line: 226, column: 3, scope: !2857)
!2861 = !DILocation(line: 229, column: 14, scope: !2785)
!2862 = !DILocation(line: 230, column: 18, scope: !2785)
!2863 = !DILocation(line: 230, column: 32, scope: !2785)
!2864 = !DILocation(line: 230, column: 36, scope: !2785)
!2865 = !DILocation(line: 230, column: 35, scope: !2785)
!2866 = !DILocation(line: 230, column: 25, scope: !2785)
!2867 = !DILocation(line: 230, column: 42, scope: !2785)
!2868 = !DILocation(line: 230, column: 8, scope: !2785)
!2869 = !DILocation(line: 230, column: 6, scope: !2785)
!2870 = !DILocation(line: 231, column: 13, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2785, file: !316, line: 231, column: 2)
!2872 = !DILocation(line: 231, column: 19, scope: !2871)
!2873 = !DILocation(line: 231, column: 11, scope: !2871)
!2874 = !DILocation(line: 231, column: 7, scope: !2871)
!2875 = !DILocation(line: 231, column: 25, scope: !2876)
!2876 = !DILexicalBlockFile(scope: !2877, file: !316, discriminator: 1)
!2877 = distinct !DILexicalBlock(scope: !2871, file: !316, line: 231, column: 2)
!2878 = !DILocation(line: 231, column: 29, scope: !2876)
!2879 = !DILocation(line: 231, column: 2, scope: !2876)
!2880 = !DILocalVariable(name: "rec", scope: !2881, file: !316, line: 232, type: !387)
!2881 = distinct !DILexicalBlock(scope: !2877, file: !316, line: 231, column: 54)
!2882 = !DILocation(line: 232, column: 12, scope: !2881)
!2883 = !DILocation(line: 232, column: 18, scope: !2881)
!2884 = !DILocation(line: 232, column: 23, scope: !2881)
!2885 = !DILocation(line: 234, column: 17, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2881, file: !316, line: 234, column: 7)
!2887 = !DILocation(line: 234, column: 22, scope: !2886)
!2888 = !DILocation(line: 234, column: 28, scope: !2886)
!2889 = !DILocation(line: 234, column: 7, scope: !2886)
!2890 = !DILocation(line: 234, column: 33, scope: !2886)
!2891 = !DILocation(line: 234, column: 7, scope: !2881)
!2892 = !DILocation(line: 235, column: 47, scope: !2886)
!2893 = !DILocation(line: 235, column: 53, scope: !2886)
!2894 = !DILocation(line: 235, column: 32, scope: !2886)
!2895 = !DILocation(line: 235, column: 30, scope: !2886)
!2896 = !DILocation(line: 235, column: 25, scope: !2886)
!2897 = !DILocation(line: 236, column: 2, scope: !2881)
!2898 = !DILocation(line: 231, column: 43, scope: !2899)
!2899 = !DILexicalBlockFile(scope: !2877, file: !316, discriminator: 2)
!2900 = !DILocation(line: 231, column: 48, scope: !2899)
!2901 = !DILocation(line: 231, column: 41, scope: !2899)
!2902 = !DILocation(line: 231, column: 2, scope: !2899)
!2903 = distinct !{!2903, !2904}
!2904 = !DILocation(line: 231, column: 2, scope: !2785)
!2905 = !DILocation(line: 238, column: 6, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2785, file: !316, line: 238, column: 6)
!2907 = !DILocation(line: 238, column: 11, scope: !2906)
!2908 = !DILocation(line: 238, column: 6, scope: !2785)
!2909 = !DILocation(line: 241, column: 12, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2911, file: !316, line: 241, column: 3)
!2911 = distinct !DILexicalBlock(scope: !2906, file: !316, line: 238, column: 19)
!2912 = !DILocation(line: 241, column: 10, scope: !2910)
!2913 = !DILocation(line: 241, column: 8, scope: !2910)
!2914 = !DILocation(line: 241, column: 18, scope: !2915)
!2915 = !DILexicalBlockFile(scope: !2916, file: !316, discriminator: 1)
!2916 = distinct !DILexicalBlock(scope: !2910, file: !316, line: 241, column: 3)
!2917 = !DILocation(line: 241, column: 17, scope: !2915)
!2918 = !DILocation(line: 241, column: 20, scope: !2915)
!2919 = !DILocation(line: 241, column: 3, scope: !2915)
!2920 = !DILocalVariable(name: "tmp", scope: !2921, file: !316, line: 242, type: !338)
!2921 = distinct !DILexicalBlock(scope: !2916, file: !316, line: 242, column: 4)
!2922 = !DILocation(line: 242, column: 14, scope: !2921)
!2923 = !DILocation(line: 242, column: 31, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2921, file: !316, line: 242, column: 19)
!2925 = !DILocation(line: 242, column: 30, scope: !2924)
!2926 = !DILocation(line: 242, column: 28, scope: !2924)
!2927 = !DILocation(line: 242, column: 24, scope: !2924)
!2928 = !DILocation(line: 242, column: 36, scope: !2929)
!2929 = !DILexicalBlockFile(scope: !2930, file: !316, discriminator: 1)
!2930 = distinct !DILexicalBlock(scope: !2924, file: !316, line: 242, column: 19)
!2931 = !DILocation(line: 242, column: 40, scope: !2929)
!2932 = !DILocation(line: 242, column: 19, scope: !2929)
!2933 = !DILocation(line: 242, column: 48, scope: !2934)
!2934 = !DILexicalBlockFile(scope: !2930, file: !316, discriminator: 2)
!2935 = !DILocation(line: 242, column: 53, scope: !2934)
!2936 = !DILocation(line: 242, column: 60, scope: !2934)
!2937 = !DILocation(line: 242, column: 59, scope: !2934)
!2938 = !DILocation(line: 242, column: 22, scope: !2934)
!2939 = !DILocation(line: 242, column: 11, scope: !2940)
!2940 = !DILexicalBlockFile(scope: !2930, file: !316, discriminator: 3)
!2941 = !DILocation(line: 242, column: 16, scope: !2940)
!2942 = !DILocation(line: 242, column: 9, scope: !2940)
!2943 = !DILocation(line: 242, column: 19, scope: !2940)
!2944 = distinct !{!2944, !2945}
!2945 = !DILocation(line: 242, column: 19, scope: !2921)
!2946 = !DILocation(line: 242, column: 64, scope: !2947)
!2947 = !DILexicalBlockFile(scope: !2921, file: !316, discriminator: 4)
!2948 = !DILocation(line: 241, column: 30, scope: !2949)
!2949 = !DILexicalBlockFile(scope: !2916, file: !316, discriminator: 2)
!2950 = !DILocation(line: 241, column: 3, scope: !2949)
!2951 = distinct !{!2951, !2952}
!2952 = !DILocation(line: 241, column: 3, scope: !2911)
!2953 = !DILocation(line: 243, column: 10, scope: !2911)
!2954 = !DILocation(line: 243, column: 3, scope: !2911)
!2955 = !DILocation(line: 244, column: 3, scope: !2911)
!2956 = !DILocation(line: 246, column: 9, scope: !2785)
!2957 = !DILocation(line: 246, column: 2, scope: !2785)
!2958 = !DILocation(line: 248, column: 6, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2785, file: !316, line: 248, column: 6)
!2960 = !DILocation(line: 248, column: 12, scope: !2959)
!2961 = !DILocation(line: 248, column: 17, scope: !2959)
!2962 = !DILocation(line: 248, column: 6, scope: !2785)
!2963 = !DILocation(line: 250, column: 23, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2959, file: !316, line: 248, column: 25)
!2965 = !DILocation(line: 250, column: 29, scope: !2964)
!2966 = !DILocation(line: 250, column: 21, scope: !2964)
!2967 = !DILocation(line: 251, column: 16, scope: !2964)
!2968 = !DILocation(line: 251, column: 3, scope: !2964)
!2969 = !DILocation(line: 252, column: 21, scope: !2964)
!2970 = !DILocation(line: 252, column: 26, scope: !2964)
!2971 = !DILocation(line: 252, column: 31, scope: !2964)
!2972 = !DILocation(line: 252, column: 36, scope: !2964)
!2973 = !DILocation(line: 252, column: 10, scope: !2964)
!2974 = !DILocation(line: 252, column: 3, scope: !2964)
!2975 = !DILocation(line: 257, column: 16, scope: !2785)
!2976 = !DILocation(line: 258, column: 13, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2785, file: !316, line: 258, column: 2)
!2978 = !DILocation(line: 258, column: 19, scope: !2977)
!2979 = !DILocation(line: 258, column: 11, scope: !2977)
!2980 = !DILocation(line: 258, column: 7, scope: !2977)
!2981 = !DILocation(line: 258, column: 25, scope: !2982)
!2982 = !DILexicalBlockFile(scope: !2983, file: !316, discriminator: 1)
!2983 = distinct !DILexicalBlock(scope: !2977, file: !316, line: 258, column: 2)
!2984 = !DILocation(line: 258, column: 29, scope: !2982)
!2985 = !DILocation(line: 258, column: 2, scope: !2982)
!2986 = !DILocalVariable(name: "rec", scope: !2987, file: !316, line: 259, type: !387)
!2987 = distinct !DILexicalBlock(scope: !2983, file: !316, line: 258, column: 54)
!2988 = !DILocation(line: 259, column: 12, scope: !2987)
!2989 = !DILocation(line: 259, column: 18, scope: !2987)
!2990 = !DILocation(line: 259, column: 23, scope: !2987)
!2991 = !DILocation(line: 261, column: 8, scope: !2987)
!2992 = !DILocation(line: 262, column: 16, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2987, file: !316, line: 262, column: 3)
!2994 = !DILocation(line: 262, column: 15, scope: !2993)
!2995 = !DILocation(line: 262, column: 13, scope: !2993)
!2996 = !DILocation(line: 262, column: 8, scope: !2993)
!2997 = !DILocation(line: 262, column: 21, scope: !2998)
!2998 = !DILexicalBlockFile(scope: !2999, file: !316, discriminator: 1)
!2999 = distinct !DILexicalBlock(scope: !2993, file: !316, line: 262, column: 3)
!3000 = !DILocation(line: 262, column: 26, scope: !2998)
!3001 = !DILocation(line: 262, column: 3, scope: !2998)
!3002 = !DILocalVariable(name: "str", scope: !3003, file: !316, line: 263, type: !539)
!3003 = distinct !DILexicalBlock(scope: !2999, file: !316, line: 262, column: 53)
!3004 = !DILocation(line: 263, column: 13, scope: !3003)
!3005 = !DILocation(line: 263, column: 19, scope: !3003)
!3006 = !DILocation(line: 263, column: 25, scope: !3003)
!3007 = !DILocation(line: 264, column: 47, scope: !3003)
!3008 = !DILocation(line: 264, column: 66, scope: !3003)
!3009 = !DILocation(line: 264, column: 71, scope: !3003)
!3010 = !DILocation(line: 264, column: 53, scope: !3003)
!3011 = !DILocation(line: 264, column: 32, scope: !3012)
!3012 = !DILexicalBlockFile(scope: !3003, file: !316, discriminator: 1)
!3013 = !DILocation(line: 264, column: 30, scope: !3003)
!3014 = !DILocation(line: 265, column: 3, scope: !3003)
!3015 = !DILocation(line: 262, column: 41, scope: !3016)
!3016 = !DILexicalBlockFile(scope: !2999, file: !316, discriminator: 2)
!3017 = !DILocation(line: 262, column: 47, scope: !3016)
!3018 = !DILocation(line: 262, column: 39, scope: !3016)
!3019 = !DILocation(line: 262, column: 3, scope: !3016)
!3020 = distinct !{!3020, !3021}
!3021 = !DILocation(line: 262, column: 3, scope: !2987)
!3022 = !DILocation(line: 267, column: 19, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !2987, file: !316, line: 267, column: 7)
!3024 = !DILocation(line: 267, column: 24, scope: !3023)
!3025 = !DILocation(line: 267, column: 36, scope: !3023)
!3026 = !DILocation(line: 267, column: 8, scope: !3023)
!3027 = !DILocation(line: 267, column: 7, scope: !2987)
!3028 = !DILocation(line: 268, column: 9, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !3030, file: !316, line: 268, column: 8)
!3030 = distinct !DILexicalBlock(scope: !3023, file: !316, line: 267, column: 44)
!3031 = !DILocation(line: 268, column: 8, scope: !3029)
!3032 = !DILocation(line: 268, column: 15, scope: !3029)
!3033 = !DILocation(line: 268, column: 8, scope: !3030)
!3034 = !DILocation(line: 269, column: 5, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3029, file: !316, line: 268, column: 20)
!3036 = !DILocalVariable(name: "tmp", scope: !3037, file: !316, line: 273, type: !338)
!3037 = distinct !DILexicalBlock(scope: !3030, file: !316, line: 273, column: 25)
!3038 = !DILocation(line: 273, column: 35, scope: !3037)
!3039 = !DILocation(line: 273, column: 51, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3037, file: !316, line: 273, column: 40)
!3041 = !DILocation(line: 273, column: 49, scope: !3040)
!3042 = !DILocation(line: 273, column: 45, scope: !3040)
!3043 = !DILocation(line: 273, column: 57, scope: !3044)
!3044 = !DILexicalBlockFile(scope: !3045, file: !316, discriminator: 1)
!3045 = distinct !DILexicalBlock(scope: !3040, file: !316, line: 273, column: 40)
!3046 = !DILocation(line: 273, column: 61, scope: !3044)
!3047 = !DILocation(line: 273, column: 40, scope: !3044)
!3048 = !DILocation(line: 273, column: 57, scope: !3049)
!3049 = !DILexicalBlockFile(scope: !3045, file: !316, discriminator: 2)
!3050 = !DILocation(line: 273, column: 62, scope: !3049)
!3051 = !DILocation(line: 273, column: 43, scope: !3049)
!3052 = !DILocation(line: 273, column: 32, scope: !3053)
!3053 = !DILexicalBlockFile(scope: !3045, file: !316, discriminator: 3)
!3054 = !DILocation(line: 273, column: 37, scope: !3053)
!3055 = !DILocation(line: 273, column: 30, scope: !3053)
!3056 = !DILocation(line: 273, column: 40, scope: !3053)
!3057 = distinct !{!3057, !3058}
!3058 = !DILocation(line: 273, column: 40, scope: !3037)
!3059 = !DILocation(line: 273, column: 90, scope: !3060)
!3060 = !DILexicalBlockFile(scope: !3037, file: !316, discriminator: 4)
!3061 = !DILocation(line: 273, column: 77, scope: !3060)
!3062 = !DILocation(line: 273, column: 102, scope: !3060)
!3063 = !DILocation(line: 274, column: 3, scope: !3030)
!3064 = !DILocation(line: 275, column: 49, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3023, file: !316, line: 274, column: 10)
!3066 = !DILocation(line: 275, column: 57, scope: !3065)
!3067 = !DILocation(line: 275, column: 34, scope: !3065)
!3068 = !DILocation(line: 275, column: 32, scope: !3065)
!3069 = !DILocation(line: 277, column: 2, scope: !2987)
!3070 = !DILocation(line: 258, column: 43, scope: !3071)
!3071 = !DILexicalBlockFile(scope: !2983, file: !316, discriminator: 2)
!3072 = !DILocation(line: 258, column: 48, scope: !3071)
!3073 = !DILocation(line: 258, column: 41, scope: !3071)
!3074 = !DILocation(line: 258, column: 2, scope: !3071)
!3075 = distinct !{!3075, !3076}
!3076 = !DILocation(line: 258, column: 2, scope: !2785)
!3077 = !DILocation(line: 279, column: 15, scope: !2785)
!3078 = !DILocation(line: 279, column: 21, scope: !2785)
!3079 = !DILocation(line: 279, column: 13, scope: !2785)
!3080 = !DILocation(line: 280, column: 15, scope: !2785)
!3081 = !DILocation(line: 280, column: 2, scope: !2785)
!3082 = !DILocation(line: 281, column: 18, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !2785, file: !316, line: 281, column: 6)
!3084 = !DILocation(line: 281, column: 23, scope: !3083)
!3085 = !DILocation(line: 281, column: 28, scope: !3083)
!3086 = !DILocation(line: 281, column: 33, scope: !3083)
!3087 = !DILocation(line: 281, column: 7, scope: !3083)
!3088 = !DILocation(line: 281, column: 6, scope: !2785)
!3089 = !DILocation(line: 282, column: 8, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3091, file: !316, line: 282, column: 7)
!3091 = distinct !DILexicalBlock(scope: !3083, file: !316, line: 281, column: 41)
!3092 = !DILocation(line: 282, column: 7, scope: !3090)
!3093 = !DILocation(line: 282, column: 14, scope: !3090)
!3094 = !DILocation(line: 282, column: 7, scope: !3091)
!3095 = !DILocation(line: 283, column: 4, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3090, file: !316, line: 282, column: 19)
!3097 = !DILocalVariable(name: "tmp", scope: !3098, file: !316, line: 287, type: !338)
!3098 = distinct !DILexicalBlock(scope: !3091, file: !316, line: 287, column: 3)
!3099 = !DILocation(line: 287, column: 13, scope: !3098)
!3100 = !DILocation(line: 287, column: 30, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3098, file: !316, line: 287, column: 18)
!3102 = !DILocation(line: 287, column: 29, scope: !3101)
!3103 = !DILocation(line: 287, column: 27, scope: !3101)
!3104 = !DILocation(line: 287, column: 23, scope: !3101)
!3105 = !DILocation(line: 287, column: 35, scope: !3106)
!3106 = !DILexicalBlockFile(scope: !3107, file: !316, discriminator: 1)
!3107 = distinct !DILexicalBlock(scope: !3101, file: !316, line: 287, column: 18)
!3108 = !DILocation(line: 287, column: 39, scope: !3106)
!3109 = !DILocation(line: 287, column: 18, scope: !3106)
!3110 = !DILocation(line: 287, column: 35, scope: !3111)
!3111 = !DILexicalBlockFile(scope: !3107, file: !316, discriminator: 2)
!3112 = !DILocation(line: 287, column: 40, scope: !3111)
!3113 = !DILocation(line: 287, column: 21, scope: !3111)
!3114 = !DILocation(line: 287, column: 10, scope: !3115)
!3115 = !DILexicalBlockFile(scope: !3107, file: !316, discriminator: 3)
!3116 = !DILocation(line: 287, column: 15, scope: !3115)
!3117 = !DILocation(line: 287, column: 8, scope: !3115)
!3118 = !DILocation(line: 287, column: 18, scope: !3115)
!3119 = distinct !{!3119, !3120}
!3120 = !DILocation(line: 287, column: 18, scope: !3098)
!3121 = !DILocation(line: 287, column: 69, scope: !3122)
!3122 = !DILexicalBlockFile(scope: !3098, file: !316, discriminator: 4)
!3123 = !DILocation(line: 287, column: 68, scope: !3122)
!3124 = !DILocation(line: 287, column: 55, scope: !3122)
!3125 = !DILocation(line: 287, column: 76, scope: !3122)
!3126 = !DILocation(line: 287, column: 80, scope: !3122)
!3127 = !DILocation(line: 288, column: 2, scope: !3091)
!3128 = !DILocation(line: 290, column: 25, scope: !2785)
!3129 = !DILocation(line: 290, column: 24, scope: !2785)
!3130 = !DILocation(line: 290, column: 30, scope: !2785)
!3131 = !DILocation(line: 290, column: 9, scope: !2785)
!3132 = !DILocation(line: 290, column: 3, scope: !2785)
!3133 = !DILocation(line: 290, column: 7, scope: !2785)
!3134 = !DILocation(line: 291, column: 17, scope: !2785)
!3135 = !DILocation(line: 291, column: 16, scope: !2785)
!3136 = !DILocation(line: 291, column: 21, scope: !2785)
!3137 = !DILocation(line: 291, column: 9, scope: !2785)
!3138 = !DILocation(line: 292, column: 1, scope: !2785)
!3139 = distinct !DISubprogram(name: "g_string_append_c_inline", scope: !541, file: !541, line: 161, type: !3140, isLocal: true, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{!539, !539, !328}
!3142 = !DILocalVariable(name: "gstring", arg: 1, scope: !3139, file: !541, line: 161, type: !539)
!3143 = !DILocation(line: 161, column: 36, scope: !3139)
!3144 = !DILocalVariable(name: "c", arg: 2, scope: !3139, file: !541, line: 162, type: !328)
!3145 = !DILocation(line: 162, column: 33, scope: !3139)
!3146 = !DILocation(line: 164, column: 7, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3139, file: !541, line: 164, column: 7)
!3148 = !DILocation(line: 164, column: 16, scope: !3147)
!3149 = !DILocation(line: 164, column: 20, scope: !3147)
!3150 = !DILocation(line: 164, column: 26, scope: !3147)
!3151 = !DILocation(line: 164, column: 35, scope: !3147)
!3152 = !DILocation(line: 164, column: 24, scope: !3147)
!3153 = !DILocation(line: 164, column: 7, scope: !3139)
!3154 = !DILocation(line: 166, column: 38, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3147, file: !541, line: 165, column: 5)
!3156 = !DILocation(line: 166, column: 20, scope: !3155)
!3157 = !DILocation(line: 166, column: 29, scope: !3155)
!3158 = !DILocation(line: 166, column: 32, scope: !3155)
!3159 = !DILocation(line: 166, column: 7, scope: !3155)
!3160 = !DILocation(line: 166, column: 16, scope: !3155)
!3161 = !DILocation(line: 166, column: 36, scope: !3155)
!3162 = !DILocation(line: 167, column: 20, scope: !3155)
!3163 = !DILocation(line: 167, column: 29, scope: !3155)
!3164 = !DILocation(line: 167, column: 7, scope: !3155)
!3165 = !DILocation(line: 167, column: 16, scope: !3155)
!3166 = !DILocation(line: 167, column: 34, scope: !3155)
!3167 = !DILocation(line: 168, column: 5, scope: !3155)
!3168 = !DILocation(line: 170, column: 24, scope: !3147)
!3169 = !DILocation(line: 170, column: 37, scope: !3147)
!3170 = !DILocation(line: 170, column: 5, scope: !3147)
!3171 = !DILocation(line: 171, column: 10, scope: !3139)
!3172 = !DILocation(line: 171, column: 3, scope: !3139)
!3173 = distinct !DISubprogram(name: "key_destroy", scope: !316, file: !316, line: 85, type: !3174, isLocal: true, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{null, !387, !403}
!3176 = !DILocalVariable(name: "rec", arg: 1, scope: !3173, file: !316, line: 85, type: !387)
!3177 = !DILocation(line: 85, column: 34, scope: !3173)
!3178 = !DILocalVariable(name: "hash", arg: 2, scope: !3173, file: !316, line: 85, type: !403)
!3179 = !DILocation(line: 85, column: 51, scope: !3173)
!3180 = !DILocation(line: 87, column: 22, scope: !3173)
!3181 = !DILocation(line: 87, column: 28, scope: !3173)
!3182 = !DILocation(line: 87, column: 33, scope: !3173)
!3183 = !DILocation(line: 87, column: 2, scope: !3173)
!3184 = !DILocation(line: 89, column: 9, scope: !3173)
!3185 = !DILocation(line: 89, column: 14, scope: !3173)
!3186 = !DILocation(line: 89, column: 2, scope: !3173)
!3187 = !DILocation(line: 90, column: 9, scope: !3173)
!3188 = !DILocation(line: 90, column: 14, scope: !3173)
!3189 = !DILocation(line: 90, column: 2, scope: !3173)
!3190 = !DILocation(line: 91, column: 9, scope: !3173)
!3191 = !DILocation(line: 91, column: 2, scope: !3173)
!3192 = !DILocation(line: 92, column: 1, scope: !3173)
!3193 = distinct !DISubprogram(name: "keyboard_reset_defaults", scope: !316, file: !316, line: 904, type: !510, isLocal: true, isDefinition: true, scopeLine: 905, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!3194 = !DILocation(line: 906, column: 30, scope: !3193)
!3195 = !DILocation(line: 906, column: 2, scope: !3193)
!3196 = !DILocation(line: 907, column: 30, scope: !3193)
!3197 = !DILocation(line: 907, column: 9, scope: !3193)
!3198 = !DILocation(line: 908, column: 1, scope: !3193)
!3199 = distinct !DISubprogram(name: "key_config_read", scope: !316, file: !316, line: 910, type: !3200, isLocal: true, isDefinition: true, scopeLine: 911, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{null, !1034}
!3202 = !DILocalVariable(name: "node", arg: 1, scope: !3199, file: !316, line: 910, type: !1034)
!3203 = !DILocation(line: 910, column: 42, scope: !3199)
!3204 = !DILocalVariable(name: "key", scope: !3199, file: !316, line: 912, type: !319)
!3205 = !DILocation(line: 912, column: 8, scope: !3199)
!3206 = !DILocalVariable(name: "id", scope: !3199, file: !316, line: 912, type: !319)
!3207 = !DILocation(line: 912, column: 14, scope: !3199)
!3208 = !DILocalVariable(name: "data", scope: !3199, file: !316, line: 912, type: !319)
!3209 = !DILocation(line: 912, column: 19, scope: !3199)
!3210 = !DILocation(line: 914, column: 2, scope: !3199)
!3211 = distinct !{!3211, !3210}
!3212 = !DILocation(line: 914, column: 10, scope: !3213)
!3213 = !DILexicalBlockFile(scope: !3214, file: !316, discriminator: 1)
!3214 = distinct !DILexicalBlock(scope: !3215, file: !316, line: 914, column: 10)
!3215 = distinct !DILexicalBlock(scope: !3199, file: !316, line: 914, column: 4)
!3216 = !DILocation(line: 914, column: 15, scope: !3213)
!3217 = !DILocation(line: 914, column: 5, scope: !3218)
!3218 = !DILexicalBlockFile(scope: !3219, file: !316, discriminator: 2)
!3219 = distinct !DILexicalBlock(scope: !3214, file: !316, line: 914, column: 3)
!3220 = !DILocation(line: 914, column: 14, scope: !3221)
!3221 = !DILexicalBlockFile(scope: !3222, file: !316, discriminator: 3)
!3222 = distinct !DILexicalBlock(scope: !3214, file: !316, line: 914, column: 12)
!3223 = !DILocation(line: 914, column: 99, scope: !3221)
!3224 = !DILocation(line: 914, column: 110, scope: !3225)
!3225 = !DILexicalBlockFile(scope: !3215, file: !316, discriminator: 4)
!3226 = !DILocation(line: 916, column: 28, scope: !3199)
!3227 = !DILocation(line: 916, column: 8, scope: !3199)
!3228 = !DILocation(line: 916, column: 6, scope: !3199)
!3229 = !DILocation(line: 917, column: 27, scope: !3199)
!3230 = !DILocation(line: 917, column: 7, scope: !3199)
!3231 = !DILocation(line: 917, column: 5, scope: !3199)
!3232 = !DILocation(line: 918, column: 29, scope: !3199)
!3233 = !DILocation(line: 918, column: 9, scope: !3199)
!3234 = !DILocation(line: 918, column: 7, scope: !3199)
!3235 = !DILocation(line: 920, column: 6, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3199, file: !316, line: 920, column: 6)
!3237 = !DILocation(line: 920, column: 10, scope: !3236)
!3238 = !DILocation(line: 920, column: 17, scope: !3236)
!3239 = !DILocation(line: 920, column: 20, scope: !3240)
!3240 = !DILexicalBlockFile(scope: !3236, file: !316, discriminator: 1)
!3241 = !DILocation(line: 920, column: 23, scope: !3240)
!3242 = !DILocation(line: 920, column: 6, scope: !3240)
!3243 = !DILocation(line: 921, column: 24, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3236, file: !316, line: 920, column: 32)
!3245 = !DILocation(line: 921, column: 28, scope: !3244)
!3246 = !DILocation(line: 921, column: 33, scope: !3244)
!3247 = !DILocation(line: 921, column: 3, scope: !3244)
!3248 = !DILocation(line: 922, column: 2, scope: !3244)
!3249 = !DILocation(line: 922, column: 13, scope: !3250)
!3250 = !DILexicalBlockFile(scope: !3251, file: !316, discriminator: 1)
!3251 = distinct !DILexicalBlock(scope: !3236, file: !316, line: 922, column: 13)
!3252 = !DILocation(line: 922, column: 17, scope: !3250)
!3253 = !DILocation(line: 922, column: 24, scope: !3250)
!3254 = !DILocation(line: 922, column: 27, scope: !3255)
!3255 = !DILexicalBlockFile(scope: !3251, file: !316, discriminator: 2)
!3256 = !DILocation(line: 922, column: 30, scope: !3255)
!3257 = !DILocation(line: 922, column: 38, scope: !3255)
!3258 = !DILocation(line: 922, column: 41, scope: !3259)
!3259 = !DILexicalBlockFile(scope: !3251, file: !316, discriminator: 3)
!3260 = !DILocation(line: 922, column: 46, scope: !3259)
!3261 = !DILocation(line: 922, column: 13, scope: !3259)
!3262 = !DILocalVariable(name: "rec", scope: !3263, file: !316, line: 923, type: !387)
!3263 = distinct !DILexicalBlock(scope: !3251, file: !316, line: 922, column: 55)
!3264 = !DILocation(line: 923, column: 12, scope: !3263)
!3265 = !DILocation(line: 923, column: 38, scope: !3263)
!3266 = !DILocation(line: 923, column: 44, scope: !3263)
!3267 = !DILocation(line: 923, column: 18, scope: !3263)
!3268 = !DILocation(line: 924, column: 7, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3263, file: !316, line: 924, column: 7)
!3270 = !DILocation(line: 924, column: 11, scope: !3269)
!3271 = !DILocation(line: 924, column: 7, scope: !3263)
!3272 = !DILocation(line: 925, column: 26, scope: !3269)
!3273 = !DILocation(line: 925, column: 4, scope: !3269)
!3274 = !DILocation(line: 926, column: 2, scope: !3263)
!3275 = !DILocation(line: 927, column: 1, scope: !3199)
!3276 = distinct !DISubprogram(name: "key_destroy_hash", scope: !316, file: !316, line: 881, type: !3277, isLocal: true, isDefinition: true, scopeLine: 882, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!3277 = !DISubroutineType(types: !3278)
!3278 = !{!354, !329, !387}
!3279 = !DILocalVariable(name: "key", arg: 1, scope: !3276, file: !316, line: 881, type: !329)
!3280 = !DILocation(line: 881, column: 41, scope: !3276)
!3281 = !DILocalVariable(name: "rec", arg: 2, scope: !3276, file: !316, line: 881, type: !387)
!3282 = !DILocation(line: 881, column: 55, scope: !3276)
!3283 = !DILocation(line: 883, column: 35, scope: !3276)
!3284 = !DILocation(line: 883, column: 40, scope: !3276)
!3285 = !DILocation(line: 883, column: 46, scope: !3276)
!3286 = !DILocation(line: 883, column: 52, scope: !3276)
!3287 = !DILocation(line: 883, column: 20, scope: !3276)
!3288 = !DILocation(line: 883, column: 2, scope: !3276)
!3289 = !DILocation(line: 883, column: 7, scope: !3276)
!3290 = !DILocation(line: 883, column: 13, scope: !3276)
!3291 = !DILocation(line: 883, column: 18, scope: !3276)
!3292 = !DILocation(line: 885, column: 9, scope: !3276)
!3293 = !DILocation(line: 885, column: 14, scope: !3276)
!3294 = !DILocation(line: 885, column: 2, scope: !3276)
!3295 = !DILocation(line: 886, column: 9, scope: !3276)
!3296 = !DILocation(line: 886, column: 14, scope: !3276)
!3297 = !DILocation(line: 886, column: 2, scope: !3276)
!3298 = !DILocation(line: 887, column: 9, scope: !3276)
!3299 = !DILocation(line: 887, column: 2, scope: !3276)
!3300 = !DILocation(line: 888, column: 9, scope: !3276)
!3301 = distinct !DISubprogram(name: "key_copy_default", scope: !316, file: !316, line: 891, type: !2209, isLocal: true, isDefinition: true, scopeLine: 892, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!3302 = !DILocalVariable(name: "key", arg: 1, scope: !3301, file: !316, line: 891, type: !329)
!3303 = !DILocation(line: 891, column: 42, scope: !3301)
!3304 = !DILocalVariable(name: "orig", arg: 2, scope: !3301, file: !316, line: 891, type: !387)
!3305 = !DILocation(line: 891, column: 56, scope: !3301)
!3306 = !DILocalVariable(name: "rec", scope: !3301, file: !316, line: 893, type: !387)
!3307 = !DILocation(line: 893, column: 11, scope: !3301)
!3308 = !DILocation(line: 895, column: 28, scope: !3301)
!3309 = !DILocation(line: 895, column: 16, scope: !3301)
!3310 = !DILocation(line: 895, column: 13, scope: !3301)
!3311 = !DILocation(line: 896, column: 22, scope: !3301)
!3312 = !DILocation(line: 896, column: 28, scope: !3301)
!3313 = !DILocation(line: 896, column: 13, scope: !3301)
!3314 = !DILocation(line: 896, column: 2, scope: !3301)
!3315 = !DILocation(line: 896, column: 7, scope: !3301)
!3316 = !DILocation(line: 896, column: 11, scope: !3301)
!3317 = !DILocation(line: 897, column: 14, scope: !3301)
!3318 = !DILocation(line: 897, column: 20, scope: !3301)
!3319 = !DILocation(line: 897, column: 2, scope: !3301)
!3320 = !DILocation(line: 897, column: 7, scope: !3301)
!3321 = !DILocation(line: 897, column: 12, scope: !3301)
!3322 = !DILocation(line: 898, column: 23, scope: !3301)
!3323 = !DILocation(line: 898, column: 29, scope: !3301)
!3324 = !DILocation(line: 898, column: 14, scope: !3301)
!3325 = !DILocation(line: 898, column: 2, scope: !3301)
!3326 = !DILocation(line: 898, column: 7, scope: !3301)
!3327 = !DILocation(line: 898, column: 12, scope: !3301)
!3328 = !DILocation(line: 900, column: 35, scope: !3301)
!3329 = !DILocation(line: 900, column: 40, scope: !3301)
!3330 = !DILocation(line: 900, column: 46, scope: !3301)
!3331 = !DILocation(line: 900, column: 52, scope: !3301)
!3332 = !DILocation(line: 900, column: 20, scope: !3301)
!3333 = !DILocation(line: 900, column: 2, scope: !3301)
!3334 = !DILocation(line: 900, column: 7, scope: !3301)
!3335 = !DILocation(line: 900, column: 13, scope: !3301)
!3336 = !DILocation(line: 900, column: 18, scope: !3301)
!3337 = !DILocation(line: 901, column: 22, scope: !3301)
!3338 = !DILocation(line: 901, column: 28, scope: !3301)
!3339 = !DILocation(line: 901, column: 33, scope: !3301)
!3340 = !DILocation(line: 901, column: 38, scope: !3301)
!3341 = !DILocation(line: 901, column: 2, scope: !3301)
!3342 = !DILocation(line: 902, column: 1, scope: !3301)
!3343 = distinct !DISubprogram(name: "completion_get_keyinfos", scope: !316, file: !316, line: 849, type: !3344, isLocal: true, isDefinition: true, scopeLine: 850, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!1861, !329}
!3346 = !DILocalVariable(name: "info", arg: 1, scope: !3343, file: !316, line: 849, type: !329)
!3347 = !DILocation(line: 849, column: 51, scope: !3343)
!3348 = !DILocalVariable(name: "list", scope: !3343, file: !316, line: 851, type: !1861)
!3349 = !DILocation(line: 851, column: 9, scope: !3343)
!3350 = !DILocalVariable(name: "tmp", scope: !3343, file: !316, line: 852, type: !338)
!3351 = !DILocation(line: 852, column: 10, scope: !3343)
!3352 = !DILocalVariable(name: "len", scope: !3343, file: !316, line: 853, type: !354)
!3353 = !DILocation(line: 853, column: 6, scope: !3343)
!3354 = !DILocation(line: 855, column: 7, scope: !3343)
!3355 = !DILocation(line: 855, column: 27, scope: !3343)
!3356 = !DILocation(line: 855, column: 20, scope: !3343)
!3357 = !DILocation(line: 855, column: 18, scope: !3343)
!3358 = !DILocation(line: 856, column: 13, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3343, file: !316, line: 856, column: 2)
!3360 = !DILocation(line: 856, column: 11, scope: !3359)
!3361 = !DILocation(line: 856, column: 7, scope: !3359)
!3362 = !DILocation(line: 856, column: 23, scope: !3363)
!3363 = !DILexicalBlockFile(scope: !3364, file: !316, discriminator: 1)
!3364 = distinct !DILexicalBlock(scope: !3359, file: !316, line: 856, column: 2)
!3365 = !DILocation(line: 856, column: 27, scope: !3363)
!3366 = !DILocation(line: 856, column: 2, scope: !3363)
!3367 = !DILocalVariable(name: "rec", scope: !3368, file: !316, line: 857, type: !331)
!3368 = distinct !DILexicalBlock(scope: !3364, file: !316, line: 856, column: 52)
!3369 = !DILocation(line: 857, column: 16, scope: !3368)
!3370 = !DILocation(line: 857, column: 22, scope: !3368)
!3371 = !DILocation(line: 857, column: 27, scope: !3368)
!3372 = !DILocation(line: 859, column: 27, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3368, file: !316, line: 859, column: 7)
!3374 = !DILocation(line: 859, column: 32, scope: !3373)
!3375 = !DILocation(line: 859, column: 36, scope: !3373)
!3376 = !DILocation(line: 859, column: 42, scope: !3373)
!3377 = !DILocation(line: 859, column: 7, scope: !3373)
!3378 = !DILocation(line: 859, column: 47, scope: !3373)
!3379 = !DILocation(line: 859, column: 7, scope: !3368)
!3380 = !DILocation(line: 860, column: 46, scope: !3373)
!3381 = !DILocation(line: 860, column: 61, scope: !3373)
!3382 = !DILocation(line: 860, column: 66, scope: !3373)
!3383 = !DILocation(line: 860, column: 52, scope: !3373)
!3384 = !DILocation(line: 860, column: 32, scope: !3385)
!3385 = !DILexicalBlockFile(scope: !3373, file: !316, discriminator: 1)
!3386 = !DILocation(line: 860, column: 30, scope: !3373)
!3387 = !DILocation(line: 860, column: 25, scope: !3373)
!3388 = !DILocation(line: 861, column: 2, scope: !3368)
!3389 = !DILocation(line: 856, column: 41, scope: !3390)
!3390 = !DILexicalBlockFile(scope: !3364, file: !316, discriminator: 2)
!3391 = !DILocation(line: 856, column: 46, scope: !3390)
!3392 = !DILocation(line: 856, column: 39, scope: !3390)
!3393 = !DILocation(line: 856, column: 2, scope: !3390)
!3394 = distinct !{!3394, !3395}
!3395 = !DILocation(line: 856, column: 2, scope: !3343)
!3396 = !DILocation(line: 863, column: 9, scope: !3343)
!3397 = !DILocation(line: 863, column: 2, scope: !3343)
!3398 = distinct !DISubprogram(name: "cmd_show_keys", scope: !316, file: !316, line: 759, type: !3399, isLocal: true, isDefinition: true, scopeLine: 760, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !423)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{null, !329, !354}
!3401 = !DILocalVariable(name: "searchkey", arg: 1, scope: !3398, file: !316, line: 759, type: !329)
!3402 = !DILocation(line: 759, column: 39, scope: !3398)
!3403 = !DILocalVariable(name: "full", arg: 2, scope: !3398, file: !316, line: 759, type: !354)
!3404 = !DILocation(line: 759, column: 54, scope: !3398)
!3405 = !DILocalVariable(name: "info", scope: !3398, file: !316, line: 761, type: !338)
!3406 = !DILocation(line: 761, column: 10, scope: !3398)
!3407 = !DILocalVariable(name: "key", scope: !3398, file: !316, line: 761, type: !338)
!3408 = !DILocation(line: 761, column: 17, scope: !3398)
!3409 = !DILocalVariable(name: "len", scope: !3398, file: !316, line: 762, type: !354)
!3410 = !DILocation(line: 762, column: 13, scope: !3398)
!3411 = !DILocation(line: 764, column: 2, scope: !3398)
!3412 = !DILocation(line: 766, column: 8, scope: !3398)
!3413 = !DILocation(line: 766, column: 18, scope: !3398)
!3414 = !DILocation(line: 766, column: 8, scope: !3415)
!3415 = !DILexicalBlockFile(scope: !3398, file: !316, discriminator: 1)
!3416 = !DILocation(line: 766, column: 38, scope: !3417)
!3417 = !DILexicalBlockFile(scope: !3398, file: !316, discriminator: 2)
!3418 = !DILocation(line: 766, column: 31, scope: !3417)
!3419 = !DILocation(line: 766, column: 8, scope: !3417)
!3420 = !DILocation(line: 766, column: 8, scope: !3421)
!3421 = !DILexicalBlockFile(scope: !3398, file: !316, discriminator: 3)
!3422 = !DILocation(line: 766, column: 6, scope: !3421)
!3423 = !DILocation(line: 767, column: 14, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !3398, file: !316, line: 767, column: 2)
!3425 = !DILocation(line: 767, column: 12, scope: !3424)
!3426 = !DILocation(line: 767, column: 7, scope: !3424)
!3427 = !DILocation(line: 767, column: 24, scope: !3428)
!3428 = !DILexicalBlockFile(scope: !3429, file: !316, discriminator: 1)
!3429 = distinct !DILexicalBlock(scope: !3424, file: !316, line: 767, column: 2)
!3430 = !DILocation(line: 767, column: 29, scope: !3428)
!3431 = !DILocation(line: 767, column: 2, scope: !3428)
!3432 = !DILocalVariable(name: "rec", scope: !3433, file: !316, line: 768, type: !331)
!3433 = distinct !DILexicalBlock(scope: !3429, file: !316, line: 767, column: 56)
!3434 = !DILocation(line: 768, column: 16, scope: !3433)
!3435 = !DILocation(line: 768, column: 22, scope: !3433)
!3436 = !DILocation(line: 768, column: 28, scope: !3433)
!3437 = !DILocation(line: 770, column: 14, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !3433, file: !316, line: 770, column: 3)
!3439 = !DILocation(line: 770, column: 19, scope: !3438)
!3440 = !DILocation(line: 770, column: 12, scope: !3438)
!3441 = !DILocation(line: 770, column: 8, scope: !3438)
!3442 = !DILocation(line: 770, column: 25, scope: !3443)
!3443 = !DILexicalBlockFile(scope: !3444, file: !316, discriminator: 1)
!3444 = distinct !DILexicalBlock(scope: !3438, file: !316, line: 770, column: 3)
!3445 = !DILocation(line: 770, column: 29, scope: !3443)
!3446 = !DILocation(line: 770, column: 3, scope: !3443)
!3447 = !DILocalVariable(name: "rec", scope: !3448, file: !316, line: 771, type: !387)
!3448 = distinct !DILexicalBlock(scope: !3444, file: !316, line: 770, column: 54)
!3449 = !DILocation(line: 771, column: 13, scope: !3448)
!3450 = !DILocation(line: 771, column: 19, scope: !3448)
!3451 = !DILocation(line: 771, column: 24, scope: !3448)
!3452 = !DILocation(line: 773, column: 9, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3448, file: !316, line: 773, column: 8)
!3454 = !DILocation(line: 773, column: 13, scope: !3453)
!3455 = !DILocation(line: 773, column: 18, scope: !3453)
!3456 = !DILocation(line: 774, column: 10, scope: !3453)
!3457 = !DILocation(line: 775, column: 70, scope: !3453)
!3458 = !DILocation(line: 774, column: 25, scope: !3459)
!3459 = !DILexicalBlockFile(scope: !3453, file: !316, discriminator: 1)
!3460 = !DILocation(line: 774, column: 30, scope: !3459)
!3461 = !DILocation(line: 774, column: 35, scope: !3459)
!3462 = !DILocation(line: 774, column: 46, scope: !3459)
!3463 = !DILocation(line: 774, column: 17, scope: !3459)
!3464 = !DILocation(line: 774, column: 51, scope: !3459)
!3465 = !DILocation(line: 774, column: 10, scope: !3459)
!3466 = !DILocation(line: 775, column: 37, scope: !3459)
!3467 = !DILocation(line: 775, column: 42, scope: !3459)
!3468 = !DILocation(line: 775, column: 47, scope: !3459)
!3469 = !DILocation(line: 775, column: 58, scope: !3459)
!3470 = !DILocation(line: 775, column: 17, scope: !3459)
!3471 = !DILocation(line: 775, column: 63, scope: !3459)
!3472 = !DILocation(line: 775, column: 70, scope: !3459)
!3473 = !DILocation(line: 776, column: 10, scope: !3453)
!3474 = !DILocation(line: 776, column: 15, scope: !3453)
!3475 = !DILocation(line: 776, column: 27, scope: !3459)
!3476 = !DILocation(line: 776, column: 18, scope: !3459)
!3477 = !DILocation(line: 776, column: 23, scope: !3459)
!3478 = !DILocation(line: 776, column: 32, scope: !3459)
!3479 = !DILocation(line: 773, column: 8, scope: !3480)
!3480 = !DILexicalBlockFile(scope: !3448, file: !316, discriminator: 1)
!3481 = !DILocation(line: 777, column: 42, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !3453, file: !316, line: 776, column: 42)
!3483 = !DILocation(line: 777, column: 47, scope: !3482)
!3484 = !DILocation(line: 777, column: 52, scope: !3482)
!3485 = !DILocation(line: 777, column: 57, scope: !3482)
!3486 = !DILocation(line: 777, column: 63, scope: !3482)
!3487 = !DILocation(line: 777, column: 67, scope: !3482)
!3488 = !DILocation(line: 777, column: 72, scope: !3482)
!3489 = !DILocation(line: 777, column: 77, scope: !3482)
!3490 = !DILocation(line: 777, column: 67, scope: !3491)
!3491 = !DILexicalBlockFile(scope: !3482, file: !316, discriminator: 1)
!3492 = !DILocation(line: 777, column: 11, scope: !3493)
!3493 = !DILexicalBlockFile(scope: !3482, file: !316, discriminator: 2)
!3494 = !DILocation(line: 777, column: 16, scope: !3493)
!3495 = !DILocation(line: 777, column: 67, scope: !3493)
!3496 = !DILocation(line: 777, column: 67, scope: !3497)
!3497 = !DILexicalBlockFile(scope: !3482, file: !316, discriminator: 3)
!3498 = !DILocation(line: 777, column: 5, scope: !3497)
!3499 = !DILocation(line: 779, column: 4, scope: !3482)
!3500 = !DILocation(line: 780, column: 3, scope: !3448)
!3501 = !DILocation(line: 770, column: 43, scope: !3502)
!3502 = !DILexicalBlockFile(scope: !3444, file: !316, discriminator: 2)
!3503 = !DILocation(line: 770, column: 48, scope: !3502)
!3504 = !DILocation(line: 770, column: 41, scope: !3502)
!3505 = !DILocation(line: 770, column: 3, scope: !3502)
!3506 = distinct !{!3506, !3507}
!3507 = !DILocation(line: 770, column: 3, scope: !3433)
!3508 = !DILocation(line: 781, column: 2, scope: !3433)
!3509 = !DILocation(line: 767, column: 44, scope: !3510)
!3510 = !DILexicalBlockFile(scope: !3429, file: !316, discriminator: 2)
!3511 = !DILocation(line: 767, column: 50, scope: !3510)
!3512 = !DILocation(line: 767, column: 42, scope: !3510)
!3513 = !DILocation(line: 767, column: 2, scope: !3510)
!3514 = distinct !{!3514, !3515}
!3515 = !DILocation(line: 767, column: 2, scope: !3398)
!3516 = !DILocation(line: 783, column: 2, scope: !3398)
!3517 = !DILocation(line: 784, column: 1, scope: !3398)
