; ModuleID = './line362-statusbar.o.i'
source_filename = "./line362-statusbar.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GHashTable = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct.STATUSBAR_GROUP_REC = type { i8*, %struct._GSList*, %struct._GSList* }
%struct._WINDOW_REC = type { i32, i8*, i32, i32, %struct._GSList*, %struct._WI_ITEM_REC*, %struct._SERVER_REC*, %struct._SERVER_REC*, i8*, i32, %struct._GSList*, i8, %struct.HISTORY_REC*, i8*, i32, i8*, i64, i64, i8*, i8*, i8* }
%struct._WI_ITEM_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)* }
%struct._SERVER_REC = type opaque
%struct.HISTORY_REC = type { i8*, %struct._GList*, i32, i32, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.THEME_REC = type { i32, i8*, i8*, i64, i32, i8, %struct._GHashTable*, [256 x i32], %struct._GSList*, %struct._GHashTable*, i8* }
%struct.MAIN_WINDOW_BORDER_REC = type { i8*, %struct._TERM_WINDOW* }
%struct._TERM_WINDOW = type opaque
%struct.MAIN_WINDOW_REC = type { %struct._WINDOW_REC*, %struct._TERM_WINDOW*, i32, i32, i32, i32, i32, i32, i32, %struct._GSList*, i32, i32, i32, i32, i32, i32, i8 }
%struct.SBAR_ITEM_REC = type { %struct.STATUSBAR_REC*, %struct.SBAR_ITEM_CONFIG_REC*, {}*, i32, i32, i32, i32, i32, i8 }
%struct.STATUSBAR_REC = type { %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_CONFIG_REC*, %struct.MAIN_WINDOW_REC*, %struct._GSList*, i8*, i32, i8, i32 }
%struct.STATUSBAR_CONFIG_REC = type { i8*, i32, i32, i32, i32, %struct._GSList* }
%struct.SBAR_ITEM_CONFIG_REC = type { i8*, i8*, i32, i8 }
%struct.theme_rm_col = type { [8 x i8] }
%struct._GString = type { i8*, i64, i64 }
%struct.GUI_WINDOW_REC = type { %struct.MAIN_WINDOW_REC*, %struct._TEXT_BUFFER_VIEW_REC*, i8, %struct._LINE_REC*, i64 }
%struct._TEXT_BUFFER_VIEW_REC = type { %struct.TEXT_BUFFER_REC*, %struct._GSList*, %struct._TERM_WINDOW*, i32, i32, i32, i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)*, %struct.TEXT_BUFFER_CACHE_REC*, i32, %struct._LINE_REC*, i32, %struct._LINE_REC*, i32, %struct._GHashTable*, i32, i32, i8 }
%struct.TEXT_BUFFER_REC = type { %struct._GSList*, %struct._LINE_REC*, i32, %struct._LINE_REC*, %struct.TEXT_CHUNK_REC*, i32, i32, i32, i8 }
%struct.TEXT_CHUNK_REC = type { [16368 x i8], i32, i32 }
%struct.TEXT_BUFFER_CACHE_REC = type { i32, i32, %struct._GHashTable*, i8, i32 }
%struct._LINE_REC = type { %struct._LINE_REC*, %struct._LINE_REC*, i8*, %struct.LINE_INFO_REC }
%struct.LINE_INFO_REC = type { i32, i64 }

@statusbar_need_recreate_items = internal global i32 0, align 4
@sbar_item_defs = internal global %struct._GHashTable* null, align 8
@sbar_item_funcs = internal global %struct._GHashTable* null, align 8
@statusbar_groups = common global %struct._GSList* null, align 8
@active_statusbar_group = common global %struct.STATUSBAR_GROUP_REC* null, align 8
@__func__.statusbar_item_redraw = private unnamed_addr constant [22 x i8] c"statusbar_item_redraw\00", align 1
@.str = private unnamed_addr constant [13 x i8] c"item != NULL\00", align 1
@active_win = external global %struct._WINDOW_REC*, align 8
@named_sbar_items = internal global %struct._GHashTable* null, align 8
@__func__.statusbar_create = private unnamed_addr constant [17 x i8] c"statusbar_create\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"group != NULL\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"config != NULL\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"config->type != STATUSBAR_TYPE_WINDOW || parent_window != NULL\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"terminal resized\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"mainwindow resized\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"mainwindow moved\00", align 1
@current_theme = external global %struct.THEME_REC*, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"fe-text\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"{sb_%s_bg}\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"{sb_background}\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%8\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%n\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"statusbar created\00", align 1
@__func__.statusbar_destroy = private unnamed_addr constant [18 x i8] c"statusbar_destroy\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"bar != NULL\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"statusbar destroyed\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@__func__.statusbar_item_create = private unnamed_addr constant [22 x i8] c"statusbar_item_create\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"statusbar item created\00", align 1
@__func__.statusbar_item_destroy = private unnamed_addr constant [23 x i8] c"statusbar_item_destroy\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"statusbar item destroyed\00", align 1
@sbar_item_signals = internal global %struct._GHashTable* null, align 8
@mainwindows = external global %struct._GSList*, align 8
@sbar_signal_items = internal global %struct._GHashTable* null, align 8
@.str.18 = private unnamed_addr constant [19 x i8] c"gui window created\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"window changed\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"mainwindow destroyed\00", align 1
@term_width = external global i32, align 4
@term_height = external global i32, align 4
@term_type = external global i32, align 4
@.str.21 = private unnamed_addr constant [9 x i8] c"%%8%c%%8\00", align 1
@.str.22 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"%>\00", align 1
@clrtoeol_info = external global %struct.MAIN_WINDOW_BORDER_REC*, align 8
@active_mainwin = external global %struct.MAIN_WINDOW_REC*, align 8

; Function Attrs: nounwind uwtable
define void @statusbar_item_register(i8*, i8*, void (%struct.SBAR_ITEM_REC*, i32)*) #0 !dbg !329 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca void (%struct.SBAR_ITEM_REC*, i32)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !332, metadata !333), !dbg !334
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !335, metadata !333), !dbg !336
  store void (%struct.SBAR_ITEM_REC*, i32)* %2, void (%struct.SBAR_ITEM_REC*, i32)** %6, align 8
  call void @llvm.dbg.declare(metadata void (%struct.SBAR_ITEM_REC*, i32)** %6, metadata !337, metadata !333), !dbg !338
  call void @llvm.dbg.declare(metadata i8** %7, metadata !339, metadata !333), !dbg !340
  call void @llvm.dbg.declare(metadata i8** %8, metadata !341, metadata !333), !dbg !342
  store i32 1, i32* @statusbar_need_recreate_items, align 4, !dbg !343
  %9 = load i8*, i8** %5, align 8, !dbg !344
  %10 = icmp ne i8* %9, null, !dbg !346
  br i1 %10, label %11, label %29, !dbg !347

; <label>:11:                                     ; preds = %3
  %12 = load %struct._GHashTable*, %struct._GHashTable** @sbar_item_defs, align 8, !dbg !348
  %13 = load i8*, i8** %4, align 8, !dbg !351
  %14 = call i32 @g_hash_table_lookup_extended(%struct._GHashTable* %12, i8* %13, i8** %7, i8** %8), !dbg !352
  %15 = icmp ne i32 %14, 0, !dbg !352
  br i1 %15, label %16, label %22, !dbg !353

; <label>:16:                                     ; preds = %11
  %17 = load %struct._GHashTable*, %struct._GHashTable** @sbar_item_defs, align 8, !dbg !354
  %18 = load i8*, i8** %4, align 8, !dbg !356
  %19 = call i32 @g_hash_table_remove(%struct._GHashTable* %17, i8* %18), !dbg !357
  %20 = load i8*, i8** %7, align 8, !dbg !358
  call void @g_free(i8* %20), !dbg !359
  %21 = load i8*, i8** %8, align 8, !dbg !360
  call void @g_free(i8* %21), !dbg !361
  br label %22, !dbg !362

; <label>:22:                                     ; preds = %16, %11
  %23 = load %struct._GHashTable*, %struct._GHashTable** @sbar_item_defs, align 8, !dbg !363
  %24 = load i8*, i8** %4, align 8, !dbg !364
  %25 = call noalias i8* @g_strdup(i8* %24), !dbg !365
  %26 = load i8*, i8** %5, align 8, !dbg !366
  %27 = call noalias i8* @g_strdup(i8* %26), !dbg !367
  %28 = call i32 @g_hash_table_insert(%struct._GHashTable* %23, i8* %25, i8* %27), !dbg !369
  br label %29, !dbg !370

; <label>:29:                                     ; preds = %22, %3
  %30 = load void (%struct.SBAR_ITEM_REC*, i32)*, void (%struct.SBAR_ITEM_REC*, i32)** %6, align 8, !dbg !371
  %31 = icmp ne void (%struct.SBAR_ITEM_REC*, i32)* %30, null, !dbg !373
  br i1 %31, label %32, label %45, !dbg !374

; <label>:32:                                     ; preds = %29
  %33 = load %struct._GHashTable*, %struct._GHashTable** @sbar_item_funcs, align 8, !dbg !375
  %34 = load i8*, i8** %4, align 8, !dbg !378
  %35 = call i8* @g_hash_table_lookup(%struct._GHashTable* %33, i8* %34), !dbg !379
  %36 = icmp eq i8* %35, null, !dbg !380
  br i1 %36, label %37, label %44, !dbg !381

; <label>:37:                                     ; preds = %32
  %38 = load %struct._GHashTable*, %struct._GHashTable** @sbar_item_funcs, align 8, !dbg !382
  %39 = load i8*, i8** %4, align 8, !dbg !384
  %40 = call noalias i8* @g_strdup(i8* %39), !dbg !385
  %41 = load void (%struct.SBAR_ITEM_REC*, i32)*, void (%struct.SBAR_ITEM_REC*, i32)** %6, align 8, !dbg !386
  %42 = bitcast void (%struct.SBAR_ITEM_REC*, i32)* %41 to i8*, !dbg !387
  %43 = call i32 @g_hash_table_insert(%struct._GHashTable* %38, i8* %40, i8* %42), !dbg !388
  br label %44, !dbg !389

; <label>:44:                                     ; preds = %37, %32
  br label %45, !dbg !390

; <label>:45:                                     ; preds = %44, %29
  ret void, !dbg !391
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @g_hash_table_lookup_extended(%struct._GHashTable*, i8*, i8**, i8**) #2

declare i32 @g_hash_table_remove(%struct._GHashTable*, i8*) #2

declare void @g_free(i8*) #2

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #2

declare noalias i8* @g_strdup(i8*) #2

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #2

; Function Attrs: nounwind uwtable
define void @statusbar_item_unregister(i8*) #0 !dbg !392 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !395, metadata !333), !dbg !396
  call void @llvm.dbg.declare(metadata i8** %3, metadata !397, metadata !333), !dbg !398
  call void @llvm.dbg.declare(metadata i8** %4, metadata !399, metadata !333), !dbg !400
  store i32 1, i32* @statusbar_need_recreate_items, align 4, !dbg !401
  %5 = load %struct._GHashTable*, %struct._GHashTable** @sbar_item_defs, align 8, !dbg !402
  %6 = load i8*, i8** %2, align 8, !dbg !404
  %7 = call i32 @g_hash_table_lookup_extended(%struct._GHashTable* %5, i8* %6, i8** %3, i8** %4), !dbg !405
  %8 = icmp ne i32 %7, 0, !dbg !405
  br i1 %8, label %9, label %15, !dbg !406

; <label>:9:                                      ; preds = %1
  %10 = load %struct._GHashTable*, %struct._GHashTable** @sbar_item_defs, align 8, !dbg !407
  %11 = load i8*, i8** %3, align 8, !dbg !409
  %12 = call i32 @g_hash_table_remove(%struct._GHashTable* %10, i8* %11), !dbg !410
  %13 = load i8*, i8** %3, align 8, !dbg !411
  call void @g_free(i8* %13), !dbg !412
  %14 = load i8*, i8** %4, align 8, !dbg !413
  call void @g_free(i8* %14), !dbg !414
  br label %15, !dbg !415

; <label>:15:                                     ; preds = %9, %1
  %16 = load %struct._GHashTable*, %struct._GHashTable** @sbar_item_funcs, align 8, !dbg !416
  %17 = load i8*, i8** %2, align 8, !dbg !418
  %18 = call i32 @g_hash_table_lookup_extended(%struct._GHashTable* %16, i8* %17, i8** %3, i8** %4), !dbg !419
  %19 = icmp ne i32 %18, 0, !dbg !419
  br i1 %19, label %20, label %25, !dbg !420

; <label>:20:                                     ; preds = %15
  %21 = load %struct._GHashTable*, %struct._GHashTable** @sbar_item_funcs, align 8, !dbg !421
  %22 = load i8*, i8** %3, align 8, !dbg !423
  %23 = call i32 @g_hash_table_remove(%struct._GHashTable* %21, i8* %22), !dbg !424
  %24 = load i8*, i8** %3, align 8, !dbg !425
  call void @g_free(i8* %24), !dbg !426
  br label %25, !dbg !427

; <label>:25:                                     ; preds = %20, %15
  ret void, !dbg !428
}

; Function Attrs: nounwind uwtable
define void @statusbar_item_set_size(%struct.SBAR_ITEM_REC*, i32, i32) #0 !dbg !429 {
  %4 = alloca %struct.SBAR_ITEM_REC*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.SBAR_ITEM_REC* %0, %struct.SBAR_ITEM_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.SBAR_ITEM_REC** %4, metadata !432, metadata !333), !dbg !433
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !434, metadata !333), !dbg !435
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !436, metadata !333), !dbg !437
  %7 = load i32, i32* %5, align 4, !dbg !438
  %8 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %4, align 8, !dbg !439
  %9 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %8, i32 0, i32 3, !dbg !440
  store i32 %7, i32* %9, align 8, !dbg !441
  %10 = load i32, i32* %6, align 4, !dbg !442
  %11 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %4, align 8, !dbg !443
  %12 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %11, i32 0, i32 4, !dbg !444
  store i32 %10, i32* %12, align 4, !dbg !445
  ret void, !dbg !446
}

; Function Attrs: nounwind uwtable
define %struct.STATUSBAR_GROUP_REC* @statusbar_group_create(i8*) #0 !dbg !447 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.STATUSBAR_GROUP_REC*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !450, metadata !333), !dbg !451
  call void @llvm.dbg.declare(metadata %struct.STATUSBAR_GROUP_REC** %3, metadata !452, metadata !333), !dbg !453
  %4 = call noalias i8* @g_malloc0_n(i64 1, i64 24), !dbg !454
  %5 = bitcast i8* %4 to %struct.STATUSBAR_GROUP_REC*, !dbg !455
  store %struct.STATUSBAR_GROUP_REC* %5, %struct.STATUSBAR_GROUP_REC** %3, align 8, !dbg !456
  %6 = load i8*, i8** %2, align 8, !dbg !457
  %7 = call noalias i8* @g_strdup(i8* %6), !dbg !458
  %8 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** %3, align 8, !dbg !459
  %9 = getelementptr inbounds %struct.STATUSBAR_GROUP_REC, %struct.STATUSBAR_GROUP_REC* %8, i32 0, i32 0, !dbg !460
  store i8* %7, i8** %9, align 8, !dbg !461
  %10 = load %struct._GSList*, %struct._GSList** @statusbar_groups, align 8, !dbg !462
  %11 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** %3, align 8, !dbg !463
  %12 = bitcast %struct.STATUSBAR_GROUP_REC* %11 to i8*, !dbg !463
  %13 = call %struct._GSList* @g_slist_append(%struct._GSList* %10, i8* %12), !dbg !464
  store %struct._GSList* %13, %struct._GSList** @statusbar_groups, align 8, !dbg !465
  %14 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** %3, align 8, !dbg !466
  ret %struct.STATUSBAR_GROUP_REC* %14, !dbg !467
}

declare noalias i8* @g_malloc0_n(i64, i64) #2

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #2

; Function Attrs: nounwind uwtable
define void @statusbar_group_destroy(%struct.STATUSBAR_GROUP_REC*) #0 !dbg !468 {
  %2 = alloca %struct.STATUSBAR_GROUP_REC*, align 8
  store %struct.STATUSBAR_GROUP_REC* %0, %struct.STATUSBAR_GROUP_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.STATUSBAR_GROUP_REC** %2, metadata !471, metadata !333), !dbg !472
  %3 = load %struct._GSList*, %struct._GSList** @statusbar_groups, align 8, !dbg !473
  %4 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** %2, align 8, !dbg !474
  %5 = bitcast %struct.STATUSBAR_GROUP_REC* %4 to i8*, !dbg !474
  %6 = call %struct._GSList* @g_slist_remove(%struct._GSList* %3, i8* %5), !dbg !475
  store %struct._GSList* %6, %struct._GSList** @statusbar_groups, align 8, !dbg !476
  br label %7, !dbg !477

; <label>:7:                                      ; preds = %12, %1
  %8 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** %2, align 8, !dbg !478
  %9 = getelementptr inbounds %struct.STATUSBAR_GROUP_REC, %struct.STATUSBAR_GROUP_REC* %8, i32 0, i32 2, !dbg !480
  %10 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !480
  %11 = icmp ne %struct._GSList* %10, null, !dbg !481
  br i1 %11, label %12, label %19, !dbg !482

; <label>:12:                                     ; preds = %7
  %13 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** %2, align 8, !dbg !483
  %14 = getelementptr inbounds %struct.STATUSBAR_GROUP_REC, %struct.STATUSBAR_GROUP_REC* %13, i32 0, i32 2, !dbg !484
  %15 = load %struct._GSList*, %struct._GSList** %14, align 8, !dbg !484
  %16 = getelementptr inbounds %struct._GSList, %struct._GSList* %15, i32 0, i32 0, !dbg !485
  %17 = load i8*, i8** %16, align 8, !dbg !485
  %18 = bitcast i8* %17 to %struct.STATUSBAR_REC*, !dbg !483
  call void @statusbar_destroy(%struct.STATUSBAR_REC* %18), !dbg !486
  br label %7, !dbg !487, !llvm.loop !489

; <label>:19:                                     ; preds = %7
  br label %20, !dbg !490

; <label>:20:                                     ; preds = %25, %19
  %21 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** %2, align 8, !dbg !491
  %22 = getelementptr inbounds %struct.STATUSBAR_GROUP_REC, %struct.STATUSBAR_GROUP_REC* %21, i32 0, i32 1, !dbg !492
  %23 = load %struct._GSList*, %struct._GSList** %22, align 8, !dbg !492
  %24 = icmp ne %struct._GSList* %23, null, !dbg !493
  br i1 %24, label %25, label %33, !dbg !494

; <label>:25:                                     ; preds = %20
  %26 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** %2, align 8, !dbg !495
  %27 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** %2, align 8, !dbg !496
  %28 = getelementptr inbounds %struct.STATUSBAR_GROUP_REC, %struct.STATUSBAR_GROUP_REC* %27, i32 0, i32 1, !dbg !497
  %29 = load %struct._GSList*, %struct._GSList** %28, align 8, !dbg !497
  %30 = getelementptr inbounds %struct._GSList, %struct._GSList* %29, i32 0, i32 0, !dbg !498
  %31 = load i8*, i8** %30, align 8, !dbg !498
  %32 = bitcast i8* %31 to %struct.STATUSBAR_CONFIG_REC*, !dbg !496
  call void @statusbar_config_destroy(%struct.STATUSBAR_GROUP_REC* %26, %struct.STATUSBAR_CONFIG_REC* %32), !dbg !499
  br label %20, !dbg !500, !llvm.loop !501

; <label>:33:                                     ; preds = %20
  %34 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** %2, align 8, !dbg !502
  %35 = getelementptr inbounds %struct.STATUSBAR_GROUP_REC, %struct.STATUSBAR_GROUP_REC* %34, i32 0, i32 0, !dbg !503
  %36 = load i8*, i8** %35, align 8, !dbg !503
  call void @g_free(i8* %36), !dbg !504
  %37 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** %2, align 8, !dbg !505
  %38 = bitcast %struct.STATUSBAR_GROUP_REC* %37 to i8*, !dbg !505
  call void @g_free(i8* %38), !dbg !506
  ret void, !dbg !507
}

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #2

; Function Attrs: nounwind uwtable
define void @statusbar_destroy(%struct.STATUSBAR_REC*) #0 !dbg !508 {
  %2 = alloca %struct.STATUSBAR_REC*, align 8
  %3 = alloca i32, align 4
  store %struct.STATUSBAR_REC* %0, %struct.STATUSBAR_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.STATUSBAR_REC** %2, metadata !511, metadata !333), !dbg !512
  call void @llvm.dbg.declare(metadata i32* %3, metadata !513, metadata !333), !dbg !514
  br label %4, !dbg !515, !llvm.loop !516

; <label>:4:                                      ; preds = %1
  %5 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !517
  %6 = icmp ne %struct.STATUSBAR_REC* %5, null, !dbg !521
  br i1 %6, label %7, label %8, !dbg !517

; <label>:7:                                      ; preds = %4
  br label %9, !dbg !522

; <label>:8:                                      ; preds = %4
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.statusbar_destroy, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0)), !dbg !525
  br label %116, !dbg !528

; <label>:9:                                      ; preds = %7
  br label %10, !dbg !529

; <label>:10:                                     ; preds = %9
  %11 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !531
  %12 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %11, i32 0, i32 0, !dbg !532
  %13 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** %12, align 8, !dbg !532
  %14 = getelementptr inbounds %struct.STATUSBAR_GROUP_REC, %struct.STATUSBAR_GROUP_REC* %13, i32 0, i32 2, !dbg !533
  %15 = load %struct._GSList*, %struct._GSList** %14, align 8, !dbg !533
  %16 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !534
  %17 = bitcast %struct.STATUSBAR_REC* %16 to i8*, !dbg !534
  %18 = call %struct._GSList* @g_slist_remove(%struct._GSList* %15, i8* %17), !dbg !535
  %19 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !536
  %20 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %19, i32 0, i32 0, !dbg !537
  %21 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** %20, align 8, !dbg !537
  %22 = getelementptr inbounds %struct.STATUSBAR_GROUP_REC, %struct.STATUSBAR_GROUP_REC* %21, i32 0, i32 2, !dbg !538
  store %struct._GSList* %18, %struct._GSList** %22, align 8, !dbg !539
  %23 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !540
  %24 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %23, i32 0, i32 2, !dbg !542
  %25 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %24, align 8, !dbg !542
  %26 = icmp ne %struct.MAIN_WINDOW_REC* %25, null, !dbg !543
  br i1 %26, label %27, label %40, !dbg !544

; <label>:27:                                     ; preds = %10
  %28 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !545
  %29 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %28, i32 0, i32 2, !dbg !547
  %30 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %29, align 8, !dbg !547
  %31 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %30, i32 0, i32 9, !dbg !548
  %32 = load %struct._GSList*, %struct._GSList** %31, align 8, !dbg !548
  %33 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !549
  %34 = bitcast %struct.STATUSBAR_REC* %33 to i8*, !dbg !549
  %35 = call %struct._GSList* @g_slist_remove(%struct._GSList* %32, i8* %34), !dbg !550
  %36 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !551
  %37 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %36, i32 0, i32 2, !dbg !552
  %38 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %37, align 8, !dbg !552
  %39 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %38, i32 0, i32 9, !dbg !553
  store %struct._GSList* %35, %struct._GSList** %39, align 8, !dbg !554
  br label %40, !dbg !555

; <label>:40:                                     ; preds = %27, %10
  %41 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !556
  %42 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.STATUSBAR_REC* %41), !dbg !557
  br label %43, !dbg !558

; <label>:43:                                     ; preds = %48, %40
  %44 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !559
  %45 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %44, i32 0, i32 3, !dbg !561
  %46 = load %struct._GSList*, %struct._GSList** %45, align 8, !dbg !561
  %47 = icmp ne %struct._GSList* %46, null, !dbg !562
  br i1 %47, label %48, label %55, !dbg !563

; <label>:48:                                     ; preds = %43
  %49 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !564
  %50 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %49, i32 0, i32 3, !dbg !565
  %51 = load %struct._GSList*, %struct._GSList** %50, align 8, !dbg !565
  %52 = getelementptr inbounds %struct._GSList, %struct._GSList* %51, i32 0, i32 0, !dbg !566
  %53 = load i8*, i8** %52, align 8, !dbg !566
  %54 = bitcast i8* %53 to %struct.SBAR_ITEM_REC*, !dbg !564
  call void @statusbar_item_destroy(%struct.SBAR_ITEM_REC* %54), !dbg !567
  br label %43, !dbg !568, !llvm.loop !570

; <label>:55:                                     ; preds = %43
  %56 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !571
  %57 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %56, i32 0, i32 4, !dbg !572
  %58 = load i8*, i8** %57, align 8, !dbg !572
  call void @g_free(i8* %58), !dbg !573
  %59 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !574
  %60 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %59, i32 0, i32 1, !dbg !576
  %61 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %60, align 8, !dbg !576
  %62 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %61, i32 0, i32 1, !dbg !577
  %63 = load i32, i32* %62, align 8, !dbg !577
  %64 = icmp ne i32 %63, 2, !dbg !578
  br i1 %64, label %70, label %65, !dbg !579

; <label>:65:                                     ; preds = %55
  %66 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !580
  %67 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %66, i32 0, i32 2, !dbg !581
  %68 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %67, align 8, !dbg !581
  %69 = icmp ne %struct.MAIN_WINDOW_REC* %68, null, !dbg !582
  br i1 %69, label %70, label %72, !dbg !583

; <label>:70:                                     ; preds = %65, %55
  %71 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !584
  call void @statusbars_recalc_ypos(%struct.STATUSBAR_REC* %71), !dbg !585
  br label %72, !dbg !585

; <label>:72:                                     ; preds = %70, %65
  %73 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !586
  %74 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %73, i32 0, i32 1, !dbg !587
  %75 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %74, align 8, !dbg !587
  %76 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %75, i32 0, i32 2, !dbg !588
  %77 = load i32, i32* %76, align 4, !dbg !588
  %78 = icmp eq i32 %77, 1, !dbg !589
  %79 = zext i1 %78 to i32, !dbg !589
  store i32 %79, i32* %3, align 4, !dbg !590
  %80 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !591
  %81 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %80, i32 0, i32 1, !dbg !593
  %82 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %81, align 8, !dbg !593
  %83 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %82, i32 0, i32 1, !dbg !594
  %84 = load i32, i32* %83, align 8, !dbg !594
  %85 = icmp eq i32 %84, 1, !dbg !595
  br i1 %85, label %86, label %95, !dbg !596

; <label>:86:                                     ; preds = %72
  %87 = load i32, i32* %3, align 4, !dbg !597
  %88 = icmp ne i32 %87, 0, !dbg !597
  %89 = select i1 %88, i32 -1, i32 0, !dbg !597
  %90 = load i32, i32* %3, align 4, !dbg !599
  %91 = icmp ne i32 %90, 0, !dbg !600
  %92 = xor i1 %91, true, !dbg !600
  %93 = select i1 %92, i32 -1, i32 0, !dbg !600
  %94 = call i32 @mainwindows_reserve_lines(i32 %89, i32 %93), !dbg !601
  br label %113, !dbg !602

; <label>:95:                                     ; preds = %72
  %96 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !603
  %97 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %96, i32 0, i32 2, !dbg !606
  %98 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %97, align 8, !dbg !606
  %99 = icmp ne %struct.MAIN_WINDOW_REC* %98, null, !dbg !607
  br i1 %99, label %100, label %112, !dbg !603

; <label>:100:                                    ; preds = %95
  %101 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !608
  %102 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %101, i32 0, i32 2, !dbg !610
  %103 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %102, align 8, !dbg !610
  %104 = load i32, i32* %3, align 4, !dbg !611
  %105 = icmp ne i32 %104, 0, !dbg !611
  %106 = select i1 %105, i32 -1, i32 0, !dbg !611
  %107 = load i32, i32* %3, align 4, !dbg !612
  %108 = icmp ne i32 %107, 0, !dbg !613
  %109 = xor i1 %108, true, !dbg !613
  %110 = select i1 %109, i32 -1, i32 0, !dbg !613
  %111 = call i32 @mainwindow_set_statusbar_lines(%struct.MAIN_WINDOW_REC* %103, i32 %106, i32 %110), !dbg !614
  br label %112, !dbg !615

; <label>:112:                                    ; preds = %100, %95
  br label %113

; <label>:113:                                    ; preds = %112, %86
  %114 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !616
  %115 = bitcast %struct.STATUSBAR_REC* %114 to i8*, !dbg !616
  call void @g_free(i8* %115), !dbg !617
  br label %116, !dbg !618

; <label>:116:                                    ; preds = %113, %8
  ret void, !dbg !619
}

declare void @statusbar_config_destroy(%struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_CONFIG_REC*) #2

; Function Attrs: nounwind uwtable
define %struct.STATUSBAR_GROUP_REC* @statusbar_group_find(i8*) #0 !dbg !620 {
  %2 = alloca %struct.STATUSBAR_GROUP_REC*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct.STATUSBAR_GROUP_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !621, metadata !333), !dbg !622
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !623, metadata !333), !dbg !624
  %6 = load %struct._GSList*, %struct._GSList** @statusbar_groups, align 8, !dbg !625
  store %struct._GSList* %6, %struct._GSList** %4, align 8, !dbg !627
  br label %7, !dbg !628

; <label>:7:                                      ; preds = %24, %1
  %8 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !629
  %9 = icmp ne %struct._GSList* %8, null, !dbg !632
  br i1 %9, label %10, label %28, !dbg !633

; <label>:10:                                     ; preds = %7
  call void @llvm.dbg.declare(metadata %struct.STATUSBAR_GROUP_REC** %5, metadata !634, metadata !333), !dbg !636
  %11 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !637
  %12 = getelementptr inbounds %struct._GSList, %struct._GSList* %11, i32 0, i32 0, !dbg !638
  %13 = load i8*, i8** %12, align 8, !dbg !638
  %14 = bitcast i8* %13 to %struct.STATUSBAR_GROUP_REC*, !dbg !637
  store %struct.STATUSBAR_GROUP_REC* %14, %struct.STATUSBAR_GROUP_REC** %5, align 8, !dbg !636
  %15 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** %5, align 8, !dbg !639
  %16 = getelementptr inbounds %struct.STATUSBAR_GROUP_REC, %struct.STATUSBAR_GROUP_REC* %15, i32 0, i32 0, !dbg !641
  %17 = load i8*, i8** %16, align 8, !dbg !641
  %18 = load i8*, i8** %3, align 8, !dbg !642
  %19 = call i32 @g_strcmp0(i8* %17, i8* %18), !dbg !643
  %20 = icmp eq i32 %19, 0, !dbg !644
  br i1 %20, label %21, label %23, !dbg !645

; <label>:21:                                     ; preds = %10
  %22 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** %5, align 8, !dbg !646
  store %struct.STATUSBAR_GROUP_REC* %22, %struct.STATUSBAR_GROUP_REC** %2, align 8, !dbg !647
  br label %29, !dbg !647

; <label>:23:                                     ; preds = %10
  br label %24, !dbg !648

; <label>:24:                                     ; preds = %23
  %25 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !649
  %26 = getelementptr inbounds %struct._GSList, %struct._GSList* %25, i32 0, i32 1, !dbg !651
  %27 = load %struct._GSList*, %struct._GSList** %26, align 8, !dbg !651
  store %struct._GSList* %27, %struct._GSList** %4, align 8, !dbg !652
  br label %7, !dbg !653, !llvm.loop !654

; <label>:28:                                     ; preds = %7
  store %struct.STATUSBAR_GROUP_REC* null, %struct.STATUSBAR_GROUP_REC** %2, align 8, !dbg !656
  br label %29, !dbg !656

; <label>:29:                                     ; preds = %28, %21
  %30 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** %2, align 8, !dbg !657
  ret %struct.STATUSBAR_GROUP_REC* %30, !dbg !657
}

declare i32 @g_strcmp0(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @statusbar_redraw(%struct.STATUSBAR_REC*, i32) #0 !dbg !658 {
  %3 = alloca %struct.STATUSBAR_REC*, align 8
  %4 = alloca i32, align 4
  store %struct.STATUSBAR_REC* %0, %struct.STATUSBAR_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.STATUSBAR_REC** %3, metadata !661, metadata !333), !dbg !662
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !663, metadata !333), !dbg !664
  %5 = load i32, i32* @statusbar_need_recreate_items, align 4, !dbg !665
  %6 = icmp ne i32 %5, 0, !dbg !665
  br i1 %6, label %7, label %8, !dbg !667

; <label>:7:                                      ; preds = %2
  br label %35, !dbg !668

; <label>:8:                                      ; preds = %2
  %9 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %3, align 8, !dbg !669
  %10 = icmp ne %struct.STATUSBAR_REC* %9, null, !dbg !671
  br i1 %10, label %11, label %24, !dbg !672

; <label>:11:                                     ; preds = %8
  %12 = load i32, i32* %4, align 4, !dbg !673
  %13 = icmp ne i32 %12, 0, !dbg !673
  br i1 %13, label %14, label %22, !dbg !676

; <label>:14:                                     ; preds = %11
  call void @irssi_set_dirty(), !dbg !677
  %15 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %3, align 8, !dbg !679
  %16 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %15, i32 0, i32 6, !dbg !680
  %17 = load i8, i8* %16, align 4, !dbg !681
  %18 = and i8 %17, -2, !dbg !681
  %19 = or i8 %18, 1, !dbg !681
  store i8 %19, i8* %16, align 4, !dbg !681
  %20 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %3, align 8, !dbg !682
  %21 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %20, i32 0, i32 7, !dbg !683
  store i32 0, i32* %21, align 8, !dbg !684
  br label %22, !dbg !685

; <label>:22:                                     ; preds = %14, %11
  %23 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %3, align 8, !dbg !686
  call void @statusbar_calc_item_positions(%struct.STATUSBAR_REC* %23), !dbg !687
  br label %35, !dbg !688

; <label>:24:                                     ; preds = %8
  %25 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** @active_statusbar_group, align 8, !dbg !689
  %26 = icmp ne %struct.STATUSBAR_GROUP_REC* %25, null, !dbg !692
  br i1 %26, label %27, label %34, !dbg !689

; <label>:27:                                     ; preds = %24
  %28 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** @active_statusbar_group, align 8, !dbg !693
  %29 = getelementptr inbounds %struct.STATUSBAR_GROUP_REC, %struct.STATUSBAR_GROUP_REC* %28, i32 0, i32 2, !dbg !695
  %30 = load %struct._GSList*, %struct._GSList** %29, align 8, !dbg !695
  %31 = load i32, i32* %4, align 4, !dbg !696
  %32 = sext i32 %31 to i64, !dbg !697
  %33 = inttoptr i64 %32 to i8*, !dbg !698
  call void @g_slist_foreach(%struct._GSList* %30, void (i8*, i8*)* bitcast (void (%struct.STATUSBAR_REC*, i32)* @statusbar_redraw to void (i8*, i8*)*), i8* %33), !dbg !699
  br label %34, !dbg !700

; <label>:34:                                     ; preds = %27, %24
  br label %35

; <label>:35:                                     ; preds = %7, %34, %22
  ret void, !dbg !701
}

declare void @irssi_set_dirty() #2

; Function Attrs: nounwind uwtable
define internal void @statusbar_calc_item_positions(%struct.STATUSBAR_REC*) #0 !dbg !702 {
  %2 = alloca %struct.STATUSBAR_REC*, align 8
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca %struct._WINDOW_REC*, align 8
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.SBAR_ITEM_REC*, align 8
  %11 = alloca %struct.SBAR_ITEM_REC*, align 8
  %12 = alloca %struct.SBAR_ITEM_REC*, align 8
  store %struct.STATUSBAR_REC* %0, %struct.STATUSBAR_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.STATUSBAR_REC** %2, metadata !703, metadata !333), !dbg !704
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !705, metadata !333), !dbg !706
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %4, metadata !707, metadata !333), !dbg !708
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !709, metadata !333), !dbg !710
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !711, metadata !333), !dbg !712
  call void @llvm.dbg.declare(metadata i32* %7, metadata !713, metadata !333), !dbg !714
  call void @llvm.dbg.declare(metadata i32* %8, metadata !715, metadata !333), !dbg !716
  call void @llvm.dbg.declare(metadata i32* %9, metadata !717, metadata !333), !dbg !718
  %13 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !719
  store %struct._WINDOW_REC* %13, %struct._WINDOW_REC** %4, align 8, !dbg !720
  %14 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !721
  %15 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %14, i32 0, i32 2, !dbg !723
  %16 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %15, align 8, !dbg !723
  %17 = icmp ne %struct.MAIN_WINDOW_REC* %16, null, !dbg !724
  br i1 %17, label %18, label %24, !dbg !725

; <label>:18:                                     ; preds = %1
  %19 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !726
  %20 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %19, i32 0, i32 2, !dbg !727
  %21 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %20, align 8, !dbg !727
  %22 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %21, i32 0, i32 0, !dbg !728
  %23 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %22, align 8, !dbg !728
  store %struct._WINDOW_REC* %23, %struct._WINDOW_REC** @active_win, align 8, !dbg !729
  br label %24, !dbg !730

; <label>:24:                                     ; preds = %18, %1
  %25 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !731
  %26 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %25, i32 0, i32 2, !dbg !732
  %27 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %26, align 8, !dbg !732
  %28 = icmp ne %struct.MAIN_WINDOW_REC* %27, null, !dbg !733
  br i1 %28, label %29, label %35, !dbg !731

; <label>:29:                                     ; preds = %24
  %30 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !734
  %31 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %30, i32 0, i32 2, !dbg !735
  %32 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %31, align 8, !dbg !735
  %33 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %32, i32 0, i32 0, !dbg !736
  %34 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %33, align 8, !dbg !736
  br label %36, !dbg !737

; <label>:35:                                     ; preds = %24
  br label %36, !dbg !739

; <label>:36:                                     ; preds = %35, %29
  %37 = phi %struct._WINDOW_REC* [ %34, %29 ], [ null, %35 ], !dbg !741
  store %struct._WINDOW_REC* %37, %struct._WINDOW_REC** %3, align 8, !dbg !743
  %38 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !744
  %39 = icmp ne %struct._WINDOW_REC* %38, null, !dbg !745
  br i1 %39, label %40, label %44, !dbg !744

; <label>:40:                                     ; preds = %36
  %41 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !746
  %42 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %41, i32 0, i32 2, !dbg !747
  %43 = load i32, i32* %42, align 8, !dbg !747
  br label %46, !dbg !748

; <label>:44:                                     ; preds = %36
  %45 = load i32, i32* @term_width, align 4, !dbg !749
  br label %46, !dbg !750

; <label>:46:                                     ; preds = %44, %40
  %47 = phi i32 [ %43, %40 ], [ %45, %44 ], !dbg !751
  store i32 %47, i32* %9, align 4, !dbg !752
  %48 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !753
  %49 = load i32, i32* %9, align 4, !dbg !754
  call void @statusbar_resize_items(%struct.STATUSBAR_REC* %48, i32 %49), !dbg !755
  store i32 0, i32* %7, align 4, !dbg !756
  %50 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !757
  %51 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %50, i32 0, i32 3, !dbg !759
  %52 = load %struct._GSList*, %struct._GSList** %51, align 8, !dbg !759
  store %struct._GSList* %52, %struct._GSList** %5, align 8, !dbg !760
  br label %53, !dbg !761

; <label>:53:                                     ; preds = %140, %46
  %54 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !762
  %55 = icmp ne %struct._GSList* %54, null, !dbg !765
  br i1 %55, label %56, label %144, !dbg !766

; <label>:56:                                     ; preds = %53
  call void @llvm.dbg.declare(metadata %struct.SBAR_ITEM_REC** %10, metadata !767, metadata !333), !dbg !769
  %57 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !770
  %58 = getelementptr inbounds %struct._GSList, %struct._GSList* %57, i32 0, i32 0, !dbg !771
  %59 = load i8*, i8** %58, align 8, !dbg !771
  %60 = bitcast i8* %59 to %struct.SBAR_ITEM_REC*, !dbg !770
  store %struct.SBAR_ITEM_REC* %60, %struct.SBAR_ITEM_REC** %10, align 8, !dbg !769
  %61 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %10, align 8, !dbg !772
  %62 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %61, i32 0, i32 1, !dbg !774
  %63 = load %struct.SBAR_ITEM_CONFIG_REC*, %struct.SBAR_ITEM_CONFIG_REC** %62, align 8, !dbg !774
  %64 = getelementptr inbounds %struct.SBAR_ITEM_CONFIG_REC, %struct.SBAR_ITEM_CONFIG_REC* %63, i32 0, i32 3, !dbg !775
  %65 = load i8, i8* %64, align 4, !dbg !775
  %66 = and i8 %65, 1, !dbg !775
  %67 = zext i8 %66 to i32, !dbg !775
  %68 = icmp ne i32 %67, 0, !dbg !772
  br i1 %68, label %139, label %69, !dbg !776

; <label>:69:                                     ; preds = %56
  %70 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %10, align 8, !dbg !777
  %71 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %70, i32 0, i32 6, !dbg !778
  %72 = load i32, i32* %71, align 4, !dbg !778
  %73 = icmp sgt i32 %72, 0, !dbg !779
  br i1 %73, label %79, label %74, !dbg !780

; <label>:74:                                     ; preds = %69
  %75 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %10, align 8, !dbg !781
  %76 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %75, i32 0, i32 7, !dbg !783
  %77 = load i32, i32* %76, align 8, !dbg !783
  %78 = icmp sgt i32 %77, 0, !dbg !784
  br i1 %78, label %79, label %139, !dbg !785

; <label>:79:                                     ; preds = %74, %69
  %80 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !787
  %81 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %80, i32 0, i32 7, !dbg !790
  %82 = load i32, i32* %81, align 8, !dbg !790
  %83 = icmp ne i32 %82, -1, !dbg !791
  br i1 %83, label %84, label %90, !dbg !792

; <label>:84:                                     ; preds = %79
  %85 = load i32, i32* %7, align 4, !dbg !793
  %86 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !795
  %87 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %86, i32 0, i32 7, !dbg !796
  %88 = load i32, i32* %87, align 8, !dbg !796
  %89 = icmp sge i32 %85, %88, !dbg !797
  br i1 %89, label %104, label %90, !dbg !798

; <label>:90:                                     ; preds = %84, %79
  %91 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %10, align 8, !dbg !799
  %92 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %91, i32 0, i32 5, !dbg !801
  %93 = load i32, i32* %92, align 8, !dbg !801
  %94 = load i32, i32* %7, align 4, !dbg !802
  %95 = icmp ne i32 %93, %94, !dbg !803
  br i1 %95, label %104, label %96, !dbg !804

; <label>:96:                                     ; preds = %90
  %97 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %10, align 8, !dbg !805
  %98 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %97, i32 0, i32 7, !dbg !807
  %99 = load i32, i32* %98, align 8, !dbg !807
  %100 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %10, align 8, !dbg !808
  %101 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %100, i32 0, i32 6, !dbg !809
  %102 = load i32, i32* %101, align 4, !dbg !809
  %103 = icmp ne i32 %99, %102, !dbg !810
  br i1 %103, label %104, label %133, !dbg !811

; <label>:104:                                    ; preds = %96, %90, %84
  %105 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %10, align 8, !dbg !812
  %106 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %105, i32 0, i32 8, !dbg !814
  %107 = load i8, i8* %106, align 4, !dbg !815
  %108 = and i8 %107, -2, !dbg !815
  %109 = or i8 %108, 1, !dbg !815
  store i8 %109, i8* %106, align 4, !dbg !815
  %110 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !816
  %111 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %110, i32 0, i32 7, !dbg !818
  %112 = load i32, i32* %111, align 8, !dbg !818
  %113 = icmp eq i32 %112, -1, !dbg !819
  br i1 %113, label %120, label %114, !dbg !820

; <label>:114:                                    ; preds = %104
  %115 = load i32, i32* %7, align 4, !dbg !821
  %116 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !822
  %117 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %116, i32 0, i32 7, !dbg !823
  %118 = load i32, i32* %117, align 8, !dbg !823
  %119 = icmp slt i32 %115, %118, !dbg !824
  br i1 %119, label %120, label %129, !dbg !825

; <label>:120:                                    ; preds = %114, %104
  call void @irssi_set_dirty(), !dbg !827
  %121 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !829
  %122 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %121, i32 0, i32 6, !dbg !830
  %123 = load i8, i8* %122, align 4, !dbg !831
  %124 = and i8 %123, -2, !dbg !831
  %125 = or i8 %124, 1, !dbg !831
  store i8 %125, i8* %122, align 4, !dbg !831
  %126 = load i32, i32* %7, align 4, !dbg !832
  %127 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !833
  %128 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %127, i32 0, i32 7, !dbg !834
  store i32 %126, i32* %128, align 8, !dbg !835
  br label %129, !dbg !836

; <label>:129:                                    ; preds = %120, %114
  %130 = load i32, i32* %7, align 4, !dbg !837
  %131 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %10, align 8, !dbg !838
  %132 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %131, i32 0, i32 5, !dbg !839
  store i32 %130, i32* %132, align 8, !dbg !840
  br label %133, !dbg !841

; <label>:133:                                    ; preds = %129, %96
  %134 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %10, align 8, !dbg !842
  %135 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %134, i32 0, i32 6, !dbg !843
  %136 = load i32, i32* %135, align 4, !dbg !843
  %137 = load i32, i32* %7, align 4, !dbg !844
  %138 = add nsw i32 %137, %136, !dbg !844
  store i32 %138, i32* %7, align 4, !dbg !844
  br label %139, !dbg !845

; <label>:139:                                    ; preds = %133, %74, %56
  br label %140, !dbg !846

; <label>:140:                                    ; preds = %139
  %141 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !847
  %142 = getelementptr inbounds %struct._GSList, %struct._GSList* %141, i32 0, i32 1, !dbg !849
  %143 = load %struct._GSList*, %struct._GSList** %142, align 8, !dbg !849
  store %struct._GSList* %143, %struct._GSList** %5, align 8, !dbg !850
  br label %53, !dbg !851, !llvm.loop !852

; <label>:144:                                    ; preds = %53
  store %struct._GSList* null, %struct._GSList** %6, align 8, !dbg !854
  %145 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !855
  %146 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %145, i32 0, i32 3, !dbg !857
  %147 = load %struct._GSList*, %struct._GSList** %146, align 8, !dbg !857
  store %struct._GSList* %147, %struct._GSList** %5, align 8, !dbg !858
  br label %148, !dbg !859

; <label>:148:                                    ; preds = %206, %144
  %149 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !860
  %150 = icmp ne %struct._GSList* %149, null, !dbg !863
  br i1 %150, label %151, label %210, !dbg !864

; <label>:151:                                    ; preds = %148
  call void @llvm.dbg.declare(metadata %struct.SBAR_ITEM_REC** %11, metadata !865, metadata !333), !dbg !867
  %152 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !868
  %153 = getelementptr inbounds %struct._GSList, %struct._GSList* %152, i32 0, i32 0, !dbg !869
  %154 = load i8*, i8** %153, align 8, !dbg !869
  %155 = bitcast i8* %154 to %struct.SBAR_ITEM_REC*, !dbg !868
  store %struct.SBAR_ITEM_REC* %155, %struct.SBAR_ITEM_REC** %11, align 8, !dbg !867
  %156 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %11, align 8, !dbg !870
  %157 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %156, i32 0, i32 1, !dbg !872
  %158 = load %struct.SBAR_ITEM_CONFIG_REC*, %struct.SBAR_ITEM_CONFIG_REC** %157, align 8, !dbg !872
  %159 = getelementptr inbounds %struct.SBAR_ITEM_CONFIG_REC, %struct.SBAR_ITEM_CONFIG_REC* %158, i32 0, i32 3, !dbg !873
  %160 = load i8, i8* %159, align 4, !dbg !873
  %161 = and i8 %160, 1, !dbg !873
  %162 = zext i8 %161 to i32, !dbg !873
  %163 = icmp ne i32 %162, 0, !dbg !870
  br i1 %163, label %164, label %205, !dbg !874

; <label>:164:                                    ; preds = %151
  %165 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %11, align 8, !dbg !875
  %166 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %165, i32 0, i32 6, !dbg !878
  %167 = load i32, i32* %166, align 4, !dbg !878
  %168 = icmp sgt i32 %167, 0, !dbg !879
  br i1 %168, label %169, label %174, !dbg !880

; <label>:169:                                    ; preds = %164
  %170 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !881
  %171 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %11, align 8, !dbg !882
  %172 = bitcast %struct.SBAR_ITEM_REC* %171 to i8*, !dbg !882
  %173 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %170, i8* %172), !dbg !883
  store %struct._GSList* %173, %struct._GSList** %6, align 8, !dbg !884
  br label %204, !dbg !885

; <label>:174:                                    ; preds = %164
  %175 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %11, align 8, !dbg !886
  %176 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %175, i32 0, i32 7, !dbg !888
  %177 = load i32, i32* %176, align 8, !dbg !888
  %178 = icmp sgt i32 %177, 0, !dbg !889
  br i1 %178, label %179, label %203, !dbg !890

; <label>:179:                                    ; preds = %174
  %180 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !891
  %181 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %180, i32 0, i32 7, !dbg !892
  %182 = load i32, i32* %181, align 8, !dbg !892
  %183 = icmp eq i32 %182, -1, !dbg !893
  br i1 %183, label %192, label %184, !dbg !894

; <label>:184:                                    ; preds = %179
  %185 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %11, align 8, !dbg !895
  %186 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %185, i32 0, i32 5, !dbg !896
  %187 = load i32, i32* %186, align 8, !dbg !896
  %188 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !897
  %189 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %188, i32 0, i32 7, !dbg !898
  %190 = load i32, i32* %189, align 8, !dbg !898
  %191 = icmp slt i32 %187, %190, !dbg !899
  br i1 %191, label %192, label %203, !dbg !900

; <label>:192:                                    ; preds = %184, %179
  call void @irssi_set_dirty(), !dbg !902
  %193 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !904
  %194 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %193, i32 0, i32 6, !dbg !905
  %195 = load i8, i8* %194, align 4, !dbg !906
  %196 = and i8 %195, -2, !dbg !906
  %197 = or i8 %196, 1, !dbg !906
  store i8 %197, i8* %194, align 4, !dbg !906
  %198 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %11, align 8, !dbg !907
  %199 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %198, i32 0, i32 5, !dbg !908
  %200 = load i32, i32* %199, align 8, !dbg !908
  %201 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !909
  %202 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %201, i32 0, i32 7, !dbg !910
  store i32 %200, i32* %202, align 8, !dbg !911
  br label %203, !dbg !912

; <label>:203:                                    ; preds = %192, %184, %174
  br label %204

; <label>:204:                                    ; preds = %203, %169
  br label %205, !dbg !913

; <label>:205:                                    ; preds = %204, %151
  br label %206, !dbg !914

; <label>:206:                                    ; preds = %205
  %207 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !915
  %208 = getelementptr inbounds %struct._GSList, %struct._GSList* %207, i32 0, i32 1, !dbg !917
  %209 = load %struct._GSList*, %struct._GSList** %208, align 8, !dbg !917
  store %struct._GSList* %209, %struct._GSList** %5, align 8, !dbg !918
  br label %148, !dbg !919, !llvm.loop !920

; <label>:210:                                    ; preds = %148
  %211 = load i32, i32* %9, align 4, !dbg !922
  store i32 %211, i32* %8, align 4, !dbg !923
  %212 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !924
  store %struct._GSList* %212, %struct._GSList** %5, align 8, !dbg !926
  br label %213, !dbg !927

; <label>:213:                                    ; preds = %280, %210
  %214 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !928
  %215 = icmp ne %struct._GSList* %214, null, !dbg !931
  br i1 %215, label %216, label %284, !dbg !932

; <label>:216:                                    ; preds = %213
  call void @llvm.dbg.declare(metadata %struct.SBAR_ITEM_REC** %12, metadata !933, metadata !333), !dbg !935
  %217 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !936
  %218 = getelementptr inbounds %struct._GSList, %struct._GSList* %217, i32 0, i32 0, !dbg !937
  %219 = load i8*, i8** %218, align 8, !dbg !937
  %220 = bitcast i8* %219 to %struct.SBAR_ITEM_REC*, !dbg !936
  store %struct.SBAR_ITEM_REC* %220, %struct.SBAR_ITEM_REC** %12, align 8, !dbg !935
  %221 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %12, align 8, !dbg !938
  %222 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %221, i32 0, i32 6, !dbg !939
  %223 = load i32, i32* %222, align 4, !dbg !939
  %224 = load i32, i32* %8, align 4, !dbg !940
  %225 = sub nsw i32 %224, %223, !dbg !940
  store i32 %225, i32* %8, align 4, !dbg !940
  %226 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !941
  %227 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %226, i32 0, i32 7, !dbg !943
  %228 = load i32, i32* %227, align 8, !dbg !943
  %229 = icmp ne i32 %228, -1, !dbg !944
  br i1 %229, label %230, label %236, !dbg !945

; <label>:230:                                    ; preds = %216
  %231 = load i32, i32* %8, align 4, !dbg !946
  %232 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !948
  %233 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %232, i32 0, i32 7, !dbg !949
  %234 = load i32, i32* %233, align 8, !dbg !949
  %235 = icmp sge i32 %231, %234, !dbg !950
  br i1 %235, label %250, label %236, !dbg !951

; <label>:236:                                    ; preds = %230, %216
  %237 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %12, align 8, !dbg !952
  %238 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %237, i32 0, i32 5, !dbg !954
  %239 = load i32, i32* %238, align 8, !dbg !954
  %240 = load i32, i32* %8, align 4, !dbg !955
  %241 = icmp ne i32 %239, %240, !dbg !956
  br i1 %241, label %250, label %242, !dbg !957

; <label>:242:                                    ; preds = %236
  %243 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %12, align 8, !dbg !958
  %244 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %243, i32 0, i32 7, !dbg !960
  %245 = load i32, i32* %244, align 8, !dbg !960
  %246 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %12, align 8, !dbg !961
  %247 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %246, i32 0, i32 6, !dbg !962
  %248 = load i32, i32* %247, align 4, !dbg !962
  %249 = icmp ne i32 %245, %248, !dbg !963
  br i1 %249, label %250, label %279, !dbg !964

; <label>:250:                                    ; preds = %242, %236, %230
  %251 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %12, align 8, !dbg !965
  %252 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %251, i32 0, i32 8, !dbg !967
  %253 = load i8, i8* %252, align 4, !dbg !968
  %254 = and i8 %253, -2, !dbg !968
  %255 = or i8 %254, 1, !dbg !968
  store i8 %255, i8* %252, align 4, !dbg !968
  %256 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !969
  %257 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %256, i32 0, i32 7, !dbg !971
  %258 = load i32, i32* %257, align 8, !dbg !971
  %259 = icmp eq i32 %258, -1, !dbg !972
  br i1 %259, label %266, label %260, !dbg !973

; <label>:260:                                    ; preds = %250
  %261 = load i32, i32* %8, align 4, !dbg !974
  %262 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !975
  %263 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %262, i32 0, i32 7, !dbg !976
  %264 = load i32, i32* %263, align 8, !dbg !976
  %265 = icmp slt i32 %261, %264, !dbg !977
  br i1 %265, label %266, label %275, !dbg !978

; <label>:266:                                    ; preds = %260, %250
  call void @irssi_set_dirty(), !dbg !980
  %267 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !982
  %268 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %267, i32 0, i32 6, !dbg !983
  %269 = load i8, i8* %268, align 4, !dbg !984
  %270 = and i8 %269, -2, !dbg !984
  %271 = or i8 %270, 1, !dbg !984
  store i8 %271, i8* %268, align 4, !dbg !984
  %272 = load i32, i32* %8, align 4, !dbg !985
  %273 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !986
  %274 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %273, i32 0, i32 7, !dbg !987
  store i32 %272, i32* %274, align 8, !dbg !988
  br label %275, !dbg !989

; <label>:275:                                    ; preds = %266, %260
  %276 = load i32, i32* %8, align 4, !dbg !990
  %277 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %12, align 8, !dbg !991
  %278 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %277, i32 0, i32 5, !dbg !992
  store i32 %276, i32* %278, align 8, !dbg !993
  br label %279, !dbg !994

; <label>:279:                                    ; preds = %275, %242
  br label %280, !dbg !995

; <label>:280:                                    ; preds = %279
  %281 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !996
  %282 = getelementptr inbounds %struct._GSList, %struct._GSList* %281, i32 0, i32 1, !dbg !998
  %283 = load %struct._GSList*, %struct._GSList** %282, align 8, !dbg !998
  store %struct._GSList* %283, %struct._GSList** %5, align 8, !dbg !999
  br label %213, !dbg !1000, !llvm.loop !1001

; <label>:284:                                    ; preds = %213
  %285 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1003
  call void @g_slist_free(%struct._GSList* %285), !dbg !1004
  %286 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !1005
  store %struct._WINDOW_REC* %286, %struct._WINDOW_REC** @active_win, align 8, !dbg !1006
  ret void, !dbg !1007
}

declare void @g_slist_foreach(%struct._GSList*, void (i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define void @statusbar_item_redraw(%struct.SBAR_ITEM_REC*) #0 !dbg !1008 {
  %2 = alloca %struct.SBAR_ITEM_REC*, align 8
  %3 = alloca %struct._WINDOW_REC*, align 8
  store %struct.SBAR_ITEM_REC* %0, %struct.SBAR_ITEM_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.SBAR_ITEM_REC** %2, metadata !1011, metadata !333), !dbg !1012
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !1013, metadata !333), !dbg !1014
  br label %4, !dbg !1015, !llvm.loop !1016

; <label>:4:                                      ; preds = %1
  %5 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %2, align 8, !dbg !1017
  %6 = icmp ne %struct.SBAR_ITEM_REC* %5, null, !dbg !1021
  br i1 %6, label %7, label %8, !dbg !1017

; <label>:7:                                      ; preds = %4
  br label %9, !dbg !1022

; <label>:8:                                      ; preds = %4
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.statusbar_item_redraw, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)), !dbg !1025
  br label %64, !dbg !1028

; <label>:9:                                      ; preds = %7
  br label %10, !dbg !1029

; <label>:10:                                     ; preds = %9
  %11 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1031
  store %struct._WINDOW_REC* %11, %struct._WINDOW_REC** %3, align 8, !dbg !1032
  %12 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %2, align 8, !dbg !1033
  %13 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %12, i32 0, i32 0, !dbg !1035
  %14 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %13, align 8, !dbg !1035
  %15 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %14, i32 0, i32 2, !dbg !1036
  %16 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %15, align 8, !dbg !1036
  %17 = icmp ne %struct.MAIN_WINDOW_REC* %16, null, !dbg !1037
  br i1 %17, label %18, label %26, !dbg !1038

; <label>:18:                                     ; preds = %10
  %19 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %2, align 8, !dbg !1039
  %20 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %19, i32 0, i32 0, !dbg !1040
  %21 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %20, align 8, !dbg !1040
  %22 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %21, i32 0, i32 2, !dbg !1041
  %23 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %22, align 8, !dbg !1041
  %24 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %23, i32 0, i32 0, !dbg !1042
  %25 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %24, align 8, !dbg !1042
  store %struct._WINDOW_REC* %25, %struct._WINDOW_REC** @active_win, align 8, !dbg !1043
  br label %26, !dbg !1044

; <label>:26:                                     ; preds = %18, %10
  %27 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %2, align 8, !dbg !1045
  %28 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %27, i32 0, i32 2, !dbg !1046
  %29 = bitcast {}** %28 to void (%struct.SBAR_ITEM_REC*, i32)**, !dbg !1046
  %30 = load void (%struct.SBAR_ITEM_REC*, i32)*, void (%struct.SBAR_ITEM_REC*, i32)** %29, align 8, !dbg !1046
  %31 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %2, align 8, !dbg !1047
  call void %30(%struct.SBAR_ITEM_REC* %31, i32 1), !dbg !1045
  %32 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %2, align 8, !dbg !1048
  %33 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %32, i32 0, i32 8, !dbg !1049
  %34 = load i8, i8* %33, align 4, !dbg !1050
  %35 = and i8 %34, -2, !dbg !1050
  %36 = or i8 %35, 1, !dbg !1050
  store i8 %36, i8* %33, align 4, !dbg !1050
  %37 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %2, align 8, !dbg !1051
  %38 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %37, i32 0, i32 0, !dbg !1052
  %39 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %38, align 8, !dbg !1052
  %40 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %39, i32 0, i32 6, !dbg !1053
  %41 = load i8, i8* %40, align 4, !dbg !1054
  %42 = and i8 %41, -2, !dbg !1054
  %43 = or i8 %42, 1, !dbg !1054
  store i8 %43, i8* %40, align 4, !dbg !1054
  call void @irssi_set_dirty(), !dbg !1055
  %44 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %2, align 8, !dbg !1056
  %45 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %44, i32 0, i32 4, !dbg !1058
  %46 = load i32, i32* %45, align 4, !dbg !1058
  %47 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %2, align 8, !dbg !1059
  %48 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %47, i32 0, i32 6, !dbg !1060
  %49 = load i32, i32* %48, align 4, !dbg !1060
  %50 = icmp ne i32 %46, %49, !dbg !1061
  br i1 %50, label %51, label %62, !dbg !1062

; <label>:51:                                     ; preds = %26
  %52 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %2, align 8, !dbg !1063
  %53 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %52, i32 0, i32 0, !dbg !1065
  %54 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %53, align 8, !dbg !1065
  %55 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %2, align 8, !dbg !1066
  %56 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %55, i32 0, i32 1, !dbg !1067
  %57 = load %struct.SBAR_ITEM_CONFIG_REC*, %struct.SBAR_ITEM_CONFIG_REC** %56, align 8, !dbg !1067
  %58 = getelementptr inbounds %struct.SBAR_ITEM_CONFIG_REC, %struct.SBAR_ITEM_CONFIG_REC* %57, i32 0, i32 3, !dbg !1068
  %59 = load i8, i8* %58, align 4, !dbg !1068
  %60 = and i8 %59, 1, !dbg !1068
  %61 = zext i8 %60 to i32, !dbg !1068
  call void @statusbar_redraw(%struct.STATUSBAR_REC* %54, i32 %61), !dbg !1069
  br label %62, !dbg !1070

; <label>:62:                                     ; preds = %51, %26
  %63 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1071
  store %struct._WINDOW_REC* %63, %struct._WINDOW_REC** @active_win, align 8, !dbg !1072
  br label %64, !dbg !1073

; <label>:64:                                     ; preds = %62, %8
  ret void, !dbg !1074
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @statusbar_items_redraw(i8*) #0 !dbg !1076 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1077, metadata !333), !dbg !1078
  %3 = load %struct._GHashTable*, %struct._GHashTable** @named_sbar_items, align 8, !dbg !1079
  %4 = load i8*, i8** %2, align 8, !dbg !1080
  %5 = call i8* @g_hash_table_lookup(%struct._GHashTable* %3, i8* %4), !dbg !1081
  %6 = bitcast i8* %5 to %struct._GSList*, !dbg !1081
  call void @g_slist_foreach(%struct._GSList* %6, void (i8*, i8*)* bitcast (void (%struct.SBAR_ITEM_REC*)* @statusbar_item_redraw to void (i8*, i8*)*), i8* null), !dbg !1082
  ret void, !dbg !1084
}

; Function Attrs: nounwind uwtable
define %struct.STATUSBAR_REC* @statusbar_create(%struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_CONFIG_REC*, %struct.MAIN_WINDOW_REC*) #0 !dbg !1085 {
  %4 = alloca %struct.STATUSBAR_REC*, align 8
  %5 = alloca %struct.STATUSBAR_GROUP_REC*, align 8
  %6 = alloca %struct.STATUSBAR_CONFIG_REC*, align 8
  %7 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %8 = alloca %struct.STATUSBAR_REC*, align 8
  %9 = alloca %struct.THEME_REC*, align 8
  %10 = alloca %struct._GSList*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.SBAR_ITEM_CONFIG_REC*, align 8
  store %struct.STATUSBAR_GROUP_REC* %0, %struct.STATUSBAR_GROUP_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.STATUSBAR_GROUP_REC** %5, metadata !1088, metadata !333), !dbg !1089
  store %struct.STATUSBAR_CONFIG_REC* %1, %struct.STATUSBAR_CONFIG_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.STATUSBAR_CONFIG_REC** %6, metadata !1090, metadata !333), !dbg !1091
  store %struct.MAIN_WINDOW_REC* %2, %struct.MAIN_WINDOW_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %7, metadata !1092, metadata !333), !dbg !1093
  call void @llvm.dbg.declare(metadata %struct.STATUSBAR_REC** %8, metadata !1094, metadata !333), !dbg !1095
  call void @llvm.dbg.declare(metadata %struct.THEME_REC** %9, metadata !1096, metadata !333), !dbg !1116
  call void @llvm.dbg.declare(metadata %struct._GSList** %10, metadata !1117, metadata !333), !dbg !1118
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1119, metadata !333), !dbg !1120
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1121, metadata !333), !dbg !1122
  br label %14, !dbg !1123, !llvm.loop !1124

; <label>:14:                                     ; preds = %3
  %15 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** %5, align 8, !dbg !1125
  %16 = icmp ne %struct.STATUSBAR_GROUP_REC* %15, null, !dbg !1129
  br i1 %16, label %17, label %18, !dbg !1125

; <label>:17:                                     ; preds = %14
  br label %19, !dbg !1130

; <label>:18:                                     ; preds = %14
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.statusbar_create, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0)), !dbg !1133
  store %struct.STATUSBAR_REC* null, %struct.STATUSBAR_REC** %4, align 8, !dbg !1136
  br label %199, !dbg !1136

; <label>:19:                                     ; preds = %17
  br label %20, !dbg !1137

; <label>:20:                                     ; preds = %19
  br label %21, !dbg !1139, !llvm.loop !1140

; <label>:21:                                     ; preds = %20
  %22 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %6, align 8, !dbg !1141
  %23 = icmp ne %struct.STATUSBAR_CONFIG_REC* %22, null, !dbg !1145
  br i1 %23, label %24, label %25, !dbg !1141

; <label>:24:                                     ; preds = %21
  br label %26, !dbg !1146

; <label>:25:                                     ; preds = %21
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.statusbar_create, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)), !dbg !1149
  store %struct.STATUSBAR_REC* null, %struct.STATUSBAR_REC** %4, align 8, !dbg !1152
  br label %199, !dbg !1152

; <label>:26:                                     ; preds = %24
  br label %27, !dbg !1153

; <label>:27:                                     ; preds = %26
  br label %28, !dbg !1155, !llvm.loop !1156

; <label>:28:                                     ; preds = %27
  %29 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %6, align 8, !dbg !1157
  %30 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %29, i32 0, i32 1, !dbg !1161
  %31 = load i32, i32* %30, align 8, !dbg !1161
  %32 = icmp ne i32 %31, 2, !dbg !1162
  br i1 %32, label %36, label %33, !dbg !1163

; <label>:33:                                     ; preds = %28
  %34 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %7, align 8, !dbg !1164
  %35 = icmp ne %struct.MAIN_WINDOW_REC* %34, null, !dbg !1166
  br i1 %35, label %36, label %37, !dbg !1167

; <label>:36:                                     ; preds = %33, %28
  br label %38, !dbg !1168

; <label>:37:                                     ; preds = %33
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.statusbar_create, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i32 0, i32 0)), !dbg !1171
  store %struct.STATUSBAR_REC* null, %struct.STATUSBAR_REC** %4, align 8, !dbg !1174
  br label %199, !dbg !1174

; <label>:38:                                     ; preds = %36
  br label %39, !dbg !1175

; <label>:39:                                     ; preds = %38
  %40 = call noalias i8* @g_malloc0_n(i64 1, i64 56), !dbg !1177
  %41 = bitcast i8* %40 to %struct.STATUSBAR_REC*, !dbg !1178
  store %struct.STATUSBAR_REC* %41, %struct.STATUSBAR_REC** %8, align 8, !dbg !1179
  %42 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** %5, align 8, !dbg !1180
  %43 = getelementptr inbounds %struct.STATUSBAR_GROUP_REC, %struct.STATUSBAR_GROUP_REC* %42, i32 0, i32 2, !dbg !1181
  %44 = load %struct._GSList*, %struct._GSList** %43, align 8, !dbg !1181
  %45 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %8, align 8, !dbg !1182
  %46 = bitcast %struct.STATUSBAR_REC* %45 to i8*, !dbg !1182
  %47 = call %struct._GSList* @g_slist_append(%struct._GSList* %44, i8* %46), !dbg !1183
  %48 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** %5, align 8, !dbg !1184
  %49 = getelementptr inbounds %struct.STATUSBAR_GROUP_REC, %struct.STATUSBAR_GROUP_REC* %48, i32 0, i32 2, !dbg !1185
  store %struct._GSList* %47, %struct._GSList** %49, align 8, !dbg !1186
  %50 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** %5, align 8, !dbg !1187
  %51 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %8, align 8, !dbg !1188
  %52 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %51, i32 0, i32 0, !dbg !1189
  store %struct.STATUSBAR_GROUP_REC* %50, %struct.STATUSBAR_GROUP_REC** %52, align 8, !dbg !1190
  %53 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %6, align 8, !dbg !1191
  %54 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %8, align 8, !dbg !1192
  %55 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %54, i32 0, i32 1, !dbg !1193
  store %struct.STATUSBAR_CONFIG_REC* %53, %struct.STATUSBAR_CONFIG_REC** %55, align 8, !dbg !1194
  %56 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %7, align 8, !dbg !1195
  %57 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %8, align 8, !dbg !1196
  %58 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %57, i32 0, i32 2, !dbg !1197
  store %struct.MAIN_WINDOW_REC* %56, %struct.MAIN_WINDOW_REC** %58, align 8, !dbg !1198
  call void @irssi_set_dirty(), !dbg !1199
  %59 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %8, align 8, !dbg !1200
  %60 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %59, i32 0, i32 6, !dbg !1201
  %61 = load i8, i8* %60, align 4, !dbg !1202
  %62 = and i8 %61, -2, !dbg !1202
  %63 = or i8 %62, 1, !dbg !1202
  store i8 %63, i8* %60, align 4, !dbg !1202
  %64 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %8, align 8, !dbg !1203
  %65 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %64, i32 0, i32 7, !dbg !1204
  store i32 0, i32* %65, align 8, !dbg !1205
  call void @signal_remove_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_terminal_resized to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1206
  call void @signal_remove_full(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.MAIN_WINDOW_REC*)* @sig_mainwindow_resized to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1207
  call void @signal_remove_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.MAIN_WINDOW_REC*)* @sig_mainwindow_resized to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1208
  %66 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %6, align 8, !dbg !1209
  %67 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %66, i32 0, i32 1, !dbg !1211
  %68 = load i32, i32* %67, align 8, !dbg !1211
  %69 = icmp eq i32 %68, 1, !dbg !1212
  br i1 %69, label %70, label %83, !dbg !1213

; <label>:70:                                     ; preds = %39
  %71 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %6, align 8, !dbg !1214
  %72 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %71, i32 0, i32 2, !dbg !1216
  %73 = load i32, i32* %72, align 4, !dbg !1216
  %74 = icmp eq i32 %73, 1, !dbg !1217
  %75 = zext i1 %74 to i32, !dbg !1217
  %76 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %6, align 8, !dbg !1218
  %77 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %76, i32 0, i32 2, !dbg !1219
  %78 = load i32, i32* %77, align 4, !dbg !1219
  %79 = icmp eq i32 %78, 2, !dbg !1220
  %80 = zext i1 %79 to i32, !dbg !1220
  %81 = call i32 @mainwindows_reserve_lines(i32 %75, i32 %80), !dbg !1221
  %82 = load %struct.THEME_REC*, %struct.THEME_REC** @current_theme, align 8, !dbg !1222
  store %struct.THEME_REC* %82, %struct.THEME_REC** %9, align 8, !dbg !1223
  br label %130, !dbg !1224

; <label>:83:                                     ; preds = %39
  %84 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %7, align 8, !dbg !1225
  %85 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %84, i32 0, i32 9, !dbg !1227
  %86 = load %struct._GSList*, %struct._GSList** %85, align 8, !dbg !1227
  %87 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %8, align 8, !dbg !1228
  %88 = bitcast %struct.STATUSBAR_REC* %87 to i8*, !dbg !1228
  %89 = call %struct._GSList* @g_slist_append(%struct._GSList* %86, i8* %88), !dbg !1229
  %90 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %7, align 8, !dbg !1230
  %91 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %90, i32 0, i32 9, !dbg !1231
  store %struct._GSList* %89, %struct._GSList** %91, align 8, !dbg !1232
  %92 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %7, align 8, !dbg !1233
  %93 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %6, align 8, !dbg !1234
  %94 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %93, i32 0, i32 2, !dbg !1235
  %95 = load i32, i32* %94, align 4, !dbg !1235
  %96 = icmp eq i32 %95, 1, !dbg !1236
  %97 = zext i1 %96 to i32, !dbg !1236
  %98 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %6, align 8, !dbg !1237
  %99 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %98, i32 0, i32 2, !dbg !1238
  %100 = load i32, i32* %99, align 4, !dbg !1238
  %101 = icmp eq i32 %100, 2, !dbg !1239
  %102 = zext i1 %101 to i32, !dbg !1239
  %103 = call i32 @mainwindow_set_statusbar_lines(%struct.MAIN_WINDOW_REC* %92, i32 %97, i32 %102), !dbg !1240
  %104 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %7, align 8, !dbg !1241
  %105 = icmp ne %struct.MAIN_WINDOW_REC* %104, null, !dbg !1242
  br i1 %105, label %106, label %124, !dbg !1243

; <label>:106:                                    ; preds = %83
  %107 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %7, align 8, !dbg !1244
  %108 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %107, i32 0, i32 0, !dbg !1246
  %109 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %108, align 8, !dbg !1246
  %110 = icmp ne %struct._WINDOW_REC* %109, null, !dbg !1247
  br i1 %110, label %111, label %124, !dbg !1248

; <label>:111:                                    ; preds = %106
  %112 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %7, align 8, !dbg !1249
  %113 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %112, i32 0, i32 0, !dbg !1250
  %114 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %113, align 8, !dbg !1250
  %115 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %114, i32 0, i32 19, !dbg !1251
  %116 = load i8*, i8** %115, align 8, !dbg !1251
  %117 = icmp ne i8* %116, null, !dbg !1252
  br i1 %117, label %118, label %124, !dbg !1253

; <label>:118:                                    ; preds = %111
  %119 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %7, align 8, !dbg !1255
  %120 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %119, i32 0, i32 0, !dbg !1256
  %121 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %120, align 8, !dbg !1256
  %122 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %121, i32 0, i32 19, !dbg !1257
  %123 = load i8*, i8** %122, align 8, !dbg !1257
  br label %127, !dbg !1258

; <label>:124:                                    ; preds = %111, %106, %83
  %125 = load %struct.THEME_REC*, %struct.THEME_REC** @current_theme, align 8, !dbg !1260
  %126 = bitcast %struct.THEME_REC* %125 to i8*, !dbg !1260
  br label %127, !dbg !1261

; <label>:127:                                    ; preds = %124, %118
  %128 = phi i8* [ %123, %118 ], [ %126, %124 ], !dbg !1263
  %129 = bitcast i8* %128 to %struct.THEME_REC*, !dbg !1263
  store %struct.THEME_REC* %129, %struct.THEME_REC** %9, align 8, !dbg !1265
  br label %130

; <label>:130:                                    ; preds = %127, %70
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_terminal_resized to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1266
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.MAIN_WINDOW_REC*)* @sig_mainwindow_resized to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1267
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.MAIN_WINDOW_REC*)* @sig_mainwindow_resized to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1268
  %131 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %6, align 8, !dbg !1269
  %132 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %131, i32 0, i32 0, !dbg !1270
  %133 = load i8*, i8** %132, align 8, !dbg !1270
  %134 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* %133), !dbg !1271
  store i8* %134, i8** %11, align 8, !dbg !1272
  %135 = load %struct.THEME_REC*, %struct.THEME_REC** %9, align 8, !dbg !1273
  %136 = load i8*, i8** %11, align 8, !dbg !1274
  %137 = call i8* @theme_format_expand(%struct.THEME_REC* %135, i8* %136), !dbg !1275
  store i8* %137, i8** %12, align 8, !dbg !1276
  %138 = load i8*, i8** %11, align 8, !dbg !1277
  call void @g_free(i8* %138), !dbg !1278
  %139 = load i8*, i8** %12, align 8, !dbg !1279
  %140 = load i8, i8* %139, align 1, !dbg !1281
  %141 = sext i8 %140 to i32, !dbg !1281
  %142 = icmp eq i32 %141, 0, !dbg !1282
  br i1 %142, label %143, label %162, !dbg !1283

; <label>:143:                                    ; preds = %130
  %144 = load i8*, i8** %12, align 8, !dbg !1284
  call void @g_free(i8* %144), !dbg !1286
  %145 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** %5, align 8, !dbg !1287
  %146 = getelementptr inbounds %struct.STATUSBAR_GROUP_REC, %struct.STATUSBAR_GROUP_REC* %145, i32 0, i32 0, !dbg !1288
  %147 = load i8*, i8** %146, align 8, !dbg !1288
  %148 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* %147), !dbg !1289
  store i8* %148, i8** %11, align 8, !dbg !1290
  %149 = load %struct.THEME_REC*, %struct.THEME_REC** %9, align 8, !dbg !1291
  %150 = load i8*, i8** %11, align 8, !dbg !1292
  %151 = call i8* @theme_format_expand(%struct.THEME_REC* %149, i8* %150), !dbg !1293
  store i8* %151, i8** %12, align 8, !dbg !1294
  %152 = load i8*, i8** %11, align 8, !dbg !1295
  call void @g_free(i8* %152), !dbg !1296
  %153 = load i8*, i8** %12, align 8, !dbg !1297
  %154 = load i8, i8* %153, align 1, !dbg !1299
  %155 = sext i8 %154 to i32, !dbg !1299
  %156 = icmp eq i32 %155, 0, !dbg !1300
  br i1 %156, label %157, label %161, !dbg !1301

; <label>:157:                                    ; preds = %143
  %158 = load i8*, i8** %12, align 8, !dbg !1302
  call void @g_free(i8* %158), !dbg !1304
  %159 = load %struct.THEME_REC*, %struct.THEME_REC** %9, align 8, !dbg !1305
  %160 = call i8* @theme_format_expand(%struct.THEME_REC* %159, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0)), !dbg !1306
  store i8* %160, i8** %12, align 8, !dbg !1307
  br label %161, !dbg !1308

; <label>:161:                                    ; preds = %157, %143
  br label %162, !dbg !1309

; <label>:162:                                    ; preds = %161, %130
  %163 = load i8*, i8** %12, align 8, !dbg !1310
  %164 = load i8, i8* %163, align 1, !dbg !1312
  %165 = sext i8 %164 to i32, !dbg !1312
  %166 = icmp eq i32 %165, 0, !dbg !1313
  br i1 %166, label %167, label %170, !dbg !1314

; <label>:167:                                    ; preds = %162
  %168 = load i8*, i8** %12, align 8, !dbg !1315
  call void @g_free(i8* %168), !dbg !1317
  %169 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0)), !dbg !1318
  store i8* %169, i8** %12, align 8, !dbg !1319
  br label %170, !dbg !1320

; <label>:170:                                    ; preds = %167, %162
  %171 = load i8*, i8** %12, align 8, !dbg !1321
  %172 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i8* %171, i8* null), !dbg !1322
  %173 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %8, align 8, !dbg !1323
  %174 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %173, i32 0, i32 4, !dbg !1324
  store i8* %172, i8** %174, align 8, !dbg !1325
  %175 = load i8*, i8** %12, align 8, !dbg !1326
  call void @g_free(i8* %175), !dbg !1327
  %176 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %8, align 8, !dbg !1328
  call void @statusbars_recalc_ypos(%struct.STATUSBAR_REC* %176), !dbg !1329
  %177 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %8, align 8, !dbg !1330
  %178 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0), i32 1, %struct.STATUSBAR_REC* %177), !dbg !1331
  %179 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %6, align 8, !dbg !1332
  %180 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %179, i32 0, i32 5, !dbg !1334
  %181 = load %struct._GSList*, %struct._GSList** %180, align 8, !dbg !1334
  store %struct._GSList* %181, %struct._GSList** %10, align 8, !dbg !1335
  br label %182, !dbg !1336

; <label>:182:                                    ; preds = %193, %170
  %183 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !1337
  %184 = icmp ne %struct._GSList* %183, null, !dbg !1340
  br i1 %184, label %185, label %197, !dbg !1341

; <label>:185:                                    ; preds = %182
  call void @llvm.dbg.declare(metadata %struct.SBAR_ITEM_CONFIG_REC** %13, metadata !1342, metadata !333), !dbg !1344
  %186 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !1345
  %187 = getelementptr inbounds %struct._GSList, %struct._GSList* %186, i32 0, i32 0, !dbg !1346
  %188 = load i8*, i8** %187, align 8, !dbg !1346
  %189 = bitcast i8* %188 to %struct.SBAR_ITEM_CONFIG_REC*, !dbg !1345
  store %struct.SBAR_ITEM_CONFIG_REC* %189, %struct.SBAR_ITEM_CONFIG_REC** %13, align 8, !dbg !1344
  %190 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %8, align 8, !dbg !1347
  %191 = load %struct.SBAR_ITEM_CONFIG_REC*, %struct.SBAR_ITEM_CONFIG_REC** %13, align 8, !dbg !1348
  %192 = call %struct.SBAR_ITEM_REC* @statusbar_item_create(%struct.STATUSBAR_REC* %190, %struct.SBAR_ITEM_CONFIG_REC* %191), !dbg !1349
  br label %193, !dbg !1350

; <label>:193:                                    ; preds = %185
  %194 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !1351
  %195 = getelementptr inbounds %struct._GSList, %struct._GSList* %194, i32 0, i32 1, !dbg !1353
  %196 = load %struct._GSList*, %struct._GSList** %195, align 8, !dbg !1353
  store %struct._GSList* %196, %struct._GSList** %10, align 8, !dbg !1354
  br label %182, !dbg !1355, !llvm.loop !1356

; <label>:197:                                    ; preds = %182
  %198 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %8, align 8, !dbg !1358
  store %struct.STATUSBAR_REC* %198, %struct.STATUSBAR_REC** %4, align 8, !dbg !1359
  br label %199, !dbg !1359

; <label>:199:                                    ; preds = %197, %37, %25, %18
  %200 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %4, align 8, !dbg !1360
  ret %struct.STATUSBAR_REC* %200, !dbg !1360
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @sig_terminal_resized() #0 !dbg !1361 {
  %1 = alloca %struct._GSList*, align 8
  %2 = alloca %struct.STATUSBAR_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %1, metadata !1364, metadata !333), !dbg !1365
  %3 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** @active_statusbar_group, align 8, !dbg !1366
  %4 = getelementptr inbounds %struct.STATUSBAR_GROUP_REC, %struct.STATUSBAR_GROUP_REC* %3, i32 0, i32 2, !dbg !1368
  %5 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1368
  store %struct._GSList* %5, %struct._GSList** %1, align 8, !dbg !1369
  br label %6, !dbg !1370

; <label>:6:                                      ; preds = %30, %0
  %7 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1371
  %8 = icmp ne %struct._GSList* %7, null, !dbg !1374
  br i1 %8, label %9, label %34, !dbg !1375

; <label>:9:                                      ; preds = %6
  call void @llvm.dbg.declare(metadata %struct.STATUSBAR_REC** %2, metadata !1376, metadata !333), !dbg !1378
  %10 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1379
  %11 = getelementptr inbounds %struct._GSList, %struct._GSList* %10, i32 0, i32 0, !dbg !1380
  %12 = load i8*, i8** %11, align 8, !dbg !1380
  %13 = bitcast i8* %12 to %struct.STATUSBAR_REC*, !dbg !1379
  store %struct.STATUSBAR_REC* %13, %struct.STATUSBAR_REC** %2, align 8, !dbg !1378
  %14 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !1381
  %15 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %14, i32 0, i32 1, !dbg !1383
  %16 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %15, align 8, !dbg !1383
  %17 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %16, i32 0, i32 1, !dbg !1384
  %18 = load i32, i32* %17, align 8, !dbg !1384
  %19 = icmp eq i32 %18, 1, !dbg !1385
  br i1 %19, label %20, label %29, !dbg !1386

; <label>:20:                                     ; preds = %9
  %21 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !1387
  %22 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %21, i32 0, i32 1, !dbg !1388
  %23 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %22, align 8, !dbg !1388
  %24 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %23, i32 0, i32 2, !dbg !1389
  %25 = load i32, i32* %24, align 4, !dbg !1389
  %26 = icmp eq i32 %25, 2, !dbg !1390
  br i1 %26, label %27, label %29, !dbg !1391

; <label>:27:                                     ; preds = %20
  %28 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !1393
  call void @statusbars_recalc_ypos(%struct.STATUSBAR_REC* %28), !dbg !1395
  br label %34, !dbg !1396

; <label>:29:                                     ; preds = %20, %9
  br label %30, !dbg !1397

; <label>:30:                                     ; preds = %29
  %31 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1398
  %32 = getelementptr inbounds %struct._GSList, %struct._GSList* %31, i32 0, i32 1, !dbg !1400
  %33 = load %struct._GSList*, %struct._GSList** %32, align 8, !dbg !1400
  store %struct._GSList* %33, %struct._GSList** %1, align 8, !dbg !1401
  br label %6, !dbg !1402, !llvm.loop !1403

; <label>:34:                                     ; preds = %27, %6
  ret void, !dbg !1405
}

; Function Attrs: nounwind uwtable
define internal void @sig_mainwindow_resized(%struct.MAIN_WINDOW_REC*) #0 !dbg !1406 {
  %2 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct.STATUSBAR_REC*, align 8
  store %struct.MAIN_WINDOW_REC* %0, %struct.MAIN_WINDOW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %2, metadata !1409, metadata !333), !dbg !1410
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !1411, metadata !333), !dbg !1412
  %5 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !1413
  call void @mainwindow_recalc_ypos(%struct.MAIN_WINDOW_REC* %5, i32 1), !dbg !1414
  %6 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !1415
  call void @mainwindow_recalc_ypos(%struct.MAIN_WINDOW_REC* %6, i32 2), !dbg !1416
  %7 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !1417
  %8 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %7, i32 0, i32 9, !dbg !1419
  %9 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1419
  store %struct._GSList* %9, %struct._GSList** %3, align 8, !dbg !1420
  br label %10, !dbg !1421

; <label>:10:                                     ; preds = %19, %1
  %11 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1422
  %12 = icmp ne %struct._GSList* %11, null, !dbg !1425
  br i1 %12, label %13, label %23, !dbg !1426

; <label>:13:                                     ; preds = %10
  call void @llvm.dbg.declare(metadata %struct.STATUSBAR_REC** %4, metadata !1427, metadata !333), !dbg !1429
  %14 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1430
  %15 = getelementptr inbounds %struct._GSList, %struct._GSList* %14, i32 0, i32 0, !dbg !1431
  %16 = load i8*, i8** %15, align 8, !dbg !1431
  %17 = bitcast i8* %16 to %struct.STATUSBAR_REC*, !dbg !1430
  store %struct.STATUSBAR_REC* %17, %struct.STATUSBAR_REC** %4, align 8, !dbg !1429
  %18 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %4, align 8, !dbg !1432
  call void @statusbar_redraw(%struct.STATUSBAR_REC* %18, i32 1), !dbg !1433
  br label %19, !dbg !1434

; <label>:19:                                     ; preds = %13
  %20 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1435
  %21 = getelementptr inbounds %struct._GSList, %struct._GSList* %20, i32 0, i32 1, !dbg !1437
  %22 = load %struct._GSList*, %struct._GSList** %21, align 8, !dbg !1437
  store %struct._GSList* %22, %struct._GSList** %3, align 8, !dbg !1438
  br label %10, !dbg !1439, !llvm.loop !1440

; <label>:23:                                     ; preds = %10
  ret void, !dbg !1442
}

declare i32 @mainwindows_reserve_lines(i32, i32) #2

declare i32 @mainwindow_set_statusbar_lines(%struct.MAIN_WINDOW_REC*, i32, i32) #2

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare noalias i8* @g_strdup_printf(i8*, ...) #2

declare i8* @theme_format_expand(%struct.THEME_REC*, i8*) #2

declare noalias i8* @g_strconcat(i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @statusbars_recalc_ypos(%struct.STATUSBAR_REC*) #0 !dbg !1443 {
  %2 = alloca %struct.STATUSBAR_REC*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.STATUSBAR_REC*, align 8
  store %struct.STATUSBAR_REC* %0, %struct.STATUSBAR_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.STATUSBAR_REC** %2, metadata !1444, metadata !333), !dbg !1445
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !1446, metadata !333), !dbg !1447
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !1448, metadata !333), !dbg !1449
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1450, metadata !333), !dbg !1451
  store %struct._GSList* null, %struct._GSList** %4, align 8, !dbg !1452
  %7 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !1453
  %8 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %7, i32 0, i32 1, !dbg !1454
  %9 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %8, align 8, !dbg !1454
  %10 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %9, i32 0, i32 1, !dbg !1455
  %11 = load i32, i32* %10, align 8, !dbg !1455
  %12 = icmp eq i32 %11, 1, !dbg !1456
  br i1 %12, label %13, label %19, !dbg !1453

; <label>:13:                                     ; preds = %1
  %14 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !1457
  %15 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %14, i32 0, i32 0, !dbg !1459
  %16 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** %15, align 8, !dbg !1459
  %17 = getelementptr inbounds %struct.STATUSBAR_GROUP_REC, %struct.STATUSBAR_GROUP_REC* %16, i32 0, i32 2, !dbg !1460
  %18 = load %struct._GSList*, %struct._GSList** %17, align 8, !dbg !1460
  br label %25, !dbg !1461

; <label>:19:                                     ; preds = %1
  %20 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !1462
  %21 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %20, i32 0, i32 2, !dbg !1463
  %22 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %21, align 8, !dbg !1463
  %23 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %22, i32 0, i32 9, !dbg !1464
  %24 = load %struct._GSList*, %struct._GSList** %23, align 8, !dbg !1464
  br label %25, !dbg !1465

; <label>:25:                                     ; preds = %19, %13
  %26 = phi %struct._GSList* [ %18, %13 ], [ %24, %19 ], !dbg !1467
  store %struct._GSList* %26, %struct._GSList** %3, align 8, !dbg !1469
  br label %27, !dbg !1470

; <label>:27:                                     ; preds = %64, %25
  %28 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1471
  %29 = icmp ne %struct._GSList* %28, null, !dbg !1475
  br i1 %29, label %30, label %68, !dbg !1476

; <label>:30:                                     ; preds = %27
  call void @llvm.dbg.declare(metadata %struct.STATUSBAR_REC** %6, metadata !1477, metadata !333), !dbg !1479
  %31 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1480
  %32 = getelementptr inbounds %struct._GSList, %struct._GSList* %31, i32 0, i32 0, !dbg !1481
  %33 = load i8*, i8** %32, align 8, !dbg !1481
  %34 = bitcast i8* %33 to %struct.STATUSBAR_REC*, !dbg !1480
  store %struct.STATUSBAR_REC* %34, %struct.STATUSBAR_REC** %6, align 8, !dbg !1479
  %35 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %6, align 8, !dbg !1482
  %36 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %35, i32 0, i32 1, !dbg !1484
  %37 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %36, align 8, !dbg !1484
  %38 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %37, i32 0, i32 1, !dbg !1485
  %39 = load i32, i32* %38, align 8, !dbg !1485
  %40 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !1486
  %41 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %40, i32 0, i32 1, !dbg !1487
  %42 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %41, align 8, !dbg !1487
  %43 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %42, i32 0, i32 1, !dbg !1488
  %44 = load i32, i32* %43, align 8, !dbg !1488
  %45 = icmp eq i32 %39, %44, !dbg !1489
  br i1 %45, label %46, label %63, !dbg !1490

; <label>:46:                                     ; preds = %30
  %47 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %6, align 8, !dbg !1491
  %48 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %47, i32 0, i32 1, !dbg !1492
  %49 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %48, align 8, !dbg !1492
  %50 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %49, i32 0, i32 2, !dbg !1493
  %51 = load i32, i32* %50, align 4, !dbg !1493
  %52 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !1494
  %53 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %52, i32 0, i32 1, !dbg !1495
  %54 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %53, align 8, !dbg !1495
  %55 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %54, i32 0, i32 2, !dbg !1496
  %56 = load i32, i32* %55, align 4, !dbg !1496
  %57 = icmp eq i32 %51, %56, !dbg !1497
  br i1 %57, label %58, label %63, !dbg !1498

; <label>:58:                                     ; preds = %46
  %59 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1500
  %60 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %6, align 8, !dbg !1502
  %61 = bitcast %struct.STATUSBAR_REC* %60 to i8*, !dbg !1502
  %62 = call %struct._GSList* @g_slist_insert_sorted(%struct._GSList* %59, i8* %61, i32 (i8*, i8*)* bitcast (i32 (%struct.STATUSBAR_REC*, %struct.STATUSBAR_REC*)* @sbar_cmp_position to i32 (i8*, i8*)*)), !dbg !1503
  store %struct._GSList* %62, %struct._GSList** %4, align 8, !dbg !1504
  br label %63, !dbg !1505

; <label>:63:                                     ; preds = %58, %46, %30
  br label %64, !dbg !1506

; <label>:64:                                     ; preds = %63
  %65 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1507
  %66 = getelementptr inbounds %struct._GSList, %struct._GSList* %65, i32 0, i32 1, !dbg !1509
  %67 = load %struct._GSList*, %struct._GSList** %66, align 8, !dbg !1509
  store %struct._GSList* %67, %struct._GSList** %3, align 8, !dbg !1510
  br label %27, !dbg !1511, !llvm.loop !1512

; <label>:68:                                     ; preds = %27
  %69 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1513
  %70 = icmp eq %struct._GSList* %69, null, !dbg !1515
  br i1 %70, label %71, label %72, !dbg !1516

; <label>:71:                                     ; preds = %68
  br label %146, !dbg !1517

; <label>:72:                                     ; preds = %68
  %73 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !1519
  %74 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %73, i32 0, i32 1, !dbg !1521
  %75 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %74, align 8, !dbg !1521
  %76 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %75, i32 0, i32 1, !dbg !1522
  %77 = load i32, i32* %76, align 8, !dbg !1522
  %78 = icmp eq i32 %77, 1, !dbg !1523
  br i1 %78, label %79, label %94, !dbg !1524

; <label>:79:                                     ; preds = %72
  %80 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !1525
  %81 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %80, i32 0, i32 1, !dbg !1527
  %82 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %81, align 8, !dbg !1527
  %83 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %82, i32 0, i32 2, !dbg !1528
  %84 = load i32, i32* %83, align 4, !dbg !1528
  %85 = icmp eq i32 %84, 1, !dbg !1529
  br i1 %85, label %86, label %87, !dbg !1525

; <label>:86:                                     ; preds = %79
  br label %92, !dbg !1530

; <label>:87:                                     ; preds = %79
  %88 = load i32, i32* @term_height, align 4, !dbg !1532
  %89 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1533
  %90 = call i32 @g_slist_length(%struct._GSList* %89), !dbg !1534
  %91 = sub i32 %88, %90, !dbg !1535
  br label %92, !dbg !1536

; <label>:92:                                     ; preds = %87, %86
  %93 = phi i32 [ 0, %86 ], [ %91, %87 ], !dbg !1538
  store i32 %93, i32* %5, align 4, !dbg !1540
  br label %119, !dbg !1541

; <label>:94:                                     ; preds = %72
  %95 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !1542
  %96 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %95, i32 0, i32 1, !dbg !1544
  %97 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %96, align 8, !dbg !1544
  %98 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %97, i32 0, i32 2, !dbg !1545
  %99 = load i32, i32* %98, align 4, !dbg !1545
  %100 = icmp eq i32 %99, 1, !dbg !1546
  br i1 %100, label %101, label %107, !dbg !1542

; <label>:101:                                    ; preds = %94
  %102 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !1547
  %103 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %102, i32 0, i32 2, !dbg !1548
  %104 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %103, align 8, !dbg !1548
  %105 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %104, i32 0, i32 3, !dbg !1549
  %106 = load i32, i32* %105, align 4, !dbg !1549
  br label %117, !dbg !1550

; <label>:107:                                    ; preds = %94
  %108 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !1552
  %109 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %108, i32 0, i32 2, !dbg !1553
  %110 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %109, align 8, !dbg !1553
  %111 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %110, i32 0, i32 4, !dbg !1554
  %112 = load i32, i32* %111, align 8, !dbg !1554
  %113 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1555
  %114 = call i32 @g_slist_length(%struct._GSList* %113), !dbg !1556
  %115 = sub i32 %114, 1, !dbg !1557
  %116 = sub i32 %112, %115, !dbg !1558
  br label %117, !dbg !1559

; <label>:117:                                    ; preds = %107, %101
  %118 = phi i32 [ %106, %101 ], [ %116, %107 ], !dbg !1561
  store i32 %118, i32* %5, align 4, !dbg !1563
  br label %119

; <label>:119:                                    ; preds = %117, %92
  br label %120, !dbg !1564

; <label>:120:                                    ; preds = %138, %119
  %121 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1565
  %122 = icmp ne %struct._GSList* %121, null, !dbg !1566
  br i1 %122, label %123, label %146, !dbg !1567

; <label>:123:                                    ; preds = %120
  %124 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1568
  %125 = getelementptr inbounds %struct._GSList, %struct._GSList* %124, i32 0, i32 0, !dbg !1570
  %126 = load i8*, i8** %125, align 8, !dbg !1570
  %127 = bitcast i8* %126 to %struct.STATUSBAR_REC*, !dbg !1568
  store %struct.STATUSBAR_REC* %127, %struct.STATUSBAR_REC** %2, align 8, !dbg !1571
  %128 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !1572
  %129 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %128, i32 0, i32 5, !dbg !1574
  %130 = load i32, i32* %129, align 8, !dbg !1574
  %131 = load i32, i32* %5, align 4, !dbg !1575
  %132 = icmp ne i32 %130, %131, !dbg !1576
  br i1 %132, label %133, label %138, !dbg !1577

; <label>:133:                                    ; preds = %123
  %134 = load i32, i32* %5, align 4, !dbg !1578
  %135 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !1580
  %136 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %135, i32 0, i32 5, !dbg !1581
  store i32 %134, i32* %136, align 8, !dbg !1582
  %137 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !1583
  call void @statusbar_redraw(%struct.STATUSBAR_REC* %137, i32 1), !dbg !1584
  br label %138, !dbg !1585

; <label>:138:                                    ; preds = %133, %123
  %139 = load i32, i32* %5, align 4, !dbg !1586
  %140 = add nsw i32 %139, 1, !dbg !1586
  store i32 %140, i32* %5, align 4, !dbg !1586
  %141 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1587
  %142 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1588
  %143 = getelementptr inbounds %struct._GSList, %struct._GSList* %142, i32 0, i32 0, !dbg !1589
  %144 = load i8*, i8** %143, align 8, !dbg !1589
  %145 = call %struct._GSList* @g_slist_remove(%struct._GSList* %141, i8* %144), !dbg !1590
  store %struct._GSList* %145, %struct._GSList** %4, align 8, !dbg !1591
  br label %120, !dbg !1592, !llvm.loop !1593

; <label>:146:                                    ; preds = %71, %120
  ret void, !dbg !1594
}

declare i32 @signal_emit(i8*, i32, ...) #2

; Function Attrs: nounwind uwtable
define %struct.SBAR_ITEM_REC* @statusbar_item_create(%struct.STATUSBAR_REC*, %struct.SBAR_ITEM_CONFIG_REC*) #0 !dbg !1595 {
  %3 = alloca %struct.SBAR_ITEM_REC*, align 8
  %4 = alloca %struct.STATUSBAR_REC*, align 8
  %5 = alloca %struct.SBAR_ITEM_CONFIG_REC*, align 8
  %6 = alloca %struct.SBAR_ITEM_REC*, align 8
  %7 = alloca %struct._GSList*, align 8
  store %struct.STATUSBAR_REC* %0, %struct.STATUSBAR_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.STATUSBAR_REC** %4, metadata !1598, metadata !333), !dbg !1599
  store %struct.SBAR_ITEM_CONFIG_REC* %1, %struct.SBAR_ITEM_CONFIG_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.SBAR_ITEM_CONFIG_REC** %5, metadata !1600, metadata !333), !dbg !1601
  call void @llvm.dbg.declare(metadata %struct.SBAR_ITEM_REC** %6, metadata !1602, metadata !333), !dbg !1603
  call void @llvm.dbg.declare(metadata %struct._GSList** %7, metadata !1604, metadata !333), !dbg !1605
  br label %8, !dbg !1606, !llvm.loop !1607

; <label>:8:                                      ; preds = %2
  %9 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %4, align 8, !dbg !1608
  %10 = icmp ne %struct.STATUSBAR_REC* %9, null, !dbg !1612
  br i1 %10, label %11, label %12, !dbg !1608

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !1613

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.statusbar_item_create, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0)), !dbg !1616
  store %struct.SBAR_ITEM_REC* null, %struct.SBAR_ITEM_REC** %3, align 8, !dbg !1619
  br label %88, !dbg !1619

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !1620

; <label>:14:                                     ; preds = %13
  br label %15, !dbg !1622, !llvm.loop !1623

; <label>:15:                                     ; preds = %14
  %16 = load %struct.SBAR_ITEM_CONFIG_REC*, %struct.SBAR_ITEM_CONFIG_REC** %5, align 8, !dbg !1624
  %17 = icmp ne %struct.SBAR_ITEM_CONFIG_REC* %16, null, !dbg !1628
  br i1 %17, label %18, label %19, !dbg !1624

; <label>:18:                                     ; preds = %15
  br label %20, !dbg !1629

; <label>:19:                                     ; preds = %15
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.statusbar_item_create, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)), !dbg !1632
  store %struct.SBAR_ITEM_REC* null, %struct.SBAR_ITEM_REC** %3, align 8, !dbg !1635
  br label %88, !dbg !1635

; <label>:20:                                     ; preds = %18
  br label %21, !dbg !1636

; <label>:21:                                     ; preds = %20
  %22 = call noalias i8* @g_malloc0_n(i64 1, i64 48), !dbg !1638
  %23 = bitcast i8* %22 to %struct.SBAR_ITEM_REC*, !dbg !1639
  store %struct.SBAR_ITEM_REC* %23, %struct.SBAR_ITEM_REC** %6, align 8, !dbg !1640
  %24 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %4, align 8, !dbg !1641
  %25 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %24, i32 0, i32 3, !dbg !1642
  %26 = load %struct._GSList*, %struct._GSList** %25, align 8, !dbg !1642
  %27 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %6, align 8, !dbg !1643
  %28 = bitcast %struct.SBAR_ITEM_REC* %27 to i8*, !dbg !1643
  %29 = call %struct._GSList* @g_slist_append(%struct._GSList* %26, i8* %28), !dbg !1644
  %30 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %4, align 8, !dbg !1645
  %31 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %30, i32 0, i32 3, !dbg !1646
  store %struct._GSList* %29, %struct._GSList** %31, align 8, !dbg !1647
  %32 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %4, align 8, !dbg !1648
  %33 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %6, align 8, !dbg !1649
  %34 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %33, i32 0, i32 0, !dbg !1650
  store %struct.STATUSBAR_REC* %32, %struct.STATUSBAR_REC** %34, align 8, !dbg !1651
  %35 = load %struct.SBAR_ITEM_CONFIG_REC*, %struct.SBAR_ITEM_CONFIG_REC** %5, align 8, !dbg !1652
  %36 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %6, align 8, !dbg !1653
  %37 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %36, i32 0, i32 1, !dbg !1654
  store %struct.SBAR_ITEM_CONFIG_REC* %35, %struct.SBAR_ITEM_CONFIG_REC** %37, align 8, !dbg !1655
  %38 = load %struct._GHashTable*, %struct._GHashTable** @sbar_item_funcs, align 8, !dbg !1656
  %39 = load %struct.SBAR_ITEM_CONFIG_REC*, %struct.SBAR_ITEM_CONFIG_REC** %5, align 8, !dbg !1657
  %40 = getelementptr inbounds %struct.SBAR_ITEM_CONFIG_REC, %struct.SBAR_ITEM_CONFIG_REC* %39, i32 0, i32 0, !dbg !1658
  %41 = load i8*, i8** %40, align 8, !dbg !1658
  %42 = call i8* @g_hash_table_lookup(%struct._GHashTable* %38, i8* %41), !dbg !1659
  %43 = bitcast i8* %42 to void (%struct.SBAR_ITEM_REC*, i32)*, !dbg !1660
  %44 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %6, align 8, !dbg !1661
  %45 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %44, i32 0, i32 2, !dbg !1662
  %46 = bitcast {}** %45 to void (%struct.SBAR_ITEM_REC*, i32)**, !dbg !1662
  store void (%struct.SBAR_ITEM_REC*, i32)* %43, void (%struct.SBAR_ITEM_REC*, i32)** %46, align 8, !dbg !1663
  %47 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %6, align 8, !dbg !1664
  %48 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %47, i32 0, i32 2, !dbg !1666
  %49 = bitcast {}** %48 to void (%struct.SBAR_ITEM_REC*, i32)**, !dbg !1666
  %50 = load void (%struct.SBAR_ITEM_REC*, i32)*, void (%struct.SBAR_ITEM_REC*, i32)** %49, align 8, !dbg !1666
  %51 = icmp eq void (%struct.SBAR_ITEM_REC*, i32)* %50, null, !dbg !1667
  br i1 %51, label %52, label %56, !dbg !1668

; <label>:52:                                     ; preds = %21
  %53 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %6, align 8, !dbg !1669
  %54 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %53, i32 0, i32 2, !dbg !1670
  %55 = bitcast {}** %54 to void (%struct.SBAR_ITEM_REC*, i32)**, !dbg !1670
  store void (%struct.SBAR_ITEM_REC*, i32)* @statusbar_item_default_func, void (%struct.SBAR_ITEM_REC*, i32)** %55, align 8, !dbg !1671
  br label %56, !dbg !1669

; <label>:56:                                     ; preds = %52, %21
  %57 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %6, align 8, !dbg !1672
  call void @statusbar_item_default_signals(%struct.SBAR_ITEM_REC* %57), !dbg !1673
  %58 = load %struct._GHashTable*, %struct._GHashTable** @named_sbar_items, align 8, !dbg !1674
  %59 = load %struct.SBAR_ITEM_CONFIG_REC*, %struct.SBAR_ITEM_CONFIG_REC** %5, align 8, !dbg !1675
  %60 = getelementptr inbounds %struct.SBAR_ITEM_CONFIG_REC, %struct.SBAR_ITEM_CONFIG_REC* %59, i32 0, i32 0, !dbg !1676
  %61 = load i8*, i8** %60, align 8, !dbg !1676
  %62 = call i8* @g_hash_table_lookup(%struct._GHashTable* %58, i8* %61), !dbg !1677
  %63 = bitcast i8* %62 to %struct._GSList*, !dbg !1677
  store %struct._GSList* %63, %struct._GSList** %7, align 8, !dbg !1678
  %64 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1679
  %65 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %6, align 8, !dbg !1680
  %66 = bitcast %struct.SBAR_ITEM_REC* %65 to i8*, !dbg !1680
  %67 = call %struct._GSList* @g_slist_append(%struct._GSList* %64, i8* %66), !dbg !1681
  store %struct._GSList* %67, %struct._GSList** %7, align 8, !dbg !1682
  %68 = load %struct._GHashTable*, %struct._GHashTable** @named_sbar_items, align 8, !dbg !1683
  %69 = load %struct.SBAR_ITEM_CONFIG_REC*, %struct.SBAR_ITEM_CONFIG_REC** %5, align 8, !dbg !1684
  %70 = getelementptr inbounds %struct.SBAR_ITEM_CONFIG_REC, %struct.SBAR_ITEM_CONFIG_REC* %69, i32 0, i32 0, !dbg !1685
  %71 = load i8*, i8** %70, align 8, !dbg !1685
  %72 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1686
  %73 = bitcast %struct._GSList* %72 to i8*, !dbg !1686
  %74 = call i32 @g_hash_table_insert(%struct._GHashTable* %68, i8* %71, i8* %73), !dbg !1687
  call void @irssi_set_dirty(), !dbg !1688
  %75 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %6, align 8, !dbg !1689
  %76 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %75, i32 0, i32 8, !dbg !1690
  %77 = load i8, i8* %76, align 4, !dbg !1691
  %78 = and i8 %77, -2, !dbg !1691
  %79 = or i8 %78, 1, !dbg !1691
  store i8 %79, i8* %76, align 4, !dbg !1691
  %80 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %4, align 8, !dbg !1692
  %81 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %80, i32 0, i32 6, !dbg !1693
  %82 = load i8, i8* %81, align 4, !dbg !1694
  %83 = and i8 %82, -2, !dbg !1694
  %84 = or i8 %83, 1, !dbg !1694
  store i8 %84, i8* %81, align 4, !dbg !1694
  %85 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %6, align 8, !dbg !1695
  %86 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0), i32 1, %struct.SBAR_ITEM_REC* %85), !dbg !1696
  %87 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %6, align 8, !dbg !1697
  store %struct.SBAR_ITEM_REC* %87, %struct.SBAR_ITEM_REC** %3, align 8, !dbg !1698
  br label %88, !dbg !1698

; <label>:88:                                     ; preds = %56, %19, %12
  %89 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %3, align 8, !dbg !1699
  ret %struct.SBAR_ITEM_REC* %89, !dbg !1699
}

; Function Attrs: nounwind uwtable
define void @statusbar_item_destroy(%struct.SBAR_ITEM_REC*) #0 !dbg !1700 {
  %2 = alloca %struct.SBAR_ITEM_REC*, align 8
  %3 = alloca %struct._GSList*, align 8
  store %struct.SBAR_ITEM_REC* %0, %struct.SBAR_ITEM_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.SBAR_ITEM_REC** %2, metadata !1701, metadata !333), !dbg !1702
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !1703, metadata !333), !dbg !1704
  br label %4, !dbg !1705, !llvm.loop !1706

; <label>:4:                                      ; preds = %1
  %5 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %2, align 8, !dbg !1707
  %6 = icmp ne %struct.SBAR_ITEM_REC* %5, null, !dbg !1711
  br i1 %6, label %7, label %8, !dbg !1707

; <label>:7:                                      ; preds = %4
  br label %9, !dbg !1712

; <label>:8:                                      ; preds = %4
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.statusbar_item_destroy, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)), !dbg !1715
  br label %85, !dbg !1718

; <label>:9:                                      ; preds = %7
  br label %10, !dbg !1719

; <label>:10:                                     ; preds = %9
  %11 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %2, align 8, !dbg !1721
  %12 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %11, i32 0, i32 0, !dbg !1722
  %13 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %12, align 8, !dbg !1722
  %14 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %13, i32 0, i32 3, !dbg !1723
  %15 = load %struct._GSList*, %struct._GSList** %14, align 8, !dbg !1723
  %16 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %2, align 8, !dbg !1724
  %17 = bitcast %struct.SBAR_ITEM_REC* %16 to i8*, !dbg !1724
  %18 = call %struct._GSList* @g_slist_remove(%struct._GSList* %15, i8* %17), !dbg !1725
  %19 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %2, align 8, !dbg !1726
  %20 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %19, i32 0, i32 0, !dbg !1727
  %21 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %20, align 8, !dbg !1727
  %22 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %21, i32 0, i32 3, !dbg !1728
  store %struct._GSList* %18, %struct._GSList** %22, align 8, !dbg !1729
  %23 = load %struct._GHashTable*, %struct._GHashTable** @named_sbar_items, align 8, !dbg !1730
  %24 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %2, align 8, !dbg !1731
  %25 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %24, i32 0, i32 1, !dbg !1732
  %26 = load %struct.SBAR_ITEM_CONFIG_REC*, %struct.SBAR_ITEM_CONFIG_REC** %25, align 8, !dbg !1732
  %27 = getelementptr inbounds %struct.SBAR_ITEM_CONFIG_REC, %struct.SBAR_ITEM_CONFIG_REC* %26, i32 0, i32 0, !dbg !1733
  %28 = load i8*, i8** %27, align 8, !dbg !1733
  %29 = call i8* @g_hash_table_lookup(%struct._GHashTable* %23, i8* %28), !dbg !1734
  %30 = bitcast i8* %29 to %struct._GSList*, !dbg !1734
  store %struct._GSList* %30, %struct._GSList** %3, align 8, !dbg !1735
  %31 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1736
  %32 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %2, align 8, !dbg !1737
  %33 = bitcast %struct.SBAR_ITEM_REC* %32 to i8*, !dbg !1737
  %34 = call %struct._GSList* @g_slist_remove(%struct._GSList* %31, i8* %33), !dbg !1738
  store %struct._GSList* %34, %struct._GSList** %3, align 8, !dbg !1739
  %35 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1740
  %36 = icmp eq %struct._GSList* %35, null, !dbg !1742
  br i1 %36, label %37, label %45, !dbg !1743

; <label>:37:                                     ; preds = %10
  %38 = load %struct._GHashTable*, %struct._GHashTable** @named_sbar_items, align 8, !dbg !1744
  %39 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %2, align 8, !dbg !1745
  %40 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %39, i32 0, i32 1, !dbg !1746
  %41 = load %struct.SBAR_ITEM_CONFIG_REC*, %struct.SBAR_ITEM_CONFIG_REC** %40, align 8, !dbg !1746
  %42 = getelementptr inbounds %struct.SBAR_ITEM_CONFIG_REC, %struct.SBAR_ITEM_CONFIG_REC* %41, i32 0, i32 0, !dbg !1747
  %43 = load i8*, i8** %42, align 8, !dbg !1747
  %44 = call i32 @g_hash_table_remove(%struct._GHashTable* %38, i8* %43), !dbg !1748
  br label %55, !dbg !1748

; <label>:45:                                     ; preds = %10
  %46 = load %struct._GHashTable*, %struct._GHashTable** @named_sbar_items, align 8, !dbg !1749
  %47 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %2, align 8, !dbg !1750
  %48 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %47, i32 0, i32 1, !dbg !1751
  %49 = load %struct.SBAR_ITEM_CONFIG_REC*, %struct.SBAR_ITEM_CONFIG_REC** %48, align 8, !dbg !1751
  %50 = getelementptr inbounds %struct.SBAR_ITEM_CONFIG_REC, %struct.SBAR_ITEM_CONFIG_REC* %49, i32 0, i32 0, !dbg !1752
  %51 = load i8*, i8** %50, align 8, !dbg !1752
  %52 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1753
  %53 = bitcast %struct._GSList* %52 to i8*, !dbg !1753
  %54 = call i32 @g_hash_table_insert(%struct._GHashTable* %46, i8* %51, i8* %53), !dbg !1754
  br label %55

; <label>:55:                                     ; preds = %45, %37
  %56 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %2, align 8, !dbg !1755
  %57 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i32 0, i32 0), i32 1, %struct.SBAR_ITEM_REC* %56), !dbg !1756
  %58 = load %struct._GHashTable*, %struct._GHashTable** @sbar_item_signals, align 8, !dbg !1757
  %59 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %2, align 8, !dbg !1758
  %60 = bitcast %struct.SBAR_ITEM_REC* %59 to i8*, !dbg !1758
  %61 = call i8* @g_hash_table_lookup(%struct._GHashTable* %58, i8* %60), !dbg !1759
  %62 = bitcast i8* %61 to %struct._GSList*, !dbg !1759
  store %struct._GSList* %62, %struct._GSList** %3, align 8, !dbg !1760
  %63 = load %struct._GHashTable*, %struct._GHashTable** @sbar_item_signals, align 8, !dbg !1761
  %64 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %2, align 8, !dbg !1762
  %65 = bitcast %struct.SBAR_ITEM_REC* %64 to i8*, !dbg !1762
  %66 = call i32 @g_hash_table_remove(%struct._GHashTable* %63, i8* %65), !dbg !1763
  br label %67, !dbg !1764

; <label>:67:                                     ; preds = %70, %55
  %68 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1765
  %69 = icmp ne %struct._GSList* %68, null, !dbg !1767
  br i1 %69, label %70, label %82, !dbg !1768

; <label>:70:                                     ; preds = %67
  %71 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %2, align 8, !dbg !1769
  %72 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1771
  %73 = getelementptr inbounds %struct._GSList, %struct._GSList* %72, i32 0, i32 0, !dbg !1772
  %74 = load i8*, i8** %73, align 8, !dbg !1772
  %75 = ptrtoint i8* %74 to i64, !dbg !1773
  %76 = trunc i64 %75 to i32, !dbg !1774
  call void @statusbar_item_remove_signal(%struct.SBAR_ITEM_REC* %71, i32 %76), !dbg !1775
  %77 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1776
  %78 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1777
  %79 = getelementptr inbounds %struct._GSList, %struct._GSList* %78, i32 0, i32 0, !dbg !1778
  %80 = load i8*, i8** %79, align 8, !dbg !1778
  %81 = call %struct._GSList* @g_slist_remove(%struct._GSList* %77, i8* %80), !dbg !1779
  store %struct._GSList* %81, %struct._GSList** %3, align 8, !dbg !1780
  br label %67, !dbg !1781, !llvm.loop !1783

; <label>:82:                                     ; preds = %67
  %83 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %2, align 8, !dbg !1784
  %84 = bitcast %struct.SBAR_ITEM_REC* %83 to i8*, !dbg !1784
  call void @g_free(i8* %84), !dbg !1785
  br label %85, !dbg !1786

; <label>:85:                                     ; preds = %82, %8
  ret void, !dbg !1787
}

; Function Attrs: nounwind uwtable
define void @statusbar_recreate_items(%struct.STATUSBAR_REC*) #0 !dbg !1788 {
  %2 = alloca %struct.STATUSBAR_REC*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct.SBAR_ITEM_CONFIG_REC*, align 8
  store %struct.STATUSBAR_REC* %0, %struct.STATUSBAR_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.STATUSBAR_REC** %2, metadata !1789, metadata !333), !dbg !1790
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !1791, metadata !333), !dbg !1792
  br label %5, !dbg !1793

; <label>:5:                                      ; preds = %10, %1
  %6 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !1794
  %7 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %6, i32 0, i32 3, !dbg !1796
  %8 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1796
  %9 = icmp ne %struct._GSList* %8, null, !dbg !1797
  br i1 %9, label %10, label %17, !dbg !1798

; <label>:10:                                     ; preds = %5
  %11 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !1799
  %12 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %11, i32 0, i32 3, !dbg !1800
  %13 = load %struct._GSList*, %struct._GSList** %12, align 8, !dbg !1800
  %14 = getelementptr inbounds %struct._GSList, %struct._GSList* %13, i32 0, i32 0, !dbg !1801
  %15 = load i8*, i8** %14, align 8, !dbg !1801
  %16 = bitcast i8* %15 to %struct.SBAR_ITEM_REC*, !dbg !1799
  call void @statusbar_item_destroy(%struct.SBAR_ITEM_REC* %16), !dbg !1802
  br label %5, !dbg !1803, !llvm.loop !1805

; <label>:17:                                     ; preds = %5
  %18 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !1806
  %19 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %18, i32 0, i32 1, !dbg !1808
  %20 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %19, align 8, !dbg !1808
  %21 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %20, i32 0, i32 5, !dbg !1809
  %22 = load %struct._GSList*, %struct._GSList** %21, align 8, !dbg !1809
  store %struct._GSList* %22, %struct._GSList** %3, align 8, !dbg !1810
  br label %23, !dbg !1811

; <label>:23:                                     ; preds = %34, %17
  %24 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1812
  %25 = icmp ne %struct._GSList* %24, null, !dbg !1815
  br i1 %25, label %26, label %38, !dbg !1816

; <label>:26:                                     ; preds = %23
  call void @llvm.dbg.declare(metadata %struct.SBAR_ITEM_CONFIG_REC** %4, metadata !1817, metadata !333), !dbg !1819
  %27 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1820
  %28 = getelementptr inbounds %struct._GSList, %struct._GSList* %27, i32 0, i32 0, !dbg !1821
  %29 = load i8*, i8** %28, align 8, !dbg !1821
  %30 = bitcast i8* %29 to %struct.SBAR_ITEM_CONFIG_REC*, !dbg !1820
  store %struct.SBAR_ITEM_CONFIG_REC* %30, %struct.SBAR_ITEM_CONFIG_REC** %4, align 8, !dbg !1819
  %31 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !1822
  %32 = load %struct.SBAR_ITEM_CONFIG_REC*, %struct.SBAR_ITEM_CONFIG_REC** %4, align 8, !dbg !1823
  %33 = call %struct.SBAR_ITEM_REC* @statusbar_item_create(%struct.STATUSBAR_REC* %31, %struct.SBAR_ITEM_CONFIG_REC* %32), !dbg !1824
  br label %34, !dbg !1825

; <label>:34:                                     ; preds = %26
  %35 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1826
  %36 = getelementptr inbounds %struct._GSList, %struct._GSList* %35, i32 0, i32 1, !dbg !1828
  %37 = load %struct._GSList*, %struct._GSList** %36, align 8, !dbg !1828
  store %struct._GSList* %37, %struct._GSList** %3, align 8, !dbg !1829
  br label %23, !dbg !1830, !llvm.loop !1831

; <label>:38:                                     ; preds = %23
  %39 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !1833
  call void @statusbar_redraw(%struct.STATUSBAR_REC* %39, i32 1), !dbg !1834
  ret void, !dbg !1835
}

; Function Attrs: nounwind uwtable
define void @statusbars_recreate_items() #0 !dbg !1836 {
  %1 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** @active_statusbar_group, align 8, !dbg !1837
  %2 = icmp ne %struct.STATUSBAR_GROUP_REC* %1, null, !dbg !1839
  br i1 %2, label %3, label %7, !dbg !1840

; <label>:3:                                      ; preds = %0
  %4 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** @active_statusbar_group, align 8, !dbg !1841
  %5 = getelementptr inbounds %struct.STATUSBAR_GROUP_REC, %struct.STATUSBAR_GROUP_REC* %4, i32 0, i32 2, !dbg !1843
  %6 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1843
  call void @g_slist_foreach(%struct._GSList* %6, void (i8*, i8*)* bitcast (void (%struct.STATUSBAR_REC*)* @statusbar_recreate_items to void (i8*, i8*)*), i8* null), !dbg !1844
  br label %7, !dbg !1845

; <label>:7:                                      ; preds = %3, %0
  ret void, !dbg !1846
}

; Function Attrs: nounwind uwtable
define %struct.STATUSBAR_REC* @statusbar_find(%struct.STATUSBAR_GROUP_REC*, i8*, %struct.MAIN_WINDOW_REC*) #0 !dbg !1847 {
  %4 = alloca %struct.STATUSBAR_REC*, align 8
  %5 = alloca %struct.STATUSBAR_GROUP_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %8 = alloca %struct._GSList*, align 8
  %9 = alloca %struct.STATUSBAR_REC*, align 8
  store %struct.STATUSBAR_GROUP_REC* %0, %struct.STATUSBAR_GROUP_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.STATUSBAR_GROUP_REC** %5, metadata !1850, metadata !333), !dbg !1851
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1852, metadata !333), !dbg !1853
  store %struct.MAIN_WINDOW_REC* %2, %struct.MAIN_WINDOW_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %7, metadata !1854, metadata !333), !dbg !1855
  call void @llvm.dbg.declare(metadata %struct._GSList** %8, metadata !1856, metadata !333), !dbg !1857
  %10 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** %5, align 8, !dbg !1858
  %11 = getelementptr inbounds %struct.STATUSBAR_GROUP_REC, %struct.STATUSBAR_GROUP_REC* %10, i32 0, i32 2, !dbg !1860
  %12 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !1860
  store %struct._GSList* %12, %struct._GSList** %8, align 8, !dbg !1861
  br label %13, !dbg !1862

; <label>:13:                                     ; preds = %38, %3
  %14 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1863
  %15 = icmp ne %struct._GSList* %14, null, !dbg !1866
  br i1 %15, label %16, label %42, !dbg !1867

; <label>:16:                                     ; preds = %13
  call void @llvm.dbg.declare(metadata %struct.STATUSBAR_REC** %9, metadata !1868, metadata !333), !dbg !1870
  %17 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1871
  %18 = getelementptr inbounds %struct._GSList, %struct._GSList* %17, i32 0, i32 0, !dbg !1872
  %19 = load i8*, i8** %18, align 8, !dbg !1872
  %20 = bitcast i8* %19 to %struct.STATUSBAR_REC*, !dbg !1871
  store %struct.STATUSBAR_REC* %20, %struct.STATUSBAR_REC** %9, align 8, !dbg !1870
  %21 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %9, align 8, !dbg !1873
  %22 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %21, i32 0, i32 2, !dbg !1875
  %23 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %22, align 8, !dbg !1875
  %24 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %7, align 8, !dbg !1876
  %25 = icmp eq %struct.MAIN_WINDOW_REC* %23, %24, !dbg !1877
  br i1 %25, label %26, label %37, !dbg !1878

; <label>:26:                                     ; preds = %16
  %27 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %9, align 8, !dbg !1879
  %28 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %27, i32 0, i32 1, !dbg !1880
  %29 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %28, align 8, !dbg !1880
  %30 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %29, i32 0, i32 0, !dbg !1881
  %31 = load i8*, i8** %30, align 8, !dbg !1881
  %32 = load i8*, i8** %6, align 8, !dbg !1882
  %33 = call i32 @g_strcmp0(i8* %31, i8* %32), !dbg !1883
  %34 = icmp eq i32 %33, 0, !dbg !1884
  br i1 %34, label %35, label %37, !dbg !1885

; <label>:35:                                     ; preds = %26
  %36 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %9, align 8, !dbg !1887
  store %struct.STATUSBAR_REC* %36, %struct.STATUSBAR_REC** %4, align 8, !dbg !1888
  br label %43, !dbg !1888

; <label>:37:                                     ; preds = %26, %16
  br label %38, !dbg !1889

; <label>:38:                                     ; preds = %37
  %39 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1890
  %40 = getelementptr inbounds %struct._GSList, %struct._GSList* %39, i32 0, i32 1, !dbg !1892
  %41 = load %struct._GSList*, %struct._GSList** %40, align 8, !dbg !1892
  store %struct._GSList* %41, %struct._GSList** %8, align 8, !dbg !1893
  br label %13, !dbg !1894, !llvm.loop !1895

; <label>:42:                                     ; preds = %13
  store %struct.STATUSBAR_REC* null, %struct.STATUSBAR_REC** %4, align 8, !dbg !1897
  br label %43, !dbg !1897

; <label>:43:                                     ; preds = %42, %35
  %44 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %4, align 8, !dbg !1898
  ret %struct.STATUSBAR_REC* %44, !dbg !1898
}

; Function Attrs: nounwind uwtable
define void @statusbar_item_default_handler(%struct.SBAR_ITEM_REC*, i32, i8*, i8*, i32) #0 !dbg !1899 {
  %6 = alloca %struct.SBAR_ITEM_REC*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct._SERVER_REC*, align 8
  %12 = alloca %struct._WI_ITEM_REC*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.theme_rm_col, align 1
  %16 = alloca i32, align 4
  %17 = alloca %struct._GString*, align 8
  %18 = alloca i32, align 4
  store %struct.SBAR_ITEM_REC* %0, %struct.SBAR_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.SBAR_ITEM_REC** %6, metadata !1902, metadata !333), !dbg !1903
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1904, metadata !333), !dbg !1905
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1906, metadata !333), !dbg !1907
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1908, metadata !333), !dbg !1909
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1910, metadata !333), !dbg !1911
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %11, metadata !1912, metadata !333), !dbg !1913
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %12, metadata !1914, metadata !333), !dbg !1915
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1916, metadata !333), !dbg !1917
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1918, metadata !333), !dbg !1919
  call void @llvm.dbg.declare(metadata %struct.theme_rm_col* %15, metadata !1920, metadata !333), !dbg !1928
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1929, metadata !333), !dbg !1930
  %19 = getelementptr inbounds %struct.theme_rm_col, %struct.theme_rm_col* %15, i32 0, i32 0, !dbg !1931
  %20 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i32 0, i32 0, !dbg !1932
  %21 = call i8* @strcpy(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0)) #6, !dbg !1933
  %22 = load i8*, i8** %8, align 8, !dbg !1934
  %23 = icmp eq i8* %22, null, !dbg !1936
  br i1 %23, label %24, label %27, !dbg !1937

; <label>:24:                                     ; preds = %5
  %25 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %6, align 8, !dbg !1938
  %26 = call i8* @statusbar_item_get_value(%struct.SBAR_ITEM_REC* %25), !dbg !1939
  store i8* %26, i8** %8, align 8, !dbg !1940
  br label %27, !dbg !1941

; <label>:27:                                     ; preds = %24, %5
  %28 = load i8*, i8** %8, align 8, !dbg !1942
  %29 = icmp eq i8* %28, null, !dbg !1944
  br i1 %29, label %35, label %30, !dbg !1945

; <label>:30:                                     ; preds = %27
  %31 = load i8*, i8** %8, align 8, !dbg !1946
  %32 = load i8, i8* %31, align 1, !dbg !1948
  %33 = sext i8 %32 to i32, !dbg !1948
  %34 = icmp eq i32 %33, 0, !dbg !1949
  br i1 %34, label %35, label %40, !dbg !1950

; <label>:35:                                     ; preds = %30, %27
  %36 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %6, align 8, !dbg !1951
  %37 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %36, i32 0, i32 4, !dbg !1953
  store i32 0, i32* %37, align 4, !dbg !1954
  %38 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %6, align 8, !dbg !1955
  %39 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %38, i32 0, i32 3, !dbg !1956
  store i32 0, i32* %39, align 8, !dbg !1957
  br label %185, !dbg !1958

; <label>:40:                                     ; preds = %30
  %41 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1959
  %42 = icmp eq %struct._WINDOW_REC* %41, null, !dbg !1961
  br i1 %42, label %43, label %44, !dbg !1962

; <label>:43:                                     ; preds = %40
  store %struct._SERVER_REC* null, %struct._SERVER_REC** %11, align 8, !dbg !1963
  store %struct._WI_ITEM_REC* null, %struct._WI_ITEM_REC** %12, align 8, !dbg !1965
  br label %62, !dbg !1966

; <label>:44:                                     ; preds = %40
  %45 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1967
  %46 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %45, i32 0, i32 6, !dbg !1969
  %47 = load %struct._SERVER_REC*, %struct._SERVER_REC** %46, align 8, !dbg !1969
  %48 = icmp ne %struct._SERVER_REC* %47, null, !dbg !1970
  br i1 %48, label %49, label %53, !dbg !1967

; <label>:49:                                     ; preds = %44
  %50 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1971
  %51 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %50, i32 0, i32 6, !dbg !1972
  %52 = load %struct._SERVER_REC*, %struct._SERVER_REC** %51, align 8, !dbg !1972
  br label %57, !dbg !1973

; <label>:53:                                     ; preds = %44
  %54 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1975
  %55 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %54, i32 0, i32 7, !dbg !1976
  %56 = load %struct._SERVER_REC*, %struct._SERVER_REC** %55, align 8, !dbg !1976
  br label %57, !dbg !1977

; <label>:57:                                     ; preds = %53, %49
  %58 = phi %struct._SERVER_REC* [ %52, %49 ], [ %56, %53 ], !dbg !1979
  store %struct._SERVER_REC* %58, %struct._SERVER_REC** %11, align 8, !dbg !1981
  %59 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1982
  %60 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %59, i32 0, i32 5, !dbg !1983
  %61 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %60, align 8, !dbg !1983
  store %struct._WI_ITEM_REC* %61, %struct._WI_ITEM_REC** %12, align 8, !dbg !1984
  br label %62

; <label>:62:                                     ; preds = %57, %43
  %63 = load %struct.THEME_REC*, %struct.THEME_REC** @current_theme, align 8, !dbg !1985
  %64 = getelementptr inbounds %struct.theme_rm_col, %struct.theme_rm_col* %15, i32 0, i32 0, !dbg !1986
  %65 = bitcast [8 x i8]* %64 to i64*, !dbg !1986
  %66 = load i64, i64* %65, align 1, !dbg !1986
  %67 = getelementptr inbounds %struct.theme_rm_col, %struct.theme_rm_col* %15, i32 0, i32 0, !dbg !1986
  %68 = bitcast [8 x i8]* %67 to i64*, !dbg !1986
  %69 = load i64, i64* %68, align 1, !dbg !1986
  %70 = call i8* @theme_format_expand_data(%struct.THEME_REC* %63, i8** %8, i64 %66, i64 %69, %struct.theme_rm_col* null, %struct.theme_rm_col* null, i32 19), !dbg !1986
  store i8* %70, i8** %13, align 8, !dbg !1987
  %71 = load i8*, i8** %13, align 8, !dbg !1988
  %72 = load %struct._SERVER_REC*, %struct._SERVER_REC** %11, align 8, !dbg !1989
  %73 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %12, align 8, !dbg !1990
  %74 = bitcast %struct._WI_ITEM_REC* %73 to i8*, !dbg !1990
  %75 = load i8*, i8** %9, align 8, !dbg !1991
  %76 = load i32, i32* %10, align 4, !dbg !1992
  %77 = icmp ne i32 %76, 0, !dbg !1992
  %78 = select i1 %77, i32 4, i32 0, !dbg !1992
  %79 = call i8* @parse_special_string(i8* %71, %struct._SERVER_REC* %72, i8* %74, i8* %75, i32* null, i32 %78), !dbg !1993
  store i8* %79, i8** %14, align 8, !dbg !1994
  %80 = load i8*, i8** %13, align 8, !dbg !1995
  call void @g_free(i8* %80), !dbg !1996
  %81 = load i8*, i8** %14, align 8, !dbg !1997
  %82 = call i8* @strip_codes(i8* %81), !dbg !1998
  store i8* %82, i8** %13, align 8, !dbg !1999
  %83 = load i8*, i8** %14, align 8, !dbg !2000
  call void @g_free(i8* %83), !dbg !2001
  %84 = load i32, i32* %7, align 4, !dbg !2002
  %85 = icmp ne i32 %84, 0, !dbg !2002
  br i1 %85, label %86, label %93, !dbg !2004

; <label>:86:                                     ; preds = %62
  %87 = load i8*, i8** %13, align 8, !dbg !2005
  %88 = call i32 @format_get_length(i8* %87), !dbg !2007
  %89 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %6, align 8, !dbg !2008
  %90 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %89, i32 0, i32 4, !dbg !2009
  store i32 %88, i32* %90, align 4, !dbg !2010
  %91 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %6, align 8, !dbg !2011
  %92 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %91, i32 0, i32 3, !dbg !2012
  store i32 %88, i32* %92, align 8, !dbg !2013
  br label %183, !dbg !2014

; <label>:93:                                     ; preds = %62
  call void @llvm.dbg.declare(metadata %struct._GString** %17, metadata !2015, metadata !333), !dbg !2028
  %94 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %6, align 8, !dbg !2029
  %95 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %94, i32 0, i32 6, !dbg !2031
  %96 = load i32, i32* %95, align 4, !dbg !2031
  %97 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %6, align 8, !dbg !2032
  %98 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %97, i32 0, i32 3, !dbg !2033
  %99 = load i32, i32* %98, align 8, !dbg !2033
  %100 = icmp slt i32 %96, %99, !dbg !2034
  br i1 %100, label %101, label %111, !dbg !2035

; <label>:101:                                    ; preds = %93
  %102 = load i8*, i8** %13, align 8, !dbg !2036
  %103 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %6, align 8, !dbg !2038
  %104 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %103, i32 0, i32 6, !dbg !2039
  %105 = load i32, i32* %104, align 4, !dbg !2039
  %106 = call i32 @format_real_length(i8* %102, i32 %105), !dbg !2040
  store i32 %106, i32* %16, align 4, !dbg !2041
  %107 = load i32, i32* %16, align 4, !dbg !2042
  %108 = sext i32 %107 to i64, !dbg !2043
  %109 = load i8*, i8** %13, align 8, !dbg !2043
  %110 = getelementptr inbounds i8, i8* %109, i64 %108, !dbg !2043
  store i8 0, i8* %110, align 1, !dbg !2044
  br label %111, !dbg !2045

; <label>:111:                                    ; preds = %101, %93
  %112 = load i8*, i8** %13, align 8, !dbg !2046
  %113 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %6, align 8, !dbg !2047
  %114 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %113, i32 0, i32 0, !dbg !2048
  %115 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %114, align 8, !dbg !2048
  %116 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %115, i32 0, i32 4, !dbg !2049
  %117 = load i8*, i8** %116, align 8, !dbg !2049
  %118 = call %struct._GString* @finalize_string(i8* %112, i8* %117), !dbg !2050
  store %struct._GString* %118, %struct._GString** %17, align 8, !dbg !2051
  %119 = load i8*, i8** %13, align 8, !dbg !2052
  %120 = call i32 @format_get_length(i8* %119), !dbg !2053
  store i32 %120, i32* %16, align 4, !dbg !2054
  %121 = load i32, i32* %16, align 4, !dbg !2055
  %122 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %6, align 8, !dbg !2057
  %123 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %122, i32 0, i32 6, !dbg !2058
  %124 = load i32, i32* %123, align 4, !dbg !2058
  %125 = icmp slt i32 %121, %124, !dbg !2059
  br i1 %125, label %126, label %143, !dbg !2060

; <label>:126:                                    ; preds = %111
  call void @llvm.dbg.declare(metadata i32* %18, metadata !2061, metadata !333), !dbg !2063
  %127 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %6, align 8, !dbg !2064
  %128 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %127, i32 0, i32 6, !dbg !2065
  %129 = load i32, i32* %128, align 4, !dbg !2065
  %130 = load i32, i32* %16, align 4, !dbg !2066
  %131 = sub nsw i32 %129, %130, !dbg !2067
  store i32 %131, i32* %16, align 4, !dbg !2068
  store i32 0, i32* %18, align 4, !dbg !2069
  br label %132, !dbg !2071

; <label>:132:                                    ; preds = %139, %126
  %133 = load i32, i32* %18, align 4, !dbg !2072
  %134 = load i32, i32* %16, align 4, !dbg !2075
  %135 = icmp slt i32 %133, %134, !dbg !2076
  br i1 %135, label %136, label %142, !dbg !2077

; <label>:136:                                    ; preds = %132
  %137 = load %struct._GString*, %struct._GString** %17, align 8, !dbg !2078
  %138 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %137, i8 signext 32), !dbg !2079
  br label %139, !dbg !2079

; <label>:139:                                    ; preds = %136
  %140 = load i32, i32* %18, align 4, !dbg !2080
  %141 = add nsw i32 %140, 1, !dbg !2080
  store i32 %141, i32* %18, align 4, !dbg !2080
  br label %132, !dbg !2082, !llvm.loop !2083

; <label>:142:                                    ; preds = %132
  br label %143, !dbg !2085

; <label>:143:                                    ; preds = %142, %111
  %144 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %6, align 8, !dbg !2086
  %145 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %144, i32 0, i32 0, !dbg !2087
  %146 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %145, align 8, !dbg !2087
  %147 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %146, i32 0, i32 2, !dbg !2088
  %148 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %147, align 8, !dbg !2088
  %149 = icmp ne %struct.MAIN_WINDOW_REC* %148, null, !dbg !2089
  br i1 %149, label %150, label %166, !dbg !2090

; <label>:150:                                    ; preds = %143
  %151 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %6, align 8, !dbg !2091
  %152 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %151, i32 0, i32 0, !dbg !2093
  %153 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %152, align 8, !dbg !2093
  %154 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %153, i32 0, i32 2, !dbg !2094
  %155 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %154, align 8, !dbg !2094
  %156 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %155, i32 0, i32 5, !dbg !2095
  %157 = load i32, i32* %156, align 4, !dbg !2095
  %158 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %6, align 8, !dbg !2096
  %159 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %158, i32 0, i32 0, !dbg !2097
  %160 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %159, align 8, !dbg !2097
  %161 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %160, i32 0, i32 2, !dbg !2098
  %162 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %161, align 8, !dbg !2098
  %163 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %162, i32 0, i32 13, !dbg !2099
  %164 = load i32, i32* %163, align 4, !dbg !2099
  %165 = add nsw i32 %157, %164, !dbg !2100
  br label %167, !dbg !2101

; <label>:166:                                    ; preds = %143
  br label %167, !dbg !2102

; <label>:167:                                    ; preds = %166, %150
  %168 = phi i32 [ %165, %150 ], [ 0, %166 ], !dbg !2104
  %169 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %6, align 8, !dbg !2106
  %170 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %169, i32 0, i32 5, !dbg !2107
  %171 = load i32, i32* %170, align 8, !dbg !2107
  %172 = add nsw i32 %168, %171, !dbg !2108
  %173 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %6, align 8, !dbg !2109
  %174 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %173, i32 0, i32 0, !dbg !2110
  %175 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %174, align 8, !dbg !2110
  %176 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %175, i32 0, i32 5, !dbg !2111
  %177 = load i32, i32* %176, align 8, !dbg !2111
  %178 = load %struct._GString*, %struct._GString** %17, align 8, !dbg !2112
  %179 = getelementptr inbounds %struct._GString, %struct._GString* %178, i32 0, i32 0, !dbg !2113
  %180 = load i8*, i8** %179, align 8, !dbg !2113
  call void @gui_printtext(i32 %172, i32 %177, i8* %180), !dbg !2114
  %181 = load %struct._GString*, %struct._GString** %17, align 8, !dbg !2115
  %182 = call i8* @g_string_free(%struct._GString* %181, i32 1), !dbg !2116
  br label %183

; <label>:183:                                    ; preds = %167, %86
  %184 = load i8*, i8** %13, align 8, !dbg !2117
  call void @g_free(i8* %184), !dbg !2118
  br label %185, !dbg !2119

; <label>:185:                                    ; preds = %183, %35
  ret void, !dbg !2120
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i8* @statusbar_item_get_value(%struct.SBAR_ITEM_REC*) #0 !dbg !2122 {
  %2 = alloca %struct.SBAR_ITEM_REC*, align 8
  %3 = alloca i8*, align 8
  store %struct.SBAR_ITEM_REC* %0, %struct.SBAR_ITEM_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.SBAR_ITEM_REC** %2, metadata !2125, metadata !333), !dbg !2126
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2127, metadata !333), !dbg !2128
  %4 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %2, align 8, !dbg !2129
  %5 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %4, i32 0, i32 1, !dbg !2130
  %6 = load %struct.SBAR_ITEM_CONFIG_REC*, %struct.SBAR_ITEM_CONFIG_REC** %5, align 8, !dbg !2130
  %7 = getelementptr inbounds %struct.SBAR_ITEM_CONFIG_REC, %struct.SBAR_ITEM_CONFIG_REC* %6, i32 0, i32 1, !dbg !2131
  %8 = load i8*, i8** %7, align 8, !dbg !2131
  store i8* %8, i8** %3, align 8, !dbg !2132
  %9 = load i8*, i8** %3, align 8, !dbg !2133
  %10 = icmp eq i8* %9, null, !dbg !2135
  br i1 %10, label %11, label %19, !dbg !2136

; <label>:11:                                     ; preds = %1
  %12 = load %struct._GHashTable*, %struct._GHashTable** @sbar_item_defs, align 8, !dbg !2137
  %13 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %2, align 8, !dbg !2139
  %14 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %13, i32 0, i32 1, !dbg !2140
  %15 = load %struct.SBAR_ITEM_CONFIG_REC*, %struct.SBAR_ITEM_CONFIG_REC** %14, align 8, !dbg !2140
  %16 = getelementptr inbounds %struct.SBAR_ITEM_CONFIG_REC, %struct.SBAR_ITEM_CONFIG_REC* %15, i32 0, i32 0, !dbg !2141
  %17 = load i8*, i8** %16, align 8, !dbg !2141
  %18 = call i8* @g_hash_table_lookup(%struct._GHashTable* %12, i8* %17), !dbg !2142
  store i8* %18, i8** %3, align 8, !dbg !2143
  br label %19, !dbg !2144

; <label>:19:                                     ; preds = %11, %1
  %20 = load i8*, i8** %3, align 8, !dbg !2145
  ret i8* %20, !dbg !2146
}

declare i8* @theme_format_expand_data(%struct.THEME_REC*, i8**, i64, i64, %struct.theme_rm_col*, %struct.theme_rm_col*, i32) #2

declare i8* @parse_special_string(i8*, %struct._SERVER_REC*, i8*, i8*, i32*, i32) #2

declare i8* @strip_codes(i8*) #2

declare i32 @format_get_length(i8*) #2

declare i32 @format_real_length(i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal %struct._GString* @finalize_string(i8*, i8*) #0 !dbg !2147 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._GString*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2150, metadata !333), !dbg !2151
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2152, metadata !333), !dbg !2153
  call void @llvm.dbg.declare(metadata %struct._GString** %5, metadata !2154, metadata !333), !dbg !2155
  %6 = load i8*, i8** %4, align 8, !dbg !2156
  %7 = call %struct._GString* @g_string_new(i8* %6), !dbg !2157
  store %struct._GString* %7, %struct._GString** %5, align 8, !dbg !2158
  br label %8, !dbg !2159

; <label>:8:                                      ; preds = %59, %2
  %9 = load i8*, i8** %3, align 8, !dbg !2160
  %10 = load i8, i8* %9, align 1, !dbg !2162
  %11 = sext i8 %10 to i32, !dbg !2162
  %12 = icmp ne i32 %11, 0, !dbg !2163
  br i1 %12, label %13, label %62, !dbg !2164

; <label>:13:                                     ; preds = %8
  %14 = load i8*, i8** %3, align 8, !dbg !2165
  %15 = load i8, i8* %14, align 1, !dbg !2168
  %16 = zext i8 %15 to i32, !dbg !2169
  %17 = icmp slt i32 %16, 32, !dbg !2170
  br i1 %17, label %29, label %18, !dbg !2171

; <label>:18:                                     ; preds = %13
  %19 = load i32, i32* @term_type, align 4, !dbg !2172
  %20 = icmp eq i32 %19, 0, !dbg !2173
  br i1 %20, label %21, label %36, !dbg !2174

; <label>:21:                                     ; preds = %18
  %22 = load i8*, i8** %3, align 8, !dbg !2175
  %23 = load i8, i8* %22, align 1, !dbg !2176
  %24 = sext i8 %23 to i32, !dbg !2176
  %25 = and i32 %24, 127, !dbg !2177
  %26 = trunc i32 %25 to i8, !dbg !2178
  %27 = zext i8 %26 to i32, !dbg !2178
  %28 = icmp slt i32 %27, 32, !dbg !2179
  br i1 %28, label %29, label %36, !dbg !2180

; <label>:29:                                     ; preds = %21, %13
  %30 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !2182
  %31 = load i8*, i8** %3, align 8, !dbg !2184
  %32 = load i8, i8* %31, align 1, !dbg !2185
  %33 = sext i8 %32 to i32, !dbg !2185
  %34 = and i32 %33, 127, !dbg !2186
  %35 = add nsw i32 64, %34, !dbg !2187
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i32 %35), !dbg !2188
  br label %59, !dbg !2189

; <label>:36:                                     ; preds = %21, %18
  %37 = load i8*, i8** %3, align 8, !dbg !2190
  %38 = load i8, i8* %37, align 1, !dbg !2193
  %39 = sext i8 %38 to i32, !dbg !2193
  %40 = icmp eq i32 %39, 37, !dbg !2194
  br i1 %40, label %41, label %53, !dbg !2195

; <label>:41:                                     ; preds = %36
  %42 = load i8*, i8** %3, align 8, !dbg !2196
  %43 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !2196
  %44 = load i8, i8* %43, align 1, !dbg !2196
  %45 = sext i8 %44 to i32, !dbg !2196
  %46 = icmp eq i32 %45, 110, !dbg !2198
  br i1 %46, label %47, label %53, !dbg !2199

; <label>:47:                                     ; preds = %41
  %48 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !2200
  %49 = load i8*, i8** %4, align 8, !dbg !2202
  %50 = call %struct._GString* @g_string_append(%struct._GString* %48, i8* %49), !dbg !2203
  %51 = load i8*, i8** %3, align 8, !dbg !2204
  %52 = getelementptr inbounds i8, i8* %51, i32 1, !dbg !2204
  store i8* %52, i8** %3, align 8, !dbg !2204
  br label %58, !dbg !2205

; <label>:53:                                     ; preds = %41, %36
  %54 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !2206
  %55 = load i8*, i8** %3, align 8, !dbg !2208
  %56 = load i8, i8* %55, align 1, !dbg !2209
  %57 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %54, i8 signext %56), !dbg !2210
  br label %58

; <label>:58:                                     ; preds = %53, %47
  br label %59

; <label>:59:                                     ; preds = %58, %29
  %60 = load i8*, i8** %3, align 8, !dbg !2211
  %61 = getelementptr inbounds i8, i8* %60, i32 1, !dbg !2211
  store i8* %61, i8** %3, align 8, !dbg !2211
  br label %8, !dbg !2212, !llvm.loop !2214

; <label>:62:                                     ; preds = %8
  %63 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !2215
  ret %struct._GString* %63, !dbg !2216
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._GString* @g_string_append_c_inline(%struct._GString*, i8 signext) #4 !dbg !2217 {
  %3 = alloca %struct._GString*, align 8
  %4 = alloca i8, align 1
  store %struct._GString* %0, %struct._GString** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._GString** %3, metadata !2220, metadata !333), !dbg !2221
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !2222, metadata !333), !dbg !2223
  %5 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !2224
  %6 = getelementptr inbounds %struct._GString, %struct._GString* %5, i32 0, i32 1, !dbg !2226
  %7 = load i64, i64* %6, align 8, !dbg !2226
  %8 = add i64 %7, 1, !dbg !2227
  %9 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !2228
  %10 = getelementptr inbounds %struct._GString, %struct._GString* %9, i32 0, i32 2, !dbg !2229
  %11 = load i64, i64* %10, align 8, !dbg !2229
  %12 = icmp ult i64 %8, %11, !dbg !2230
  br i1 %12, label %13, label %30, !dbg !2231

; <label>:13:                                     ; preds = %2
  %14 = load i8, i8* %4, align 1, !dbg !2232
  %15 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !2234
  %16 = getelementptr inbounds %struct._GString, %struct._GString* %15, i32 0, i32 1, !dbg !2235
  %17 = load i64, i64* %16, align 8, !dbg !2236
  %18 = add i64 %17, 1, !dbg !2236
  store i64 %18, i64* %16, align 8, !dbg !2236
  %19 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !2237
  %20 = getelementptr inbounds %struct._GString, %struct._GString* %19, i32 0, i32 0, !dbg !2238
  %21 = load i8*, i8** %20, align 8, !dbg !2238
  %22 = getelementptr inbounds i8, i8* %21, i64 %17, !dbg !2237
  store i8 %14, i8* %22, align 1, !dbg !2239
  %23 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !2240
  %24 = getelementptr inbounds %struct._GString, %struct._GString* %23, i32 0, i32 1, !dbg !2241
  %25 = load i64, i64* %24, align 8, !dbg !2241
  %26 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !2242
  %27 = getelementptr inbounds %struct._GString, %struct._GString* %26, i32 0, i32 0, !dbg !2243
  %28 = load i8*, i8** %27, align 8, !dbg !2243
  %29 = getelementptr inbounds i8, i8* %28, i64 %25, !dbg !2242
  store i8 0, i8* %29, align 1, !dbg !2244
  br label %34, !dbg !2245

; <label>:30:                                     ; preds = %2
  %31 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !2246
  %32 = load i8, i8* %4, align 1, !dbg !2247
  %33 = call %struct._GString* @g_string_insert_c(%struct._GString* %31, i64 -1, i8 signext %32), !dbg !2248
  br label %34

; <label>:34:                                     ; preds = %30, %13
  %35 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !2249
  ret %struct._GString* %35, !dbg !2250
}

declare void @gui_printtext(i32, i32, i8*) #2

declare i8* @g_string_free(%struct._GString*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @statusbar_item_default_func(%struct.SBAR_ITEM_REC*, i32) #0 !dbg !2251 {
  %3 = alloca %struct.SBAR_ITEM_REC*, align 8
  %4 = alloca i32, align 4
  store %struct.SBAR_ITEM_REC* %0, %struct.SBAR_ITEM_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.SBAR_ITEM_REC** %3, metadata !2254, metadata !333), !dbg !2255
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2256, metadata !333), !dbg !2257
  %5 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %3, align 8, !dbg !2258
  %6 = load i32, i32* %4, align 4, !dbg !2259
  call void @statusbar_item_default_handler(%struct.SBAR_ITEM_REC* %5, i32 %6, i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i32 0, i32 0), i32 1), !dbg !2260
  ret void, !dbg !2261
}

; Function Attrs: nounwind uwtable
define internal void @statusbar_item_default_signals(%struct.SBAR_ITEM_REC*) #0 !dbg !2262 {
  %2 = alloca %struct.SBAR_ITEM_REC*, align 8
  %3 = alloca void (i8*, i8*, i8*, i8*, i8*, i8*)*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.SBAR_ITEM_REC* %0, %struct.SBAR_ITEM_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.SBAR_ITEM_REC** %2, metadata !2263, metadata !333), !dbg !2264
  call void @llvm.dbg.declare(metadata void (i8*, i8*, i8*, i8*, i8*, i8*)** %3, metadata !2265, metadata !333), !dbg !2266
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !2267, metadata !333), !dbg !2268
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2269, metadata !333), !dbg !2270
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2271, metadata !333), !dbg !2272
  call void @llvm.dbg.declare(metadata i32** %7, metadata !2273, metadata !333), !dbg !2275
  call void @llvm.dbg.declare(metadata i32** %8, metadata !2276, metadata !333), !dbg !2277
  %9 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %2, align 8, !dbg !2278
  %10 = call i8* @statusbar_item_get_value(%struct.SBAR_ITEM_REC* %9), !dbg !2279
  store i8* %10, i8** %5, align 8, !dbg !2280
  %11 = load i8*, i8** %5, align 8, !dbg !2281
  %12 = icmp eq i8* %11, null, !dbg !2283
  br i1 %12, label %13, label %14, !dbg !2284

; <label>:13:                                     ; preds = %1
  br label %97, !dbg !2285

; <label>:14:                                     ; preds = %1
  %15 = load i8*, i8** %5, align 8, !dbg !2286
  %16 = call i32* @special_vars_get_signals(i8* %15), !dbg !2287
  store i32* %16, i32** %7, align 8, !dbg !2288
  %17 = load i32*, i32** %7, align 8, !dbg !2289
  %18 = icmp eq i32* %17, null, !dbg !2291
  br i1 %18, label %19, label %20, !dbg !2292

; <label>:19:                                     ; preds = %14
  br label %97, !dbg !2293

; <label>:20:                                     ; preds = %14
  %21 = load i32*, i32** %7, align 8, !dbg !2294
  store i32* %21, i32** %8, align 8, !dbg !2296
  br label %22, !dbg !2297

; <label>:22:                                     ; preds = %91, %20
  %23 = load i32*, i32** %8, align 8, !dbg !2298
  %24 = load i32, i32* %23, align 4, !dbg !2301
  %25 = icmp ne i32 %24, -1, !dbg !2302
  br i1 %25, label %26, label %94, !dbg !2303

; <label>:26:                                     ; preds = %22
  %27 = load i32*, i32** %8, align 8, !dbg !2304
  %28 = load i32, i32* %27, align 4, !dbg !2306
  %29 = sext i32 %28 to i64, !dbg !2307
  %30 = inttoptr i64 %29 to i8*, !dbg !2308
  store i8* %30, i8** %6, align 8, !dbg !2309
  %31 = load %struct._GHashTable*, %struct._GHashTable** @sbar_signal_items, align 8, !dbg !2310
  %32 = load i8*, i8** %6, align 8, !dbg !2311
  %33 = call i8* @g_hash_table_lookup(%struct._GHashTable* %31, i8* %32), !dbg !2312
  %34 = bitcast i8* %33 to %struct._GSList*, !dbg !2312
  store %struct._GSList* %34, %struct._GSList** %4, align 8, !dbg !2313
  %35 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2314
  %36 = icmp eq %struct._GSList* %35, null, !dbg !2316
  br i1 %36, label %37, label %54, !dbg !2317

; <label>:37:                                     ; preds = %26
  %38 = load i32*, i32** %8, align 8, !dbg !2318
  %39 = getelementptr inbounds i32, i32* %38, i64 1, !dbg !2318
  %40 = load i32, i32* %39, align 4, !dbg !2318
  switch i32 %40, label %45 [
    i32 1, label %41
    i32 2, label %42
    i32 3, label %43
    i32 4, label %44
  ], !dbg !2320

; <label>:41:                                     ; preds = %37
  store void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @statusbar_update_item to void (i8*, i8*, i8*, i8*, i8*, i8*)*), void (i8*, i8*, i8*, i8*, i8*, i8*)** %3, align 8, !dbg !2321
  br label %46, !dbg !2323

; <label>:42:                                     ; preds = %37
  store void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*)* @statusbar_update_server to void (i8*, i8*, i8*, i8*, i8*, i8*)*), void (i8*, i8*, i8*, i8*, i8*, i8*)** %3, align 8, !dbg !2324
  br label %46, !dbg !2325

; <label>:43:                                     ; preds = %37
  store void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*)* @statusbar_update_window to void (i8*, i8*, i8*, i8*, i8*, i8*)*), void (i8*, i8*, i8*, i8*, i8*, i8*)** %3, align 8, !dbg !2326
  br label %46, !dbg !2327

; <label>:44:                                     ; preds = %37
  store void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WI_ITEM_REC*)* @statusbar_update_window_item to void (i8*, i8*, i8*, i8*, i8*, i8*)*), void (i8*, i8*, i8*, i8*, i8*, i8*)** %3, align 8, !dbg !2328
  br label %46, !dbg !2329

; <label>:45:                                     ; preds = %37
  store void (i8*, i8*, i8*, i8*, i8*, i8*)* null, void (i8*, i8*, i8*, i8*, i8*, i8*)** %3, align 8, !dbg !2330
  br label %46, !dbg !2331

; <label>:46:                                     ; preds = %45, %44, %43, %42, %41
  %47 = load void (i8*, i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*, i8*)** %3, align 8, !dbg !2332
  %48 = icmp ne void (i8*, i8*, i8*, i8*, i8*, i8*)* %47, null, !dbg !2334
  br i1 %48, label %49, label %53, !dbg !2335

; <label>:49:                                     ; preds = %46
  %50 = load i32*, i32** %8, align 8, !dbg !2336
  %51 = load i32, i32* %50, align 4, !dbg !2338
  %52 = load void (i8*, i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*, i8*)** %3, align 8, !dbg !2339
  call void @signal_add_full_id(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 0, i32 %51, void (i8*, i8*, i8*, i8*, i8*, i8*)* %52, i8* null), !dbg !2340
  br label %53, !dbg !2341

; <label>:53:                                     ; preds = %49, %46
  br label %54, !dbg !2342

; <label>:54:                                     ; preds = %53, %26
  %55 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2343
  %56 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %2, align 8, !dbg !2345
  %57 = bitcast %struct.SBAR_ITEM_REC* %56 to i8*, !dbg !2345
  %58 = call %struct._GSList* @g_slist_find(%struct._GSList* %55, i8* %57), !dbg !2346
  %59 = icmp eq %struct._GSList* %58, null, !dbg !2347
  br i1 %59, label %60, label %65, !dbg !2348

; <label>:60:                                     ; preds = %54
  %61 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2349
  %62 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %2, align 8, !dbg !2350
  %63 = bitcast %struct.SBAR_ITEM_REC* %62 to i8*, !dbg !2350
  %64 = call %struct._GSList* @g_slist_append(%struct._GSList* %61, i8* %63), !dbg !2351
  store %struct._GSList* %64, %struct._GSList** %4, align 8, !dbg !2352
  br label %65, !dbg !2353

; <label>:65:                                     ; preds = %60, %54
  %66 = load %struct._GHashTable*, %struct._GHashTable** @sbar_signal_items, align 8, !dbg !2354
  %67 = load i8*, i8** %6, align 8, !dbg !2355
  %68 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2356
  %69 = bitcast %struct._GSList* %68 to i8*, !dbg !2356
  %70 = call i32 @g_hash_table_insert(%struct._GHashTable* %66, i8* %67, i8* %69), !dbg !2357
  %71 = load %struct._GHashTable*, %struct._GHashTable** @sbar_item_signals, align 8, !dbg !2358
  %72 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %2, align 8, !dbg !2359
  %73 = bitcast %struct.SBAR_ITEM_REC* %72 to i8*, !dbg !2359
  %74 = call i8* @g_hash_table_lookup(%struct._GHashTable* %71, i8* %73), !dbg !2360
  %75 = bitcast i8* %74 to %struct._GSList*, !dbg !2360
  store %struct._GSList* %75, %struct._GSList** %4, align 8, !dbg !2361
  %76 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2362
  %77 = load i8*, i8** %6, align 8, !dbg !2364
  %78 = call %struct._GSList* @g_slist_find(%struct._GSList* %76, i8* %77), !dbg !2365
  %79 = icmp eq %struct._GSList* %78, null, !dbg !2366
  br i1 %79, label %80, label %84, !dbg !2367

; <label>:80:                                     ; preds = %65
  %81 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2368
  %82 = load i8*, i8** %6, align 8, !dbg !2369
  %83 = call %struct._GSList* @g_slist_append(%struct._GSList* %81, i8* %82), !dbg !2370
  store %struct._GSList* %83, %struct._GSList** %4, align 8, !dbg !2371
  br label %84, !dbg !2372

; <label>:84:                                     ; preds = %80, %65
  %85 = load %struct._GHashTable*, %struct._GHashTable** @sbar_item_signals, align 8, !dbg !2373
  %86 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %2, align 8, !dbg !2374
  %87 = bitcast %struct.SBAR_ITEM_REC* %86 to i8*, !dbg !2374
  %88 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2375
  %89 = bitcast %struct._GSList* %88 to i8*, !dbg !2375
  %90 = call i32 @g_hash_table_insert(%struct._GHashTable* %85, i8* %87, i8* %89), !dbg !2376
  br label %91, !dbg !2377

; <label>:91:                                     ; preds = %84
  %92 = load i32*, i32** %8, align 8, !dbg !2378
  %93 = getelementptr inbounds i32, i32* %92, i64 2, !dbg !2378
  store i32* %93, i32** %8, align 8, !dbg !2378
  br label %22, !dbg !2380, !llvm.loop !2381

; <label>:94:                                     ; preds = %22
  %95 = load i32*, i32** %7, align 8, !dbg !2383
  %96 = bitcast i32* %95 to i8*, !dbg !2383
  call void @g_free(i8* %96), !dbg !2384
  br label %97, !dbg !2385

; <label>:97:                                     ; preds = %94, %19, %13
  ret void, !dbg !2386
}

; Function Attrs: nounwind uwtable
define internal void @statusbar_item_remove_signal(%struct.SBAR_ITEM_REC*, i32) #0 !dbg !2388 {
  %3 = alloca %struct.SBAR_ITEM_REC*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._GSList*, align 8
  store %struct.SBAR_ITEM_REC* %0, %struct.SBAR_ITEM_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.SBAR_ITEM_REC** %3, metadata !2389, metadata !333), !dbg !2390
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2391, metadata !333), !dbg !2392
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !2393, metadata !333), !dbg !2394
  %6 = load %struct._GHashTable*, %struct._GHashTable** @sbar_signal_items, align 8, !dbg !2395
  %7 = load i32, i32* %4, align 4, !dbg !2396
  %8 = sext i32 %7 to i64, !dbg !2397
  %9 = inttoptr i64 %8 to i8*, !dbg !2398
  %10 = call i8* @g_hash_table_lookup(%struct._GHashTable* %6, i8* %9), !dbg !2399
  %11 = bitcast i8* %10 to %struct._GSList*, !dbg !2399
  store %struct._GSList* %11, %struct._GSList** %5, align 8, !dbg !2400
  %12 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2401
  %13 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %3, align 8, !dbg !2402
  %14 = bitcast %struct.SBAR_ITEM_REC* %13 to i8*, !dbg !2402
  %15 = call %struct._GSList* @g_slist_remove(%struct._GSList* %12, i8* %14), !dbg !2403
  store %struct._GSList* %15, %struct._GSList** %5, align 8, !dbg !2404
  %16 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2405
  %17 = icmp ne %struct._GSList* %16, null, !dbg !2407
  br i1 %17, label %18, label %26, !dbg !2408

; <label>:18:                                     ; preds = %2
  %19 = load %struct._GHashTable*, %struct._GHashTable** @sbar_signal_items, align 8, !dbg !2409
  %20 = load i32, i32* %4, align 4, !dbg !2411
  %21 = sext i32 %20 to i64, !dbg !2412
  %22 = inttoptr i64 %21 to i8*, !dbg !2413
  %23 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2414
  %24 = bitcast %struct._GSList* %23 to i8*, !dbg !2414
  %25 = call i32 @g_hash_table_insert(%struct._GHashTable* %19, i8* %22, i8* %24), !dbg !2415
  br label %33, !dbg !2416

; <label>:26:                                     ; preds = %2
  %27 = load %struct._GHashTable*, %struct._GHashTable** @sbar_signal_items, align 8, !dbg !2417
  %28 = load i32, i32* %4, align 4, !dbg !2419
  %29 = sext i32 %28 to i64, !dbg !2420
  %30 = inttoptr i64 %29 to i8*, !dbg !2421
  %31 = call i32 @g_hash_table_remove(%struct._GHashTable* %27, i8* %30), !dbg !2422
  %32 = load i32, i32* %4, align 4, !dbg !2423
  call void @statusbar_signal_remove(i32 %32), !dbg !2424
  br label %33

; <label>:33:                                     ; preds = %26, %18
  ret void, !dbg !2425
}

; Function Attrs: nounwind uwtable
define void @statusbar_redraw_dirty() #0 !dbg !2426 {
  %1 = alloca %struct._GSList*, align 8
  %2 = alloca %struct.STATUSBAR_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %1, metadata !2427, metadata !333), !dbg !2428
  %3 = load i32, i32* @statusbar_need_recreate_items, align 4, !dbg !2429
  %4 = icmp ne i32 %3, 0, !dbg !2429
  br i1 %4, label %5, label %6, !dbg !2431

; <label>:5:                                      ; preds = %0
  store i32 0, i32* @statusbar_need_recreate_items, align 4, !dbg !2432
  call void @statusbars_recreate_items(), !dbg !2434
  br label %6, !dbg !2435

; <label>:6:                                      ; preds = %5, %0
  %7 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** @active_statusbar_group, align 8, !dbg !2436
  %8 = getelementptr inbounds %struct.STATUSBAR_GROUP_REC, %struct.STATUSBAR_GROUP_REC* %7, i32 0, i32 2, !dbg !2438
  %9 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !2438
  store %struct._GSList* %9, %struct._GSList** %1, align 8, !dbg !2439
  br label %10, !dbg !2440

; <label>:10:                                     ; preds = %33, %6
  %11 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !2441
  %12 = icmp ne %struct._GSList* %11, null, !dbg !2444
  br i1 %12, label %13, label %37, !dbg !2445

; <label>:13:                                     ; preds = %10
  call void @llvm.dbg.declare(metadata %struct.STATUSBAR_REC** %2, metadata !2446, metadata !333), !dbg !2448
  %14 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !2449
  %15 = getelementptr inbounds %struct._GSList, %struct._GSList* %14, i32 0, i32 0, !dbg !2450
  %16 = load i8*, i8** %15, align 8, !dbg !2450
  %17 = bitcast i8* %16 to %struct.STATUSBAR_REC*, !dbg !2449
  store %struct.STATUSBAR_REC* %17, %struct.STATUSBAR_REC** %2, align 8, !dbg !2448
  %18 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !2451
  %19 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %18, i32 0, i32 6, !dbg !2453
  %20 = load i8, i8* %19, align 4, !dbg !2453
  %21 = and i8 %20, 1, !dbg !2453
  %22 = zext i8 %21 to i32, !dbg !2453
  %23 = icmp ne i32 %22, 0, !dbg !2451
  br i1 %23, label %24, label %32, !dbg !2454

; <label>:24:                                     ; preds = %13
  %25 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !2455
  call void @statusbar_redraw_needed_items(%struct.STATUSBAR_REC* %25), !dbg !2457
  %26 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !2458
  %27 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %26, i32 0, i32 6, !dbg !2459
  %28 = load i8, i8* %27, align 4, !dbg !2460
  %29 = and i8 %28, -2, !dbg !2460
  store i8 %29, i8* %27, align 4, !dbg !2460
  %30 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !2461
  %31 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %30, i32 0, i32 7, !dbg !2462
  store i32 -1, i32* %31, align 8, !dbg !2463
  br label %32, !dbg !2464

; <label>:32:                                     ; preds = %24, %13
  br label %33, !dbg !2465

; <label>:33:                                     ; preds = %32
  %34 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !2466
  %35 = getelementptr inbounds %struct._GSList, %struct._GSList* %34, i32 0, i32 1, !dbg !2468
  %36 = load %struct._GSList*, %struct._GSList** %35, align 8, !dbg !2468
  store %struct._GSList* %36, %struct._GSList** %1, align 8, !dbg !2469
  br label %10, !dbg !2470, !llvm.loop !2471

; <label>:37:                                     ; preds = %10
  ret void, !dbg !2473
}

; Function Attrs: nounwind uwtable
define internal void @statusbar_redraw_needed_items(%struct.STATUSBAR_REC*) #0 !dbg !2474 {
  %2 = alloca %struct.STATUSBAR_REC*, align 8
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.MAIN_WINDOW_BORDER_REC*, align 8
  %7 = alloca %struct.SBAR_ITEM_REC*, align 8
  store %struct.STATUSBAR_REC* %0, %struct.STATUSBAR_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.STATUSBAR_REC** %2, metadata !2475, metadata !333), !dbg !2476
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !2477, metadata !333), !dbg !2478
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !2479, metadata !333), !dbg !2480
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2481, metadata !333), !dbg !2482
  %8 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !2483
  store %struct._WINDOW_REC* %8, %struct._WINDOW_REC** %3, align 8, !dbg !2484
  %9 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !2485
  %10 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %9, i32 0, i32 2, !dbg !2487
  %11 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %10, align 8, !dbg !2487
  %12 = icmp ne %struct.MAIN_WINDOW_REC* %11, null, !dbg !2488
  br i1 %12, label %13, label %19, !dbg !2489

; <label>:13:                                     ; preds = %1
  %14 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !2490
  %15 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %14, i32 0, i32 2, !dbg !2491
  %16 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %15, align 8, !dbg !2491
  %17 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %16, i32 0, i32 0, !dbg !2492
  %18 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %17, align 8, !dbg !2492
  store %struct._WINDOW_REC* %18, %struct._WINDOW_REC** @active_win, align 8, !dbg !2493
  br label %19, !dbg !2494

; <label>:19:                                     ; preds = %13, %1
  %20 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !2495
  %21 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %20, i32 0, i32 7, !dbg !2497
  %22 = load i32, i32* %21, align 8, !dbg !2497
  %23 = icmp sge i32 %22, 0, !dbg !2498
  br i1 %23, label %24, label %60, !dbg !2499

; <label>:24:                                     ; preds = %19
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_BORDER_REC** %6, metadata !2500, metadata !333), !dbg !2502
  %25 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !2503
  %26 = call %struct.MAIN_WINDOW_BORDER_REC* @set_border_info(%struct.STATUSBAR_REC* %25), !dbg !2504
  store %struct.MAIN_WINDOW_BORDER_REC* %26, %struct.MAIN_WINDOW_BORDER_REC** %6, align 8, !dbg !2505
  %27 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !2506
  %28 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %27, i32 0, i32 4, !dbg !2507
  %29 = load i8*, i8** %28, align 8, !dbg !2507
  %30 = call noalias i8* (i8*, ...) @g_strconcat(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i8* null), !dbg !2508
  store i8* %30, i8** %5, align 8, !dbg !2509
  %31 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !2510
  %32 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %31, i32 0, i32 2, !dbg !2511
  %33 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %32, align 8, !dbg !2511
  %34 = icmp ne %struct.MAIN_WINDOW_REC* %33, null, !dbg !2512
  br i1 %34, label %35, label %47, !dbg !2513

; <label>:35:                                     ; preds = %24
  %36 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !2514
  %37 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %36, i32 0, i32 2, !dbg !2516
  %38 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %37, align 8, !dbg !2516
  %39 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %38, i32 0, i32 5, !dbg !2517
  %40 = load i32, i32* %39, align 4, !dbg !2517
  %41 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !2518
  %42 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %41, i32 0, i32 2, !dbg !2519
  %43 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %42, align 8, !dbg !2519
  %44 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %43, i32 0, i32 13, !dbg !2520
  %45 = load i32, i32* %44, align 4, !dbg !2520
  %46 = add nsw i32 %40, %45, !dbg !2521
  br label %48, !dbg !2522

; <label>:47:                                     ; preds = %24
  br label %48, !dbg !2523

; <label>:48:                                     ; preds = %47, %35
  %49 = phi i32 [ %46, %35 ], [ 0, %47 ], !dbg !2525
  %50 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !2527
  %51 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %50, i32 0, i32 7, !dbg !2528
  %52 = load i32, i32* %51, align 8, !dbg !2528
  %53 = add nsw i32 %49, %52, !dbg !2529
  %54 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !2530
  %55 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %54, i32 0, i32 5, !dbg !2531
  %56 = load i32, i32* %55, align 8, !dbg !2531
  %57 = load i8*, i8** %5, align 8, !dbg !2532
  call void @gui_printtext(i32 %53, i32 %56, i8* %57), !dbg !2533
  %58 = load i8*, i8** %5, align 8, !dbg !2534
  call void @g_free(i8* %58), !dbg !2535
  %59 = load %struct.MAIN_WINDOW_BORDER_REC*, %struct.MAIN_WINDOW_BORDER_REC** %6, align 8, !dbg !2536
  call void @restore_border_info(%struct.MAIN_WINDOW_BORDER_REC* %59), !dbg !2537
  br label %60, !dbg !2538

; <label>:60:                                     ; preds = %48, %19
  %61 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !2539
  %62 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %61, i32 0, i32 3, !dbg !2541
  %63 = load %struct._GSList*, %struct._GSList** %62, align 8, !dbg !2541
  store %struct._GSList* %63, %struct._GSList** %4, align 8, !dbg !2542
  br label %64, !dbg !2543

; <label>:64:                                     ; preds = %107, %60
  %65 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2544
  %66 = icmp ne %struct._GSList* %65, null, !dbg !2547
  br i1 %66, label %67, label %111, !dbg !2548

; <label>:67:                                     ; preds = %64
  call void @llvm.dbg.declare(metadata %struct.SBAR_ITEM_REC** %7, metadata !2549, metadata !333), !dbg !2551
  %68 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2552
  %69 = getelementptr inbounds %struct._GSList, %struct._GSList* %68, i32 0, i32 0, !dbg !2553
  %70 = load i8*, i8** %69, align 8, !dbg !2553
  %71 = bitcast i8* %70 to %struct.SBAR_ITEM_REC*, !dbg !2552
  store %struct.SBAR_ITEM_REC* %71, %struct.SBAR_ITEM_REC** %7, align 8, !dbg !2551
  %72 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %7, align 8, !dbg !2554
  %73 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %72, i32 0, i32 8, !dbg !2556
  %74 = load i8, i8* %73, align 4, !dbg !2556
  %75 = and i8 %74, 1, !dbg !2556
  %76 = zext i8 %75 to i32, !dbg !2556
  %77 = icmp ne i32 %76, 0, !dbg !2554
  br i1 %77, label %91, label %78, !dbg !2557

; <label>:78:                                     ; preds = %67
  %79 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !2558
  %80 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %79, i32 0, i32 7, !dbg !2559
  %81 = load i32, i32* %80, align 8, !dbg !2559
  %82 = icmp ne i32 %81, -1, !dbg !2560
  br i1 %82, label %83, label %106, !dbg !2561

; <label>:83:                                     ; preds = %78
  %84 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %7, align 8, !dbg !2562
  %85 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %84, i32 0, i32 5, !dbg !2563
  %86 = load i32, i32* %85, align 8, !dbg !2563
  %87 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !2564
  %88 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %87, i32 0, i32 7, !dbg !2565
  %89 = load i32, i32* %88, align 8, !dbg !2565
  %90 = icmp sge i32 %86, %89, !dbg !2566
  br i1 %90, label %91, label %106, !dbg !2567

; <label>:91:                                     ; preds = %83, %67
  %92 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %7, align 8, !dbg !2569
  %93 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %92, i32 0, i32 6, !dbg !2571
  %94 = load i32, i32* %93, align 4, !dbg !2571
  %95 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %7, align 8, !dbg !2572
  %96 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %95, i32 0, i32 7, !dbg !2573
  store i32 %94, i32* %96, align 8, !dbg !2574
  %97 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %7, align 8, !dbg !2575
  %98 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %97, i32 0, i32 2, !dbg !2576
  %99 = bitcast {}** %98 to void (%struct.SBAR_ITEM_REC*, i32)**, !dbg !2576
  %100 = load void (%struct.SBAR_ITEM_REC*, i32)*, void (%struct.SBAR_ITEM_REC*, i32)** %99, align 8, !dbg !2576
  %101 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %7, align 8, !dbg !2577
  call void %100(%struct.SBAR_ITEM_REC* %101, i32 0), !dbg !2575
  %102 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %7, align 8, !dbg !2578
  %103 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %102, i32 0, i32 8, !dbg !2579
  %104 = load i8, i8* %103, align 4, !dbg !2580
  %105 = and i8 %104, -2, !dbg !2580
  store i8 %105, i8* %103, align 4, !dbg !2580
  br label %106, !dbg !2581

; <label>:106:                                    ; preds = %91, %83, %78
  br label %107, !dbg !2582

; <label>:107:                                    ; preds = %106
  %108 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2583
  %109 = getelementptr inbounds %struct._GSList, %struct._GSList* %108, i32 0, i32 1, !dbg !2585
  %110 = load %struct._GSList*, %struct._GSList** %109, align 8, !dbg !2585
  store %struct._GSList* %110, %struct._GSList** %4, align 8, !dbg !2586
  br label %64, !dbg !2587, !llvm.loop !2588

; <label>:111:                                    ; preds = %64
  %112 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !2590
  store %struct._WINDOW_REC* %112, %struct._WINDOW_REC** @active_win, align 8, !dbg !2591
  ret void, !dbg !2592
}

; Function Attrs: nounwind uwtable
define void @statusbars_create_window_bars() #0 !dbg !2593 {
  %1 = load %struct._GSList*, %struct._GSList** @mainwindows, align 8, !dbg !2594
  call void @g_slist_foreach(%struct._GSList* %1, void (i8*, i8*)* bitcast (void (%struct.MAIN_WINDOW_REC*)* @statusbars_add_visible to void (i8*, i8*)*), i8* null), !dbg !2595
  ret void, !dbg !2596
}

; Function Attrs: nounwind uwtable
define internal void @statusbars_add_visible(%struct.MAIN_WINDOW_REC*) #0 !dbg !2597 {
  %2 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %3 = alloca %struct.STATUSBAR_GROUP_REC*, align 8
  %4 = alloca %struct.STATUSBAR_REC*, align 8
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca %struct.STATUSBAR_CONFIG_REC*, align 8
  store %struct.MAIN_WINDOW_REC* %0, %struct.MAIN_WINDOW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %2, metadata !2598, metadata !333), !dbg !2599
  call void @llvm.dbg.declare(metadata %struct.STATUSBAR_GROUP_REC** %3, metadata !2600, metadata !333), !dbg !2601
  call void @llvm.dbg.declare(metadata %struct.STATUSBAR_REC** %4, metadata !2602, metadata !333), !dbg !2603
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !2604, metadata !333), !dbg !2605
  %7 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** @active_statusbar_group, align 8, !dbg !2606
  store %struct.STATUSBAR_GROUP_REC* %7, %struct.STATUSBAR_GROUP_REC** %3, align 8, !dbg !2607
  %8 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** %3, align 8, !dbg !2608
  %9 = getelementptr inbounds %struct.STATUSBAR_GROUP_REC, %struct.STATUSBAR_GROUP_REC* %8, i32 0, i32 1, !dbg !2610
  %10 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !2610
  store %struct._GSList* %10, %struct._GSList** %5, align 8, !dbg !2611
  br label %11, !dbg !2612

; <label>:11:                                     ; preds = %61, %1
  %12 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2613
  %13 = icmp ne %struct._GSList* %12, null, !dbg !2616
  br i1 %13, label %14, label %65, !dbg !2617

; <label>:14:                                     ; preds = %11
  call void @llvm.dbg.declare(metadata %struct.STATUSBAR_CONFIG_REC** %6, metadata !2618, metadata !333), !dbg !2620
  %15 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2621
  %16 = getelementptr inbounds %struct._GSList, %struct._GSList* %15, i32 0, i32 0, !dbg !2622
  %17 = load i8*, i8** %16, align 8, !dbg !2622
  %18 = bitcast i8* %17 to %struct.STATUSBAR_CONFIG_REC*, !dbg !2621
  store %struct.STATUSBAR_CONFIG_REC* %18, %struct.STATUSBAR_CONFIG_REC** %6, align 8, !dbg !2620
  %19 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %6, align 8, !dbg !2623
  %20 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %19, i32 0, i32 1, !dbg !2625
  %21 = load i32, i32* %20, align 8, !dbg !2625
  %22 = icmp eq i32 %21, 2, !dbg !2626
  br i1 %22, label %23, label %60, !dbg !2627

; <label>:23:                                     ; preds = %14
  %24 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %6, align 8, !dbg !2628
  %25 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %24, i32 0, i32 4, !dbg !2629
  %26 = load i32, i32* %25, align 4, !dbg !2629
  %27 = icmp eq i32 %26, 1, !dbg !2630
  br i1 %27, label %46, label %28, !dbg !2631

; <label>:28:                                     ; preds = %23
  %29 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** @active_mainwin, align 8, !dbg !2632
  %30 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !2634
  %31 = icmp eq %struct.MAIN_WINDOW_REC* %29, %30, !dbg !2635
  br i1 %31, label %32, label %37, !dbg !2636

; <label>:32:                                     ; preds = %28
  %33 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %6, align 8, !dbg !2637
  %34 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %33, i32 0, i32 4, !dbg !2639
  %35 = load i32, i32* %34, align 4, !dbg !2639
  %36 = icmp eq i32 %35, 2, !dbg !2640
  br i1 %36, label %46, label %37, !dbg !2641

; <label>:37:                                     ; preds = %32, %28
  %38 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** @active_mainwin, align 8, !dbg !2642
  %39 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !2644
  %40 = icmp ne %struct.MAIN_WINDOW_REC* %38, %39, !dbg !2645
  br i1 %40, label %41, label %60, !dbg !2646

; <label>:41:                                     ; preds = %37
  %42 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %6, align 8, !dbg !2647
  %43 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %42, i32 0, i32 4, !dbg !2649
  %44 = load i32, i32* %43, align 4, !dbg !2649
  %45 = icmp eq i32 %44, 3, !dbg !2650
  br i1 %45, label %46, label %60, !dbg !2651

; <label>:46:                                     ; preds = %41, %32, %23
  %47 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** %3, align 8, !dbg !2652
  %48 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %6, align 8, !dbg !2653
  %49 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %48, i32 0, i32 0, !dbg !2654
  %50 = load i8*, i8** %49, align 8, !dbg !2654
  %51 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !2655
  %52 = call %struct.STATUSBAR_REC* @statusbar_find(%struct.STATUSBAR_GROUP_REC* %47, i8* %50, %struct.MAIN_WINDOW_REC* %51), !dbg !2656
  %53 = icmp eq %struct.STATUSBAR_REC* %52, null, !dbg !2657
  br i1 %53, label %54, label %60, !dbg !2658

; <label>:54:                                     ; preds = %46
  %55 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** %3, align 8, !dbg !2660
  %56 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %6, align 8, !dbg !2662
  %57 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !2663
  %58 = call %struct.STATUSBAR_REC* @statusbar_create(%struct.STATUSBAR_GROUP_REC* %55, %struct.STATUSBAR_CONFIG_REC* %56, %struct.MAIN_WINDOW_REC* %57), !dbg !2664
  store %struct.STATUSBAR_REC* %58, %struct.STATUSBAR_REC** %4, align 8, !dbg !2665
  %59 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %4, align 8, !dbg !2666
  call void @statusbar_redraw(%struct.STATUSBAR_REC* %59, i32 1), !dbg !2667
  br label %60, !dbg !2668

; <label>:60:                                     ; preds = %54, %46, %41, %37, %14
  br label %61, !dbg !2669

; <label>:61:                                     ; preds = %60
  %62 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2670
  %63 = getelementptr inbounds %struct._GSList, %struct._GSList* %62, i32 0, i32 1, !dbg !2672
  %64 = load %struct._GSList*, %struct._GSList** %63, align 8, !dbg !2672
  store %struct._GSList* %64, %struct._GSList** %5, align 8, !dbg !2673
  br label %11, !dbg !2674, !llvm.loop !2675

; <label>:65:                                     ; preds = %11
  ret void, !dbg !2677
}

; Function Attrs: nounwind uwtable
define void @statusbar_init() #0 !dbg !2678 {
  store i32 0, i32* @statusbar_need_recreate_items, align 4, !dbg !2679
  store %struct._GSList* null, %struct._GSList** @statusbar_groups, align 8, !dbg !2680
  store %struct.STATUSBAR_GROUP_REC* null, %struct.STATUSBAR_GROUP_REC** @active_statusbar_group, align 8, !dbg !2681
  %1 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal), !dbg !2682
  store %struct._GHashTable* %1, %struct._GHashTable** @sbar_item_defs, align 8, !dbg !2683
  %2 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal), !dbg !2684
  store %struct._GHashTable* %2, %struct._GHashTable** @sbar_item_funcs, align 8, !dbg !2685
  %3 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_direct_hash, i32 (i8*, i8*)* @g_direct_equal), !dbg !2686
  store %struct._GHashTable* %3, %struct._GHashTable** @sbar_signal_items, align 8, !dbg !2687
  %4 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_direct_hash, i32 (i8*, i8*)* @g_direct_equal), !dbg !2688
  store %struct._GHashTable* %4, %struct._GHashTable** @sbar_item_signals, align 8, !dbg !2689
  %5 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal), !dbg !2690
  store %struct._GHashTable* %5, %struct._GHashTable** @named_sbar_items, align 8, !dbg !2691
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_terminal_resized to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2692
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.MAIN_WINDOW_REC*)* @sig_mainwindow_resized to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2693
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.MAIN_WINDOW_REC*)* @sig_mainwindow_resized to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2694
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*)* @sig_gui_window_created to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2695
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_window_changed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2696
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.MAIN_WINDOW_REC*)* @sig_mainwindow_destroyed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2697
  call void @statusbar_items_init(), !dbg !2698
  call void @statusbar_config_init(), !dbg !2699
  ret void, !dbg !2700
}

declare %struct._GHashTable* @g_hash_table_new(i32 (i8*)*, i32 (i8*, i8*)*) #2

declare i32 @g_str_hash(i8*) #2

declare i32 @g_str_equal(i8*, i8*) #2

; Function Attrs: nounwind readnone
declare i32 @g_direct_hash(i8*) #5

; Function Attrs: nounwind readnone
declare i32 @g_direct_equal(i8*, i8*) #5

; Function Attrs: nounwind uwtable
define internal void @sig_gui_window_created(%struct._WINDOW_REC*) #0 !dbg !2701 {
  %2 = alloca %struct._WINDOW_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %2, metadata !2704, metadata !333), !dbg !2705
  %3 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2706
  %4 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %3, i32 0, i32 20, !dbg !2707
  %5 = load i8*, i8** %4, align 8, !dbg !2707
  %6 = bitcast i8* %5 to %struct.GUI_WINDOW_REC*, !dbg !2708
  %7 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %6, i32 0, i32 0, !dbg !2709
  %8 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %7, align 8, !dbg !2709
  call void @statusbars_add_visible(%struct.MAIN_WINDOW_REC* %8), !dbg !2710
  ret void, !dbg !2711
}

; Function Attrs: nounwind uwtable
define internal void @sig_window_changed() #0 !dbg !2712 {
  %1 = alloca %struct._GSList*, align 8
  %2 = alloca %struct.MAIN_WINDOW_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %1, metadata !2713, metadata !333), !dbg !2714
  %3 = load %struct._GSList*, %struct._GSList** @mainwindows, align 8, !dbg !2715
  store %struct._GSList* %3, %struct._GSList** %1, align 8, !dbg !2717
  br label %4, !dbg !2718

; <label>:4:                                      ; preds = %14, %0
  %5 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !2719
  %6 = icmp ne %struct._GSList* %5, null, !dbg !2722
  br i1 %6, label %7, label %18, !dbg !2723

; <label>:7:                                      ; preds = %4
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %2, metadata !2724, metadata !333), !dbg !2726
  %8 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !2727
  %9 = getelementptr inbounds %struct._GSList, %struct._GSList* %8, i32 0, i32 0, !dbg !2728
  %10 = load i8*, i8** %9, align 8, !dbg !2728
  %11 = bitcast i8* %10 to %struct.MAIN_WINDOW_REC*, !dbg !2727
  store %struct.MAIN_WINDOW_REC* %11, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !2726
  %12 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !2729
  call void @statusbars_remove_unvisible(%struct.MAIN_WINDOW_REC* %12), !dbg !2730
  %13 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !2731
  call void @statusbars_add_visible(%struct.MAIN_WINDOW_REC* %13), !dbg !2732
  br label %14, !dbg !2733

; <label>:14:                                     ; preds = %7
  %15 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !2734
  %16 = getelementptr inbounds %struct._GSList, %struct._GSList* %15, i32 0, i32 1, !dbg !2736
  %17 = load %struct._GSList*, %struct._GSList** %16, align 8, !dbg !2736
  store %struct._GSList* %17, %struct._GSList** %1, align 8, !dbg !2737
  br label %4, !dbg !2738, !llvm.loop !2739

; <label>:18:                                     ; preds = %4
  ret void, !dbg !2741
}

; Function Attrs: nounwind uwtable
define internal void @sig_mainwindow_destroyed(%struct.MAIN_WINDOW_REC*) #0 !dbg !2742 {
  %2 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %3 = alloca %struct.STATUSBAR_REC*, align 8
  store %struct.MAIN_WINDOW_REC* %0, %struct.MAIN_WINDOW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %2, metadata !2743, metadata !333), !dbg !2744
  br label %4, !dbg !2745

; <label>:4:                                      ; preds = %9, %1
  %5 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !2746
  %6 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %5, i32 0, i32 9, !dbg !2748
  %7 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !2748
  %8 = icmp ne %struct._GSList* %7, null, !dbg !2749
  br i1 %8, label %9, label %31, !dbg !2750

; <label>:9:                                      ; preds = %4
  call void @llvm.dbg.declare(metadata %struct.STATUSBAR_REC** %3, metadata !2751, metadata !333), !dbg !2753
  %10 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !2754
  %11 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %10, i32 0, i32 9, !dbg !2755
  %12 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !2755
  %13 = getelementptr inbounds %struct._GSList, %struct._GSList* %12, i32 0, i32 0, !dbg !2756
  %14 = load i8*, i8** %13, align 8, !dbg !2756
  %15 = bitcast i8* %14 to %struct.STATUSBAR_REC*, !dbg !2754
  store %struct.STATUSBAR_REC* %15, %struct.STATUSBAR_REC** %3, align 8, !dbg !2753
  %16 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %3, align 8, !dbg !2757
  %17 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %16, i32 0, i32 2, !dbg !2758
  %18 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %17, align 8, !dbg !2758
  %19 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %18, i32 0, i32 9, !dbg !2759
  %20 = load %struct._GSList*, %struct._GSList** %19, align 8, !dbg !2759
  %21 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %3, align 8, !dbg !2760
  %22 = bitcast %struct.STATUSBAR_REC* %21 to i8*, !dbg !2760
  %23 = call %struct._GSList* @g_slist_remove(%struct._GSList* %20, i8* %22), !dbg !2761
  %24 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %3, align 8, !dbg !2762
  %25 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %24, i32 0, i32 2, !dbg !2763
  %26 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %25, align 8, !dbg !2763
  %27 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %26, i32 0, i32 9, !dbg !2764
  store %struct._GSList* %23, %struct._GSList** %27, align 8, !dbg !2765
  %28 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %3, align 8, !dbg !2766
  %29 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %28, i32 0, i32 2, !dbg !2767
  store %struct.MAIN_WINDOW_REC* null, %struct.MAIN_WINDOW_REC** %29, align 8, !dbg !2768
  %30 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %3, align 8, !dbg !2769
  call void @statusbar_destroy(%struct.STATUSBAR_REC* %30), !dbg !2770
  br label %4, !dbg !2771, !llvm.loop !2773

; <label>:31:                                     ; preds = %4
  ret void, !dbg !2774
}

declare void @statusbar_items_init() #2

declare void @statusbar_config_init() #2

; Function Attrs: nounwind uwtable
define void @statusbar_deinit() #0 !dbg !2775 {
  br label %1, !dbg !2776

; <label>:1:                                      ; preds = %4, %0
  %2 = load %struct._GSList*, %struct._GSList** @statusbar_groups, align 8, !dbg !2777
  %3 = icmp ne %struct._GSList* %2, null, !dbg !2779
  br i1 %3, label %4, label %9, !dbg !2780

; <label>:4:                                      ; preds = %1
  %5 = load %struct._GSList*, %struct._GSList** @statusbar_groups, align 8, !dbg !2781
  %6 = getelementptr inbounds %struct._GSList, %struct._GSList* %5, i32 0, i32 0, !dbg !2782
  %7 = load i8*, i8** %6, align 8, !dbg !2782
  %8 = bitcast i8* %7 to %struct.STATUSBAR_GROUP_REC*, !dbg !2781
  call void @statusbar_group_destroy(%struct.STATUSBAR_GROUP_REC* %8), !dbg !2783
  br label %1, !dbg !2784, !llvm.loop !2786

; <label>:9:                                      ; preds = %1
  %10 = load %struct._GHashTable*, %struct._GHashTable** @sbar_item_defs, align 8, !dbg !2787
  call void @g_hash_table_foreach(%struct._GHashTable* %10, void (i8*, i8*, i8*)* bitcast (void (i8*, i8*)* @statusbar_item_def_destroy to void (i8*, i8*, i8*)*), i8* null), !dbg !2788
  %11 = load %struct._GHashTable*, %struct._GHashTable** @sbar_item_defs, align 8, !dbg !2789
  call void @g_hash_table_destroy(%struct._GHashTable* %11), !dbg !2790
  %12 = load %struct._GHashTable*, %struct._GHashTable** @sbar_item_funcs, align 8, !dbg !2791
  call void @g_hash_table_foreach(%struct._GHashTable* %12, void (i8*, i8*, i8*)* bitcast (void (i8*)* @g_free to void (i8*, i8*, i8*)*), i8* null), !dbg !2792
  %13 = load %struct._GHashTable*, %struct._GHashTable** @sbar_item_funcs, align 8, !dbg !2793
  call void @g_hash_table_destroy(%struct._GHashTable* %13), !dbg !2794
  %14 = load %struct._GHashTable*, %struct._GHashTable** @sbar_signal_items, align 8, !dbg !2795
  call void @g_hash_table_foreach(%struct._GHashTable* %14, void (i8*, i8*, i8*)* bitcast (void (i8*, %struct._GSList*)* @statusbar_signal_item_destroy to void (i8*, i8*, i8*)*), i8* null), !dbg !2796
  %15 = load %struct._GHashTable*, %struct._GHashTable** @sbar_signal_items, align 8, !dbg !2797
  call void @g_hash_table_destroy(%struct._GHashTable* %15), !dbg !2798
  %16 = load %struct._GHashTable*, %struct._GHashTable** @sbar_item_signals, align 8, !dbg !2799
  call void @g_hash_table_foreach(%struct._GHashTable* %16, void (i8*, i8*, i8*)* bitcast (void (i8*, %struct._GSList*)* @statusbar_item_signal_destroy to void (i8*, i8*, i8*)*), i8* null), !dbg !2800
  %17 = load %struct._GHashTable*, %struct._GHashTable** @sbar_item_signals, align 8, !dbg !2801
  call void @g_hash_table_destroy(%struct._GHashTable* %17), !dbg !2802
  %18 = load %struct._GHashTable*, %struct._GHashTable** @named_sbar_items, align 8, !dbg !2803
  call void @g_hash_table_destroy(%struct._GHashTable* %18), !dbg !2804
  call void @signal_remove_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_terminal_resized to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2805
  call void @signal_remove_full(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.MAIN_WINDOW_REC*)* @sig_mainwindow_resized to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2806
  call void @signal_remove_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.MAIN_WINDOW_REC*)* @sig_mainwindow_resized to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2807
  call void @signal_remove_full(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*)* @sig_gui_window_created to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2808
  call void @signal_remove_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_window_changed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2809
  call void @signal_remove_full(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.MAIN_WINDOW_REC*)* @sig_mainwindow_destroyed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2810
  call void @statusbar_items_deinit(), !dbg !2811
  call void @statusbar_config_deinit(), !dbg !2812
  ret void, !dbg !2813
}

declare void @g_hash_table_foreach(%struct._GHashTable*, void (i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @statusbar_item_def_destroy(i8*, i8*) #0 !dbg !2814 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2817, metadata !333), !dbg !2818
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2819, metadata !333), !dbg !2820
  %5 = load i8*, i8** %3, align 8, !dbg !2821
  call void @g_free(i8* %5), !dbg !2822
  %6 = load i8*, i8** %4, align 8, !dbg !2823
  call void @g_free(i8* %6), !dbg !2824
  ret void, !dbg !2825
}

declare void @g_hash_table_destroy(%struct._GHashTable*) #2

; Function Attrs: nounwind uwtable
define internal void @statusbar_signal_item_destroy(i8*, %struct._GSList*) #0 !dbg !2826 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._GSList*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2829, metadata !333), !dbg !2830
  store %struct._GSList* %1, %struct._GSList** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !2831, metadata !333), !dbg !2832
  br label %5, !dbg !2833

; <label>:5:                                      ; preds = %8, %2
  %6 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2834
  %7 = icmp ne %struct._GSList* %6, null, !dbg !2836
  br i1 %7, label %8, label %22, !dbg !2837

; <label>:8:                                      ; preds = %5
  %9 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2838
  %10 = getelementptr inbounds %struct._GSList, %struct._GSList* %9, i32 0, i32 0, !dbg !2840
  %11 = load i8*, i8** %10, align 8, !dbg !2840
  %12 = ptrtoint i8* %11 to i64, !dbg !2841
  %13 = trunc i64 %12 to i32, !dbg !2842
  call void @statusbar_signal_remove(i32 %13), !dbg !2843
  %14 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2844
  %15 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2845
  %16 = getelementptr inbounds %struct._GSList, %struct._GSList* %15, i32 0, i32 0, !dbg !2846
  %17 = load i8*, i8** %16, align 8, !dbg !2846
  %18 = call %struct._GSList* @g_slist_remove(%struct._GSList* %14, i8* %17), !dbg !2847
  %19 = bitcast %struct._GSList* %18 to i8*, !dbg !2847
  %20 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2848
  %21 = getelementptr inbounds %struct._GSList, %struct._GSList* %20, i32 0, i32 0, !dbg !2849
  store i8* %19, i8** %21, align 8, !dbg !2850
  br label %5, !dbg !2851, !llvm.loop !2853

; <label>:22:                                     ; preds = %5
  ret void, !dbg !2854
}

; Function Attrs: nounwind uwtable
define internal void @statusbar_item_signal_destroy(i8*, %struct._GSList*) #0 !dbg !2855 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._GSList*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2856, metadata !333), !dbg !2857
  store %struct._GSList* %1, %struct._GSList** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !2858, metadata !333), !dbg !2859
  %5 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2860
  call void @g_slist_free(%struct._GSList* %5), !dbg !2861
  ret void, !dbg !2862
}

declare void @statusbar_items_deinit() #2

declare void @statusbar_config_deinit() #2

; Function Attrs: nounwind uwtable
define internal void @statusbar_resize_items(%struct.STATUSBAR_REC*, i32) #0 !dbg !2863 {
  %3 = alloca %struct.STATUSBAR_REC*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.SBAR_ITEM_REC*, align 8
  store %struct.STATUSBAR_REC* %0, %struct.STATUSBAR_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.STATUSBAR_REC** %3, metadata !2864, metadata !333), !dbg !2865
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2866, metadata !333), !dbg !2867
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !2868, metadata !333), !dbg !2869
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !2870, metadata !333), !dbg !2871
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2872, metadata !333), !dbg !2873
  store %struct._GSList* null, %struct._GSList** %6, align 8, !dbg !2874
  store i32 0, i32* %7, align 4, !dbg !2875
  %9 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %3, align 8, !dbg !2876
  %10 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %9, i32 0, i32 3, !dbg !2878
  %11 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !2878
  store %struct._GSList* %11, %struct._GSList** %5, align 8, !dbg !2879
  br label %12, !dbg !2880

; <label>:12:                                     ; preds = %45, %2
  %13 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2881
  %14 = icmp ne %struct._GSList* %13, null, !dbg !2884
  br i1 %14, label %15, label %49, !dbg !2885

; <label>:15:                                     ; preds = %12
  call void @llvm.dbg.declare(metadata %struct.SBAR_ITEM_REC** %8, metadata !2886, metadata !333), !dbg !2888
  %16 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2889
  %17 = getelementptr inbounds %struct._GSList, %struct._GSList* %16, i32 0, i32 0, !dbg !2890
  %18 = load i8*, i8** %17, align 8, !dbg !2890
  %19 = bitcast i8* %18 to %struct.SBAR_ITEM_REC*, !dbg !2889
  store %struct.SBAR_ITEM_REC* %19, %struct.SBAR_ITEM_REC** %8, align 8, !dbg !2888
  %20 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %8, align 8, !dbg !2891
  %21 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %20, i32 0, i32 2, !dbg !2892
  %22 = bitcast {}** %21 to void (%struct.SBAR_ITEM_REC*, i32)**, !dbg !2892
  %23 = load void (%struct.SBAR_ITEM_REC*, i32)*, void (%struct.SBAR_ITEM_REC*, i32)** %22, align 8, !dbg !2892
  %24 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %8, align 8, !dbg !2893
  call void %23(%struct.SBAR_ITEM_REC* %24, i32 1), !dbg !2891
  %25 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %8, align 8, !dbg !2894
  %26 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %25, i32 0, i32 4, !dbg !2895
  %27 = load i32, i32* %26, align 4, !dbg !2895
  %28 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %8, align 8, !dbg !2896
  %29 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %28, i32 0, i32 6, !dbg !2897
  store i32 %27, i32* %29, align 4, !dbg !2898
  %30 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %8, align 8, !dbg !2899
  %31 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %30, i32 0, i32 6, !dbg !2901
  %32 = load i32, i32* %31, align 4, !dbg !2901
  %33 = icmp sgt i32 %32, 0, !dbg !2902
  br i1 %33, label %34, label %44, !dbg !2903

; <label>:34:                                     ; preds = %15
  %35 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %8, align 8, !dbg !2904
  %36 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %35, i32 0, i32 4, !dbg !2906
  %37 = load i32, i32* %36, align 4, !dbg !2906
  %38 = load i32, i32* %7, align 4, !dbg !2907
  %39 = add nsw i32 %38, %37, !dbg !2907
  store i32 %39, i32* %7, align 4, !dbg !2907
  %40 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !2908
  %41 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %8, align 8, !dbg !2909
  %42 = bitcast %struct.SBAR_ITEM_REC* %41 to i8*, !dbg !2909
  %43 = call %struct._GSList* @g_slist_insert_sorted(%struct._GSList* %40, i8* %42, i32 (i8*, i8*)* bitcast (i32 (%struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC*)* @sbar_item_cmp to i32 (i8*, i8*)*)), !dbg !2910
  store %struct._GSList* %43, %struct._GSList** %6, align 8, !dbg !2911
  br label %44, !dbg !2912

; <label>:44:                                     ; preds = %34, %15
  br label %45, !dbg !2913

; <label>:45:                                     ; preds = %44
  %46 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2914
  %47 = getelementptr inbounds %struct._GSList, %struct._GSList* %46, i32 0, i32 1, !dbg !2916
  %48 = load %struct._GSList*, %struct._GSList** %47, align 8, !dbg !2916
  store %struct._GSList* %48, %struct._GSList** %5, align 8, !dbg !2917
  br label %12, !dbg !2918, !llvm.loop !2919

; <label>:49:                                     ; preds = %12
  %50 = load i32, i32* %7, align 4, !dbg !2921
  %51 = load i32, i32* %4, align 4, !dbg !2923
  %52 = icmp sgt i32 %50, %51, !dbg !2924
  br i1 %52, label %53, label %66, !dbg !2925

; <label>:53:                                     ; preds = %49
  %54 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !2926
  %55 = load i32, i32* %7, align 4, !dbg !2928
  %56 = load i32, i32* %4, align 4, !dbg !2929
  %57 = call i32 @statusbar_shrink_to_min(%struct._GSList* %54, i32 %55, i32 %56), !dbg !2930
  store i32 %57, i32* %7, align 4, !dbg !2931
  %58 = load i32, i32* %7, align 4, !dbg !2932
  %59 = load i32, i32* %4, align 4, !dbg !2934
  %60 = icmp sgt i32 %58, %59, !dbg !2935
  br i1 %60, label %61, label %65, !dbg !2936

; <label>:61:                                     ; preds = %53
  %62 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !2937
  %63 = load i32, i32* %7, align 4, !dbg !2939
  %64 = load i32, i32* %4, align 4, !dbg !2940
  call void @statusbar_shrink_forced(%struct._GSList* %62, i32 %63, i32 %64), !dbg !2941
  br label %65, !dbg !2942

; <label>:65:                                     ; preds = %61, %53
  br label %66, !dbg !2943

; <label>:66:                                     ; preds = %65, %49
  %67 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !2944
  call void @g_slist_free(%struct._GSList* %67), !dbg !2945
  ret void, !dbg !2946
}

declare %struct._GSList* @g_slist_prepend(%struct._GSList*, i8*) #2

declare void @g_slist_free(%struct._GSList*) #2

declare %struct._GSList* @g_slist_insert_sorted(%struct._GSList*, i8*, i32 (i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @sbar_item_cmp(%struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC*) #0 !dbg !2947 {
  %3 = alloca %struct.SBAR_ITEM_REC*, align 8
  %4 = alloca %struct.SBAR_ITEM_REC*, align 8
  store %struct.SBAR_ITEM_REC* %0, %struct.SBAR_ITEM_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.SBAR_ITEM_REC** %3, metadata !2950, metadata !333), !dbg !2951
  store %struct.SBAR_ITEM_REC* %1, %struct.SBAR_ITEM_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.SBAR_ITEM_REC** %4, metadata !2952, metadata !333), !dbg !2953
  %5 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %3, align 8, !dbg !2954
  %6 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %5, i32 0, i32 1, !dbg !2955
  %7 = load %struct.SBAR_ITEM_CONFIG_REC*, %struct.SBAR_ITEM_CONFIG_REC** %6, align 8, !dbg !2955
  %8 = getelementptr inbounds %struct.SBAR_ITEM_CONFIG_REC, %struct.SBAR_ITEM_CONFIG_REC* %7, i32 0, i32 2, !dbg !2956
  %9 = load i32, i32* %8, align 8, !dbg !2956
  %10 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %4, align 8, !dbg !2957
  %11 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %10, i32 0, i32 1, !dbg !2958
  %12 = load %struct.SBAR_ITEM_CONFIG_REC*, %struct.SBAR_ITEM_CONFIG_REC** %11, align 8, !dbg !2958
  %13 = getelementptr inbounds %struct.SBAR_ITEM_CONFIG_REC, %struct.SBAR_ITEM_CONFIG_REC* %12, i32 0, i32 2, !dbg !2959
  %14 = load i32, i32* %13, align 8, !dbg !2959
  %15 = icmp eq i32 %9, %14, !dbg !2960
  br i1 %15, label %16, label %17, !dbg !2954

; <label>:16:                                     ; preds = %2
  br label %30, !dbg !2961

; <label>:17:                                     ; preds = %2
  %18 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %3, align 8, !dbg !2963
  %19 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %18, i32 0, i32 1, !dbg !2964
  %20 = load %struct.SBAR_ITEM_CONFIG_REC*, %struct.SBAR_ITEM_CONFIG_REC** %19, align 8, !dbg !2964
  %21 = getelementptr inbounds %struct.SBAR_ITEM_CONFIG_REC, %struct.SBAR_ITEM_CONFIG_REC* %20, i32 0, i32 2, !dbg !2965
  %22 = load i32, i32* %21, align 8, !dbg !2965
  %23 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %4, align 8, !dbg !2966
  %24 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %23, i32 0, i32 1, !dbg !2967
  %25 = load %struct.SBAR_ITEM_CONFIG_REC*, %struct.SBAR_ITEM_CONFIG_REC** %24, align 8, !dbg !2967
  %26 = getelementptr inbounds %struct.SBAR_ITEM_CONFIG_REC, %struct.SBAR_ITEM_CONFIG_REC* %25, i32 0, i32 2, !dbg !2968
  %27 = load i32, i32* %26, align 8, !dbg !2968
  %28 = icmp slt i32 %22, %27, !dbg !2969
  %29 = select i1 %28, i32 -1, i32 1, !dbg !2963
  br label %30, !dbg !2970

; <label>:30:                                     ; preds = %17, %16
  %31 = phi i32 [ 0, %16 ], [ %29, %17 ], !dbg !2972
  ret i32 %31, !dbg !2974
}

; Function Attrs: nounwind uwtable
define internal i32 @statusbar_shrink_to_min(%struct._GSList*, i32, i32) #0 !dbg !2975 {
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct._GSList*, align 8
  %8 = alloca %struct.SBAR_ITEM_REC*, align 8
  store %struct._GSList* %0, %struct._GSList** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !2978, metadata !333), !dbg !2979
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2980, metadata !333), !dbg !2981
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2982, metadata !333), !dbg !2983
  call void @llvm.dbg.declare(metadata %struct._GSList** %7, metadata !2984, metadata !333), !dbg !2985
  %9 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2986
  store %struct._GSList* %9, %struct._GSList** %7, align 8, !dbg !2988
  br label %10, !dbg !2989

; <label>:10:                                     ; preds = %52, %3
  %11 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !2990
  %12 = icmp ne %struct._GSList* %11, null, !dbg !2993
  br i1 %12, label %13, label %56, !dbg !2994

; <label>:13:                                     ; preds = %10
  call void @llvm.dbg.declare(metadata %struct.SBAR_ITEM_REC** %8, metadata !2995, metadata !333), !dbg !2997
  %14 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !2998
  %15 = getelementptr inbounds %struct._GSList, %struct._GSList* %14, i32 0, i32 0, !dbg !2999
  %16 = load i8*, i8** %15, align 8, !dbg !2999
  %17 = bitcast i8* %16 to %struct.SBAR_ITEM_REC*, !dbg !2998
  store %struct.SBAR_ITEM_REC* %17, %struct.SBAR_ITEM_REC** %8, align 8, !dbg !2997
  %18 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %8, align 8, !dbg !3000
  %19 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %18, i32 0, i32 4, !dbg !3001
  %20 = load i32, i32* %19, align 4, !dbg !3001
  %21 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %8, align 8, !dbg !3002
  %22 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %21, i32 0, i32 3, !dbg !3003
  %23 = load i32, i32* %22, align 8, !dbg !3003
  %24 = sub nsw i32 %20, %23, !dbg !3004
  %25 = load i32, i32* %5, align 4, !dbg !3005
  %26 = sub nsw i32 %25, %24, !dbg !3005
  store i32 %26, i32* %5, align 4, !dbg !3005
  %27 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %8, align 8, !dbg !3006
  %28 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %27, i32 0, i32 3, !dbg !3007
  %29 = load i32, i32* %28, align 8, !dbg !3007
  %30 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %8, align 8, !dbg !3008
  %31 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %30, i32 0, i32 6, !dbg !3009
  store i32 %29, i32* %31, align 4, !dbg !3010
  %32 = load i32, i32* %5, align 4, !dbg !3011
  %33 = load i32, i32* %6, align 4, !dbg !3013
  %34 = icmp sle i32 %32, %33, !dbg !3014
  br i1 %34, label %35, label %43, !dbg !3015

; <label>:35:                                     ; preds = %13
  %36 = load i32, i32* %6, align 4, !dbg !3016
  %37 = load i32, i32* %5, align 4, !dbg !3018
  %38 = sub nsw i32 %36, %37, !dbg !3019
  %39 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %8, align 8, !dbg !3020
  %40 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %39, i32 0, i32 6, !dbg !3021
  %41 = load i32, i32* %40, align 4, !dbg !3022
  %42 = add nsw i32 %41, %38, !dbg !3022
  store i32 %42, i32* %40, align 4, !dbg !3022
  br label %56, !dbg !3023

; <label>:43:                                     ; preds = %13
  %44 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %8, align 8, !dbg !3024
  %45 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %44, i32 0, i32 6, !dbg !3026
  %46 = load i32, i32* %45, align 4, !dbg !3026
  %47 = icmp eq i32 %46, 0, !dbg !3027
  br i1 %47, label %48, label %51, !dbg !3028

; <label>:48:                                     ; preds = %43
  %49 = load i32, i32* %5, align 4, !dbg !3029
  %50 = add nsw i32 %49, -1, !dbg !3029
  store i32 %50, i32* %5, align 4, !dbg !3029
  br label %51, !dbg !3031

; <label>:51:                                     ; preds = %48, %43
  br label %52, !dbg !3032

; <label>:52:                                     ; preds = %51
  %53 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !3033
  %54 = getelementptr inbounds %struct._GSList, %struct._GSList* %53, i32 0, i32 1, !dbg !3035
  %55 = load %struct._GSList*, %struct._GSList** %54, align 8, !dbg !3035
  store %struct._GSList* %55, %struct._GSList** %7, align 8, !dbg !3036
  br label %10, !dbg !3037, !llvm.loop !3038

; <label>:56:                                     ; preds = %35, %10
  %57 = load i32, i32* %5, align 4, !dbg !3040
  ret i32 %57, !dbg !3041
}

; Function Attrs: nounwind uwtable
define internal void @statusbar_shrink_forced(%struct._GSList*, i32, i32) #0 !dbg !3042 {
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct._GSList*, align 8
  %8 = alloca %struct.SBAR_ITEM_REC*, align 8
  store %struct._GSList* %0, %struct._GSList** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !3045, metadata !333), !dbg !3046
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3047, metadata !333), !dbg !3048
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3049, metadata !333), !dbg !3050
  call void @llvm.dbg.declare(metadata %struct._GSList** %7, metadata !3051, metadata !333), !dbg !3052
  %9 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !3053
  store %struct._GSList* %9, %struct._GSList** %7, align 8, !dbg !3055
  br label %10, !dbg !3056

; <label>:10:                                     ; preds = %42, %3
  %11 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !3057
  %12 = icmp ne %struct._GSList* %11, null, !dbg !3060
  br i1 %12, label %13, label %46, !dbg !3061

; <label>:13:                                     ; preds = %10
  call void @llvm.dbg.declare(metadata %struct.SBAR_ITEM_REC** %8, metadata !3062, metadata !333), !dbg !3064
  %14 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !3065
  %15 = getelementptr inbounds %struct._GSList, %struct._GSList* %14, i32 0, i32 0, !dbg !3066
  %16 = load i8*, i8** %15, align 8, !dbg !3066
  %17 = bitcast i8* %16 to %struct.SBAR_ITEM_REC*, !dbg !3065
  store %struct.SBAR_ITEM_REC* %17, %struct.SBAR_ITEM_REC** %8, align 8, !dbg !3064
  %18 = load i32, i32* %5, align 4, !dbg !3067
  %19 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %8, align 8, !dbg !3069
  %20 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %19, i32 0, i32 6, !dbg !3070
  %21 = load i32, i32* %20, align 4, !dbg !3070
  %22 = sub nsw i32 %18, %21, !dbg !3071
  %23 = load i32, i32* %6, align 4, !dbg !3072
  %24 = icmp sgt i32 %22, %23, !dbg !3073
  br i1 %24, label %25, label %33, !dbg !3074

; <label>:25:                                     ; preds = %13
  %26 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %8, align 8, !dbg !3075
  %27 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %26, i32 0, i32 6, !dbg !3077
  %28 = load i32, i32* %27, align 4, !dbg !3077
  %29 = load i32, i32* %5, align 4, !dbg !3078
  %30 = sub nsw i32 %29, %28, !dbg !3078
  store i32 %30, i32* %5, align 4, !dbg !3078
  %31 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %8, align 8, !dbg !3079
  %32 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %31, i32 0, i32 6, !dbg !3080
  store i32 0, i32* %32, align 4, !dbg !3081
  br label %41, !dbg !3082

; <label>:33:                                     ; preds = %13
  %34 = load i32, i32* %5, align 4, !dbg !3083
  %35 = load i32, i32* %6, align 4, !dbg !3085
  %36 = sub nsw i32 %34, %35, !dbg !3086
  %37 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %8, align 8, !dbg !3087
  %38 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %37, i32 0, i32 6, !dbg !3088
  %39 = load i32, i32* %38, align 4, !dbg !3089
  %40 = sub nsw i32 %39, %36, !dbg !3089
  store i32 %40, i32* %38, align 4, !dbg !3089
  br label %46, !dbg !3090

; <label>:41:                                     ; preds = %25
  br label %42, !dbg !3091

; <label>:42:                                     ; preds = %41
  %43 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !3092
  %44 = getelementptr inbounds %struct._GSList, %struct._GSList* %43, i32 0, i32 1, !dbg !3094
  %45 = load %struct._GSList*, %struct._GSList** %44, align 8, !dbg !3094
  store %struct._GSList* %45, %struct._GSList** %7, align 8, !dbg !3095
  br label %10, !dbg !3096, !llvm.loop !3097

; <label>:46:                                     ; preds = %33, %10
  ret void, !dbg !3099
}

; Function Attrs: nounwind uwtable
define internal void @mainwindow_recalc_ypos(%struct.MAIN_WINDOW_REC*, i32) #0 !dbg !3100 {
  %3 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca %struct.STATUSBAR_REC*, align 8
  store %struct.MAIN_WINDOW_REC* %0, %struct.MAIN_WINDOW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %3, metadata !3103, metadata !333), !dbg !3104
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3105, metadata !333), !dbg !3106
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !3107, metadata !333), !dbg !3108
  %7 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !3109
  %8 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %7, i32 0, i32 9, !dbg !3111
  %9 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !3111
  store %struct._GSList* %9, %struct._GSList** %5, align 8, !dbg !3112
  br label %10, !dbg !3113

; <label>:10:                                     ; preds = %28, %2
  %11 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !3114
  %12 = icmp ne %struct._GSList* %11, null, !dbg !3117
  br i1 %12, label %13, label %32, !dbg !3118

; <label>:13:                                     ; preds = %10
  call void @llvm.dbg.declare(metadata %struct.STATUSBAR_REC** %6, metadata !3119, metadata !333), !dbg !3121
  %14 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !3122
  %15 = getelementptr inbounds %struct._GSList, %struct._GSList* %14, i32 0, i32 0, !dbg !3123
  %16 = load i8*, i8** %15, align 8, !dbg !3123
  %17 = bitcast i8* %16 to %struct.STATUSBAR_REC*, !dbg !3122
  store %struct.STATUSBAR_REC* %17, %struct.STATUSBAR_REC** %6, align 8, !dbg !3121
  %18 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %6, align 8, !dbg !3124
  %19 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %18, i32 0, i32 1, !dbg !3126
  %20 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %19, align 8, !dbg !3126
  %21 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %20, i32 0, i32 2, !dbg !3127
  %22 = load i32, i32* %21, align 4, !dbg !3127
  %23 = load i32, i32* %4, align 4, !dbg !3128
  %24 = icmp eq i32 %22, %23, !dbg !3129
  br i1 %24, label %25, label %27, !dbg !3130

; <label>:25:                                     ; preds = %13
  %26 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %6, align 8, !dbg !3131
  call void @statusbars_recalc_ypos(%struct.STATUSBAR_REC* %26), !dbg !3133
  br label %32, !dbg !3134

; <label>:27:                                     ; preds = %13
  br label %28, !dbg !3135

; <label>:28:                                     ; preds = %27
  %29 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !3136
  %30 = getelementptr inbounds %struct._GSList, %struct._GSList* %29, i32 0, i32 1, !dbg !3138
  %31 = load %struct._GSList*, %struct._GSList** %30, align 8, !dbg !3138
  store %struct._GSList* %31, %struct._GSList** %5, align 8, !dbg !3139
  br label %10, !dbg !3140, !llvm.loop !3141

; <label>:32:                                     ; preds = %25, %10
  ret void, !dbg !3143
}

; Function Attrs: nounwind uwtable
define internal i32 @sbar_cmp_position(%struct.STATUSBAR_REC*, %struct.STATUSBAR_REC*) #0 !dbg !3144 {
  %3 = alloca %struct.STATUSBAR_REC*, align 8
  %4 = alloca %struct.STATUSBAR_REC*, align 8
  store %struct.STATUSBAR_REC* %0, %struct.STATUSBAR_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.STATUSBAR_REC** %3, metadata !3147, metadata !333), !dbg !3148
  store %struct.STATUSBAR_REC* %1, %struct.STATUSBAR_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.STATUSBAR_REC** %4, metadata !3149, metadata !333), !dbg !3150
  %5 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %3, align 8, !dbg !3151
  %6 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %5, i32 0, i32 1, !dbg !3152
  %7 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %6, align 8, !dbg !3152
  %8 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %7, i32 0, i32 3, !dbg !3153
  %9 = load i32, i32* %8, align 8, !dbg !3153
  %10 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %4, align 8, !dbg !3154
  %11 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %10, i32 0, i32 1, !dbg !3155
  %12 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %11, align 8, !dbg !3155
  %13 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %12, i32 0, i32 3, !dbg !3156
  %14 = load i32, i32* %13, align 8, !dbg !3156
  %15 = icmp slt i32 %9, %14, !dbg !3157
  %16 = select i1 %15, i32 -1, i32 1, !dbg !3151
  ret i32 %16, !dbg !3158
}

declare i32 @g_slist_length(%struct._GSList*) #2

declare %struct._GString* @g_string_new(i8*) #2

declare void @g_string_append_printf(%struct._GString*, i8*, ...) #2

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #2

declare %struct._GString* @g_string_insert_c(%struct._GString*, i64, i8 signext) #2

declare i32* @special_vars_get_signals(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @statusbar_update_item() #0 !dbg !3159 {
  %1 = alloca %struct._GSList*, align 8
  %2 = alloca %struct.SBAR_ITEM_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %1, metadata !3160, metadata !333), !dbg !3161
  %3 = load %struct._GHashTable*, %struct._GHashTable** @sbar_signal_items, align 8, !dbg !3162
  %4 = call i32 @signal_get_emitted_id(), !dbg !3163
  %5 = sext i32 %4 to i64, !dbg !3164
  %6 = inttoptr i64 %5 to i8*, !dbg !3165
  %7 = call i8* @g_hash_table_lookup(%struct._GHashTable* %3, i8* %6), !dbg !3166
  %8 = bitcast i8* %7 to %struct._GSList*, !dbg !3166
  store %struct._GSList* %8, %struct._GSList** %1, align 8, !dbg !3167
  br label %9, !dbg !3168

; <label>:9:                                      ; preds = %12, %0
  %10 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !3169
  %11 = icmp ne %struct._GSList* %10, null, !dbg !3171
  br i1 %11, label %12, label %21, !dbg !3172

; <label>:12:                                     ; preds = %9
  call void @llvm.dbg.declare(metadata %struct.SBAR_ITEM_REC** %2, metadata !3173, metadata !333), !dbg !3175
  %13 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !3176
  %14 = getelementptr inbounds %struct._GSList, %struct._GSList* %13, i32 0, i32 0, !dbg !3177
  %15 = load i8*, i8** %14, align 8, !dbg !3177
  %16 = bitcast i8* %15 to %struct.SBAR_ITEM_REC*, !dbg !3176
  store %struct.SBAR_ITEM_REC* %16, %struct.SBAR_ITEM_REC** %2, align 8, !dbg !3175
  %17 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %2, align 8, !dbg !3178
  call void @statusbar_item_redraw(%struct.SBAR_ITEM_REC* %17), !dbg !3179
  %18 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !3180
  %19 = getelementptr inbounds %struct._GSList, %struct._GSList* %18, i32 0, i32 1, !dbg !3181
  %20 = load %struct._GSList*, %struct._GSList** %19, align 8, !dbg !3181
  store %struct._GSList* %20, %struct._GSList** %1, align 8, !dbg !3182
  br label %9, !dbg !3183, !llvm.loop !3185

; <label>:21:                                     ; preds = %9
  ret void, !dbg !3186
}

; Function Attrs: nounwind uwtable
define internal void @statusbar_update_server(%struct._SERVER_REC*) #0 !dbg !3187 {
  %2 = alloca %struct._SERVER_REC*, align 8
  %3 = alloca %struct._SERVER_REC*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct.SBAR_ITEM_REC*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %2, metadata !3190, metadata !333), !dbg !3191
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %3, metadata !3192, metadata !333), !dbg !3193
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !3194, metadata !333), !dbg !3195
  %6 = load %struct._GHashTable*, %struct._GHashTable** @sbar_signal_items, align 8, !dbg !3196
  %7 = call i32 @signal_get_emitted_id(), !dbg !3197
  %8 = sext i32 %7 to i64, !dbg !3198
  %9 = inttoptr i64 %8 to i8*, !dbg !3199
  %10 = call i8* @g_hash_table_lookup(%struct._GHashTable* %6, i8* %9), !dbg !3200
  %11 = bitcast i8* %10 to %struct._GSList*, !dbg !3200
  store %struct._GSList* %11, %struct._GSList** %4, align 8, !dbg !3201
  br label %12, !dbg !3202

; <label>:12:                                     ; preds = %47, %1
  %13 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !3203
  %14 = icmp ne %struct._GSList* %13, null, !dbg !3205
  br i1 %14, label %15, label %51, !dbg !3206

; <label>:15:                                     ; preds = %12
  call void @llvm.dbg.declare(metadata %struct.SBAR_ITEM_REC** %5, metadata !3207, metadata !333), !dbg !3209
  %16 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !3210
  %17 = getelementptr inbounds %struct._GSList, %struct._GSList* %16, i32 0, i32 0, !dbg !3211
  %18 = load i8*, i8** %17, align 8, !dbg !3211
  %19 = bitcast i8* %18 to %struct.SBAR_ITEM_REC*, !dbg !3210
  store %struct.SBAR_ITEM_REC* %19, %struct.SBAR_ITEM_REC** %5, align 8, !dbg !3209
  %20 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %5, align 8, !dbg !3212
  %21 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %20, i32 0, i32 0, !dbg !3213
  %22 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %21, align 8, !dbg !3213
  %23 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %22, i32 0, i32 2, !dbg !3214
  %24 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %23, align 8, !dbg !3214
  %25 = icmp ne %struct.MAIN_WINDOW_REC* %24, null, !dbg !3215
  br i1 %25, label %26, label %36, !dbg !3212

; <label>:26:                                     ; preds = %15
  %27 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %5, align 8, !dbg !3216
  %28 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %27, i32 0, i32 0, !dbg !3217
  %29 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %28, align 8, !dbg !3217
  %30 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %29, i32 0, i32 2, !dbg !3218
  %31 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %30, align 8, !dbg !3218
  %32 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %31, i32 0, i32 0, !dbg !3219
  %33 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %32, align 8, !dbg !3219
  %34 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %33, i32 0, i32 6, !dbg !3220
  %35 = load %struct._SERVER_REC*, %struct._SERVER_REC** %34, align 8, !dbg !3220
  br label %40, !dbg !3221

; <label>:36:                                     ; preds = %15
  %37 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !3223
  %38 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %37, i32 0, i32 6, !dbg !3224
  %39 = load %struct._SERVER_REC*, %struct._SERVER_REC** %38, align 8, !dbg !3224
  br label %40, !dbg !3225

; <label>:40:                                     ; preds = %36, %26
  %41 = phi %struct._SERVER_REC* [ %35, %26 ], [ %39, %36 ], !dbg !3227
  store %struct._SERVER_REC* %41, %struct._SERVER_REC** %3, align 8, !dbg !3229
  %42 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !3230
  %43 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !3232
  %44 = icmp eq %struct._SERVER_REC* %42, %43, !dbg !3233
  br i1 %44, label %45, label %47, !dbg !3234

; <label>:45:                                     ; preds = %40
  %46 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %5, align 8, !dbg !3235
  call void @statusbar_item_redraw(%struct.SBAR_ITEM_REC* %46), !dbg !3236
  br label %47, !dbg !3236

; <label>:47:                                     ; preds = %45, %40
  %48 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !3237
  %49 = getelementptr inbounds %struct._GSList, %struct._GSList* %48, i32 0, i32 1, !dbg !3238
  %50 = load %struct._GSList*, %struct._GSList** %49, align 8, !dbg !3238
  store %struct._GSList* %50, %struct._GSList** %4, align 8, !dbg !3239
  br label %12, !dbg !3240, !llvm.loop !3242

; <label>:51:                                     ; preds = %12
  ret void, !dbg !3243
}

; Function Attrs: nounwind uwtable
define internal void @statusbar_update_window(%struct._WINDOW_REC*) #0 !dbg !3244 {
  %2 = alloca %struct._WINDOW_REC*, align 8
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct.SBAR_ITEM_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %2, metadata !3245, metadata !333), !dbg !3246
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !3247, metadata !333), !dbg !3248
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !3249, metadata !333), !dbg !3250
  %6 = load %struct._GHashTable*, %struct._GHashTable** @sbar_signal_items, align 8, !dbg !3251
  %7 = call i32 @signal_get_emitted_id(), !dbg !3252
  %8 = sext i32 %7 to i64, !dbg !3253
  %9 = inttoptr i64 %8 to i8*, !dbg !3254
  %10 = call i8* @g_hash_table_lookup(%struct._GHashTable* %6, i8* %9), !dbg !3255
  %11 = bitcast i8* %10 to %struct._GSList*, !dbg !3255
  store %struct._GSList* %11, %struct._GSList** %4, align 8, !dbg !3256
  br label %12, !dbg !3257

; <label>:12:                                     ; preds = %43, %1
  %13 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !3258
  %14 = icmp ne %struct._GSList* %13, null, !dbg !3260
  br i1 %14, label %15, label %47, !dbg !3261

; <label>:15:                                     ; preds = %12
  call void @llvm.dbg.declare(metadata %struct.SBAR_ITEM_REC** %5, metadata !3262, metadata !333), !dbg !3264
  %16 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !3265
  %17 = getelementptr inbounds %struct._GSList, %struct._GSList* %16, i32 0, i32 0, !dbg !3266
  %18 = load i8*, i8** %17, align 8, !dbg !3266
  %19 = bitcast i8* %18 to %struct.SBAR_ITEM_REC*, !dbg !3265
  store %struct.SBAR_ITEM_REC* %19, %struct.SBAR_ITEM_REC** %5, align 8, !dbg !3264
  %20 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %5, align 8, !dbg !3267
  %21 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %20, i32 0, i32 0, !dbg !3268
  %22 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %21, align 8, !dbg !3268
  %23 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %22, i32 0, i32 2, !dbg !3269
  %24 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %23, align 8, !dbg !3269
  %25 = icmp ne %struct.MAIN_WINDOW_REC* %24, null, !dbg !3270
  br i1 %25, label %26, label %34, !dbg !3267

; <label>:26:                                     ; preds = %15
  %27 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %5, align 8, !dbg !3271
  %28 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %27, i32 0, i32 0, !dbg !3272
  %29 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %28, align 8, !dbg !3272
  %30 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %29, i32 0, i32 2, !dbg !3273
  %31 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %30, align 8, !dbg !3273
  %32 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %31, i32 0, i32 0, !dbg !3274
  %33 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %32, align 8, !dbg !3274
  br label %36, !dbg !3275

; <label>:34:                                     ; preds = %15
  %35 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !3277
  br label %36, !dbg !3278

; <label>:36:                                     ; preds = %34, %26
  %37 = phi %struct._WINDOW_REC* [ %33, %26 ], [ %35, %34 ], !dbg !3280
  store %struct._WINDOW_REC* %37, %struct._WINDOW_REC** %3, align 8, !dbg !3282
  %38 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !3283
  %39 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !3285
  %40 = icmp eq %struct._WINDOW_REC* %38, %39, !dbg !3286
  br i1 %40, label %41, label %43, !dbg !3287

; <label>:41:                                     ; preds = %36
  %42 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %5, align 8, !dbg !3288
  call void @statusbar_item_redraw(%struct.SBAR_ITEM_REC* %42), !dbg !3289
  br label %43, !dbg !3289

; <label>:43:                                     ; preds = %41, %36
  %44 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !3290
  %45 = getelementptr inbounds %struct._GSList, %struct._GSList* %44, i32 0, i32 1, !dbg !3291
  %46 = load %struct._GSList*, %struct._GSList** %45, align 8, !dbg !3291
  store %struct._GSList* %46, %struct._GSList** %4, align 8, !dbg !3292
  br label %12, !dbg !3293, !llvm.loop !3295

; <label>:47:                                     ; preds = %12
  ret void, !dbg !3296
}

; Function Attrs: nounwind uwtable
define internal void @statusbar_update_window_item(%struct._WI_ITEM_REC*) #0 !dbg !3297 {
  %2 = alloca %struct._WI_ITEM_REC*, align 8
  %3 = alloca %struct._WI_ITEM_REC*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct.SBAR_ITEM_REC*, align 8
  store %struct._WI_ITEM_REC* %0, %struct._WI_ITEM_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %2, metadata !3298, metadata !333), !dbg !3299
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %3, metadata !3300, metadata !333), !dbg !3301
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !3302, metadata !333), !dbg !3303
  %6 = load %struct._GHashTable*, %struct._GHashTable** @sbar_signal_items, align 8, !dbg !3304
  %7 = call i32 @signal_get_emitted_id(), !dbg !3305
  %8 = sext i32 %7 to i64, !dbg !3306
  %9 = inttoptr i64 %8 to i8*, !dbg !3307
  %10 = call i8* @g_hash_table_lookup(%struct._GHashTable* %6, i8* %9), !dbg !3308
  %11 = bitcast i8* %10 to %struct._GSList*, !dbg !3308
  store %struct._GSList* %11, %struct._GSList** %4, align 8, !dbg !3309
  br label %12, !dbg !3310

; <label>:12:                                     ; preds = %47, %1
  %13 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !3311
  %14 = icmp ne %struct._GSList* %13, null, !dbg !3313
  br i1 %14, label %15, label %51, !dbg !3314

; <label>:15:                                     ; preds = %12
  call void @llvm.dbg.declare(metadata %struct.SBAR_ITEM_REC** %5, metadata !3315, metadata !333), !dbg !3317
  %16 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !3318
  %17 = getelementptr inbounds %struct._GSList, %struct._GSList* %16, i32 0, i32 0, !dbg !3319
  %18 = load i8*, i8** %17, align 8, !dbg !3319
  %19 = bitcast i8* %18 to %struct.SBAR_ITEM_REC*, !dbg !3318
  store %struct.SBAR_ITEM_REC* %19, %struct.SBAR_ITEM_REC** %5, align 8, !dbg !3317
  %20 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %5, align 8, !dbg !3320
  %21 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %20, i32 0, i32 0, !dbg !3321
  %22 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %21, align 8, !dbg !3321
  %23 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %22, i32 0, i32 2, !dbg !3322
  %24 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %23, align 8, !dbg !3322
  %25 = icmp ne %struct.MAIN_WINDOW_REC* %24, null, !dbg !3323
  br i1 %25, label %26, label %36, !dbg !3320

; <label>:26:                                     ; preds = %15
  %27 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %5, align 8, !dbg !3324
  %28 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %27, i32 0, i32 0, !dbg !3325
  %29 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %28, align 8, !dbg !3325
  %30 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %29, i32 0, i32 2, !dbg !3326
  %31 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %30, align 8, !dbg !3326
  %32 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %31, i32 0, i32 0, !dbg !3327
  %33 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %32, align 8, !dbg !3327
  %34 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %33, i32 0, i32 5, !dbg !3328
  %35 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %34, align 8, !dbg !3328
  br label %40, !dbg !3329

; <label>:36:                                     ; preds = %15
  %37 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !3331
  %38 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %37, i32 0, i32 5, !dbg !3332
  %39 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %38, align 8, !dbg !3332
  br label %40, !dbg !3333

; <label>:40:                                     ; preds = %36, %26
  %41 = phi %struct._WI_ITEM_REC* [ %35, %26 ], [ %39, %36 ], !dbg !3335
  store %struct._WI_ITEM_REC* %41, %struct._WI_ITEM_REC** %3, align 8, !dbg !3337
  %42 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %3, align 8, !dbg !3338
  %43 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %2, align 8, !dbg !3340
  %44 = icmp eq %struct._WI_ITEM_REC* %42, %43, !dbg !3341
  br i1 %44, label %45, label %47, !dbg !3342

; <label>:45:                                     ; preds = %40
  %46 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %5, align 8, !dbg !3343
  call void @statusbar_item_redraw(%struct.SBAR_ITEM_REC* %46), !dbg !3344
  br label %47, !dbg !3344

; <label>:47:                                     ; preds = %45, %40
  %48 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !3345
  %49 = getelementptr inbounds %struct._GSList, %struct._GSList* %48, i32 0, i32 1, !dbg !3346
  %50 = load %struct._GSList*, %struct._GSList** %49, align 8, !dbg !3346
  store %struct._GSList* %50, %struct._GSList** %4, align 8, !dbg !3347
  br label %12, !dbg !3348, !llvm.loop !3350

; <label>:51:                                     ; preds = %12
  ret void, !dbg !3351
}

declare void @signal_add_full_id(i8*, i32, i32, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare %struct._GSList* @g_slist_find(%struct._GSList*, i8*) #2

declare i32 @signal_get_emitted_id() #2

; Function Attrs: nounwind uwtable
define internal void @statusbar_signal_remove(i32) #0 !dbg !3352 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3355, metadata !333), !dbg !3356
  %3 = load i32, i32* %2, align 4, !dbg !3357
  call void @signal_remove_id(i32 %3, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @statusbar_update_item to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3358
  %4 = load i32, i32* %2, align 4, !dbg !3359
  call void @signal_remove_id(i32 %4, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*)* @statusbar_update_server to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3360
  %5 = load i32, i32* %2, align 4, !dbg !3361
  call void @signal_remove_id(i32 %5, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*)* @statusbar_update_window to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3362
  %6 = load i32, i32* %2, align 4, !dbg !3363
  call void @signal_remove_id(i32 %6, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WI_ITEM_REC*)* @statusbar_update_window_item to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3364
  ret void, !dbg !3365
}

declare void @signal_remove_id(i32, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct.MAIN_WINDOW_BORDER_REC* @set_border_info(%struct.STATUSBAR_REC*) #0 !dbg !3366 {
  %2 = alloca %struct.STATUSBAR_REC*, align 8
  %3 = alloca %struct.MAIN_WINDOW_BORDER_REC*, align 8
  %4 = alloca %struct.MAIN_WINDOW_BORDER_REC*, align 8
  store %struct.STATUSBAR_REC* %0, %struct.STATUSBAR_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.STATUSBAR_REC** %2, metadata !3369, metadata !333), !dbg !3370
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_BORDER_REC** %3, metadata !3371, metadata !333), !dbg !3372
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_BORDER_REC** %4, metadata !3373, metadata !333), !dbg !3374
  %5 = load %struct.MAIN_WINDOW_BORDER_REC*, %struct.MAIN_WINDOW_BORDER_REC** @clrtoeol_info, align 8, !dbg !3375
  store %struct.MAIN_WINDOW_BORDER_REC* %5, %struct.MAIN_WINDOW_BORDER_REC** %3, align 8, !dbg !3376
  %6 = call noalias i8* @g_malloc0_n(i64 1, i64 16), !dbg !3377
  %7 = bitcast i8* %6 to %struct.MAIN_WINDOW_BORDER_REC*, !dbg !3378
  store %struct.MAIN_WINDOW_BORDER_REC* %7, %struct.MAIN_WINDOW_BORDER_REC** %4, align 8, !dbg !3379
  %8 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !3380
  %9 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %8, i32 0, i32 2, !dbg !3381
  %10 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %9, align 8, !dbg !3381
  %11 = icmp ne %struct.MAIN_WINDOW_REC* %10, null, !dbg !3382
  br i1 %11, label %12, label %18, !dbg !3380

; <label>:12:                                     ; preds = %1
  %13 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !3383
  %14 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %13, i32 0, i32 2, !dbg !3385
  %15 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %14, align 8, !dbg !3385
  %16 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %15, i32 0, i32 1, !dbg !3386
  %17 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %16, align 8, !dbg !3386
  br label %19, !dbg !3387

; <label>:18:                                     ; preds = %1
  br label %19, !dbg !3388

; <label>:19:                                     ; preds = %18, %12
  %20 = phi %struct._TERM_WINDOW* [ %17, %12 ], [ null, %18 ], !dbg !3390
  %21 = load %struct.MAIN_WINDOW_BORDER_REC*, %struct.MAIN_WINDOW_BORDER_REC** %4, align 8, !dbg !3392
  %22 = getelementptr inbounds %struct.MAIN_WINDOW_BORDER_REC, %struct.MAIN_WINDOW_BORDER_REC* %21, i32 0, i32 1, !dbg !3393
  store %struct._TERM_WINDOW* %20, %struct._TERM_WINDOW** %22, align 8, !dbg !3394
  %23 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %2, align 8, !dbg !3395
  %24 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %23, i32 0, i32 4, !dbg !3396
  %25 = load i8*, i8** %24, align 8, !dbg !3396
  %26 = load %struct.MAIN_WINDOW_BORDER_REC*, %struct.MAIN_WINDOW_BORDER_REC** %4, align 8, !dbg !3397
  %27 = getelementptr inbounds %struct.MAIN_WINDOW_BORDER_REC, %struct.MAIN_WINDOW_BORDER_REC* %26, i32 0, i32 0, !dbg !3398
  store i8* %25, i8** %27, align 8, !dbg !3399
  %28 = load %struct.MAIN_WINDOW_BORDER_REC*, %struct.MAIN_WINDOW_BORDER_REC** %4, align 8, !dbg !3400
  store %struct.MAIN_WINDOW_BORDER_REC* %28, %struct.MAIN_WINDOW_BORDER_REC** @clrtoeol_info, align 8, !dbg !3401
  %29 = load %struct.MAIN_WINDOW_BORDER_REC*, %struct.MAIN_WINDOW_BORDER_REC** %3, align 8, !dbg !3402
  ret %struct.MAIN_WINDOW_BORDER_REC* %29, !dbg !3403
}

; Function Attrs: nounwind uwtable
define internal void @restore_border_info(%struct.MAIN_WINDOW_BORDER_REC*) #0 !dbg !3404 {
  %2 = alloca %struct.MAIN_WINDOW_BORDER_REC*, align 8
  %3 = alloca %struct.MAIN_WINDOW_BORDER_REC*, align 8
  store %struct.MAIN_WINDOW_BORDER_REC* %0, %struct.MAIN_WINDOW_BORDER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_BORDER_REC** %2, metadata !3407, metadata !333), !dbg !3408
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_BORDER_REC** %3, metadata !3409, metadata !333), !dbg !3410
  %4 = load %struct.MAIN_WINDOW_BORDER_REC*, %struct.MAIN_WINDOW_BORDER_REC** @clrtoeol_info, align 8, !dbg !3411
  store %struct.MAIN_WINDOW_BORDER_REC* %4, %struct.MAIN_WINDOW_BORDER_REC** %3, align 8, !dbg !3412
  %5 = load %struct.MAIN_WINDOW_BORDER_REC*, %struct.MAIN_WINDOW_BORDER_REC** %2, align 8, !dbg !3413
  store %struct.MAIN_WINDOW_BORDER_REC* %5, %struct.MAIN_WINDOW_BORDER_REC** @clrtoeol_info, align 8, !dbg !3414
  %6 = load %struct.MAIN_WINDOW_BORDER_REC*, %struct.MAIN_WINDOW_BORDER_REC** %3, align 8, !dbg !3415
  %7 = bitcast %struct.MAIN_WINDOW_BORDER_REC* %6 to i8*, !dbg !3415
  call void @g_free(i8* %7), !dbg !3416
  ret void, !dbg !3417
}

; Function Attrs: nounwind uwtable
define internal void @statusbars_remove_unvisible(%struct.MAIN_WINDOW_REC*) #0 !dbg !3418 {
  %2 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct.STATUSBAR_REC*, align 8
  store %struct.MAIN_WINDOW_REC* %0, %struct.MAIN_WINDOW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %2, metadata !3419, metadata !333), !dbg !3420
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !3421, metadata !333), !dbg !3422
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !3423, metadata !333), !dbg !3424
  %6 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !3425
  %7 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %6, i32 0, i32 9, !dbg !3427
  %8 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !3427
  store %struct._GSList* %8, %struct._GSList** %3, align 8, !dbg !3428
  br label %9, !dbg !3429

; <label>:9:                                      ; preds = %51, %1
  %10 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !3430
  %11 = icmp ne %struct._GSList* %10, null, !dbg !3433
  br i1 %11, label %12, label %53, !dbg !3434

; <label>:12:                                     ; preds = %9
  call void @llvm.dbg.declare(metadata %struct.STATUSBAR_REC** %5, metadata !3435, metadata !333), !dbg !3437
  %13 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !3438
  %14 = getelementptr inbounds %struct._GSList, %struct._GSList* %13, i32 0, i32 0, !dbg !3439
  %15 = load i8*, i8** %14, align 8, !dbg !3439
  %16 = bitcast i8* %15 to %struct.STATUSBAR_REC*, !dbg !3438
  store %struct.STATUSBAR_REC* %16, %struct.STATUSBAR_REC** %5, align 8, !dbg !3437
  %17 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !3440
  %18 = getelementptr inbounds %struct._GSList, %struct._GSList* %17, i32 0, i32 1, !dbg !3441
  %19 = load %struct._GSList*, %struct._GSList** %18, align 8, !dbg !3441
  store %struct._GSList* %19, %struct._GSList** %4, align 8, !dbg !3442
  %20 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %5, align 8, !dbg !3443
  %21 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %20, i32 0, i32 1, !dbg !3445
  %22 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %21, align 8, !dbg !3445
  %23 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %22, i32 0, i32 4, !dbg !3446
  %24 = load i32, i32* %23, align 4, !dbg !3446
  %25 = icmp eq i32 %24, 1, !dbg !3447
  br i1 %25, label %50, label %26, !dbg !3448

; <label>:26:                                     ; preds = %12
  %27 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** @active_mainwin, align 8, !dbg !3449
  %28 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !3451
  %29 = icmp eq %struct.MAIN_WINDOW_REC* %27, %28, !dbg !3452
  br i1 %29, label %30, label %37, !dbg !3453

; <label>:30:                                     ; preds = %26
  %31 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %5, align 8, !dbg !3454
  %32 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %31, i32 0, i32 1, !dbg !3456
  %33 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %32, align 8, !dbg !3456
  %34 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %33, i32 0, i32 4, !dbg !3457
  %35 = load i32, i32* %34, align 4, !dbg !3457
  %36 = icmp eq i32 %35, 2, !dbg !3458
  br i1 %36, label %50, label %37, !dbg !3459

; <label>:37:                                     ; preds = %30, %26
  %38 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** @active_mainwin, align 8, !dbg !3460
  %39 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !3462
  %40 = icmp ne %struct.MAIN_WINDOW_REC* %38, %39, !dbg !3463
  br i1 %40, label %41, label %48, !dbg !3464

; <label>:41:                                     ; preds = %37
  %42 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %5, align 8, !dbg !3465
  %43 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %42, i32 0, i32 1, !dbg !3467
  %44 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %43, align 8, !dbg !3467
  %45 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %44, i32 0, i32 4, !dbg !3468
  %46 = load i32, i32* %45, align 4, !dbg !3468
  %47 = icmp eq i32 %46, 3, !dbg !3469
  br i1 %47, label %50, label %48, !dbg !3470

; <label>:48:                                     ; preds = %41, %37
  %49 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %5, align 8, !dbg !3471
  call void @statusbar_destroy(%struct.STATUSBAR_REC* %49), !dbg !3472
  br label %50, !dbg !3472

; <label>:50:                                     ; preds = %48, %41, %30, %12
  br label %51, !dbg !3473

; <label>:51:                                     ; preds = %50
  %52 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !3474
  store %struct._GSList* %52, %struct._GSList** %3, align 8, !dbg !3476
  br label %9, !dbg !3477, !llvm.loop !3478

; <label>:53:                                     ; preds = %9
  ret void, !dbg !3480
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!326, !327}
!llvm.ident = !{!328}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !316)
!1 = !DIFile(filename: "line362-statusbar.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{}
!3 = !{!4, !5, !24, !20, !28, !30, !32, !34, !167, !174, !189, !201, !202, !208, !212, !216, !217, !223}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "STATUSBAR_GROUP_REC", file: !7, line: 36, baseType: !8)
!7 = !DIFile(filename: "statusbar.h", directory: "/home/lichi/Desktop/irssi/task1")
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 32, size: 192, align: 64, elements: !9)
!9 = !{!10, !13, !23}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !8, file: !7, line: 33, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "config_bars", scope: !8, file: !7, line: 34, baseType: !14, size: 64, align: 64, offset: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !16, line: 37, baseType: !17)
!16 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !16, line: 39, size: 128, align: 64, elements: !18)
!18 = !{!19, !22}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !17, file: !16, line: 41, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !21, line: 77, baseType: !4)
!21 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!22 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !17, file: !16, line: 42, baseType: !14, size: 64, align: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "bars", scope: !8, file: !7, line: 35, baseType: !14, size: 64, align: 64, offset: 128)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "GFunc", file: !21, line: 88, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = !DISubroutineType(types: !27)
!27 = !{null, !20, !20}
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !21, line: 48, baseType: !29)
!29 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !21, line: 46, baseType: !12)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "STATUSBAR_REC", file: !7, line: 61, baseType: !36)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 49, size: 448, align: 64, elements: !37)
!37 = !{!38, !39, !51, !162, !163, !164, !165, !166}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !36, file: !7, line: 50, baseType: !5, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !36, file: !7, line: 51, baseType: !40, size: 64, align: 64, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "STATUSBAR_CONFIG_REC", file: !7, line: 47, baseType: !42)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 38, size: 256, align: 64, elements: !43)
!43 = !{!44, !45, !47, !48, !49, !50}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !42, file: !7, line: 39, baseType: !11, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !42, file: !7, line: 41, baseType: !46, size: 32, align: 32, offset: 64)
!46 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "placement", scope: !42, file: !7, line: 42, baseType: !46, size: 32, align: 32, offset: 96)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "position", scope: !42, file: !7, line: 43, baseType: !46, size: 32, align: 32, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "visible", scope: !42, file: !7, line: 44, baseType: !46, size: 32, align: 32, offset: 160)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !42, file: !7, line: 46, baseType: !14, size: 64, align: 64, offset: 192)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "parent_window", scope: !36, file: !7, line: 53, baseType: !52, size: 64, align: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "MAIN_WINDOW_REC", file: !54, line: 34, baseType: !55)
!54 = !DIFile(filename: "mainwindows.h", directory: "/home/lichi/Desktop/irssi/task1")
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !54, line: 16, size: 704, align: 64, elements: !56)
!56 = !{!57, !141, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !55, file: !54, line: 17, baseType: !58, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "WINDOW_REC", file: !60, line: 117, baseType: !61)
!60 = !DIFile(filename: "../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WINDOW_REC", file: !62, line: 28, size: 1280, align: 64, elements: !63)
!62 = !DIFile(filename: "../../src/fe-common/core/fe-windows.h", directory: "/home/lichi/Desktop/irssi/task1")
!63 = !{!64, !65, !66, !67, !68, !69, !105, !106, !107, !108, !109, !110, !112, !113, !114, !133, !134, !135, !136, !137, !138, !139, !140}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "refnum", scope: !61, file: !62, line: 29, baseType: !46, size: 32, align: 32)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !61, file: !62, line: 30, baseType: !11, size: 64, align: 64, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !61, file: !62, line: 32, baseType: !46, size: 32, align: 32, offset: 128)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !61, file: !62, line: 32, baseType: !46, size: 32, align: 32, offset: 160)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !61, file: !62, line: 34, baseType: !14, size: 64, align: 64, offset: 192)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !61, file: !62, line: 35, baseType: !70, size: 64, align: 64, offset: 256)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !60, line: 108, baseType: !72)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !73, line: 5, size: 704, align: 64, elements: !74)
!73 = !DIFile(filename: "../../src/core/window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!74 = !{!75, !77, !78, !83, !84, !88, !89, !90, !95, !96, !97, !101}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !72, file: !76, line: 3, baseType: !46, size: 32, align: 32)
!76 = !DIFile(filename: "../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!77 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !72, file: !76, line: 4, baseType: !46, size: 32, align: 32, offset: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !72, file: !76, line: 5, baseType: !79, size: 64, align: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !81, line: 37, baseType: !82)
!81 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!82 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !81, line: 37, flags: DIFlagFwdDecl)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !72, file: !76, line: 7, baseType: !4, size: 64, align: 64, offset: 128)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !72, file: !76, line: 8, baseType: !85, size: 64, align: 64, offset: 192)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !60, line: 107, baseType: !87)
!87 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !60, line: 107, flags: DIFlagFwdDecl)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !72, file: !76, line: 9, baseType: !11, size: 64, align: 64, offset: 256)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !72, file: !76, line: 10, baseType: !11, size: 64, align: 64, offset: 320)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !72, file: !76, line: 11, baseType: !91, size: 64, align: 64, offset: 384)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !92, line: 75, baseType: !93)
!92 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !94, line: 139, baseType: !29)
!94 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!95 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !72, file: !76, line: 12, baseType: !46, size: 32, align: 32, offset: 448)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !72, file: !76, line: 13, baseType: !11, size: 64, align: 64, offset: 512)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !72, file: !76, line: 15, baseType: !98, size: 64, align: 64, offset: 576)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64, align: 64)
!99 = !DISubroutineType(types: !100)
!100 = !{null, !70}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !72, file: !76, line: 17, baseType: !102, size: 64, align: 64, offset: 640)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64, align: 64)
!103 = !DISubroutineType(types: !104)
!104 = !{!32, !70}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "active_server", scope: !61, file: !62, line: 36, baseType: !85, size: 64, align: 64, offset: 320)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "connect_server", scope: !61, file: !62, line: 37, baseType: !85, size: 64, align: 64, offset: 384)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !61, file: !62, line: 38, baseType: !11, size: 64, align: 64, offset: 448)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !61, file: !62, line: 40, baseType: !46, size: 32, align: 32, offset: 512)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "bound_items", scope: !61, file: !62, line: 41, baseType: !14, size: 64, align: 64, offset: 576)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "immortal", scope: !61, file: !62, line: 43, baseType: !111, size: 1, align: 32, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!111 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "sticky_refnum", scope: !61, file: !62, line: 44, baseType: !111, size: 1, align: 32, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !61, file: !62, line: 45, baseType: !111, size: 1, align: 32, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !61, file: !62, line: 48, baseType: !115, size: 64, align: 64, offset: 704)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "HISTORY_REC", file: !117, line: 14, baseType: !118)
!117 = !DIFile(filename: "../../src/fe-common/core/command-history.h", directory: "/home/lichi/Desktop/irssi/task1")
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !117, line: 6, size: 256, align: 64, elements: !119)
!119 = !{!120, !121, !130, !131, !132}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !118, file: !117, line: 7, baseType: !11, size: 64, align: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !118, file: !117, line: 9, baseType: !122, size: 64, align: 64, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "GList", file: !124, line: 37, baseType: !125)
!124 = !DIFile(filename: "/usr/include/glib-2.0/glib/glist.h", directory: "/home/lichi/Desktop/irssi/task1")
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GList", file: !124, line: 39, size: 192, align: 64, elements: !126)
!126 = !{!127, !128, !129}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !125, file: !124, line: 41, baseType: !20, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !125, file: !124, line: 42, baseType: !122, size: 64, align: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !125, file: !124, line: 43, baseType: !122, size: 64, align: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !118, file: !117, line: 10, baseType: !46, size: 32, align: 32, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !118, file: !117, line: 12, baseType: !46, size: 32, align: 32, offset: 160)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "redo", scope: !118, file: !117, line: 13, baseType: !46, size: 1, align: 32, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "history_name", scope: !61, file: !62, line: 49, baseType: !11, size: 64, align: 64, offset: 768)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !61, file: !62, line: 51, baseType: !46, size: 32, align: 32, offset: 832)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !61, file: !62, line: 52, baseType: !11, size: 64, align: 64, offset: 896)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "last_timestamp", scope: !61, file: !62, line: 54, baseType: !91, size: 64, align: 64, offset: 960)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "last_line", scope: !61, file: !62, line: 55, baseType: !91, size: 64, align: 64, offset: 1024)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "theme_name", scope: !61, file: !62, line: 57, baseType: !11, size: 64, align: 64, offset: 1088)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "theme", scope: !61, file: !62, line: 58, baseType: !4, size: 64, align: 64, offset: 1152)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "gui_data", scope: !61, file: !62, line: 60, baseType: !4, size: 64, align: 64, offset: 1216)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "screen_win", scope: !55, file: !54, line: 19, baseType: !142, size: 64, align: 64, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64, align: 64)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "TERM_WINDOW", file: !144, line: 4, baseType: !145)
!144 = !DIFile(filename: "term.h", directory: "/home/lichi/Desktop/irssi/task1")
!145 = !DICompositeType(tag: DW_TAG_structure_type, name: "_TERM_WINDOW", file: !144, line: 4, flags: DIFlagFwdDecl)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "sticky_windows", scope: !55, file: !54, line: 20, baseType: !46, size: 32, align: 32, offset: 128)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "first_line", scope: !55, file: !54, line: 22, baseType: !46, size: 32, align: 32, offset: 160)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "last_line", scope: !55, file: !54, line: 22, baseType: !46, size: 32, align: 32, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "first_column", scope: !55, file: !54, line: 23, baseType: !46, size: 32, align: 32, offset: 224)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "last_column", scope: !55, file: !54, line: 23, baseType: !46, size: 32, align: 32, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !55, file: !54, line: 24, baseType: !46, size: 32, align: 32, offset: 288)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !55, file: !54, line: 24, baseType: !46, size: 32, align: 32, offset: 320)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "statusbars", scope: !55, file: !54, line: 26, baseType: !14, size: 64, align: 64, offset: 384)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_lines_top", scope: !55, file: !54, line: 27, baseType: !46, size: 32, align: 32, offset: 448)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_lines_bottom", scope: !55, file: !54, line: 27, baseType: !46, size: 32, align: 32, offset: 480)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_lines", scope: !55, file: !54, line: 28, baseType: !46, size: 32, align: 32, offset: 512)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_columns_left", scope: !55, file: !54, line: 29, baseType: !46, size: 32, align: 32, offset: 544)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_columns_right", scope: !55, file: !54, line: 29, baseType: !46, size: 32, align: 32, offset: 576)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_columns", scope: !55, file: !54, line: 30, baseType: !46, size: 32, align: 32, offset: 608)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !55, file: !54, line: 32, baseType: !111, size: 1, align: 32, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "size_dirty", scope: !55, file: !54, line: 33, baseType: !111, size: 1, align: 32, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !36, file: !7, line: 54, baseType: !14, size: 64, align: 64, offset: 192)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !36, file: !7, line: 56, baseType: !11, size: 64, align: 64, offset: 256)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "real_ypos", scope: !36, file: !7, line: 57, baseType: !46, size: 32, align: 32, offset: 320)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !36, file: !7, line: 59, baseType: !111, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_xpos", scope: !36, file: !7, line: 60, baseType: !46, size: 32, align: 32, offset: 384)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !168, line: 9, baseType: !169)
!168 = !DIFile(filename: "../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64, align: 64)
!170 = !DISubroutineType(types: !171)
!171 = !{null, !172, !172, !172, !172, !172, !172}
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64, align: 64)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64, align: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "SBAR_ITEM_REC", file: !7, line: 11, baseType: !176)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SBAR_ITEM_REC", file: !7, line: 71, size: 384, align: 64, elements: !177)
!177 = !{!178, !179, !188, !195, !196, !197, !198, !199, !200}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "bar", scope: !176, file: !7, line: 72, baseType: !34, size: 64, align: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !176, file: !7, line: 73, baseType: !180, size: 64, align: 64, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64, align: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "SBAR_ITEM_CONFIG_REC", file: !7, line: 69, baseType: !182)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 63, size: 192, align: 64, elements: !183)
!183 = !{!184, !185, !186, !187}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !182, file: !7, line: 64, baseType: !11, size: 64, align: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !182, file: !7, line: 65, baseType: !11, size: 64, align: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !182, file: !7, line: 67, baseType: !46, size: 32, align: 32, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "right_alignment", scope: !182, file: !7, line: 68, baseType: !111, size: 1, align: 32, offset: 160, flags: DIFlagBitField, extraData: i64 160)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !176, file: !7, line: 74, baseType: !189, size: 64, align: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "STATUSBAR_FUNC", file: !190, line: 6, baseType: !191)
!190 = !DIFile(filename: "statusbar-item.h", directory: "/home/lichi/Desktop/irssi/task1")
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64, align: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{null, !194, !46}
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64, align: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "min_size", scope: !176, file: !7, line: 77, baseType: !46, size: 32, align: 32, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "max_size", scope: !176, file: !7, line: 77, baseType: !46, size: 32, align: 32, offset: 224)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "xpos", scope: !176, file: !7, line: 80, baseType: !46, size: 32, align: 32, offset: 256)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !176, file: !7, line: 80, baseType: !46, size: 32, align: 32, offset: 288)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "current_size", scope: !176, file: !7, line: 82, baseType: !46, size: 32, align: 32, offset: 320)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !176, file: !7, line: 83, baseType: !111, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !21, line: 49, baseType: !46)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashFunc", file: !21, line: 90, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, align: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{!206, !207}
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !21, line: 55, baseType: !111)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "gconstpointer", file: !21, line: 78, baseType: !172)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCompareFunc", file: !21, line: 80, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64, align: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{!201, !207, !207}
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHFunc", file: !21, line: 91, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64, align: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{null, !20, !20, !20}
!216 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "MAIN_WINDOW_BORDER_REC", file: !54, line: 39, baseType: !219)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !54, line: 36, size: 128, align: 64, elements: !220)
!220 = !{!221, !222}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !219, file: !54, line: 37, baseType: !11, size: 64, align: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !219, file: !54, line: 38, baseType: !142, size: 64, align: 64, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64, align: 64)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "GUI_WINDOW_REC", file: !225, line: 24, baseType: !226)
!225 = !DIFile(filename: "gui-windows.h", directory: "/home/lichi/Desktop/irssi/task1")
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !225, line: 13, size: 320, align: 64, elements: !227)
!227 = !{!228, !229, !310, !311, !312, !313, !314, !315}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !226, file: !225, line: 14, baseType: !52, size: 64, align: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "view", scope: !226, file: !225, line: 15, baseType: !230, size: 64, align: 64, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64, align: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_BUFFER_VIEW_REC", file: !232, line: 7, baseType: !233)
!232 = !DIFile(filename: "textbuffer-view.h", directory: "/home/lichi/Desktop/irssi/task1")
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TEXT_BUFFER_VIEW_REC", file: !232, line: 50, size: 960, align: 64, elements: !234)
!234 = !{!235, !275, !276, !277, !278, !279, !280, !285, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !233, file: !232, line: 51, baseType: !236, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64, align: 64)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_BUFFER_REC", file: !238, line: 72, baseType: !239)
!238 = !DIFile(filename: "textbuffer.h", directory: "/home/lichi/Desktop/irssi/task1")
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !238, line: 60, size: 448, align: 64, elements: !240)
!240 = !{!241, !242, !258, !259, !260, !271, !272, !273, !274}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "text_chunks", scope: !239, file: !238, line: 61, baseType: !14, size: 64, align: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "first_line", scope: !239, file: !238, line: 62, baseType: !243, size: 64, align: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64, align: 64)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "LINE_REC", file: !238, line: 52, baseType: !245)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_LINE_REC", file: !238, line: 34, size: 320, align: 64, elements: !246)
!246 = !{!247, !249, !250, !252}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !245, file: !238, line: 48, baseType: !248, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64, align: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !245, file: !238, line: 48, baseType: !248, size: 64, align: 64, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !245, file: !238, line: 50, baseType: !251, size: 64, align: 64, offset: 128)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !245, file: !238, line: 51, baseType: !253, size: 128, align: 64, offset: 192)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "LINE_INFO_REC", file: !238, line: 32, baseType: !254)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !238, line: 29, size: 128, align: 64, elements: !255)
!255 = !{!256, !257}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !254, file: !238, line: 30, baseType: !46, size: 32, align: 32)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !254, file: !238, line: 31, baseType: !91, size: 64, align: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "lines_count", scope: !239, file: !238, line: 63, baseType: !46, size: 32, align: 32, offset: 128)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "cur_line", scope: !239, file: !238, line: 65, baseType: !243, size: 64, align: 64, offset: 192)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "cur_text", scope: !239, file: !238, line: 66, baseType: !261, size: 64, align: 64, offset: 256)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64, align: 64)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_CHUNK_REC", file: !238, line: 58, baseType: !263)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !238, line: 54, size: 131008, align: 32, elements: !264)
!264 = !{!265, !269, !270}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !263, file: !238, line: 55, baseType: !266, size: 130944, align: 8)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 130944, align: 8, elements: !267)
!267 = !{!268}
!268 = !DISubrange(count: 16368)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !263, file: !238, line: 56, baseType: !46, size: 32, align: 32, offset: 130944)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !263, file: !238, line: 57, baseType: !46, size: 32, align: 32, offset: 130976)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "last_fg", scope: !239, file: !238, line: 68, baseType: !46, size: 32, align: 32, offset: 320)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "last_bg", scope: !239, file: !238, line: 69, baseType: !46, size: 32, align: 32, offset: 352)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "last_flags", scope: !239, file: !238, line: 70, baseType: !46, size: 32, align: 32, offset: 384)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "last_eol", scope: !239, file: !238, line: 71, baseType: !111, size: 1, align: 32, offset: 416, flags: DIFlagBitField, extraData: i64 416)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "siblings", scope: !233, file: !232, line: 53, baseType: !14, size: 64, align: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !233, file: !232, line: 55, baseType: !142, size: 64, align: 64, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !233, file: !232, line: 56, baseType: !46, size: 32, align: 32, offset: 192)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !233, file: !232, line: 56, baseType: !46, size: 32, align: 32, offset: 224)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "default_indent", scope: !233, file: !232, line: 58, baseType: !46, size: 32, align: 32, offset: 256)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "default_indent_func", scope: !233, file: !232, line: 59, baseType: !281, size: 64, align: 64, offset: 320)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "INDENT_FUNC", file: !232, line: 10, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64, align: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!46, !230, !243, !46}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !233, file: !232, line: 61, baseType: !286, size: 64, align: 64, offset: 384)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64, align: 64)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_BUFFER_CACHE_REC", file: !232, line: 48, baseType: !288)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !232, line: 37, size: 192, align: 64, elements: !289)
!289 = !{!290, !291, !292, !293, !294}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !288, file: !232, line: 38, baseType: !46, size: 32, align: 32)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !288, file: !232, line: 39, baseType: !46, size: 32, align: 32, offset: 32)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "line_cache", scope: !288, file: !232, line: 41, baseType: !79, size: 64, align: 64, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "update_counter", scope: !288, file: !232, line: 45, baseType: !216, size: 8, align: 8, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "last_linecount", scope: !288, file: !232, line: 47, baseType: !46, size: 32, align: 32, offset: 160)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "ypos", scope: !233, file: !232, line: 63, baseType: !46, size: 32, align: 32, offset: 448)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "startline", scope: !233, file: !232, line: 66, baseType: !243, size: 64, align: 64, offset: 512)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "subline", scope: !233, file: !232, line: 68, baseType: !46, size: 32, align: 32, offset: 576)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_startline", scope: !233, file: !232, line: 71, baseType: !243, size: 64, align: 64, offset: 640)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_subline", scope: !233, file: !232, line: 72, baseType: !46, size: 32, align: 32, offset: 704)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "bookmarks", scope: !233, file: !232, line: 76, baseType: !79, size: 64, align: 64, offset: 768)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "hidden_level", scope: !233, file: !232, line: 79, baseType: !46, size: 32, align: 32, offset: 832)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "empty_linecount", scope: !233, file: !232, line: 82, baseType: !46, size: 32, align: 32, offset: 864)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "longword_noindent", scope: !233, file: !232, line: 84, baseType: !111, size: 1, align: 32, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "scroll", scope: !233, file: !232, line: 86, baseType: !111, size: 1, align: 32, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "utf8", scope: !233, file: !232, line: 88, baseType: !111, size: 1, align: 32, offset: 898, flags: DIFlagBitField, extraData: i64 896)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "break_wide", scope: !233, file: !232, line: 90, baseType: !111, size: 1, align: 32, offset: 899, flags: DIFlagBitField, extraData: i64 896)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "bottom", scope: !233, file: !232, line: 92, baseType: !111, size: 1, align: 32, offset: 900, flags: DIFlagBitField, extraData: i64 896)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "more_text", scope: !233, file: !232, line: 94, baseType: !111, size: 1, align: 32, offset: 901, flags: DIFlagBitField, extraData: i64 896)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !233, file: !232, line: 96, baseType: !111, size: 1, align: 32, offset: 902, flags: DIFlagBitField, extraData: i64 896)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "scroll", scope: !226, file: !225, line: 17, baseType: !111, size: 1, align: 32, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "use_scroll", scope: !226, file: !225, line: 18, baseType: !111, size: 1, align: 32, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "sticky", scope: !226, file: !225, line: 20, baseType: !111, size: 1, align: 32, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "use_insert_after", scope: !226, file: !225, line: 21, baseType: !111, size: 1, align: 32, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "insert_after", scope: !226, file: !225, line: 22, baseType: !243, size: 64, align: 64, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "insert_after_time", scope: !226, file: !225, line: 23, baseType: !91, size: 64, align: 64, offset: 256)
!316 = !{!317, !319, !320, !321, !322, !323, !324, !325}
!317 = distinct !DIGlobalVariable(name: "statusbar_groups", scope: !0, file: !318, line: 36, type: !14, isLocal: false, isDefinition: true, variable: %struct._GSList** @statusbar_groups)
!318 = !DIFile(filename: "statusbar.c", directory: "/home/lichi/Desktop/irssi/task1")
!319 = distinct !DIGlobalVariable(name: "active_statusbar_group", scope: !0, file: !318, line: 37, type: !5, isLocal: false, isDefinition: true, variable: %struct.STATUSBAR_GROUP_REC** @active_statusbar_group)
!320 = distinct !DIGlobalVariable(name: "sbar_item_defs", scope: !0, file: !318, line: 46, type: !79, isLocal: true, isDefinition: true, variable: %struct._GHashTable** @sbar_item_defs)
!321 = distinct !DIGlobalVariable(name: "sbar_item_funcs", scope: !0, file: !318, line: 46, type: !79, isLocal: true, isDefinition: true, variable: %struct._GHashTable** @sbar_item_funcs)
!322 = distinct !DIGlobalVariable(name: "sbar_signal_items", scope: !0, file: !318, line: 47, type: !79, isLocal: true, isDefinition: true, variable: %struct._GHashTable** @sbar_signal_items)
!323 = distinct !DIGlobalVariable(name: "sbar_item_signals", scope: !0, file: !318, line: 47, type: !79, isLocal: true, isDefinition: true, variable: %struct._GHashTable** @sbar_item_signals)
!324 = distinct !DIGlobalVariable(name: "named_sbar_items", scope: !0, file: !318, line: 48, type: !79, isLocal: true, isDefinition: true, variable: %struct._GHashTable** @named_sbar_items)
!325 = distinct !DIGlobalVariable(name: "statusbar_need_recreate_items", scope: !0, file: !318, line: 49, type: !46, isLocal: true, isDefinition: true, variable: i32* @statusbar_need_recreate_items)
!326 = !{i32 2, !"Dwarf Version", i32 4}
!327 = !{i32 2, !"Debug Info Version", i32 3}
!328 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!329 = distinct !DISubprogram(name: "statusbar_item_register", scope: !318, file: !318, line: 51, type: !330, isLocal: false, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!330 = !DISubroutineType(types: !331)
!331 = !{null, !32, !32, !189}
!332 = !DILocalVariable(name: "name", arg: 1, scope: !329, file: !318, line: 51, type: !32)
!333 = !DIExpression()
!334 = !DILocation(line: 51, column: 42, scope: !329)
!335 = !DILocalVariable(name: "value", arg: 2, scope: !329, file: !318, line: 51, type: !32)
!336 = !DILocation(line: 51, column: 60, scope: !329)
!337 = !DILocalVariable(name: "func", arg: 3, scope: !329, file: !318, line: 52, type: !189)
!338 = !DILocation(line: 52, column: 24, scope: !329)
!339 = !DILocalVariable(name: "hkey", scope: !329, file: !318, line: 54, type: !20)
!340 = !DILocation(line: 54, column: 11, scope: !329)
!341 = !DILocalVariable(name: "hvalue", scope: !329, file: !318, line: 54, type: !20)
!342 = !DILocation(line: 54, column: 17, scope: !329)
!343 = !DILocation(line: 56, column: 32, scope: !329)
!344 = !DILocation(line: 57, column: 6, scope: !345)
!345 = distinct !DILexicalBlock(scope: !329, file: !318, line: 57, column: 6)
!346 = !DILocation(line: 57, column: 12, scope: !345)
!347 = !DILocation(line: 57, column: 6, scope: !329)
!348 = !DILocation(line: 58, column: 36, scope: !349)
!349 = distinct !DILexicalBlock(scope: !350, file: !318, line: 58, column: 7)
!350 = distinct !DILexicalBlock(scope: !345, file: !318, line: 57, column: 20)
!351 = !DILocation(line: 59, column: 8, scope: !349)
!352 = !DILocation(line: 58, column: 7, scope: !349)
!353 = !DILocation(line: 58, column: 7, scope: !350)
!354 = !DILocation(line: 60, column: 24, scope: !355)
!355 = distinct !DILexicalBlock(scope: !349, file: !318, line: 59, column: 31)
!356 = !DILocation(line: 60, column: 40, scope: !355)
!357 = !DILocation(line: 60, column: 4, scope: !355)
!358 = !DILocation(line: 61, column: 11, scope: !355)
!359 = !DILocation(line: 61, column: 4, scope: !355)
!360 = !DILocation(line: 62, column: 32, scope: !355)
!361 = !DILocation(line: 62, column: 25, scope: !355)
!362 = !DILocation(line: 63, column: 3, scope: !355)
!363 = !DILocation(line: 64, column: 23, scope: !350)
!364 = !DILocation(line: 65, column: 18, scope: !350)
!365 = !DILocation(line: 65, column: 9, scope: !350)
!366 = !DILocation(line: 65, column: 34, scope: !350)
!367 = !DILocation(line: 65, column: 25, scope: !368)
!368 = !DILexicalBlockFile(scope: !350, file: !318, discriminator: 1)
!369 = !DILocation(line: 64, column: 3, scope: !350)
!370 = !DILocation(line: 66, column: 2, scope: !350)
!371 = !DILocation(line: 68, column: 6, scope: !372)
!372 = distinct !DILexicalBlock(scope: !329, file: !318, line: 68, column: 6)
!373 = !DILocation(line: 68, column: 11, scope: !372)
!374 = !DILocation(line: 68, column: 6, scope: !329)
!375 = !DILocation(line: 69, column: 27, scope: !376)
!376 = distinct !DILexicalBlock(scope: !377, file: !318, line: 69, column: 7)
!377 = distinct !DILexicalBlock(scope: !372, file: !318, line: 68, column: 19)
!378 = !DILocation(line: 69, column: 44, scope: !376)
!379 = !DILocation(line: 69, column: 7, scope: !376)
!380 = !DILocation(line: 69, column: 50, scope: !376)
!381 = !DILocation(line: 69, column: 7, scope: !377)
!382 = !DILocation(line: 70, column: 24, scope: !383)
!383 = distinct !DILexicalBlock(scope: !376, file: !318, line: 69, column: 58)
!384 = !DILocation(line: 71, column: 19, scope: !383)
!385 = !DILocation(line: 71, column: 10, scope: !383)
!386 = !DILocation(line: 71, column: 35, scope: !383)
!387 = !DILocation(line: 71, column: 26, scope: !383)
!388 = !DILocation(line: 70, column: 4, scope: !383)
!389 = !DILocation(line: 72, column: 3, scope: !383)
!390 = !DILocation(line: 73, column: 2, scope: !377)
!391 = !DILocation(line: 74, column: 1, scope: !329)
!392 = distinct !DISubprogram(name: "statusbar_item_unregister", scope: !318, file: !318, line: 76, type: !393, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!393 = !DISubroutineType(types: !394)
!394 = !{null, !32}
!395 = !DILocalVariable(name: "name", arg: 1, scope: !392, file: !318, line: 76, type: !32)
!396 = !DILocation(line: 76, column: 44, scope: !392)
!397 = !DILocalVariable(name: "key", scope: !392, file: !318, line: 78, type: !20)
!398 = !DILocation(line: 78, column: 11, scope: !392)
!399 = !DILocalVariable(name: "value", scope: !392, file: !318, line: 78, type: !20)
!400 = !DILocation(line: 78, column: 16, scope: !392)
!401 = !DILocation(line: 80, column: 32, scope: !392)
!402 = !DILocation(line: 81, column: 35, scope: !403)
!403 = distinct !DILexicalBlock(scope: !392, file: !318, line: 81, column: 6)
!404 = !DILocation(line: 82, column: 7, scope: !403)
!405 = !DILocation(line: 81, column: 6, scope: !403)
!406 = !DILocation(line: 81, column: 6, scope: !392)
!407 = !DILocation(line: 83, column: 23, scope: !408)
!408 = distinct !DILexicalBlock(scope: !403, file: !318, line: 82, column: 28)
!409 = !DILocation(line: 83, column: 39, scope: !408)
!410 = !DILocation(line: 83, column: 3, scope: !408)
!411 = !DILocation(line: 84, column: 10, scope: !408)
!412 = !DILocation(line: 84, column: 3, scope: !408)
!413 = !DILocation(line: 85, column: 24, scope: !408)
!414 = !DILocation(line: 85, column: 17, scope: !408)
!415 = !DILocation(line: 86, column: 2, scope: !408)
!416 = !DILocation(line: 88, column: 35, scope: !417)
!417 = distinct !DILexicalBlock(scope: !392, file: !318, line: 88, column: 6)
!418 = !DILocation(line: 89, column: 7, scope: !417)
!419 = !DILocation(line: 88, column: 6, scope: !417)
!420 = !DILocation(line: 88, column: 6, scope: !392)
!421 = !DILocation(line: 90, column: 23, scope: !422)
!422 = distinct !DILexicalBlock(scope: !417, file: !318, line: 89, column: 28)
!423 = !DILocation(line: 90, column: 40, scope: !422)
!424 = !DILocation(line: 90, column: 3, scope: !422)
!425 = !DILocation(line: 91, column: 10, scope: !422)
!426 = !DILocation(line: 91, column: 3, scope: !422)
!427 = !DILocation(line: 92, column: 2, scope: !422)
!428 = !DILocation(line: 93, column: 1, scope: !392)
!429 = distinct !DISubprogram(name: "statusbar_item_set_size", scope: !318, file: !318, line: 95, type: !430, isLocal: false, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!430 = !DISubroutineType(types: !431)
!431 = !{null, !194, !46, !46}
!432 = !DILocalVariable(name: "item", arg: 1, scope: !429, file: !318, line: 95, type: !194)
!433 = !DILocation(line: 95, column: 52, scope: !429)
!434 = !DILocalVariable(name: "min_size", arg: 2, scope: !429, file: !318, line: 95, type: !46)
!435 = !DILocation(line: 95, column: 62, scope: !429)
!436 = !DILocalVariable(name: "max_size", arg: 3, scope: !429, file: !318, line: 95, type: !46)
!437 = !DILocation(line: 95, column: 76, scope: !429)
!438 = !DILocation(line: 97, column: 19, scope: !429)
!439 = !DILocation(line: 97, column: 2, scope: !429)
!440 = !DILocation(line: 97, column: 8, scope: !429)
!441 = !DILocation(line: 97, column: 17, scope: !429)
!442 = !DILocation(line: 98, column: 19, scope: !429)
!443 = !DILocation(line: 98, column: 2, scope: !429)
!444 = !DILocation(line: 98, column: 8, scope: !429)
!445 = !DILocation(line: 98, column: 17, scope: !429)
!446 = !DILocation(line: 99, column: 1, scope: !429)
!447 = distinct !DISubprogram(name: "statusbar_group_create", scope: !318, file: !318, line: 101, type: !448, isLocal: false, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!448 = !DISubroutineType(types: !449)
!449 = !{!5, !32}
!450 = !DILocalVariable(name: "name", arg: 1, scope: !447, file: !318, line: 101, type: !32)
!451 = !DILocation(line: 101, column: 57, scope: !447)
!452 = !DILocalVariable(name: "rec", scope: !447, file: !318, line: 103, type: !5)
!453 = !DILocation(line: 103, column: 23, scope: !447)
!454 = !DILocation(line: 105, column: 33, scope: !447)
!455 = !DILocation(line: 105, column: 9, scope: !447)
!456 = !DILocation(line: 105, column: 6, scope: !447)
!457 = !DILocation(line: 106, column: 23, scope: !447)
!458 = !DILocation(line: 106, column: 14, scope: !447)
!459 = !DILocation(line: 106, column: 2, scope: !447)
!460 = !DILocation(line: 106, column: 7, scope: !447)
!461 = !DILocation(line: 106, column: 12, scope: !447)
!462 = !DILocation(line: 108, column: 43, scope: !447)
!463 = !DILocation(line: 108, column: 61, scope: !447)
!464 = !DILocation(line: 108, column: 28, scope: !447)
!465 = !DILocation(line: 108, column: 26, scope: !447)
!466 = !DILocation(line: 109, column: 9, scope: !447)
!467 = !DILocation(line: 109, column: 2, scope: !447)
!468 = distinct !DISubprogram(name: "statusbar_group_destroy", scope: !318, file: !318, line: 112, type: !469, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!469 = !DISubroutineType(types: !470)
!470 = !{null, !5}
!471 = !DILocalVariable(name: "rec", arg: 1, scope: !468, file: !318, line: 112, type: !5)
!472 = !DILocation(line: 112, column: 51, scope: !468)
!473 = !DILocation(line: 114, column: 36, scope: !468)
!474 = !DILocation(line: 114, column: 54, scope: !468)
!475 = !DILocation(line: 114, column: 21, scope: !468)
!476 = !DILocation(line: 114, column: 19, scope: !468)
!477 = !DILocation(line: 116, column: 2, scope: !468)
!478 = !DILocation(line: 116, column: 9, scope: !479)
!479 = !DILexicalBlockFile(scope: !468, file: !318, discriminator: 1)
!480 = !DILocation(line: 116, column: 14, scope: !479)
!481 = !DILocation(line: 116, column: 19, scope: !479)
!482 = !DILocation(line: 116, column: 2, scope: !479)
!483 = !DILocation(line: 117, column: 21, scope: !468)
!484 = !DILocation(line: 117, column: 26, scope: !468)
!485 = !DILocation(line: 117, column: 32, scope: !468)
!486 = !DILocation(line: 117, column: 3, scope: !468)
!487 = !DILocation(line: 116, column: 2, scope: !488)
!488 = !DILexicalBlockFile(scope: !468, file: !318, discriminator: 2)
!489 = distinct !{!489, !477}
!490 = !DILocation(line: 118, column: 2, scope: !468)
!491 = !DILocation(line: 118, column: 9, scope: !479)
!492 = !DILocation(line: 118, column: 14, scope: !479)
!493 = !DILocation(line: 118, column: 26, scope: !479)
!494 = !DILocation(line: 118, column: 2, scope: !479)
!495 = !DILocation(line: 119, column: 42, scope: !468)
!496 = !DILocation(line: 119, column: 47, scope: !468)
!497 = !DILocation(line: 119, column: 52, scope: !468)
!498 = !DILocation(line: 119, column: 65, scope: !468)
!499 = !DILocation(line: 119, column: 17, scope: !468)
!500 = !DILocation(line: 118, column: 2, scope: !488)
!501 = distinct !{!501, !490}
!502 = !DILocation(line: 121, column: 16, scope: !468)
!503 = !DILocation(line: 121, column: 21, scope: !468)
!504 = !DILocation(line: 121, column: 9, scope: !468)
!505 = !DILocation(line: 122, column: 16, scope: !468)
!506 = !DILocation(line: 122, column: 9, scope: !468)
!507 = !DILocation(line: 123, column: 1, scope: !468)
!508 = distinct !DISubprogram(name: "statusbar_destroy", scope: !318, file: !318, line: 561, type: !509, isLocal: false, isDefinition: true, scopeLine: 562, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!509 = !DISubroutineType(types: !510)
!510 = !{null, !34}
!511 = !DILocalVariable(name: "bar", arg: 1, scope: !508, file: !318, line: 561, type: !34)
!512 = !DILocation(line: 561, column: 39, scope: !508)
!513 = !DILocalVariable(name: "top", scope: !508, file: !318, line: 563, type: !46)
!514 = !DILocation(line: 563, column: 6, scope: !508)
!515 = !DILocation(line: 565, column: 2, scope: !508)
!516 = distinct !{!516, !515}
!517 = !DILocation(line: 565, column: 10, scope: !518)
!518 = !DILexicalBlockFile(scope: !519, file: !318, discriminator: 1)
!519 = distinct !DILexicalBlock(scope: !520, file: !318, line: 565, column: 10)
!520 = distinct !DILexicalBlock(scope: !508, file: !318, line: 565, column: 4)
!521 = !DILocation(line: 565, column: 14, scope: !518)
!522 = !DILocation(line: 565, column: 5, scope: !523)
!523 = !DILexicalBlockFile(scope: !524, file: !318, discriminator: 2)
!524 = distinct !DILexicalBlock(scope: !519, file: !318, line: 565, column: 3)
!525 = !DILocation(line: 565, column: 14, scope: !526)
!526 = !DILexicalBlockFile(scope: !527, file: !318, discriminator: 3)
!527 = distinct !DILexicalBlock(scope: !519, file: !318, line: 565, column: 12)
!528 = !DILocation(line: 565, column: 98, scope: !526)
!529 = !DILocation(line: 565, column: 109, scope: !530)
!530 = !DILexicalBlockFile(scope: !520, file: !318, discriminator: 4)
!531 = !DILocation(line: 567, column: 36, scope: !508)
!532 = !DILocation(line: 567, column: 41, scope: !508)
!533 = !DILocation(line: 567, column: 48, scope: !508)
!534 = !DILocation(line: 567, column: 54, scope: !508)
!535 = !DILocation(line: 567, column: 21, scope: !508)
!536 = !DILocation(line: 567, column: 2, scope: !508)
!537 = !DILocation(line: 567, column: 7, scope: !508)
!538 = !DILocation(line: 567, column: 14, scope: !508)
!539 = !DILocation(line: 567, column: 19, scope: !508)
!540 = !DILocation(line: 568, column: 6, scope: !541)
!541 = distinct !DILexicalBlock(scope: !508, file: !318, line: 568, column: 6)
!542 = !DILocation(line: 568, column: 11, scope: !541)
!543 = !DILocation(line: 568, column: 25, scope: !541)
!544 = !DILocation(line: 568, column: 6, scope: !508)
!545 = !DILocation(line: 570, column: 19, scope: !546)
!546 = distinct !DILexicalBlock(scope: !541, file: !318, line: 568, column: 33)
!547 = !DILocation(line: 570, column: 24, scope: !546)
!548 = !DILocation(line: 570, column: 39, scope: !546)
!549 = !DILocation(line: 570, column: 51, scope: !546)
!550 = !DILocation(line: 570, column: 4, scope: !546)
!551 = !DILocation(line: 569, column: 3, scope: !546)
!552 = !DILocation(line: 569, column: 8, scope: !546)
!553 = !DILocation(line: 569, column: 23, scope: !546)
!554 = !DILocation(line: 569, column: 34, scope: !546)
!555 = !DILocation(line: 571, column: 2, scope: !546)
!556 = !DILocation(line: 573, column: 47, scope: !508)
!557 = !DILocation(line: 573, column: 9, scope: !508)
!558 = !DILocation(line: 575, column: 2, scope: !508)
!559 = !DILocation(line: 575, column: 9, scope: !560)
!560 = !DILexicalBlockFile(scope: !508, file: !318, discriminator: 1)
!561 = !DILocation(line: 575, column: 14, scope: !560)
!562 = !DILocation(line: 575, column: 20, scope: !560)
!563 = !DILocation(line: 575, column: 2, scope: !560)
!564 = !DILocation(line: 576, column: 26, scope: !508)
!565 = !DILocation(line: 576, column: 31, scope: !508)
!566 = !DILocation(line: 576, column: 38, scope: !508)
!567 = !DILocation(line: 576, column: 3, scope: !508)
!568 = !DILocation(line: 575, column: 2, scope: !569)
!569 = !DILexicalBlockFile(scope: !508, file: !318, discriminator: 2)
!570 = distinct !{!570, !558}
!571 = !DILocation(line: 578, column: 16, scope: !508)
!572 = !DILocation(line: 578, column: 21, scope: !508)
!573 = !DILocation(line: 578, column: 9, scope: !508)
!574 = !DILocation(line: 580, column: 6, scope: !575)
!575 = distinct !DILexicalBlock(scope: !508, file: !318, line: 580, column: 6)
!576 = !DILocation(line: 580, column: 11, scope: !575)
!577 = !DILocation(line: 580, column: 19, scope: !575)
!578 = !DILocation(line: 580, column: 24, scope: !575)
!579 = !DILocation(line: 580, column: 29, scope: !575)
!580 = !DILocation(line: 581, column: 6, scope: !575)
!581 = !DILocation(line: 581, column: 11, scope: !575)
!582 = !DILocation(line: 581, column: 25, scope: !575)
!583 = !DILocation(line: 580, column: 6, scope: !560)
!584 = !DILocation(line: 582, column: 26, scope: !575)
!585 = !DILocation(line: 582, column: 3, scope: !575)
!586 = !DILocation(line: 584, column: 8, scope: !508)
!587 = !DILocation(line: 584, column: 13, scope: !508)
!588 = !DILocation(line: 584, column: 21, scope: !508)
!589 = !DILocation(line: 584, column: 31, scope: !508)
!590 = !DILocation(line: 584, column: 6, scope: !508)
!591 = !DILocation(line: 585, column: 6, scope: !592)
!592 = distinct !DILexicalBlock(scope: !508, file: !318, line: 585, column: 6)
!593 = !DILocation(line: 585, column: 11, scope: !592)
!594 = !DILocation(line: 585, column: 19, scope: !592)
!595 = !DILocation(line: 585, column: 24, scope: !592)
!596 = !DILocation(line: 585, column: 6, scope: !508)
!597 = !DILocation(line: 587, column: 29, scope: !598)
!598 = distinct !DILexicalBlock(scope: !592, file: !318, line: 585, column: 30)
!599 = !DILocation(line: 587, column: 44, scope: !598)
!600 = !DILocation(line: 587, column: 43, scope: !598)
!601 = !DILocation(line: 587, column: 3, scope: !598)
!602 = !DILocation(line: 588, column: 2, scope: !598)
!603 = !DILocation(line: 588, column: 13, scope: !604)
!604 = !DILexicalBlockFile(scope: !605, file: !318, discriminator: 1)
!605 = distinct !DILexicalBlock(scope: !592, file: !318, line: 588, column: 13)
!606 = !DILocation(line: 588, column: 18, scope: !604)
!607 = !DILocation(line: 588, column: 32, scope: !604)
!608 = !DILocation(line: 590, column: 34, scope: !609)
!609 = distinct !DILexicalBlock(scope: !605, file: !318, line: 588, column: 40)
!610 = !DILocation(line: 590, column: 39, scope: !609)
!611 = !DILocation(line: 591, column: 13, scope: !609)
!612 = !DILocation(line: 591, column: 28, scope: !609)
!613 = !DILocation(line: 591, column: 27, scope: !609)
!614 = !DILocation(line: 590, column: 3, scope: !609)
!615 = !DILocation(line: 592, column: 2, scope: !609)
!616 = !DILocation(line: 594, column: 9, scope: !508)
!617 = !DILocation(line: 594, column: 2, scope: !508)
!618 = !DILocation(line: 595, column: 1, scope: !508)
!619 = !DILocation(line: 595, column: 1, scope: !560)
!620 = distinct !DISubprogram(name: "statusbar_group_find", scope: !318, file: !318, line: 125, type: !448, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!621 = !DILocalVariable(name: "name", arg: 1, scope: !620, file: !318, line: 125, type: !32)
!622 = !DILocation(line: 125, column: 55, scope: !620)
!623 = !DILocalVariable(name: "tmp", scope: !620, file: !318, line: 127, type: !14)
!624 = !DILocation(line: 127, column: 10, scope: !620)
!625 = !DILocation(line: 129, column: 13, scope: !626)
!626 = distinct !DILexicalBlock(scope: !620, file: !318, line: 129, column: 2)
!627 = !DILocation(line: 129, column: 11, scope: !626)
!628 = !DILocation(line: 129, column: 7, scope: !626)
!629 = !DILocation(line: 129, column: 31, scope: !630)
!630 = !DILexicalBlockFile(scope: !631, file: !318, discriminator: 1)
!631 = distinct !DILexicalBlock(scope: !626, file: !318, line: 129, column: 2)
!632 = !DILocation(line: 129, column: 35, scope: !630)
!633 = !DILocation(line: 129, column: 2, scope: !630)
!634 = !DILocalVariable(name: "rec", scope: !635, file: !318, line: 130, type: !5)
!635 = distinct !DILexicalBlock(scope: !631, file: !318, line: 129, column: 60)
!636 = !DILocation(line: 130, column: 24, scope: !635)
!637 = !DILocation(line: 130, column: 30, scope: !635)
!638 = !DILocation(line: 130, column: 35, scope: !635)
!639 = !DILocation(line: 132, column: 17, scope: !640)
!640 = distinct !DILexicalBlock(scope: !635, file: !318, line: 132, column: 7)
!641 = !DILocation(line: 132, column: 22, scope: !640)
!642 = !DILocation(line: 132, column: 28, scope: !640)
!643 = !DILocation(line: 132, column: 7, scope: !640)
!644 = !DILocation(line: 132, column: 34, scope: !640)
!645 = !DILocation(line: 132, column: 7, scope: !635)
!646 = !DILocation(line: 133, column: 32, scope: !640)
!647 = !DILocation(line: 133, column: 25, scope: !640)
!648 = !DILocation(line: 134, column: 2, scope: !635)
!649 = !DILocation(line: 129, column: 49, scope: !650)
!650 = !DILexicalBlockFile(scope: !631, file: !318, discriminator: 2)
!651 = !DILocation(line: 129, column: 54, scope: !650)
!652 = !DILocation(line: 129, column: 47, scope: !650)
!653 = !DILocation(line: 129, column: 2, scope: !650)
!654 = distinct !{!654, !655}
!655 = !DILocation(line: 129, column: 2, scope: !620)
!656 = !DILocation(line: 136, column: 9, scope: !620)
!657 = !DILocation(line: 137, column: 1, scope: !620)
!658 = distinct !DISubprogram(name: "statusbar_redraw", scope: !318, file: !318, line: 327, type: !659, isLocal: false, isDefinition: true, scopeLine: 328, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!659 = !DISubroutineType(types: !660)
!660 = !{null, !34, !46}
!661 = !DILocalVariable(name: "bar", arg: 1, scope: !658, file: !318, line: 327, type: !34)
!662 = !DILocation(line: 327, column: 38, scope: !658)
!663 = !DILocalVariable(name: "force", arg: 2, scope: !658, file: !318, line: 327, type: !46)
!664 = !DILocation(line: 327, column: 47, scope: !658)
!665 = !DILocation(line: 329, column: 6, scope: !666)
!666 = distinct !DILexicalBlock(scope: !658, file: !318, line: 329, column: 6)
!667 = !DILocation(line: 329, column: 6, scope: !658)
!668 = !DILocation(line: 330, column: 3, scope: !666)
!669 = !DILocation(line: 332, column: 6, scope: !670)
!670 = distinct !DILexicalBlock(scope: !658, file: !318, line: 332, column: 6)
!671 = !DILocation(line: 332, column: 10, scope: !670)
!672 = !DILocation(line: 332, column: 6, scope: !658)
!673 = !DILocation(line: 333, column: 7, scope: !674)
!674 = distinct !DILexicalBlock(scope: !675, file: !318, line: 333, column: 7)
!675 = distinct !DILexicalBlock(scope: !670, file: !318, line: 332, column: 18)
!676 = !DILocation(line: 333, column: 7, scope: !675)
!677 = !DILocation(line: 334, column: 4, scope: !678)
!678 = distinct !DILexicalBlock(scope: !674, file: !318, line: 333, column: 14)
!679 = !DILocation(line: 335, column: 4, scope: !678)
!680 = !DILocation(line: 335, column: 9, scope: !678)
!681 = !DILocation(line: 335, column: 15, scope: !678)
!682 = !DILocation(line: 336, column: 25, scope: !678)
!683 = !DILocation(line: 336, column: 30, scope: !678)
!684 = !DILocation(line: 336, column: 41, scope: !678)
!685 = !DILocation(line: 337, column: 3, scope: !678)
!686 = !DILocation(line: 338, column: 33, scope: !675)
!687 = !DILocation(line: 338, column: 3, scope: !675)
!688 = !DILocation(line: 339, column: 2, scope: !675)
!689 = !DILocation(line: 339, column: 13, scope: !690)
!690 = !DILexicalBlockFile(scope: !691, file: !318, discriminator: 1)
!691 = distinct !DILexicalBlock(scope: !670, file: !318, line: 339, column: 13)
!692 = !DILocation(line: 339, column: 36, scope: !690)
!693 = !DILocation(line: 340, column: 19, scope: !694)
!694 = distinct !DILexicalBlock(scope: !691, file: !318, line: 339, column: 44)
!695 = !DILocation(line: 340, column: 43, scope: !694)
!696 = !DILocation(line: 342, column: 26, scope: !694)
!697 = !DILocation(line: 342, column: 17, scope: !694)
!698 = !DILocation(line: 342, column: 6, scope: !694)
!699 = !DILocation(line: 340, column: 3, scope: !694)
!700 = !DILocation(line: 343, column: 2, scope: !694)
!701 = !DILocation(line: 344, column: 1, scope: !658)
!702 = distinct !DISubprogram(name: "statusbar_calc_item_positions", scope: !318, file: !318, line: 243, type: !509, isLocal: true, isDefinition: true, scopeLine: 244, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!703 = !DILocalVariable(name: "bar", arg: 1, scope: !702, file: !318, line: 243, type: !34)
!704 = !DILocation(line: 243, column: 58, scope: !702)
!705 = !DILocalVariable(name: "window", scope: !702, file: !318, line: 245, type: !58)
!706 = !DILocation(line: 245, column: 14, scope: !702)
!707 = !DILocalVariable(name: "old_active_win", scope: !702, file: !318, line: 246, type: !58)
!708 = !DILocation(line: 246, column: 14, scope: !702)
!709 = !DILocalVariable(name: "tmp", scope: !702, file: !318, line: 247, type: !14)
!710 = !DILocation(line: 247, column: 10, scope: !702)
!711 = !DILocalVariable(name: "right_items", scope: !702, file: !318, line: 247, type: !14)
!712 = !DILocation(line: 247, column: 16, scope: !702)
!713 = !DILocalVariable(name: "xpos", scope: !702, file: !318, line: 248, type: !46)
!714 = !DILocation(line: 248, column: 6, scope: !702)
!715 = !DILocalVariable(name: "rxpos", scope: !702, file: !318, line: 248, type: !46)
!716 = !DILocation(line: 248, column: 12, scope: !702)
!717 = !DILocalVariable(name: "max_width", scope: !702, file: !318, line: 249, type: !46)
!718 = !DILocation(line: 249, column: 6, scope: !702)
!719 = !DILocation(line: 251, column: 19, scope: !702)
!720 = !DILocation(line: 251, column: 17, scope: !702)
!721 = !DILocation(line: 252, column: 6, scope: !722)
!722 = distinct !DILexicalBlock(scope: !702, file: !318, line: 252, column: 6)
!723 = !DILocation(line: 252, column: 11, scope: !722)
!724 = !DILocation(line: 252, column: 25, scope: !722)
!725 = !DILocation(line: 252, column: 6, scope: !702)
!726 = !DILocation(line: 253, column: 16, scope: !722)
!727 = !DILocation(line: 253, column: 21, scope: !722)
!728 = !DILocation(line: 253, column: 36, scope: !722)
!729 = !DILocation(line: 253, column: 14, scope: !722)
!730 = !DILocation(line: 253, column: 3, scope: !722)
!731 = !DILocation(line: 255, column: 11, scope: !702)
!732 = !DILocation(line: 255, column: 16, scope: !702)
!733 = !DILocation(line: 255, column: 30, scope: !702)
!734 = !DILocation(line: 256, column: 4, scope: !702)
!735 = !DILocation(line: 256, column: 9, scope: !702)
!736 = !DILocation(line: 256, column: 24, scope: !702)
!737 = !DILocation(line: 255, column: 11, scope: !738)
!738 = !DILexicalBlockFile(scope: !702, file: !318, discriminator: 1)
!739 = !DILocation(line: 255, column: 11, scope: !740)
!740 = !DILexicalBlockFile(scope: !702, file: !318, discriminator: 2)
!741 = !DILocation(line: 255, column: 11, scope: !742)
!742 = !DILexicalBlockFile(scope: !702, file: !318, discriminator: 3)
!743 = !DILocation(line: 255, column: 9, scope: !742)
!744 = !DILocation(line: 259, column: 14, scope: !702)
!745 = !DILocation(line: 259, column: 21, scope: !702)
!746 = !DILocation(line: 259, column: 30, scope: !738)
!747 = !DILocation(line: 259, column: 38, scope: !738)
!748 = !DILocation(line: 259, column: 14, scope: !738)
!749 = !DILocation(line: 259, column: 46, scope: !740)
!750 = !DILocation(line: 259, column: 14, scope: !740)
!751 = !DILocation(line: 259, column: 14, scope: !742)
!752 = !DILocation(line: 259, column: 12, scope: !742)
!753 = !DILocation(line: 260, column: 25, scope: !702)
!754 = !DILocation(line: 260, column: 30, scope: !702)
!755 = !DILocation(line: 260, column: 2, scope: !702)
!756 = !DILocation(line: 263, column: 7, scope: !702)
!757 = !DILocation(line: 264, column: 13, scope: !758)
!758 = distinct !DILexicalBlock(scope: !702, file: !318, line: 264, column: 2)
!759 = !DILocation(line: 264, column: 18, scope: !758)
!760 = !DILocation(line: 264, column: 11, scope: !758)
!761 = !DILocation(line: 264, column: 7, scope: !758)
!762 = !DILocation(line: 264, column: 25, scope: !763)
!763 = !DILexicalBlockFile(scope: !764, file: !318, discriminator: 1)
!764 = distinct !DILexicalBlock(scope: !758, file: !318, line: 264, column: 2)
!765 = !DILocation(line: 264, column: 29, scope: !763)
!766 = !DILocation(line: 264, column: 2, scope: !763)
!767 = !DILocalVariable(name: "rec", scope: !768, file: !318, line: 265, type: !174)
!768 = distinct !DILexicalBlock(scope: !764, file: !318, line: 264, column: 54)
!769 = !DILocation(line: 265, column: 18, scope: !768)
!770 = !DILocation(line: 265, column: 24, scope: !768)
!771 = !DILocation(line: 265, column: 29, scope: !768)
!772 = !DILocation(line: 267, column: 8, scope: !773)
!773 = distinct !DILexicalBlock(scope: !768, file: !318, line: 267, column: 7)
!774 = !DILocation(line: 267, column: 13, scope: !773)
!775 = !DILocation(line: 267, column: 21, scope: !773)
!776 = !DILocation(line: 267, column: 37, scope: !773)
!777 = !DILocation(line: 268, column: 8, scope: !773)
!778 = !DILocation(line: 268, column: 13, scope: !773)
!779 = !DILocation(line: 268, column: 18, scope: !773)
!780 = !DILocation(line: 268, column: 22, scope: !773)
!781 = !DILocation(line: 268, column: 25, scope: !782)
!782 = !DILexicalBlockFile(scope: !773, file: !318, discriminator: 1)
!783 = !DILocation(line: 268, column: 30, scope: !782)
!784 = !DILocation(line: 268, column: 43, scope: !782)
!785 = !DILocation(line: 267, column: 7, scope: !786)
!786 = !DILexicalBlockFile(scope: !768, file: !318, discriminator: 1)
!787 = !DILocation(line: 269, column: 11, scope: !788)
!788 = distinct !DILexicalBlock(scope: !789, file: !318, line: 269, column: 8)
!789 = distinct !DILexicalBlock(scope: !773, file: !318, line: 268, column: 49)
!790 = !DILocation(line: 269, column: 17, scope: !788)
!791 = !DILocation(line: 269, column: 28, scope: !788)
!792 = !DILocation(line: 269, column: 34, scope: !788)
!793 = !DILocation(line: 269, column: 38, scope: !794)
!794 = !DILexicalBlockFile(scope: !788, file: !318, discriminator: 1)
!795 = !DILocation(line: 269, column: 48, scope: !794)
!796 = !DILocation(line: 269, column: 54, scope: !794)
!797 = !DILocation(line: 269, column: 44, scope: !794)
!798 = !DILocation(line: 269, column: 66, scope: !794)
!799 = !DILocation(line: 269, column: 70, scope: !800)
!800 = !DILexicalBlockFile(scope: !788, file: !318, discriminator: 2)
!801 = !DILocation(line: 269, column: 76, scope: !800)
!802 = !DILocation(line: 269, column: 85, scope: !800)
!803 = !DILocation(line: 269, column: 81, scope: !800)
!804 = !DILocation(line: 269, column: 91, scope: !800)
!805 = !DILocation(line: 269, column: 95, scope: !806)
!806 = !DILexicalBlockFile(scope: !788, file: !318, discriminator: 3)
!807 = !DILocation(line: 269, column: 101, scope: !806)
!808 = !DILocation(line: 269, column: 118, scope: !806)
!809 = !DILocation(line: 269, column: 124, scope: !806)
!810 = !DILocation(line: 269, column: 114, scope: !806)
!811 = !DILocation(line: 269, column: 8, scope: !806)
!812 = !DILocation(line: 271, column: 5, scope: !813)
!813 = distinct !DILexicalBlock(scope: !788, file: !318, line: 269, column: 131)
!814 = !DILocation(line: 271, column: 10, scope: !813)
!815 = !DILocation(line: 271, column: 16, scope: !813)
!816 = !DILocation(line: 272, column: 9, scope: !817)
!817 = distinct !DILexicalBlock(scope: !813, file: !318, line: 272, column: 9)
!818 = !DILocation(line: 272, column: 14, scope: !817)
!819 = !DILocation(line: 272, column: 25, scope: !817)
!820 = !DILocation(line: 272, column: 31, scope: !817)
!821 = !DILocation(line: 273, column: 9, scope: !817)
!822 = !DILocation(line: 273, column: 16, scope: !817)
!823 = !DILocation(line: 273, column: 21, scope: !817)
!824 = !DILocation(line: 273, column: 14, scope: !817)
!825 = !DILocation(line: 272, column: 9, scope: !826)
!826 = !DILexicalBlockFile(scope: !813, file: !318, discriminator: 1)
!827 = !DILocation(line: 274, column: 6, scope: !828)
!828 = distinct !DILexicalBlock(scope: !817, file: !318, line: 273, column: 33)
!829 = !DILocation(line: 275, column: 6, scope: !828)
!830 = !DILocation(line: 275, column: 11, scope: !828)
!831 = !DILocation(line: 275, column: 17, scope: !828)
!832 = !DILocation(line: 276, column: 24, scope: !828)
!833 = !DILocation(line: 276, column: 6, scope: !828)
!834 = !DILocation(line: 276, column: 11, scope: !828)
!835 = !DILocation(line: 276, column: 22, scope: !828)
!836 = !DILocation(line: 277, column: 5, scope: !828)
!837 = !DILocation(line: 279, column: 17, scope: !813)
!838 = !DILocation(line: 279, column: 5, scope: !813)
!839 = !DILocation(line: 279, column: 10, scope: !813)
!840 = !DILocation(line: 279, column: 15, scope: !813)
!841 = !DILocation(line: 280, column: 4, scope: !813)
!842 = !DILocation(line: 281, column: 12, scope: !789)
!843 = !DILocation(line: 281, column: 17, scope: !789)
!844 = !DILocation(line: 281, column: 9, scope: !789)
!845 = !DILocation(line: 282, column: 3, scope: !789)
!846 = !DILocation(line: 283, column: 2, scope: !768)
!847 = !DILocation(line: 264, column: 43, scope: !848)
!848 = !DILexicalBlockFile(scope: !764, file: !318, discriminator: 2)
!849 = !DILocation(line: 264, column: 48, scope: !848)
!850 = !DILocation(line: 264, column: 41, scope: !848)
!851 = !DILocation(line: 264, column: 2, scope: !848)
!852 = distinct !{!852, !853}
!853 = !DILocation(line: 264, column: 2, scope: !702)
!854 = !DILocation(line: 287, column: 14, scope: !702)
!855 = !DILocation(line: 288, column: 13, scope: !856)
!856 = distinct !DILexicalBlock(scope: !702, file: !318, line: 288, column: 2)
!857 = !DILocation(line: 288, column: 18, scope: !856)
!858 = !DILocation(line: 288, column: 11, scope: !856)
!859 = !DILocation(line: 288, column: 7, scope: !856)
!860 = !DILocation(line: 288, column: 25, scope: !861)
!861 = !DILexicalBlockFile(scope: !862, file: !318, discriminator: 1)
!862 = distinct !DILexicalBlock(scope: !856, file: !318, line: 288, column: 2)
!863 = !DILocation(line: 288, column: 29, scope: !861)
!864 = !DILocation(line: 288, column: 2, scope: !861)
!865 = !DILocalVariable(name: "rec", scope: !866, file: !318, line: 289, type: !174)
!866 = distinct !DILexicalBlock(scope: !862, file: !318, line: 288, column: 54)
!867 = !DILocation(line: 289, column: 18, scope: !866)
!868 = !DILocation(line: 289, column: 24, scope: !866)
!869 = !DILocation(line: 289, column: 29, scope: !866)
!870 = !DILocation(line: 291, column: 7, scope: !871)
!871 = distinct !DILexicalBlock(scope: !866, file: !318, line: 291, column: 7)
!872 = !DILocation(line: 291, column: 12, scope: !871)
!873 = !DILocation(line: 291, column: 20, scope: !871)
!874 = !DILocation(line: 291, column: 7, scope: !866)
!875 = !DILocation(line: 292, column: 8, scope: !876)
!876 = distinct !DILexicalBlock(scope: !877, file: !318, line: 292, column: 8)
!877 = distinct !DILexicalBlock(scope: !871, file: !318, line: 291, column: 37)
!878 = !DILocation(line: 292, column: 13, scope: !876)
!879 = !DILocation(line: 292, column: 18, scope: !876)
!880 = !DILocation(line: 292, column: 8, scope: !877)
!881 = !DILocation(line: 293, column: 35, scope: !876)
!882 = !DILocation(line: 293, column: 48, scope: !876)
!883 = !DILocation(line: 293, column: 19, scope: !876)
!884 = !DILocation(line: 293, column: 17, scope: !876)
!885 = !DILocation(line: 293, column: 5, scope: !876)
!886 = !DILocation(line: 294, column: 13, scope: !887)
!887 = distinct !DILexicalBlock(scope: !876, file: !318, line: 294, column: 13)
!888 = !DILocation(line: 294, column: 18, scope: !887)
!889 = !DILocation(line: 294, column: 31, scope: !887)
!890 = !DILocation(line: 294, column: 35, scope: !887)
!891 = !DILocation(line: 295, column: 7, scope: !887)
!892 = !DILocation(line: 295, column: 12, scope: !887)
!893 = !DILocation(line: 295, column: 23, scope: !887)
!894 = !DILocation(line: 295, column: 29, scope: !887)
!895 = !DILocation(line: 296, column: 7, scope: !887)
!896 = !DILocation(line: 296, column: 12, scope: !887)
!897 = !DILocation(line: 296, column: 19, scope: !887)
!898 = !DILocation(line: 296, column: 24, scope: !887)
!899 = !DILocation(line: 296, column: 17, scope: !887)
!900 = !DILocation(line: 294, column: 13, scope: !901)
!901 = !DILexicalBlockFile(scope: !876, file: !318, discriminator: 1)
!902 = !DILocation(line: 299, column: 5, scope: !903)
!903 = distinct !DILexicalBlock(scope: !887, file: !318, line: 296, column: 37)
!904 = !DILocation(line: 300, column: 5, scope: !903)
!905 = !DILocation(line: 300, column: 10, scope: !903)
!906 = !DILocation(line: 300, column: 16, scope: !903)
!907 = !DILocation(line: 301, column: 23, scope: !903)
!908 = !DILocation(line: 301, column: 28, scope: !903)
!909 = !DILocation(line: 301, column: 5, scope: !903)
!910 = !DILocation(line: 301, column: 10, scope: !903)
!911 = !DILocation(line: 301, column: 21, scope: !903)
!912 = !DILocation(line: 302, column: 4, scope: !903)
!913 = !DILocation(line: 303, column: 3, scope: !877)
!914 = !DILocation(line: 304, column: 2, scope: !866)
!915 = !DILocation(line: 288, column: 43, scope: !916)
!916 = !DILexicalBlockFile(scope: !862, file: !318, discriminator: 2)
!917 = !DILocation(line: 288, column: 48, scope: !916)
!918 = !DILocation(line: 288, column: 41, scope: !916)
!919 = !DILocation(line: 288, column: 2, scope: !916)
!920 = distinct !{!920, !921}
!921 = !DILocation(line: 288, column: 2, scope: !702)
!922 = !DILocation(line: 306, column: 10, scope: !702)
!923 = !DILocation(line: 306, column: 8, scope: !702)
!924 = !DILocation(line: 307, column: 13, scope: !925)
!925 = distinct !DILexicalBlock(scope: !702, file: !318, line: 307, column: 2)
!926 = !DILocation(line: 307, column: 11, scope: !925)
!927 = !DILocation(line: 307, column: 7, scope: !925)
!928 = !DILocation(line: 307, column: 26, scope: !929)
!929 = !DILexicalBlockFile(scope: !930, file: !318, discriminator: 1)
!930 = distinct !DILexicalBlock(scope: !925, file: !318, line: 307, column: 2)
!931 = !DILocation(line: 307, column: 30, scope: !929)
!932 = !DILocation(line: 307, column: 2, scope: !929)
!933 = !DILocalVariable(name: "rec", scope: !934, file: !318, line: 308, type: !174)
!934 = distinct !DILexicalBlock(scope: !930, file: !318, line: 307, column: 55)
!935 = !DILocation(line: 308, column: 18, scope: !934)
!936 = !DILocation(line: 308, column: 24, scope: !934)
!937 = !DILocation(line: 308, column: 29, scope: !934)
!938 = !DILocation(line: 310, column: 12, scope: !934)
!939 = !DILocation(line: 310, column: 17, scope: !934)
!940 = !DILocation(line: 310, column: 9, scope: !934)
!941 = !DILocation(line: 311, column: 10, scope: !942)
!942 = distinct !DILexicalBlock(scope: !934, file: !318, line: 311, column: 7)
!943 = !DILocation(line: 311, column: 16, scope: !942)
!944 = !DILocation(line: 311, column: 27, scope: !942)
!945 = !DILocation(line: 311, column: 33, scope: !942)
!946 = !DILocation(line: 311, column: 37, scope: !947)
!947 = !DILexicalBlockFile(scope: !942, file: !318, discriminator: 1)
!948 = !DILocation(line: 311, column: 48, scope: !947)
!949 = !DILocation(line: 311, column: 54, scope: !947)
!950 = !DILocation(line: 311, column: 44, scope: !947)
!951 = !DILocation(line: 311, column: 66, scope: !947)
!952 = !DILocation(line: 311, column: 70, scope: !953)
!953 = !DILexicalBlockFile(scope: !942, file: !318, discriminator: 2)
!954 = !DILocation(line: 311, column: 76, scope: !953)
!955 = !DILocation(line: 311, column: 85, scope: !953)
!956 = !DILocation(line: 311, column: 81, scope: !953)
!957 = !DILocation(line: 311, column: 92, scope: !953)
!958 = !DILocation(line: 311, column: 96, scope: !959)
!959 = !DILexicalBlockFile(scope: !942, file: !318, discriminator: 3)
!960 = !DILocation(line: 311, column: 102, scope: !959)
!961 = !DILocation(line: 311, column: 119, scope: !959)
!962 = !DILocation(line: 311, column: 125, scope: !959)
!963 = !DILocation(line: 311, column: 115, scope: !959)
!964 = !DILocation(line: 311, column: 7, scope: !959)
!965 = !DILocation(line: 312, column: 4, scope: !966)
!966 = distinct !DILexicalBlock(scope: !942, file: !318, line: 311, column: 132)
!967 = !DILocation(line: 312, column: 9, scope: !966)
!968 = !DILocation(line: 312, column: 15, scope: !966)
!969 = !DILocation(line: 313, column: 8, scope: !970)
!970 = distinct !DILexicalBlock(scope: !966, file: !318, line: 313, column: 8)
!971 = !DILocation(line: 313, column: 13, scope: !970)
!972 = !DILocation(line: 313, column: 24, scope: !970)
!973 = !DILocation(line: 313, column: 30, scope: !970)
!974 = !DILocation(line: 314, column: 8, scope: !970)
!975 = !DILocation(line: 314, column: 16, scope: !970)
!976 = !DILocation(line: 314, column: 21, scope: !970)
!977 = !DILocation(line: 314, column: 14, scope: !970)
!978 = !DILocation(line: 313, column: 8, scope: !979)
!979 = !DILexicalBlockFile(scope: !966, file: !318, discriminator: 1)
!980 = !DILocation(line: 315, column: 5, scope: !981)
!981 = distinct !DILexicalBlock(scope: !970, file: !318, line: 314, column: 33)
!982 = !DILocation(line: 316, column: 5, scope: !981)
!983 = !DILocation(line: 316, column: 10, scope: !981)
!984 = !DILocation(line: 316, column: 16, scope: !981)
!985 = !DILocation(line: 317, column: 23, scope: !981)
!986 = !DILocation(line: 317, column: 5, scope: !981)
!987 = !DILocation(line: 317, column: 10, scope: !981)
!988 = !DILocation(line: 317, column: 21, scope: !981)
!989 = !DILocation(line: 318, column: 4, scope: !981)
!990 = !DILocation(line: 319, column: 16, scope: !966)
!991 = !DILocation(line: 319, column: 4, scope: !966)
!992 = !DILocation(line: 319, column: 9, scope: !966)
!993 = !DILocation(line: 319, column: 14, scope: !966)
!994 = !DILocation(line: 320, column: 3, scope: !966)
!995 = !DILocation(line: 321, column: 2, scope: !934)
!996 = !DILocation(line: 307, column: 44, scope: !997)
!997 = !DILexicalBlockFile(scope: !930, file: !318, discriminator: 2)
!998 = !DILocation(line: 307, column: 49, scope: !997)
!999 = !DILocation(line: 307, column: 42, scope: !997)
!1000 = !DILocation(line: 307, column: 2, scope: !997)
!1001 = distinct !{!1001, !1002}
!1002 = !DILocation(line: 307, column: 2, scope: !702)
!1003 = !DILocation(line: 322, column: 15, scope: !702)
!1004 = !DILocation(line: 322, column: 2, scope: !702)
!1005 = !DILocation(line: 324, column: 15, scope: !702)
!1006 = !DILocation(line: 324, column: 13, scope: !702)
!1007 = !DILocation(line: 325, column: 1, scope: !702)
!1008 = distinct !DISubprogram(name: "statusbar_item_redraw", scope: !318, file: !318, line: 346, type: !1009, isLocal: false, isDefinition: true, scopeLine: 347, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{null, !174}
!1011 = !DILocalVariable(name: "item", arg: 1, scope: !1008, file: !318, line: 346, type: !174)
!1012 = !DILocation(line: 346, column: 43, scope: !1008)
!1013 = !DILocalVariable(name: "old_active_win", scope: !1008, file: !318, line: 348, type: !58)
!1014 = !DILocation(line: 348, column: 21, scope: !1008)
!1015 = !DILocation(line: 350, column: 2, scope: !1008)
!1016 = distinct !{!1016, !1015}
!1017 = !DILocation(line: 350, column: 10, scope: !1018)
!1018 = !DILexicalBlockFile(scope: !1019, file: !318, discriminator: 1)
!1019 = distinct !DILexicalBlock(scope: !1020, file: !318, line: 350, column: 10)
!1020 = distinct !DILexicalBlock(scope: !1008, file: !318, line: 350, column: 4)
!1021 = !DILocation(line: 350, column: 15, scope: !1018)
!1022 = !DILocation(line: 350, column: 5, scope: !1023)
!1023 = !DILexicalBlockFile(scope: !1024, file: !318, discriminator: 2)
!1024 = distinct !DILexicalBlock(scope: !1019, file: !318, line: 350, column: 3)
!1025 = !DILocation(line: 350, column: 14, scope: !1026)
!1026 = !DILexicalBlockFile(scope: !1027, file: !318, discriminator: 3)
!1027 = distinct !DILexicalBlock(scope: !1019, file: !318, line: 350, column: 12)
!1028 = !DILocation(line: 350, column: 99, scope: !1026)
!1029 = !DILocation(line: 350, column: 110, scope: !1030)
!1030 = !DILexicalBlockFile(scope: !1020, file: !318, discriminator: 4)
!1031 = !DILocation(line: 352, column: 19, scope: !1008)
!1032 = !DILocation(line: 352, column: 17, scope: !1008)
!1033 = !DILocation(line: 353, column: 13, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1008, file: !318, line: 353, column: 13)
!1035 = !DILocation(line: 353, column: 19, scope: !1034)
!1036 = !DILocation(line: 353, column: 24, scope: !1034)
!1037 = !DILocation(line: 353, column: 38, scope: !1034)
!1038 = !DILocation(line: 353, column: 13, scope: !1008)
!1039 = !DILocation(line: 354, column: 16, scope: !1034)
!1040 = !DILocation(line: 354, column: 22, scope: !1034)
!1041 = !DILocation(line: 354, column: 27, scope: !1034)
!1042 = !DILocation(line: 354, column: 42, scope: !1034)
!1043 = !DILocation(line: 354, column: 14, scope: !1034)
!1044 = !DILocation(line: 354, column: 3, scope: !1034)
!1045 = !DILocation(line: 356, column: 2, scope: !1008)
!1046 = !DILocation(line: 356, column: 8, scope: !1008)
!1047 = !DILocation(line: 356, column: 13, scope: !1008)
!1048 = !DILocation(line: 358, column: 2, scope: !1008)
!1049 = !DILocation(line: 358, column: 8, scope: !1008)
!1050 = !DILocation(line: 358, column: 14, scope: !1008)
!1051 = !DILocation(line: 359, column: 2, scope: !1008)
!1052 = !DILocation(line: 359, column: 8, scope: !1008)
!1053 = !DILocation(line: 359, column: 13, scope: !1008)
!1054 = !DILocation(line: 359, column: 19, scope: !1008)
!1055 = !DILocation(line: 360, column: 2, scope: !1008)
!1056 = !DILocation(line: 362, column: 6, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1008, file: !318, line: 362, column: 6)
!1058 = !DILocation(line: 362, column: 12, scope: !1057)
!1059 = !DILocation(line: 362, column: 24, scope: !1057)
!1060 = !DILocation(line: 362, column: 30, scope: !1057)
!1061 = !DILocation(line: 362, column: 21, scope: !1057)
!1062 = !DILocation(line: 362, column: 6, scope: !1008)
!1063 = !DILocation(line: 365, column: 20, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1057, file: !318, line: 362, column: 36)
!1065 = !DILocation(line: 365, column: 26, scope: !1064)
!1066 = !DILocation(line: 365, column: 31, scope: !1064)
!1067 = !DILocation(line: 365, column: 37, scope: !1064)
!1068 = !DILocation(line: 365, column: 45, scope: !1064)
!1069 = !DILocation(line: 365, column: 3, scope: !1064)
!1070 = !DILocation(line: 366, column: 2, scope: !1064)
!1071 = !DILocation(line: 368, column: 15, scope: !1008)
!1072 = !DILocation(line: 368, column: 13, scope: !1008)
!1073 = !DILocation(line: 369, column: 1, scope: !1008)
!1074 = !DILocation(line: 369, column: 1, scope: !1075)
!1075 = !DILexicalBlockFile(scope: !1008, file: !318, discriminator: 1)
!1076 = distinct !DISubprogram(name: "statusbar_items_redraw", scope: !318, file: !318, line: 371, type: !393, isLocal: false, isDefinition: true, scopeLine: 372, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1077 = !DILocalVariable(name: "name", arg: 1, scope: !1076, file: !318, line: 371, type: !32)
!1078 = !DILocation(line: 371, column: 41, scope: !1076)
!1079 = !DILocation(line: 373, column: 38, scope: !1076)
!1080 = !DILocation(line: 373, column: 56, scope: !1076)
!1081 = !DILocation(line: 373, column: 18, scope: !1076)
!1082 = !DILocation(line: 373, column: 2, scope: !1083)
!1083 = !DILexicalBlockFile(scope: !1076, file: !318, discriminator: 1)
!1084 = !DILocation(line: 375, column: 1, scope: !1076)
!1085 = distinct !DISubprogram(name: "statusbar_create", scope: !318, file: !318, line: 470, type: !1086, isLocal: false, isDefinition: true, scopeLine: 473, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!34, !5, !40, !52}
!1088 = !DILocalVariable(name: "group", arg: 1, scope: !1085, file: !318, line: 470, type: !5)
!1089 = !DILocation(line: 470, column: 54, scope: !1085)
!1090 = !DILocalVariable(name: "config", arg: 2, scope: !1085, file: !318, line: 471, type: !40)
!1091 = !DILocation(line: 471, column: 55, scope: !1085)
!1092 = !DILocalVariable(name: "parent_window", arg: 3, scope: !1085, file: !318, line: 472, type: !52)
!1093 = !DILocation(line: 472, column: 50, scope: !1085)
!1094 = !DILocalVariable(name: "bar", scope: !1085, file: !318, line: 474, type: !34)
!1095 = !DILocation(line: 474, column: 17, scope: !1085)
!1096 = !DILocalVariable(name: "theme", scope: !1085, file: !318, line: 475, type: !1097)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64, align: 64)
!1098 = !DIDerivedType(tag: DW_TAG_typedef, name: "THEME_REC", file: !1099, line: 33, baseType: !1100)
!1099 = !DIFile(filename: "../../src/fe-common/core/themes.h", directory: "/home/lichi/Desktop/irssi/task1")
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1099, line: 13, size: 8768, align: 64, elements: !1101)
!1101 = !{!1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1113, !1114, !1115}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1100, file: !1099, line: 14, baseType: !46, size: 32, align: 32)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !1100, file: !1099, line: 16, baseType: !11, size: 64, align: 64, offset: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1100, file: !1099, line: 17, baseType: !11, size: 64, align: 64, offset: 128)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "last_modify", scope: !1100, file: !1099, line: 18, baseType: !91, size: 64, align: 64, offset: 192)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "default_color", scope: !1100, file: !1099, line: 20, baseType: !46, size: 32, align: 32, offset: 256)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "info_eol", scope: !1100, file: !1099, line: 23, baseType: !111, size: 1, align: 32, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !1100, file: !1099, line: 26, baseType: !79, size: 64, align: 64, offset: 320)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "replace_keys", scope: !1100, file: !1099, line: 28, baseType: !1110, size: 8192, align: 32, offset: 384)
!1110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 8192, align: 32, elements: !1111)
!1111 = !{!1112}
!1112 = !DISubrange(count: 256)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "replace_values", scope: !1100, file: !1099, line: 29, baseType: !14, size: 64, align: 64, offset: 8576)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "abstracts", scope: !1100, file: !1099, line: 30, baseType: !79, size: 64, align: 64, offset: 8640)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "gui_data", scope: !1100, file: !1099, line: 32, baseType: !4, size: 64, align: 64, offset: 8704)
!1116 = !DILocation(line: 475, column: 13, scope: !1085)
!1117 = !DILocalVariable(name: "tmp", scope: !1085, file: !318, line: 476, type: !14)
!1118 = !DILocation(line: 476, column: 17, scope: !1085)
!1119 = !DILocalVariable(name: "name", scope: !1085, file: !318, line: 477, type: !11)
!1120 = !DILocation(line: 477, column: 8, scope: !1085)
!1121 = !DILocalVariable(name: "value", scope: !1085, file: !318, line: 477, type: !11)
!1122 = !DILocation(line: 477, column: 15, scope: !1085)
!1123 = !DILocation(line: 479, column: 9, scope: !1085)
!1124 = distinct !{!1124, !1123}
!1125 = !DILocation(line: 479, column: 17, scope: !1126)
!1126 = !DILexicalBlockFile(scope: !1127, file: !318, discriminator: 1)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !318, line: 479, column: 17)
!1128 = distinct !DILexicalBlock(scope: !1085, file: !318, line: 479, column: 11)
!1129 = !DILocation(line: 479, column: 23, scope: !1126)
!1130 = !DILocation(line: 479, column: 12, scope: !1131)
!1131 = !DILexicalBlockFile(scope: !1132, file: !318, discriminator: 2)
!1132 = distinct !DILexicalBlock(scope: !1127, file: !318, line: 479, column: 10)
!1133 = !DILocation(line: 479, column: 21, scope: !1134)
!1134 = !DILexicalBlockFile(scope: !1135, file: !318, discriminator: 3)
!1135 = distinct !DILexicalBlock(scope: !1127, file: !318, line: 479, column: 19)
!1136 = !DILocation(line: 479, column: 107, scope: !1134)
!1137 = !DILocation(line: 479, column: 14, scope: !1138)
!1138 = !DILexicalBlockFile(scope: !1128, file: !318, discriminator: 4)
!1139 = !DILocation(line: 480, column: 9, scope: !1085)
!1140 = distinct !{!1140, !1139}
!1141 = !DILocation(line: 480, column: 17, scope: !1142)
!1142 = !DILexicalBlockFile(scope: !1143, file: !318, discriminator: 1)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !318, line: 480, column: 17)
!1144 = distinct !DILexicalBlock(scope: !1085, file: !318, line: 480, column: 11)
!1145 = !DILocation(line: 480, column: 24, scope: !1142)
!1146 = !DILocation(line: 480, column: 12, scope: !1147)
!1147 = !DILexicalBlockFile(scope: !1148, file: !318, discriminator: 2)
!1148 = distinct !DILexicalBlock(scope: !1143, file: !318, line: 480, column: 10)
!1149 = !DILocation(line: 480, column: 21, scope: !1150)
!1150 = !DILexicalBlockFile(scope: !1151, file: !318, discriminator: 3)
!1151 = distinct !DILexicalBlock(scope: !1143, file: !318, line: 480, column: 19)
!1152 = !DILocation(line: 480, column: 108, scope: !1150)
!1153 = !DILocation(line: 480, column: 14, scope: !1154)
!1154 = !DILexicalBlockFile(scope: !1144, file: !318, discriminator: 4)
!1155 = !DILocation(line: 481, column: 2, scope: !1085)
!1156 = distinct !{!1156, !1155}
!1157 = !DILocation(line: 481, column: 10, scope: !1158)
!1158 = !DILexicalBlockFile(scope: !1159, file: !318, discriminator: 1)
!1159 = distinct !DILexicalBlock(scope: !1160, file: !318, line: 481, column: 10)
!1160 = distinct !DILexicalBlock(scope: !1085, file: !318, line: 481, column: 4)
!1161 = !DILocation(line: 481, column: 18, scope: !1158)
!1162 = !DILocation(line: 481, column: 23, scope: !1158)
!1163 = !DILocation(line: 481, column: 28, scope: !1158)
!1164 = !DILocation(line: 481, column: 31, scope: !1165)
!1165 = !DILexicalBlockFile(scope: !1159, file: !318, discriminator: 2)
!1166 = !DILocation(line: 481, column: 45, scope: !1165)
!1167 = !DILocation(line: 481, column: 10, scope: !1165)
!1168 = !DILocation(line: 481, column: 5, scope: !1169)
!1169 = !DILexicalBlockFile(scope: !1170, file: !318, discriminator: 3)
!1170 = distinct !DILexicalBlock(scope: !1159, file: !318, line: 481, column: 3)
!1171 = !DILocation(line: 481, column: 14, scope: !1172)
!1172 = !DILexicalBlockFile(scope: !1173, file: !318, discriminator: 4)
!1173 = distinct !DILexicalBlock(scope: !1159, file: !318, line: 481, column: 12)
!1174 = !DILocation(line: 481, column: 149, scope: !1172)
!1175 = !DILocation(line: 481, column: 7, scope: !1176)
!1176 = !DILexicalBlockFile(scope: !1160, file: !318, discriminator: 5)
!1177 = !DILocation(line: 484, column: 27, scope: !1085)
!1178 = !DILocation(line: 484, column: 9, scope: !1085)
!1179 = !DILocation(line: 484, column: 6, scope: !1085)
!1180 = !DILocation(line: 485, column: 31, scope: !1085)
!1181 = !DILocation(line: 485, column: 38, scope: !1085)
!1182 = !DILocation(line: 485, column: 44, scope: !1085)
!1183 = !DILocation(line: 485, column: 16, scope: !1085)
!1184 = !DILocation(line: 485, column: 2, scope: !1085)
!1185 = !DILocation(line: 485, column: 9, scope: !1085)
!1186 = !DILocation(line: 485, column: 14, scope: !1085)
!1187 = !DILocation(line: 487, column: 15, scope: !1085)
!1188 = !DILocation(line: 487, column: 2, scope: !1085)
!1189 = !DILocation(line: 487, column: 7, scope: !1085)
!1190 = !DILocation(line: 487, column: 13, scope: !1085)
!1191 = !DILocation(line: 489, column: 23, scope: !1085)
!1192 = !DILocation(line: 489, column: 9, scope: !1085)
!1193 = !DILocation(line: 489, column: 14, scope: !1085)
!1194 = !DILocation(line: 489, column: 21, scope: !1085)
!1195 = !DILocation(line: 490, column: 30, scope: !1085)
!1196 = !DILocation(line: 490, column: 9, scope: !1085)
!1197 = !DILocation(line: 490, column: 14, scope: !1085)
!1198 = !DILocation(line: 490, column: 28, scope: !1085)
!1199 = !DILocation(line: 492, column: 2, scope: !1085)
!1200 = !DILocation(line: 493, column: 2, scope: !1085)
!1201 = !DILocation(line: 493, column: 7, scope: !1085)
!1202 = !DILocation(line: 493, column: 13, scope: !1085)
!1203 = !DILocation(line: 494, column: 9, scope: !1085)
!1204 = !DILocation(line: 494, column: 14, scope: !1085)
!1205 = !DILocation(line: 494, column: 25, scope: !1085)
!1206 = !DILocation(line: 496, column: 9, scope: !1085)
!1207 = !DILocation(line: 497, column: 2, scope: !1085)
!1208 = !DILocation(line: 498, column: 2, scope: !1085)
!1209 = !DILocation(line: 500, column: 6, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1085, file: !318, line: 500, column: 6)
!1211 = !DILocation(line: 500, column: 14, scope: !1210)
!1212 = !DILocation(line: 500, column: 19, scope: !1210)
!1213 = !DILocation(line: 500, column: 6, scope: !1085)
!1214 = !DILocation(line: 502, column: 29, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1210, file: !318, line: 500, column: 25)
!1216 = !DILocation(line: 502, column: 37, scope: !1215)
!1217 = !DILocation(line: 502, column: 47, scope: !1215)
!1218 = !DILocation(line: 503, column: 8, scope: !1215)
!1219 = !DILocation(line: 503, column: 16, scope: !1215)
!1220 = !DILocation(line: 503, column: 26, scope: !1215)
!1221 = !DILocation(line: 502, column: 3, scope: !1215)
!1222 = !DILocation(line: 504, column: 25, scope: !1215)
!1223 = !DILocation(line: 504, column: 23, scope: !1215)
!1224 = !DILocation(line: 505, column: 2, scope: !1215)
!1225 = !DILocation(line: 508, column: 19, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1210, file: !318, line: 505, column: 9)
!1227 = !DILocation(line: 508, column: 34, scope: !1226)
!1228 = !DILocation(line: 508, column: 46, scope: !1226)
!1229 = !DILocation(line: 508, column: 4, scope: !1226)
!1230 = !DILocation(line: 507, column: 3, scope: !1226)
!1231 = !DILocation(line: 507, column: 18, scope: !1226)
!1232 = !DILocation(line: 507, column: 29, scope: !1226)
!1233 = !DILocation(line: 509, column: 34, scope: !1226)
!1234 = !DILocation(line: 510, column: 13, scope: !1226)
!1235 = !DILocation(line: 510, column: 21, scope: !1226)
!1236 = !DILocation(line: 510, column: 31, scope: !1226)
!1237 = !DILocation(line: 511, column: 13, scope: !1226)
!1238 = !DILocation(line: 511, column: 21, scope: !1226)
!1239 = !DILocation(line: 511, column: 31, scope: !1226)
!1240 = !DILocation(line: 509, column: 3, scope: !1226)
!1241 = !DILocation(line: 512, column: 11, scope: !1226)
!1242 = !DILocation(line: 512, column: 25, scope: !1226)
!1243 = !DILocation(line: 512, column: 32, scope: !1226)
!1244 = !DILocation(line: 512, column: 35, scope: !1245)
!1245 = !DILexicalBlockFile(scope: !1226, file: !318, discriminator: 1)
!1246 = !DILocation(line: 512, column: 50, scope: !1245)
!1247 = !DILocation(line: 512, column: 57, scope: !1245)
!1248 = !DILocation(line: 512, column: 65, scope: !1245)
!1249 = !DILocation(line: 513, column: 4, scope: !1226)
!1250 = !DILocation(line: 513, column: 19, scope: !1226)
!1251 = !DILocation(line: 513, column: 27, scope: !1226)
!1252 = !DILocation(line: 513, column: 33, scope: !1226)
!1253 = !DILocation(line: 512, column: 11, scope: !1254)
!1254 = !DILexicalBlockFile(scope: !1226, file: !318, discriminator: 2)
!1255 = !DILocation(line: 514, column: 4, scope: !1226)
!1256 = !DILocation(line: 514, column: 19, scope: !1226)
!1257 = !DILocation(line: 514, column: 27, scope: !1226)
!1258 = !DILocation(line: 512, column: 11, scope: !1259)
!1259 = !DILexicalBlockFile(scope: !1226, file: !318, discriminator: 3)
!1260 = !DILocation(line: 514, column: 35, scope: !1245)
!1261 = !DILocation(line: 512, column: 11, scope: !1262)
!1262 = !DILexicalBlockFile(scope: !1226, file: !318, discriminator: 4)
!1263 = !DILocation(line: 512, column: 11, scope: !1264)
!1264 = !DILexicalBlockFile(scope: !1226, file: !318, discriminator: 5)
!1265 = !DILocation(line: 512, column: 9, scope: !1264)
!1266 = !DILocation(line: 517, column: 9, scope: !1085)
!1267 = !DILocation(line: 518, column: 2, scope: !1085)
!1268 = !DILocation(line: 519, column: 2, scope: !1085)
!1269 = !DILocation(line: 522, column: 46, scope: !1085)
!1270 = !DILocation(line: 522, column: 54, scope: !1085)
!1271 = !DILocation(line: 522, column: 16, scope: !1085)
!1272 = !DILocation(line: 522, column: 14, scope: !1085)
!1273 = !DILocation(line: 523, column: 30, scope: !1085)
!1274 = !DILocation(line: 523, column: 37, scope: !1085)
!1275 = !DILocation(line: 523, column: 10, scope: !1085)
!1276 = !DILocation(line: 523, column: 8, scope: !1085)
!1277 = !DILocation(line: 524, column: 9, scope: !1085)
!1278 = !DILocation(line: 524, column: 2, scope: !1085)
!1279 = !DILocation(line: 526, column: 7, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1085, file: !318, line: 526, column: 6)
!1281 = !DILocation(line: 526, column: 6, scope: !1280)
!1282 = !DILocation(line: 526, column: 13, scope: !1280)
!1283 = !DILocation(line: 526, column: 6, scope: !1085)
!1284 = !DILocation(line: 528, column: 10, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1280, file: !318, line: 526, column: 22)
!1286 = !DILocation(line: 528, column: 3, scope: !1285)
!1287 = !DILocation(line: 530, column: 40, scope: !1285)
!1288 = !DILocation(line: 530, column: 47, scope: !1285)
!1289 = !DILocation(line: 530, column: 10, scope: !1285)
!1290 = !DILocation(line: 530, column: 8, scope: !1285)
!1291 = !DILocation(line: 531, column: 31, scope: !1285)
!1292 = !DILocation(line: 531, column: 38, scope: !1285)
!1293 = !DILocation(line: 531, column: 11, scope: !1285)
!1294 = !DILocation(line: 531, column: 9, scope: !1285)
!1295 = !DILocation(line: 532, column: 10, scope: !1285)
!1296 = !DILocation(line: 532, column: 3, scope: !1285)
!1297 = !DILocation(line: 534, column: 8, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1285, file: !318, line: 534, column: 7)
!1299 = !DILocation(line: 534, column: 7, scope: !1298)
!1300 = !DILocation(line: 534, column: 14, scope: !1298)
!1301 = !DILocation(line: 534, column: 7, scope: !1285)
!1302 = !DILocation(line: 537, column: 32, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1298, file: !318, line: 534, column: 23)
!1304 = !DILocation(line: 537, column: 25, scope: !1303)
!1305 = !DILocation(line: 538, column: 32, scope: !1303)
!1306 = !DILocation(line: 538, column: 12, scope: !1303)
!1307 = !DILocation(line: 538, column: 10, scope: !1303)
!1308 = !DILocation(line: 539, column: 3, scope: !1303)
!1309 = !DILocation(line: 540, column: 2, scope: !1285)
!1310 = !DILocation(line: 542, column: 7, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1085, file: !318, line: 542, column: 6)
!1312 = !DILocation(line: 542, column: 6, scope: !1311)
!1313 = !DILocation(line: 542, column: 13, scope: !1311)
!1314 = !DILocation(line: 542, column: 6, scope: !1085)
!1315 = !DILocation(line: 543, column: 24, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1311, file: !318, line: 542, column: 22)
!1317 = !DILocation(line: 543, column: 17, scope: !1316)
!1318 = !DILocation(line: 544, column: 11, scope: !1316)
!1319 = !DILocation(line: 544, column: 9, scope: !1316)
!1320 = !DILocation(line: 545, column: 2, scope: !1316)
!1321 = !DILocation(line: 546, column: 33, scope: !1085)
!1322 = !DILocation(line: 546, column: 15, scope: !1085)
!1323 = !DILocation(line: 546, column: 2, scope: !1085)
!1324 = !DILocation(line: 546, column: 7, scope: !1085)
!1325 = !DILocation(line: 546, column: 13, scope: !1085)
!1326 = !DILocation(line: 547, column: 9, scope: !1085)
!1327 = !DILocation(line: 547, column: 2, scope: !1085)
!1328 = !DILocation(line: 549, column: 32, scope: !1085)
!1329 = !DILocation(line: 549, column: 9, scope: !1085)
!1330 = !DILocation(line: 550, column: 45, scope: !1085)
!1331 = !DILocation(line: 550, column: 9, scope: !1085)
!1332 = !DILocation(line: 553, column: 13, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1085, file: !318, line: 553, column: 2)
!1334 = !DILocation(line: 553, column: 21, scope: !1333)
!1335 = !DILocation(line: 553, column: 11, scope: !1333)
!1336 = !DILocation(line: 553, column: 7, scope: !1333)
!1337 = !DILocation(line: 553, column: 28, scope: !1338)
!1338 = !DILexicalBlockFile(scope: !1339, file: !318, discriminator: 1)
!1339 = distinct !DILexicalBlock(scope: !1333, file: !318, line: 553, column: 2)
!1340 = !DILocation(line: 553, column: 32, scope: !1338)
!1341 = !DILocation(line: 553, column: 2, scope: !1338)
!1342 = !DILocalVariable(name: "rec", scope: !1343, file: !318, line: 554, type: !180)
!1343 = distinct !DILexicalBlock(scope: !1339, file: !318, line: 553, column: 57)
!1344 = !DILocation(line: 554, column: 25, scope: !1343)
!1345 = !DILocation(line: 554, column: 31, scope: !1343)
!1346 = !DILocation(line: 554, column: 36, scope: !1343)
!1347 = !DILocation(line: 556, column: 39, scope: !1343)
!1348 = !DILocation(line: 556, column: 44, scope: !1343)
!1349 = !DILocation(line: 556, column: 17, scope: !1343)
!1350 = !DILocation(line: 557, column: 2, scope: !1343)
!1351 = !DILocation(line: 553, column: 46, scope: !1352)
!1352 = !DILexicalBlockFile(scope: !1339, file: !318, discriminator: 2)
!1353 = !DILocation(line: 553, column: 51, scope: !1352)
!1354 = !DILocation(line: 553, column: 44, scope: !1352)
!1355 = !DILocation(line: 553, column: 2, scope: !1352)
!1356 = distinct !{!1356, !1357}
!1357 = !DILocation(line: 553, column: 2, scope: !1085)
!1358 = !DILocation(line: 558, column: 9, scope: !1085)
!1359 = !DILocation(line: 558, column: 2, scope: !1085)
!1360 = !DILocation(line: 559, column: 1, scope: !1085)
!1361 = distinct !DISubprogram(name: "sig_terminal_resized", scope: !318, file: !318, line: 430, type: !1362, isLocal: true, isDefinition: true, scopeLine: 431, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{null}
!1364 = !DILocalVariable(name: "tmp", scope: !1361, file: !318, line: 432, type: !14)
!1365 = !DILocation(line: 432, column: 10, scope: !1361)
!1366 = !DILocation(line: 434, column: 13, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1361, file: !318, line: 434, column: 2)
!1368 = !DILocation(line: 434, column: 37, scope: !1367)
!1369 = !DILocation(line: 434, column: 11, scope: !1367)
!1370 = !DILocation(line: 434, column: 7, scope: !1367)
!1371 = !DILocation(line: 434, column: 43, scope: !1372)
!1372 = !DILexicalBlockFile(scope: !1373, file: !318, discriminator: 1)
!1373 = distinct !DILexicalBlock(scope: !1367, file: !318, line: 434, column: 2)
!1374 = !DILocation(line: 434, column: 47, scope: !1372)
!1375 = !DILocation(line: 434, column: 2, scope: !1372)
!1376 = !DILocalVariable(name: "bar", scope: !1377, file: !318, line: 435, type: !34)
!1377 = distinct !DILexicalBlock(scope: !1373, file: !318, line: 434, column: 72)
!1378 = !DILocation(line: 435, column: 18, scope: !1377)
!1379 = !DILocation(line: 435, column: 24, scope: !1377)
!1380 = !DILocation(line: 435, column: 29, scope: !1377)
!1381 = !DILocation(line: 437, column: 7, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1377, file: !318, line: 437, column: 7)
!1383 = !DILocation(line: 437, column: 12, scope: !1382)
!1384 = !DILocation(line: 437, column: 20, scope: !1382)
!1385 = !DILocation(line: 437, column: 25, scope: !1382)
!1386 = !DILocation(line: 437, column: 30, scope: !1382)
!1387 = !DILocation(line: 438, column: 7, scope: !1382)
!1388 = !DILocation(line: 438, column: 12, scope: !1382)
!1389 = !DILocation(line: 438, column: 20, scope: !1382)
!1390 = !DILocation(line: 438, column: 30, scope: !1382)
!1391 = !DILocation(line: 437, column: 7, scope: !1392)
!1392 = !DILexicalBlockFile(scope: !1377, file: !318, discriminator: 1)
!1393 = !DILocation(line: 439, column: 27, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1382, file: !318, line: 438, column: 36)
!1395 = !DILocation(line: 439, column: 4, scope: !1394)
!1396 = !DILocation(line: 440, column: 25, scope: !1394)
!1397 = !DILocation(line: 442, column: 2, scope: !1377)
!1398 = !DILocation(line: 434, column: 61, scope: !1399)
!1399 = !DILexicalBlockFile(scope: !1373, file: !318, discriminator: 2)
!1400 = !DILocation(line: 434, column: 66, scope: !1399)
!1401 = !DILocation(line: 434, column: 59, scope: !1399)
!1402 = !DILocation(line: 434, column: 2, scope: !1399)
!1403 = distinct !{!1403, !1404}
!1404 = !DILocation(line: 434, column: 2, scope: !1361)
!1405 = !DILocation(line: 443, column: 1, scope: !1361)
!1406 = distinct !DISubprogram(name: "sig_mainwindow_resized", scope: !318, file: !318, line: 459, type: !1407, isLocal: true, isDefinition: true, scopeLine: 460, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{null, !52}
!1409 = !DILocalVariable(name: "window", arg: 1, scope: !1406, file: !318, line: 459, type: !52)
!1410 = !DILocation(line: 459, column: 53, scope: !1406)
!1411 = !DILocalVariable(name: "tmp", scope: !1406, file: !318, line: 461, type: !14)
!1412 = !DILocation(line: 461, column: 10, scope: !1406)
!1413 = !DILocation(line: 462, column: 25, scope: !1406)
!1414 = !DILocation(line: 462, column: 2, scope: !1406)
!1415 = !DILocation(line: 463, column: 25, scope: !1406)
!1416 = !DILocation(line: 463, column: 2, scope: !1406)
!1417 = !DILocation(line: 464, column: 13, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1406, file: !318, line: 464, column: 2)
!1419 = !DILocation(line: 464, column: 21, scope: !1418)
!1420 = !DILocation(line: 464, column: 11, scope: !1418)
!1421 = !DILocation(line: 464, column: 7, scope: !1418)
!1422 = !DILocation(line: 464, column: 33, scope: !1423)
!1423 = !DILexicalBlockFile(scope: !1424, file: !318, discriminator: 1)
!1424 = distinct !DILexicalBlock(scope: !1418, file: !318, line: 464, column: 2)
!1425 = !DILocation(line: 464, column: 37, scope: !1423)
!1426 = !DILocation(line: 464, column: 2, scope: !1423)
!1427 = !DILocalVariable(name: "bar", scope: !1428, file: !318, line: 465, type: !34)
!1428 = distinct !DILexicalBlock(scope: !1424, file: !318, line: 464, column: 62)
!1429 = !DILocation(line: 465, column: 18, scope: !1428)
!1430 = !DILocation(line: 465, column: 24, scope: !1428)
!1431 = !DILocation(line: 465, column: 29, scope: !1428)
!1432 = !DILocation(line: 466, column: 20, scope: !1428)
!1433 = !DILocation(line: 466, column: 3, scope: !1428)
!1434 = !DILocation(line: 467, column: 2, scope: !1428)
!1435 = !DILocation(line: 464, column: 51, scope: !1436)
!1436 = !DILexicalBlockFile(scope: !1424, file: !318, discriminator: 2)
!1437 = !DILocation(line: 464, column: 56, scope: !1436)
!1438 = !DILocation(line: 464, column: 49, scope: !1436)
!1439 = !DILocation(line: 464, column: 2, scope: !1436)
!1440 = distinct !{!1440, !1441}
!1441 = !DILocation(line: 464, column: 2, scope: !1406)
!1442 = !DILocation(line: 468, column: 1, scope: !1406)
!1443 = distinct !DISubprogram(name: "statusbars_recalc_ypos", scope: !318, file: !318, line: 377, type: !509, isLocal: true, isDefinition: true, scopeLine: 378, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1444 = !DILocalVariable(name: "bar", arg: 1, scope: !1443, file: !318, line: 377, type: !34)
!1445 = !DILocation(line: 377, column: 51, scope: !1443)
!1446 = !DILocalVariable(name: "tmp", scope: !1443, file: !318, line: 379, type: !14)
!1447 = !DILocation(line: 379, column: 10, scope: !1443)
!1448 = !DILocalVariable(name: "bar_group", scope: !1443, file: !318, line: 379, type: !14)
!1449 = !DILocation(line: 379, column: 16, scope: !1443)
!1450 = !DILocalVariable(name: "ypos", scope: !1443, file: !318, line: 380, type: !46)
!1451 = !DILocation(line: 380, column: 13, scope: !1443)
!1452 = !DILocation(line: 384, column: 19, scope: !1443)
!1453 = !DILocation(line: 385, column: 8, scope: !1443)
!1454 = !DILocation(line: 385, column: 13, scope: !1443)
!1455 = !DILocation(line: 385, column: 21, scope: !1443)
!1456 = !DILocation(line: 385, column: 26, scope: !1443)
!1457 = !DILocation(line: 385, column: 33, scope: !1458)
!1458 = !DILexicalBlockFile(scope: !1443, file: !318, discriminator: 1)
!1459 = !DILocation(line: 385, column: 38, scope: !1458)
!1460 = !DILocation(line: 385, column: 45, scope: !1458)
!1461 = !DILocation(line: 385, column: 8, scope: !1458)
!1462 = !DILocation(line: 386, column: 17, scope: !1443)
!1463 = !DILocation(line: 386, column: 22, scope: !1443)
!1464 = !DILocation(line: 386, column: 37, scope: !1443)
!1465 = !DILocation(line: 385, column: 8, scope: !1466)
!1466 = !DILexicalBlockFile(scope: !1443, file: !318, discriminator: 2)
!1467 = !DILocation(line: 385, column: 8, scope: !1468)
!1468 = !DILexicalBlockFile(scope: !1443, file: !318, discriminator: 3)
!1469 = !DILocation(line: 385, column: 6, scope: !1468)
!1470 = !DILocation(line: 388, column: 9, scope: !1443)
!1471 = !DILocation(line: 388, column: 16, scope: !1472)
!1472 = !DILexicalBlockFile(scope: !1473, file: !318, discriminator: 1)
!1473 = distinct !DILexicalBlock(scope: !1474, file: !318, line: 388, column: 9)
!1474 = distinct !DILexicalBlock(scope: !1443, file: !318, line: 388, column: 9)
!1475 = !DILocation(line: 388, column: 20, scope: !1472)
!1476 = !DILocation(line: 388, column: 9, scope: !1472)
!1477 = !DILocalVariable(name: "rec", scope: !1478, file: !318, line: 389, type: !34)
!1478 = distinct !DILexicalBlock(scope: !1473, file: !318, line: 388, column: 45)
!1479 = !DILocation(line: 389, column: 18, scope: !1478)
!1480 = !DILocation(line: 389, column: 24, scope: !1478)
!1481 = !DILocation(line: 389, column: 29, scope: !1478)
!1482 = !DILocation(line: 391, column: 7, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1478, file: !318, line: 391, column: 7)
!1484 = !DILocation(line: 391, column: 12, scope: !1483)
!1485 = !DILocation(line: 391, column: 20, scope: !1483)
!1486 = !DILocation(line: 391, column: 28, scope: !1483)
!1487 = !DILocation(line: 391, column: 33, scope: !1483)
!1488 = !DILocation(line: 391, column: 41, scope: !1483)
!1489 = !DILocation(line: 391, column: 25, scope: !1483)
!1490 = !DILocation(line: 391, column: 46, scope: !1483)
!1491 = !DILocation(line: 392, column: 7, scope: !1483)
!1492 = !DILocation(line: 392, column: 12, scope: !1483)
!1493 = !DILocation(line: 392, column: 20, scope: !1483)
!1494 = !DILocation(line: 392, column: 33, scope: !1483)
!1495 = !DILocation(line: 392, column: 38, scope: !1483)
!1496 = !DILocation(line: 392, column: 46, scope: !1483)
!1497 = !DILocation(line: 392, column: 30, scope: !1483)
!1498 = !DILocation(line: 391, column: 7, scope: !1499)
!1499 = !DILexicalBlockFile(scope: !1478, file: !318, discriminator: 1)
!1500 = !DILocation(line: 393, column: 38, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1483, file: !318, line: 392, column: 57)
!1502 = !DILocation(line: 393, column: 49, scope: !1501)
!1503 = !DILocation(line: 393, column: 16, scope: !1501)
!1504 = !DILocation(line: 393, column: 14, scope: !1501)
!1505 = !DILocation(line: 396, column: 3, scope: !1501)
!1506 = !DILocation(line: 397, column: 2, scope: !1478)
!1507 = !DILocation(line: 388, column: 34, scope: !1508)
!1508 = !DILexicalBlockFile(scope: !1473, file: !318, discriminator: 2)
!1509 = !DILocation(line: 388, column: 39, scope: !1508)
!1510 = !DILocation(line: 388, column: 32, scope: !1508)
!1511 = !DILocation(line: 388, column: 9, scope: !1508)
!1512 = distinct !{!1512, !1470}
!1513 = !DILocation(line: 399, column: 6, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1443, file: !318, line: 399, column: 6)
!1515 = !DILocation(line: 399, column: 16, scope: !1514)
!1516 = !DILocation(line: 399, column: 6, scope: !1443)
!1517 = !DILocation(line: 402, column: 3, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1514, file: !318, line: 399, column: 24)
!1519 = !DILocation(line: 406, column: 6, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1443, file: !318, line: 406, column: 6)
!1521 = !DILocation(line: 406, column: 11, scope: !1520)
!1522 = !DILocation(line: 406, column: 19, scope: !1520)
!1523 = !DILocation(line: 406, column: 24, scope: !1520)
!1524 = !DILocation(line: 406, column: 6, scope: !1443)
!1525 = !DILocation(line: 407, column: 10, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1520, file: !318, line: 406, column: 30)
!1527 = !DILocation(line: 407, column: 15, scope: !1526)
!1528 = !DILocation(line: 407, column: 23, scope: !1526)
!1529 = !DILocation(line: 407, column: 33, scope: !1526)
!1530 = !DILocation(line: 407, column: 10, scope: !1531)
!1531 = !DILexicalBlockFile(scope: !1526, file: !318, discriminator: 1)
!1532 = !DILocation(line: 408, column: 4, scope: !1526)
!1533 = !DILocation(line: 408, column: 33, scope: !1526)
!1534 = !DILocation(line: 408, column: 18, scope: !1526)
!1535 = !DILocation(line: 408, column: 16, scope: !1526)
!1536 = !DILocation(line: 407, column: 10, scope: !1537)
!1537 = !DILexicalBlockFile(scope: !1526, file: !318, discriminator: 2)
!1538 = !DILocation(line: 407, column: 10, scope: !1539)
!1539 = !DILexicalBlockFile(scope: !1526, file: !318, discriminator: 3)
!1540 = !DILocation(line: 407, column: 8, scope: !1539)
!1541 = !DILocation(line: 409, column: 2, scope: !1526)
!1542 = !DILocation(line: 410, column: 10, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1520, file: !318, line: 409, column: 9)
!1544 = !DILocation(line: 410, column: 15, scope: !1543)
!1545 = !DILocation(line: 410, column: 23, scope: !1543)
!1546 = !DILocation(line: 410, column: 33, scope: !1543)
!1547 = !DILocation(line: 411, column: 4, scope: !1543)
!1548 = !DILocation(line: 411, column: 9, scope: !1543)
!1549 = !DILocation(line: 411, column: 24, scope: !1543)
!1550 = !DILocation(line: 410, column: 10, scope: !1551)
!1551 = !DILexicalBlockFile(scope: !1543, file: !318, discriminator: 1)
!1552 = !DILocation(line: 412, column: 4, scope: !1543)
!1553 = !DILocation(line: 412, column: 9, scope: !1543)
!1554 = !DILocation(line: 412, column: 24, scope: !1543)
!1555 = !DILocation(line: 413, column: 20, scope: !1543)
!1556 = !DILocation(line: 413, column: 5, scope: !1543)
!1557 = !DILocation(line: 413, column: 30, scope: !1543)
!1558 = !DILocation(line: 412, column: 34, scope: !1543)
!1559 = !DILocation(line: 410, column: 10, scope: !1560)
!1560 = !DILexicalBlockFile(scope: !1543, file: !318, discriminator: 2)
!1561 = !DILocation(line: 410, column: 10, scope: !1562)
!1562 = !DILexicalBlockFile(scope: !1543, file: !318, discriminator: 3)
!1563 = !DILocation(line: 410, column: 8, scope: !1562)
!1564 = !DILocation(line: 417, column: 2, scope: !1443)
!1565 = !DILocation(line: 417, column: 9, scope: !1458)
!1566 = !DILocation(line: 417, column: 19, scope: !1458)
!1567 = !DILocation(line: 417, column: 2, scope: !1458)
!1568 = !DILocation(line: 418, column: 9, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1443, file: !318, line: 417, column: 27)
!1570 = !DILocation(line: 418, column: 20, scope: !1569)
!1571 = !DILocation(line: 418, column: 7, scope: !1569)
!1572 = !DILocation(line: 420, column: 7, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1569, file: !318, line: 420, column: 7)
!1574 = !DILocation(line: 420, column: 12, scope: !1573)
!1575 = !DILocation(line: 420, column: 25, scope: !1573)
!1576 = !DILocation(line: 420, column: 22, scope: !1573)
!1577 = !DILocation(line: 420, column: 7, scope: !1569)
!1578 = !DILocation(line: 421, column: 21, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1573, file: !318, line: 420, column: 31)
!1580 = !DILocation(line: 421, column: 4, scope: !1579)
!1581 = !DILocation(line: 421, column: 9, scope: !1579)
!1582 = !DILocation(line: 421, column: 19, scope: !1579)
!1583 = !DILocation(line: 422, column: 42, scope: !1579)
!1584 = !DILocation(line: 422, column: 25, scope: !1579)
!1585 = !DILocation(line: 423, column: 3, scope: !1579)
!1586 = !DILocation(line: 425, column: 21, scope: !1569)
!1587 = !DILocation(line: 426, column: 44, scope: !1569)
!1588 = !DILocation(line: 426, column: 55, scope: !1569)
!1589 = !DILocation(line: 426, column: 66, scope: !1569)
!1590 = !DILocation(line: 426, column: 29, scope: !1569)
!1591 = !DILocation(line: 426, column: 27, scope: !1569)
!1592 = !DILocation(line: 417, column: 2, scope: !1466)
!1593 = distinct !{!1593, !1564}
!1594 = !DILocation(line: 428, column: 1, scope: !1443)
!1595 = distinct !DISubprogram(name: "statusbar_item_create", scope: !318, file: !318, line: 888, type: !1596, isLocal: false, isDefinition: true, scopeLine: 890, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{!174, !34, !180}
!1598 = !DILocalVariable(name: "bar", arg: 1, scope: !1595, file: !318, line: 888, type: !34)
!1599 = !DILocation(line: 888, column: 53, scope: !1595)
!1600 = !DILocalVariable(name: "config", arg: 2, scope: !1595, file: !318, line: 889, type: !180)
!1601 = !DILocation(line: 889, column: 32, scope: !1595)
!1602 = !DILocalVariable(name: "rec", scope: !1595, file: !318, line: 891, type: !174)
!1603 = !DILocation(line: 891, column: 17, scope: !1595)
!1604 = !DILocalVariable(name: "items", scope: !1595, file: !318, line: 892, type: !14)
!1605 = !DILocation(line: 892, column: 17, scope: !1595)
!1606 = !DILocation(line: 894, column: 2, scope: !1595)
!1607 = distinct !{!1607, !1606}
!1608 = !DILocation(line: 894, column: 10, scope: !1609)
!1609 = !DILexicalBlockFile(scope: !1610, file: !318, discriminator: 1)
!1610 = distinct !DILexicalBlock(scope: !1611, file: !318, line: 894, column: 10)
!1611 = distinct !DILexicalBlock(scope: !1595, file: !318, line: 894, column: 4)
!1612 = !DILocation(line: 894, column: 14, scope: !1609)
!1613 = !DILocation(line: 894, column: 5, scope: !1614)
!1614 = !DILexicalBlockFile(scope: !1615, file: !318, discriminator: 2)
!1615 = distinct !DILexicalBlock(scope: !1610, file: !318, line: 894, column: 3)
!1616 = !DILocation(line: 894, column: 14, scope: !1617)
!1617 = !DILexicalBlockFile(scope: !1618, file: !318, discriminator: 3)
!1618 = distinct !DILexicalBlock(scope: !1610, file: !318, line: 894, column: 12)
!1619 = !DILocation(line: 894, column: 98, scope: !1617)
!1620 = !DILocation(line: 894, column: 7, scope: !1621)
!1621 = !DILexicalBlockFile(scope: !1611, file: !318, discriminator: 4)
!1622 = !DILocation(line: 895, column: 2, scope: !1595)
!1623 = distinct !{!1623, !1622}
!1624 = !DILocation(line: 895, column: 10, scope: !1625)
!1625 = !DILexicalBlockFile(scope: !1626, file: !318, discriminator: 1)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !318, line: 895, column: 10)
!1627 = distinct !DILexicalBlock(scope: !1595, file: !318, line: 895, column: 4)
!1628 = !DILocation(line: 895, column: 17, scope: !1625)
!1629 = !DILocation(line: 895, column: 5, scope: !1630)
!1630 = !DILexicalBlockFile(scope: !1631, file: !318, discriminator: 2)
!1631 = distinct !DILexicalBlock(scope: !1626, file: !318, line: 895, column: 3)
!1632 = !DILocation(line: 895, column: 14, scope: !1633)
!1633 = !DILexicalBlockFile(scope: !1634, file: !318, discriminator: 3)
!1634 = distinct !DILexicalBlock(scope: !1626, file: !318, line: 895, column: 12)
!1635 = !DILocation(line: 895, column: 101, scope: !1633)
!1636 = !DILocation(line: 895, column: 7, scope: !1637)
!1637 = !DILexicalBlockFile(scope: !1627, file: !318, discriminator: 4)
!1638 = !DILocation(line: 897, column: 27, scope: !1595)
!1639 = !DILocation(line: 897, column: 9, scope: !1595)
!1640 = !DILocation(line: 897, column: 6, scope: !1595)
!1641 = !DILocation(line: 898, column: 30, scope: !1595)
!1642 = !DILocation(line: 898, column: 35, scope: !1595)
!1643 = !DILocation(line: 898, column: 42, scope: !1595)
!1644 = !DILocation(line: 898, column: 15, scope: !1595)
!1645 = !DILocation(line: 898, column: 2, scope: !1595)
!1646 = !DILocation(line: 898, column: 7, scope: !1595)
!1647 = !DILocation(line: 898, column: 13, scope: !1595)
!1648 = !DILocation(line: 900, column: 13, scope: !1595)
!1649 = !DILocation(line: 900, column: 2, scope: !1595)
!1650 = !DILocation(line: 900, column: 7, scope: !1595)
!1651 = !DILocation(line: 900, column: 11, scope: !1595)
!1652 = !DILocation(line: 901, column: 16, scope: !1595)
!1653 = !DILocation(line: 901, column: 2, scope: !1595)
!1654 = !DILocation(line: 901, column: 7, scope: !1595)
!1655 = !DILocation(line: 901, column: 14, scope: !1595)
!1656 = !DILocation(line: 903, column: 51, scope: !1595)
!1657 = !DILocation(line: 904, column: 9, scope: !1595)
!1658 = !DILocation(line: 904, column: 17, scope: !1595)
!1659 = !DILocation(line: 903, column: 31, scope: !1595)
!1660 = !DILocation(line: 903, column: 14, scope: !1595)
!1661 = !DILocation(line: 903, column: 2, scope: !1595)
!1662 = !DILocation(line: 903, column: 7, scope: !1595)
!1663 = !DILocation(line: 903, column: 12, scope: !1595)
!1664 = !DILocation(line: 905, column: 6, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1595, file: !318, line: 905, column: 6)
!1666 = !DILocation(line: 905, column: 11, scope: !1665)
!1667 = !DILocation(line: 905, column: 16, scope: !1665)
!1668 = !DILocation(line: 905, column: 6, scope: !1595)
!1669 = !DILocation(line: 906, column: 3, scope: !1665)
!1670 = !DILocation(line: 906, column: 8, scope: !1665)
!1671 = !DILocation(line: 906, column: 13, scope: !1665)
!1672 = !DILocation(line: 907, column: 33, scope: !1595)
!1673 = !DILocation(line: 907, column: 2, scope: !1595)
!1674 = !DILocation(line: 909, column: 30, scope: !1595)
!1675 = !DILocation(line: 909, column: 48, scope: !1595)
!1676 = !DILocation(line: 909, column: 56, scope: !1595)
!1677 = !DILocation(line: 909, column: 10, scope: !1595)
!1678 = !DILocation(line: 909, column: 8, scope: !1595)
!1679 = !DILocation(line: 910, column: 25, scope: !1595)
!1680 = !DILocation(line: 910, column: 32, scope: !1595)
!1681 = !DILocation(line: 910, column: 10, scope: !1595)
!1682 = !DILocation(line: 910, column: 8, scope: !1595)
!1683 = !DILocation(line: 911, column: 29, scope: !1595)
!1684 = !DILocation(line: 911, column: 47, scope: !1595)
!1685 = !DILocation(line: 911, column: 55, scope: !1595)
!1686 = !DILocation(line: 911, column: 61, scope: !1595)
!1687 = !DILocation(line: 911, column: 9, scope: !1595)
!1688 = !DILocation(line: 913, column: 2, scope: !1595)
!1689 = !DILocation(line: 914, column: 2, scope: !1595)
!1690 = !DILocation(line: 914, column: 7, scope: !1595)
!1691 = !DILocation(line: 914, column: 13, scope: !1595)
!1692 = !DILocation(line: 915, column: 2, scope: !1595)
!1693 = !DILocation(line: 915, column: 7, scope: !1595)
!1694 = !DILocation(line: 915, column: 13, scope: !1595)
!1695 = !DILocation(line: 917, column: 50, scope: !1595)
!1696 = !DILocation(line: 917, column: 9, scope: !1595)
!1697 = !DILocation(line: 918, column: 9, scope: !1595)
!1698 = !DILocation(line: 918, column: 2, scope: !1595)
!1699 = !DILocation(line: 919, column: 1, scope: !1595)
!1700 = distinct !DISubprogram(name: "statusbar_item_destroy", scope: !318, file: !318, line: 947, type: !1009, isLocal: false, isDefinition: true, scopeLine: 948, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1701 = !DILocalVariable(name: "item", arg: 1, scope: !1700, file: !318, line: 947, type: !174)
!1702 = !DILocation(line: 947, column: 44, scope: !1700)
!1703 = !DILocalVariable(name: "list", scope: !1700, file: !318, line: 949, type: !14)
!1704 = !DILocation(line: 949, column: 10, scope: !1700)
!1705 = !DILocation(line: 951, column: 2, scope: !1700)
!1706 = distinct !{!1706, !1705}
!1707 = !DILocation(line: 951, column: 10, scope: !1708)
!1708 = !DILexicalBlockFile(scope: !1709, file: !318, discriminator: 1)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !318, line: 951, column: 10)
!1710 = distinct !DILexicalBlock(scope: !1700, file: !318, line: 951, column: 4)
!1711 = !DILocation(line: 951, column: 15, scope: !1708)
!1712 = !DILocation(line: 951, column: 5, scope: !1713)
!1713 = !DILexicalBlockFile(scope: !1714, file: !318, discriminator: 2)
!1714 = distinct !DILexicalBlock(scope: !1709, file: !318, line: 951, column: 3)
!1715 = !DILocation(line: 951, column: 14, scope: !1716)
!1716 = !DILexicalBlockFile(scope: !1717, file: !318, discriminator: 3)
!1717 = distinct !DILexicalBlock(scope: !1709, file: !318, line: 951, column: 12)
!1718 = !DILocation(line: 951, column: 99, scope: !1716)
!1719 = !DILocation(line: 951, column: 110, scope: !1720)
!1720 = !DILexicalBlockFile(scope: !1710, file: !318, discriminator: 4)
!1721 = !DILocation(line: 953, column: 36, scope: !1700)
!1722 = !DILocation(line: 953, column: 42, scope: !1700)
!1723 = !DILocation(line: 953, column: 47, scope: !1700)
!1724 = !DILocation(line: 953, column: 54, scope: !1700)
!1725 = !DILocation(line: 953, column: 21, scope: !1700)
!1726 = !DILocation(line: 953, column: 2, scope: !1700)
!1727 = !DILocation(line: 953, column: 8, scope: !1700)
!1728 = !DILocation(line: 953, column: 13, scope: !1700)
!1729 = !DILocation(line: 953, column: 19, scope: !1700)
!1730 = !DILocation(line: 955, column: 29, scope: !1700)
!1731 = !DILocation(line: 955, column: 47, scope: !1700)
!1732 = !DILocation(line: 955, column: 53, scope: !1700)
!1733 = !DILocation(line: 955, column: 61, scope: !1700)
!1734 = !DILocation(line: 955, column: 9, scope: !1700)
!1735 = !DILocation(line: 955, column: 7, scope: !1700)
!1736 = !DILocation(line: 956, column: 24, scope: !1700)
!1737 = !DILocation(line: 956, column: 30, scope: !1700)
!1738 = !DILocation(line: 956, column: 9, scope: !1700)
!1739 = !DILocation(line: 956, column: 7, scope: !1700)
!1740 = !DILocation(line: 957, column: 6, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1700, file: !318, line: 957, column: 6)
!1742 = !DILocation(line: 957, column: 11, scope: !1741)
!1743 = !DILocation(line: 957, column: 6, scope: !1700)
!1744 = !DILocation(line: 958, column: 23, scope: !1741)
!1745 = !DILocation(line: 958, column: 41, scope: !1741)
!1746 = !DILocation(line: 958, column: 47, scope: !1741)
!1747 = !DILocation(line: 958, column: 55, scope: !1741)
!1748 = !DILocation(line: 958, column: 3, scope: !1741)
!1749 = !DILocation(line: 960, column: 23, scope: !1741)
!1750 = !DILocation(line: 960, column: 41, scope: !1741)
!1751 = !DILocation(line: 960, column: 47, scope: !1741)
!1752 = !DILocation(line: 960, column: 55, scope: !1741)
!1753 = !DILocation(line: 960, column: 61, scope: !1741)
!1754 = !DILocation(line: 960, column: 3, scope: !1741)
!1755 = !DILocation(line: 962, column: 52, scope: !1700)
!1756 = !DILocation(line: 962, column: 9, scope: !1700)
!1757 = !DILocation(line: 964, column: 29, scope: !1700)
!1758 = !DILocation(line: 964, column: 48, scope: !1700)
!1759 = !DILocation(line: 964, column: 9, scope: !1700)
!1760 = !DILocation(line: 964, column: 7, scope: !1700)
!1761 = !DILocation(line: 965, column: 29, scope: !1700)
!1762 = !DILocation(line: 965, column: 48, scope: !1700)
!1763 = !DILocation(line: 965, column: 9, scope: !1700)
!1764 = !DILocation(line: 967, column: 2, scope: !1700)
!1765 = !DILocation(line: 967, column: 9, scope: !1766)
!1766 = !DILexicalBlockFile(scope: !1700, file: !318, discriminator: 1)
!1767 = !DILocation(line: 967, column: 14, scope: !1766)
!1768 = !DILocation(line: 967, column: 2, scope: !1766)
!1769 = !DILocation(line: 968, column: 46, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1700, file: !318, line: 967, column: 22)
!1771 = !DILocation(line: 968, column: 69, scope: !1770)
!1772 = !DILocation(line: 968, column: 75, scope: !1770)
!1773 = !DILocation(line: 968, column: 60, scope: !1770)
!1774 = !DILocation(line: 968, column: 53, scope: !1770)
!1775 = !DILocation(line: 968, column: 17, scope: !1770)
!1776 = !DILocation(line: 969, column: 25, scope: !1770)
!1777 = !DILocation(line: 969, column: 31, scope: !1770)
!1778 = !DILocation(line: 969, column: 37, scope: !1770)
!1779 = !DILocation(line: 969, column: 10, scope: !1770)
!1780 = !DILocation(line: 969, column: 8, scope: !1770)
!1781 = !DILocation(line: 967, column: 2, scope: !1782)
!1782 = !DILexicalBlockFile(scope: !1700, file: !318, discriminator: 2)
!1783 = distinct !{!1783, !1764}
!1784 = !DILocation(line: 972, column: 9, scope: !1700)
!1785 = !DILocation(line: 972, column: 2, scope: !1700)
!1786 = !DILocation(line: 973, column: 1, scope: !1700)
!1787 = !DILocation(line: 973, column: 1, scope: !1766)
!1788 = distinct !DISubprogram(name: "statusbar_recreate_items", scope: !318, file: !318, line: 597, type: !509, isLocal: false, isDefinition: true, scopeLine: 598, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1789 = !DILocalVariable(name: "bar", arg: 1, scope: !1788, file: !318, line: 597, type: !34)
!1790 = !DILocation(line: 597, column: 46, scope: !1788)
!1791 = !DILocalVariable(name: "tmp", scope: !1788, file: !318, line: 599, type: !14)
!1792 = !DILocation(line: 599, column: 10, scope: !1788)
!1793 = !DILocation(line: 602, column: 2, scope: !1788)
!1794 = !DILocation(line: 602, column: 9, scope: !1795)
!1795 = !DILexicalBlockFile(scope: !1788, file: !318, discriminator: 1)
!1796 = !DILocation(line: 602, column: 14, scope: !1795)
!1797 = !DILocation(line: 602, column: 20, scope: !1795)
!1798 = !DILocation(line: 602, column: 2, scope: !1795)
!1799 = !DILocation(line: 603, column: 26, scope: !1788)
!1800 = !DILocation(line: 603, column: 31, scope: !1788)
!1801 = !DILocation(line: 603, column: 38, scope: !1788)
!1802 = !DILocation(line: 603, column: 3, scope: !1788)
!1803 = !DILocation(line: 602, column: 2, scope: !1804)
!1804 = !DILexicalBlockFile(scope: !1788, file: !318, discriminator: 2)
!1805 = distinct !{!1805, !1793}
!1806 = !DILocation(line: 606, column: 13, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1788, file: !318, line: 606, column: 2)
!1808 = !DILocation(line: 606, column: 18, scope: !1807)
!1809 = !DILocation(line: 606, column: 26, scope: !1807)
!1810 = !DILocation(line: 606, column: 11, scope: !1807)
!1811 = !DILocation(line: 606, column: 7, scope: !1807)
!1812 = !DILocation(line: 606, column: 33, scope: !1813)
!1813 = !DILexicalBlockFile(scope: !1814, file: !318, discriminator: 1)
!1814 = distinct !DILexicalBlock(scope: !1807, file: !318, line: 606, column: 2)
!1815 = !DILocation(line: 606, column: 37, scope: !1813)
!1816 = !DILocation(line: 606, column: 2, scope: !1813)
!1817 = !DILocalVariable(name: "rec", scope: !1818, file: !318, line: 607, type: !180)
!1818 = distinct !DILexicalBlock(scope: !1814, file: !318, line: 606, column: 62)
!1819 = !DILocation(line: 607, column: 25, scope: !1818)
!1820 = !DILocation(line: 607, column: 31, scope: !1818)
!1821 = !DILocation(line: 607, column: 36, scope: !1818)
!1822 = !DILocation(line: 609, column: 39, scope: !1818)
!1823 = !DILocation(line: 609, column: 44, scope: !1818)
!1824 = !DILocation(line: 609, column: 17, scope: !1818)
!1825 = !DILocation(line: 610, column: 2, scope: !1818)
!1826 = !DILocation(line: 606, column: 51, scope: !1827)
!1827 = !DILexicalBlockFile(scope: !1814, file: !318, discriminator: 2)
!1828 = !DILocation(line: 606, column: 56, scope: !1827)
!1829 = !DILocation(line: 606, column: 49, scope: !1827)
!1830 = !DILocation(line: 606, column: 2, scope: !1827)
!1831 = distinct !{!1831, !1832}
!1832 = !DILocation(line: 606, column: 2, scope: !1788)
!1833 = !DILocation(line: 612, column: 26, scope: !1788)
!1834 = !DILocation(line: 612, column: 9, scope: !1788)
!1835 = !DILocation(line: 613, column: 1, scope: !1788)
!1836 = distinct !DISubprogram(name: "statusbars_recreate_items", scope: !318, file: !318, line: 615, type: !1362, isLocal: false, isDefinition: true, scopeLine: 616, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1837 = !DILocation(line: 617, column: 6, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1836, file: !318, line: 617, column: 6)
!1839 = !DILocation(line: 617, column: 29, scope: !1838)
!1840 = !DILocation(line: 617, column: 6, scope: !1836)
!1841 = !DILocation(line: 618, column: 19, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1838, file: !318, line: 617, column: 37)
!1843 = !DILocation(line: 618, column: 43, scope: !1842)
!1844 = !DILocation(line: 618, column: 3, scope: !1842)
!1845 = !DILocation(line: 620, column: 2, scope: !1842)
!1846 = !DILocation(line: 621, column: 1, scope: !1836)
!1847 = distinct !DISubprogram(name: "statusbar_find", scope: !318, file: !318, line: 623, type: !1848, isLocal: false, isDefinition: true, scopeLine: 625, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{!34, !5, !32, !52}
!1850 = !DILocalVariable(name: "group", arg: 1, scope: !1847, file: !318, line: 623, type: !5)
!1851 = !DILocation(line: 623, column: 52, scope: !1847)
!1852 = !DILocalVariable(name: "name", arg: 2, scope: !1847, file: !318, line: 623, type: !32)
!1853 = !DILocation(line: 623, column: 71, scope: !1847)
!1854 = !DILocalVariable(name: "window", arg: 3, scope: !1847, file: !318, line: 624, type: !52)
!1855 = !DILocation(line: 624, column: 27, scope: !1847)
!1856 = !DILocalVariable(name: "tmp", scope: !1847, file: !318, line: 626, type: !14)
!1857 = !DILocation(line: 626, column: 10, scope: !1847)
!1858 = !DILocation(line: 628, column: 13, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1847, file: !318, line: 628, column: 2)
!1860 = !DILocation(line: 628, column: 20, scope: !1859)
!1861 = !DILocation(line: 628, column: 11, scope: !1859)
!1862 = !DILocation(line: 628, column: 7, scope: !1859)
!1863 = !DILocation(line: 628, column: 26, scope: !1864)
!1864 = !DILexicalBlockFile(scope: !1865, file: !318, discriminator: 1)
!1865 = distinct !DILexicalBlock(scope: !1859, file: !318, line: 628, column: 2)
!1866 = !DILocation(line: 628, column: 30, scope: !1864)
!1867 = !DILocation(line: 628, column: 2, scope: !1864)
!1868 = !DILocalVariable(name: "rec", scope: !1869, file: !318, line: 629, type: !34)
!1869 = distinct !DILexicalBlock(scope: !1865, file: !318, line: 628, column: 55)
!1870 = !DILocation(line: 629, column: 18, scope: !1869)
!1871 = !DILocation(line: 629, column: 24, scope: !1869)
!1872 = !DILocation(line: 629, column: 29, scope: !1869)
!1873 = !DILocation(line: 631, column: 7, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1869, file: !318, line: 631, column: 7)
!1875 = !DILocation(line: 631, column: 12, scope: !1874)
!1876 = !DILocation(line: 631, column: 29, scope: !1874)
!1877 = !DILocation(line: 631, column: 26, scope: !1874)
!1878 = !DILocation(line: 631, column: 36, scope: !1874)
!1879 = !DILocation(line: 632, column: 17, scope: !1874)
!1880 = !DILocation(line: 632, column: 22, scope: !1874)
!1881 = !DILocation(line: 632, column: 30, scope: !1874)
!1882 = !DILocation(line: 632, column: 36, scope: !1874)
!1883 = !DILocation(line: 632, column: 7, scope: !1874)
!1884 = !DILocation(line: 632, column: 42, scope: !1874)
!1885 = !DILocation(line: 631, column: 7, scope: !1886)
!1886 = !DILexicalBlockFile(scope: !1869, file: !318, discriminator: 1)
!1887 = !DILocation(line: 633, column: 32, scope: !1874)
!1888 = !DILocation(line: 633, column: 25, scope: !1874)
!1889 = !DILocation(line: 634, column: 2, scope: !1869)
!1890 = !DILocation(line: 628, column: 44, scope: !1891)
!1891 = !DILexicalBlockFile(scope: !1865, file: !318, discriminator: 2)
!1892 = !DILocation(line: 628, column: 49, scope: !1891)
!1893 = !DILocation(line: 628, column: 42, scope: !1891)
!1894 = !DILocation(line: 628, column: 2, scope: !1891)
!1895 = distinct !{!1895, !1896}
!1896 = !DILocation(line: 628, column: 2, scope: !1847)
!1897 = !DILocation(line: 636, column: 9, scope: !1847)
!1898 = !DILocation(line: 637, column: 1, scope: !1847)
!1899 = distinct !DISubprogram(name: "statusbar_item_default_handler", scope: !318, file: !318, line: 678, type: !1900, isLocal: false, isDefinition: true, scopeLine: 681, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{null, !174, !46, !32, !32, !46}
!1902 = !DILocalVariable(name: "item", arg: 1, scope: !1899, file: !318, line: 678, type: !174)
!1903 = !DILocation(line: 678, column: 52, scope: !1899)
!1904 = !DILocalVariable(name: "get_size_only", arg: 2, scope: !1899, file: !318, line: 678, type: !46)
!1905 = !DILocation(line: 678, column: 62, scope: !1899)
!1906 = !DILocalVariable(name: "str", arg: 3, scope: !1899, file: !318, line: 679, type: !32)
!1907 = !DILocation(line: 679, column: 21, scope: !1899)
!1908 = !DILocalVariable(name: "data", arg: 4, scope: !1899, file: !318, line: 679, type: !32)
!1909 = !DILocation(line: 679, column: 38, scope: !1899)
!1910 = !DILocalVariable(name: "escape_vars", arg: 5, scope: !1899, file: !318, line: 680, type: !46)
!1911 = !DILocation(line: 680, column: 13, scope: !1899)
!1912 = !DILocalVariable(name: "server", scope: !1899, file: !318, line: 682, type: !85)
!1913 = !DILocation(line: 682, column: 14, scope: !1899)
!1914 = !DILocalVariable(name: "wiitem", scope: !1899, file: !318, line: 683, type: !70)
!1915 = !DILocation(line: 683, column: 15, scope: !1899)
!1916 = !DILocalVariable(name: "tmpstr", scope: !1899, file: !318, line: 684, type: !11)
!1917 = !DILocation(line: 684, column: 8, scope: !1899)
!1918 = !DILocalVariable(name: "tmpstr2", scope: !1899, file: !318, line: 684, type: !11)
!1919 = !DILocation(line: 684, column: 17, scope: !1899)
!1920 = !DILocalVariable(name: "reset", scope: !1899, file: !318, line: 685, type: !1921)
!1921 = !DIDerivedType(tag: DW_TAG_typedef, name: "theme_rm_col", file: !1099, line: 62, baseType: !1922)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1099, line: 60, size: 64, align: 8, elements: !1923)
!1923 = !{!1924}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !1922, file: !1099, line: 61, baseType: !1925, size: 64, align: 8)
!1925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 64, align: 8, elements: !1926)
!1926 = !{!1927}
!1927 = !DISubrange(count: 8)
!1928 = !DILocation(line: 685, column: 15, scope: !1899)
!1929 = !DILocalVariable(name: "len", scope: !1899, file: !318, line: 686, type: !46)
!1930 = !DILocation(line: 686, column: 6, scope: !1899)
!1931 = !DILocation(line: 687, column: 15, scope: !1899)
!1932 = !DILocation(line: 687, column: 9, scope: !1899)
!1933 = !DILocation(line: 687, column: 2, scope: !1899)
!1934 = !DILocation(line: 689, column: 6, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1899, file: !318, line: 689, column: 6)
!1936 = !DILocation(line: 689, column: 10, scope: !1935)
!1937 = !DILocation(line: 689, column: 6, scope: !1899)
!1938 = !DILocation(line: 690, column: 34, scope: !1935)
!1939 = !DILocation(line: 690, column: 9, scope: !1935)
!1940 = !DILocation(line: 690, column: 7, scope: !1935)
!1941 = !DILocation(line: 690, column: 3, scope: !1935)
!1942 = !DILocation(line: 691, column: 6, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1899, file: !318, line: 691, column: 6)
!1944 = !DILocation(line: 691, column: 10, scope: !1943)
!1945 = !DILocation(line: 691, column: 17, scope: !1943)
!1946 = !DILocation(line: 691, column: 21, scope: !1947)
!1947 = !DILexicalBlockFile(scope: !1943, file: !318, discriminator: 1)
!1948 = !DILocation(line: 691, column: 20, scope: !1947)
!1949 = !DILocation(line: 691, column: 25, scope: !1947)
!1950 = !DILocation(line: 691, column: 6, scope: !1947)
!1951 = !DILocation(line: 692, column: 20, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1943, file: !318, line: 691, column: 34)
!1953 = !DILocation(line: 692, column: 26, scope: !1952)
!1954 = !DILocation(line: 692, column: 35, scope: !1952)
!1955 = !DILocation(line: 692, column: 3, scope: !1952)
!1956 = !DILocation(line: 692, column: 9, scope: !1952)
!1957 = !DILocation(line: 692, column: 18, scope: !1952)
!1958 = !DILocation(line: 693, column: 3, scope: !1952)
!1959 = !DILocation(line: 696, column: 6, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1899, file: !318, line: 696, column: 6)
!1961 = !DILocation(line: 696, column: 17, scope: !1960)
!1962 = !DILocation(line: 696, column: 6, scope: !1899)
!1963 = !DILocation(line: 697, column: 10, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1960, file: !318, line: 696, column: 25)
!1965 = !DILocation(line: 698, column: 24, scope: !1964)
!1966 = !DILocation(line: 699, column: 2, scope: !1964)
!1967 = !DILocation(line: 700, column: 12, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1960, file: !318, line: 699, column: 9)
!1969 = !DILocation(line: 700, column: 24, scope: !1968)
!1970 = !DILocation(line: 700, column: 38, scope: !1968)
!1971 = !DILocation(line: 701, column: 4, scope: !1968)
!1972 = !DILocation(line: 701, column: 16, scope: !1968)
!1973 = !DILocation(line: 700, column: 12, scope: !1974)
!1974 = !DILexicalBlockFile(scope: !1968, file: !318, discriminator: 1)
!1975 = !DILocation(line: 701, column: 32, scope: !1974)
!1976 = !DILocation(line: 701, column: 44, scope: !1974)
!1977 = !DILocation(line: 700, column: 12, scope: !1978)
!1978 = !DILexicalBlockFile(scope: !1968, file: !318, discriminator: 2)
!1979 = !DILocation(line: 700, column: 12, scope: !1980)
!1980 = !DILexicalBlockFile(scope: !1968, file: !318, discriminator: 3)
!1981 = !DILocation(line: 700, column: 10, scope: !1980)
!1982 = !DILocation(line: 702, column: 12, scope: !1968)
!1983 = !DILocation(line: 702, column: 24, scope: !1968)
!1984 = !DILocation(line: 702, column: 10, scope: !1968)
!1985 = !DILocation(line: 706, column: 36, scope: !1899)
!1986 = !DILocation(line: 706, column: 11, scope: !1899)
!1987 = !DILocation(line: 706, column: 9, scope: !1899)
!1988 = !DILocation(line: 713, column: 33, scope: !1899)
!1989 = !DILocation(line: 713, column: 41, scope: !1899)
!1990 = !DILocation(line: 713, column: 49, scope: !1899)
!1991 = !DILocation(line: 713, column: 57, scope: !1899)
!1992 = !DILocation(line: 714, column: 13, scope: !1899)
!1993 = !DILocation(line: 713, column: 12, scope: !1899)
!1994 = !DILocation(line: 713, column: 10, scope: !1899)
!1995 = !DILocation(line: 715, column: 16, scope: !1899)
!1996 = !DILocation(line: 715, column: 9, scope: !1899)
!1997 = !DILocation(line: 718, column: 23, scope: !1899)
!1998 = !DILocation(line: 718, column: 11, scope: !1899)
!1999 = !DILocation(line: 718, column: 9, scope: !1899)
!2000 = !DILocation(line: 719, column: 16, scope: !1899)
!2001 = !DILocation(line: 719, column: 9, scope: !1899)
!2002 = !DILocation(line: 721, column: 6, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1899, file: !318, line: 721, column: 6)
!2004 = !DILocation(line: 721, column: 6, scope: !1899)
!2005 = !DILocation(line: 722, column: 55, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !2003, file: !318, line: 721, column: 21)
!2007 = !DILocation(line: 722, column: 37, scope: !2006)
!2008 = !DILocation(line: 722, column: 20, scope: !2006)
!2009 = !DILocation(line: 722, column: 26, scope: !2006)
!2010 = !DILocation(line: 722, column: 35, scope: !2006)
!2011 = !DILocation(line: 722, column: 3, scope: !2006)
!2012 = !DILocation(line: 722, column: 9, scope: !2006)
!2013 = !DILocation(line: 722, column: 18, scope: !2006)
!2014 = !DILocation(line: 723, column: 2, scope: !2006)
!2015 = !DILocalVariable(name: "out", scope: !2016, file: !318, line: 724, type: !2017)
!2016 = distinct !DILexicalBlock(scope: !2003, file: !318, line: 723, column: 9)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64, align: 64)
!2018 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !2019, line: 39, baseType: !2020)
!2019 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !2019, line: 41, size: 192, align: 64, elements: !2021)
!2021 = !{!2022, !2023, !2027}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2020, file: !2019, line: 43, baseType: !30, size: 64, align: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2020, file: !2019, line: 44, baseType: !2024, size: 64, align: 64, offset: 64)
!2024 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !2025, line: 66, baseType: !2026)
!2025 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!2026 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !2020, file: !2019, line: 45, baseType: !2024, size: 64, align: 64, offset: 128)
!2028 = !DILocation(line: 724, column: 12, scope: !2016)
!2029 = !DILocation(line: 726, column: 7, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2016, file: !318, line: 726, column: 7)
!2031 = !DILocation(line: 726, column: 13, scope: !2030)
!2032 = !DILocation(line: 726, column: 20, scope: !2030)
!2033 = !DILocation(line: 726, column: 26, scope: !2030)
!2034 = !DILocation(line: 726, column: 18, scope: !2030)
!2035 = !DILocation(line: 726, column: 7, scope: !2016)
!2036 = !DILocation(line: 728, column: 29, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2030, file: !318, line: 726, column: 36)
!2038 = !DILocation(line: 728, column: 37, scope: !2037)
!2039 = !DILocation(line: 728, column: 43, scope: !2037)
!2040 = !DILocation(line: 728, column: 10, scope: !2037)
!2041 = !DILocation(line: 728, column: 8, scope: !2037)
!2042 = !DILocation(line: 729, column: 32, scope: !2037)
!2043 = !DILocation(line: 729, column: 25, scope: !2037)
!2044 = !DILocation(line: 729, column: 37, scope: !2037)
!2045 = !DILocation(line: 730, column: 3, scope: !2037)
!2046 = !DILocation(line: 731, column: 25, scope: !2016)
!2047 = !DILocation(line: 731, column: 33, scope: !2016)
!2048 = !DILocation(line: 731, column: 39, scope: !2016)
!2049 = !DILocation(line: 731, column: 44, scope: !2016)
!2050 = !DILocation(line: 731, column: 9, scope: !2016)
!2051 = !DILocation(line: 731, column: 7, scope: !2016)
!2052 = !DILocation(line: 734, column: 27, scope: !2016)
!2053 = !DILocation(line: 734, column: 9, scope: !2016)
!2054 = !DILocation(line: 734, column: 7, scope: !2016)
!2055 = !DILocation(line: 735, column: 7, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2016, file: !318, line: 735, column: 7)
!2057 = !DILocation(line: 735, column: 13, scope: !2056)
!2058 = !DILocation(line: 735, column: 19, scope: !2056)
!2059 = !DILocation(line: 735, column: 11, scope: !2056)
!2060 = !DILocation(line: 735, column: 7, scope: !2016)
!2061 = !DILocalVariable(name: "i", scope: !2062, file: !318, line: 736, type: !46)
!2062 = distinct !DILexicalBlock(scope: !2056, file: !318, line: 735, column: 25)
!2063 = !DILocation(line: 736, column: 8, scope: !2062)
!2064 = !DILocation(line: 738, column: 10, scope: !2062)
!2065 = !DILocation(line: 738, column: 16, scope: !2062)
!2066 = !DILocation(line: 738, column: 21, scope: !2062)
!2067 = !DILocation(line: 738, column: 20, scope: !2062)
!2068 = !DILocation(line: 738, column: 8, scope: !2062)
!2069 = !DILocation(line: 739, column: 11, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2062, file: !318, line: 739, column: 4)
!2071 = !DILocation(line: 739, column: 9, scope: !2070)
!2072 = !DILocation(line: 739, column: 16, scope: !2073)
!2073 = !DILexicalBlockFile(scope: !2074, file: !318, discriminator: 1)
!2074 = distinct !DILexicalBlock(scope: !2070, file: !318, line: 739, column: 4)
!2075 = !DILocation(line: 739, column: 20, scope: !2073)
!2076 = !DILocation(line: 739, column: 18, scope: !2073)
!2077 = !DILocation(line: 739, column: 4, scope: !2073)
!2078 = !DILocation(line: 740, column: 31, scope: !2074)
!2079 = !DILocation(line: 740, column: 5, scope: !2074)
!2080 = !DILocation(line: 739, column: 26, scope: !2081)
!2081 = !DILexicalBlockFile(scope: !2074, file: !318, discriminator: 2)
!2082 = !DILocation(line: 739, column: 4, scope: !2081)
!2083 = distinct !{!2083, !2084}
!2084 = !DILocation(line: 739, column: 4, scope: !2062)
!2085 = !DILocation(line: 741, column: 3, scope: !2062)
!2086 = !DILocation(line: 743, column: 22, scope: !2016)
!2087 = !DILocation(line: 743, column: 29, scope: !2016)
!2088 = !DILocation(line: 743, column: 34, scope: !2016)
!2089 = !DILocation(line: 743, column: 48, scope: !2016)
!2090 = !DILocation(line: 743, column: 21, scope: !2016)
!2091 = !DILocation(line: 743, column: 19, scope: !2092)
!2092 = !DILexicalBlockFile(scope: !2016, file: !318, discriminator: 1)
!2093 = !DILocation(line: 743, column: 26, scope: !2092)
!2094 = !DILocation(line: 743, column: 31, scope: !2092)
!2095 = !DILocation(line: 743, column: 46, scope: !2092)
!2096 = !DILocation(line: 743, column: 62, scope: !2092)
!2097 = !DILocation(line: 743, column: 69, scope: !2092)
!2098 = !DILocation(line: 743, column: 74, scope: !2092)
!2099 = !DILocation(line: 743, column: 89, scope: !2092)
!2100 = !DILocation(line: 743, column: 59, scope: !2092)
!2101 = !DILocation(line: 743, column: 21, scope: !2092)
!2102 = !DILocation(line: 743, column: 21, scope: !2103)
!2103 = !DILexicalBlockFile(scope: !2016, file: !318, discriminator: 2)
!2104 = !DILocation(line: 743, column: 21, scope: !2105)
!2105 = !DILexicalBlockFile(scope: !2016, file: !318, discriminator: 3)
!2106 = !DILocation(line: 743, column: 121, scope: !2105)
!2107 = !DILocation(line: 743, column: 128, scope: !2105)
!2108 = !DILocation(line: 743, column: 118, scope: !2105)
!2109 = !DILocation(line: 743, column: 136, scope: !2105)
!2110 = !DILocation(line: 743, column: 142, scope: !2105)
!2111 = !DILocation(line: 743, column: 147, scope: !2105)
!2112 = !DILocation(line: 743, column: 158, scope: !2105)
!2113 = !DILocation(line: 743, column: 163, scope: !2105)
!2114 = !DILocation(line: 743, column: 3, scope: !2105)
!2115 = !DILocation(line: 744, column: 17, scope: !2016)
!2116 = !DILocation(line: 744, column: 3, scope: !2016)
!2117 = !DILocation(line: 746, column: 9, scope: !1899)
!2118 = !DILocation(line: 746, column: 2, scope: !1899)
!2119 = !DILocation(line: 747, column: 1, scope: !1899)
!2120 = !DILocation(line: 747, column: 1, scope: !2121)
!2121 = !DILexicalBlockFile(scope: !1899, file: !318, discriminator: 1)
!2122 = distinct !DISubprogram(name: "statusbar_item_get_value", scope: !318, file: !318, line: 639, type: !2123, isLocal: true, isDefinition: true, scopeLine: 640, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!32, !174}
!2125 = !DILocalVariable(name: "item", arg: 1, scope: !2122, file: !318, line: 639, type: !174)
!2126 = !DILocation(line: 639, column: 60, scope: !2122)
!2127 = !DILocalVariable(name: "value", scope: !2122, file: !318, line: 641, type: !32)
!2128 = !DILocation(line: 641, column: 14, scope: !2122)
!2129 = !DILocation(line: 643, column: 10, scope: !2122)
!2130 = !DILocation(line: 643, column: 16, scope: !2122)
!2131 = !DILocation(line: 643, column: 24, scope: !2122)
!2132 = !DILocation(line: 643, column: 8, scope: !2122)
!2133 = !DILocation(line: 644, column: 6, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2122, file: !318, line: 644, column: 6)
!2135 = !DILocation(line: 644, column: 12, scope: !2134)
!2136 = !DILocation(line: 644, column: 6, scope: !2122)
!2137 = !DILocation(line: 645, column: 31, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2134, file: !318, line: 644, column: 20)
!2139 = !DILocation(line: 646, column: 10, scope: !2138)
!2140 = !DILocation(line: 646, column: 16, scope: !2138)
!2141 = !DILocation(line: 646, column: 24, scope: !2138)
!2142 = !DILocation(line: 645, column: 11, scope: !2138)
!2143 = !DILocation(line: 645, column: 9, scope: !2138)
!2144 = !DILocation(line: 647, column: 2, scope: !2138)
!2145 = !DILocation(line: 649, column: 16, scope: !2122)
!2146 = !DILocation(line: 649, column: 9, scope: !2122)
!2147 = distinct !DISubprogram(name: "finalize_string", scope: !318, file: !318, line: 652, type: !2148, isLocal: true, isDefinition: true, scopeLine: 653, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!2017, !32, !32}
!2150 = !DILocalVariable(name: "str", arg: 1, scope: !2147, file: !318, line: 652, type: !32)
!2151 = !DILocation(line: 652, column: 45, scope: !2147)
!2152 = !DILocalVariable(name: "color", arg: 2, scope: !2147, file: !318, line: 652, type: !32)
!2153 = !DILocation(line: 652, column: 62, scope: !2147)
!2154 = !DILocalVariable(name: "out", scope: !2147, file: !318, line: 654, type: !2017)
!2155 = !DILocation(line: 654, column: 11, scope: !2147)
!2156 = !DILocation(line: 656, column: 21, scope: !2147)
!2157 = !DILocation(line: 656, column: 8, scope: !2147)
!2158 = !DILocation(line: 656, column: 6, scope: !2147)
!2159 = !DILocation(line: 658, column: 2, scope: !2147)
!2160 = !DILocation(line: 658, column: 10, scope: !2161)
!2161 = !DILexicalBlockFile(scope: !2147, file: !318, discriminator: 1)
!2162 = !DILocation(line: 658, column: 9, scope: !2161)
!2163 = !DILocation(line: 658, column: 14, scope: !2161)
!2164 = !DILocation(line: 658, column: 2, scope: !2161)
!2165 = !DILocation(line: 659, column: 24, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !318, line: 659, column: 7)
!2167 = distinct !DILexicalBlock(scope: !2147, file: !318, line: 658, column: 23)
!2168 = !DILocation(line: 659, column: 23, scope: !2166)
!2169 = !DILocation(line: 659, column: 7, scope: !2166)
!2170 = !DILocation(line: 659, column: 28, scope: !2166)
!2171 = !DILocation(line: 659, column: 33, scope: !2166)
!2172 = !DILocation(line: 660, column: 8, scope: !2166)
!2173 = !DILocation(line: 660, column: 18, scope: !2166)
!2174 = !DILocation(line: 660, column: 23, scope: !2166)
!2175 = !DILocation(line: 661, column: 26, scope: !2166)
!2176 = !DILocation(line: 661, column: 25, scope: !2166)
!2177 = !DILocation(line: 661, column: 30, scope: !2166)
!2178 = !DILocation(line: 661, column: 8, scope: !2166)
!2179 = !DILocation(line: 661, column: 38, scope: !2166)
!2180 = !DILocation(line: 659, column: 7, scope: !2181)
!2181 = !DILexicalBlockFile(scope: !2167, file: !318, discriminator: 1)
!2182 = !DILocation(line: 663, column: 27, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2166, file: !318, line: 661, column: 45)
!2184 = !DILocation(line: 664, column: 18, scope: !2183)
!2185 = !DILocation(line: 664, column: 17, scope: !2183)
!2186 = !DILocation(line: 664, column: 22, scope: !2183)
!2187 = !DILocation(line: 664, column: 14, scope: !2183)
!2188 = !DILocation(line: 663, column: 4, scope: !2183)
!2189 = !DILocation(line: 665, column: 3, scope: !2183)
!2190 = !DILocation(line: 665, column: 15, scope: !2191)
!2191 = !DILexicalBlockFile(scope: !2192, file: !318, discriminator: 1)
!2192 = distinct !DILexicalBlock(scope: !2166, file: !318, line: 665, column: 14)
!2193 = !DILocation(line: 665, column: 14, scope: !2191)
!2194 = !DILocation(line: 665, column: 19, scope: !2191)
!2195 = !DILocation(line: 665, column: 26, scope: !2191)
!2196 = !DILocation(line: 665, column: 29, scope: !2197)
!2197 = !DILexicalBlockFile(scope: !2192, file: !318, discriminator: 2)
!2198 = !DILocation(line: 665, column: 36, scope: !2197)
!2199 = !DILocation(line: 665, column: 14, scope: !2197)
!2200 = !DILocation(line: 666, column: 20, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2192, file: !318, line: 665, column: 44)
!2202 = !DILocation(line: 666, column: 25, scope: !2201)
!2203 = !DILocation(line: 666, column: 4, scope: !2201)
!2204 = !DILocation(line: 667, column: 7, scope: !2201)
!2205 = !DILocation(line: 668, column: 3, scope: !2201)
!2206 = !DILocation(line: 669, column: 30, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2192, file: !318, line: 668, column: 10)
!2208 = !DILocation(line: 669, column: 36, scope: !2207)
!2209 = !DILocation(line: 669, column: 35, scope: !2207)
!2210 = !DILocation(line: 669, column: 4, scope: !2207)
!2211 = !DILocation(line: 672, column: 6, scope: !2167)
!2212 = !DILocation(line: 658, column: 2, scope: !2213)
!2213 = !DILexicalBlockFile(scope: !2147, file: !318, discriminator: 2)
!2214 = distinct !{!2214, !2159}
!2215 = !DILocation(line: 675, column: 9, scope: !2147)
!2216 = !DILocation(line: 675, column: 2, scope: !2147)
!2217 = distinct !DISubprogram(name: "g_string_append_c_inline", scope: !2019, file: !2019, line: 161, type: !2218, isLocal: true, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{!2017, !2017, !31}
!2220 = !DILocalVariable(name: "gstring", arg: 1, scope: !2217, file: !2019, line: 161, type: !2017)
!2221 = !DILocation(line: 161, column: 36, scope: !2217)
!2222 = !DILocalVariable(name: "c", arg: 2, scope: !2217, file: !2019, line: 162, type: !31)
!2223 = !DILocation(line: 162, column: 33, scope: !2217)
!2224 = !DILocation(line: 164, column: 7, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2217, file: !2019, line: 164, column: 7)
!2226 = !DILocation(line: 164, column: 16, scope: !2225)
!2227 = !DILocation(line: 164, column: 20, scope: !2225)
!2228 = !DILocation(line: 164, column: 26, scope: !2225)
!2229 = !DILocation(line: 164, column: 35, scope: !2225)
!2230 = !DILocation(line: 164, column: 24, scope: !2225)
!2231 = !DILocation(line: 164, column: 7, scope: !2217)
!2232 = !DILocation(line: 166, column: 38, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2225, file: !2019, line: 165, column: 5)
!2234 = !DILocation(line: 166, column: 20, scope: !2233)
!2235 = !DILocation(line: 166, column: 29, scope: !2233)
!2236 = !DILocation(line: 166, column: 32, scope: !2233)
!2237 = !DILocation(line: 166, column: 7, scope: !2233)
!2238 = !DILocation(line: 166, column: 16, scope: !2233)
!2239 = !DILocation(line: 166, column: 36, scope: !2233)
!2240 = !DILocation(line: 167, column: 20, scope: !2233)
!2241 = !DILocation(line: 167, column: 29, scope: !2233)
!2242 = !DILocation(line: 167, column: 7, scope: !2233)
!2243 = !DILocation(line: 167, column: 16, scope: !2233)
!2244 = !DILocation(line: 167, column: 34, scope: !2233)
!2245 = !DILocation(line: 168, column: 5, scope: !2233)
!2246 = !DILocation(line: 170, column: 24, scope: !2225)
!2247 = !DILocation(line: 170, column: 37, scope: !2225)
!2248 = !DILocation(line: 170, column: 5, scope: !2225)
!2249 = !DILocation(line: 171, column: 10, scope: !2217)
!2250 = !DILocation(line: 171, column: 3, scope: !2217)
!2251 = distinct !DISubprogram(name: "statusbar_item_default_func", scope: !318, file: !318, line: 749, type: !2252, isLocal: true, isDefinition: true, scopeLine: 750, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{null, !174, !46}
!2254 = !DILocalVariable(name: "item", arg: 1, scope: !2251, file: !318, line: 749, type: !174)
!2255 = !DILocation(line: 749, column: 56, scope: !2251)
!2256 = !DILocalVariable(name: "get_size_only", arg: 2, scope: !2251, file: !318, line: 749, type: !46)
!2257 = !DILocation(line: 749, column: 66, scope: !2251)
!2258 = !DILocation(line: 751, column: 33, scope: !2251)
!2259 = !DILocation(line: 751, column: 39, scope: !2251)
!2260 = !DILocation(line: 751, column: 2, scope: !2251)
!2261 = !DILocation(line: 752, column: 1, scope: !2251)
!2262 = distinct !DISubprogram(name: "statusbar_item_default_signals", scope: !318, file: !318, line: 830, type: !1009, isLocal: true, isDefinition: true, scopeLine: 831, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2263 = !DILocalVariable(name: "item", arg: 1, scope: !2262, file: !318, line: 830, type: !174)
!2264 = !DILocation(line: 830, column: 59, scope: !2262)
!2265 = !DILocalVariable(name: "func", scope: !2262, file: !318, line: 832, type: !167)
!2266 = !DILocation(line: 832, column: 14, scope: !2262)
!2267 = !DILocalVariable(name: "list", scope: !2262, file: !318, line: 833, type: !14)
!2268 = !DILocation(line: 833, column: 17, scope: !2262)
!2269 = !DILocalVariable(name: "value", scope: !2262, file: !318, line: 834, type: !32)
!2270 = !DILocation(line: 834, column: 14, scope: !2262)
!2271 = !DILocalVariable(name: "signal_id", scope: !2262, file: !318, line: 835, type: !4)
!2272 = !DILocation(line: 835, column: 15, scope: !2262)
!2273 = !DILocalVariable(name: "signals", scope: !2262, file: !318, line: 836, type: !2274)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!2275 = !DILocation(line: 836, column: 14, scope: !2262)
!2276 = !DILocalVariable(name: "pos", scope: !2262, file: !318, line: 836, type: !2274)
!2277 = !DILocation(line: 836, column: 24, scope: !2262)
!2278 = !DILocation(line: 838, column: 35, scope: !2262)
!2279 = !DILocation(line: 838, column: 10, scope: !2262)
!2280 = !DILocation(line: 838, column: 8, scope: !2262)
!2281 = !DILocation(line: 839, column: 6, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2262, file: !318, line: 839, column: 6)
!2283 = !DILocation(line: 839, column: 12, scope: !2282)
!2284 = !DILocation(line: 839, column: 6, scope: !2262)
!2285 = !DILocation(line: 840, column: 3, scope: !2282)
!2286 = !DILocation(line: 842, column: 37, scope: !2262)
!2287 = !DILocation(line: 842, column: 12, scope: !2262)
!2288 = !DILocation(line: 842, column: 10, scope: !2262)
!2289 = !DILocation(line: 843, column: 6, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2262, file: !318, line: 843, column: 6)
!2291 = !DILocation(line: 843, column: 14, scope: !2290)
!2292 = !DILocation(line: 843, column: 6, scope: !2262)
!2293 = !DILocation(line: 844, column: 3, scope: !2290)
!2294 = !DILocation(line: 846, column: 13, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2262, file: !318, line: 846, column: 2)
!2296 = !DILocation(line: 846, column: 11, scope: !2295)
!2297 = !DILocation(line: 846, column: 7, scope: !2295)
!2298 = !DILocation(line: 846, column: 23, scope: !2299)
!2299 = !DILexicalBlockFile(scope: !2300, file: !318, discriminator: 1)
!2300 = distinct !DILexicalBlock(scope: !2295, file: !318, line: 846, column: 2)
!2301 = !DILocation(line: 846, column: 22, scope: !2299)
!2302 = !DILocation(line: 846, column: 27, scope: !2299)
!2303 = !DILocation(line: 846, column: 2, scope: !2299)
!2304 = !DILocation(line: 848, column: 51, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2300, file: !318, line: 846, column: 44)
!2306 = !DILocation(line: 848, column: 50, scope: !2305)
!2307 = !DILocation(line: 848, column: 41, scope: !2305)
!2308 = !DILocation(line: 848, column: 30, scope: !2305)
!2309 = !DILocation(line: 848, column: 27, scope: !2305)
!2310 = !DILocation(line: 849, column: 30, scope: !2305)
!2311 = !DILocation(line: 849, column: 49, scope: !2305)
!2312 = !DILocation(line: 849, column: 10, scope: !2305)
!2313 = !DILocation(line: 849, column: 8, scope: !2305)
!2314 = !DILocation(line: 850, column: 7, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2305, file: !318, line: 850, column: 7)
!2316 = !DILocation(line: 850, column: 12, scope: !2315)
!2317 = !DILocation(line: 850, column: 7, scope: !2305)
!2318 = !DILocation(line: 851, column: 12, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2315, file: !318, line: 850, column: 20)
!2320 = !DILocation(line: 851, column: 4, scope: !2319)
!2321 = !DILocation(line: 853, column: 10, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2319, file: !318, line: 851, column: 20)
!2323 = !DILocation(line: 854, column: 5, scope: !2322)
!2324 = !DILocation(line: 856, column: 10, scope: !2322)
!2325 = !DILocation(line: 857, column: 5, scope: !2322)
!2326 = !DILocation(line: 859, column: 10, scope: !2322)
!2327 = !DILocation(line: 860, column: 5, scope: !2322)
!2328 = !DILocation(line: 862, column: 10, scope: !2322)
!2329 = !DILocation(line: 863, column: 5, scope: !2322)
!2330 = !DILocation(line: 865, column: 38, scope: !2322)
!2331 = !DILocation(line: 866, column: 33, scope: !2322)
!2332 = !DILocation(line: 868, column: 8, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2319, file: !318, line: 868, column: 8)
!2334 = !DILocation(line: 868, column: 13, scope: !2333)
!2335 = !DILocation(line: 868, column: 8, scope: !2319)
!2336 = !DILocation(line: 871, column: 11, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2333, file: !318, line: 868, column: 21)
!2338 = !DILocation(line: 871, column: 10, scope: !2337)
!2339 = !DILocation(line: 871, column: 16, scope: !2337)
!2340 = !DILocation(line: 869, column: 5, scope: !2337)
!2341 = !DILocation(line: 872, column: 4, scope: !2337)
!2342 = !DILocation(line: 873, column: 3, scope: !2319)
!2343 = !DILocation(line: 875, column: 20, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2305, file: !318, line: 875, column: 7)
!2345 = !DILocation(line: 875, column: 26, scope: !2344)
!2346 = !DILocation(line: 875, column: 7, scope: !2344)
!2347 = !DILocation(line: 875, column: 32, scope: !2344)
!2348 = !DILocation(line: 875, column: 7, scope: !2305)
!2349 = !DILocation(line: 876, column: 26, scope: !2344)
!2350 = !DILocation(line: 876, column: 32, scope: !2344)
!2351 = !DILocation(line: 876, column: 11, scope: !2344)
!2352 = !DILocation(line: 876, column: 9, scope: !2344)
!2353 = !DILocation(line: 876, column: 4, scope: !2344)
!2354 = !DILocation(line: 877, column: 23, scope: !2305)
!2355 = !DILocation(line: 877, column: 42, scope: !2305)
!2356 = !DILocation(line: 877, column: 53, scope: !2305)
!2357 = !DILocation(line: 877, column: 3, scope: !2305)
!2358 = !DILocation(line: 880, column: 30, scope: !2305)
!2359 = !DILocation(line: 880, column: 49, scope: !2305)
!2360 = !DILocation(line: 880, column: 10, scope: !2305)
!2361 = !DILocation(line: 880, column: 8, scope: !2305)
!2362 = !DILocation(line: 881, column: 34, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2305, file: !318, line: 881, column: 21)
!2364 = !DILocation(line: 881, column: 40, scope: !2363)
!2365 = !DILocation(line: 881, column: 21, scope: !2363)
!2366 = !DILocation(line: 881, column: 51, scope: !2363)
!2367 = !DILocation(line: 881, column: 21, scope: !2305)
!2368 = !DILocation(line: 882, column: 26, scope: !2363)
!2369 = !DILocation(line: 882, column: 32, scope: !2363)
!2370 = !DILocation(line: 882, column: 11, scope: !2363)
!2371 = !DILocation(line: 882, column: 9, scope: !2363)
!2372 = !DILocation(line: 882, column: 4, scope: !2363)
!2373 = !DILocation(line: 883, column: 23, scope: !2305)
!2374 = !DILocation(line: 883, column: 42, scope: !2305)
!2375 = !DILocation(line: 883, column: 48, scope: !2305)
!2376 = !DILocation(line: 883, column: 3, scope: !2305)
!2377 = !DILocation(line: 884, column: 2, scope: !2305)
!2378 = !DILocation(line: 846, column: 38, scope: !2379)
!2379 = !DILexicalBlockFile(scope: !2300, file: !318, discriminator: 2)
!2380 = !DILocation(line: 846, column: 2, scope: !2379)
!2381 = distinct !{!2381, !2382}
!2382 = !DILocation(line: 846, column: 2, scope: !2262)
!2383 = !DILocation(line: 885, column: 16, scope: !2262)
!2384 = !DILocation(line: 885, column: 9, scope: !2262)
!2385 = !DILocation(line: 886, column: 1, scope: !2262)
!2386 = !DILocation(line: 886, column: 1, scope: !2387)
!2387 = !DILexicalBlockFile(scope: !2262, file: !318, discriminator: 1)
!2388 = distinct !DISubprogram(name: "statusbar_item_remove_signal", scope: !318, file: !318, line: 929, type: !2252, isLocal: true, isDefinition: true, scopeLine: 930, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2389 = !DILocalVariable(name: "item", arg: 1, scope: !2388, file: !318, line: 929, type: !174)
!2390 = !DILocation(line: 929, column: 57, scope: !2388)
!2391 = !DILocalVariable(name: "signal_id", arg: 2, scope: !2388, file: !318, line: 929, type: !46)
!2392 = !DILocation(line: 929, column: 67, scope: !2388)
!2393 = !DILocalVariable(name: "list", scope: !2388, file: !318, line: 931, type: !14)
!2394 = !DILocation(line: 931, column: 10, scope: !2388)
!2395 = !DILocation(line: 934, column: 29, scope: !2388)
!2396 = !DILocation(line: 935, column: 29, scope: !2388)
!2397 = !DILocation(line: 935, column: 20, scope: !2388)
!2398 = !DILocation(line: 935, column: 9, scope: !2388)
!2399 = !DILocation(line: 934, column: 9, scope: !2388)
!2400 = !DILocation(line: 934, column: 7, scope: !2388)
!2401 = !DILocation(line: 936, column: 24, scope: !2388)
!2402 = !DILocation(line: 936, column: 30, scope: !2388)
!2403 = !DILocation(line: 936, column: 9, scope: !2388)
!2404 = !DILocation(line: 936, column: 7, scope: !2388)
!2405 = !DILocation(line: 937, column: 6, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2388, file: !318, line: 937, column: 6)
!2407 = !DILocation(line: 937, column: 11, scope: !2406)
!2408 = !DILocation(line: 937, column: 6, scope: !2388)
!2409 = !DILocation(line: 938, column: 23, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2406, file: !318, line: 937, column: 19)
!2411 = !DILocation(line: 939, column: 30, scope: !2410)
!2412 = !DILocation(line: 939, column: 21, scope: !2410)
!2413 = !DILocation(line: 939, column: 10, scope: !2410)
!2414 = !DILocation(line: 939, column: 43, scope: !2410)
!2415 = !DILocation(line: 938, column: 3, scope: !2410)
!2416 = !DILocation(line: 940, column: 2, scope: !2410)
!2417 = !DILocation(line: 941, column: 23, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2406, file: !318, line: 940, column: 9)
!2419 = !DILocation(line: 942, column: 30, scope: !2418)
!2420 = !DILocation(line: 942, column: 21, scope: !2418)
!2421 = !DILocation(line: 942, column: 10, scope: !2418)
!2422 = !DILocation(line: 941, column: 3, scope: !2418)
!2423 = !DILocation(line: 943, column: 41, scope: !2418)
!2424 = !DILocation(line: 943, column: 17, scope: !2418)
!2425 = !DILocation(line: 945, column: 1, scope: !2388)
!2426 = distinct !DISubprogram(name: "statusbar_redraw_dirty", scope: !318, file: !318, line: 1028, type: !1362, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2427 = !DILocalVariable(name: "tmp", scope: !2426, file: !318, line: 1030, type: !14)
!2428 = !DILocation(line: 1030, column: 10, scope: !2426)
!2429 = !DILocation(line: 1032, column: 6, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2426, file: !318, line: 1032, column: 6)
!2431 = !DILocation(line: 1032, column: 6, scope: !2426)
!2432 = !DILocation(line: 1033, column: 33, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2430, file: !318, line: 1032, column: 37)
!2434 = !DILocation(line: 1034, column: 3, scope: !2433)
!2435 = !DILocation(line: 1035, column: 2, scope: !2433)
!2436 = !DILocation(line: 1037, column: 13, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2426, file: !318, line: 1037, column: 2)
!2438 = !DILocation(line: 1037, column: 37, scope: !2437)
!2439 = !DILocation(line: 1037, column: 11, scope: !2437)
!2440 = !DILocation(line: 1037, column: 7, scope: !2437)
!2441 = !DILocation(line: 1037, column: 43, scope: !2442)
!2442 = !DILexicalBlockFile(scope: !2443, file: !318, discriminator: 1)
!2443 = distinct !DILexicalBlock(scope: !2437, file: !318, line: 1037, column: 2)
!2444 = !DILocation(line: 1037, column: 47, scope: !2442)
!2445 = !DILocation(line: 1037, column: 2, scope: !2442)
!2446 = !DILocalVariable(name: "rec", scope: !2447, file: !318, line: 1038, type: !34)
!2447 = distinct !DILexicalBlock(scope: !2443, file: !318, line: 1037, column: 72)
!2448 = !DILocation(line: 1038, column: 18, scope: !2447)
!2449 = !DILocation(line: 1038, column: 24, scope: !2447)
!2450 = !DILocation(line: 1038, column: 29, scope: !2447)
!2451 = !DILocation(line: 1040, column: 7, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2447, file: !318, line: 1040, column: 7)
!2453 = !DILocation(line: 1040, column: 12, scope: !2452)
!2454 = !DILocation(line: 1040, column: 7, scope: !2447)
!2455 = !DILocation(line: 1041, column: 55, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2452, file: !318, line: 1040, column: 19)
!2457 = !DILocation(line: 1041, column: 25, scope: !2456)
!2458 = !DILocation(line: 1042, column: 4, scope: !2456)
!2459 = !DILocation(line: 1042, column: 9, scope: !2456)
!2460 = !DILocation(line: 1042, column: 15, scope: !2456)
!2461 = !DILocation(line: 1043, column: 4, scope: !2456)
!2462 = !DILocation(line: 1043, column: 9, scope: !2456)
!2463 = !DILocation(line: 1043, column: 20, scope: !2456)
!2464 = !DILocation(line: 1044, column: 3, scope: !2456)
!2465 = !DILocation(line: 1045, column: 2, scope: !2447)
!2466 = !DILocation(line: 1037, column: 61, scope: !2467)
!2467 = !DILexicalBlockFile(scope: !2443, file: !318, discriminator: 2)
!2468 = !DILocation(line: 1037, column: 66, scope: !2467)
!2469 = !DILocation(line: 1037, column: 59, scope: !2467)
!2470 = !DILocation(line: 1037, column: 2, scope: !2467)
!2471 = distinct !{!2471, !2472}
!2472 = !DILocation(line: 1037, column: 2, scope: !2426)
!2473 = !DILocation(line: 1046, column: 1, scope: !2426)
!2474 = distinct !DISubprogram(name: "statusbar_redraw_needed_items", scope: !318, file: !318, line: 994, type: !509, isLocal: true, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2475 = !DILocalVariable(name: "bar", arg: 1, scope: !2474, file: !318, line: 994, type: !34)
!2476 = !DILocation(line: 994, column: 58, scope: !2474)
!2477 = !DILocalVariable(name: "old_active_win", scope: !2474, file: !318, line: 996, type: !58)
!2478 = !DILocation(line: 996, column: 14, scope: !2474)
!2479 = !DILocalVariable(name: "tmp", scope: !2474, file: !318, line: 997, type: !14)
!2480 = !DILocation(line: 997, column: 10, scope: !2474)
!2481 = !DILocalVariable(name: "str", scope: !2474, file: !318, line: 998, type: !11)
!2482 = !DILocation(line: 998, column: 8, scope: !2474)
!2483 = !DILocation(line: 1000, column: 19, scope: !2474)
!2484 = !DILocation(line: 1000, column: 17, scope: !2474)
!2485 = !DILocation(line: 1001, column: 6, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2474, file: !318, line: 1001, column: 6)
!2487 = !DILocation(line: 1001, column: 11, scope: !2486)
!2488 = !DILocation(line: 1001, column: 25, scope: !2486)
!2489 = !DILocation(line: 1001, column: 6, scope: !2474)
!2490 = !DILocation(line: 1002, column: 16, scope: !2486)
!2491 = !DILocation(line: 1002, column: 21, scope: !2486)
!2492 = !DILocation(line: 1002, column: 36, scope: !2486)
!2493 = !DILocation(line: 1002, column: 14, scope: !2486)
!2494 = !DILocation(line: 1002, column: 3, scope: !2486)
!2495 = !DILocation(line: 1004, column: 6, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2474, file: !318, line: 1004, column: 6)
!2497 = !DILocation(line: 1004, column: 11, scope: !2496)
!2498 = !DILocation(line: 1004, column: 22, scope: !2496)
!2499 = !DILocation(line: 1004, column: 6, scope: !2474)
!2500 = !DILocalVariable(name: "orig_border", scope: !2501, file: !318, line: 1005, type: !217)
!2501 = distinct !DILexicalBlock(scope: !2496, file: !318, line: 1004, column: 28)
!2502 = !DILocation(line: 1005, column: 27, scope: !2501)
!2503 = !DILocation(line: 1006, column: 33, scope: !2501)
!2504 = !DILocation(line: 1006, column: 17, scope: !2501)
!2505 = !DILocation(line: 1006, column: 15, scope: !2501)
!2506 = !DILocation(line: 1007, column: 21, scope: !2501)
!2507 = !DILocation(line: 1007, column: 26, scope: !2501)
!2508 = !DILocation(line: 1007, column: 9, scope: !2501)
!2509 = !DILocation(line: 1007, column: 7, scope: !2501)
!2510 = !DILocation(line: 1008, column: 22, scope: !2501)
!2511 = !DILocation(line: 1008, column: 28, scope: !2501)
!2512 = !DILocation(line: 1008, column: 42, scope: !2501)
!2513 = !DILocation(line: 1008, column: 21, scope: !2501)
!2514 = !DILocation(line: 1008, column: 19, scope: !2515)
!2515 = !DILexicalBlockFile(scope: !2501, file: !318, discriminator: 1)
!2516 = !DILocation(line: 1008, column: 25, scope: !2515)
!2517 = !DILocation(line: 1008, column: 40, scope: !2515)
!2518 = !DILocation(line: 1008, column: 56, scope: !2515)
!2519 = !DILocation(line: 1008, column: 62, scope: !2515)
!2520 = !DILocation(line: 1008, column: 77, scope: !2515)
!2521 = !DILocation(line: 1008, column: 53, scope: !2515)
!2522 = !DILocation(line: 1008, column: 21, scope: !2515)
!2523 = !DILocation(line: 1008, column: 21, scope: !2524)
!2524 = !DILexicalBlockFile(scope: !2501, file: !318, discriminator: 2)
!2525 = !DILocation(line: 1008, column: 21, scope: !2526)
!2526 = !DILexicalBlockFile(scope: !2501, file: !318, discriminator: 3)
!2527 = !DILocation(line: 1008, column: 109, scope: !2526)
!2528 = !DILocation(line: 1008, column: 115, scope: !2526)
!2529 = !DILocation(line: 1008, column: 106, scope: !2526)
!2530 = !DILocation(line: 1008, column: 129, scope: !2526)
!2531 = !DILocation(line: 1008, column: 134, scope: !2526)
!2532 = !DILocation(line: 1008, column: 145, scope: !2526)
!2533 = !DILocation(line: 1008, column: 3, scope: !2526)
!2534 = !DILocation(line: 1009, column: 10, scope: !2501)
!2535 = !DILocation(line: 1009, column: 3, scope: !2501)
!2536 = !DILocation(line: 1010, column: 23, scope: !2501)
!2537 = !DILocation(line: 1010, column: 3, scope: !2501)
!2538 = !DILocation(line: 1011, column: 2, scope: !2501)
!2539 = !DILocation(line: 1013, column: 13, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2474, file: !318, line: 1013, column: 2)
!2541 = !DILocation(line: 1013, column: 18, scope: !2540)
!2542 = !DILocation(line: 1013, column: 11, scope: !2540)
!2543 = !DILocation(line: 1013, column: 7, scope: !2540)
!2544 = !DILocation(line: 1013, column: 25, scope: !2545)
!2545 = !DILexicalBlockFile(scope: !2546, file: !318, discriminator: 1)
!2546 = distinct !DILexicalBlock(scope: !2540, file: !318, line: 1013, column: 2)
!2547 = !DILocation(line: 1013, column: 29, scope: !2545)
!2548 = !DILocation(line: 1013, column: 2, scope: !2545)
!2549 = !DILocalVariable(name: "rec", scope: !2550, file: !318, line: 1014, type: !174)
!2550 = distinct !DILexicalBlock(scope: !2546, file: !318, line: 1013, column: 54)
!2551 = !DILocation(line: 1014, column: 18, scope: !2550)
!2552 = !DILocation(line: 1014, column: 24, scope: !2550)
!2553 = !DILocation(line: 1014, column: 29, scope: !2550)
!2554 = !DILocation(line: 1016, column: 7, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2550, file: !318, line: 1016, column: 7)
!2556 = !DILocation(line: 1016, column: 12, scope: !2555)
!2557 = !DILocation(line: 1016, column: 18, scope: !2555)
!2558 = !DILocation(line: 1017, column: 8, scope: !2555)
!2559 = !DILocation(line: 1017, column: 13, scope: !2555)
!2560 = !DILocation(line: 1017, column: 24, scope: !2555)
!2561 = !DILocation(line: 1017, column: 30, scope: !2555)
!2562 = !DILocation(line: 1018, column: 8, scope: !2555)
!2563 = !DILocation(line: 1018, column: 13, scope: !2555)
!2564 = !DILocation(line: 1018, column: 21, scope: !2555)
!2565 = !DILocation(line: 1018, column: 26, scope: !2555)
!2566 = !DILocation(line: 1018, column: 18, scope: !2555)
!2567 = !DILocation(line: 1016, column: 7, scope: !2568)
!2568 = !DILexicalBlockFile(scope: !2550, file: !318, discriminator: 1)
!2569 = !DILocation(line: 1019, column: 24, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2555, file: !318, line: 1018, column: 39)
!2571 = !DILocation(line: 1019, column: 29, scope: !2570)
!2572 = !DILocation(line: 1019, column: 4, scope: !2570)
!2573 = !DILocation(line: 1019, column: 9, scope: !2570)
!2574 = !DILocation(line: 1019, column: 22, scope: !2570)
!2575 = !DILocation(line: 1020, column: 4, scope: !2570)
!2576 = !DILocation(line: 1020, column: 9, scope: !2570)
!2577 = !DILocation(line: 1020, column: 14, scope: !2570)
!2578 = !DILocation(line: 1021, column: 4, scope: !2570)
!2579 = !DILocation(line: 1021, column: 9, scope: !2570)
!2580 = !DILocation(line: 1021, column: 15, scope: !2570)
!2581 = !DILocation(line: 1022, column: 3, scope: !2570)
!2582 = !DILocation(line: 1023, column: 2, scope: !2550)
!2583 = !DILocation(line: 1013, column: 43, scope: !2584)
!2584 = !DILexicalBlockFile(scope: !2546, file: !318, discriminator: 2)
!2585 = !DILocation(line: 1013, column: 48, scope: !2584)
!2586 = !DILocation(line: 1013, column: 41, scope: !2584)
!2587 = !DILocation(line: 1013, column: 2, scope: !2584)
!2588 = distinct !{!2588, !2589}
!2589 = !DILocation(line: 1013, column: 2, scope: !2474)
!2590 = !DILocation(line: 1025, column: 15, scope: !2474)
!2591 = !DILocation(line: 1025, column: 13, scope: !2474)
!2592 = !DILocation(line: 1026, column: 1, scope: !2474)
!2593 = distinct !DISubprogram(name: "statusbars_create_window_bars", scope: !318, file: !318, line: 1135, type: !1362, isLocal: false, isDefinition: true, scopeLine: 1136, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2594 = !DILocation(line: 1137, column: 25, scope: !2593)
!2595 = !DILocation(line: 1137, column: 9, scope: !2593)
!2596 = !DILocation(line: 1138, column: 1, scope: !2593)
!2597 = distinct !DISubprogram(name: "statusbars_add_visible", scope: !318, file: !318, line: 1068, type: !1407, isLocal: true, isDefinition: true, scopeLine: 1069, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2598 = !DILocalVariable(name: "window", arg: 1, scope: !2597, file: !318, line: 1068, type: !52)
!2599 = !DILocation(line: 1068, column: 53, scope: !2597)
!2600 = !DILocalVariable(name: "group", scope: !2597, file: !318, line: 1070, type: !5)
!2601 = !DILocation(line: 1070, column: 23, scope: !2597)
!2602 = !DILocalVariable(name: "bar", scope: !2597, file: !318, line: 1071, type: !34)
!2603 = !DILocation(line: 1071, column: 24, scope: !2597)
!2604 = !DILocalVariable(name: "tmp", scope: !2597, file: !318, line: 1072, type: !14)
!2605 = !DILocation(line: 1072, column: 10, scope: !2597)
!2606 = !DILocation(line: 1074, column: 17, scope: !2597)
!2607 = !DILocation(line: 1074, column: 15, scope: !2597)
!2608 = !DILocation(line: 1075, column: 13, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2597, file: !318, line: 1075, column: 2)
!2610 = !DILocation(line: 1075, column: 20, scope: !2609)
!2611 = !DILocation(line: 1075, column: 11, scope: !2609)
!2612 = !DILocation(line: 1075, column: 7, scope: !2609)
!2613 = !DILocation(line: 1075, column: 33, scope: !2614)
!2614 = !DILexicalBlockFile(scope: !2615, file: !318, discriminator: 1)
!2615 = distinct !DILexicalBlock(scope: !2609, file: !318, line: 1075, column: 2)
!2616 = !DILocation(line: 1075, column: 37, scope: !2614)
!2617 = !DILocation(line: 1075, column: 2, scope: !2614)
!2618 = !DILocalVariable(name: "config", scope: !2619, file: !318, line: 1076, type: !40)
!2619 = distinct !DILexicalBlock(scope: !2615, file: !318, line: 1075, column: 62)
!2620 = !DILocation(line: 1076, column: 25, scope: !2619)
!2621 = !DILocation(line: 1076, column: 34, scope: !2619)
!2622 = !DILocation(line: 1076, column: 39, scope: !2619)
!2623 = !DILocation(line: 1078, column: 7, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2619, file: !318, line: 1078, column: 7)
!2625 = !DILocation(line: 1078, column: 15, scope: !2624)
!2626 = !DILocation(line: 1078, column: 20, scope: !2624)
!2627 = !DILocation(line: 1078, column: 25, scope: !2624)
!2628 = !DILocation(line: 1079, column: 9, scope: !2624)
!2629 = !DILocation(line: 1079, column: 18, scope: !2624)
!2630 = !DILocation(line: 1079, column: 26, scope: !2624)
!2631 = !DILocation(line: 1079, column: 31, scope: !2624)
!2632 = !DILocation(line: 1079, column: 35, scope: !2633)
!2633 = !DILexicalBlockFile(scope: !2624, file: !318, discriminator: 1)
!2634 = !DILocation(line: 1079, column: 54, scope: !2633)
!2635 = !DILocation(line: 1079, column: 50, scope: !2633)
!2636 = !DILocation(line: 1079, column: 62, scope: !2633)
!2637 = !DILocation(line: 1079, column: 66, scope: !2638)
!2638 = !DILexicalBlockFile(scope: !2624, file: !318, discriminator: 2)
!2639 = !DILocation(line: 1079, column: 75, scope: !2638)
!2640 = !DILocation(line: 1079, column: 83, scope: !2638)
!2641 = !DILocation(line: 1079, column: 89, scope: !2638)
!2642 = !DILocation(line: 1079, column: 93, scope: !2643)
!2643 = !DILexicalBlockFile(scope: !2624, file: !318, discriminator: 3)
!2644 = !DILocation(line: 1079, column: 112, scope: !2643)
!2645 = !DILocation(line: 1079, column: 108, scope: !2643)
!2646 = !DILocation(line: 1079, column: 120, scope: !2643)
!2647 = !DILocation(line: 1079, column: 124, scope: !2648)
!2648 = !DILexicalBlockFile(scope: !2624, file: !318, discriminator: 4)
!2649 = !DILocation(line: 1079, column: 133, scope: !2648)
!2650 = !DILocation(line: 1079, column: 141, scope: !2648)
!2651 = !DILocation(line: 1079, column: 148, scope: !2648)
!2652 = !DILocation(line: 1080, column: 22, scope: !2624)
!2653 = !DILocation(line: 1080, column: 29, scope: !2624)
!2654 = !DILocation(line: 1080, column: 37, scope: !2624)
!2655 = !DILocation(line: 1080, column: 43, scope: !2624)
!2656 = !DILocation(line: 1080, column: 7, scope: !2624)
!2657 = !DILocation(line: 1080, column: 51, scope: !2624)
!2658 = !DILocation(line: 1078, column: 7, scope: !2659)
!2659 = !DILexicalBlockFile(scope: !2619, file: !318, discriminator: 1)
!2660 = !DILocation(line: 1081, column: 27, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2624, file: !318, line: 1080, column: 59)
!2662 = !DILocation(line: 1081, column: 34, scope: !2661)
!2663 = !DILocation(line: 1081, column: 42, scope: !2661)
!2664 = !DILocation(line: 1081, column: 10, scope: !2661)
!2665 = !DILocation(line: 1081, column: 8, scope: !2661)
!2666 = !DILocation(line: 1082, column: 21, scope: !2661)
!2667 = !DILocation(line: 1082, column: 4, scope: !2661)
!2668 = !DILocation(line: 1083, column: 3, scope: !2661)
!2669 = !DILocation(line: 1084, column: 2, scope: !2619)
!2670 = !DILocation(line: 1075, column: 51, scope: !2671)
!2671 = !DILexicalBlockFile(scope: !2615, file: !318, discriminator: 2)
!2672 = !DILocation(line: 1075, column: 56, scope: !2671)
!2673 = !DILocation(line: 1075, column: 49, scope: !2671)
!2674 = !DILocation(line: 1075, column: 2, scope: !2671)
!2675 = distinct !{!2675, !2676}
!2676 = !DILocation(line: 1075, column: 2, scope: !2597)
!2677 = !DILocation(line: 1085, column: 1, scope: !2597)
!2678 = distinct !DISubprogram(name: "statusbar_init", scope: !318, file: !318, line: 1140, type: !1362, isLocal: false, isDefinition: true, scopeLine: 1141, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2679 = !DILocation(line: 1142, column: 39, scope: !2678)
!2680 = !DILocation(line: 1143, column: 19, scope: !2678)
!2681 = !DILocation(line: 1144, column: 25, scope: !2678)
!2682 = !DILocation(line: 1145, column: 19, scope: !2678)
!2683 = !DILocation(line: 1145, column: 17, scope: !2678)
!2684 = !DILocation(line: 1147, column: 20, scope: !2678)
!2685 = !DILocation(line: 1147, column: 18, scope: !2678)
!2686 = !DILocation(line: 1149, column: 22, scope: !2678)
!2687 = !DILocation(line: 1149, column: 20, scope: !2678)
!2688 = !DILocation(line: 1151, column: 22, scope: !2678)
!2689 = !DILocation(line: 1151, column: 20, scope: !2678)
!2690 = !DILocation(line: 1153, column: 21, scope: !2678)
!2691 = !DILocation(line: 1153, column: 19, scope: !2678)
!2692 = !DILocation(line: 1156, column: 9, scope: !2678)
!2693 = !DILocation(line: 1157, column: 2, scope: !2678)
!2694 = !DILocation(line: 1158, column: 2, scope: !2678)
!2695 = !DILocation(line: 1159, column: 2, scope: !2678)
!2696 = !DILocation(line: 1160, column: 2, scope: !2678)
!2697 = !DILocation(line: 1161, column: 2, scope: !2678)
!2698 = !DILocation(line: 1163, column: 2, scope: !2678)
!2699 = !DILocation(line: 1164, column: 2, scope: !2678)
!2700 = !DILocation(line: 1165, column: 1, scope: !2678)
!2701 = distinct !DISubprogram(name: "sig_gui_window_created", scope: !318, file: !318, line: 1111, type: !2702, isLocal: true, isDefinition: true, scopeLine: 1112, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{null, !58}
!2704 = !DILocalVariable(name: "window", arg: 1, scope: !2701, file: !318, line: 1111, type: !58)
!2705 = !DILocation(line: 1111, column: 48, scope: !2701)
!2706 = !DILocation(line: 1113, column: 55, scope: !2701)
!2707 = !DILocation(line: 1113, column: 64, scope: !2701)
!2708 = !DILocation(line: 1113, column: 34, scope: !2701)
!2709 = !DILocation(line: 1113, column: 76, scope: !2701)
!2710 = !DILocation(line: 1113, column: 9, scope: !2701)
!2711 = !DILocation(line: 1114, column: 1, scope: !2701)
!2712 = distinct !DISubprogram(name: "sig_window_changed", scope: !318, file: !318, line: 1099, type: !1362, isLocal: true, isDefinition: true, scopeLine: 1100, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2713 = !DILocalVariable(name: "tmp", scope: !2712, file: !318, line: 1101, type: !14)
!2714 = !DILocation(line: 1101, column: 10, scope: !2712)
!2715 = !DILocation(line: 1103, column: 13, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2712, file: !318, line: 1103, column: 2)
!2717 = !DILocation(line: 1103, column: 11, scope: !2716)
!2718 = !DILocation(line: 1103, column: 7, scope: !2716)
!2719 = !DILocation(line: 1103, column: 26, scope: !2720)
!2720 = !DILexicalBlockFile(scope: !2721, file: !318, discriminator: 1)
!2721 = distinct !DILexicalBlock(scope: !2716, file: !318, line: 1103, column: 2)
!2722 = !DILocation(line: 1103, column: 30, scope: !2720)
!2723 = !DILocation(line: 1103, column: 2, scope: !2720)
!2724 = !DILocalVariable(name: "rec", scope: !2725, file: !318, line: 1104, type: !52)
!2725 = distinct !DILexicalBlock(scope: !2721, file: !318, line: 1103, column: 55)
!2726 = !DILocation(line: 1104, column: 20, scope: !2725)
!2727 = !DILocation(line: 1104, column: 26, scope: !2725)
!2728 = !DILocation(line: 1104, column: 31, scope: !2725)
!2729 = !DILocation(line: 1106, column: 31, scope: !2725)
!2730 = !DILocation(line: 1106, column: 3, scope: !2725)
!2731 = !DILocation(line: 1107, column: 40, scope: !2725)
!2732 = !DILocation(line: 1107, column: 17, scope: !2725)
!2733 = !DILocation(line: 1108, column: 2, scope: !2725)
!2734 = !DILocation(line: 1103, column: 44, scope: !2735)
!2735 = !DILexicalBlockFile(scope: !2721, file: !318, discriminator: 2)
!2736 = !DILocation(line: 1103, column: 49, scope: !2735)
!2737 = !DILocation(line: 1103, column: 42, scope: !2735)
!2738 = !DILocation(line: 1103, column: 2, scope: !2735)
!2739 = distinct !{!2739, !2740}
!2740 = !DILocation(line: 1103, column: 2, scope: !2712)
!2741 = !DILocation(line: 1109, column: 1, scope: !2712)
!2742 = distinct !DISubprogram(name: "sig_mainwindow_destroyed", scope: !318, file: !318, line: 1087, type: !1407, isLocal: true, isDefinition: true, scopeLine: 1088, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2743 = !DILocalVariable(name: "window", arg: 1, scope: !2742, file: !318, line: 1087, type: !52)
!2744 = !DILocation(line: 1087, column: 55, scope: !2742)
!2745 = !DILocation(line: 1089, column: 2, scope: !2742)
!2746 = !DILocation(line: 1089, column: 9, scope: !2747)
!2747 = !DILexicalBlockFile(scope: !2742, file: !318, discriminator: 1)
!2748 = !DILocation(line: 1089, column: 17, scope: !2747)
!2749 = !DILocation(line: 1089, column: 28, scope: !2747)
!2750 = !DILocation(line: 1089, column: 2, scope: !2747)
!2751 = !DILocalVariable(name: "bar", scope: !2752, file: !318, line: 1090, type: !34)
!2752 = distinct !DILexicalBlock(scope: !2742, file: !318, line: 1089, column: 36)
!2753 = !DILocation(line: 1090, column: 18, scope: !2752)
!2754 = !DILocation(line: 1090, column: 24, scope: !2752)
!2755 = !DILocation(line: 1090, column: 32, scope: !2752)
!2756 = !DILocation(line: 1090, column: 44, scope: !2752)
!2757 = !DILocation(line: 1093, column: 19, scope: !2752)
!2758 = !DILocation(line: 1093, column: 24, scope: !2752)
!2759 = !DILocation(line: 1093, column: 39, scope: !2752)
!2760 = !DILocation(line: 1093, column: 51, scope: !2752)
!2761 = !DILocation(line: 1093, column: 4, scope: !2752)
!2762 = !DILocation(line: 1092, column: 3, scope: !2752)
!2763 = !DILocation(line: 1092, column: 8, scope: !2752)
!2764 = !DILocation(line: 1092, column: 23, scope: !2752)
!2765 = !DILocation(line: 1092, column: 34, scope: !2752)
!2766 = !DILocation(line: 1094, column: 3, scope: !2752)
!2767 = !DILocation(line: 1094, column: 8, scope: !2752)
!2768 = !DILocation(line: 1094, column: 22, scope: !2752)
!2769 = !DILocation(line: 1095, column: 21, scope: !2752)
!2770 = !DILocation(line: 1095, column: 3, scope: !2752)
!2771 = !DILocation(line: 1089, column: 2, scope: !2772)
!2772 = !DILexicalBlockFile(scope: !2742, file: !318, discriminator: 2)
!2773 = distinct !{!2773, !2745}
!2774 = !DILocation(line: 1097, column: 1, scope: !2742)
!2775 = distinct !DISubprogram(name: "statusbar_deinit", scope: !318, file: !318, line: 1167, type: !1362, isLocal: false, isDefinition: true, scopeLine: 1168, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2776 = !DILocation(line: 1169, column: 2, scope: !2775)
!2777 = !DILocation(line: 1169, column: 9, scope: !2778)
!2778 = !DILexicalBlockFile(scope: !2775, file: !318, discriminator: 1)
!2779 = !DILocation(line: 1169, column: 26, scope: !2778)
!2780 = !DILocation(line: 1169, column: 2, scope: !2778)
!2781 = !DILocation(line: 1170, column: 27, scope: !2775)
!2782 = !DILocation(line: 1170, column: 45, scope: !2775)
!2783 = !DILocation(line: 1170, column: 3, scope: !2775)
!2784 = !DILocation(line: 1169, column: 2, scope: !2785)
!2785 = !DILexicalBlockFile(scope: !2775, file: !318, discriminator: 2)
!2786 = distinct !{!2786, !2776}
!2787 = !DILocation(line: 1172, column: 23, scope: !2775)
!2788 = !DILocation(line: 1172, column: 2, scope: !2775)
!2789 = !DILocation(line: 1174, column: 23, scope: !2775)
!2790 = !DILocation(line: 1174, column: 2, scope: !2775)
!2791 = !DILocation(line: 1176, column: 23, scope: !2775)
!2792 = !DILocation(line: 1176, column: 2, scope: !2775)
!2793 = !DILocation(line: 1177, column: 23, scope: !2775)
!2794 = !DILocation(line: 1177, column: 2, scope: !2775)
!2795 = !DILocation(line: 1179, column: 23, scope: !2775)
!2796 = !DILocation(line: 1179, column: 2, scope: !2775)
!2797 = !DILocation(line: 1181, column: 23, scope: !2775)
!2798 = !DILocation(line: 1181, column: 2, scope: !2775)
!2799 = !DILocation(line: 1182, column: 23, scope: !2775)
!2800 = !DILocation(line: 1182, column: 2, scope: !2775)
!2801 = !DILocation(line: 1184, column: 23, scope: !2775)
!2802 = !DILocation(line: 1184, column: 2, scope: !2775)
!2803 = !DILocation(line: 1185, column: 23, scope: !2775)
!2804 = !DILocation(line: 1185, column: 2, scope: !2775)
!2805 = !DILocation(line: 1187, column: 9, scope: !2775)
!2806 = !DILocation(line: 1188, column: 2, scope: !2775)
!2807 = !DILocation(line: 1189, column: 2, scope: !2775)
!2808 = !DILocation(line: 1190, column: 2, scope: !2775)
!2809 = !DILocation(line: 1191, column: 2, scope: !2775)
!2810 = !DILocation(line: 1192, column: 2, scope: !2775)
!2811 = !DILocation(line: 1194, column: 2, scope: !2775)
!2812 = !DILocation(line: 1195, column: 2, scope: !2775)
!2813 = !DILocation(line: 1196, column: 1, scope: !2775)
!2814 = distinct !DISubprogram(name: "statusbar_item_def_destroy", scope: !318, file: !318, line: 1116, type: !2815, isLocal: true, isDefinition: true, scopeLine: 1117, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{null, !4, !4}
!2817 = !DILocalVariable(name: "key", arg: 1, scope: !2814, file: !318, line: 1116, type: !4)
!2818 = !DILocation(line: 1116, column: 46, scope: !2814)
!2819 = !DILocalVariable(name: "value", arg: 2, scope: !2814, file: !318, line: 1116, type: !4)
!2820 = !DILocation(line: 1116, column: 57, scope: !2814)
!2821 = !DILocation(line: 1118, column: 9, scope: !2814)
!2822 = !DILocation(line: 1118, column: 2, scope: !2814)
!2823 = !DILocation(line: 1119, column: 16, scope: !2814)
!2824 = !DILocation(line: 1119, column: 9, scope: !2814)
!2825 = !DILocation(line: 1120, column: 1, scope: !2814)
!2826 = distinct !DISubprogram(name: "statusbar_signal_item_destroy", scope: !318, file: !318, line: 1122, type: !2827, isLocal: true, isDefinition: true, scopeLine: 1123, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{null, !4, !14}
!2829 = !DILocalVariable(name: "key", arg: 1, scope: !2826, file: !318, line: 1122, type: !4)
!2830 = !DILocation(line: 1122, column: 49, scope: !2826)
!2831 = !DILocalVariable(name: "value", arg: 2, scope: !2826, file: !318, line: 1122, type: !14)
!2832 = !DILocation(line: 1122, column: 62, scope: !2826)
!2833 = !DILocation(line: 1124, column: 2, scope: !2826)
!2834 = !DILocation(line: 1124, column: 9, scope: !2835)
!2835 = !DILexicalBlockFile(scope: !2826, file: !318, discriminator: 1)
!2836 = !DILocation(line: 1124, column: 15, scope: !2835)
!2837 = !DILocation(line: 1124, column: 2, scope: !2835)
!2838 = !DILocation(line: 1125, column: 44, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2826, file: !318, line: 1124, column: 23)
!2840 = !DILocation(line: 1125, column: 51, scope: !2839)
!2841 = !DILocation(line: 1125, column: 35, scope: !2839)
!2842 = !DILocation(line: 1125, column: 28, scope: !2839)
!2843 = !DILocation(line: 1125, column: 3, scope: !2839)
!2844 = !DILocation(line: 1126, column: 46, scope: !2839)
!2845 = !DILocation(line: 1126, column: 53, scope: !2839)
!2846 = !DILocation(line: 1126, column: 60, scope: !2839)
!2847 = !DILocation(line: 1126, column: 31, scope: !2839)
!2848 = !DILocation(line: 1126, column: 17, scope: !2839)
!2849 = !DILocation(line: 1126, column: 24, scope: !2839)
!2850 = !DILocation(line: 1126, column: 29, scope: !2839)
!2851 = !DILocation(line: 1124, column: 2, scope: !2852)
!2852 = !DILexicalBlockFile(scope: !2826, file: !318, discriminator: 2)
!2853 = distinct !{!2853, !2833}
!2854 = !DILocation(line: 1128, column: 1, scope: !2826)
!2855 = distinct !DISubprogram(name: "statusbar_item_signal_destroy", scope: !318, file: !318, line: 1130, type: !2827, isLocal: true, isDefinition: true, scopeLine: 1131, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2856 = !DILocalVariable(name: "key", arg: 1, scope: !2855, file: !318, line: 1130, type: !4)
!2857 = !DILocation(line: 1130, column: 49, scope: !2855)
!2858 = !DILocalVariable(name: "value", arg: 2, scope: !2855, file: !318, line: 1130, type: !14)
!2859 = !DILocation(line: 1130, column: 62, scope: !2855)
!2860 = !DILocation(line: 1132, column: 22, scope: !2855)
!2861 = !DILocation(line: 1132, column: 9, scope: !2855)
!2862 = !DILocation(line: 1133, column: 1, scope: !2855)
!2863 = distinct !DISubprogram(name: "statusbar_resize_items", scope: !318, file: !318, line: 199, type: !659, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2864 = !DILocalVariable(name: "bar", arg: 1, scope: !2863, file: !318, line: 199, type: !34)
!2865 = !DILocation(line: 199, column: 51, scope: !2863)
!2866 = !DILocalVariable(name: "max_width", arg: 2, scope: !2863, file: !318, line: 199, type: !46)
!2867 = !DILocation(line: 199, column: 60, scope: !2863)
!2868 = !DILocalVariable(name: "tmp", scope: !2863, file: !318, line: 201, type: !14)
!2869 = !DILocation(line: 201, column: 10, scope: !2863)
!2870 = !DILocalVariable(name: "prior_sorted", scope: !2863, file: !318, line: 201, type: !14)
!2871 = !DILocation(line: 201, column: 16, scope: !2863)
!2872 = !DILocalVariable(name: "width", scope: !2863, file: !318, line: 202, type: !46)
!2873 = !DILocation(line: 202, column: 13, scope: !2863)
!2874 = !DILocation(line: 205, column: 15, scope: !2863)
!2875 = !DILocation(line: 206, column: 8, scope: !2863)
!2876 = !DILocation(line: 207, column: 13, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2863, file: !318, line: 207, column: 2)
!2878 = !DILocation(line: 207, column: 18, scope: !2877)
!2879 = !DILocation(line: 207, column: 11, scope: !2877)
!2880 = !DILocation(line: 207, column: 7, scope: !2877)
!2881 = !DILocation(line: 207, column: 25, scope: !2882)
!2882 = !DILexicalBlockFile(scope: !2883, file: !318, discriminator: 1)
!2883 = distinct !DILexicalBlock(scope: !2877, file: !318, line: 207, column: 2)
!2884 = !DILocation(line: 207, column: 29, scope: !2882)
!2885 = !DILocation(line: 207, column: 2, scope: !2882)
!2886 = !DILocalVariable(name: "rec", scope: !2887, file: !318, line: 208, type: !174)
!2887 = distinct !DILexicalBlock(scope: !2883, file: !318, line: 207, column: 54)
!2888 = !DILocation(line: 208, column: 18, scope: !2887)
!2889 = !DILocation(line: 208, column: 24, scope: !2887)
!2890 = !DILocation(line: 208, column: 29, scope: !2887)
!2891 = !DILocation(line: 210, column: 3, scope: !2887)
!2892 = !DILocation(line: 210, column: 8, scope: !2887)
!2893 = !DILocation(line: 210, column: 13, scope: !2887)
!2894 = !DILocation(line: 211, column: 15, scope: !2887)
!2895 = !DILocation(line: 211, column: 20, scope: !2887)
!2896 = !DILocation(line: 211, column: 3, scope: !2887)
!2897 = !DILocation(line: 211, column: 8, scope: !2887)
!2898 = !DILocation(line: 211, column: 13, scope: !2887)
!2899 = !DILocation(line: 213, column: 7, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2887, file: !318, line: 213, column: 7)
!2901 = !DILocation(line: 213, column: 12, scope: !2900)
!2902 = !DILocation(line: 213, column: 17, scope: !2900)
!2903 = !DILocation(line: 213, column: 7, scope: !2887)
!2904 = !DILocation(line: 214, column: 13, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2900, file: !318, line: 213, column: 22)
!2906 = !DILocation(line: 214, column: 18, scope: !2905)
!2907 = !DILocation(line: 214, column: 10, scope: !2905)
!2908 = !DILocation(line: 216, column: 41, scope: !2905)
!2909 = !DILocation(line: 216, column: 55, scope: !2905)
!2910 = !DILocation(line: 216, column: 19, scope: !2905)
!2911 = !DILocation(line: 216, column: 17, scope: !2905)
!2912 = !DILocation(line: 219, column: 3, scope: !2905)
!2913 = !DILocation(line: 220, column: 2, scope: !2887)
!2914 = !DILocation(line: 207, column: 43, scope: !2915)
!2915 = !DILexicalBlockFile(scope: !2883, file: !318, discriminator: 2)
!2916 = !DILocation(line: 207, column: 48, scope: !2915)
!2917 = !DILocation(line: 207, column: 41, scope: !2915)
!2918 = !DILocation(line: 207, column: 2, scope: !2915)
!2919 = distinct !{!2919, !2920}
!2920 = !DILocation(line: 207, column: 2, scope: !2863)
!2921 = !DILocation(line: 222, column: 6, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2863, file: !318, line: 222, column: 6)
!2923 = !DILocation(line: 222, column: 14, scope: !2922)
!2924 = !DILocation(line: 222, column: 12, scope: !2922)
!2925 = !DILocation(line: 222, column: 6, scope: !2863)
!2926 = !DILocation(line: 226, column: 35, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2922, file: !318, line: 222, column: 25)
!2928 = !DILocation(line: 226, column: 49, scope: !2927)
!2929 = !DILocation(line: 227, column: 7, scope: !2927)
!2930 = !DILocation(line: 226, column: 11, scope: !2927)
!2931 = !DILocation(line: 226, column: 9, scope: !2927)
!2932 = !DILocation(line: 228, column: 7, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2927, file: !318, line: 228, column: 7)
!2934 = !DILocation(line: 228, column: 15, scope: !2933)
!2935 = !DILocation(line: 228, column: 13, scope: !2933)
!2936 = !DILocation(line: 228, column: 7, scope: !2927)
!2937 = !DILocation(line: 231, column: 28, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2933, file: !318, line: 228, column: 26)
!2939 = !DILocation(line: 231, column: 42, scope: !2938)
!2940 = !DILocation(line: 232, column: 7, scope: !2938)
!2941 = !DILocation(line: 231, column: 4, scope: !2938)
!2942 = !DILocation(line: 233, column: 3, scope: !2938)
!2943 = !DILocation(line: 234, column: 2, scope: !2927)
!2944 = !DILocation(line: 236, column: 15, scope: !2863)
!2945 = !DILocation(line: 236, column: 2, scope: !2863)
!2946 = !DILocation(line: 237, column: 1, scope: !2863)
!2947 = distinct !DISubprogram(name: "sbar_item_cmp", scope: !318, file: !318, line: 139, type: !2948, isLocal: true, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{!46, !174, !174}
!2950 = !DILocalVariable(name: "item1", arg: 1, scope: !2947, file: !318, line: 139, type: !174)
!2951 = !DILocation(line: 139, column: 41, scope: !2947)
!2952 = !DILocalVariable(name: "item2", arg: 2, scope: !2947, file: !318, line: 139, type: !174)
!2953 = !DILocation(line: 139, column: 63, scope: !2947)
!2954 = !DILocation(line: 141, column: 9, scope: !2947)
!2955 = !DILocation(line: 141, column: 16, scope: !2947)
!2956 = !DILocation(line: 141, column: 24, scope: !2947)
!2957 = !DILocation(line: 141, column: 36, scope: !2947)
!2958 = !DILocation(line: 141, column: 43, scope: !2947)
!2959 = !DILocation(line: 141, column: 51, scope: !2947)
!2960 = !DILocation(line: 141, column: 33, scope: !2947)
!2961 = !DILocation(line: 141, column: 9, scope: !2962)
!2962 = !DILexicalBlockFile(scope: !2947, file: !318, discriminator: 1)
!2963 = !DILocation(line: 142, column: 3, scope: !2947)
!2964 = !DILocation(line: 142, column: 10, scope: !2947)
!2965 = !DILocation(line: 142, column: 18, scope: !2947)
!2966 = !DILocation(line: 142, column: 29, scope: !2947)
!2967 = !DILocation(line: 142, column: 36, scope: !2947)
!2968 = !DILocation(line: 142, column: 44, scope: !2947)
!2969 = !DILocation(line: 142, column: 27, scope: !2947)
!2970 = !DILocation(line: 141, column: 9, scope: !2971)
!2971 = !DILexicalBlockFile(scope: !2947, file: !318, discriminator: 2)
!2972 = !DILocation(line: 141, column: 9, scope: !2973)
!2973 = !DILexicalBlockFile(scope: !2947, file: !318, discriminator: 3)
!2974 = !DILocation(line: 141, column: 2, scope: !2973)
!2975 = distinct !DISubprogram(name: "statusbar_shrink_to_min", scope: !318, file: !318, line: 152, type: !2976, isLocal: true, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!46, !14, !46, !46}
!2978 = !DILocalVariable(name: "items", arg: 1, scope: !2975, file: !318, line: 152, type: !14)
!2979 = !DILocation(line: 152, column: 44, scope: !2975)
!2980 = !DILocalVariable(name: "size", arg: 2, scope: !2975, file: !318, line: 152, type: !46)
!2981 = !DILocation(line: 152, column: 55, scope: !2975)
!2982 = !DILocalVariable(name: "max_width", arg: 3, scope: !2975, file: !318, line: 152, type: !46)
!2983 = !DILocation(line: 152, column: 65, scope: !2975)
!2984 = !DILocalVariable(name: "tmp", scope: !2975, file: !318, line: 154, type: !14)
!2985 = !DILocation(line: 154, column: 10, scope: !2975)
!2986 = !DILocation(line: 156, column: 13, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2975, file: !318, line: 156, column: 2)
!2988 = !DILocation(line: 156, column: 11, scope: !2987)
!2989 = !DILocation(line: 156, column: 7, scope: !2987)
!2990 = !DILocation(line: 156, column: 20, scope: !2991)
!2991 = !DILexicalBlockFile(scope: !2992, file: !318, discriminator: 1)
!2992 = distinct !DILexicalBlock(scope: !2987, file: !318, line: 156, column: 2)
!2993 = !DILocation(line: 156, column: 24, scope: !2991)
!2994 = !DILocation(line: 156, column: 2, scope: !2991)
!2995 = !DILocalVariable(name: "rec", scope: !2996, file: !318, line: 157, type: !174)
!2996 = distinct !DILexicalBlock(scope: !2992, file: !318, line: 156, column: 49)
!2997 = !DILocation(line: 157, column: 18, scope: !2996)
!2998 = !DILocation(line: 157, column: 24, scope: !2996)
!2999 = !DILocation(line: 157, column: 29, scope: !2996)
!3000 = !DILocation(line: 159, column: 12, scope: !2996)
!3001 = !DILocation(line: 159, column: 17, scope: !2996)
!3002 = !DILocation(line: 159, column: 26, scope: !2996)
!3003 = !DILocation(line: 159, column: 31, scope: !2996)
!3004 = !DILocation(line: 159, column: 25, scope: !2996)
!3005 = !DILocation(line: 159, column: 8, scope: !2996)
!3006 = !DILocation(line: 160, column: 15, scope: !2996)
!3007 = !DILocation(line: 160, column: 20, scope: !2996)
!3008 = !DILocation(line: 160, column: 3, scope: !2996)
!3009 = !DILocation(line: 160, column: 8, scope: !2996)
!3010 = !DILocation(line: 160, column: 13, scope: !2996)
!3011 = !DILocation(line: 162, column: 7, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !2996, file: !318, line: 162, column: 7)
!3013 = !DILocation(line: 162, column: 15, scope: !3012)
!3014 = !DILocation(line: 162, column: 12, scope: !3012)
!3015 = !DILocation(line: 162, column: 7, scope: !2996)
!3016 = !DILocation(line: 163, column: 17, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !3012, file: !318, line: 162, column: 26)
!3018 = !DILocation(line: 163, column: 27, scope: !3017)
!3019 = !DILocation(line: 163, column: 26, scope: !3017)
!3020 = !DILocation(line: 163, column: 4, scope: !3017)
!3021 = !DILocation(line: 163, column: 9, scope: !3017)
!3022 = !DILocation(line: 163, column: 14, scope: !3017)
!3023 = !DILocation(line: 164, column: 25, scope: !3017)
!3024 = !DILocation(line: 167, column: 7, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !2996, file: !318, line: 167, column: 7)
!3026 = !DILocation(line: 167, column: 12, scope: !3025)
!3027 = !DILocation(line: 167, column: 17, scope: !3025)
!3028 = !DILocation(line: 167, column: 7, scope: !2996)
!3029 = !DILocation(line: 170, column: 29, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3025, file: !318, line: 167, column: 23)
!3031 = !DILocation(line: 171, column: 3, scope: !3030)
!3032 = !DILocation(line: 172, column: 2, scope: !2996)
!3033 = !DILocation(line: 156, column: 38, scope: !3034)
!3034 = !DILexicalBlockFile(scope: !2992, file: !318, discriminator: 2)
!3035 = !DILocation(line: 156, column: 43, scope: !3034)
!3036 = !DILocation(line: 156, column: 36, scope: !3034)
!3037 = !DILocation(line: 156, column: 2, scope: !3034)
!3038 = distinct !{!3038, !3039}
!3039 = !DILocation(line: 156, column: 2, scope: !2975)
!3040 = !DILocation(line: 174, column: 16, scope: !2975)
!3041 = !DILocation(line: 174, column: 9, scope: !2975)
!3042 = distinct !DISubprogram(name: "statusbar_shrink_forced", scope: !318, file: !318, line: 180, type: !3043, isLocal: true, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3043 = !DISubroutineType(types: !3044)
!3044 = !{null, !14, !46, !46}
!3045 = !DILocalVariable(name: "items", arg: 1, scope: !3042, file: !318, line: 180, type: !14)
!3046 = !DILocation(line: 180, column: 45, scope: !3042)
!3047 = !DILocalVariable(name: "size", arg: 2, scope: !3042, file: !318, line: 180, type: !46)
!3048 = !DILocation(line: 180, column: 56, scope: !3042)
!3049 = !DILocalVariable(name: "max_width", arg: 3, scope: !3042, file: !318, line: 180, type: !46)
!3050 = !DILocation(line: 180, column: 66, scope: !3042)
!3051 = !DILocalVariable(name: "tmp", scope: !3042, file: !318, line: 182, type: !14)
!3052 = !DILocation(line: 182, column: 10, scope: !3042)
!3053 = !DILocation(line: 184, column: 13, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !3042, file: !318, line: 184, column: 2)
!3055 = !DILocation(line: 184, column: 11, scope: !3054)
!3056 = !DILocation(line: 184, column: 7, scope: !3054)
!3057 = !DILocation(line: 184, column: 20, scope: !3058)
!3058 = !DILexicalBlockFile(scope: !3059, file: !318, discriminator: 1)
!3059 = distinct !DILexicalBlock(scope: !3054, file: !318, line: 184, column: 2)
!3060 = !DILocation(line: 184, column: 24, scope: !3058)
!3061 = !DILocation(line: 184, column: 2, scope: !3058)
!3062 = !DILocalVariable(name: "rec", scope: !3063, file: !318, line: 185, type: !174)
!3063 = distinct !DILexicalBlock(scope: !3059, file: !318, line: 184, column: 49)
!3064 = !DILocation(line: 185, column: 18, scope: !3063)
!3065 = !DILocation(line: 185, column: 24, scope: !3063)
!3066 = !DILocation(line: 185, column: 29, scope: !3063)
!3067 = !DILocation(line: 187, column: 7, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3063, file: !318, line: 187, column: 7)
!3069 = !DILocation(line: 187, column: 12, scope: !3068)
!3070 = !DILocation(line: 187, column: 17, scope: !3068)
!3071 = !DILocation(line: 187, column: 11, scope: !3068)
!3072 = !DILocation(line: 187, column: 24, scope: !3068)
!3073 = !DILocation(line: 187, column: 22, scope: !3068)
!3074 = !DILocation(line: 187, column: 7, scope: !3063)
!3075 = !DILocation(line: 189, column: 33, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3068, file: !318, line: 187, column: 35)
!3077 = !DILocation(line: 189, column: 38, scope: !3076)
!3078 = !DILocation(line: 189, column: 30, scope: !3076)
!3079 = !DILocation(line: 190, column: 4, scope: !3076)
!3080 = !DILocation(line: 190, column: 9, scope: !3076)
!3081 = !DILocation(line: 190, column: 14, scope: !3076)
!3082 = !DILocation(line: 191, column: 3, scope: !3076)
!3083 = !DILocation(line: 193, column: 17, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3068, file: !318, line: 191, column: 10)
!3085 = !DILocation(line: 193, column: 22, scope: !3084)
!3086 = !DILocation(line: 193, column: 21, scope: !3084)
!3087 = !DILocation(line: 193, column: 4, scope: !3084)
!3088 = !DILocation(line: 193, column: 9, scope: !3084)
!3089 = !DILocation(line: 193, column: 14, scope: !3084)
!3090 = !DILocation(line: 194, column: 25, scope: !3084)
!3091 = !DILocation(line: 196, column: 2, scope: !3063)
!3092 = !DILocation(line: 184, column: 38, scope: !3093)
!3093 = !DILexicalBlockFile(scope: !3059, file: !318, discriminator: 2)
!3094 = !DILocation(line: 184, column: 43, scope: !3093)
!3095 = !DILocation(line: 184, column: 36, scope: !3093)
!3096 = !DILocation(line: 184, column: 2, scope: !3093)
!3097 = distinct !{!3097, !3098}
!3098 = !DILocation(line: 184, column: 2, scope: !3042)
!3099 = !DILocation(line: 197, column: 1, scope: !3042)
!3100 = distinct !DISubprogram(name: "mainwindow_recalc_ypos", scope: !318, file: !318, line: 445, type: !3101, isLocal: true, isDefinition: true, scopeLine: 446, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{null, !52, !46}
!3103 = !DILocalVariable(name: "window", arg: 1, scope: !3100, file: !318, line: 445, type: !52)
!3104 = !DILocation(line: 445, column: 53, scope: !3100)
!3105 = !DILocalVariable(name: "placement", arg: 2, scope: !3100, file: !318, line: 445, type: !46)
!3106 = !DILocation(line: 445, column: 65, scope: !3100)
!3107 = !DILocalVariable(name: "tmp", scope: !3100, file: !318, line: 447, type: !14)
!3108 = !DILocation(line: 447, column: 10, scope: !3100)
!3109 = !DILocation(line: 449, column: 13, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3100, file: !318, line: 449, column: 2)
!3111 = !DILocation(line: 449, column: 21, scope: !3110)
!3112 = !DILocation(line: 449, column: 11, scope: !3110)
!3113 = !DILocation(line: 449, column: 7, scope: !3110)
!3114 = !DILocation(line: 449, column: 33, scope: !3115)
!3115 = !DILexicalBlockFile(scope: !3116, file: !318, discriminator: 1)
!3116 = distinct !DILexicalBlock(scope: !3110, file: !318, line: 449, column: 2)
!3117 = !DILocation(line: 449, column: 37, scope: !3115)
!3118 = !DILocation(line: 449, column: 2, scope: !3115)
!3119 = !DILocalVariable(name: "bar", scope: !3120, file: !318, line: 450, type: !34)
!3120 = distinct !DILexicalBlock(scope: !3116, file: !318, line: 449, column: 62)
!3121 = !DILocation(line: 450, column: 18, scope: !3120)
!3122 = !DILocation(line: 450, column: 24, scope: !3120)
!3123 = !DILocation(line: 450, column: 29, scope: !3120)
!3124 = !DILocation(line: 452, column: 7, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3120, file: !318, line: 452, column: 7)
!3126 = !DILocation(line: 452, column: 12, scope: !3125)
!3127 = !DILocation(line: 452, column: 20, scope: !3125)
!3128 = !DILocation(line: 452, column: 33, scope: !3125)
!3129 = !DILocation(line: 452, column: 30, scope: !3125)
!3130 = !DILocation(line: 452, column: 7, scope: !3120)
!3131 = !DILocation(line: 453, column: 27, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3125, file: !318, line: 452, column: 44)
!3133 = !DILocation(line: 453, column: 4, scope: !3132)
!3134 = !DILocation(line: 454, column: 25, scope: !3132)
!3135 = !DILocation(line: 456, column: 2, scope: !3120)
!3136 = !DILocation(line: 449, column: 51, scope: !3137)
!3137 = !DILexicalBlockFile(scope: !3116, file: !318, discriminator: 2)
!3138 = !DILocation(line: 449, column: 56, scope: !3137)
!3139 = !DILocation(line: 449, column: 49, scope: !3137)
!3140 = !DILocation(line: 449, column: 2, scope: !3137)
!3141 = distinct !{!3141, !3142}
!3142 = !DILocation(line: 449, column: 2, scope: !3100)
!3143 = !DILocation(line: 457, column: 1, scope: !3100)
!3144 = distinct !DISubprogram(name: "sbar_cmp_position", scope: !318, file: !318, line: 145, type: !3145, isLocal: true, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{!46, !34, !34}
!3147 = !DILocalVariable(name: "bar1", arg: 1, scope: !3144, file: !318, line: 145, type: !34)
!3148 = !DILocation(line: 145, column: 45, scope: !3144)
!3149 = !DILocalVariable(name: "bar2", arg: 2, scope: !3144, file: !318, line: 145, type: !34)
!3150 = !DILocation(line: 145, column: 66, scope: !3144)
!3151 = !DILocation(line: 147, column: 9, scope: !3144)
!3152 = !DILocation(line: 147, column: 15, scope: !3144)
!3153 = !DILocation(line: 147, column: 23, scope: !3144)
!3154 = !DILocation(line: 147, column: 34, scope: !3144)
!3155 = !DILocation(line: 147, column: 40, scope: !3144)
!3156 = !DILocation(line: 147, column: 48, scope: !3144)
!3157 = !DILocation(line: 147, column: 32, scope: !3144)
!3158 = !DILocation(line: 147, column: 2, scope: !3144)
!3159 = distinct !DISubprogram(name: "statusbar_update_item", scope: !318, file: !318, line: 754, type: !1362, isLocal: true, isDefinition: true, scopeLine: 755, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3160 = !DILocalVariable(name: "items", scope: !3159, file: !318, line: 756, type: !14)
!3161 = !DILocation(line: 756, column: 10, scope: !3159)
!3162 = !DILocation(line: 758, column: 30, scope: !3159)
!3163 = !DILocation(line: 759, column: 30, scope: !3159)
!3164 = !DILocation(line: 759, column: 21, scope: !3159)
!3165 = !DILocation(line: 759, column: 10, scope: !3159)
!3166 = !DILocation(line: 758, column: 10, scope: !3159)
!3167 = !DILocation(line: 758, column: 8, scope: !3159)
!3168 = !DILocation(line: 760, column: 2, scope: !3159)
!3169 = !DILocation(line: 760, column: 9, scope: !3170)
!3170 = !DILexicalBlockFile(scope: !3159, file: !318, discriminator: 1)
!3171 = !DILocation(line: 760, column: 15, scope: !3170)
!3172 = !DILocation(line: 760, column: 2, scope: !3170)
!3173 = !DILocalVariable(name: "item", scope: !3174, file: !318, line: 761, type: !174)
!3174 = distinct !DILexicalBlock(scope: !3159, file: !318, line: 760, column: 23)
!3175 = !DILocation(line: 761, column: 18, scope: !3174)
!3176 = !DILocation(line: 761, column: 25, scope: !3174)
!3177 = !DILocation(line: 761, column: 32, scope: !3174)
!3178 = !DILocation(line: 763, column: 25, scope: !3174)
!3179 = !DILocation(line: 763, column: 3, scope: !3174)
!3180 = !DILocation(line: 764, column: 11, scope: !3174)
!3181 = !DILocation(line: 764, column: 18, scope: !3174)
!3182 = !DILocation(line: 764, column: 9, scope: !3174)
!3183 = !DILocation(line: 760, column: 2, scope: !3184)
!3184 = !DILexicalBlockFile(scope: !3159, file: !318, discriminator: 2)
!3185 = distinct !{!3185, !3168}
!3186 = !DILocation(line: 766, column: 1, scope: !3159)
!3187 = distinct !DISubprogram(name: "statusbar_update_server", scope: !318, file: !318, line: 768, type: !3188, isLocal: true, isDefinition: true, scopeLine: 769, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{null, !85}
!3190 = !DILocalVariable(name: "server", arg: 1, scope: !3187, file: !318, line: 768, type: !85)
!3191 = !DILocation(line: 768, column: 49, scope: !3187)
!3192 = !DILocalVariable(name: "item_server", scope: !3187, file: !318, line: 770, type: !85)
!3193 = !DILocation(line: 770, column: 21, scope: !3187)
!3194 = !DILocalVariable(name: "items", scope: !3187, file: !318, line: 771, type: !14)
!3195 = !DILocation(line: 771, column: 10, scope: !3187)
!3196 = !DILocation(line: 773, column: 30, scope: !3187)
!3197 = !DILocation(line: 774, column: 30, scope: !3187)
!3198 = !DILocation(line: 774, column: 21, scope: !3187)
!3199 = !DILocation(line: 774, column: 10, scope: !3187)
!3200 = !DILocation(line: 773, column: 10, scope: !3187)
!3201 = !DILocation(line: 773, column: 8, scope: !3187)
!3202 = !DILocation(line: 775, column: 2, scope: !3187)
!3203 = !DILocation(line: 775, column: 9, scope: !3204)
!3204 = !DILexicalBlockFile(scope: !3187, file: !318, discriminator: 1)
!3205 = !DILocation(line: 775, column: 15, scope: !3204)
!3206 = !DILocation(line: 775, column: 2, scope: !3204)
!3207 = !DILocalVariable(name: "item", scope: !3208, file: !318, line: 776, type: !174)
!3208 = distinct !DILexicalBlock(scope: !3187, file: !318, line: 775, column: 23)
!3209 = !DILocation(line: 776, column: 18, scope: !3208)
!3210 = !DILocation(line: 776, column: 25, scope: !3208)
!3211 = !DILocation(line: 776, column: 32, scope: !3208)
!3212 = !DILocation(line: 778, column: 17, scope: !3208)
!3213 = !DILocation(line: 778, column: 23, scope: !3208)
!3214 = !DILocation(line: 778, column: 28, scope: !3208)
!3215 = !DILocation(line: 778, column: 42, scope: !3208)
!3216 = !DILocation(line: 779, column: 4, scope: !3208)
!3217 = !DILocation(line: 779, column: 10, scope: !3208)
!3218 = !DILocation(line: 779, column: 15, scope: !3208)
!3219 = !DILocation(line: 779, column: 30, scope: !3208)
!3220 = !DILocation(line: 779, column: 38, scope: !3208)
!3221 = !DILocation(line: 778, column: 17, scope: !3222)
!3222 = !DILexicalBlockFile(scope: !3208, file: !318, discriminator: 1)
!3223 = !DILocation(line: 780, column: 4, scope: !3208)
!3224 = !DILocation(line: 780, column: 16, scope: !3208)
!3225 = !DILocation(line: 778, column: 17, scope: !3226)
!3226 = !DILexicalBlockFile(scope: !3208, file: !318, discriminator: 2)
!3227 = !DILocation(line: 778, column: 17, scope: !3228)
!3228 = !DILexicalBlockFile(scope: !3208, file: !318, discriminator: 3)
!3229 = !DILocation(line: 778, column: 15, scope: !3228)
!3230 = !DILocation(line: 782, column: 7, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3208, file: !318, line: 782, column: 7)
!3232 = !DILocation(line: 782, column: 22, scope: !3231)
!3233 = !DILocation(line: 782, column: 19, scope: !3231)
!3234 = !DILocation(line: 782, column: 7, scope: !3208)
!3235 = !DILocation(line: 783, column: 26, scope: !3231)
!3236 = !DILocation(line: 783, column: 4, scope: !3231)
!3237 = !DILocation(line: 785, column: 11, scope: !3208)
!3238 = !DILocation(line: 785, column: 18, scope: !3208)
!3239 = !DILocation(line: 785, column: 9, scope: !3208)
!3240 = !DILocation(line: 775, column: 2, scope: !3241)
!3241 = !DILexicalBlockFile(scope: !3187, file: !318, discriminator: 2)
!3242 = distinct !{!3242, !3202}
!3243 = !DILocation(line: 787, column: 1, scope: !3187)
!3244 = distinct !DISubprogram(name: "statusbar_update_window", scope: !318, file: !318, line: 789, type: !2702, isLocal: true, isDefinition: true, scopeLine: 790, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3245 = !DILocalVariable(name: "window", arg: 1, scope: !3244, file: !318, line: 789, type: !58)
!3246 = !DILocation(line: 789, column: 49, scope: !3244)
!3247 = !DILocalVariable(name: "item_window", scope: !3244, file: !318, line: 791, type: !58)
!3248 = !DILocation(line: 791, column: 21, scope: !3244)
!3249 = !DILocalVariable(name: "items", scope: !3244, file: !318, line: 792, type: !14)
!3250 = !DILocation(line: 792, column: 10, scope: !3244)
!3251 = !DILocation(line: 794, column: 30, scope: !3244)
!3252 = !DILocation(line: 795, column: 30, scope: !3244)
!3253 = !DILocation(line: 795, column: 21, scope: !3244)
!3254 = !DILocation(line: 795, column: 10, scope: !3244)
!3255 = !DILocation(line: 794, column: 10, scope: !3244)
!3256 = !DILocation(line: 794, column: 8, scope: !3244)
!3257 = !DILocation(line: 796, column: 2, scope: !3244)
!3258 = !DILocation(line: 796, column: 9, scope: !3259)
!3259 = !DILexicalBlockFile(scope: !3244, file: !318, discriminator: 1)
!3260 = !DILocation(line: 796, column: 15, scope: !3259)
!3261 = !DILocation(line: 796, column: 2, scope: !3259)
!3262 = !DILocalVariable(name: "item", scope: !3263, file: !318, line: 797, type: !174)
!3263 = distinct !DILexicalBlock(scope: !3244, file: !318, line: 796, column: 23)
!3264 = !DILocation(line: 797, column: 18, scope: !3263)
!3265 = !DILocation(line: 797, column: 25, scope: !3263)
!3266 = !DILocation(line: 797, column: 32, scope: !3263)
!3267 = !DILocation(line: 799, column: 17, scope: !3263)
!3268 = !DILocation(line: 799, column: 23, scope: !3263)
!3269 = !DILocation(line: 799, column: 28, scope: !3263)
!3270 = !DILocation(line: 799, column: 42, scope: !3263)
!3271 = !DILocation(line: 800, column: 4, scope: !3263)
!3272 = !DILocation(line: 800, column: 10, scope: !3263)
!3273 = !DILocation(line: 800, column: 15, scope: !3263)
!3274 = !DILocation(line: 800, column: 30, scope: !3263)
!3275 = !DILocation(line: 799, column: 17, scope: !3276)
!3276 = !DILexicalBlockFile(scope: !3263, file: !318, discriminator: 1)
!3277 = !DILocation(line: 800, column: 39, scope: !3276)
!3278 = !DILocation(line: 799, column: 17, scope: !3279)
!3279 = !DILexicalBlockFile(scope: !3263, file: !318, discriminator: 2)
!3280 = !DILocation(line: 799, column: 17, scope: !3281)
!3281 = !DILexicalBlockFile(scope: !3263, file: !318, discriminator: 3)
!3282 = !DILocation(line: 799, column: 15, scope: !3281)
!3283 = !DILocation(line: 802, column: 7, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3263, file: !318, line: 802, column: 7)
!3285 = !DILocation(line: 802, column: 22, scope: !3284)
!3286 = !DILocation(line: 802, column: 19, scope: !3284)
!3287 = !DILocation(line: 802, column: 7, scope: !3263)
!3288 = !DILocation(line: 803, column: 26, scope: !3284)
!3289 = !DILocation(line: 803, column: 4, scope: !3284)
!3290 = !DILocation(line: 805, column: 11, scope: !3263)
!3291 = !DILocation(line: 805, column: 18, scope: !3263)
!3292 = !DILocation(line: 805, column: 9, scope: !3263)
!3293 = !DILocation(line: 796, column: 2, scope: !3294)
!3294 = !DILexicalBlockFile(scope: !3244, file: !318, discriminator: 2)
!3295 = distinct !{!3295, !3257}
!3296 = !DILocation(line: 807, column: 1, scope: !3244)
!3297 = distinct !DISubprogram(name: "statusbar_update_window_item", scope: !318, file: !318, line: 809, type: !99, isLocal: true, isDefinition: true, scopeLine: 810, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3298 = !DILocalVariable(name: "wiitem", arg: 1, scope: !3297, file: !318, line: 809, type: !70)
!3299 = !DILocation(line: 809, column: 55, scope: !3297)
!3300 = !DILocalVariable(name: "item_wi", scope: !3297, file: !318, line: 811, type: !70)
!3301 = !DILocation(line: 811, column: 22, scope: !3297)
!3302 = !DILocalVariable(name: "items", scope: !3297, file: !318, line: 812, type: !14)
!3303 = !DILocation(line: 812, column: 10, scope: !3297)
!3304 = !DILocation(line: 814, column: 30, scope: !3297)
!3305 = !DILocation(line: 815, column: 30, scope: !3297)
!3306 = !DILocation(line: 815, column: 21, scope: !3297)
!3307 = !DILocation(line: 815, column: 10, scope: !3297)
!3308 = !DILocation(line: 814, column: 10, scope: !3297)
!3309 = !DILocation(line: 814, column: 8, scope: !3297)
!3310 = !DILocation(line: 816, column: 2, scope: !3297)
!3311 = !DILocation(line: 816, column: 9, scope: !3312)
!3312 = !DILexicalBlockFile(scope: !3297, file: !318, discriminator: 1)
!3313 = !DILocation(line: 816, column: 15, scope: !3312)
!3314 = !DILocation(line: 816, column: 2, scope: !3312)
!3315 = !DILocalVariable(name: "item", scope: !3316, file: !318, line: 817, type: !174)
!3316 = distinct !DILexicalBlock(scope: !3297, file: !318, line: 816, column: 23)
!3317 = !DILocation(line: 817, column: 18, scope: !3316)
!3318 = !DILocation(line: 817, column: 25, scope: !3316)
!3319 = !DILocation(line: 817, column: 32, scope: !3316)
!3320 = !DILocation(line: 819, column: 13, scope: !3316)
!3321 = !DILocation(line: 819, column: 19, scope: !3316)
!3322 = !DILocation(line: 819, column: 24, scope: !3316)
!3323 = !DILocation(line: 819, column: 38, scope: !3316)
!3324 = !DILocation(line: 820, column: 4, scope: !3316)
!3325 = !DILocation(line: 820, column: 10, scope: !3316)
!3326 = !DILocation(line: 820, column: 15, scope: !3316)
!3327 = !DILocation(line: 820, column: 30, scope: !3316)
!3328 = !DILocation(line: 820, column: 38, scope: !3316)
!3329 = !DILocation(line: 819, column: 13, scope: !3330)
!3330 = !DILexicalBlockFile(scope: !3316, file: !318, discriminator: 1)
!3331 = !DILocation(line: 821, column: 4, scope: !3316)
!3332 = !DILocation(line: 821, column: 16, scope: !3316)
!3333 = !DILocation(line: 819, column: 13, scope: !3334)
!3334 = !DILexicalBlockFile(scope: !3316, file: !318, discriminator: 2)
!3335 = !DILocation(line: 819, column: 13, scope: !3336)
!3336 = !DILexicalBlockFile(scope: !3316, file: !318, discriminator: 3)
!3337 = !DILocation(line: 819, column: 11, scope: !3336)
!3338 = !DILocation(line: 823, column: 7, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3316, file: !318, line: 823, column: 7)
!3340 = !DILocation(line: 823, column: 18, scope: !3339)
!3341 = !DILocation(line: 823, column: 15, scope: !3339)
!3342 = !DILocation(line: 823, column: 7, scope: !3316)
!3343 = !DILocation(line: 824, column: 26, scope: !3339)
!3344 = !DILocation(line: 824, column: 4, scope: !3339)
!3345 = !DILocation(line: 826, column: 11, scope: !3316)
!3346 = !DILocation(line: 826, column: 18, scope: !3316)
!3347 = !DILocation(line: 826, column: 9, scope: !3316)
!3348 = !DILocation(line: 816, column: 2, scope: !3349)
!3349 = !DILexicalBlockFile(scope: !3297, file: !318, discriminator: 2)
!3350 = distinct !{!3350, !3310}
!3351 = !DILocation(line: 828, column: 1, scope: !3297)
!3352 = distinct !DISubprogram(name: "statusbar_signal_remove", scope: !318, file: !318, line: 921, type: !3353, isLocal: true, isDefinition: true, scopeLine: 922, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3353 = !DISubroutineType(types: !3354)
!3354 = !{null, !46}
!3355 = !DILocalVariable(name: "signal_id", arg: 1, scope: !3352, file: !318, line: 921, type: !46)
!3356 = !DILocation(line: 921, column: 41, scope: !3352)
!3357 = !DILocation(line: 923, column: 19, scope: !3352)
!3358 = !DILocation(line: 923, column: 2, scope: !3352)
!3359 = !DILocation(line: 924, column: 19, scope: !3352)
!3360 = !DILocation(line: 924, column: 2, scope: !3352)
!3361 = !DILocation(line: 925, column: 19, scope: !3352)
!3362 = !DILocation(line: 925, column: 2, scope: !3352)
!3363 = !DILocation(line: 926, column: 19, scope: !3352)
!3364 = !DILocation(line: 926, column: 2, scope: !3352)
!3365 = !DILocation(line: 927, column: 1, scope: !3352)
!3366 = distinct !DISubprogram(name: "set_border_info", scope: !318, file: !318, line: 975, type: !3367, isLocal: true, isDefinition: true, scopeLine: 976, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!217, !34}
!3369 = !DILocalVariable(name: "bar", arg: 1, scope: !3366, file: !318, line: 975, type: !34)
!3370 = !DILocation(line: 975, column: 63, scope: !3366)
!3371 = !DILocalVariable(name: "orig_border", scope: !3366, file: !318, line: 977, type: !217)
!3372 = !DILocation(line: 977, column: 26, scope: !3366)
!3373 = !DILocalVariable(name: "new_border", scope: !3366, file: !318, line: 977, type: !217)
!3374 = !DILocation(line: 977, column: 40, scope: !3366)
!3375 = !DILocation(line: 978, column: 16, scope: !3366)
!3376 = !DILocation(line: 978, column: 14, scope: !3366)
!3377 = !DILocation(line: 979, column: 43, scope: !3366)
!3378 = !DILocation(line: 979, column: 16, scope: !3366)
!3379 = !DILocation(line: 979, column: 13, scope: !3366)
!3380 = !DILocation(line: 980, column: 23, scope: !3366)
!3381 = !DILocation(line: 980, column: 28, scope: !3366)
!3382 = !DILocation(line: 980, column: 42, scope: !3366)
!3383 = !DILocation(line: 980, column: 51, scope: !3384)
!3384 = !DILexicalBlockFile(scope: !3366, file: !318, discriminator: 1)
!3385 = !DILocation(line: 980, column: 56, scope: !3384)
!3386 = !DILocation(line: 980, column: 71, scope: !3384)
!3387 = !DILocation(line: 980, column: 23, scope: !3384)
!3388 = !DILocation(line: 980, column: 23, scope: !3389)
!3389 = !DILexicalBlockFile(scope: !3366, file: !318, discriminator: 2)
!3390 = !DILocation(line: 980, column: 23, scope: !3391)
!3391 = !DILexicalBlockFile(scope: !3366, file: !318, discriminator: 3)
!3392 = !DILocation(line: 980, column: 2, scope: !3391)
!3393 = !DILocation(line: 980, column: 14, scope: !3391)
!3394 = !DILocation(line: 980, column: 21, scope: !3391)
!3395 = !DILocation(line: 981, column: 22, scope: !3366)
!3396 = !DILocation(line: 981, column: 27, scope: !3366)
!3397 = !DILocation(line: 981, column: 2, scope: !3366)
!3398 = !DILocation(line: 981, column: 14, scope: !3366)
!3399 = !DILocation(line: 981, column: 20, scope: !3366)
!3400 = !DILocation(line: 982, column: 18, scope: !3366)
!3401 = !DILocation(line: 982, column: 16, scope: !3366)
!3402 = !DILocation(line: 983, column: 9, scope: !3366)
!3403 = !DILocation(line: 983, column: 2, scope: !3366)
!3404 = distinct !DISubprogram(name: "restore_border_info", scope: !318, file: !318, line: 986, type: !3405, isLocal: true, isDefinition: true, scopeLine: 987, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3405 = !DISubroutineType(types: !3406)
!3406 = !{null, !217}
!3407 = !DILocalVariable(name: "border_info", arg: 1, scope: !3404, file: !318, line: 986, type: !217)
!3408 = !DILocation(line: 986, column: 57, scope: !3404)
!3409 = !DILocalVariable(name: "old_border", scope: !3404, file: !318, line: 988, type: !217)
!3410 = !DILocation(line: 988, column: 26, scope: !3404)
!3411 = !DILocation(line: 989, column: 15, scope: !3404)
!3412 = !DILocation(line: 989, column: 13, scope: !3404)
!3413 = !DILocation(line: 990, column: 18, scope: !3404)
!3414 = !DILocation(line: 990, column: 16, scope: !3404)
!3415 = !DILocation(line: 991, column: 9, scope: !3404)
!3416 = !DILocation(line: 991, column: 2, scope: !3404)
!3417 = !DILocation(line: 992, column: 1, scope: !3404)
!3418 = distinct !DISubprogram(name: "statusbars_remove_unvisible", scope: !318, file: !318, line: 1055, type: !1407, isLocal: true, isDefinition: true, scopeLine: 1056, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3419 = !DILocalVariable(name: "window", arg: 1, scope: !3418, file: !318, line: 1055, type: !52)
!3420 = !DILocation(line: 1055, column: 58, scope: !3418)
!3421 = !DILocalVariable(name: "tmp", scope: !3418, file: !318, line: 1057, type: !14)
!3422 = !DILocation(line: 1057, column: 10, scope: !3418)
!3423 = !DILocalVariable(name: "next", scope: !3418, file: !318, line: 1057, type: !14)
!3424 = !DILocation(line: 1057, column: 16, scope: !3418)
!3425 = !DILocation(line: 1059, column: 13, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3418, file: !318, line: 1059, column: 2)
!3427 = !DILocation(line: 1059, column: 21, scope: !3426)
!3428 = !DILocation(line: 1059, column: 11, scope: !3426)
!3429 = !DILocation(line: 1059, column: 7, scope: !3426)
!3430 = !DILocation(line: 1059, column: 33, scope: !3431)
!3431 = !DILexicalBlockFile(scope: !3432, file: !318, discriminator: 1)
!3432 = distinct !DILexicalBlock(scope: !3426, file: !318, line: 1059, column: 2)
!3433 = !DILocation(line: 1059, column: 37, scope: !3431)
!3434 = !DILocation(line: 1059, column: 2, scope: !3431)
!3435 = !DILocalVariable(name: "bar", scope: !3436, file: !318, line: 1060, type: !34)
!3436 = distinct !DILexicalBlock(scope: !3432, file: !318, line: 1059, column: 57)
!3437 = !DILocation(line: 1060, column: 18, scope: !3436)
!3438 = !DILocation(line: 1060, column: 24, scope: !3436)
!3439 = !DILocation(line: 1060, column: 29, scope: !3436)
!3440 = !DILocation(line: 1062, column: 10, scope: !3436)
!3441 = !DILocation(line: 1062, column: 15, scope: !3436)
!3442 = !DILocation(line: 1062, column: 8, scope: !3436)
!3443 = !DILocation(line: 1063, column: 24, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3436, file: !318, line: 1063, column: 21)
!3445 = !DILocation(line: 1063, column: 29, scope: !3444)
!3446 = !DILocation(line: 1063, column: 38, scope: !3444)
!3447 = !DILocation(line: 1063, column: 46, scope: !3444)
!3448 = !DILocation(line: 1063, column: 51, scope: !3444)
!3449 = !DILocation(line: 1063, column: 55, scope: !3450)
!3450 = !DILexicalBlockFile(scope: !3444, file: !318, discriminator: 1)
!3451 = !DILocation(line: 1063, column: 74, scope: !3450)
!3452 = !DILocation(line: 1063, column: 70, scope: !3450)
!3453 = !DILocation(line: 1063, column: 82, scope: !3450)
!3454 = !DILocation(line: 1063, column: 86, scope: !3455)
!3455 = !DILexicalBlockFile(scope: !3444, file: !318, discriminator: 2)
!3456 = !DILocation(line: 1063, column: 91, scope: !3455)
!3457 = !DILocation(line: 1063, column: 100, scope: !3455)
!3458 = !DILocation(line: 1063, column: 108, scope: !3455)
!3459 = !DILocation(line: 1063, column: 114, scope: !3455)
!3460 = !DILocation(line: 1063, column: 118, scope: !3461)
!3461 = !DILexicalBlockFile(scope: !3444, file: !318, discriminator: 3)
!3462 = !DILocation(line: 1063, column: 137, scope: !3461)
!3463 = !DILocation(line: 1063, column: 133, scope: !3461)
!3464 = !DILocation(line: 1063, column: 145, scope: !3461)
!3465 = !DILocation(line: 1063, column: 149, scope: !3466)
!3466 = !DILexicalBlockFile(scope: !3444, file: !318, discriminator: 4)
!3467 = !DILocation(line: 1063, column: 154, scope: !3466)
!3468 = !DILocation(line: 1063, column: 163, scope: !3466)
!3469 = !DILocation(line: 1063, column: 171, scope: !3466)
!3470 = !DILocation(line: 1063, column: 21, scope: !3466)
!3471 = !DILocation(line: 1064, column: 43, scope: !3444)
!3472 = !DILocation(line: 1064, column: 25, scope: !3444)
!3473 = !DILocation(line: 1065, column: 2, scope: !3436)
!3474 = !DILocation(line: 1059, column: 51, scope: !3475)
!3475 = !DILexicalBlockFile(scope: !3432, file: !318, discriminator: 2)
!3476 = !DILocation(line: 1059, column: 49, scope: !3475)
!3477 = !DILocation(line: 1059, column: 2, scope: !3475)
!3478 = distinct !{!3478, !3479}
!3479 = !DILocation(line: 1059, column: 2, scope: !3418)
!3480 = !DILocation(line: 1066, column: 1, scope: !3418)
