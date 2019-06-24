; ModuleID = './line356-mainwindows.o.i'
source_filename = "./line356-mainwindows.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GSList = type { i8*, %struct._GSList* }
%struct.MAIN_WINDOW_REC = type { %struct._WINDOW_REC*, %struct._TERM_WINDOW*, i32, i32, i32, i32, i32, i32, i32, %struct._GSList*, i32, i32, i32, i32, i32, i32, i8 }
%struct._WINDOW_REC = type { i32, i8*, i32, i32, %struct._GSList*, %struct._WI_ITEM_REC*, %struct._SERVER_REC*, %struct._SERVER_REC*, i8*, i32, %struct._GSList*, i8, %struct.HISTORY_REC*, i8*, i32, i8*, i64, i64, i8*, i8*, i8* }
%struct._WI_ITEM_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)* }
%struct._GHashTable = type opaque
%struct._SERVER_REC = type opaque
%struct.HISTORY_REC = type { i8*, %struct._GList*, i32, i32, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._TERM_WINDOW = type opaque
%struct.MAIN_WINDOW_BORDER_REC = type { i8*, %struct._TERM_WINDOW* }
%struct.GUI_WINDOW_REC = type { %struct.MAIN_WINDOW_REC*, %struct._TEXT_BUFFER_VIEW_REC*, i8, %struct._LINE_REC*, i64 }
%struct._TEXT_BUFFER_VIEW_REC = type { %struct.TEXT_BUFFER_REC*, %struct._GSList*, %struct._TERM_WINDOW*, i32, i32, i32, i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)*, %struct.TEXT_BUFFER_CACHE_REC*, i32, %struct._LINE_REC*, i32, %struct._LINE_REC*, i32, %struct._GHashTable*, i32, i32, i8 }
%struct.TEXT_BUFFER_REC = type { %struct._GSList*, %struct._LINE_REC*, i32, %struct._LINE_REC*, %struct.TEXT_CHUNK_REC*, i32, i32, i32, i8 }
%struct.TEXT_CHUNK_REC = type { [16368 x i8], i32, i32 }
%struct.TEXT_BUFFER_CACHE_REC = type { i32, i32, %struct._GHashTable*, i8, i32 }
%struct._LINE_REC = type { %struct._LINE_REC*, %struct._LINE_REC*, i8*, %struct.LINE_INFO_REC }
%struct.LINE_INFO_REC = type { i32, i64 }
%struct._GString = type { i8*, i64, i64 }

@windows = external global %struct._GSList*, align 8
@mainwindows = common global %struct._GSList* null, align 8
@active_mainwin = common global %struct.MAIN_WINDOW_REC* null, align 8
@screen_reserved_top = common global i32 0, align 4
@term_height = external global i32, align 4
@screen_reserved_bottom = common global i32 0, align 4
@screen_reserved_left = common global i32 0, align 4
@screen_width = internal global i32 0, align 4
@screen_reserved_right = common global i32 0, align 4
@active_win = external global %struct._WINDOW_REC*, align 8
@.str = private unnamed_addr constant [19 x i8] c"mainwindow created\00", align 1
@__func__.mainwindow_destroy = private unnamed_addr constant [19 x i8] c"mainwindow_destroy\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"window != NULL\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"mainwindow destroyed\00", align 1
@quitting = external global i32, align 4
@screen_height = internal global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"terminal resized\00", align 1
@__func__.mainwindows_reserve_lines = private unnamed_addr constant [26 x i8] c"mainwindows_reserve_lines\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"top > 0 || screen_reserved_top > top\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"bottom > 0 || screen_reserved_bottom > bottom\00", align 1
@term_width = external global i32, align 4
@clrtoeol_info = common global %struct.MAIN_WINDOW_BORDER_REC* null, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"fe-text\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"window grow\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"window shrink\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"window size\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"window balance\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"window hide\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"window show\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"window up\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"window down\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"window left\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"window right\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"window dup\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"window ddown\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"window dleft\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"window dright\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"window stick\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"window move left\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"window move right\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"window move up\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"window move down\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"window move dleft\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"window move dright\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"window rgrow\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"window rshrink\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"window rsize\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"window rbalance\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"window rshow\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"window print info\00", align 1
@.str.34 = private unnamed_addr constant [53 x i8] c"Resizing window %p W:%d expected:%d H:%d expected:%d\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"mainwindow moved\00", align 1
@__func__.mainwindow_shrink = private unnamed_addr constant [18 x i8] c"mainwindow_shrink\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"count >= 0\00", align 1
@__func__.try_shrink_lower = private unnamed_addr constant [17 x i8] c"try_shrink_lower\00", align 1
@__func__.try_shrink_upper = private unnamed_addr constant [17 x i8] c"try_shrink_upper\00", align 1
@__func__.mainwindow_rshrink = private unnamed_addr constant [19 x i8] c"mainwindow_rshrink\00", align 1
@__func__.try_rshrink_right = private unnamed_addr constant [18 x i8] c"try_rshrink_right\00", align 1
@__func__.try_rshrink_left = private unnamed_addr constant [17 x i8] c"try_rshrink_left\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"mainwindow resized\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"autounstick_windows\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"error command\00", align 1
@.str.40 = private unnamed_addr constant [24 x i8] c"autostick_split_windows\00", align 1
@__func__.window_refnum_left = private unnamed_addr constant [19 x i8] c"window_refnum_left\00", align 1
@__func__.window_refnum_right = private unnamed_addr constant [20 x i8] c"window_refnum_right\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"OF\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"#%d, \00", align 1

; Function Attrs: nounwind uwtable
define void @mainwindow_change_active(%struct.MAIN_WINDOW_REC*, %struct._WINDOW_REC*) #0 !dbg !377 {
  %3 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %4 = alloca %struct._WINDOW_REC*, align 8
  %5 = alloca %struct._WINDOW_REC*, align 8
  %6 = alloca %struct._WINDOW_REC*, align 8
  %7 = alloca %struct._GSList*, align 8
  %8 = alloca %struct._WINDOW_REC*, align 8
  store %struct.MAIN_WINDOW_REC* %0, %struct.MAIN_WINDOW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %3, metadata !381, metadata !382), !dbg !383
  store %struct._WINDOW_REC* %1, %struct._WINDOW_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %4, metadata !384, metadata !382), !dbg !385
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %5, metadata !386, metadata !382), !dbg !387
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %6, metadata !388, metadata !382), !dbg !389
  call void @llvm.dbg.declare(metadata %struct._GSList** %7, metadata !390, metadata !382), !dbg !391
  %9 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !392
  %10 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %9, i32 0, i32 0, !dbg !393
  store %struct._WINDOW_REC* null, %struct._WINDOW_REC** %10, align 8, !dbg !394
  %11 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !395
  %12 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %11, i32 0, i32 2, !dbg !397
  %13 = load i32, i32* %12, align 8, !dbg !397
  %14 = icmp ne i32 %13, 0, !dbg !395
  br i1 %14, label %15, label %47, !dbg !398

; <label>:15:                                     ; preds = %2
  %16 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !399
  %17 = call %struct._GSList* @get_sticky_windows_sorted(%struct.MAIN_WINDOW_REC* %16), !dbg !401
  store %struct._GSList* %17, %struct._GSList** %7, align 8, !dbg !402
  %18 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !403
  %19 = getelementptr inbounds %struct._GSList, %struct._GSList* %18, i32 0, i32 0, !dbg !404
  %20 = load i8*, i8** %19, align 8, !dbg !404
  %21 = bitcast i8* %20 to %struct._WINDOW_REC*, !dbg !403
  store %struct._WINDOW_REC* %21, %struct._WINDOW_REC** %5, align 8, !dbg !405
  %22 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !406
  %23 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !408
  %24 = icmp eq %struct._WINDOW_REC* %22, %23, !dbg !409
  br i1 %24, label %25, label %40, !dbg !410

; <label>:25:                                     ; preds = %15
  %26 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !411
  %27 = getelementptr inbounds %struct._GSList, %struct._GSList* %26, i32 0, i32 1, !dbg !413
  %28 = load %struct._GSList*, %struct._GSList** %27, align 8, !dbg !413
  %29 = icmp eq %struct._GSList* %28, null, !dbg !414
  br i1 %29, label %30, label %31, !dbg !411

; <label>:30:                                     ; preds = %25
  br label %37, !dbg !415

; <label>:31:                                     ; preds = %25
  %32 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !417
  %33 = getelementptr inbounds %struct._GSList, %struct._GSList* %32, i32 0, i32 1, !dbg !418
  %34 = load %struct._GSList*, %struct._GSList** %33, align 8, !dbg !418
  %35 = getelementptr inbounds %struct._GSList, %struct._GSList* %34, i32 0, i32 0, !dbg !419
  %36 = load i8*, i8** %35, align 8, !dbg !419
  br label %37, !dbg !420

; <label>:37:                                     ; preds = %31, %30
  %38 = phi i8* [ null, %30 ], [ %36, %31 ], !dbg !422
  %39 = bitcast i8* %38 to %struct._WINDOW_REC*, !dbg !422
  store %struct._WINDOW_REC* %39, %struct._WINDOW_REC** %5, align 8, !dbg !424
  br label %40, !dbg !425

; <label>:40:                                     ; preds = %37, %15
  %41 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !426
  call void @g_slist_free(%struct._GSList* %41), !dbg !427
  %42 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !428
  %43 = icmp ne %struct._WINDOW_REC* %42, null, !dbg !430
  br i1 %43, label %44, label %46, !dbg !431

; <label>:44:                                     ; preds = %40
  %45 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !432
  call void @window_set_active(%struct._WINDOW_REC* %45), !dbg !434
  br label %75, !dbg !435

; <label>:46:                                     ; preds = %40
  br label %47, !dbg !436

; <label>:47:                                     ; preds = %46, %2
  store %struct._WINDOW_REC* null, %struct._WINDOW_REC** %6, align 8, !dbg !437
  %48 = load %struct._GSList*, %struct._GSList** @windows, align 8, !dbg !438
  store %struct._GSList* %48, %struct._GSList** %7, align 8, !dbg !440
  br label %49, !dbg !441

; <label>:49:                                     ; preds = %63, %47
  %50 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !442
  %51 = icmp ne %struct._GSList* %50, null, !dbg !445
  br i1 %51, label %52, label %67, !dbg !446

; <label>:52:                                     ; preds = %49
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %8, metadata !447, metadata !382), !dbg !449
  %53 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !450
  %54 = getelementptr inbounds %struct._GSList, %struct._GSList* %53, i32 0, i32 0, !dbg !451
  %55 = load i8*, i8** %54, align 8, !dbg !451
  %56 = bitcast i8* %55 to %struct._WINDOW_REC*, !dbg !450
  store %struct._WINDOW_REC* %56, %struct._WINDOW_REC** %8, align 8, !dbg !449
  %57 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %8, align 8, !dbg !452
  %58 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !454
  %59 = icmp ne %struct._WINDOW_REC* %57, %58, !dbg !455
  br i1 %59, label %60, label %62, !dbg !456

; <label>:60:                                     ; preds = %52
  %61 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %8, align 8, !dbg !457
  store %struct._WINDOW_REC* %61, %struct._WINDOW_REC** %6, align 8, !dbg !459
  br label %67, !dbg !460

; <label>:62:                                     ; preds = %52
  br label %63, !dbg !461

; <label>:63:                                     ; preds = %62
  %64 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !462
  %65 = getelementptr inbounds %struct._GSList, %struct._GSList* %64, i32 0, i32 1, !dbg !464
  %66 = load %struct._GSList*, %struct._GSList** %65, align 8, !dbg !464
  store %struct._GSList* %66, %struct._GSList** %7, align 8, !dbg !465
  br label %49, !dbg !466, !llvm.loop !467

; <label>:67:                                     ; preds = %60, %49
  %68 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %6, align 8, !dbg !469
  call void @window_set_active(%struct._WINDOW_REC* %68), !dbg !470
  %69 = load %struct._GSList*, %struct._GSList** @mainwindows, align 8, !dbg !471
  %70 = getelementptr inbounds %struct._GSList, %struct._GSList* %69, i32 0, i32 1, !dbg !473
  %71 = load %struct._GSList*, %struct._GSList** %70, align 8, !dbg !473
  %72 = icmp ne %struct._GSList* %71, null, !dbg !474
  br i1 %72, label %73, label %75, !dbg !475

; <label>:73:                                     ; preds = %67
  %74 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !476
  call void @mainwindow_destroy(%struct.MAIN_WINDOW_REC* %74), !dbg !477
  br label %75, !dbg !477

; <label>:75:                                     ; preds = %44, %73, %67
  ret void, !dbg !478
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal %struct._GSList* @get_sticky_windows_sorted(%struct.MAIN_WINDOW_REC*) #0 !dbg !479 {
  %2 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct._WINDOW_REC*, align 8
  store %struct.MAIN_WINDOW_REC* %0, %struct.MAIN_WINDOW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %2, metadata !482, metadata !382), !dbg !483
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !484, metadata !382), !dbg !485
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !486, metadata !382), !dbg !487
  store %struct._GSList* null, %struct._GSList** %4, align 8, !dbg !488
  %6 = load %struct._GSList*, %struct._GSList** @windows, align 8, !dbg !489
  store %struct._GSList* %6, %struct._GSList** %3, align 8, !dbg !491
  br label %7, !dbg !492

; <label>:7:                                      ; preds = %40, %1
  %8 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !493
  %9 = icmp ne %struct._GSList* %8, null, !dbg !496
  br i1 %9, label %10, label %44, !dbg !497

; <label>:10:                                     ; preds = %7
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %5, metadata !498, metadata !382), !dbg !500
  %11 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !501
  %12 = getelementptr inbounds %struct._GSList, %struct._GSList* %11, i32 0, i32 0, !dbg !502
  %13 = load i8*, i8** %12, align 8, !dbg !502
  %14 = bitcast i8* %13 to %struct._WINDOW_REC*, !dbg !501
  store %struct._WINDOW_REC* %14, %struct._WINDOW_REC** %5, align 8, !dbg !500
  %15 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !503
  %16 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %15, i32 0, i32 20, !dbg !505
  %17 = load i8*, i8** %16, align 8, !dbg !505
  %18 = bitcast i8* %17 to %struct.GUI_WINDOW_REC*, !dbg !506
  %19 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %18, i32 0, i32 2, !dbg !507
  %20 = load i8, i8* %19, align 8, !dbg !507
  %21 = lshr i8 %20, 2, !dbg !507
  %22 = and i8 %21, 1, !dbg !507
  %23 = zext i8 %22 to i32, !dbg !507
  %24 = icmp ne i32 %23, 0, !dbg !508
  br i1 %24, label %25, label %39, !dbg !509

; <label>:25:                                     ; preds = %10
  %26 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !510
  %27 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %26, i32 0, i32 20, !dbg !512
  %28 = load i8*, i8** %27, align 8, !dbg !512
  %29 = bitcast i8* %28 to %struct.GUI_WINDOW_REC*, !dbg !513
  %30 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %29, i32 0, i32 0, !dbg !514
  %31 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %30, align 8, !dbg !514
  %32 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !515
  %33 = icmp eq %struct.MAIN_WINDOW_REC* %31, %32, !dbg !516
  br i1 %33, label %34, label %39, !dbg !517

; <label>:34:                                     ; preds = %25
  %35 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !518
  %36 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !520
  %37 = bitcast %struct._WINDOW_REC* %36 to i8*, !dbg !520
  %38 = call %struct._GSList* @g_slist_insert_sorted(%struct._GSList* %35, i8* %37, i32 (i8*, i8*)* bitcast (i32 (%struct._WINDOW_REC*, %struct._WINDOW_REC*)* @window_refnum_cmp to i32 (i8*, i8*)*)), !dbg !521
  store %struct._GSList* %38, %struct._GSList** %4, align 8, !dbg !522
  br label %39, !dbg !523

; <label>:39:                                     ; preds = %34, %25, %10
  br label %40, !dbg !524

; <label>:40:                                     ; preds = %39
  %41 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !525
  %42 = getelementptr inbounds %struct._GSList, %struct._GSList* %41, i32 0, i32 1, !dbg !527
  %43 = load %struct._GSList*, %struct._GSList** %42, align 8, !dbg !527
  store %struct._GSList* %43, %struct._GSList** %3, align 8, !dbg !528
  br label %7, !dbg !529, !llvm.loop !530

; <label>:44:                                     ; preds = %7
  %45 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !532
  ret %struct._GSList* %45, !dbg !533
}

declare void @g_slist_free(%struct._GSList*) #2

declare void @window_set_active(%struct._WINDOW_REC*) #2

; Function Attrs: nounwind uwtable
define void @mainwindow_destroy(%struct.MAIN_WINDOW_REC*) #0 !dbg !534 {
  %2 = alloca %struct.MAIN_WINDOW_REC*, align 8
  store %struct.MAIN_WINDOW_REC* %0, %struct.MAIN_WINDOW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %2, metadata !537, metadata !382), !dbg !538
  br label %3, !dbg !539, !llvm.loop !540

; <label>:3:                                      ; preds = %1
  %4 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !541
  %5 = icmp ne %struct.MAIN_WINDOW_REC* %4, null, !dbg !545
  br i1 %5, label %6, label %7, !dbg !541

; <label>:6:                                      ; preds = %3
  br label %8, !dbg !546

; <label>:7:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.mainwindow_destroy, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)), !dbg !549
  br label %35, !dbg !552

; <label>:8:                                      ; preds = %6
  br label %9, !dbg !553

; <label>:9:                                      ; preds = %8
  %10 = load %struct._GSList*, %struct._GSList** @mainwindows, align 8, !dbg !555
  %11 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !556
  %12 = bitcast %struct.MAIN_WINDOW_REC* %11 to i8*, !dbg !556
  %13 = call %struct._GSList* @g_slist_remove(%struct._GSList* %10, i8* %12), !dbg !557
  store %struct._GSList* %13, %struct._GSList** @mainwindows, align 8, !dbg !558
  %14 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !559
  %15 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i32 1, %struct.MAIN_WINDOW_REC* %14), !dbg !560
  %16 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !561
  %17 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %16, i32 0, i32 1, !dbg !562
  %18 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %17, align 8, !dbg !562
  call void @term_window_destroy(%struct._TERM_WINDOW* %18), !dbg !563
  %19 = load %struct._GSList*, %struct._GSList** @mainwindows, align 8, !dbg !564
  %20 = icmp ne %struct._GSList* %19, null, !dbg !566
  br i1 %20, label %21, label %28, !dbg !567

; <label>:21:                                     ; preds = %9
  %22 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !568
  call void @gui_windows_remove_parent(%struct.MAIN_WINDOW_REC* %22), !dbg !570
  %23 = load i32, i32* @quitting, align 4, !dbg !571
  %24 = icmp ne i32 %23, 0, !dbg !571
  br i1 %24, label %27, label %25, !dbg !573

; <label>:25:                                     ; preds = %21
  %26 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !574
  call void @mainwindows_add_space(%struct.MAIN_WINDOW_REC* %26), !dbg !576
  call void @mainwindows_redraw(), !dbg !577
  br label %27, !dbg !578

; <label>:27:                                     ; preds = %25, %21
  br label %28, !dbg !579

; <label>:28:                                     ; preds = %27, %9
  %29 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !580
  %30 = bitcast %struct.MAIN_WINDOW_REC* %29 to i8*, !dbg !580
  call void @g_free(i8* %30), !dbg !581
  %31 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** @active_mainwin, align 8, !dbg !582
  %32 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !584
  %33 = icmp eq %struct.MAIN_WINDOW_REC* %31, %32, !dbg !585
  br i1 %33, label %34, label %35, !dbg !586

; <label>:34:                                     ; preds = %28
  store %struct.MAIN_WINDOW_REC* null, %struct.MAIN_WINDOW_REC** @active_mainwin, align 8, !dbg !587
  br label %35, !dbg !589

; <label>:35:                                     ; preds = %7, %34, %28
  ret void, !dbg !590
}

; Function Attrs: nounwind uwtable
define void @mainwindows_recreate() #0 !dbg !591 {
  %1 = alloca %struct._GSList*, align 8
  %2 = alloca %struct.MAIN_WINDOW_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %1, metadata !594, metadata !382), !dbg !595
  %3 = load %struct._GSList*, %struct._GSList** @mainwindows, align 8, !dbg !596
  store %struct._GSList* %3, %struct._GSList** %1, align 8, !dbg !598
  br label %4, !dbg !599

; <label>:4:                                      ; preds = %59, %0
  %5 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !600
  %6 = icmp ne %struct._GSList* %5, null, !dbg !603
  br i1 %6, label %7, label %63, !dbg !604

; <label>:7:                                      ; preds = %4
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %2, metadata !605, metadata !382), !dbg !607
  %8 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !608
  %9 = getelementptr inbounds %struct._GSList, %struct._GSList* %8, i32 0, i32 0, !dbg !609
  %10 = load i8*, i8** %9, align 8, !dbg !609
  %11 = bitcast i8* %10 to %struct.MAIN_WINDOW_REC*, !dbg !608
  store %struct.MAIN_WINDOW_REC* %11, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !607
  %12 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !610
  %13 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %12, i32 0, i32 5, !dbg !611
  %14 = load i32, i32* %13, align 4, !dbg !611
  %15 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !612
  %16 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %15, i32 0, i32 13, !dbg !613
  %17 = load i32, i32* %16, align 4, !dbg !613
  %18 = add nsw i32 %14, %17, !dbg !614
  %19 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !615
  %20 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %19, i32 0, i32 3, !dbg !616
  %21 = load i32, i32* %20, align 4, !dbg !616
  %22 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !617
  %23 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %22, i32 0, i32 10, !dbg !618
  %24 = load i32, i32* %23, align 8, !dbg !618
  %25 = add nsw i32 %21, %24, !dbg !619
  %26 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !620
  %27 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %26, i32 0, i32 7, !dbg !621
  %28 = load i32, i32* %27, align 4, !dbg !621
  %29 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !622
  %30 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %29, i32 0, i32 15, !dbg !623
  %31 = load i32, i32* %30, align 4, !dbg !623
  %32 = sub nsw i32 %28, %31, !dbg !624
  %33 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !625
  %34 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %33, i32 0, i32 8, !dbg !626
  %35 = load i32, i32* %34, align 8, !dbg !626
  %36 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !627
  %37 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %36, i32 0, i32 12, !dbg !628
  %38 = load i32, i32* %37, align 8, !dbg !628
  %39 = sub nsw i32 %35, %38, !dbg !629
  %40 = call %struct._TERM_WINDOW* @term_window_create(i32 %18, i32 %25, i32 %32, i32 %39), !dbg !630
  %41 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !631
  %42 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %41, i32 0, i32 1, !dbg !632
  store %struct._TERM_WINDOW* %40, %struct._TERM_WINDOW** %42, align 8, !dbg !633
  %43 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !634
  %44 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %43, i32 0, i32 16, !dbg !635
  %45 = load i8, i8* %44, align 8, !dbg !636
  %46 = and i8 %45, -2, !dbg !636
  %47 = or i8 %46, 1, !dbg !636
  store i8 %47, i8* %44, align 8, !dbg !636
  %48 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !637
  %49 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %48, i32 0, i32 0, !dbg !638
  %50 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %49, align 8, !dbg !638
  %51 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %50, i32 0, i32 20, !dbg !639
  %52 = load i8*, i8** %51, align 8, !dbg !639
  %53 = bitcast i8* %52 to %struct.GUI_WINDOW_REC*, !dbg !640
  %54 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %53, i32 0, i32 1, !dbg !641
  %55 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %54, align 8, !dbg !641
  %56 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !642
  %57 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %56, i32 0, i32 1, !dbg !643
  %58 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %57, align 8, !dbg !643
  call void @textbuffer_view_set_window(%struct._TEXT_BUFFER_VIEW_REC* %55, %struct._TERM_WINDOW* %58), !dbg !644
  br label %59, !dbg !645

; <label>:59:                                     ; preds = %7
  %60 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !646
  %61 = getelementptr inbounds %struct._GSList, %struct._GSList* %60, i32 0, i32 1, !dbg !648
  %62 = load %struct._GSList*, %struct._GSList** %61, align 8, !dbg !648
  store %struct._GSList* %62, %struct._GSList** %1, align 8, !dbg !649
  br label %4, !dbg !650, !llvm.loop !651

; <label>:63:                                     ; preds = %4
  ret void, !dbg !653
}

declare %struct._TERM_WINDOW* @term_window_create(i32, i32, i32, i32) #2

declare void @textbuffer_view_set_window(%struct._TEXT_BUFFER_VIEW_REC*, %struct._TERM_WINDOW*) #2

; Function Attrs: nounwind uwtable
define %struct.MAIN_WINDOW_REC* @mainwindow_create(i32) #0 !dbg !654 {
  %2 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %5 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._GSList*, align 8
  %8 = alloca %struct._GSList*, align 8
  %9 = alloca %struct.MAIN_WINDOW_REC*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !657, metadata !382), !dbg !658
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %4, metadata !659, metadata !382), !dbg !660
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %5, metadata !661, metadata !382), !dbg !662
  call void @llvm.dbg.declare(metadata i32* %6, metadata !663, metadata !382), !dbg !664
  %10 = call noalias i8* @g_malloc0_n(i64 1, i64 88), !dbg !665
  %11 = bitcast i8* %10 to %struct.MAIN_WINDOW_REC*, !dbg !666
  store %struct.MAIN_WINDOW_REC* %11, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !667
  %12 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !668
  %13 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %12, i32 0, i32 16, !dbg !669
  %14 = load i8, i8* %13, align 8, !dbg !670
  %15 = and i8 %14, -2, !dbg !670
  %16 = or i8 %15, 1, !dbg !670
  store i8 %16, i8* %13, align 8, !dbg !670
  %17 = load %struct._GSList*, %struct._GSList** @mainwindows, align 8, !dbg !671
  %18 = icmp eq %struct._GSList* %17, null, !dbg !673
  br i1 %18, label %19, label %59, !dbg !674

; <label>:19:                                     ; preds = %1
  %20 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !675
  store %struct.MAIN_WINDOW_REC* %20, %struct.MAIN_WINDOW_REC** @active_mainwin, align 8, !dbg !677
  %21 = load i32, i32* @screen_reserved_top, align 4, !dbg !678
  %22 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !679
  %23 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %22, i32 0, i32 3, !dbg !680
  store i32 %21, i32* %23, align 4, !dbg !681
  %24 = load i32, i32* @term_height, align 4, !dbg !682
  %25 = sub nsw i32 %24, 1, !dbg !683
  %26 = load i32, i32* @screen_reserved_bottom, align 4, !dbg !684
  %27 = sub nsw i32 %25, %26, !dbg !685
  %28 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !686
  %29 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %28, i32 0, i32 4, !dbg !687
  store i32 %27, i32* %29, align 8, !dbg !688
  %30 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !689
  %31 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %30, i32 0, i32 4, !dbg !690
  %32 = load i32, i32* %31, align 8, !dbg !690
  %33 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !691
  %34 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %33, i32 0, i32 3, !dbg !692
  %35 = load i32, i32* %34, align 4, !dbg !692
  %36 = sub nsw i32 %32, %35, !dbg !693
  %37 = add nsw i32 %36, 1, !dbg !694
  %38 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !695
  %39 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %38, i32 0, i32 8, !dbg !696
  store i32 %37, i32* %39, align 8, !dbg !697
  %40 = load i32, i32* @screen_reserved_left, align 4, !dbg !698
  %41 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !699
  %42 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %41, i32 0, i32 5, !dbg !700
  store i32 %40, i32* %42, align 4, !dbg !701
  %43 = load i32, i32* @screen_width, align 4, !dbg !702
  %44 = sub nsw i32 %43, 1, !dbg !703
  %45 = load i32, i32* @screen_reserved_right, align 4, !dbg !704
  %46 = sub nsw i32 %44, %45, !dbg !705
  %47 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !706
  %48 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %47, i32 0, i32 6, !dbg !707
  store i32 %46, i32* %48, align 8, !dbg !708
  %49 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !709
  %50 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %49, i32 0, i32 6, !dbg !710
  %51 = load i32, i32* %50, align 8, !dbg !710
  %52 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !711
  %53 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %52, i32 0, i32 5, !dbg !712
  %54 = load i32, i32* %53, align 4, !dbg !712
  %55 = sub nsw i32 %51, %54, !dbg !713
  %56 = add nsw i32 %55, 1, !dbg !714
  %57 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !715
  %58 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %57, i32 0, i32 7, !dbg !716
  store i32 %56, i32* %58, align 4, !dbg !717
  br label %225, !dbg !718

; <label>:59:                                     ; preds = %1
  %60 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !719
  %61 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %60, i32 0, i32 20, !dbg !721
  %62 = load i8*, i8** %61, align 8, !dbg !721
  %63 = bitcast i8* %62 to %struct.GUI_WINDOW_REC*, !dbg !722
  %64 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %63, i32 0, i32 0, !dbg !723
  %65 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %64, align 8, !dbg !723
  store %struct.MAIN_WINDOW_REC* %65, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !724
  %66 = load i32, i32* %3, align 4, !dbg !725
  %67 = icmp ne i32 %66, 0, !dbg !725
  br i1 %67, label %156, label %68, !dbg !727

; <label>:68:                                     ; preds = %59
  call void @llvm.dbg.declare(metadata %struct._GSList** %7, metadata !728, metadata !382), !dbg !730
  call void @llvm.dbg.declare(metadata %struct._GSList** %8, metadata !731, metadata !382), !dbg !732
  %69 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !733
  %70 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %69, i32 0, i32 8, !dbg !735
  %71 = load i32, i32* %70, align 8, !dbg !735
  %72 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !736
  %73 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %72, i32 0, i32 12, !dbg !737
  %74 = load i32, i32* %73, align 8, !dbg !737
  %75 = sub nsw i32 %71, %74, !dbg !738
  %76 = icmp slt i32 %75, 5, !dbg !739
  br i1 %76, label %77, label %79, !dbg !740

; <label>:77:                                     ; preds = %68
  %78 = call %struct.MAIN_WINDOW_REC* @find_window_with_room(), !dbg !741
  store %struct.MAIN_WINDOW_REC* %78, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !742
  br label %79, !dbg !743

; <label>:79:                                     ; preds = %77, %68
  %80 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !744
  %81 = icmp eq %struct.MAIN_WINDOW_REC* %80, null, !dbg !746
  br i1 %81, label %82, label %83, !dbg !747

; <label>:82:                                     ; preds = %79
  store %struct.MAIN_WINDOW_REC* null, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !748
  br label %264, !dbg !748

; <label>:83:                                     ; preds = %79
  %84 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !749
  %85 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %84, i32 0, i32 8, !dbg !750
  %86 = load i32, i32* %85, align 8, !dbg !750
  %87 = sdiv i32 %86, 2, !dbg !751
  store i32 %87, i32* %6, align 4, !dbg !752
  %88 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !753
  %89 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %88, i32 0, i32 3, !dbg !754
  %90 = load i32, i32* %89, align 4, !dbg !754
  %91 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !755
  %92 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %91, i32 0, i32 3, !dbg !756
  store i32 %90, i32* %92, align 4, !dbg !757
  %93 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !758
  %94 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %93, i32 0, i32 3, !dbg !759
  %95 = load i32, i32* %94, align 4, !dbg !759
  %96 = load i32, i32* %6, align 4, !dbg !760
  %97 = add nsw i32 %95, %96, !dbg !761
  %98 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !762
  %99 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %98, i32 0, i32 4, !dbg !763
  store i32 %97, i32* %99, align 8, !dbg !764
  %100 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !765
  %101 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %100, i32 0, i32 4, !dbg !766
  %102 = load i32, i32* %101, align 8, !dbg !766
  %103 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !767
  %104 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %103, i32 0, i32 3, !dbg !768
  %105 = load i32, i32* %104, align 4, !dbg !768
  %106 = sub nsw i32 %102, %105, !dbg !769
  %107 = add nsw i32 %106, 1, !dbg !770
  %108 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !771
  %109 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %108, i32 0, i32 8, !dbg !772
  store i32 %107, i32* %109, align 8, !dbg !773
  %110 = load i32, i32* @screen_reserved_left, align 4, !dbg !774
  %111 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !775
  %112 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %111, i32 0, i32 5, !dbg !776
  store i32 %110, i32* %112, align 4, !dbg !777
  %113 = load i32, i32* @screen_width, align 4, !dbg !778
  %114 = sub nsw i32 %113, 1, !dbg !779
  %115 = load i32, i32* @screen_reserved_right, align 4, !dbg !780
  %116 = sub nsw i32 %114, %115, !dbg !781
  %117 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !782
  %118 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %117, i32 0, i32 6, !dbg !783
  store i32 %116, i32* %118, align 8, !dbg !784
  %119 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !785
  %120 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %119, i32 0, i32 6, !dbg !786
  %121 = load i32, i32* %120, align 8, !dbg !786
  %122 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !787
  %123 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %122, i32 0, i32 5, !dbg !788
  %124 = load i32, i32* %123, align 4, !dbg !788
  %125 = sub nsw i32 %121, %124, !dbg !789
  %126 = add nsw i32 %125, 1, !dbg !790
  %127 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !791
  %128 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %127, i32 0, i32 7, !dbg !792
  store i32 %126, i32* %128, align 4, !dbg !793
  %129 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !794
  %130 = call %struct._GSList* @mainwindows_get_line(%struct.MAIN_WINDOW_REC* %129), !dbg !795
  store %struct._GSList* %130, %struct._GSList** %8, align 8, !dbg !796
  %131 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !797
  store %struct._GSList* %131, %struct._GSList** %7, align 8, !dbg !799
  br label %132, !dbg !800

; <label>:132:                                    ; preds = %150, %83
  %133 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !801
  %134 = icmp ne %struct._GSList* %133, null, !dbg !804
  br i1 %134, label %135, label %154, !dbg !805

; <label>:135:                                    ; preds = %132
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %9, metadata !806, metadata !382), !dbg !808
  %136 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !809
  %137 = getelementptr inbounds %struct._GSList, %struct._GSList* %136, i32 0, i32 0, !dbg !810
  %138 = load i8*, i8** %137, align 8, !dbg !810
  %139 = bitcast i8* %138 to %struct.MAIN_WINDOW_REC*, !dbg !809
  store %struct.MAIN_WINDOW_REC* %139, %struct.MAIN_WINDOW_REC** %9, align 8, !dbg !808
  %140 = load i32, i32* %6, align 4, !dbg !811
  %141 = add nsw i32 %140, 1, !dbg !812
  %142 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %9, align 8, !dbg !813
  %143 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %142, i32 0, i32 3, !dbg !814
  %144 = load i32, i32* %143, align 4, !dbg !815
  %145 = add nsw i32 %144, %141, !dbg !815
  store i32 %145, i32* %143, align 4, !dbg !815
  %146 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %9, align 8, !dbg !816
  %147 = load i32, i32* %6, align 4, !dbg !817
  %148 = sub nsw i32 0, %147, !dbg !818
  %149 = sub nsw i32 %148, 1, !dbg !819
  call void @mainwindow_resize(%struct.MAIN_WINDOW_REC* %146, i32 0, i32 %149), !dbg !820
  br label %150, !dbg !821

; <label>:150:                                    ; preds = %135
  %151 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !822
  %152 = getelementptr inbounds %struct._GSList, %struct._GSList* %151, i32 0, i32 1, !dbg !824
  %153 = load %struct._GSList*, %struct._GSList** %152, align 8, !dbg !824
  store %struct._GSList* %153, %struct._GSList** %7, align 8, !dbg !825
  br label %132, !dbg !826, !llvm.loop !827

; <label>:154:                                    ; preds = %132
  %155 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !829
  call void @g_slist_free(%struct._GSList* %155), !dbg !830
  br label %224, !dbg !831

; <label>:156:                                    ; preds = %59
  %157 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !832
  %158 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %157, i32 0, i32 7, !dbg !835
  %159 = load i32, i32* %158, align 4, !dbg !835
  %160 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !836
  %161 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %160, i32 0, i32 15, !dbg !837
  %162 = load i32, i32* %161, align 4, !dbg !837
  %163 = sub nsw i32 %159, %162, !dbg !838
  %164 = icmp slt i32 %163, 20, !dbg !839
  br i1 %164, label %165, label %167, !dbg !840

; <label>:165:                                    ; preds = %156
  %166 = call %struct.MAIN_WINDOW_REC* @find_window_with_room_right(), !dbg !841
  store %struct.MAIN_WINDOW_REC* %166, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !842
  br label %167, !dbg !843

; <label>:167:                                    ; preds = %165, %156
  %168 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !844
  %169 = icmp eq %struct.MAIN_WINDOW_REC* %168, null, !dbg !846
  br i1 %169, label %170, label %171, !dbg !847

; <label>:170:                                    ; preds = %167
  store %struct.MAIN_WINDOW_REC* null, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !848
  br label %264, !dbg !848

; <label>:171:                                    ; preds = %167
  %172 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !849
  %173 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %172, i32 0, i32 7, !dbg !850
  %174 = load i32, i32* %173, align 4, !dbg !850
  %175 = sdiv i32 %174, 2, !dbg !851
  store i32 %175, i32* %6, align 4, !dbg !852
  %176 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !853
  %177 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %176, i32 0, i32 3, !dbg !854
  %178 = load i32, i32* %177, align 4, !dbg !854
  %179 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !855
  %180 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %179, i32 0, i32 3, !dbg !856
  store i32 %178, i32* %180, align 4, !dbg !857
  %181 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !858
  %182 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %181, i32 0, i32 4, !dbg !859
  %183 = load i32, i32* %182, align 8, !dbg !859
  %184 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !860
  %185 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %184, i32 0, i32 4, !dbg !861
  store i32 %183, i32* %185, align 8, !dbg !862
  %186 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !863
  %187 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %186, i32 0, i32 8, !dbg !864
  %188 = load i32, i32* %187, align 8, !dbg !864
  %189 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !865
  %190 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %189, i32 0, i32 8, !dbg !866
  store i32 %188, i32* %190, align 8, !dbg !867
  %191 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !868
  %192 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %191, i32 0, i32 6, !dbg !869
  %193 = load i32, i32* %192, align 8, !dbg !869
  %194 = load i32, i32* %6, align 4, !dbg !870
  %195 = sub nsw i32 %193, %194, !dbg !871
  %196 = add nsw i32 %195, 1, !dbg !872
  %197 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !873
  %198 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %197, i32 0, i32 5, !dbg !874
  store i32 %196, i32* %198, align 4, !dbg !875
  %199 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !876
  %200 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %199, i32 0, i32 6, !dbg !877
  %201 = load i32, i32* %200, align 8, !dbg !877
  %202 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !878
  %203 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %202, i32 0, i32 6, !dbg !879
  store i32 %201, i32* %203, align 8, !dbg !880
  %204 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !881
  %205 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %204, i32 0, i32 6, !dbg !882
  %206 = load i32, i32* %205, align 8, !dbg !882
  %207 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !883
  %208 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %207, i32 0, i32 5, !dbg !884
  %209 = load i32, i32* %208, align 4, !dbg !884
  %210 = sub nsw i32 %206, %209, !dbg !885
  %211 = add nsw i32 %210, 1, !dbg !886
  %212 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !887
  %213 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %212, i32 0, i32 7, !dbg !888
  store i32 %211, i32* %213, align 4, !dbg !889
  %214 = load i32, i32* %6, align 4, !dbg !890
  %215 = add nsw i32 %214, 1, !dbg !891
  %216 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !892
  %217 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %216, i32 0, i32 6, !dbg !893
  %218 = load i32, i32* %217, align 8, !dbg !894
  %219 = sub nsw i32 %218, %215, !dbg !894
  store i32 %219, i32* %217, align 8, !dbg !894
  %220 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !895
  %221 = load i32, i32* %6, align 4, !dbg !896
  %222 = sub nsw i32 0, %221, !dbg !897
  %223 = sub nsw i32 %222, 1, !dbg !898
  call void @mainwindow_resize(%struct.MAIN_WINDOW_REC* %220, i32 %223, i32 0), !dbg !899
  br label %224

; <label>:224:                                    ; preds = %171, %154
  br label %225

; <label>:225:                                    ; preds = %224, %19
  %226 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !900
  %227 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %226, i32 0, i32 5, !dbg !901
  %228 = load i32, i32* %227, align 4, !dbg !901
  %229 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !902
  %230 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %229, i32 0, i32 13, !dbg !903
  %231 = load i32, i32* %230, align 4, !dbg !903
  %232 = add nsw i32 %228, %231, !dbg !904
  %233 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !905
  %234 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %233, i32 0, i32 3, !dbg !906
  %235 = load i32, i32* %234, align 4, !dbg !906
  %236 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !907
  %237 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %236, i32 0, i32 10, !dbg !908
  %238 = load i32, i32* %237, align 8, !dbg !908
  %239 = add nsw i32 %235, %238, !dbg !909
  %240 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !910
  %241 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %240, i32 0, i32 7, !dbg !911
  %242 = load i32, i32* %241, align 4, !dbg !911
  %243 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !912
  %244 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %243, i32 0, i32 15, !dbg !913
  %245 = load i32, i32* %244, align 4, !dbg !913
  %246 = sub nsw i32 %242, %245, !dbg !914
  %247 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !915
  %248 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %247, i32 0, i32 8, !dbg !916
  %249 = load i32, i32* %248, align 8, !dbg !916
  %250 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !917
  %251 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %250, i32 0, i32 12, !dbg !918
  %252 = load i32, i32* %251, align 8, !dbg !918
  %253 = sub nsw i32 %249, %252, !dbg !919
  %254 = call %struct._TERM_WINDOW* @term_window_create(i32 %232, i32 %239, i32 %246, i32 %253), !dbg !920
  %255 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !921
  %256 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %255, i32 0, i32 1, !dbg !922
  store %struct._TERM_WINDOW* %254, %struct._TERM_WINDOW** %256, align 8, !dbg !923
  call void @term_refresh(%struct._TERM_WINDOW* null), !dbg !924
  %257 = load %struct._GSList*, %struct._GSList** @mainwindows, align 8, !dbg !925
  %258 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !926
  %259 = bitcast %struct.MAIN_WINDOW_REC* %258 to i8*, !dbg !926
  %260 = call %struct._GSList* @g_slist_append(%struct._GSList* %257, i8* %259), !dbg !927
  store %struct._GSList* %260, %struct._GSList** @mainwindows, align 8, !dbg !928
  %261 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !929
  %262 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i32 1, %struct.MAIN_WINDOW_REC* %261), !dbg !930
  %263 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !931
  store %struct.MAIN_WINDOW_REC* %263, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !932
  br label %264, !dbg !932

; <label>:264:                                    ; preds = %225, %170, %82
  %265 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !933
  ret %struct.MAIN_WINDOW_REC* %265, !dbg !933
}

declare noalias i8* @g_malloc0_n(i64, i64) #2

; Function Attrs: nounwind uwtable
define %struct._GSList* @mainwindows_get_line(%struct.MAIN_WINDOW_REC*) #0 !dbg !934 {
  %2 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %3 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %4 = alloca %struct._GSList*, align 8
  store %struct.MAIN_WINDOW_REC* %0, %struct.MAIN_WINDOW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %2, metadata !935, metadata !382), !dbg !936
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %3, metadata !937, metadata !382), !dbg !938
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !939, metadata !382), !dbg !940
  store %struct._GSList* null, %struct._GSList** %4, align 8, !dbg !941
  %5 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !942
  %6 = call %struct.MAIN_WINDOW_REC* @mainwindows_find_left(%struct.MAIN_WINDOW_REC* %5, i32 0), !dbg !944
  store %struct.MAIN_WINDOW_REC* %6, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !945
  br label %7, !dbg !946

; <label>:7:                                      ; preds = %15, %1
  %8 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !947
  %9 = icmp ne %struct.MAIN_WINDOW_REC* %8, null, !dbg !949
  br i1 %9, label %10, label %18, !dbg !950

; <label>:10:                                     ; preds = %7
  %11 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !952
  %12 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !954
  %13 = bitcast %struct.MAIN_WINDOW_REC* %12 to i8*, !dbg !954
  %14 = call %struct._GSList* @g_slist_append(%struct._GSList* %11, i8* %13), !dbg !955
  store %struct._GSList* %14, %struct._GSList** %4, align 8, !dbg !956
  br label %15, !dbg !957

; <label>:15:                                     ; preds = %10
  %16 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !958
  %17 = call %struct.MAIN_WINDOW_REC* @mainwindows_find_left(%struct.MAIN_WINDOW_REC* %16, i32 0), !dbg !959
  store %struct.MAIN_WINDOW_REC* %17, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !960
  br label %7, !dbg !961, !llvm.loop !963

; <label>:18:                                     ; preds = %7
  %19 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !965
  %20 = icmp ne %struct.MAIN_WINDOW_REC* %19, null, !dbg !967
  br i1 %20, label %21, label %26, !dbg !968

; <label>:21:                                     ; preds = %18
  %22 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !969
  %23 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !970
  %24 = bitcast %struct.MAIN_WINDOW_REC* %23 to i8*, !dbg !970
  %25 = call %struct._GSList* @g_slist_append(%struct._GSList* %22, i8* %24), !dbg !971
  store %struct._GSList* %25, %struct._GSList** %4, align 8, !dbg !972
  br label %26, !dbg !973

; <label>:26:                                     ; preds = %21, %18
  %27 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !974
  %28 = call %struct.MAIN_WINDOW_REC* @mainwindows_find_right(%struct.MAIN_WINDOW_REC* %27, i32 0), !dbg !976
  store %struct.MAIN_WINDOW_REC* %28, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !977
  br label %29, !dbg !978

; <label>:29:                                     ; preds = %37, %26
  %30 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !979
  %31 = icmp ne %struct.MAIN_WINDOW_REC* %30, null, !dbg !981
  br i1 %31, label %32, label %40, !dbg !982

; <label>:32:                                     ; preds = %29
  %33 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !984
  %34 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !986
  %35 = bitcast %struct.MAIN_WINDOW_REC* %34 to i8*, !dbg !986
  %36 = call %struct._GSList* @g_slist_append(%struct._GSList* %33, i8* %35), !dbg !987
  store %struct._GSList* %36, %struct._GSList** %4, align 8, !dbg !988
  br label %37, !dbg !989

; <label>:37:                                     ; preds = %32
  %38 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !990
  %39 = call %struct.MAIN_WINDOW_REC* @mainwindows_find_right(%struct.MAIN_WINDOW_REC* %38, i32 0), !dbg !991
  store %struct.MAIN_WINDOW_REC* %39, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !992
  br label %29, !dbg !993, !llvm.loop !995

; <label>:40:                                     ; preds = %29
  %41 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !997
  ret %struct._GSList* %41, !dbg !998
}

; Function Attrs: nounwind uwtable
define internal void @mainwindow_resize(%struct.MAIN_WINDOW_REC*, i32, i32) #0 !dbg !999 {
  %4 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.MAIN_WINDOW_REC* %0, %struct.MAIN_WINDOW_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %4, metadata !1002, metadata !382), !dbg !1003
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1004, metadata !382), !dbg !1005
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1006, metadata !382), !dbg !1007
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1008, metadata !382), !dbg !1009
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1010, metadata !382), !dbg !1011
  %9 = load i32, i32* @quitting, align 4, !dbg !1012
  %10 = icmp ne i32 %9, 0, !dbg !1012
  br i1 %10, label %17, label %11, !dbg !1014

; <label>:11:                                     ; preds = %3
  %12 = load i32, i32* %5, align 4, !dbg !1015
  %13 = icmp eq i32 %12, 0, !dbg !1017
  br i1 %13, label %14, label %18, !dbg !1018

; <label>:14:                                     ; preds = %11
  %15 = load i32, i32* %6, align 4, !dbg !1019
  %16 = icmp eq i32 %15, 0, !dbg !1021
  br i1 %16, label %17, label %18, !dbg !1022

; <label>:17:                                     ; preds = %14, %3
  br label %76, !dbg !1023

; <label>:18:                                     ; preds = %14, %11
  %19 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !1024
  %20 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %19, i32 0, i32 8, !dbg !1025
  %21 = load i32, i32* %20, align 8, !dbg !1025
  %22 = load i32, i32* %6, align 4, !dbg !1026
  %23 = add nsw i32 %21, %22, !dbg !1027
  store i32 %23, i32* %7, align 4, !dbg !1028
  %24 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !1029
  %25 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %24, i32 0, i32 7, !dbg !1030
  %26 = load i32, i32* %25, align 4, !dbg !1030
  %27 = load i32, i32* %5, align 4, !dbg !1031
  %28 = add nsw i32 %26, %27, !dbg !1032
  store i32 %28, i32* %8, align 4, !dbg !1033
  %29 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !1034
  %30 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %29, i32 0, i32 6, !dbg !1035
  %31 = load i32, i32* %30, align 8, !dbg !1035
  %32 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !1036
  %33 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %32, i32 0, i32 5, !dbg !1037
  %34 = load i32, i32* %33, align 4, !dbg !1037
  %35 = sub nsw i32 %31, %34, !dbg !1038
  %36 = add nsw i32 %35, 1, !dbg !1039
  %37 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !1040
  %38 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %37, i32 0, i32 7, !dbg !1041
  store i32 %36, i32* %38, align 4, !dbg !1042
  %39 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !1043
  %40 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %39, i32 0, i32 4, !dbg !1044
  %41 = load i32, i32* %40, align 8, !dbg !1044
  %42 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !1045
  %43 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %42, i32 0, i32 3, !dbg !1046
  %44 = load i32, i32* %43, align 4, !dbg !1046
  %45 = sub nsw i32 %41, %44, !dbg !1047
  %46 = add nsw i32 %45, 1, !dbg !1048
  %47 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !1049
  %48 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %47, i32 0, i32 8, !dbg !1050
  store i32 %46, i32* %48, align 8, !dbg !1051
  %49 = load i32, i32* %7, align 4, !dbg !1052
  %50 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !1054
  %51 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %50, i32 0, i32 8, !dbg !1055
  %52 = load i32, i32* %51, align 8, !dbg !1055
  %53 = icmp ne i32 %49, %52, !dbg !1056
  br i1 %53, label %60, label %54, !dbg !1057

; <label>:54:                                     ; preds = %18
  %55 = load i32, i32* %8, align 4, !dbg !1058
  %56 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !1060
  %57 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %56, i32 0, i32 7, !dbg !1061
  %58 = load i32, i32* %57, align 4, !dbg !1061
  %59 = icmp ne i32 %55, %58, !dbg !1062
  br i1 %59, label %60, label %70, !dbg !1063

; <label>:60:                                     ; preds = %54, %18
  %61 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !1064
  %62 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !1066
  %63 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %62, i32 0, i32 7, !dbg !1067
  %64 = load i32, i32* %63, align 4, !dbg !1067
  %65 = load i32, i32* %8, align 4, !dbg !1068
  %66 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !1069
  %67 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %66, i32 0, i32 8, !dbg !1070
  %68 = load i32, i32* %67, align 8, !dbg !1070
  %69 = load i32, i32* %7, align 4, !dbg !1071
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.34, i32 0, i32 0), %struct.MAIN_WINDOW_REC* %61, i32 %64, i32 %65, i32 %68, i32 %69), !dbg !1072
  br label %70, !dbg !1073

; <label>:70:                                     ; preds = %60, %54
  %71 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !1074
  %72 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %71, i32 0, i32 16, !dbg !1075
  %73 = load i8, i8* %72, align 8, !dbg !1076
  %74 = and i8 %73, -3, !dbg !1076
  %75 = or i8 %74, 2, !dbg !1076
  store i8 %75, i8* %72, align 8, !dbg !1076
  br label %76, !dbg !1077

; <label>:76:                                     ; preds = %70, %17
  ret void, !dbg !1078
}

; Function Attrs: nounwind uwtable
define internal %struct.MAIN_WINDOW_REC* @find_window_with_room_right() #0 !dbg !1080 {
  %1 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %2 = alloca %struct._GSList*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.MAIN_WINDOW_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %1, metadata !1083, metadata !382), !dbg !1084
  call void @llvm.dbg.declare(metadata %struct._GSList** %2, metadata !1085, metadata !382), !dbg !1086
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1087, metadata !382), !dbg !1088
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1089, metadata !382), !dbg !1090
  store i32 0, i32* %4, align 4, !dbg !1091
  store %struct.MAIN_WINDOW_REC* null, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !1092
  %6 = load %struct._GSList*, %struct._GSList** @mainwindows, align 8, !dbg !1093
  store %struct._GSList* %6, %struct._GSList** %2, align 8, !dbg !1095
  br label %7, !dbg !1096

; <label>:7:                                      ; preds = %32, %0
  %8 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !1097
  %9 = icmp ne %struct._GSList* %8, null, !dbg !1100
  br i1 %9, label %10, label %36, !dbg !1101

; <label>:10:                                     ; preds = %7
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %5, metadata !1102, metadata !382), !dbg !1104
  %11 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !1105
  %12 = getelementptr inbounds %struct._GSList, %struct._GSList* %11, i32 0, i32 0, !dbg !1106
  %13 = load i8*, i8** %12, align 8, !dbg !1106
  %14 = bitcast i8* %13 to %struct.MAIN_WINDOW_REC*, !dbg !1105
  store %struct.MAIN_WINDOW_REC* %14, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !1104
  %15 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !1107
  %16 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %15, i32 0, i32 7, !dbg !1108
  %17 = load i32, i32* %16, align 4, !dbg !1108
  %18 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !1109
  %19 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %18, i32 0, i32 15, !dbg !1110
  %20 = load i32, i32* %19, align 4, !dbg !1110
  %21 = sub nsw i32 %17, %20, !dbg !1111
  store i32 %21, i32* %3, align 4, !dbg !1112
  %22 = load i32, i32* %3, align 4, !dbg !1113
  %23 = icmp sge i32 %22, 20, !dbg !1115
  br i1 %23, label %24, label %31, !dbg !1116

; <label>:24:                                     ; preds = %10
  %25 = load i32, i32* %3, align 4, !dbg !1117
  %26 = load i32, i32* %4, align 4, !dbg !1119
  %27 = icmp sgt i32 %25, %26, !dbg !1120
  br i1 %27, label %28, label %31, !dbg !1121

; <label>:28:                                     ; preds = %24
  %29 = load i32, i32* %3, align 4, !dbg !1122
  store i32 %29, i32* %4, align 4, !dbg !1124
  %30 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !1125
  store %struct.MAIN_WINDOW_REC* %30, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !1126
  br label %31, !dbg !1127

; <label>:31:                                     ; preds = %28, %24, %10
  br label %32, !dbg !1128

; <label>:32:                                     ; preds = %31
  %33 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !1129
  %34 = getelementptr inbounds %struct._GSList, %struct._GSList* %33, i32 0, i32 1, !dbg !1131
  %35 = load %struct._GSList*, %struct._GSList** %34, align 8, !dbg !1131
  store %struct._GSList* %35, %struct._GSList** %2, align 8, !dbg !1132
  br label %7, !dbg !1133, !llvm.loop !1134

; <label>:36:                                     ; preds = %7
  %37 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !1136
  ret %struct.MAIN_WINDOW_REC* %37, !dbg !1137
}

declare void @term_refresh(%struct._TERM_WINDOW*) #2

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #2

declare i32 @signal_emit(i8*, i32, ...) #2

; Function Attrs: nounwind uwtable
define internal %struct.MAIN_WINDOW_REC* @mainwindows_find_left(%struct.MAIN_WINDOW_REC*, i32) #0 !dbg !1138 {
  %3 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %9 = alloca %struct._GSList*, align 8
  %10 = alloca %struct.MAIN_WINDOW_REC*, align 8
  store %struct.MAIN_WINDOW_REC* %0, %struct.MAIN_WINDOW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %3, metadata !1141, metadata !382), !dbg !1142
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1143, metadata !382), !dbg !1144
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1145, metadata !382), !dbg !1146
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1147, metadata !382), !dbg !1148
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1149, metadata !382), !dbg !1150
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %8, metadata !1151, metadata !382), !dbg !1152
  call void @llvm.dbg.declare(metadata %struct._GSList** %9, metadata !1153, metadata !382), !dbg !1154
  %11 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !1155
  %12 = icmp ne %struct.MAIN_WINDOW_REC* %11, null, !dbg !1157
  br i1 %12, label %13, label %23, !dbg !1158

; <label>:13:                                     ; preds = %2
  %14 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !1159
  %15 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %14, i32 0, i32 3, !dbg !1161
  %16 = load i32, i32* %15, align 4, !dbg !1161
  store i32 %16, i32* %5, align 4, !dbg !1162
  %17 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !1163
  %18 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %17, i32 0, i32 4, !dbg !1164
  %19 = load i32, i32* %18, align 8, !dbg !1164
  store i32 %19, i32* %6, align 4, !dbg !1165
  %20 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !1166
  %21 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %20, i32 0, i32 5, !dbg !1167
  %22 = load i32, i32* %21, align 4, !dbg !1167
  store i32 %22, i32* %7, align 4, !dbg !1168
  br label %26, !dbg !1169

; <label>:23:                                     ; preds = %2
  %24 = load i32, i32* @screen_height, align 4, !dbg !1170
  store i32 %24, i32* %6, align 4, !dbg !1172
  store i32 %24, i32* %5, align 4, !dbg !1173
  %25 = load i32, i32* @screen_width, align 4, !dbg !1174
  store i32 %25, i32* %7, align 4, !dbg !1175
  br label %26

; <label>:26:                                     ; preds = %23, %13
  %27 = load i32, i32* %4, align 4, !dbg !1176
  %28 = icmp ne i32 %27, 0, !dbg !1176
  br i1 %28, label %29, label %31, !dbg !1178

; <label>:29:                                     ; preds = %26
  %30 = load i32, i32* @screen_width, align 4, !dbg !1179
  store i32 %30, i32* %7, align 4, !dbg !1180
  br label %31, !dbg !1181

; <label>:31:                                     ; preds = %29, %26
  store %struct.MAIN_WINDOW_REC* null, %struct.MAIN_WINDOW_REC** %8, align 8, !dbg !1182
  %32 = load %struct._GSList*, %struct._GSList** @mainwindows, align 8, !dbg !1183
  store %struct._GSList* %32, %struct._GSList** %9, align 8, !dbg !1185
  br label %33, !dbg !1186

; <label>:33:                                     ; preds = %72, %31
  %34 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1187
  %35 = icmp ne %struct._GSList* %34, null, !dbg !1190
  br i1 %35, label %36, label %76, !dbg !1191

; <label>:36:                                     ; preds = %33
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %10, metadata !1192, metadata !382), !dbg !1194
  %37 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1195
  %38 = getelementptr inbounds %struct._GSList, %struct._GSList* %37, i32 0, i32 0, !dbg !1196
  %39 = load i8*, i8** %38, align 8, !dbg !1196
  %40 = bitcast i8* %39 to %struct.MAIN_WINDOW_REC*, !dbg !1195
  store %struct.MAIN_WINDOW_REC* %40, %struct.MAIN_WINDOW_REC** %10, align 8, !dbg !1194
  %41 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %10, align 8, !dbg !1197
  %42 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %41, i32 0, i32 3, !dbg !1199
  %43 = load i32, i32* %42, align 4, !dbg !1199
  %44 = load i32, i32* %5, align 4, !dbg !1200
  %45 = icmp sge i32 %43, %44, !dbg !1201
  br i1 %45, label %46, label %71, !dbg !1202

; <label>:46:                                     ; preds = %36
  %47 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %10, align 8, !dbg !1203
  %48 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %47, i32 0, i32 4, !dbg !1204
  %49 = load i32, i32* %48, align 8, !dbg !1204
  %50 = load i32, i32* %6, align 4, !dbg !1205
  %51 = icmp sle i32 %49, %50, !dbg !1206
  br i1 %51, label %52, label %71, !dbg !1207

; <label>:52:                                     ; preds = %46
  %53 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %10, align 8, !dbg !1208
  %54 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %53, i32 0, i32 6, !dbg !1209
  %55 = load i32, i32* %54, align 8, !dbg !1209
  %56 = load i32, i32* %7, align 4, !dbg !1210
  %57 = icmp slt i32 %55, %56, !dbg !1211
  br i1 %57, label %58, label %71, !dbg !1212

; <label>:58:                                     ; preds = %52
  %59 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %8, align 8, !dbg !1213
  %60 = icmp eq %struct.MAIN_WINDOW_REC* %59, null, !dbg !1214
  br i1 %60, label %69, label %61, !dbg !1215

; <label>:61:                                     ; preds = %58
  %62 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %10, align 8, !dbg !1216
  %63 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %62, i32 0, i32 6, !dbg !1218
  %64 = load i32, i32* %63, align 8, !dbg !1218
  %65 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %8, align 8, !dbg !1219
  %66 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %65, i32 0, i32 6, !dbg !1220
  %67 = load i32, i32* %66, align 8, !dbg !1220
  %68 = icmp sgt i32 %64, %67, !dbg !1221
  br i1 %68, label %69, label %71, !dbg !1222

; <label>:69:                                     ; preds = %61, %58
  %70 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %10, align 8, !dbg !1224
  store %struct.MAIN_WINDOW_REC* %70, %struct.MAIN_WINDOW_REC** %8, align 8, !dbg !1225
  br label %71, !dbg !1226

; <label>:71:                                     ; preds = %69, %61, %52, %46, %36
  br label %72, !dbg !1227

; <label>:72:                                     ; preds = %71
  %73 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1228
  %74 = getelementptr inbounds %struct._GSList, %struct._GSList* %73, i32 0, i32 1, !dbg !1230
  %75 = load %struct._GSList*, %struct._GSList** %74, align 8, !dbg !1230
  store %struct._GSList* %75, %struct._GSList** %9, align 8, !dbg !1231
  br label %33, !dbg !1232, !llvm.loop !1233

; <label>:76:                                     ; preds = %33
  %77 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %8, align 8, !dbg !1235
  ret %struct.MAIN_WINDOW_REC* %77, !dbg !1236
}

; Function Attrs: nounwind uwtable
define internal %struct.MAIN_WINDOW_REC* @mainwindows_find_right(%struct.MAIN_WINDOW_REC*, i32) #0 !dbg !1237 {
  %3 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %9 = alloca %struct._GSList*, align 8
  %10 = alloca %struct.MAIN_WINDOW_REC*, align 8
  store %struct.MAIN_WINDOW_REC* %0, %struct.MAIN_WINDOW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %3, metadata !1238, metadata !382), !dbg !1239
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1240, metadata !382), !dbg !1241
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1242, metadata !382), !dbg !1243
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1244, metadata !382), !dbg !1245
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1246, metadata !382), !dbg !1247
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %8, metadata !1248, metadata !382), !dbg !1249
  call void @llvm.dbg.declare(metadata %struct._GSList** %9, metadata !1250, metadata !382), !dbg !1251
  %11 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !1252
  %12 = icmp ne %struct.MAIN_WINDOW_REC* %11, null, !dbg !1254
  br i1 %12, label %13, label %23, !dbg !1255

; <label>:13:                                     ; preds = %2
  %14 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !1256
  %15 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %14, i32 0, i32 3, !dbg !1258
  %16 = load i32, i32* %15, align 4, !dbg !1258
  store i32 %16, i32* %5, align 4, !dbg !1259
  %17 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !1260
  %18 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %17, i32 0, i32 4, !dbg !1261
  %19 = load i32, i32* %18, align 8, !dbg !1261
  store i32 %19, i32* %6, align 4, !dbg !1262
  %20 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !1263
  %21 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %20, i32 0, i32 6, !dbg !1264
  %22 = load i32, i32* %21, align 8, !dbg !1264
  store i32 %22, i32* %7, align 4, !dbg !1265
  br label %24, !dbg !1266

; <label>:23:                                     ; preds = %2
  store i32 -1, i32* %7, align 4, !dbg !1267
  store i32 -1, i32* %6, align 4, !dbg !1269
  store i32 -1, i32* %5, align 4, !dbg !1270
  br label %24

; <label>:24:                                     ; preds = %23, %13
  %25 = load i32, i32* %4, align 4, !dbg !1271
  %26 = icmp ne i32 %25, 0, !dbg !1271
  br i1 %26, label %27, label %28, !dbg !1273

; <label>:27:                                     ; preds = %24
  store i32 -1, i32* %7, align 4, !dbg !1274
  br label %28, !dbg !1275

; <label>:28:                                     ; preds = %27, %24
  store %struct.MAIN_WINDOW_REC* null, %struct.MAIN_WINDOW_REC** %8, align 8, !dbg !1276
  %29 = load %struct._GSList*, %struct._GSList** @mainwindows, align 8, !dbg !1277
  store %struct._GSList* %29, %struct._GSList** %9, align 8, !dbg !1279
  br label %30, !dbg !1280

; <label>:30:                                     ; preds = %69, %28
  %31 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1281
  %32 = icmp ne %struct._GSList* %31, null, !dbg !1284
  br i1 %32, label %33, label %73, !dbg !1285

; <label>:33:                                     ; preds = %30
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %10, metadata !1286, metadata !382), !dbg !1288
  %34 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1289
  %35 = getelementptr inbounds %struct._GSList, %struct._GSList* %34, i32 0, i32 0, !dbg !1290
  %36 = load i8*, i8** %35, align 8, !dbg !1290
  %37 = bitcast i8* %36 to %struct.MAIN_WINDOW_REC*, !dbg !1289
  store %struct.MAIN_WINDOW_REC* %37, %struct.MAIN_WINDOW_REC** %10, align 8, !dbg !1288
  %38 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %10, align 8, !dbg !1291
  %39 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %38, i32 0, i32 3, !dbg !1293
  %40 = load i32, i32* %39, align 4, !dbg !1293
  %41 = load i32, i32* %5, align 4, !dbg !1294
  %42 = icmp sge i32 %40, %41, !dbg !1295
  br i1 %42, label %43, label %68, !dbg !1296

; <label>:43:                                     ; preds = %33
  %44 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %10, align 8, !dbg !1297
  %45 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %44, i32 0, i32 4, !dbg !1298
  %46 = load i32, i32* %45, align 8, !dbg !1298
  %47 = load i32, i32* %6, align 4, !dbg !1299
  %48 = icmp sle i32 %46, %47, !dbg !1300
  br i1 %48, label %49, label %68, !dbg !1301

; <label>:49:                                     ; preds = %43
  %50 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %10, align 8, !dbg !1302
  %51 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %50, i32 0, i32 5, !dbg !1303
  %52 = load i32, i32* %51, align 4, !dbg !1303
  %53 = load i32, i32* %7, align 4, !dbg !1304
  %54 = icmp sgt i32 %52, %53, !dbg !1305
  br i1 %54, label %55, label %68, !dbg !1306

; <label>:55:                                     ; preds = %49
  %56 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %8, align 8, !dbg !1307
  %57 = icmp eq %struct.MAIN_WINDOW_REC* %56, null, !dbg !1308
  br i1 %57, label %66, label %58, !dbg !1309

; <label>:58:                                     ; preds = %55
  %59 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %10, align 8, !dbg !1310
  %60 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %59, i32 0, i32 5, !dbg !1312
  %61 = load i32, i32* %60, align 4, !dbg !1312
  %62 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %8, align 8, !dbg !1313
  %63 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %62, i32 0, i32 5, !dbg !1314
  %64 = load i32, i32* %63, align 4, !dbg !1314
  %65 = icmp slt i32 %61, %64, !dbg !1315
  br i1 %65, label %66, label %68, !dbg !1316

; <label>:66:                                     ; preds = %58, %55
  %67 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %10, align 8, !dbg !1318
  store %struct.MAIN_WINDOW_REC* %67, %struct.MAIN_WINDOW_REC** %8, align 8, !dbg !1319
  br label %68, !dbg !1320

; <label>:68:                                     ; preds = %66, %58, %49, %43, %33
  br label %69, !dbg !1321

; <label>:69:                                     ; preds = %68
  %70 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1322
  %71 = getelementptr inbounds %struct._GSList, %struct._GSList* %70, i32 0, i32 1, !dbg !1324
  %72 = load %struct._GSList*, %struct._GSList** %71, align 8, !dbg !1324
  store %struct._GSList* %72, %struct._GSList** %9, align 8, !dbg !1325
  br label %30, !dbg !1326, !llvm.loop !1327

; <label>:73:                                     ; preds = %30
  %74 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %8, align 8, !dbg !1329
  ret %struct.MAIN_WINDOW_REC* %74, !dbg !1330
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #2

declare void @term_window_destroy(%struct._TERM_WINDOW*) #2

; Function Attrs: nounwind uwtable
define internal void @gui_windows_remove_parent(%struct.MAIN_WINDOW_REC*) #0 !dbg !1331 {
  %2 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %3 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct._WINDOW_REC*, align 8
  store %struct.MAIN_WINDOW_REC* %0, %struct.MAIN_WINDOW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %2, metadata !1332, metadata !382), !dbg !1333
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %3, metadata !1334, metadata !382), !dbg !1335
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !1336, metadata !382), !dbg !1337
  %6 = load %struct._GSList*, %struct._GSList** @mainwindows, align 8, !dbg !1338
  %7 = getelementptr inbounds %struct._GSList, %struct._GSList* %6, i32 0, i32 0, !dbg !1339
  %8 = load i8*, i8** %7, align 8, !dbg !1339
  %9 = bitcast i8* %8 to %struct.MAIN_WINDOW_REC*, !dbg !1338
  store %struct.MAIN_WINDOW_REC* %9, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !1340
  %10 = load %struct._GSList*, %struct._GSList** @windows, align 8, !dbg !1341
  store %struct._GSList* %10, %struct._GSList** %4, align 8, !dbg !1343
  br label %11, !dbg !1344

; <label>:11:                                     ; preds = %36, %1
  %12 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1345
  %13 = icmp ne %struct._GSList* %12, null, !dbg !1348
  br i1 %13, label %14, label %40, !dbg !1349

; <label>:14:                                     ; preds = %11
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %5, metadata !1350, metadata !382), !dbg !1352
  %15 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1353
  %16 = getelementptr inbounds %struct._GSList, %struct._GSList* %15, i32 0, i32 0, !dbg !1354
  %17 = load i8*, i8** %16, align 8, !dbg !1354
  %18 = bitcast i8* %17 to %struct._WINDOW_REC*, !dbg !1353
  store %struct._WINDOW_REC* %18, %struct._WINDOW_REC** %5, align 8, !dbg !1352
  %19 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !1355
  %20 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %19, i32 0, i32 20, !dbg !1357
  %21 = load i8*, i8** %20, align 8, !dbg !1357
  %22 = icmp ne i8* %21, null, !dbg !1358
  br i1 %22, label %23, label %35, !dbg !1359

; <label>:23:                                     ; preds = %14
  %24 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !1360
  %25 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %24, i32 0, i32 20, !dbg !1362
  %26 = load i8*, i8** %25, align 8, !dbg !1362
  %27 = bitcast i8* %26 to %struct.GUI_WINDOW_REC*, !dbg !1363
  %28 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %27, i32 0, i32 0, !dbg !1364
  %29 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %28, align 8, !dbg !1364
  %30 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !1365
  %31 = icmp eq %struct.MAIN_WINDOW_REC* %29, %30, !dbg !1366
  br i1 %31, label %32, label %35, !dbg !1367

; <label>:32:                                     ; preds = %23
  %33 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !1368
  %34 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !1369
  call void @gui_window_reparent(%struct._WINDOW_REC* %33, %struct.MAIN_WINDOW_REC* %34), !dbg !1370
  br label %35, !dbg !1370

; <label>:35:                                     ; preds = %32, %23, %14
  br label %36, !dbg !1371

; <label>:36:                                     ; preds = %35
  %37 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1372
  %38 = getelementptr inbounds %struct._GSList, %struct._GSList* %37, i32 0, i32 1, !dbg !1374
  %39 = load %struct._GSList*, %struct._GSList** %38, align 8, !dbg !1374
  store %struct._GSList* %39, %struct._GSList** %4, align 8, !dbg !1375
  br label %11, !dbg !1376, !llvm.loop !1377

; <label>:40:                                     ; preds = %11
  ret void, !dbg !1379
}

; Function Attrs: nounwind uwtable
define internal void @mainwindows_add_space(%struct.MAIN_WINDOW_REC*) #0 !dbg !1380 {
  %2 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %3 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca %struct._GSList*, align 8
  %8 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %9 = alloca %struct._GSList*, align 8
  %10 = alloca %struct._GSList*, align 8
  %11 = alloca %struct.MAIN_WINDOW_REC*, align 8
  store %struct.MAIN_WINDOW_REC* %0, %struct.MAIN_WINDOW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %2, metadata !1381, metadata !382), !dbg !1382
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %3, metadata !1383, metadata !382), !dbg !1384
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1385, metadata !382), !dbg !1386
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1387, metadata !382), !dbg !1388
  %12 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !1389
  %13 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %12, i32 0, i32 4, !dbg !1391
  %14 = load i32, i32* %13, align 8, !dbg !1391
  %15 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !1392
  %16 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %15, i32 0, i32 3, !dbg !1393
  %17 = load i32, i32* %16, align 4, !dbg !1393
  %18 = icmp slt i32 %14, %17, !dbg !1394
  br i1 %18, label %19, label %20, !dbg !1395

; <label>:19:                                     ; preds = %1
  br label %133, !dbg !1396

; <label>:20:                                     ; preds = %1
  %21 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !1397
  %22 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %21, i32 0, i32 6, !dbg !1399
  %23 = load i32, i32* %22, align 8, !dbg !1399
  %24 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !1400
  %25 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %24, i32 0, i32 5, !dbg !1401
  %26 = load i32, i32* %25, align 4, !dbg !1401
  %27 = icmp slt i32 %23, %26, !dbg !1402
  br i1 %27, label %28, label %29, !dbg !1403

; <label>:28:                                     ; preds = %20
  br label %133, !dbg !1404

; <label>:29:                                     ; preds = %20
  %30 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !1405
  %31 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %30, i32 0, i32 6, !dbg !1406
  %32 = load i32, i32* %31, align 8, !dbg !1406
  %33 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !1407
  %34 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %33, i32 0, i32 5, !dbg !1408
  %35 = load i32, i32* %34, align 4, !dbg !1408
  %36 = sub nsw i32 %32, %35, !dbg !1409
  %37 = add nsw i32 %36, 1, !dbg !1410
  store i32 %37, i32* %5, align 4, !dbg !1411
  %38 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !1412
  %39 = call %struct.MAIN_WINDOW_REC* @mainwindows_find_left(%struct.MAIN_WINDOW_REC* %38, i32 0), !dbg !1413
  store %struct.MAIN_WINDOW_REC* %39, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !1414
  %40 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !1415
  %41 = icmp ne %struct.MAIN_WINDOW_REC* %40, null, !dbg !1417
  br i1 %41, label %42, label %51, !dbg !1418

; <label>:42:                                     ; preds = %29
  %43 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !1419
  %44 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %43, i32 0, i32 6, !dbg !1421
  %45 = load i32, i32* %44, align 8, !dbg !1421
  %46 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !1422
  %47 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %46, i32 0, i32 6, !dbg !1423
  store i32 %45, i32* %47, align 8, !dbg !1424
  %48 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !1425
  %49 = load i32, i32* %5, align 4, !dbg !1426
  %50 = add nsw i32 %49, 1, !dbg !1427
  call void @mainwindow_resize(%struct.MAIN_WINDOW_REC* %48, i32 %50, i32 0), !dbg !1428
  br label %133, !dbg !1429

; <label>:51:                                     ; preds = %29
  %52 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !1430
  %53 = call %struct.MAIN_WINDOW_REC* @mainwindows_find_right(%struct.MAIN_WINDOW_REC* %52, i32 0), !dbg !1431
  store %struct.MAIN_WINDOW_REC* %53, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !1432
  %54 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !1433
  %55 = icmp ne %struct.MAIN_WINDOW_REC* %54, null, !dbg !1435
  br i1 %55, label %56, label %65, !dbg !1436

; <label>:56:                                     ; preds = %51
  %57 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !1437
  %58 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %57, i32 0, i32 5, !dbg !1439
  %59 = load i32, i32* %58, align 4, !dbg !1439
  %60 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !1440
  %61 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %60, i32 0, i32 5, !dbg !1441
  store i32 %59, i32* %61, align 4, !dbg !1442
  %62 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !1443
  %63 = load i32, i32* %5, align 4, !dbg !1444
  %64 = add nsw i32 %63, 1, !dbg !1445
  call void @mainwindow_resize(%struct.MAIN_WINDOW_REC* %62, i32 %64, i32 0), !dbg !1446
  br label %133, !dbg !1447

; <label>:65:                                     ; preds = %51
  %66 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !1448
  %67 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %66, i32 0, i32 4, !dbg !1449
  %68 = load i32, i32* %67, align 8, !dbg !1449
  %69 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !1450
  %70 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %69, i32 0, i32 3, !dbg !1451
  %71 = load i32, i32* %70, align 4, !dbg !1451
  %72 = sub nsw i32 %68, %71, !dbg !1452
  %73 = add nsw i32 %72, 1, !dbg !1453
  store i32 %73, i32* %4, align 4, !dbg !1454
  %74 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !1455
  %75 = call %struct.MAIN_WINDOW_REC* @mainwindows_find_lower(%struct.MAIN_WINDOW_REC* %74), !dbg !1456
  store %struct.MAIN_WINDOW_REC* %75, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !1457
  %76 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !1458
  %77 = icmp ne %struct.MAIN_WINDOW_REC* %76, null, !dbg !1460
  br i1 %77, label %78, label %103, !dbg !1461

; <label>:78:                                     ; preds = %65
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !1462, metadata !382), !dbg !1464
  call void @llvm.dbg.declare(metadata %struct._GSList** %7, metadata !1465, metadata !382), !dbg !1466
  %79 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !1467
  %80 = call %struct._GSList* @mainwindows_get_line(%struct.MAIN_WINDOW_REC* %79), !dbg !1468
  store %struct._GSList* %80, %struct._GSList** %7, align 8, !dbg !1469
  %81 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1470
  store %struct._GSList* %81, %struct._GSList** %6, align 8, !dbg !1472
  br label %82, !dbg !1473

; <label>:82:                                     ; preds = %97, %78
  %83 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1474
  %84 = icmp ne %struct._GSList* %83, null, !dbg !1477
  br i1 %84, label %85, label %101, !dbg !1478

; <label>:85:                                     ; preds = %82
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %8, metadata !1479, metadata !382), !dbg !1481
  %86 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1482
  %87 = getelementptr inbounds %struct._GSList, %struct._GSList* %86, i32 0, i32 0, !dbg !1483
  %88 = load i8*, i8** %87, align 8, !dbg !1483
  %89 = bitcast i8* %88 to %struct.MAIN_WINDOW_REC*, !dbg !1482
  store %struct.MAIN_WINDOW_REC* %89, %struct.MAIN_WINDOW_REC** %8, align 8, !dbg !1481
  %90 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !1484
  %91 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %90, i32 0, i32 3, !dbg !1485
  %92 = load i32, i32* %91, align 4, !dbg !1485
  %93 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %8, align 8, !dbg !1486
  %94 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %93, i32 0, i32 3, !dbg !1487
  store i32 %92, i32* %94, align 4, !dbg !1488
  %95 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %8, align 8, !dbg !1489
  %96 = load i32, i32* %4, align 4, !dbg !1490
  call void @mainwindow_resize(%struct.MAIN_WINDOW_REC* %95, i32 0, i32 %96), !dbg !1491
  br label %97, !dbg !1492

; <label>:97:                                     ; preds = %85
  %98 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1493
  %99 = getelementptr inbounds %struct._GSList, %struct._GSList* %98, i32 0, i32 1, !dbg !1495
  %100 = load %struct._GSList*, %struct._GSList** %99, align 8, !dbg !1495
  store %struct._GSList* %100, %struct._GSList** %6, align 8, !dbg !1496
  br label %82, !dbg !1497, !llvm.loop !1498

; <label>:101:                                    ; preds = %82
  %102 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1500
  call void @g_slist_free(%struct._GSList* %102), !dbg !1501
  br label %133, !dbg !1502

; <label>:103:                                    ; preds = %65
  %104 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !1503
  %105 = call %struct.MAIN_WINDOW_REC* @mainwindows_find_upper(%struct.MAIN_WINDOW_REC* %104), !dbg !1504
  store %struct.MAIN_WINDOW_REC* %105, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !1505
  %106 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !1506
  %107 = icmp ne %struct.MAIN_WINDOW_REC* %106, null, !dbg !1508
  br i1 %107, label %108, label %133, !dbg !1509

; <label>:108:                                    ; preds = %103
  call void @llvm.dbg.declare(metadata %struct._GSList** %9, metadata !1510, metadata !382), !dbg !1512
  call void @llvm.dbg.declare(metadata %struct._GSList** %10, metadata !1513, metadata !382), !dbg !1514
  %109 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !1515
  %110 = call %struct._GSList* @mainwindows_get_line(%struct.MAIN_WINDOW_REC* %109), !dbg !1516
  store %struct._GSList* %110, %struct._GSList** %10, align 8, !dbg !1517
  %111 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !1518
  store %struct._GSList* %111, %struct._GSList** %9, align 8, !dbg !1520
  br label %112, !dbg !1521

; <label>:112:                                    ; preds = %127, %108
  %113 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1522
  %114 = icmp ne %struct._GSList* %113, null, !dbg !1525
  br i1 %114, label %115, label %131, !dbg !1526

; <label>:115:                                    ; preds = %112
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %11, metadata !1527, metadata !382), !dbg !1529
  %116 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1530
  %117 = getelementptr inbounds %struct._GSList, %struct._GSList* %116, i32 0, i32 0, !dbg !1531
  %118 = load i8*, i8** %117, align 8, !dbg !1531
  %119 = bitcast i8* %118 to %struct.MAIN_WINDOW_REC*, !dbg !1530
  store %struct.MAIN_WINDOW_REC* %119, %struct.MAIN_WINDOW_REC** %11, align 8, !dbg !1529
  %120 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !1532
  %121 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %120, i32 0, i32 4, !dbg !1533
  %122 = load i32, i32* %121, align 8, !dbg !1533
  %123 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %11, align 8, !dbg !1534
  %124 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %123, i32 0, i32 4, !dbg !1535
  store i32 %122, i32* %124, align 8, !dbg !1536
  %125 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %11, align 8, !dbg !1537
  %126 = load i32, i32* %4, align 4, !dbg !1538
  call void @mainwindow_resize(%struct.MAIN_WINDOW_REC* %125, i32 0, i32 %126), !dbg !1539
  br label %127, !dbg !1540

; <label>:127:                                    ; preds = %115
  %128 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1541
  %129 = getelementptr inbounds %struct._GSList, %struct._GSList* %128, i32 0, i32 1, !dbg !1543
  %130 = load %struct._GSList*, %struct._GSList** %129, align 8, !dbg !1543
  store %struct._GSList* %130, %struct._GSList** %9, align 8, !dbg !1544
  br label %112, !dbg !1545, !llvm.loop !1546

; <label>:131:                                    ; preds = %112
  %132 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !1548
  call void @g_slist_free(%struct._GSList* %132), !dbg !1549
  br label %133, !dbg !1550

; <label>:133:                                    ; preds = %19, %28, %42, %56, %101, %131, %103
  ret void, !dbg !1551
}

; Function Attrs: nounwind uwtable
define void @mainwindows_redraw() #0 !dbg !1552 {
  %1 = alloca %struct._GSList*, align 8
  %2 = alloca %struct.MAIN_WINDOW_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %1, metadata !1553, metadata !382), !dbg !1554
  call void @irssi_set_dirty(), !dbg !1555
  %3 = load %struct._GSList*, %struct._GSList** @mainwindows, align 8, !dbg !1556
  store %struct._GSList* %3, %struct._GSList** %1, align 8, !dbg !1558
  br label %4, !dbg !1559

; <label>:4:                                      ; preds = %17, %0
  %5 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1560
  %6 = icmp ne %struct._GSList* %5, null, !dbg !1563
  br i1 %6, label %7, label %21, !dbg !1564

; <label>:7:                                      ; preds = %4
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %2, metadata !1565, metadata !382), !dbg !1567
  %8 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1568
  %9 = getelementptr inbounds %struct._GSList, %struct._GSList* %8, i32 0, i32 0, !dbg !1569
  %10 = load i8*, i8** %9, align 8, !dbg !1569
  %11 = bitcast i8* %10 to %struct.MAIN_WINDOW_REC*, !dbg !1568
  store %struct.MAIN_WINDOW_REC* %11, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !1567
  %12 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !1570
  %13 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %12, i32 0, i32 16, !dbg !1571
  %14 = load i8, i8* %13, align 8, !dbg !1572
  %15 = and i8 %14, -2, !dbg !1572
  %16 = or i8 %15, 1, !dbg !1572
  store i8 %16, i8* %13, align 8, !dbg !1572
  br label %17, !dbg !1573

; <label>:17:                                     ; preds = %7
  %18 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1574
  %19 = getelementptr inbounds %struct._GSList, %struct._GSList* %18, i32 0, i32 1, !dbg !1576
  %20 = load %struct._GSList*, %struct._GSList** %19, align 8, !dbg !1576
  store %struct._GSList* %20, %struct._GSList** %1, align 8, !dbg !1577
  br label %4, !dbg !1578, !llvm.loop !1579

; <label>:21:                                     ; preds = %4
  ret void, !dbg !1581
}

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define void @mainwindow_destroy_half(%struct.MAIN_WINDOW_REC*) #0 !dbg !1582 {
  %2 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %3 = alloca i32, align 4
  store %struct.MAIN_WINDOW_REC* %0, %struct.MAIN_WINDOW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %2, metadata !1583, metadata !382), !dbg !1584
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1585, metadata !382), !dbg !1586
  %4 = load i32, i32* @quitting, align 4, !dbg !1587
  store i32 %4, i32* %3, align 4, !dbg !1586
  store i32 1, i32* @quitting, align 4, !dbg !1588
  %5 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !1589
  call void @mainwindow_destroy(%struct.MAIN_WINDOW_REC* %5), !dbg !1590
  %6 = load i32, i32* %3, align 4, !dbg !1591
  store i32 %6, i32* @quitting, align 4, !dbg !1592
  ret void, !dbg !1593
}

declare void @irssi_set_dirty() #2

; Function Attrs: nounwind uwtable
define %struct._GSList* @mainwindows_get_sorted(i32) #0 !dbg !1594 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct._GSList*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1597, metadata !382), !dbg !1598
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !1599, metadata !382), !dbg !1600
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !1601, metadata !382), !dbg !1602
  store %struct._GSList* null, %struct._GSList** %4, align 8, !dbg !1603
  %5 = load %struct._GSList*, %struct._GSList** @mainwindows, align 8, !dbg !1604
  store %struct._GSList* %5, %struct._GSList** %3, align 8, !dbg !1606
  br label %6, !dbg !1607

; <label>:6:                                      ; preds = %19, %1
  %7 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1608
  %8 = icmp ne %struct._GSList* %7, null, !dbg !1611
  br i1 %8, label %9, label %23, !dbg !1612

; <label>:9:                                      ; preds = %6
  %10 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1613
  %11 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1615
  %12 = getelementptr inbounds %struct._GSList, %struct._GSList* %11, i32 0, i32 0, !dbg !1616
  %13 = load i8*, i8** %12, align 8, !dbg !1616
  %14 = load i32, i32* %2, align 4, !dbg !1617
  %15 = icmp ne i32 %14, 0, !dbg !1617
  %16 = select i1 %15, i32 (%struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC*)* @mainwindows_compare_reverse, i32 (%struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC*)* @mainwindows_compare, !dbg !1617
  %17 = bitcast i32 (%struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC*)* %16 to i32 (i8*, i8*)*, !dbg !1618
  %18 = call %struct._GSList* @g_slist_insert_sorted(%struct._GSList* %10, i8* %13, i32 (i8*, i8*)* %17), !dbg !1619
  store %struct._GSList* %18, %struct._GSList** %4, align 8, !dbg !1620
  br label %19, !dbg !1621

; <label>:19:                                     ; preds = %9
  %20 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1622
  %21 = getelementptr inbounds %struct._GSList, %struct._GSList* %20, i32 0, i32 1, !dbg !1624
  %22 = load %struct._GSList*, %struct._GSList** %21, align 8, !dbg !1624
  store %struct._GSList* %22, %struct._GSList** %3, align 8, !dbg !1625
  br label %6, !dbg !1626, !llvm.loop !1627

; <label>:23:                                     ; preds = %6
  %24 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1629
  ret %struct._GSList* %24, !dbg !1630
}

declare %struct._GSList* @g_slist_insert_sorted(%struct._GSList*, i8*, i32 (i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @mainwindows_compare_reverse(%struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC*) #0 !dbg !1631 {
  %3 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %4 = alloca %struct.MAIN_WINDOW_REC*, align 8
  store %struct.MAIN_WINDOW_REC* %0, %struct.MAIN_WINDOW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %3, metadata !1634, metadata !382), !dbg !1635
  store %struct.MAIN_WINDOW_REC* %1, %struct.MAIN_WINDOW_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %4, metadata !1636, metadata !382), !dbg !1637
  %5 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !1638
  %6 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %5, i32 0, i32 3, !dbg !1639
  %7 = load i32, i32* %6, align 4, !dbg !1639
  %8 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !1640
  %9 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %8, i32 0, i32 3, !dbg !1641
  %10 = load i32, i32* %9, align 4, !dbg !1641
  %11 = icmp slt i32 %7, %10, !dbg !1642
  br i1 %11, label %12, label %13, !dbg !1638

; <label>:12:                                     ; preds = %2
  br label %44, !dbg !1643

; <label>:13:                                     ; preds = %2
  %14 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !1645
  %15 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %14, i32 0, i32 3, !dbg !1646
  %16 = load i32, i32* %15, align 4, !dbg !1646
  %17 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !1647
  %18 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %17, i32 0, i32 3, !dbg !1648
  %19 = load i32, i32* %18, align 4, !dbg !1648
  %20 = icmp sgt i32 %16, %19, !dbg !1649
  br i1 %20, label %21, label %22, !dbg !1645

; <label>:21:                                     ; preds = %13
  br label %42, !dbg !1650

; <label>:22:                                     ; preds = %13
  %23 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !1651
  %24 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %23, i32 0, i32 5, !dbg !1652
  %25 = load i32, i32* %24, align 4, !dbg !1652
  %26 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !1653
  %27 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %26, i32 0, i32 5, !dbg !1654
  %28 = load i32, i32* %27, align 4, !dbg !1654
  %29 = icmp slt i32 %25, %28, !dbg !1655
  br i1 %29, label %30, label %31, !dbg !1651

; <label>:30:                                     ; preds = %22
  br label %40, !dbg !1656

; <label>:31:                                     ; preds = %22
  %32 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !1657
  %33 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %32, i32 0, i32 5, !dbg !1658
  %34 = load i32, i32* %33, align 4, !dbg !1658
  %35 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !1659
  %36 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %35, i32 0, i32 5, !dbg !1660
  %37 = load i32, i32* %36, align 4, !dbg !1660
  %38 = icmp sgt i32 %34, %37, !dbg !1661
  %39 = select i1 %38, i32 -1, i32 0, !dbg !1657
  br label %40, !dbg !1662

; <label>:40:                                     ; preds = %31, %30
  %41 = phi i32 [ 1, %30 ], [ %39, %31 ], !dbg !1664
  br label %42, !dbg !1666

; <label>:42:                                     ; preds = %40, %21
  %43 = phi i32 [ -1, %21 ], [ %41, %40 ], !dbg !1667
  br label %44, !dbg !1668

; <label>:44:                                     ; preds = %42, %12
  %45 = phi i32 [ 1, %12 ], [ %43, %42 ], !dbg !1669
  ret i32 %45, !dbg !1670
}

; Function Attrs: nounwind uwtable
define internal i32 @mainwindows_compare(%struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC*) #0 !dbg !1671 {
  %3 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %4 = alloca %struct.MAIN_WINDOW_REC*, align 8
  store %struct.MAIN_WINDOW_REC* %0, %struct.MAIN_WINDOW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %3, metadata !1672, metadata !382), !dbg !1673
  store %struct.MAIN_WINDOW_REC* %1, %struct.MAIN_WINDOW_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %4, metadata !1674, metadata !382), !dbg !1675
  %5 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !1676
  %6 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %5, i32 0, i32 3, !dbg !1677
  %7 = load i32, i32* %6, align 4, !dbg !1677
  %8 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !1678
  %9 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %8, i32 0, i32 3, !dbg !1679
  %10 = load i32, i32* %9, align 4, !dbg !1679
  %11 = icmp slt i32 %7, %10, !dbg !1680
  br i1 %11, label %12, label %13, !dbg !1676

; <label>:12:                                     ; preds = %2
  br label %44, !dbg !1681

; <label>:13:                                     ; preds = %2
  %14 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !1683
  %15 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %14, i32 0, i32 3, !dbg !1684
  %16 = load i32, i32* %15, align 4, !dbg !1684
  %17 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !1685
  %18 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %17, i32 0, i32 3, !dbg !1686
  %19 = load i32, i32* %18, align 4, !dbg !1686
  %20 = icmp sgt i32 %16, %19, !dbg !1687
  br i1 %20, label %21, label %22, !dbg !1683

; <label>:21:                                     ; preds = %13
  br label %42, !dbg !1688

; <label>:22:                                     ; preds = %13
  %23 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !1689
  %24 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %23, i32 0, i32 5, !dbg !1690
  %25 = load i32, i32* %24, align 4, !dbg !1690
  %26 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !1691
  %27 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %26, i32 0, i32 5, !dbg !1692
  %28 = load i32, i32* %27, align 4, !dbg !1692
  %29 = icmp slt i32 %25, %28, !dbg !1693
  br i1 %29, label %30, label %31, !dbg !1689

; <label>:30:                                     ; preds = %22
  br label %40, !dbg !1694

; <label>:31:                                     ; preds = %22
  %32 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !1695
  %33 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %32, i32 0, i32 5, !dbg !1696
  %34 = load i32, i32* %33, align 4, !dbg !1696
  %35 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !1697
  %36 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %35, i32 0, i32 5, !dbg !1698
  %37 = load i32, i32* %36, align 4, !dbg !1698
  %38 = icmp sgt i32 %34, %37, !dbg !1699
  %39 = select i1 %38, i32 1, i32 0, !dbg !1695
  br label %40, !dbg !1700

; <label>:40:                                     ; preds = %31, %30
  %41 = phi i32 [ -1, %30 ], [ %39, %31 ], !dbg !1702
  br label %42, !dbg !1704

; <label>:42:                                     ; preds = %40, %21
  %43 = phi i32 [ 1, %21 ], [ %41, %40 ], !dbg !1705
  br label %44, !dbg !1706

; <label>:44:                                     ; preds = %42, %12
  %45 = phi i32 [ -1, %12 ], [ %43, %42 ], !dbg !1707
  ret i32 %45, !dbg !1708
}

; Function Attrs: nounwind uwtable
define void @mainwindows_resize(i32, i32) #0 !dbg !1709 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %8 = alloca %struct._GSList*, align 8
  %9 = alloca %struct._GSList*, align 8
  %10 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %11 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct._GSList*, align 8
  %16 = alloca %struct._GSList*, align 8
  %17 = alloca %struct.MAIN_WINDOW_REC*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1712, metadata !382), !dbg !1713
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1714, metadata !382), !dbg !1715
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1716, metadata !382), !dbg !1717
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1718, metadata !382), !dbg !1719
  %18 = load i32, i32* %3, align 4, !dbg !1720
  %19 = load i32, i32* @screen_width, align 4, !dbg !1721
  %20 = sub nsw i32 %18, %19, !dbg !1722
  store i32 %20, i32* %5, align 4, !dbg !1723
  %21 = load i32, i32* %4, align 4, !dbg !1724
  %22 = load i32, i32* @screen_height, align 4, !dbg !1725
  %23 = sub nsw i32 %21, %22, !dbg !1726
  store i32 %23, i32* %6, align 4, !dbg !1727
  %24 = load i32, i32* %3, align 4, !dbg !1728
  store i32 %24, i32* @screen_width, align 4, !dbg !1729
  %25 = load i32, i32* %4, align 4, !dbg !1730
  store i32 %25, i32* @screen_height, align 4, !dbg !1731
  %26 = load i32, i32* %6, align 4, !dbg !1732
  %27 = icmp sgt i32 %26, 0, !dbg !1734
  br i1 %27, label %28, label %53, !dbg !1735

; <label>:28:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %7, metadata !1736, metadata !382), !dbg !1738
  call void @llvm.dbg.declare(metadata %struct._GSList** %8, metadata !1739, metadata !382), !dbg !1740
  call void @llvm.dbg.declare(metadata %struct._GSList** %9, metadata !1741, metadata !382), !dbg !1742
  %29 = call %struct.MAIN_WINDOW_REC* @mainwindows_find_upper(%struct.MAIN_WINDOW_REC* null), !dbg !1743
  %30 = call %struct._GSList* @mainwindows_get_line(%struct.MAIN_WINDOW_REC* %29), !dbg !1744
  store %struct._GSList* %30, %struct._GSList** %8, align 8, !dbg !1746
  %31 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1747
  store %struct._GSList* %31, %struct._GSList** %9, align 8, !dbg !1749
  br label %32, !dbg !1750

; <label>:32:                                     ; preds = %47, %28
  %33 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1751
  %34 = icmp ne %struct._GSList* %33, null, !dbg !1754
  br i1 %34, label %35, label %51, !dbg !1755

; <label>:35:                                     ; preds = %32
  %36 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1756
  %37 = getelementptr inbounds %struct._GSList, %struct._GSList* %36, i32 0, i32 0, !dbg !1758
  %38 = load i8*, i8** %37, align 8, !dbg !1758
  %39 = bitcast i8* %38 to %struct.MAIN_WINDOW_REC*, !dbg !1756
  store %struct.MAIN_WINDOW_REC* %39, %struct.MAIN_WINDOW_REC** %7, align 8, !dbg !1759
  %40 = load i32, i32* %6, align 4, !dbg !1760
  %41 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %7, align 8, !dbg !1761
  %42 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %41, i32 0, i32 4, !dbg !1762
  %43 = load i32, i32* %42, align 8, !dbg !1763
  %44 = add nsw i32 %43, %40, !dbg !1763
  store i32 %44, i32* %42, align 8, !dbg !1763
  %45 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %7, align 8, !dbg !1764
  %46 = load i32, i32* %6, align 4, !dbg !1765
  call void @mainwindow_resize(%struct.MAIN_WINDOW_REC* %45, i32 0, i32 %46), !dbg !1766
  br label %47, !dbg !1767

; <label>:47:                                     ; preds = %35
  %48 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1768
  %49 = getelementptr inbounds %struct._GSList, %struct._GSList* %48, i32 0, i32 1, !dbg !1770
  %50 = load %struct._GSList*, %struct._GSList** %49, align 8, !dbg !1770
  store %struct._GSList* %50, %struct._GSList** %9, align 8, !dbg !1771
  br label %32, !dbg !1772, !llvm.loop !1773

; <label>:51:                                     ; preds = %32
  %52 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1775
  call void @g_slist_free(%struct._GSList* %52), !dbg !1776
  br label %53, !dbg !1777

; <label>:53:                                     ; preds = %51, %2
  %54 = load i32, i32* %5, align 4, !dbg !1778
  %55 = icmp sgt i32 %54, 0, !dbg !1780
  br i1 %55, label %56, label %68, !dbg !1781

; <label>:56:                                     ; preds = %53
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %10, metadata !1782, metadata !382), !dbg !1784
  %57 = call %struct.MAIN_WINDOW_REC* @mainwindows_find_lower(%struct.MAIN_WINDOW_REC* null), !dbg !1785
  store %struct.MAIN_WINDOW_REC* %57, %struct.MAIN_WINDOW_REC** %10, align 8, !dbg !1787
  br label %58, !dbg !1788

; <label>:58:                                     ; preds = %64, %56
  %59 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %10, align 8, !dbg !1789
  %60 = icmp ne %struct.MAIN_WINDOW_REC* %59, null, !dbg !1791
  br i1 %60, label %61, label %67, !dbg !1792

; <label>:61:                                     ; preds = %58
  %62 = load i32, i32* %5, align 4, !dbg !1794
  %63 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %10, align 8, !dbg !1796
  call void @mainwindows_rresize_line(i32 %62, %struct.MAIN_WINDOW_REC* %63), !dbg !1797
  br label %64, !dbg !1798

; <label>:64:                                     ; preds = %61
  %65 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %10, align 8, !dbg !1799
  %66 = call %struct.MAIN_WINDOW_REC* @mainwindows_find_lower(%struct.MAIN_WINDOW_REC* %65), !dbg !1800
  store %struct.MAIN_WINDOW_REC* %66, %struct.MAIN_WINDOW_REC** %10, align 8, !dbg !1801
  br label %58, !dbg !1802, !llvm.loop !1804

; <label>:67:                                     ; preds = %58
  br label %68, !dbg !1806

; <label>:68:                                     ; preds = %67, %53
  %69 = load i32, i32* %5, align 4, !dbg !1807
  %70 = icmp slt i32 %69, 0, !dbg !1809
  br i1 %70, label %71, label %128, !dbg !1810

; <label>:71:                                     ; preds = %68
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %11, metadata !1811, metadata !382), !dbg !1813
  %72 = call %struct.MAIN_WINDOW_REC* @mainwindows_find_lower(%struct.MAIN_WINDOW_REC* null), !dbg !1814
  store %struct.MAIN_WINDOW_REC* %72, %struct.MAIN_WINDOW_REC** %11, align 8, !dbg !1816
  br label %73, !dbg !1817

; <label>:73:                                     ; preds = %124, %71
  %74 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %11, align 8, !dbg !1818
  %75 = icmp ne %struct.MAIN_WINDOW_REC* %74, null, !dbg !1820
  br i1 %75, label %76, label %127, !dbg !1821

; <label>:76:                                     ; preds = %73
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1823, metadata !382), !dbg !1825
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1826, metadata !382), !dbg !1827
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1828, metadata !382), !dbg !1829
  call void @llvm.dbg.declare(metadata %struct._GSList** %15, metadata !1830, metadata !382), !dbg !1831
  call void @llvm.dbg.declare(metadata %struct._GSList** %16, metadata !1832, metadata !382), !dbg !1833
  %77 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %11, align 8, !dbg !1834
  %78 = call %struct._GSList* @mainwindows_get_line(%struct.MAIN_WINDOW_REC* %77), !dbg !1835
  store %struct._GSList* %78, %struct._GSList** %15, align 8, !dbg !1836
  %79 = load i32, i32* @screen_width, align 4, !dbg !1837
  %80 = add nsw i32 %79, 1, !dbg !1838
  %81 = sdiv i32 %80, 11, !dbg !1839
  store i32 %81, i32* %12, align 4, !dbg !1840
  %82 = load i32, i32* %12, align 4, !dbg !1841
  %83 = icmp slt i32 %82, 1, !dbg !1843
  br i1 %83, label %84, label %85, !dbg !1844

; <label>:84:                                     ; preds = %76
  store i32 1, i32* %12, align 4, !dbg !1845
  br label %85, !dbg !1846

; <label>:85:                                     ; preds = %84, %76
  %86 = load i32, i32* @screen_width, align 4, !dbg !1847
  %87 = sub nsw i32 %86, 1, !dbg !1848
  store i32 %87, i32* %14, align 4, !dbg !1849
  %88 = load %struct._GSList*, %struct._GSList** %15, align 8, !dbg !1850
  store %struct._GSList* %88, %struct._GSList** %16, align 8, !dbg !1852
  store i32 0, i32* %13, align 4, !dbg !1853
  br label %89, !dbg !1854

; <label>:89:                                     ; preds = %107, %85
  %90 = load %struct._GSList*, %struct._GSList** %16, align 8, !dbg !1855
  %91 = icmp ne %struct._GSList* %90, null, !dbg !1858
  br i1 %91, label %92, label %113, !dbg !1859

; <label>:92:                                     ; preds = %89
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %17, metadata !1860, metadata !382), !dbg !1862
  %93 = load %struct._GSList*, %struct._GSList** %16, align 8, !dbg !1863
  %94 = getelementptr inbounds %struct._GSList, %struct._GSList* %93, i32 0, i32 0, !dbg !1864
  %95 = load i8*, i8** %94, align 8, !dbg !1864
  %96 = bitcast i8* %95 to %struct.MAIN_WINDOW_REC*, !dbg !1863
  store %struct.MAIN_WINDOW_REC* %96, %struct.MAIN_WINDOW_REC** %17, align 8, !dbg !1862
  %97 = load i32, i32* %13, align 4, !dbg !1865
  %98 = load i32, i32* %12, align 4, !dbg !1867
  %99 = icmp sge i32 %97, %98, !dbg !1868
  br i1 %99, label %100, label %102, !dbg !1869

; <label>:100:                                    ; preds = %92
  %101 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %17, align 8, !dbg !1870
  call void @mainwindow_destroy_half(%struct.MAIN_WINDOW_REC* %101), !dbg !1871
  br label %106, !dbg !1871

; <label>:102:                                    ; preds = %92
  %103 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %17, align 8, !dbg !1872
  %104 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %103, i32 0, i32 6, !dbg !1873
  %105 = load i32, i32* %104, align 8, !dbg !1873
  store i32 %105, i32* %14, align 4, !dbg !1874
  br label %106

; <label>:106:                                    ; preds = %102, %100
  br label %107, !dbg !1875

; <label>:107:                                    ; preds = %106
  %108 = load %struct._GSList*, %struct._GSList** %16, align 8, !dbg !1876
  %109 = getelementptr inbounds %struct._GSList, %struct._GSList* %108, i32 0, i32 1, !dbg !1878
  %110 = load %struct._GSList*, %struct._GSList** %109, align 8, !dbg !1878
  store %struct._GSList* %110, %struct._GSList** %16, align 8, !dbg !1879
  %111 = load i32, i32* %13, align 4, !dbg !1880
  %112 = add nsw i32 %111, 1, !dbg !1880
  store i32 %112, i32* %13, align 4, !dbg !1880
  br label %89, !dbg !1881, !llvm.loop !1882

; <label>:113:                                    ; preds = %89
  %114 = load %struct._GSList*, %struct._GSList** %15, align 8, !dbg !1884
  %115 = getelementptr inbounds %struct._GSList, %struct._GSList* %114, i32 0, i32 0, !dbg !1885
  %116 = load i8*, i8** %115, align 8, !dbg !1885
  %117 = bitcast i8* %116 to %struct.MAIN_WINDOW_REC*, !dbg !1884
  store %struct.MAIN_WINDOW_REC* %117, %struct.MAIN_WINDOW_REC** %11, align 8, !dbg !1886
  %118 = load %struct._GSList*, %struct._GSList** %15, align 8, !dbg !1887
  call void @g_slist_free(%struct._GSList* %118), !dbg !1888
  %119 = load i32, i32* @screen_width, align 4, !dbg !1889
  %120 = load i32, i32* %14, align 4, !dbg !1890
  %121 = sub nsw i32 %119, %120, !dbg !1891
  %122 = add nsw i32 %121, 1, !dbg !1892
  %123 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %11, align 8, !dbg !1893
  call void @mainwindows_rresize_line(i32 %122, %struct.MAIN_WINDOW_REC* %123), !dbg !1894
  br label %124, !dbg !1895

; <label>:124:                                    ; preds = %113
  %125 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %11, align 8, !dbg !1896
  %126 = call %struct.MAIN_WINDOW_REC* @mainwindows_find_lower(%struct.MAIN_WINDOW_REC* %125), !dbg !1897
  store %struct.MAIN_WINDOW_REC* %126, %struct.MAIN_WINDOW_REC** %11, align 8, !dbg !1898
  br label %73, !dbg !1899, !llvm.loop !1901

; <label>:127:                                    ; preds = %73
  br label %128, !dbg !1903

; <label>:128:                                    ; preds = %127, %68
  %129 = load i32, i32* %6, align 4, !dbg !1904
  %130 = icmp slt i32 %129, 0, !dbg !1906
  br i1 %130, label %131, label %133, !dbg !1907

; <label>:131:                                    ; preds = %128
  %132 = load i32, i32* %6, align 4, !dbg !1908
  call void @mainwindows_resize_smaller(i32 %132), !dbg !1910
  br label %133, !dbg !1911

; <label>:133:                                    ; preds = %131, %128
  %134 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 0), !dbg !1912
  call void @irssi_redraw(), !dbg !1913
  ret void, !dbg !1914
}

; Function Attrs: nounwind uwtable
define internal %struct.MAIN_WINDOW_REC* @mainwindows_find_upper(%struct.MAIN_WINDOW_REC*) #0 !dbg !1915 {
  %2 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca %struct.MAIN_WINDOW_REC*, align 8
  store %struct.MAIN_WINDOW_REC* %0, %struct.MAIN_WINDOW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %2, metadata !1918, metadata !382), !dbg !1919
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1920, metadata !382), !dbg !1921
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %4, metadata !1922, metadata !382), !dbg !1923
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !1924, metadata !382), !dbg !1925
  %7 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !1926
  %8 = icmp ne %struct.MAIN_WINDOW_REC* %7, null, !dbg !1928
  br i1 %8, label %9, label %13, !dbg !1929

; <label>:9:                                      ; preds = %1
  %10 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !1930
  %11 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %10, i32 0, i32 3, !dbg !1931
  %12 = load i32, i32* %11, align 4, !dbg !1931
  store i32 %12, i32* %3, align 4, !dbg !1932
  br label %15, !dbg !1933

; <label>:13:                                     ; preds = %1
  %14 = load i32, i32* @screen_height, align 4, !dbg !1934
  store i32 %14, i32* %3, align 4, !dbg !1935
  br label %15

; <label>:15:                                     ; preds = %13, %9
  store %struct.MAIN_WINDOW_REC* null, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !1936
  %16 = load %struct._GSList*, %struct._GSList** @mainwindows, align 8, !dbg !1937
  store %struct._GSList* %16, %struct._GSList** %5, align 8, !dbg !1939
  br label %17, !dbg !1940

; <label>:17:                                     ; preds = %44, %15
  %18 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1941
  %19 = icmp ne %struct._GSList* %18, null, !dbg !1944
  br i1 %19, label %20, label %48, !dbg !1945

; <label>:20:                                     ; preds = %17
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %6, metadata !1946, metadata !382), !dbg !1948
  %21 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1949
  %22 = getelementptr inbounds %struct._GSList, %struct._GSList* %21, i32 0, i32 0, !dbg !1950
  %23 = load i8*, i8** %22, align 8, !dbg !1950
  %24 = bitcast i8* %23 to %struct.MAIN_WINDOW_REC*, !dbg !1949
  store %struct.MAIN_WINDOW_REC* %24, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !1948
  %25 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !1951
  %26 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %25, i32 0, i32 4, !dbg !1953
  %27 = load i32, i32* %26, align 8, !dbg !1953
  %28 = load i32, i32* %3, align 4, !dbg !1954
  %29 = icmp slt i32 %27, %28, !dbg !1955
  br i1 %29, label %30, label %43, !dbg !1956

; <label>:30:                                     ; preds = %20
  %31 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !1957
  %32 = icmp eq %struct.MAIN_WINDOW_REC* %31, null, !dbg !1958
  br i1 %32, label %41, label %33, !dbg !1959

; <label>:33:                                     ; preds = %30
  %34 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !1960
  %35 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %34, i32 0, i32 4, !dbg !1962
  %36 = load i32, i32* %35, align 8, !dbg !1962
  %37 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !1963
  %38 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %37, i32 0, i32 4, !dbg !1964
  %39 = load i32, i32* %38, align 8, !dbg !1964
  %40 = icmp sgt i32 %36, %39, !dbg !1965
  br i1 %40, label %41, label %43, !dbg !1966

; <label>:41:                                     ; preds = %33, %30
  %42 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !1968
  store %struct.MAIN_WINDOW_REC* %42, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !1969
  br label %43, !dbg !1970

; <label>:43:                                     ; preds = %41, %33, %20
  br label %44, !dbg !1971

; <label>:44:                                     ; preds = %43
  %45 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1972
  %46 = getelementptr inbounds %struct._GSList, %struct._GSList* %45, i32 0, i32 1, !dbg !1974
  %47 = load %struct._GSList*, %struct._GSList** %46, align 8, !dbg !1974
  store %struct._GSList* %47, %struct._GSList** %5, align 8, !dbg !1975
  br label %17, !dbg !1976, !llvm.loop !1977

; <label>:48:                                     ; preds = %17
  %49 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !1979
  ret %struct.MAIN_WINDOW_REC* %49, !dbg !1980
}

; Function Attrs: nounwind uwtable
define internal %struct.MAIN_WINDOW_REC* @mainwindows_find_lower(%struct.MAIN_WINDOW_REC*) #0 !dbg !1981 {
  %2 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca %struct.MAIN_WINDOW_REC*, align 8
  store %struct.MAIN_WINDOW_REC* %0, %struct.MAIN_WINDOW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %2, metadata !1982, metadata !382), !dbg !1983
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1984, metadata !382), !dbg !1985
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %4, metadata !1986, metadata !382), !dbg !1987
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !1988, metadata !382), !dbg !1989
  %7 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !1990
  %8 = icmp ne %struct.MAIN_WINDOW_REC* %7, null, !dbg !1992
  br i1 %8, label %9, label %13, !dbg !1993

; <label>:9:                                      ; preds = %1
  %10 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !1994
  %11 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %10, i32 0, i32 4, !dbg !1995
  %12 = load i32, i32* %11, align 8, !dbg !1995
  store i32 %12, i32* %3, align 4, !dbg !1996
  br label %14, !dbg !1997

; <label>:13:                                     ; preds = %1
  store i32 -1, i32* %3, align 4, !dbg !1998
  br label %14

; <label>:14:                                     ; preds = %13, %9
  store %struct.MAIN_WINDOW_REC* null, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !1999
  %15 = load %struct._GSList*, %struct._GSList** @mainwindows, align 8, !dbg !2000
  store %struct._GSList* %15, %struct._GSList** %5, align 8, !dbg !2002
  br label %16, !dbg !2003

; <label>:16:                                     ; preds = %43, %14
  %17 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2004
  %18 = icmp ne %struct._GSList* %17, null, !dbg !2007
  br i1 %18, label %19, label %47, !dbg !2008

; <label>:19:                                     ; preds = %16
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %6, metadata !2009, metadata !382), !dbg !2011
  %20 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2012
  %21 = getelementptr inbounds %struct._GSList, %struct._GSList* %20, i32 0, i32 0, !dbg !2013
  %22 = load i8*, i8** %21, align 8, !dbg !2013
  %23 = bitcast i8* %22 to %struct.MAIN_WINDOW_REC*, !dbg !2012
  store %struct.MAIN_WINDOW_REC* %23, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !2011
  %24 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !2014
  %25 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %24, i32 0, i32 3, !dbg !2016
  %26 = load i32, i32* %25, align 4, !dbg !2016
  %27 = load i32, i32* %3, align 4, !dbg !2017
  %28 = icmp sgt i32 %26, %27, !dbg !2018
  br i1 %28, label %29, label %42, !dbg !2019

; <label>:29:                                     ; preds = %19
  %30 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !2020
  %31 = icmp eq %struct.MAIN_WINDOW_REC* %30, null, !dbg !2021
  br i1 %31, label %40, label %32, !dbg !2022

; <label>:32:                                     ; preds = %29
  %33 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !2023
  %34 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %33, i32 0, i32 3, !dbg !2025
  %35 = load i32, i32* %34, align 4, !dbg !2025
  %36 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !2026
  %37 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %36, i32 0, i32 3, !dbg !2027
  %38 = load i32, i32* %37, align 4, !dbg !2027
  %39 = icmp slt i32 %35, %38, !dbg !2028
  br i1 %39, label %40, label %42, !dbg !2029

; <label>:40:                                     ; preds = %32, %29
  %41 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !2031
  store %struct.MAIN_WINDOW_REC* %41, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !2032
  br label %42, !dbg !2033

; <label>:42:                                     ; preds = %40, %32, %19
  br label %43, !dbg !2034

; <label>:43:                                     ; preds = %42
  %44 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2035
  %45 = getelementptr inbounds %struct._GSList, %struct._GSList* %44, i32 0, i32 1, !dbg !2037
  %46 = load %struct._GSList*, %struct._GSList** %45, align 8, !dbg !2037
  store %struct._GSList* %46, %struct._GSList** %5, align 8, !dbg !2038
  br label %16, !dbg !2039, !llvm.loop !2040

; <label>:47:                                     ; preds = %16
  %48 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !2042
  ret %struct.MAIN_WINDOW_REC* %48, !dbg !2043
}

; Function Attrs: nounwind uwtable
define internal void @mainwindows_rresize_line(i32, %struct.MAIN_WINDOW_REC*) #0 !dbg !2044 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct._GSList*, align 8
  %12 = alloca %struct._GSList*, align 8
  %13 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %14 = alloca %struct.MAIN_WINDOW_REC*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2047, metadata !382), !dbg !2048
  store %struct.MAIN_WINDOW_REC* %1, %struct.MAIN_WINDOW_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %4, metadata !2049, metadata !382), !dbg !2050
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2051, metadata !382), !dbg !2052
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2053, metadata !382), !dbg !2054
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2055, metadata !382), !dbg !2056
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2057, metadata !382), !dbg !2058
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2059, metadata !382), !dbg !2060
  call void @llvm.dbg.declare(metadata i32** %10, metadata !2061, metadata !382), !dbg !2062
  call void @llvm.dbg.declare(metadata %struct._GSList** %11, metadata !2063, metadata !382), !dbg !2064
  call void @llvm.dbg.declare(metadata %struct._GSList** %12, metadata !2065, metadata !382), !dbg !2066
  %15 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !2067
  %16 = call %struct._GSList* @mainwindows_get_line(%struct.MAIN_WINDOW_REC* %15), !dbg !2068
  store %struct._GSList* %16, %struct._GSList** %11, align 8, !dbg !2069
  %17 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !2070
  %18 = call i32 @g_slist_length(%struct._GSList* %17), !dbg !2071
  store i32 %18, i32* %5, align 4, !dbg !2072
  %19 = load i32, i32* %5, align 4, !dbg !2073
  %20 = sext i32 %19 to i64, !dbg !2074
  %21 = call noalias i8* @g_malloc0_n(i64 %20, i64 4), !dbg !2075
  %22 = bitcast i8* %21 to i32*, !dbg !2076
  store i32* %22, i32** %10, align 8, !dbg !2077
  %23 = load i32, i32* @screen_width, align 4, !dbg !2078
  %24 = load i32, i32* %5, align 4, !dbg !2079
  %25 = sub nsw i32 %23, %24, !dbg !2080
  %26 = add nsw i32 %25, 1, !dbg !2081
  store i32 %26, i32* %7, align 4, !dbg !2082
  %27 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !2083
  store %struct._GSList* %27, %struct._GSList** %12, align 8, !dbg !2085
  store i32 0, i32* %6, align 4, !dbg !2086
  br label %28, !dbg !2087

; <label>:28:                                     ; preds = %70, %2
  %29 = load %struct._GSList*, %struct._GSList** %12, align 8, !dbg !2088
  %30 = icmp ne %struct._GSList* %29, null, !dbg !2091
  br i1 %30, label %31, label %76, !dbg !2092

; <label>:31:                                     ; preds = %28
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %13, metadata !2093, metadata !382), !dbg !2095
  %32 = load %struct._GSList*, %struct._GSList** %12, align 8, !dbg !2096
  %33 = getelementptr inbounds %struct._GSList, %struct._GSList* %32, i32 0, i32 0, !dbg !2097
  %34 = load i8*, i8** %33, align 8, !dbg !2097
  %35 = bitcast i8* %34 to %struct.MAIN_WINDOW_REC*, !dbg !2096
  store %struct.MAIN_WINDOW_REC* %35, %struct.MAIN_WINDOW_REC** %13, align 8, !dbg !2095
  %36 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %13, align 8, !dbg !2098
  %37 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %36, i32 0, i32 7, !dbg !2099
  %38 = load i32, i32* %37, align 4, !dbg !2099
  %39 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %13, align 8, !dbg !2100
  %40 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %39, i32 0, i32 15, !dbg !2101
  %41 = load i32, i32* %40, align 4, !dbg !2101
  %42 = sub nsw i32 %38, %41, !dbg !2102
  %43 = load i32, i32* @screen_width, align 4, !dbg !2103
  %44 = load i32, i32* %5, align 4, !dbg !2104
  %45 = sub nsw i32 %43, %44, !dbg !2105
  %46 = add nsw i32 %45, 1, !dbg !2106
  %47 = mul nsw i32 %42, %46, !dbg !2107
  %48 = load i32, i32* @screen_width, align 4, !dbg !2108
  %49 = load i32, i32* %3, align 4, !dbg !2109
  %50 = sub nsw i32 %48, %49, !dbg !2110
  %51 = load i32, i32* %5, align 4, !dbg !2111
  %52 = sub nsw i32 %50, %51, !dbg !2112
  %53 = add nsw i32 %52, 1, !dbg !2113
  %54 = sdiv i32 %47, %53, !dbg !2114
  %55 = load i32, i32* %6, align 4, !dbg !2115
  %56 = sext i32 %55 to i64, !dbg !2116
  %57 = load i32*, i32** %10, align 8, !dbg !2116
  %58 = getelementptr inbounds i32, i32* %57, i64 %56, !dbg !2116
  store i32 %54, i32* %58, align 4, !dbg !2117
  %59 = load i32, i32* %6, align 4, !dbg !2118
  %60 = sext i32 %59 to i64, !dbg !2119
  %61 = load i32*, i32** %10, align 8, !dbg !2119
  %62 = getelementptr inbounds i32, i32* %61, i64 %60, !dbg !2119
  %63 = load i32, i32* %62, align 4, !dbg !2119
  %64 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %13, align 8, !dbg !2120
  %65 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %64, i32 0, i32 15, !dbg !2121
  %66 = load i32, i32* %65, align 4, !dbg !2121
  %67 = add nsw i32 %63, %66, !dbg !2122
  %68 = load i32, i32* %7, align 4, !dbg !2123
  %69 = sub nsw i32 %68, %67, !dbg !2123
  store i32 %69, i32* %7, align 4, !dbg !2123
  br label %70, !dbg !2124

; <label>:70:                                     ; preds = %31
  %71 = load %struct._GSList*, %struct._GSList** %12, align 8, !dbg !2125
  %72 = getelementptr inbounds %struct._GSList, %struct._GSList* %71, i32 0, i32 1, !dbg !2127
  %73 = load %struct._GSList*, %struct._GSList** %72, align 8, !dbg !2127
  store %struct._GSList* %73, %struct._GSList** %12, align 8, !dbg !2128
  %74 = load i32, i32* %6, align 4, !dbg !2129
  %75 = add nsw i32 %74, 1, !dbg !2129
  store i32 %75, i32* %6, align 4, !dbg !2129
  br label %28, !dbg !2130, !llvm.loop !2131

; <label>:76:                                     ; preds = %28
  store i32 0, i32* %9, align 4, !dbg !2133
  %77 = load i32, i32* %5, align 4, !dbg !2134
  store i32 %77, i32* %6, align 4, !dbg !2136
  br label %78, !dbg !2137

; <label>:78:                                     ; preds = %117, %76
  %79 = load i32, i32* %7, align 4, !dbg !2138
  %80 = icmp slt i32 %79, 0, !dbg !2141
  br i1 %80, label %81, label %119, !dbg !2142

; <label>:81:                                     ; preds = %78
  %82 = load i32, i32* %6, align 4, !dbg !2143
  %83 = sub nsw i32 %82, 1, !dbg !2146
  %84 = sext i32 %83 to i64, !dbg !2147
  %85 = load i32*, i32** %10, align 8, !dbg !2147
  %86 = getelementptr inbounds i32, i32* %85, i64 %84, !dbg !2147
  %87 = load i32, i32* %86, align 4, !dbg !2147
  %88 = icmp sgt i32 %87, 10, !dbg !2148
  br i1 %88, label %95, label %89, !dbg !2149

; <label>:89:                                     ; preds = %81
  %90 = load i32, i32* %6, align 4, !dbg !2150
  %91 = icmp eq i32 %90, 1, !dbg !2152
  br i1 %91, label %92, label %108, !dbg !2153

; <label>:92:                                     ; preds = %89
  %93 = load i32, i32* %9, align 4, !dbg !2154
  %94 = icmp ne i32 %93, 0, !dbg !2154
  br i1 %94, label %108, label %95, !dbg !2156

; <label>:95:                                     ; preds = %92, %81
  %96 = load i32, i32* %6, align 4, !dbg !2157
  %97 = sub nsw i32 %96, 1, !dbg !2159
  %98 = sext i32 %97 to i64, !dbg !2160
  %99 = load i32*, i32** %10, align 8, !dbg !2160
  %100 = getelementptr inbounds i32, i32* %99, i64 %98, !dbg !2160
  %101 = load i32, i32* %100, align 4, !dbg !2161
  %102 = add nsw i32 %101, -1, !dbg !2161
  store i32 %102, i32* %100, align 4, !dbg !2161
  %103 = load i32, i32* %7, align 4, !dbg !2162
  %104 = add nsw i32 %103, 1, !dbg !2162
  store i32 %104, i32* %7, align 4, !dbg !2162
  %105 = load i32, i32* %6, align 4, !dbg !2163
  %106 = icmp eq i32 %105, 1, !dbg !2164
  %107 = zext i1 %106 to i32, !dbg !2164
  store i32 %107, i32* %9, align 4, !dbg !2165
  br label %108, !dbg !2166

; <label>:108:                                    ; preds = %95, %92, %89
  br label %109, !dbg !2167

; <label>:109:                                    ; preds = %108
  %110 = load i32, i32* %6, align 4, !dbg !2168
  %111 = icmp sgt i32 %110, 1, !dbg !2170
  br i1 %111, label %112, label %115, !dbg !2168

; <label>:112:                                    ; preds = %109
  %113 = load i32, i32* %6, align 4, !dbg !2171
  %114 = sub nsw i32 %113, 1, !dbg !2173
  br label %117, !dbg !2174

; <label>:115:                                    ; preds = %109
  %116 = load i32, i32* %5, align 4, !dbg !2175
  br label %117, !dbg !2177

; <label>:117:                                    ; preds = %115, %112
  %118 = phi i32 [ %114, %112 ], [ %116, %115 ], !dbg !2178
  store i32 %118, i32* %6, align 4, !dbg !2180
  br label %78, !dbg !2181, !llvm.loop !2182

; <label>:119:                                    ; preds = %78
  store i32 0, i32* %8, align 4, !dbg !2184
  %120 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !2185
  store %struct._GSList* %120, %struct._GSList** %12, align 8, !dbg !2187
  store i32 0, i32* %6, align 4, !dbg !2188
  br label %121, !dbg !2189

; <label>:121:                                    ; preds = %225, %119
  %122 = load %struct._GSList*, %struct._GSList** %12, align 8, !dbg !2190
  %123 = icmp ne %struct._GSList* %122, null, !dbg !2193
  br i1 %123, label %124, label %231, !dbg !2194

; <label>:124:                                    ; preds = %121
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %14, metadata !2195, metadata !382), !dbg !2197
  %125 = load %struct._GSList*, %struct._GSList** %12, align 8, !dbg !2198
  %126 = getelementptr inbounds %struct._GSList, %struct._GSList* %125, i32 0, i32 0, !dbg !2199
  %127 = load i8*, i8** %126, align 8, !dbg !2199
  %128 = bitcast i8* %127 to %struct.MAIN_WINDOW_REC*, !dbg !2198
  store %struct.MAIN_WINDOW_REC* %128, %struct.MAIN_WINDOW_REC** %14, align 8, !dbg !2197
  %129 = load i32, i32* %8, align 4, !dbg !2200
  %130 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %14, align 8, !dbg !2201
  %131 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %130, i32 0, i32 5, !dbg !2202
  store i32 %129, i32* %131, align 4, !dbg !2203
  %132 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %14, align 8, !dbg !2204
  %133 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %132, i32 0, i32 5, !dbg !2205
  %134 = load i32, i32* %133, align 4, !dbg !2205
  %135 = load i32, i32* %6, align 4, !dbg !2206
  %136 = sext i32 %135 to i64, !dbg !2207
  %137 = load i32*, i32** %10, align 8, !dbg !2207
  %138 = getelementptr inbounds i32, i32* %137, i64 %136, !dbg !2207
  %139 = load i32, i32* %138, align 4, !dbg !2207
  %140 = add nsw i32 %134, %139, !dbg !2208
  %141 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %14, align 8, !dbg !2209
  %142 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %141, i32 0, i32 15, !dbg !2210
  %143 = load i32, i32* %142, align 4, !dbg !2210
  %144 = add nsw i32 %140, %143, !dbg !2211
  %145 = load i32, i32* %6, align 4, !dbg !2212
  %146 = load i32, i32* @screen_width, align 4, !dbg !2213
  %147 = load i32, i32* %5, align 4, !dbg !2214
  %148 = srem i32 %146, %147, !dbg !2215
  %149 = icmp sge i32 %145, %148, !dbg !2216
  br i1 %149, label %150, label %158, !dbg !2217

; <label>:150:                                    ; preds = %124
  %151 = load i32, i32* %6, align 4, !dbg !2218
  %152 = load i32, i32* %7, align 4, !dbg !2220
  %153 = load i32, i32* @screen_width, align 4, !dbg !2221
  %154 = load i32, i32* %5, align 4, !dbg !2222
  %155 = srem i32 %153, %154, !dbg !2223
  %156 = add nsw i32 %152, %155, !dbg !2224
  %157 = icmp slt i32 %151, %156, !dbg !2225
  br i1 %157, label %168, label %158, !dbg !2226

; <label>:158:                                    ; preds = %150, %124
  %159 = load i32, i32* %6, align 4, !dbg !2227
  %160 = load i32, i32* %5, align 4, !dbg !2229
  %161 = add nsw i32 %159, %160, !dbg !2230
  %162 = load i32, i32* %7, align 4, !dbg !2231
  %163 = load i32, i32* @screen_width, align 4, !dbg !2232
  %164 = load i32, i32* %5, align 4, !dbg !2233
  %165 = srem i32 %163, %164, !dbg !2234
  %166 = add nsw i32 %162, %165, !dbg !2235
  %167 = icmp slt i32 %161, %166, !dbg !2236
  br label %168, !dbg !2237

; <label>:168:                                    ; preds = %158, %150
  %169 = phi i1 [ true, %150 ], [ %167, %158 ]
  %170 = select i1 %169, i32 1, i32 0, !dbg !2238
  %171 = add nsw i32 %144, %170, !dbg !2240
  %172 = sub nsw i32 %171, 1, !dbg !2241
  %173 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %14, align 8, !dbg !2242
  %174 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %173, i32 0, i32 6, !dbg !2243
  store i32 %172, i32* %174, align 8, !dbg !2244
  %175 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %14, align 8, !dbg !2245
  %176 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %175, i32 0, i32 6, !dbg !2246
  %177 = load i32, i32* %176, align 8, !dbg !2246
  %178 = add nsw i32 %177, 2, !dbg !2247
  store i32 %178, i32* %8, align 4, !dbg !2248
  %179 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %14, align 8, !dbg !2249
  %180 = load i32, i32* %6, align 4, !dbg !2250
  %181 = sext i32 %180 to i64, !dbg !2251
  %182 = load i32*, i32** %10, align 8, !dbg !2251
  %183 = getelementptr inbounds i32, i32* %182, i64 %181, !dbg !2251
  %184 = load i32, i32* %183, align 4, !dbg !2251
  %185 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %14, align 8, !dbg !2252
  %186 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %185, i32 0, i32 15, !dbg !2253
  %187 = load i32, i32* %186, align 4, !dbg !2253
  %188 = add nsw i32 %184, %187, !dbg !2254
  %189 = load i32, i32* %6, align 4, !dbg !2255
  %190 = load i32, i32* @screen_width, align 4, !dbg !2256
  %191 = load i32, i32* %5, align 4, !dbg !2257
  %192 = srem i32 %190, %191, !dbg !2258
  %193 = icmp sge i32 %189, %192, !dbg !2259
  br i1 %193, label %194, label %202, !dbg !2260

; <label>:194:                                    ; preds = %168
  %195 = load i32, i32* %6, align 4, !dbg !2261
  %196 = load i32, i32* %7, align 4, !dbg !2262
  %197 = load i32, i32* @screen_width, align 4, !dbg !2263
  %198 = load i32, i32* %5, align 4, !dbg !2264
  %199 = srem i32 %197, %198, !dbg !2265
  %200 = add nsw i32 %196, %199, !dbg !2266
  %201 = icmp slt i32 %195, %200, !dbg !2267
  br i1 %201, label %212, label %202, !dbg !2268

; <label>:202:                                    ; preds = %194, %168
  %203 = load i32, i32* %6, align 4, !dbg !2269
  %204 = load i32, i32* %5, align 4, !dbg !2270
  %205 = add nsw i32 %203, %204, !dbg !2271
  %206 = load i32, i32* %7, align 4, !dbg !2272
  %207 = load i32, i32* @screen_width, align 4, !dbg !2273
  %208 = load i32, i32* %5, align 4, !dbg !2274
  %209 = srem i32 %207, %208, !dbg !2275
  %210 = add nsw i32 %206, %209, !dbg !2276
  %211 = icmp slt i32 %205, %210, !dbg !2277
  br label %212, !dbg !2278

; <label>:212:                                    ; preds = %202, %194
  %213 = phi i1 [ true, %194 ], [ %211, %202 ]
  %214 = select i1 %213, i32 1, i32 0, !dbg !2279
  %215 = add nsw i32 %188, %214, !dbg !2280
  %216 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %14, align 8, !dbg !2281
  %217 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %216, i32 0, i32 7, !dbg !2282
  %218 = load i32, i32* %217, align 4, !dbg !2282
  %219 = sub nsw i32 %215, %218, !dbg !2283
  call void @mainwindow_resize(%struct.MAIN_WINDOW_REC* %179, i32 %219, i32 0), !dbg !2284
  %220 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %14, align 8, !dbg !2285
  %221 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %220, i32 0, i32 16, !dbg !2286
  %222 = load i8, i8* %221, align 8, !dbg !2287
  %223 = and i8 %222, -3, !dbg !2287
  %224 = or i8 %223, 2, !dbg !2287
  store i8 %224, i8* %221, align 8, !dbg !2287
  br label %225, !dbg !2288

; <label>:225:                                    ; preds = %212
  %226 = load %struct._GSList*, %struct._GSList** %12, align 8, !dbg !2289
  %227 = getelementptr inbounds %struct._GSList, %struct._GSList* %226, i32 0, i32 1, !dbg !2291
  %228 = load %struct._GSList*, %struct._GSList** %227, align 8, !dbg !2291
  store %struct._GSList* %228, %struct._GSList** %12, align 8, !dbg !2292
  %229 = load i32, i32* %6, align 4, !dbg !2293
  %230 = add nsw i32 %229, 1, !dbg !2293
  store i32 %230, i32* %6, align 4, !dbg !2293
  br label %121, !dbg !2294, !llvm.loop !2295

; <label>:231:                                    ; preds = %121
  %232 = load i32*, i32** %10, align 8, !dbg !2297
  %233 = bitcast i32* %232 to i8*, !dbg !2297
  call void @g_free(i8* %233), !dbg !2298
  %234 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !2299
  call void @g_slist_free(%struct._GSList* %234), !dbg !2300
  ret void, !dbg !2301
}

; Function Attrs: nounwind uwtable
define internal void @mainwindows_resize_smaller(i32) #0 !dbg !2302 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct._GSList*, align 8
  %10 = alloca %struct._GSList*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %13 = alloca %struct._GSList*, align 8
  %14 = alloca %struct._GSList*, align 8
  %15 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %16 = alloca %struct._GSList*, align 8
  %17 = alloca %struct._GSList*, align 8
  %18 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct._GSList*, align 8
  %21 = alloca %struct._GSList*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %24 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %25 = alloca %struct.MAIN_WINDOW_REC*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2305, metadata !382), !dbg !2306
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %3, metadata !2307, metadata !382), !dbg !2308
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !2309, metadata !382), !dbg !2310
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !2311, metadata !382), !dbg !2312
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2313, metadata !382), !dbg !2314
  store %struct._GSList* null, %struct._GSList** %4, align 8, !dbg !2315
  %26 = call %struct.MAIN_WINDOW_REC* @mainwindows_find_lower(%struct.MAIN_WINDOW_REC* null), !dbg !2316
  store %struct.MAIN_WINDOW_REC* %26, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !2318
  br label %27, !dbg !2319

; <label>:27:                                     ; preds = %35, %1
  %28 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !2320
  %29 = icmp ne %struct.MAIN_WINDOW_REC* %28, null, !dbg !2322
  br i1 %29, label %30, label %38, !dbg !2323

; <label>:30:                                     ; preds = %27
  %31 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2325
  %32 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !2327
  %33 = bitcast %struct.MAIN_WINDOW_REC* %32 to i8*, !dbg !2327
  %34 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %31, i8* %33), !dbg !2328
  store %struct._GSList* %34, %struct._GSList** %4, align 8, !dbg !2329
  br label %35, !dbg !2330

; <label>:35:                                     ; preds = %30
  %36 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !2331
  %37 = call %struct.MAIN_WINDOW_REC* @mainwindows_find_lower(%struct.MAIN_WINDOW_REC* %36), !dbg !2332
  store %struct.MAIN_WINDOW_REC* %37, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !2333
  br label %27, !dbg !2334, !llvm.loop !2336

; <label>:38:                                     ; preds = %27
  %39 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2338
  %40 = icmp eq %struct._GSList* %39, null, !dbg !2340
  br i1 %40, label %41, label %42, !dbg !2341

; <label>:41:                                     ; preds = %38
  br label %313, !dbg !2342

; <label>:42:                                     ; preds = %38
  br label %43, !dbg !2343

; <label>:43:                                     ; preds = %179, %42
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2344, metadata !382), !dbg !2348
  store i32 0, i32* %7, align 4, !dbg !2348
  store i32 0, i32* %6, align 4, !dbg !2349
  %44 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2350
  store %struct._GSList* %44, %struct._GSList** %5, align 8, !dbg !2352
  br label %45, !dbg !2353

; <label>:45:                                     ; preds = %99, %43
  %46 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2354
  %47 = icmp ne %struct._GSList* %46, null, !dbg !2357
  br i1 %47, label %48, label %103, !dbg !2358

; <label>:48:                                     ; preds = %45
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2359, metadata !382), !dbg !2361
  call void @llvm.dbg.declare(metadata %struct._GSList** %9, metadata !2362, metadata !382), !dbg !2363
  call void @llvm.dbg.declare(metadata %struct._GSList** %10, metadata !2364, metadata !382), !dbg !2365
  %49 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2366
  %50 = getelementptr inbounds %struct._GSList, %struct._GSList* %49, i32 0, i32 0, !dbg !2367
  %51 = load i8*, i8** %50, align 8, !dbg !2367
  %52 = bitcast i8* %51 to %struct.MAIN_WINDOW_REC*, !dbg !2366
  store %struct.MAIN_WINDOW_REC* %52, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !2368
  %53 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !2369
  %54 = call %struct._GSList* @mainwindows_get_line(%struct.MAIN_WINDOW_REC* %53), !dbg !2370
  store %struct._GSList* %54, %struct._GSList** %9, align 8, !dbg !2371
  %55 = load i32, i32* @screen_height, align 4, !dbg !2372
  %56 = load i32, i32* %2, align 4, !dbg !2373
  %57 = sub nsw i32 %55, %56, !dbg !2374
  store i32 %57, i32* %8, align 4, !dbg !2375
  %58 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !2376
  store %struct._GSList* %58, %struct._GSList** %10, align 8, !dbg !2378
  br label %59, !dbg !2379

; <label>:59:                                     ; preds = %90, %48
  %60 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !2380
  %61 = icmp ne %struct._GSList* %60, null, !dbg !2383
  br i1 %61, label %62, label %94, !dbg !2384

; <label>:62:                                     ; preds = %59
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2385, metadata !382), !dbg !2387
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %12, metadata !2388, metadata !382), !dbg !2389
  %63 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !2390
  %64 = getelementptr inbounds %struct._GSList, %struct._GSList* %63, i32 0, i32 0, !dbg !2391
  %65 = load i8*, i8** %64, align 8, !dbg !2391
  %66 = bitcast i8* %65 to %struct.MAIN_WINDOW_REC*, !dbg !2390
  store %struct.MAIN_WINDOW_REC* %66, %struct.MAIN_WINDOW_REC** %12, align 8, !dbg !2389
  %67 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %12, align 8, !dbg !2392
  %68 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** @active_mainwin, align 8, !dbg !2394
  %69 = icmp eq %struct.MAIN_WINDOW_REC* %67, %68, !dbg !2395
  br i1 %69, label %70, label %75, !dbg !2396

; <label>:70:                                     ; preds = %62
  %71 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2397
  %72 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2399
  %73 = icmp eq %struct._GSList* %71, %72, !dbg !2400
  br i1 %73, label %74, label %75, !dbg !2401

; <label>:74:                                     ; preds = %70
  store i32 1, i32* %7, align 4, !dbg !2402
  br label %75, !dbg !2403

; <label>:75:                                     ; preds = %74, %70, %62
  %76 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %12, align 8, !dbg !2404
  %77 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %76, i32 0, i32 8, !dbg !2405
  %78 = load i32, i32* %77, align 8, !dbg !2405
  %79 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %12, align 8, !dbg !2406
  %80 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %79, i32 0, i32 12, !dbg !2407
  %81 = load i32, i32* %80, align 8, !dbg !2407
  %82 = sub nsw i32 %78, %81, !dbg !2408
  %83 = sub nsw i32 %82, 2, !dbg !2409
  store i32 %83, i32* %11, align 4, !dbg !2410
  %84 = load i32, i32* %11, align 4, !dbg !2411
  %85 = load i32, i32* %8, align 4, !dbg !2413
  %86 = icmp slt i32 %84, %85, !dbg !2414
  br i1 %86, label %87, label %89, !dbg !2415

; <label>:87:                                     ; preds = %75
  %88 = load i32, i32* %11, align 4, !dbg !2416
  store i32 %88, i32* %8, align 4, !dbg !2417
  br label %89, !dbg !2418

; <label>:89:                                     ; preds = %87, %75
  br label %90, !dbg !2419

; <label>:90:                                     ; preds = %89
  %91 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !2420
  %92 = getelementptr inbounds %struct._GSList, %struct._GSList* %91, i32 0, i32 1, !dbg !2422
  %93 = load %struct._GSList*, %struct._GSList** %92, align 8, !dbg !2422
  store %struct._GSList* %93, %struct._GSList** %10, align 8, !dbg !2423
  br label %59, !dbg !2424, !llvm.loop !2425

; <label>:94:                                     ; preds = %59
  %95 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !2427
  call void @g_slist_free(%struct._GSList* %95), !dbg !2428
  %96 = load i32, i32* %8, align 4, !dbg !2429
  %97 = load i32, i32* %6, align 4, !dbg !2430
  %98 = add nsw i32 %97, %96, !dbg !2430
  store i32 %98, i32* %6, align 4, !dbg !2430
  br label %99, !dbg !2431

; <label>:99:                                     ; preds = %94
  %100 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2432
  %101 = getelementptr inbounds %struct._GSList, %struct._GSList* %100, i32 0, i32 1, !dbg !2434
  %102 = load %struct._GSList*, %struct._GSList** %101, align 8, !dbg !2434
  store %struct._GSList* %102, %struct._GSList** %5, align 8, !dbg !2435
  br label %45, !dbg !2436, !llvm.loop !2437

; <label>:103:                                    ; preds = %45
  %104 = load i32, i32* %6, align 4, !dbg !2439
  %105 = load i32, i32* %2, align 4, !dbg !2441
  %106 = sub nsw i32 0, %105, !dbg !2442
  %107 = icmp sge i32 %104, %106, !dbg !2443
  br i1 %107, label %108, label %109, !dbg !2444

; <label>:108:                                    ; preds = %103
  br label %180, !dbg !2445

; <label>:109:                                    ; preds = %103
  %110 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2446
  %111 = getelementptr inbounds %struct._GSList, %struct._GSList* %110, i32 0, i32 0, !dbg !2447
  %112 = load i8*, i8** %111, align 8, !dbg !2447
  %113 = bitcast i8* %112 to %struct.MAIN_WINDOW_REC*, !dbg !2446
  store %struct.MAIN_WINDOW_REC* %113, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !2448
  %114 = load i32, i32* %7, align 4, !dbg !2449
  %115 = icmp ne i32 %114, 0, !dbg !2449
  br i1 %115, label %116, label %128, !dbg !2451

; <label>:116:                                    ; preds = %109
  %117 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2452
  %118 = getelementptr inbounds %struct._GSList, %struct._GSList* %117, i32 0, i32 1, !dbg !2454
  %119 = load %struct._GSList*, %struct._GSList** %118, align 8, !dbg !2454
  %120 = icmp ne %struct._GSList* %119, null, !dbg !2455
  br i1 %120, label %121, label %128, !dbg !2456

; <label>:121:                                    ; preds = %116
  %122 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2457
  %123 = getelementptr inbounds %struct._GSList, %struct._GSList* %122, i32 0, i32 1, !dbg !2458
  %124 = load %struct._GSList*, %struct._GSList** %123, align 8, !dbg !2458
  %125 = getelementptr inbounds %struct._GSList, %struct._GSList* %124, i32 0, i32 0, !dbg !2459
  %126 = load i8*, i8** %125, align 8, !dbg !2459
  %127 = bitcast i8* %126 to %struct.MAIN_WINDOW_REC*, !dbg !2457
  store %struct.MAIN_WINDOW_REC* %127, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !2460
  br label %128, !dbg !2461

; <label>:128:                                    ; preds = %121, %116, %109
  %129 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2462
  %130 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !2463
  %131 = bitcast %struct.MAIN_WINDOW_REC* %130 to i8*, !dbg !2463
  %132 = call %struct._GSList* @g_slist_remove(%struct._GSList* %129, i8* %131), !dbg !2464
  store %struct._GSList* %132, %struct._GSList** %4, align 8, !dbg !2465
  %133 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2466
  %134 = icmp ne %struct._GSList* %133, null, !dbg !2468
  br i1 %134, label %135, label %154, !dbg !2469

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.declare(metadata %struct._GSList** %13, metadata !2470, metadata !382), !dbg !2472
  call void @llvm.dbg.declare(metadata %struct._GSList** %14, metadata !2473, metadata !382), !dbg !2474
  %136 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !2475
  %137 = call %struct._GSList* @mainwindows_get_line(%struct.MAIN_WINDOW_REC* %136), !dbg !2476
  store %struct._GSList* %137, %struct._GSList** %13, align 8, !dbg !2477
  %138 = load %struct._GSList*, %struct._GSList** %13, align 8, !dbg !2478
  store %struct._GSList* %138, %struct._GSList** %14, align 8, !dbg !2480
  br label %139, !dbg !2481

; <label>:139:                                    ; preds = %148, %135
  %140 = load %struct._GSList*, %struct._GSList** %14, align 8, !dbg !2482
  %141 = icmp ne %struct._GSList* %140, null, !dbg !2485
  br i1 %141, label %142, label %152, !dbg !2486

; <label>:142:                                    ; preds = %139
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %15, metadata !2487, metadata !382), !dbg !2489
  %143 = load %struct._GSList*, %struct._GSList** %14, align 8, !dbg !2490
  %144 = getelementptr inbounds %struct._GSList, %struct._GSList* %143, i32 0, i32 0, !dbg !2491
  %145 = load i8*, i8** %144, align 8, !dbg !2491
  %146 = bitcast i8* %145 to %struct.MAIN_WINDOW_REC*, !dbg !2490
  store %struct.MAIN_WINDOW_REC* %146, %struct.MAIN_WINDOW_REC** %15, align 8, !dbg !2489
  %147 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %15, align 8, !dbg !2492
  call void @mainwindow_destroy(%struct.MAIN_WINDOW_REC* %147), !dbg !2493
  br label %148, !dbg !2494

; <label>:148:                                    ; preds = %142
  %149 = load %struct._GSList*, %struct._GSList** %14, align 8, !dbg !2495
  %150 = getelementptr inbounds %struct._GSList, %struct._GSList* %149, i32 0, i32 1, !dbg !2497
  %151 = load %struct._GSList*, %struct._GSList** %150, align 8, !dbg !2497
  store %struct._GSList* %151, %struct._GSList** %14, align 8, !dbg !2498
  br label %139, !dbg !2499, !llvm.loop !2500

; <label>:152:                                    ; preds = %139
  %153 = load %struct._GSList*, %struct._GSList** %13, align 8, !dbg !2502
  call void @g_slist_free(%struct._GSList* %153), !dbg !2503
  br label %179, !dbg !2504

; <label>:154:                                    ; preds = %128
  call void @llvm.dbg.declare(metadata %struct._GSList** %16, metadata !2505, metadata !382), !dbg !2507
  call void @llvm.dbg.declare(metadata %struct._GSList** %17, metadata !2508, metadata !382), !dbg !2509
  %155 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !2510
  %156 = call %struct._GSList* @mainwindows_get_line(%struct.MAIN_WINDOW_REC* %155), !dbg !2511
  store %struct._GSList* %156, %struct._GSList** %16, align 8, !dbg !2512
  %157 = load %struct._GSList*, %struct._GSList** %16, align 8, !dbg !2513
  store %struct._GSList* %157, %struct._GSList** %17, align 8, !dbg !2515
  br label %158, !dbg !2516

; <label>:158:                                    ; preds = %173, %154
  %159 = load %struct._GSList*, %struct._GSList** %17, align 8, !dbg !2517
  %160 = icmp ne %struct._GSList* %159, null, !dbg !2520
  br i1 %160, label %161, label %177, !dbg !2521

; <label>:161:                                    ; preds = %158
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %18, metadata !2522, metadata !382), !dbg !2524
  %162 = load %struct._GSList*, %struct._GSList** %17, align 8, !dbg !2525
  %163 = getelementptr inbounds %struct._GSList, %struct._GSList* %162, i32 0, i32 0, !dbg !2526
  %164 = load i8*, i8** %163, align 8, !dbg !2526
  %165 = bitcast i8* %164 to %struct.MAIN_WINDOW_REC*, !dbg !2525
  store %struct.MAIN_WINDOW_REC* %165, %struct.MAIN_WINDOW_REC** %18, align 8, !dbg !2524
  %166 = load i32, i32* %2, align 4, !dbg !2527
  %167 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %18, align 8, !dbg !2528
  %168 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %167, i32 0, i32 4, !dbg !2529
  %169 = load i32, i32* %168, align 8, !dbg !2530
  %170 = add nsw i32 %169, %166, !dbg !2530
  store i32 %170, i32* %168, align 8, !dbg !2530
  %171 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %18, align 8, !dbg !2531
  %172 = load i32, i32* %2, align 4, !dbg !2532
  call void @mainwindow_resize(%struct.MAIN_WINDOW_REC* %171, i32 0, i32 %172), !dbg !2533
  br label %173, !dbg !2534

; <label>:173:                                    ; preds = %161
  %174 = load %struct._GSList*, %struct._GSList** %17, align 8, !dbg !2535
  %175 = getelementptr inbounds %struct._GSList, %struct._GSList* %174, i32 0, i32 1, !dbg !2537
  %176 = load %struct._GSList*, %struct._GSList** %175, align 8, !dbg !2537
  store %struct._GSList* %176, %struct._GSList** %17, align 8, !dbg !2538
  br label %158, !dbg !2539, !llvm.loop !2540

; <label>:177:                                    ; preds = %158
  %178 = load %struct._GSList*, %struct._GSList** %16, align 8, !dbg !2542
  call void @g_slist_free(%struct._GSList* %178), !dbg !2543
  br label %313, !dbg !2544

; <label>:179:                                    ; preds = %152
  br label %43, !dbg !2545, !llvm.loop !2547

; <label>:180:                                    ; preds = %108
  %181 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2548
  store %struct._GSList* %181, %struct._GSList** %5, align 8, !dbg !2550
  br label %182, !dbg !2551

; <label>:182:                                    ; preds = %307, %180
  %183 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2552
  %184 = icmp ne %struct._GSList* %183, null, !dbg !2555
  br i1 %184, label %185, label %188, !dbg !2556

; <label>:185:                                    ; preds = %182
  %186 = load i32, i32* %2, align 4, !dbg !2557
  %187 = icmp slt i32 %186, 0, !dbg !2559
  br label %188

; <label>:188:                                    ; preds = %185, %182
  %189 = phi i1 [ false, %182 ], [ %187, %185 ]
  br i1 %189, label %190, label %311, !dbg !2560

; <label>:190:                                    ; preds = %188
  call void @llvm.dbg.declare(metadata i32* %19, metadata !2562, metadata !382), !dbg !2564
  call void @llvm.dbg.declare(metadata %struct._GSList** %20, metadata !2565, metadata !382), !dbg !2566
  call void @llvm.dbg.declare(metadata %struct._GSList** %21, metadata !2567, metadata !382), !dbg !2568
  %191 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2569
  %192 = getelementptr inbounds %struct._GSList, %struct._GSList* %191, i32 0, i32 0, !dbg !2570
  %193 = load i8*, i8** %192, align 8, !dbg !2570
  %194 = bitcast i8* %193 to %struct.MAIN_WINDOW_REC*, !dbg !2569
  store %struct.MAIN_WINDOW_REC* %194, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !2571
  %195 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !2572
  %196 = call %struct._GSList* @mainwindows_get_line(%struct.MAIN_WINDOW_REC* %195), !dbg !2573
  store %struct._GSList* %196, %struct._GSList** %20, align 8, !dbg !2574
  %197 = load i32, i32* @screen_height, align 4, !dbg !2575
  %198 = load i32, i32* %2, align 4, !dbg !2576
  %199 = sub nsw i32 %197, %198, !dbg !2577
  store i32 %199, i32* %19, align 4, !dbg !2578
  %200 = load %struct._GSList*, %struct._GSList** %20, align 8, !dbg !2579
  store %struct._GSList* %200, %struct._GSList** %21, align 8, !dbg !2581
  br label %201, !dbg !2582

; <label>:201:                                    ; preds = %223, %190
  %202 = load %struct._GSList*, %struct._GSList** %21, align 8, !dbg !2583
  %203 = icmp ne %struct._GSList* %202, null, !dbg !2586
  br i1 %203, label %204, label %227, !dbg !2587

; <label>:204:                                    ; preds = %201
  call void @llvm.dbg.declare(metadata i32* %22, metadata !2588, metadata !382), !dbg !2590
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %23, metadata !2591, metadata !382), !dbg !2592
  %205 = load %struct._GSList*, %struct._GSList** %21, align 8, !dbg !2593
  %206 = getelementptr inbounds %struct._GSList, %struct._GSList* %205, i32 0, i32 0, !dbg !2594
  %207 = load i8*, i8** %206, align 8, !dbg !2594
  %208 = bitcast i8* %207 to %struct.MAIN_WINDOW_REC*, !dbg !2593
  store %struct.MAIN_WINDOW_REC* %208, %struct.MAIN_WINDOW_REC** %23, align 8, !dbg !2592
  %209 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %23, align 8, !dbg !2595
  %210 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %209, i32 0, i32 8, !dbg !2596
  %211 = load i32, i32* %210, align 8, !dbg !2596
  %212 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %23, align 8, !dbg !2597
  %213 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %212, i32 0, i32 12, !dbg !2598
  %214 = load i32, i32* %213, align 8, !dbg !2598
  %215 = sub nsw i32 %211, %214, !dbg !2599
  %216 = sub nsw i32 %215, 2, !dbg !2600
  store i32 %216, i32* %22, align 4, !dbg !2601
  %217 = load i32, i32* %22, align 4, !dbg !2602
  %218 = load i32, i32* %19, align 4, !dbg !2604
  %219 = icmp slt i32 %217, %218, !dbg !2605
  br i1 %219, label %220, label %222, !dbg !2606

; <label>:220:                                    ; preds = %204
  %221 = load i32, i32* %22, align 4, !dbg !2607
  store i32 %221, i32* %19, align 4, !dbg !2608
  br label %222, !dbg !2609

; <label>:222:                                    ; preds = %220, %204
  br label %223, !dbg !2610

; <label>:223:                                    ; preds = %222
  %224 = load %struct._GSList*, %struct._GSList** %21, align 8, !dbg !2611
  %225 = getelementptr inbounds %struct._GSList, %struct._GSList* %224, i32 0, i32 1, !dbg !2613
  %226 = load %struct._GSList*, %struct._GSList** %225, align 8, !dbg !2613
  store %struct._GSList* %226, %struct._GSList** %21, align 8, !dbg !2614
  br label %201, !dbg !2615, !llvm.loop !2616

; <label>:227:                                    ; preds = %201
  %228 = load i32, i32* %19, align 4, !dbg !2618
  store i32 %228, i32* %6, align 4, !dbg !2619
  %229 = load i32, i32* %6, align 4, !dbg !2620
  %230 = icmp eq i32 %229, 0, !dbg !2622
  br i1 %230, label %231, label %264, !dbg !2623

; <label>:231:                                    ; preds = %227
  %232 = load %struct._GSList*, %struct._GSList** %20, align 8, !dbg !2624
  store %struct._GSList* %232, %struct._GSList** %21, align 8, !dbg !2627
  br label %233, !dbg !2628

; <label>:233:                                    ; preds = %259, %231
  %234 = load %struct._GSList*, %struct._GSList** %21, align 8, !dbg !2629
  %235 = icmp ne %struct._GSList* %234, null, !dbg !2632
  br i1 %235, label %236, label %263, !dbg !2633

; <label>:236:                                    ; preds = %233
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %24, metadata !2634, metadata !382), !dbg !2636
  %237 = load %struct._GSList*, %struct._GSList** %21, align 8, !dbg !2637
  %238 = getelementptr inbounds %struct._GSList, %struct._GSList* %237, i32 0, i32 0, !dbg !2638
  %239 = load i8*, i8** %238, align 8, !dbg !2638
  %240 = bitcast i8* %239 to %struct.MAIN_WINDOW_REC*, !dbg !2637
  store %struct.MAIN_WINDOW_REC* %240, %struct.MAIN_WINDOW_REC** %24, align 8, !dbg !2636
  %241 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %24, align 8, !dbg !2639
  call void @mainwindow_resize(%struct.MAIN_WINDOW_REC* %241, i32 0, i32 0), !dbg !2640
  %242 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %24, align 8, !dbg !2641
  %243 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %242, i32 0, i32 16, !dbg !2642
  %244 = load i8, i8* %243, align 8, !dbg !2643
  %245 = and i8 %244, -3, !dbg !2643
  %246 = or i8 %245, 2, !dbg !2643
  store i8 %246, i8* %243, align 8, !dbg !2643
  %247 = load i32, i32* %2, align 4, !dbg !2644
  %248 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %24, align 8, !dbg !2645
  %249 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %248, i32 0, i32 3, !dbg !2646
  %250 = load i32, i32* %249, align 4, !dbg !2647
  %251 = add nsw i32 %250, %247, !dbg !2647
  store i32 %251, i32* %249, align 4, !dbg !2647
  %252 = load i32, i32* %2, align 4, !dbg !2648
  %253 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %24, align 8, !dbg !2649
  %254 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %253, i32 0, i32 4, !dbg !2650
  %255 = load i32, i32* %254, align 8, !dbg !2651
  %256 = add nsw i32 %255, %252, !dbg !2651
  store i32 %256, i32* %254, align 8, !dbg !2651
  %257 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %24, align 8, !dbg !2652
  %258 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i32 0, i32 0), i32 1, %struct.MAIN_WINDOW_REC* %257), !dbg !2653
  br label %259, !dbg !2654

; <label>:259:                                    ; preds = %236
  %260 = load %struct._GSList*, %struct._GSList** %21, align 8, !dbg !2655
  %261 = getelementptr inbounds %struct._GSList, %struct._GSList* %260, i32 0, i32 1, !dbg !2657
  %262 = load %struct._GSList*, %struct._GSList** %261, align 8, !dbg !2657
  store %struct._GSList* %262, %struct._GSList** %21, align 8, !dbg !2658
  br label %233, !dbg !2659, !llvm.loop !2660

; <label>:263:                                    ; preds = %233
  br label %305, !dbg !2662

; <label>:264:                                    ; preds = %227
  %265 = load i32, i32* %6, align 4, !dbg !2663
  %266 = load i32, i32* %2, align 4, !dbg !2666
  %267 = sub nsw i32 0, %266, !dbg !2667
  %268 = icmp sgt i32 %265, %267, !dbg !2668
  br i1 %268, label %269, label %272, !dbg !2669

; <label>:269:                                    ; preds = %264
  %270 = load i32, i32* %2, align 4, !dbg !2670
  %271 = sub nsw i32 0, %270, !dbg !2672
  store i32 %271, i32* %6, align 4, !dbg !2673
  br label %272, !dbg !2674

; <label>:272:                                    ; preds = %269, %264
  %273 = load %struct._GSList*, %struct._GSList** %20, align 8, !dbg !2675
  store %struct._GSList* %273, %struct._GSList** %21, align 8, !dbg !2677
  br label %274, !dbg !2678

; <label>:274:                                    ; preds = %297, %272
  %275 = load %struct._GSList*, %struct._GSList** %21, align 8, !dbg !2679
  %276 = icmp ne %struct._GSList* %275, null, !dbg !2682
  br i1 %276, label %277, label %301, !dbg !2683

; <label>:277:                                    ; preds = %274
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %25, metadata !2684, metadata !382), !dbg !2686
  %278 = load %struct._GSList*, %struct._GSList** %21, align 8, !dbg !2687
  %279 = getelementptr inbounds %struct._GSList, %struct._GSList* %278, i32 0, i32 0, !dbg !2688
  %280 = load i8*, i8** %279, align 8, !dbg !2688
  %281 = bitcast i8* %280 to %struct.MAIN_WINDOW_REC*, !dbg !2687
  store %struct.MAIN_WINDOW_REC* %281, %struct.MAIN_WINDOW_REC** %25, align 8, !dbg !2686
  %282 = load i32, i32* %2, align 4, !dbg !2689
  %283 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %25, align 8, !dbg !2690
  %284 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %283, i32 0, i32 4, !dbg !2691
  %285 = load i32, i32* %284, align 8, !dbg !2692
  %286 = add nsw i32 %285, %282, !dbg !2692
  store i32 %286, i32* %284, align 8, !dbg !2692
  %287 = load i32, i32* %2, align 4, !dbg !2693
  %288 = load i32, i32* %6, align 4, !dbg !2694
  %289 = add nsw i32 %287, %288, !dbg !2695
  %290 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %25, align 8, !dbg !2696
  %291 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %290, i32 0, i32 3, !dbg !2697
  %292 = load i32, i32* %291, align 4, !dbg !2698
  %293 = add nsw i32 %292, %289, !dbg !2698
  store i32 %293, i32* %291, align 4, !dbg !2698
  %294 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %25, align 8, !dbg !2699
  %295 = load i32, i32* %6, align 4, !dbg !2700
  %296 = sub nsw i32 0, %295, !dbg !2701
  call void @mainwindow_resize(%struct.MAIN_WINDOW_REC* %294, i32 0, i32 %296), !dbg !2702
  br label %297, !dbg !2703

; <label>:297:                                    ; preds = %277
  %298 = load %struct._GSList*, %struct._GSList** %21, align 8, !dbg !2704
  %299 = getelementptr inbounds %struct._GSList, %struct._GSList* %298, i32 0, i32 1, !dbg !2706
  %300 = load %struct._GSList*, %struct._GSList** %299, align 8, !dbg !2706
  store %struct._GSList* %300, %struct._GSList** %21, align 8, !dbg !2707
  br label %274, !dbg !2708, !llvm.loop !2709

; <label>:301:                                    ; preds = %274
  %302 = load i32, i32* %6, align 4, !dbg !2711
  %303 = load i32, i32* %2, align 4, !dbg !2712
  %304 = add nsw i32 %303, %302, !dbg !2712
  store i32 %304, i32* %2, align 4, !dbg !2712
  br label %305

; <label>:305:                                    ; preds = %301, %263
  %306 = load %struct._GSList*, %struct._GSList** %20, align 8, !dbg !2713
  call void @g_slist_free(%struct._GSList* %306), !dbg !2714
  br label %307, !dbg !2715

; <label>:307:                                    ; preds = %305
  %308 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2716
  %309 = getelementptr inbounds %struct._GSList, %struct._GSList* %308, i32 0, i32 1, !dbg !2718
  %310 = load %struct._GSList*, %struct._GSList** %309, align 8, !dbg !2718
  store %struct._GSList* %310, %struct._GSList** %5, align 8, !dbg !2719
  br label %182, !dbg !2720, !llvm.loop !2721

; <label>:311:                                    ; preds = %188
  %312 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2723
  call void @g_slist_free(%struct._GSList* %312), !dbg !2724
  br label %313, !dbg !2725

; <label>:313:                                    ; preds = %311, %177, %41
  ret void, !dbg !2726
}

declare void @irssi_redraw() #2

; Function Attrs: nounwind uwtable
define i32 @mainwindows_reserve_lines(i32, i32) #0 !dbg !2728 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._GSList*, align 8
  %9 = alloca %struct._GSList*, align 8
  %10 = alloca %struct._GSList*, align 8
  %11 = alloca %struct._GSList*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2731, metadata !382), !dbg !2732
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2733, metadata !382), !dbg !2734
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %6, metadata !2735, metadata !382), !dbg !2736
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2737, metadata !382), !dbg !2738
  store i32 -1, i32* %7, align 4, !dbg !2739
  %12 = load i32, i32* %4, align 4, !dbg !2740
  %13 = icmp ne i32 %12, 0, !dbg !2742
  br i1 %13, label %14, label %55, !dbg !2743

; <label>:14:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata %struct._GSList** %8, metadata !2744, metadata !382), !dbg !2746
  call void @llvm.dbg.declare(metadata %struct._GSList** %9, metadata !2747, metadata !382), !dbg !2748
  br label %15, !dbg !2749, !llvm.loop !2750

; <label>:15:                                     ; preds = %14
  %16 = load i32, i32* %4, align 4, !dbg !2751
  %17 = icmp sgt i32 %16, 0, !dbg !2755
  br i1 %17, label %22, label %18, !dbg !2756

; <label>:18:                                     ; preds = %15
  %19 = load i32, i32* @screen_reserved_top, align 4, !dbg !2757
  %20 = load i32, i32* %4, align 4, !dbg !2759
  %21 = icmp sgt i32 %19, %20, !dbg !2760
  br i1 %21, label %22, label %23, !dbg !2761

; <label>:22:                                     ; preds = %18, %15
  br label %24, !dbg !2762

; <label>:23:                                     ; preds = %18
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.mainwindows_reserve_lines, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i32 0, i32 0)), !dbg !2765
  store i32 -1, i32* %3, align 4, !dbg !2768
  br label %101, !dbg !2768

; <label>:24:                                     ; preds = %22
  br label %25, !dbg !2769

; <label>:25:                                     ; preds = %24
  %26 = load i32, i32* @screen_reserved_top, align 4, !dbg !2771
  store i32 %26, i32* %7, align 4, !dbg !2772
  %27 = load i32, i32* %4, align 4, !dbg !2773
  %28 = load i32, i32* @screen_reserved_top, align 4, !dbg !2774
  %29 = add nsw i32 %28, %27, !dbg !2774
  store i32 %29, i32* @screen_reserved_top, align 4, !dbg !2774
  %30 = call %struct.MAIN_WINDOW_REC* @mainwindows_find_lower(%struct.MAIN_WINDOW_REC* null), !dbg !2775
  %31 = call %struct._GSList* @mainwindows_get_line(%struct.MAIN_WINDOW_REC* %30), !dbg !2776
  store %struct._GSList* %31, %struct._GSList** %8, align 8, !dbg !2778
  %32 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !2779
  store %struct._GSList* %32, %struct._GSList** %9, align 8, !dbg !2781
  br label %33, !dbg !2782

; <label>:33:                                     ; preds = %49, %25
  %34 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !2783
  %35 = icmp ne %struct._GSList* %34, null, !dbg !2786
  br i1 %35, label %36, label %53, !dbg !2787

; <label>:36:                                     ; preds = %33
  %37 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !2788
  %38 = getelementptr inbounds %struct._GSList, %struct._GSList* %37, i32 0, i32 0, !dbg !2790
  %39 = load i8*, i8** %38, align 8, !dbg !2790
  %40 = bitcast i8* %39 to %struct.MAIN_WINDOW_REC*, !dbg !2788
  store %struct.MAIN_WINDOW_REC* %40, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !2791
  %41 = load i32, i32* %4, align 4, !dbg !2792
  %42 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !2793
  %43 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %42, i32 0, i32 3, !dbg !2794
  %44 = load i32, i32* %43, align 4, !dbg !2795
  %45 = add nsw i32 %44, %41, !dbg !2795
  store i32 %45, i32* %43, align 4, !dbg !2795
  %46 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !2796
  %47 = load i32, i32* %4, align 4, !dbg !2797
  %48 = sub nsw i32 0, %47, !dbg !2798
  call void @mainwindow_resize(%struct.MAIN_WINDOW_REC* %46, i32 0, i32 %48), !dbg !2799
  br label %49, !dbg !2800

; <label>:49:                                     ; preds = %36
  %50 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !2801
  %51 = getelementptr inbounds %struct._GSList, %struct._GSList* %50, i32 0, i32 1, !dbg !2803
  %52 = load %struct._GSList*, %struct._GSList** %51, align 8, !dbg !2803
  store %struct._GSList* %52, %struct._GSList** %9, align 8, !dbg !2804
  br label %33, !dbg !2805, !llvm.loop !2806

; <label>:53:                                     ; preds = %33
  %54 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !2808
  call void @g_slist_free(%struct._GSList* %54), !dbg !2809
  br label %55, !dbg !2810

; <label>:55:                                     ; preds = %53, %2
  %56 = load i32, i32* %5, align 4, !dbg !2811
  %57 = icmp ne i32 %56, 0, !dbg !2813
  br i1 %57, label %58, label %99, !dbg !2814

; <label>:58:                                     ; preds = %55
  call void @llvm.dbg.declare(metadata %struct._GSList** %10, metadata !2815, metadata !382), !dbg !2817
  call void @llvm.dbg.declare(metadata %struct._GSList** %11, metadata !2818, metadata !382), !dbg !2819
  br label %59, !dbg !2820, !llvm.loop !2821

; <label>:59:                                     ; preds = %58
  %60 = load i32, i32* %5, align 4, !dbg !2822
  %61 = icmp sgt i32 %60, 0, !dbg !2826
  br i1 %61, label %66, label %62, !dbg !2827

; <label>:62:                                     ; preds = %59
  %63 = load i32, i32* @screen_reserved_bottom, align 4, !dbg !2828
  %64 = load i32, i32* %5, align 4, !dbg !2830
  %65 = icmp sgt i32 %63, %64, !dbg !2831
  br i1 %65, label %66, label %67, !dbg !2832

; <label>:66:                                     ; preds = %62, %59
  br label %68, !dbg !2833

; <label>:67:                                     ; preds = %62
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.mainwindows_reserve_lines, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i32 0, i32 0)), !dbg !2836
  store i32 -1, i32* %3, align 4, !dbg !2839
  br label %101, !dbg !2839

; <label>:68:                                     ; preds = %66
  br label %69, !dbg !2840

; <label>:69:                                     ; preds = %68
  %70 = load i32, i32* @screen_reserved_bottom, align 4, !dbg !2842
  store i32 %70, i32* %7, align 4, !dbg !2843
  %71 = load i32, i32* %5, align 4, !dbg !2844
  %72 = load i32, i32* @screen_reserved_bottom, align 4, !dbg !2845
  %73 = add nsw i32 %72, %71, !dbg !2845
  store i32 %73, i32* @screen_reserved_bottom, align 4, !dbg !2845
  %74 = call %struct.MAIN_WINDOW_REC* @mainwindows_find_upper(%struct.MAIN_WINDOW_REC* null), !dbg !2846
  %75 = call %struct._GSList* @mainwindows_get_line(%struct.MAIN_WINDOW_REC* %74), !dbg !2847
  store %struct._GSList* %75, %struct._GSList** %10, align 8, !dbg !2849
  %76 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !2850
  store %struct._GSList* %76, %struct._GSList** %11, align 8, !dbg !2852
  br label %77, !dbg !2853

; <label>:77:                                     ; preds = %93, %69
  %78 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !2854
  %79 = icmp ne %struct._GSList* %78, null, !dbg !2857
  br i1 %79, label %80, label %97, !dbg !2858

; <label>:80:                                     ; preds = %77
  %81 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !2859
  %82 = getelementptr inbounds %struct._GSList, %struct._GSList* %81, i32 0, i32 0, !dbg !2861
  %83 = load i8*, i8** %82, align 8, !dbg !2861
  %84 = bitcast i8* %83 to %struct.MAIN_WINDOW_REC*, !dbg !2859
  store %struct.MAIN_WINDOW_REC* %84, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !2862
  %85 = load i32, i32* %5, align 4, !dbg !2863
  %86 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !2864
  %87 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %86, i32 0, i32 4, !dbg !2865
  %88 = load i32, i32* %87, align 8, !dbg !2866
  %89 = sub nsw i32 %88, %85, !dbg !2866
  store i32 %89, i32* %87, align 8, !dbg !2866
  %90 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !2867
  %91 = load i32, i32* %5, align 4, !dbg !2868
  %92 = sub nsw i32 0, %91, !dbg !2869
  call void @mainwindow_resize(%struct.MAIN_WINDOW_REC* %90, i32 0, i32 %92), !dbg !2870
  br label %93, !dbg !2871

; <label>:93:                                     ; preds = %80
  %94 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !2872
  %95 = getelementptr inbounds %struct._GSList, %struct._GSList* %94, i32 0, i32 1, !dbg !2874
  %96 = load %struct._GSList*, %struct._GSList** %95, align 8, !dbg !2874
  store %struct._GSList* %96, %struct._GSList** %11, align 8, !dbg !2875
  br label %77, !dbg !2876, !llvm.loop !2877

; <label>:97:                                     ; preds = %77
  %98 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !2879
  call void @g_slist_free(%struct._GSList* %98), !dbg !2880
  br label %99, !dbg !2881

; <label>:99:                                     ; preds = %97, %55
  %100 = load i32, i32* %7, align 4, !dbg !2882
  store i32 %100, i32* %3, align 4, !dbg !2883
  br label %101, !dbg !2883

; <label>:101:                                    ; preds = %99, %67, %23
  %102 = load i32, i32* %3, align 4, !dbg !2884
  ret i32 %102, !dbg !2884
}

; Function Attrs: nounwind uwtable
define i32 @mainwindow_set_statusbar_lines(%struct.MAIN_WINDOW_REC*, i32, i32) #0 !dbg !2885 {
  %4 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.MAIN_WINDOW_REC* %0, %struct.MAIN_WINDOW_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %4, metadata !2888, metadata !382), !dbg !2889
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2890, metadata !382), !dbg !2891
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2892, metadata !382), !dbg !2893
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2894, metadata !382), !dbg !2895
  store i32 -1, i32* %7, align 4, !dbg !2896
  %8 = load i32, i32* %5, align 4, !dbg !2897
  %9 = icmp ne i32 %8, 0, !dbg !2899
  br i1 %9, label %10, label %24, !dbg !2900

; <label>:10:                                     ; preds = %3
  %11 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !2901
  %12 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %11, i32 0, i32 10, !dbg !2903
  %13 = load i32, i32* %12, align 8, !dbg !2903
  store i32 %13, i32* %7, align 4, !dbg !2904
  %14 = load i32, i32* %5, align 4, !dbg !2905
  %15 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !2906
  %16 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %15, i32 0, i32 10, !dbg !2907
  %17 = load i32, i32* %16, align 8, !dbg !2908
  %18 = add nsw i32 %17, %14, !dbg !2908
  store i32 %18, i32* %16, align 8, !dbg !2908
  %19 = load i32, i32* %5, align 4, !dbg !2909
  %20 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !2910
  %21 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %20, i32 0, i32 12, !dbg !2911
  %22 = load i32, i32* %21, align 8, !dbg !2912
  %23 = add nsw i32 %22, %19, !dbg !2912
  store i32 %23, i32* %21, align 8, !dbg !2912
  br label %24, !dbg !2913

; <label>:24:                                     ; preds = %10, %3
  %25 = load i32, i32* %6, align 4, !dbg !2914
  %26 = icmp ne i32 %25, 0, !dbg !2916
  br i1 %26, label %27, label %41, !dbg !2917

; <label>:27:                                     ; preds = %24
  %28 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !2918
  %29 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %28, i32 0, i32 11, !dbg !2920
  %30 = load i32, i32* %29, align 4, !dbg !2920
  store i32 %30, i32* %7, align 4, !dbg !2921
  %31 = load i32, i32* %6, align 4, !dbg !2922
  %32 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !2923
  %33 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %32, i32 0, i32 11, !dbg !2924
  %34 = load i32, i32* %33, align 4, !dbg !2925
  %35 = add nsw i32 %34, %31, !dbg !2925
  store i32 %35, i32* %33, align 4, !dbg !2925
  %36 = load i32, i32* %6, align 4, !dbg !2926
  %37 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !2927
  %38 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %37, i32 0, i32 12, !dbg !2928
  %39 = load i32, i32* %38, align 8, !dbg !2929
  %40 = add nsw i32 %39, %36, !dbg !2929
  store i32 %40, i32* %38, align 8, !dbg !2929
  br label %41, !dbg !2930

; <label>:41:                                     ; preds = %27, %24
  %42 = load i32, i32* %5, align 4, !dbg !2931
  %43 = load i32, i32* %6, align 4, !dbg !2933
  %44 = add nsw i32 %42, %43, !dbg !2934
  %45 = icmp ne i32 %44, 0, !dbg !2935
  br i1 %45, label %46, label %52, !dbg !2936

; <label>:46:                                     ; preds = %41
  %47 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !2937
  %48 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %47, i32 0, i32 16, !dbg !2938
  %49 = load i8, i8* %48, align 8, !dbg !2939
  %50 = and i8 %49, -3, !dbg !2939
  %51 = or i8 %50, 2, !dbg !2939
  store i8 %51, i8* %48, align 8, !dbg !2939
  br label %52, !dbg !2937

; <label>:52:                                     ; preds = %46, %41
  %53 = load i32, i32* %7, align 4, !dbg !2940
  ret i32 %53, !dbg !2941
}

; Function Attrs: nounwind uwtable
define void @mainwindow_set_size(%struct.MAIN_WINDOW_REC*, i32, i32) #0 !dbg !2942 {
  %4 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.MAIN_WINDOW_REC* %0, %struct.MAIN_WINDOW_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %4, metadata !2943, metadata !382), !dbg !2944
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2945, metadata !382), !dbg !2946
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2947, metadata !382), !dbg !2948
  %7 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !2949
  %8 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %7, i32 0, i32 8, !dbg !2950
  %9 = load i32, i32* %8, align 8, !dbg !2950
  %10 = load i32, i32* %5, align 4, !dbg !2951
  %11 = sub nsw i32 %10, %9, !dbg !2951
  store i32 %11, i32* %5, align 4, !dbg !2951
  %12 = load i32, i32* %5, align 4, !dbg !2952
  %13 = icmp slt i32 %12, 0, !dbg !2954
  br i1 %13, label %14, label %20, !dbg !2955

; <label>:14:                                     ; preds = %3
  %15 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !2956
  %16 = load i32, i32* %5, align 4, !dbg !2957
  %17 = sub nsw i32 0, %16, !dbg !2958
  %18 = load i32, i32* %6, align 4, !dbg !2959
  %19 = call i32 @mainwindow_shrink(%struct.MAIN_WINDOW_REC* %15, i32 %17, i32 %18), !dbg !2960
  br label %25, !dbg !2960

; <label>:20:                                     ; preds = %3
  %21 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !2961
  %22 = load i32, i32* %5, align 4, !dbg !2962
  %23 = load i32, i32* %6, align 4, !dbg !2963
  %24 = call i32 @mainwindow_grow(%struct.MAIN_WINDOW_REC* %21, i32 %22, i32 %23), !dbg !2964
  br label %25

; <label>:25:                                     ; preds = %20, %14
  ret void, !dbg !2965
}

; Function Attrs: nounwind uwtable
define internal i32 @mainwindow_shrink(%struct.MAIN_WINDOW_REC*, i32, i32) #0 !dbg !2966 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.MAIN_WINDOW_REC* %0, %struct.MAIN_WINDOW_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %5, metadata !2967, metadata !382), !dbg !2968
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2969, metadata !382), !dbg !2970
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2971, metadata !382), !dbg !2972
  br label %8, !dbg !2973, !llvm.loop !2974

; <label>:8:                                      ; preds = %3
  %9 = load i32, i32* %6, align 4, !dbg !2975
  %10 = icmp sge i32 %9, 0, !dbg !2979
  br i1 %10, label %11, label %12, !dbg !2975

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !2980

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.mainwindow_shrink, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0)), !dbg !2983
  store i32 0, i32* %4, align 4, !dbg !2986
  br label %51, !dbg !2986

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !2987

; <label>:14:                                     ; preds = %13
  %15 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !2989
  %16 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %15, i32 0, i32 8, !dbg !2991
  %17 = load i32, i32* %16, align 8, !dbg !2991
  %18 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !2992
  %19 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %18, i32 0, i32 12, !dbg !2993
  %20 = load i32, i32* %19, align 8, !dbg !2993
  %21 = sub nsw i32 %17, %20, !dbg !2994
  %22 = load i32, i32* %6, align 4, !dbg !2995
  %23 = sub nsw i32 %21, %22, !dbg !2996
  %24 = icmp slt i32 %23, 2, !dbg !2997
  br i1 %24, label %25, label %26, !dbg !2998

; <label>:25:                                     ; preds = %14
  store i32 0, i32* %4, align 4, !dbg !2999
  br label %51, !dbg !2999

; <label>:26:                                     ; preds = %14
  %27 = load i32, i32* %7, align 4, !dbg !3000
  %28 = icmp ne i32 %27, 0, !dbg !3000
  br i1 %28, label %29, label %34, !dbg !3002

; <label>:29:                                     ; preds = %26
  %30 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !3003
  %31 = load i32, i32* %6, align 4, !dbg !3005
  %32 = call i32 @try_grow_lower(%struct.MAIN_WINDOW_REC* %30, i32 %31), !dbg !3006
  %33 = icmp ne i32 %32, 0, !dbg !3006
  br i1 %33, label %50, label %34, !dbg !3007

; <label>:34:                                     ; preds = %29, %26
  %35 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !3008
  %36 = load i32, i32* %6, align 4, !dbg !3011
  %37 = call i32 @try_grow_upper(%struct.MAIN_WINDOW_REC* %35, i32 %36), !dbg !3012
  %38 = icmp ne i32 %37, 0, !dbg !3012
  br i1 %38, label %49, label %39, !dbg !3013

; <label>:39:                                     ; preds = %34
  %40 = load i32, i32* %7, align 4, !dbg !3014
  %41 = icmp ne i32 %40, 0, !dbg !3014
  br i1 %41, label %47, label %42, !dbg !3017

; <label>:42:                                     ; preds = %39
  %43 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !3018
  %44 = load i32, i32* %6, align 4, !dbg !3020
  %45 = call i32 @try_grow_lower(%struct.MAIN_WINDOW_REC* %43, i32 %44), !dbg !3021
  %46 = icmp ne i32 %45, 0, !dbg !3021
  br i1 %46, label %48, label %47, !dbg !3022

; <label>:47:                                     ; preds = %42, %39
  store i32 0, i32* %4, align 4, !dbg !3023
  br label %51, !dbg !3023

; <label>:48:                                     ; preds = %42
  br label %49, !dbg !3024

; <label>:49:                                     ; preds = %48, %34
  br label %50, !dbg !3025

; <label>:50:                                     ; preds = %49, %29
  store i32 1, i32* %4, align 4, !dbg !3026
  br label %51, !dbg !3026

; <label>:51:                                     ; preds = %50, %47, %25, %12
  %52 = load i32, i32* %4, align 4, !dbg !3027
  ret i32 %52, !dbg !3027
}

; Function Attrs: nounwind uwtable
define internal i32 @mainwindow_grow(%struct.MAIN_WINDOW_REC*, i32, i32) #0 !dbg !3028 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.MAIN_WINDOW_REC* %0, %struct.MAIN_WINDOW_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %5, metadata !3029, metadata !382), !dbg !3030
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3031, metadata !382), !dbg !3032
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3033, metadata !382), !dbg !3034
  %8 = load i32, i32* %7, align 4, !dbg !3035
  %9 = icmp ne i32 %8, 0, !dbg !3035
  br i1 %9, label %10, label %15, !dbg !3037

; <label>:10:                                     ; preds = %3
  %11 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !3038
  %12 = load i32, i32* %6, align 4, !dbg !3040
  %13 = call i32 @try_shrink_lower(%struct.MAIN_WINDOW_REC* %11, i32 %12), !dbg !3041
  %14 = icmp ne i32 %13, 0, !dbg !3041
  br i1 %14, label %31, label %15, !dbg !3042

; <label>:15:                                     ; preds = %10, %3
  %16 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !3043
  %17 = load i32, i32* %6, align 4, !dbg !3046
  %18 = call i32 @try_shrink_upper(%struct.MAIN_WINDOW_REC* %16, i32 %17), !dbg !3047
  %19 = icmp ne i32 %18, 0, !dbg !3047
  br i1 %19, label %30, label %20, !dbg !3048

; <label>:20:                                     ; preds = %15
  %21 = load i32, i32* %7, align 4, !dbg !3049
  %22 = icmp ne i32 %21, 0, !dbg !3049
  br i1 %22, label %28, label %23, !dbg !3052

; <label>:23:                                     ; preds = %20
  %24 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !3053
  %25 = load i32, i32* %6, align 4, !dbg !3055
  %26 = call i32 @try_shrink_lower(%struct.MAIN_WINDOW_REC* %24, i32 %25), !dbg !3056
  %27 = icmp ne i32 %26, 0, !dbg !3056
  br i1 %27, label %29, label %28, !dbg !3057

; <label>:28:                                     ; preds = %23, %20
  store i32 0, i32* %4, align 4, !dbg !3058
  br label %32, !dbg !3058

; <label>:29:                                     ; preds = %23
  br label %30, !dbg !3059

; <label>:30:                                     ; preds = %29, %15
  br label %31, !dbg !3060

; <label>:31:                                     ; preds = %30, %10
  store i32 1, i32* %4, align 4, !dbg !3061
  br label %32, !dbg !3061

; <label>:32:                                     ; preds = %31, %28
  %33 = load i32, i32* %4, align 4, !dbg !3062
  ret i32 %33, !dbg !3062
}

; Function Attrs: nounwind uwtable
define void @mainwindow_set_rsize(%struct.MAIN_WINDOW_REC*, i32) #0 !dbg !3063 {
  %3 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %4 = alloca i32, align 4
  store %struct.MAIN_WINDOW_REC* %0, %struct.MAIN_WINDOW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %3, metadata !3066, metadata !382), !dbg !3067
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3068, metadata !382), !dbg !3069
  %5 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !3070
  %6 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %5, i32 0, i32 7, !dbg !3071
  %7 = load i32, i32* %6, align 4, !dbg !3071
  %8 = load i32, i32* %4, align 4, !dbg !3072
  %9 = sub nsw i32 %8, %7, !dbg !3072
  store i32 %9, i32* %4, align 4, !dbg !3072
  %10 = load i32, i32* %4, align 4, !dbg !3073
  %11 = icmp slt i32 %10, 0, !dbg !3075
  br i1 %11, label %12, label %17, !dbg !3076

; <label>:12:                                     ; preds = %2
  %13 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !3077
  %14 = load i32, i32* %4, align 4, !dbg !3078
  %15 = sub nsw i32 0, %14, !dbg !3079
  %16 = call i32 @mainwindow_rshrink(%struct.MAIN_WINDOW_REC* %13, i32 %15), !dbg !3080
  br label %21, !dbg !3080

; <label>:17:                                     ; preds = %2
  %18 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !3081
  %19 = load i32, i32* %4, align 4, !dbg !3082
  %20 = call i32 @mainwindow_rgrow(%struct.MAIN_WINDOW_REC* %18, i32 %19), !dbg !3083
  br label %21

; <label>:21:                                     ; preds = %17, %12
  ret void, !dbg !3084
}

; Function Attrs: nounwind uwtable
define internal i32 @mainwindow_rshrink(%struct.MAIN_WINDOW_REC*, i32) #0 !dbg !3085 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %5 = alloca i32, align 4
  store %struct.MAIN_WINDOW_REC* %0, %struct.MAIN_WINDOW_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %4, metadata !3088, metadata !382), !dbg !3089
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3090, metadata !382), !dbg !3091
  br label %6, !dbg !3092, !llvm.loop !3093

; <label>:6:                                      ; preds = %2
  %7 = load i32, i32* %5, align 4, !dbg !3094
  %8 = icmp sge i32 %7, 0, !dbg !3098
  br i1 %8, label %9, label %10, !dbg !3094

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !3099

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.mainwindow_rshrink, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0)), !dbg !3102
  store i32 0, i32* %3, align 4, !dbg !3105
  br label %37, !dbg !3105

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !3106

; <label>:12:                                     ; preds = %11
  %13 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !3108
  %14 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %13, i32 0, i32 7, !dbg !3110
  %15 = load i32, i32* %14, align 4, !dbg !3110
  %16 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !3111
  %17 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %16, i32 0, i32 15, !dbg !3112
  %18 = load i32, i32* %17, align 4, !dbg !3112
  %19 = sub nsw i32 %15, %18, !dbg !3113
  %20 = load i32, i32* %5, align 4, !dbg !3114
  %21 = sub nsw i32 %19, %20, !dbg !3115
  %22 = icmp slt i32 %21, 10, !dbg !3116
  br i1 %22, label %23, label %24, !dbg !3117

; <label>:23:                                     ; preds = %12
  store i32 0, i32* %3, align 4, !dbg !3118
  br label %37, !dbg !3118

; <label>:24:                                     ; preds = %12
  %25 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !3119
  %26 = load i32, i32* %5, align 4, !dbg !3121
  %27 = call i32 @try_rgrow_right(%struct.MAIN_WINDOW_REC* %25, i32 %26), !dbg !3122
  %28 = icmp ne i32 %27, 0, !dbg !3122
  br i1 %28, label %36, label %29, !dbg !3123

; <label>:29:                                     ; preds = %24
  %30 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !3124
  %31 = load i32, i32* %5, align 4, !dbg !3127
  %32 = call i32 @try_rgrow_left(%struct.MAIN_WINDOW_REC* %30, i32 %31), !dbg !3128
  %33 = icmp ne i32 %32, 0, !dbg !3128
  br i1 %33, label %35, label %34, !dbg !3129

; <label>:34:                                     ; preds = %29
  store i32 0, i32* %3, align 4, !dbg !3130
  br label %37, !dbg !3130

; <label>:35:                                     ; preds = %29
  br label %36, !dbg !3131

; <label>:36:                                     ; preds = %35, %24
  store i32 1, i32* %3, align 4, !dbg !3132
  br label %37, !dbg !3132

; <label>:37:                                     ; preds = %36, %34, %23, %10
  %38 = load i32, i32* %3, align 4, !dbg !3133
  ret i32 %38, !dbg !3133
}

; Function Attrs: nounwind uwtable
define internal i32 @mainwindow_rgrow(%struct.MAIN_WINDOW_REC*, i32) #0 !dbg !3134 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %5 = alloca i32, align 4
  store %struct.MAIN_WINDOW_REC* %0, %struct.MAIN_WINDOW_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %4, metadata !3135, metadata !382), !dbg !3136
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3137, metadata !382), !dbg !3138
  %6 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !3139
  %7 = load i32, i32* %5, align 4, !dbg !3141
  %8 = call i32 @try_rshrink_right(%struct.MAIN_WINDOW_REC* %6, i32 %7), !dbg !3142
  %9 = icmp ne i32 %8, 0, !dbg !3142
  br i1 %9, label %17, label %10, !dbg !3143

; <label>:10:                                     ; preds = %2
  %11 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !3144
  %12 = load i32, i32* %5, align 4, !dbg !3147
  %13 = call i32 @try_rshrink_left(%struct.MAIN_WINDOW_REC* %11, i32 %12), !dbg !3148
  %14 = icmp ne i32 %13, 0, !dbg !3148
  br i1 %14, label %16, label %15, !dbg !3149

; <label>:15:                                     ; preds = %10
  store i32 0, i32* %3, align 4, !dbg !3150
  br label %18, !dbg !3150

; <label>:16:                                     ; preds = %10
  br label %17, !dbg !3151

; <label>:17:                                     ; preds = %16, %2
  store i32 1, i32* %3, align 4, !dbg !3152
  br label %18, !dbg !3152

; <label>:18:                                     ; preds = %17, %15
  %19 = load i32, i32* %3, align 4, !dbg !3153
  ret i32 %19, !dbg !3153
}

; Function Attrs: nounwind uwtable
define void @mainwindows_redraw_dirty() #0 !dbg !3154 {
  %1 = alloca %struct._GSList*, align 8
  %2 = alloca %struct.MAIN_WINDOW_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %1, metadata !3155, metadata !382), !dbg !3156
  %3 = load %struct._GSList*, %struct._GSList** @mainwindows, align 8, !dbg !3157
  store %struct._GSList* %3, %struct._GSList** %1, align 8, !dbg !3159
  br label %4, !dbg !3160

; <label>:4:                                      ; preds = %71, %0
  %5 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !3161
  %6 = icmp ne %struct._GSList* %5, null, !dbg !3164
  br i1 %6, label %7, label %75, !dbg !3165

; <label>:7:                                      ; preds = %4
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %2, metadata !3166, metadata !382), !dbg !3168
  %8 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !3169
  %9 = getelementptr inbounds %struct._GSList, %struct._GSList* %8, i32 0, i32 0, !dbg !3170
  %10 = load i8*, i8** %9, align 8, !dbg !3170
  %11 = bitcast i8* %10 to %struct.MAIN_WINDOW_REC*, !dbg !3169
  store %struct.MAIN_WINDOW_REC* %11, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !3168
  %12 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !3171
  %13 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %12, i32 0, i32 16, !dbg !3173
  %14 = load i8, i8* %13, align 8, !dbg !3173
  %15 = lshr i8 %14, 1, !dbg !3173
  %16 = and i8 %15, 1, !dbg !3173
  %17 = zext i8 %16 to i32, !dbg !3173
  %18 = icmp ne i32 %17, 0, !dbg !3171
  br i1 %18, label %19, label %25, !dbg !3174

; <label>:19:                                     ; preds = %7
  %20 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !3175
  %21 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %20, i32 0, i32 16, !dbg !3177
  %22 = load i8, i8* %21, align 8, !dbg !3178
  %23 = and i8 %22, -3, !dbg !3178
  store i8 %23, i8* %21, align 8, !dbg !3178
  %24 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !3179
  call void @mainwindow_resize_windows(%struct.MAIN_WINDOW_REC* %24), !dbg !3180
  br label %25, !dbg !3181

; <label>:25:                                     ; preds = %19, %7
  %26 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !3182
  %27 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %26, i32 0, i32 16, !dbg !3184
  %28 = load i8, i8* %27, align 8, !dbg !3184
  %29 = and i8 %28, 1, !dbg !3184
  %30 = zext i8 %29 to i32, !dbg !3184
  %31 = icmp ne i32 %30, 0, !dbg !3182
  br i1 %31, label %32, label %45, !dbg !3185

; <label>:32:                                     ; preds = %25
  %33 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !3186
  %34 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %33, i32 0, i32 16, !dbg !3188
  %35 = load i8, i8* %34, align 8, !dbg !3189
  %36 = and i8 %35, -2, !dbg !3189
  store i8 %36, i8* %34, align 8, !dbg !3189
  %37 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !3190
  %38 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %37, i32 0, i32 0, !dbg !3191
  %39 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %38, align 8, !dbg !3191
  %40 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %39, i32 0, i32 20, !dbg !3192
  %41 = load i8*, i8** %40, align 8, !dbg !3192
  %42 = bitcast i8* %41 to %struct.GUI_WINDOW_REC*, !dbg !3193
  %43 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %42, i32 0, i32 1, !dbg !3194
  %44 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %43, align 8, !dbg !3194
  call void @textbuffer_view_redraw(%struct._TEXT_BUFFER_VIEW_REC* %44), !dbg !3195
  br label %70, !dbg !3196

; <label>:45:                                     ; preds = %25
  %46 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !3197
  %47 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %46, i32 0, i32 0, !dbg !3200
  %48 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %47, align 8, !dbg !3200
  %49 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %48, i32 0, i32 20, !dbg !3201
  %50 = load i8*, i8** %49, align 8, !dbg !3201
  %51 = bitcast i8* %50 to %struct.GUI_WINDOW_REC*, !dbg !3202
  %52 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %51, i32 0, i32 1, !dbg !3203
  %53 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %52, align 8, !dbg !3203
  %54 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %53, i32 0, i32 16, !dbg !3204
  %55 = load i8, i8* %54, align 8, !dbg !3204
  %56 = lshr i8 %55, 6, !dbg !3204
  %57 = and i8 %56, 1, !dbg !3204
  %58 = zext i8 %57 to i32, !dbg !3204
  %59 = icmp ne i32 %58, 0, !dbg !3205
  br i1 %59, label %60, label %69, !dbg !3205

; <label>:60:                                     ; preds = %45
  %61 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !3206
  %62 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %61, i32 0, i32 0, !dbg !3208
  %63 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %62, align 8, !dbg !3208
  %64 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %63, i32 0, i32 20, !dbg !3209
  %65 = load i8*, i8** %64, align 8, !dbg !3209
  %66 = bitcast i8* %65 to %struct.GUI_WINDOW_REC*, !dbg !3210
  %67 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %66, i32 0, i32 1, !dbg !3211
  %68 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %67, align 8, !dbg !3211
  call void @textbuffer_view_redraw(%struct._TEXT_BUFFER_VIEW_REC* %68), !dbg !3212
  br label %69, !dbg !3213

; <label>:69:                                     ; preds = %60, %45
  br label %70

; <label>:70:                                     ; preds = %69, %32
  br label %71, !dbg !3214

; <label>:71:                                     ; preds = %70
  %72 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !3215
  %73 = getelementptr inbounds %struct._GSList, %struct._GSList* %72, i32 0, i32 1, !dbg !3217
  %74 = load %struct._GSList*, %struct._GSList** %73, align 8, !dbg !3217
  store %struct._GSList* %74, %struct._GSList** %1, align 8, !dbg !3218
  br label %4, !dbg !3219, !llvm.loop !3220

; <label>:75:                                     ; preds = %4
  ret void, !dbg !3222
}

; Function Attrs: nounwind uwtable
define internal void @mainwindow_resize_windows(%struct.MAIN_WINDOW_REC*) #0 !dbg !3223 {
  %2 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._WINDOW_REC*, align 8
  store %struct.MAIN_WINDOW_REC* %0, %struct.MAIN_WINDOW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %2, metadata !3224, metadata !382), !dbg !3225
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !3226, metadata !382), !dbg !3227
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3228, metadata !382), !dbg !3229
  %6 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !3230
  %7 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %6, i32 0, i32 1, !dbg !3231
  %8 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %7, align 8, !dbg !3231
  %9 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !3232
  %10 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %9, i32 0, i32 5, !dbg !3233
  %11 = load i32, i32* %10, align 4, !dbg !3233
  %12 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !3234
  %13 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %12, i32 0, i32 13, !dbg !3235
  %14 = load i32, i32* %13, align 4, !dbg !3235
  %15 = add nsw i32 %11, %14, !dbg !3236
  %16 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !3237
  %17 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %16, i32 0, i32 3, !dbg !3238
  %18 = load i32, i32* %17, align 4, !dbg !3238
  %19 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !3239
  %20 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %19, i32 0, i32 10, !dbg !3240
  %21 = load i32, i32* %20, align 8, !dbg !3240
  %22 = add nsw i32 %18, %21, !dbg !3241
  %23 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !3242
  %24 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %23, i32 0, i32 7, !dbg !3243
  %25 = load i32, i32* %24, align 4, !dbg !3243
  %26 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !3244
  %27 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %26, i32 0, i32 15, !dbg !3245
  %28 = load i32, i32* %27, align 4, !dbg !3245
  %29 = sub nsw i32 %25, %28, !dbg !3246
  %30 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !3247
  %31 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %30, i32 0, i32 8, !dbg !3248
  %32 = load i32, i32* %31, align 8, !dbg !3248
  %33 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !3249
  %34 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %33, i32 0, i32 12, !dbg !3250
  %35 = load i32, i32* %34, align 8, !dbg !3250
  %36 = sub nsw i32 %32, %35, !dbg !3251
  call void @term_window_move(%struct._TERM_WINDOW* %8, i32 %15, i32 %22, i32 %29, i32 %36), !dbg !3252
  store i32 0, i32* %4, align 4, !dbg !3253
  %37 = load %struct._GSList*, %struct._GSList** @windows, align 8, !dbg !3254
  store %struct._GSList* %37, %struct._GSList** %3, align 8, !dbg !3256
  br label %38, !dbg !3257

; <label>:38:                                     ; preds = %100, %1
  %39 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !3258
  %40 = icmp ne %struct._GSList* %39, null, !dbg !3261
  br i1 %40, label %41, label %104, !dbg !3262

; <label>:41:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %5, metadata !3263, metadata !382), !dbg !3265
  %42 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !3266
  %43 = getelementptr inbounds %struct._GSList, %struct._GSList* %42, i32 0, i32 0, !dbg !3267
  %44 = load i8*, i8** %43, align 8, !dbg !3267
  %45 = bitcast i8* %44 to %struct._WINDOW_REC*, !dbg !3266
  store %struct._WINDOW_REC* %45, %struct._WINDOW_REC** %5, align 8, !dbg !3265
  %46 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !3268
  %47 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %46, i32 0, i32 20, !dbg !3270
  %48 = load i8*, i8** %47, align 8, !dbg !3270
  %49 = icmp ne i8* %48, null, !dbg !3271
  br i1 %49, label %50, label %99, !dbg !3272

; <label>:50:                                     ; preds = %41
  %51 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !3273
  %52 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %51, i32 0, i32 20, !dbg !3274
  %53 = load i8*, i8** %52, align 8, !dbg !3274
  %54 = bitcast i8* %53 to %struct.GUI_WINDOW_REC*, !dbg !3275
  %55 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %54, i32 0, i32 0, !dbg !3276
  %56 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %55, align 8, !dbg !3276
  %57 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !3277
  %58 = icmp eq %struct.MAIN_WINDOW_REC* %56, %57, !dbg !3278
  br i1 %58, label %59, label %99, !dbg !3279

; <label>:59:                                     ; preds = %50
  %60 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !3280
  %61 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %60, i32 0, i32 2, !dbg !3281
  %62 = load i32, i32* %61, align 8, !dbg !3281
  %63 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !3282
  %64 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %63, i32 0, i32 7, !dbg !3283
  %65 = load i32, i32* %64, align 4, !dbg !3283
  %66 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !3284
  %67 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %66, i32 0, i32 15, !dbg !3285
  %68 = load i32, i32* %67, align 4, !dbg !3285
  %69 = sub nsw i32 %65, %68, !dbg !3286
  %70 = icmp eq i32 %62, %69, !dbg !3287
  br i1 %70, label %71, label %83, !dbg !3288

; <label>:71:                                     ; preds = %59
  %72 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !3289
  %73 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %72, i32 0, i32 3, !dbg !3291
  %74 = load i32, i32* %73, align 4, !dbg !3291
  %75 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !3292
  %76 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %75, i32 0, i32 8, !dbg !3293
  %77 = load i32, i32* %76, align 8, !dbg !3293
  %78 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !3294
  %79 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %78, i32 0, i32 12, !dbg !3295
  %80 = load i32, i32* %79, align 8, !dbg !3295
  %81 = sub nsw i32 %77, %80, !dbg !3296
  %82 = icmp eq i32 %74, %81, !dbg !3297
  br i1 %82, label %99, label %83, !dbg !3298

; <label>:83:                                     ; preds = %71, %59
  store i32 1, i32* %4, align 4, !dbg !3300
  %84 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !3302
  %85 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !3303
  %86 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %85, i32 0, i32 7, !dbg !3304
  %87 = load i32, i32* %86, align 4, !dbg !3304
  %88 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !3305
  %89 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %88, i32 0, i32 15, !dbg !3306
  %90 = load i32, i32* %89, align 4, !dbg !3306
  %91 = sub nsw i32 %87, %90, !dbg !3307
  %92 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !3308
  %93 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %92, i32 0, i32 8, !dbg !3309
  %94 = load i32, i32* %93, align 8, !dbg !3309
  %95 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !3310
  %96 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %95, i32 0, i32 12, !dbg !3311
  %97 = load i32, i32* %96, align 8, !dbg !3311
  %98 = sub nsw i32 %94, %97, !dbg !3312
  call void @gui_window_resize(%struct._WINDOW_REC* %84, i32 %91, i32 %98), !dbg !3313
  br label %99, !dbg !3314

; <label>:99:                                     ; preds = %83, %71, %50, %41
  br label %100, !dbg !3315

; <label>:100:                                    ; preds = %99
  %101 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !3316
  %102 = getelementptr inbounds %struct._GSList, %struct._GSList* %101, i32 0, i32 1, !dbg !3318
  %103 = load %struct._GSList*, %struct._GSList** %102, align 8, !dbg !3318
  store %struct._GSList* %103, %struct._GSList** %3, align 8, !dbg !3319
  br label %38, !dbg !3320, !llvm.loop !3321

; <label>:104:                                    ; preds = %38
  %105 = load i32, i32* %4, align 4, !dbg !3323
  %106 = icmp ne i32 %105, 0, !dbg !3323
  br i1 %106, label %107, label %110, !dbg !3325

; <label>:107:                                    ; preds = %104
  %108 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !3326
  %109 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.37, i32 0, i32 0), i32 1, %struct.MAIN_WINDOW_REC* %108), !dbg !3327
  br label %110, !dbg !3327

; <label>:110:                                    ; preds = %107, %104
  ret void, !dbg !3328
}

declare void @textbuffer_view_redraw(%struct._TEXT_BUFFER_VIEW_REC*) #2

; Function Attrs: nounwind uwtable
define void @mainwindows_init() #0 !dbg !3329 {
  %1 = load i32, i32* @term_width, align 4, !dbg !3330
  store i32 %1, i32* @screen_width, align 4, !dbg !3331
  %2 = load i32, i32* @term_height, align 4, !dbg !3332
  store i32 %2, i32* @screen_height, align 4, !dbg !3333
  store %struct._GSList* null, %struct._GSList** @mainwindows, align 8, !dbg !3334
  store %struct.MAIN_WINDOW_REC* null, %struct.MAIN_WINDOW_REC** @active_mainwin, align 8, !dbg !3335
  %3 = call noalias i8* @g_malloc0_n(i64 1, i64 16), !dbg !3336
  %4 = bitcast i8* %3 to %struct.MAIN_WINDOW_BORDER_REC*, !dbg !3337
  store %struct.MAIN_WINDOW_BORDER_REC* %4, %struct.MAIN_WINDOW_BORDER_REC** @clrtoeol_info, align 8, !dbg !3338
  store i32 0, i32* @screen_reserved_bottom, align 4, !dbg !3339
  store i32 0, i32* @screen_reserved_top, align 4, !dbg !3340
  store i32 0, i32* @screen_reserved_right, align 4, !dbg !3341
  store i32 0, i32* @screen_reserved_left, align 4, !dbg !3342
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_window_grow to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3343
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_window_shrink to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3344
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_window_size to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3345
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_window_balance to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3346
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_window_hide to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3347
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_window_show to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3348
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_window_up to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3349
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_window_down to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3350
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, i8*)* @cmd_window_left to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3351
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_window_right to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3352
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_window_dup to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3353
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_window_ddown to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3354
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_window_dleft to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3355
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_window_dright to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3356
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_window_stick to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3357
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_window_move_left to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3358
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_window_move_right to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3359
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_window_move_up to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3360
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_window_move_down to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3361
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_window_move_dleft to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3362
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_window_move_dright to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3363
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_window_rgrow to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3364
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_window_rshrink to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3365
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_window_rsize to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3366
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_window_rbalance to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3367
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_window_rshow to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3368
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*)* @sig_window_print_info to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3369
  ret void, !dbg !3370
}

declare void @command_bind_full(i8*, i32, i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @cmd_window_grow(i8*) #0 !dbg !3371 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3374, metadata !382), !dbg !3375
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3376, metadata !382), !dbg !3377
  %4 = load i8*, i8** %2, align 8, !dbg !3378
  %5 = load i8, i8* %4, align 1, !dbg !3379
  %6 = sext i8 %5 to i32, !dbg !3379
  %7 = icmp eq i32 %6, 0, !dbg !3380
  br i1 %7, label %8, label %9, !dbg !3379

; <label>:8:                                      ; preds = %1
  br label %12, !dbg !3381

; <label>:9:                                      ; preds = %1
  %10 = load i8*, i8** %2, align 8, !dbg !3383
  %11 = call i32 @atoi(i8* %10) #4, !dbg !3385
  br label %12, !dbg !3386

; <label>:12:                                     ; preds = %9, %8
  %13 = phi i32 [ 1, %8 ], [ %11, %9 ], !dbg !3387
  store i32 %13, i32* %3, align 4, !dbg !3389
  %14 = load i32, i32* %3, align 4, !dbg !3390
  call void @mainwindow_grow_int(i32 %14), !dbg !3391
  ret void, !dbg !3392
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_shrink(i8*) #0 !dbg !3393 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3394, metadata !382), !dbg !3395
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3396, metadata !382), !dbg !3397
  %4 = load i8*, i8** %2, align 8, !dbg !3398
  %5 = load i8, i8* %4, align 1, !dbg !3399
  %6 = sext i8 %5 to i32, !dbg !3399
  %7 = icmp eq i32 %6, 0, !dbg !3400
  br i1 %7, label %8, label %9, !dbg !3399

; <label>:8:                                      ; preds = %1
  br label %12, !dbg !3401

; <label>:9:                                      ; preds = %1
  %10 = load i8*, i8** %2, align 8, !dbg !3403
  %11 = call i32 @atoi(i8* %10) #4, !dbg !3405
  br label %12, !dbg !3406

; <label>:12:                                     ; preds = %9, %8
  %13 = phi i32 [ 1, %8 ], [ %11, %9 ], !dbg !3407
  store i32 %13, i32* %3, align 4, !dbg !3409
  %14 = load i32, i32* %3, align 4, !dbg !3410
  %15 = icmp slt i32 %14, -2147483647, !dbg !3412
  br i1 %15, label %16, label %17, !dbg !3413

; <label>:16:                                     ; preds = %12
  store i32 -2147483647, i32* %3, align 4, !dbg !3414
  br label %17, !dbg !3416

; <label>:17:                                     ; preds = %16, %12
  %18 = load i32, i32* %3, align 4, !dbg !3417
  %19 = sub nsw i32 0, %18, !dbg !3418
  call void @mainwindow_grow_int(i32 %19), !dbg !3419
  ret void, !dbg !3420
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_size(i8*) #0 !dbg !3421 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3422, metadata !382), !dbg !3423
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3424, metadata !382), !dbg !3425
  %4 = load i8*, i8** %2, align 8, !dbg !3426
  %5 = call i32 @is_numeric(i8* %4, i8 signext 0), !dbg !3428
  %6 = icmp ne i32 %5, 0, !dbg !3428
  br i1 %6, label %8, label %7, !dbg !3429

; <label>:7:                                      ; preds = %1
  br label %35, !dbg !3430

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %2, align 8, !dbg !3432
  %10 = call i32 @atoi(i8* %9) #4, !dbg !3433
  store i32 %10, i32* %3, align 4, !dbg !3434
  %11 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !3435
  %12 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %11, i32 0, i32 20, !dbg !3436
  %13 = load i8*, i8** %12, align 8, !dbg !3436
  %14 = bitcast i8* %13 to %struct.GUI_WINDOW_REC*, !dbg !3437
  %15 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %14, i32 0, i32 0, !dbg !3438
  %16 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %15, align 8, !dbg !3438
  %17 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %16, i32 0, i32 8, !dbg !3439
  %18 = load i32, i32* %17, align 8, !dbg !3439
  %19 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !3440
  %20 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %19, i32 0, i32 20, !dbg !3441
  %21 = load i8*, i8** %20, align 8, !dbg !3441
  %22 = bitcast i8* %21 to %struct.GUI_WINDOW_REC*, !dbg !3442
  %23 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %22, i32 0, i32 0, !dbg !3443
  %24 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %23, align 8, !dbg !3443
  %25 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %24, i32 0, i32 12, !dbg !3444
  %26 = load i32, i32* %25, align 8, !dbg !3444
  %27 = sub nsw i32 %18, %26, !dbg !3445
  %28 = load i32, i32* %3, align 4, !dbg !3446
  %29 = sub nsw i32 %28, %27, !dbg !3446
  store i32 %29, i32* %3, align 4, !dbg !3446
  %30 = load i32, i32* %3, align 4, !dbg !3447
  %31 = icmp slt i32 %30, -2147483647, !dbg !3449
  br i1 %31, label %32, label %33, !dbg !3450

; <label>:32:                                     ; preds = %8
  store i32 -2147483647, i32* %3, align 4, !dbg !3451
  br label %33, !dbg !3453

; <label>:33:                                     ; preds = %32, %8
  %34 = load i32, i32* %3, align 4, !dbg !3454
  call void @mainwindow_grow_int(i32 %34), !dbg !3455
  br label %35, !dbg !3456

; <label>:35:                                     ; preds = %33, %7
  ret void, !dbg !3457
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_balance() #0 !dbg !3459 {
  %1 = alloca %struct._GSList*, align 8
  %2 = alloca %struct._GSList*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %12 = alloca %struct.MAIN_WINDOW_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %1, metadata !3460, metadata !382), !dbg !3461
  call void @llvm.dbg.declare(metadata %struct._GSList** %2, metadata !3462, metadata !382), !dbg !3463
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !3464, metadata !382), !dbg !3465
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !3466, metadata !382), !dbg !3467
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3468, metadata !382), !dbg !3469
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3470, metadata !382), !dbg !3471
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3472, metadata !382), !dbg !3473
  call void @llvm.dbg.declare(metadata i32* %8, metadata !3474, metadata !382), !dbg !3475
  call void @llvm.dbg.declare(metadata i32* %9, metadata !3476, metadata !382), !dbg !3477
  call void @llvm.dbg.declare(metadata i32* %10, metadata !3478, metadata !382), !dbg !3479
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %11, metadata !3480, metadata !382), !dbg !3481
  %13 = load %struct._GSList*, %struct._GSList** @mainwindows, align 8, !dbg !3482
  %14 = call i32 @g_slist_length(%struct._GSList* %13), !dbg !3483
  store i32 %14, i32* %8, align 4, !dbg !3484
  %15 = load i32, i32* %8, align 4, !dbg !3485
  %16 = icmp eq i32 %15, 1, !dbg !3487
  br i1 %16, label %17, label %18, !dbg !3488

; <label>:17:                                     ; preds = %0
  br label %129, !dbg !3489

; <label>:18:                                     ; preds = %0
  store %struct._GSList* null, %struct._GSList** %1, align 8, !dbg !3491
  store i32 0, i32* %8, align 4, !dbg !3492
  %19 = call %struct.MAIN_WINDOW_REC* @mainwindows_find_lower(%struct.MAIN_WINDOW_REC* null), !dbg !3493
  store %struct.MAIN_WINDOW_REC* %19, %struct.MAIN_WINDOW_REC** %11, align 8, !dbg !3495
  br label %20, !dbg !3496

; <label>:20:                                     ; preds = %30, %18
  %21 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %11, align 8, !dbg !3497
  %22 = icmp ne %struct.MAIN_WINDOW_REC* %21, null, !dbg !3499
  br i1 %22, label %23, label %33, !dbg !3500

; <label>:23:                                     ; preds = %20
  %24 = load i32, i32* %8, align 4, !dbg !3502
  %25 = add nsw i32 %24, 1, !dbg !3502
  store i32 %25, i32* %8, align 4, !dbg !3502
  %26 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !3504
  %27 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %11, align 8, !dbg !3505
  %28 = bitcast %struct.MAIN_WINDOW_REC* %27 to i8*, !dbg !3505
  %29 = call %struct._GSList* @g_slist_append(%struct._GSList* %26, i8* %28), !dbg !3506
  store %struct._GSList* %29, %struct._GSList** %1, align 8, !dbg !3507
  br label %30, !dbg !3508

; <label>:30:                                     ; preds = %23
  %31 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %11, align 8, !dbg !3509
  %32 = call %struct.MAIN_WINDOW_REC* @mainwindows_find_lower(%struct.MAIN_WINDOW_REC* %31), !dbg !3510
  store %struct.MAIN_WINDOW_REC* %32, %struct.MAIN_WINDOW_REC** %11, align 8, !dbg !3511
  br label %20, !dbg !3512, !llvm.loop !3514

; <label>:33:                                     ; preds = %20
  %34 = load i32, i32* @term_height, align 4, !dbg !3516
  %35 = load i32, i32* @screen_reserved_top, align 4, !dbg !3517
  %36 = sub nsw i32 %34, %35, !dbg !3518
  %37 = load i32, i32* @screen_reserved_bottom, align 4, !dbg !3519
  %38 = sub nsw i32 %36, %37, !dbg !3520
  store i32 %38, i32* %5, align 4, !dbg !3521
  %39 = load i32, i32* %5, align 4, !dbg !3522
  %40 = load i32, i32* %8, align 4, !dbg !3523
  %41 = sdiv i32 %39, %40, !dbg !3524
  store i32 %41, i32* %6, align 4, !dbg !3525
  %42 = load i32, i32* %5, align 4, !dbg !3526
  %43 = load i32, i32* %8, align 4, !dbg !3527
  %44 = srem i32 %42, %43, !dbg !3528
  store i32 %44, i32* %7, align 4, !dbg !3529
  %45 = load i32, i32* @screen_reserved_top, align 4, !dbg !3530
  store i32 %45, i32* %9, align 4, !dbg !3531
  %46 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !3532
  store %struct._GSList* %46, %struct._GSList** %2, align 8, !dbg !3534
  br label %47, !dbg !3535

; <label>:47:                                     ; preds = %123, %33
  %48 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !3536
  %49 = icmp ne %struct._GSList* %48, null, !dbg !3539
  br i1 %49, label %50, label %127, !dbg !3540

; <label>:50:                                     ; preds = %47
  %51 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !3541
  %52 = getelementptr inbounds %struct._GSList, %struct._GSList* %51, i32 0, i32 0, !dbg !3543
  %53 = load i8*, i8** %52, align 8, !dbg !3543
  %54 = bitcast i8* %53 to %struct.MAIN_WINDOW_REC*, !dbg !3541
  store %struct.MAIN_WINDOW_REC* %54, %struct.MAIN_WINDOW_REC** %11, align 8, !dbg !3544
  %55 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %11, align 8, !dbg !3545
  %56 = call %struct._GSList* @mainwindows_get_line(%struct.MAIN_WINDOW_REC* %55), !dbg !3546
  store %struct._GSList* %56, %struct._GSList** %3, align 8, !dbg !3547
  %57 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !3548
  store %struct._GSList* %57, %struct._GSList** %4, align 8, !dbg !3550
  br label %58, !dbg !3551

; <label>:58:                                     ; preds = %104, %50
  %59 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !3552
  %60 = icmp ne %struct._GSList* %59, null, !dbg !3555
  br i1 %60, label %61, label %108, !dbg !3556

; <label>:61:                                     ; preds = %58
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %12, metadata !3557, metadata !382), !dbg !3559
  %62 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !3560
  %63 = getelementptr inbounds %struct._GSList, %struct._GSList* %62, i32 0, i32 0, !dbg !3561
  %64 = load i8*, i8** %63, align 8, !dbg !3561
  %65 = bitcast i8* %64 to %struct.MAIN_WINDOW_REC*, !dbg !3560
  store %struct.MAIN_WINDOW_REC* %65, %struct.MAIN_WINDOW_REC** %12, align 8, !dbg !3559
  %66 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %12, align 8, !dbg !3562
  %67 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %66, i32 0, i32 8, !dbg !3563
  %68 = load i32, i32* %67, align 8, !dbg !3563
  store i32 %68, i32* %10, align 4, !dbg !3564
  %69 = load i32, i32* %9, align 4, !dbg !3565
  %70 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %12, align 8, !dbg !3566
  %71 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %70, i32 0, i32 3, !dbg !3567
  store i32 %69, i32* %71, align 4, !dbg !3568
  %72 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %12, align 8, !dbg !3569
  %73 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %72, i32 0, i32 3, !dbg !3570
  %74 = load i32, i32* %73, align 4, !dbg !3570
  %75 = load i32, i32* %6, align 4, !dbg !3571
  %76 = add nsw i32 %74, %75, !dbg !3572
  %77 = sub nsw i32 %76, 1, !dbg !3573
  %78 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %12, align 8, !dbg !3574
  %79 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %78, i32 0, i32 4, !dbg !3575
  store i32 %77, i32* %79, align 8, !dbg !3576
  %80 = load i32, i32* %7, align 4, !dbg !3577
  %81 = icmp sgt i32 %80, 0, !dbg !3579
  br i1 %81, label %82, label %87, !dbg !3580

; <label>:82:                                     ; preds = %61
  %83 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %12, align 8, !dbg !3581
  %84 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %83, i32 0, i32 4, !dbg !3583
  %85 = load i32, i32* %84, align 8, !dbg !3584
  %86 = add nsw i32 %85, 1, !dbg !3584
  store i32 %86, i32* %84, align 8, !dbg !3584
  br label %87, !dbg !3585

; <label>:87:                                     ; preds = %82, %61
  %88 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %12, align 8, !dbg !3586
  %89 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %88, i32 0, i32 4, !dbg !3587
  %90 = load i32, i32* %89, align 8, !dbg !3587
  %91 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %12, align 8, !dbg !3588
  %92 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %91, i32 0, i32 3, !dbg !3589
  %93 = load i32, i32* %92, align 4, !dbg !3589
  %94 = sub nsw i32 %90, %93, !dbg !3590
  %95 = add nsw i32 %94, 1, !dbg !3591
  %96 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %12, align 8, !dbg !3592
  %97 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %96, i32 0, i32 8, !dbg !3593
  store i32 %95, i32* %97, align 8, !dbg !3594
  %98 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %12, align 8, !dbg !3595
  %99 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %12, align 8, !dbg !3596
  %100 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %99, i32 0, i32 8, !dbg !3597
  %101 = load i32, i32* %100, align 8, !dbg !3597
  %102 = load i32, i32* %10, align 4, !dbg !3598
  %103 = sub nsw i32 %101, %102, !dbg !3599
  call void @mainwindow_resize(%struct.MAIN_WINDOW_REC* %98, i32 0, i32 %103), !dbg !3600
  br label %104, !dbg !3601

; <label>:104:                                    ; preds = %87
  %105 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !3602
  %106 = getelementptr inbounds %struct._GSList, %struct._GSList* %105, i32 0, i32 1, !dbg !3604
  %107 = load %struct._GSList*, %struct._GSList** %106, align 8, !dbg !3604
  store %struct._GSList* %107, %struct._GSList** %4, align 8, !dbg !3605
  br label %58, !dbg !3606, !llvm.loop !3607

; <label>:108:                                    ; preds = %58
  %109 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !3609
  %110 = icmp ne %struct._GSList* %109, null, !dbg !3611
  br i1 %110, label %111, label %117, !dbg !3612

; <label>:111:                                    ; preds = %108
  %112 = load i32, i32* %7, align 4, !dbg !3613
  %113 = icmp sgt i32 %112, 0, !dbg !3615
  br i1 %113, label %114, label %117, !dbg !3616

; <label>:114:                                    ; preds = %111
  %115 = load i32, i32* %7, align 4, !dbg !3617
  %116 = add nsw i32 %115, -1, !dbg !3617
  store i32 %116, i32* %7, align 4, !dbg !3617
  br label %117, !dbg !3619

; <label>:117:                                    ; preds = %114, %111, %108
  %118 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %11, align 8, !dbg !3620
  %119 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %118, i32 0, i32 4, !dbg !3621
  %120 = load i32, i32* %119, align 8, !dbg !3621
  %121 = add nsw i32 %120, 1, !dbg !3622
  store i32 %121, i32* %9, align 4, !dbg !3623
  %122 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !3624
  call void @g_slist_free(%struct._GSList* %122), !dbg !3625
  br label %123, !dbg !3626

; <label>:123:                                    ; preds = %117
  %124 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !3627
  %125 = getelementptr inbounds %struct._GSList, %struct._GSList* %124, i32 0, i32 1, !dbg !3629
  %126 = load %struct._GSList*, %struct._GSList** %125, align 8, !dbg !3629
  store %struct._GSList* %126, %struct._GSList** %2, align 8, !dbg !3630
  br label %47, !dbg !3631, !llvm.loop !3632

; <label>:127:                                    ; preds = %47
  %128 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !3634
  call void @g_slist_free(%struct._GSList* %128), !dbg !3635
  call void @mainwindows_redraw(), !dbg !3636
  br label %129, !dbg !3637

; <label>:129:                                    ; preds = %127, %17
  ret void, !dbg !3638
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_hide(i8*) #0 !dbg !3640 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._WINDOW_REC*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3641, metadata !382), !dbg !3642
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !3643, metadata !382), !dbg !3644
  %4 = load %struct._GSList*, %struct._GSList** @mainwindows, align 8, !dbg !3645
  %5 = getelementptr inbounds %struct._GSList, %struct._GSList* %4, i32 0, i32 1, !dbg !3647
  %6 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !3647
  %7 = icmp eq %struct._GSList* %6, null, !dbg !3648
  br i1 %7, label %8, label %10, !dbg !3649

; <label>:8:                                      ; preds = %1
  %9 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !3650
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), %struct._WINDOW_REC* %9, i32 262144, i32 11), !dbg !3652
  br label %88, !dbg !3653

; <label>:10:                                     ; preds = %1
  %11 = load i8*, i8** %2, align 8, !dbg !3654
  %12 = load i8, i8* %11, align 1, !dbg !3656
  %13 = sext i8 %12 to i32, !dbg !3656
  %14 = icmp eq i32 %13, 0, !dbg !3657
  br i1 %14, label %15, label %17, !dbg !3658

; <label>:15:                                     ; preds = %10
  %16 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !3659
  store %struct._WINDOW_REC* %16, %struct._WINDOW_REC** %3, align 8, !dbg !3660
  br label %38, !dbg !3661

; <label>:17:                                     ; preds = %10
  %18 = load i8*, i8** %2, align 8, !dbg !3662
  %19 = call i32 @is_numeric(i8* %18, i8 signext 0), !dbg !3664
  %20 = icmp ne i32 %19, 0, !dbg !3664
  br i1 %20, label %21, label %31, !dbg !3665

; <label>:21:                                     ; preds = %17
  %22 = load i8*, i8** %2, align 8, !dbg !3666
  %23 = call i32 @atoi(i8* %22) #4, !dbg !3668
  %24 = call %struct._WINDOW_REC* @window_find_refnum(i32 %23), !dbg !3669
  store %struct._WINDOW_REC* %24, %struct._WINDOW_REC** %3, align 8, !dbg !3671
  %25 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !3672
  %26 = icmp eq %struct._WINDOW_REC* %25, null, !dbg !3674
  br i1 %26, label %27, label %30, !dbg !3675

; <label>:27:                                     ; preds = %21
  %28 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !3676
  %29 = load i8*, i8** %2, align 8, !dbg !3678
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), %struct._WINDOW_REC* %28, i32 1048576, i32 9, i8* %29), !dbg !3679
  br label %30, !dbg !3680

; <label>:30:                                     ; preds = %27, %21
  br label %37, !dbg !3681

; <label>:31:                                     ; preds = %17
  %32 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !3682
  %33 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %32, i32 0, i32 6, !dbg !3684
  %34 = load %struct._SERVER_REC*, %struct._SERVER_REC** %33, align 8, !dbg !3684
  %35 = load i8*, i8** %2, align 8, !dbg !3685
  %36 = call %struct._WINDOW_REC* @window_find_item(%struct._SERVER_REC* %34, i8* %35), !dbg !3686
  store %struct._WINDOW_REC* %36, %struct._WINDOW_REC** %3, align 8, !dbg !3687
  br label %37

; <label>:37:                                     ; preds = %31, %30
  br label %38

; <label>:38:                                     ; preds = %37, %15
  %39 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !3688
  %40 = icmp eq %struct._WINDOW_REC* %39, null, !dbg !3690
  br i1 %40, label %52, label %41, !dbg !3691

; <label>:41:                                     ; preds = %38
  %42 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !3692
  %43 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %42, i32 0, i32 20, !dbg !3694
  %44 = load i8*, i8** %43, align 8, !dbg !3694
  %45 = bitcast i8* %44 to %struct.GUI_WINDOW_REC*, !dbg !3695
  %46 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %45, i32 0, i32 0, !dbg !3696
  %47 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %46, align 8, !dbg !3696
  %48 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %47, i32 0, i32 0, !dbg !3697
  %49 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %48, align 8, !dbg !3697
  %50 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !3698
  %51 = icmp eq %struct._WINDOW_REC* %49, %50, !dbg !3699
  br i1 %51, label %53, label %52, !dbg !3700

; <label>:52:                                     ; preds = %41, %38
  br label %88, !dbg !3701

; <label>:53:                                     ; preds = %41
  %54 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !3702
  %55 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %54, i32 0, i32 20, !dbg !3704
  %56 = load i8*, i8** %55, align 8, !dbg !3704
  %57 = bitcast i8* %56 to %struct.GUI_WINDOW_REC*, !dbg !3705
  %58 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %57, i32 0, i32 0, !dbg !3706
  %59 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %58, align 8, !dbg !3706
  %60 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %59, i32 0, i32 2, !dbg !3707
  %61 = load i32, i32* %60, align 8, !dbg !3707
  %62 = icmp ne i32 %61, 0, !dbg !3708
  br i1 %62, label %63, label %69, !dbg !3709

; <label>:63:                                     ; preds = %53
  %64 = call i32 @settings_get_bool(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i32 0, i32 0)), !dbg !3710
  %65 = icmp ne i32 %64, 0, !dbg !3710
  br i1 %65, label %68, label %66, !dbg !3713

; <label>:66:                                     ; preds = %63
  %67 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !3714
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), %struct._WINDOW_REC* %67, i32 1048576, i32 12), !dbg !3716
  br label %88, !dbg !3717

; <label>:68:                                     ; preds = %63
  br label %69, !dbg !3718

; <label>:69:                                     ; preds = %68, %53
  %70 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !3719
  %71 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %70, i32 0, i32 20, !dbg !3720
  %72 = load i8*, i8** %71, align 8, !dbg !3720
  %73 = bitcast i8* %72 to %struct.GUI_WINDOW_REC*, !dbg !3721
  %74 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %73, i32 0, i32 0, !dbg !3722
  %75 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %74, align 8, !dbg !3722
  call void @mainwindow_destroy(%struct.MAIN_WINDOW_REC* %75), !dbg !3723
  %76 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** @active_mainwin, align 8, !dbg !3724
  %77 = icmp eq %struct.MAIN_WINDOW_REC* %76, null, !dbg !3726
  br i1 %77, label %78, label %88, !dbg !3727

; <label>:78:                                     ; preds = %69
  %79 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !3728
  %80 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %79, i32 0, i32 20, !dbg !3730
  %81 = load i8*, i8** %80, align 8, !dbg !3730
  %82 = bitcast i8* %81 to %struct.GUI_WINDOW_REC*, !dbg !3731
  %83 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %82, i32 0, i32 0, !dbg !3732
  %84 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %83, align 8, !dbg !3732
  store %struct.MAIN_WINDOW_REC* %84, %struct.MAIN_WINDOW_REC** @active_mainwin, align 8, !dbg !3733
  %85 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** @active_mainwin, align 8, !dbg !3734
  %86 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %85, i32 0, i32 0, !dbg !3735
  %87 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %86, align 8, !dbg !3735
  call void @window_set_active(%struct._WINDOW_REC* %87), !dbg !3736
  br label %88, !dbg !3737

; <label>:88:                                     ; preds = %8, %52, %66, %78, %69
  ret void, !dbg !3738
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_show(i8*) #0 !dbg !3739 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3740, metadata !382), !dbg !3741
  %3 = load i8*, i8** %2, align 8, !dbg !3742
  call void @_cmd_window_show_opt(i8* %3, i32 0), !dbg !3743
  ret void, !dbg !3744
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_up() #0 !dbg !3745 {
  %1 = alloca %struct.MAIN_WINDOW_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %1, metadata !3746, metadata !382), !dbg !3747
  %2 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** @active_mainwin, align 8, !dbg !3748
  %3 = call %struct.MAIN_WINDOW_REC* @mainwindows_find_left_upper(%struct.MAIN_WINDOW_REC* %2), !dbg !3749
  store %struct.MAIN_WINDOW_REC* %3, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !3750
  %4 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !3751
  %5 = icmp eq %struct.MAIN_WINDOW_REC* %4, null, !dbg !3753
  br i1 %5, label %6, label %8, !dbg !3754

; <label>:6:                                      ; preds = %0
  %7 = call %struct.MAIN_WINDOW_REC* @mainwindows_find_left_upper(%struct.MAIN_WINDOW_REC* null), !dbg !3755
  store %struct.MAIN_WINDOW_REC* %7, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !3756
  br label %8, !dbg !3757

; <label>:8:                                      ; preds = %6, %0
  %9 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !3758
  %10 = icmp ne %struct.MAIN_WINDOW_REC* %9, null, !dbg !3760
  br i1 %10, label %11, label %15, !dbg !3761

; <label>:11:                                     ; preds = %8
  %12 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !3762
  %13 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %12, i32 0, i32 0, !dbg !3763
  %14 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %13, align 8, !dbg !3763
  call void @window_set_active(%struct._WINDOW_REC* %14), !dbg !3764
  br label %15, !dbg !3764

; <label>:15:                                     ; preds = %11, %8
  ret void, !dbg !3765
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_down() #0 !dbg !3766 {
  %1 = alloca %struct.MAIN_WINDOW_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %1, metadata !3767, metadata !382), !dbg !3768
  %2 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** @active_mainwin, align 8, !dbg !3769
  %3 = call %struct.MAIN_WINDOW_REC* @mainwindows_find_lower_right(%struct.MAIN_WINDOW_REC* %2), !dbg !3770
  store %struct.MAIN_WINDOW_REC* %3, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !3771
  %4 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !3772
  %5 = icmp eq %struct.MAIN_WINDOW_REC* %4, null, !dbg !3774
  br i1 %5, label %6, label %8, !dbg !3775

; <label>:6:                                      ; preds = %0
  %7 = call %struct.MAIN_WINDOW_REC* @mainwindows_find_lower_right(%struct.MAIN_WINDOW_REC* null), !dbg !3776
  store %struct.MAIN_WINDOW_REC* %7, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !3777
  br label %8, !dbg !3778

; <label>:8:                                      ; preds = %6, %0
  %9 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !3779
  %10 = icmp ne %struct.MAIN_WINDOW_REC* %9, null, !dbg !3781
  br i1 %10, label %11, label %15, !dbg !3782

; <label>:11:                                     ; preds = %8
  %12 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !3783
  %13 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %12, i32 0, i32 0, !dbg !3784
  %14 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %13, align 8, !dbg !3784
  call void @window_set_active(%struct._WINDOW_REC* %14), !dbg !3785
  br label %15, !dbg !3785

; <label>:15:                                     ; preds = %11, %8
  ret void, !dbg !3786
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_left(i8*, %struct._SERVER_REC*, i8*) #0 !dbg !3787 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3790, metadata !382), !dbg !3791
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !3792, metadata !382), !dbg !3793
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3794, metadata !382), !dbg !3795
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3796, metadata !382), !dbg !3797
  %8 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !3798
  %9 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %8, i32 0, i32 0, !dbg !3799
  %10 = load i32, i32* %9, align 8, !dbg !3799
  %11 = call i32 @window_refnum_left(i32 %10, i32 1), !dbg !3800
  store i32 %11, i32* %7, align 4, !dbg !3801
  %12 = load i32, i32* %7, align 4, !dbg !3802
  %13 = icmp ne i32 %12, -1, !dbg !3804
  br i1 %13, label %14, label %17, !dbg !3805

; <label>:14:                                     ; preds = %3
  %15 = load i32, i32* %7, align 4, !dbg !3806
  %16 = call %struct._WINDOW_REC* @window_find_refnum(i32 %15), !dbg !3807
  call void @window_set_active(%struct._WINDOW_REC* %16), !dbg !3808
  br label %17, !dbg !3810

; <label>:17:                                     ; preds = %14, %3
  ret void, !dbg !3811
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_right() #0 !dbg !3812 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3813, metadata !382), !dbg !3814
  %2 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !3815
  %3 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %2, i32 0, i32 0, !dbg !3816
  %4 = load i32, i32* %3, align 8, !dbg !3816
  %5 = call i32 @window_refnum_right(i32 %4, i32 1), !dbg !3817
  store i32 %5, i32* %1, align 4, !dbg !3818
  %6 = load i32, i32* %1, align 4, !dbg !3819
  %7 = icmp ne i32 %6, -1, !dbg !3821
  br i1 %7, label %8, label %11, !dbg !3822

; <label>:8:                                      ; preds = %0
  %9 = load i32, i32* %1, align 4, !dbg !3823
  %10 = call %struct._WINDOW_REC* @window_find_refnum(i32 %9), !dbg !3824
  call void @window_set_active(%struct._WINDOW_REC* %10), !dbg !3825
  br label %11, !dbg !3827

; <label>:11:                                     ; preds = %8, %0
  ret void, !dbg !3828
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_dup() #0 !dbg !3829 {
  %1 = alloca %struct.MAIN_WINDOW_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %1, metadata !3830, metadata !382), !dbg !3831
  %2 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** @active_mainwin, align 8, !dbg !3832
  %3 = call %struct.MAIN_WINDOW_REC* @mainwindows_find_upper(%struct.MAIN_WINDOW_REC* %2), !dbg !3833
  store %struct.MAIN_WINDOW_REC* %3, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !3834
  %4 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !3835
  %5 = icmp eq %struct.MAIN_WINDOW_REC* %4, null, !dbg !3837
  br i1 %5, label %6, label %8, !dbg !3838

; <label>:6:                                      ; preds = %0
  %7 = call %struct.MAIN_WINDOW_REC* @mainwindows_find_upper(%struct.MAIN_WINDOW_REC* null), !dbg !3839
  store %struct.MAIN_WINDOW_REC* %7, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !3840
  br label %8, !dbg !3841

; <label>:8:                                      ; preds = %6, %0
  %9 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !3842
  %10 = icmp ne %struct.MAIN_WINDOW_REC* %9, null, !dbg !3844
  br i1 %10, label %11, label %15, !dbg !3845

; <label>:11:                                     ; preds = %8
  %12 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !3846
  %13 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %12, i32 0, i32 0, !dbg !3847
  %14 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %13, align 8, !dbg !3847
  call void @window_set_active(%struct._WINDOW_REC* %14), !dbg !3848
  br label %15, !dbg !3848

; <label>:15:                                     ; preds = %11, %8
  ret void, !dbg !3849
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_ddown() #0 !dbg !3850 {
  %1 = alloca %struct.MAIN_WINDOW_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %1, metadata !3851, metadata !382), !dbg !3852
  %2 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** @active_mainwin, align 8, !dbg !3853
  %3 = call %struct.MAIN_WINDOW_REC* @mainwindows_find_lower(%struct.MAIN_WINDOW_REC* %2), !dbg !3854
  store %struct.MAIN_WINDOW_REC* %3, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !3855
  %4 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !3856
  %5 = icmp eq %struct.MAIN_WINDOW_REC* %4, null, !dbg !3858
  br i1 %5, label %6, label %8, !dbg !3859

; <label>:6:                                      ; preds = %0
  %7 = call %struct.MAIN_WINDOW_REC* @mainwindows_find_lower(%struct.MAIN_WINDOW_REC* null), !dbg !3860
  store %struct.MAIN_WINDOW_REC* %7, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !3861
  br label %8, !dbg !3862

; <label>:8:                                      ; preds = %6, %0
  %9 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !3863
  %10 = icmp ne %struct.MAIN_WINDOW_REC* %9, null, !dbg !3865
  br i1 %10, label %11, label %15, !dbg !3866

; <label>:11:                                     ; preds = %8
  %12 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !3867
  %13 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %12, i32 0, i32 0, !dbg !3868
  %14 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %13, align 8, !dbg !3868
  call void @window_set_active(%struct._WINDOW_REC* %14), !dbg !3869
  br label %15, !dbg !3869

; <label>:15:                                     ; preds = %11, %8
  ret void, !dbg !3870
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_dleft() #0 !dbg !3871 {
  %1 = alloca %struct.MAIN_WINDOW_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %1, metadata !3872, metadata !382), !dbg !3873
  %2 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** @active_mainwin, align 8, !dbg !3874
  %3 = call %struct.MAIN_WINDOW_REC* @mainwindows_find_left(%struct.MAIN_WINDOW_REC* %2, i32 0), !dbg !3875
  store %struct.MAIN_WINDOW_REC* %3, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !3876
  %4 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !3877
  %5 = icmp eq %struct.MAIN_WINDOW_REC* %4, null, !dbg !3879
  br i1 %5, label %6, label %9, !dbg !3880

; <label>:6:                                      ; preds = %0
  %7 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** @active_mainwin, align 8, !dbg !3881
  %8 = call %struct.MAIN_WINDOW_REC* @mainwindows_find_left(%struct.MAIN_WINDOW_REC* %7, i32 1), !dbg !3882
  store %struct.MAIN_WINDOW_REC* %8, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !3883
  br label %9, !dbg !3884

; <label>:9:                                      ; preds = %6, %0
  %10 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !3885
  %11 = icmp ne %struct.MAIN_WINDOW_REC* %10, null, !dbg !3887
  br i1 %11, label %12, label %16, !dbg !3888

; <label>:12:                                     ; preds = %9
  %13 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !3889
  %14 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %13, i32 0, i32 0, !dbg !3890
  %15 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %14, align 8, !dbg !3890
  call void @window_set_active(%struct._WINDOW_REC* %15), !dbg !3891
  br label %16, !dbg !3891

; <label>:16:                                     ; preds = %12, %9
  ret void, !dbg !3892
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_dright() #0 !dbg !3893 {
  %1 = alloca %struct.MAIN_WINDOW_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %1, metadata !3894, metadata !382), !dbg !3895
  %2 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** @active_mainwin, align 8, !dbg !3896
  %3 = call %struct.MAIN_WINDOW_REC* @mainwindows_find_right(%struct.MAIN_WINDOW_REC* %2, i32 0), !dbg !3897
  store %struct.MAIN_WINDOW_REC* %3, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !3898
  %4 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !3899
  %5 = icmp eq %struct.MAIN_WINDOW_REC* %4, null, !dbg !3901
  br i1 %5, label %6, label %9, !dbg !3902

; <label>:6:                                      ; preds = %0
  %7 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** @active_mainwin, align 8, !dbg !3903
  %8 = call %struct.MAIN_WINDOW_REC* @mainwindows_find_right(%struct.MAIN_WINDOW_REC* %7, i32 1), !dbg !3904
  store %struct.MAIN_WINDOW_REC* %8, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !3905
  br label %9, !dbg !3906

; <label>:9:                                      ; preds = %6, %0
  %10 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !3907
  %11 = icmp ne %struct.MAIN_WINDOW_REC* %10, null, !dbg !3909
  br i1 %11, label %12, label %16, !dbg !3910

; <label>:12:                                     ; preds = %9
  %13 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !3911
  %14 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %13, i32 0, i32 0, !dbg !3912
  %15 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %14, align 8, !dbg !3912
  call void @window_set_active(%struct._WINDOW_REC* %15), !dbg !3913
  br label %16, !dbg !3913

; <label>:16:                                     ; preds = %12, %9
  ret void, !dbg !3914
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_stick(i8*) #0 !dbg !3915 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %4 = alloca %struct._WINDOW_REC*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3916, metadata !382), !dbg !3917
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %3, metadata !3918, metadata !382), !dbg !3919
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %4, metadata !3920, metadata !382), !dbg !3921
  %5 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** @active_mainwin, align 8, !dbg !3922
  store %struct.MAIN_WINDOW_REC* %5, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !3923
  %6 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** @active_mainwin, align 8, !dbg !3924
  %7 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %6, i32 0, i32 0, !dbg !3925
  %8 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !3925
  store %struct._WINDOW_REC* %8, %struct._WINDOW_REC** %4, align 8, !dbg !3926
  %9 = load i8*, i8** %2, align 8, !dbg !3927
  %10 = call i32 @is_numeric(i8* %9, i8 signext 32), !dbg !3929
  %11 = icmp ne i32 %10, 0, !dbg !3929
  br i1 %11, label %12, label %47, !dbg !3930

; <label>:12:                                     ; preds = %1
  %13 = load i8*, i8** %2, align 8, !dbg !3931
  %14 = call i32 @atoi(i8* %13) #4, !dbg !3933
  %15 = call %struct._WINDOW_REC* @window_find_refnum(i32 %14), !dbg !3934
  store %struct._WINDOW_REC* %15, %struct._WINDOW_REC** %4, align 8, !dbg !3936
  %16 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !3937
  %17 = icmp eq %struct._WINDOW_REC* %16, null, !dbg !3939
  br i1 %17, label %18, label %21, !dbg !3940

; <label>:18:                                     ; preds = %12
  %19 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !3941
  %20 = load i8*, i8** %2, align 8, !dbg !3943
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), %struct._WINDOW_REC* %19, i32 1048576, i32 9, i8* %20), !dbg !3944
  br label %79, !dbg !3945

; <label>:21:                                     ; preds = %12
  br label %22, !dbg !3946

; <label>:22:                                     ; preds = %34, %21
  %23 = load i8*, i8** %2, align 8, !dbg !3947
  %24 = load i8, i8* %23, align 1, !dbg !3948
  %25 = sext i8 %24 to i32, !dbg !3948
  %26 = icmp ne i32 %25, 32, !dbg !3949
  br i1 %26, label %27, label %32, !dbg !3950

; <label>:27:                                     ; preds = %22
  %28 = load i8*, i8** %2, align 8, !dbg !3951
  %29 = load i8, i8* %28, align 1, !dbg !3953
  %30 = sext i8 %29 to i32, !dbg !3953
  %31 = icmp ne i32 %30, 0, !dbg !3954
  br label %32

; <label>:32:                                     ; preds = %27, %22
  %33 = phi i1 [ false, %22 ], [ %31, %27 ]
  br i1 %33, label %34, label %37, !dbg !3955

; <label>:34:                                     ; preds = %32
  %35 = load i8*, i8** %2, align 8, !dbg !3957
  %36 = getelementptr inbounds i8, i8* %35, i32 1, !dbg !3957
  store i8* %36, i8** %2, align 8, !dbg !3957
  br label %22, !dbg !3959, !llvm.loop !3960

; <label>:37:                                     ; preds = %32
  br label %38, !dbg !3961

; <label>:38:                                     ; preds = %43, %37
  %39 = load i8*, i8** %2, align 8, !dbg !3962
  %40 = load i8, i8* %39, align 1, !dbg !3963
  %41 = sext i8 %40 to i32, !dbg !3963
  %42 = icmp eq i32 %41, 32, !dbg !3964
  br i1 %42, label %43, label %46, !dbg !3965

; <label>:43:                                     ; preds = %38
  %44 = load i8*, i8** %2, align 8, !dbg !3966
  %45 = getelementptr inbounds i8, i8* %44, i32 1, !dbg !3966
  store i8* %45, i8** %2, align 8, !dbg !3966
  br label %38, !dbg !3967, !llvm.loop !3968

; <label>:46:                                     ; preds = %38
  br label %47, !dbg !3969

; <label>:47:                                     ; preds = %46, %1
  %48 = load i8*, i8** %2, align 8, !dbg !3970
  %49 = call i32 @g_ascii_strncasecmp(i8* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i32 0, i32 0), i64 2), !dbg !3972
  %50 = icmp eq i32 %49, 0, !dbg !3973
  br i1 %50, label %57, label %51, !dbg !3974

; <label>:51:                                     ; preds = %47
  %52 = load i8*, i8** %2, align 8, !dbg !3975
  %53 = load i8, i8* %52, align 1, !dbg !3977
  %54 = zext i8 %53 to i32, !dbg !3978
  %55 = call i32 @toupper(i32 %54) #4, !dbg !3979
  %56 = icmp eq i32 %55, 78, !dbg !3980
  br i1 %56, label %57, label %74, !dbg !3981

; <label>:57:                                     ; preds = %51, %47
  %58 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !3982
  %59 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %58, i32 0, i32 20, !dbg !3985
  %60 = load i8*, i8** %59, align 8, !dbg !3985
  %61 = bitcast i8* %60 to %struct.GUI_WINDOW_REC*, !dbg !3986
  %62 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %61, i32 0, i32 2, !dbg !3987
  %63 = load i8, i8* %62, align 8, !dbg !3987
  %64 = lshr i8 %63, 2, !dbg !3987
  %65 = and i8 %64, 1, !dbg !3987
  %66 = zext i8 %65 to i32, !dbg !3987
  %67 = icmp ne i32 %66, 0, !dbg !3988
  br i1 %67, label %70, label %68, !dbg !3989

; <label>:68:                                     ; preds = %57
  %69 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !3990
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), %struct._WINDOW_REC* %69, i32 1048576, i32 14), !dbg !3992
  br label %73, !dbg !3993

; <label>:70:                                     ; preds = %57
  %71 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !3994
  call void @gui_window_set_unsticky(%struct._WINDOW_REC* %71), !dbg !3996
  %72 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !3997
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), %struct._WINDOW_REC* %72, i32 262144, i32 16), !dbg !3998
  br label %73

; <label>:73:                                     ; preds = %70, %68
  br label %79, !dbg !3999

; <label>:74:                                     ; preds = %51
  %75 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !4000
  %76 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !4002
  call void @window_reparent(%struct._WINDOW_REC* %75, %struct.MAIN_WINDOW_REC* %76), !dbg !4003
  %77 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !4004
  call void @gui_window_set_sticky(%struct._WINDOW_REC* %77), !dbg !4005
  %78 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !4006
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), %struct._WINDOW_REC* %78, i32 262144, i32 15), !dbg !4007
  br label %79

; <label>:79:                                     ; preds = %18, %74, %73
  ret void, !dbg !4008
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_move_left() #0 !dbg !4009 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !4010, metadata !382), !dbg !4011
  %2 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !4012
  %3 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %2, i32 0, i32 0, !dbg !4013
  %4 = load i32, i32* %3, align 8, !dbg !4013
  %5 = call i32 @window_refnum_left(i32 %4, i32 1), !dbg !4014
  store i32 %5, i32* %1, align 4, !dbg !4015
  %6 = load i32, i32* %1, align 4, !dbg !4016
  %7 = icmp ne i32 %6, -1, !dbg !4018
  br i1 %7, label %8, label %11, !dbg !4019

; <label>:8:                                      ; preds = %0
  %9 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !4020
  %10 = load i32, i32* %1, align 4, !dbg !4021
  call void @window_set_refnum(%struct._WINDOW_REC* %9, i32 %10), !dbg !4022
  br label %11, !dbg !4022

; <label>:11:                                     ; preds = %8, %0
  ret void, !dbg !4023
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_move_right() #0 !dbg !4024 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !4025, metadata !382), !dbg !4026
  %2 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !4027
  %3 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %2, i32 0, i32 0, !dbg !4028
  %4 = load i32, i32* %3, align 8, !dbg !4028
  %5 = call i32 @window_refnum_right(i32 %4, i32 1), !dbg !4029
  store i32 %5, i32* %1, align 4, !dbg !4030
  %6 = load i32, i32* %1, align 4, !dbg !4031
  %7 = icmp ne i32 %6, -1, !dbg !4033
  br i1 %7, label %8, label %11, !dbg !4034

; <label>:8:                                      ; preds = %0
  %9 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !4035
  %10 = load i32, i32* %1, align 4, !dbg !4036
  call void @window_set_refnum(%struct._WINDOW_REC* %9, i32 %10), !dbg !4037
  br label %11, !dbg !4037

; <label>:11:                                     ; preds = %8, %0
  ret void, !dbg !4038
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_move_up() #0 !dbg !4039 {
  %1 = alloca %struct.MAIN_WINDOW_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %1, metadata !4040, metadata !382), !dbg !4041
  %2 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** @active_mainwin, align 8, !dbg !4042
  %3 = call %struct.MAIN_WINDOW_REC* @mainwindows_find_upper_left(%struct.MAIN_WINDOW_REC* %2), !dbg !4043
  store %struct.MAIN_WINDOW_REC* %3, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !4044
  %4 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !4045
  %5 = icmp ne %struct.MAIN_WINDOW_REC* %4, null, !dbg !4047
  br i1 %5, label %6, label %9, !dbg !4048

; <label>:6:                                      ; preds = %0
  %7 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !4049
  %8 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !4050
  call void @window_reparent(%struct._WINDOW_REC* %7, %struct.MAIN_WINDOW_REC* %8), !dbg !4051
  br label %9, !dbg !4051

; <label>:9:                                      ; preds = %6, %0
  ret void, !dbg !4052
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_move_down() #0 !dbg !4053 {
  %1 = alloca %struct.MAIN_WINDOW_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %1, metadata !4054, metadata !382), !dbg !4055
  %2 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** @active_mainwin, align 8, !dbg !4056
  %3 = call %struct.MAIN_WINDOW_REC* @mainwindows_find_lower_right(%struct.MAIN_WINDOW_REC* %2), !dbg !4057
  store %struct.MAIN_WINDOW_REC* %3, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !4058
  %4 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !4059
  %5 = icmp ne %struct.MAIN_WINDOW_REC* %4, null, !dbg !4061
  br i1 %5, label %6, label %9, !dbg !4062

; <label>:6:                                      ; preds = %0
  %7 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !4063
  %8 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !4064
  call void @window_reparent(%struct._WINDOW_REC* %7, %struct.MAIN_WINDOW_REC* %8), !dbg !4065
  br label %9, !dbg !4065

; <label>:9:                                      ; preds = %6, %0
  ret void, !dbg !4066
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_move_dleft() #0 !dbg !4067 {
  %1 = alloca %struct.MAIN_WINDOW_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %1, metadata !4068, metadata !382), !dbg !4069
  %2 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** @active_mainwin, align 8, !dbg !4070
  %3 = call %struct.MAIN_WINDOW_REC* @mainwindows_find_left(%struct.MAIN_WINDOW_REC* %2, i32 0), !dbg !4071
  store %struct.MAIN_WINDOW_REC* %3, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !4072
  %4 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !4073
  %5 = icmp eq %struct.MAIN_WINDOW_REC* %4, null, !dbg !4075
  br i1 %5, label %6, label %9, !dbg !4076

; <label>:6:                                      ; preds = %0
  %7 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** @active_mainwin, align 8, !dbg !4077
  %8 = call %struct.MAIN_WINDOW_REC* @mainwindows_find_left(%struct.MAIN_WINDOW_REC* %7, i32 1), !dbg !4078
  store %struct.MAIN_WINDOW_REC* %8, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !4079
  br label %9, !dbg !4080

; <label>:9:                                      ; preds = %6, %0
  %10 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !4081
  %11 = icmp ne %struct.MAIN_WINDOW_REC* %10, null, !dbg !4083
  br i1 %11, label %12, label %15, !dbg !4084

; <label>:12:                                     ; preds = %9
  %13 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !4085
  %14 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !4086
  call void @window_reparent(%struct._WINDOW_REC* %13, %struct.MAIN_WINDOW_REC* %14), !dbg !4087
  br label %15, !dbg !4087

; <label>:15:                                     ; preds = %12, %9
  ret void, !dbg !4088
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_move_dright() #0 !dbg !4089 {
  %1 = alloca %struct.MAIN_WINDOW_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %1, metadata !4090, metadata !382), !dbg !4091
  %2 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** @active_mainwin, align 8, !dbg !4092
  %3 = call %struct.MAIN_WINDOW_REC* @mainwindows_find_right(%struct.MAIN_WINDOW_REC* %2, i32 0), !dbg !4093
  store %struct.MAIN_WINDOW_REC* %3, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !4094
  %4 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !4095
  %5 = icmp eq %struct.MAIN_WINDOW_REC* %4, null, !dbg !4097
  br i1 %5, label %6, label %9, !dbg !4098

; <label>:6:                                      ; preds = %0
  %7 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** @active_mainwin, align 8, !dbg !4099
  %8 = call %struct.MAIN_WINDOW_REC* @mainwindows_find_right(%struct.MAIN_WINDOW_REC* %7, i32 1), !dbg !4100
  store %struct.MAIN_WINDOW_REC* %8, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !4101
  br label %9, !dbg !4102

; <label>:9:                                      ; preds = %6, %0
  %10 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !4103
  %11 = icmp ne %struct.MAIN_WINDOW_REC* %10, null, !dbg !4105
  br i1 %11, label %12, label %15, !dbg !4106

; <label>:12:                                     ; preds = %9
  %13 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !4107
  %14 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !4108
  call void @window_reparent(%struct._WINDOW_REC* %13, %struct.MAIN_WINDOW_REC* %14), !dbg !4109
  br label %15, !dbg !4109

; <label>:15:                                     ; preds = %12, %9
  ret void, !dbg !4110
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_rgrow(i8*) #0 !dbg !4111 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !4112, metadata !382), !dbg !4113
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4114, metadata !382), !dbg !4115
  %4 = load i8*, i8** %2, align 8, !dbg !4116
  %5 = load i8, i8* %4, align 1, !dbg !4117
  %6 = sext i8 %5 to i32, !dbg !4117
  %7 = icmp eq i32 %6, 0, !dbg !4118
  br i1 %7, label %8, label %9, !dbg !4117

; <label>:8:                                      ; preds = %1
  br label %12, !dbg !4119

; <label>:9:                                      ; preds = %1
  %10 = load i8*, i8** %2, align 8, !dbg !4121
  %11 = call i32 @atoi(i8* %10) #4, !dbg !4123
  br label %12, !dbg !4124

; <label>:12:                                     ; preds = %9, %8
  %13 = phi i32 [ 1, %8 ], [ %11, %9 ], !dbg !4125
  store i32 %13, i32* %3, align 4, !dbg !4127
  %14 = load i32, i32* %3, align 4, !dbg !4128
  call void @window_rgrow_int(i32 %14), !dbg !4129
  ret void, !dbg !4130
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_rshrink(i8*) #0 !dbg !4131 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !4132, metadata !382), !dbg !4133
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4134, metadata !382), !dbg !4135
  %4 = load i8*, i8** %2, align 8, !dbg !4136
  %5 = load i8, i8* %4, align 1, !dbg !4137
  %6 = sext i8 %5 to i32, !dbg !4137
  %7 = icmp eq i32 %6, 0, !dbg !4138
  br i1 %7, label %8, label %9, !dbg !4137

; <label>:8:                                      ; preds = %1
  br label %12, !dbg !4139

; <label>:9:                                      ; preds = %1
  %10 = load i8*, i8** %2, align 8, !dbg !4141
  %11 = call i32 @atoi(i8* %10) #4, !dbg !4143
  br label %12, !dbg !4144

; <label>:12:                                     ; preds = %9, %8
  %13 = phi i32 [ 1, %8 ], [ %11, %9 ], !dbg !4145
  store i32 %13, i32* %3, align 4, !dbg !4147
  %14 = load i32, i32* %3, align 4, !dbg !4148
  %15 = icmp slt i32 %14, -2147483647, !dbg !4150
  br i1 %15, label %16, label %17, !dbg !4151

; <label>:16:                                     ; preds = %12
  store i32 -2147483647, i32* %3, align 4, !dbg !4152
  br label %17, !dbg !4154

; <label>:17:                                     ; preds = %16, %12
  %18 = load i32, i32* %3, align 4, !dbg !4155
  %19 = sub nsw i32 0, %18, !dbg !4156
  call void @window_rgrow_int(i32 %19), !dbg !4157
  ret void, !dbg !4158
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_rsize(i8*) #0 !dbg !4159 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !4160, metadata !382), !dbg !4161
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4162, metadata !382), !dbg !4163
  %4 = load i8*, i8** %2, align 8, !dbg !4164
  %5 = call i32 @is_numeric(i8* %4, i8 signext 0), !dbg !4166
  %6 = icmp ne i32 %5, 0, !dbg !4166
  br i1 %6, label %8, label %7, !dbg !4167

; <label>:7:                                      ; preds = %1
  br label %31, !dbg !4168

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %2, align 8, !dbg !4170
  %10 = call i32 @atoi(i8* %9) #4, !dbg !4171
  store i32 %10, i32* %3, align 4, !dbg !4172
  %11 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !4173
  %12 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %11, i32 0, i32 20, !dbg !4174
  %13 = load i8*, i8** %12, align 8, !dbg !4174
  %14 = bitcast i8* %13 to %struct.GUI_WINDOW_REC*, !dbg !4175
  %15 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %14, i32 0, i32 0, !dbg !4176
  %16 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %15, align 8, !dbg !4176
  %17 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %16, i32 0, i32 7, !dbg !4177
  %18 = load i32, i32* %17, align 4, !dbg !4177
  %19 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !4178
  %20 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %19, i32 0, i32 20, !dbg !4179
  %21 = load i8*, i8** %20, align 8, !dbg !4179
  %22 = bitcast i8* %21 to %struct.GUI_WINDOW_REC*, !dbg !4180
  %23 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %22, i32 0, i32 0, !dbg !4181
  %24 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %23, align 8, !dbg !4181
  %25 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %24, i32 0, i32 15, !dbg !4182
  %26 = load i32, i32* %25, align 4, !dbg !4182
  %27 = sub nsw i32 %18, %26, !dbg !4183
  %28 = load i32, i32* %3, align 4, !dbg !4184
  %29 = sub nsw i32 %28, %27, !dbg !4184
  store i32 %29, i32* %3, align 4, !dbg !4184
  %30 = load i32, i32* %3, align 4, !dbg !4185
  call void @window_rgrow_int(i32 %30), !dbg !4186
  br label %31, !dbg !4187

; <label>:31:                                     ; preds = %8, %7
  ret void, !dbg !4188
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_rbalance() #0 !dbg !4190 {
  %1 = alloca %struct._GSList*, align 8
  %2 = alloca %struct._GSList*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.MAIN_WINDOW_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %1, metadata !4191, metadata !382), !dbg !4192
  call void @llvm.dbg.declare(metadata %struct._GSList** %2, metadata !4193, metadata !382), !dbg !4194
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4195, metadata !382), !dbg !4196
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4197, metadata !382), !dbg !4198
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4199, metadata !382), !dbg !4200
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4201, metadata !382), !dbg !4202
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4203, metadata !382), !dbg !4204
  call void @llvm.dbg.declare(metadata i32* %8, metadata !4205, metadata !382), !dbg !4206
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %9, metadata !4207, metadata !382), !dbg !4208
  %10 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !4209
  %11 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %10, i32 0, i32 20, !dbg !4210
  %12 = load i8*, i8** %11, align 8, !dbg !4210
  %13 = bitcast i8* %12 to %struct.GUI_WINDOW_REC*, !dbg !4211
  %14 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %13, i32 0, i32 0, !dbg !4212
  %15 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %14, align 8, !dbg !4212
  %16 = call %struct._GSList* @mainwindows_get_line(%struct.MAIN_WINDOW_REC* %15), !dbg !4213
  store %struct._GSList* %16, %struct._GSList** %1, align 8, !dbg !4214
  %17 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !4215
  %18 = call i32 @g_slist_length(%struct._GSList* %17), !dbg !4216
  store i32 %18, i32* %6, align 4, !dbg !4217
  %19 = load i32, i32* %6, align 4, !dbg !4218
  %20 = icmp eq i32 %19, 1, !dbg !4220
  br i1 %20, label %21, label %23, !dbg !4221

; <label>:21:                                     ; preds = %0
  %22 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !4222
  call void @g_slist_free(%struct._GSList* %22), !dbg !4224
  br label %93, !dbg !4225

; <label>:23:                                     ; preds = %0
  %24 = load i32, i32* @term_width, align 4, !dbg !4226
  %25 = load i32, i32* @screen_reserved_left, align 4, !dbg !4227
  %26 = sub nsw i32 %24, %25, !dbg !4228
  %27 = load i32, i32* @screen_reserved_right, align 4, !dbg !4229
  %28 = sub nsw i32 %26, %27, !dbg !4230
  %29 = load i32, i32* %6, align 4, !dbg !4231
  %30 = sub nsw i32 %28, %29, !dbg !4232
  %31 = add nsw i32 %30, 1, !dbg !4233
  store i32 %31, i32* %3, align 4, !dbg !4234
  %32 = load i32, i32* %3, align 4, !dbg !4235
  %33 = load i32, i32* %6, align 4, !dbg !4236
  %34 = sdiv i32 %32, %33, !dbg !4237
  store i32 %34, i32* %4, align 4, !dbg !4238
  %35 = load i32, i32* %3, align 4, !dbg !4239
  %36 = load i32, i32* %6, align 4, !dbg !4240
  %37 = srem i32 %35, %36, !dbg !4241
  store i32 %37, i32* %5, align 4, !dbg !4242
  %38 = load i32, i32* @screen_reserved_left, align 4, !dbg !4243
  store i32 %38, i32* %7, align 4, !dbg !4244
  %39 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !4245
  store %struct._GSList* %39, %struct._GSList** %2, align 8, !dbg !4247
  br label %40, !dbg !4248

; <label>:40:                                     ; preds = %87, %23
  %41 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !4249
  %42 = icmp ne %struct._GSList* %41, null, !dbg !4252
  br i1 %42, label %43, label %91, !dbg !4253

; <label>:43:                                     ; preds = %40
  %44 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !4254
  %45 = getelementptr inbounds %struct._GSList, %struct._GSList* %44, i32 0, i32 0, !dbg !4256
  %46 = load i8*, i8** %45, align 8, !dbg !4256
  %47 = bitcast i8* %46 to %struct.MAIN_WINDOW_REC*, !dbg !4254
  store %struct.MAIN_WINDOW_REC* %47, %struct.MAIN_WINDOW_REC** %9, align 8, !dbg !4257
  %48 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %9, align 8, !dbg !4258
  %49 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %48, i32 0, i32 7, !dbg !4259
  %50 = load i32, i32* %49, align 4, !dbg !4259
  store i32 %50, i32* %8, align 4, !dbg !4260
  %51 = load i32, i32* %7, align 4, !dbg !4261
  %52 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %9, align 8, !dbg !4262
  %53 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %52, i32 0, i32 5, !dbg !4263
  store i32 %51, i32* %53, align 4, !dbg !4264
  %54 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %9, align 8, !dbg !4265
  %55 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %54, i32 0, i32 5, !dbg !4266
  %56 = load i32, i32* %55, align 4, !dbg !4266
  %57 = load i32, i32* %4, align 4, !dbg !4267
  %58 = add nsw i32 %56, %57, !dbg !4268
  %59 = sub nsw i32 %58, 1, !dbg !4269
  %60 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %9, align 8, !dbg !4270
  %61 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %60, i32 0, i32 6, !dbg !4271
  store i32 %59, i32* %61, align 8, !dbg !4272
  %62 = load i32, i32* %5, align 4, !dbg !4273
  %63 = icmp sgt i32 %62, 0, !dbg !4275
  br i1 %63, label %64, label %71, !dbg !4276

; <label>:64:                                     ; preds = %43
  %65 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %9, align 8, !dbg !4277
  %66 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %65, i32 0, i32 6, !dbg !4279
  %67 = load i32, i32* %66, align 8, !dbg !4280
  %68 = add nsw i32 %67, 1, !dbg !4280
  store i32 %68, i32* %66, align 8, !dbg !4280
  %69 = load i32, i32* %5, align 4, !dbg !4281
  %70 = add nsw i32 %69, -1, !dbg !4281
  store i32 %70, i32* %5, align 4, !dbg !4281
  br label %71, !dbg !4282

; <label>:71:                                     ; preds = %64, %43
  %72 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %9, align 8, !dbg !4283
  %73 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %9, align 8, !dbg !4284
  %74 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %73, i32 0, i32 6, !dbg !4285
  %75 = load i32, i32* %74, align 8, !dbg !4285
  %76 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %9, align 8, !dbg !4286
  %77 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %76, i32 0, i32 5, !dbg !4287
  %78 = load i32, i32* %77, align 4, !dbg !4287
  %79 = sub nsw i32 %75, %78, !dbg !4288
  %80 = add nsw i32 %79, 1, !dbg !4289
  %81 = load i32, i32* %8, align 4, !dbg !4290
  %82 = sub nsw i32 %80, %81, !dbg !4291
  call void @mainwindow_resize(%struct.MAIN_WINDOW_REC* %72, i32 %82, i32 0), !dbg !4292
  %83 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %9, align 8, !dbg !4293
  %84 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %83, i32 0, i32 6, !dbg !4294
  %85 = load i32, i32* %84, align 8, !dbg !4294
  %86 = add nsw i32 %85, 2, !dbg !4295
  store i32 %86, i32* %7, align 4, !dbg !4296
  br label %87, !dbg !4297

; <label>:87:                                     ; preds = %71
  %88 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !4298
  %89 = getelementptr inbounds %struct._GSList, %struct._GSList* %88, i32 0, i32 1, !dbg !4300
  %90 = load %struct._GSList*, %struct._GSList** %89, align 8, !dbg !4300
  store %struct._GSList* %90, %struct._GSList** %2, align 8, !dbg !4301
  br label %40, !dbg !4302, !llvm.loop !4303

; <label>:91:                                     ; preds = %40
  %92 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !4305
  call void @g_slist_free(%struct._GSList* %92), !dbg !4306
  call void @mainwindows_redraw(), !dbg !4307
  br label %93, !dbg !4308

; <label>:93:                                     ; preds = %91, %21
  ret void, !dbg !4309
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_rshow(i8*) #0 !dbg !4311 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !4312, metadata !382), !dbg !4313
  %3 = load i8*, i8** %2, align 8, !dbg !4314
  call void @_cmd_window_show_opt(i8* %3, i32 1), !dbg !4315
  ret void, !dbg !4316
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @sig_window_print_info(%struct._WINDOW_REC*) #0 !dbg !4317 {
  %2 = alloca %struct._WINDOW_REC*, align 8
  %3 = alloca %struct.GUI_WINDOW_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %2, metadata !4320, metadata !382), !dbg !4321
  call void @llvm.dbg.declare(metadata %struct.GUI_WINDOW_REC** %3, metadata !4322, metadata !382), !dbg !4323
  %4 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !4324
  %5 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %4, i32 0, i32 20, !dbg !4325
  %6 = load i8*, i8** %5, align 8, !dbg !4325
  %7 = bitcast i8* %6 to %struct.GUI_WINDOW_REC*, !dbg !4326
  store %struct.GUI_WINDOW_REC* %7, %struct.GUI_WINDOW_REC** %3, align 8, !dbg !4327
  %8 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %3, align 8, !dbg !4328
  %9 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %8, i32 0, i32 2, !dbg !4330
  %10 = load i8, i8* %9, align 8, !dbg !4330
  %11 = lshr i8 %10, 1, !dbg !4330
  %12 = and i8 %11, 1, !dbg !4330
  %13 = zext i8 %12 to i32, !dbg !4330
  %14 = icmp ne i32 %13, 0, !dbg !4328
  br i1 %14, label %15, label %24, !dbg !4331

; <label>:15:                                     ; preds = %1
  %16 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !4332
  %17 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %3, align 8, !dbg !4334
  %18 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %17, i32 0, i32 2, !dbg !4335
  %19 = load i8, i8* %18, align 8, !dbg !4335
  %20 = and i8 %19, 1, !dbg !4335
  %21 = zext i8 %20 to i32, !dbg !4335
  %22 = icmp ne i32 %21, 0, !dbg !4334
  %23 = select i1 %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i32 0, i32 0), !dbg !4334
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), %struct._WINDOW_REC* %16, i32 524288, i32 18, i8* %23), !dbg !4336
  br label %24, !dbg !4337

; <label>:24:                                     ; preds = %15, %1
  %25 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !4338
  %26 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %25, i32 0, i32 20, !dbg !4340
  %27 = load i8*, i8** %26, align 8, !dbg !4340
  %28 = bitcast i8* %27 to %struct.GUI_WINDOW_REC*, !dbg !4341
  %29 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %28, i32 0, i32 0, !dbg !4342
  %30 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %29, align 8, !dbg !4342
  %31 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %30, i32 0, i32 2, !dbg !4343
  %32 = load i32, i32* %31, align 8, !dbg !4343
  %33 = icmp ne i32 %32, 0, !dbg !4344
  br i1 %33, label %34, label %36, !dbg !4345

; <label>:34:                                     ; preds = %24
  %35 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !4346
  call void @windows_print_sticky(%struct._WINDOW_REC* %35), !dbg !4347
  br label %36, !dbg !4347

; <label>:36:                                     ; preds = %34, %24
  ret void, !dbg !4348
}

; Function Attrs: nounwind uwtable
define void @mainwindows_deinit() #0 !dbg !4349 {
  br label %1, !dbg !4350

; <label>:1:                                      ; preds = %4, %0
  %2 = load %struct._GSList*, %struct._GSList** @mainwindows, align 8, !dbg !4351
  %3 = icmp ne %struct._GSList* %2, null, !dbg !4353
  br i1 %3, label %4, label %9, !dbg !4354

; <label>:4:                                      ; preds = %1
  %5 = load %struct._GSList*, %struct._GSList** @mainwindows, align 8, !dbg !4355
  %6 = getelementptr inbounds %struct._GSList, %struct._GSList* %5, i32 0, i32 0, !dbg !4356
  %7 = load i8*, i8** %6, align 8, !dbg !4356
  %8 = bitcast i8* %7 to %struct.MAIN_WINDOW_REC*, !dbg !4355
  call void @mainwindow_destroy(%struct.MAIN_WINDOW_REC* %8), !dbg !4357
  br label %1, !dbg !4358, !llvm.loop !4360

; <label>:9:                                      ; preds = %1
  %10 = load %struct.MAIN_WINDOW_BORDER_REC*, %struct.MAIN_WINDOW_BORDER_REC** @clrtoeol_info, align 8, !dbg !4361
  %11 = bitcast %struct.MAIN_WINDOW_BORDER_REC* %10 to i8*, !dbg !4361
  call void @g_free(i8* %11), !dbg !4362
  call void @command_unbind_full(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_window_grow to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4363
  call void @command_unbind_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_window_shrink to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4364
  call void @command_unbind_full(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_window_size to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4365
  call void @command_unbind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_window_balance to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4366
  call void @command_unbind_full(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_window_hide to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4367
  call void @command_unbind_full(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_window_show to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4368
  call void @command_unbind_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_window_up to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4369
  call void @command_unbind_full(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_window_down to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4370
  call void @command_unbind_full(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, i8*)* @cmd_window_left to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4371
  call void @command_unbind_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_window_right to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4372
  call void @command_unbind_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_window_dup to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4373
  call void @command_unbind_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_window_ddown to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4374
  call void @command_unbind_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_window_dleft to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4375
  call void @command_unbind_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_window_dright to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4376
  call void @command_unbind_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_window_stick to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4377
  call void @command_unbind_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_window_move_left to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4378
  call void @command_unbind_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_window_move_right to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4379
  call void @command_unbind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_window_move_up to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4380
  call void @command_unbind_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_window_move_down to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4381
  call void @command_unbind_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_window_move_dleft to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4382
  call void @command_unbind_full(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_window_move_dright to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4383
  call void @command_unbind_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_window_rgrow to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4384
  call void @command_unbind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_window_rshrink to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4385
  call void @command_unbind_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_window_rsize to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4386
  call void @command_unbind_full(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_window_rbalance to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4387
  call void @command_unbind_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_window_rshow to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4388
  call void @signal_remove_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*)* @sig_window_print_info to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4389
  ret void, !dbg !4390
}

declare void @command_unbind_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare i32 @window_refnum_cmp(%struct._WINDOW_REC*, %struct._WINDOW_REC*) #2

; Function Attrs: nounwind uwtable
define internal %struct.MAIN_WINDOW_REC* @find_window_with_room() #0 !dbg !4391 {
  %1 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %2 = alloca %struct._GSList*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.MAIN_WINDOW_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %1, metadata !4392, metadata !382), !dbg !4393
  call void @llvm.dbg.declare(metadata %struct._GSList** %2, metadata !4394, metadata !382), !dbg !4395
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4396, metadata !382), !dbg !4397
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4398, metadata !382), !dbg !4399
  store i32 0, i32* %4, align 4, !dbg !4400
  store %struct.MAIN_WINDOW_REC* null, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !4401
  %6 = load %struct._GSList*, %struct._GSList** @mainwindows, align 8, !dbg !4402
  store %struct._GSList* %6, %struct._GSList** %2, align 8, !dbg !4404
  br label %7, !dbg !4405

; <label>:7:                                      ; preds = %32, %0
  %8 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !4406
  %9 = icmp ne %struct._GSList* %8, null, !dbg !4409
  br i1 %9, label %10, label %36, !dbg !4410

; <label>:10:                                     ; preds = %7
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %5, metadata !4411, metadata !382), !dbg !4413
  %11 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !4414
  %12 = getelementptr inbounds %struct._GSList, %struct._GSList* %11, i32 0, i32 0, !dbg !4415
  %13 = load i8*, i8** %12, align 8, !dbg !4415
  %14 = bitcast i8* %13 to %struct.MAIN_WINDOW_REC*, !dbg !4414
  store %struct.MAIN_WINDOW_REC* %14, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !4413
  %15 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !4416
  %16 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %15, i32 0, i32 8, !dbg !4417
  %17 = load i32, i32* %16, align 8, !dbg !4417
  %18 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !4418
  %19 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %18, i32 0, i32 12, !dbg !4419
  %20 = load i32, i32* %19, align 8, !dbg !4419
  %21 = sub nsw i32 %17, %20, !dbg !4420
  store i32 %21, i32* %3, align 4, !dbg !4421
  %22 = load i32, i32* %3, align 4, !dbg !4422
  %23 = icmp sge i32 %22, 5, !dbg !4424
  br i1 %23, label %24, label %31, !dbg !4425

; <label>:24:                                     ; preds = %10
  %25 = load i32, i32* %3, align 4, !dbg !4426
  %26 = load i32, i32* %4, align 4, !dbg !4428
  %27 = icmp sgt i32 %25, %26, !dbg !4429
  br i1 %27, label %28, label %31, !dbg !4430

; <label>:28:                                     ; preds = %24
  %29 = load i32, i32* %3, align 4, !dbg !4431
  store i32 %29, i32* %4, align 4, !dbg !4433
  %30 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !4434
  store %struct.MAIN_WINDOW_REC* %30, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !4435
  br label %31, !dbg !4436

; <label>:31:                                     ; preds = %28, %24, %10
  br label %32, !dbg !4437

; <label>:32:                                     ; preds = %31
  %33 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !4438
  %34 = getelementptr inbounds %struct._GSList, %struct._GSList* %33, i32 0, i32 1, !dbg !4440
  %35 = load %struct._GSList*, %struct._GSList** %34, align 8, !dbg !4440
  store %struct._GSList* %35, %struct._GSList** %2, align 8, !dbg !4441
  br label %7, !dbg !4442, !llvm.loop !4443

; <label>:36:                                     ; preds = %7
  %37 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !4445
  ret %struct.MAIN_WINDOW_REC* %37, !dbg !4446
}

declare void @g_log(i8*, i32, i8*, ...) #2

declare void @gui_window_reparent(%struct._WINDOW_REC*, %struct.MAIN_WINDOW_REC*) #2

declare i32 @g_slist_length(%struct._GSList*) #2

declare %struct._GSList* @g_slist_prepend(%struct._GSList*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @try_grow_lower(%struct.MAIN_WINDOW_REC*, i32) #0 !dbg !4447 {
  %3 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %6 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %7 = alloca %struct._GSList*, align 8
  %8 = alloca %struct._GSList*, align 8
  %9 = alloca %struct._GSList*, align 8
  store %struct.MAIN_WINDOW_REC* %0, %struct.MAIN_WINDOW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %3, metadata !4448, metadata !382), !dbg !4449
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4450, metadata !382), !dbg !4451
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %5, metadata !4452, metadata !382), !dbg !4453
  %10 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !4454
  %11 = call %struct.MAIN_WINDOW_REC* @mainwindows_find_lower(%struct.MAIN_WINDOW_REC* %10), !dbg !4455
  store %struct.MAIN_WINDOW_REC* %11, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !4456
  %12 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !4457
  %13 = icmp ne %struct.MAIN_WINDOW_REC* %12, null, !dbg !4459
  br i1 %13, label %14, label %62, !dbg !4460

; <label>:14:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %6, metadata !4461, metadata !382), !dbg !4463
  call void @llvm.dbg.declare(metadata %struct._GSList** %7, metadata !4464, metadata !382), !dbg !4465
  call void @llvm.dbg.declare(metadata %struct._GSList** %8, metadata !4466, metadata !382), !dbg !4467
  call void @llvm.dbg.declare(metadata %struct._GSList** %9, metadata !4468, metadata !382), !dbg !4469
  %15 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !4470
  %16 = call %struct._GSList* @mainwindows_get_line(%struct.MAIN_WINDOW_REC* %15), !dbg !4471
  store %struct._GSList* %16, %struct._GSList** %7, align 8, !dbg !4472
  %17 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !4473
  %18 = call %struct._GSList* @mainwindows_get_line(%struct.MAIN_WINDOW_REC* %17), !dbg !4474
  store %struct._GSList* %18, %struct._GSList** %8, align 8, !dbg !4475
  %19 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !4476
  store %struct._GSList* %19, %struct._GSList** %9, align 8, !dbg !4478
  br label %20, !dbg !4479

; <label>:20:                                     ; preds = %33, %14
  %21 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !4480
  %22 = icmp ne %struct._GSList* %21, null, !dbg !4483
  br i1 %22, label %23, label %37, !dbg !4484

; <label>:23:                                     ; preds = %20
  %24 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !4485
  %25 = getelementptr inbounds %struct._GSList, %struct._GSList* %24, i32 0, i32 0, !dbg !4487
  %26 = load i8*, i8** %25, align 8, !dbg !4487
  %27 = bitcast i8* %26 to %struct.MAIN_WINDOW_REC*, !dbg !4485
  store %struct.MAIN_WINDOW_REC* %27, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !4488
  %28 = load i32, i32* %4, align 4, !dbg !4489
  %29 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !4490
  %30 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %29, i32 0, i32 3, !dbg !4491
  %31 = load i32, i32* %30, align 4, !dbg !4492
  %32 = sub nsw i32 %31, %28, !dbg !4492
  store i32 %32, i32* %30, align 4, !dbg !4492
  br label %33, !dbg !4493

; <label>:33:                                     ; preds = %23
  %34 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !4494
  %35 = getelementptr inbounds %struct._GSList, %struct._GSList* %34, i32 0, i32 1, !dbg !4496
  %36 = load %struct._GSList*, %struct._GSList** %35, align 8, !dbg !4496
  store %struct._GSList* %36, %struct._GSList** %9, align 8, !dbg !4497
  br label %20, !dbg !4498, !llvm.loop !4499

; <label>:37:                                     ; preds = %20
  %38 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !4501
  store %struct._GSList* %38, %struct._GSList** %9, align 8, !dbg !4503
  br label %39, !dbg !4504

; <label>:39:                                     ; preds = %52, %37
  %40 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !4505
  %41 = icmp ne %struct._GSList* %40, null, !dbg !4508
  br i1 %41, label %42, label %56, !dbg !4509

; <label>:42:                                     ; preds = %39
  %43 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !4510
  %44 = getelementptr inbounds %struct._GSList, %struct._GSList* %43, i32 0, i32 0, !dbg !4512
  %45 = load i8*, i8** %44, align 8, !dbg !4512
  %46 = bitcast i8* %45 to %struct.MAIN_WINDOW_REC*, !dbg !4510
  store %struct.MAIN_WINDOW_REC* %46, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !4513
  %47 = load i32, i32* %4, align 4, !dbg !4514
  %48 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !4515
  %49 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %48, i32 0, i32 4, !dbg !4516
  %50 = load i32, i32* %49, align 8, !dbg !4517
  %51 = sub nsw i32 %50, %47, !dbg !4517
  store i32 %51, i32* %49, align 8, !dbg !4517
  br label %52, !dbg !4518

; <label>:52:                                     ; preds = %42
  %53 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !4519
  %54 = getelementptr inbounds %struct._GSList, %struct._GSList* %53, i32 0, i32 1, !dbg !4521
  %55 = load %struct._GSList*, %struct._GSList** %54, align 8, !dbg !4521
  store %struct._GSList* %55, %struct._GSList** %9, align 8, !dbg !4522
  br label %39, !dbg !4523, !llvm.loop !4524

; <label>:56:                                     ; preds = %39
  %57 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !4526
  %58 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !4527
  %59 = load i32, i32* %4, align 4, !dbg !4528
  call void @mainwindows_resize_two(%struct._GSList* %57, %struct._GSList* %58, i32 %59), !dbg !4529
  %60 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !4530
  call void @g_slist_free(%struct._GSList* %60), !dbg !4531
  %61 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !4532
  call void @g_slist_free(%struct._GSList* %61), !dbg !4533
  br label %62, !dbg !4534

; <label>:62:                                     ; preds = %56, %2
  %63 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !4535
  %64 = icmp ne %struct.MAIN_WINDOW_REC* %63, null, !dbg !4536
  %65 = zext i1 %64 to i32, !dbg !4536
  ret i32 %65, !dbg !4537
}

; Function Attrs: nounwind uwtable
define internal i32 @try_grow_upper(%struct.MAIN_WINDOW_REC*, i32) #0 !dbg !4538 {
  %3 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %6 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %7 = alloca %struct._GSList*, align 8
  %8 = alloca %struct._GSList*, align 8
  %9 = alloca %struct._GSList*, align 8
  store %struct.MAIN_WINDOW_REC* %0, %struct.MAIN_WINDOW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %3, metadata !4539, metadata !382), !dbg !4540
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4541, metadata !382), !dbg !4542
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %5, metadata !4543, metadata !382), !dbg !4544
  %10 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !4545
  %11 = call %struct.MAIN_WINDOW_REC* @mainwindows_find_upper(%struct.MAIN_WINDOW_REC* %10), !dbg !4546
  store %struct.MAIN_WINDOW_REC* %11, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !4547
  %12 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !4548
  %13 = icmp ne %struct.MAIN_WINDOW_REC* %12, null, !dbg !4550
  br i1 %13, label %14, label %62, !dbg !4551

; <label>:14:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %6, metadata !4552, metadata !382), !dbg !4554
  call void @llvm.dbg.declare(metadata %struct._GSList** %7, metadata !4555, metadata !382), !dbg !4556
  call void @llvm.dbg.declare(metadata %struct._GSList** %8, metadata !4557, metadata !382), !dbg !4558
  call void @llvm.dbg.declare(metadata %struct._GSList** %9, metadata !4559, metadata !382), !dbg !4560
  %15 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !4561
  %16 = call %struct._GSList* @mainwindows_get_line(%struct.MAIN_WINDOW_REC* %15), !dbg !4562
  store %struct._GSList* %16, %struct._GSList** %7, align 8, !dbg !4563
  %17 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !4564
  %18 = call %struct._GSList* @mainwindows_get_line(%struct.MAIN_WINDOW_REC* %17), !dbg !4565
  store %struct._GSList* %18, %struct._GSList** %8, align 8, !dbg !4566
  %19 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !4567
  store %struct._GSList* %19, %struct._GSList** %9, align 8, !dbg !4569
  br label %20, !dbg !4570

; <label>:20:                                     ; preds = %33, %14
  %21 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !4571
  %22 = icmp ne %struct._GSList* %21, null, !dbg !4574
  br i1 %22, label %23, label %37, !dbg !4575

; <label>:23:                                     ; preds = %20
  %24 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !4576
  %25 = getelementptr inbounds %struct._GSList, %struct._GSList* %24, i32 0, i32 0, !dbg !4578
  %26 = load i8*, i8** %25, align 8, !dbg !4578
  %27 = bitcast i8* %26 to %struct.MAIN_WINDOW_REC*, !dbg !4576
  store %struct.MAIN_WINDOW_REC* %27, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !4579
  %28 = load i32, i32* %4, align 4, !dbg !4580
  %29 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !4581
  %30 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %29, i32 0, i32 4, !dbg !4582
  %31 = load i32, i32* %30, align 8, !dbg !4583
  %32 = add nsw i32 %31, %28, !dbg !4583
  store i32 %32, i32* %30, align 8, !dbg !4583
  br label %33, !dbg !4584

; <label>:33:                                     ; preds = %23
  %34 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !4585
  %35 = getelementptr inbounds %struct._GSList, %struct._GSList* %34, i32 0, i32 1, !dbg !4587
  %36 = load %struct._GSList*, %struct._GSList** %35, align 8, !dbg !4587
  store %struct._GSList* %36, %struct._GSList** %9, align 8, !dbg !4588
  br label %20, !dbg !4589, !llvm.loop !4590

; <label>:37:                                     ; preds = %20
  %38 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !4592
  store %struct._GSList* %38, %struct._GSList** %9, align 8, !dbg !4594
  br label %39, !dbg !4595

; <label>:39:                                     ; preds = %52, %37
  %40 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !4596
  %41 = icmp ne %struct._GSList* %40, null, !dbg !4599
  br i1 %41, label %42, label %56, !dbg !4600

; <label>:42:                                     ; preds = %39
  %43 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !4601
  %44 = getelementptr inbounds %struct._GSList, %struct._GSList* %43, i32 0, i32 0, !dbg !4603
  %45 = load i8*, i8** %44, align 8, !dbg !4603
  %46 = bitcast i8* %45 to %struct.MAIN_WINDOW_REC*, !dbg !4601
  store %struct.MAIN_WINDOW_REC* %46, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !4604
  %47 = load i32, i32* %4, align 4, !dbg !4605
  %48 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !4606
  %49 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %48, i32 0, i32 3, !dbg !4607
  %50 = load i32, i32* %49, align 4, !dbg !4608
  %51 = add nsw i32 %50, %47, !dbg !4608
  store i32 %51, i32* %49, align 4, !dbg !4608
  br label %52, !dbg !4609

; <label>:52:                                     ; preds = %42
  %53 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !4610
  %54 = getelementptr inbounds %struct._GSList, %struct._GSList* %53, i32 0, i32 1, !dbg !4612
  %55 = load %struct._GSList*, %struct._GSList** %54, align 8, !dbg !4612
  store %struct._GSList* %55, %struct._GSList** %9, align 8, !dbg !4613
  br label %39, !dbg !4614, !llvm.loop !4615

; <label>:56:                                     ; preds = %39
  %57 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !4617
  %58 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !4618
  %59 = load i32, i32* %4, align 4, !dbg !4619
  call void @mainwindows_resize_two(%struct._GSList* %57, %struct._GSList* %58, i32 %59), !dbg !4620
  %60 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !4621
  call void @g_slist_free(%struct._GSList* %60), !dbg !4622
  %61 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !4623
  call void @g_slist_free(%struct._GSList* %61), !dbg !4624
  br label %62, !dbg !4625

; <label>:62:                                     ; preds = %56, %2
  %63 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !4626
  %64 = icmp ne %struct.MAIN_WINDOW_REC* %63, null, !dbg !4627
  %65 = zext i1 %64 to i32, !dbg !4627
  ret i32 %65, !dbg !4628
}

; Function Attrs: nounwind uwtable
define internal void @mainwindows_resize_two(%struct._GSList*, %struct._GSList*, i32) #0 !dbg !4629 {
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._GSList*, align 8
  %8 = alloca %struct.MAIN_WINDOW_REC*, align 8
  store %struct._GSList* %0, %struct._GSList** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !4632, metadata !382), !dbg !4633
  store %struct._GSList* %1, %struct._GSList** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !4634, metadata !382), !dbg !4635
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4636, metadata !382), !dbg !4637
  call void @llvm.dbg.declare(metadata %struct._GSList** %7, metadata !4638, metadata !382), !dbg !4639
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %8, metadata !4640, metadata !382), !dbg !4641
  call void @irssi_set_dirty(), !dbg !4642
  %9 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !4643
  store %struct._GSList* %9, %struct._GSList** %7, align 8, !dbg !4645
  br label %10, !dbg !4646

; <label>:10:                                     ; preds = %26, %3
  %11 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !4647
  %12 = icmp ne %struct._GSList* %11, null, !dbg !4650
  br i1 %12, label %13, label %30, !dbg !4651

; <label>:13:                                     ; preds = %10
  %14 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !4652
  %15 = getelementptr inbounds %struct._GSList, %struct._GSList* %14, i32 0, i32 0, !dbg !4654
  %16 = load i8*, i8** %15, align 8, !dbg !4654
  %17 = bitcast i8* %16 to %struct.MAIN_WINDOW_REC*, !dbg !4652
  store %struct.MAIN_WINDOW_REC* %17, %struct.MAIN_WINDOW_REC** %8, align 8, !dbg !4655
  %18 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %8, align 8, !dbg !4656
  %19 = load i32, i32* %6, align 4, !dbg !4657
  %20 = sub nsw i32 0, %19, !dbg !4658
  call void @mainwindow_resize(%struct.MAIN_WINDOW_REC* %18, i32 0, i32 %20), !dbg !4659
  %21 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %8, align 8, !dbg !4660
  %22 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %21, i32 0, i32 16, !dbg !4661
  %23 = load i8, i8* %22, align 8, !dbg !4662
  %24 = and i8 %23, -2, !dbg !4662
  %25 = or i8 %24, 1, !dbg !4662
  store i8 %25, i8* %22, align 8, !dbg !4662
  br label %26, !dbg !4663

; <label>:26:                                     ; preds = %13
  %27 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !4664
  %28 = getelementptr inbounds %struct._GSList, %struct._GSList* %27, i32 0, i32 1, !dbg !4666
  %29 = load %struct._GSList*, %struct._GSList** %28, align 8, !dbg !4666
  store %struct._GSList* %29, %struct._GSList** %7, align 8, !dbg !4667
  br label %10, !dbg !4668, !llvm.loop !4669

; <label>:30:                                     ; preds = %10
  %31 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !4671
  store %struct._GSList* %31, %struct._GSList** %7, align 8, !dbg !4673
  br label %32, !dbg !4674

; <label>:32:                                     ; preds = %47, %30
  %33 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !4675
  %34 = icmp ne %struct._GSList* %33, null, !dbg !4678
  br i1 %34, label %35, label %51, !dbg !4679

; <label>:35:                                     ; preds = %32
  %36 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !4680
  %37 = getelementptr inbounds %struct._GSList, %struct._GSList* %36, i32 0, i32 0, !dbg !4682
  %38 = load i8*, i8** %37, align 8, !dbg !4682
  %39 = bitcast i8* %38 to %struct.MAIN_WINDOW_REC*, !dbg !4680
  store %struct.MAIN_WINDOW_REC* %39, %struct.MAIN_WINDOW_REC** %8, align 8, !dbg !4683
  %40 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %8, align 8, !dbg !4684
  %41 = load i32, i32* %6, align 4, !dbg !4685
  call void @mainwindow_resize(%struct.MAIN_WINDOW_REC* %40, i32 0, i32 %41), !dbg !4686
  %42 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %8, align 8, !dbg !4687
  %43 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %42, i32 0, i32 16, !dbg !4688
  %44 = load i8, i8* %43, align 8, !dbg !4689
  %45 = and i8 %44, -2, !dbg !4689
  %46 = or i8 %45, 1, !dbg !4689
  store i8 %46, i8* %43, align 8, !dbg !4689
  br label %47, !dbg !4690

; <label>:47:                                     ; preds = %35
  %48 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !4691
  %49 = getelementptr inbounds %struct._GSList, %struct._GSList* %48, i32 0, i32 1, !dbg !4693
  %50 = load %struct._GSList*, %struct._GSList** %49, align 8, !dbg !4693
  store %struct._GSList* %50, %struct._GSList** %7, align 8, !dbg !4694
  br label %32, !dbg !4695, !llvm.loop !4696

; <label>:51:                                     ; preds = %32
  ret void, !dbg !4698
}

; Function Attrs: nounwind uwtable
define internal i32 @try_shrink_lower(%struct.MAIN_WINDOW_REC*, i32) #0 !dbg !4699 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._GSList*, align 8
  %9 = alloca %struct._GSList*, align 8
  %10 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %11 = alloca %struct._GSList*, align 8
  store %struct.MAIN_WINDOW_REC* %0, %struct.MAIN_WINDOW_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %4, metadata !4700, metadata !382), !dbg !4701
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4702, metadata !382), !dbg !4703
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %6, metadata !4704, metadata !382), !dbg !4705
  br label %12, !dbg !4706, !llvm.loop !4707

; <label>:12:                                     ; preds = %2
  %13 = load i32, i32* %5, align 4, !dbg !4708
  %14 = icmp sge i32 %13, 0, !dbg !4712
  br i1 %14, label %15, label %16, !dbg !4708

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !4713

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.try_shrink_lower, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0)), !dbg !4716
  store i32 0, i32* %3, align 4, !dbg !4719
  br label %103, !dbg !4719

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !4720

; <label>:18:                                     ; preds = %17
  %19 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !4722
  %20 = call %struct.MAIN_WINDOW_REC* @mainwindows_find_lower(%struct.MAIN_WINDOW_REC* %19), !dbg !4723
  store %struct.MAIN_WINDOW_REC* %20, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !4724
  %21 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !4725
  %22 = icmp ne %struct.MAIN_WINDOW_REC* %21, null, !dbg !4727
  br i1 %22, label %23, label %102, !dbg !4728

; <label>:23:                                     ; preds = %18
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4729, metadata !382), !dbg !4731
  call void @llvm.dbg.declare(metadata %struct._GSList** %8, metadata !4732, metadata !382), !dbg !4733
  call void @llvm.dbg.declare(metadata %struct._GSList** %9, metadata !4734, metadata !382), !dbg !4735
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %10, metadata !4736, metadata !382), !dbg !4737
  store i32 1, i32* %7, align 4, !dbg !4738
  %24 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !4739
  %25 = call %struct._GSList* @mainwindows_get_line(%struct.MAIN_WINDOW_REC* %24), !dbg !4740
  store %struct._GSList* %25, %struct._GSList** %8, align 8, !dbg !4741
  %26 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !4742
  store %struct._GSList* %26, %struct._GSList** %9, align 8, !dbg !4744
  br label %27, !dbg !4745

; <label>:27:                                     ; preds = %47, %23
  %28 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !4746
  %29 = icmp ne %struct._GSList* %28, null, !dbg !4749
  br i1 %29, label %30, label %51, !dbg !4750

; <label>:30:                                     ; preds = %27
  %31 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !4751
  %32 = getelementptr inbounds %struct._GSList, %struct._GSList* %31, i32 0, i32 0, !dbg !4753
  %33 = load i8*, i8** %32, align 8, !dbg !4753
  %34 = bitcast i8* %33 to %struct.MAIN_WINDOW_REC*, !dbg !4751
  store %struct.MAIN_WINDOW_REC* %34, %struct.MAIN_WINDOW_REC** %10, align 8, !dbg !4754
  %35 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %10, align 8, !dbg !4755
  %36 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %35, i32 0, i32 8, !dbg !4757
  %37 = load i32, i32* %36, align 8, !dbg !4757
  %38 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %10, align 8, !dbg !4758
  %39 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %38, i32 0, i32 12, !dbg !4759
  %40 = load i32, i32* %39, align 8, !dbg !4759
  %41 = sub nsw i32 %37, %40, !dbg !4760
  %42 = load i32, i32* %5, align 4, !dbg !4761
  %43 = sub nsw i32 %41, %42, !dbg !4762
  %44 = icmp slt i32 %43, 2, !dbg !4763
  br i1 %44, label %45, label %46, !dbg !4764

; <label>:45:                                     ; preds = %30
  store i32 0, i32* %7, align 4, !dbg !4765
  br label %51, !dbg !4767

; <label>:46:                                     ; preds = %30
  br label %47, !dbg !4768

; <label>:47:                                     ; preds = %46
  %48 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !4769
  %49 = getelementptr inbounds %struct._GSList, %struct._GSList* %48, i32 0, i32 1, !dbg !4771
  %50 = load %struct._GSList*, %struct._GSList** %49, align 8, !dbg !4771
  store %struct._GSList* %50, %struct._GSList** %9, align 8, !dbg !4772
  br label %27, !dbg !4773, !llvm.loop !4774

; <label>:51:                                     ; preds = %45, %27
  %52 = load i32, i32* %7, align 4, !dbg !4776
  %53 = icmp ne i32 %52, 0, !dbg !4776
  br i1 %53, label %54, label %99, !dbg !4778

; <label>:54:                                     ; preds = %51
  call void @llvm.dbg.declare(metadata %struct._GSList** %11, metadata !4779, metadata !382), !dbg !4781
  %55 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !4782
  %56 = call %struct._GSList* @mainwindows_get_line(%struct.MAIN_WINDOW_REC* %55), !dbg !4783
  store %struct._GSList* %56, %struct._GSList** %11, align 8, !dbg !4784
  %57 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !4785
  store %struct._GSList* %57, %struct._GSList** %9, align 8, !dbg !4787
  br label %58, !dbg !4788

; <label>:58:                                     ; preds = %71, %54
  %59 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !4789
  %60 = icmp ne %struct._GSList* %59, null, !dbg !4792
  br i1 %60, label %61, label %75, !dbg !4793

; <label>:61:                                     ; preds = %58
  %62 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !4794
  %63 = getelementptr inbounds %struct._GSList, %struct._GSList* %62, i32 0, i32 0, !dbg !4796
  %64 = load i8*, i8** %63, align 8, !dbg !4796
  %65 = bitcast i8* %64 to %struct.MAIN_WINDOW_REC*, !dbg !4794
  store %struct.MAIN_WINDOW_REC* %65, %struct.MAIN_WINDOW_REC** %10, align 8, !dbg !4797
  %66 = load i32, i32* %5, align 4, !dbg !4798
  %67 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %10, align 8, !dbg !4799
  %68 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %67, i32 0, i32 3, !dbg !4800
  %69 = load i32, i32* %68, align 4, !dbg !4801
  %70 = add nsw i32 %69, %66, !dbg !4801
  store i32 %70, i32* %68, align 4, !dbg !4801
  br label %71, !dbg !4802

; <label>:71:                                     ; preds = %61
  %72 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !4803
  %73 = getelementptr inbounds %struct._GSList, %struct._GSList* %72, i32 0, i32 1, !dbg !4805
  %74 = load %struct._GSList*, %struct._GSList** %73, align 8, !dbg !4805
  store %struct._GSList* %74, %struct._GSList** %9, align 8, !dbg !4806
  br label %58, !dbg !4807, !llvm.loop !4808

; <label>:75:                                     ; preds = %58
  %76 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !4810
  store %struct._GSList* %76, %struct._GSList** %9, align 8, !dbg !4812
  br label %77, !dbg !4813

; <label>:77:                                     ; preds = %90, %75
  %78 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !4814
  %79 = icmp ne %struct._GSList* %78, null, !dbg !4817
  br i1 %79, label %80, label %94, !dbg !4818

; <label>:80:                                     ; preds = %77
  %81 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !4819
  %82 = getelementptr inbounds %struct._GSList, %struct._GSList* %81, i32 0, i32 0, !dbg !4821
  %83 = load i8*, i8** %82, align 8, !dbg !4821
  %84 = bitcast i8* %83 to %struct.MAIN_WINDOW_REC*, !dbg !4819
  store %struct.MAIN_WINDOW_REC* %84, %struct.MAIN_WINDOW_REC** %10, align 8, !dbg !4822
  %85 = load i32, i32* %5, align 4, !dbg !4823
  %86 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %10, align 8, !dbg !4824
  %87 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %86, i32 0, i32 4, !dbg !4825
  %88 = load i32, i32* %87, align 8, !dbg !4826
  %89 = add nsw i32 %88, %85, !dbg !4826
  store i32 %89, i32* %87, align 8, !dbg !4826
  br label %90, !dbg !4827

; <label>:90:                                     ; preds = %80
  %91 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !4828
  %92 = getelementptr inbounds %struct._GSList, %struct._GSList* %91, i32 0, i32 1, !dbg !4830
  %93 = load %struct._GSList*, %struct._GSList** %92, align 8, !dbg !4830
  store %struct._GSList* %93, %struct._GSList** %9, align 8, !dbg !4831
  br label %77, !dbg !4832, !llvm.loop !4833

; <label>:94:                                     ; preds = %77
  %95 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !4835
  %96 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !4836
  %97 = load i32, i32* %5, align 4, !dbg !4837
  call void @mainwindows_resize_two(%struct._GSList* %95, %struct._GSList* %96, i32 %97), !dbg !4838
  %98 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !4839
  call void @g_slist_free(%struct._GSList* %98), !dbg !4840
  br label %99, !dbg !4841

; <label>:99:                                     ; preds = %94, %51
  %100 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !4842
  call void @g_slist_free(%struct._GSList* %100), !dbg !4843
  %101 = load i32, i32* %7, align 4, !dbg !4844
  store i32 %101, i32* %3, align 4, !dbg !4845
  br label %103, !dbg !4845

; <label>:102:                                    ; preds = %18
  store i32 0, i32* %3, align 4, !dbg !4846
  br label %103, !dbg !4846

; <label>:103:                                    ; preds = %102, %99, %16
  %104 = load i32, i32* %3, align 4, !dbg !4847
  ret i32 %104, !dbg !4847
}

; Function Attrs: nounwind uwtable
define internal i32 @try_shrink_upper(%struct.MAIN_WINDOW_REC*, i32) #0 !dbg !4848 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._GSList*, align 8
  %9 = alloca %struct._GSList*, align 8
  %10 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %11 = alloca %struct._GSList*, align 8
  store %struct.MAIN_WINDOW_REC* %0, %struct.MAIN_WINDOW_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %4, metadata !4849, metadata !382), !dbg !4850
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4851, metadata !382), !dbg !4852
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %6, metadata !4853, metadata !382), !dbg !4854
  br label %12, !dbg !4855, !llvm.loop !4856

; <label>:12:                                     ; preds = %2
  %13 = load i32, i32* %5, align 4, !dbg !4857
  %14 = icmp sge i32 %13, 0, !dbg !4861
  br i1 %14, label %15, label %16, !dbg !4857

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !4862

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.try_shrink_upper, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0)), !dbg !4865
  store i32 0, i32* %3, align 4, !dbg !4868
  br label %103, !dbg !4868

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !4869

; <label>:18:                                     ; preds = %17
  %19 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !4871
  %20 = call %struct.MAIN_WINDOW_REC* @mainwindows_find_upper(%struct.MAIN_WINDOW_REC* %19), !dbg !4872
  store %struct.MAIN_WINDOW_REC* %20, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !4873
  %21 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !4874
  %22 = icmp ne %struct.MAIN_WINDOW_REC* %21, null, !dbg !4876
  br i1 %22, label %23, label %102, !dbg !4877

; <label>:23:                                     ; preds = %18
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4878, metadata !382), !dbg !4880
  call void @llvm.dbg.declare(metadata %struct._GSList** %8, metadata !4881, metadata !382), !dbg !4882
  call void @llvm.dbg.declare(metadata %struct._GSList** %9, metadata !4883, metadata !382), !dbg !4884
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %10, metadata !4885, metadata !382), !dbg !4886
  store i32 1, i32* %7, align 4, !dbg !4887
  %24 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !4888
  %25 = call %struct._GSList* @mainwindows_get_line(%struct.MAIN_WINDOW_REC* %24), !dbg !4889
  store %struct._GSList* %25, %struct._GSList** %8, align 8, !dbg !4890
  %26 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !4891
  store %struct._GSList* %26, %struct._GSList** %9, align 8, !dbg !4893
  br label %27, !dbg !4894

; <label>:27:                                     ; preds = %47, %23
  %28 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !4895
  %29 = icmp ne %struct._GSList* %28, null, !dbg !4898
  br i1 %29, label %30, label %51, !dbg !4899

; <label>:30:                                     ; preds = %27
  %31 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !4900
  %32 = getelementptr inbounds %struct._GSList, %struct._GSList* %31, i32 0, i32 0, !dbg !4902
  %33 = load i8*, i8** %32, align 8, !dbg !4902
  %34 = bitcast i8* %33 to %struct.MAIN_WINDOW_REC*, !dbg !4900
  store %struct.MAIN_WINDOW_REC* %34, %struct.MAIN_WINDOW_REC** %10, align 8, !dbg !4903
  %35 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %10, align 8, !dbg !4904
  %36 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %35, i32 0, i32 8, !dbg !4906
  %37 = load i32, i32* %36, align 8, !dbg !4906
  %38 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %10, align 8, !dbg !4907
  %39 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %38, i32 0, i32 12, !dbg !4908
  %40 = load i32, i32* %39, align 8, !dbg !4908
  %41 = sub nsw i32 %37, %40, !dbg !4909
  %42 = load i32, i32* %5, align 4, !dbg !4910
  %43 = sub nsw i32 %41, %42, !dbg !4911
  %44 = icmp slt i32 %43, 2, !dbg !4912
  br i1 %44, label %45, label %46, !dbg !4913

; <label>:45:                                     ; preds = %30
  store i32 0, i32* %7, align 4, !dbg !4914
  br label %51, !dbg !4916

; <label>:46:                                     ; preds = %30
  br label %47, !dbg !4917

; <label>:47:                                     ; preds = %46
  %48 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !4918
  %49 = getelementptr inbounds %struct._GSList, %struct._GSList* %48, i32 0, i32 1, !dbg !4920
  %50 = load %struct._GSList*, %struct._GSList** %49, align 8, !dbg !4920
  store %struct._GSList* %50, %struct._GSList** %9, align 8, !dbg !4921
  br label %27, !dbg !4922, !llvm.loop !4923

; <label>:51:                                     ; preds = %45, %27
  %52 = load i32, i32* %7, align 4, !dbg !4925
  %53 = icmp ne i32 %52, 0, !dbg !4925
  br i1 %53, label %54, label %99, !dbg !4927

; <label>:54:                                     ; preds = %51
  call void @llvm.dbg.declare(metadata %struct._GSList** %11, metadata !4928, metadata !382), !dbg !4930
  %55 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !4931
  %56 = call %struct._GSList* @mainwindows_get_line(%struct.MAIN_WINDOW_REC* %55), !dbg !4932
  store %struct._GSList* %56, %struct._GSList** %11, align 8, !dbg !4933
  %57 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !4934
  store %struct._GSList* %57, %struct._GSList** %9, align 8, !dbg !4936
  br label %58, !dbg !4937

; <label>:58:                                     ; preds = %71, %54
  %59 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !4938
  %60 = icmp ne %struct._GSList* %59, null, !dbg !4941
  br i1 %60, label %61, label %75, !dbg !4942

; <label>:61:                                     ; preds = %58
  %62 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !4943
  %63 = getelementptr inbounds %struct._GSList, %struct._GSList* %62, i32 0, i32 0, !dbg !4945
  %64 = load i8*, i8** %63, align 8, !dbg !4945
  %65 = bitcast i8* %64 to %struct.MAIN_WINDOW_REC*, !dbg !4943
  store %struct.MAIN_WINDOW_REC* %65, %struct.MAIN_WINDOW_REC** %10, align 8, !dbg !4946
  %66 = load i32, i32* %5, align 4, !dbg !4947
  %67 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %10, align 8, !dbg !4948
  %68 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %67, i32 0, i32 3, !dbg !4949
  %69 = load i32, i32* %68, align 4, !dbg !4950
  %70 = sub nsw i32 %69, %66, !dbg !4950
  store i32 %70, i32* %68, align 4, !dbg !4950
  br label %71, !dbg !4951

; <label>:71:                                     ; preds = %61
  %72 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !4952
  %73 = getelementptr inbounds %struct._GSList, %struct._GSList* %72, i32 0, i32 1, !dbg !4954
  %74 = load %struct._GSList*, %struct._GSList** %73, align 8, !dbg !4954
  store %struct._GSList* %74, %struct._GSList** %9, align 8, !dbg !4955
  br label %58, !dbg !4956, !llvm.loop !4957

; <label>:75:                                     ; preds = %58
  %76 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !4959
  store %struct._GSList* %76, %struct._GSList** %9, align 8, !dbg !4961
  br label %77, !dbg !4962

; <label>:77:                                     ; preds = %90, %75
  %78 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !4963
  %79 = icmp ne %struct._GSList* %78, null, !dbg !4966
  br i1 %79, label %80, label %94, !dbg !4967

; <label>:80:                                     ; preds = %77
  %81 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !4968
  %82 = getelementptr inbounds %struct._GSList, %struct._GSList* %81, i32 0, i32 0, !dbg !4970
  %83 = load i8*, i8** %82, align 8, !dbg !4970
  %84 = bitcast i8* %83 to %struct.MAIN_WINDOW_REC*, !dbg !4968
  store %struct.MAIN_WINDOW_REC* %84, %struct.MAIN_WINDOW_REC** %10, align 8, !dbg !4971
  %85 = load i32, i32* %5, align 4, !dbg !4972
  %86 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %10, align 8, !dbg !4973
  %87 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %86, i32 0, i32 4, !dbg !4974
  %88 = load i32, i32* %87, align 8, !dbg !4975
  %89 = sub nsw i32 %88, %85, !dbg !4975
  store i32 %89, i32* %87, align 8, !dbg !4975
  br label %90, !dbg !4976

; <label>:90:                                     ; preds = %80
  %91 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !4977
  %92 = getelementptr inbounds %struct._GSList, %struct._GSList* %91, i32 0, i32 1, !dbg !4979
  %93 = load %struct._GSList*, %struct._GSList** %92, align 8, !dbg !4979
  store %struct._GSList* %93, %struct._GSList** %9, align 8, !dbg !4980
  br label %77, !dbg !4981, !llvm.loop !4982

; <label>:94:                                     ; preds = %77
  %95 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !4984
  %96 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !4985
  %97 = load i32, i32* %5, align 4, !dbg !4986
  call void @mainwindows_resize_two(%struct._GSList* %95, %struct._GSList* %96, i32 %97), !dbg !4987
  %98 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !4988
  call void @g_slist_free(%struct._GSList* %98), !dbg !4989
  br label %99, !dbg !4990

; <label>:99:                                     ; preds = %94, %51
  %100 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !4991
  call void @g_slist_free(%struct._GSList* %100), !dbg !4992
  %101 = load i32, i32* %7, align 4, !dbg !4993
  store i32 %101, i32* %3, align 4, !dbg !4994
  br label %103, !dbg !4994

; <label>:102:                                    ; preds = %18
  store i32 0, i32* %3, align 4, !dbg !4995
  br label %103, !dbg !4995

; <label>:103:                                    ; preds = %102, %99, %16
  %104 = load i32, i32* %3, align 4, !dbg !4996
  ret i32 %104, !dbg !4996
}

; Function Attrs: nounwind uwtable
define internal i32 @try_rgrow_right(%struct.MAIN_WINDOW_REC*, i32) #0 !dbg !4997 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.MAIN_WINDOW_REC*, align 8
  store %struct.MAIN_WINDOW_REC* %0, %struct.MAIN_WINDOW_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %4, metadata !4998, metadata !382), !dbg !4999
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !5000, metadata !382), !dbg !5001
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %6, metadata !5002, metadata !382), !dbg !5003
  %7 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !5004
  %8 = call %struct.MAIN_WINDOW_REC* @mainwindows_find_right(%struct.MAIN_WINDOW_REC* %7, i32 0), !dbg !5005
  store %struct.MAIN_WINDOW_REC* %8, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !5006
  %9 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !5007
  %10 = icmp ne %struct.MAIN_WINDOW_REC* %9, null, !dbg !5009
  br i1 %10, label %11, label %25, !dbg !5010

; <label>:11:                                     ; preds = %2
  %12 = load i32, i32* %5, align 4, !dbg !5011
  %13 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !5013
  %14 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %13, i32 0, i32 5, !dbg !5014
  %15 = load i32, i32* %14, align 4, !dbg !5015
  %16 = sub nsw i32 %15, %12, !dbg !5015
  store i32 %16, i32* %14, align 4, !dbg !5015
  %17 = load i32, i32* %5, align 4, !dbg !5016
  %18 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !5017
  %19 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %18, i32 0, i32 6, !dbg !5018
  %20 = load i32, i32* %19, align 8, !dbg !5019
  %21 = sub nsw i32 %20, %17, !dbg !5019
  store i32 %21, i32* %19, align 8, !dbg !5019
  %22 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !5020
  %23 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !5021
  %24 = load i32, i32* %5, align 4, !dbg !5022
  call void @mainwindows_rresize_two(%struct.MAIN_WINDOW_REC* %22, %struct.MAIN_WINDOW_REC* %23, i32 %24), !dbg !5023
  store i32 1, i32* %3, align 4, !dbg !5024
  br label %26, !dbg !5024

; <label>:25:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !5025
  br label %26, !dbg !5025

; <label>:26:                                     ; preds = %25, %11
  %27 = load i32, i32* %3, align 4, !dbg !5026
  ret i32 %27, !dbg !5026
}

; Function Attrs: nounwind uwtable
define internal i32 @try_rgrow_left(%struct.MAIN_WINDOW_REC*, i32) #0 !dbg !5027 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.MAIN_WINDOW_REC*, align 8
  store %struct.MAIN_WINDOW_REC* %0, %struct.MAIN_WINDOW_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %4, metadata !5028, metadata !382), !dbg !5029
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !5030, metadata !382), !dbg !5031
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %6, metadata !5032, metadata !382), !dbg !5033
  %7 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !5034
  %8 = call %struct.MAIN_WINDOW_REC* @mainwindows_find_left(%struct.MAIN_WINDOW_REC* %7, i32 0), !dbg !5035
  store %struct.MAIN_WINDOW_REC* %8, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !5036
  %9 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !5037
  %10 = icmp ne %struct.MAIN_WINDOW_REC* %9, null, !dbg !5039
  br i1 %10, label %11, label %25, !dbg !5040

; <label>:11:                                     ; preds = %2
  %12 = load i32, i32* %5, align 4, !dbg !5041
  %13 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !5043
  %14 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %13, i32 0, i32 6, !dbg !5044
  %15 = load i32, i32* %14, align 8, !dbg !5045
  %16 = add nsw i32 %15, %12, !dbg !5045
  store i32 %16, i32* %14, align 8, !dbg !5045
  %17 = load i32, i32* %5, align 4, !dbg !5046
  %18 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !5047
  %19 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %18, i32 0, i32 5, !dbg !5048
  %20 = load i32, i32* %19, align 4, !dbg !5049
  %21 = add nsw i32 %20, %17, !dbg !5049
  store i32 %21, i32* %19, align 4, !dbg !5049
  %22 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !5050
  %23 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !5051
  %24 = load i32, i32* %5, align 4, !dbg !5052
  call void @mainwindows_rresize_two(%struct.MAIN_WINDOW_REC* %22, %struct.MAIN_WINDOW_REC* %23, i32 %24), !dbg !5053
  store i32 1, i32* %3, align 4, !dbg !5054
  br label %26, !dbg !5054

; <label>:25:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !5055
  br label %26, !dbg !5055

; <label>:26:                                     ; preds = %25, %11
  %27 = load i32, i32* %3, align 4, !dbg !5056
  ret i32 %27, !dbg !5056
}

; Function Attrs: nounwind uwtable
define internal void @mainwindows_rresize_two(%struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC*, i32) #0 !dbg !5057 {
  %4 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %5 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %6 = alloca i32, align 4
  store %struct.MAIN_WINDOW_REC* %0, %struct.MAIN_WINDOW_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %4, metadata !5060, metadata !382), !dbg !5061
  store %struct.MAIN_WINDOW_REC* %1, %struct.MAIN_WINDOW_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %5, metadata !5062, metadata !382), !dbg !5063
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !5064, metadata !382), !dbg !5065
  call void @irssi_set_dirty(), !dbg !5066
  %7 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !5067
  %8 = load i32, i32* %6, align 4, !dbg !5068
  call void @mainwindow_resize(%struct.MAIN_WINDOW_REC* %7, i32 %8, i32 0), !dbg !5069
  %9 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !5070
  %10 = load i32, i32* %6, align 4, !dbg !5071
  %11 = sub nsw i32 0, %10, !dbg !5072
  call void @mainwindow_resize(%struct.MAIN_WINDOW_REC* %9, i32 %11, i32 0), !dbg !5073
  %12 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !5074
  %13 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %12, i32 0, i32 16, !dbg !5075
  %14 = load i8, i8* %13, align 8, !dbg !5076
  %15 = and i8 %14, -2, !dbg !5076
  %16 = or i8 %15, 1, !dbg !5076
  store i8 %16, i8* %13, align 8, !dbg !5076
  %17 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !5077
  %18 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %17, i32 0, i32 16, !dbg !5078
  %19 = load i8, i8* %18, align 8, !dbg !5079
  %20 = and i8 %19, -2, !dbg !5079
  %21 = or i8 %20, 1, !dbg !5079
  store i8 %21, i8* %18, align 8, !dbg !5079
  ret void, !dbg !5080
}

; Function Attrs: nounwind uwtable
define internal i32 @try_rshrink_right(%struct.MAIN_WINDOW_REC*, i32) #0 !dbg !5081 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.MAIN_WINDOW_REC*, align 8
  store %struct.MAIN_WINDOW_REC* %0, %struct.MAIN_WINDOW_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %4, metadata !5082, metadata !382), !dbg !5083
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !5084, metadata !382), !dbg !5085
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %6, metadata !5086, metadata !382), !dbg !5087
  br label %7, !dbg !5088, !llvm.loop !5089

; <label>:7:                                      ; preds = %2
  %8 = load i32, i32* %5, align 4, !dbg !5090
  %9 = icmp sge i32 %8, 0, !dbg !5094
  br i1 %9, label %10, label %11, !dbg !5090

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !5095

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.try_rshrink_right, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0)), !dbg !5098
  store i32 0, i32* %3, align 4, !dbg !5101
  br label %45, !dbg !5101

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !5102

; <label>:13:                                     ; preds = %12
  %14 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !5104
  %15 = call %struct.MAIN_WINDOW_REC* @mainwindows_find_right(%struct.MAIN_WINDOW_REC* %14, i32 0), !dbg !5105
  store %struct.MAIN_WINDOW_REC* %15, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !5106
  %16 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !5107
  %17 = icmp ne %struct.MAIN_WINDOW_REC* %16, null, !dbg !5109
  br i1 %17, label %18, label %44, !dbg !5110

; <label>:18:                                     ; preds = %13
  %19 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !5111
  %20 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %19, i32 0, i32 7, !dbg !5114
  %21 = load i32, i32* %20, align 4, !dbg !5114
  %22 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !5115
  %23 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %22, i32 0, i32 15, !dbg !5116
  %24 = load i32, i32* %23, align 4, !dbg !5116
  %25 = sub nsw i32 %21, %24, !dbg !5117
  %26 = load i32, i32* %5, align 4, !dbg !5118
  %27 = sub nsw i32 %25, %26, !dbg !5119
  %28 = icmp slt i32 %27, 10, !dbg !5120
  br i1 %28, label %29, label %30, !dbg !5121

; <label>:29:                                     ; preds = %18
  store i32 0, i32* %3, align 4, !dbg !5122
  br label %45, !dbg !5122

; <label>:30:                                     ; preds = %18
  %31 = load i32, i32* %5, align 4, !dbg !5124
  %32 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !5125
  %33 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %32, i32 0, i32 5, !dbg !5126
  %34 = load i32, i32* %33, align 4, !dbg !5127
  %35 = add nsw i32 %34, %31, !dbg !5127
  store i32 %35, i32* %33, align 4, !dbg !5127
  %36 = load i32, i32* %5, align 4, !dbg !5128
  %37 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !5129
  %38 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %37, i32 0, i32 6, !dbg !5130
  %39 = load i32, i32* %38, align 8, !dbg !5131
  %40 = add nsw i32 %39, %36, !dbg !5131
  store i32 %40, i32* %38, align 8, !dbg !5131
  %41 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !5132
  %42 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !5133
  %43 = load i32, i32* %5, align 4, !dbg !5134
  call void @mainwindows_rresize_two(%struct.MAIN_WINDOW_REC* %41, %struct.MAIN_WINDOW_REC* %42, i32 %43), !dbg !5135
  store i32 1, i32* %3, align 4, !dbg !5136
  br label %45, !dbg !5136

; <label>:44:                                     ; preds = %13
  store i32 0, i32* %3, align 4, !dbg !5137
  br label %45, !dbg !5137

; <label>:45:                                     ; preds = %44, %30, %29, %11
  %46 = load i32, i32* %3, align 4, !dbg !5138
  ret i32 %46, !dbg !5138
}

; Function Attrs: nounwind uwtable
define internal i32 @try_rshrink_left(%struct.MAIN_WINDOW_REC*, i32) #0 !dbg !5139 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.MAIN_WINDOW_REC*, align 8
  store %struct.MAIN_WINDOW_REC* %0, %struct.MAIN_WINDOW_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %4, metadata !5140, metadata !382), !dbg !5141
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !5142, metadata !382), !dbg !5143
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %6, metadata !5144, metadata !382), !dbg !5145
  br label %7, !dbg !5146, !llvm.loop !5147

; <label>:7:                                      ; preds = %2
  %8 = load i32, i32* %5, align 4, !dbg !5148
  %9 = icmp sge i32 %8, 0, !dbg !5152
  br i1 %9, label %10, label %11, !dbg !5148

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !5153

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.try_rshrink_left, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0)), !dbg !5156
  store i32 0, i32* %3, align 4, !dbg !5159
  br label %45, !dbg !5159

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !5160

; <label>:13:                                     ; preds = %12
  %14 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !5162
  %15 = call %struct.MAIN_WINDOW_REC* @mainwindows_find_left(%struct.MAIN_WINDOW_REC* %14, i32 0), !dbg !5163
  store %struct.MAIN_WINDOW_REC* %15, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !5164
  %16 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !5165
  %17 = icmp ne %struct.MAIN_WINDOW_REC* %16, null, !dbg !5167
  br i1 %17, label %18, label %44, !dbg !5168

; <label>:18:                                     ; preds = %13
  %19 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !5169
  %20 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %19, i32 0, i32 7, !dbg !5172
  %21 = load i32, i32* %20, align 4, !dbg !5172
  %22 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !5173
  %23 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %22, i32 0, i32 15, !dbg !5174
  %24 = load i32, i32* %23, align 4, !dbg !5174
  %25 = sub nsw i32 %21, %24, !dbg !5175
  %26 = load i32, i32* %5, align 4, !dbg !5176
  %27 = sub nsw i32 %25, %26, !dbg !5177
  %28 = icmp slt i32 %27, 10, !dbg !5178
  br i1 %28, label %29, label %30, !dbg !5179

; <label>:29:                                     ; preds = %18
  store i32 0, i32* %3, align 4, !dbg !5180
  br label %45, !dbg !5180

; <label>:30:                                     ; preds = %18
  %31 = load i32, i32* %5, align 4, !dbg !5182
  %32 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !5183
  %33 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %32, i32 0, i32 5, !dbg !5184
  %34 = load i32, i32* %33, align 4, !dbg !5185
  %35 = sub nsw i32 %34, %31, !dbg !5185
  store i32 %35, i32* %33, align 4, !dbg !5185
  %36 = load i32, i32* %5, align 4, !dbg !5186
  %37 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !5187
  %38 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %37, i32 0, i32 6, !dbg !5188
  %39 = load i32, i32* %38, align 8, !dbg !5189
  %40 = sub nsw i32 %39, %36, !dbg !5189
  store i32 %40, i32* %38, align 8, !dbg !5189
  %41 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !5190
  %42 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !5191
  %43 = load i32, i32* %5, align 4, !dbg !5192
  call void @mainwindows_rresize_two(%struct.MAIN_WINDOW_REC* %41, %struct.MAIN_WINDOW_REC* %42, i32 %43), !dbg !5193
  store i32 1, i32* %3, align 4, !dbg !5194
  br label %45, !dbg !5194

; <label>:44:                                     ; preds = %13
  store i32 0, i32* %3, align 4, !dbg !5195
  br label %45, !dbg !5195

; <label>:45:                                     ; preds = %44, %30, %29, %11
  %46 = load i32, i32* %3, align 4, !dbg !5196
  ret i32 %46, !dbg !5196
}

declare void @term_window_move(%struct._TERM_WINDOW*, i32, i32, i32, i32) #2

declare void @gui_window_resize(%struct._WINDOW_REC*, i32, i32) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @mainwindow_grow_int(i32) #0 !dbg !5197 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5198, metadata !382), !dbg !5199
  %3 = load i32, i32* %2, align 4, !dbg !5200
  %4 = icmp eq i32 %3, 0, !dbg !5202
  br i1 %4, label %5, label %6, !dbg !5203

; <label>:5:                                      ; preds = %1
  br label %37, !dbg !5204

; <label>:6:                                      ; preds = %1
  %7 = load i32, i32* %2, align 4, !dbg !5206
  %8 = icmp slt i32 %7, 0, !dbg !5208
  br i1 %8, label %9, label %23, !dbg !5209

; <label>:9:                                      ; preds = %6
  %10 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !5210
  %11 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %10, i32 0, i32 20, !dbg !5213
  %12 = load i8*, i8** %11, align 8, !dbg !5213
  %13 = bitcast i8* %12 to %struct.GUI_WINDOW_REC*, !dbg !5214
  %14 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %13, i32 0, i32 0, !dbg !5215
  %15 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %14, align 8, !dbg !5215
  %16 = load i32, i32* %2, align 4, !dbg !5216
  %17 = sub nsw i32 0, %16, !dbg !5217
  %18 = call i32 @mainwindow_shrink(%struct.MAIN_WINDOW_REC* %15, i32 %17, i32 0), !dbg !5218
  %19 = icmp ne i32 %18, 0, !dbg !5218
  br i1 %19, label %22, label %20, !dbg !5219

; <label>:20:                                     ; preds = %9
  %21 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !5220
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), %struct._WINDOW_REC* %21, i32 262144, i32 10), !dbg !5222
  br label %22, !dbg !5223

; <label>:22:                                     ; preds = %20, %9
  br label %36, !dbg !5224

; <label>:23:                                     ; preds = %6
  %24 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !5225
  %25 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %24, i32 0, i32 20, !dbg !5228
  %26 = load i8*, i8** %25, align 8, !dbg !5228
  %27 = bitcast i8* %26 to %struct.GUI_WINDOW_REC*, !dbg !5229
  %28 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %27, i32 0, i32 0, !dbg !5230
  %29 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %28, align 8, !dbg !5230
  %30 = load i32, i32* %2, align 4, !dbg !5231
  %31 = call i32 @mainwindow_grow(%struct.MAIN_WINDOW_REC* %29, i32 %30, i32 0), !dbg !5232
  %32 = icmp ne i32 %31, 0, !dbg !5232
  br i1 %32, label %35, label %33, !dbg !5233

; <label>:33:                                     ; preds = %23
  %34 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !5234
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), %struct._WINDOW_REC* %34, i32 262144, i32 10), !dbg !5236
  br label %35, !dbg !5237

; <label>:35:                                     ; preds = %33, %23
  br label %36

; <label>:36:                                     ; preds = %35, %22
  br label %37

; <label>:37:                                     ; preds = %5, %36
  ret void, !dbg !5238
}

declare void @printformat_module_window(i8*, %struct._WINDOW_REC*, i32, i32, ...) #2

declare i32 @is_numeric(i8*, i8 signext) #2

declare %struct._WINDOW_REC* @window_find_refnum(i32) #2

declare %struct._WINDOW_REC* @window_find_item(%struct._SERVER_REC*, i8*) #2

declare i32 @settings_get_bool(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @_cmd_window_show_opt(i8*, i32) #0 !dbg !5239 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %6 = alloca %struct._WINDOW_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !5242, metadata !382), !dbg !5243
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !5244, metadata !382), !dbg !5245
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %5, metadata !5246, metadata !382), !dbg !5247
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %6, metadata !5248, metadata !382), !dbg !5249
  %7 = load i8*, i8** %3, align 8, !dbg !5250
  %8 = load i8, i8* %7, align 1, !dbg !5252
  %9 = sext i8 %8 to i32, !dbg !5252
  %10 = icmp eq i32 %9, 0, !dbg !5253
  br i1 %10, label %11, label %15, !dbg !5254

; <label>:11:                                     ; preds = %2
  br label %12, !dbg !5255, !llvm.loop !5257

; <label>:12:                                     ; preds = %11
  %13 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !5259
  call void @signal_stop(), !dbg !5262
  br label %86, !dbg !5264
                                                  ; No predecessors!
  br label %15, !dbg !5265

; <label>:15:                                     ; preds = %14, %2
  %16 = load i8*, i8** %3, align 8, !dbg !5267
  %17 = call i32 @is_numeric(i8* %16, i8 signext 0), !dbg !5269
  %18 = icmp ne i32 %17, 0, !dbg !5269
  br i1 %18, label %19, label %29, !dbg !5270

; <label>:19:                                     ; preds = %15
  %20 = load i8*, i8** %3, align 8, !dbg !5271
  %21 = call i32 @atoi(i8* %20) #4, !dbg !5273
  %22 = call %struct._WINDOW_REC* @window_find_refnum(i32 %21), !dbg !5274
  store %struct._WINDOW_REC* %22, %struct._WINDOW_REC** %6, align 8, !dbg !5276
  %23 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %6, align 8, !dbg !5277
  %24 = icmp eq %struct._WINDOW_REC* %23, null, !dbg !5279
  br i1 %24, label %25, label %28, !dbg !5280

; <label>:25:                                     ; preds = %19
  %26 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !5281
  %27 = load i8*, i8** %3, align 8, !dbg !5283
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), %struct._WINDOW_REC* %26, i32 1048576, i32 9, i8* %27), !dbg !5284
  br label %28, !dbg !5285

; <label>:28:                                     ; preds = %25, %19
  br label %35, !dbg !5286

; <label>:29:                                     ; preds = %15
  %30 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !5287
  %31 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %30, i32 0, i32 6, !dbg !5289
  %32 = load %struct._SERVER_REC*, %struct._SERVER_REC** %31, align 8, !dbg !5289
  %33 = load i8*, i8** %3, align 8, !dbg !5290
  %34 = call %struct._WINDOW_REC* @window_find_item(%struct._SERVER_REC* %32, i8* %33), !dbg !5291
  store %struct._WINDOW_REC* %34, %struct._WINDOW_REC** %6, align 8, !dbg !5292
  br label %35

; <label>:35:                                     ; preds = %29, %28
  %36 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %6, align 8, !dbg !5293
  %37 = icmp eq %struct._WINDOW_REC* %36, null, !dbg !5295
  br i1 %37, label %49, label %38, !dbg !5296

; <label>:38:                                     ; preds = %35
  %39 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %6, align 8, !dbg !5297
  %40 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %39, i32 0, i32 20, !dbg !5299
  %41 = load i8*, i8** %40, align 8, !dbg !5299
  %42 = bitcast i8* %41 to %struct.GUI_WINDOW_REC*, !dbg !5300
  %43 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %42, i32 0, i32 0, !dbg !5301
  %44 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %43, align 8, !dbg !5301
  %45 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %44, i32 0, i32 0, !dbg !5302
  %46 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %45, align 8, !dbg !5302
  %47 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %6, align 8, !dbg !5303
  %48 = icmp eq %struct._WINDOW_REC* %46, %47, !dbg !5304
  br i1 %48, label %49, label %50, !dbg !5305

; <label>:49:                                     ; preds = %38, %35
  br label %86, !dbg !5306

; <label>:50:                                     ; preds = %38
  %51 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %6, align 8, !dbg !5307
  %52 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %51, i32 0, i32 20, !dbg !5309
  %53 = load i8*, i8** %52, align 8, !dbg !5309
  %54 = bitcast i8* %53 to %struct.GUI_WINDOW_REC*, !dbg !5310
  %55 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %54, i32 0, i32 2, !dbg !5311
  %56 = load i8, i8* %55, align 8, !dbg !5311
  %57 = lshr i8 %56, 2, !dbg !5311
  %58 = and i8 %57, 1, !dbg !5311
  %59 = zext i8 %58 to i32, !dbg !5311
  %60 = icmp ne i32 %59, 0, !dbg !5312
  br i1 %60, label %61, label %67, !dbg !5313

; <label>:61:                                     ; preds = %50
  %62 = call i32 @settings_get_bool(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i32 0, i32 0)), !dbg !5314
  %63 = icmp ne i32 %62, 0, !dbg !5314
  br i1 %63, label %66, label %64, !dbg !5317

; <label>:64:                                     ; preds = %61
  %65 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !5318
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), %struct._WINDOW_REC* %65, i32 1048576, i32 13), !dbg !5320
  br label %86, !dbg !5321

; <label>:66:                                     ; preds = %61
  br label %67, !dbg !5322

; <label>:67:                                     ; preds = %66, %50
  %68 = load i32, i32* %4, align 4, !dbg !5323
  %69 = call %struct.MAIN_WINDOW_REC* @mainwindow_create(i32 %68), !dbg !5324
  store %struct.MAIN_WINDOW_REC* %69, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !5325
  %70 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !5326
  %71 = icmp eq %struct.MAIN_WINDOW_REC* %70, null, !dbg !5328
  br i1 %71, label %72, label %74, !dbg !5329

; <label>:72:                                     ; preds = %67
  %73 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !5330
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), %struct._WINDOW_REC* %73, i32 1048576, i32 10), !dbg !5332
  br label %86, !dbg !5333

; <label>:74:                                     ; preds = %67
  %75 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %6, align 8, !dbg !5334
  %76 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !5335
  %77 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %76, i32 0, i32 0, !dbg !5336
  store %struct._WINDOW_REC* %75, %struct._WINDOW_REC** %77, align 8, !dbg !5337
  %78 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %6, align 8, !dbg !5338
  %79 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !5339
  call void @gui_window_reparent(%struct._WINDOW_REC* %78, %struct.MAIN_WINDOW_REC* %79), !dbg !5340
  %80 = call i32 @settings_get_bool(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.40, i32 0, i32 0)), !dbg !5341
  %81 = icmp ne i32 %80, 0, !dbg !5341
  br i1 %81, label %82, label %84, !dbg !5343

; <label>:82:                                     ; preds = %74
  %83 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %6, align 8, !dbg !5344
  call void @gui_window_set_sticky(%struct._WINDOW_REC* %83), !dbg !5345
  br label %84, !dbg !5345

; <label>:84:                                     ; preds = %82, %74
  store %struct.MAIN_WINDOW_REC* null, %struct.MAIN_WINDOW_REC** @active_mainwin, align 8, !dbg !5346
  %85 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %6, align 8, !dbg !5347
  call void @window_set_active(%struct._WINDOW_REC* %85), !dbg !5348
  br label %86, !dbg !5349

; <label>:86:                                     ; preds = %84, %72, %64, %49, %12
  ret void, !dbg !5350
}

declare void @signal_stop() #2

declare void @gui_window_set_sticky(%struct._WINDOW_REC*) #2

; Function Attrs: nounwind uwtable
define internal %struct.MAIN_WINDOW_REC* @mainwindows_find_left_upper(%struct.MAIN_WINDOW_REC*) #0 !dbg !5352 {
  %2 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %3 = alloca %struct.MAIN_WINDOW_REC*, align 8
  store %struct.MAIN_WINDOW_REC* %0, %struct.MAIN_WINDOW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %2, metadata !5353, metadata !382), !dbg !5354
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %3, metadata !5355, metadata !382), !dbg !5356
  %4 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !5357
  %5 = call %struct.MAIN_WINDOW_REC* @mainwindows_find_left(%struct.MAIN_WINDOW_REC* %4, i32 0), !dbg !5358
  store %struct.MAIN_WINDOW_REC* %5, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !5359
  %6 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !5360
  %7 = icmp eq %struct.MAIN_WINDOW_REC* %6, null, !dbg !5362
  br i1 %7, label %8, label %12, !dbg !5363

; <label>:8:                                      ; preds = %1
  %9 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !5364
  %10 = call %struct.MAIN_WINDOW_REC* @mainwindows_find_upper(%struct.MAIN_WINDOW_REC* %9), !dbg !5365
  %11 = call %struct.MAIN_WINDOW_REC* @mainwindows_find_left(%struct.MAIN_WINDOW_REC* %10, i32 1), !dbg !5366
  store %struct.MAIN_WINDOW_REC* %11, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !5368
  br label %12, !dbg !5369

; <label>:12:                                     ; preds = %8, %1
  %13 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !5370
  ret %struct.MAIN_WINDOW_REC* %13, !dbg !5371
}

; Function Attrs: nounwind uwtable
define internal %struct.MAIN_WINDOW_REC* @mainwindows_find_lower_right(%struct.MAIN_WINDOW_REC*) #0 !dbg !5372 {
  %2 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %3 = alloca %struct.MAIN_WINDOW_REC*, align 8
  store %struct.MAIN_WINDOW_REC* %0, %struct.MAIN_WINDOW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %2, metadata !5373, metadata !382), !dbg !5374
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %3, metadata !5375, metadata !382), !dbg !5376
  %4 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !5377
  %5 = call %struct.MAIN_WINDOW_REC* @mainwindows_find_right(%struct.MAIN_WINDOW_REC* %4, i32 0), !dbg !5378
  store %struct.MAIN_WINDOW_REC* %5, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !5379
  %6 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !5380
  %7 = icmp eq %struct.MAIN_WINDOW_REC* %6, null, !dbg !5382
  br i1 %7, label %8, label %11, !dbg !5383

; <label>:8:                                      ; preds = %1
  %9 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !5384
  %10 = call %struct.MAIN_WINDOW_REC* @mainwindows_find_lower(%struct.MAIN_WINDOW_REC* %9), !dbg !5385
  store %struct.MAIN_WINDOW_REC* %10, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !5386
  br label %11, !dbg !5387

; <label>:11:                                     ; preds = %8, %1
  %12 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !5388
  ret %struct.MAIN_WINDOW_REC* %12, !dbg !5389
}

; Function Attrs: nounwind uwtable
define internal i32 @window_refnum_left(i32, i32) #0 !dbg !5390 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %7 = alloca %struct._WINDOW_REC*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !5391, metadata !382), !dbg !5392
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !5393, metadata !382), !dbg !5394
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %6, metadata !5395, metadata !382), !dbg !5396
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %7, metadata !5397, metadata !382), !dbg !5398
  %8 = load i32, i32* %4, align 4, !dbg !5399
  %9 = call %struct._WINDOW_REC* @window_find_refnum(i32 %8), !dbg !5400
  store %struct._WINDOW_REC* %9, %struct._WINDOW_REC** %7, align 8, !dbg !5401
  br label %10, !dbg !5402, !llvm.loop !5403

; <label>:10:                                     ; preds = %2
  %11 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !5404
  %12 = icmp ne %struct._WINDOW_REC* %11, null, !dbg !5408
  br i1 %12, label %13, label %14, !dbg !5404

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !5409

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.window_refnum_left, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)), !dbg !5412
  store i32 -1, i32* %3, align 4, !dbg !5415
  br label %87, !dbg !5415

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !5416

; <label>:16:                                     ; preds = %15
  %17 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !5418
  %18 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %17, i32 0, i32 20, !dbg !5419
  %19 = load i8*, i8** %18, align 8, !dbg !5419
  %20 = bitcast i8* %19 to %struct.GUI_WINDOW_REC*, !dbg !5420
  %21 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %20, i32 0, i32 0, !dbg !5421
  %22 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %21, align 8, !dbg !5421
  %23 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %22, i32 0, i32 2, !dbg !5422
  %24 = load i32, i32* %23, align 8, !dbg !5422
  %25 = icmp ne i32 %24, 0, !dbg !5423
  br i1 %25, label %26, label %33, !dbg !5423

; <label>:26:                                     ; preds = %16
  %27 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !5424
  %28 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %27, i32 0, i32 20, !dbg !5425
  %29 = load i8*, i8** %28, align 8, !dbg !5425
  %30 = bitcast i8* %29 to %struct.GUI_WINDOW_REC*, !dbg !5426
  %31 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %30, i32 0, i32 0, !dbg !5427
  %32 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %31, align 8, !dbg !5427
  br label %34, !dbg !5428

; <label>:33:                                     ; preds = %16
  br label %34, !dbg !5430

; <label>:34:                                     ; preds = %33, %26
  %35 = phi %struct.MAIN_WINDOW_REC* [ %32, %26 ], [ null, %33 ], !dbg !5432
  store %struct.MAIN_WINDOW_REC* %35, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !5434
  br label %36, !dbg !5435, !llvm.loop !5436

; <label>:36:                                     ; preds = %82, %34
  %37 = load i32, i32* %4, align 4, !dbg !5437
  %38 = load i32, i32* %5, align 4, !dbg !5439
  %39 = call i32 @window_refnum_prev(i32 %37, i32 %38), !dbg !5440
  store i32 %39, i32* %4, align 4, !dbg !5441
  %40 = load i32, i32* %4, align 4, !dbg !5442
  %41 = icmp slt i32 %40, 0, !dbg !5444
  br i1 %41, label %42, label %43, !dbg !5445

; <label>:42:                                     ; preds = %36
  br label %85, !dbg !5446

; <label>:43:                                     ; preds = %36
  %44 = load i32, i32* %4, align 4, !dbg !5447
  %45 = call %struct._WINDOW_REC* @window_find_refnum(i32 %44), !dbg !5448
  store %struct._WINDOW_REC* %45, %struct._WINDOW_REC** %7, align 8, !dbg !5449
  br label %46, !dbg !5450

; <label>:46:                                     ; preds = %43
  %47 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !5451
  %48 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %47, i32 0, i32 20, !dbg !5452
  %49 = load i8*, i8** %48, align 8, !dbg !5452
  %50 = bitcast i8* %49 to %struct.GUI_WINDOW_REC*, !dbg !5453
  %51 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %50, i32 0, i32 2, !dbg !5454
  %52 = load i8, i8* %51, align 8, !dbg !5454
  %53 = lshr i8 %52, 2, !dbg !5454
  %54 = and i8 %53, 1, !dbg !5454
  %55 = zext i8 %54 to i32, !dbg !5454
  %56 = icmp ne i32 %55, 0, !dbg !5455
  br i1 %56, label %60, label %57, !dbg !5456

; <label>:57:                                     ; preds = %46
  %58 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !5457
  %59 = icmp eq %struct.MAIN_WINDOW_REC* %58, null, !dbg !5458
  br i1 %59, label %82, label %60, !dbg !5459

; <label>:60:                                     ; preds = %57, %46
  %61 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !5460
  %62 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %61, i32 0, i32 20, !dbg !5461
  %63 = load i8*, i8** %62, align 8, !dbg !5461
  %64 = bitcast i8* %63 to %struct.GUI_WINDOW_REC*, !dbg !5462
  %65 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %64, i32 0, i32 2, !dbg !5463
  %66 = load i8, i8* %65, align 8, !dbg !5463
  %67 = lshr i8 %66, 2, !dbg !5463
  %68 = and i8 %67, 1, !dbg !5463
  %69 = zext i8 %68 to i32, !dbg !5463
  %70 = icmp ne i32 %69, 0, !dbg !5464
  br i1 %70, label %71, label %80, !dbg !5465

; <label>:71:                                     ; preds = %60
  %72 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !5466
  %73 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %72, i32 0, i32 20, !dbg !5468
  %74 = load i8*, i8** %73, align 8, !dbg !5468
  %75 = bitcast i8* %74 to %struct.GUI_WINDOW_REC*, !dbg !5469
  %76 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %75, i32 0, i32 0, !dbg !5470
  %77 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %76, align 8, !dbg !5470
  %78 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !5471
  %79 = icmp eq %struct.MAIN_WINDOW_REC* %77, %78, !dbg !5472
  br label %80

; <label>:80:                                     ; preds = %71, %60
  %81 = phi i1 [ false, %60 ], [ %79, %71 ]
  br label %82, !dbg !5473

; <label>:82:                                     ; preds = %80, %57
  %83 = phi i1 [ true, %57 ], [ %81, %80 ]
  %84 = xor i1 %83, true, !dbg !5475
  br i1 %84, label %36, label %85, !dbg !5477, !llvm.loop !5436

; <label>:85:                                     ; preds = %82, %42
  %86 = load i32, i32* %4, align 4, !dbg !5478
  store i32 %86, i32* %3, align 4, !dbg !5479
  br label %87, !dbg !5479

; <label>:87:                                     ; preds = %85, %14
  %88 = load i32, i32* %3, align 4, !dbg !5480
  ret i32 %88, !dbg !5480
}

declare i32 @window_refnum_prev(i32, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @window_refnum_right(i32, i32) #0 !dbg !5481 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %7 = alloca %struct._WINDOW_REC*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !5482, metadata !382), !dbg !5483
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !5484, metadata !382), !dbg !5485
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %6, metadata !5486, metadata !382), !dbg !5487
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %7, metadata !5488, metadata !382), !dbg !5489
  %8 = load i32, i32* %4, align 4, !dbg !5490
  %9 = call %struct._WINDOW_REC* @window_find_refnum(i32 %8), !dbg !5491
  store %struct._WINDOW_REC* %9, %struct._WINDOW_REC** %7, align 8, !dbg !5492
  br label %10, !dbg !5493, !llvm.loop !5494

; <label>:10:                                     ; preds = %2
  %11 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !5495
  %12 = icmp ne %struct._WINDOW_REC* %11, null, !dbg !5499
  br i1 %12, label %13, label %14, !dbg !5495

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !5500

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.window_refnum_right, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)), !dbg !5503
  store i32 -1, i32* %3, align 4, !dbg !5506
  br label %87, !dbg !5506

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !5507

; <label>:16:                                     ; preds = %15
  %17 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !5509
  %18 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %17, i32 0, i32 20, !dbg !5510
  %19 = load i8*, i8** %18, align 8, !dbg !5510
  %20 = bitcast i8* %19 to %struct.GUI_WINDOW_REC*, !dbg !5511
  %21 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %20, i32 0, i32 0, !dbg !5512
  %22 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %21, align 8, !dbg !5512
  %23 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %22, i32 0, i32 2, !dbg !5513
  %24 = load i32, i32* %23, align 8, !dbg !5513
  %25 = icmp ne i32 %24, 0, !dbg !5514
  br i1 %25, label %26, label %33, !dbg !5514

; <label>:26:                                     ; preds = %16
  %27 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !5515
  %28 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %27, i32 0, i32 20, !dbg !5516
  %29 = load i8*, i8** %28, align 8, !dbg !5516
  %30 = bitcast i8* %29 to %struct.GUI_WINDOW_REC*, !dbg !5517
  %31 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %30, i32 0, i32 0, !dbg !5518
  %32 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %31, align 8, !dbg !5518
  br label %34, !dbg !5519

; <label>:33:                                     ; preds = %16
  br label %34, !dbg !5521

; <label>:34:                                     ; preds = %33, %26
  %35 = phi %struct.MAIN_WINDOW_REC* [ %32, %26 ], [ null, %33 ], !dbg !5523
  store %struct.MAIN_WINDOW_REC* %35, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !5525
  br label %36, !dbg !5526, !llvm.loop !5527

; <label>:36:                                     ; preds = %82, %34
  %37 = load i32, i32* %4, align 4, !dbg !5528
  %38 = load i32, i32* %5, align 4, !dbg !5530
  %39 = call i32 @window_refnum_next(i32 %37, i32 %38), !dbg !5531
  store i32 %39, i32* %4, align 4, !dbg !5532
  %40 = load i32, i32* %4, align 4, !dbg !5533
  %41 = icmp slt i32 %40, 0, !dbg !5535
  br i1 %41, label %42, label %43, !dbg !5536

; <label>:42:                                     ; preds = %36
  br label %85, !dbg !5537

; <label>:43:                                     ; preds = %36
  %44 = load i32, i32* %4, align 4, !dbg !5538
  %45 = call %struct._WINDOW_REC* @window_find_refnum(i32 %44), !dbg !5539
  store %struct._WINDOW_REC* %45, %struct._WINDOW_REC** %7, align 8, !dbg !5540
  br label %46, !dbg !5541

; <label>:46:                                     ; preds = %43
  %47 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !5542
  %48 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %47, i32 0, i32 20, !dbg !5543
  %49 = load i8*, i8** %48, align 8, !dbg !5543
  %50 = bitcast i8* %49 to %struct.GUI_WINDOW_REC*, !dbg !5544
  %51 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %50, i32 0, i32 2, !dbg !5545
  %52 = load i8, i8* %51, align 8, !dbg !5545
  %53 = lshr i8 %52, 2, !dbg !5545
  %54 = and i8 %53, 1, !dbg !5545
  %55 = zext i8 %54 to i32, !dbg !5545
  %56 = icmp ne i32 %55, 0, !dbg !5546
  br i1 %56, label %60, label %57, !dbg !5547

; <label>:57:                                     ; preds = %46
  %58 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !5548
  %59 = icmp eq %struct.MAIN_WINDOW_REC* %58, null, !dbg !5549
  br i1 %59, label %82, label %60, !dbg !5550

; <label>:60:                                     ; preds = %57, %46
  %61 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !5551
  %62 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %61, i32 0, i32 20, !dbg !5552
  %63 = load i8*, i8** %62, align 8, !dbg !5552
  %64 = bitcast i8* %63 to %struct.GUI_WINDOW_REC*, !dbg !5553
  %65 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %64, i32 0, i32 2, !dbg !5554
  %66 = load i8, i8* %65, align 8, !dbg !5554
  %67 = lshr i8 %66, 2, !dbg !5554
  %68 = and i8 %67, 1, !dbg !5554
  %69 = zext i8 %68 to i32, !dbg !5554
  %70 = icmp ne i32 %69, 0, !dbg !5555
  br i1 %70, label %71, label %80, !dbg !5556

; <label>:71:                                     ; preds = %60
  %72 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !5557
  %73 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %72, i32 0, i32 20, !dbg !5559
  %74 = load i8*, i8** %73, align 8, !dbg !5559
  %75 = bitcast i8* %74 to %struct.GUI_WINDOW_REC*, !dbg !5560
  %76 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %75, i32 0, i32 0, !dbg !5561
  %77 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %76, align 8, !dbg !5561
  %78 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %6, align 8, !dbg !5562
  %79 = icmp eq %struct.MAIN_WINDOW_REC* %77, %78, !dbg !5563
  br label %80

; <label>:80:                                     ; preds = %71, %60
  %81 = phi i1 [ false, %60 ], [ %79, %71 ]
  br label %82, !dbg !5564

; <label>:82:                                     ; preds = %80, %57
  %83 = phi i1 [ true, %57 ], [ %81, %80 ]
  %84 = xor i1 %83, true, !dbg !5566
  br i1 %84, label %36, label %85, !dbg !5568, !llvm.loop !5527

; <label>:85:                                     ; preds = %82, %42
  %86 = load i32, i32* %4, align 4, !dbg !5569
  store i32 %86, i32* %3, align 4, !dbg !5570
  br label %87, !dbg !5570

; <label>:87:                                     ; preds = %85, %14
  %88 = load i32, i32* %3, align 4, !dbg !5571
  ret i32 %88, !dbg !5571
}

declare i32 @window_refnum_next(i32, i32) #2

declare i32 @g_ascii_strncasecmp(i8*, i8*, i64) #2

; Function Attrs: nounwind readonly
declare i32 @toupper(i32) #3

declare void @gui_window_set_unsticky(%struct._WINDOW_REC*) #2

; Function Attrs: nounwind uwtable
define internal void @window_reparent(%struct._WINDOW_REC*, %struct.MAIN_WINDOW_REC*) #0 !dbg !5572 {
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %5 = alloca %struct.MAIN_WINDOW_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !5575, metadata !382), !dbg !5576
  store %struct.MAIN_WINDOW_REC* %1, %struct.MAIN_WINDOW_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %4, metadata !5577, metadata !382), !dbg !5578
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %5, metadata !5579, metadata !382), !dbg !5580
  %6 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !5581
  %7 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %6, i32 0, i32 20, !dbg !5582
  %8 = load i8*, i8** %7, align 8, !dbg !5582
  %9 = bitcast i8* %8 to %struct.GUI_WINDOW_REC*, !dbg !5583
  %10 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %9, i32 0, i32 0, !dbg !5584
  %11 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %10, align 8, !dbg !5584
  store %struct.MAIN_WINDOW_REC* %11, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !5585
  %12 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !5586
  %13 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !5588
  %14 = icmp ne %struct.MAIN_WINDOW_REC* %12, %13, !dbg !5589
  br i1 %14, label %15, label %37, !dbg !5590

; <label>:15:                                     ; preds = %2
  %16 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !5591
  call void @gui_window_set_unsticky(%struct._WINDOW_REC* %16), !dbg !5593
  %17 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !5594
  %18 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %17, i32 0, i32 0, !dbg !5596
  %19 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %18, align 8, !dbg !5596
  %20 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !5597
  %21 = icmp eq %struct._WINDOW_REC* %19, %20, !dbg !5598
  br i1 %21, label %22, label %33, !dbg !5599

; <label>:22:                                     ; preds = %15
  %23 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !5600
  %24 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !5602
  call void @mainwindow_change_active(%struct.MAIN_WINDOW_REC* %23, %struct._WINDOW_REC* %24), !dbg !5603
  %25 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** @active_mainwin, align 8, !dbg !5604
  %26 = icmp eq %struct.MAIN_WINDOW_REC* %25, null, !dbg !5606
  br i1 %26, label %27, label %32, !dbg !5607

; <label>:27:                                     ; preds = %22
  %28 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !5608
  store %struct.MAIN_WINDOW_REC* %28, %struct.MAIN_WINDOW_REC** @active_mainwin, align 8, !dbg !5610
  %29 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !5611
  %30 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %29, i32 0, i32 0, !dbg !5612
  %31 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %30, align 8, !dbg !5612
  call void @window_set_active(%struct._WINDOW_REC* %31), !dbg !5613
  br label %32, !dbg !5614

; <label>:32:                                     ; preds = %27, %22
  br label %33, !dbg !5615

; <label>:33:                                     ; preds = %32, %15
  %34 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !5616
  %35 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !5617
  call void @gui_window_reparent(%struct._WINDOW_REC* %34, %struct.MAIN_WINDOW_REC* %35), !dbg !5618
  %36 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !5619
  call void @window_set_active(%struct._WINDOW_REC* %36), !dbg !5620
  br label %37, !dbg !5621

; <label>:37:                                     ; preds = %33, %2
  ret void, !dbg !5622
}

declare void @window_set_refnum(%struct._WINDOW_REC*, i32) #2

; Function Attrs: nounwind uwtable
define internal %struct.MAIN_WINDOW_REC* @mainwindows_find_upper_left(%struct.MAIN_WINDOW_REC*) #0 !dbg !5623 {
  %2 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %3 = alloca %struct.MAIN_WINDOW_REC*, align 8
  store %struct.MAIN_WINDOW_REC* %0, %struct.MAIN_WINDOW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %2, metadata !5624, metadata !382), !dbg !5625
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %3, metadata !5626, metadata !382), !dbg !5627
  %4 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !5628
  %5 = call %struct.MAIN_WINDOW_REC* @mainwindows_find_left(%struct.MAIN_WINDOW_REC* %4, i32 0), !dbg !5629
  store %struct.MAIN_WINDOW_REC* %5, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !5630
  %6 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !5631
  %7 = icmp eq %struct.MAIN_WINDOW_REC* %6, null, !dbg !5633
  br i1 %7, label %8, label %11, !dbg !5634

; <label>:8:                                      ; preds = %1
  %9 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %2, align 8, !dbg !5635
  %10 = call %struct.MAIN_WINDOW_REC* @mainwindows_find_upper(%struct.MAIN_WINDOW_REC* %9), !dbg !5636
  store %struct.MAIN_WINDOW_REC* %10, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !5637
  br label %11, !dbg !5638

; <label>:11:                                     ; preds = %8, %1
  %12 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !5639
  ret %struct.MAIN_WINDOW_REC* %12, !dbg !5640
}

; Function Attrs: nounwind uwtable
define internal void @window_rgrow_int(i32) #0 !dbg !5641 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5642, metadata !382), !dbg !5643
  %3 = load i32, i32* %2, align 4, !dbg !5644
  %4 = icmp eq i32 %3, 0, !dbg !5646
  br i1 %4, label %5, label %6, !dbg !5647

; <label>:5:                                      ; preds = %1
  br label %37, !dbg !5648

; <label>:6:                                      ; preds = %1
  %7 = load i32, i32* %2, align 4, !dbg !5650
  %8 = icmp slt i32 %7, 0, !dbg !5652
  br i1 %8, label %9, label %23, !dbg !5653

; <label>:9:                                      ; preds = %6
  %10 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !5654
  %11 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %10, i32 0, i32 20, !dbg !5657
  %12 = load i8*, i8** %11, align 8, !dbg !5657
  %13 = bitcast i8* %12 to %struct.GUI_WINDOW_REC*, !dbg !5658
  %14 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %13, i32 0, i32 0, !dbg !5659
  %15 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %14, align 8, !dbg !5659
  %16 = load i32, i32* %2, align 4, !dbg !5660
  %17 = sub nsw i32 0, %16, !dbg !5661
  %18 = call i32 @mainwindow_rshrink(%struct.MAIN_WINDOW_REC* %15, i32 %17), !dbg !5662
  %19 = icmp ne i32 %18, 0, !dbg !5662
  br i1 %19, label %22, label %20, !dbg !5663

; <label>:20:                                     ; preds = %9
  %21 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !5664
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), %struct._WINDOW_REC* %21, i32 262144, i32 10), !dbg !5666
  br label %22, !dbg !5667

; <label>:22:                                     ; preds = %20, %9
  br label %36, !dbg !5668

; <label>:23:                                     ; preds = %6
  %24 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !5669
  %25 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %24, i32 0, i32 20, !dbg !5672
  %26 = load i8*, i8** %25, align 8, !dbg !5672
  %27 = bitcast i8* %26 to %struct.GUI_WINDOW_REC*, !dbg !5673
  %28 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %27, i32 0, i32 0, !dbg !5674
  %29 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %28, align 8, !dbg !5674
  %30 = load i32, i32* %2, align 4, !dbg !5675
  %31 = call i32 @mainwindow_rgrow(%struct.MAIN_WINDOW_REC* %29, i32 %30), !dbg !5676
  %32 = icmp ne i32 %31, 0, !dbg !5676
  br i1 %32, label %35, label %33, !dbg !5677

; <label>:33:                                     ; preds = %23
  %34 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !5678
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), %struct._WINDOW_REC* %34, i32 262144, i32 10), !dbg !5680
  br label %35, !dbg !5681

; <label>:35:                                     ; preds = %33, %23
  br label %36

; <label>:36:                                     ; preds = %35, %22
  br label %37

; <label>:37:                                     ; preds = %5, %36
  ret void, !dbg !5682
}

; Function Attrs: nounwind uwtable
define internal void @windows_print_sticky(%struct._WINDOW_REC*) #0 !dbg !5683 {
  %2 = alloca %struct._WINDOW_REC*, align 8
  %3 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca %struct._GString*, align 8
  %7 = alloca %struct._WINDOW_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %2, metadata !5684, metadata !382), !dbg !5685
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %3, metadata !5686, metadata !382), !dbg !5687
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !5688, metadata !382), !dbg !5689
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !5690, metadata !382), !dbg !5691
  call void @llvm.dbg.declare(metadata %struct._GString** %6, metadata !5692, metadata !382), !dbg !5704
  %8 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !5705
  %9 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %8, i32 0, i32 20, !dbg !5706
  %10 = load i8*, i8** %9, align 8, !dbg !5706
  %11 = bitcast i8* %10 to %struct.GUI_WINDOW_REC*, !dbg !5707
  %12 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %11, i32 0, i32 0, !dbg !5708
  %13 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %12, align 8, !dbg !5708
  store %struct.MAIN_WINDOW_REC* %13, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !5709
  %14 = call %struct._GString* @g_string_new(i8* null), !dbg !5710
  store %struct._GString* %14, %struct._GString** %6, align 8, !dbg !5711
  %15 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !5712
  %16 = call %struct._GSList* @get_sticky_windows_sorted(%struct.MAIN_WINDOW_REC* %15), !dbg !5713
  store %struct._GSList* %16, %struct._GSList** %5, align 8, !dbg !5714
  %17 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !5715
  store %struct._GSList* %17, %struct._GSList** %4, align 8, !dbg !5717
  br label %18, !dbg !5718

; <label>:18:                                     ; preds = %30, %1
  %19 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !5719
  %20 = icmp ne %struct._GSList* %19, null, !dbg !5722
  br i1 %20, label %21, label %34, !dbg !5723

; <label>:21:                                     ; preds = %18
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %7, metadata !5724, metadata !382), !dbg !5726
  %22 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !5727
  %23 = getelementptr inbounds %struct._GSList, %struct._GSList* %22, i32 0, i32 0, !dbg !5728
  %24 = load i8*, i8** %23, align 8, !dbg !5728
  %25 = bitcast i8* %24 to %struct._WINDOW_REC*, !dbg !5727
  store %struct._WINDOW_REC* %25, %struct._WINDOW_REC** %7, align 8, !dbg !5726
  %26 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !5729
  %27 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !5730
  %28 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %27, i32 0, i32 0, !dbg !5731
  %29 = load i32, i32* %28, align 8, !dbg !5731
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i32 %29), !dbg !5732
  br label %30, !dbg !5733

; <label>:30:                                     ; preds = %21
  %31 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !5734
  %32 = getelementptr inbounds %struct._GSList, %struct._GSList* %31, i32 0, i32 1, !dbg !5736
  %33 = load %struct._GSList*, %struct._GSList** %32, align 8, !dbg !5736
  store %struct._GSList* %33, %struct._GSList** %4, align 8, !dbg !5737
  br label %18, !dbg !5738, !llvm.loop !5739

; <label>:34:                                     ; preds = %18
  %35 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !5741
  %36 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !5742
  %37 = getelementptr inbounds %struct._GString, %struct._GString* %36, i32 0, i32 1, !dbg !5743
  %38 = load i64, i64* %37, align 8, !dbg !5743
  %39 = sub i64 %38, 2, !dbg !5744
  %40 = call %struct._GString* @g_string_truncate(%struct._GString* %35, i64 %39), !dbg !5745
  %41 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !5746
  call void @g_slist_free(%struct._GSList* %41), !dbg !5747
  %42 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !5748
  %43 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !5749
  %44 = getelementptr inbounds %struct._GString, %struct._GString* %43, i32 0, i32 0, !dbg !5750
  %45 = load i8*, i8** %44, align 8, !dbg !5750
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), %struct._WINDOW_REC* %42, i32 524288, i32 17, i8* %45), !dbg !5751
  %46 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !5752
  %47 = call i8* @g_string_free(%struct._GString* %46, i32 1), !dbg !5753
  ret void, !dbg !5754
}

declare %struct._GString* @g_string_new(i8*) #2

declare void @g_string_append_printf(%struct._GString*, i8*, ...) #2

declare %struct._GString* @g_string_truncate(%struct._GString*, i64) #2

declare i8* @g_string_free(%struct._GString*, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!374, !375}
!llvm.ident = !{!376}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !119, globals: !363)
!1 = !DIFile(filename: "line356-mainwindows.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !15, !46, !98}
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
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 10, size: 32, align: 32, elements: !17)
!16 = !DIFile(filename: "../../src/core/levels.h", directory: "/home/lichi/Desktop/irssi/task1")
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45}
!18 = !DIEnumerator(name: "MSGLEVEL_CRAP", value: 1)
!19 = !DIEnumerator(name: "MSGLEVEL_MSGS", value: 2)
!20 = !DIEnumerator(name: "MSGLEVEL_PUBLIC", value: 4)
!21 = !DIEnumerator(name: "MSGLEVEL_NOTICES", value: 8)
!22 = !DIEnumerator(name: "MSGLEVEL_SNOTES", value: 16)
!23 = !DIEnumerator(name: "MSGLEVEL_CTCPS", value: 32)
!24 = !DIEnumerator(name: "MSGLEVEL_ACTIONS", value: 64)
!25 = !DIEnumerator(name: "MSGLEVEL_JOINS", value: 128)
!26 = !DIEnumerator(name: "MSGLEVEL_PARTS", value: 256)
!27 = !DIEnumerator(name: "MSGLEVEL_QUITS", value: 512)
!28 = !DIEnumerator(name: "MSGLEVEL_KICKS", value: 1024)
!29 = !DIEnumerator(name: "MSGLEVEL_MODES", value: 2048)
!30 = !DIEnumerator(name: "MSGLEVEL_TOPICS", value: 4096)
!31 = !DIEnumerator(name: "MSGLEVEL_WALLOPS", value: 8192)
!32 = !DIEnumerator(name: "MSGLEVEL_INVITES", value: 16384)
!33 = !DIEnumerator(name: "MSGLEVEL_NICKS", value: 32768)
!34 = !DIEnumerator(name: "MSGLEVEL_DCC", value: 65536)
!35 = !DIEnumerator(name: "MSGLEVEL_DCCMSGS", value: 131072)
!36 = !DIEnumerator(name: "MSGLEVEL_CLIENTNOTICE", value: 262144)
!37 = !DIEnumerator(name: "MSGLEVEL_CLIENTCRAP", value: 524288)
!38 = !DIEnumerator(name: "MSGLEVEL_CLIENTERROR", value: 1048576)
!39 = !DIEnumerator(name: "MSGLEVEL_HILIGHT", value: 2097152)
!40 = !DIEnumerator(name: "MSGLEVEL_ALL", value: 4194303)
!41 = !DIEnumerator(name: "MSGLEVEL_NOHILIGHT", value: 16777216)
!42 = !DIEnumerator(name: "MSGLEVEL_NO_ACT", value: 33554432)
!43 = !DIEnumerator(name: "MSGLEVEL_NEVER", value: 67108864)
!44 = !DIEnumerator(name: "MSGLEVEL_LASTLOG", value: 134217728)
!45 = !DIEnumerator(name: "MSGLEVEL_HIDDEN", value: 268435456)
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !47, line: 3, size: 32, align: 32, elements: !48)
!47 = !DIFile(filename: "module-formats.h", directory: "/home/lichi/Desktop/irssi/task1")
!48 = !{!49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97}
!49 = !DIEnumerator(name: "TXT_MODULE_NAME", value: 0)
!50 = !DIEnumerator(name: "TXT_FILL_1", value: 1)
!51 = !DIEnumerator(name: "TXT_LASTLOG_TOO_LONG", value: 2)
!52 = !DIEnumerator(name: "TXT_LASTLOG_COUNT", value: 3)
!53 = !DIEnumerator(name: "TXT_LASTLOG_START", value: 4)
!54 = !DIEnumerator(name: "TXT_LASTLOG_END", value: 5)
!55 = !DIEnumerator(name: "TXT_LASTLOG_SEPARATOR", value: 6)
!56 = !DIEnumerator(name: "TXT_LASTLOG_DATE", value: 7)
!57 = !DIEnumerator(name: "TXT_FILL_2", value: 8)
!58 = !DIEnumerator(name: "TXT_REFNUM_NOT_FOUND", value: 9)
!59 = !DIEnumerator(name: "TXT_WINDOW_TOO_SMALL", value: 10)
!60 = !DIEnumerator(name: "TXT_CANT_HIDE_LAST", value: 11)
!61 = !DIEnumerator(name: "TXT_CANT_HIDE_STICKY_WINDOWS", value: 12)
!62 = !DIEnumerator(name: "TXT_CANT_SHOW_STICKY_WINDOWS", value: 13)
!63 = !DIEnumerator(name: "TXT_WINDOW_NOT_STICKY", value: 14)
!64 = !DIEnumerator(name: "TXT_WINDOW_SET_STICKY", value: 15)
!65 = !DIEnumerator(name: "TXT_WINDOW_UNSET_STICKY", value: 16)
!66 = !DIEnumerator(name: "TXT_WINDOW_INFO_STICKY", value: 17)
!67 = !DIEnumerator(name: "TXT_WINDOW_INFO_SCROLL", value: 18)
!68 = !DIEnumerator(name: "TXT_WINDOW_SCROLL", value: 19)
!69 = !DIEnumerator(name: "TXT_WINDOW_SCROLL_UNKNOWN", value: 20)
!70 = !DIEnumerator(name: "TXT_WINDOW_HIDELEVEL", value: 21)
!71 = !DIEnumerator(name: "TXT_FILL_3", value: 22)
!72 = !DIEnumerator(name: "TXT_STATUSBAR_LIST_HEADER", value: 23)
!73 = !DIEnumerator(name: "TXT_STATUSBAR_LIST_FOOTER", value: 24)
!74 = !DIEnumerator(name: "TXT_STATUSBAR_LIST", value: 25)
!75 = !DIEnumerator(name: "TXT_STATUSBAR_INFO_NAME", value: 26)
!76 = !DIEnumerator(name: "TXT_STATUSBAR_INFO_TYPE", value: 27)
!77 = !DIEnumerator(name: "TXT_STATUSBAR_INFO_PLACEMENT", value: 28)
!78 = !DIEnumerator(name: "TXT_STATUSBAR_INFO_POSITION", value: 29)
!79 = !DIEnumerator(name: "TXT_STATUSBAR_INFO_VISIBLE", value: 30)
!80 = !DIEnumerator(name: "TXT_STATUSBAR_INFO_ITEM_HEADER", value: 31)
!81 = !DIEnumerator(name: "TXT_STATUSBAR_INFO_ITEM_FOOTER", value: 32)
!82 = !DIEnumerator(name: "TXT_STATUSBAR_INFO_ITEM_NAME", value: 33)
!83 = !DIEnumerator(name: "TXT_STATUSBAR_NOT_FOUND", value: 34)
!84 = !DIEnumerator(name: "TXT_STATUSBAR_NOT_ENABLED", value: 35)
!85 = !DIEnumerator(name: "TXT_STATUSBAR_ITEM_NOT_FOUND", value: 36)
!86 = !DIEnumerator(name: "TXT_STATUSBAR_UNKNOWN_COMMAND", value: 37)
!87 = !DIEnumerator(name: "TXT_STATUSBAR_UNKNOWN_TYPE", value: 38)
!88 = !DIEnumerator(name: "TXT_STATUSBAR_UNKNOWN_PLACEMENT", value: 39)
!89 = !DIEnumerator(name: "TXT_STATUSBAR_UNKNOWN_VISIBILITY", value: 40)
!90 = !DIEnumerator(name: "TXT_FILL_4", value: 41)
!91 = !DIEnumerator(name: "TXT_PASTE_WARNING", value: 42)
!92 = !DIEnumerator(name: "TXT_PASTE_PROMPT", value: 43)
!93 = !DIEnumerator(name: "TXT_FILL_5", value: 44)
!94 = !DIEnumerator(name: "TXT_IRSSI_BANNER", value: 45)
!95 = !DIEnumerator(name: "TXT_WELCOME_FIRSTTIME", value: 46)
!96 = !DIEnumerator(name: "TXT_WELCOME_INIT_SETTINGS", value: 47)
!97 = !DIEnumerator(name: "TXT_COUNT", value: 48)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !99, line: 25, size: 32, align: 32, elements: !100)
!99 = !DIFile(filename: "../../src/core/commands.h", directory: "/home/lichi/Desktop/irssi/task1")
!100 = !{!101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118}
!101 = !DIEnumerator(name: "CMDERR_OPTION_UNKNOWN", value: -3)
!102 = !DIEnumerator(name: "CMDERR_OPTION_AMBIGUOUS", value: -2)
!103 = !DIEnumerator(name: "CMDERR_OPTION_ARG_MISSING", value: -1)
!104 = !DIEnumerator(name: "CMDERR_UNKNOWN", value: 0)
!105 = !DIEnumerator(name: "CMDERR_AMBIGUOUS", value: 1)
!106 = !DIEnumerator(name: "CMDERR_ERRNO", value: 2)
!107 = !DIEnumerator(name: "CMDERR_NOT_ENOUGH_PARAMS", value: 3)
!108 = !DIEnumerator(name: "CMDERR_NOT_CONNECTED", value: 4)
!109 = !DIEnumerator(name: "CMDERR_NOT_JOINED", value: 5)
!110 = !DIEnumerator(name: "CMDERR_CHAN_NOT_FOUND", value: 6)
!111 = !DIEnumerator(name: "CMDERR_CHAN_NOT_SYNCED", value: 7)
!112 = !DIEnumerator(name: "CMDERR_ILLEGAL_PROTO", value: 8)
!113 = !DIEnumerator(name: "CMDERR_NOT_GOOD_IDEA", value: 9)
!114 = !DIEnumerator(name: "CMDERR_INVALID_TIME", value: 10)
!115 = !DIEnumerator(name: "CMDERR_INVALID_CHARSET", value: 11)
!116 = !DIEnumerator(name: "CMDERR_EVAL_MAX_RECURSE", value: 12)
!117 = !DIEnumerator(name: "CMDERR_PROGRAM_NOT_FOUND", value: 13)
!118 = !DIEnumerator(name: "CMDERR_NO_SERVER_DEFINED", value: 14)
!119 = !{!120, !121, !127, !340, !193, !342, !350, !356, !361, !153, !362, !140, !275}
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "GUI_WINDOW_REC", file: !123, line: 24, baseType: !124)
!123 = !DIFile(filename: "gui-windows.h", directory: "/home/lichi/Desktop/irssi/task1")
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !123, line: 13, size: 320, align: 64, elements: !125)
!125 = !{!126, !252, !334, !335, !336, !337, !338, !339}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !124, file: !123, line: 14, baseType: !127, size: 64, align: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "MAIN_WINDOW_REC", file: !129, line: 34, baseType: !130)
!129 = !DIFile(filename: "mainwindows.h", directory: "/home/lichi/Desktop/irssi/task1")
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !129, line: 16, size: 704, align: 64, elements: !131)
!131 = !{!132, !231, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !130, file: !129, line: 17, baseType: !133, size: 64, align: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "WINDOW_REC", file: !135, line: 117, baseType: !136)
!135 = !DIFile(filename: "../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WINDOW_REC", file: !137, line: 28, size: 1280, align: 64, elements: !138)
!137 = !DIFile(filename: "../../src/fe-common/core/fe-windows.h", directory: "/home/lichi/Desktop/irssi/task1")
!138 = !{!139, !141, !144, !145, !146, !156, !195, !196, !197, !198, !199, !200, !202, !203, !204, !223, !224, !225, !226, !227, !228, !229, !230}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "refnum", scope: !136, file: !137, line: 29, baseType: !140, size: 32, align: 32)
!140 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !136, file: !137, line: 30, baseType: !142, size: 64, align: 64, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64, align: 64)
!143 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !136, file: !137, line: 32, baseType: !140, size: 32, align: 32, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !136, file: !137, line: 32, baseType: !140, size: 32, align: 32, offset: 160)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !136, file: !137, line: 34, baseType: !147, size: 64, align: 64, offset: 192)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64, align: 64)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !149, line: 37, baseType: !150)
!149 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !149, line: 39, size: 128, align: 64, elements: !151)
!151 = !{!152, !155}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !150, file: !149, line: 41, baseType: !153, size: 64, align: 64)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !154, line: 77, baseType: !120)
!154 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!155 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !150, file: !149, line: 42, baseType: !147, size: 64, align: 64, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !136, file: !137, line: 35, baseType: !157, size: 64, align: 64, offset: 256)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64, align: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !135, line: 108, baseType: !159)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !160, line: 5, size: 704, align: 64, elements: !161)
!160 = !DIFile(filename: "../../src/core/window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!161 = !{!162, !164, !165, !170, !171, !175, !176, !177, !183, !184, !185, !189}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !159, file: !163, line: 3, baseType: !140, size: 32, align: 32)
!163 = !DIFile(filename: "../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!164 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !159, file: !163, line: 4, baseType: !140, size: 32, align: 32, offset: 32)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !159, file: !163, line: 5, baseType: !166, size: 64, align: 64, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64, align: 64)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !168, line: 37, baseType: !169)
!168 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!169 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !168, line: 37, flags: DIFlagFwdDecl)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !159, file: !163, line: 7, baseType: !120, size: 64, align: 64, offset: 128)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !159, file: !163, line: 8, baseType: !172, size: 64, align: 64, offset: 192)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64, align: 64)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !135, line: 107, baseType: !174)
!174 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !135, line: 107, flags: DIFlagFwdDecl)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !159, file: !163, line: 9, baseType: !142, size: 64, align: 64, offset: 256)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !159, file: !163, line: 10, baseType: !142, size: 64, align: 64, offset: 320)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !159, file: !163, line: 11, baseType: !178, size: 64, align: 64, offset: 384)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !179, line: 75, baseType: !180)
!179 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !181, line: 139, baseType: !182)
!181 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!182 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !159, file: !163, line: 12, baseType: !140, size: 32, align: 32, offset: 448)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !159, file: !163, line: 13, baseType: !142, size: 64, align: 64, offset: 512)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !159, file: !163, line: 15, baseType: !186, size: 64, align: 64, offset: 576)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64, align: 64)
!187 = !DISubroutineType(types: !188)
!188 = !{null, !157}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !159, file: !163, line: 17, baseType: !190, size: 64, align: 64, offset: 640)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!193, !157}
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64, align: 64)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "active_server", scope: !136, file: !137, line: 36, baseType: !172, size: 64, align: 64, offset: 320)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "connect_server", scope: !136, file: !137, line: 37, baseType: !172, size: 64, align: 64, offset: 384)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !136, file: !137, line: 38, baseType: !142, size: 64, align: 64, offset: 448)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !136, file: !137, line: 40, baseType: !140, size: 32, align: 32, offset: 512)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "bound_items", scope: !136, file: !137, line: 41, baseType: !147, size: 64, align: 64, offset: 576)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "immortal", scope: !136, file: !137, line: 43, baseType: !201, size: 1, align: 32, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!201 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "sticky_refnum", scope: !136, file: !137, line: 44, baseType: !201, size: 1, align: 32, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !136, file: !137, line: 45, baseType: !201, size: 1, align: 32, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !136, file: !137, line: 48, baseType: !205, size: 64, align: 64, offset: 704)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64, align: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "HISTORY_REC", file: !207, line: 14, baseType: !208)
!207 = !DIFile(filename: "../../src/fe-common/core/command-history.h", directory: "/home/lichi/Desktop/irssi/task1")
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !207, line: 6, size: 256, align: 64, elements: !209)
!209 = !{!210, !211, !220, !221, !222}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !208, file: !207, line: 7, baseType: !142, size: 64, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !208, file: !207, line: 9, baseType: !212, size: 64, align: 64, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64, align: 64)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "GList", file: !214, line: 37, baseType: !215)
!214 = !DIFile(filename: "/usr/include/glib-2.0/glib/glist.h", directory: "/home/lichi/Desktop/irssi/task1")
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GList", file: !214, line: 39, size: 192, align: 64, elements: !216)
!216 = !{!217, !218, !219}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !215, file: !214, line: 41, baseType: !153, size: 64, align: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !215, file: !214, line: 42, baseType: !212, size: 64, align: 64, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !215, file: !214, line: 43, baseType: !212, size: 64, align: 64, offset: 128)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !208, file: !207, line: 10, baseType: !140, size: 32, align: 32, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !208, file: !207, line: 12, baseType: !140, size: 32, align: 32, offset: 160)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "redo", scope: !208, file: !207, line: 13, baseType: !140, size: 1, align: 32, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "history_name", scope: !136, file: !137, line: 49, baseType: !142, size: 64, align: 64, offset: 768)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !136, file: !137, line: 51, baseType: !140, size: 32, align: 32, offset: 832)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !136, file: !137, line: 52, baseType: !142, size: 64, align: 64, offset: 896)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "last_timestamp", scope: !136, file: !137, line: 54, baseType: !178, size: 64, align: 64, offset: 960)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "last_line", scope: !136, file: !137, line: 55, baseType: !178, size: 64, align: 64, offset: 1024)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "theme_name", scope: !136, file: !137, line: 57, baseType: !142, size: 64, align: 64, offset: 1088)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "theme", scope: !136, file: !137, line: 58, baseType: !120, size: 64, align: 64, offset: 1152)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "gui_data", scope: !136, file: !137, line: 60, baseType: !120, size: 64, align: 64, offset: 1216)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "screen_win", scope: !130, file: !129, line: 19, baseType: !232, size: 64, align: 64, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "TERM_WINDOW", file: !234, line: 4, baseType: !235)
!234 = !DIFile(filename: "term.h", directory: "/home/lichi/Desktop/irssi/task1")
!235 = !DICompositeType(tag: DW_TAG_structure_type, name: "_TERM_WINDOW", file: !234, line: 4, flags: DIFlagFwdDecl)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "sticky_windows", scope: !130, file: !129, line: 20, baseType: !140, size: 32, align: 32, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "first_line", scope: !130, file: !129, line: 22, baseType: !140, size: 32, align: 32, offset: 160)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "last_line", scope: !130, file: !129, line: 22, baseType: !140, size: 32, align: 32, offset: 192)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "first_column", scope: !130, file: !129, line: 23, baseType: !140, size: 32, align: 32, offset: 224)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "last_column", scope: !130, file: !129, line: 23, baseType: !140, size: 32, align: 32, offset: 256)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !130, file: !129, line: 24, baseType: !140, size: 32, align: 32, offset: 288)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !130, file: !129, line: 24, baseType: !140, size: 32, align: 32, offset: 320)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "statusbars", scope: !130, file: !129, line: 26, baseType: !147, size: 64, align: 64, offset: 384)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_lines_top", scope: !130, file: !129, line: 27, baseType: !140, size: 32, align: 32, offset: 448)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_lines_bottom", scope: !130, file: !129, line: 27, baseType: !140, size: 32, align: 32, offset: 480)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_lines", scope: !130, file: !129, line: 28, baseType: !140, size: 32, align: 32, offset: 512)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_columns_left", scope: !130, file: !129, line: 29, baseType: !140, size: 32, align: 32, offset: 544)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_columns_right", scope: !130, file: !129, line: 29, baseType: !140, size: 32, align: 32, offset: 576)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_columns", scope: !130, file: !129, line: 30, baseType: !140, size: 32, align: 32, offset: 608)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !130, file: !129, line: 32, baseType: !201, size: 1, align: 32, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "size_dirty", scope: !130, file: !129, line: 33, baseType: !201, size: 1, align: 32, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "view", scope: !124, file: !123, line: 15, baseType: !253, size: 64, align: 64, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_BUFFER_VIEW_REC", file: !255, line: 7, baseType: !256)
!255 = !DIFile(filename: "textbuffer-view.h", directory: "/home/lichi/Desktop/irssi/task1")
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TEXT_BUFFER_VIEW_REC", file: !255, line: 50, size: 960, align: 64, elements: !257)
!257 = !{!258, !299, !300, !301, !302, !303, !304, !309, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !256, file: !255, line: 51, baseType: !259, size: 64, align: 64)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64, align: 64)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_BUFFER_REC", file: !261, line: 72, baseType: !262)
!261 = !DIFile(filename: "textbuffer.h", directory: "/home/lichi/Desktop/irssi/task1")
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !261, line: 60, size: 448, align: 64, elements: !263)
!263 = !{!264, !265, !282, !283, !284, !295, !296, !297, !298}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "text_chunks", scope: !262, file: !261, line: 61, baseType: !147, size: 64, align: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "first_line", scope: !262, file: !261, line: 62, baseType: !266, size: 64, align: 64, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64, align: 64)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "LINE_REC", file: !261, line: 52, baseType: !268)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_LINE_REC", file: !261, line: 34, size: 320, align: 64, elements: !269)
!269 = !{!270, !272, !273, !276}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !268, file: !261, line: 48, baseType: !271, size: 64, align: 64)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64, align: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !268, file: !261, line: 48, baseType: !271, size: 64, align: 64, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !268, file: !261, line: 50, baseType: !274, size: 64, align: 64, offset: 128)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64, align: 64)
!275 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !268, file: !261, line: 51, baseType: !277, size: 128, align: 64, offset: 192)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "LINE_INFO_REC", file: !261, line: 32, baseType: !278)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !261, line: 29, size: 128, align: 64, elements: !279)
!279 = !{!280, !281}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !278, file: !261, line: 30, baseType: !140, size: 32, align: 32)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !278, file: !261, line: 31, baseType: !178, size: 64, align: 64, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "lines_count", scope: !262, file: !261, line: 63, baseType: !140, size: 32, align: 32, offset: 128)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "cur_line", scope: !262, file: !261, line: 65, baseType: !266, size: 64, align: 64, offset: 192)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "cur_text", scope: !262, file: !261, line: 66, baseType: !285, size: 64, align: 64, offset: 256)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_CHUNK_REC", file: !261, line: 58, baseType: !287)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !261, line: 54, size: 131008, align: 32, elements: !288)
!288 = !{!289, !293, !294}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !287, file: !261, line: 55, baseType: !290, size: 130944, align: 8)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 130944, align: 8, elements: !291)
!291 = !{!292}
!292 = !DISubrange(count: 16368)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !287, file: !261, line: 56, baseType: !140, size: 32, align: 32, offset: 130944)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !287, file: !261, line: 57, baseType: !140, size: 32, align: 32, offset: 130976)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "last_fg", scope: !262, file: !261, line: 68, baseType: !140, size: 32, align: 32, offset: 320)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "last_bg", scope: !262, file: !261, line: 69, baseType: !140, size: 32, align: 32, offset: 352)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "last_flags", scope: !262, file: !261, line: 70, baseType: !140, size: 32, align: 32, offset: 384)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "last_eol", scope: !262, file: !261, line: 71, baseType: !201, size: 1, align: 32, offset: 416, flags: DIFlagBitField, extraData: i64 416)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "siblings", scope: !256, file: !255, line: 53, baseType: !147, size: 64, align: 64, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !256, file: !255, line: 55, baseType: !232, size: 64, align: 64, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !256, file: !255, line: 56, baseType: !140, size: 32, align: 32, offset: 192)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !256, file: !255, line: 56, baseType: !140, size: 32, align: 32, offset: 224)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "default_indent", scope: !256, file: !255, line: 58, baseType: !140, size: 32, align: 32, offset: 256)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "default_indent_func", scope: !256, file: !255, line: 59, baseType: !305, size: 64, align: 64, offset: 320)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "INDENT_FUNC", file: !255, line: 10, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!140, !253, !266, !140}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !256, file: !255, line: 61, baseType: !310, size: 64, align: 64, offset: 384)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64, align: 64)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_BUFFER_CACHE_REC", file: !255, line: 48, baseType: !312)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !255, line: 37, size: 192, align: 64, elements: !313)
!313 = !{!314, !315, !316, !317, !318}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !312, file: !255, line: 38, baseType: !140, size: 32, align: 32)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !312, file: !255, line: 39, baseType: !140, size: 32, align: 32, offset: 32)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "line_cache", scope: !312, file: !255, line: 41, baseType: !166, size: 64, align: 64, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "update_counter", scope: !312, file: !255, line: 45, baseType: !275, size: 8, align: 8, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "last_linecount", scope: !312, file: !255, line: 47, baseType: !140, size: 32, align: 32, offset: 160)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "ypos", scope: !256, file: !255, line: 63, baseType: !140, size: 32, align: 32, offset: 448)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "startline", scope: !256, file: !255, line: 66, baseType: !266, size: 64, align: 64, offset: 512)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "subline", scope: !256, file: !255, line: 68, baseType: !140, size: 32, align: 32, offset: 576)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_startline", scope: !256, file: !255, line: 71, baseType: !266, size: 64, align: 64, offset: 640)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_subline", scope: !256, file: !255, line: 72, baseType: !140, size: 32, align: 32, offset: 704)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "bookmarks", scope: !256, file: !255, line: 76, baseType: !166, size: 64, align: 64, offset: 768)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "hidden_level", scope: !256, file: !255, line: 79, baseType: !140, size: 32, align: 32, offset: 832)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "empty_linecount", scope: !256, file: !255, line: 82, baseType: !140, size: 32, align: 32, offset: 864)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "longword_noindent", scope: !256, file: !255, line: 84, baseType: !201, size: 1, align: 32, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "scroll", scope: !256, file: !255, line: 86, baseType: !201, size: 1, align: 32, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "utf8", scope: !256, file: !255, line: 88, baseType: !201, size: 1, align: 32, offset: 898, flags: DIFlagBitField, extraData: i64 896)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "break_wide", scope: !256, file: !255, line: 90, baseType: !201, size: 1, align: 32, offset: 899, flags: DIFlagBitField, extraData: i64 896)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "bottom", scope: !256, file: !255, line: 92, baseType: !201, size: 1, align: 32, offset: 900, flags: DIFlagBitField, extraData: i64 896)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "more_text", scope: !256, file: !255, line: 94, baseType: !201, size: 1, align: 32, offset: 901, flags: DIFlagBitField, extraData: i64 896)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !256, file: !255, line: 96, baseType: !201, size: 1, align: 32, offset: 902, flags: DIFlagBitField, extraData: i64 896)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "scroll", scope: !124, file: !123, line: 17, baseType: !201, size: 1, align: 32, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "use_scroll", scope: !124, file: !123, line: 18, baseType: !201, size: 1, align: 32, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "sticky", scope: !124, file: !123, line: 20, baseType: !201, size: 1, align: 32, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "use_insert_after", scope: !124, file: !123, line: 21, baseType: !201, size: 1, align: 32, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "insert_after", scope: !124, file: !123, line: 22, baseType: !266, size: 64, align: 64, offset: 192)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "insert_after_time", scope: !124, file: !123, line: 23, baseType: !178, size: 64, align: 64, offset: 256)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64, align: 64)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !154, line: 46, baseType: !143)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCompareFunc", file: !154, line: 80, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64, align: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{!346, !347, !347}
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !154, line: 49, baseType: !140)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "gconstpointer", file: !154, line: 78, baseType: !348)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64, align: 64)
!349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64, align: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "MAIN_WINDOW_BORDER_REC", file: !129, line: 39, baseType: !352)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !129, line: 36, size: 128, align: 64, elements: !353)
!353 = !{!354, !355}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !352, file: !129, line: 37, baseType: !142, size: 64, align: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !352, file: !129, line: 38, baseType: !232, size: 64, align: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !357, line: 9, baseType: !358)
!357 = !DIFile(filename: "../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64, align: 64)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !348, !348, !348, !348, !348, !348}
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !154, line: 48, baseType: !182)
!363 = !{!364, !366, !367, !368, !369, !370, !371, !372, !373}
!364 = distinct !DIGlobalVariable(name: "mainwindows", scope: !0, file: !365, line: 35, type: !147, isLocal: false, isDefinition: true, variable: %struct._GSList** @mainwindows)
!365 = !DIFile(filename: "mainwindows.c", directory: "/home/lichi/Desktop/irssi/task1")
!366 = distinct !DIGlobalVariable(name: "active_mainwin", scope: !0, file: !365, line: 36, type: !127, isLocal: false, isDefinition: true, variable: %struct.MAIN_WINDOW_REC** @active_mainwin)
!367 = distinct !DIGlobalVariable(name: "clrtoeol_info", scope: !0, file: !365, line: 37, type: !350, isLocal: false, isDefinition: true, variable: %struct.MAIN_WINDOW_BORDER_REC** @clrtoeol_info)
!368 = distinct !DIGlobalVariable(name: "screen_reserved_top", scope: !0, file: !365, line: 39, type: !140, isLocal: false, isDefinition: true, variable: i32* @screen_reserved_top)
!369 = distinct !DIGlobalVariable(name: "screen_reserved_bottom", scope: !0, file: !365, line: 39, type: !140, isLocal: false, isDefinition: true, variable: i32* @screen_reserved_bottom)
!370 = distinct !DIGlobalVariable(name: "screen_reserved_left", scope: !0, file: !365, line: 40, type: !140, isLocal: false, isDefinition: true, variable: i32* @screen_reserved_left)
!371 = distinct !DIGlobalVariable(name: "screen_reserved_right", scope: !0, file: !365, line: 40, type: !140, isLocal: false, isDefinition: true, variable: i32* @screen_reserved_right)
!372 = distinct !DIGlobalVariable(name: "screen_width", scope: !0, file: !365, line: 41, type: !140, isLocal: true, isDefinition: true, variable: i32* @screen_width)
!373 = distinct !DIGlobalVariable(name: "screen_height", scope: !0, file: !365, line: 41, type: !140, isLocal: true, isDefinition: true, variable: i32* @screen_height)
!374 = !{i32 2, !"Dwarf Version", i32 4}
!375 = !{i32 2, !"Debug Info Version", i32 3}
!376 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!377 = distinct !DISubprogram(name: "mainwindow_change_active", scope: !365, file: !365, line: 159, type: !378, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!378 = !DISubroutineType(types: !379)
!379 = !{null, !127, !133}
!380 = !{}
!381 = !DILocalVariable(name: "mainwin", arg: 1, scope: !377, file: !365, line: 159, type: !127)
!382 = !DIExpression()
!383 = !DILocation(line: 159, column: 48, scope: !377)
!384 = !DILocalVariable(name: "skip_window", arg: 2, scope: !377, file: !365, line: 160, type: !133)
!385 = !DILocation(line: 160, column: 22, scope: !377)
!386 = !DILocalVariable(name: "window", scope: !377, file: !365, line: 162, type: !133)
!387 = !DILocation(line: 162, column: 21, scope: !377)
!388 = !DILocalVariable(name: "other", scope: !377, file: !365, line: 162, type: !133)
!389 = !DILocation(line: 162, column: 30, scope: !377)
!390 = !DILocalVariable(name: "tmp", scope: !377, file: !365, line: 163, type: !147)
!391 = !DILocation(line: 163, column: 10, scope: !377)
!392 = !DILocation(line: 165, column: 9, scope: !377)
!393 = !DILocation(line: 165, column: 18, scope: !377)
!394 = !DILocation(line: 165, column: 25, scope: !377)
!395 = !DILocation(line: 166, column: 6, scope: !396)
!396 = distinct !DILexicalBlock(scope: !377, file: !365, line: 166, column: 6)
!397 = !DILocation(line: 166, column: 15, scope: !396)
!398 = !DILocation(line: 166, column: 6, scope: !377)
!399 = !DILocation(line: 168, column: 49, scope: !400)
!400 = distinct !DILexicalBlock(scope: !396, file: !365, line: 166, column: 31)
!401 = !DILocation(line: 168, column: 23, scope: !400)
!402 = !DILocation(line: 168, column: 21, scope: !400)
!403 = !DILocation(line: 169, column: 26, scope: !400)
!404 = !DILocation(line: 169, column: 31, scope: !400)
!405 = !DILocation(line: 169, column: 24, scope: !400)
!406 = !DILocation(line: 170, column: 7, scope: !407)
!407 = distinct !DILexicalBlock(scope: !400, file: !365, line: 170, column: 7)
!408 = !DILocation(line: 170, column: 17, scope: !407)
!409 = !DILocation(line: 170, column: 14, scope: !407)
!410 = !DILocation(line: 170, column: 7, scope: !400)
!411 = !DILocation(line: 171, column: 13, scope: !412)
!412 = distinct !DILexicalBlock(scope: !407, file: !365, line: 170, column: 30)
!413 = !DILocation(line: 171, column: 18, scope: !412)
!414 = !DILocation(line: 171, column: 23, scope: !412)
!415 = !DILocation(line: 171, column: 13, scope: !416)
!416 = !DILexicalBlockFile(scope: !412, file: !365, discriminator: 1)
!417 = !DILocation(line: 172, column: 5, scope: !412)
!418 = !DILocation(line: 172, column: 10, scope: !412)
!419 = !DILocation(line: 172, column: 16, scope: !412)
!420 = !DILocation(line: 171, column: 13, scope: !421)
!421 = !DILexicalBlockFile(scope: !412, file: !365, discriminator: 2)
!422 = !DILocation(line: 171, column: 13, scope: !423)
!423 = !DILexicalBlockFile(scope: !412, file: !365, discriminator: 3)
!424 = !DILocation(line: 171, column: 11, scope: !423)
!425 = !DILocation(line: 173, column: 3, scope: !412)
!426 = !DILocation(line: 174, column: 30, scope: !400)
!427 = !DILocation(line: 174, column: 17, scope: !400)
!428 = !DILocation(line: 176, column: 7, scope: !429)
!429 = distinct !DILexicalBlock(scope: !400, file: !365, line: 176, column: 7)
!430 = !DILocation(line: 176, column: 14, scope: !429)
!431 = !DILocation(line: 176, column: 7, scope: !400)
!432 = !DILocation(line: 177, column: 22, scope: !433)
!433 = distinct !DILexicalBlock(scope: !429, file: !365, line: 176, column: 22)
!434 = !DILocation(line: 177, column: 4, scope: !433)
!435 = !DILocation(line: 178, column: 4, scope: !433)
!436 = !DILocation(line: 180, column: 2, scope: !400)
!437 = !DILocation(line: 182, column: 15, scope: !377)
!438 = !DILocation(line: 183, column: 13, scope: !439)
!439 = distinct !DILexicalBlock(scope: !377, file: !365, line: 183, column: 2)
!440 = !DILocation(line: 183, column: 11, scope: !439)
!441 = !DILocation(line: 183, column: 7, scope: !439)
!442 = !DILocation(line: 183, column: 22, scope: !443)
!443 = !DILexicalBlockFile(scope: !444, file: !365, discriminator: 1)
!444 = distinct !DILexicalBlock(scope: !439, file: !365, line: 183, column: 2)
!445 = !DILocation(line: 183, column: 26, scope: !443)
!446 = !DILocation(line: 183, column: 2, scope: !443)
!447 = !DILocalVariable(name: "rec", scope: !448, file: !365, line: 184, type: !133)
!448 = distinct !DILexicalBlock(scope: !444, file: !365, line: 183, column: 51)
!449 = !DILocation(line: 184, column: 15, scope: !448)
!450 = !DILocation(line: 184, column: 21, scope: !448)
!451 = !DILocation(line: 184, column: 26, scope: !448)
!452 = !DILocation(line: 186, column: 7, scope: !453)
!453 = distinct !DILexicalBlock(scope: !448, file: !365, line: 186, column: 7)
!454 = !DILocation(line: 186, column: 14, scope: !453)
!455 = !DILocation(line: 186, column: 11, scope: !453)
!456 = !DILocation(line: 186, column: 7, scope: !448)
!457 = !DILocation(line: 187, column: 12, scope: !458)
!458 = distinct !DILexicalBlock(scope: !453, file: !365, line: 186, column: 27)
!459 = !DILocation(line: 187, column: 10, scope: !458)
!460 = !DILocation(line: 188, column: 4, scope: !458)
!461 = !DILocation(line: 190, column: 2, scope: !448)
!462 = !DILocation(line: 183, column: 40, scope: !463)
!463 = !DILexicalBlockFile(scope: !444, file: !365, discriminator: 2)
!464 = !DILocation(line: 183, column: 45, scope: !463)
!465 = !DILocation(line: 183, column: 38, scope: !463)
!466 = !DILocation(line: 183, column: 2, scope: !463)
!467 = distinct !{!467, !468}
!468 = !DILocation(line: 183, column: 2, scope: !377)
!469 = !DILocation(line: 192, column: 20, scope: !377)
!470 = !DILocation(line: 192, column: 2, scope: !377)
!471 = !DILocation(line: 193, column: 6, scope: !472)
!472 = distinct !DILexicalBlock(scope: !377, file: !365, line: 193, column: 6)
!473 = !DILocation(line: 193, column: 19, scope: !472)
!474 = !DILocation(line: 193, column: 24, scope: !472)
!475 = !DILocation(line: 193, column: 6, scope: !377)
!476 = !DILocation(line: 194, column: 22, scope: !472)
!477 = !DILocation(line: 194, column: 3, scope: !472)
!478 = !DILocation(line: 195, column: 1, scope: !377)
!479 = distinct !DISubprogram(name: "get_sticky_windows_sorted", scope: !365, file: !365, line: 142, type: !480, isLocal: true, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!480 = !DISubroutineType(types: !481)
!481 = !{!147, !127}
!482 = !DILocalVariable(name: "mainwin", arg: 1, scope: !479, file: !365, line: 142, type: !127)
!483 = !DILocation(line: 142, column: 59, scope: !479)
!484 = !DILocalVariable(name: "tmp", scope: !479, file: !365, line: 144, type: !147)
!485 = !DILocation(line: 144, column: 10, scope: !479)
!486 = !DILocalVariable(name: "list", scope: !479, file: !365, line: 144, type: !147)
!487 = !DILocation(line: 144, column: 16, scope: !479)
!488 = !DILocation(line: 146, column: 14, scope: !479)
!489 = !DILocation(line: 147, column: 13, scope: !490)
!490 = distinct !DILexicalBlock(scope: !479, file: !365, line: 147, column: 2)
!491 = !DILocation(line: 147, column: 11, scope: !490)
!492 = !DILocation(line: 147, column: 7, scope: !490)
!493 = !DILocation(line: 147, column: 22, scope: !494)
!494 = !DILexicalBlockFile(scope: !495, file: !365, discriminator: 1)
!495 = distinct !DILexicalBlock(scope: !490, file: !365, line: 147, column: 2)
!496 = !DILocation(line: 147, column: 26, scope: !494)
!497 = !DILocation(line: 147, column: 2, scope: !494)
!498 = !DILocalVariable(name: "rec", scope: !499, file: !365, line: 148, type: !133)
!499 = distinct !DILexicalBlock(scope: !495, file: !365, line: 147, column: 51)
!500 = !DILocation(line: 148, column: 15, scope: !499)
!501 = !DILocation(line: 148, column: 21, scope: !499)
!502 = !DILocation(line: 148, column: 26, scope: !499)
!503 = !DILocation(line: 150, column: 29, scope: !504)
!504 = distinct !DILexicalBlock(scope: !499, file: !365, line: 150, column: 7)
!505 = !DILocation(line: 150, column: 35, scope: !504)
!506 = !DILocation(line: 150, column: 8, scope: !504)
!507 = !DILocation(line: 150, column: 47, scope: !504)
!508 = !DILocation(line: 150, column: 7, scope: !504)
!509 = !DILocation(line: 150, column: 54, scope: !504)
!510 = !DILocation(line: 150, column: 80, scope: !511)
!511 = !DILexicalBlockFile(scope: !504, file: !365, discriminator: 1)
!512 = !DILocation(line: 150, column: 86, scope: !511)
!513 = !DILocation(line: 150, column: 59, scope: !511)
!514 = !DILocation(line: 150, column: 98, scope: !511)
!515 = !DILocation(line: 150, column: 109, scope: !511)
!516 = !DILocation(line: 150, column: 106, scope: !511)
!517 = !DILocation(line: 150, column: 7, scope: !511)
!518 = !DILocation(line: 151, column: 33, scope: !519)
!519 = distinct !DILexicalBlock(scope: !504, file: !365, line: 150, column: 118)
!520 = !DILocation(line: 151, column: 39, scope: !519)
!521 = !DILocation(line: 151, column: 11, scope: !519)
!522 = !DILocation(line: 151, column: 9, scope: !519)
!523 = !DILocation(line: 153, column: 3, scope: !519)
!524 = !DILocation(line: 154, column: 2, scope: !499)
!525 = !DILocation(line: 147, column: 40, scope: !526)
!526 = !DILexicalBlockFile(scope: !495, file: !365, discriminator: 2)
!527 = !DILocation(line: 147, column: 45, scope: !526)
!528 = !DILocation(line: 147, column: 38, scope: !526)
!529 = !DILocation(line: 147, column: 2, scope: !526)
!530 = distinct !{!530, !531}
!531 = !DILocation(line: 147, column: 2, scope: !479)
!532 = !DILocation(line: 156, column: 16, scope: !479)
!533 = !DILocation(line: 156, column: 9, scope: !479)
!534 = distinct !DISubprogram(name: "mainwindow_destroy", scope: !365, file: !365, line: 523, type: !535, isLocal: false, isDefinition: true, scopeLine: 524, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!535 = !DISubroutineType(types: !536)
!536 = !{null, !127}
!537 = !DILocalVariable(name: "window", arg: 1, scope: !534, file: !365, line: 523, type: !127)
!538 = !DILocation(line: 523, column: 42, scope: !534)
!539 = !DILocation(line: 525, column: 2, scope: !534)
!540 = distinct !{!540, !539}
!541 = !DILocation(line: 525, column: 10, scope: !542)
!542 = !DILexicalBlockFile(scope: !543, file: !365, discriminator: 1)
!543 = distinct !DILexicalBlock(scope: !544, file: !365, line: 525, column: 10)
!544 = distinct !DILexicalBlock(scope: !534, file: !365, line: 525, column: 4)
!545 = !DILocation(line: 525, column: 17, scope: !542)
!546 = !DILocation(line: 525, column: 5, scope: !547)
!547 = !DILexicalBlockFile(scope: !548, file: !365, discriminator: 2)
!548 = distinct !DILexicalBlock(scope: !543, file: !365, line: 525, column: 3)
!549 = !DILocation(line: 525, column: 14, scope: !550)
!550 = !DILexicalBlockFile(scope: !551, file: !365, discriminator: 3)
!551 = distinct !DILexicalBlock(scope: !543, file: !365, line: 525, column: 12)
!552 = !DILocation(line: 525, column: 101, scope: !550)
!553 = !DILocation(line: 525, column: 112, scope: !554)
!554 = !DILexicalBlockFile(scope: !544, file: !365, discriminator: 4)
!555 = !DILocation(line: 527, column: 31, scope: !534)
!556 = !DILocation(line: 527, column: 44, scope: !534)
!557 = !DILocation(line: 527, column: 16, scope: !534)
!558 = !DILocation(line: 527, column: 14, scope: !534)
!559 = !DILocation(line: 528, column: 41, scope: !534)
!560 = !DILocation(line: 528, column: 2, scope: !534)
!561 = !DILocation(line: 530, column: 29, scope: !534)
!562 = !DILocation(line: 530, column: 37, scope: !534)
!563 = !DILocation(line: 530, column: 9, scope: !534)
!564 = !DILocation(line: 532, column: 6, scope: !565)
!565 = distinct !DILexicalBlock(scope: !534, file: !365, line: 532, column: 6)
!566 = !DILocation(line: 532, column: 18, scope: !565)
!567 = !DILocation(line: 532, column: 6, scope: !534)
!568 = !DILocation(line: 533, column: 29, scope: !569)
!569 = distinct !DILexicalBlock(scope: !565, file: !365, line: 532, column: 26)
!570 = !DILocation(line: 533, column: 3, scope: !569)
!571 = !DILocation(line: 534, column: 8, scope: !572)
!572 = distinct !DILexicalBlock(scope: !569, file: !365, line: 534, column: 7)
!573 = !DILocation(line: 534, column: 7, scope: !569)
!574 = !DILocation(line: 535, column: 26, scope: !575)
!575 = distinct !DILexicalBlock(scope: !572, file: !365, line: 534, column: 18)
!576 = !DILocation(line: 535, column: 4, scope: !575)
!577 = !DILocation(line: 536, column: 4, scope: !575)
!578 = !DILocation(line: 537, column: 3, scope: !575)
!579 = !DILocation(line: 538, column: 2, scope: !569)
!580 = !DILocation(line: 540, column: 9, scope: !534)
!581 = !DILocation(line: 540, column: 2, scope: !534)
!582 = !DILocation(line: 542, column: 6, scope: !583)
!583 = distinct !DILexicalBlock(scope: !534, file: !365, line: 542, column: 6)
!584 = !DILocation(line: 542, column: 24, scope: !583)
!585 = !DILocation(line: 542, column: 21, scope: !583)
!586 = !DILocation(line: 542, column: 6, scope: !534)
!587 = !DILocation(line: 542, column: 47, scope: !588)
!588 = !DILexicalBlockFile(scope: !583, file: !365, discriminator: 1)
!589 = !DILocation(line: 542, column: 32, scope: !588)
!590 = !DILocation(line: 543, column: 1, scope: !534)
!591 = distinct !DISubprogram(name: "mainwindows_recreate", scope: !365, file: !365, line: 197, type: !592, isLocal: false, isDefinition: true, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!592 = !DISubroutineType(types: !593)
!593 = !{null}
!594 = !DILocalVariable(name: "tmp", scope: !591, file: !365, line: 199, type: !147)
!595 = !DILocation(line: 199, column: 10, scope: !591)
!596 = !DILocation(line: 201, column: 13, scope: !597)
!597 = distinct !DILexicalBlock(scope: !591, file: !365, line: 201, column: 2)
!598 = !DILocation(line: 201, column: 11, scope: !597)
!599 = !DILocation(line: 201, column: 7, scope: !597)
!600 = !DILocation(line: 201, column: 26, scope: !601)
!601 = !DILexicalBlockFile(scope: !602, file: !365, discriminator: 1)
!602 = distinct !DILexicalBlock(scope: !597, file: !365, line: 201, column: 2)
!603 = !DILocation(line: 201, column: 30, scope: !601)
!604 = !DILocation(line: 201, column: 2, scope: !601)
!605 = !DILocalVariable(name: "rec", scope: !606, file: !365, line: 202, type: !127)
!606 = distinct !DILexicalBlock(scope: !602, file: !365, line: 201, column: 55)
!607 = !DILocation(line: 202, column: 20, scope: !606)
!608 = !DILocation(line: 202, column: 26, scope: !606)
!609 = !DILocation(line: 202, column: 31, scope: !606)
!610 = !DILocation(line: 204, column: 41, scope: !606)
!611 = !DILocation(line: 204, column: 47, scope: !606)
!612 = !DILocation(line: 204, column: 63, scope: !606)
!613 = !DILocation(line: 204, column: 69, scope: !606)
!614 = !DILocation(line: 204, column: 60, scope: !606)
!615 = !DILocation(line: 204, column: 94, scope: !606)
!616 = !DILocation(line: 204, column: 100, scope: !606)
!617 = !DILocation(line: 204, column: 114, scope: !606)
!618 = !DILocation(line: 204, column: 120, scope: !606)
!619 = !DILocation(line: 204, column: 111, scope: !606)
!620 = !DILocation(line: 204, column: 142, scope: !606)
!621 = !DILocation(line: 204, column: 148, scope: !606)
!622 = !DILocation(line: 204, column: 157, scope: !606)
!623 = !DILocation(line: 204, column: 163, scope: !606)
!624 = !DILocation(line: 204, column: 154, scope: !606)
!625 = !DILocation(line: 204, column: 183, scope: !606)
!626 = !DILocation(line: 204, column: 189, scope: !606)
!627 = !DILocation(line: 204, column: 199, scope: !606)
!628 = !DILocation(line: 204, column: 205, scope: !606)
!629 = !DILocation(line: 204, column: 196, scope: !606)
!630 = !DILocation(line: 204, column: 21, scope: !606)
!631 = !DILocation(line: 204, column: 3, scope: !606)
!632 = !DILocation(line: 204, column: 8, scope: !606)
!633 = !DILocation(line: 204, column: 19, scope: !606)
!634 = !DILocation(line: 205, column: 17, scope: !606)
!635 = !DILocation(line: 205, column: 22, scope: !606)
!636 = !DILocation(line: 205, column: 28, scope: !606)
!637 = !DILocation(line: 206, column: 52, scope: !606)
!638 = !DILocation(line: 206, column: 57, scope: !606)
!639 = !DILocation(line: 206, column: 66, scope: !606)
!640 = !DILocation(line: 206, column: 31, scope: !606)
!641 = !DILocation(line: 206, column: 78, scope: !606)
!642 = !DILocation(line: 207, column: 9, scope: !606)
!643 = !DILocation(line: 207, column: 14, scope: !606)
!644 = !DILocation(line: 206, column: 3, scope: !606)
!645 = !DILocation(line: 208, column: 2, scope: !606)
!646 = !DILocation(line: 201, column: 44, scope: !647)
!647 = !DILexicalBlockFile(scope: !602, file: !365, discriminator: 2)
!648 = !DILocation(line: 201, column: 49, scope: !647)
!649 = !DILocation(line: 201, column: 42, scope: !647)
!650 = !DILocation(line: 201, column: 2, scope: !647)
!651 = distinct !{!651, !652}
!652 = !DILocation(line: 201, column: 2, scope: !591)
!653 = !DILocation(line: 209, column: 1, scope: !591)
!654 = distinct !DISubprogram(name: "mainwindow_create", scope: !365, file: !365, line: 211, type: !655, isLocal: false, isDefinition: true, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!655 = !DISubroutineType(types: !656)
!656 = !{!127, !140}
!657 = !DILocalVariable(name: "right", arg: 1, scope: !654, file: !365, line: 211, type: !140)
!658 = !DILocation(line: 211, column: 40, scope: !654)
!659 = !DILocalVariable(name: "rec", scope: !654, file: !365, line: 213, type: !127)
!660 = !DILocation(line: 213, column: 19, scope: !654)
!661 = !DILocalVariable(name: "parent", scope: !654, file: !365, line: 213, type: !127)
!662 = !DILocation(line: 213, column: 25, scope: !654)
!663 = !DILocalVariable(name: "space", scope: !654, file: !365, line: 214, type: !140)
!664 = !DILocation(line: 214, column: 6, scope: !654)
!665 = !DILocation(line: 216, column: 29, scope: !654)
!666 = !DILocation(line: 216, column: 9, scope: !654)
!667 = !DILocation(line: 216, column: 6, scope: !654)
!668 = !DILocation(line: 217, column: 2, scope: !654)
!669 = !DILocation(line: 217, column: 7, scope: !654)
!670 = !DILocation(line: 217, column: 13, scope: !654)
!671 = !DILocation(line: 219, column: 6, scope: !672)
!672 = distinct !DILexicalBlock(scope: !654, file: !365, line: 219, column: 6)
!673 = !DILocation(line: 219, column: 18, scope: !672)
!674 = !DILocation(line: 219, column: 6, scope: !654)
!675 = !DILocation(line: 220, column: 20, scope: !676)
!676 = distinct !DILexicalBlock(scope: !672, file: !365, line: 219, column: 26)
!677 = !DILocation(line: 220, column: 18, scope: !676)
!678 = !DILocation(line: 222, column: 21, scope: !676)
!679 = !DILocation(line: 222, column: 3, scope: !676)
!680 = !DILocation(line: 222, column: 8, scope: !676)
!681 = !DILocation(line: 222, column: 19, scope: !676)
!682 = !DILocation(line: 223, column: 20, scope: !676)
!683 = !DILocation(line: 223, column: 31, scope: !676)
!684 = !DILocation(line: 223, column: 36, scope: !676)
!685 = !DILocation(line: 223, column: 34, scope: !676)
!686 = !DILocation(line: 223, column: 3, scope: !676)
!687 = !DILocation(line: 223, column: 8, scope: !676)
!688 = !DILocation(line: 223, column: 18, scope: !676)
!689 = !DILocation(line: 224, column: 17, scope: !676)
!690 = !DILocation(line: 224, column: 22, scope: !676)
!691 = !DILocation(line: 224, column: 32, scope: !676)
!692 = !DILocation(line: 224, column: 37, scope: !676)
!693 = !DILocation(line: 224, column: 31, scope: !676)
!694 = !DILocation(line: 224, column: 47, scope: !676)
!695 = !DILocation(line: 224, column: 3, scope: !676)
!696 = !DILocation(line: 224, column: 8, scope: !676)
!697 = !DILocation(line: 224, column: 15, scope: !676)
!698 = !DILocation(line: 225, column: 23, scope: !676)
!699 = !DILocation(line: 225, column: 3, scope: !676)
!700 = !DILocation(line: 225, column: 8, scope: !676)
!701 = !DILocation(line: 225, column: 21, scope: !676)
!702 = !DILocation(line: 226, column: 22, scope: !676)
!703 = !DILocation(line: 226, column: 34, scope: !676)
!704 = !DILocation(line: 226, column: 39, scope: !676)
!705 = !DILocation(line: 226, column: 37, scope: !676)
!706 = !DILocation(line: 226, column: 3, scope: !676)
!707 = !DILocation(line: 226, column: 8, scope: !676)
!708 = !DILocation(line: 226, column: 20, scope: !676)
!709 = !DILocation(line: 227, column: 16, scope: !676)
!710 = !DILocation(line: 227, column: 21, scope: !676)
!711 = !DILocation(line: 227, column: 33, scope: !676)
!712 = !DILocation(line: 227, column: 38, scope: !676)
!713 = !DILocation(line: 227, column: 32, scope: !676)
!714 = !DILocation(line: 227, column: 50, scope: !676)
!715 = !DILocation(line: 227, column: 3, scope: !676)
!716 = !DILocation(line: 227, column: 8, scope: !676)
!717 = !DILocation(line: 227, column: 14, scope: !676)
!718 = !DILocation(line: 228, column: 2, scope: !676)
!719 = !DILocation(line: 229, column: 35, scope: !720)
!720 = distinct !DILexicalBlock(scope: !672, file: !365, line: 228, column: 9)
!721 = !DILocation(line: 229, column: 48, scope: !720)
!722 = !DILocation(line: 229, column: 14, scope: !720)
!723 = !DILocation(line: 229, column: 60, scope: !720)
!724 = !DILocation(line: 229, column: 10, scope: !720)
!725 = !DILocation(line: 231, column: 8, scope: !726)
!726 = distinct !DILexicalBlock(scope: !720, file: !365, line: 231, column: 7)
!727 = !DILocation(line: 231, column: 7, scope: !720)
!728 = !DILocalVariable(name: "tmp", scope: !729, file: !365, line: 232, type: !147)
!729 = distinct !DILexicalBlock(scope: !726, file: !365, line: 231, column: 15)
!730 = !DILocation(line: 232, column: 12, scope: !729)
!731 = !DILocalVariable(name: "line", scope: !729, file: !365, line: 232, type: !147)
!732 = !DILocation(line: 232, column: 18, scope: !729)
!733 = !DILocation(line: 233, column: 10, scope: !734)
!734 = distinct !DILexicalBlock(scope: !729, file: !365, line: 233, column: 8)
!735 = !DILocation(line: 233, column: 19, scope: !734)
!736 = !DILocation(line: 233, column: 27, scope: !734)
!737 = !DILocation(line: 233, column: 36, scope: !734)
!738 = !DILocation(line: 233, column: 25, scope: !734)
!739 = !DILocation(line: 233, column: 53, scope: !734)
!740 = !DILocation(line: 233, column: 8, scope: !729)
!741 = !DILocation(line: 235, column: 14, scope: !734)
!742 = !DILocation(line: 235, column: 12, scope: !734)
!743 = !DILocation(line: 235, column: 5, scope: !734)
!744 = !DILocation(line: 236, column: 8, scope: !745)
!745 = distinct !DILexicalBlock(scope: !729, file: !365, line: 236, column: 8)
!746 = !DILocation(line: 236, column: 15, scope: !745)
!747 = !DILocation(line: 236, column: 8, scope: !729)
!748 = !DILocation(line: 237, column: 5, scope: !745)
!749 = !DILocation(line: 239, column: 12, scope: !729)
!750 = !DILocation(line: 239, column: 20, scope: !729)
!751 = !DILocation(line: 239, column: 27, scope: !729)
!752 = !DILocation(line: 239, column: 10, scope: !729)
!753 = !DILocation(line: 240, column: 22, scope: !729)
!754 = !DILocation(line: 240, column: 30, scope: !729)
!755 = !DILocation(line: 240, column: 4, scope: !729)
!756 = !DILocation(line: 240, column: 9, scope: !729)
!757 = !DILocation(line: 240, column: 20, scope: !729)
!758 = !DILocation(line: 241, column: 21, scope: !729)
!759 = !DILocation(line: 241, column: 26, scope: !729)
!760 = !DILocation(line: 241, column: 39, scope: !729)
!761 = !DILocation(line: 241, column: 37, scope: !729)
!762 = !DILocation(line: 241, column: 4, scope: !729)
!763 = !DILocation(line: 241, column: 9, scope: !729)
!764 = !DILocation(line: 241, column: 19, scope: !729)
!765 = !DILocation(line: 242, column: 18, scope: !729)
!766 = !DILocation(line: 242, column: 23, scope: !729)
!767 = !DILocation(line: 242, column: 33, scope: !729)
!768 = !DILocation(line: 242, column: 38, scope: !729)
!769 = !DILocation(line: 242, column: 32, scope: !729)
!770 = !DILocation(line: 242, column: 48, scope: !729)
!771 = !DILocation(line: 242, column: 4, scope: !729)
!772 = !DILocation(line: 242, column: 9, scope: !729)
!773 = !DILocation(line: 242, column: 16, scope: !729)
!774 = !DILocation(line: 243, column: 24, scope: !729)
!775 = !DILocation(line: 243, column: 4, scope: !729)
!776 = !DILocation(line: 243, column: 9, scope: !729)
!777 = !DILocation(line: 243, column: 22, scope: !729)
!778 = !DILocation(line: 244, column: 23, scope: !729)
!779 = !DILocation(line: 244, column: 35, scope: !729)
!780 = !DILocation(line: 244, column: 40, scope: !729)
!781 = !DILocation(line: 244, column: 38, scope: !729)
!782 = !DILocation(line: 244, column: 4, scope: !729)
!783 = !DILocation(line: 244, column: 9, scope: !729)
!784 = !DILocation(line: 244, column: 21, scope: !729)
!785 = !DILocation(line: 245, column: 17, scope: !729)
!786 = !DILocation(line: 245, column: 22, scope: !729)
!787 = !DILocation(line: 245, column: 34, scope: !729)
!788 = !DILocation(line: 245, column: 39, scope: !729)
!789 = !DILocation(line: 245, column: 33, scope: !729)
!790 = !DILocation(line: 245, column: 51, scope: !729)
!791 = !DILocation(line: 245, column: 4, scope: !729)
!792 = !DILocation(line: 245, column: 9, scope: !729)
!793 = !DILocation(line: 245, column: 15, scope: !729)
!794 = !DILocation(line: 247, column: 32, scope: !729)
!795 = !DILocation(line: 247, column: 11, scope: !729)
!796 = !DILocation(line: 247, column: 9, scope: !729)
!797 = !DILocation(line: 248, column: 15, scope: !798)
!798 = distinct !DILexicalBlock(scope: !729, file: !365, line: 248, column: 4)
!799 = !DILocation(line: 248, column: 13, scope: !798)
!800 = !DILocation(line: 248, column: 9, scope: !798)
!801 = !DILocation(line: 248, column: 21, scope: !802)
!802 = !DILexicalBlockFile(scope: !803, file: !365, discriminator: 1)
!803 = distinct !DILexicalBlock(scope: !798, file: !365, line: 248, column: 4)
!804 = !DILocation(line: 248, column: 25, scope: !802)
!805 = !DILocation(line: 248, column: 4, scope: !802)
!806 = !DILocalVariable(name: "rec", scope: !807, file: !365, line: 249, type: !127)
!807 = distinct !DILexicalBlock(scope: !803, file: !365, line: 248, column: 50)
!808 = !DILocation(line: 249, column: 22, scope: !807)
!809 = !DILocation(line: 249, column: 28, scope: !807)
!810 = !DILocation(line: 249, column: 33, scope: !807)
!811 = !DILocation(line: 250, column: 24, scope: !807)
!812 = !DILocation(line: 250, column: 29, scope: !807)
!813 = !DILocation(line: 250, column: 5, scope: !807)
!814 = !DILocation(line: 250, column: 10, scope: !807)
!815 = !DILocation(line: 250, column: 21, scope: !807)
!816 = !DILocation(line: 251, column: 23, scope: !807)
!817 = !DILocation(line: 251, column: 32, scope: !807)
!818 = !DILocation(line: 251, column: 31, scope: !807)
!819 = !DILocation(line: 251, column: 37, scope: !807)
!820 = !DILocation(line: 251, column: 5, scope: !807)
!821 = !DILocation(line: 252, column: 4, scope: !807)
!822 = !DILocation(line: 248, column: 39, scope: !823)
!823 = !DILexicalBlockFile(scope: !803, file: !365, discriminator: 2)
!824 = !DILocation(line: 248, column: 44, scope: !823)
!825 = !DILocation(line: 248, column: 37, scope: !823)
!826 = !DILocation(line: 248, column: 4, scope: !823)
!827 = distinct !{!827, !828}
!828 = !DILocation(line: 248, column: 4, scope: !729)
!829 = !DILocation(line: 253, column: 17, scope: !729)
!830 = !DILocation(line: 253, column: 4, scope: !729)
!831 = !DILocation(line: 254, column: 3, scope: !729)
!832 = !DILocation(line: 255, column: 10, scope: !833)
!833 = distinct !DILexicalBlock(scope: !834, file: !365, line: 255, column: 8)
!834 = distinct !DILexicalBlock(scope: !726, file: !365, line: 254, column: 10)
!835 = !DILocation(line: 255, column: 19, scope: !833)
!836 = !DILocation(line: 255, column: 26, scope: !833)
!837 = !DILocation(line: 255, column: 35, scope: !833)
!838 = !DILocation(line: 255, column: 24, scope: !833)
!839 = !DILocation(line: 255, column: 54, scope: !833)
!840 = !DILocation(line: 255, column: 8, scope: !834)
!841 = !DILocation(line: 257, column: 14, scope: !833)
!842 = !DILocation(line: 257, column: 12, scope: !833)
!843 = !DILocation(line: 257, column: 5, scope: !833)
!844 = !DILocation(line: 258, column: 8, scope: !845)
!845 = distinct !DILexicalBlock(scope: !834, file: !365, line: 258, column: 8)
!846 = !DILocation(line: 258, column: 15, scope: !845)
!847 = !DILocation(line: 258, column: 8, scope: !834)
!848 = !DILocation(line: 259, column: 5, scope: !845)
!849 = !DILocation(line: 261, column: 12, scope: !834)
!850 = !DILocation(line: 261, column: 20, scope: !834)
!851 = !DILocation(line: 261, column: 26, scope: !834)
!852 = !DILocation(line: 261, column: 10, scope: !834)
!853 = !DILocation(line: 262, column: 22, scope: !834)
!854 = !DILocation(line: 262, column: 30, scope: !834)
!855 = !DILocation(line: 262, column: 4, scope: !834)
!856 = !DILocation(line: 262, column: 9, scope: !834)
!857 = !DILocation(line: 262, column: 20, scope: !834)
!858 = !DILocation(line: 263, column: 21, scope: !834)
!859 = !DILocation(line: 263, column: 29, scope: !834)
!860 = !DILocation(line: 263, column: 4, scope: !834)
!861 = !DILocation(line: 263, column: 9, scope: !834)
!862 = !DILocation(line: 263, column: 19, scope: !834)
!863 = !DILocation(line: 264, column: 18, scope: !834)
!864 = !DILocation(line: 264, column: 26, scope: !834)
!865 = !DILocation(line: 264, column: 4, scope: !834)
!866 = !DILocation(line: 264, column: 9, scope: !834)
!867 = !DILocation(line: 264, column: 16, scope: !834)
!868 = !DILocation(line: 265, column: 24, scope: !834)
!869 = !DILocation(line: 265, column: 32, scope: !834)
!870 = !DILocation(line: 265, column: 46, scope: !834)
!871 = !DILocation(line: 265, column: 44, scope: !834)
!872 = !DILocation(line: 265, column: 52, scope: !834)
!873 = !DILocation(line: 265, column: 4, scope: !834)
!874 = !DILocation(line: 265, column: 9, scope: !834)
!875 = !DILocation(line: 265, column: 22, scope: !834)
!876 = !DILocation(line: 266, column: 23, scope: !834)
!877 = !DILocation(line: 266, column: 31, scope: !834)
!878 = !DILocation(line: 266, column: 4, scope: !834)
!879 = !DILocation(line: 266, column: 9, scope: !834)
!880 = !DILocation(line: 266, column: 21, scope: !834)
!881 = !DILocation(line: 267, column: 17, scope: !834)
!882 = !DILocation(line: 267, column: 22, scope: !834)
!883 = !DILocation(line: 267, column: 34, scope: !834)
!884 = !DILocation(line: 267, column: 39, scope: !834)
!885 = !DILocation(line: 267, column: 33, scope: !834)
!886 = !DILocation(line: 267, column: 51, scope: !834)
!887 = !DILocation(line: 267, column: 4, scope: !834)
!888 = !DILocation(line: 267, column: 9, scope: !834)
!889 = !DILocation(line: 267, column: 15, scope: !834)
!890 = !DILocation(line: 269, column: 27, scope: !834)
!891 = !DILocation(line: 269, column: 32, scope: !834)
!892 = !DILocation(line: 269, column: 4, scope: !834)
!893 = !DILocation(line: 269, column: 12, scope: !834)
!894 = !DILocation(line: 269, column: 24, scope: !834)
!895 = !DILocation(line: 270, column: 22, scope: !834)
!896 = !DILocation(line: 270, column: 31, scope: !834)
!897 = !DILocation(line: 270, column: 30, scope: !834)
!898 = !DILocation(line: 270, column: 36, scope: !834)
!899 = !DILocation(line: 270, column: 4, scope: !834)
!900 = !DILocation(line: 274, column: 40, scope: !654)
!901 = !DILocation(line: 274, column: 46, scope: !654)
!902 = !DILocation(line: 274, column: 62, scope: !654)
!903 = !DILocation(line: 274, column: 68, scope: !654)
!904 = !DILocation(line: 274, column: 59, scope: !654)
!905 = !DILocation(line: 274, column: 93, scope: !654)
!906 = !DILocation(line: 274, column: 99, scope: !654)
!907 = !DILocation(line: 274, column: 113, scope: !654)
!908 = !DILocation(line: 274, column: 119, scope: !654)
!909 = !DILocation(line: 274, column: 110, scope: !654)
!910 = !DILocation(line: 274, column: 141, scope: !654)
!911 = !DILocation(line: 274, column: 147, scope: !654)
!912 = !DILocation(line: 274, column: 156, scope: !654)
!913 = !DILocation(line: 274, column: 162, scope: !654)
!914 = !DILocation(line: 274, column: 153, scope: !654)
!915 = !DILocation(line: 274, column: 182, scope: !654)
!916 = !DILocation(line: 274, column: 188, scope: !654)
!917 = !DILocation(line: 274, column: 198, scope: !654)
!918 = !DILocation(line: 274, column: 204, scope: !654)
!919 = !DILocation(line: 274, column: 195, scope: !654)
!920 = !DILocation(line: 274, column: 20, scope: !654)
!921 = !DILocation(line: 274, column: 2, scope: !654)
!922 = !DILocation(line: 274, column: 7, scope: !654)
!923 = !DILocation(line: 274, column: 18, scope: !654)
!924 = !DILocation(line: 275, column: 2, scope: !654)
!925 = !DILocation(line: 277, column: 31, scope: !654)
!926 = !DILocation(line: 277, column: 44, scope: !654)
!927 = !DILocation(line: 277, column: 16, scope: !654)
!928 = !DILocation(line: 277, column: 14, scope: !654)
!929 = !DILocation(line: 278, column: 39, scope: !654)
!930 = !DILocation(line: 278, column: 2, scope: !654)
!931 = !DILocation(line: 279, column: 9, scope: !654)
!932 = !DILocation(line: 279, column: 2, scope: !654)
!933 = !DILocation(line: 280, column: 1, scope: !654)
!934 = distinct !DISubprogram(name: "mainwindows_get_line", scope: !365, file: !365, line: 424, type: !480, isLocal: false, isDefinition: true, scopeLine: 425, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!935 = !DILocalVariable(name: "rec", arg: 1, scope: !934, file: !365, line: 424, type: !127)
!936 = !DILocation(line: 424, column: 47, scope: !934)
!937 = !DILocalVariable(name: "win", scope: !934, file: !365, line: 426, type: !127)
!938 = !DILocation(line: 426, column: 19, scope: !934)
!939 = !DILocalVariable(name: "list", scope: !934, file: !365, line: 427, type: !147)
!940 = !DILocation(line: 427, column: 10, scope: !934)
!941 = !DILocation(line: 429, column: 7, scope: !934)
!942 = !DILocation(line: 431, column: 35, scope: !943)
!943 = distinct !DILexicalBlock(scope: !934, file: !365, line: 431, column: 2)
!944 = !DILocation(line: 431, column: 13, scope: !943)
!945 = !DILocation(line: 431, column: 11, scope: !943)
!946 = !DILocation(line: 431, column: 7, scope: !943)
!947 = !DILocation(line: 432, column: 7, scope: !948)
!948 = distinct !DILexicalBlock(scope: !943, file: !365, line: 431, column: 2)
!949 = !DILocation(line: 432, column: 11, scope: !948)
!950 = !DILocation(line: 431, column: 2, scope: !951)
!951 = !DILexicalBlockFile(scope: !943, file: !365, discriminator: 1)
!952 = !DILocation(line: 434, column: 25, scope: !953)
!953 = distinct !DILexicalBlock(scope: !948, file: !365, line: 433, column: 46)
!954 = !DILocation(line: 434, column: 31, scope: !953)
!955 = !DILocation(line: 434, column: 10, scope: !953)
!956 = !DILocation(line: 434, column: 8, scope: !953)
!957 = !DILocation(line: 435, column: 2, scope: !953)
!958 = !DILocation(line: 433, column: 35, scope: !948)
!959 = !DILocation(line: 433, column: 13, scope: !948)
!960 = !DILocation(line: 433, column: 11, scope: !948)
!961 = !DILocation(line: 431, column: 2, scope: !962)
!962 = !DILexicalBlockFile(scope: !948, file: !365, discriminator: 2)
!963 = distinct !{!963, !964}
!964 = !DILocation(line: 431, column: 2, scope: !934)
!965 = !DILocation(line: 437, column: 6, scope: !966)
!966 = distinct !DILexicalBlock(scope: !934, file: !365, line: 437, column: 6)
!967 = !DILocation(line: 437, column: 10, scope: !966)
!968 = !DILocation(line: 437, column: 6, scope: !934)
!969 = !DILocation(line: 438, column: 25, scope: !966)
!970 = !DILocation(line: 438, column: 31, scope: !966)
!971 = !DILocation(line: 438, column: 10, scope: !966)
!972 = !DILocation(line: 438, column: 8, scope: !966)
!973 = !DILocation(line: 438, column: 3, scope: !966)
!974 = !DILocation(line: 440, column: 36, scope: !975)
!975 = distinct !DILexicalBlock(scope: !934, file: !365, line: 440, column: 2)
!976 = !DILocation(line: 440, column: 13, scope: !975)
!977 = !DILocation(line: 440, column: 11, scope: !975)
!978 = !DILocation(line: 440, column: 7, scope: !975)
!979 = !DILocation(line: 441, column: 7, scope: !980)
!980 = distinct !DILexicalBlock(scope: !975, file: !365, line: 440, column: 2)
!981 = !DILocation(line: 441, column: 11, scope: !980)
!982 = !DILocation(line: 440, column: 2, scope: !983)
!983 = !DILexicalBlockFile(scope: !975, file: !365, discriminator: 1)
!984 = !DILocation(line: 443, column: 25, scope: !985)
!985 = distinct !DILexicalBlock(scope: !980, file: !365, line: 442, column: 47)
!986 = !DILocation(line: 443, column: 31, scope: !985)
!987 = !DILocation(line: 443, column: 10, scope: !985)
!988 = !DILocation(line: 443, column: 8, scope: !985)
!989 = !DILocation(line: 444, column: 2, scope: !985)
!990 = !DILocation(line: 442, column: 36, scope: !980)
!991 = !DILocation(line: 442, column: 13, scope: !980)
!992 = !DILocation(line: 442, column: 11, scope: !980)
!993 = !DILocation(line: 440, column: 2, scope: !994)
!994 = !DILexicalBlockFile(scope: !980, file: !365, discriminator: 2)
!995 = distinct !{!995, !996}
!996 = !DILocation(line: 440, column: 2, scope: !934)
!997 = !DILocation(line: 446, column: 9, scope: !934)
!998 = !DILocation(line: 446, column: 2, scope: !934)
!999 = distinct !DISubprogram(name: "mainwindow_resize", scope: !365, file: !365, line: 125, type: !1000, isLocal: true, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{null, !127, !140, !140}
!1002 = !DILocalVariable(name: "window", arg: 1, scope: !999, file: !365, line: 125, type: !127)
!1003 = !DILocation(line: 125, column: 48, scope: !999)
!1004 = !DILocalVariable(name: "xdiff", arg: 2, scope: !999, file: !365, line: 125, type: !140)
!1005 = !DILocation(line: 125, column: 60, scope: !999)
!1006 = !DILocalVariable(name: "ydiff", arg: 3, scope: !999, file: !365, line: 125, type: !140)
!1007 = !DILocation(line: 125, column: 71, scope: !999)
!1008 = !DILocalVariable(name: "height", scope: !999, file: !365, line: 127, type: !140)
!1009 = !DILocation(line: 127, column: 6, scope: !999)
!1010 = !DILocalVariable(name: "width", scope: !999, file: !365, line: 127, type: !140)
!1011 = !DILocation(line: 127, column: 14, scope: !999)
!1012 = !DILocation(line: 128, column: 6, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !999, file: !365, line: 128, column: 6)
!1014 = !DILocation(line: 128, column: 15, scope: !1013)
!1015 = !DILocation(line: 128, column: 19, scope: !1016)
!1016 = !DILexicalBlockFile(scope: !1013, file: !365, discriminator: 1)
!1017 = !DILocation(line: 128, column: 25, scope: !1016)
!1018 = !DILocation(line: 128, column: 30, scope: !1016)
!1019 = !DILocation(line: 128, column: 33, scope: !1020)
!1020 = !DILexicalBlockFile(scope: !1013, file: !365, discriminator: 2)
!1021 = !DILocation(line: 128, column: 39, scope: !1020)
!1022 = !DILocation(line: 128, column: 6, scope: !1020)
!1023 = !DILocation(line: 129, column: 3, scope: !1013)
!1024 = !DILocation(line: 131, column: 11, scope: !999)
!1025 = !DILocation(line: 131, column: 19, scope: !999)
!1026 = !DILocation(line: 131, column: 28, scope: !999)
!1027 = !DILocation(line: 131, column: 26, scope: !999)
!1028 = !DILocation(line: 131, column: 9, scope: !999)
!1029 = !DILocation(line: 132, column: 10, scope: !999)
!1030 = !DILocation(line: 132, column: 18, scope: !999)
!1031 = !DILocation(line: 132, column: 26, scope: !999)
!1032 = !DILocation(line: 132, column: 24, scope: !999)
!1033 = !DILocation(line: 132, column: 8, scope: !999)
!1034 = !DILocation(line: 133, column: 18, scope: !999)
!1035 = !DILocation(line: 133, column: 26, scope: !999)
!1036 = !DILocation(line: 133, column: 38, scope: !999)
!1037 = !DILocation(line: 133, column: 46, scope: !999)
!1038 = !DILocation(line: 133, column: 37, scope: !999)
!1039 = !DILocation(line: 133, column: 58, scope: !999)
!1040 = !DILocation(line: 133, column: 2, scope: !999)
!1041 = !DILocation(line: 133, column: 10, scope: !999)
!1042 = !DILocation(line: 133, column: 16, scope: !999)
!1043 = !DILocation(line: 134, column: 19, scope: !999)
!1044 = !DILocation(line: 134, column: 27, scope: !999)
!1045 = !DILocation(line: 134, column: 37, scope: !999)
!1046 = !DILocation(line: 134, column: 45, scope: !999)
!1047 = !DILocation(line: 134, column: 36, scope: !999)
!1048 = !DILocation(line: 134, column: 55, scope: !999)
!1049 = !DILocation(line: 134, column: 2, scope: !999)
!1050 = !DILocation(line: 134, column: 10, scope: !999)
!1051 = !DILocation(line: 134, column: 17, scope: !999)
!1052 = !DILocation(line: 135, column: 6, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !999, file: !365, line: 135, column: 6)
!1054 = !DILocation(line: 135, column: 16, scope: !1053)
!1055 = !DILocation(line: 135, column: 24, scope: !1053)
!1056 = !DILocation(line: 135, column: 13, scope: !1053)
!1057 = !DILocation(line: 135, column: 31, scope: !1053)
!1058 = !DILocation(line: 135, column: 34, scope: !1059)
!1059 = !DILexicalBlockFile(scope: !1053, file: !365, discriminator: 1)
!1060 = !DILocation(line: 135, column: 43, scope: !1059)
!1061 = !DILocation(line: 135, column: 51, scope: !1059)
!1062 = !DILocation(line: 135, column: 40, scope: !1059)
!1063 = !DILocation(line: 135, column: 6, scope: !1059)
!1064 = !DILocation(line: 136, column: 101, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1053, file: !365, line: 135, column: 58)
!1066 = !DILocation(line: 136, column: 109, scope: !1065)
!1067 = !DILocation(line: 136, column: 117, scope: !1065)
!1068 = !DILocation(line: 136, column: 124, scope: !1065)
!1069 = !DILocation(line: 136, column: 131, scope: !1065)
!1070 = !DILocation(line: 136, column: 139, scope: !1065)
!1071 = !DILocation(line: 136, column: 147, scope: !1065)
!1072 = !DILocation(line: 136, column: 3, scope: !1065)
!1073 = !DILocation(line: 138, column: 2, scope: !1065)
!1074 = !DILocation(line: 139, column: 2, scope: !999)
!1075 = !DILocation(line: 139, column: 10, scope: !999)
!1076 = !DILocation(line: 139, column: 21, scope: !999)
!1077 = !DILocation(line: 140, column: 1, scope: !999)
!1078 = !DILocation(line: 140, column: 1, scope: !1079)
!1079 = !DILexicalBlockFile(scope: !999, file: !365, discriminator: 1)
!1080 = distinct !DISubprogram(name: "find_window_with_room_right", scope: !365, file: !365, line: 77, type: !1081, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!127}
!1083 = !DILocalVariable(name: "biggest_rec", scope: !1080, file: !365, line: 79, type: !127)
!1084 = !DILocation(line: 79, column: 19, scope: !1080)
!1085 = !DILocalVariable(name: "tmp", scope: !1080, file: !365, line: 80, type: !147)
!1086 = !DILocation(line: 80, column: 10, scope: !1080)
!1087 = !DILocalVariable(name: "space", scope: !1080, file: !365, line: 81, type: !140)
!1088 = !DILocation(line: 81, column: 6, scope: !1080)
!1089 = !DILocalVariable(name: "biggest", scope: !1080, file: !365, line: 81, type: !140)
!1090 = !DILocation(line: 81, column: 13, scope: !1080)
!1091 = !DILocation(line: 83, column: 10, scope: !1080)
!1092 = !DILocation(line: 83, column: 27, scope: !1080)
!1093 = !DILocation(line: 84, column: 13, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1080, file: !365, line: 84, column: 2)
!1095 = !DILocation(line: 84, column: 11, scope: !1094)
!1096 = !DILocation(line: 84, column: 7, scope: !1094)
!1097 = !DILocation(line: 84, column: 26, scope: !1098)
!1098 = !DILexicalBlockFile(scope: !1099, file: !365, discriminator: 1)
!1099 = distinct !DILexicalBlock(scope: !1094, file: !365, line: 84, column: 2)
!1100 = !DILocation(line: 84, column: 30, scope: !1098)
!1101 = !DILocation(line: 84, column: 2, scope: !1098)
!1102 = !DILocalVariable(name: "rec", scope: !1103, file: !365, line: 85, type: !127)
!1103 = distinct !DILexicalBlock(scope: !1099, file: !365, line: 84, column: 55)
!1104 = !DILocation(line: 85, column: 20, scope: !1103)
!1105 = !DILocation(line: 85, column: 26, scope: !1103)
!1106 = !DILocation(line: 85, column: 31, scope: !1103)
!1107 = !DILocation(line: 87, column: 13, scope: !1103)
!1108 = !DILocation(line: 87, column: 19, scope: !1103)
!1109 = !DILocation(line: 87, column: 26, scope: !1103)
!1110 = !DILocation(line: 87, column: 32, scope: !1103)
!1111 = !DILocation(line: 87, column: 24, scope: !1103)
!1112 = !DILocation(line: 87, column: 9, scope: !1103)
!1113 = !DILocation(line: 88, column: 7, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1103, file: !365, line: 88, column: 7)
!1115 = !DILocation(line: 88, column: 13, scope: !1114)
!1116 = !DILocation(line: 88, column: 23, scope: !1114)
!1117 = !DILocation(line: 88, column: 26, scope: !1118)
!1118 = !DILexicalBlockFile(scope: !1114, file: !365, discriminator: 1)
!1119 = !DILocation(line: 88, column: 34, scope: !1118)
!1120 = !DILocation(line: 88, column: 32, scope: !1118)
!1121 = !DILocation(line: 88, column: 7, scope: !1118)
!1122 = !DILocation(line: 89, column: 14, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1114, file: !365, line: 88, column: 43)
!1124 = !DILocation(line: 89, column: 12, scope: !1123)
!1125 = !DILocation(line: 90, column: 18, scope: !1123)
!1126 = !DILocation(line: 90, column: 16, scope: !1123)
!1127 = !DILocation(line: 91, column: 3, scope: !1123)
!1128 = !DILocation(line: 92, column: 2, scope: !1103)
!1129 = !DILocation(line: 84, column: 44, scope: !1130)
!1130 = !DILexicalBlockFile(scope: !1099, file: !365, discriminator: 2)
!1131 = !DILocation(line: 84, column: 49, scope: !1130)
!1132 = !DILocation(line: 84, column: 42, scope: !1130)
!1133 = !DILocation(line: 84, column: 2, scope: !1130)
!1134 = distinct !{!1134, !1135}
!1135 = !DILocation(line: 84, column: 2, scope: !1080)
!1136 = !DILocation(line: 94, column: 9, scope: !1080)
!1137 = !DILocation(line: 94, column: 2, scope: !1080)
!1138 = distinct !DISubprogram(name: "mainwindows_find_left", scope: !365, file: !365, line: 370, type: !1139, isLocal: true, isDefinition: true, scopeLine: 371, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!127, !127, !140}
!1141 = !DILocalVariable(name: "window", arg: 1, scope: !1138, file: !365, line: 370, type: !127)
!1142 = !DILocation(line: 370, column: 64, scope: !1138)
!1143 = !DILocalVariable(name: "find_last", arg: 2, scope: !1138, file: !365, line: 370, type: !140)
!1144 = !DILocation(line: 370, column: 76, scope: !1138)
!1145 = !DILocalVariable(name: "first_line", scope: !1138, file: !365, line: 372, type: !140)
!1146 = !DILocation(line: 372, column: 6, scope: !1138)
!1147 = !DILocalVariable(name: "last_line", scope: !1138, file: !365, line: 372, type: !140)
!1148 = !DILocation(line: 372, column: 18, scope: !1138)
!1149 = !DILocalVariable(name: "first_column", scope: !1138, file: !365, line: 372, type: !140)
!1150 = !DILocation(line: 372, column: 29, scope: !1138)
!1151 = !DILocalVariable(name: "best", scope: !1138, file: !365, line: 373, type: !127)
!1152 = !DILocation(line: 373, column: 19, scope: !1138)
!1153 = !DILocalVariable(name: "tmp", scope: !1138, file: !365, line: 374, type: !147)
!1154 = !DILocation(line: 374, column: 10, scope: !1138)
!1155 = !DILocation(line: 376, column: 6, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1138, file: !365, line: 376, column: 6)
!1157 = !DILocation(line: 376, column: 13, scope: !1156)
!1158 = !DILocation(line: 376, column: 6, scope: !1138)
!1159 = !DILocation(line: 377, column: 16, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1156, file: !365, line: 376, column: 21)
!1161 = !DILocation(line: 377, column: 24, scope: !1160)
!1162 = !DILocation(line: 377, column: 14, scope: !1160)
!1163 = !DILocation(line: 378, column: 15, scope: !1160)
!1164 = !DILocation(line: 378, column: 23, scope: !1160)
!1165 = !DILocation(line: 378, column: 13, scope: !1160)
!1166 = !DILocation(line: 379, column: 18, scope: !1160)
!1167 = !DILocation(line: 379, column: 26, scope: !1160)
!1168 = !DILocation(line: 379, column: 16, scope: !1160)
!1169 = !DILocation(line: 380, column: 2, scope: !1160)
!1170 = !DILocation(line: 381, column: 28, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1156, file: !365, line: 380, column: 9)
!1172 = !DILocation(line: 381, column: 26, scope: !1171)
!1173 = !DILocation(line: 381, column: 14, scope: !1171)
!1174 = !DILocation(line: 382, column: 18, scope: !1171)
!1175 = !DILocation(line: 382, column: 16, scope: !1171)
!1176 = !DILocation(line: 385, column: 6, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1138, file: !365, line: 385, column: 6)
!1178 = !DILocation(line: 385, column: 6, scope: !1138)
!1179 = !DILocation(line: 386, column: 18, scope: !1177)
!1180 = !DILocation(line: 386, column: 16, scope: !1177)
!1181 = !DILocation(line: 386, column: 3, scope: !1177)
!1182 = !DILocation(line: 388, column: 7, scope: !1138)
!1183 = !DILocation(line: 389, column: 13, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1138, file: !365, line: 389, column: 2)
!1185 = !DILocation(line: 389, column: 11, scope: !1184)
!1186 = !DILocation(line: 389, column: 7, scope: !1184)
!1187 = !DILocation(line: 389, column: 26, scope: !1188)
!1188 = !DILexicalBlockFile(scope: !1189, file: !365, discriminator: 1)
!1189 = distinct !DILexicalBlock(scope: !1184, file: !365, line: 389, column: 2)
!1190 = !DILocation(line: 389, column: 30, scope: !1188)
!1191 = !DILocation(line: 389, column: 2, scope: !1188)
!1192 = !DILocalVariable(name: "rec", scope: !1193, file: !365, line: 390, type: !127)
!1193 = distinct !DILexicalBlock(scope: !1189, file: !365, line: 389, column: 55)
!1194 = !DILocation(line: 390, column: 20, scope: !1193)
!1195 = !DILocation(line: 390, column: 26, scope: !1193)
!1196 = !DILocation(line: 390, column: 31, scope: !1193)
!1197 = !DILocation(line: 392, column: 7, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1193, file: !365, line: 392, column: 7)
!1199 = !DILocation(line: 392, column: 12, scope: !1198)
!1200 = !DILocation(line: 392, column: 26, scope: !1198)
!1201 = !DILocation(line: 392, column: 23, scope: !1198)
!1202 = !DILocation(line: 392, column: 37, scope: !1198)
!1203 = !DILocation(line: 393, column: 7, scope: !1198)
!1204 = !DILocation(line: 393, column: 12, scope: !1198)
!1205 = !DILocation(line: 393, column: 25, scope: !1198)
!1206 = !DILocation(line: 393, column: 22, scope: !1198)
!1207 = !DILocation(line: 393, column: 35, scope: !1198)
!1208 = !DILocation(line: 394, column: 7, scope: !1198)
!1209 = !DILocation(line: 394, column: 12, scope: !1198)
!1210 = !DILocation(line: 394, column: 26, scope: !1198)
!1211 = !DILocation(line: 394, column: 24, scope: !1198)
!1212 = !DILocation(line: 394, column: 39, scope: !1198)
!1213 = !DILocation(line: 395, column: 8, scope: !1198)
!1214 = !DILocation(line: 395, column: 13, scope: !1198)
!1215 = !DILocation(line: 395, column: 20, scope: !1198)
!1216 = !DILocation(line: 395, column: 23, scope: !1217)
!1217 = !DILexicalBlockFile(scope: !1198, file: !365, discriminator: 1)
!1218 = !DILocation(line: 395, column: 28, scope: !1217)
!1219 = !DILocation(line: 395, column: 42, scope: !1217)
!1220 = !DILocation(line: 395, column: 48, scope: !1217)
!1221 = !DILocation(line: 395, column: 40, scope: !1217)
!1222 = !DILocation(line: 392, column: 7, scope: !1223)
!1223 = !DILexicalBlockFile(scope: !1193, file: !365, discriminator: 1)
!1224 = !DILocation(line: 396, column: 11, scope: !1198)
!1225 = !DILocation(line: 396, column: 9, scope: !1198)
!1226 = !DILocation(line: 396, column: 4, scope: !1198)
!1227 = !DILocation(line: 397, column: 2, scope: !1193)
!1228 = !DILocation(line: 389, column: 44, scope: !1229)
!1229 = !DILexicalBlockFile(scope: !1189, file: !365, discriminator: 2)
!1230 = !DILocation(line: 389, column: 49, scope: !1229)
!1231 = !DILocation(line: 389, column: 42, scope: !1229)
!1232 = !DILocation(line: 389, column: 2, scope: !1229)
!1233 = distinct !{!1233, !1234}
!1234 = !DILocation(line: 389, column: 2, scope: !1138)
!1235 = !DILocation(line: 399, column: 9, scope: !1138)
!1236 = !DILocation(line: 399, column: 2, scope: !1138)
!1237 = distinct !DISubprogram(name: "mainwindows_find_right", scope: !365, file: !365, line: 305, type: !1139, isLocal: true, isDefinition: true, scopeLine: 306, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!1238 = !DILocalVariable(name: "window", arg: 1, scope: !1237, file: !365, line: 305, type: !127)
!1239 = !DILocation(line: 305, column: 65, scope: !1237)
!1240 = !DILocalVariable(name: "find_first", arg: 2, scope: !1237, file: !365, line: 305, type: !140)
!1241 = !DILocation(line: 305, column: 77, scope: !1237)
!1242 = !DILocalVariable(name: "first_line", scope: !1237, file: !365, line: 307, type: !140)
!1243 = !DILocation(line: 307, column: 6, scope: !1237)
!1244 = !DILocalVariable(name: "last_line", scope: !1237, file: !365, line: 307, type: !140)
!1245 = !DILocation(line: 307, column: 18, scope: !1237)
!1246 = !DILocalVariable(name: "last_column", scope: !1237, file: !365, line: 307, type: !140)
!1247 = !DILocation(line: 307, column: 29, scope: !1237)
!1248 = !DILocalVariable(name: "best", scope: !1237, file: !365, line: 308, type: !127)
!1249 = !DILocation(line: 308, column: 19, scope: !1237)
!1250 = !DILocalVariable(name: "tmp", scope: !1237, file: !365, line: 309, type: !147)
!1251 = !DILocation(line: 309, column: 10, scope: !1237)
!1252 = !DILocation(line: 311, column: 6, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1237, file: !365, line: 311, column: 6)
!1254 = !DILocation(line: 311, column: 13, scope: !1253)
!1255 = !DILocation(line: 311, column: 6, scope: !1237)
!1256 = !DILocation(line: 312, column: 16, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1253, file: !365, line: 311, column: 21)
!1258 = !DILocation(line: 312, column: 24, scope: !1257)
!1259 = !DILocation(line: 312, column: 14, scope: !1257)
!1260 = !DILocation(line: 313, column: 15, scope: !1257)
!1261 = !DILocation(line: 313, column: 23, scope: !1257)
!1262 = !DILocation(line: 313, column: 13, scope: !1257)
!1263 = !DILocation(line: 314, column: 17, scope: !1257)
!1264 = !DILocation(line: 314, column: 25, scope: !1257)
!1265 = !DILocation(line: 314, column: 15, scope: !1257)
!1266 = !DILocation(line: 315, column: 2, scope: !1257)
!1267 = !DILocation(line: 316, column: 40, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1253, file: !365, line: 315, column: 9)
!1269 = !DILocation(line: 316, column: 26, scope: !1268)
!1270 = !DILocation(line: 316, column: 14, scope: !1268)
!1271 = !DILocation(line: 319, column: 6, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1237, file: !365, line: 319, column: 6)
!1273 = !DILocation(line: 319, column: 6, scope: !1237)
!1274 = !DILocation(line: 320, column: 15, scope: !1272)
!1275 = !DILocation(line: 320, column: 3, scope: !1272)
!1276 = !DILocation(line: 322, column: 7, scope: !1237)
!1277 = !DILocation(line: 323, column: 13, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1237, file: !365, line: 323, column: 2)
!1279 = !DILocation(line: 323, column: 11, scope: !1278)
!1280 = !DILocation(line: 323, column: 7, scope: !1278)
!1281 = !DILocation(line: 323, column: 26, scope: !1282)
!1282 = !DILexicalBlockFile(scope: !1283, file: !365, discriminator: 1)
!1283 = distinct !DILexicalBlock(scope: !1278, file: !365, line: 323, column: 2)
!1284 = !DILocation(line: 323, column: 30, scope: !1282)
!1285 = !DILocation(line: 323, column: 2, scope: !1282)
!1286 = !DILocalVariable(name: "rec", scope: !1287, file: !365, line: 324, type: !127)
!1287 = distinct !DILexicalBlock(scope: !1283, file: !365, line: 323, column: 55)
!1288 = !DILocation(line: 324, column: 20, scope: !1287)
!1289 = !DILocation(line: 324, column: 26, scope: !1287)
!1290 = !DILocation(line: 324, column: 31, scope: !1287)
!1291 = !DILocation(line: 326, column: 7, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1287, file: !365, line: 326, column: 7)
!1293 = !DILocation(line: 326, column: 12, scope: !1292)
!1294 = !DILocation(line: 326, column: 26, scope: !1292)
!1295 = !DILocation(line: 326, column: 23, scope: !1292)
!1296 = !DILocation(line: 326, column: 37, scope: !1292)
!1297 = !DILocation(line: 327, column: 7, scope: !1292)
!1298 = !DILocation(line: 327, column: 12, scope: !1292)
!1299 = !DILocation(line: 327, column: 25, scope: !1292)
!1300 = !DILocation(line: 327, column: 22, scope: !1292)
!1301 = !DILocation(line: 327, column: 35, scope: !1292)
!1302 = !DILocation(line: 328, column: 7, scope: !1292)
!1303 = !DILocation(line: 328, column: 12, scope: !1292)
!1304 = !DILocation(line: 328, column: 27, scope: !1292)
!1305 = !DILocation(line: 328, column: 25, scope: !1292)
!1306 = !DILocation(line: 328, column: 39, scope: !1292)
!1307 = !DILocation(line: 329, column: 8, scope: !1292)
!1308 = !DILocation(line: 329, column: 13, scope: !1292)
!1309 = !DILocation(line: 329, column: 20, scope: !1292)
!1310 = !DILocation(line: 329, column: 23, scope: !1311)
!1311 = !DILexicalBlockFile(scope: !1292, file: !365, discriminator: 1)
!1312 = !DILocation(line: 329, column: 28, scope: !1311)
!1313 = !DILocation(line: 329, column: 43, scope: !1311)
!1314 = !DILocation(line: 329, column: 49, scope: !1311)
!1315 = !DILocation(line: 329, column: 41, scope: !1311)
!1316 = !DILocation(line: 326, column: 7, scope: !1317)
!1317 = !DILexicalBlockFile(scope: !1287, file: !365, discriminator: 1)
!1318 = !DILocation(line: 330, column: 11, scope: !1292)
!1319 = !DILocation(line: 330, column: 9, scope: !1292)
!1320 = !DILocation(line: 330, column: 4, scope: !1292)
!1321 = !DILocation(line: 331, column: 2, scope: !1287)
!1322 = !DILocation(line: 323, column: 44, scope: !1323)
!1323 = !DILexicalBlockFile(scope: !1283, file: !365, discriminator: 2)
!1324 = !DILocation(line: 323, column: 49, scope: !1323)
!1325 = !DILocation(line: 323, column: 42, scope: !1323)
!1326 = !DILocation(line: 323, column: 2, scope: !1323)
!1327 = distinct !{!1327, !1328}
!1328 = !DILocation(line: 323, column: 2, scope: !1237)
!1329 = !DILocation(line: 333, column: 9, scope: !1237)
!1330 = !DILocation(line: 333, column: 2, scope: !1237)
!1331 = distinct !DISubprogram(name: "gui_windows_remove_parent", scope: !365, file: !365, line: 509, type: !535, isLocal: true, isDefinition: true, scopeLine: 510, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!1332 = !DILocalVariable(name: "window", arg: 1, scope: !1331, file: !365, line: 509, type: !127)
!1333 = !DILocation(line: 509, column: 56, scope: !1331)
!1334 = !DILocalVariable(name: "new_parent", scope: !1331, file: !365, line: 511, type: !127)
!1335 = !DILocation(line: 511, column: 26, scope: !1331)
!1336 = !DILocalVariable(name: "tmp", scope: !1331, file: !365, line: 512, type: !147)
!1337 = !DILocation(line: 512, column: 10, scope: !1331)
!1338 = !DILocation(line: 514, column: 22, scope: !1331)
!1339 = !DILocation(line: 514, column: 35, scope: !1331)
!1340 = !DILocation(line: 514, column: 20, scope: !1331)
!1341 = !DILocation(line: 515, column: 13, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1331, file: !365, line: 515, column: 2)
!1343 = !DILocation(line: 515, column: 11, scope: !1342)
!1344 = !DILocation(line: 515, column: 7, scope: !1342)
!1345 = !DILocation(line: 515, column: 22, scope: !1346)
!1346 = !DILexicalBlockFile(scope: !1347, file: !365, discriminator: 1)
!1347 = distinct !DILexicalBlock(scope: !1342, file: !365, line: 515, column: 2)
!1348 = !DILocation(line: 515, column: 26, scope: !1346)
!1349 = !DILocation(line: 515, column: 2, scope: !1346)
!1350 = !DILocalVariable(name: "rec", scope: !1351, file: !365, line: 516, type: !133)
!1351 = distinct !DILexicalBlock(scope: !1347, file: !365, line: 515, column: 51)
!1352 = !DILocation(line: 516, column: 15, scope: !1351)
!1353 = !DILocation(line: 516, column: 21, scope: !1351)
!1354 = !DILocation(line: 516, column: 26, scope: !1351)
!1355 = !DILocation(line: 518, column: 7, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1351, file: !365, line: 518, column: 7)
!1357 = !DILocation(line: 518, column: 12, scope: !1356)
!1358 = !DILocation(line: 518, column: 21, scope: !1356)
!1359 = !DILocation(line: 518, column: 28, scope: !1356)
!1360 = !DILocation(line: 518, column: 54, scope: !1361)
!1361 = !DILexicalBlockFile(scope: !1356, file: !365, discriminator: 1)
!1362 = !DILocation(line: 518, column: 60, scope: !1361)
!1363 = !DILocation(line: 518, column: 33, scope: !1361)
!1364 = !DILocation(line: 518, column: 72, scope: !1361)
!1365 = !DILocation(line: 518, column: 83, scope: !1361)
!1366 = !DILocation(line: 518, column: 80, scope: !1361)
!1367 = !DILocation(line: 518, column: 7, scope: !1361)
!1368 = !DILocation(line: 519, column: 45, scope: !1356)
!1369 = !DILocation(line: 519, column: 50, scope: !1356)
!1370 = !DILocation(line: 519, column: 25, scope: !1356)
!1371 = !DILocation(line: 520, column: 2, scope: !1351)
!1372 = !DILocation(line: 515, column: 40, scope: !1373)
!1373 = !DILexicalBlockFile(scope: !1347, file: !365, discriminator: 2)
!1374 = !DILocation(line: 515, column: 45, scope: !1373)
!1375 = !DILocation(line: 515, column: 38, scope: !1373)
!1376 = !DILocation(line: 515, column: 2, scope: !1373)
!1377 = distinct !{!1377, !1378}
!1378 = !DILocation(line: 515, column: 2, scope: !1331)
!1379 = !DILocation(line: 521, column: 1, scope: !1331)
!1380 = distinct !DISubprogram(name: "mainwindows_add_space", scope: !365, file: !365, line: 450, type: !535, isLocal: true, isDefinition: true, scopeLine: 451, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!1381 = !DILocalVariable(name: "destroy_win", arg: 1, scope: !1380, file: !365, line: 450, type: !127)
!1382 = !DILocation(line: 450, column: 52, scope: !1380)
!1383 = !DILocalVariable(name: "rec", scope: !1380, file: !365, line: 452, type: !127)
!1384 = !DILocation(line: 452, column: 19, scope: !1380)
!1385 = !DILocalVariable(name: "size", scope: !1380, file: !365, line: 453, type: !140)
!1386 = !DILocation(line: 453, column: 6, scope: !1380)
!1387 = !DILocalVariable(name: "rsize", scope: !1380, file: !365, line: 453, type: !140)
!1388 = !DILocation(line: 453, column: 12, scope: !1380)
!1389 = !DILocation(line: 455, column: 6, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1380, file: !365, line: 455, column: 6)
!1391 = !DILocation(line: 455, column: 19, scope: !1390)
!1392 = !DILocation(line: 455, column: 31, scope: !1390)
!1393 = !DILocation(line: 455, column: 44, scope: !1390)
!1394 = !DILocation(line: 455, column: 29, scope: !1390)
!1395 = !DILocation(line: 455, column: 6, scope: !1380)
!1396 = !DILocation(line: 456, column: 3, scope: !1390)
!1397 = !DILocation(line: 458, column: 6, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1380, file: !365, line: 458, column: 6)
!1399 = !DILocation(line: 458, column: 19, scope: !1398)
!1400 = !DILocation(line: 458, column: 33, scope: !1398)
!1401 = !DILocation(line: 458, column: 46, scope: !1398)
!1402 = !DILocation(line: 458, column: 31, scope: !1398)
!1403 = !DILocation(line: 458, column: 6, scope: !1380)
!1404 = !DILocation(line: 459, column: 3, scope: !1398)
!1405 = !DILocation(line: 461, column: 10, scope: !1380)
!1406 = !DILocation(line: 461, column: 23, scope: !1380)
!1407 = !DILocation(line: 461, column: 35, scope: !1380)
!1408 = !DILocation(line: 461, column: 48, scope: !1380)
!1409 = !DILocation(line: 461, column: 34, scope: !1380)
!1410 = !DILocation(line: 461, column: 60, scope: !1380)
!1411 = !DILocation(line: 461, column: 8, scope: !1380)
!1412 = !DILocation(line: 462, column: 30, scope: !1380)
!1413 = !DILocation(line: 462, column: 8, scope: !1380)
!1414 = !DILocation(line: 462, column: 6, scope: !1380)
!1415 = !DILocation(line: 463, column: 6, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1380, file: !365, line: 463, column: 6)
!1417 = !DILocation(line: 463, column: 10, scope: !1416)
!1418 = !DILocation(line: 463, column: 6, scope: !1380)
!1419 = !DILocation(line: 464, column: 22, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1416, file: !365, line: 463, column: 18)
!1421 = !DILocation(line: 464, column: 35, scope: !1420)
!1422 = !DILocation(line: 464, column: 3, scope: !1420)
!1423 = !DILocation(line: 464, column: 8, scope: !1420)
!1424 = !DILocation(line: 464, column: 20, scope: !1420)
!1425 = !DILocation(line: 465, column: 21, scope: !1420)
!1426 = !DILocation(line: 465, column: 26, scope: !1420)
!1427 = !DILocation(line: 465, column: 31, scope: !1420)
!1428 = !DILocation(line: 465, column: 3, scope: !1420)
!1429 = !DILocation(line: 466, column: 3, scope: !1420)
!1430 = !DILocation(line: 469, column: 31, scope: !1380)
!1431 = !DILocation(line: 469, column: 8, scope: !1380)
!1432 = !DILocation(line: 469, column: 6, scope: !1380)
!1433 = !DILocation(line: 470, column: 6, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1380, file: !365, line: 470, column: 6)
!1435 = !DILocation(line: 470, column: 10, scope: !1434)
!1436 = !DILocation(line: 470, column: 6, scope: !1380)
!1437 = !DILocation(line: 471, column: 23, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1434, file: !365, line: 470, column: 18)
!1439 = !DILocation(line: 471, column: 36, scope: !1438)
!1440 = !DILocation(line: 471, column: 3, scope: !1438)
!1441 = !DILocation(line: 471, column: 8, scope: !1438)
!1442 = !DILocation(line: 471, column: 21, scope: !1438)
!1443 = !DILocation(line: 472, column: 21, scope: !1438)
!1444 = !DILocation(line: 472, column: 26, scope: !1438)
!1445 = !DILocation(line: 472, column: 31, scope: !1438)
!1446 = !DILocation(line: 472, column: 3, scope: !1438)
!1447 = !DILocation(line: 473, column: 3, scope: !1438)
!1448 = !DILocation(line: 476, column: 9, scope: !1380)
!1449 = !DILocation(line: 476, column: 22, scope: !1380)
!1450 = !DILocation(line: 476, column: 32, scope: !1380)
!1451 = !DILocation(line: 476, column: 45, scope: !1380)
!1452 = !DILocation(line: 476, column: 31, scope: !1380)
!1453 = !DILocation(line: 476, column: 55, scope: !1380)
!1454 = !DILocation(line: 476, column: 7, scope: !1380)
!1455 = !DILocation(line: 478, column: 31, scope: !1380)
!1456 = !DILocation(line: 478, column: 8, scope: !1380)
!1457 = !DILocation(line: 478, column: 6, scope: !1380)
!1458 = !DILocation(line: 479, column: 6, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1380, file: !365, line: 479, column: 6)
!1460 = !DILocation(line: 479, column: 10, scope: !1459)
!1461 = !DILocation(line: 479, column: 6, scope: !1380)
!1462 = !DILocalVariable(name: "tmp", scope: !1463, file: !365, line: 480, type: !147)
!1463 = distinct !DILexicalBlock(scope: !1459, file: !365, line: 479, column: 18)
!1464 = !DILocation(line: 480, column: 11, scope: !1463)
!1465 = !DILocalVariable(name: "list", scope: !1463, file: !365, line: 480, type: !147)
!1466 = !DILocation(line: 480, column: 17, scope: !1463)
!1467 = !DILocation(line: 481, column: 31, scope: !1463)
!1468 = !DILocation(line: 481, column: 10, scope: !1463)
!1469 = !DILocation(line: 481, column: 8, scope: !1463)
!1470 = !DILocation(line: 483, column: 14, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1463, file: !365, line: 483, column: 3)
!1472 = !DILocation(line: 483, column: 12, scope: !1471)
!1473 = !DILocation(line: 483, column: 8, scope: !1471)
!1474 = !DILocation(line: 483, column: 20, scope: !1475)
!1475 = !DILexicalBlockFile(scope: !1476, file: !365, discriminator: 1)
!1476 = distinct !DILexicalBlock(scope: !1471, file: !365, line: 483, column: 3)
!1477 = !DILocation(line: 483, column: 24, scope: !1475)
!1478 = !DILocation(line: 483, column: 3, scope: !1475)
!1479 = !DILocalVariable(name: "rec", scope: !1480, file: !365, line: 484, type: !127)
!1480 = distinct !DILexicalBlock(scope: !1476, file: !365, line: 483, column: 49)
!1481 = !DILocation(line: 484, column: 21, scope: !1480)
!1482 = !DILocation(line: 484, column: 27, scope: !1480)
!1483 = !DILocation(line: 484, column: 32, scope: !1480)
!1484 = !DILocation(line: 485, column: 22, scope: !1480)
!1485 = !DILocation(line: 485, column: 35, scope: !1480)
!1486 = !DILocation(line: 485, column: 4, scope: !1480)
!1487 = !DILocation(line: 485, column: 9, scope: !1480)
!1488 = !DILocation(line: 485, column: 20, scope: !1480)
!1489 = !DILocation(line: 486, column: 22, scope: !1480)
!1490 = !DILocation(line: 486, column: 30, scope: !1480)
!1491 = !DILocation(line: 486, column: 4, scope: !1480)
!1492 = !DILocation(line: 487, column: 3, scope: !1480)
!1493 = !DILocation(line: 483, column: 38, scope: !1494)
!1494 = !DILexicalBlockFile(scope: !1476, file: !365, discriminator: 2)
!1495 = !DILocation(line: 483, column: 43, scope: !1494)
!1496 = !DILocation(line: 483, column: 36, scope: !1494)
!1497 = !DILocation(line: 483, column: 3, scope: !1494)
!1498 = distinct !{!1498, !1499}
!1499 = !DILocation(line: 483, column: 3, scope: !1463)
!1500 = !DILocation(line: 489, column: 16, scope: !1463)
!1501 = !DILocation(line: 489, column: 3, scope: !1463)
!1502 = !DILocation(line: 490, column: 3, scope: !1463)
!1503 = !DILocation(line: 493, column: 31, scope: !1380)
!1504 = !DILocation(line: 493, column: 8, scope: !1380)
!1505 = !DILocation(line: 493, column: 6, scope: !1380)
!1506 = !DILocation(line: 494, column: 6, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1380, file: !365, line: 494, column: 6)
!1508 = !DILocation(line: 494, column: 10, scope: !1507)
!1509 = !DILocation(line: 494, column: 6, scope: !1380)
!1510 = !DILocalVariable(name: "tmp", scope: !1511, file: !365, line: 495, type: !147)
!1511 = distinct !DILexicalBlock(scope: !1507, file: !365, line: 494, column: 18)
!1512 = !DILocation(line: 495, column: 11, scope: !1511)
!1513 = !DILocalVariable(name: "list", scope: !1511, file: !365, line: 495, type: !147)
!1514 = !DILocation(line: 495, column: 17, scope: !1511)
!1515 = !DILocation(line: 496, column: 31, scope: !1511)
!1516 = !DILocation(line: 496, column: 10, scope: !1511)
!1517 = !DILocation(line: 496, column: 8, scope: !1511)
!1518 = !DILocation(line: 498, column: 14, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1511, file: !365, line: 498, column: 3)
!1520 = !DILocation(line: 498, column: 12, scope: !1519)
!1521 = !DILocation(line: 498, column: 8, scope: !1519)
!1522 = !DILocation(line: 498, column: 20, scope: !1523)
!1523 = !DILexicalBlockFile(scope: !1524, file: !365, discriminator: 1)
!1524 = distinct !DILexicalBlock(scope: !1519, file: !365, line: 498, column: 3)
!1525 = !DILocation(line: 498, column: 24, scope: !1523)
!1526 = !DILocation(line: 498, column: 3, scope: !1523)
!1527 = !DILocalVariable(name: "rec", scope: !1528, file: !365, line: 499, type: !127)
!1528 = distinct !DILexicalBlock(scope: !1524, file: !365, line: 498, column: 49)
!1529 = !DILocation(line: 499, column: 21, scope: !1528)
!1530 = !DILocation(line: 499, column: 27, scope: !1528)
!1531 = !DILocation(line: 499, column: 32, scope: !1528)
!1532 = !DILocation(line: 500, column: 21, scope: !1528)
!1533 = !DILocation(line: 500, column: 34, scope: !1528)
!1534 = !DILocation(line: 500, column: 4, scope: !1528)
!1535 = !DILocation(line: 500, column: 9, scope: !1528)
!1536 = !DILocation(line: 500, column: 19, scope: !1528)
!1537 = !DILocation(line: 501, column: 22, scope: !1528)
!1538 = !DILocation(line: 501, column: 30, scope: !1528)
!1539 = !DILocation(line: 501, column: 4, scope: !1528)
!1540 = !DILocation(line: 502, column: 3, scope: !1528)
!1541 = !DILocation(line: 498, column: 38, scope: !1542)
!1542 = !DILexicalBlockFile(scope: !1524, file: !365, discriminator: 2)
!1543 = !DILocation(line: 498, column: 43, scope: !1542)
!1544 = !DILocation(line: 498, column: 36, scope: !1542)
!1545 = !DILocation(line: 498, column: 3, scope: !1542)
!1546 = distinct !{!1546, !1547}
!1547 = !DILocation(line: 498, column: 3, scope: !1511)
!1548 = !DILocation(line: 504, column: 16, scope: !1511)
!1549 = !DILocation(line: 504, column: 3, scope: !1511)
!1550 = !DILocation(line: 505, column: 3, scope: !1511)
!1551 = !DILocation(line: 507, column: 1, scope: !1380)
!1552 = distinct !DISubprogram(name: "mainwindows_redraw", scope: !365, file: !365, line: 553, type: !592, isLocal: false, isDefinition: true, scopeLine: 554, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!1553 = !DILocalVariable(name: "tmp", scope: !1552, file: !365, line: 555, type: !147)
!1554 = !DILocation(line: 555, column: 17, scope: !1552)
!1555 = !DILocation(line: 557, column: 9, scope: !1552)
!1556 = !DILocation(line: 558, column: 13, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1552, file: !365, line: 558, column: 2)
!1558 = !DILocation(line: 558, column: 11, scope: !1557)
!1559 = !DILocation(line: 558, column: 7, scope: !1557)
!1560 = !DILocation(line: 558, column: 26, scope: !1561)
!1561 = !DILexicalBlockFile(scope: !1562, file: !365, discriminator: 1)
!1562 = distinct !DILexicalBlock(scope: !1557, file: !365, line: 558, column: 2)
!1563 = !DILocation(line: 558, column: 30, scope: !1561)
!1564 = !DILocation(line: 558, column: 2, scope: !1561)
!1565 = !DILocalVariable(name: "rec", scope: !1566, file: !365, line: 559, type: !127)
!1566 = distinct !DILexicalBlock(scope: !1562, file: !365, line: 558, column: 55)
!1567 = !DILocation(line: 559, column: 20, scope: !1566)
!1568 = !DILocation(line: 559, column: 26, scope: !1566)
!1569 = !DILocation(line: 559, column: 31, scope: !1566)
!1570 = !DILocation(line: 561, column: 17, scope: !1566)
!1571 = !DILocation(line: 561, column: 22, scope: !1566)
!1572 = !DILocation(line: 561, column: 28, scope: !1566)
!1573 = !DILocation(line: 562, column: 2, scope: !1566)
!1574 = !DILocation(line: 558, column: 44, scope: !1575)
!1575 = !DILexicalBlockFile(scope: !1562, file: !365, discriminator: 2)
!1576 = !DILocation(line: 558, column: 49, scope: !1575)
!1577 = !DILocation(line: 558, column: 42, scope: !1575)
!1578 = !DILocation(line: 558, column: 2, scope: !1575)
!1579 = distinct !{!1579, !1580}
!1580 = !DILocation(line: 558, column: 2, scope: !1552)
!1581 = !DILocation(line: 563, column: 1, scope: !1552)
!1582 = distinct !DISubprogram(name: "mainwindow_destroy_half", scope: !365, file: !365, line: 545, type: !535, isLocal: false, isDefinition: true, scopeLine: 546, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!1583 = !DILocalVariable(name: "window", arg: 1, scope: !1582, file: !365, line: 545, type: !127)
!1584 = !DILocation(line: 545, column: 47, scope: !1582)
!1585 = !DILocalVariable(name: "really_quitting", scope: !1582, file: !365, line: 547, type: !140)
!1586 = !DILocation(line: 547, column: 6, scope: !1582)
!1587 = !DILocation(line: 547, column: 24, scope: !1582)
!1588 = !DILocation(line: 548, column: 11, scope: !1582)
!1589 = !DILocation(line: 549, column: 21, scope: !1582)
!1590 = !DILocation(line: 549, column: 2, scope: !1582)
!1591 = !DILocation(line: 550, column: 13, scope: !1582)
!1592 = !DILocation(line: 550, column: 11, scope: !1582)
!1593 = !DILocation(line: 551, column: 1, scope: !1582)
!1594 = distinct !DISubprogram(name: "mainwindows_get_sorted", scope: !365, file: !365, line: 583, type: !1595, isLocal: false, isDefinition: true, scopeLine: 584, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!147, !140}
!1597 = !DILocalVariable(name: "reverse", arg: 1, scope: !1594, file: !365, line: 583, type: !140)
!1598 = !DILocation(line: 583, column: 36, scope: !1594)
!1599 = !DILocalVariable(name: "tmp", scope: !1594, file: !365, line: 585, type: !147)
!1600 = !DILocation(line: 585, column: 10, scope: !1594)
!1601 = !DILocalVariable(name: "list", scope: !1594, file: !365, line: 585, type: !147)
!1602 = !DILocation(line: 585, column: 16, scope: !1594)
!1603 = !DILocation(line: 587, column: 7, scope: !1594)
!1604 = !DILocation(line: 588, column: 13, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1594, file: !365, line: 588, column: 2)
!1606 = !DILocation(line: 588, column: 11, scope: !1605)
!1607 = !DILocation(line: 588, column: 7, scope: !1605)
!1608 = !DILocation(line: 588, column: 26, scope: !1609)
!1609 = !DILexicalBlockFile(scope: !1610, file: !365, discriminator: 1)
!1610 = distinct !DILexicalBlock(scope: !1605, file: !365, line: 588, column: 2)
!1611 = !DILocation(line: 588, column: 30, scope: !1609)
!1612 = !DILocation(line: 588, column: 2, scope: !1609)
!1613 = !DILocation(line: 589, column: 32, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1610, file: !365, line: 588, column: 55)
!1615 = !DILocation(line: 589, column: 38, scope: !1614)
!1616 = !DILocation(line: 589, column: 43, scope: !1614)
!1617 = !DILocation(line: 590, column: 12, scope: !1614)
!1618 = !DILocation(line: 589, column: 49, scope: !1614)
!1619 = !DILocation(line: 589, column: 10, scope: !1614)
!1620 = !DILocation(line: 589, column: 8, scope: !1614)
!1621 = !DILocation(line: 591, column: 2, scope: !1614)
!1622 = !DILocation(line: 588, column: 44, scope: !1623)
!1623 = !DILexicalBlockFile(scope: !1610, file: !365, discriminator: 2)
!1624 = !DILocation(line: 588, column: 49, scope: !1623)
!1625 = !DILocation(line: 588, column: 42, scope: !1623)
!1626 = !DILocation(line: 588, column: 2, scope: !1623)
!1627 = distinct !{!1627, !1628}
!1628 = !DILocation(line: 588, column: 2, scope: !1594)
!1629 = !DILocation(line: 593, column: 9, scope: !1594)
!1630 = !DILocation(line: 593, column: 2, scope: !1594)
!1631 = distinct !DISubprogram(name: "mainwindows_compare_reverse", scope: !365, file: !365, line: 574, type: !1632, isLocal: true, isDefinition: true, scopeLine: 575, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!140, !127, !127}
!1634 = !DILocalVariable(name: "w1", arg: 1, scope: !1631, file: !365, line: 574, type: !127)
!1635 = !DILocation(line: 574, column: 57, scope: !1631)
!1636 = !DILocalVariable(name: "w2", arg: 2, scope: !1631, file: !365, line: 574, type: !127)
!1637 = !DILocation(line: 574, column: 78, scope: !1631)
!1638 = !DILocation(line: 576, column: 9, scope: !1631)
!1639 = !DILocation(line: 576, column: 13, scope: !1631)
!1640 = !DILocation(line: 576, column: 26, scope: !1631)
!1641 = !DILocation(line: 576, column: 30, scope: !1631)
!1642 = !DILocation(line: 576, column: 24, scope: !1631)
!1643 = !DILocation(line: 576, column: 9, scope: !1644)
!1644 = !DILexicalBlockFile(scope: !1631, file: !365, discriminator: 1)
!1645 = !DILocation(line: 577, column: 5, scope: !1631)
!1646 = !DILocation(line: 577, column: 9, scope: !1631)
!1647 = !DILocation(line: 577, column: 22, scope: !1631)
!1648 = !DILocation(line: 577, column: 26, scope: !1631)
!1649 = !DILocation(line: 577, column: 20, scope: !1631)
!1650 = !DILocation(line: 577, column: 5, scope: !1644)
!1651 = !DILocation(line: 578, column: 5, scope: !1631)
!1652 = !DILocation(line: 578, column: 9, scope: !1631)
!1653 = !DILocation(line: 578, column: 24, scope: !1631)
!1654 = !DILocation(line: 578, column: 28, scope: !1631)
!1655 = !DILocation(line: 578, column: 22, scope: !1631)
!1656 = !DILocation(line: 578, column: 5, scope: !1644)
!1657 = !DILocation(line: 579, column: 5, scope: !1631)
!1658 = !DILocation(line: 579, column: 9, scope: !1631)
!1659 = !DILocation(line: 579, column: 24, scope: !1631)
!1660 = !DILocation(line: 579, column: 28, scope: !1631)
!1661 = !DILocation(line: 579, column: 22, scope: !1631)
!1662 = !DILocation(line: 578, column: 5, scope: !1663)
!1663 = !DILexicalBlockFile(scope: !1631, file: !365, discriminator: 2)
!1664 = !DILocation(line: 578, column: 5, scope: !1665)
!1665 = !DILexicalBlockFile(scope: !1631, file: !365, discriminator: 3)
!1666 = !DILocation(line: 577, column: 5, scope: !1663)
!1667 = !DILocation(line: 577, column: 5, scope: !1665)
!1668 = !DILocation(line: 576, column: 9, scope: !1663)
!1669 = !DILocation(line: 576, column: 9, scope: !1665)
!1670 = !DILocation(line: 576, column: 2, scope: !1665)
!1671 = distinct !DISubprogram(name: "mainwindows_compare", scope: !365, file: !365, line: 565, type: !1632, isLocal: true, isDefinition: true, scopeLine: 566, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!1672 = !DILocalVariable(name: "w1", arg: 1, scope: !1671, file: !365, line: 565, type: !127)
!1673 = !DILocation(line: 565, column: 49, scope: !1671)
!1674 = !DILocalVariable(name: "w2", arg: 2, scope: !1671, file: !365, line: 565, type: !127)
!1675 = !DILocation(line: 565, column: 70, scope: !1671)
!1676 = !DILocation(line: 567, column: 9, scope: !1671)
!1677 = !DILocation(line: 567, column: 13, scope: !1671)
!1678 = !DILocation(line: 567, column: 26, scope: !1671)
!1679 = !DILocation(line: 567, column: 30, scope: !1671)
!1680 = !DILocation(line: 567, column: 24, scope: !1671)
!1681 = !DILocation(line: 567, column: 9, scope: !1682)
!1682 = !DILexicalBlockFile(scope: !1671, file: !365, discriminator: 1)
!1683 = !DILocation(line: 568, column: 5, scope: !1671)
!1684 = !DILocation(line: 568, column: 9, scope: !1671)
!1685 = !DILocation(line: 568, column: 22, scope: !1671)
!1686 = !DILocation(line: 568, column: 26, scope: !1671)
!1687 = !DILocation(line: 568, column: 20, scope: !1671)
!1688 = !DILocation(line: 568, column: 5, scope: !1682)
!1689 = !DILocation(line: 569, column: 5, scope: !1671)
!1690 = !DILocation(line: 569, column: 9, scope: !1671)
!1691 = !DILocation(line: 569, column: 24, scope: !1671)
!1692 = !DILocation(line: 569, column: 28, scope: !1671)
!1693 = !DILocation(line: 569, column: 22, scope: !1671)
!1694 = !DILocation(line: 569, column: 5, scope: !1682)
!1695 = !DILocation(line: 570, column: 5, scope: !1671)
!1696 = !DILocation(line: 570, column: 9, scope: !1671)
!1697 = !DILocation(line: 570, column: 24, scope: !1671)
!1698 = !DILocation(line: 570, column: 28, scope: !1671)
!1699 = !DILocation(line: 570, column: 22, scope: !1671)
!1700 = !DILocation(line: 569, column: 5, scope: !1701)
!1701 = !DILexicalBlockFile(scope: !1671, file: !365, discriminator: 2)
!1702 = !DILocation(line: 569, column: 5, scope: !1703)
!1703 = !DILexicalBlockFile(scope: !1671, file: !365, discriminator: 3)
!1704 = !DILocation(line: 568, column: 5, scope: !1701)
!1705 = !DILocation(line: 568, column: 5, scope: !1703)
!1706 = !DILocation(line: 567, column: 9, scope: !1701)
!1707 = !DILocation(line: 567, column: 9, scope: !1703)
!1708 = !DILocation(line: 567, column: 2, scope: !1703)
!1709 = distinct !DISubprogram(name: "mainwindows_resize", scope: !365, file: !365, line: 755, type: !1710, isLocal: false, isDefinition: true, scopeLine: 756, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!1710 = !DISubroutineType(types: !1711)
!1711 = !{null, !140, !140}
!1712 = !DILocalVariable(name: "width", arg: 1, scope: !1709, file: !365, line: 755, type: !140)
!1713 = !DILocation(line: 755, column: 29, scope: !1709)
!1714 = !DILocalVariable(name: "height", arg: 2, scope: !1709, file: !365, line: 755, type: !140)
!1715 = !DILocation(line: 755, column: 40, scope: !1709)
!1716 = !DILocalVariable(name: "xdiff", scope: !1709, file: !365, line: 757, type: !140)
!1717 = !DILocation(line: 757, column: 6, scope: !1709)
!1718 = !DILocalVariable(name: "ydiff", scope: !1709, file: !365, line: 757, type: !140)
!1719 = !DILocation(line: 757, column: 13, scope: !1709)
!1720 = !DILocation(line: 759, column: 10, scope: !1709)
!1721 = !DILocation(line: 759, column: 16, scope: !1709)
!1722 = !DILocation(line: 759, column: 15, scope: !1709)
!1723 = !DILocation(line: 759, column: 8, scope: !1709)
!1724 = !DILocation(line: 760, column: 10, scope: !1709)
!1725 = !DILocation(line: 760, column: 17, scope: !1709)
!1726 = !DILocation(line: 760, column: 16, scope: !1709)
!1727 = !DILocation(line: 760, column: 8, scope: !1709)
!1728 = !DILocation(line: 761, column: 17, scope: !1709)
!1729 = !DILocation(line: 761, column: 15, scope: !1709)
!1730 = !DILocation(line: 762, column: 18, scope: !1709)
!1731 = !DILocation(line: 762, column: 16, scope: !1709)
!1732 = !DILocation(line: 764, column: 6, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1709, file: !365, line: 764, column: 6)
!1734 = !DILocation(line: 764, column: 12, scope: !1733)
!1735 = !DILocation(line: 764, column: 6, scope: !1709)
!1736 = !DILocalVariable(name: "rec", scope: !1737, file: !365, line: 766, type: !127)
!1737 = distinct !DILexicalBlock(scope: !1733, file: !365, line: 764, column: 17)
!1738 = !DILocation(line: 766, column: 20, scope: !1737)
!1739 = !DILocalVariable(name: "line", scope: !1737, file: !365, line: 767, type: !147)
!1740 = !DILocation(line: 767, column: 11, scope: !1737)
!1741 = !DILocalVariable(name: "tmp", scope: !1737, file: !365, line: 767, type: !147)
!1742 = !DILocation(line: 767, column: 18, scope: !1737)
!1743 = !DILocation(line: 768, column: 31, scope: !1737)
!1744 = !DILocation(line: 768, column: 10, scope: !1745)
!1745 = !DILexicalBlockFile(scope: !1737, file: !365, discriminator: 1)
!1746 = !DILocation(line: 768, column: 8, scope: !1737)
!1747 = !DILocation(line: 769, column: 14, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1737, file: !365, line: 769, column: 3)
!1749 = !DILocation(line: 769, column: 12, scope: !1748)
!1750 = !DILocation(line: 769, column: 8, scope: !1748)
!1751 = !DILocation(line: 769, column: 20, scope: !1752)
!1752 = !DILexicalBlockFile(scope: !1753, file: !365, discriminator: 1)
!1753 = distinct !DILexicalBlock(scope: !1748, file: !365, line: 769, column: 3)
!1754 = !DILocation(line: 769, column: 24, scope: !1752)
!1755 = !DILocation(line: 769, column: 3, scope: !1752)
!1756 = !DILocation(line: 770, column: 10, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1753, file: !365, line: 769, column: 49)
!1758 = !DILocation(line: 770, column: 15, scope: !1757)
!1759 = !DILocation(line: 770, column: 8, scope: !1757)
!1760 = !DILocation(line: 771, column: 22, scope: !1757)
!1761 = !DILocation(line: 771, column: 4, scope: !1757)
!1762 = !DILocation(line: 771, column: 9, scope: !1757)
!1763 = !DILocation(line: 771, column: 19, scope: !1757)
!1764 = !DILocation(line: 772, column: 22, scope: !1757)
!1765 = !DILocation(line: 772, column: 30, scope: !1757)
!1766 = !DILocation(line: 772, column: 4, scope: !1757)
!1767 = !DILocation(line: 773, column: 3, scope: !1757)
!1768 = !DILocation(line: 769, column: 38, scope: !1769)
!1769 = !DILexicalBlockFile(scope: !1753, file: !365, discriminator: 2)
!1770 = !DILocation(line: 769, column: 43, scope: !1769)
!1771 = !DILocation(line: 769, column: 36, scope: !1769)
!1772 = !DILocation(line: 769, column: 3, scope: !1769)
!1773 = distinct !{!1773, !1774}
!1774 = !DILocation(line: 769, column: 3, scope: !1737)
!1775 = !DILocation(line: 774, column: 16, scope: !1737)
!1776 = !DILocation(line: 774, column: 3, scope: !1737)
!1777 = !DILocation(line: 775, column: 2, scope: !1737)
!1778 = !DILocation(line: 777, column: 6, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1709, file: !365, line: 777, column: 6)
!1780 = !DILocation(line: 777, column: 12, scope: !1779)
!1781 = !DILocation(line: 777, column: 6, scope: !1709)
!1782 = !DILocalVariable(name: "win", scope: !1783, file: !365, line: 779, type: !127)
!1783 = distinct !DILexicalBlock(scope: !1779, file: !365, line: 777, column: 17)
!1784 = !DILocation(line: 779, column: 20, scope: !1783)
!1785 = !DILocation(line: 781, column: 14, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1783, file: !365, line: 781, column: 3)
!1787 = !DILocation(line: 781, column: 12, scope: !1786)
!1788 = !DILocation(line: 781, column: 8, scope: !1786)
!1789 = !DILocation(line: 782, column: 8, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1786, file: !365, line: 781, column: 3)
!1791 = !DILocation(line: 782, column: 12, scope: !1790)
!1792 = !DILocation(line: 781, column: 3, scope: !1793)
!1793 = !DILexicalBlockFile(scope: !1786, file: !365, discriminator: 1)
!1794 = !DILocation(line: 784, column: 29, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1790, file: !365, line: 783, column: 43)
!1796 = !DILocation(line: 784, column: 36, scope: !1795)
!1797 = !DILocation(line: 784, column: 4, scope: !1795)
!1798 = !DILocation(line: 785, column: 3, scope: !1795)
!1799 = !DILocation(line: 783, column: 37, scope: !1790)
!1800 = !DILocation(line: 783, column: 14, scope: !1790)
!1801 = !DILocation(line: 783, column: 12, scope: !1790)
!1802 = !DILocation(line: 781, column: 3, scope: !1803)
!1803 = !DILexicalBlockFile(scope: !1790, file: !365, discriminator: 2)
!1804 = distinct !{!1804, !1805}
!1805 = !DILocation(line: 781, column: 3, scope: !1783)
!1806 = !DILocation(line: 786, column: 2, scope: !1783)
!1807 = !DILocation(line: 788, column: 6, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1709, file: !365, line: 788, column: 6)
!1809 = !DILocation(line: 788, column: 12, scope: !1808)
!1810 = !DILocation(line: 788, column: 6, scope: !1709)
!1811 = !DILocalVariable(name: "win", scope: !1812, file: !365, line: 791, type: !127)
!1812 = distinct !DILexicalBlock(scope: !1808, file: !365, line: 788, column: 17)
!1813 = !DILocation(line: 791, column: 20, scope: !1812)
!1814 = !DILocation(line: 793, column: 14, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1812, file: !365, line: 793, column: 3)
!1816 = !DILocation(line: 793, column: 12, scope: !1815)
!1817 = !DILocation(line: 793, column: 8, scope: !1815)
!1818 = !DILocation(line: 794, column: 8, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1815, file: !365, line: 793, column: 3)
!1820 = !DILocation(line: 794, column: 12, scope: !1819)
!1821 = !DILocation(line: 793, column: 3, scope: !1822)
!1822 = !DILexicalBlockFile(scope: !1815, file: !365, discriminator: 1)
!1823 = !DILocalVariable(name: "max_windows", scope: !1824, file: !365, line: 796, type: !140)
!1824 = distinct !DILexicalBlock(scope: !1819, file: !365, line: 795, column: 43)
!1825 = !DILocation(line: 796, column: 8, scope: !1824)
!1826 = !DILocalVariable(name: "i", scope: !1824, file: !365, line: 796, type: !140)
!1827 = !DILocation(line: 796, column: 21, scope: !1824)
!1828 = !DILocalVariable(name: "last_column", scope: !1824, file: !365, line: 796, type: !140)
!1829 = !DILocation(line: 796, column: 24, scope: !1824)
!1830 = !DILocalVariable(name: "line", scope: !1824, file: !365, line: 797, type: !147)
!1831 = !DILocation(line: 797, column: 12, scope: !1824)
!1832 = !DILocalVariable(name: "tmp", scope: !1824, file: !365, line: 797, type: !147)
!1833 = !DILocation(line: 797, column: 19, scope: !1824)
!1834 = !DILocation(line: 799, column: 32, scope: !1824)
!1835 = !DILocation(line: 799, column: 11, scope: !1824)
!1836 = !DILocation(line: 799, column: 9, scope: !1824)
!1837 = !DILocation(line: 800, column: 19, scope: !1824)
!1838 = !DILocation(line: 800, column: 32, scope: !1824)
!1839 = !DILocation(line: 800, column: 37, scope: !1824)
!1840 = !DILocation(line: 800, column: 16, scope: !1824)
!1841 = !DILocation(line: 801, column: 8, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1824, file: !365, line: 801, column: 8)
!1843 = !DILocation(line: 801, column: 20, scope: !1842)
!1844 = !DILocation(line: 801, column: 8, scope: !1824)
!1845 = !DILocation(line: 802, column: 17, scope: !1842)
!1846 = !DILocation(line: 802, column: 5, scope: !1842)
!1847 = !DILocation(line: 803, column: 18, scope: !1824)
!1848 = !DILocation(line: 803, column: 31, scope: !1824)
!1849 = !DILocation(line: 803, column: 16, scope: !1824)
!1850 = !DILocation(line: 804, column: 15, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1824, file: !365, line: 804, column: 4)
!1852 = !DILocation(line: 804, column: 13, scope: !1851)
!1853 = !DILocation(line: 804, column: 23, scope: !1851)
!1854 = !DILocation(line: 804, column: 9, scope: !1851)
!1855 = !DILocation(line: 804, column: 28, scope: !1856)
!1856 = !DILexicalBlockFile(scope: !1857, file: !365, discriminator: 1)
!1857 = distinct !DILexicalBlock(scope: !1851, file: !365, line: 804, column: 4)
!1858 = !DILocation(line: 804, column: 32, scope: !1856)
!1859 = !DILocation(line: 804, column: 4, scope: !1856)
!1860 = !DILocalVariable(name: "rec", scope: !1861, file: !365, line: 805, type: !127)
!1861 = distinct !DILexicalBlock(scope: !1857, file: !365, line: 804, column: 62)
!1862 = !DILocation(line: 805, column: 22, scope: !1861)
!1863 = !DILocation(line: 805, column: 28, scope: !1861)
!1864 = !DILocation(line: 805, column: 33, scope: !1861)
!1865 = !DILocation(line: 806, column: 9, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1861, file: !365, line: 806, column: 9)
!1867 = !DILocation(line: 806, column: 14, scope: !1866)
!1868 = !DILocation(line: 806, column: 11, scope: !1866)
!1869 = !DILocation(line: 806, column: 9, scope: !1861)
!1870 = !DILocation(line: 807, column: 30, scope: !1866)
!1871 = !DILocation(line: 807, column: 6, scope: !1866)
!1872 = !DILocation(line: 809, column: 20, scope: !1866)
!1873 = !DILocation(line: 809, column: 25, scope: !1866)
!1874 = !DILocation(line: 809, column: 18, scope: !1866)
!1875 = !DILocation(line: 810, column: 4, scope: !1861)
!1876 = !DILocation(line: 804, column: 46, scope: !1877)
!1877 = !DILexicalBlockFile(scope: !1857, file: !365, discriminator: 2)
!1878 = !DILocation(line: 804, column: 51, scope: !1877)
!1879 = !DILocation(line: 804, column: 44, scope: !1877)
!1880 = !DILocation(line: 804, column: 58, scope: !1877)
!1881 = !DILocation(line: 804, column: 4, scope: !1877)
!1882 = distinct !{!1882, !1883}
!1883 = !DILocation(line: 804, column: 4, scope: !1824)
!1884 = !DILocation(line: 811, column: 10, scope: !1824)
!1885 = !DILocation(line: 811, column: 16, scope: !1824)
!1886 = !DILocation(line: 811, column: 8, scope: !1824)
!1887 = !DILocation(line: 812, column: 17, scope: !1824)
!1888 = !DILocation(line: 812, column: 4, scope: !1824)
!1889 = !DILocation(line: 814, column: 29, scope: !1824)
!1890 = !DILocation(line: 814, column: 44, scope: !1824)
!1891 = !DILocation(line: 814, column: 42, scope: !1824)
!1892 = !DILocation(line: 814, column: 56, scope: !1824)
!1893 = !DILocation(line: 814, column: 61, scope: !1824)
!1894 = !DILocation(line: 814, column: 4, scope: !1824)
!1895 = !DILocation(line: 815, column: 3, scope: !1824)
!1896 = !DILocation(line: 795, column: 37, scope: !1819)
!1897 = !DILocation(line: 795, column: 14, scope: !1819)
!1898 = !DILocation(line: 795, column: 12, scope: !1819)
!1899 = !DILocation(line: 793, column: 3, scope: !1900)
!1900 = !DILexicalBlockFile(scope: !1819, file: !365, discriminator: 2)
!1901 = distinct !{!1901, !1902}
!1902 = !DILocation(line: 793, column: 3, scope: !1812)
!1903 = !DILocation(line: 816, column: 2, scope: !1812)
!1904 = !DILocation(line: 818, column: 6, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1709, file: !365, line: 818, column: 6)
!1906 = !DILocation(line: 818, column: 12, scope: !1905)
!1907 = !DILocation(line: 818, column: 6, scope: !1709)
!1908 = !DILocation(line: 821, column: 30, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1905, file: !365, line: 818, column: 17)
!1910 = !DILocation(line: 821, column: 3, scope: !1909)
!1911 = !DILocation(line: 822, column: 2, scope: !1909)
!1912 = !DILocation(line: 824, column: 2, scope: !1709)
!1913 = !DILocation(line: 826, column: 2, scope: !1709)
!1914 = !DILocation(line: 827, column: 1, scope: !1709)
!1915 = distinct !DISubprogram(name: "mainwindows_find_upper", scope: !365, file: !365, line: 347, type: !1916, isLocal: true, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!127, !127}
!1918 = !DILocalVariable(name: "window", arg: 1, scope: !1915, file: !365, line: 347, type: !127)
!1919 = !DILocation(line: 347, column: 65, scope: !1915)
!1920 = !DILocalVariable(name: "first_line", scope: !1915, file: !365, line: 349, type: !140)
!1921 = !DILocation(line: 349, column: 6, scope: !1915)
!1922 = !DILocalVariable(name: "best", scope: !1915, file: !365, line: 350, type: !127)
!1923 = !DILocation(line: 350, column: 19, scope: !1915)
!1924 = !DILocalVariable(name: "tmp", scope: !1915, file: !365, line: 351, type: !147)
!1925 = !DILocation(line: 351, column: 10, scope: !1915)
!1926 = !DILocation(line: 353, column: 6, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1915, file: !365, line: 353, column: 6)
!1928 = !DILocation(line: 353, column: 13, scope: !1927)
!1929 = !DILocation(line: 353, column: 6, scope: !1915)
!1930 = !DILocation(line: 354, column: 16, scope: !1927)
!1931 = !DILocation(line: 354, column: 24, scope: !1927)
!1932 = !DILocation(line: 354, column: 14, scope: !1927)
!1933 = !DILocation(line: 354, column: 3, scope: !1927)
!1934 = !DILocation(line: 356, column: 16, scope: !1927)
!1935 = !DILocation(line: 356, column: 14, scope: !1927)
!1936 = !DILocation(line: 358, column: 7, scope: !1915)
!1937 = !DILocation(line: 359, column: 13, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1915, file: !365, line: 359, column: 2)
!1939 = !DILocation(line: 359, column: 11, scope: !1938)
!1940 = !DILocation(line: 359, column: 7, scope: !1938)
!1941 = !DILocation(line: 359, column: 26, scope: !1942)
!1942 = !DILexicalBlockFile(scope: !1943, file: !365, discriminator: 1)
!1943 = distinct !DILexicalBlock(scope: !1938, file: !365, line: 359, column: 2)
!1944 = !DILocation(line: 359, column: 30, scope: !1942)
!1945 = !DILocation(line: 359, column: 2, scope: !1942)
!1946 = !DILocalVariable(name: "rec", scope: !1947, file: !365, line: 360, type: !127)
!1947 = distinct !DILexicalBlock(scope: !1943, file: !365, line: 359, column: 55)
!1948 = !DILocation(line: 360, column: 20, scope: !1947)
!1949 = !DILocation(line: 360, column: 26, scope: !1947)
!1950 = !DILocation(line: 360, column: 31, scope: !1947)
!1951 = !DILocation(line: 362, column: 7, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1947, file: !365, line: 362, column: 7)
!1953 = !DILocation(line: 362, column: 12, scope: !1952)
!1954 = !DILocation(line: 362, column: 24, scope: !1952)
!1955 = !DILocation(line: 362, column: 22, scope: !1952)
!1956 = !DILocation(line: 362, column: 35, scope: !1952)
!1957 = !DILocation(line: 363, column: 8, scope: !1952)
!1958 = !DILocation(line: 363, column: 13, scope: !1952)
!1959 = !DILocation(line: 363, column: 20, scope: !1952)
!1960 = !DILocation(line: 363, column: 23, scope: !1961)
!1961 = !DILexicalBlockFile(scope: !1952, file: !365, discriminator: 1)
!1962 = !DILocation(line: 363, column: 28, scope: !1961)
!1963 = !DILocation(line: 363, column: 40, scope: !1961)
!1964 = !DILocation(line: 363, column: 46, scope: !1961)
!1965 = !DILocation(line: 363, column: 38, scope: !1961)
!1966 = !DILocation(line: 362, column: 7, scope: !1967)
!1967 = !DILexicalBlockFile(scope: !1947, file: !365, discriminator: 1)
!1968 = !DILocation(line: 364, column: 11, scope: !1952)
!1969 = !DILocation(line: 364, column: 9, scope: !1952)
!1970 = !DILocation(line: 364, column: 4, scope: !1952)
!1971 = !DILocation(line: 365, column: 2, scope: !1947)
!1972 = !DILocation(line: 359, column: 44, scope: !1973)
!1973 = !DILexicalBlockFile(scope: !1943, file: !365, discriminator: 2)
!1974 = !DILocation(line: 359, column: 49, scope: !1973)
!1975 = !DILocation(line: 359, column: 42, scope: !1973)
!1976 = !DILocation(line: 359, column: 2, scope: !1973)
!1977 = distinct !{!1977, !1978}
!1978 = !DILocation(line: 359, column: 2, scope: !1915)
!1979 = !DILocation(line: 367, column: 9, scope: !1915)
!1980 = !DILocation(line: 367, column: 2, scope: !1915)
!1981 = distinct !DISubprogram(name: "mainwindows_find_lower", scope: !365, file: !365, line: 282, type: !1916, isLocal: true, isDefinition: true, scopeLine: 283, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!1982 = !DILocalVariable(name: "window", arg: 1, scope: !1981, file: !365, line: 282, type: !127)
!1983 = !DILocation(line: 282, column: 65, scope: !1981)
!1984 = !DILocalVariable(name: "last_line", scope: !1981, file: !365, line: 284, type: !140)
!1985 = !DILocation(line: 284, column: 6, scope: !1981)
!1986 = !DILocalVariable(name: "best", scope: !1981, file: !365, line: 285, type: !127)
!1987 = !DILocation(line: 285, column: 19, scope: !1981)
!1988 = !DILocalVariable(name: "tmp", scope: !1981, file: !365, line: 286, type: !147)
!1989 = !DILocation(line: 286, column: 10, scope: !1981)
!1990 = !DILocation(line: 288, column: 6, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1981, file: !365, line: 288, column: 6)
!1992 = !DILocation(line: 288, column: 13, scope: !1991)
!1993 = !DILocation(line: 288, column: 6, scope: !1981)
!1994 = !DILocation(line: 289, column: 15, scope: !1991)
!1995 = !DILocation(line: 289, column: 23, scope: !1991)
!1996 = !DILocation(line: 289, column: 13, scope: !1991)
!1997 = !DILocation(line: 289, column: 3, scope: !1991)
!1998 = !DILocation(line: 291, column: 13, scope: !1991)
!1999 = !DILocation(line: 293, column: 7, scope: !1981)
!2000 = !DILocation(line: 294, column: 13, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1981, file: !365, line: 294, column: 2)
!2002 = !DILocation(line: 294, column: 11, scope: !2001)
!2003 = !DILocation(line: 294, column: 7, scope: !2001)
!2004 = !DILocation(line: 294, column: 26, scope: !2005)
!2005 = !DILexicalBlockFile(scope: !2006, file: !365, discriminator: 1)
!2006 = distinct !DILexicalBlock(scope: !2001, file: !365, line: 294, column: 2)
!2007 = !DILocation(line: 294, column: 30, scope: !2005)
!2008 = !DILocation(line: 294, column: 2, scope: !2005)
!2009 = !DILocalVariable(name: "rec", scope: !2010, file: !365, line: 295, type: !127)
!2010 = distinct !DILexicalBlock(scope: !2006, file: !365, line: 294, column: 55)
!2011 = !DILocation(line: 295, column: 20, scope: !2010)
!2012 = !DILocation(line: 295, column: 26, scope: !2010)
!2013 = !DILocation(line: 295, column: 31, scope: !2010)
!2014 = !DILocation(line: 297, column: 7, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2010, file: !365, line: 297, column: 7)
!2016 = !DILocation(line: 297, column: 12, scope: !2015)
!2017 = !DILocation(line: 297, column: 25, scope: !2015)
!2018 = !DILocation(line: 297, column: 23, scope: !2015)
!2019 = !DILocation(line: 297, column: 35, scope: !2015)
!2020 = !DILocation(line: 298, column: 8, scope: !2015)
!2021 = !DILocation(line: 298, column: 13, scope: !2015)
!2022 = !DILocation(line: 298, column: 20, scope: !2015)
!2023 = !DILocation(line: 298, column: 23, scope: !2024)
!2024 = !DILexicalBlockFile(scope: !2015, file: !365, discriminator: 1)
!2025 = !DILocation(line: 298, column: 28, scope: !2024)
!2026 = !DILocation(line: 298, column: 41, scope: !2024)
!2027 = !DILocation(line: 298, column: 47, scope: !2024)
!2028 = !DILocation(line: 298, column: 39, scope: !2024)
!2029 = !DILocation(line: 297, column: 7, scope: !2030)
!2030 = !DILexicalBlockFile(scope: !2010, file: !365, discriminator: 1)
!2031 = !DILocation(line: 299, column: 11, scope: !2015)
!2032 = !DILocation(line: 299, column: 9, scope: !2015)
!2033 = !DILocation(line: 299, column: 4, scope: !2015)
!2034 = !DILocation(line: 300, column: 2, scope: !2010)
!2035 = !DILocation(line: 294, column: 44, scope: !2036)
!2036 = !DILexicalBlockFile(scope: !2006, file: !365, discriminator: 2)
!2037 = !DILocation(line: 294, column: 49, scope: !2036)
!2038 = !DILocation(line: 294, column: 42, scope: !2036)
!2039 = !DILocation(line: 294, column: 2, scope: !2036)
!2040 = distinct !{!2040, !2041}
!2041 = !DILocation(line: 294, column: 2, scope: !1981)
!2042 = !DILocation(line: 302, column: 9, scope: !1981)
!2043 = !DILocation(line: 302, column: 2, scope: !1981)
!2044 = distinct !DISubprogram(name: "mainwindows_rresize_line", scope: !365, file: !365, line: 711, type: !2045, isLocal: true, isDefinition: true, scopeLine: 712, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{null, !140, !127}
!2047 = !DILocalVariable(name: "xdiff", arg: 1, scope: !2044, file: !365, line: 711, type: !140)
!2048 = !DILocation(line: 711, column: 42, scope: !2044)
!2049 = !DILocalVariable(name: "win", arg: 2, scope: !2044, file: !365, line: 711, type: !127)
!2050 = !DILocation(line: 711, column: 66, scope: !2044)
!2051 = !DILocalVariable(name: "windows", scope: !2044, file: !365, line: 713, type: !140)
!2052 = !DILocation(line: 713, column: 6, scope: !2044)
!2053 = !DILocalVariable(name: "i", scope: !2044, file: !365, line: 713, type: !140)
!2054 = !DILocation(line: 713, column: 15, scope: !2044)
!2055 = !DILocalVariable(name: "extra_width", scope: !2044, file: !365, line: 713, type: !140)
!2056 = !DILocation(line: 713, column: 18, scope: !2044)
!2057 = !DILocalVariable(name: "next_column", scope: !2044, file: !365, line: 713, type: !140)
!2058 = !DILocation(line: 713, column: 31, scope: !2044)
!2059 = !DILocalVariable(name: "shrunk", scope: !2044, file: !365, line: 713, type: !140)
!2060 = !DILocation(line: 713, column: 44, scope: !2044)
!2061 = !DILocalVariable(name: "widths", scope: !2044, file: !365, line: 714, type: !361)
!2062 = !DILocation(line: 714, column: 7, scope: !2044)
!2063 = !DILocalVariable(name: "line", scope: !2044, file: !365, line: 715, type: !147)
!2064 = !DILocation(line: 715, column: 10, scope: !2044)
!2065 = !DILocalVariable(name: "tmp", scope: !2044, file: !365, line: 715, type: !147)
!2066 = !DILocation(line: 715, column: 17, scope: !2044)
!2067 = !DILocation(line: 717, column: 30, scope: !2044)
!2068 = !DILocation(line: 717, column: 9, scope: !2044)
!2069 = !DILocation(line: 717, column: 7, scope: !2044)
!2070 = !DILocation(line: 718, column: 27, scope: !2044)
!2071 = !DILocation(line: 718, column: 12, scope: !2044)
!2072 = !DILocation(line: 718, column: 10, scope: !2044)
!2073 = !DILocation(line: 719, column: 34, scope: !2044)
!2074 = !DILocation(line: 719, column: 33, scope: !2044)
!2075 = !DILocation(line: 719, column: 20, scope: !2044)
!2076 = !DILocation(line: 719, column: 12, scope: !2044)
!2077 = !DILocation(line: 719, column: 9, scope: !2044)
!2078 = !DILocation(line: 721, column: 16, scope: !2044)
!2079 = !DILocation(line: 721, column: 31, scope: !2044)
!2080 = !DILocation(line: 721, column: 29, scope: !2044)
!2081 = !DILocation(line: 721, column: 39, scope: !2044)
!2082 = !DILocation(line: 721, column: 14, scope: !2044)
!2083 = !DILocation(line: 722, column: 13, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2044, file: !365, line: 722, column: 2)
!2085 = !DILocation(line: 722, column: 11, scope: !2084)
!2086 = !DILocation(line: 722, column: 21, scope: !2084)
!2087 = !DILocation(line: 722, column: 7, scope: !2084)
!2088 = !DILocation(line: 722, column: 26, scope: !2089)
!2089 = !DILexicalBlockFile(scope: !2090, file: !365, discriminator: 1)
!2090 = distinct !DILexicalBlock(scope: !2084, file: !365, line: 722, column: 2)
!2091 = !DILocation(line: 722, column: 30, scope: !2089)
!2092 = !DILocation(line: 722, column: 2, scope: !2089)
!2093 = !DILocalVariable(name: "rec", scope: !2094, file: !365, line: 723, type: !127)
!2094 = distinct !DILexicalBlock(scope: !2090, file: !365, line: 722, column: 60)
!2095 = !DILocation(line: 723, column: 20, scope: !2094)
!2096 = !DILocation(line: 723, column: 26, scope: !2094)
!2097 = !DILocation(line: 723, column: 31, scope: !2094)
!2098 = !DILocation(line: 724, column: 18, scope: !2094)
!2099 = !DILocation(line: 724, column: 24, scope: !2094)
!2100 = !DILocation(line: 724, column: 31, scope: !2094)
!2101 = !DILocation(line: 724, column: 37, scope: !2094)
!2102 = !DILocation(line: 724, column: 29, scope: !2094)
!2103 = !DILocation(line: 724, column: 59, scope: !2094)
!2104 = !DILocation(line: 724, column: 74, scope: !2094)
!2105 = !DILocation(line: 724, column: 72, scope: !2094)
!2106 = !DILocation(line: 724, column: 82, scope: !2094)
!2107 = !DILocation(line: 724, column: 56, scope: !2094)
!2108 = !DILocation(line: 724, column: 91, scope: !2094)
!2109 = !DILocation(line: 724, column: 106, scope: !2094)
!2110 = !DILocation(line: 724, column: 104, scope: !2094)
!2111 = !DILocation(line: 724, column: 114, scope: !2094)
!2112 = !DILocation(line: 724, column: 112, scope: !2094)
!2113 = !DILocation(line: 724, column: 122, scope: !2094)
!2114 = !DILocation(line: 724, column: 88, scope: !2094)
!2115 = !DILocation(line: 724, column: 10, scope: !2094)
!2116 = !DILocation(line: 724, column: 3, scope: !2094)
!2117 = !DILocation(line: 724, column: 13, scope: !2094)
!2118 = !DILocation(line: 725, column: 25, scope: !2094)
!2119 = !DILocation(line: 725, column: 18, scope: !2094)
!2120 = !DILocation(line: 725, column: 30, scope: !2094)
!2121 = !DILocation(line: 725, column: 35, scope: !2094)
!2122 = !DILocation(line: 725, column: 28, scope: !2094)
!2123 = !DILocation(line: 725, column: 15, scope: !2094)
!2124 = !DILocation(line: 726, column: 2, scope: !2094)
!2125 = !DILocation(line: 722, column: 44, scope: !2126)
!2126 = !DILexicalBlockFile(scope: !2090, file: !365, discriminator: 2)
!2127 = !DILocation(line: 722, column: 49, scope: !2126)
!2128 = !DILocation(line: 722, column: 42, scope: !2126)
!2129 = !DILocation(line: 722, column: 56, scope: !2126)
!2130 = !DILocation(line: 722, column: 2, scope: !2126)
!2131 = distinct !{!2131, !2132}
!2132 = !DILocation(line: 722, column: 2, scope: !2044)
!2133 = !DILocation(line: 727, column: 9, scope: !2044)
!2134 = !DILocation(line: 728, column: 11, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2044, file: !365, line: 728, column: 2)
!2136 = !DILocation(line: 728, column: 9, scope: !2135)
!2137 = !DILocation(line: 728, column: 7, scope: !2135)
!2138 = !DILocation(line: 728, column: 20, scope: !2139)
!2139 = !DILexicalBlockFile(scope: !2140, file: !365, discriminator: 1)
!2140 = distinct !DILexicalBlock(scope: !2135, file: !365, line: 728, column: 2)
!2141 = !DILocation(line: 728, column: 32, scope: !2139)
!2142 = !DILocation(line: 728, column: 2, scope: !2139)
!2143 = !DILocation(line: 729, column: 14, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2145, file: !365, line: 729, column: 7)
!2145 = distinct !DILexicalBlock(scope: !2140, file: !365, line: 728, column: 66)
!2146 = !DILocation(line: 729, column: 15, scope: !2144)
!2147 = !DILocation(line: 729, column: 7, scope: !2144)
!2148 = !DILocation(line: 729, column: 19, scope: !2144)
!2149 = !DILocation(line: 729, column: 24, scope: !2144)
!2150 = !DILocation(line: 729, column: 28, scope: !2151)
!2151 = !DILexicalBlockFile(scope: !2144, file: !365, discriminator: 1)
!2152 = !DILocation(line: 729, column: 30, scope: !2151)
!2153 = !DILocation(line: 729, column: 35, scope: !2151)
!2154 = !DILocation(line: 729, column: 39, scope: !2155)
!2155 = !DILexicalBlockFile(scope: !2144, file: !365, discriminator: 2)
!2156 = !DILocation(line: 729, column: 7, scope: !2155)
!2157 = !DILocation(line: 730, column: 11, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2144, file: !365, line: 729, column: 48)
!2159 = !DILocation(line: 730, column: 12, scope: !2158)
!2160 = !DILocation(line: 730, column: 4, scope: !2158)
!2161 = !DILocation(line: 730, column: 15, scope: !2158)
!2162 = !DILocation(line: 731, column: 15, scope: !2158)
!2163 = !DILocation(line: 732, column: 13, scope: !2158)
!2164 = !DILocation(line: 732, column: 15, scope: !2158)
!2165 = !DILocation(line: 732, column: 11, scope: !2158)
!2166 = !DILocation(line: 733, column: 3, scope: !2158)
!2167 = !DILocation(line: 734, column: 2, scope: !2145)
!2168 = !DILocation(line: 728, column: 41, scope: !2169)
!2169 = !DILexicalBlockFile(scope: !2140, file: !365, discriminator: 2)
!2170 = !DILocation(line: 728, column: 43, scope: !2169)
!2171 = !DILocation(line: 728, column: 49, scope: !2172)
!2172 = !DILexicalBlockFile(scope: !2140, file: !365, discriminator: 3)
!2173 = !DILocation(line: 728, column: 51, scope: !2172)
!2174 = !DILocation(line: 728, column: 41, scope: !2172)
!2175 = !DILocation(line: 728, column: 57, scope: !2176)
!2176 = !DILexicalBlockFile(scope: !2140, file: !365, discriminator: 4)
!2177 = !DILocation(line: 728, column: 41, scope: !2176)
!2178 = !DILocation(line: 728, column: 41, scope: !2179)
!2179 = !DILexicalBlockFile(scope: !2140, file: !365, discriminator: 5)
!2180 = !DILocation(line: 728, column: 39, scope: !2179)
!2181 = !DILocation(line: 728, column: 2, scope: !2179)
!2182 = distinct !{!2182, !2183}
!2183 = !DILocation(line: 728, column: 2, scope: !2044)
!2184 = !DILocation(line: 736, column: 14, scope: !2044)
!2185 = !DILocation(line: 741, column: 13, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2044, file: !365, line: 741, column: 2)
!2187 = !DILocation(line: 741, column: 11, scope: !2186)
!2188 = !DILocation(line: 741, column: 21, scope: !2186)
!2189 = !DILocation(line: 741, column: 7, scope: !2186)
!2190 = !DILocation(line: 741, column: 26, scope: !2191)
!2191 = !DILexicalBlockFile(scope: !2192, file: !365, discriminator: 1)
!2192 = distinct !DILexicalBlock(scope: !2186, file: !365, line: 741, column: 2)
!2193 = !DILocation(line: 741, column: 30, scope: !2191)
!2194 = !DILocation(line: 741, column: 2, scope: !2191)
!2195 = !DILocalVariable(name: "rec", scope: !2196, file: !365, line: 742, type: !127)
!2196 = distinct !DILexicalBlock(scope: !2192, file: !365, line: 741, column: 60)
!2197 = !DILocation(line: 742, column: 20, scope: !2196)
!2198 = !DILocation(line: 742, column: 26, scope: !2196)
!2199 = !DILocation(line: 742, column: 31, scope: !2196)
!2200 = !DILocation(line: 743, column: 23, scope: !2196)
!2201 = !DILocation(line: 743, column: 3, scope: !2196)
!2202 = !DILocation(line: 743, column: 8, scope: !2196)
!2203 = !DILocation(line: 743, column: 21, scope: !2196)
!2204 = !DILocation(line: 744, column: 22, scope: !2196)
!2205 = !DILocation(line: 744, column: 27, scope: !2196)
!2206 = !DILocation(line: 744, column: 49, scope: !2196)
!2207 = !DILocation(line: 744, column: 42, scope: !2196)
!2208 = !DILocation(line: 744, column: 40, scope: !2196)
!2209 = !DILocation(line: 744, column: 54, scope: !2196)
!2210 = !DILocation(line: 744, column: 59, scope: !2196)
!2211 = !DILocation(line: 744, column: 52, scope: !2196)
!2212 = !DILocation(line: 744, column: 82, scope: !2196)
!2213 = !DILocation(line: 744, column: 87, scope: !2196)
!2214 = !DILocation(line: 744, column: 102, scope: !2196)
!2215 = !DILocation(line: 744, column: 100, scope: !2196)
!2216 = !DILocation(line: 744, column: 84, scope: !2196)
!2217 = !DILocation(line: 744, column: 110, scope: !2196)
!2218 = !DILocation(line: 744, column: 113, scope: !2219)
!2219 = !DILexicalBlockFile(scope: !2196, file: !365, discriminator: 1)
!2220 = !DILocation(line: 744, column: 117, scope: !2219)
!2221 = !DILocation(line: 744, column: 132, scope: !2219)
!2222 = !DILocation(line: 744, column: 147, scope: !2219)
!2223 = !DILocation(line: 744, column: 145, scope: !2219)
!2224 = !DILocation(line: 744, column: 129, scope: !2219)
!2225 = !DILocation(line: 744, column: 115, scope: !2219)
!2226 = !DILocation(line: 744, column: 157, scope: !2219)
!2227 = !DILocation(line: 744, column: 160, scope: !2228)
!2228 = !DILexicalBlockFile(scope: !2196, file: !365, discriminator: 2)
!2229 = !DILocation(line: 744, column: 164, scope: !2228)
!2230 = !DILocation(line: 744, column: 162, scope: !2228)
!2231 = !DILocation(line: 744, column: 174, scope: !2228)
!2232 = !DILocation(line: 744, column: 189, scope: !2228)
!2233 = !DILocation(line: 744, column: 204, scope: !2228)
!2234 = !DILocation(line: 744, column: 202, scope: !2228)
!2235 = !DILocation(line: 744, column: 186, scope: !2228)
!2236 = !DILocation(line: 744, column: 172, scope: !2228)
!2237 = !DILocation(line: 744, column: 157, scope: !2228)
!2238 = !DILocation(line: 744, column: 81, scope: !2239)
!2239 = !DILexicalBlockFile(scope: !2196, file: !365, discriminator: 3)
!2240 = !DILocation(line: 744, column: 77, scope: !2239)
!2241 = !DILocation(line: 744, column: 223, scope: !2239)
!2242 = !DILocation(line: 744, column: 3, scope: !2239)
!2243 = !DILocation(line: 744, column: 8, scope: !2239)
!2244 = !DILocation(line: 744, column: 20, scope: !2239)
!2245 = !DILocation(line: 745, column: 17, scope: !2196)
!2246 = !DILocation(line: 745, column: 22, scope: !2196)
!2247 = !DILocation(line: 745, column: 34, scope: !2196)
!2248 = !DILocation(line: 745, column: 15, scope: !2196)
!2249 = !DILocation(line: 746, column: 21, scope: !2196)
!2250 = !DILocation(line: 746, column: 33, scope: !2196)
!2251 = !DILocation(line: 746, column: 26, scope: !2196)
!2252 = !DILocation(line: 746, column: 38, scope: !2196)
!2253 = !DILocation(line: 746, column: 43, scope: !2196)
!2254 = !DILocation(line: 746, column: 36, scope: !2196)
!2255 = !DILocation(line: 746, column: 66, scope: !2196)
!2256 = !DILocation(line: 746, column: 71, scope: !2196)
!2257 = !DILocation(line: 746, column: 86, scope: !2196)
!2258 = !DILocation(line: 746, column: 84, scope: !2196)
!2259 = !DILocation(line: 746, column: 68, scope: !2196)
!2260 = !DILocation(line: 746, column: 94, scope: !2196)
!2261 = !DILocation(line: 746, column: 97, scope: !2219)
!2262 = !DILocation(line: 746, column: 101, scope: !2219)
!2263 = !DILocation(line: 746, column: 116, scope: !2219)
!2264 = !DILocation(line: 746, column: 131, scope: !2219)
!2265 = !DILocation(line: 746, column: 129, scope: !2219)
!2266 = !DILocation(line: 746, column: 113, scope: !2219)
!2267 = !DILocation(line: 746, column: 99, scope: !2219)
!2268 = !DILocation(line: 746, column: 141, scope: !2219)
!2269 = !DILocation(line: 746, column: 144, scope: !2228)
!2270 = !DILocation(line: 746, column: 148, scope: !2228)
!2271 = !DILocation(line: 746, column: 146, scope: !2228)
!2272 = !DILocation(line: 746, column: 158, scope: !2228)
!2273 = !DILocation(line: 746, column: 173, scope: !2228)
!2274 = !DILocation(line: 746, column: 188, scope: !2228)
!2275 = !DILocation(line: 746, column: 186, scope: !2228)
!2276 = !DILocation(line: 746, column: 170, scope: !2228)
!2277 = !DILocation(line: 746, column: 156, scope: !2228)
!2278 = !DILocation(line: 746, column: 141, scope: !2228)
!2279 = !DILocation(line: 746, column: 65, scope: !2239)
!2280 = !DILocation(line: 746, column: 61, scope: !2239)
!2281 = !DILocation(line: 746, column: 209, scope: !2239)
!2282 = !DILocation(line: 746, column: 214, scope: !2239)
!2283 = !DILocation(line: 746, column: 207, scope: !2239)
!2284 = !DILocation(line: 746, column: 3, scope: !2239)
!2285 = !DILocation(line: 747, column: 3, scope: !2196)
!2286 = !DILocation(line: 747, column: 8, scope: !2196)
!2287 = !DILocation(line: 747, column: 19, scope: !2196)
!2288 = !DILocation(line: 748, column: 2, scope: !2196)
!2289 = !DILocation(line: 741, column: 44, scope: !2290)
!2290 = !DILexicalBlockFile(scope: !2192, file: !365, discriminator: 2)
!2291 = !DILocation(line: 741, column: 49, scope: !2290)
!2292 = !DILocation(line: 741, column: 42, scope: !2290)
!2293 = !DILocation(line: 741, column: 56, scope: !2290)
!2294 = !DILocation(line: 741, column: 2, scope: !2290)
!2295 = distinct !{!2295, !2296}
!2296 = !DILocation(line: 741, column: 2, scope: !2044)
!2297 = !DILocation(line: 751, column: 9, scope: !2044)
!2298 = !DILocation(line: 751, column: 2, scope: !2044)
!2299 = !DILocation(line: 752, column: 15, scope: !2044)
!2300 = !DILocation(line: 752, column: 2, scope: !2044)
!2301 = !DILocation(line: 753, column: 1, scope: !2044)
!2302 = distinct !DISubprogram(name: "mainwindows_resize_smaller", scope: !365, file: !365, line: 596, type: !2303, isLocal: true, isDefinition: true, scopeLine: 597, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{null, !140}
!2305 = !DILocalVariable(name: "ydiff", arg: 1, scope: !2302, file: !365, line: 596, type: !140)
!2306 = !DILocation(line: 596, column: 44, scope: !2302)
!2307 = !DILocalVariable(name: "rec", scope: !2302, file: !365, line: 598, type: !127)
!2308 = !DILocation(line: 598, column: 19, scope: !2302)
!2309 = !DILocalVariable(name: "sorted", scope: !2302, file: !365, line: 599, type: !147)
!2310 = !DILocation(line: 599, column: 10, scope: !2302)
!2311 = !DILocalVariable(name: "tmp", scope: !2302, file: !365, line: 599, type: !147)
!2312 = !DILocation(line: 599, column: 19, scope: !2302)
!2313 = !DILocalVariable(name: "space", scope: !2302, file: !365, line: 600, type: !140)
!2314 = !DILocation(line: 600, column: 6, scope: !2302)
!2315 = !DILocation(line: 602, column: 9, scope: !2302)
!2316 = !DILocation(line: 603, column: 13, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2302, file: !365, line: 603, column: 2)
!2318 = !DILocation(line: 603, column: 11, scope: !2317)
!2319 = !DILocation(line: 603, column: 7, scope: !2317)
!2320 = !DILocation(line: 604, column: 7, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2317, file: !365, line: 603, column: 2)
!2322 = !DILocation(line: 604, column: 11, scope: !2321)
!2323 = !DILocation(line: 603, column: 2, scope: !2324)
!2324 = !DILexicalBlockFile(scope: !2317, file: !365, discriminator: 1)
!2325 = !DILocation(line: 606, column: 28, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2321, file: !365, line: 605, column: 42)
!2327 = !DILocation(line: 606, column: 36, scope: !2326)
!2328 = !DILocation(line: 606, column: 12, scope: !2326)
!2329 = !DILocation(line: 606, column: 10, scope: !2326)
!2330 = !DILocation(line: 607, column: 2, scope: !2326)
!2331 = !DILocation(line: 605, column: 36, scope: !2321)
!2332 = !DILocation(line: 605, column: 13, scope: !2321)
!2333 = !DILocation(line: 605, column: 11, scope: !2321)
!2334 = !DILocation(line: 603, column: 2, scope: !2335)
!2335 = !DILexicalBlockFile(scope: !2321, file: !365, discriminator: 2)
!2336 = distinct !{!2336, !2337}
!2337 = !DILocation(line: 603, column: 2, scope: !2302)
!2338 = !DILocation(line: 608, column: 6, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2302, file: !365, line: 608, column: 6)
!2340 = !DILocation(line: 608, column: 13, scope: !2339)
!2341 = !DILocation(line: 608, column: 6, scope: !2302)
!2342 = !DILocation(line: 609, column: 3, scope: !2339)
!2343 = !DILocation(line: 611, column: 2, scope: !2302)
!2344 = !DILocalVariable(name: "skip_active", scope: !2345, file: !365, line: 612, type: !140)
!2345 = distinct !DILexicalBlock(scope: !2346, file: !365, line: 611, column: 11)
!2346 = distinct !DILexicalBlock(scope: !2347, file: !365, line: 611, column: 2)
!2347 = distinct !DILexicalBlock(scope: !2302, file: !365, line: 611, column: 2)
!2348 = !DILocation(line: 612, column: 7, scope: !2345)
!2349 = !DILocation(line: 613, column: 9, scope: !2345)
!2350 = !DILocation(line: 615, column: 14, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2345, file: !365, line: 615, column: 3)
!2352 = !DILocation(line: 615, column: 12, scope: !2351)
!2353 = !DILocation(line: 615, column: 8, scope: !2351)
!2354 = !DILocation(line: 615, column: 22, scope: !2355)
!2355 = !DILexicalBlockFile(scope: !2356, file: !365, discriminator: 1)
!2356 = distinct !DILexicalBlock(scope: !2351, file: !365, line: 615, column: 3)
!2357 = !DILocation(line: 615, column: 26, scope: !2355)
!2358 = !DILocation(line: 615, column: 3, scope: !2355)
!2359 = !DILocalVariable(name: "min", scope: !2360, file: !365, line: 616, type: !140)
!2360 = distinct !DILexicalBlock(scope: !2356, file: !365, line: 615, column: 51)
!2361 = !DILocation(line: 616, column: 8, scope: !2360)
!2362 = !DILocalVariable(name: "line", scope: !2360, file: !365, line: 617, type: !147)
!2363 = !DILocation(line: 617, column: 12, scope: !2360)
!2364 = !DILocalVariable(name: "ltmp", scope: !2360, file: !365, line: 617, type: !147)
!2365 = !DILocation(line: 617, column: 19, scope: !2360)
!2366 = !DILocation(line: 618, column: 10, scope: !2360)
!2367 = !DILocation(line: 618, column: 15, scope: !2360)
!2368 = !DILocation(line: 618, column: 8, scope: !2360)
!2369 = !DILocation(line: 619, column: 32, scope: !2360)
!2370 = !DILocation(line: 619, column: 11, scope: !2360)
!2371 = !DILocation(line: 619, column: 9, scope: !2360)
!2372 = !DILocation(line: 620, column: 10, scope: !2360)
!2373 = !DILocation(line: 620, column: 26, scope: !2360)
!2374 = !DILocation(line: 620, column: 24, scope: !2360)
!2375 = !DILocation(line: 620, column: 8, scope: !2360)
!2376 = !DILocation(line: 621, column: 16, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2360, file: !365, line: 621, column: 4)
!2378 = !DILocation(line: 621, column: 14, scope: !2377)
!2379 = !DILocation(line: 621, column: 9, scope: !2377)
!2380 = !DILocation(line: 621, column: 22, scope: !2381)
!2381 = !DILexicalBlockFile(scope: !2382, file: !365, discriminator: 1)
!2382 = distinct !DILexicalBlock(scope: !2377, file: !365, line: 621, column: 4)
!2383 = !DILocation(line: 621, column: 27, scope: !2381)
!2384 = !DILocation(line: 621, column: 4, scope: !2381)
!2385 = !DILocalVariable(name: "lmin", scope: !2386, file: !365, line: 622, type: !140)
!2386 = distinct !DILexicalBlock(scope: !2382, file: !365, line: 621, column: 54)
!2387 = !DILocation(line: 622, column: 9, scope: !2386)
!2388 = !DILocalVariable(name: "win", scope: !2386, file: !365, line: 623, type: !127)
!2389 = !DILocation(line: 623, column: 22, scope: !2386)
!2390 = !DILocation(line: 623, column: 28, scope: !2386)
!2391 = !DILocation(line: 623, column: 34, scope: !2386)
!2392 = !DILocation(line: 624, column: 9, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2386, file: !365, line: 624, column: 9)
!2394 = !DILocation(line: 624, column: 16, scope: !2393)
!2395 = !DILocation(line: 624, column: 13, scope: !2393)
!2396 = !DILocation(line: 624, column: 31, scope: !2393)
!2397 = !DILocation(line: 624, column: 34, scope: !2398)
!2398 = !DILexicalBlockFile(scope: !2393, file: !365, discriminator: 1)
!2399 = !DILocation(line: 624, column: 41, scope: !2398)
!2400 = !DILocation(line: 624, column: 38, scope: !2398)
!2401 = !DILocation(line: 624, column: 9, scope: !2398)
!2402 = !DILocation(line: 625, column: 18, scope: !2393)
!2403 = !DILocation(line: 625, column: 6, scope: !2393)
!2404 = !DILocation(line: 627, column: 14, scope: !2386)
!2405 = !DILocation(line: 627, column: 20, scope: !2386)
!2406 = !DILocation(line: 627, column: 28, scope: !2386)
!2407 = !DILocation(line: 627, column: 34, scope: !2386)
!2408 = !DILocation(line: 627, column: 26, scope: !2386)
!2409 = !DILocation(line: 627, column: 50, scope: !2386)
!2410 = !DILocation(line: 627, column: 10, scope: !2386)
!2411 = !DILocation(line: 628, column: 9, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2386, file: !365, line: 628, column: 9)
!2413 = !DILocation(line: 628, column: 16, scope: !2412)
!2414 = !DILocation(line: 628, column: 14, scope: !2412)
!2415 = !DILocation(line: 628, column: 9, scope: !2386)
!2416 = !DILocation(line: 629, column: 12, scope: !2412)
!2417 = !DILocation(line: 629, column: 10, scope: !2412)
!2418 = !DILocation(line: 629, column: 6, scope: !2412)
!2419 = !DILocation(line: 630, column: 4, scope: !2386)
!2420 = !DILocation(line: 621, column: 42, scope: !2421)
!2421 = !DILexicalBlockFile(scope: !2382, file: !365, discriminator: 2)
!2422 = !DILocation(line: 621, column: 48, scope: !2421)
!2423 = !DILocation(line: 621, column: 40, scope: !2421)
!2424 = !DILocation(line: 621, column: 4, scope: !2421)
!2425 = distinct !{!2425, !2426}
!2426 = !DILocation(line: 621, column: 4, scope: !2360)
!2427 = !DILocation(line: 631, column: 17, scope: !2360)
!2428 = !DILocation(line: 631, column: 4, scope: !2360)
!2429 = !DILocation(line: 632, column: 13, scope: !2360)
!2430 = !DILocation(line: 632, column: 10, scope: !2360)
!2431 = !DILocation(line: 633, column: 3, scope: !2360)
!2432 = !DILocation(line: 615, column: 40, scope: !2433)
!2433 = !DILexicalBlockFile(scope: !2356, file: !365, discriminator: 2)
!2434 = !DILocation(line: 615, column: 45, scope: !2433)
!2435 = !DILocation(line: 615, column: 38, scope: !2433)
!2436 = !DILocation(line: 615, column: 3, scope: !2433)
!2437 = distinct !{!2437, !2438}
!2438 = !DILocation(line: 615, column: 3, scope: !2345)
!2439 = !DILocation(line: 635, column: 7, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2345, file: !365, line: 635, column: 7)
!2441 = !DILocation(line: 635, column: 17, scope: !2440)
!2442 = !DILocation(line: 635, column: 16, scope: !2440)
!2443 = !DILocation(line: 635, column: 13, scope: !2440)
!2444 = !DILocation(line: 635, column: 7, scope: !2345)
!2445 = !DILocation(line: 636, column: 4, scope: !2440)
!2446 = !DILocation(line: 638, column: 9, scope: !2345)
!2447 = !DILocation(line: 638, column: 17, scope: !2345)
!2448 = !DILocation(line: 638, column: 7, scope: !2345)
!2449 = !DILocation(line: 639, column: 7, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2345, file: !365, line: 639, column: 7)
!2451 = !DILocation(line: 639, column: 19, scope: !2450)
!2452 = !DILocation(line: 639, column: 22, scope: !2453)
!2453 = !DILexicalBlockFile(scope: !2450, file: !365, discriminator: 1)
!2454 = !DILocation(line: 639, column: 30, scope: !2453)
!2455 = !DILocation(line: 639, column: 35, scope: !2453)
!2456 = !DILocation(line: 639, column: 7, scope: !2453)
!2457 = !DILocation(line: 640, column: 10, scope: !2450)
!2458 = !DILocation(line: 640, column: 18, scope: !2450)
!2459 = !DILocation(line: 640, column: 24, scope: !2450)
!2460 = !DILocation(line: 640, column: 8, scope: !2450)
!2461 = !DILocation(line: 640, column: 4, scope: !2450)
!2462 = !DILocation(line: 641, column: 27, scope: !2345)
!2463 = !DILocation(line: 641, column: 35, scope: !2345)
!2464 = !DILocation(line: 641, column: 12, scope: !2345)
!2465 = !DILocation(line: 641, column: 10, scope: !2345)
!2466 = !DILocation(line: 643, column: 7, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2345, file: !365, line: 643, column: 7)
!2468 = !DILocation(line: 643, column: 14, scope: !2467)
!2469 = !DILocation(line: 643, column: 7, scope: !2345)
!2470 = !DILocalVariable(name: "line", scope: !2471, file: !365, line: 646, type: !147)
!2471 = distinct !DILexicalBlock(scope: !2467, file: !365, line: 643, column: 22)
!2472 = !DILocation(line: 646, column: 12, scope: !2471)
!2473 = !DILocalVariable(name: "ltmp", scope: !2471, file: !365, line: 646, type: !147)
!2474 = !DILocation(line: 646, column: 19, scope: !2471)
!2475 = !DILocation(line: 647, column: 32, scope: !2471)
!2476 = !DILocation(line: 647, column: 11, scope: !2471)
!2477 = !DILocation(line: 647, column: 9, scope: !2471)
!2478 = !DILocation(line: 648, column: 16, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2471, file: !365, line: 648, column: 4)
!2480 = !DILocation(line: 648, column: 14, scope: !2479)
!2481 = !DILocation(line: 648, column: 9, scope: !2479)
!2482 = !DILocation(line: 648, column: 22, scope: !2483)
!2483 = !DILexicalBlockFile(scope: !2484, file: !365, discriminator: 1)
!2484 = distinct !DILexicalBlock(scope: !2479, file: !365, line: 648, column: 4)
!2485 = !DILocation(line: 648, column: 27, scope: !2483)
!2486 = !DILocation(line: 648, column: 4, scope: !2483)
!2487 = !DILocalVariable(name: "win", scope: !2488, file: !365, line: 649, type: !127)
!2488 = distinct !DILexicalBlock(scope: !2484, file: !365, line: 648, column: 54)
!2489 = !DILocation(line: 649, column: 22, scope: !2488)
!2490 = !DILocation(line: 649, column: 28, scope: !2488)
!2491 = !DILocation(line: 649, column: 34, scope: !2488)
!2492 = !DILocation(line: 650, column: 24, scope: !2488)
!2493 = !DILocation(line: 650, column: 5, scope: !2488)
!2494 = !DILocation(line: 651, column: 4, scope: !2488)
!2495 = !DILocation(line: 648, column: 42, scope: !2496)
!2496 = !DILexicalBlockFile(scope: !2484, file: !365, discriminator: 2)
!2497 = !DILocation(line: 648, column: 48, scope: !2496)
!2498 = !DILocation(line: 648, column: 40, scope: !2496)
!2499 = !DILocation(line: 648, column: 4, scope: !2496)
!2500 = distinct !{!2500, !2501}
!2501 = !DILocation(line: 648, column: 4, scope: !2471)
!2502 = !DILocation(line: 652, column: 17, scope: !2471)
!2503 = !DILocation(line: 652, column: 4, scope: !2471)
!2504 = !DILocation(line: 653, column: 3, scope: !2471)
!2505 = !DILocalVariable(name: "line", scope: !2506, file: !365, line: 655, type: !147)
!2506 = distinct !DILexicalBlock(scope: !2467, file: !365, line: 653, column: 10)
!2507 = !DILocation(line: 655, column: 12, scope: !2506)
!2508 = !DILocalVariable(name: "ltmp", scope: !2506, file: !365, line: 655, type: !147)
!2509 = !DILocation(line: 655, column: 19, scope: !2506)
!2510 = !DILocation(line: 656, column: 32, scope: !2506)
!2511 = !DILocation(line: 656, column: 11, scope: !2506)
!2512 = !DILocation(line: 656, column: 9, scope: !2506)
!2513 = !DILocation(line: 657, column: 16, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2506, file: !365, line: 657, column: 4)
!2515 = !DILocation(line: 657, column: 14, scope: !2514)
!2516 = !DILocation(line: 657, column: 9, scope: !2514)
!2517 = !DILocation(line: 657, column: 22, scope: !2518)
!2518 = !DILexicalBlockFile(scope: !2519, file: !365, discriminator: 1)
!2519 = distinct !DILexicalBlock(scope: !2514, file: !365, line: 657, column: 4)
!2520 = !DILocation(line: 657, column: 27, scope: !2518)
!2521 = !DILocation(line: 657, column: 4, scope: !2518)
!2522 = !DILocalVariable(name: "win", scope: !2523, file: !365, line: 658, type: !127)
!2523 = distinct !DILexicalBlock(scope: !2519, file: !365, line: 657, column: 54)
!2524 = !DILocation(line: 658, column: 22, scope: !2523)
!2525 = !DILocation(line: 658, column: 28, scope: !2523)
!2526 = !DILocation(line: 658, column: 34, scope: !2523)
!2527 = !DILocation(line: 659, column: 23, scope: !2523)
!2528 = !DILocation(line: 659, column: 5, scope: !2523)
!2529 = !DILocation(line: 659, column: 10, scope: !2523)
!2530 = !DILocation(line: 659, column: 20, scope: !2523)
!2531 = !DILocation(line: 660, column: 23, scope: !2523)
!2532 = !DILocation(line: 660, column: 31, scope: !2523)
!2533 = !DILocation(line: 660, column: 5, scope: !2523)
!2534 = !DILocation(line: 661, column: 4, scope: !2523)
!2535 = !DILocation(line: 657, column: 42, scope: !2536)
!2536 = !DILexicalBlockFile(scope: !2519, file: !365, discriminator: 2)
!2537 = !DILocation(line: 657, column: 48, scope: !2536)
!2538 = !DILocation(line: 657, column: 40, scope: !2536)
!2539 = !DILocation(line: 657, column: 4, scope: !2536)
!2540 = distinct !{!2540, !2541}
!2541 = !DILocation(line: 657, column: 4, scope: !2506)
!2542 = !DILocation(line: 662, column: 17, scope: !2506)
!2543 = !DILocation(line: 662, column: 4, scope: !2506)
!2544 = !DILocation(line: 663, column: 4, scope: !2506)
!2545 = !DILocation(line: 611, column: 2, scope: !2546)
!2546 = !DILexicalBlockFile(scope: !2346, file: !365, discriminator: 1)
!2547 = distinct !{!2547, !2343}
!2548 = !DILocation(line: 668, column: 13, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2302, file: !365, line: 668, column: 2)
!2550 = !DILocation(line: 668, column: 11, scope: !2549)
!2551 = !DILocation(line: 668, column: 7, scope: !2549)
!2552 = !DILocation(line: 668, column: 21, scope: !2553)
!2553 = !DILexicalBlockFile(scope: !2554, file: !365, discriminator: 1)
!2554 = distinct !DILexicalBlock(scope: !2549, file: !365, line: 668, column: 2)
!2555 = !DILocation(line: 668, column: 25, scope: !2553)
!2556 = !DILocation(line: 668, column: 32, scope: !2553)
!2557 = !DILocation(line: 668, column: 35, scope: !2558)
!2558 = !DILexicalBlockFile(scope: !2554, file: !365, discriminator: 2)
!2559 = !DILocation(line: 668, column: 41, scope: !2558)
!2560 = !DILocation(line: 668, column: 2, scope: !2561)
!2561 = !DILexicalBlockFile(scope: !2549, file: !365, discriminator: 3)
!2562 = !DILocalVariable(name: "min", scope: !2563, file: !365, line: 669, type: !140)
!2563 = distinct !DILexicalBlock(scope: !2554, file: !365, line: 668, column: 63)
!2564 = !DILocation(line: 669, column: 7, scope: !2563)
!2565 = !DILocalVariable(name: "line", scope: !2563, file: !365, line: 670, type: !147)
!2566 = !DILocation(line: 670, column: 11, scope: !2563)
!2567 = !DILocalVariable(name: "ltmp", scope: !2563, file: !365, line: 670, type: !147)
!2568 = !DILocation(line: 670, column: 18, scope: !2563)
!2569 = !DILocation(line: 672, column: 9, scope: !2563)
!2570 = !DILocation(line: 672, column: 14, scope: !2563)
!2571 = !DILocation(line: 672, column: 7, scope: !2563)
!2572 = !DILocation(line: 673, column: 31, scope: !2563)
!2573 = !DILocation(line: 673, column: 10, scope: !2563)
!2574 = !DILocation(line: 673, column: 8, scope: !2563)
!2575 = !DILocation(line: 674, column: 9, scope: !2563)
!2576 = !DILocation(line: 674, column: 25, scope: !2563)
!2577 = !DILocation(line: 674, column: 23, scope: !2563)
!2578 = !DILocation(line: 674, column: 7, scope: !2563)
!2579 = !DILocation(line: 675, column: 15, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2563, file: !365, line: 675, column: 3)
!2581 = !DILocation(line: 675, column: 13, scope: !2580)
!2582 = !DILocation(line: 675, column: 8, scope: !2580)
!2583 = !DILocation(line: 675, column: 21, scope: !2584)
!2584 = !DILexicalBlockFile(scope: !2585, file: !365, discriminator: 1)
!2585 = distinct !DILexicalBlock(scope: !2580, file: !365, line: 675, column: 3)
!2586 = !DILocation(line: 675, column: 26, scope: !2584)
!2587 = !DILocation(line: 675, column: 3, scope: !2584)
!2588 = !DILocalVariable(name: "lmin", scope: !2589, file: !365, line: 676, type: !140)
!2589 = distinct !DILexicalBlock(scope: !2585, file: !365, line: 675, column: 53)
!2590 = !DILocation(line: 676, column: 8, scope: !2589)
!2591 = !DILocalVariable(name: "win", scope: !2589, file: !365, line: 677, type: !127)
!2592 = !DILocation(line: 677, column: 21, scope: !2589)
!2593 = !DILocation(line: 677, column: 27, scope: !2589)
!2594 = !DILocation(line: 677, column: 33, scope: !2589)
!2595 = !DILocation(line: 678, column: 13, scope: !2589)
!2596 = !DILocation(line: 678, column: 19, scope: !2589)
!2597 = !DILocation(line: 678, column: 27, scope: !2589)
!2598 = !DILocation(line: 678, column: 33, scope: !2589)
!2599 = !DILocation(line: 678, column: 25, scope: !2589)
!2600 = !DILocation(line: 678, column: 49, scope: !2589)
!2601 = !DILocation(line: 678, column: 9, scope: !2589)
!2602 = !DILocation(line: 679, column: 8, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2589, file: !365, line: 679, column: 8)
!2604 = !DILocation(line: 679, column: 15, scope: !2603)
!2605 = !DILocation(line: 679, column: 13, scope: !2603)
!2606 = !DILocation(line: 679, column: 8, scope: !2589)
!2607 = !DILocation(line: 680, column: 11, scope: !2603)
!2608 = !DILocation(line: 680, column: 9, scope: !2603)
!2609 = !DILocation(line: 680, column: 5, scope: !2603)
!2610 = !DILocation(line: 681, column: 3, scope: !2589)
!2611 = !DILocation(line: 675, column: 41, scope: !2612)
!2612 = !DILexicalBlockFile(scope: !2585, file: !365, discriminator: 2)
!2613 = !DILocation(line: 675, column: 47, scope: !2612)
!2614 = !DILocation(line: 675, column: 39, scope: !2612)
!2615 = !DILocation(line: 675, column: 3, scope: !2612)
!2616 = distinct !{!2616, !2617}
!2617 = !DILocation(line: 675, column: 3, scope: !2563)
!2618 = !DILocation(line: 682, column: 11, scope: !2563)
!2619 = !DILocation(line: 682, column: 9, scope: !2563)
!2620 = !DILocation(line: 684, column: 7, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2563, file: !365, line: 684, column: 7)
!2622 = !DILocation(line: 684, column: 13, scope: !2621)
!2623 = !DILocation(line: 684, column: 7, scope: !2563)
!2624 = !DILocation(line: 686, column: 16, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2626, file: !365, line: 686, column: 4)
!2626 = distinct !DILexicalBlock(scope: !2621, file: !365, line: 684, column: 19)
!2627 = !DILocation(line: 686, column: 14, scope: !2625)
!2628 = !DILocation(line: 686, column: 9, scope: !2625)
!2629 = !DILocation(line: 686, column: 22, scope: !2630)
!2630 = !DILexicalBlockFile(scope: !2631, file: !365, discriminator: 1)
!2631 = distinct !DILexicalBlock(scope: !2625, file: !365, line: 686, column: 4)
!2632 = !DILocation(line: 686, column: 27, scope: !2630)
!2633 = !DILocation(line: 686, column: 4, scope: !2630)
!2634 = !DILocalVariable(name: "win", scope: !2635, file: !365, line: 687, type: !127)
!2635 = distinct !DILexicalBlock(scope: !2631, file: !365, line: 686, column: 54)
!2636 = !DILocation(line: 687, column: 22, scope: !2635)
!2637 = !DILocation(line: 687, column: 28, scope: !2635)
!2638 = !DILocation(line: 687, column: 34, scope: !2635)
!2639 = !DILocation(line: 688, column: 23, scope: !2635)
!2640 = !DILocation(line: 688, column: 5, scope: !2635)
!2641 = !DILocation(line: 689, column: 5, scope: !2635)
!2642 = !DILocation(line: 689, column: 10, scope: !2635)
!2643 = !DILocation(line: 689, column: 21, scope: !2635)
!2644 = !DILocation(line: 690, column: 24, scope: !2635)
!2645 = !DILocation(line: 690, column: 5, scope: !2635)
!2646 = !DILocation(line: 690, column: 10, scope: !2635)
!2647 = !DILocation(line: 690, column: 21, scope: !2635)
!2648 = !DILocation(line: 691, column: 23, scope: !2635)
!2649 = !DILocation(line: 691, column: 5, scope: !2635)
!2650 = !DILocation(line: 691, column: 10, scope: !2635)
!2651 = !DILocation(line: 691, column: 20, scope: !2635)
!2652 = !DILocation(line: 692, column: 40, scope: !2635)
!2653 = !DILocation(line: 692, column: 5, scope: !2635)
!2654 = !DILocation(line: 693, column: 4, scope: !2635)
!2655 = !DILocation(line: 686, column: 42, scope: !2656)
!2656 = !DILexicalBlockFile(scope: !2631, file: !365, discriminator: 2)
!2657 = !DILocation(line: 686, column: 48, scope: !2656)
!2658 = !DILocation(line: 686, column: 40, scope: !2656)
!2659 = !DILocation(line: 686, column: 4, scope: !2656)
!2660 = distinct !{!2660, !2661}
!2661 = !DILocation(line: 686, column: 4, scope: !2626)
!2662 = !DILocation(line: 694, column: 3, scope: !2626)
!2663 = !DILocation(line: 695, column: 8, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2665, file: !365, line: 695, column: 8)
!2665 = distinct !DILexicalBlock(scope: !2621, file: !365, line: 694, column: 10)
!2666 = !DILocation(line: 695, column: 17, scope: !2664)
!2667 = !DILocation(line: 695, column: 16, scope: !2664)
!2668 = !DILocation(line: 695, column: 14, scope: !2664)
!2669 = !DILocation(line: 695, column: 8, scope: !2665)
!2670 = !DILocation(line: 695, column: 33, scope: !2671)
!2671 = !DILexicalBlockFile(scope: !2664, file: !365, discriminator: 1)
!2672 = !DILocation(line: 695, column: 32, scope: !2671)
!2673 = !DILocation(line: 695, column: 30, scope: !2671)
!2674 = !DILocation(line: 695, column: 24, scope: !2671)
!2675 = !DILocation(line: 696, column: 16, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2665, file: !365, line: 696, column: 4)
!2677 = !DILocation(line: 696, column: 14, scope: !2676)
!2678 = !DILocation(line: 696, column: 9, scope: !2676)
!2679 = !DILocation(line: 696, column: 22, scope: !2680)
!2680 = !DILexicalBlockFile(scope: !2681, file: !365, discriminator: 1)
!2681 = distinct !DILexicalBlock(scope: !2676, file: !365, line: 696, column: 4)
!2682 = !DILocation(line: 696, column: 27, scope: !2680)
!2683 = !DILocation(line: 696, column: 4, scope: !2680)
!2684 = !DILocalVariable(name: "win", scope: !2685, file: !365, line: 697, type: !127)
!2685 = distinct !DILexicalBlock(scope: !2681, file: !365, line: 696, column: 54)
!2686 = !DILocation(line: 697, column: 22, scope: !2685)
!2687 = !DILocation(line: 697, column: 28, scope: !2685)
!2688 = !DILocation(line: 697, column: 34, scope: !2685)
!2689 = !DILocation(line: 698, column: 23, scope: !2685)
!2690 = !DILocation(line: 698, column: 5, scope: !2685)
!2691 = !DILocation(line: 698, column: 10, scope: !2685)
!2692 = !DILocation(line: 698, column: 20, scope: !2685)
!2693 = !DILocation(line: 699, column: 24, scope: !2685)
!2694 = !DILocation(line: 699, column: 32, scope: !2685)
!2695 = !DILocation(line: 699, column: 30, scope: !2685)
!2696 = !DILocation(line: 699, column: 5, scope: !2685)
!2697 = !DILocation(line: 699, column: 10, scope: !2685)
!2698 = !DILocation(line: 699, column: 21, scope: !2685)
!2699 = !DILocation(line: 701, column: 23, scope: !2685)
!2700 = !DILocation(line: 701, column: 32, scope: !2685)
!2701 = !DILocation(line: 701, column: 31, scope: !2685)
!2702 = !DILocation(line: 701, column: 5, scope: !2685)
!2703 = !DILocation(line: 702, column: 4, scope: !2685)
!2704 = !DILocation(line: 696, column: 42, scope: !2705)
!2705 = !DILexicalBlockFile(scope: !2681, file: !365, discriminator: 2)
!2706 = !DILocation(line: 696, column: 48, scope: !2705)
!2707 = !DILocation(line: 696, column: 40, scope: !2705)
!2708 = !DILocation(line: 696, column: 4, scope: !2705)
!2709 = distinct !{!2709, !2710}
!2710 = !DILocation(line: 696, column: 4, scope: !2665)
!2711 = !DILocation(line: 703, column: 13, scope: !2665)
!2712 = !DILocation(line: 703, column: 10, scope: !2665)
!2713 = !DILocation(line: 705, column: 16, scope: !2563)
!2714 = !DILocation(line: 705, column: 3, scope: !2563)
!2715 = !DILocation(line: 706, column: 2, scope: !2563)
!2716 = !DILocation(line: 668, column: 52, scope: !2717)
!2717 = !DILexicalBlockFile(scope: !2554, file: !365, discriminator: 4)
!2718 = !DILocation(line: 668, column: 57, scope: !2717)
!2719 = !DILocation(line: 668, column: 50, scope: !2717)
!2720 = !DILocation(line: 668, column: 2, scope: !2717)
!2721 = distinct !{!2721, !2722}
!2722 = !DILocation(line: 668, column: 2, scope: !2302)
!2723 = !DILocation(line: 708, column: 15, scope: !2302)
!2724 = !DILocation(line: 708, column: 2, scope: !2302)
!2725 = !DILocation(line: 709, column: 1, scope: !2302)
!2726 = !DILocation(line: 709, column: 1, scope: !2727)
!2727 = !DILexicalBlockFile(scope: !2302, file: !365, discriminator: 1)
!2728 = distinct !DISubprogram(name: "mainwindows_reserve_lines", scope: !365, file: !365, line: 829, type: !2729, isLocal: false, isDefinition: true, scopeLine: 830, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!2729 = !DISubroutineType(types: !2730)
!2730 = !{!140, !140, !140}
!2731 = !DILocalVariable(name: "top", arg: 1, scope: !2728, file: !365, line: 829, type: !140)
!2732 = !DILocation(line: 829, column: 35, scope: !2728)
!2733 = !DILocalVariable(name: "bottom", arg: 2, scope: !2728, file: !365, line: 829, type: !140)
!2734 = !DILocation(line: 829, column: 44, scope: !2728)
!2735 = !DILocalVariable(name: "window", scope: !2728, file: !365, line: 831, type: !127)
!2736 = !DILocation(line: 831, column: 19, scope: !2728)
!2737 = !DILocalVariable(name: "ret", scope: !2728, file: !365, line: 832, type: !140)
!2738 = !DILocation(line: 832, column: 6, scope: !2728)
!2739 = !DILocation(line: 834, column: 6, scope: !2728)
!2740 = !DILocation(line: 835, column: 6, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2728, file: !365, line: 835, column: 6)
!2742 = !DILocation(line: 835, column: 10, scope: !2741)
!2743 = !DILocation(line: 835, column: 6, scope: !2728)
!2744 = !DILocalVariable(name: "list", scope: !2745, file: !365, line: 836, type: !147)
!2745 = distinct !DILexicalBlock(scope: !2741, file: !365, line: 835, column: 16)
!2746 = !DILocation(line: 836, column: 11, scope: !2745)
!2747 = !DILocalVariable(name: "tmp", scope: !2745, file: !365, line: 836, type: !147)
!2748 = !DILocation(line: 836, column: 18, scope: !2745)
!2749 = !DILocation(line: 837, column: 3, scope: !2745)
!2750 = distinct !{!2750, !2749}
!2751 = !DILocation(line: 837, column: 11, scope: !2752)
!2752 = !DILexicalBlockFile(scope: !2753, file: !365, discriminator: 1)
!2753 = distinct !DILexicalBlock(scope: !2754, file: !365, line: 837, column: 11)
!2754 = distinct !DILexicalBlock(scope: !2745, file: !365, line: 837, column: 5)
!2755 = !DILocation(line: 837, column: 15, scope: !2752)
!2756 = !DILocation(line: 837, column: 19, scope: !2752)
!2757 = !DILocation(line: 837, column: 22, scope: !2758)
!2758 = !DILexicalBlockFile(scope: !2753, file: !365, discriminator: 2)
!2759 = !DILocation(line: 837, column: 44, scope: !2758)
!2760 = !DILocation(line: 837, column: 42, scope: !2758)
!2761 = !DILocation(line: 837, column: 11, scope: !2758)
!2762 = !DILocation(line: 837, column: 51, scope: !2763)
!2763 = !DILexicalBlockFile(scope: !2764, file: !365, discriminator: 3)
!2764 = distinct !DILexicalBlock(scope: !2753, file: !365, line: 837, column: 49)
!2765 = !DILocation(line: 837, column: 60, scope: !2766)
!2766 = !DILexicalBlockFile(scope: !2767, file: !365, discriminator: 4)
!2767 = distinct !DILexicalBlock(scope: !2753, file: !365, line: 837, column: 58)
!2768 = !DILocation(line: 837, column: 169, scope: !2766)
!2769 = !DILocation(line: 837, column: 185, scope: !2770)
!2770 = !DILexicalBlockFile(scope: !2754, file: !365, discriminator: 5)
!2771 = !DILocation(line: 839, column: 9, scope: !2745)
!2772 = !DILocation(line: 839, column: 7, scope: !2745)
!2773 = !DILocation(line: 840, column: 26, scope: !2745)
!2774 = !DILocation(line: 840, column: 23, scope: !2745)
!2775 = !DILocation(line: 842, column: 31, scope: !2745)
!2776 = !DILocation(line: 842, column: 10, scope: !2777)
!2777 = !DILexicalBlockFile(scope: !2745, file: !365, discriminator: 1)
!2778 = !DILocation(line: 842, column: 8, scope: !2745)
!2779 = !DILocation(line: 843, column: 14, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2745, file: !365, line: 843, column: 3)
!2781 = !DILocation(line: 843, column: 12, scope: !2780)
!2782 = !DILocation(line: 843, column: 8, scope: !2780)
!2783 = !DILocation(line: 843, column: 20, scope: !2784)
!2784 = !DILexicalBlockFile(scope: !2785, file: !365, discriminator: 1)
!2785 = distinct !DILexicalBlock(scope: !2780, file: !365, line: 843, column: 3)
!2786 = !DILocation(line: 843, column: 24, scope: !2784)
!2787 = !DILocation(line: 843, column: 3, scope: !2784)
!2788 = !DILocation(line: 844, column: 13, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2785, file: !365, line: 843, column: 49)
!2790 = !DILocation(line: 844, column: 18, scope: !2789)
!2791 = !DILocation(line: 844, column: 11, scope: !2789)
!2792 = !DILocation(line: 845, column: 26, scope: !2789)
!2793 = !DILocation(line: 845, column: 4, scope: !2789)
!2794 = !DILocation(line: 845, column: 12, scope: !2789)
!2795 = !DILocation(line: 845, column: 23, scope: !2789)
!2796 = !DILocation(line: 846, column: 22, scope: !2789)
!2797 = !DILocation(line: 846, column: 34, scope: !2789)
!2798 = !DILocation(line: 846, column: 33, scope: !2789)
!2799 = !DILocation(line: 846, column: 4, scope: !2789)
!2800 = !DILocation(line: 847, column: 3, scope: !2789)
!2801 = !DILocation(line: 843, column: 38, scope: !2802)
!2802 = !DILexicalBlockFile(scope: !2785, file: !365, discriminator: 2)
!2803 = !DILocation(line: 843, column: 43, scope: !2802)
!2804 = !DILocation(line: 843, column: 36, scope: !2802)
!2805 = !DILocation(line: 843, column: 3, scope: !2802)
!2806 = distinct !{!2806, !2807}
!2807 = !DILocation(line: 843, column: 3, scope: !2745)
!2808 = !DILocation(line: 848, column: 16, scope: !2745)
!2809 = !DILocation(line: 848, column: 3, scope: !2745)
!2810 = !DILocation(line: 849, column: 2, scope: !2745)
!2811 = !DILocation(line: 851, column: 6, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2728, file: !365, line: 851, column: 6)
!2813 = !DILocation(line: 851, column: 13, scope: !2812)
!2814 = !DILocation(line: 851, column: 6, scope: !2728)
!2815 = !DILocalVariable(name: "list", scope: !2816, file: !365, line: 852, type: !147)
!2816 = distinct !DILexicalBlock(scope: !2812, file: !365, line: 851, column: 19)
!2817 = !DILocation(line: 852, column: 11, scope: !2816)
!2818 = !DILocalVariable(name: "tmp", scope: !2816, file: !365, line: 852, type: !147)
!2819 = !DILocation(line: 852, column: 18, scope: !2816)
!2820 = !DILocation(line: 853, column: 3, scope: !2816)
!2821 = distinct !{!2821, !2820}
!2822 = !DILocation(line: 853, column: 11, scope: !2823)
!2823 = !DILexicalBlockFile(scope: !2824, file: !365, discriminator: 1)
!2824 = distinct !DILexicalBlock(scope: !2825, file: !365, line: 853, column: 11)
!2825 = distinct !DILexicalBlock(scope: !2816, file: !365, line: 853, column: 5)
!2826 = !DILocation(line: 853, column: 18, scope: !2823)
!2827 = !DILocation(line: 853, column: 22, scope: !2823)
!2828 = !DILocation(line: 853, column: 25, scope: !2829)
!2829 = !DILexicalBlockFile(scope: !2824, file: !365, discriminator: 2)
!2830 = !DILocation(line: 853, column: 50, scope: !2829)
!2831 = !DILocation(line: 853, column: 48, scope: !2829)
!2832 = !DILocation(line: 853, column: 11, scope: !2829)
!2833 = !DILocation(line: 853, column: 60, scope: !2834)
!2834 = !DILexicalBlockFile(scope: !2835, file: !365, discriminator: 3)
!2835 = distinct !DILexicalBlock(scope: !2824, file: !365, line: 853, column: 58)
!2836 = !DILocation(line: 853, column: 69, scope: !2837)
!2837 = !DILexicalBlockFile(scope: !2838, file: !365, discriminator: 4)
!2838 = distinct !DILexicalBlock(scope: !2824, file: !365, line: 853, column: 67)
!2839 = !DILocation(line: 853, column: 187, scope: !2837)
!2840 = !DILocation(line: 853, column: 203, scope: !2841)
!2841 = !DILexicalBlockFile(scope: !2825, file: !365, discriminator: 5)
!2842 = !DILocation(line: 855, column: 9, scope: !2816)
!2843 = !DILocation(line: 855, column: 7, scope: !2816)
!2844 = !DILocation(line: 856, column: 29, scope: !2816)
!2845 = !DILocation(line: 856, column: 26, scope: !2816)
!2846 = !DILocation(line: 858, column: 31, scope: !2816)
!2847 = !DILocation(line: 858, column: 10, scope: !2848)
!2848 = !DILexicalBlockFile(scope: !2816, file: !365, discriminator: 1)
!2849 = !DILocation(line: 858, column: 8, scope: !2816)
!2850 = !DILocation(line: 859, column: 14, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2816, file: !365, line: 859, column: 3)
!2852 = !DILocation(line: 859, column: 12, scope: !2851)
!2853 = !DILocation(line: 859, column: 8, scope: !2851)
!2854 = !DILocation(line: 859, column: 20, scope: !2855)
!2855 = !DILexicalBlockFile(scope: !2856, file: !365, discriminator: 1)
!2856 = distinct !DILexicalBlock(scope: !2851, file: !365, line: 859, column: 3)
!2857 = !DILocation(line: 859, column: 24, scope: !2855)
!2858 = !DILocation(line: 859, column: 3, scope: !2855)
!2859 = !DILocation(line: 860, column: 13, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2856, file: !365, line: 859, column: 49)
!2861 = !DILocation(line: 860, column: 18, scope: !2860)
!2862 = !DILocation(line: 860, column: 11, scope: !2860)
!2863 = !DILocation(line: 861, column: 25, scope: !2860)
!2864 = !DILocation(line: 861, column: 4, scope: !2860)
!2865 = !DILocation(line: 861, column: 12, scope: !2860)
!2866 = !DILocation(line: 861, column: 22, scope: !2860)
!2867 = !DILocation(line: 862, column: 22, scope: !2860)
!2868 = !DILocation(line: 862, column: 34, scope: !2860)
!2869 = !DILocation(line: 862, column: 33, scope: !2860)
!2870 = !DILocation(line: 862, column: 4, scope: !2860)
!2871 = !DILocation(line: 863, column: 3, scope: !2860)
!2872 = !DILocation(line: 859, column: 38, scope: !2873)
!2873 = !DILexicalBlockFile(scope: !2856, file: !365, discriminator: 2)
!2874 = !DILocation(line: 859, column: 43, scope: !2873)
!2875 = !DILocation(line: 859, column: 36, scope: !2873)
!2876 = !DILocation(line: 859, column: 3, scope: !2873)
!2877 = distinct !{!2877, !2878}
!2878 = !DILocation(line: 859, column: 3, scope: !2816)
!2879 = !DILocation(line: 864, column: 16, scope: !2816)
!2880 = !DILocation(line: 864, column: 3, scope: !2816)
!2881 = !DILocation(line: 865, column: 2, scope: !2816)
!2882 = !DILocation(line: 867, column: 9, scope: !2728)
!2883 = !DILocation(line: 867, column: 2, scope: !2728)
!2884 = !DILocation(line: 868, column: 1, scope: !2728)
!2885 = distinct !DISubprogram(name: "mainwindow_set_statusbar_lines", scope: !365, file: !365, line: 870, type: !2886, isLocal: false, isDefinition: true, scopeLine: 872, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!140, !127, !140, !140}
!2888 = !DILocalVariable(name: "window", arg: 1, scope: !2885, file: !365, line: 870, type: !127)
!2889 = !DILocation(line: 870, column: 53, scope: !2885)
!2890 = !DILocalVariable(name: "top", arg: 2, scope: !2885, file: !365, line: 871, type: !140)
!2891 = !DILocation(line: 871, column: 12, scope: !2885)
!2892 = !DILocalVariable(name: "bottom", arg: 3, scope: !2885, file: !365, line: 871, type: !140)
!2893 = !DILocation(line: 871, column: 21, scope: !2885)
!2894 = !DILocalVariable(name: "ret", scope: !2885, file: !365, line: 873, type: !140)
!2895 = !DILocation(line: 873, column: 6, scope: !2885)
!2896 = !DILocation(line: 875, column: 13, scope: !2885)
!2897 = !DILocation(line: 876, column: 6, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2885, file: !365, line: 876, column: 6)
!2899 = !DILocation(line: 876, column: 10, scope: !2898)
!2900 = !DILocation(line: 876, column: 6, scope: !2885)
!2901 = !DILocation(line: 877, column: 23, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2898, file: !365, line: 876, column: 16)
!2903 = !DILocation(line: 877, column: 31, scope: !2902)
!2904 = !DILocation(line: 877, column: 21, scope: !2902)
!2905 = !DILocation(line: 878, column: 34, scope: !2902)
!2906 = !DILocation(line: 878, column: 3, scope: !2902)
!2907 = !DILocation(line: 878, column: 11, scope: !2902)
!2908 = !DILocation(line: 878, column: 31, scope: !2902)
!2909 = !DILocation(line: 879, column: 44, scope: !2902)
!2910 = !DILocation(line: 879, column: 17, scope: !2902)
!2911 = !DILocation(line: 879, column: 25, scope: !2902)
!2912 = !DILocation(line: 879, column: 41, scope: !2902)
!2913 = !DILocation(line: 880, column: 2, scope: !2902)
!2914 = !DILocation(line: 882, column: 6, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2885, file: !365, line: 882, column: 6)
!2916 = !DILocation(line: 882, column: 13, scope: !2915)
!2917 = !DILocation(line: 882, column: 6, scope: !2885)
!2918 = !DILocation(line: 883, column: 23, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2915, file: !365, line: 882, column: 19)
!2920 = !DILocation(line: 883, column: 31, scope: !2919)
!2921 = !DILocation(line: 883, column: 21, scope: !2919)
!2922 = !DILocation(line: 884, column: 51, scope: !2919)
!2923 = !DILocation(line: 884, column: 17, scope: !2919)
!2924 = !DILocation(line: 884, column: 25, scope: !2919)
!2925 = !DILocation(line: 884, column: 48, scope: !2919)
!2926 = !DILocation(line: 885, column: 44, scope: !2919)
!2927 = !DILocation(line: 885, column: 17, scope: !2919)
!2928 = !DILocation(line: 885, column: 25, scope: !2919)
!2929 = !DILocation(line: 885, column: 41, scope: !2919)
!2930 = !DILocation(line: 886, column: 2, scope: !2919)
!2931 = !DILocation(line: 888, column: 6, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2885, file: !365, line: 888, column: 6)
!2933 = !DILocation(line: 888, column: 10, scope: !2932)
!2934 = !DILocation(line: 888, column: 9, scope: !2932)
!2935 = !DILocation(line: 888, column: 17, scope: !2932)
!2936 = !DILocation(line: 888, column: 6, scope: !2885)
!2937 = !DILocation(line: 889, column: 17, scope: !2932)
!2938 = !DILocation(line: 889, column: 25, scope: !2932)
!2939 = !DILocation(line: 889, column: 36, scope: !2932)
!2940 = !DILocation(line: 891, column: 16, scope: !2885)
!2941 = !DILocation(line: 891, column: 9, scope: !2885)
!2942 = distinct !DISubprogram(name: "mainwindow_set_size", scope: !365, file: !365, line: 1197, type: !1000, isLocal: false, isDefinition: true, scopeLine: 1198, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!2943 = !DILocalVariable(name: "window", arg: 1, scope: !2942, file: !365, line: 1197, type: !127)
!2944 = !DILocation(line: 1197, column: 43, scope: !2942)
!2945 = !DILocalVariable(name: "height", arg: 2, scope: !2942, file: !365, line: 1197, type: !140)
!2946 = !DILocation(line: 1197, column: 55, scope: !2942)
!2947 = !DILocalVariable(name: "resize_lower", arg: 3, scope: !2942, file: !365, line: 1197, type: !140)
!2948 = !DILocation(line: 1197, column: 67, scope: !2942)
!2949 = !DILocation(line: 1199, column: 19, scope: !2942)
!2950 = !DILocation(line: 1199, column: 27, scope: !2942)
!2951 = !DILocation(line: 1199, column: 16, scope: !2942)
!2952 = !DILocation(line: 1200, column: 6, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2942, file: !365, line: 1200, column: 6)
!2954 = !DILocation(line: 1200, column: 13, scope: !2953)
!2955 = !DILocation(line: 1200, column: 6, scope: !2942)
!2956 = !DILocation(line: 1201, column: 21, scope: !2953)
!2957 = !DILocation(line: 1201, column: 30, scope: !2953)
!2958 = !DILocation(line: 1201, column: 29, scope: !2953)
!2959 = !DILocation(line: 1201, column: 38, scope: !2953)
!2960 = !DILocation(line: 1201, column: 3, scope: !2953)
!2961 = !DILocation(line: 1203, column: 19, scope: !2953)
!2962 = !DILocation(line: 1203, column: 27, scope: !2953)
!2963 = !DILocation(line: 1203, column: 35, scope: !2953)
!2964 = !DILocation(line: 1203, column: 3, scope: !2953)
!2965 = !DILocation(line: 1204, column: 1, scope: !2942)
!2966 = distinct !DISubprogram(name: "mainwindow_shrink", scope: !365, file: !365, line: 1068, type: !2886, isLocal: true, isDefinition: true, scopeLine: 1069, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!2967 = !DILocalVariable(name: "window", arg: 1, scope: !2966, file: !365, line: 1068, type: !127)
!2968 = !DILocation(line: 1068, column: 47, scope: !2966)
!2969 = !DILocalVariable(name: "count", arg: 2, scope: !2966, file: !365, line: 1068, type: !140)
!2970 = !DILocation(line: 1068, column: 59, scope: !2966)
!2971 = !DILocalVariable(name: "resize_lower", arg: 3, scope: !2966, file: !365, line: 1068, type: !140)
!2972 = !DILocation(line: 1068, column: 70, scope: !2966)
!2973 = !DILocation(line: 1070, column: 2, scope: !2966)
!2974 = distinct !{!2974, !2973}
!2975 = !DILocation(line: 1070, column: 10, scope: !2976)
!2976 = !DILexicalBlockFile(scope: !2977, file: !365, discriminator: 1)
!2977 = distinct !DILexicalBlock(scope: !2978, file: !365, line: 1070, column: 10)
!2978 = distinct !DILexicalBlock(scope: !2966, file: !365, line: 1070, column: 4)
!2979 = !DILocation(line: 1070, column: 16, scope: !2976)
!2980 = !DILocation(line: 1070, column: 24, scope: !2981)
!2981 = !DILexicalBlockFile(scope: !2982, file: !365, discriminator: 2)
!2982 = distinct !DILexicalBlock(scope: !2977, file: !365, line: 1070, column: 22)
!2983 = !DILocation(line: 1070, column: 33, scope: !2984)
!2984 = !DILexicalBlockFile(scope: !2985, file: !365, discriminator: 3)
!2985 = distinct !DILexicalBlock(scope: !2977, file: !365, line: 1070, column: 31)
!2986 = !DILocation(line: 1070, column: 116, scope: !2984)
!2987 = !DILocation(line: 1070, column: 133, scope: !2988)
!2988 = !DILexicalBlockFile(scope: !2978, file: !365, discriminator: 4)
!2989 = !DILocation(line: 1072, column: 8, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2966, file: !365, line: 1072, column: 6)
!2991 = !DILocation(line: 1072, column: 17, scope: !2990)
!2992 = !DILocation(line: 1072, column: 25, scope: !2990)
!2993 = !DILocation(line: 1072, column: 34, scope: !2990)
!2994 = !DILocation(line: 1072, column: 23, scope: !2990)
!2995 = !DILocation(line: 1072, column: 51, scope: !2990)
!2996 = !DILocation(line: 1072, column: 50, scope: !2990)
!2997 = !DILocation(line: 1072, column: 57, scope: !2990)
!2998 = !DILocation(line: 1072, column: 6, scope: !2966)
!2999 = !DILocation(line: 1073, column: 17, scope: !2990)
!3000 = !DILocation(line: 1075, column: 7, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2966, file: !365, line: 1075, column: 6)
!3002 = !DILocation(line: 1075, column: 20, scope: !3001)
!3003 = !DILocation(line: 1075, column: 39, scope: !3004)
!3004 = !DILexicalBlockFile(scope: !3001, file: !365, discriminator: 1)
!3005 = !DILocation(line: 1075, column: 47, scope: !3004)
!3006 = !DILocation(line: 1075, column: 24, scope: !3004)
!3007 = !DILocation(line: 1075, column: 6, scope: !3004)
!3008 = !DILocation(line: 1076, column: 23, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !3010, file: !365, line: 1076, column: 7)
!3010 = distinct !DILexicalBlock(scope: !3001, file: !365, line: 1075, column: 55)
!3011 = !DILocation(line: 1076, column: 31, scope: !3009)
!3012 = !DILocation(line: 1076, column: 8, scope: !3009)
!3013 = !DILocation(line: 1076, column: 7, scope: !3010)
!3014 = !DILocation(line: 1077, column: 29, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !3016, file: !365, line: 1077, column: 29)
!3016 = distinct !DILexicalBlock(scope: !3009, file: !365, line: 1076, column: 39)
!3017 = !DILocation(line: 1077, column: 42, scope: !3015)
!3018 = !DILocation(line: 1077, column: 61, scope: !3019)
!3019 = !DILexicalBlockFile(scope: !3015, file: !365, discriminator: 1)
!3020 = !DILocation(line: 1077, column: 69, scope: !3019)
!3021 = !DILocation(line: 1077, column: 46, scope: !3019)
!3022 = !DILocation(line: 1077, column: 29, scope: !3019)
!3023 = !DILocation(line: 1078, column: 5, scope: !3015)
!3024 = !DILocation(line: 1079, column: 3, scope: !3016)
!3025 = !DILocation(line: 1080, column: 2, scope: !3010)
!3026 = !DILocation(line: 1082, column: 9, scope: !2966)
!3027 = !DILocation(line: 1083, column: 1, scope: !2966)
!3028 = distinct !DISubprogram(name: "mainwindow_grow", scope: !365, file: !365, line: 1003, type: !2886, isLocal: true, isDefinition: true, scopeLine: 1005, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!3029 = !DILocalVariable(name: "window", arg: 1, scope: !3028, file: !365, line: 1003, type: !127)
!3030 = !DILocation(line: 1003, column: 45, scope: !3028)
!3031 = !DILocalVariable(name: "count", arg: 2, scope: !3028, file: !365, line: 1003, type: !140)
!3032 = !DILocation(line: 1003, column: 57, scope: !3028)
!3033 = !DILocalVariable(name: "resize_lower", arg: 3, scope: !3028, file: !365, line: 1004, type: !140)
!3034 = !DILocation(line: 1004, column: 11, scope: !3028)
!3035 = !DILocation(line: 1006, column: 7, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !3028, file: !365, line: 1006, column: 6)
!3037 = !DILocation(line: 1006, column: 20, scope: !3036)
!3038 = !DILocation(line: 1006, column: 41, scope: !3039)
!3039 = !DILexicalBlockFile(scope: !3036, file: !365, discriminator: 1)
!3040 = !DILocation(line: 1006, column: 49, scope: !3039)
!3041 = !DILocation(line: 1006, column: 24, scope: !3039)
!3042 = !DILocation(line: 1006, column: 6, scope: !3039)
!3043 = !DILocation(line: 1007, column: 25, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3045, file: !365, line: 1007, column: 7)
!3045 = distinct !DILexicalBlock(scope: !3036, file: !365, line: 1006, column: 57)
!3046 = !DILocation(line: 1007, column: 33, scope: !3044)
!3047 = !DILocation(line: 1007, column: 8, scope: !3044)
!3048 = !DILocation(line: 1007, column: 7, scope: !3045)
!3049 = !DILocation(line: 1008, column: 29, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3051, file: !365, line: 1008, column: 29)
!3051 = distinct !DILexicalBlock(scope: !3044, file: !365, line: 1007, column: 41)
!3052 = !DILocation(line: 1008, column: 42, scope: !3050)
!3053 = !DILocation(line: 1008, column: 63, scope: !3054)
!3054 = !DILexicalBlockFile(scope: !3050, file: !365, discriminator: 1)
!3055 = !DILocation(line: 1008, column: 71, scope: !3054)
!3056 = !DILocation(line: 1008, column: 46, scope: !3054)
!3057 = !DILocation(line: 1008, column: 29, scope: !3054)
!3058 = !DILocation(line: 1009, column: 5, scope: !3050)
!3059 = !DILocation(line: 1010, column: 3, scope: !3051)
!3060 = !DILocation(line: 1011, column: 2, scope: !3045)
!3061 = !DILocation(line: 1013, column: 9, scope: !3028)
!3062 = !DILocation(line: 1014, column: 1, scope: !3028)
!3063 = distinct !DISubprogram(name: "mainwindow_set_rsize", scope: !365, file: !365, line: 1206, type: !3064, isLocal: false, isDefinition: true, scopeLine: 1207, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{null, !127, !140}
!3066 = !DILocalVariable(name: "window", arg: 1, scope: !3063, file: !365, line: 1206, type: !127)
!3067 = !DILocation(line: 1206, column: 44, scope: !3063)
!3068 = !DILocalVariable(name: "width", arg: 2, scope: !3063, file: !365, line: 1206, type: !140)
!3069 = !DILocation(line: 1206, column: 56, scope: !3063)
!3070 = !DILocation(line: 1208, column: 11, scope: !3063)
!3071 = !DILocation(line: 1208, column: 19, scope: !3063)
!3072 = !DILocation(line: 1208, column: 8, scope: !3063)
!3073 = !DILocation(line: 1209, column: 6, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3063, file: !365, line: 1209, column: 6)
!3075 = !DILocation(line: 1209, column: 12, scope: !3074)
!3076 = !DILocation(line: 1209, column: 6, scope: !3063)
!3077 = !DILocation(line: 1210, column: 22, scope: !3074)
!3078 = !DILocation(line: 1210, column: 31, scope: !3074)
!3079 = !DILocation(line: 1210, column: 30, scope: !3074)
!3080 = !DILocation(line: 1210, column: 3, scope: !3074)
!3081 = !DILocation(line: 1212, column: 20, scope: !3074)
!3082 = !DILocation(line: 1212, column: 28, scope: !3074)
!3083 = !DILocation(line: 1212, column: 3, scope: !3074)
!3084 = !DILocation(line: 1213, column: 1, scope: !3063)
!3085 = distinct !DISubprogram(name: "mainwindow_rshrink", scope: !365, file: !365, line: 1179, type: !3086, isLocal: true, isDefinition: true, scopeLine: 1180, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!140, !127, !140}
!3088 = !DILocalVariable(name: "window", arg: 1, scope: !3085, file: !365, line: 1179, type: !127)
!3089 = !DILocation(line: 1179, column: 48, scope: !3085)
!3090 = !DILocalVariable(name: "count", arg: 2, scope: !3085, file: !365, line: 1179, type: !140)
!3091 = !DILocation(line: 1179, column: 60, scope: !3085)
!3092 = !DILocation(line: 1181, column: 2, scope: !3085)
!3093 = distinct !{!3093, !3092}
!3094 = !DILocation(line: 1181, column: 10, scope: !3095)
!3095 = !DILexicalBlockFile(scope: !3096, file: !365, discriminator: 1)
!3096 = distinct !DILexicalBlock(scope: !3097, file: !365, line: 1181, column: 10)
!3097 = distinct !DILexicalBlock(scope: !3085, file: !365, line: 1181, column: 4)
!3098 = !DILocation(line: 1181, column: 16, scope: !3095)
!3099 = !DILocation(line: 1181, column: 24, scope: !3100)
!3100 = !DILexicalBlockFile(scope: !3101, file: !365, discriminator: 2)
!3101 = distinct !DILexicalBlock(scope: !3096, file: !365, line: 1181, column: 22)
!3102 = !DILocation(line: 1181, column: 33, scope: !3103)
!3103 = !DILexicalBlockFile(scope: !3104, file: !365, discriminator: 3)
!3104 = distinct !DILexicalBlock(scope: !3096, file: !365, line: 1181, column: 31)
!3105 = !DILocation(line: 1181, column: 116, scope: !3103)
!3106 = !DILocation(line: 1181, column: 133, scope: !3107)
!3107 = !DILexicalBlockFile(scope: !3097, file: !365, discriminator: 4)
!3108 = !DILocation(line: 1183, column: 8, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3085, file: !365, line: 1183, column: 6)
!3110 = !DILocation(line: 1183, column: 17, scope: !3109)
!3111 = !DILocation(line: 1183, column: 24, scope: !3109)
!3112 = !DILocation(line: 1183, column: 33, scope: !3109)
!3113 = !DILocation(line: 1183, column: 22, scope: !3109)
!3114 = !DILocation(line: 1183, column: 52, scope: !3109)
!3115 = !DILocation(line: 1183, column: 51, scope: !3109)
!3116 = !DILocation(line: 1183, column: 58, scope: !3109)
!3117 = !DILocation(line: 1183, column: 6, scope: !3085)
!3118 = !DILocation(line: 1184, column: 3, scope: !3109)
!3119 = !DILocation(line: 1186, column: 23, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3085, file: !365, line: 1186, column: 6)
!3121 = !DILocation(line: 1186, column: 31, scope: !3120)
!3122 = !DILocation(line: 1186, column: 7, scope: !3120)
!3123 = !DILocation(line: 1186, column: 6, scope: !3085)
!3124 = !DILocation(line: 1187, column: 23, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3126, file: !365, line: 1187, column: 7)
!3126 = distinct !DILexicalBlock(scope: !3120, file: !365, line: 1186, column: 39)
!3127 = !DILocation(line: 1187, column: 31, scope: !3125)
!3128 = !DILocation(line: 1187, column: 8, scope: !3125)
!3129 = !DILocation(line: 1187, column: 7, scope: !3126)
!3130 = !DILocation(line: 1188, column: 4, scope: !3125)
!3131 = !DILocation(line: 1189, column: 2, scope: !3126)
!3132 = !DILocation(line: 1191, column: 2, scope: !3085)
!3133 = !DILocation(line: 1192, column: 1, scope: !3085)
!3134 = distinct !DISubprogram(name: "mainwindow_rgrow", scope: !365, file: !365, line: 1139, type: !3086, isLocal: true, isDefinition: true, scopeLine: 1140, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!3135 = !DILocalVariable(name: "window", arg: 1, scope: !3134, file: !365, line: 1139, type: !127)
!3136 = !DILocation(line: 1139, column: 46, scope: !3134)
!3137 = !DILocalVariable(name: "count", arg: 2, scope: !3134, file: !365, line: 1139, type: !140)
!3138 = !DILocation(line: 1139, column: 58, scope: !3134)
!3139 = !DILocation(line: 1141, column: 25, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3134, file: !365, line: 1141, column: 6)
!3141 = !DILocation(line: 1141, column: 33, scope: !3140)
!3142 = !DILocation(line: 1141, column: 7, scope: !3140)
!3143 = !DILocation(line: 1141, column: 6, scope: !3134)
!3144 = !DILocation(line: 1142, column: 25, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !3146, file: !365, line: 1142, column: 7)
!3146 = distinct !DILexicalBlock(scope: !3140, file: !365, line: 1141, column: 41)
!3147 = !DILocation(line: 1142, column: 33, scope: !3145)
!3148 = !DILocation(line: 1142, column: 8, scope: !3145)
!3149 = !DILocation(line: 1142, column: 7, scope: !3146)
!3150 = !DILocation(line: 1143, column: 4, scope: !3145)
!3151 = !DILocation(line: 1144, column: 2, scope: !3146)
!3152 = !DILocation(line: 1146, column: 2, scope: !3134)
!3153 = !DILocation(line: 1147, column: 1, scope: !3134)
!3154 = distinct !DISubprogram(name: "mainwindows_redraw_dirty", scope: !365, file: !365, line: 1215, type: !592, isLocal: false, isDefinition: true, scopeLine: 1216, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!3155 = !DILocalVariable(name: "tmp", scope: !3154, file: !365, line: 1217, type: !147)
!3156 = !DILocation(line: 1217, column: 10, scope: !3154)
!3157 = !DILocation(line: 1219, column: 13, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !3154, file: !365, line: 1219, column: 2)
!3159 = !DILocation(line: 1219, column: 11, scope: !3158)
!3160 = !DILocation(line: 1219, column: 7, scope: !3158)
!3161 = !DILocation(line: 1219, column: 26, scope: !3162)
!3162 = !DILexicalBlockFile(scope: !3163, file: !365, discriminator: 1)
!3163 = distinct !DILexicalBlock(scope: !3158, file: !365, line: 1219, column: 2)
!3164 = !DILocation(line: 1219, column: 30, scope: !3162)
!3165 = !DILocation(line: 1219, column: 2, scope: !3162)
!3166 = !DILocalVariable(name: "rec", scope: !3167, file: !365, line: 1220, type: !127)
!3167 = distinct !DILexicalBlock(scope: !3163, file: !365, line: 1219, column: 55)
!3168 = !DILocation(line: 1220, column: 20, scope: !3167)
!3169 = !DILocation(line: 1220, column: 26, scope: !3167)
!3170 = !DILocation(line: 1220, column: 31, scope: !3167)
!3171 = !DILocation(line: 1222, column: 7, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3167, file: !365, line: 1222, column: 7)
!3173 = !DILocation(line: 1222, column: 12, scope: !3172)
!3174 = !DILocation(line: 1222, column: 7, scope: !3167)
!3175 = !DILocation(line: 1223, column: 25, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3172, file: !365, line: 1222, column: 24)
!3177 = !DILocation(line: 1223, column: 30, scope: !3176)
!3178 = !DILocation(line: 1223, column: 41, scope: !3176)
!3179 = !DILocation(line: 1224, column: 30, scope: !3176)
!3180 = !DILocation(line: 1224, column: 4, scope: !3176)
!3181 = !DILocation(line: 1225, column: 3, scope: !3176)
!3182 = !DILocation(line: 1226, column: 7, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3167, file: !365, line: 1226, column: 7)
!3184 = !DILocation(line: 1226, column: 12, scope: !3183)
!3185 = !DILocation(line: 1226, column: 7, scope: !3167)
!3186 = !DILocation(line: 1227, column: 25, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3183, file: !365, line: 1226, column: 19)
!3188 = !DILocation(line: 1227, column: 30, scope: !3187)
!3189 = !DILocation(line: 1227, column: 36, scope: !3187)
!3190 = !DILocation(line: 1228, column: 49, scope: !3187)
!3191 = !DILocation(line: 1228, column: 54, scope: !3187)
!3192 = !DILocation(line: 1228, column: 63, scope: !3187)
!3193 = !DILocation(line: 1228, column: 28, scope: !3187)
!3194 = !DILocation(line: 1228, column: 75, scope: !3187)
!3195 = !DILocation(line: 1228, column: 4, scope: !3187)
!3196 = !DILocation(line: 1229, column: 3, scope: !3187)
!3197 = !DILocation(line: 1229, column: 36, scope: !3198)
!3198 = !DILexicalBlockFile(scope: !3199, file: !365, discriminator: 1)
!3199 = distinct !DILexicalBlock(scope: !3183, file: !365, line: 1229, column: 14)
!3200 = !DILocation(line: 1229, column: 41, scope: !3198)
!3201 = !DILocation(line: 1229, column: 50, scope: !3198)
!3202 = !DILocation(line: 1229, column: 15, scope: !3198)
!3203 = !DILocation(line: 1229, column: 62, scope: !3198)
!3204 = !DILocation(line: 1229, column: 68, scope: !3198)
!3205 = !DILocation(line: 1229, column: 14, scope: !3198)
!3206 = !DILocation(line: 1230, column: 49, scope: !3207)
!3207 = distinct !DILexicalBlock(scope: !3199, file: !365, line: 1229, column: 75)
!3208 = !DILocation(line: 1230, column: 54, scope: !3207)
!3209 = !DILocation(line: 1230, column: 63, scope: !3207)
!3210 = !DILocation(line: 1230, column: 28, scope: !3207)
!3211 = !DILocation(line: 1230, column: 75, scope: !3207)
!3212 = !DILocation(line: 1230, column: 4, scope: !3207)
!3213 = !DILocation(line: 1231, column: 3, scope: !3207)
!3214 = !DILocation(line: 1232, column: 2, scope: !3167)
!3215 = !DILocation(line: 1219, column: 44, scope: !3216)
!3216 = !DILexicalBlockFile(scope: !3163, file: !365, discriminator: 2)
!3217 = !DILocation(line: 1219, column: 49, scope: !3216)
!3218 = !DILocation(line: 1219, column: 42, scope: !3216)
!3219 = !DILocation(line: 1219, column: 2, scope: !3216)
!3220 = distinct !{!3220, !3221}
!3221 = !DILocation(line: 1219, column: 2, scope: !3154)
!3222 = !DILocation(line: 1233, column: 1, scope: !3154)
!3223 = distinct !DISubprogram(name: "mainwindow_resize_windows", scope: !365, file: !365, line: 101, type: !535, isLocal: true, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!3224 = !DILocalVariable(name: "window", arg: 1, scope: !3223, file: !365, line: 101, type: !127)
!3225 = !DILocation(line: 101, column: 56, scope: !3223)
!3226 = !DILocalVariable(name: "tmp", scope: !3223, file: !365, line: 103, type: !147)
!3227 = !DILocation(line: 103, column: 10, scope: !3223)
!3228 = !DILocalVariable(name: "resized", scope: !3223, file: !365, line: 104, type: !140)
!3229 = !DILocation(line: 104, column: 6, scope: !3223)
!3230 = !DILocation(line: 106, column: 20, scope: !3223)
!3231 = !DILocation(line: 106, column: 29, scope: !3223)
!3232 = !DILocation(line: 106, column: 42, scope: !3223)
!3233 = !DILocation(line: 106, column: 51, scope: !3223)
!3234 = !DILocation(line: 106, column: 67, scope: !3223)
!3235 = !DILocation(line: 106, column: 76, scope: !3223)
!3236 = !DILocation(line: 106, column: 64, scope: !3223)
!3237 = !DILocation(line: 106, column: 101, scope: !3223)
!3238 = !DILocation(line: 106, column: 110, scope: !3223)
!3239 = !DILocation(line: 106, column: 124, scope: !3223)
!3240 = !DILocation(line: 106, column: 133, scope: !3223)
!3241 = !DILocation(line: 106, column: 121, scope: !3223)
!3242 = !DILocation(line: 106, column: 155, scope: !3223)
!3243 = !DILocation(line: 106, column: 164, scope: !3223)
!3244 = !DILocation(line: 106, column: 173, scope: !3223)
!3245 = !DILocation(line: 106, column: 182, scope: !3223)
!3246 = !DILocation(line: 106, column: 170, scope: !3223)
!3247 = !DILocation(line: 106, column: 202, scope: !3223)
!3248 = !DILocation(line: 106, column: 211, scope: !3223)
!3249 = !DILocation(line: 106, column: 221, scope: !3223)
!3250 = !DILocation(line: 106, column: 230, scope: !3223)
!3251 = !DILocation(line: 106, column: 218, scope: !3223)
!3252 = !DILocation(line: 106, column: 2, scope: !3223)
!3253 = !DILocation(line: 108, column: 10, scope: !3223)
!3254 = !DILocation(line: 109, column: 13, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3223, file: !365, line: 109, column: 2)
!3256 = !DILocation(line: 109, column: 11, scope: !3255)
!3257 = !DILocation(line: 109, column: 7, scope: !3255)
!3258 = !DILocation(line: 109, column: 22, scope: !3259)
!3259 = !DILexicalBlockFile(scope: !3260, file: !365, discriminator: 1)
!3260 = distinct !DILexicalBlock(scope: !3255, file: !365, line: 109, column: 2)
!3261 = !DILocation(line: 109, column: 26, scope: !3259)
!3262 = !DILocation(line: 109, column: 2, scope: !3259)
!3263 = !DILocalVariable(name: "rec", scope: !3264, file: !365, line: 110, type: !133)
!3264 = distinct !DILexicalBlock(scope: !3260, file: !365, line: 109, column: 51)
!3265 = !DILocation(line: 110, column: 15, scope: !3264)
!3266 = !DILocation(line: 110, column: 21, scope: !3264)
!3267 = !DILocation(line: 110, column: 26, scope: !3264)
!3268 = !DILocation(line: 112, column: 7, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3264, file: !365, line: 112, column: 7)
!3270 = !DILocation(line: 112, column: 12, scope: !3269)
!3271 = !DILocation(line: 112, column: 21, scope: !3269)
!3272 = !DILocation(line: 112, column: 28, scope: !3269)
!3273 = !DILocation(line: 113, column: 29, scope: !3269)
!3274 = !DILocation(line: 113, column: 35, scope: !3269)
!3275 = !DILocation(line: 113, column: 8, scope: !3269)
!3276 = !DILocation(line: 113, column: 47, scope: !3269)
!3277 = !DILocation(line: 113, column: 57, scope: !3269)
!3278 = !DILocation(line: 113, column: 54, scope: !3269)
!3279 = !DILocation(line: 113, column: 64, scope: !3269)
!3280 = !DILocation(line: 114, column: 10, scope: !3269)
!3281 = !DILocation(line: 114, column: 16, scope: !3269)
!3282 = !DILocation(line: 114, column: 27, scope: !3269)
!3283 = !DILocation(line: 114, column: 36, scope: !3269)
!3284 = !DILocation(line: 114, column: 43, scope: !3269)
!3285 = !DILocation(line: 114, column: 52, scope: !3269)
!3286 = !DILocation(line: 114, column: 41, scope: !3269)
!3287 = !DILocation(line: 114, column: 22, scope: !3269)
!3288 = !DILocation(line: 114, column: 71, scope: !3269)
!3289 = !DILocation(line: 114, column: 75, scope: !3290)
!3290 = !DILexicalBlockFile(scope: !3269, file: !365, discriminator: 1)
!3291 = !DILocation(line: 114, column: 81, scope: !3290)
!3292 = !DILocation(line: 114, column: 93, scope: !3290)
!3293 = !DILocation(line: 114, column: 102, scope: !3290)
!3294 = !DILocation(line: 114, column: 110, scope: !3290)
!3295 = !DILocation(line: 114, column: 119, scope: !3290)
!3296 = !DILocation(line: 114, column: 108, scope: !3290)
!3297 = !DILocation(line: 114, column: 88, scope: !3290)
!3298 = !DILocation(line: 112, column: 7, scope: !3299)
!3299 = !DILexicalBlockFile(scope: !3264, file: !365, discriminator: 1)
!3300 = !DILocation(line: 115, column: 12, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3269, file: !365, line: 114, column: 138)
!3302 = !DILocation(line: 116, column: 22, scope: !3301)
!3303 = !DILocation(line: 116, column: 29, scope: !3301)
!3304 = !DILocation(line: 116, column: 38, scope: !3301)
!3305 = !DILocation(line: 116, column: 45, scope: !3301)
!3306 = !DILocation(line: 116, column: 54, scope: !3301)
!3307 = !DILocation(line: 116, column: 43, scope: !3301)
!3308 = !DILocation(line: 117, column: 10, scope: !3301)
!3309 = !DILocation(line: 117, column: 19, scope: !3301)
!3310 = !DILocation(line: 117, column: 27, scope: !3301)
!3311 = !DILocation(line: 117, column: 36, scope: !3301)
!3312 = !DILocation(line: 117, column: 25, scope: !3301)
!3313 = !DILocation(line: 116, column: 4, scope: !3301)
!3314 = !DILocation(line: 118, column: 3, scope: !3301)
!3315 = !DILocation(line: 119, column: 2, scope: !3264)
!3316 = !DILocation(line: 109, column: 40, scope: !3317)
!3317 = !DILexicalBlockFile(scope: !3260, file: !365, discriminator: 2)
!3318 = !DILocation(line: 109, column: 45, scope: !3317)
!3319 = !DILocation(line: 109, column: 38, scope: !3317)
!3320 = !DILocation(line: 109, column: 2, scope: !3317)
!3321 = distinct !{!3321, !3322}
!3322 = !DILocation(line: 109, column: 2, scope: !3223)
!3323 = !DILocation(line: 121, column: 6, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3223, file: !365, line: 121, column: 6)
!3325 = !DILocation(line: 121, column: 6, scope: !3223)
!3326 = !DILocation(line: 122, column: 40, scope: !3324)
!3327 = !DILocation(line: 122, column: 3, scope: !3324)
!3328 = !DILocation(line: 123, column: 1, scope: !3223)
!3329 = distinct !DISubprogram(name: "mainwindows_init", scope: !365, file: !365, line: 1835, type: !592, isLocal: false, isDefinition: true, scopeLine: 1836, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!3330 = !DILocation(line: 1837, column: 17, scope: !3329)
!3331 = !DILocation(line: 1837, column: 15, scope: !3329)
!3332 = !DILocation(line: 1838, column: 18, scope: !3329)
!3333 = !DILocation(line: 1838, column: 16, scope: !3329)
!3334 = !DILocation(line: 1840, column: 14, scope: !3329)
!3335 = !DILocation(line: 1841, column: 17, scope: !3329)
!3336 = !DILocation(line: 1842, column: 46, scope: !3329)
!3337 = !DILocation(line: 1842, column: 19, scope: !3329)
!3338 = !DILocation(line: 1842, column: 16, scope: !3329)
!3339 = !DILocation(line: 1843, column: 47, scope: !3329)
!3340 = !DILocation(line: 1843, column: 22, scope: !3329)
!3341 = !DILocation(line: 1844, column: 47, scope: !3329)
!3342 = !DILocation(line: 1844, column: 23, scope: !3329)
!3343 = !DILocation(line: 1846, column: 2, scope: !3329)
!3344 = !DILocation(line: 1847, column: 2, scope: !3329)
!3345 = !DILocation(line: 1848, column: 2, scope: !3329)
!3346 = !DILocation(line: 1849, column: 2, scope: !3329)
!3347 = !DILocation(line: 1850, column: 2, scope: !3329)
!3348 = !DILocation(line: 1851, column: 2, scope: !3329)
!3349 = !DILocation(line: 1852, column: 2, scope: !3329)
!3350 = !DILocation(line: 1853, column: 2, scope: !3329)
!3351 = !DILocation(line: 1854, column: 2, scope: !3329)
!3352 = !DILocation(line: 1855, column: 2, scope: !3329)
!3353 = !DILocation(line: 1856, column: 2, scope: !3329)
!3354 = !DILocation(line: 1857, column: 2, scope: !3329)
!3355 = !DILocation(line: 1858, column: 2, scope: !3329)
!3356 = !DILocation(line: 1859, column: 2, scope: !3329)
!3357 = !DILocation(line: 1860, column: 2, scope: !3329)
!3358 = !DILocation(line: 1861, column: 2, scope: !3329)
!3359 = !DILocation(line: 1862, column: 2, scope: !3329)
!3360 = !DILocation(line: 1863, column: 2, scope: !3329)
!3361 = !DILocation(line: 1864, column: 2, scope: !3329)
!3362 = !DILocation(line: 1865, column: 2, scope: !3329)
!3363 = !DILocation(line: 1866, column: 2, scope: !3329)
!3364 = !DILocation(line: 1867, column: 2, scope: !3329)
!3365 = !DILocation(line: 1868, column: 2, scope: !3329)
!3366 = !DILocation(line: 1869, column: 2, scope: !3329)
!3367 = !DILocation(line: 1870, column: 2, scope: !3329)
!3368 = !DILocation(line: 1871, column: 2, scope: !3329)
!3369 = !DILocation(line: 1872, column: 2, scope: !3329)
!3370 = !DILocation(line: 1873, column: 1, scope: !3329)
!3371 = distinct !DISubprogram(name: "cmd_window_grow", scope: !365, file: !365, line: 1251, type: !3372, isLocal: true, isDefinition: true, scopeLine: 1252, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!3372 = !DISubroutineType(types: !3373)
!3373 = !{null, !193}
!3374 = !DILocalVariable(name: "data", arg: 1, scope: !3371, file: !365, line: 1251, type: !193)
!3375 = !DILocation(line: 1251, column: 41, scope: !3371)
!3376 = !DILocalVariable(name: "count", scope: !3371, file: !365, line: 1253, type: !140)
!3377 = !DILocation(line: 1253, column: 6, scope: !3371)
!3378 = !DILocation(line: 1255, column: 11, scope: !3371)
!3379 = !DILocation(line: 1255, column: 10, scope: !3371)
!3380 = !DILocation(line: 1255, column: 16, scope: !3371)
!3381 = !DILocation(line: 1255, column: 10, scope: !3382)
!3382 = !DILexicalBlockFile(scope: !3371, file: !365, discriminator: 1)
!3383 = !DILocation(line: 1255, column: 35, scope: !3384)
!3384 = !DILexicalBlockFile(scope: !3371, file: !365, discriminator: 2)
!3385 = !DILocation(line: 1255, column: 30, scope: !3384)
!3386 = !DILocation(line: 1255, column: 10, scope: !3384)
!3387 = !DILocation(line: 1255, column: 10, scope: !3388)
!3388 = !DILexicalBlockFile(scope: !3371, file: !365, discriminator: 3)
!3389 = !DILocation(line: 1255, column: 8, scope: !3388)
!3390 = !DILocation(line: 1257, column: 22, scope: !3371)
!3391 = !DILocation(line: 1257, column: 2, scope: !3371)
!3392 = !DILocation(line: 1258, column: 1, scope: !3371)
!3393 = distinct !DISubprogram(name: "cmd_window_shrink", scope: !365, file: !365, line: 1261, type: !3372, isLocal: true, isDefinition: true, scopeLine: 1262, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!3394 = !DILocalVariable(name: "data", arg: 1, scope: !3393, file: !365, line: 1261, type: !193)
!3395 = !DILocation(line: 1261, column: 43, scope: !3393)
!3396 = !DILocalVariable(name: "count", scope: !3393, file: !365, line: 1263, type: !140)
!3397 = !DILocation(line: 1263, column: 6, scope: !3393)
!3398 = !DILocation(line: 1265, column: 11, scope: !3393)
!3399 = !DILocation(line: 1265, column: 10, scope: !3393)
!3400 = !DILocation(line: 1265, column: 16, scope: !3393)
!3401 = !DILocation(line: 1265, column: 10, scope: !3402)
!3402 = !DILexicalBlockFile(scope: !3393, file: !365, discriminator: 1)
!3403 = !DILocation(line: 1265, column: 35, scope: !3404)
!3404 = !DILexicalBlockFile(scope: !3393, file: !365, discriminator: 2)
!3405 = !DILocation(line: 1265, column: 30, scope: !3404)
!3406 = !DILocation(line: 1265, column: 10, scope: !3404)
!3407 = !DILocation(line: 1265, column: 10, scope: !3408)
!3408 = !DILexicalBlockFile(scope: !3393, file: !365, discriminator: 3)
!3409 = !DILocation(line: 1265, column: 8, scope: !3408)
!3410 = !DILocation(line: 1266, column: 6, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3393, file: !365, line: 1266, column: 6)
!3412 = !DILocation(line: 1266, column: 12, scope: !3411)
!3413 = !DILocation(line: 1266, column: 6, scope: !3393)
!3414 = !DILocation(line: 1266, column: 33, scope: !3415)
!3415 = !DILexicalBlockFile(scope: !3411, file: !365, discriminator: 1)
!3416 = !DILocation(line: 1266, column: 27, scope: !3415)
!3417 = !DILocation(line: 1268, column: 23, scope: !3393)
!3418 = !DILocation(line: 1268, column: 22, scope: !3393)
!3419 = !DILocation(line: 1268, column: 2, scope: !3393)
!3420 = !DILocation(line: 1269, column: 1, scope: !3393)
!3421 = distinct !DISubprogram(name: "cmd_window_size", scope: !365, file: !365, line: 1272, type: !3372, isLocal: true, isDefinition: true, scopeLine: 1273, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!3422 = !DILocalVariable(name: "data", arg: 1, scope: !3421, file: !365, line: 1272, type: !193)
!3423 = !DILocation(line: 1272, column: 41, scope: !3421)
!3424 = !DILocalVariable(name: "size", scope: !3421, file: !365, line: 1274, type: !140)
!3425 = !DILocation(line: 1274, column: 6, scope: !3421)
!3426 = !DILocation(line: 1276, column: 18, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3421, file: !365, line: 1276, column: 6)
!3428 = !DILocation(line: 1276, column: 7, scope: !3427)
!3429 = !DILocation(line: 1276, column: 6, scope: !3421)
!3430 = !DILocation(line: 1276, column: 28, scope: !3431)
!3431 = !DILexicalBlockFile(scope: !3427, file: !365, discriminator: 1)
!3432 = !DILocation(line: 1277, column: 14, scope: !3421)
!3433 = !DILocation(line: 1277, column: 9, scope: !3421)
!3434 = !DILocation(line: 1277, column: 7, scope: !3421)
!3435 = !DILocation(line: 1279, column: 33, scope: !3421)
!3436 = !DILocation(line: 1279, column: 46, scope: !3421)
!3437 = !DILocation(line: 1279, column: 12, scope: !3421)
!3438 = !DILocation(line: 1279, column: 58, scope: !3421)
!3439 = !DILocation(line: 1279, column: 67, scope: !3421)
!3440 = !DILocation(line: 1280, column: 26, scope: !3421)
!3441 = !DILocation(line: 1280, column: 39, scope: !3421)
!3442 = !DILocation(line: 1280, column: 5, scope: !3421)
!3443 = !DILocation(line: 1280, column: 51, scope: !3421)
!3444 = !DILocation(line: 1280, column: 60, scope: !3421)
!3445 = !DILocation(line: 1279, column: 74, scope: !3421)
!3446 = !DILocation(line: 1279, column: 7, scope: !3421)
!3447 = !DILocation(line: 1281, column: 6, scope: !3448)
!3448 = distinct !DILexicalBlock(scope: !3421, file: !365, line: 1281, column: 6)
!3449 = !DILocation(line: 1281, column: 11, scope: !3448)
!3450 = !DILocation(line: 1281, column: 6, scope: !3421)
!3451 = !DILocation(line: 1281, column: 31, scope: !3452)
!3452 = !DILexicalBlockFile(scope: !3448, file: !365, discriminator: 1)
!3453 = !DILocation(line: 1281, column: 26, scope: !3452)
!3454 = !DILocation(line: 1283, column: 22, scope: !3421)
!3455 = !DILocation(line: 1283, column: 2, scope: !3421)
!3456 = !DILocation(line: 1284, column: 1, scope: !3421)
!3457 = !DILocation(line: 1284, column: 1, scope: !3458)
!3458 = !DILexicalBlockFile(scope: !3421, file: !365, discriminator: 1)
!3459 = distinct !DISubprogram(name: "cmd_window_balance", scope: !365, file: !365, line: 1287, type: !592, isLocal: true, isDefinition: true, scopeLine: 1288, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!3460 = !DILocalVariable(name: "sorted", scope: !3459, file: !365, line: 1289, type: !147)
!3461 = !DILocation(line: 1289, column: 10, scope: !3459)
!3462 = !DILocalVariable(name: "stmp", scope: !3459, file: !365, line: 1289, type: !147)
!3463 = !DILocation(line: 1289, column: 19, scope: !3459)
!3464 = !DILocalVariable(name: "line", scope: !3459, file: !365, line: 1289, type: !147)
!3465 = !DILocation(line: 1289, column: 26, scope: !3459)
!3466 = !DILocalVariable(name: "ltmp", scope: !3459, file: !365, line: 1289, type: !147)
!3467 = !DILocation(line: 1289, column: 33, scope: !3459)
!3468 = !DILocalVariable(name: "avail_size", scope: !3459, file: !365, line: 1290, type: !140)
!3469 = !DILocation(line: 1290, column: 6, scope: !3459)
!3470 = !DILocalVariable(name: "unit_size", scope: !3459, file: !365, line: 1290, type: !140)
!3471 = !DILocation(line: 1290, column: 18, scope: !3459)
!3472 = !DILocalVariable(name: "bigger_units", scope: !3459, file: !365, line: 1290, type: !140)
!3473 = !DILocation(line: 1290, column: 29, scope: !3459)
!3474 = !DILocalVariable(name: "windows", scope: !3459, file: !365, line: 1291, type: !140)
!3475 = !DILocation(line: 1291, column: 6, scope: !3459)
!3476 = !DILocalVariable(name: "last_line", scope: !3459, file: !365, line: 1291, type: !140)
!3477 = !DILocation(line: 1291, column: 15, scope: !3459)
!3478 = !DILocalVariable(name: "old_size", scope: !3459, file: !365, line: 1291, type: !140)
!3479 = !DILocation(line: 1291, column: 26, scope: !3459)
!3480 = !DILocalVariable(name: "win", scope: !3459, file: !365, line: 1292, type: !127)
!3481 = !DILocation(line: 1292, column: 19, scope: !3459)
!3482 = !DILocation(line: 1294, column: 27, scope: !3459)
!3483 = !DILocation(line: 1294, column: 12, scope: !3459)
!3484 = !DILocation(line: 1294, column: 10, scope: !3459)
!3485 = !DILocation(line: 1295, column: 6, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3459, file: !365, line: 1295, column: 6)
!3487 = !DILocation(line: 1295, column: 14, scope: !3486)
!3488 = !DILocation(line: 1295, column: 6, scope: !3459)
!3489 = !DILocation(line: 1295, column: 20, scope: !3490)
!3490 = !DILexicalBlockFile(scope: !3486, file: !365, discriminator: 1)
!3491 = !DILocation(line: 1297, column: 9, scope: !3459)
!3492 = !DILocation(line: 1298, column: 10, scope: !3459)
!3493 = !DILocation(line: 1299, column: 13, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3459, file: !365, line: 1299, column: 2)
!3495 = !DILocation(line: 1299, column: 11, scope: !3494)
!3496 = !DILocation(line: 1299, column: 7, scope: !3494)
!3497 = !DILocation(line: 1300, column: 7, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3494, file: !365, line: 1299, column: 2)
!3499 = !DILocation(line: 1300, column: 11, scope: !3498)
!3500 = !DILocation(line: 1299, column: 2, scope: !3501)
!3501 = !DILexicalBlockFile(scope: !3494, file: !365, discriminator: 1)
!3502 = !DILocation(line: 1302, column: 10, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3498, file: !365, line: 1301, column: 42)
!3504 = !DILocation(line: 1303, column: 27, scope: !3503)
!3505 = !DILocation(line: 1303, column: 35, scope: !3503)
!3506 = !DILocation(line: 1303, column: 12, scope: !3503)
!3507 = !DILocation(line: 1303, column: 10, scope: !3503)
!3508 = !DILocation(line: 1304, column: 2, scope: !3503)
!3509 = !DILocation(line: 1301, column: 36, scope: !3498)
!3510 = !DILocation(line: 1301, column: 13, scope: !3498)
!3511 = !DILocation(line: 1301, column: 11, scope: !3498)
!3512 = !DILocation(line: 1299, column: 2, scope: !3513)
!3513 = !DILexicalBlockFile(scope: !3498, file: !365, discriminator: 2)
!3514 = distinct !{!3514, !3515}
!3515 = !DILocation(line: 1299, column: 2, scope: !3459)
!3516 = !DILocation(line: 1306, column: 15, scope: !3459)
!3517 = !DILocation(line: 1306, column: 29, scope: !3459)
!3518 = !DILocation(line: 1306, column: 27, scope: !3459)
!3519 = !DILocation(line: 1306, column: 49, scope: !3459)
!3520 = !DILocation(line: 1306, column: 48, scope: !3459)
!3521 = !DILocation(line: 1306, column: 13, scope: !3459)
!3522 = !DILocation(line: 1307, column: 14, scope: !3459)
!3523 = !DILocation(line: 1307, column: 25, scope: !3459)
!3524 = !DILocation(line: 1307, column: 24, scope: !3459)
!3525 = !DILocation(line: 1307, column: 12, scope: !3459)
!3526 = !DILocation(line: 1308, column: 17, scope: !3459)
!3527 = !DILocation(line: 1308, column: 28, scope: !3459)
!3528 = !DILocation(line: 1308, column: 27, scope: !3459)
!3529 = !DILocation(line: 1308, column: 15, scope: !3459)
!3530 = !DILocation(line: 1310, column: 14, scope: !3459)
!3531 = !DILocation(line: 1310, column: 12, scope: !3459)
!3532 = !DILocation(line: 1311, column: 14, scope: !3533)
!3533 = distinct !DILexicalBlock(scope: !3459, file: !365, line: 1311, column: 2)
!3534 = !DILocation(line: 1311, column: 12, scope: !3533)
!3535 = !DILocation(line: 1311, column: 7, scope: !3533)
!3536 = !DILocation(line: 1311, column: 22, scope: !3537)
!3537 = !DILexicalBlockFile(scope: !3538, file: !365, discriminator: 1)
!3538 = distinct !DILexicalBlock(scope: !3533, file: !365, line: 1311, column: 2)
!3539 = !DILocation(line: 1311, column: 27, scope: !3537)
!3540 = !DILocation(line: 1311, column: 2, scope: !3537)
!3541 = !DILocation(line: 1312, column: 9, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !3538, file: !365, line: 1311, column: 54)
!3543 = !DILocation(line: 1312, column: 15, scope: !3542)
!3544 = !DILocation(line: 1312, column: 7, scope: !3542)
!3545 = !DILocation(line: 1313, column: 31, scope: !3542)
!3546 = !DILocation(line: 1313, column: 10, scope: !3542)
!3547 = !DILocation(line: 1313, column: 8, scope: !3542)
!3548 = !DILocation(line: 1315, column: 15, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3542, file: !365, line: 1315, column: 3)
!3550 = !DILocation(line: 1315, column: 13, scope: !3549)
!3551 = !DILocation(line: 1315, column: 8, scope: !3549)
!3552 = !DILocation(line: 1315, column: 21, scope: !3553)
!3553 = !DILexicalBlockFile(scope: !3554, file: !365, discriminator: 1)
!3554 = distinct !DILexicalBlock(scope: !3549, file: !365, line: 1315, column: 3)
!3555 = !DILocation(line: 1315, column: 26, scope: !3553)
!3556 = !DILocation(line: 1315, column: 3, scope: !3553)
!3557 = !DILocalVariable(name: "rec", scope: !3558, file: !365, line: 1316, type: !127)
!3558 = distinct !DILexicalBlock(scope: !3554, file: !365, line: 1315, column: 53)
!3559 = !DILocation(line: 1316, column: 21, scope: !3558)
!3560 = !DILocation(line: 1316, column: 27, scope: !3558)
!3561 = !DILocation(line: 1316, column: 33, scope: !3558)
!3562 = !DILocation(line: 1317, column: 15, scope: !3558)
!3563 = !DILocation(line: 1317, column: 20, scope: !3558)
!3564 = !DILocation(line: 1317, column: 13, scope: !3558)
!3565 = !DILocation(line: 1318, column: 22, scope: !3558)
!3566 = !DILocation(line: 1318, column: 4, scope: !3558)
!3567 = !DILocation(line: 1318, column: 9, scope: !3558)
!3568 = !DILocation(line: 1318, column: 20, scope: !3558)
!3569 = !DILocation(line: 1319, column: 21, scope: !3558)
!3570 = !DILocation(line: 1319, column: 26, scope: !3558)
!3571 = !DILocation(line: 1319, column: 39, scope: !3558)
!3572 = !DILocation(line: 1319, column: 37, scope: !3558)
!3573 = !DILocation(line: 1319, column: 48, scope: !3558)
!3574 = !DILocation(line: 1319, column: 4, scope: !3558)
!3575 = !DILocation(line: 1319, column: 9, scope: !3558)
!3576 = !DILocation(line: 1319, column: 19, scope: !3558)
!3577 = !DILocation(line: 1321, column: 8, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !3558, file: !365, line: 1321, column: 8)
!3579 = !DILocation(line: 1321, column: 21, scope: !3578)
!3580 = !DILocation(line: 1321, column: 8, scope: !3558)
!3581 = !DILocation(line: 1322, column: 5, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3578, file: !365, line: 1321, column: 26)
!3583 = !DILocation(line: 1322, column: 10, scope: !3582)
!3584 = !DILocation(line: 1322, column: 19, scope: !3582)
!3585 = !DILocation(line: 1323, column: 4, scope: !3582)
!3586 = !DILocation(line: 1325, column: 18, scope: !3558)
!3587 = !DILocation(line: 1325, column: 23, scope: !3558)
!3588 = !DILocation(line: 1325, column: 33, scope: !3558)
!3589 = !DILocation(line: 1325, column: 38, scope: !3558)
!3590 = !DILocation(line: 1325, column: 32, scope: !3558)
!3591 = !DILocation(line: 1325, column: 48, scope: !3558)
!3592 = !DILocation(line: 1325, column: 4, scope: !3558)
!3593 = !DILocation(line: 1325, column: 9, scope: !3558)
!3594 = !DILocation(line: 1325, column: 16, scope: !3558)
!3595 = !DILocation(line: 1327, column: 22, scope: !3558)
!3596 = !DILocation(line: 1327, column: 30, scope: !3558)
!3597 = !DILocation(line: 1327, column: 35, scope: !3558)
!3598 = !DILocation(line: 1327, column: 42, scope: !3558)
!3599 = !DILocation(line: 1327, column: 41, scope: !3558)
!3600 = !DILocation(line: 1327, column: 4, scope: !3558)
!3601 = !DILocation(line: 1328, column: 3, scope: !3558)
!3602 = !DILocation(line: 1315, column: 41, scope: !3603)
!3603 = !DILexicalBlockFile(scope: !3554, file: !365, discriminator: 2)
!3604 = !DILocation(line: 1315, column: 47, scope: !3603)
!3605 = !DILocation(line: 1315, column: 39, scope: !3603)
!3606 = !DILocation(line: 1315, column: 3, scope: !3603)
!3607 = distinct !{!3607, !3608}
!3608 = !DILocation(line: 1315, column: 3, scope: !3542)
!3609 = !DILocation(line: 1329, column: 7, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3542, file: !365, line: 1329, column: 7)
!3611 = !DILocation(line: 1329, column: 12, scope: !3610)
!3612 = !DILocation(line: 1329, column: 19, scope: !3610)
!3613 = !DILocation(line: 1329, column: 22, scope: !3614)
!3614 = !DILexicalBlockFile(scope: !3610, file: !365, discriminator: 1)
!3615 = !DILocation(line: 1329, column: 35, scope: !3614)
!3616 = !DILocation(line: 1329, column: 7, scope: !3614)
!3617 = !DILocation(line: 1330, column: 16, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !3610, file: !365, line: 1329, column: 40)
!3619 = !DILocation(line: 1331, column: 3, scope: !3618)
!3620 = !DILocation(line: 1332, column: 15, scope: !3542)
!3621 = !DILocation(line: 1332, column: 20, scope: !3542)
!3622 = !DILocation(line: 1332, column: 29, scope: !3542)
!3623 = !DILocation(line: 1332, column: 13, scope: !3542)
!3624 = !DILocation(line: 1334, column: 16, scope: !3542)
!3625 = !DILocation(line: 1334, column: 3, scope: !3542)
!3626 = !DILocation(line: 1335, column: 2, scope: !3542)
!3627 = !DILocation(line: 1311, column: 42, scope: !3628)
!3628 = !DILexicalBlockFile(scope: !3538, file: !365, discriminator: 2)
!3629 = !DILocation(line: 1311, column: 48, scope: !3628)
!3630 = !DILocation(line: 1311, column: 40, scope: !3628)
!3631 = !DILocation(line: 1311, column: 2, scope: !3628)
!3632 = distinct !{!3632, !3633}
!3633 = !DILocation(line: 1311, column: 2, scope: !3459)
!3634 = !DILocation(line: 1336, column: 15, scope: !3459)
!3635 = !DILocation(line: 1336, column: 2, scope: !3459)
!3636 = !DILocation(line: 1338, column: 2, scope: !3459)
!3637 = !DILocation(line: 1339, column: 1, scope: !3459)
!3638 = !DILocation(line: 1339, column: 1, scope: !3639)
!3639 = !DILexicalBlockFile(scope: !3459, file: !365, discriminator: 1)
!3640 = distinct !DISubprogram(name: "cmd_window_hide", scope: !365, file: !365, line: 1342, type: !3372, isLocal: true, isDefinition: true, scopeLine: 1343, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!3641 = !DILocalVariable(name: "data", arg: 1, scope: !3640, file: !365, line: 1342, type: !193)
!3642 = !DILocation(line: 1342, column: 41, scope: !3640)
!3643 = !DILocalVariable(name: "window", scope: !3640, file: !365, line: 1344, type: !133)
!3644 = !DILocation(line: 1344, column: 14, scope: !3640)
!3645 = !DILocation(line: 1346, column: 6, scope: !3646)
!3646 = distinct !DILexicalBlock(scope: !3640, file: !365, line: 1346, column: 6)
!3647 = !DILocation(line: 1346, column: 19, scope: !3646)
!3648 = !DILocation(line: 1346, column: 24, scope: !3646)
!3649 = !DILocation(line: 1346, column: 6, scope: !3640)
!3650 = !DILocation(line: 1347, column: 40, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3646, file: !365, line: 1346, column: 32)
!3652 = !DILocation(line: 1347, column: 3, scope: !3651)
!3653 = !DILocation(line: 1349, column: 3, scope: !3651)
!3654 = !DILocation(line: 1352, column: 7, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !3640, file: !365, line: 1352, column: 6)
!3656 = !DILocation(line: 1352, column: 6, scope: !3655)
!3657 = !DILocation(line: 1352, column: 12, scope: !3655)
!3658 = !DILocation(line: 1352, column: 6, scope: !3640)
!3659 = !DILocation(line: 1353, column: 12, scope: !3655)
!3660 = !DILocation(line: 1353, column: 10, scope: !3655)
!3661 = !DILocation(line: 1353, column: 3, scope: !3655)
!3662 = !DILocation(line: 1354, column: 22, scope: !3663)
!3663 = distinct !DILexicalBlock(scope: !3655, file: !365, line: 1354, column: 11)
!3664 = !DILocation(line: 1354, column: 11, scope: !3663)
!3665 = !DILocation(line: 1354, column: 11, scope: !3655)
!3666 = !DILocation(line: 1355, column: 36, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !3663, file: !365, line: 1354, column: 32)
!3668 = !DILocation(line: 1355, column: 31, scope: !3667)
!3669 = !DILocation(line: 1355, column: 12, scope: !3670)
!3670 = !DILexicalBlockFile(scope: !3667, file: !365, discriminator: 1)
!3671 = !DILocation(line: 1355, column: 10, scope: !3667)
!3672 = !DILocation(line: 1356, column: 7, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3667, file: !365, line: 1356, column: 7)
!3674 = !DILocation(line: 1356, column: 14, scope: !3673)
!3675 = !DILocation(line: 1356, column: 7, scope: !3667)
!3676 = !DILocation(line: 1357, column: 41, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3673, file: !365, line: 1356, column: 22)
!3678 = !DILocation(line: 1357, column: 97, scope: !3677)
!3679 = !DILocation(line: 1357, column: 4, scope: !3677)
!3680 = !DILocation(line: 1359, column: 3, scope: !3677)
!3681 = !DILocation(line: 1360, column: 2, scope: !3667)
!3682 = !DILocation(line: 1361, column: 29, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !3663, file: !365, line: 1360, column: 9)
!3684 = !DILocation(line: 1361, column: 41, scope: !3683)
!3685 = !DILocation(line: 1361, column: 56, scope: !3683)
!3686 = !DILocation(line: 1361, column: 12, scope: !3683)
!3687 = !DILocation(line: 1361, column: 10, scope: !3683)
!3688 = !DILocation(line: 1364, column: 6, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3640, file: !365, line: 1364, column: 6)
!3690 = !DILocation(line: 1364, column: 13, scope: !3689)
!3691 = !DILocation(line: 1364, column: 20, scope: !3689)
!3692 = !DILocation(line: 1364, column: 47, scope: !3693)
!3693 = !DILexicalBlockFile(scope: !3689, file: !365, discriminator: 1)
!3694 = !DILocation(line: 1364, column: 56, scope: !3693)
!3695 = !DILocation(line: 1364, column: 26, scope: !3693)
!3696 = !DILocation(line: 1364, column: 68, scope: !3693)
!3697 = !DILocation(line: 1364, column: 76, scope: !3693)
!3698 = !DILocation(line: 1364, column: 87, scope: !3693)
!3699 = !DILocation(line: 1364, column: 83, scope: !3693)
!3700 = !DILocation(line: 1364, column: 6, scope: !3693)
!3701 = !DILocation(line: 1365, column: 3, scope: !3689)
!3702 = !DILocation(line: 1367, column: 29, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3640, file: !365, line: 1367, column: 6)
!3704 = !DILocation(line: 1367, column: 38, scope: !3703)
!3705 = !DILocation(line: 1367, column: 8, scope: !3703)
!3706 = !DILocation(line: 1367, column: 50, scope: !3703)
!3707 = !DILocation(line: 1367, column: 59, scope: !3703)
!3708 = !DILocation(line: 1367, column: 6, scope: !3703)
!3709 = !DILocation(line: 1367, column: 6, scope: !3640)
!3710 = !DILocation(line: 1368, column: 8, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !3712, file: !365, line: 1368, column: 7)
!3712 = distinct !DILexicalBlock(scope: !3703, file: !365, line: 1367, column: 75)
!3713 = !DILocation(line: 1368, column: 7, scope: !3712)
!3714 = !DILocation(line: 1369, column: 41, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !3711, file: !365, line: 1368, column: 50)
!3716 = !DILocation(line: 1369, column: 4, scope: !3715)
!3717 = !DILocation(line: 1371, column: 4, scope: !3715)
!3718 = !DILocation(line: 1373, column: 2, scope: !3712)
!3719 = !DILocation(line: 1375, column: 44, scope: !3640)
!3720 = !DILocation(line: 1375, column: 53, scope: !3640)
!3721 = !DILocation(line: 1375, column: 23, scope: !3640)
!3722 = !DILocation(line: 1375, column: 65, scope: !3640)
!3723 = !DILocation(line: 1375, column: 2, scope: !3640)
!3724 = !DILocation(line: 1377, column: 6, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !3640, file: !365, line: 1377, column: 6)
!3726 = !DILocation(line: 1377, column: 21, scope: !3725)
!3727 = !DILocation(line: 1377, column: 6, scope: !3640)
!3728 = !DILocation(line: 1378, column: 43, scope: !3729)
!3729 = distinct !DILexicalBlock(scope: !3725, file: !365, line: 1377, column: 29)
!3730 = !DILocation(line: 1378, column: 56, scope: !3729)
!3731 = !DILocation(line: 1378, column: 22, scope: !3729)
!3732 = !DILocation(line: 1378, column: 68, scope: !3729)
!3733 = !DILocation(line: 1378, column: 18, scope: !3729)
!3734 = !DILocation(line: 1379, column: 21, scope: !3729)
!3735 = !DILocation(line: 1379, column: 37, scope: !3729)
!3736 = !DILocation(line: 1379, column: 3, scope: !3729)
!3737 = !DILocation(line: 1380, column: 2, scope: !3729)
!3738 = !DILocation(line: 1381, column: 1, scope: !3640)
!3739 = distinct !DISubprogram(name: "cmd_window_show", scope: !365, file: !365, line: 1428, type: !3372, isLocal: true, isDefinition: true, scopeLine: 1429, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!3740 = !DILocalVariable(name: "data", arg: 1, scope: !3739, file: !365, line: 1428, type: !193)
!3741 = !DILocation(line: 1428, column: 41, scope: !3739)
!3742 = !DILocation(line: 1430, column: 23, scope: !3739)
!3743 = !DILocation(line: 1430, column: 2, scope: !3739)
!3744 = !DILocation(line: 1431, column: 1, scope: !3739)
!3745 = distinct !DISubprogram(name: "cmd_window_up", scope: !365, file: !365, line: 1528, type: !592, isLocal: true, isDefinition: true, scopeLine: 1529, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!3746 = !DILocalVariable(name: "rec", scope: !3745, file: !365, line: 1530, type: !127)
!3747 = !DILocation(line: 1530, column: 19, scope: !3745)
!3748 = !DILocation(line: 1532, column: 36, scope: !3745)
!3749 = !DILocation(line: 1532, column: 8, scope: !3745)
!3750 = !DILocation(line: 1532, column: 6, scope: !3745)
!3751 = !DILocation(line: 1533, column: 6, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3745, file: !365, line: 1533, column: 6)
!3753 = !DILocation(line: 1533, column: 10, scope: !3752)
!3754 = !DILocation(line: 1533, column: 6, scope: !3745)
!3755 = !DILocation(line: 1534, column: 9, scope: !3752)
!3756 = !DILocation(line: 1534, column: 7, scope: !3752)
!3757 = !DILocation(line: 1534, column: 3, scope: !3752)
!3758 = !DILocation(line: 1535, column: 6, scope: !3759)
!3759 = distinct !DILexicalBlock(scope: !3745, file: !365, line: 1535, column: 6)
!3760 = !DILocation(line: 1535, column: 10, scope: !3759)
!3761 = !DILocation(line: 1535, column: 6, scope: !3745)
!3762 = !DILocation(line: 1536, column: 21, scope: !3759)
!3763 = !DILocation(line: 1536, column: 26, scope: !3759)
!3764 = !DILocation(line: 1536, column: 3, scope: !3759)
!3765 = !DILocation(line: 1537, column: 1, scope: !3745)
!3766 = distinct !DISubprogram(name: "cmd_window_down", scope: !365, file: !365, line: 1564, type: !592, isLocal: true, isDefinition: true, scopeLine: 1565, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!3767 = !DILocalVariable(name: "rec", scope: !3766, file: !365, line: 1566, type: !127)
!3768 = !DILocation(line: 1566, column: 19, scope: !3766)
!3769 = !DILocation(line: 1568, column: 37, scope: !3766)
!3770 = !DILocation(line: 1568, column: 8, scope: !3766)
!3771 = !DILocation(line: 1568, column: 6, scope: !3766)
!3772 = !DILocation(line: 1569, column: 6, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !3766, file: !365, line: 1569, column: 6)
!3774 = !DILocation(line: 1569, column: 10, scope: !3773)
!3775 = !DILocation(line: 1569, column: 6, scope: !3766)
!3776 = !DILocation(line: 1570, column: 9, scope: !3773)
!3777 = !DILocation(line: 1570, column: 7, scope: !3773)
!3778 = !DILocation(line: 1570, column: 3, scope: !3773)
!3779 = !DILocation(line: 1571, column: 6, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3766, file: !365, line: 1571, column: 6)
!3781 = !DILocation(line: 1571, column: 10, scope: !3780)
!3782 = !DILocation(line: 1571, column: 6, scope: !3766)
!3783 = !DILocation(line: 1572, column: 21, scope: !3780)
!3784 = !DILocation(line: 1572, column: 26, scope: !3780)
!3785 = !DILocation(line: 1572, column: 3, scope: !3780)
!3786 = !DILocation(line: 1573, column: 1, scope: !3766)
!3787 = distinct !DISubprogram(name: "cmd_window_left", scope: !365, file: !365, line: 1649, type: !3788, isLocal: true, isDefinition: true, scopeLine: 1650, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{null, !193, !172, !120}
!3790 = !DILocalVariable(name: "data", arg: 1, scope: !3787, file: !365, line: 1649, type: !193)
!3791 = !DILocation(line: 1649, column: 41, scope: !3787)
!3792 = !DILocalVariable(name: "server", arg: 2, scope: !3787, file: !365, line: 1649, type: !172)
!3793 = !DILocation(line: 1649, column: 59, scope: !3787)
!3794 = !DILocalVariable(name: "item", arg: 3, scope: !3787, file: !365, line: 1649, type: !120)
!3795 = !DILocation(line: 1649, column: 73, scope: !3787)
!3796 = !DILocalVariable(name: "refnum", scope: !3787, file: !365, line: 1651, type: !140)
!3797 = !DILocation(line: 1651, column: 6, scope: !3787)
!3798 = !DILocation(line: 1653, column: 30, scope: !3787)
!3799 = !DILocation(line: 1653, column: 42, scope: !3787)
!3800 = !DILocation(line: 1653, column: 11, scope: !3787)
!3801 = !DILocation(line: 1653, column: 9, scope: !3787)
!3802 = !DILocation(line: 1654, column: 6, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3787, file: !365, line: 1654, column: 6)
!3804 = !DILocation(line: 1654, column: 13, scope: !3803)
!3805 = !DILocation(line: 1654, column: 6, scope: !3787)
!3806 = !DILocation(line: 1655, column: 40, scope: !3803)
!3807 = !DILocation(line: 1655, column: 21, scope: !3803)
!3808 = !DILocation(line: 1655, column: 3, scope: !3809)
!3809 = !DILexicalBlockFile(scope: !3803, file: !365, discriminator: 1)
!3810 = !DILocation(line: 1655, column: 3, scope: !3803)
!3811 = !DILocation(line: 1656, column: 1, scope: !3787)
!3812 = distinct !DISubprogram(name: "cmd_window_right", scope: !365, file: !365, line: 1659, type: !592, isLocal: true, isDefinition: true, scopeLine: 1660, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!3813 = !DILocalVariable(name: "refnum", scope: !3812, file: !365, line: 1661, type: !140)
!3814 = !DILocation(line: 1661, column: 6, scope: !3812)
!3815 = !DILocation(line: 1663, column: 31, scope: !3812)
!3816 = !DILocation(line: 1663, column: 43, scope: !3812)
!3817 = !DILocation(line: 1663, column: 11, scope: !3812)
!3818 = !DILocation(line: 1663, column: 9, scope: !3812)
!3819 = !DILocation(line: 1664, column: 6, scope: !3820)
!3820 = distinct !DILexicalBlock(scope: !3812, file: !365, line: 1664, column: 6)
!3821 = !DILocation(line: 1664, column: 13, scope: !3820)
!3822 = !DILocation(line: 1664, column: 6, scope: !3812)
!3823 = !DILocation(line: 1665, column: 40, scope: !3820)
!3824 = !DILocation(line: 1665, column: 21, scope: !3820)
!3825 = !DILocation(line: 1665, column: 3, scope: !3826)
!3826 = !DILexicalBlockFile(scope: !3820, file: !365, discriminator: 1)
!3827 = !DILocation(line: 1665, column: 3, scope: !3820)
!3828 = !DILocation(line: 1666, column: 1, scope: !3812)
!3829 = distinct !DISubprogram(name: "cmd_window_dup", scope: !365, file: !365, line: 1540, type: !592, isLocal: true, isDefinition: true, scopeLine: 1541, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!3830 = !DILocalVariable(name: "rec", scope: !3829, file: !365, line: 1542, type: !127)
!3831 = !DILocation(line: 1542, column: 19, scope: !3829)
!3832 = !DILocation(line: 1544, column: 31, scope: !3829)
!3833 = !DILocation(line: 1544, column: 8, scope: !3829)
!3834 = !DILocation(line: 1544, column: 6, scope: !3829)
!3835 = !DILocation(line: 1545, column: 6, scope: !3836)
!3836 = distinct !DILexicalBlock(scope: !3829, file: !365, line: 1545, column: 6)
!3837 = !DILocation(line: 1545, column: 10, scope: !3836)
!3838 = !DILocation(line: 1545, column: 6, scope: !3829)
!3839 = !DILocation(line: 1546, column: 9, scope: !3836)
!3840 = !DILocation(line: 1546, column: 7, scope: !3836)
!3841 = !DILocation(line: 1546, column: 3, scope: !3836)
!3842 = !DILocation(line: 1547, column: 6, scope: !3843)
!3843 = distinct !DILexicalBlock(scope: !3829, file: !365, line: 1547, column: 6)
!3844 = !DILocation(line: 1547, column: 10, scope: !3843)
!3845 = !DILocation(line: 1547, column: 6, scope: !3829)
!3846 = !DILocation(line: 1548, column: 21, scope: !3843)
!3847 = !DILocation(line: 1548, column: 26, scope: !3843)
!3848 = !DILocation(line: 1548, column: 3, scope: !3843)
!3849 = !DILocation(line: 1549, column: 1, scope: !3829)
!3850 = distinct !DISubprogram(name: "cmd_window_ddown", scope: !365, file: !365, line: 1576, type: !592, isLocal: true, isDefinition: true, scopeLine: 1577, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!3851 = !DILocalVariable(name: "rec", scope: !3850, file: !365, line: 1578, type: !127)
!3852 = !DILocation(line: 1578, column: 19, scope: !3850)
!3853 = !DILocation(line: 1580, column: 31, scope: !3850)
!3854 = !DILocation(line: 1580, column: 8, scope: !3850)
!3855 = !DILocation(line: 1580, column: 6, scope: !3850)
!3856 = !DILocation(line: 1581, column: 6, scope: !3857)
!3857 = distinct !DILexicalBlock(scope: !3850, file: !365, line: 1581, column: 6)
!3858 = !DILocation(line: 1581, column: 10, scope: !3857)
!3859 = !DILocation(line: 1581, column: 6, scope: !3850)
!3860 = !DILocation(line: 1582, column: 9, scope: !3857)
!3861 = !DILocation(line: 1582, column: 7, scope: !3857)
!3862 = !DILocation(line: 1582, column: 3, scope: !3857)
!3863 = !DILocation(line: 1583, column: 6, scope: !3864)
!3864 = distinct !DILexicalBlock(scope: !3850, file: !365, line: 1583, column: 6)
!3865 = !DILocation(line: 1583, column: 10, scope: !3864)
!3866 = !DILocation(line: 1583, column: 6, scope: !3850)
!3867 = !DILocation(line: 1584, column: 21, scope: !3864)
!3868 = !DILocation(line: 1584, column: 26, scope: !3864)
!3869 = !DILocation(line: 1584, column: 3, scope: !3864)
!3870 = !DILocation(line: 1585, column: 1, scope: !3850)
!3871 = distinct !DISubprogram(name: "cmd_window_dleft", scope: !365, file: !365, line: 1552, type: !592, isLocal: true, isDefinition: true, scopeLine: 1553, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!3872 = !DILocalVariable(name: "rec", scope: !3871, file: !365, line: 1554, type: !127)
!3873 = !DILocation(line: 1554, column: 19, scope: !3871)
!3874 = !DILocation(line: 1556, column: 30, scope: !3871)
!3875 = !DILocation(line: 1556, column: 8, scope: !3871)
!3876 = !DILocation(line: 1556, column: 6, scope: !3871)
!3877 = !DILocation(line: 1557, column: 6, scope: !3878)
!3878 = distinct !DILexicalBlock(scope: !3871, file: !365, line: 1557, column: 6)
!3879 = !DILocation(line: 1557, column: 10, scope: !3878)
!3880 = !DILocation(line: 1557, column: 6, scope: !3871)
!3881 = !DILocation(line: 1558, column: 31, scope: !3878)
!3882 = !DILocation(line: 1558, column: 9, scope: !3878)
!3883 = !DILocation(line: 1558, column: 7, scope: !3878)
!3884 = !DILocation(line: 1558, column: 3, scope: !3878)
!3885 = !DILocation(line: 1559, column: 6, scope: !3886)
!3886 = distinct !DILexicalBlock(scope: !3871, file: !365, line: 1559, column: 6)
!3887 = !DILocation(line: 1559, column: 10, scope: !3886)
!3888 = !DILocation(line: 1559, column: 6, scope: !3871)
!3889 = !DILocation(line: 1560, column: 21, scope: !3886)
!3890 = !DILocation(line: 1560, column: 26, scope: !3886)
!3891 = !DILocation(line: 1560, column: 3, scope: !3886)
!3892 = !DILocation(line: 1561, column: 1, scope: !3871)
!3893 = distinct !DISubprogram(name: "cmd_window_dright", scope: !365, file: !365, line: 1588, type: !592, isLocal: true, isDefinition: true, scopeLine: 1589, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!3894 = !DILocalVariable(name: "rec", scope: !3893, file: !365, line: 1590, type: !127)
!3895 = !DILocation(line: 1590, column: 19, scope: !3893)
!3896 = !DILocation(line: 1592, column: 31, scope: !3893)
!3897 = !DILocation(line: 1592, column: 8, scope: !3893)
!3898 = !DILocation(line: 1592, column: 6, scope: !3893)
!3899 = !DILocation(line: 1593, column: 6, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3893, file: !365, line: 1593, column: 6)
!3901 = !DILocation(line: 1593, column: 10, scope: !3900)
!3902 = !DILocation(line: 1593, column: 6, scope: !3893)
!3903 = !DILocation(line: 1594, column: 32, scope: !3900)
!3904 = !DILocation(line: 1594, column: 9, scope: !3900)
!3905 = !DILocation(line: 1594, column: 7, scope: !3900)
!3906 = !DILocation(line: 1594, column: 3, scope: !3900)
!3907 = !DILocation(line: 1595, column: 6, scope: !3908)
!3908 = distinct !DILexicalBlock(scope: !3893, file: !365, line: 1595, column: 6)
!3909 = !DILocation(line: 1595, column: 10, scope: !3908)
!3910 = !DILocation(line: 1595, column: 6, scope: !3893)
!3911 = !DILocation(line: 1596, column: 21, scope: !3908)
!3912 = !DILocation(line: 1596, column: 26, scope: !3908)
!3913 = !DILocation(line: 1596, column: 3, scope: !3908)
!3914 = !DILocation(line: 1597, column: 1, scope: !3893)
!3915 = distinct !DISubprogram(name: "cmd_window_stick", scope: !365, file: !365, line: 1691, type: !3372, isLocal: true, isDefinition: true, scopeLine: 1692, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!3916 = !DILocalVariable(name: "data", arg: 1, scope: !3915, file: !365, line: 1691, type: !193)
!3917 = !DILocation(line: 1691, column: 42, scope: !3915)
!3918 = !DILocalVariable(name: "mainwin", scope: !3915, file: !365, line: 1693, type: !127)
!3919 = !DILocation(line: 1693, column: 26, scope: !3915)
!3920 = !DILocalVariable(name: "win", scope: !3915, file: !365, line: 1694, type: !133)
!3921 = !DILocation(line: 1694, column: 21, scope: !3915)
!3922 = !DILocation(line: 1696, column: 19, scope: !3915)
!3923 = !DILocation(line: 1696, column: 17, scope: !3915)
!3924 = !DILocation(line: 1697, column: 15, scope: !3915)
!3925 = !DILocation(line: 1697, column: 31, scope: !3915)
!3926 = !DILocation(line: 1697, column: 13, scope: !3915)
!3927 = !DILocation(line: 1699, column: 17, scope: !3928)
!3928 = distinct !DILexicalBlock(scope: !3915, file: !365, line: 1699, column: 6)
!3929 = !DILocation(line: 1699, column: 6, scope: !3928)
!3930 = !DILocation(line: 1699, column: 6, scope: !3915)
!3931 = !DILocation(line: 1701, column: 33, scope: !3932)
!3932 = distinct !DILexicalBlock(scope: !3928, file: !365, line: 1699, column: 29)
!3933 = !DILocation(line: 1701, column: 28, scope: !3932)
!3934 = !DILocation(line: 1701, column: 9, scope: !3935)
!3935 = !DILexicalBlockFile(scope: !3932, file: !365, discriminator: 1)
!3936 = !DILocation(line: 1701, column: 7, scope: !3932)
!3937 = !DILocation(line: 1702, column: 7, scope: !3938)
!3938 = distinct !DILexicalBlock(scope: !3932, file: !365, line: 1702, column: 7)
!3939 = !DILocation(line: 1702, column: 11, scope: !3938)
!3940 = !DILocation(line: 1702, column: 7, scope: !3932)
!3941 = !DILocation(line: 1703, column: 41, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !3938, file: !365, line: 1702, column: 19)
!3943 = !DILocation(line: 1703, column: 97, scope: !3942)
!3944 = !DILocation(line: 1703, column: 4, scope: !3942)
!3945 = !DILocation(line: 1705, column: 4, scope: !3942)
!3946 = !DILocation(line: 1708, column: 3, scope: !3932)
!3947 = !DILocation(line: 1708, column: 11, scope: !3935)
!3948 = !DILocation(line: 1708, column: 10, scope: !3935)
!3949 = !DILocation(line: 1708, column: 16, scope: !3935)
!3950 = !DILocation(line: 1708, column: 23, scope: !3935)
!3951 = !DILocation(line: 1708, column: 27, scope: !3952)
!3952 = !DILexicalBlockFile(scope: !3932, file: !365, discriminator: 2)
!3953 = !DILocation(line: 1708, column: 26, scope: !3952)
!3954 = !DILocation(line: 1708, column: 32, scope: !3952)
!3955 = !DILocation(line: 1708, column: 3, scope: !3956)
!3956 = !DILexicalBlockFile(scope: !3932, file: !365, discriminator: 3)
!3957 = !DILocation(line: 1708, column: 45, scope: !3958)
!3958 = !DILexicalBlockFile(scope: !3932, file: !365, discriminator: 4)
!3959 = !DILocation(line: 1708, column: 3, scope: !3958)
!3960 = distinct !{!3960, !3946}
!3961 = !DILocation(line: 1709, column: 3, scope: !3932)
!3962 = !DILocation(line: 1709, column: 11, scope: !3935)
!3963 = !DILocation(line: 1709, column: 10, scope: !3935)
!3964 = !DILocation(line: 1709, column: 16, scope: !3935)
!3965 = !DILocation(line: 1709, column: 3, scope: !3935)
!3966 = !DILocation(line: 1709, column: 28, scope: !3952)
!3967 = !DILocation(line: 1709, column: 3, scope: !3952)
!3968 = distinct !{!3968, !3961}
!3969 = !DILocation(line: 1710, column: 2, scope: !3932)
!3970 = !DILocation(line: 1712, column: 26, scope: !3971)
!3971 = distinct !DILexicalBlock(scope: !3915, file: !365, line: 1712, column: 6)
!3972 = !DILocation(line: 1712, column: 6, scope: !3971)
!3973 = !DILocation(line: 1712, column: 41, scope: !3971)
!3974 = !DILocation(line: 1712, column: 46, scope: !3971)
!3975 = !DILocation(line: 1712, column: 81, scope: !3976)
!3976 = !DILexicalBlockFile(scope: !3971, file: !365, discriminator: 1)
!3977 = !DILocation(line: 1712, column: 80, scope: !3976)
!3978 = !DILocation(line: 1712, column: 57, scope: !3976)
!3979 = !DILocation(line: 1712, column: 49, scope: !3976)
!3980 = !DILocation(line: 1712, column: 88, scope: !3976)
!3981 = !DILocation(line: 1712, column: 6, scope: !3976)
!3982 = !DILocation(line: 1714, column: 30, scope: !3983)
!3983 = distinct !DILexicalBlock(scope: !3984, file: !365, line: 1714, column: 7)
!3984 = distinct !DILexicalBlock(scope: !3971, file: !365, line: 1712, column: 96)
!3985 = !DILocation(line: 1714, column: 36, scope: !3983)
!3986 = !DILocation(line: 1714, column: 9, scope: !3983)
!3987 = !DILocation(line: 1714, column: 48, scope: !3983)
!3988 = !DILocation(line: 1714, column: 8, scope: !3983)
!3989 = !DILocation(line: 1714, column: 7, scope: !3984)
!3990 = !DILocation(line: 1715, column: 41, scope: !3991)
!3991 = distinct !DILexicalBlock(scope: !3983, file: !365, line: 1714, column: 56)
!3992 = !DILocation(line: 1715, column: 4, scope: !3991)
!3993 = !DILocation(line: 1717, column: 3, scope: !3991)
!3994 = !DILocation(line: 1718, column: 49, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !3983, file: !365, line: 1717, column: 10)
!3996 = !DILocation(line: 1718, column: 25, scope: !3995)
!3997 = !DILocation(line: 1719, column: 41, scope: !3995)
!3998 = !DILocation(line: 1719, column: 4, scope: !3995)
!3999 = !DILocation(line: 1722, column: 2, scope: !3984)
!4000 = !DILocation(line: 1724, column: 19, scope: !4001)
!4001 = distinct !DILexicalBlock(scope: !3971, file: !365, line: 1722, column: 9)
!4002 = !DILocation(line: 1724, column: 24, scope: !4001)
!4003 = !DILocation(line: 1724, column: 3, scope: !4001)
!4004 = !DILocation(line: 1725, column: 39, scope: !4001)
!4005 = !DILocation(line: 1725, column: 17, scope: !4001)
!4006 = !DILocation(line: 1727, column: 40, scope: !4001)
!4007 = !DILocation(line: 1727, column: 3, scope: !4001)
!4008 = !DILocation(line: 1730, column: 1, scope: !3915)
!4009 = distinct !DISubprogram(name: "cmd_window_move_left", scope: !365, file: !365, line: 1733, type: !592, isLocal: true, isDefinition: true, scopeLine: 1734, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!4010 = !DILocalVariable(name: "refnum", scope: !4009, file: !365, line: 1735, type: !140)
!4011 = !DILocation(line: 1735, column: 6, scope: !4009)
!4012 = !DILocation(line: 1737, column: 30, scope: !4009)
!4013 = !DILocation(line: 1737, column: 42, scope: !4009)
!4014 = !DILocation(line: 1737, column: 11, scope: !4009)
!4015 = !DILocation(line: 1737, column: 9, scope: !4009)
!4016 = !DILocation(line: 1738, column: 6, scope: !4017)
!4017 = distinct !DILexicalBlock(scope: !4009, file: !365, line: 1738, column: 6)
!4018 = !DILocation(line: 1738, column: 13, scope: !4017)
!4019 = !DILocation(line: 1738, column: 6, scope: !4009)
!4020 = !DILocation(line: 1739, column: 21, scope: !4017)
!4021 = !DILocation(line: 1739, column: 33, scope: !4017)
!4022 = !DILocation(line: 1739, column: 3, scope: !4017)
!4023 = !DILocation(line: 1740, column: 1, scope: !4009)
!4024 = distinct !DISubprogram(name: "cmd_window_move_right", scope: !365, file: !365, line: 1743, type: !592, isLocal: true, isDefinition: true, scopeLine: 1744, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!4025 = !DILocalVariable(name: "refnum", scope: !4024, file: !365, line: 1745, type: !140)
!4026 = !DILocation(line: 1745, column: 6, scope: !4024)
!4027 = !DILocation(line: 1747, column: 31, scope: !4024)
!4028 = !DILocation(line: 1747, column: 43, scope: !4024)
!4029 = !DILocation(line: 1747, column: 11, scope: !4024)
!4030 = !DILocation(line: 1747, column: 9, scope: !4024)
!4031 = !DILocation(line: 1748, column: 6, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !4024, file: !365, line: 1748, column: 6)
!4033 = !DILocation(line: 1748, column: 13, scope: !4032)
!4034 = !DILocation(line: 1748, column: 6, scope: !4024)
!4035 = !DILocation(line: 1749, column: 21, scope: !4032)
!4036 = !DILocation(line: 1749, column: 33, scope: !4032)
!4037 = !DILocation(line: 1749, column: 3, scope: !4032)
!4038 = !DILocation(line: 1750, column: 1, scope: !4024)
!4039 = distinct !DISubprogram(name: "cmd_window_move_up", scope: !365, file: !365, line: 1777, type: !592, isLocal: true, isDefinition: true, scopeLine: 1778, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!4040 = !DILocalVariable(name: "rec", scope: !4039, file: !365, line: 1779, type: !127)
!4041 = !DILocation(line: 1779, column: 19, scope: !4039)
!4042 = !DILocation(line: 1781, column: 36, scope: !4039)
!4043 = !DILocation(line: 1781, column: 8, scope: !4039)
!4044 = !DILocation(line: 1781, column: 6, scope: !4039)
!4045 = !DILocation(line: 1782, column: 6, scope: !4046)
!4046 = distinct !DILexicalBlock(scope: !4039, file: !365, line: 1782, column: 6)
!4047 = !DILocation(line: 1782, column: 10, scope: !4046)
!4048 = !DILocation(line: 1782, column: 6, scope: !4039)
!4049 = !DILocation(line: 1783, column: 19, scope: !4046)
!4050 = !DILocation(line: 1783, column: 31, scope: !4046)
!4051 = !DILocation(line: 1783, column: 3, scope: !4046)
!4052 = !DILocation(line: 1784, column: 1, scope: !4039)
!4053 = distinct !DISubprogram(name: "cmd_window_move_down", scope: !365, file: !365, line: 1787, type: !592, isLocal: true, isDefinition: true, scopeLine: 1788, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!4054 = !DILocalVariable(name: "rec", scope: !4053, file: !365, line: 1789, type: !127)
!4055 = !DILocation(line: 1789, column: 19, scope: !4053)
!4056 = !DILocation(line: 1791, column: 37, scope: !4053)
!4057 = !DILocation(line: 1791, column: 8, scope: !4053)
!4058 = !DILocation(line: 1791, column: 6, scope: !4053)
!4059 = !DILocation(line: 1792, column: 6, scope: !4060)
!4060 = distinct !DILexicalBlock(scope: !4053, file: !365, line: 1792, column: 6)
!4061 = !DILocation(line: 1792, column: 10, scope: !4060)
!4062 = !DILocation(line: 1792, column: 6, scope: !4053)
!4063 = !DILocation(line: 1793, column: 19, scope: !4060)
!4064 = !DILocation(line: 1793, column: 31, scope: !4060)
!4065 = !DILocation(line: 1793, column: 3, scope: !4060)
!4066 = !DILocation(line: 1794, column: 1, scope: !4053)
!4067 = distinct !DISubprogram(name: "cmd_window_move_dleft", scope: !365, file: !365, line: 1753, type: !592, isLocal: true, isDefinition: true, scopeLine: 1754, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!4068 = !DILocalVariable(name: "rec", scope: !4067, file: !365, line: 1755, type: !127)
!4069 = !DILocation(line: 1755, column: 19, scope: !4067)
!4070 = !DILocation(line: 1757, column: 30, scope: !4067)
!4071 = !DILocation(line: 1757, column: 8, scope: !4067)
!4072 = !DILocation(line: 1757, column: 6, scope: !4067)
!4073 = !DILocation(line: 1758, column: 6, scope: !4074)
!4074 = distinct !DILexicalBlock(scope: !4067, file: !365, line: 1758, column: 6)
!4075 = !DILocation(line: 1758, column: 10, scope: !4074)
!4076 = !DILocation(line: 1758, column: 6, scope: !4067)
!4077 = !DILocation(line: 1759, column: 31, scope: !4074)
!4078 = !DILocation(line: 1759, column: 9, scope: !4074)
!4079 = !DILocation(line: 1759, column: 7, scope: !4074)
!4080 = !DILocation(line: 1759, column: 3, scope: !4074)
!4081 = !DILocation(line: 1760, column: 6, scope: !4082)
!4082 = distinct !DILexicalBlock(scope: !4067, file: !365, line: 1760, column: 6)
!4083 = !DILocation(line: 1760, column: 10, scope: !4082)
!4084 = !DILocation(line: 1760, column: 6, scope: !4067)
!4085 = !DILocation(line: 1761, column: 19, scope: !4082)
!4086 = !DILocation(line: 1761, column: 31, scope: !4082)
!4087 = !DILocation(line: 1761, column: 3, scope: !4082)
!4088 = !DILocation(line: 1762, column: 1, scope: !4067)
!4089 = distinct !DISubprogram(name: "cmd_window_move_dright", scope: !365, file: !365, line: 1765, type: !592, isLocal: true, isDefinition: true, scopeLine: 1766, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!4090 = !DILocalVariable(name: "rec", scope: !4089, file: !365, line: 1767, type: !127)
!4091 = !DILocation(line: 1767, column: 19, scope: !4089)
!4092 = !DILocation(line: 1769, column: 31, scope: !4089)
!4093 = !DILocation(line: 1769, column: 8, scope: !4089)
!4094 = !DILocation(line: 1769, column: 6, scope: !4089)
!4095 = !DILocation(line: 1770, column: 6, scope: !4096)
!4096 = distinct !DILexicalBlock(scope: !4089, file: !365, line: 1770, column: 6)
!4097 = !DILocation(line: 1770, column: 10, scope: !4096)
!4098 = !DILocation(line: 1770, column: 6, scope: !4089)
!4099 = !DILocation(line: 1771, column: 32, scope: !4096)
!4100 = !DILocation(line: 1771, column: 9, scope: !4096)
!4101 = !DILocation(line: 1771, column: 7, scope: !4096)
!4102 = !DILocation(line: 1771, column: 3, scope: !4096)
!4103 = !DILocation(line: 1772, column: 6, scope: !4104)
!4104 = distinct !DILexicalBlock(scope: !4089, file: !365, line: 1772, column: 6)
!4105 = !DILocation(line: 1772, column: 10, scope: !4104)
!4106 = !DILocation(line: 1772, column: 6, scope: !4089)
!4107 = !DILocation(line: 1773, column: 19, scope: !4104)
!4108 = !DILocation(line: 1773, column: 31, scope: !4104)
!4109 = !DILocation(line: 1773, column: 3, scope: !4104)
!4110 = !DILocation(line: 1774, column: 1, scope: !4089)
!4111 = distinct !DISubprogram(name: "cmd_window_rgrow", scope: !365, file: !365, line: 1455, type: !3372, isLocal: true, isDefinition: true, scopeLine: 1456, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!4112 = !DILocalVariable(name: "data", arg: 1, scope: !4111, file: !365, line: 1455, type: !193)
!4113 = !DILocation(line: 1455, column: 42, scope: !4111)
!4114 = !DILocalVariable(name: "count", scope: !4111, file: !365, line: 1457, type: !140)
!4115 = !DILocation(line: 1457, column: 6, scope: !4111)
!4116 = !DILocation(line: 1459, column: 11, scope: !4111)
!4117 = !DILocation(line: 1459, column: 10, scope: !4111)
!4118 = !DILocation(line: 1459, column: 16, scope: !4111)
!4119 = !DILocation(line: 1459, column: 10, scope: !4120)
!4120 = !DILexicalBlockFile(scope: !4111, file: !365, discriminator: 1)
!4121 = !DILocation(line: 1459, column: 35, scope: !4122)
!4122 = !DILexicalBlockFile(scope: !4111, file: !365, discriminator: 2)
!4123 = !DILocation(line: 1459, column: 30, scope: !4122)
!4124 = !DILocation(line: 1459, column: 10, scope: !4122)
!4125 = !DILocation(line: 1459, column: 10, scope: !4126)
!4126 = !DILexicalBlockFile(scope: !4111, file: !365, discriminator: 3)
!4127 = !DILocation(line: 1459, column: 8, scope: !4126)
!4128 = !DILocation(line: 1461, column: 19, scope: !4111)
!4129 = !DILocation(line: 1461, column: 2, scope: !4111)
!4130 = !DILocation(line: 1462, column: 1, scope: !4111)
!4131 = distinct !DISubprogram(name: "cmd_window_rshrink", scope: !365, file: !365, line: 1465, type: !3372, isLocal: true, isDefinition: true, scopeLine: 1466, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!4132 = !DILocalVariable(name: "data", arg: 1, scope: !4131, file: !365, line: 1465, type: !193)
!4133 = !DILocation(line: 1465, column: 44, scope: !4131)
!4134 = !DILocalVariable(name: "count", scope: !4131, file: !365, line: 1467, type: !140)
!4135 = !DILocation(line: 1467, column: 6, scope: !4131)
!4136 = !DILocation(line: 1469, column: 11, scope: !4131)
!4137 = !DILocation(line: 1469, column: 10, scope: !4131)
!4138 = !DILocation(line: 1469, column: 16, scope: !4131)
!4139 = !DILocation(line: 1469, column: 10, scope: !4140)
!4140 = !DILexicalBlockFile(scope: !4131, file: !365, discriminator: 1)
!4141 = !DILocation(line: 1469, column: 35, scope: !4142)
!4142 = !DILexicalBlockFile(scope: !4131, file: !365, discriminator: 2)
!4143 = !DILocation(line: 1469, column: 30, scope: !4142)
!4144 = !DILocation(line: 1469, column: 10, scope: !4142)
!4145 = !DILocation(line: 1469, column: 10, scope: !4146)
!4146 = !DILexicalBlockFile(scope: !4131, file: !365, discriminator: 3)
!4147 = !DILocation(line: 1469, column: 8, scope: !4146)
!4148 = !DILocation(line: 1470, column: 6, scope: !4149)
!4149 = distinct !DILexicalBlock(scope: !4131, file: !365, line: 1470, column: 6)
!4150 = !DILocation(line: 1470, column: 12, scope: !4149)
!4151 = !DILocation(line: 1470, column: 6, scope: !4131)
!4152 = !DILocation(line: 1470, column: 33, scope: !4153)
!4153 = !DILexicalBlockFile(scope: !4149, file: !365, discriminator: 1)
!4154 = !DILocation(line: 1470, column: 27, scope: !4153)
!4155 = !DILocation(line: 1472, column: 20, scope: !4131)
!4156 = !DILocation(line: 1472, column: 19, scope: !4131)
!4157 = !DILocation(line: 1472, column: 2, scope: !4131)
!4158 = !DILocation(line: 1473, column: 1, scope: !4131)
!4159 = distinct !DISubprogram(name: "cmd_window_rsize", scope: !365, file: !365, line: 1476, type: !3372, isLocal: true, isDefinition: true, scopeLine: 1477, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!4160 = !DILocalVariable(name: "data", arg: 1, scope: !4159, file: !365, line: 1476, type: !193)
!4161 = !DILocation(line: 1476, column: 42, scope: !4159)
!4162 = !DILocalVariable(name: "rsize", scope: !4159, file: !365, line: 1478, type: !140)
!4163 = !DILocation(line: 1478, column: 6, scope: !4159)
!4164 = !DILocation(line: 1480, column: 18, scope: !4165)
!4165 = distinct !DILexicalBlock(scope: !4159, file: !365, line: 1480, column: 6)
!4166 = !DILocation(line: 1480, column: 7, scope: !4165)
!4167 = !DILocation(line: 1480, column: 6, scope: !4159)
!4168 = !DILocation(line: 1480, column: 28, scope: !4169)
!4169 = !DILexicalBlockFile(scope: !4165, file: !365, discriminator: 1)
!4170 = !DILocation(line: 1481, column: 15, scope: !4159)
!4171 = !DILocation(line: 1481, column: 10, scope: !4159)
!4172 = !DILocation(line: 1481, column: 8, scope: !4159)
!4173 = !DILocation(line: 1483, column: 36, scope: !4159)
!4174 = !DILocation(line: 1483, column: 49, scope: !4159)
!4175 = !DILocation(line: 1483, column: 15, scope: !4159)
!4176 = !DILocation(line: 1483, column: 61, scope: !4159)
!4177 = !DILocation(line: 1483, column: 71, scope: !4159)
!4178 = !DILocation(line: 1483, column: 101, scope: !4159)
!4179 = !DILocation(line: 1483, column: 114, scope: !4159)
!4180 = !DILocation(line: 1483, column: 80, scope: !4159)
!4181 = !DILocation(line: 1483, column: 126, scope: !4159)
!4182 = !DILocation(line: 1483, column: 136, scope: !4159)
!4183 = !DILocation(line: 1483, column: 76, scope: !4159)
!4184 = !DILocation(line: 1483, column: 8, scope: !4159)
!4185 = !DILocation(line: 1485, column: 19, scope: !4159)
!4186 = !DILocation(line: 1485, column: 2, scope: !4159)
!4187 = !DILocation(line: 1486, column: 1, scope: !4159)
!4188 = !DILocation(line: 1486, column: 1, scope: !4189)
!4189 = !DILexicalBlockFile(scope: !4159, file: !365, discriminator: 1)
!4190 = distinct !DISubprogram(name: "cmd_window_rbalance", scope: !365, file: !365, line: 1489, type: !592, isLocal: true, isDefinition: true, scopeLine: 1490, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!4191 = !DILocalVariable(name: "line", scope: !4190, file: !365, line: 1491, type: !147)
!4192 = !DILocation(line: 1491, column: 10, scope: !4190)
!4193 = !DILocalVariable(name: "ltmp", scope: !4190, file: !365, line: 1491, type: !147)
!4194 = !DILocation(line: 1491, column: 17, scope: !4190)
!4195 = !DILocalVariable(name: "avail_width", scope: !4190, file: !365, line: 1492, type: !140)
!4196 = !DILocation(line: 1492, column: 6, scope: !4190)
!4197 = !DILocalVariable(name: "unit_width", scope: !4190, file: !365, line: 1492, type: !140)
!4198 = !DILocation(line: 1492, column: 19, scope: !4190)
!4199 = !DILocalVariable(name: "bigger_units", scope: !4190, file: !365, line: 1492, type: !140)
!4200 = !DILocation(line: 1492, column: 31, scope: !4190)
!4201 = !DILocalVariable(name: "windows", scope: !4190, file: !365, line: 1493, type: !140)
!4202 = !DILocation(line: 1493, column: 6, scope: !4190)
!4203 = !DILocalVariable(name: "last_column", scope: !4190, file: !365, line: 1493, type: !140)
!4204 = !DILocation(line: 1493, column: 15, scope: !4190)
!4205 = !DILocalVariable(name: "old_width", scope: !4190, file: !365, line: 1493, type: !140)
!4206 = !DILocation(line: 1493, column: 28, scope: !4190)
!4207 = !DILocalVariable(name: "win", scope: !4190, file: !365, line: 1494, type: !127)
!4208 = !DILocation(line: 1494, column: 19, scope: !4190)
!4209 = !DILocation(line: 1496, column: 53, scope: !4190)
!4210 = !DILocation(line: 1496, column: 66, scope: !4190)
!4211 = !DILocation(line: 1496, column: 32, scope: !4190)
!4212 = !DILocation(line: 1496, column: 78, scope: !4190)
!4213 = !DILocation(line: 1496, column: 9, scope: !4190)
!4214 = !DILocation(line: 1496, column: 7, scope: !4190)
!4215 = !DILocation(line: 1497, column: 27, scope: !4190)
!4216 = !DILocation(line: 1497, column: 12, scope: !4190)
!4217 = !DILocation(line: 1497, column: 10, scope: !4190)
!4218 = !DILocation(line: 1498, column: 6, scope: !4219)
!4219 = distinct !DILexicalBlock(scope: !4190, file: !365, line: 1498, column: 6)
!4220 = !DILocation(line: 1498, column: 14, scope: !4219)
!4221 = !DILocation(line: 1498, column: 6, scope: !4190)
!4222 = !DILocation(line: 1499, column: 16, scope: !4223)
!4223 = distinct !DILexicalBlock(scope: !4219, file: !365, line: 1498, column: 20)
!4224 = !DILocation(line: 1499, column: 3, scope: !4223)
!4225 = !DILocation(line: 1500, column: 3, scope: !4223)
!4226 = !DILocation(line: 1503, column: 16, scope: !4190)
!4227 = !DILocation(line: 1503, column: 29, scope: !4190)
!4228 = !DILocation(line: 1503, column: 27, scope: !4190)
!4229 = !DILocation(line: 1503, column: 50, scope: !4190)
!4230 = !DILocation(line: 1503, column: 49, scope: !4190)
!4231 = !DILocation(line: 1503, column: 74, scope: !4190)
!4232 = !DILocation(line: 1503, column: 72, scope: !4190)
!4233 = !DILocation(line: 1503, column: 82, scope: !4190)
!4234 = !DILocation(line: 1503, column: 14, scope: !4190)
!4235 = !DILocation(line: 1504, column: 15, scope: !4190)
!4236 = !DILocation(line: 1504, column: 27, scope: !4190)
!4237 = !DILocation(line: 1504, column: 26, scope: !4190)
!4238 = !DILocation(line: 1504, column: 13, scope: !4190)
!4239 = !DILocation(line: 1505, column: 17, scope: !4190)
!4240 = !DILocation(line: 1505, column: 29, scope: !4190)
!4241 = !DILocation(line: 1505, column: 28, scope: !4190)
!4242 = !DILocation(line: 1505, column: 15, scope: !4190)
!4243 = !DILocation(line: 1507, column: 16, scope: !4190)
!4244 = !DILocation(line: 1507, column: 14, scope: !4190)
!4245 = !DILocation(line: 1508, column: 14, scope: !4246)
!4246 = distinct !DILexicalBlock(scope: !4190, file: !365, line: 1508, column: 2)
!4247 = !DILocation(line: 1508, column: 12, scope: !4246)
!4248 = !DILocation(line: 1508, column: 7, scope: !4246)
!4249 = !DILocation(line: 1508, column: 20, scope: !4250)
!4250 = !DILexicalBlockFile(scope: !4251, file: !365, discriminator: 1)
!4251 = distinct !DILexicalBlock(scope: !4246, file: !365, line: 1508, column: 2)
!4252 = !DILocation(line: 1508, column: 25, scope: !4250)
!4253 = !DILocation(line: 1508, column: 2, scope: !4250)
!4254 = !DILocation(line: 1509, column: 9, scope: !4255)
!4255 = distinct !DILexicalBlock(scope: !4251, file: !365, line: 1508, column: 52)
!4256 = !DILocation(line: 1509, column: 15, scope: !4255)
!4257 = !DILocation(line: 1509, column: 7, scope: !4255)
!4258 = !DILocation(line: 1510, column: 15, scope: !4255)
!4259 = !DILocation(line: 1510, column: 20, scope: !4255)
!4260 = !DILocation(line: 1510, column: 13, scope: !4255)
!4261 = !DILocation(line: 1511, column: 23, scope: !4255)
!4262 = !DILocation(line: 1511, column: 3, scope: !4255)
!4263 = !DILocation(line: 1511, column: 8, scope: !4255)
!4264 = !DILocation(line: 1511, column: 21, scope: !4255)
!4265 = !DILocation(line: 1512, column: 22, scope: !4255)
!4266 = !DILocation(line: 1512, column: 27, scope: !4255)
!4267 = !DILocation(line: 1512, column: 42, scope: !4255)
!4268 = !DILocation(line: 1512, column: 40, scope: !4255)
!4269 = !DILocation(line: 1512, column: 52, scope: !4255)
!4270 = !DILocation(line: 1512, column: 3, scope: !4255)
!4271 = !DILocation(line: 1512, column: 8, scope: !4255)
!4272 = !DILocation(line: 1512, column: 20, scope: !4255)
!4273 = !DILocation(line: 1514, column: 7, scope: !4274)
!4274 = distinct !DILexicalBlock(scope: !4255, file: !365, line: 1514, column: 7)
!4275 = !DILocation(line: 1514, column: 20, scope: !4274)
!4276 = !DILocation(line: 1514, column: 7, scope: !4255)
!4277 = !DILocation(line: 1515, column: 4, scope: !4278)
!4278 = distinct !DILexicalBlock(scope: !4274, file: !365, line: 1514, column: 25)
!4279 = !DILocation(line: 1515, column: 9, scope: !4278)
!4280 = !DILocation(line: 1515, column: 20, scope: !4278)
!4281 = !DILocation(line: 1516, column: 16, scope: !4278)
!4282 = !DILocation(line: 1517, column: 3, scope: !4278)
!4283 = !DILocation(line: 1519, column: 21, scope: !4255)
!4284 = !DILocation(line: 1519, column: 26, scope: !4255)
!4285 = !DILocation(line: 1519, column: 31, scope: !4255)
!4286 = !DILocation(line: 1519, column: 45, scope: !4255)
!4287 = !DILocation(line: 1519, column: 50, scope: !4255)
!4288 = !DILocation(line: 1519, column: 43, scope: !4255)
!4289 = !DILocation(line: 1519, column: 63, scope: !4255)
!4290 = !DILocation(line: 1519, column: 69, scope: !4255)
!4291 = !DILocation(line: 1519, column: 67, scope: !4255)
!4292 = !DILocation(line: 1519, column: 3, scope: !4255)
!4293 = !DILocation(line: 1520, column: 17, scope: !4255)
!4294 = !DILocation(line: 1520, column: 22, scope: !4255)
!4295 = !DILocation(line: 1520, column: 33, scope: !4255)
!4296 = !DILocation(line: 1520, column: 15, scope: !4255)
!4297 = !DILocation(line: 1521, column: 2, scope: !4255)
!4298 = !DILocation(line: 1508, column: 40, scope: !4299)
!4299 = !DILexicalBlockFile(scope: !4251, file: !365, discriminator: 2)
!4300 = !DILocation(line: 1508, column: 46, scope: !4299)
!4301 = !DILocation(line: 1508, column: 38, scope: !4299)
!4302 = !DILocation(line: 1508, column: 2, scope: !4299)
!4303 = distinct !{!4303, !4304}
!4304 = !DILocation(line: 1508, column: 2, scope: !4190)
!4305 = !DILocation(line: 1522, column: 15, scope: !4190)
!4306 = !DILocation(line: 1522, column: 2, scope: !4190)
!4307 = !DILocation(line: 1524, column: 2, scope: !4190)
!4308 = !DILocation(line: 1525, column: 1, scope: !4190)
!4309 = !DILocation(line: 1525, column: 1, scope: !4310)
!4310 = !DILexicalBlockFile(scope: !4190, file: !365, discriminator: 1)
!4311 = distinct !DISubprogram(name: "cmd_window_rshow", scope: !365, file: !365, line: 1434, type: !3372, isLocal: true, isDefinition: true, scopeLine: 1435, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!4312 = !DILocalVariable(name: "data", arg: 1, scope: !4311, file: !365, line: 1434, type: !193)
!4313 = !DILocation(line: 1434, column: 42, scope: !4311)
!4314 = !DILocation(line: 1436, column: 23, scope: !4311)
!4315 = !DILocation(line: 1436, column: 2, scope: !4311)
!4316 = !DILocation(line: 1437, column: 1, scope: !4311)
!4317 = distinct !DISubprogram(name: "sig_window_print_info", scope: !365, file: !365, line: 1820, type: !4318, isLocal: true, isDefinition: true, scopeLine: 1821, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!4318 = !DISubroutineType(types: !4319)
!4319 = !{null, !133}
!4320 = !DILocalVariable(name: "win", arg: 1, scope: !4317, file: !365, line: 1820, type: !133)
!4321 = !DILocation(line: 1820, column: 47, scope: !4317)
!4322 = !DILocalVariable(name: "gui", scope: !4317, file: !365, line: 1822, type: !121)
!4323 = !DILocation(line: 1822, column: 18, scope: !4317)
!4324 = !DILocation(line: 1824, column: 30, scope: !4317)
!4325 = !DILocation(line: 1824, column: 36, scope: !4317)
!4326 = !DILocation(line: 1824, column: 9, scope: !4317)
!4327 = !DILocation(line: 1824, column: 6, scope: !4317)
!4328 = !DILocation(line: 1825, column: 6, scope: !4329)
!4329 = distinct !DILexicalBlock(scope: !4317, file: !365, line: 1825, column: 6)
!4330 = !DILocation(line: 1825, column: 11, scope: !4329)
!4331 = !DILocation(line: 1825, column: 6, scope: !4317)
!4332 = !DILocation(line: 1826, column: 40, scope: !4333)
!4333 = distinct !DILexicalBlock(scope: !4329, file: !365, line: 1825, column: 23)
!4334 = !DILocation(line: 1826, column: 90, scope: !4333)
!4335 = !DILocation(line: 1826, column: 95, scope: !4333)
!4336 = !DILocation(line: 1826, column: 3, scope: !4333)
!4337 = !DILocation(line: 1829, column: 2, scope: !4333)
!4338 = !DILocation(line: 1831, column: 29, scope: !4339)
!4339 = distinct !DILexicalBlock(scope: !4317, file: !365, line: 1831, column: 6)
!4340 = !DILocation(line: 1831, column: 35, scope: !4339)
!4341 = !DILocation(line: 1831, column: 8, scope: !4339)
!4342 = !DILocation(line: 1831, column: 47, scope: !4339)
!4343 = !DILocation(line: 1831, column: 56, scope: !4339)
!4344 = !DILocation(line: 1831, column: 6, scope: !4339)
!4345 = !DILocation(line: 1831, column: 6, scope: !4317)
!4346 = !DILocation(line: 1832, column: 38, scope: !4339)
!4347 = !DILocation(line: 1832, column: 17, scope: !4339)
!4348 = !DILocation(line: 1833, column: 1, scope: !4317)
!4349 = distinct !DISubprogram(name: "mainwindows_deinit", scope: !365, file: !365, line: 1875, type: !592, isLocal: false, isDefinition: true, scopeLine: 1876, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!4350 = !DILocation(line: 1877, column: 2, scope: !4349)
!4351 = !DILocation(line: 1877, column: 9, scope: !4352)
!4352 = !DILexicalBlockFile(scope: !4349, file: !365, discriminator: 1)
!4353 = !DILocation(line: 1877, column: 21, scope: !4352)
!4354 = !DILocation(line: 1877, column: 2, scope: !4352)
!4355 = !DILocation(line: 1878, column: 22, scope: !4349)
!4356 = !DILocation(line: 1878, column: 35, scope: !4349)
!4357 = !DILocation(line: 1878, column: 3, scope: !4349)
!4358 = !DILocation(line: 1877, column: 2, scope: !4359)
!4359 = !DILexicalBlockFile(scope: !4349, file: !365, discriminator: 2)
!4360 = distinct !{!4360, !4350}
!4361 = !DILocation(line: 1879, column: 9, scope: !4349)
!4362 = !DILocation(line: 1879, column: 2, scope: !4349)
!4363 = !DILocation(line: 1881, column: 2, scope: !4349)
!4364 = !DILocation(line: 1882, column: 2, scope: !4349)
!4365 = !DILocation(line: 1883, column: 2, scope: !4349)
!4366 = !DILocation(line: 1884, column: 2, scope: !4349)
!4367 = !DILocation(line: 1885, column: 2, scope: !4349)
!4368 = !DILocation(line: 1886, column: 2, scope: !4349)
!4369 = !DILocation(line: 1887, column: 2, scope: !4349)
!4370 = !DILocation(line: 1888, column: 2, scope: !4349)
!4371 = !DILocation(line: 1889, column: 2, scope: !4349)
!4372 = !DILocation(line: 1890, column: 2, scope: !4349)
!4373 = !DILocation(line: 1891, column: 2, scope: !4349)
!4374 = !DILocation(line: 1892, column: 2, scope: !4349)
!4375 = !DILocation(line: 1893, column: 2, scope: !4349)
!4376 = !DILocation(line: 1894, column: 2, scope: !4349)
!4377 = !DILocation(line: 1895, column: 2, scope: !4349)
!4378 = !DILocation(line: 1896, column: 2, scope: !4349)
!4379 = !DILocation(line: 1897, column: 2, scope: !4349)
!4380 = !DILocation(line: 1898, column: 2, scope: !4349)
!4381 = !DILocation(line: 1899, column: 2, scope: !4349)
!4382 = !DILocation(line: 1900, column: 2, scope: !4349)
!4383 = !DILocation(line: 1901, column: 2, scope: !4349)
!4384 = !DILocation(line: 1902, column: 2, scope: !4349)
!4385 = !DILocation(line: 1903, column: 2, scope: !4349)
!4386 = !DILocation(line: 1904, column: 2, scope: !4349)
!4387 = !DILocation(line: 1905, column: 2, scope: !4349)
!4388 = !DILocation(line: 1906, column: 2, scope: !4349)
!4389 = !DILocation(line: 1907, column: 2, scope: !4349)
!4390 = !DILocation(line: 1908, column: 1, scope: !4349)
!4391 = distinct !DISubprogram(name: "find_window_with_room", scope: !365, file: !365, line: 57, type: !1081, isLocal: true, isDefinition: true, scopeLine: 58, isOptimized: false, unit: !0, variables: !380)
!4392 = !DILocalVariable(name: "biggest_rec", scope: !4391, file: !365, line: 59, type: !127)
!4393 = !DILocation(line: 59, column: 19, scope: !4391)
!4394 = !DILocalVariable(name: "tmp", scope: !4391, file: !365, line: 60, type: !147)
!4395 = !DILocation(line: 60, column: 10, scope: !4391)
!4396 = !DILocalVariable(name: "space", scope: !4391, file: !365, line: 61, type: !140)
!4397 = !DILocation(line: 61, column: 6, scope: !4391)
!4398 = !DILocalVariable(name: "biggest", scope: !4391, file: !365, line: 61, type: !140)
!4399 = !DILocation(line: 61, column: 13, scope: !4391)
!4400 = !DILocation(line: 63, column: 10, scope: !4391)
!4401 = !DILocation(line: 63, column: 27, scope: !4391)
!4402 = !DILocation(line: 64, column: 13, scope: !4403)
!4403 = distinct !DILexicalBlock(scope: !4391, file: !365, line: 64, column: 2)
!4404 = !DILocation(line: 64, column: 11, scope: !4403)
!4405 = !DILocation(line: 64, column: 7, scope: !4403)
!4406 = !DILocation(line: 64, column: 26, scope: !4407)
!4407 = !DILexicalBlockFile(scope: !4408, file: !365, discriminator: 1)
!4408 = distinct !DILexicalBlock(scope: !4403, file: !365, line: 64, column: 2)
!4409 = !DILocation(line: 64, column: 30, scope: !4407)
!4410 = !DILocation(line: 64, column: 2, scope: !4407)
!4411 = !DILocalVariable(name: "rec", scope: !4412, file: !365, line: 65, type: !127)
!4412 = distinct !DILexicalBlock(scope: !4408, file: !365, line: 64, column: 55)
!4413 = !DILocation(line: 65, column: 20, scope: !4412)
!4414 = !DILocation(line: 65, column: 26, scope: !4412)
!4415 = !DILocation(line: 65, column: 31, scope: !4412)
!4416 = !DILocation(line: 67, column: 13, scope: !4412)
!4417 = !DILocation(line: 67, column: 19, scope: !4412)
!4418 = !DILocation(line: 67, column: 27, scope: !4412)
!4419 = !DILocation(line: 67, column: 33, scope: !4412)
!4420 = !DILocation(line: 67, column: 25, scope: !4412)
!4421 = !DILocation(line: 67, column: 9, scope: !4412)
!4422 = !DILocation(line: 68, column: 7, scope: !4423)
!4423 = distinct !DILexicalBlock(scope: !4412, file: !365, line: 68, column: 7)
!4424 = !DILocation(line: 68, column: 13, scope: !4423)
!4425 = !DILocation(line: 68, column: 27, scope: !4423)
!4426 = !DILocation(line: 68, column: 30, scope: !4427)
!4427 = !DILexicalBlockFile(scope: !4423, file: !365, discriminator: 1)
!4428 = !DILocation(line: 68, column: 38, scope: !4427)
!4429 = !DILocation(line: 68, column: 36, scope: !4427)
!4430 = !DILocation(line: 68, column: 7, scope: !4427)
!4431 = !DILocation(line: 69, column: 14, scope: !4432)
!4432 = distinct !DILexicalBlock(scope: !4423, file: !365, line: 68, column: 47)
!4433 = !DILocation(line: 69, column: 12, scope: !4432)
!4434 = !DILocation(line: 70, column: 18, scope: !4432)
!4435 = !DILocation(line: 70, column: 16, scope: !4432)
!4436 = !DILocation(line: 71, column: 3, scope: !4432)
!4437 = !DILocation(line: 72, column: 2, scope: !4412)
!4438 = !DILocation(line: 64, column: 44, scope: !4439)
!4439 = !DILexicalBlockFile(scope: !4408, file: !365, discriminator: 2)
!4440 = !DILocation(line: 64, column: 49, scope: !4439)
!4441 = !DILocation(line: 64, column: 42, scope: !4439)
!4442 = !DILocation(line: 64, column: 2, scope: !4439)
!4443 = distinct !{!4443, !4444}
!4444 = !DILocation(line: 64, column: 2, scope: !4391)
!4445 = !DILocation(line: 74, column: 9, scope: !4391)
!4446 = !DILocation(line: 74, column: 2, scope: !4391)
!4447 = distinct !DISubprogram(name: "try_grow_lower", scope: !365, file: !365, line: 1016, type: !3086, isLocal: true, isDefinition: true, scopeLine: 1017, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!4448 = !DILocalVariable(name: "window", arg: 1, scope: !4447, file: !365, line: 1016, type: !127)
!4449 = !DILocation(line: 1016, column: 44, scope: !4447)
!4450 = !DILocalVariable(name: "count", arg: 2, scope: !4447, file: !365, line: 1016, type: !140)
!4451 = !DILocation(line: 1016, column: 56, scope: !4447)
!4452 = !DILocalVariable(name: "grow_win", scope: !4447, file: !365, line: 1018, type: !127)
!4453 = !DILocation(line: 1018, column: 19, scope: !4447)
!4454 = !DILocation(line: 1020, column: 36, scope: !4447)
!4455 = !DILocation(line: 1020, column: 13, scope: !4447)
!4456 = !DILocation(line: 1020, column: 11, scope: !4447)
!4457 = !DILocation(line: 1021, column: 6, scope: !4458)
!4458 = distinct !DILexicalBlock(scope: !4447, file: !365, line: 1021, column: 6)
!4459 = !DILocation(line: 1021, column: 15, scope: !4458)
!4460 = !DILocation(line: 1021, column: 6, scope: !4447)
!4461 = !DILocalVariable(name: "win", scope: !4462, file: !365, line: 1022, type: !127)
!4462 = distinct !DILexicalBlock(scope: !4458, file: !365, line: 1021, column: 23)
!4463 = !DILocation(line: 1022, column: 20, scope: !4462)
!4464 = !DILocalVariable(name: "grow_list", scope: !4462, file: !365, line: 1023, type: !147)
!4465 = !DILocation(line: 1023, column: 11, scope: !4462)
!4466 = !DILocalVariable(name: "shrink_list", scope: !4462, file: !365, line: 1023, type: !147)
!4467 = !DILocation(line: 1023, column: 23, scope: !4462)
!4468 = !DILocalVariable(name: "tmp", scope: !4462, file: !365, line: 1023, type: !147)
!4469 = !DILocation(line: 1023, column: 37, scope: !4462)
!4470 = !DILocation(line: 1024, column: 36, scope: !4462)
!4471 = !DILocation(line: 1024, column: 15, scope: !4462)
!4472 = !DILocation(line: 1024, column: 13, scope: !4462)
!4473 = !DILocation(line: 1025, column: 38, scope: !4462)
!4474 = !DILocation(line: 1025, column: 17, scope: !4462)
!4475 = !DILocation(line: 1025, column: 15, scope: !4462)
!4476 = !DILocation(line: 1026, column: 14, scope: !4477)
!4477 = distinct !DILexicalBlock(scope: !4462, file: !365, line: 1026, column: 3)
!4478 = !DILocation(line: 1026, column: 12, scope: !4477)
!4479 = !DILocation(line: 1026, column: 8, scope: !4477)
!4480 = !DILocation(line: 1026, column: 25, scope: !4481)
!4481 = !DILexicalBlockFile(scope: !4482, file: !365, discriminator: 1)
!4482 = distinct !DILexicalBlock(scope: !4477, file: !365, line: 1026, column: 3)
!4483 = !DILocation(line: 1026, column: 29, scope: !4481)
!4484 = !DILocation(line: 1026, column: 3, scope: !4481)
!4485 = !DILocation(line: 1027, column: 10, scope: !4486)
!4486 = distinct !DILexicalBlock(scope: !4482, file: !365, line: 1026, column: 54)
!4487 = !DILocation(line: 1027, column: 15, scope: !4486)
!4488 = !DILocation(line: 1027, column: 8, scope: !4486)
!4489 = !DILocation(line: 1028, column: 23, scope: !4486)
!4490 = !DILocation(line: 1028, column: 4, scope: !4486)
!4491 = !DILocation(line: 1028, column: 9, scope: !4486)
!4492 = !DILocation(line: 1028, column: 20, scope: !4486)
!4493 = !DILocation(line: 1029, column: 3, scope: !4486)
!4494 = !DILocation(line: 1026, column: 43, scope: !4495)
!4495 = !DILexicalBlockFile(scope: !4482, file: !365, discriminator: 2)
!4496 = !DILocation(line: 1026, column: 48, scope: !4495)
!4497 = !DILocation(line: 1026, column: 41, scope: !4495)
!4498 = !DILocation(line: 1026, column: 3, scope: !4495)
!4499 = distinct !{!4499, !4500}
!4500 = !DILocation(line: 1026, column: 3, scope: !4462)
!4501 = !DILocation(line: 1030, column: 14, scope: !4502)
!4502 = distinct !DILexicalBlock(scope: !4462, file: !365, line: 1030, column: 3)
!4503 = !DILocation(line: 1030, column: 12, scope: !4502)
!4504 = !DILocation(line: 1030, column: 8, scope: !4502)
!4505 = !DILocation(line: 1030, column: 27, scope: !4506)
!4506 = !DILexicalBlockFile(scope: !4507, file: !365, discriminator: 1)
!4507 = distinct !DILexicalBlock(scope: !4502, file: !365, line: 1030, column: 3)
!4508 = !DILocation(line: 1030, column: 31, scope: !4506)
!4509 = !DILocation(line: 1030, column: 3, scope: !4506)
!4510 = !DILocation(line: 1031, column: 10, scope: !4511)
!4511 = distinct !DILexicalBlock(scope: !4507, file: !365, line: 1030, column: 56)
!4512 = !DILocation(line: 1031, column: 15, scope: !4511)
!4513 = !DILocation(line: 1031, column: 8, scope: !4511)
!4514 = !DILocation(line: 1032, column: 22, scope: !4511)
!4515 = !DILocation(line: 1032, column: 4, scope: !4511)
!4516 = !DILocation(line: 1032, column: 9, scope: !4511)
!4517 = !DILocation(line: 1032, column: 19, scope: !4511)
!4518 = !DILocation(line: 1033, column: 3, scope: !4511)
!4519 = !DILocation(line: 1030, column: 45, scope: !4520)
!4520 = !DILexicalBlockFile(scope: !4507, file: !365, discriminator: 2)
!4521 = !DILocation(line: 1030, column: 50, scope: !4520)
!4522 = !DILocation(line: 1030, column: 43, scope: !4520)
!4523 = !DILocation(line: 1030, column: 3, scope: !4520)
!4524 = distinct !{!4524, !4525}
!4525 = !DILocation(line: 1030, column: 3, scope: !4462)
!4526 = !DILocation(line: 1034, column: 26, scope: !4462)
!4527 = !DILocation(line: 1034, column: 37, scope: !4462)
!4528 = !DILocation(line: 1034, column: 50, scope: !4462)
!4529 = !DILocation(line: 1034, column: 3, scope: !4462)
!4530 = !DILocation(line: 1035, column: 16, scope: !4462)
!4531 = !DILocation(line: 1035, column: 3, scope: !4462)
!4532 = !DILocation(line: 1036, column: 16, scope: !4462)
!4533 = !DILocation(line: 1036, column: 3, scope: !4462)
!4534 = !DILocation(line: 1037, column: 2, scope: !4462)
!4535 = !DILocation(line: 1039, column: 9, scope: !4447)
!4536 = !DILocation(line: 1039, column: 18, scope: !4447)
!4537 = !DILocation(line: 1039, column: 2, scope: !4447)
!4538 = distinct !DISubprogram(name: "try_grow_upper", scope: !365, file: !365, line: 1042, type: !3086, isLocal: true, isDefinition: true, scopeLine: 1043, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!4539 = !DILocalVariable(name: "window", arg: 1, scope: !4538, file: !365, line: 1042, type: !127)
!4540 = !DILocation(line: 1042, column: 44, scope: !4538)
!4541 = !DILocalVariable(name: "count", arg: 2, scope: !4538, file: !365, line: 1042, type: !140)
!4542 = !DILocation(line: 1042, column: 56, scope: !4538)
!4543 = !DILocalVariable(name: "grow_win", scope: !4538, file: !365, line: 1044, type: !127)
!4544 = !DILocation(line: 1044, column: 19, scope: !4538)
!4545 = !DILocation(line: 1046, column: 36, scope: !4538)
!4546 = !DILocation(line: 1046, column: 13, scope: !4538)
!4547 = !DILocation(line: 1046, column: 11, scope: !4538)
!4548 = !DILocation(line: 1047, column: 6, scope: !4549)
!4549 = distinct !DILexicalBlock(scope: !4538, file: !365, line: 1047, column: 6)
!4550 = !DILocation(line: 1047, column: 15, scope: !4549)
!4551 = !DILocation(line: 1047, column: 6, scope: !4538)
!4552 = !DILocalVariable(name: "win", scope: !4553, file: !365, line: 1048, type: !127)
!4553 = distinct !DILexicalBlock(scope: !4549, file: !365, line: 1047, column: 23)
!4554 = !DILocation(line: 1048, column: 20, scope: !4553)
!4555 = !DILocalVariable(name: "grow_list", scope: !4553, file: !365, line: 1049, type: !147)
!4556 = !DILocation(line: 1049, column: 11, scope: !4553)
!4557 = !DILocalVariable(name: "shrink_list", scope: !4553, file: !365, line: 1049, type: !147)
!4558 = !DILocation(line: 1049, column: 23, scope: !4553)
!4559 = !DILocalVariable(name: "tmp", scope: !4553, file: !365, line: 1049, type: !147)
!4560 = !DILocation(line: 1049, column: 37, scope: !4553)
!4561 = !DILocation(line: 1050, column: 36, scope: !4553)
!4562 = !DILocation(line: 1050, column: 15, scope: !4553)
!4563 = !DILocation(line: 1050, column: 13, scope: !4553)
!4564 = !DILocation(line: 1051, column: 38, scope: !4553)
!4565 = !DILocation(line: 1051, column: 17, scope: !4553)
!4566 = !DILocation(line: 1051, column: 15, scope: !4553)
!4567 = !DILocation(line: 1052, column: 14, scope: !4568)
!4568 = distinct !DILexicalBlock(scope: !4553, file: !365, line: 1052, column: 3)
!4569 = !DILocation(line: 1052, column: 12, scope: !4568)
!4570 = !DILocation(line: 1052, column: 8, scope: !4568)
!4571 = !DILocation(line: 1052, column: 25, scope: !4572)
!4572 = !DILexicalBlockFile(scope: !4573, file: !365, discriminator: 1)
!4573 = distinct !DILexicalBlock(scope: !4568, file: !365, line: 1052, column: 3)
!4574 = !DILocation(line: 1052, column: 29, scope: !4572)
!4575 = !DILocation(line: 1052, column: 3, scope: !4572)
!4576 = !DILocation(line: 1053, column: 10, scope: !4577)
!4577 = distinct !DILexicalBlock(scope: !4573, file: !365, line: 1052, column: 54)
!4578 = !DILocation(line: 1053, column: 15, scope: !4577)
!4579 = !DILocation(line: 1053, column: 8, scope: !4577)
!4580 = !DILocation(line: 1054, column: 22, scope: !4577)
!4581 = !DILocation(line: 1054, column: 4, scope: !4577)
!4582 = !DILocation(line: 1054, column: 9, scope: !4577)
!4583 = !DILocation(line: 1054, column: 19, scope: !4577)
!4584 = !DILocation(line: 1055, column: 3, scope: !4577)
!4585 = !DILocation(line: 1052, column: 43, scope: !4586)
!4586 = !DILexicalBlockFile(scope: !4573, file: !365, discriminator: 2)
!4587 = !DILocation(line: 1052, column: 48, scope: !4586)
!4588 = !DILocation(line: 1052, column: 41, scope: !4586)
!4589 = !DILocation(line: 1052, column: 3, scope: !4586)
!4590 = distinct !{!4590, !4591}
!4591 = !DILocation(line: 1052, column: 3, scope: !4553)
!4592 = !DILocation(line: 1056, column: 14, scope: !4593)
!4593 = distinct !DILexicalBlock(scope: !4553, file: !365, line: 1056, column: 3)
!4594 = !DILocation(line: 1056, column: 12, scope: !4593)
!4595 = !DILocation(line: 1056, column: 8, scope: !4593)
!4596 = !DILocation(line: 1056, column: 27, scope: !4597)
!4597 = !DILexicalBlockFile(scope: !4598, file: !365, discriminator: 1)
!4598 = distinct !DILexicalBlock(scope: !4593, file: !365, line: 1056, column: 3)
!4599 = !DILocation(line: 1056, column: 31, scope: !4597)
!4600 = !DILocation(line: 1056, column: 3, scope: !4597)
!4601 = !DILocation(line: 1057, column: 10, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4598, file: !365, line: 1056, column: 56)
!4603 = !DILocation(line: 1057, column: 15, scope: !4602)
!4604 = !DILocation(line: 1057, column: 8, scope: !4602)
!4605 = !DILocation(line: 1058, column: 23, scope: !4602)
!4606 = !DILocation(line: 1058, column: 4, scope: !4602)
!4607 = !DILocation(line: 1058, column: 9, scope: !4602)
!4608 = !DILocation(line: 1058, column: 20, scope: !4602)
!4609 = !DILocation(line: 1059, column: 3, scope: !4602)
!4610 = !DILocation(line: 1056, column: 45, scope: !4611)
!4611 = !DILexicalBlockFile(scope: !4598, file: !365, discriminator: 2)
!4612 = !DILocation(line: 1056, column: 50, scope: !4611)
!4613 = !DILocation(line: 1056, column: 43, scope: !4611)
!4614 = !DILocation(line: 1056, column: 3, scope: !4611)
!4615 = distinct !{!4615, !4616}
!4616 = !DILocation(line: 1056, column: 3, scope: !4553)
!4617 = !DILocation(line: 1060, column: 26, scope: !4553)
!4618 = !DILocation(line: 1060, column: 37, scope: !4553)
!4619 = !DILocation(line: 1060, column: 50, scope: !4553)
!4620 = !DILocation(line: 1060, column: 3, scope: !4553)
!4621 = !DILocation(line: 1061, column: 16, scope: !4553)
!4622 = !DILocation(line: 1061, column: 3, scope: !4553)
!4623 = !DILocation(line: 1062, column: 16, scope: !4553)
!4624 = !DILocation(line: 1062, column: 3, scope: !4553)
!4625 = !DILocation(line: 1063, column: 2, scope: !4553)
!4626 = !DILocation(line: 1065, column: 9, scope: !4538)
!4627 = !DILocation(line: 1065, column: 18, scope: !4538)
!4628 = !DILocation(line: 1065, column: 2, scope: !4538)
!4629 = distinct !DISubprogram(name: "mainwindows_resize_two", scope: !365, file: !365, line: 894, type: !4630, isLocal: true, isDefinition: true, scopeLine: 896, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!4630 = !DISubroutineType(types: !4631)
!4631 = !{null, !147, !147, !140}
!4632 = !DILocalVariable(name: "grow_list", arg: 1, scope: !4629, file: !365, line: 894, type: !147)
!4633 = !DILocation(line: 894, column: 44, scope: !4629)
!4634 = !DILocalVariable(name: "shrink_list", arg: 2, scope: !4629, file: !365, line: 895, type: !147)
!4635 = !DILocation(line: 895, column: 16, scope: !4629)
!4636 = !DILocalVariable(name: "count", arg: 3, scope: !4629, file: !365, line: 895, type: !140)
!4637 = !DILocation(line: 895, column: 33, scope: !4629)
!4638 = !DILocalVariable(name: "tmp", scope: !4629, file: !365, line: 897, type: !147)
!4639 = !DILocation(line: 897, column: 10, scope: !4629)
!4640 = !DILocalVariable(name: "win", scope: !4629, file: !365, line: 898, type: !127)
!4641 = !DILocation(line: 898, column: 19, scope: !4629)
!4642 = !DILocation(line: 900, column: 2, scope: !4629)
!4643 = !DILocation(line: 902, column: 13, scope: !4644)
!4644 = distinct !DILexicalBlock(scope: !4629, file: !365, line: 902, column: 2)
!4645 = !DILocation(line: 902, column: 11, scope: !4644)
!4646 = !DILocation(line: 902, column: 7, scope: !4644)
!4647 = !DILocation(line: 902, column: 26, scope: !4648)
!4648 = !DILexicalBlockFile(scope: !4649, file: !365, discriminator: 1)
!4649 = distinct !DILexicalBlock(scope: !4644, file: !365, line: 902, column: 2)
!4650 = !DILocation(line: 902, column: 30, scope: !4648)
!4651 = !DILocation(line: 902, column: 2, scope: !4648)
!4652 = !DILocation(line: 903, column: 9, scope: !4653)
!4653 = distinct !DILexicalBlock(scope: !4649, file: !365, line: 902, column: 55)
!4654 = !DILocation(line: 903, column: 14, scope: !4653)
!4655 = !DILocation(line: 903, column: 7, scope: !4653)
!4656 = !DILocation(line: 904, column: 21, scope: !4653)
!4657 = !DILocation(line: 904, column: 30, scope: !4653)
!4658 = !DILocation(line: 904, column: 29, scope: !4653)
!4659 = !DILocation(line: 904, column: 3, scope: !4653)
!4660 = !DILocation(line: 905, column: 3, scope: !4653)
!4661 = !DILocation(line: 905, column: 8, scope: !4653)
!4662 = !DILocation(line: 905, column: 14, scope: !4653)
!4663 = !DILocation(line: 906, column: 2, scope: !4653)
!4664 = !DILocation(line: 902, column: 44, scope: !4665)
!4665 = !DILexicalBlockFile(scope: !4649, file: !365, discriminator: 2)
!4666 = !DILocation(line: 902, column: 49, scope: !4665)
!4667 = !DILocation(line: 902, column: 42, scope: !4665)
!4668 = !DILocation(line: 902, column: 2, scope: !4665)
!4669 = distinct !{!4669, !4670}
!4670 = !DILocation(line: 902, column: 2, scope: !4629)
!4671 = !DILocation(line: 907, column: 13, scope: !4672)
!4672 = distinct !DILexicalBlock(scope: !4629, file: !365, line: 907, column: 2)
!4673 = !DILocation(line: 907, column: 11, scope: !4672)
!4674 = !DILocation(line: 907, column: 7, scope: !4672)
!4675 = !DILocation(line: 907, column: 24, scope: !4676)
!4676 = !DILexicalBlockFile(scope: !4677, file: !365, discriminator: 1)
!4677 = distinct !DILexicalBlock(scope: !4672, file: !365, line: 907, column: 2)
!4678 = !DILocation(line: 907, column: 28, scope: !4676)
!4679 = !DILocation(line: 907, column: 2, scope: !4676)
!4680 = !DILocation(line: 908, column: 9, scope: !4681)
!4681 = distinct !DILexicalBlock(scope: !4677, file: !365, line: 907, column: 53)
!4682 = !DILocation(line: 908, column: 14, scope: !4681)
!4683 = !DILocation(line: 908, column: 7, scope: !4681)
!4684 = !DILocation(line: 909, column: 21, scope: !4681)
!4685 = !DILocation(line: 909, column: 29, scope: !4681)
!4686 = !DILocation(line: 909, column: 3, scope: !4681)
!4687 = !DILocation(line: 910, column: 3, scope: !4681)
!4688 = !DILocation(line: 910, column: 8, scope: !4681)
!4689 = !DILocation(line: 910, column: 14, scope: !4681)
!4690 = !DILocation(line: 911, column: 2, scope: !4681)
!4691 = !DILocation(line: 907, column: 42, scope: !4692)
!4692 = !DILexicalBlockFile(scope: !4677, file: !365, discriminator: 2)
!4693 = !DILocation(line: 907, column: 47, scope: !4692)
!4694 = !DILocation(line: 907, column: 40, scope: !4692)
!4695 = !DILocation(line: 907, column: 2, scope: !4692)
!4696 = distinct !{!4696, !4697}
!4697 = !DILocation(line: 907, column: 2, scope: !4629)
!4698 = !DILocation(line: 912, column: 1, scope: !4629)
!4699 = distinct !DISubprogram(name: "try_shrink_lower", scope: !365, file: !365, line: 914, type: !3086, isLocal: true, isDefinition: true, scopeLine: 915, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!4700 = !DILocalVariable(name: "window", arg: 1, scope: !4699, file: !365, line: 914, type: !127)
!4701 = !DILocation(line: 914, column: 46, scope: !4699)
!4702 = !DILocalVariable(name: "count", arg: 2, scope: !4699, file: !365, line: 914, type: !140)
!4703 = !DILocation(line: 914, column: 58, scope: !4699)
!4704 = !DILocalVariable(name: "shrink_win", scope: !4699, file: !365, line: 916, type: !127)
!4705 = !DILocation(line: 916, column: 19, scope: !4699)
!4706 = !DILocation(line: 918, column: 2, scope: !4699)
!4707 = distinct !{!4707, !4706}
!4708 = !DILocation(line: 918, column: 10, scope: !4709)
!4709 = !DILexicalBlockFile(scope: !4710, file: !365, discriminator: 1)
!4710 = distinct !DILexicalBlock(scope: !4711, file: !365, line: 918, column: 10)
!4711 = distinct !DILexicalBlock(scope: !4699, file: !365, line: 918, column: 4)
!4712 = !DILocation(line: 918, column: 16, scope: !4709)
!4713 = !DILocation(line: 918, column: 24, scope: !4714)
!4714 = !DILexicalBlockFile(scope: !4715, file: !365, discriminator: 2)
!4715 = distinct !DILexicalBlock(scope: !4710, file: !365, line: 918, column: 22)
!4716 = !DILocation(line: 918, column: 33, scope: !4717)
!4717 = !DILexicalBlockFile(scope: !4718, file: !365, discriminator: 3)
!4718 = distinct !DILexicalBlock(scope: !4710, file: !365, line: 918, column: 31)
!4719 = !DILocation(line: 918, column: 116, scope: !4717)
!4720 = !DILocation(line: 918, column: 133, scope: !4721)
!4721 = !DILexicalBlockFile(scope: !4711, file: !365, discriminator: 4)
!4722 = !DILocation(line: 920, column: 38, scope: !4699)
!4723 = !DILocation(line: 920, column: 15, scope: !4699)
!4724 = !DILocation(line: 920, column: 13, scope: !4699)
!4725 = !DILocation(line: 921, column: 6, scope: !4726)
!4726 = distinct !DILexicalBlock(scope: !4699, file: !365, line: 921, column: 6)
!4727 = !DILocation(line: 921, column: 17, scope: !4726)
!4728 = !DILocation(line: 921, column: 6, scope: !4699)
!4729 = !DILocalVariable(name: "ok", scope: !4730, file: !365, line: 922, type: !140)
!4730 = distinct !DILexicalBlock(scope: !4726, file: !365, line: 921, column: 25)
!4731 = !DILocation(line: 922, column: 7, scope: !4730)
!4732 = !DILocalVariable(name: "shrink_list", scope: !4730, file: !365, line: 923, type: !147)
!4733 = !DILocation(line: 923, column: 11, scope: !4730)
!4734 = !DILocalVariable(name: "tmp", scope: !4730, file: !365, line: 923, type: !147)
!4735 = !DILocation(line: 923, column: 25, scope: !4730)
!4736 = !DILocalVariable(name: "win", scope: !4730, file: !365, line: 924, type: !127)
!4737 = !DILocation(line: 924, column: 20, scope: !4730)
!4738 = !DILocation(line: 926, column: 6, scope: !4730)
!4739 = !DILocation(line: 927, column: 38, scope: !4730)
!4740 = !DILocation(line: 927, column: 17, scope: !4730)
!4741 = !DILocation(line: 927, column: 15, scope: !4730)
!4742 = !DILocation(line: 929, column: 14, scope: !4743)
!4743 = distinct !DILexicalBlock(scope: !4730, file: !365, line: 929, column: 3)
!4744 = !DILocation(line: 929, column: 12, scope: !4743)
!4745 = !DILocation(line: 929, column: 8, scope: !4743)
!4746 = !DILocation(line: 929, column: 27, scope: !4747)
!4747 = !DILexicalBlockFile(scope: !4748, file: !365, discriminator: 1)
!4748 = distinct !DILexicalBlock(scope: !4743, file: !365, line: 929, column: 3)
!4749 = !DILocation(line: 929, column: 31, scope: !4747)
!4750 = !DILocation(line: 929, column: 3, scope: !4747)
!4751 = !DILocation(line: 930, column: 10, scope: !4752)
!4752 = distinct !DILexicalBlock(scope: !4748, file: !365, line: 929, column: 56)
!4753 = !DILocation(line: 930, column: 15, scope: !4752)
!4754 = !DILocation(line: 930, column: 8, scope: !4752)
!4755 = !DILocation(line: 931, column: 10, scope: !4756)
!4756 = distinct !DILexicalBlock(scope: !4752, file: !365, line: 931, column: 8)
!4757 = !DILocation(line: 931, column: 16, scope: !4756)
!4758 = !DILocation(line: 931, column: 24, scope: !4756)
!4759 = !DILocation(line: 931, column: 30, scope: !4756)
!4760 = !DILocation(line: 931, column: 22, scope: !4756)
!4761 = !DILocation(line: 931, column: 47, scope: !4756)
!4762 = !DILocation(line: 931, column: 46, scope: !4756)
!4763 = !DILocation(line: 931, column: 53, scope: !4756)
!4764 = !DILocation(line: 931, column: 8, scope: !4752)
!4765 = !DILocation(line: 932, column: 8, scope: !4766)
!4766 = distinct !DILexicalBlock(scope: !4756, file: !365, line: 931, column: 58)
!4767 = !DILocation(line: 933, column: 5, scope: !4766)
!4768 = !DILocation(line: 935, column: 3, scope: !4752)
!4769 = !DILocation(line: 929, column: 45, scope: !4770)
!4770 = !DILexicalBlockFile(scope: !4748, file: !365, discriminator: 2)
!4771 = !DILocation(line: 929, column: 50, scope: !4770)
!4772 = !DILocation(line: 929, column: 43, scope: !4770)
!4773 = !DILocation(line: 929, column: 3, scope: !4770)
!4774 = distinct !{!4774, !4775}
!4775 = !DILocation(line: 929, column: 3, scope: !4730)
!4776 = !DILocation(line: 936, column: 7, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !4730, file: !365, line: 936, column: 7)
!4778 = !DILocation(line: 936, column: 7, scope: !4730)
!4779 = !DILocalVariable(name: "grow_list", scope: !4780, file: !365, line: 937, type: !147)
!4780 = distinct !DILexicalBlock(scope: !4777, file: !365, line: 936, column: 11)
!4781 = !DILocation(line: 937, column: 12, scope: !4780)
!4782 = !DILocation(line: 938, column: 37, scope: !4780)
!4783 = !DILocation(line: 938, column: 16, scope: !4780)
!4784 = !DILocation(line: 938, column: 14, scope: !4780)
!4785 = !DILocation(line: 940, column: 15, scope: !4786)
!4786 = distinct !DILexicalBlock(scope: !4780, file: !365, line: 940, column: 4)
!4787 = !DILocation(line: 940, column: 13, scope: !4786)
!4788 = !DILocation(line: 940, column: 9, scope: !4786)
!4789 = !DILocation(line: 940, column: 28, scope: !4790)
!4790 = !DILexicalBlockFile(scope: !4791, file: !365, discriminator: 1)
!4791 = distinct !DILexicalBlock(scope: !4786, file: !365, line: 940, column: 4)
!4792 = !DILocation(line: 940, column: 32, scope: !4790)
!4793 = !DILocation(line: 940, column: 4, scope: !4790)
!4794 = !DILocation(line: 941, column: 11, scope: !4795)
!4795 = distinct !DILexicalBlock(scope: !4791, file: !365, line: 940, column: 57)
!4796 = !DILocation(line: 941, column: 16, scope: !4795)
!4797 = !DILocation(line: 941, column: 9, scope: !4795)
!4798 = !DILocation(line: 942, column: 24, scope: !4795)
!4799 = !DILocation(line: 942, column: 5, scope: !4795)
!4800 = !DILocation(line: 942, column: 10, scope: !4795)
!4801 = !DILocation(line: 942, column: 21, scope: !4795)
!4802 = !DILocation(line: 943, column: 4, scope: !4795)
!4803 = !DILocation(line: 940, column: 46, scope: !4804)
!4804 = !DILexicalBlockFile(scope: !4791, file: !365, discriminator: 2)
!4805 = !DILocation(line: 940, column: 51, scope: !4804)
!4806 = !DILocation(line: 940, column: 44, scope: !4804)
!4807 = !DILocation(line: 940, column: 4, scope: !4804)
!4808 = distinct !{!4808, !4809}
!4809 = !DILocation(line: 940, column: 4, scope: !4780)
!4810 = !DILocation(line: 944, column: 15, scope: !4811)
!4811 = distinct !DILexicalBlock(scope: !4780, file: !365, line: 944, column: 4)
!4812 = !DILocation(line: 944, column: 13, scope: !4811)
!4813 = !DILocation(line: 944, column: 9, scope: !4811)
!4814 = !DILocation(line: 944, column: 26, scope: !4815)
!4815 = !DILexicalBlockFile(scope: !4816, file: !365, discriminator: 1)
!4816 = distinct !DILexicalBlock(scope: !4811, file: !365, line: 944, column: 4)
!4817 = !DILocation(line: 944, column: 30, scope: !4815)
!4818 = !DILocation(line: 944, column: 4, scope: !4815)
!4819 = !DILocation(line: 945, column: 11, scope: !4820)
!4820 = distinct !DILexicalBlock(scope: !4816, file: !365, line: 944, column: 55)
!4821 = !DILocation(line: 945, column: 16, scope: !4820)
!4822 = !DILocation(line: 945, column: 9, scope: !4820)
!4823 = !DILocation(line: 946, column: 23, scope: !4820)
!4824 = !DILocation(line: 946, column: 5, scope: !4820)
!4825 = !DILocation(line: 946, column: 10, scope: !4820)
!4826 = !DILocation(line: 946, column: 20, scope: !4820)
!4827 = !DILocation(line: 947, column: 4, scope: !4820)
!4828 = !DILocation(line: 944, column: 44, scope: !4829)
!4829 = !DILexicalBlockFile(scope: !4816, file: !365, discriminator: 2)
!4830 = !DILocation(line: 944, column: 49, scope: !4829)
!4831 = !DILocation(line: 944, column: 42, scope: !4829)
!4832 = !DILocation(line: 944, column: 4, scope: !4829)
!4833 = distinct !{!4833, !4834}
!4834 = !DILocation(line: 944, column: 4, scope: !4780)
!4835 = !DILocation(line: 949, column: 27, scope: !4780)
!4836 = !DILocation(line: 949, column: 38, scope: !4780)
!4837 = !DILocation(line: 949, column: 51, scope: !4780)
!4838 = !DILocation(line: 949, column: 4, scope: !4780)
!4839 = !DILocation(line: 950, column: 17, scope: !4780)
!4840 = !DILocation(line: 950, column: 4, scope: !4780)
!4841 = !DILocation(line: 951, column: 3, scope: !4780)
!4842 = !DILocation(line: 953, column: 16, scope: !4730)
!4843 = !DILocation(line: 953, column: 3, scope: !4730)
!4844 = !DILocation(line: 954, column: 10, scope: !4730)
!4845 = !DILocation(line: 954, column: 3, scope: !4730)
!4846 = !DILocation(line: 957, column: 2, scope: !4699)
!4847 = !DILocation(line: 958, column: 1, scope: !4699)
!4848 = distinct !DISubprogram(name: "try_shrink_upper", scope: !365, file: !365, line: 960, type: !3086, isLocal: true, isDefinition: true, scopeLine: 961, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!4849 = !DILocalVariable(name: "window", arg: 1, scope: !4848, file: !365, line: 960, type: !127)
!4850 = !DILocation(line: 960, column: 46, scope: !4848)
!4851 = !DILocalVariable(name: "count", arg: 2, scope: !4848, file: !365, line: 960, type: !140)
!4852 = !DILocation(line: 960, column: 58, scope: !4848)
!4853 = !DILocalVariable(name: "shrink_win", scope: !4848, file: !365, line: 962, type: !127)
!4854 = !DILocation(line: 962, column: 19, scope: !4848)
!4855 = !DILocation(line: 964, column: 2, scope: !4848)
!4856 = distinct !{!4856, !4855}
!4857 = !DILocation(line: 964, column: 10, scope: !4858)
!4858 = !DILexicalBlockFile(scope: !4859, file: !365, discriminator: 1)
!4859 = distinct !DILexicalBlock(scope: !4860, file: !365, line: 964, column: 10)
!4860 = distinct !DILexicalBlock(scope: !4848, file: !365, line: 964, column: 4)
!4861 = !DILocation(line: 964, column: 16, scope: !4858)
!4862 = !DILocation(line: 964, column: 24, scope: !4863)
!4863 = !DILexicalBlockFile(scope: !4864, file: !365, discriminator: 2)
!4864 = distinct !DILexicalBlock(scope: !4859, file: !365, line: 964, column: 22)
!4865 = !DILocation(line: 964, column: 33, scope: !4866)
!4866 = !DILexicalBlockFile(scope: !4867, file: !365, discriminator: 3)
!4867 = distinct !DILexicalBlock(scope: !4859, file: !365, line: 964, column: 31)
!4868 = !DILocation(line: 964, column: 116, scope: !4866)
!4869 = !DILocation(line: 964, column: 133, scope: !4870)
!4870 = !DILexicalBlockFile(scope: !4860, file: !365, discriminator: 4)
!4871 = !DILocation(line: 966, column: 38, scope: !4848)
!4872 = !DILocation(line: 966, column: 15, scope: !4848)
!4873 = !DILocation(line: 966, column: 13, scope: !4848)
!4874 = !DILocation(line: 967, column: 6, scope: !4875)
!4875 = distinct !DILexicalBlock(scope: !4848, file: !365, line: 967, column: 6)
!4876 = !DILocation(line: 967, column: 17, scope: !4875)
!4877 = !DILocation(line: 967, column: 6, scope: !4848)
!4878 = !DILocalVariable(name: "ok", scope: !4879, file: !365, line: 968, type: !140)
!4879 = distinct !DILexicalBlock(scope: !4875, file: !365, line: 967, column: 25)
!4880 = !DILocation(line: 968, column: 7, scope: !4879)
!4881 = !DILocalVariable(name: "shrink_list", scope: !4879, file: !365, line: 969, type: !147)
!4882 = !DILocation(line: 969, column: 11, scope: !4879)
!4883 = !DILocalVariable(name: "tmp", scope: !4879, file: !365, line: 969, type: !147)
!4884 = !DILocation(line: 969, column: 25, scope: !4879)
!4885 = !DILocalVariable(name: "win", scope: !4879, file: !365, line: 970, type: !127)
!4886 = !DILocation(line: 970, column: 20, scope: !4879)
!4887 = !DILocation(line: 972, column: 6, scope: !4879)
!4888 = !DILocation(line: 973, column: 38, scope: !4879)
!4889 = !DILocation(line: 973, column: 17, scope: !4879)
!4890 = !DILocation(line: 973, column: 15, scope: !4879)
!4891 = !DILocation(line: 975, column: 14, scope: !4892)
!4892 = distinct !DILexicalBlock(scope: !4879, file: !365, line: 975, column: 3)
!4893 = !DILocation(line: 975, column: 12, scope: !4892)
!4894 = !DILocation(line: 975, column: 8, scope: !4892)
!4895 = !DILocation(line: 975, column: 27, scope: !4896)
!4896 = !DILexicalBlockFile(scope: !4897, file: !365, discriminator: 1)
!4897 = distinct !DILexicalBlock(scope: !4892, file: !365, line: 975, column: 3)
!4898 = !DILocation(line: 975, column: 31, scope: !4896)
!4899 = !DILocation(line: 975, column: 3, scope: !4896)
!4900 = !DILocation(line: 976, column: 10, scope: !4901)
!4901 = distinct !DILexicalBlock(scope: !4897, file: !365, line: 975, column: 56)
!4902 = !DILocation(line: 976, column: 15, scope: !4901)
!4903 = !DILocation(line: 976, column: 8, scope: !4901)
!4904 = !DILocation(line: 977, column: 10, scope: !4905)
!4905 = distinct !DILexicalBlock(scope: !4901, file: !365, line: 977, column: 8)
!4906 = !DILocation(line: 977, column: 16, scope: !4905)
!4907 = !DILocation(line: 977, column: 24, scope: !4905)
!4908 = !DILocation(line: 977, column: 30, scope: !4905)
!4909 = !DILocation(line: 977, column: 22, scope: !4905)
!4910 = !DILocation(line: 977, column: 47, scope: !4905)
!4911 = !DILocation(line: 977, column: 46, scope: !4905)
!4912 = !DILocation(line: 977, column: 53, scope: !4905)
!4913 = !DILocation(line: 977, column: 8, scope: !4901)
!4914 = !DILocation(line: 978, column: 8, scope: !4915)
!4915 = distinct !DILexicalBlock(scope: !4905, file: !365, line: 977, column: 58)
!4916 = !DILocation(line: 979, column: 5, scope: !4915)
!4917 = !DILocation(line: 981, column: 3, scope: !4901)
!4918 = !DILocation(line: 975, column: 45, scope: !4919)
!4919 = !DILexicalBlockFile(scope: !4897, file: !365, discriminator: 2)
!4920 = !DILocation(line: 975, column: 50, scope: !4919)
!4921 = !DILocation(line: 975, column: 43, scope: !4919)
!4922 = !DILocation(line: 975, column: 3, scope: !4919)
!4923 = distinct !{!4923, !4924}
!4924 = !DILocation(line: 975, column: 3, scope: !4879)
!4925 = !DILocation(line: 982, column: 7, scope: !4926)
!4926 = distinct !DILexicalBlock(scope: !4879, file: !365, line: 982, column: 7)
!4927 = !DILocation(line: 982, column: 7, scope: !4879)
!4928 = !DILocalVariable(name: "grow_list", scope: !4929, file: !365, line: 983, type: !147)
!4929 = distinct !DILexicalBlock(scope: !4926, file: !365, line: 982, column: 11)
!4930 = !DILocation(line: 983, column: 12, scope: !4929)
!4931 = !DILocation(line: 984, column: 37, scope: !4929)
!4932 = !DILocation(line: 984, column: 16, scope: !4929)
!4933 = !DILocation(line: 984, column: 14, scope: !4929)
!4934 = !DILocation(line: 985, column: 15, scope: !4935)
!4935 = distinct !DILexicalBlock(scope: !4929, file: !365, line: 985, column: 4)
!4936 = !DILocation(line: 985, column: 13, scope: !4935)
!4937 = !DILocation(line: 985, column: 9, scope: !4935)
!4938 = !DILocation(line: 985, column: 26, scope: !4939)
!4939 = !DILexicalBlockFile(scope: !4940, file: !365, discriminator: 1)
!4940 = distinct !DILexicalBlock(scope: !4935, file: !365, line: 985, column: 4)
!4941 = !DILocation(line: 985, column: 30, scope: !4939)
!4942 = !DILocation(line: 985, column: 4, scope: !4939)
!4943 = !DILocation(line: 986, column: 11, scope: !4944)
!4944 = distinct !DILexicalBlock(scope: !4940, file: !365, line: 985, column: 55)
!4945 = !DILocation(line: 986, column: 16, scope: !4944)
!4946 = !DILocation(line: 986, column: 9, scope: !4944)
!4947 = !DILocation(line: 987, column: 24, scope: !4944)
!4948 = !DILocation(line: 987, column: 5, scope: !4944)
!4949 = !DILocation(line: 987, column: 10, scope: !4944)
!4950 = !DILocation(line: 987, column: 21, scope: !4944)
!4951 = !DILocation(line: 988, column: 4, scope: !4944)
!4952 = !DILocation(line: 985, column: 44, scope: !4953)
!4953 = !DILexicalBlockFile(scope: !4940, file: !365, discriminator: 2)
!4954 = !DILocation(line: 985, column: 49, scope: !4953)
!4955 = !DILocation(line: 985, column: 42, scope: !4953)
!4956 = !DILocation(line: 985, column: 4, scope: !4953)
!4957 = distinct !{!4957, !4958}
!4958 = !DILocation(line: 985, column: 4, scope: !4929)
!4959 = !DILocation(line: 989, column: 15, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4929, file: !365, line: 989, column: 4)
!4961 = !DILocation(line: 989, column: 13, scope: !4960)
!4962 = !DILocation(line: 989, column: 9, scope: !4960)
!4963 = !DILocation(line: 989, column: 28, scope: !4964)
!4964 = !DILexicalBlockFile(scope: !4965, file: !365, discriminator: 1)
!4965 = distinct !DILexicalBlock(scope: !4960, file: !365, line: 989, column: 4)
!4966 = !DILocation(line: 989, column: 32, scope: !4964)
!4967 = !DILocation(line: 989, column: 4, scope: !4964)
!4968 = !DILocation(line: 990, column: 11, scope: !4969)
!4969 = distinct !DILexicalBlock(scope: !4965, file: !365, line: 989, column: 57)
!4970 = !DILocation(line: 990, column: 16, scope: !4969)
!4971 = !DILocation(line: 990, column: 9, scope: !4969)
!4972 = !DILocation(line: 991, column: 23, scope: !4969)
!4973 = !DILocation(line: 991, column: 5, scope: !4969)
!4974 = !DILocation(line: 991, column: 10, scope: !4969)
!4975 = !DILocation(line: 991, column: 20, scope: !4969)
!4976 = !DILocation(line: 992, column: 4, scope: !4969)
!4977 = !DILocation(line: 989, column: 46, scope: !4978)
!4978 = !DILexicalBlockFile(scope: !4965, file: !365, discriminator: 2)
!4979 = !DILocation(line: 989, column: 51, scope: !4978)
!4980 = !DILocation(line: 989, column: 44, scope: !4978)
!4981 = !DILocation(line: 989, column: 4, scope: !4978)
!4982 = distinct !{!4982, !4983}
!4983 = !DILocation(line: 989, column: 4, scope: !4929)
!4984 = !DILocation(line: 993, column: 27, scope: !4929)
!4985 = !DILocation(line: 993, column: 38, scope: !4929)
!4986 = !DILocation(line: 993, column: 51, scope: !4929)
!4987 = !DILocation(line: 993, column: 4, scope: !4929)
!4988 = !DILocation(line: 994, column: 17, scope: !4929)
!4989 = !DILocation(line: 994, column: 4, scope: !4929)
!4990 = !DILocation(line: 995, column: 3, scope: !4929)
!4991 = !DILocation(line: 996, column: 16, scope: !4879)
!4992 = !DILocation(line: 996, column: 3, scope: !4879)
!4993 = !DILocation(line: 997, column: 10, scope: !4879)
!4994 = !DILocation(line: 997, column: 3, scope: !4879)
!4995 = !DILocation(line: 1000, column: 2, scope: !4848)
!4996 = !DILocation(line: 1001, column: 1, scope: !4848)
!4997 = distinct !DISubprogram(name: "try_rgrow_right", scope: !365, file: !365, line: 1149, type: !3086, isLocal: true, isDefinition: true, scopeLine: 1150, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!4998 = !DILocalVariable(name: "window", arg: 1, scope: !4997, file: !365, line: 1149, type: !127)
!4999 = !DILocation(line: 1149, column: 45, scope: !4997)
!5000 = !DILocalVariable(name: "count", arg: 2, scope: !4997, file: !365, line: 1149, type: !140)
!5001 = !DILocation(line: 1149, column: 57, scope: !4997)
!5002 = !DILocalVariable(name: "grow_win", scope: !4997, file: !365, line: 1151, type: !127)
!5003 = !DILocation(line: 1151, column: 19, scope: !4997)
!5004 = !DILocation(line: 1153, column: 36, scope: !4997)
!5005 = !DILocation(line: 1153, column: 13, scope: !4997)
!5006 = !DILocation(line: 1153, column: 11, scope: !4997)
!5007 = !DILocation(line: 1154, column: 6, scope: !5008)
!5008 = distinct !DILexicalBlock(scope: !4997, file: !365, line: 1154, column: 6)
!5009 = !DILocation(line: 1154, column: 15, scope: !5008)
!5010 = !DILocation(line: 1154, column: 6, scope: !4997)
!5011 = !DILocation(line: 1155, column: 29, scope: !5012)
!5012 = distinct !DILexicalBlock(scope: !5008, file: !365, line: 1154, column: 23)
!5013 = !DILocation(line: 1155, column: 3, scope: !5012)
!5014 = !DILocation(line: 1155, column: 13, scope: !5012)
!5015 = !DILocation(line: 1155, column: 26, scope: !5012)
!5016 = !DILocation(line: 1156, column: 26, scope: !5012)
!5017 = !DILocation(line: 1156, column: 3, scope: !5012)
!5018 = !DILocation(line: 1156, column: 11, scope: !5012)
!5019 = !DILocation(line: 1156, column: 23, scope: !5012)
!5020 = !DILocation(line: 1157, column: 27, scope: !5012)
!5021 = !DILocation(line: 1157, column: 37, scope: !5012)
!5022 = !DILocation(line: 1157, column: 45, scope: !5012)
!5023 = !DILocation(line: 1157, column: 3, scope: !5012)
!5024 = !DILocation(line: 1158, column: 3, scope: !5012)
!5025 = !DILocation(line: 1161, column: 2, scope: !4997)
!5026 = !DILocation(line: 1162, column: 1, scope: !4997)
!5027 = distinct !DISubprogram(name: "try_rgrow_left", scope: !365, file: !365, line: 1164, type: !3086, isLocal: true, isDefinition: true, scopeLine: 1165, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!5028 = !DILocalVariable(name: "window", arg: 1, scope: !5027, file: !365, line: 1164, type: !127)
!5029 = !DILocation(line: 1164, column: 44, scope: !5027)
!5030 = !DILocalVariable(name: "count", arg: 2, scope: !5027, file: !365, line: 1164, type: !140)
!5031 = !DILocation(line: 1164, column: 56, scope: !5027)
!5032 = !DILocalVariable(name: "grow_win", scope: !5027, file: !365, line: 1166, type: !127)
!5033 = !DILocation(line: 1166, column: 19, scope: !5027)
!5034 = !DILocation(line: 1168, column: 35, scope: !5027)
!5035 = !DILocation(line: 1168, column: 13, scope: !5027)
!5036 = !DILocation(line: 1168, column: 11, scope: !5027)
!5037 = !DILocation(line: 1169, column: 6, scope: !5038)
!5038 = distinct !DILexicalBlock(scope: !5027, file: !365, line: 1169, column: 6)
!5039 = !DILocation(line: 1169, column: 15, scope: !5038)
!5040 = !DILocation(line: 1169, column: 6, scope: !5027)
!5041 = !DILocation(line: 1170, column: 28, scope: !5042)
!5042 = distinct !DILexicalBlock(scope: !5038, file: !365, line: 1169, column: 23)
!5043 = !DILocation(line: 1170, column: 3, scope: !5042)
!5044 = !DILocation(line: 1170, column: 13, scope: !5042)
!5045 = !DILocation(line: 1170, column: 25, scope: !5042)
!5046 = !DILocation(line: 1171, column: 27, scope: !5042)
!5047 = !DILocation(line: 1171, column: 3, scope: !5042)
!5048 = !DILocation(line: 1171, column: 11, scope: !5042)
!5049 = !DILocation(line: 1171, column: 24, scope: !5042)
!5050 = !DILocation(line: 1172, column: 27, scope: !5042)
!5051 = !DILocation(line: 1172, column: 37, scope: !5042)
!5052 = !DILocation(line: 1172, column: 45, scope: !5042)
!5053 = !DILocation(line: 1172, column: 3, scope: !5042)
!5054 = !DILocation(line: 1173, column: 3, scope: !5042)
!5055 = !DILocation(line: 1176, column: 2, scope: !5027)
!5056 = !DILocation(line: 1177, column: 1, scope: !5027)
!5057 = distinct !DISubprogram(name: "mainwindows_rresize_two", scope: !365, file: !365, line: 1085, type: !5058, isLocal: true, isDefinition: true, scopeLine: 1087, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!5058 = !DISubroutineType(types: !5059)
!5059 = !{null, !127, !127, !140}
!5060 = !DILocalVariable(name: "grow_win", arg: 1, scope: !5057, file: !365, line: 1085, type: !127)
!5061 = !DILocation(line: 1085, column: 54, scope: !5057)
!5062 = !DILocalVariable(name: "shrink_win", arg: 2, scope: !5057, file: !365, line: 1086, type: !127)
!5063 = !DILocation(line: 1086, column: 26, scope: !5057)
!5064 = !DILocalVariable(name: "count", arg: 3, scope: !5057, file: !365, line: 1086, type: !140)
!5065 = !DILocation(line: 1086, column: 42, scope: !5057)
!5066 = !DILocation(line: 1088, column: 2, scope: !5057)
!5067 = !DILocation(line: 1090, column: 20, scope: !5057)
!5068 = !DILocation(line: 1090, column: 30, scope: !5057)
!5069 = !DILocation(line: 1090, column: 2, scope: !5057)
!5070 = !DILocation(line: 1091, column: 20, scope: !5057)
!5071 = !DILocation(line: 1091, column: 33, scope: !5057)
!5072 = !DILocation(line: 1091, column: 32, scope: !5057)
!5073 = !DILocation(line: 1091, column: 2, scope: !5057)
!5074 = !DILocation(line: 1092, column: 2, scope: !5057)
!5075 = !DILocation(line: 1092, column: 12, scope: !5057)
!5076 = !DILocation(line: 1092, column: 18, scope: !5057)
!5077 = !DILocation(line: 1093, column: 2, scope: !5057)
!5078 = !DILocation(line: 1093, column: 14, scope: !5057)
!5079 = !DILocation(line: 1093, column: 20, scope: !5057)
!5080 = !DILocation(line: 1094, column: 1, scope: !5057)
!5081 = distinct !DISubprogram(name: "try_rshrink_right", scope: !365, file: !365, line: 1096, type: !3086, isLocal: true, isDefinition: true, scopeLine: 1097, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!5082 = !DILocalVariable(name: "window", arg: 1, scope: !5081, file: !365, line: 1096, type: !127)
!5083 = !DILocation(line: 1096, column: 47, scope: !5081)
!5084 = !DILocalVariable(name: "count", arg: 2, scope: !5081, file: !365, line: 1096, type: !140)
!5085 = !DILocation(line: 1096, column: 59, scope: !5081)
!5086 = !DILocalVariable(name: "shrink_win", scope: !5081, file: !365, line: 1098, type: !127)
!5087 = !DILocation(line: 1098, column: 19, scope: !5081)
!5088 = !DILocation(line: 1100, column: 2, scope: !5081)
!5089 = distinct !{!5089, !5088}
!5090 = !DILocation(line: 1100, column: 10, scope: !5091)
!5091 = !DILexicalBlockFile(scope: !5092, file: !365, discriminator: 1)
!5092 = distinct !DILexicalBlock(scope: !5093, file: !365, line: 1100, column: 10)
!5093 = distinct !DILexicalBlock(scope: !5081, file: !365, line: 1100, column: 4)
!5094 = !DILocation(line: 1100, column: 16, scope: !5091)
!5095 = !DILocation(line: 1100, column: 24, scope: !5096)
!5096 = !DILexicalBlockFile(scope: !5097, file: !365, discriminator: 2)
!5097 = distinct !DILexicalBlock(scope: !5092, file: !365, line: 1100, column: 22)
!5098 = !DILocation(line: 1100, column: 33, scope: !5099)
!5099 = !DILexicalBlockFile(scope: !5100, file: !365, discriminator: 3)
!5100 = distinct !DILexicalBlock(scope: !5092, file: !365, line: 1100, column: 31)
!5101 = !DILocation(line: 1100, column: 116, scope: !5099)
!5102 = !DILocation(line: 1100, column: 133, scope: !5103)
!5103 = !DILexicalBlockFile(scope: !5093, file: !365, discriminator: 4)
!5104 = !DILocation(line: 1102, column: 38, scope: !5081)
!5105 = !DILocation(line: 1102, column: 15, scope: !5081)
!5106 = !DILocation(line: 1102, column: 13, scope: !5081)
!5107 = !DILocation(line: 1103, column: 6, scope: !5108)
!5108 = distinct !DILexicalBlock(scope: !5081, file: !365, line: 1103, column: 6)
!5109 = !DILocation(line: 1103, column: 17, scope: !5108)
!5110 = !DILocation(line: 1103, column: 6, scope: !5081)
!5111 = !DILocation(line: 1104, column: 9, scope: !5112)
!5112 = distinct !DILexicalBlock(scope: !5113, file: !365, line: 1104, column: 7)
!5113 = distinct !DILexicalBlock(scope: !5108, file: !365, line: 1103, column: 25)
!5114 = !DILocation(line: 1104, column: 22, scope: !5112)
!5115 = !DILocation(line: 1104, column: 29, scope: !5112)
!5116 = !DILocation(line: 1104, column: 42, scope: !5112)
!5117 = !DILocation(line: 1104, column: 27, scope: !5112)
!5118 = !DILocation(line: 1104, column: 61, scope: !5112)
!5119 = !DILocation(line: 1104, column: 60, scope: !5112)
!5120 = !DILocation(line: 1104, column: 67, scope: !5112)
!5121 = !DILocation(line: 1104, column: 7, scope: !5113)
!5122 = !DILocation(line: 1105, column: 4, scope: !5123)
!5123 = distinct !DILexicalBlock(scope: !5112, file: !365, line: 1104, column: 73)
!5124 = !DILocation(line: 1108, column: 31, scope: !5113)
!5125 = !DILocation(line: 1108, column: 3, scope: !5113)
!5126 = !DILocation(line: 1108, column: 15, scope: !5113)
!5127 = !DILocation(line: 1108, column: 28, scope: !5113)
!5128 = !DILocation(line: 1109, column: 26, scope: !5113)
!5129 = !DILocation(line: 1109, column: 3, scope: !5113)
!5130 = !DILocation(line: 1109, column: 11, scope: !5113)
!5131 = !DILocation(line: 1109, column: 23, scope: !5113)
!5132 = !DILocation(line: 1111, column: 27, scope: !5113)
!5133 = !DILocation(line: 1111, column: 35, scope: !5113)
!5134 = !DILocation(line: 1111, column: 47, scope: !5113)
!5135 = !DILocation(line: 1111, column: 3, scope: !5113)
!5136 = !DILocation(line: 1112, column: 3, scope: !5113)
!5137 = !DILocation(line: 1115, column: 2, scope: !5081)
!5138 = !DILocation(line: 1116, column: 1, scope: !5081)
!5139 = distinct !DISubprogram(name: "try_rshrink_left", scope: !365, file: !365, line: 1118, type: !3086, isLocal: true, isDefinition: true, scopeLine: 1119, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!5140 = !DILocalVariable(name: "window", arg: 1, scope: !5139, file: !365, line: 1118, type: !127)
!5141 = !DILocation(line: 1118, column: 46, scope: !5139)
!5142 = !DILocalVariable(name: "count", arg: 2, scope: !5139, file: !365, line: 1118, type: !140)
!5143 = !DILocation(line: 1118, column: 58, scope: !5139)
!5144 = !DILocalVariable(name: "shrink_win", scope: !5139, file: !365, line: 1120, type: !127)
!5145 = !DILocation(line: 1120, column: 19, scope: !5139)
!5146 = !DILocation(line: 1122, column: 2, scope: !5139)
!5147 = distinct !{!5147, !5146}
!5148 = !DILocation(line: 1122, column: 10, scope: !5149)
!5149 = !DILexicalBlockFile(scope: !5150, file: !365, discriminator: 1)
!5150 = distinct !DILexicalBlock(scope: !5151, file: !365, line: 1122, column: 10)
!5151 = distinct !DILexicalBlock(scope: !5139, file: !365, line: 1122, column: 4)
!5152 = !DILocation(line: 1122, column: 16, scope: !5149)
!5153 = !DILocation(line: 1122, column: 24, scope: !5154)
!5154 = !DILexicalBlockFile(scope: !5155, file: !365, discriminator: 2)
!5155 = distinct !DILexicalBlock(scope: !5150, file: !365, line: 1122, column: 22)
!5156 = !DILocation(line: 1122, column: 33, scope: !5157)
!5157 = !DILexicalBlockFile(scope: !5158, file: !365, discriminator: 3)
!5158 = distinct !DILexicalBlock(scope: !5150, file: !365, line: 1122, column: 31)
!5159 = !DILocation(line: 1122, column: 116, scope: !5157)
!5160 = !DILocation(line: 1122, column: 133, scope: !5161)
!5161 = !DILexicalBlockFile(scope: !5151, file: !365, discriminator: 4)
!5162 = !DILocation(line: 1124, column: 37, scope: !5139)
!5163 = !DILocation(line: 1124, column: 15, scope: !5139)
!5164 = !DILocation(line: 1124, column: 13, scope: !5139)
!5165 = !DILocation(line: 1125, column: 6, scope: !5166)
!5166 = distinct !DILexicalBlock(scope: !5139, file: !365, line: 1125, column: 6)
!5167 = !DILocation(line: 1125, column: 17, scope: !5166)
!5168 = !DILocation(line: 1125, column: 6, scope: !5139)
!5169 = !DILocation(line: 1126, column: 9, scope: !5170)
!5170 = distinct !DILexicalBlock(scope: !5171, file: !365, line: 1126, column: 7)
!5171 = distinct !DILexicalBlock(scope: !5166, file: !365, line: 1125, column: 25)
!5172 = !DILocation(line: 1126, column: 22, scope: !5170)
!5173 = !DILocation(line: 1126, column: 29, scope: !5170)
!5174 = !DILocation(line: 1126, column: 42, scope: !5170)
!5175 = !DILocation(line: 1126, column: 27, scope: !5170)
!5176 = !DILocation(line: 1126, column: 61, scope: !5170)
!5177 = !DILocation(line: 1126, column: 60, scope: !5170)
!5178 = !DILocation(line: 1126, column: 67, scope: !5170)
!5179 = !DILocation(line: 1126, column: 7, scope: !5171)
!5180 = !DILocation(line: 1127, column: 4, scope: !5181)
!5181 = distinct !DILexicalBlock(scope: !5170, file: !365, line: 1126, column: 73)
!5182 = !DILocation(line: 1129, column: 27, scope: !5171)
!5183 = !DILocation(line: 1129, column: 3, scope: !5171)
!5184 = !DILocation(line: 1129, column: 11, scope: !5171)
!5185 = !DILocation(line: 1129, column: 24, scope: !5171)
!5186 = !DILocation(line: 1130, column: 30, scope: !5171)
!5187 = !DILocation(line: 1130, column: 3, scope: !5171)
!5188 = !DILocation(line: 1130, column: 15, scope: !5171)
!5189 = !DILocation(line: 1130, column: 27, scope: !5171)
!5190 = !DILocation(line: 1132, column: 27, scope: !5171)
!5191 = !DILocation(line: 1132, column: 35, scope: !5171)
!5192 = !DILocation(line: 1132, column: 47, scope: !5171)
!5193 = !DILocation(line: 1132, column: 3, scope: !5171)
!5194 = !DILocation(line: 1133, column: 3, scope: !5171)
!5195 = !DILocation(line: 1136, column: 2, scope: !5139)
!5196 = !DILocation(line: 1137, column: 1, scope: !5139)
!5197 = distinct !DISubprogram(name: "mainwindow_grow_int", scope: !365, file: !365, line: 1235, type: !2303, isLocal: true, isDefinition: true, scopeLine: 1236, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!5198 = !DILocalVariable(name: "count", arg: 1, scope: !5197, file: !365, line: 1235, type: !140)
!5199 = !DILocation(line: 1235, column: 37, scope: !5197)
!5200 = !DILocation(line: 1237, column: 6, scope: !5201)
!5201 = distinct !DILexicalBlock(scope: !5197, file: !365, line: 1237, column: 6)
!5202 = !DILocation(line: 1237, column: 12, scope: !5201)
!5203 = !DILocation(line: 1237, column: 6, scope: !5197)
!5204 = !DILocation(line: 1238, column: 3, scope: !5205)
!5205 = distinct !DILexicalBlock(scope: !5201, file: !365, line: 1237, column: 18)
!5206 = !DILocation(line: 1239, column: 13, scope: !5207)
!5207 = distinct !DILexicalBlock(scope: !5201, file: !365, line: 1239, column: 13)
!5208 = !DILocation(line: 1239, column: 19, scope: !5207)
!5209 = !DILocation(line: 1239, column: 13, scope: !5201)
!5210 = !DILocation(line: 1240, column: 49, scope: !5211)
!5211 = distinct !DILexicalBlock(scope: !5212, file: !365, line: 1240, column: 7)
!5212 = distinct !DILexicalBlock(scope: !5207, file: !365, line: 1239, column: 24)
!5213 = !DILocation(line: 1240, column: 62, scope: !5211)
!5214 = !DILocation(line: 1240, column: 28, scope: !5211)
!5215 = !DILocation(line: 1240, column: 74, scope: !5211)
!5216 = !DILocation(line: 1240, column: 84, scope: !5211)
!5217 = !DILocation(line: 1240, column: 83, scope: !5211)
!5218 = !DILocation(line: 1240, column: 8, scope: !5211)
!5219 = !DILocation(line: 1240, column: 7, scope: !5212)
!5220 = !DILocation(line: 1241, column: 41, scope: !5221)
!5221 = distinct !DILexicalBlock(scope: !5211, file: !365, line: 1240, column: 97)
!5222 = !DILocation(line: 1241, column: 4, scope: !5221)
!5223 = !DILocation(line: 1242, column: 3, scope: !5221)
!5224 = !DILocation(line: 1243, column: 2, scope: !5212)
!5225 = !DILocation(line: 1244, column: 47, scope: !5226)
!5226 = distinct !DILexicalBlock(scope: !5227, file: !365, line: 1244, column: 7)
!5227 = distinct !DILexicalBlock(scope: !5207, file: !365, line: 1243, column: 9)
!5228 = !DILocation(line: 1244, column: 60, scope: !5226)
!5229 = !DILocation(line: 1244, column: 26, scope: !5226)
!5230 = !DILocation(line: 1244, column: 72, scope: !5226)
!5231 = !DILocation(line: 1244, column: 81, scope: !5226)
!5232 = !DILocation(line: 1244, column: 8, scope: !5226)
!5233 = !DILocation(line: 1244, column: 7, scope: !5227)
!5234 = !DILocation(line: 1245, column: 41, scope: !5235)
!5235 = distinct !DILexicalBlock(scope: !5226, file: !365, line: 1244, column: 94)
!5236 = !DILocation(line: 1245, column: 4, scope: !5235)
!5237 = !DILocation(line: 1246, column: 3, scope: !5235)
!5238 = !DILocation(line: 1248, column: 1, scope: !5197)
!5239 = distinct !DISubprogram(name: "_cmd_window_show_opt", scope: !365, file: !365, line: 1383, type: !5240, isLocal: true, isDefinition: true, scopeLine: 1384, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!5240 = !DISubroutineType(types: !5241)
!5241 = !{null, !193, !140}
!5242 = !DILocalVariable(name: "data", arg: 1, scope: !5239, file: !365, line: 1383, type: !193)
!5243 = !DILocation(line: 1383, column: 46, scope: !5239)
!5244 = !DILocalVariable(name: "right", arg: 2, scope: !5239, file: !365, line: 1383, type: !140)
!5245 = !DILocation(line: 1383, column: 56, scope: !5239)
!5246 = !DILocalVariable(name: "parent", scope: !5239, file: !365, line: 1385, type: !127)
!5247 = !DILocation(line: 1385, column: 19, scope: !5239)
!5248 = !DILocalVariable(name: "window", scope: !5239, file: !365, line: 1386, type: !133)
!5249 = !DILocation(line: 1386, column: 14, scope: !5239)
!5250 = !DILocation(line: 1388, column: 7, scope: !5251)
!5251 = distinct !DILexicalBlock(scope: !5239, file: !365, line: 1388, column: 6)
!5252 = !DILocation(line: 1388, column: 6, scope: !5251)
!5253 = !DILocation(line: 1388, column: 12, scope: !5251)
!5254 = !DILocation(line: 1388, column: 6, scope: !5239)
!5255 = !DILocation(line: 1388, column: 21, scope: !5256)
!5256 = !DILexicalBlockFile(scope: !5251, file: !365, discriminator: 1)
!5257 = distinct !{!5257, !5258}
!5258 = !DILocation(line: 1388, column: 21, scope: !5251)
!5259 = !DILocation(line: 1388, column: 26, scope: !5260)
!5260 = !DILexicalBlockFile(scope: !5261, file: !365, discriminator: 2)
!5261 = distinct !DILexicalBlock(scope: !5251, file: !365, line: 1388, column: 24)
!5262 = !DILocation(line: 1388, column: 108, scope: !5263)
!5263 = !DILexicalBlockFile(scope: !5260, file: !365, discriminator: 4)
!5264 = !DILocation(line: 1388, column: 123, scope: !5260)
!5265 = !DILocation(line: 1388, column: 131, scope: !5266)
!5266 = !DILexicalBlockFile(scope: !5261, file: !365, discriminator: 3)
!5267 = !DILocation(line: 1390, column: 17, scope: !5268)
!5268 = distinct !DILexicalBlock(scope: !5239, file: !365, line: 1390, column: 6)
!5269 = !DILocation(line: 1390, column: 6, scope: !5268)
!5270 = !DILocation(line: 1390, column: 6, scope: !5239)
!5271 = !DILocation(line: 1391, column: 36, scope: !5272)
!5272 = distinct !DILexicalBlock(scope: !5268, file: !365, line: 1390, column: 30)
!5273 = !DILocation(line: 1391, column: 31, scope: !5272)
!5274 = !DILocation(line: 1391, column: 12, scope: !5275)
!5275 = !DILexicalBlockFile(scope: !5272, file: !365, discriminator: 1)
!5276 = !DILocation(line: 1391, column: 10, scope: !5272)
!5277 = !DILocation(line: 1392, column: 7, scope: !5278)
!5278 = distinct !DILexicalBlock(scope: !5272, file: !365, line: 1392, column: 7)
!5279 = !DILocation(line: 1392, column: 14, scope: !5278)
!5280 = !DILocation(line: 1392, column: 7, scope: !5272)
!5281 = !DILocation(line: 1393, column: 41, scope: !5282)
!5282 = distinct !DILexicalBlock(scope: !5278, file: !365, line: 1392, column: 22)
!5283 = !DILocation(line: 1393, column: 97, scope: !5282)
!5284 = !DILocation(line: 1393, column: 4, scope: !5282)
!5285 = !DILocation(line: 1395, column: 3, scope: !5282)
!5286 = !DILocation(line: 1396, column: 2, scope: !5272)
!5287 = !DILocation(line: 1397, column: 29, scope: !5288)
!5288 = distinct !DILexicalBlock(scope: !5268, file: !365, line: 1396, column: 9)
!5289 = !DILocation(line: 1397, column: 41, scope: !5288)
!5290 = !DILocation(line: 1397, column: 56, scope: !5288)
!5291 = !DILocation(line: 1397, column: 12, scope: !5288)
!5292 = !DILocation(line: 1397, column: 10, scope: !5288)
!5293 = !DILocation(line: 1400, column: 6, scope: !5294)
!5294 = distinct !DILexicalBlock(scope: !5239, file: !365, line: 1400, column: 6)
!5295 = !DILocation(line: 1400, column: 13, scope: !5294)
!5296 = !DILocation(line: 1400, column: 20, scope: !5294)
!5297 = !DILocation(line: 1400, column: 46, scope: !5298)
!5298 = !DILexicalBlockFile(scope: !5294, file: !365, discriminator: 1)
!5299 = !DILocation(line: 1400, column: 55, scope: !5298)
!5300 = !DILocation(line: 1400, column: 25, scope: !5298)
!5301 = !DILocation(line: 1400, column: 67, scope: !5298)
!5302 = !DILocation(line: 1400, column: 75, scope: !5298)
!5303 = !DILocation(line: 1400, column: 86, scope: !5298)
!5304 = !DILocation(line: 1400, column: 82, scope: !5298)
!5305 = !DILocation(line: 1400, column: 6, scope: !5298)
!5306 = !DILocation(line: 1401, column: 3, scope: !5294)
!5307 = !DILocation(line: 1403, column: 28, scope: !5308)
!5308 = distinct !DILexicalBlock(scope: !5239, file: !365, line: 1403, column: 6)
!5309 = !DILocation(line: 1403, column: 37, scope: !5308)
!5310 = !DILocation(line: 1403, column: 7, scope: !5308)
!5311 = !DILocation(line: 1403, column: 49, scope: !5308)
!5312 = !DILocation(line: 1403, column: 6, scope: !5308)
!5313 = !DILocation(line: 1403, column: 6, scope: !5239)
!5314 = !DILocation(line: 1404, column: 8, scope: !5315)
!5315 = distinct !DILexicalBlock(scope: !5316, file: !365, line: 1404, column: 7)
!5316 = distinct !DILexicalBlock(scope: !5308, file: !365, line: 1403, column: 57)
!5317 = !DILocation(line: 1404, column: 7, scope: !5316)
!5318 = !DILocation(line: 1405, column: 41, scope: !5319)
!5319 = distinct !DILexicalBlock(scope: !5315, file: !365, line: 1404, column: 50)
!5320 = !DILocation(line: 1405, column: 4, scope: !5319)
!5321 = !DILocation(line: 1407, column: 4, scope: !5319)
!5322 = !DILocation(line: 1409, column: 2, scope: !5316)
!5323 = !DILocation(line: 1411, column: 29, scope: !5239)
!5324 = !DILocation(line: 1411, column: 11, scope: !5239)
!5325 = !DILocation(line: 1411, column: 9, scope: !5239)
!5326 = !DILocation(line: 1412, column: 6, scope: !5327)
!5327 = distinct !DILexicalBlock(scope: !5239, file: !365, line: 1412, column: 6)
!5328 = !DILocation(line: 1412, column: 13, scope: !5327)
!5329 = !DILocation(line: 1412, column: 6, scope: !5239)
!5330 = !DILocation(line: 1413, column: 40, scope: !5331)
!5331 = distinct !DILexicalBlock(scope: !5327, file: !365, line: 1412, column: 21)
!5332 = !DILocation(line: 1413, column: 3, scope: !5331)
!5333 = !DILocation(line: 1414, column: 3, scope: !5331)
!5334 = !DILocation(line: 1417, column: 19, scope: !5239)
!5335 = !DILocation(line: 1417, column: 2, scope: !5239)
!5336 = !DILocation(line: 1417, column: 10, scope: !5239)
!5337 = !DILocation(line: 1417, column: 17, scope: !5239)
!5338 = !DILocation(line: 1418, column: 22, scope: !5239)
!5339 = !DILocation(line: 1418, column: 30, scope: !5239)
!5340 = !DILocation(line: 1418, column: 2, scope: !5239)
!5341 = !DILocation(line: 1420, column: 6, scope: !5342)
!5342 = distinct !DILexicalBlock(scope: !5239, file: !365, line: 1420, column: 6)
!5343 = !DILocation(line: 1420, column: 6, scope: !5239)
!5344 = !DILocation(line: 1421, column: 25, scope: !5342)
!5345 = !DILocation(line: 1421, column: 3, scope: !5342)
!5346 = !DILocation(line: 1423, column: 17, scope: !5239)
!5347 = !DILocation(line: 1424, column: 20, scope: !5239)
!5348 = !DILocation(line: 1424, column: 2, scope: !5239)
!5349 = !DILocation(line: 1425, column: 1, scope: !5239)
!5350 = !DILocation(line: 1425, column: 1, scope: !5351)
!5351 = !DILexicalBlockFile(scope: !5239, file: !365, discriminator: 1)
!5352 = distinct !DISubprogram(name: "mainwindows_find_left_upper", scope: !365, file: !365, line: 413, type: !1916, isLocal: true, isDefinition: true, scopeLine: 414, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!5353 = !DILocalVariable(name: "window", arg: 1, scope: !5352, file: !365, line: 413, type: !127)
!5354 = !DILocation(line: 413, column: 70, scope: !5352)
!5355 = !DILocalVariable(name: "best", scope: !5352, file: !365, line: 415, type: !127)
!5356 = !DILocation(line: 415, column: 19, scope: !5352)
!5357 = !DILocation(line: 417, column: 31, scope: !5352)
!5358 = !DILocation(line: 417, column: 9, scope: !5352)
!5359 = !DILocation(line: 417, column: 7, scope: !5352)
!5360 = !DILocation(line: 418, column: 6, scope: !5361)
!5361 = distinct !DILexicalBlock(scope: !5352, file: !365, line: 418, column: 6)
!5362 = !DILocation(line: 418, column: 11, scope: !5361)
!5363 = !DILocation(line: 418, column: 6, scope: !5352)
!5364 = !DILocation(line: 419, column: 55, scope: !5361)
!5365 = !DILocation(line: 419, column: 32, scope: !5361)
!5366 = !DILocation(line: 419, column: 10, scope: !5367)
!5367 = !DILexicalBlockFile(scope: !5361, file: !365, discriminator: 1)
!5368 = !DILocation(line: 419, column: 8, scope: !5361)
!5369 = !DILocation(line: 419, column: 3, scope: !5361)
!5370 = !DILocation(line: 421, column: 9, scope: !5352)
!5371 = !DILocation(line: 421, column: 2, scope: !5352)
!5372 = distinct !DISubprogram(name: "mainwindows_find_lower_right", scope: !365, file: !365, line: 336, type: !1916, isLocal: true, isDefinition: true, scopeLine: 337, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!5373 = !DILocalVariable(name: "window", arg: 1, scope: !5372, file: !365, line: 336, type: !127)
!5374 = !DILocation(line: 336, column: 71, scope: !5372)
!5375 = !DILocalVariable(name: "best", scope: !5372, file: !365, line: 338, type: !127)
!5376 = !DILocation(line: 338, column: 19, scope: !5372)
!5377 = !DILocation(line: 340, column: 32, scope: !5372)
!5378 = !DILocation(line: 340, column: 9, scope: !5372)
!5379 = !DILocation(line: 340, column: 7, scope: !5372)
!5380 = !DILocation(line: 341, column: 6, scope: !5381)
!5381 = distinct !DILexicalBlock(scope: !5372, file: !365, line: 341, column: 6)
!5382 = !DILocation(line: 341, column: 11, scope: !5381)
!5383 = !DILocation(line: 341, column: 6, scope: !5372)
!5384 = !DILocation(line: 342, column: 33, scope: !5381)
!5385 = !DILocation(line: 342, column: 10, scope: !5381)
!5386 = !DILocation(line: 342, column: 8, scope: !5381)
!5387 = !DILocation(line: 342, column: 3, scope: !5381)
!5388 = !DILocation(line: 344, column: 9, scope: !5372)
!5389 = !DILocation(line: 344, column: 2, scope: !5372)
!5390 = distinct !DISubprogram(name: "window_refnum_left", scope: !365, file: !365, line: 1604, type: !2729, isLocal: true, isDefinition: true, scopeLine: 1605, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!5391 = !DILocalVariable(name: "refnum", arg: 1, scope: !5390, file: !365, line: 1604, type: !140)
!5392 = !DILocation(line: 1604, column: 35, scope: !5390)
!5393 = !DILocalVariable(name: "wrap", arg: 2, scope: !5390, file: !365, line: 1604, type: !140)
!5394 = !DILocation(line: 1604, column: 47, scope: !5390)
!5395 = !DILocalVariable(name: "find_sticky", scope: !5390, file: !365, line: 1606, type: !127)
!5396 = !DILocation(line: 1606, column: 26, scope: !5390)
!5397 = !DILocalVariable(name: "window", scope: !5390, file: !365, line: 1607, type: !133)
!5398 = !DILocation(line: 1607, column: 14, scope: !5390)
!5399 = !DILocation(line: 1609, column: 30, scope: !5390)
!5400 = !DILocation(line: 1609, column: 11, scope: !5390)
!5401 = !DILocation(line: 1609, column: 9, scope: !5390)
!5402 = !DILocation(line: 1610, column: 2, scope: !5390)
!5403 = distinct !{!5403, !5402}
!5404 = !DILocation(line: 1610, column: 10, scope: !5405)
!5405 = !DILexicalBlockFile(scope: !5406, file: !365, discriminator: 1)
!5406 = distinct !DILexicalBlock(scope: !5407, file: !365, line: 1610, column: 10)
!5407 = distinct !DILexicalBlock(scope: !5390, file: !365, line: 1610, column: 4)
!5408 = !DILocation(line: 1610, column: 17, scope: !5405)
!5409 = !DILocation(line: 1610, column: 5, scope: !5410)
!5410 = !DILexicalBlockFile(scope: !5411, file: !365, discriminator: 2)
!5411 = distinct !DILexicalBlock(scope: !5406, file: !365, line: 1610, column: 3)
!5412 = !DILocation(line: 1610, column: 14, scope: !5413)
!5413 = !DILexicalBlockFile(scope: !5414, file: !365, discriminator: 3)
!5414 = distinct !DILexicalBlock(scope: !5406, file: !365, line: 1610, column: 12)
!5415 = !DILocation(line: 1610, column: 101, scope: !5413)
!5416 = !DILocation(line: 1610, column: 117, scope: !5417)
!5417 = !DILexicalBlockFile(scope: !5407, file: !365, discriminator: 4)
!5418 = !DILocation(line: 1612, column: 39, scope: !5390)
!5419 = !DILocation(line: 1612, column: 48, scope: !5390)
!5420 = !DILocation(line: 1612, column: 18, scope: !5390)
!5421 = !DILocation(line: 1612, column: 60, scope: !5390)
!5422 = !DILocation(line: 1612, column: 69, scope: !5390)
!5423 = !DILocation(line: 1612, column: 16, scope: !5390)
!5424 = !DILocation(line: 1613, column: 26, scope: !5390)
!5425 = !DILocation(line: 1613, column: 35, scope: !5390)
!5426 = !DILocation(line: 1613, column: 5, scope: !5390)
!5427 = !DILocation(line: 1613, column: 47, scope: !5390)
!5428 = !DILocation(line: 1612, column: 16, scope: !5429)
!5429 = !DILexicalBlockFile(scope: !5390, file: !365, discriminator: 1)
!5430 = !DILocation(line: 1612, column: 16, scope: !5431)
!5431 = !DILexicalBlockFile(scope: !5390, file: !365, discriminator: 2)
!5432 = !DILocation(line: 1612, column: 16, scope: !5433)
!5433 = !DILexicalBlockFile(scope: !5390, file: !365, discriminator: 3)
!5434 = !DILocation(line: 1612, column: 14, scope: !5433)
!5435 = !DILocation(line: 1615, column: 2, scope: !5390)
!5436 = distinct !{!5436, !5435}
!5437 = !DILocation(line: 1616, column: 31, scope: !5438)
!5438 = distinct !DILexicalBlock(scope: !5390, file: !365, line: 1615, column: 5)
!5439 = !DILocation(line: 1616, column: 39, scope: !5438)
!5440 = !DILocation(line: 1616, column: 12, scope: !5438)
!5441 = !DILocation(line: 1616, column: 10, scope: !5438)
!5442 = !DILocation(line: 1617, column: 7, scope: !5443)
!5443 = distinct !DILexicalBlock(scope: !5438, file: !365, line: 1617, column: 7)
!5444 = !DILocation(line: 1617, column: 14, scope: !5443)
!5445 = !DILocation(line: 1617, column: 7, scope: !5438)
!5446 = !DILocation(line: 1618, column: 4, scope: !5443)
!5447 = !DILocation(line: 1620, column: 31, scope: !5438)
!5448 = !DILocation(line: 1620, column: 12, scope: !5438)
!5449 = !DILocation(line: 1620, column: 10, scope: !5438)
!5450 = !DILocation(line: 1621, column: 2, scope: !5438)
!5451 = !DILocation(line: 1621, column: 37, scope: !5429)
!5452 = !DILocation(line: 1621, column: 46, scope: !5429)
!5453 = !DILocation(line: 1621, column: 16, scope: !5429)
!5454 = !DILocation(line: 1621, column: 58, scope: !5429)
!5455 = !DILocation(line: 1621, column: 15, scope: !5429)
!5456 = !DILocation(line: 1621, column: 65, scope: !5429)
!5457 = !DILocation(line: 1621, column: 69, scope: !5431)
!5458 = !DILocation(line: 1621, column: 82, scope: !5431)
!5459 = !DILocation(line: 1621, column: 13, scope: !5431)
!5460 = !DILocation(line: 1621, column: 39, scope: !5433)
!5461 = !DILocation(line: 1621, column: 48, scope: !5433)
!5462 = !DILocation(line: 1621, column: 18, scope: !5433)
!5463 = !DILocation(line: 1621, column: 60, scope: !5433)
!5464 = !DILocation(line: 1621, column: 17, scope: !5433)
!5465 = !DILocation(line: 1621, column: 67, scope: !5433)
!5466 = !DILocation(line: 1621, column: 93, scope: !5467)
!5467 = !DILexicalBlockFile(scope: !5390, file: !365, discriminator: 4)
!5468 = !DILocation(line: 1621, column: 102, scope: !5467)
!5469 = !DILocation(line: 1621, column: 72, scope: !5467)
!5470 = !DILocation(line: 1621, column: 114, scope: !5467)
!5471 = !DILocation(line: 1621, column: 126, scope: !5467)
!5472 = !DILocation(line: 1621, column: 122, scope: !5467)
!5473 = !DILocation(line: 1621, column: 13, scope: !5474)
!5474 = !DILexicalBlockFile(scope: !5390, file: !365, discriminator: 5)
!5475 = !DILocation(line: 1621, column: 11, scope: !5476)
!5476 = !DILexicalBlockFile(scope: !5390, file: !365, discriminator: 6)
!5477 = !DILocation(line: 1621, column: 2, scope: !5476)
!5478 = !DILocation(line: 1623, column: 16, scope: !5390)
!5479 = !DILocation(line: 1623, column: 9, scope: !5390)
!5480 = !DILocation(line: 1624, column: 1, scope: !5390)
!5481 = distinct !DISubprogram(name: "window_refnum_right", scope: !365, file: !365, line: 1626, type: !2729, isLocal: true, isDefinition: true, scopeLine: 1627, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!5482 = !DILocalVariable(name: "refnum", arg: 1, scope: !5481, file: !365, line: 1626, type: !140)
!5483 = !DILocation(line: 1626, column: 36, scope: !5481)
!5484 = !DILocalVariable(name: "wrap", arg: 2, scope: !5481, file: !365, line: 1626, type: !140)
!5485 = !DILocation(line: 1626, column: 48, scope: !5481)
!5486 = !DILocalVariable(name: "find_sticky", scope: !5481, file: !365, line: 1628, type: !127)
!5487 = !DILocation(line: 1628, column: 26, scope: !5481)
!5488 = !DILocalVariable(name: "window", scope: !5481, file: !365, line: 1629, type: !133)
!5489 = !DILocation(line: 1629, column: 14, scope: !5481)
!5490 = !DILocation(line: 1631, column: 30, scope: !5481)
!5491 = !DILocation(line: 1631, column: 11, scope: !5481)
!5492 = !DILocation(line: 1631, column: 9, scope: !5481)
!5493 = !DILocation(line: 1632, column: 2, scope: !5481)
!5494 = distinct !{!5494, !5493}
!5495 = !DILocation(line: 1632, column: 10, scope: !5496)
!5496 = !DILexicalBlockFile(scope: !5497, file: !365, discriminator: 1)
!5497 = distinct !DILexicalBlock(scope: !5498, file: !365, line: 1632, column: 10)
!5498 = distinct !DILexicalBlock(scope: !5481, file: !365, line: 1632, column: 4)
!5499 = !DILocation(line: 1632, column: 17, scope: !5496)
!5500 = !DILocation(line: 1632, column: 5, scope: !5501)
!5501 = !DILexicalBlockFile(scope: !5502, file: !365, discriminator: 2)
!5502 = distinct !DILexicalBlock(scope: !5497, file: !365, line: 1632, column: 3)
!5503 = !DILocation(line: 1632, column: 14, scope: !5504)
!5504 = !DILexicalBlockFile(scope: !5505, file: !365, discriminator: 3)
!5505 = distinct !DILexicalBlock(scope: !5497, file: !365, line: 1632, column: 12)
!5506 = !DILocation(line: 1632, column: 101, scope: !5504)
!5507 = !DILocation(line: 1632, column: 117, scope: !5508)
!5508 = !DILexicalBlockFile(scope: !5498, file: !365, discriminator: 4)
!5509 = !DILocation(line: 1634, column: 39, scope: !5481)
!5510 = !DILocation(line: 1634, column: 48, scope: !5481)
!5511 = !DILocation(line: 1634, column: 18, scope: !5481)
!5512 = !DILocation(line: 1634, column: 60, scope: !5481)
!5513 = !DILocation(line: 1634, column: 69, scope: !5481)
!5514 = !DILocation(line: 1634, column: 16, scope: !5481)
!5515 = !DILocation(line: 1635, column: 26, scope: !5481)
!5516 = !DILocation(line: 1635, column: 35, scope: !5481)
!5517 = !DILocation(line: 1635, column: 5, scope: !5481)
!5518 = !DILocation(line: 1635, column: 47, scope: !5481)
!5519 = !DILocation(line: 1634, column: 16, scope: !5520)
!5520 = !DILexicalBlockFile(scope: !5481, file: !365, discriminator: 1)
!5521 = !DILocation(line: 1634, column: 16, scope: !5522)
!5522 = !DILexicalBlockFile(scope: !5481, file: !365, discriminator: 2)
!5523 = !DILocation(line: 1634, column: 16, scope: !5524)
!5524 = !DILexicalBlockFile(scope: !5481, file: !365, discriminator: 3)
!5525 = !DILocation(line: 1634, column: 14, scope: !5524)
!5526 = !DILocation(line: 1637, column: 2, scope: !5481)
!5527 = distinct !{!5527, !5526}
!5528 = !DILocation(line: 1638, column: 31, scope: !5529)
!5529 = distinct !DILexicalBlock(scope: !5481, file: !365, line: 1637, column: 5)
!5530 = !DILocation(line: 1638, column: 39, scope: !5529)
!5531 = !DILocation(line: 1638, column: 12, scope: !5529)
!5532 = !DILocation(line: 1638, column: 10, scope: !5529)
!5533 = !DILocation(line: 1639, column: 7, scope: !5534)
!5534 = distinct !DILexicalBlock(scope: !5529, file: !365, line: 1639, column: 7)
!5535 = !DILocation(line: 1639, column: 14, scope: !5534)
!5536 = !DILocation(line: 1639, column: 7, scope: !5529)
!5537 = !DILocation(line: 1640, column: 4, scope: !5534)
!5538 = !DILocation(line: 1642, column: 31, scope: !5529)
!5539 = !DILocation(line: 1642, column: 12, scope: !5529)
!5540 = !DILocation(line: 1642, column: 10, scope: !5529)
!5541 = !DILocation(line: 1643, column: 2, scope: !5529)
!5542 = !DILocation(line: 1643, column: 37, scope: !5520)
!5543 = !DILocation(line: 1643, column: 46, scope: !5520)
!5544 = !DILocation(line: 1643, column: 16, scope: !5520)
!5545 = !DILocation(line: 1643, column: 58, scope: !5520)
!5546 = !DILocation(line: 1643, column: 15, scope: !5520)
!5547 = !DILocation(line: 1643, column: 65, scope: !5520)
!5548 = !DILocation(line: 1643, column: 69, scope: !5522)
!5549 = !DILocation(line: 1643, column: 82, scope: !5522)
!5550 = !DILocation(line: 1643, column: 13, scope: !5522)
!5551 = !DILocation(line: 1643, column: 39, scope: !5524)
!5552 = !DILocation(line: 1643, column: 48, scope: !5524)
!5553 = !DILocation(line: 1643, column: 18, scope: !5524)
!5554 = !DILocation(line: 1643, column: 60, scope: !5524)
!5555 = !DILocation(line: 1643, column: 17, scope: !5524)
!5556 = !DILocation(line: 1643, column: 67, scope: !5524)
!5557 = !DILocation(line: 1643, column: 93, scope: !5558)
!5558 = !DILexicalBlockFile(scope: !5481, file: !365, discriminator: 4)
!5559 = !DILocation(line: 1643, column: 102, scope: !5558)
!5560 = !DILocation(line: 1643, column: 72, scope: !5558)
!5561 = !DILocation(line: 1643, column: 114, scope: !5558)
!5562 = !DILocation(line: 1643, column: 126, scope: !5558)
!5563 = !DILocation(line: 1643, column: 122, scope: !5558)
!5564 = !DILocation(line: 1643, column: 13, scope: !5565)
!5565 = !DILexicalBlockFile(scope: !5481, file: !365, discriminator: 5)
!5566 = !DILocation(line: 1643, column: 11, scope: !5567)
!5567 = !DILexicalBlockFile(scope: !5481, file: !365, discriminator: 6)
!5568 = !DILocation(line: 1643, column: 2, scope: !5567)
!5569 = !DILocation(line: 1645, column: 16, scope: !5481)
!5570 = !DILocation(line: 1645, column: 9, scope: !5481)
!5571 = !DILocation(line: 1646, column: 1, scope: !5481)
!5572 = distinct !DISubprogram(name: "window_reparent", scope: !365, file: !365, line: 1668, type: !5573, isLocal: true, isDefinition: true, scopeLine: 1669, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!5573 = !DISubroutineType(types: !5574)
!5574 = !{null, !133, !127}
!5575 = !DILocalVariable(name: "win", arg: 1, scope: !5572, file: !365, line: 1668, type: !133)
!5576 = !DILocation(line: 1668, column: 41, scope: !5572)
!5577 = !DILocalVariable(name: "mainwin", arg: 2, scope: !5572, file: !365, line: 1668, type: !127)
!5578 = !DILocation(line: 1668, column: 63, scope: !5572)
!5579 = !DILocalVariable(name: "old_mainwin", scope: !5572, file: !365, line: 1670, type: !127)
!5580 = !DILocation(line: 1670, column: 19, scope: !5572)
!5581 = !DILocation(line: 1672, column: 39, scope: !5572)
!5582 = !DILocation(line: 1672, column: 45, scope: !5572)
!5583 = !DILocation(line: 1672, column: 18, scope: !5572)
!5584 = !DILocation(line: 1672, column: 57, scope: !5572)
!5585 = !DILocation(line: 1672, column: 14, scope: !5572)
!5586 = !DILocation(line: 1674, column: 6, scope: !5587)
!5587 = distinct !DILexicalBlock(scope: !5572, file: !365, line: 1674, column: 6)
!5588 = !DILocation(line: 1674, column: 21, scope: !5587)
!5589 = !DILocation(line: 1674, column: 18, scope: !5587)
!5590 = !DILocation(line: 1674, column: 6, scope: !5572)
!5591 = !DILocation(line: 1675, column: 27, scope: !5592)
!5592 = distinct !DILexicalBlock(scope: !5587, file: !365, line: 1674, column: 30)
!5593 = !DILocation(line: 1675, column: 3, scope: !5592)
!5594 = !DILocation(line: 1677, column: 7, scope: !5595)
!5595 = distinct !DILexicalBlock(scope: !5592, file: !365, line: 1677, column: 7)
!5596 = !DILocation(line: 1677, column: 20, scope: !5595)
!5597 = !DILocation(line: 1677, column: 30, scope: !5595)
!5598 = !DILocation(line: 1677, column: 27, scope: !5595)
!5599 = !DILocation(line: 1677, column: 7, scope: !5592)
!5600 = !DILocation(line: 1678, column: 29, scope: !5601)
!5601 = distinct !DILexicalBlock(scope: !5595, file: !365, line: 1677, column: 35)
!5602 = !DILocation(line: 1678, column: 42, scope: !5601)
!5603 = !DILocation(line: 1678, column: 4, scope: !5601)
!5604 = !DILocation(line: 1679, column: 8, scope: !5605)
!5605 = distinct !DILexicalBlock(scope: !5601, file: !365, line: 1679, column: 8)
!5606 = !DILocation(line: 1679, column: 23, scope: !5605)
!5607 = !DILocation(line: 1679, column: 8, scope: !5601)
!5608 = !DILocation(line: 1680, column: 22, scope: !5609)
!5609 = distinct !DILexicalBlock(scope: !5605, file: !365, line: 1679, column: 31)
!5610 = !DILocation(line: 1680, column: 20, scope: !5609)
!5611 = !DILocation(line: 1681, column: 23, scope: !5609)
!5612 = !DILocation(line: 1681, column: 32, scope: !5609)
!5613 = !DILocation(line: 1681, column: 5, scope: !5609)
!5614 = !DILocation(line: 1682, column: 4, scope: !5609)
!5615 = !DILocation(line: 1683, column: 3, scope: !5601)
!5616 = !DILocation(line: 1685, column: 23, scope: !5592)
!5617 = !DILocation(line: 1685, column: 28, scope: !5592)
!5618 = !DILocation(line: 1685, column: 3, scope: !5592)
!5619 = !DILocation(line: 1686, column: 21, scope: !5592)
!5620 = !DILocation(line: 1686, column: 3, scope: !5592)
!5621 = !DILocation(line: 1687, column: 2, scope: !5592)
!5622 = !DILocation(line: 1688, column: 1, scope: !5572)
!5623 = distinct !DISubprogram(name: "mainwindows_find_upper_left", scope: !365, file: !365, line: 402, type: !1916, isLocal: true, isDefinition: true, scopeLine: 403, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!5624 = !DILocalVariable(name: "window", arg: 1, scope: !5623, file: !365, line: 402, type: !127)
!5625 = !DILocation(line: 402, column: 70, scope: !5623)
!5626 = !DILocalVariable(name: "best", scope: !5623, file: !365, line: 404, type: !127)
!5627 = !DILocation(line: 404, column: 19, scope: !5623)
!5628 = !DILocation(line: 406, column: 31, scope: !5623)
!5629 = !DILocation(line: 406, column: 9, scope: !5623)
!5630 = !DILocation(line: 406, column: 7, scope: !5623)
!5631 = !DILocation(line: 407, column: 6, scope: !5632)
!5632 = distinct !DILexicalBlock(scope: !5623, file: !365, line: 407, column: 6)
!5633 = !DILocation(line: 407, column: 11, scope: !5632)
!5634 = !DILocation(line: 407, column: 6, scope: !5623)
!5635 = !DILocation(line: 408, column: 33, scope: !5632)
!5636 = !DILocation(line: 408, column: 10, scope: !5632)
!5637 = !DILocation(line: 408, column: 8, scope: !5632)
!5638 = !DILocation(line: 408, column: 3, scope: !5632)
!5639 = !DILocation(line: 410, column: 9, scope: !5623)
!5640 = !DILocation(line: 410, column: 2, scope: !5623)
!5641 = distinct !DISubprogram(name: "window_rgrow_int", scope: !365, file: !365, line: 1439, type: !2303, isLocal: true, isDefinition: true, scopeLine: 1440, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!5642 = !DILocalVariable(name: "count", arg: 1, scope: !5641, file: !365, line: 1439, type: !140)
!5643 = !DILocation(line: 1439, column: 34, scope: !5641)
!5644 = !DILocation(line: 1441, column: 6, scope: !5645)
!5645 = distinct !DILexicalBlock(scope: !5641, file: !365, line: 1441, column: 6)
!5646 = !DILocation(line: 1441, column: 12, scope: !5645)
!5647 = !DILocation(line: 1441, column: 6, scope: !5641)
!5648 = !DILocation(line: 1442, column: 3, scope: !5649)
!5649 = distinct !DILexicalBlock(scope: !5645, file: !365, line: 1441, column: 18)
!5650 = !DILocation(line: 1443, column: 13, scope: !5651)
!5651 = distinct !DILexicalBlock(scope: !5645, file: !365, line: 1443, column: 13)
!5652 = !DILocation(line: 1443, column: 19, scope: !5651)
!5653 = !DILocation(line: 1443, column: 13, scope: !5645)
!5654 = !DILocation(line: 1444, column: 50, scope: !5655)
!5655 = distinct !DILexicalBlock(scope: !5656, file: !365, line: 1444, column: 7)
!5656 = distinct !DILexicalBlock(scope: !5651, file: !365, line: 1443, column: 24)
!5657 = !DILocation(line: 1444, column: 63, scope: !5655)
!5658 = !DILocation(line: 1444, column: 29, scope: !5655)
!5659 = !DILocation(line: 1444, column: 75, scope: !5655)
!5660 = !DILocation(line: 1444, column: 85, scope: !5655)
!5661 = !DILocation(line: 1444, column: 84, scope: !5655)
!5662 = !DILocation(line: 1444, column: 8, scope: !5655)
!5663 = !DILocation(line: 1444, column: 7, scope: !5656)
!5664 = !DILocation(line: 1445, column: 41, scope: !5665)
!5665 = distinct !DILexicalBlock(scope: !5655, file: !365, line: 1444, column: 93)
!5666 = !DILocation(line: 1445, column: 4, scope: !5665)
!5667 = !DILocation(line: 1446, column: 3, scope: !5665)
!5668 = !DILocation(line: 1447, column: 2, scope: !5656)
!5669 = !DILocation(line: 1448, column: 48, scope: !5670)
!5670 = distinct !DILexicalBlock(scope: !5671, file: !365, line: 1448, column: 7)
!5671 = distinct !DILexicalBlock(scope: !5651, file: !365, line: 1447, column: 9)
!5672 = !DILocation(line: 1448, column: 61, scope: !5670)
!5673 = !DILocation(line: 1448, column: 27, scope: !5670)
!5674 = !DILocation(line: 1448, column: 73, scope: !5670)
!5675 = !DILocation(line: 1448, column: 82, scope: !5670)
!5676 = !DILocation(line: 1448, column: 8, scope: !5670)
!5677 = !DILocation(line: 1448, column: 7, scope: !5671)
!5678 = !DILocation(line: 1449, column: 41, scope: !5679)
!5679 = distinct !DILexicalBlock(scope: !5670, file: !365, line: 1448, column: 90)
!5680 = !DILocation(line: 1449, column: 4, scope: !5679)
!5681 = !DILocation(line: 1450, column: 3, scope: !5679)
!5682 = !DILocation(line: 1452, column: 1, scope: !5641)
!5683 = distinct !DISubprogram(name: "windows_print_sticky", scope: !365, file: !365, line: 1796, type: !4318, isLocal: true, isDefinition: true, scopeLine: 1797, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !380)
!5684 = !DILocalVariable(name: "win", arg: 1, scope: !5683, file: !365, line: 1796, type: !133)
!5685 = !DILocation(line: 1796, column: 46, scope: !5683)
!5686 = !DILocalVariable(name: "mainwin", scope: !5683, file: !365, line: 1798, type: !127)
!5687 = !DILocation(line: 1798, column: 26, scope: !5683)
!5688 = !DILocalVariable(name: "tmp", scope: !5683, file: !365, line: 1799, type: !147)
!5689 = !DILocation(line: 1799, column: 17, scope: !5683)
!5690 = !DILocalVariable(name: "list", scope: !5683, file: !365, line: 1799, type: !147)
!5691 = !DILocation(line: 1799, column: 23, scope: !5683)
!5692 = !DILocalVariable(name: "str", scope: !5683, file: !365, line: 1800, type: !5693)
!5693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5694, size: 64, align: 64)
!5694 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !5695, line: 39, baseType: !5696)
!5695 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!5696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !5695, line: 41, size: 192, align: 64, elements: !5697)
!5697 = !{!5698, !5699, !5703}
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !5696, file: !5695, line: 43, baseType: !340, size: 64, align: 64)
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5696, file: !5695, line: 44, baseType: !5700, size: 64, align: 64, offset: 64)
!5700 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !5701, line: 66, baseType: !5702)
!5701 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!5702 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !5696, file: !5695, line: 45, baseType: !5700, size: 64, align: 64, offset: 128)
!5704 = !DILocation(line: 1800, column: 11, scope: !5683)
!5705 = !DILocation(line: 1802, column: 42, scope: !5683)
!5706 = !DILocation(line: 1802, column: 48, scope: !5683)
!5707 = !DILocation(line: 1802, column: 21, scope: !5683)
!5708 = !DILocation(line: 1802, column: 60, scope: !5683)
!5709 = !DILocation(line: 1802, column: 17, scope: !5683)
!5710 = !DILocation(line: 1805, column: 8, scope: !5683)
!5711 = !DILocation(line: 1805, column: 6, scope: !5683)
!5712 = !DILocation(line: 1806, column: 35, scope: !5683)
!5713 = !DILocation(line: 1806, column: 9, scope: !5683)
!5714 = !DILocation(line: 1806, column: 7, scope: !5683)
!5715 = !DILocation(line: 1807, column: 13, scope: !5716)
!5716 = distinct !DILexicalBlock(scope: !5683, file: !365, line: 1807, column: 2)
!5717 = !DILocation(line: 1807, column: 11, scope: !5716)
!5718 = !DILocation(line: 1807, column: 7, scope: !5716)
!5719 = !DILocation(line: 1807, column: 19, scope: !5720)
!5720 = !DILexicalBlockFile(scope: !5721, file: !365, discriminator: 1)
!5721 = distinct !DILexicalBlock(scope: !5716, file: !365, line: 1807, column: 2)
!5722 = !DILocation(line: 1807, column: 23, scope: !5720)
!5723 = !DILocation(line: 1807, column: 2, scope: !5720)
!5724 = !DILocalVariable(name: "rec", scope: !5725, file: !365, line: 1808, type: !133)
!5725 = distinct !DILexicalBlock(scope: !5721, file: !365, line: 1807, column: 48)
!5726 = !DILocation(line: 1808, column: 15, scope: !5725)
!5727 = !DILocation(line: 1808, column: 21, scope: !5725)
!5728 = !DILocation(line: 1808, column: 26, scope: !5725)
!5729 = !DILocation(line: 1810, column: 26, scope: !5725)
!5730 = !DILocation(line: 1810, column: 40, scope: !5725)
!5731 = !DILocation(line: 1810, column: 45, scope: !5725)
!5732 = !DILocation(line: 1810, column: 3, scope: !5725)
!5733 = !DILocation(line: 1811, column: 2, scope: !5725)
!5734 = !DILocation(line: 1807, column: 37, scope: !5735)
!5735 = !DILexicalBlockFile(scope: !5721, file: !365, discriminator: 2)
!5736 = !DILocation(line: 1807, column: 42, scope: !5735)
!5737 = !DILocation(line: 1807, column: 35, scope: !5735)
!5738 = !DILocation(line: 1807, column: 2, scope: !5735)
!5739 = distinct !{!5739, !5740}
!5740 = !DILocation(line: 1807, column: 2, scope: !5683)
!5741 = !DILocation(line: 1812, column: 27, scope: !5683)
!5742 = !DILocation(line: 1812, column: 32, scope: !5683)
!5743 = !DILocation(line: 1812, column: 37, scope: !5683)
!5744 = !DILocation(line: 1812, column: 40, scope: !5683)
!5745 = !DILocation(line: 1812, column: 9, scope: !5683)
!5746 = !DILocation(line: 1813, column: 22, scope: !5683)
!5747 = !DILocation(line: 1813, column: 9, scope: !5683)
!5748 = !DILocation(line: 1815, column: 39, scope: !5683)
!5749 = !DILocation(line: 1815, column: 89, scope: !5683)
!5750 = !DILocation(line: 1815, column: 94, scope: !5683)
!5751 = !DILocation(line: 1815, column: 2, scope: !5683)
!5752 = !DILocation(line: 1817, column: 23, scope: !5683)
!5753 = !DILocation(line: 1817, column: 9, scope: !5683)
!5754 = !DILocation(line: 1818, column: 1, scope: !5683)
