; ModuleID = './line352-gui-windows.o.i'
source_filename = "./line352-gui-windows.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GSList = type { i8*, %struct._GSList* }
%struct._WINDOW_REC = type { i32, i8*, i32, i32, %struct._GSList*, %struct._WI_ITEM_REC*, %struct._SERVER_REC*, %struct._SERVER_REC*, i8*, i32, %struct._GSList*, i8, %struct.HISTORY_REC*, i8*, i32, i8*, i64, i64, i8*, i8*, i8* }
%struct._WI_ITEM_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)* }
%struct._GHashTable = type opaque
%struct._SERVER_REC = type opaque
%struct.HISTORY_REC = type { i8*, %struct._GList*, i32, i32, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.MAIN_WINDOW_REC = type { %struct._WINDOW_REC*, %struct._TERM_WINDOW*, i32, i32, i32, i32, i32, i32, i32, %struct._GSList*, i32, i32, i32, i32, i32, i32, i8 }
%struct._TERM_WINDOW = type opaque
%struct.GUI_WINDOW_REC = type { %struct.MAIN_WINDOW_REC*, %struct._TEXT_BUFFER_VIEW_REC*, i8, %struct._LINE_REC*, i64 }
%struct._TEXT_BUFFER_VIEW_REC = type { %struct.TEXT_BUFFER_REC*, %struct._GSList*, %struct._TERM_WINDOW*, i32, i32, i32, i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)*, %struct.TEXT_BUFFER_CACHE_REC*, i32, %struct._LINE_REC*, i32, %struct._LINE_REC*, i32, %struct._GHashTable*, i32, i32, i8 }
%struct.TEXT_BUFFER_REC = type { %struct._GSList*, %struct._LINE_REC*, i32, %struct._LINE_REC*, %struct.TEXT_CHUNK_REC*, i32, i32, i32, i8 }
%struct.TEXT_CHUNK_REC = type { [16368 x i8], i32, i32 }
%struct.TEXT_BUFFER_CACHE_REC = type { i32, i32, %struct._GHashTable*, i8, i32 }
%struct._LINE_REC = type { %struct._LINE_REC*, %struct._LINE_REC*, i8*, %struct.LINE_INFO_REC }
%struct.LINE_INFO_REC = type { i32, i64 }

@__func__.gui_window_scroll = private unnamed_addr constant [18 x i8] c"gui_window_scroll\00", align 1
@.str = private unnamed_addr constant [15 x i8] c"window != NULL\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"gui page scrolled\00", align 1
@__func__.gui_window_scroll_line = private unnamed_addr constant [23 x i8] c"gui_window_scroll_line\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"line != NULL\00", align 1
@wcwidth_impl = internal global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"wcwidth_implementation\00", align 1
@windows = external global %struct._GSList*, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"break_wide\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"indent\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"indent_always\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"scroll\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"fe-text\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"lookandfeel\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"autostick_split_windows\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"autounstick_windows\00", align 1
@window_create_override = internal global i32 0, align 4
@.str.12 = private unnamed_addr constant [27 x i8] c"gui window create override\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"window created\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"window destroyed\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"window changed\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"setup changed\00", align 1
@__func__.gui_window_created = private unnamed_addr constant [19 x i8] c"gui_window_created\00", align 1
@active_win = external global %struct._WINDOW_REC*, align 8
@.str.17 = private unnamed_addr constant [19 x i8] c"gui window created\00", align 1
@term_type = external global i32, align 4
@__func__.gui_window_destroyed = private unnamed_addr constant [21 x i8] c"gui_window_destroyed\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"gui window destroyed\00", align 1
@__func__.signal_window_changed = private unnamed_addr constant [22 x i8] c"signal_window_changed\00", align 1
@quitting = external global i32, align 4
@active_mainwin = external global %struct.MAIN_WINDOW_REC*, align 8
@mainwindows = external global %struct._GSList*, align 8

; Function Attrs: nounwind uwtable
define void @gui_window_resize(%struct._WINDOW_REC*, i32, i32) #0 !dbg !280 {
  %4 = alloca %struct._WINDOW_REC*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.GUI_WINDOW_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %4, metadata !284, metadata !285), !dbg !286
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !287, metadata !285), !dbg !288
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !289, metadata !285), !dbg !290
  call void @llvm.dbg.declare(metadata %struct.GUI_WINDOW_REC** %7, metadata !291, metadata !285), !dbg !292
  %8 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !293
  %9 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %8, i32 0, i32 2, !dbg !295
  %10 = load i32, i32* %9, align 8, !dbg !295
  %11 = load i32, i32* %5, align 4, !dbg !296
  %12 = icmp eq i32 %10, %11, !dbg !297
  br i1 %12, label %13, label %20, !dbg !298

; <label>:13:                                     ; preds = %3
  %14 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !299
  %15 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %14, i32 0, i32 3, !dbg !301
  %16 = load i32, i32* %15, align 4, !dbg !301
  %17 = load i32, i32* %6, align 4, !dbg !302
  %18 = icmp eq i32 %16, %17, !dbg !303
  br i1 %18, label %19, label %20, !dbg !304

; <label>:19:                                     ; preds = %13
  br label %46, !dbg !305

; <label>:20:                                     ; preds = %13, %3
  %21 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !306
  %22 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %21, i32 0, i32 20, !dbg !307
  %23 = load i8*, i8** %22, align 8, !dbg !307
  %24 = bitcast i8* %23 to %struct.GUI_WINDOW_REC*, !dbg !308
  store %struct.GUI_WINDOW_REC* %24, %struct.GUI_WINDOW_REC** %7, align 8, !dbg !309
  call void @irssi_set_dirty(), !dbg !310
  %25 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !311
  %26 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %25, i32 0, i32 20, !dbg !312
  %27 = load i8*, i8** %26, align 8, !dbg !312
  %28 = bitcast i8* %27 to %struct.GUI_WINDOW_REC*, !dbg !313
  %29 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %28, i32 0, i32 0, !dbg !314
  %30 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %29, align 8, !dbg !314
  %31 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %30, i32 0, i32 16, !dbg !315
  %32 = load i8, i8* %31, align 8, !dbg !316
  %33 = and i8 %32, -2, !dbg !316
  %34 = or i8 %33, 1, !dbg !316
  store i8 %34, i8* %31, align 8, !dbg !316
  %35 = load i32, i32* %5, align 4, !dbg !317
  %36 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !318
  %37 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %36, i32 0, i32 2, !dbg !319
  store i32 %35, i32* %37, align 8, !dbg !320
  %38 = load i32, i32* %6, align 4, !dbg !321
  %39 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !322
  %40 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %39, i32 0, i32 3, !dbg !323
  store i32 %38, i32* %40, align 4, !dbg !324
  %41 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %7, align 8, !dbg !325
  %42 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %41, i32 0, i32 1, !dbg !326
  %43 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %42, align 8, !dbg !326
  %44 = load i32, i32* %5, align 4, !dbg !327
  %45 = load i32, i32* %6, align 4, !dbg !328
  call void @textbuffer_view_resize(%struct._TEXT_BUFFER_VIEW_REC* %43, i32 %44, i32 %45), !dbg !329
  br label %46, !dbg !330

; <label>:46:                                     ; preds = %20, %19
  ret void, !dbg !331
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @irssi_set_dirty() #2

declare void @textbuffer_view_resize(%struct._TEXT_BUFFER_VIEW_REC*, i32, i32) #2

; Function Attrs: nounwind uwtable
define void @gui_window_scroll(%struct._WINDOW_REC*, i32) #0 !dbg !333 {
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca i32, align 4
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !336, metadata !285), !dbg !337
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !338, metadata !285), !dbg !339
  br label %5, !dbg !340, !llvm.loop !341

; <label>:5:                                      ; preds = %2
  %6 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !342
  %7 = icmp ne %struct._WINDOW_REC* %6, null, !dbg !346
  br i1 %7, label %8, label %9, !dbg !342

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !347

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gui_window_scroll, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)), !dbg !350
  br label %21, !dbg !353

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !354

; <label>:11:                                     ; preds = %10
  %12 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !356
  %13 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %12, i32 0, i32 20, !dbg !357
  %14 = load i8*, i8** %13, align 8, !dbg !357
  %15 = bitcast i8* %14 to %struct.GUI_WINDOW_REC*, !dbg !358
  %16 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %15, i32 0, i32 1, !dbg !359
  %17 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %16, align 8, !dbg !359
  %18 = load i32, i32* %4, align 4, !dbg !360
  call void @textbuffer_view_scroll(%struct._TEXT_BUFFER_VIEW_REC* %17, i32 %18), !dbg !361
  %19 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !362
  %20 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 1, %struct._WINDOW_REC* %19), !dbg !363
  br label %21, !dbg !364

; <label>:21:                                     ; preds = %11, %9
  ret void, !dbg !365
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare void @textbuffer_view_scroll(%struct._TEXT_BUFFER_VIEW_REC*, i32) #2

declare i32 @signal_emit(i8*, i32, ...) #2

; Function Attrs: nounwind uwtable
define void @gui_window_scroll_line(%struct._WINDOW_REC*, %struct._LINE_REC*) #0 !dbg !367 {
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca %struct._LINE_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !370, metadata !285), !dbg !371
  store %struct._LINE_REC* %1, %struct._LINE_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._LINE_REC** %4, metadata !372, metadata !285), !dbg !373
  br label %5, !dbg !374, !llvm.loop !375

; <label>:5:                                      ; preds = %2
  %6 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !376
  %7 = icmp ne %struct._WINDOW_REC* %6, null, !dbg !380
  br i1 %7, label %8, label %9, !dbg !376

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !381

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gui_window_scroll_line, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)), !dbg !384
  br label %28, !dbg !387

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !388

; <label>:11:                                     ; preds = %10
  br label %12, !dbg !390, !llvm.loop !391

; <label>:12:                                     ; preds = %11
  %13 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !392
  %14 = icmp ne %struct._LINE_REC* %13, null, !dbg !396
  br i1 %14, label %15, label %16, !dbg !392

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !397

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gui_window_scroll_line, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)), !dbg !400
  br label %28, !dbg !403

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !404

; <label>:18:                                     ; preds = %17
  %19 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !406
  %20 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %19, i32 0, i32 20, !dbg !407
  %21 = load i8*, i8** %20, align 8, !dbg !407
  %22 = bitcast i8* %21 to %struct.GUI_WINDOW_REC*, !dbg !408
  %23 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %22, i32 0, i32 1, !dbg !409
  %24 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %23, align 8, !dbg !409
  %25 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !410
  call void @textbuffer_view_scroll_line(%struct._TEXT_BUFFER_VIEW_REC* %24, %struct._LINE_REC* %25), !dbg !411
  %26 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !412
  %27 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 1, %struct._WINDOW_REC* %26), !dbg !413
  br label %28, !dbg !414

; <label>:28:                                     ; preds = %18, %16, %9
  ret void, !dbg !415
}

declare void @textbuffer_view_scroll_line(%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*) #2

; Function Attrs: nounwind uwtable
define void @gui_window_set_sticky(%struct._WINDOW_REC*) #0 !dbg !417 {
  %2 = alloca %struct._WINDOW_REC*, align 8
  %3 = alloca %struct.GUI_WINDOW_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %2, metadata !420, metadata !285), !dbg !421
  call void @llvm.dbg.declare(metadata %struct.GUI_WINDOW_REC** %3, metadata !422, metadata !285), !dbg !423
  %4 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !424
  %5 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %4, i32 0, i32 20, !dbg !425
  %6 = load i8*, i8** %5, align 8, !dbg !425
  %7 = bitcast i8* %6 to %struct.GUI_WINDOW_REC*, !dbg !426
  store %struct.GUI_WINDOW_REC* %7, %struct.GUI_WINDOW_REC** %3, align 8, !dbg !423
  %8 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %3, align 8, !dbg !427
  %9 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %8, i32 0, i32 2, !dbg !429
  %10 = load i8, i8* %9, align 8, !dbg !429
  %11 = lshr i8 %10, 2, !dbg !429
  %12 = and i8 %11, 1, !dbg !429
  %13 = zext i8 %12 to i32, !dbg !429
  %14 = icmp ne i32 %13, 0, !dbg !427
  br i1 %14, label %27, label %15, !dbg !430

; <label>:15:                                     ; preds = %1
  %16 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %3, align 8, !dbg !431
  %17 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %16, i32 0, i32 2, !dbg !433
  %18 = load i8, i8* %17, align 8, !dbg !434
  %19 = and i8 %18, -5, !dbg !434
  %20 = or i8 %19, 4, !dbg !434
  store i8 %20, i8* %17, align 8, !dbg !434
  %21 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %3, align 8, !dbg !435
  %22 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %21, i32 0, i32 0, !dbg !436
  %23 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %22, align 8, !dbg !436
  %24 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %23, i32 0, i32 2, !dbg !437
  %25 = load i32, i32* %24, align 8, !dbg !438
  %26 = add nsw i32 %25, 1, !dbg !438
  store i32 %26, i32* %24, align 8, !dbg !438
  br label %27, !dbg !439

; <label>:27:                                     ; preds = %15, %1
  ret void, !dbg !440
}

; Function Attrs: nounwind uwtable
define void @gui_window_set_unsticky(%struct._WINDOW_REC*) #0 !dbg !441 {
  %2 = alloca %struct._WINDOW_REC*, align 8
  %3 = alloca %struct.GUI_WINDOW_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %2, metadata !442, metadata !285), !dbg !443
  call void @llvm.dbg.declare(metadata %struct.GUI_WINDOW_REC** %3, metadata !444, metadata !285), !dbg !445
  %4 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !446
  %5 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %4, i32 0, i32 20, !dbg !447
  %6 = load i8*, i8** %5, align 8, !dbg !447
  %7 = bitcast i8* %6 to %struct.GUI_WINDOW_REC*, !dbg !448
  store %struct.GUI_WINDOW_REC* %7, %struct.GUI_WINDOW_REC** %3, align 8, !dbg !445
  %8 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %3, align 8, !dbg !449
  %9 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %8, i32 0, i32 2, !dbg !451
  %10 = load i8, i8* %9, align 8, !dbg !451
  %11 = lshr i8 %10, 2, !dbg !451
  %12 = and i8 %11, 1, !dbg !451
  %13 = zext i8 %12 to i32, !dbg !451
  %14 = icmp ne i32 %13, 0, !dbg !449
  br i1 %14, label %15, label %26, !dbg !452

; <label>:15:                                     ; preds = %1
  %16 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %3, align 8, !dbg !453
  %17 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %16, i32 0, i32 2, !dbg !455
  %18 = load i8, i8* %17, align 8, !dbg !456
  %19 = and i8 %18, -5, !dbg !456
  store i8 %19, i8* %17, align 8, !dbg !456
  %20 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %3, align 8, !dbg !457
  %21 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %20, i32 0, i32 0, !dbg !458
  %22 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %21, align 8, !dbg !458
  %23 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %22, i32 0, i32 2, !dbg !459
  %24 = load i32, i32* %23, align 8, !dbg !460
  %25 = add nsw i32 %24, -1, !dbg !460
  store i32 %25, i32* %23, align 8, !dbg !460
  br label %26, !dbg !461

; <label>:26:                                     ; preds = %15, %1
  ret void, !dbg !462
}

; Function Attrs: nounwind uwtable
define void @gui_window_reparent(%struct._WINDOW_REC*, %struct.MAIN_WINDOW_REC*) #0 !dbg !463 {
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %5 = alloca %struct.MAIN_WINDOW_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !466, metadata !285), !dbg !467
  store %struct.MAIN_WINDOW_REC* %1, %struct.MAIN_WINDOW_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %4, metadata !468, metadata !285), !dbg !469
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %5, metadata !470, metadata !285), !dbg !471
  %6 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !472
  %7 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %6, i32 0, i32 20, !dbg !473
  %8 = load i8*, i8** %7, align 8, !dbg !473
  %9 = bitcast i8* %8 to %struct.GUI_WINDOW_REC*, !dbg !474
  %10 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %9, i32 0, i32 0, !dbg !475
  %11 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %10, align 8, !dbg !475
  store %struct.MAIN_WINDOW_REC* %11, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !476
  %12 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !477
  %13 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !479
  %14 = icmp eq %struct.MAIN_WINDOW_REC* %12, %13, !dbg !480
  br i1 %14, label %15, label %16, !dbg !481

; <label>:15:                                     ; preds = %2
  br label %72, !dbg !482

; <label>:16:                                     ; preds = %2
  %17 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !483
  call void @gui_window_set_unsticky(%struct._WINDOW_REC* %17), !dbg !484
  %18 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !485
  %19 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %18, i32 0, i32 20, !dbg !486
  %20 = load i8*, i8** %19, align 8, !dbg !486
  %21 = bitcast i8* %20 to %struct.GUI_WINDOW_REC*, !dbg !487
  %22 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %21, i32 0, i32 1, !dbg !488
  %23 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %22, align 8, !dbg !488
  call void @textbuffer_view_set_window(%struct._TEXT_BUFFER_VIEW_REC* %23, %struct._TERM_WINDOW* null), !dbg !489
  %24 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !490
  %25 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !491
  %26 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %25, i32 0, i32 20, !dbg !492
  %27 = load i8*, i8** %26, align 8, !dbg !492
  %28 = bitcast i8* %27 to %struct.GUI_WINDOW_REC*, !dbg !493
  %29 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %28, i32 0, i32 0, !dbg !494
  store %struct.MAIN_WINDOW_REC* %24, %struct.MAIN_WINDOW_REC** %29, align 8, !dbg !495
  %30 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !496
  %31 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %30, i32 0, i32 2, !dbg !498
  %32 = load i32, i32* %31, align 8, !dbg !498
  %33 = icmp ne i32 %32, 0, !dbg !496
  br i1 %33, label %34, label %36, !dbg !499

; <label>:34:                                     ; preds = %16
  %35 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !500
  call void @gui_window_set_sticky(%struct._WINDOW_REC* %35), !dbg !501
  br label %36, !dbg !501

; <label>:36:                                     ; preds = %34, %16
  %37 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !502
  %38 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %37, i32 0, i32 8, !dbg !504
  %39 = load i32, i32* %38, align 8, !dbg !504
  %40 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !505
  %41 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %40, i32 0, i32 12, !dbg !506
  %42 = load i32, i32* %41, align 8, !dbg !506
  %43 = sub nsw i32 %39, %42, !dbg !507
  %44 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !508
  %45 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %44, i32 0, i32 8, !dbg !509
  %46 = load i32, i32* %45, align 8, !dbg !509
  %47 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !510
  %48 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %47, i32 0, i32 12, !dbg !511
  %49 = load i32, i32* %48, align 8, !dbg !511
  %50 = sub nsw i32 %46, %49, !dbg !512
  %51 = icmp ne i32 %43, %50, !dbg !513
  br i1 %51, label %60, label %52, !dbg !514

; <label>:52:                                     ; preds = %36
  %53 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !515
  %54 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %53, i32 0, i32 7, !dbg !516
  %55 = load i32, i32* %54, align 4, !dbg !516
  %56 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !517
  %57 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %56, i32 0, i32 7, !dbg !518
  %58 = load i32, i32* %57, align 4, !dbg !518
  %59 = icmp ne i32 %55, %58, !dbg !519
  br i1 %59, label %60, label %72, !dbg !520

; <label>:60:                                     ; preds = %52, %36
  %61 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !522
  %62 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !524
  %63 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %62, i32 0, i32 7, !dbg !525
  %64 = load i32, i32* %63, align 4, !dbg !525
  %65 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !526
  %66 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %65, i32 0, i32 8, !dbg !527
  %67 = load i32, i32* %66, align 8, !dbg !527
  %68 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !528
  %69 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %68, i32 0, i32 12, !dbg !529
  %70 = load i32, i32* %69, align 8, !dbg !529
  %71 = sub nsw i32 %67, %70, !dbg !530
  call void @gui_window_resize(%struct._WINDOW_REC* %61, i32 %64, i32 %71), !dbg !531
  br label %72, !dbg !532

; <label>:72:                                     ; preds = %15, %60, %52
  ret void, !dbg !533
}

declare void @textbuffer_view_set_window(%struct._TEXT_BUFFER_VIEW_REC*, %struct._TERM_WINDOW*) #2

; Function Attrs: nounwind uwtable
define void @gui_windows_reset_settings() #0 !dbg !534 {
  %1 = alloca %struct._GSList*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca %struct.GUI_WINDOW_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %1, metadata !537, metadata !285), !dbg !538
  call void @llvm.dbg.declare(metadata i32* %2, metadata !539, metadata !285), !dbg !540
  %5 = load i32, i32* @wcwidth_impl, align 4, !dbg !541
  store i32 %5, i32* %2, align 4, !dbg !540
  %6 = call i32 @settings_get_choice(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0)), !dbg !542
  store i32 %6, i32* @wcwidth_impl, align 4, !dbg !543
  %7 = load %struct._GSList*, %struct._GSList** @windows, align 8, !dbg !544
  store %struct._GSList* %7, %struct._GSList** %1, align 8, !dbg !546
  br label %8, !dbg !547

; <label>:8:                                      ; preds = %69, %0
  %9 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !548
  %10 = icmp ne %struct._GSList* %9, null, !dbg !551
  br i1 %10, label %11, label %73, !dbg !552

; <label>:11:                                     ; preds = %8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !553, metadata !285), !dbg !555
  %12 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !556
  %13 = getelementptr inbounds %struct._GSList, %struct._GSList* %12, i32 0, i32 0, !dbg !557
  %14 = load i8*, i8** %13, align 8, !dbg !557
  %15 = bitcast i8* %14 to %struct._WINDOW_REC*, !dbg !556
  store %struct._WINDOW_REC* %15, %struct._WINDOW_REC** %3, align 8, !dbg !555
  call void @llvm.dbg.declare(metadata %struct.GUI_WINDOW_REC** %4, metadata !558, metadata !285), !dbg !559
  %16 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !560
  %17 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %16, i32 0, i32 20, !dbg !561
  %18 = load i8*, i8** %17, align 8, !dbg !561
  %19 = bitcast i8* %18 to %struct.GUI_WINDOW_REC*, !dbg !562
  store %struct.GUI_WINDOW_REC* %19, %struct.GUI_WINDOW_REC** %4, align 8, !dbg !559
  %20 = load i32, i32* %2, align 4, !dbg !563
  %21 = load i32, i32* @wcwidth_impl, align 4, !dbg !565
  %22 = icmp ne i32 %20, %21, !dbg !566
  br i1 %22, label %23, label %27, !dbg !567

; <label>:23:                                     ; preds = %11
  %24 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %4, align 8, !dbg !568
  %25 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %24, i32 0, i32 1, !dbg !570
  %26 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %25, align 8, !dbg !570
  call void @textbuffer_view_reset_cache(%struct._TEXT_BUFFER_VIEW_REC* %26), !dbg !571
  br label %27, !dbg !572

; <label>:27:                                     ; preds = %23, %11
  %28 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %4, align 8, !dbg !573
  %29 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %28, i32 0, i32 1, !dbg !574
  %30 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %29, align 8, !dbg !574
  %31 = call i32 @settings_get_bool(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0)), !dbg !575
  call void @textbuffer_view_set_break_wide(%struct._TEXT_BUFFER_VIEW_REC* %30, i32 %31), !dbg !576
  %32 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %4, align 8, !dbg !578
  %33 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %32, i32 0, i32 1, !dbg !579
  %34 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %33, align 8, !dbg !579
  %35 = call i32 @settings_get_int(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0)), !dbg !580
  %36 = call i32 @settings_get_bool(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0)), !dbg !581
  %37 = icmp ne i32 %36, 0, !dbg !582
  %38 = xor i1 %37, true, !dbg !582
  %39 = zext i1 %38 to i32, !dbg !582
  %40 = call i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)* @get_default_indent_func(), !dbg !583
  call void @textbuffer_view_set_default_indent(%struct._TEXT_BUFFER_VIEW_REC* %34, i32 %35, i32 %39, i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)* %40), !dbg !584
  %41 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %4, align 8, !dbg !585
  %42 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %41, i32 0, i32 1, !dbg !586
  %43 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %42, align 8, !dbg !586
  %44 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %4, align 8, !dbg !587
  %45 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %44, i32 0, i32 2, !dbg !588
  %46 = load i8, i8* %45, align 8, !dbg !588
  %47 = lshr i8 %46, 1, !dbg !588
  %48 = and i8 %47, 1, !dbg !588
  %49 = zext i8 %48 to i32, !dbg !588
  %50 = icmp ne i32 %49, 0, !dbg !587
  br i1 %50, label %51, label %57, !dbg !587

; <label>:51:                                     ; preds = %27
  %52 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %4, align 8, !dbg !589
  %53 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %52, i32 0, i32 2, !dbg !590
  %54 = load i8, i8* %53, align 8, !dbg !590
  %55 = and i8 %54, 1, !dbg !590
  %56 = zext i8 %55 to i32, !dbg !590
  br label %59, !dbg !591

; <label>:57:                                     ; preds = %27
  %58 = call i32 @settings_get_bool(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0)), !dbg !592
  br label %59, !dbg !593

; <label>:59:                                     ; preds = %57, %51
  %60 = phi i32 [ %56, %51 ], [ %58, %57 ], !dbg !595
  call void @textbuffer_view_set_scroll(%struct._TEXT_BUFFER_VIEW_REC* %43, i32 %60), !dbg !597
  %61 = load i32, i32* %2, align 4, !dbg !598
  %62 = load i32, i32* @wcwidth_impl, align 4, !dbg !600
  %63 = icmp ne i32 %61, %62, !dbg !601
  br i1 %63, label %64, label %68, !dbg !602

; <label>:64:                                     ; preds = %59
  %65 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %4, align 8, !dbg !603
  %66 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %65, i32 0, i32 1, !dbg !605
  %67 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %66, align 8, !dbg !605
  call void @textbuffer_view_redraw(%struct._TEXT_BUFFER_VIEW_REC* %67), !dbg !606
  br label %68, !dbg !607

; <label>:68:                                     ; preds = %64, %59
  br label %69, !dbg !608

; <label>:69:                                     ; preds = %68
  %70 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !609
  %71 = getelementptr inbounds %struct._GSList, %struct._GSList* %70, i32 0, i32 1, !dbg !611
  %72 = load %struct._GSList*, %struct._GSList** %71, align 8, !dbg !611
  store %struct._GSList* %72, %struct._GSList** %1, align 8, !dbg !612
  br label %8, !dbg !613, !llvm.loop !614

; <label>:73:                                     ; preds = %8
  ret void, !dbg !616
}

declare i32 @settings_get_choice(i8*) #2

declare void @textbuffer_view_reset_cache(%struct._TEXT_BUFFER_VIEW_REC*) #2

declare void @textbuffer_view_set_break_wide(%struct._TEXT_BUFFER_VIEW_REC*, i32) #2

declare i32 @settings_get_bool(i8*) #2

declare void @textbuffer_view_set_default_indent(%struct._TEXT_BUFFER_VIEW_REC*, i32, i32, i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)*) #2

declare i32 @settings_get_int(i8*) #2

declare i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)* @get_default_indent_func() #2

declare void @textbuffer_view_set_scroll(%struct._TEXT_BUFFER_VIEW_REC*, i32) #2

declare void @textbuffer_view_redraw(%struct._TEXT_BUFFER_VIEW_REC*) #2

; Function Attrs: nounwind uwtable
define void @gui_windows_init() #0 !dbg !617 {
  call void @settings_add_bool_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0), i32 0), !dbg !618
  call void @settings_add_bool_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0), i32 1), !dbg !619
  call void @settings_add_int_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 10), !dbg !620
  call void @settings_add_bool_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 0), !dbg !621
  call void @settings_add_bool_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 0), !dbg !622
  call void @settings_add_bool_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 1), !dbg !623
  store i32 -1, i32* @window_create_override, align 4, !dbg !624
  call void @read_settings(), !dbg !625
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @sig_window_create_override to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !626
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*, i8*)* @gui_window_created to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !627
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*)* @gui_window_destroyed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !628
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*)* @signal_window_changed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !629
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !630
  ret void, !dbg !631
}

declare void @settings_add_bool_module(i8*, i8*, i8*, i32) #2

declare void @settings_add_int_module(i8*, i8*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @read_settings() #0 !dbg !632 {
  call void @gui_windows_reset_settings(), !dbg !633
  ret void, !dbg !634
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @sig_window_create_override(i8*) #0 !dbg !635 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !638, metadata !285), !dbg !639
  %3 = load i8*, i8** %2, align 8, !dbg !640
  %4 = ptrtoint i8* %3 to i64, !dbg !641
  %5 = trunc i64 %4 to i32, !dbg !642
  store i32 %5, i32* @window_create_override, align 4, !dbg !643
  ret void, !dbg !644
}

; Function Attrs: nounwind uwtable
define internal void @gui_window_created(%struct._WINDOW_REC*, i8*) #0 !dbg !645 {
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %6 = alloca i32, align 4
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !648, metadata !285), !dbg !649
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !650, metadata !285), !dbg !651
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %5, metadata !652, metadata !285), !dbg !653
  call void @llvm.dbg.declare(metadata i32* %6, metadata !654, metadata !285), !dbg !655
  br label %7, !dbg !656, !llvm.loop !657

; <label>:7:                                      ; preds = %2
  %8 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !658
  %9 = icmp ne %struct._WINDOW_REC* %8, null, !dbg !662
  br i1 %9, label %10, label %11, !dbg !658

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !663

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gui_window_created, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)), !dbg !666
  br label %93, !dbg !669

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !670

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* @window_create_override, align 4, !dbg !672
  %15 = icmp eq i32 %14, 0, !dbg !673
  br i1 %15, label %31, label %16, !dbg !674

; <label>:16:                                     ; preds = %13
  %17 = load i32, i32* @window_create_override, align 4, !dbg !675
  %18 = icmp eq i32 %17, 2, !dbg !676
  br i1 %18, label %31, label %19, !dbg !677

; <label>:19:                                     ; preds = %16
  %20 = load i32, i32* @window_create_override, align 4, !dbg !678
  %21 = icmp eq i32 %20, 3, !dbg !679
  br i1 %21, label %31, label %22, !dbg !680

; <label>:22:                                     ; preds = %19
  %23 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !681
  %24 = icmp eq %struct._WINDOW_REC* %23, null, !dbg !682
  br i1 %24, label %31, label %25, !dbg !683

; <label>:25:                                     ; preds = %22
  %26 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !684
  %27 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %26, i32 0, i32 20, !dbg !686
  %28 = load i8*, i8** %27, align 8, !dbg !686
  %29 = bitcast i8* %28 to %struct.GUI_WINDOW_REC*, !dbg !687
  %30 = icmp eq %struct.GUI_WINDOW_REC* %29, null, !dbg !688
  br label %31, !dbg !689

; <label>:31:                                     ; preds = %25, %22, %19, %16, %13
  %32 = phi i1 [ true, %22 ], [ true, %19 ], [ true, %16 ], [ true, %13 ], [ %30, %25 ]
  %33 = zext i1 %32 to i32, !dbg !690
  store i32 %33, i32* %6, align 4, !dbg !692
  %34 = load i32, i32* %6, align 4, !dbg !693
  %35 = icmp ne i32 %34, 0, !dbg !693
  br i1 %35, label %43, label %36, !dbg !694

; <label>:36:                                     ; preds = %31
  %37 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !695
  %38 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %37, i32 0, i32 20, !dbg !696
  %39 = load i8*, i8** %38, align 8, !dbg !696
  %40 = bitcast i8* %39 to %struct.GUI_WINDOW_REC*, !dbg !697
  %41 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %40, i32 0, i32 0, !dbg !698
  %42 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %41, align 8, !dbg !698
  br label %48, !dbg !699

; <label>:43:                                     ; preds = %31
  %44 = load i32, i32* @window_create_override, align 4, !dbg !700
  %45 = icmp eq i32 %44, 3, !dbg !701
  %46 = zext i1 %45 to i32, !dbg !701
  %47 = call %struct.MAIN_WINDOW_REC* @mainwindow_create(i32 %46), !dbg !702
  br label %48, !dbg !703

; <label>:48:                                     ; preds = %43, %36
  %49 = phi %struct.MAIN_WINDOW_REC* [ %42, %36 ], [ %47, %43 ], !dbg !704
  store %struct.MAIN_WINDOW_REC* %49, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !706
  %50 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !707
  %51 = icmp eq %struct.MAIN_WINDOW_REC* %50, null, !dbg !709
  br i1 %51, label %52, label %59, !dbg !710

; <label>:52:                                     ; preds = %48
  %53 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !711
  %54 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %53, i32 0, i32 20, !dbg !713
  %55 = load i8*, i8** %54, align 8, !dbg !713
  %56 = bitcast i8* %55 to %struct.GUI_WINDOW_REC*, !dbg !714
  %57 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %56, i32 0, i32 0, !dbg !715
  %58 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %57, align 8, !dbg !715
  store %struct.MAIN_WINDOW_REC* %58, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !716
  br label %59, !dbg !717

; <label>:59:                                     ; preds = %52, %48
  store i32 -1, i32* @window_create_override, align 4, !dbg !718
  %60 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !719
  %61 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %60, i32 0, i32 0, !dbg !721
  %62 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %61, align 8, !dbg !721
  %63 = icmp eq %struct._WINDOW_REC* %62, null, !dbg !722
  br i1 %63, label %64, label %68, !dbg !723

; <label>:64:                                     ; preds = %59
  %65 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !724
  %66 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !726
  %67 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %66, i32 0, i32 0, !dbg !727
  store %struct._WINDOW_REC* %65, %struct._WINDOW_REC** %67, align 8, !dbg !728
  br label %68, !dbg !726

; <label>:68:                                     ; preds = %64, %59
  %69 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !729
  %70 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !730
  %71 = call %struct.GUI_WINDOW_REC* @gui_window_init(%struct._WINDOW_REC* %69, %struct.MAIN_WINDOW_REC* %70), !dbg !731
  %72 = bitcast %struct.GUI_WINDOW_REC* %71 to i8*, !dbg !731
  %73 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !732
  %74 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %73, i32 0, i32 20, !dbg !733
  store i8* %72, i8** %74, align 8, !dbg !734
  %75 = load i8*, i8** %4, align 8, !dbg !735
  %76 = icmp eq i8* %75, null, !dbg !737
  br i1 %76, label %77, label %90, !dbg !738

; <label>:77:                                     ; preds = %68
  %78 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !739
  %79 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %78, i32 0, i32 2, !dbg !740
  %80 = load i32, i32* %79, align 8, !dbg !740
  %81 = icmp ne i32 %80, 0, !dbg !739
  br i1 %81, label %88, label %82, !dbg !741

; <label>:82:                                     ; preds = %77
  %83 = load i32, i32* %6, align 4, !dbg !742
  %84 = icmp ne i32 %83, 0, !dbg !742
  br i1 %84, label %85, label %90, !dbg !743

; <label>:85:                                     ; preds = %82
  %86 = call i32 @settings_get_bool(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0)), !dbg !744
  %87 = icmp ne i32 %86, 0, !dbg !744
  br i1 %87, label %88, label %90, !dbg !746

; <label>:88:                                     ; preds = %85, %77
  %89 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !747
  call void @gui_window_set_sticky(%struct._WINDOW_REC* %89), !dbg !748
  br label %90, !dbg !748

; <label>:90:                                     ; preds = %88, %85, %82, %68
  %91 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !749
  %92 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0), i32 1, %struct._WINDOW_REC* %91), !dbg !750
  br label %93, !dbg !751

; <label>:93:                                     ; preds = %90, %11
  ret void, !dbg !752
}

; Function Attrs: nounwind uwtable
define internal void @gui_window_destroyed(%struct._WINDOW_REC*) #0 !dbg !753 {
  %2 = alloca %struct._WINDOW_REC*, align 8
  %3 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %4 = alloca %struct.GUI_WINDOW_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %2, metadata !754, metadata !285), !dbg !755
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %3, metadata !756, metadata !285), !dbg !757
  call void @llvm.dbg.declare(metadata %struct.GUI_WINDOW_REC** %4, metadata !758, metadata !285), !dbg !759
  br label %5, !dbg !760, !llvm.loop !761

; <label>:5:                                      ; preds = %1
  %6 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !762
  %7 = icmp ne %struct._WINDOW_REC* %6, null, !dbg !766
  br i1 %7, label %8, label %9, !dbg !762

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !767

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gui_window_destroyed, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)), !dbg !770
  br label %33, !dbg !773

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !774

; <label>:11:                                     ; preds = %10
  %12 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !776
  %13 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %12, i32 0, i32 20, !dbg !777
  %14 = load i8*, i8** %13, align 8, !dbg !777
  %15 = bitcast i8* %14 to %struct.GUI_WINDOW_REC*, !dbg !778
  store %struct.GUI_WINDOW_REC* %15, %struct.GUI_WINDOW_REC** %4, align 8, !dbg !779
  %16 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %4, align 8, !dbg !780
  %17 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %16, i32 0, i32 0, !dbg !781
  %18 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %17, align 8, !dbg !781
  store %struct.MAIN_WINDOW_REC* %18, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !782
  %19 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !783
  call void @gui_window_set_unsticky(%struct._WINDOW_REC* %19), !dbg !784
  %20 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !785
  %21 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i32 0, i32 0), i32 1, %struct._WINDOW_REC* %20), !dbg !786
  %22 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %4, align 8, !dbg !787
  call void @gui_window_deinit(%struct.GUI_WINDOW_REC* %22), !dbg !788
  %23 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !789
  %24 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %23, i32 0, i32 20, !dbg !790
  store i8* null, i8** %24, align 8, !dbg !791
  %25 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !792
  %26 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %25, i32 0, i32 0, !dbg !794
  %27 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %26, align 8, !dbg !794
  %28 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !795
  %29 = icmp eq %struct._WINDOW_REC* %27, %28, !dbg !796
  br i1 %29, label %30, label %33, !dbg !797

; <label>:30:                                     ; preds = %11
  %31 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !798
  %32 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !799
  call void @mainwindow_change_active(%struct.MAIN_WINDOW_REC* %31, %struct._WINDOW_REC* %32), !dbg !800
  br label %33, !dbg !800

; <label>:33:                                     ; preds = %9, %30, %11
  ret void, !dbg !801
}

; Function Attrs: nounwind uwtable
define internal void @signal_window_changed(%struct._WINDOW_REC*) #0 !dbg !802 {
  %2 = alloca %struct._WINDOW_REC*, align 8
  %3 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %4 = alloca %struct._WINDOW_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %2, metadata !803, metadata !285), !dbg !804
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %3, metadata !805, metadata !285), !dbg !806
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %4, metadata !807, metadata !285), !dbg !808
  br label %5, !dbg !809, !llvm.loop !810

; <label>:5:                                      ; preds = %1
  %6 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !811
  %7 = icmp ne %struct._WINDOW_REC* %6, null, !dbg !815
  br i1 %7, label %8, label %9, !dbg !811

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !816

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.signal_window_changed, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)), !dbg !819
  br label %117, !dbg !822

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !823

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* @quitting, align 4, !dbg !825
  %13 = icmp ne i32 %12, 0, !dbg !825
  br i1 %13, label %14, label %15, !dbg !827

; <label>:14:                                     ; preds = %11
  br label %117, !dbg !828

; <label>:15:                                     ; preds = %11
  %16 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !830
  %17 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %16, i32 0, i32 20, !dbg !831
  %18 = load i8*, i8** %17, align 8, !dbg !831
  %19 = bitcast i8* %18 to %struct.GUI_WINDOW_REC*, !dbg !832
  %20 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %19, i32 0, i32 0, !dbg !833
  %21 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %20, align 8, !dbg !833
  store %struct.MAIN_WINDOW_REC* %21, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !834
  %22 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !835
  %23 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %22, i32 0, i32 20, !dbg !837
  %24 = load i8*, i8** %23, align 8, !dbg !837
  %25 = bitcast i8* %24 to %struct.GUI_WINDOW_REC*, !dbg !838
  %26 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %25, i32 0, i32 0, !dbg !839
  %27 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %26, align 8, !dbg !839
  %28 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %27, i32 0, i32 0, !dbg !840
  %29 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %28, align 8, !dbg !840
  %30 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !841
  %31 = icmp eq %struct._WINDOW_REC* %29, %30, !dbg !842
  br i1 %31, label %32, label %34, !dbg !843

; <label>:32:                                     ; preds = %15
  %33 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !844
  store %struct.MAIN_WINDOW_REC* %33, %struct.MAIN_WINDOW_REC** @active_mainwin, align 8, !dbg !846
  br label %69, !dbg !847

; <label>:34:                                     ; preds = %15
  %35 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** @active_mainwin, align 8, !dbg !848
  %36 = icmp eq %struct.MAIN_WINDOW_REC* %35, null, !dbg !851
  br i1 %36, label %37, label %39, !dbg !848

; <label>:37:                                     ; preds = %34
  %38 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !852
  store %struct.MAIN_WINDOW_REC* %38, %struct.MAIN_WINDOW_REC** @active_mainwin, align 8, !dbg !854
  br label %68, !dbg !855

; <label>:39:                                     ; preds = %34
  %40 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !856
  %41 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %40, i32 0, i32 20, !dbg !859
  %42 = load i8*, i8** %41, align 8, !dbg !859
  %43 = bitcast i8* %42 to %struct.GUI_WINDOW_REC*, !dbg !860
  %44 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %43, i32 0, i32 2, !dbg !861
  %45 = load i8, i8* %44, align 8, !dbg !861
  %46 = lshr i8 %45, 2, !dbg !861
  %47 = and i8 %46, 1, !dbg !861
  %48 = zext i8 %47 to i32, !dbg !861
  %49 = icmp ne i32 %48, 0, !dbg !862
  br i1 %49, label %50, label %57, !dbg !862

; <label>:50:                                     ; preds = %39
  %51 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !863
  %52 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** @active_mainwin, align 8, !dbg !866
  %53 = icmp ne %struct.MAIN_WINDOW_REC* %51, %52, !dbg !867
  br i1 %53, label %54, label %56, !dbg !868

; <label>:54:                                     ; preds = %50
  %55 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !869
  store %struct.MAIN_WINDOW_REC* %55, %struct.MAIN_WINDOW_REC** @active_mainwin, align 8, !dbg !870
  br label %56, !dbg !871

; <label>:56:                                     ; preds = %54, %50
  br label %67, !dbg !872

; <label>:57:                                     ; preds = %39
  %58 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** @active_mainwin, align 8, !dbg !873
  %59 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %58, i32 0, i32 2, !dbg !876
  %60 = load i32, i32* %59, align 8, !dbg !876
  %61 = icmp ne i32 %60, 0, !dbg !873
  br i1 %61, label %62, label %64, !dbg !877

; <label>:62:                                     ; preds = %57
  %63 = call %struct.MAIN_WINDOW_REC* @mainwindow_find_unsticky(), !dbg !878
  store %struct.MAIN_WINDOW_REC* %63, %struct.MAIN_WINDOW_REC** @active_mainwin, align 8, !dbg !880
  br label %64, !dbg !881

; <label>:64:                                     ; preds = %62, %57
  %65 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !882
  %66 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** @active_mainwin, align 8, !dbg !883
  call void @gui_window_reparent(%struct._WINDOW_REC* %65, %struct.MAIN_WINDOW_REC* %66), !dbg !884
  br label %67

; <label>:67:                                     ; preds = %64, %56
  br label %68

; <label>:68:                                     ; preds = %67, %37
  br label %69

; <label>:69:                                     ; preds = %68, %32
  %70 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** @active_mainwin, align 8, !dbg !885
  %71 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %70, i32 0, i32 0, !dbg !886
  %72 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %71, align 8, !dbg !886
  store %struct._WINDOW_REC* %72, %struct._WINDOW_REC** %4, align 8, !dbg !887
  %73 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !888
  %74 = icmp ne %struct._WINDOW_REC* %73, null, !dbg !890
  br i1 %74, label %75, label %86, !dbg !891

; <label>:75:                                     ; preds = %69
  %76 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !892
  %77 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !894
  %78 = icmp ne %struct._WINDOW_REC* %76, %77, !dbg !895
  br i1 %78, label %79, label %86, !dbg !896

; <label>:79:                                     ; preds = %75
  %80 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !897
  %81 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %80, i32 0, i32 20, !dbg !898
  %82 = load i8*, i8** %81, align 8, !dbg !898
  %83 = bitcast i8* %82 to %struct.GUI_WINDOW_REC*, !dbg !899
  %84 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %83, i32 0, i32 1, !dbg !900
  %85 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %84, align 8, !dbg !900
  call void @textbuffer_view_set_window(%struct._TEXT_BUFFER_VIEW_REC* %85, %struct._TERM_WINDOW* null), !dbg !901
  br label %86, !dbg !901

; <label>:86:                                     ; preds = %79, %75, %69
  %87 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !902
  %88 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** @active_mainwin, align 8, !dbg !903
  %89 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %88, i32 0, i32 0, !dbg !904
  store %struct._WINDOW_REC* %87, %struct._WINDOW_REC** %89, align 8, !dbg !905
  %90 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !906
  %91 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %90, i32 0, i32 20, !dbg !907
  %92 = load i8*, i8** %91, align 8, !dbg !907
  %93 = bitcast i8* %92 to %struct.GUI_WINDOW_REC*, !dbg !908
  %94 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %93, i32 0, i32 1, !dbg !909
  %95 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %94, align 8, !dbg !909
  %96 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** @active_mainwin, align 8, !dbg !910
  %97 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %96, i32 0, i32 1, !dbg !911
  %98 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %97, align 8, !dbg !911
  call void @textbuffer_view_set_window(%struct._TEXT_BUFFER_VIEW_REC* %95, %struct._TERM_WINDOW* %98), !dbg !912
  %99 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !913
  %100 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %99, i32 0, i32 20, !dbg !915
  %101 = load i8*, i8** %100, align 8, !dbg !915
  %102 = bitcast i8* %101 to %struct.GUI_WINDOW_REC*, !dbg !916
  %103 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %102, i32 0, i32 1, !dbg !917
  %104 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %103, align 8, !dbg !917
  %105 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %104, i32 0, i32 16, !dbg !918
  %106 = load i8, i8* %105, align 8, !dbg !918
  %107 = lshr i8 %106, 6, !dbg !918
  %108 = and i8 %107, 1, !dbg !918
  %109 = zext i8 %108 to i32, !dbg !918
  %110 = icmp ne i32 %109, 0, !dbg !919
  br i1 %110, label %111, label %117, !dbg !920

; <label>:111:                                    ; preds = %86
  %112 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** @active_mainwin, align 8, !dbg !921
  %113 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %112, i32 0, i32 16, !dbg !922
  %114 = load i8, i8* %113, align 8, !dbg !923
  %115 = and i8 %114, -2, !dbg !923
  %116 = or i8 %115, 1, !dbg !923
  store i8 %116, i8* %113, align 8, !dbg !923
  br label %117, !dbg !921

; <label>:117:                                    ; preds = %9, %14, %111, %86
  ret void, !dbg !924
}

; Function Attrs: nounwind uwtable
define void @gui_windows_deinit() #0 !dbg !925 {
  br label %1, !dbg !926

; <label>:1:                                      ; preds = %4, %0
  %2 = load %struct._GSList*, %struct._GSList** @windows, align 8, !dbg !927
  %3 = icmp ne %struct._GSList* %2, null, !dbg !929
  br i1 %3, label %4, label %9, !dbg !930

; <label>:4:                                      ; preds = %1
  %5 = load %struct._GSList*, %struct._GSList** @windows, align 8, !dbg !931
  %6 = getelementptr inbounds %struct._GSList, %struct._GSList* %5, i32 0, i32 0, !dbg !932
  %7 = load i8*, i8** %6, align 8, !dbg !932
  %8 = bitcast i8* %7 to %struct._WINDOW_REC*, !dbg !931
  call void @window_destroy(%struct._WINDOW_REC* %8), !dbg !933
  br label %1, !dbg !934, !llvm.loop !936

; <label>:9:                                      ; preds = %1
  call void @signal_remove_full(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @sig_window_create_override to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !937
  call void @signal_remove_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*, i8*)* @gui_window_created to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !938
  call void @signal_remove_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*)* @gui_window_destroyed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !939
  call void @signal_remove_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*)* @signal_window_changed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !940
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !941
  ret void, !dbg !942
}

declare void @window_destroy(%struct._WINDOW_REC*) #2

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare %struct.MAIN_WINDOW_REC* @mainwindow_create(i32) #2

; Function Attrs: nounwind uwtable
define internal %struct.GUI_WINDOW_REC* @gui_window_init(%struct._WINDOW_REC*, %struct.MAIN_WINDOW_REC*) #0 !dbg !943 {
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %5 = alloca %struct.GUI_WINDOW_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !946, metadata !285), !dbg !947
  store %struct.MAIN_WINDOW_REC* %1, %struct.MAIN_WINDOW_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %4, metadata !948, metadata !285), !dbg !949
  call void @llvm.dbg.declare(metadata %struct.GUI_WINDOW_REC** %5, metadata !950, metadata !285), !dbg !951
  %6 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !952
  %7 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %6, i32 0, i32 7, !dbg !953
  %8 = load i32, i32* %7, align 4, !dbg !953
  %9 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !954
  %10 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %9, i32 0, i32 2, !dbg !955
  store i32 %8, i32* %10, align 8, !dbg !956
  %11 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !957
  %12 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %11, i32 0, i32 8, !dbg !958
  %13 = load i32, i32* %12, align 8, !dbg !958
  %14 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !959
  %15 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %14, i32 0, i32 12, !dbg !960
  %16 = load i32, i32* %15, align 8, !dbg !960
  %17 = sub nsw i32 %13, %16, !dbg !961
  %18 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !962
  %19 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %18, i32 0, i32 3, !dbg !963
  store i32 %17, i32* %19, align 4, !dbg !964
  %20 = call noalias i8* @g_malloc0_n(i64 1, i64 40), !dbg !965
  %21 = bitcast i8* %20 to %struct.GUI_WINDOW_REC*, !dbg !966
  store %struct.GUI_WINDOW_REC* %21, %struct.GUI_WINDOW_REC** %5, align 8, !dbg !967
  %22 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !968
  %23 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %5, align 8, !dbg !969
  %24 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %23, i32 0, i32 0, !dbg !970
  store %struct.MAIN_WINDOW_REC* %22, %struct.MAIN_WINDOW_REC** %24, align 8, !dbg !971
  %25 = call %struct.TEXT_BUFFER_REC* @textbuffer_create(), !dbg !972
  %26 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !973
  %27 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %26, i32 0, i32 2, !dbg !974
  %28 = load i32, i32* %27, align 8, !dbg !974
  %29 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !975
  %30 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %29, i32 0, i32 3, !dbg !976
  %31 = load i32, i32* %30, align 4, !dbg !976
  %32 = call i32 @settings_get_bool(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0)), !dbg !977
  %33 = load i32, i32* @term_type, align 4, !dbg !978
  %34 = icmp eq i32 %33, 1, !dbg !979
  %35 = zext i1 %34 to i32, !dbg !979
  %36 = call %struct._TEXT_BUFFER_VIEW_REC* @textbuffer_view_create(%struct.TEXT_BUFFER_REC* %25, i32 %28, i32 %31, i32 %32, i32 %35), !dbg !980
  %37 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %5, align 8, !dbg !982
  %38 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %37, i32 0, i32 1, !dbg !983
  store %struct._TEXT_BUFFER_VIEW_REC* %36, %struct._TEXT_BUFFER_VIEW_REC** %38, align 8, !dbg !984
  %39 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %5, align 8, !dbg !985
  %40 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %39, i32 0, i32 1, !dbg !986
  %41 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %40, align 8, !dbg !986
  %42 = call i32 @settings_get_int(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0)), !dbg !987
  %43 = call i32 @settings_get_bool(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0)), !dbg !988
  %44 = icmp ne i32 %43, 0, !dbg !989
  %45 = xor i1 %44, true, !dbg !989
  %46 = zext i1 %45 to i32, !dbg !989
  %47 = call i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)* @get_default_indent_func(), !dbg !990
  call void @textbuffer_view_set_default_indent(%struct._TEXT_BUFFER_VIEW_REC* %41, i32 %42, i32 %46, i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)* %47), !dbg !991
  %48 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %5, align 8, !dbg !992
  %49 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %48, i32 0, i32 1, !dbg !993
  %50 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %49, align 8, !dbg !993
  %51 = call i32 @settings_get_bool(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0)), !dbg !994
  call void @textbuffer_view_set_break_wide(%struct._TEXT_BUFFER_VIEW_REC* %50, i32 %51), !dbg !995
  %52 = call i32 @settings_get_choice(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0)), !dbg !996
  store i32 %52, i32* @wcwidth_impl, align 4, !dbg !997
  %53 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %5, align 8, !dbg !998
  %54 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %53, i32 0, i32 1, !dbg !999
  %55 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %54, align 8, !dbg !999
  call void @textbuffer_view_set_hidden_level(%struct._TEXT_BUFFER_VIEW_REC* %55, i32 268435456), !dbg !1000
  %56 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !1001
  %57 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %56, i32 0, i32 0, !dbg !1003
  %58 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %57, align 8, !dbg !1003
  %59 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1004
  %60 = icmp eq %struct._WINDOW_REC* %58, %59, !dbg !1005
  br i1 %60, label %61, label %68, !dbg !1006

; <label>:61:                                     ; preds = %2
  %62 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %5, align 8, !dbg !1007
  %63 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %62, i32 0, i32 1, !dbg !1008
  %64 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %63, align 8, !dbg !1008
  %65 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !1009
  %66 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %65, i32 0, i32 1, !dbg !1010
  %67 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %66, align 8, !dbg !1010
  call void @textbuffer_view_set_window(%struct._TEXT_BUFFER_VIEW_REC* %64, %struct._TERM_WINDOW* %67), !dbg !1011
  br label %68, !dbg !1011

; <label>:68:                                     ; preds = %61, %2
  %69 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %5, align 8, !dbg !1012
  ret %struct.GUI_WINDOW_REC* %69, !dbg !1013
}

declare noalias i8* @g_malloc0_n(i64, i64) #2

declare %struct._TEXT_BUFFER_VIEW_REC* @textbuffer_view_create(%struct.TEXT_BUFFER_REC*, i32, i32, i32, i32) #2

declare %struct.TEXT_BUFFER_REC* @textbuffer_create() #2

declare void @textbuffer_view_set_hidden_level(%struct._TEXT_BUFFER_VIEW_REC*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @gui_window_deinit(%struct.GUI_WINDOW_REC*) #0 !dbg !1014 {
  %2 = alloca %struct.GUI_WINDOW_REC*, align 8
  store %struct.GUI_WINDOW_REC* %0, %struct.GUI_WINDOW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.GUI_WINDOW_REC** %2, metadata !1017, metadata !285), !dbg !1018
  %3 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %2, align 8, !dbg !1019
  %4 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %3, i32 0, i32 1, !dbg !1020
  %5 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !1020
  call void @textbuffer_view_destroy(%struct._TEXT_BUFFER_VIEW_REC* %5), !dbg !1021
  %6 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %2, align 8, !dbg !1022
  %7 = bitcast %struct.GUI_WINDOW_REC* %6 to i8*, !dbg !1022
  call void @g_free(i8* %7), !dbg !1023
  ret void, !dbg !1024
}

declare void @mainwindow_change_active(%struct.MAIN_WINDOW_REC*, %struct._WINDOW_REC*) #2

declare void @textbuffer_view_destroy(%struct._TEXT_BUFFER_VIEW_REC*) #2

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct.MAIN_WINDOW_REC* @mainwindow_find_unsticky() #0 !dbg !1025 {
  %1 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %2 = alloca %struct._GSList*, align 8
  %3 = alloca %struct.MAIN_WINDOW_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %2, metadata !1028, metadata !285), !dbg !1029
  %4 = load %struct._GSList*, %struct._GSList** @mainwindows, align 8, !dbg !1030
  store %struct._GSList* %4, %struct._GSList** %2, align 8, !dbg !1032
  br label %5, !dbg !1033

; <label>:5:                                      ; preds = %20, %0
  %6 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !1034
  %7 = icmp ne %struct._GSList* %6, null, !dbg !1037
  br i1 %7, label %8, label %24, !dbg !1038

; <label>:8:                                      ; preds = %5
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %3, metadata !1039, metadata !285), !dbg !1041
  %9 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !1042
  %10 = getelementptr inbounds %struct._GSList, %struct._GSList* %9, i32 0, i32 0, !dbg !1043
  %11 = load i8*, i8** %10, align 8, !dbg !1043
  %12 = bitcast i8* %11 to %struct.MAIN_WINDOW_REC*, !dbg !1042
  store %struct.MAIN_WINDOW_REC* %12, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !1041
  %13 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !1044
  %14 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %13, i32 0, i32 2, !dbg !1046
  %15 = load i32, i32* %14, align 8, !dbg !1046
  %16 = icmp ne i32 %15, 0, !dbg !1044
  br i1 %16, label %19, label %17, !dbg !1047

; <label>:17:                                     ; preds = %8
  %18 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !1048
  store %struct.MAIN_WINDOW_REC* %18, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !1049
  br label %26, !dbg !1049

; <label>:19:                                     ; preds = %8
  br label %20, !dbg !1050

; <label>:20:                                     ; preds = %19
  %21 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !1051
  %22 = getelementptr inbounds %struct._GSList, %struct._GSList* %21, i32 0, i32 1, !dbg !1053
  %23 = load %struct._GSList*, %struct._GSList** %22, align 8, !dbg !1053
  store %struct._GSList* %23, %struct._GSList** %2, align 8, !dbg !1054
  br label %5, !dbg !1055, !llvm.loop !1056

; <label>:24:                                     ; preds = %5
  %25 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** @active_mainwin, align 8, !dbg !1058
  store %struct.MAIN_WINDOW_REC* %25, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !1059
  br label %26, !dbg !1059

; <label>:26:                                     ; preds = %24, %17
  %27 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !1060
  ret %struct.MAIN_WINDOW_REC* %27, !dbg !1060
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!277, !278}
!llvm.ident = !{!279}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !42, globals: !273)
!1 = !DIFile(filename: "line352-gui-windows.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !11}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 14, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../src/fe-common/core/fe-windows.h", directory: "/home/lichi/Desktop/irssi/task1")
!5 = !{!6, !7, !8, !9, !10}
!6 = !DIEnumerator(name: "MAIN_WINDOW_TYPE_NONE", value: -1)
!7 = !DIEnumerator(name: "MAIN_WINDOW_TYPE_DEFAULT", value: 0)
!8 = !DIEnumerator(name: "MAIN_WINDOW_TYPE_HIDDEN", value: 1)
!9 = !DIEnumerator(name: "MAIN_WINDOW_TYPE_SPLIT", value: 2)
!10 = !DIEnumerator(name: "MAIN_WINDOW_TYPE_RSPLIT", value: 3)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 10, size: 32, align: 32, elements: !13)
!12 = !DIFile(filename: "../../src/core/levels.h", directory: "/home/lichi/Desktop/irssi/task1")
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41}
!14 = !DIEnumerator(name: "MSGLEVEL_CRAP", value: 1)
!15 = !DIEnumerator(name: "MSGLEVEL_MSGS", value: 2)
!16 = !DIEnumerator(name: "MSGLEVEL_PUBLIC", value: 4)
!17 = !DIEnumerator(name: "MSGLEVEL_NOTICES", value: 8)
!18 = !DIEnumerator(name: "MSGLEVEL_SNOTES", value: 16)
!19 = !DIEnumerator(name: "MSGLEVEL_CTCPS", value: 32)
!20 = !DIEnumerator(name: "MSGLEVEL_ACTIONS", value: 64)
!21 = !DIEnumerator(name: "MSGLEVEL_JOINS", value: 128)
!22 = !DIEnumerator(name: "MSGLEVEL_PARTS", value: 256)
!23 = !DIEnumerator(name: "MSGLEVEL_QUITS", value: 512)
!24 = !DIEnumerator(name: "MSGLEVEL_KICKS", value: 1024)
!25 = !DIEnumerator(name: "MSGLEVEL_MODES", value: 2048)
!26 = !DIEnumerator(name: "MSGLEVEL_TOPICS", value: 4096)
!27 = !DIEnumerator(name: "MSGLEVEL_WALLOPS", value: 8192)
!28 = !DIEnumerator(name: "MSGLEVEL_INVITES", value: 16384)
!29 = !DIEnumerator(name: "MSGLEVEL_NICKS", value: 32768)
!30 = !DIEnumerator(name: "MSGLEVEL_DCC", value: 65536)
!31 = !DIEnumerator(name: "MSGLEVEL_DCCMSGS", value: 131072)
!32 = !DIEnumerator(name: "MSGLEVEL_CLIENTNOTICE", value: 262144)
!33 = !DIEnumerator(name: "MSGLEVEL_CLIENTCRAP", value: 524288)
!34 = !DIEnumerator(name: "MSGLEVEL_CLIENTERROR", value: 1048576)
!35 = !DIEnumerator(name: "MSGLEVEL_HILIGHT", value: 2097152)
!36 = !DIEnumerator(name: "MSGLEVEL_ALL", value: 4194303)
!37 = !DIEnumerator(name: "MSGLEVEL_NOHILIGHT", value: 16777216)
!38 = !DIEnumerator(name: "MSGLEVEL_NO_ACT", value: 33554432)
!39 = !DIEnumerator(name: "MSGLEVEL_NEVER", value: 67108864)
!40 = !DIEnumerator(name: "MSGLEVEL_LASTLOG", value: 134217728)
!41 = !DIEnumerator(name: "MSGLEVEL_HIDDEN", value: 268435456)
!42 = !{!43, !76, !262, !115, !264, !271, !272}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "GUI_WINDOW_REC", file: !45, line: 24, baseType: !46)
!45 = !DIFile(filename: "gui-windows.h", directory: "/home/lichi/Desktop/irssi/task1")
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 13, size: 320, align: 64, elements: !47)
!47 = !{!48, !174, !256, !257, !258, !259, !260, !261}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !46, file: !45, line: 14, baseType: !49, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "MAIN_WINDOW_REC", file: !51, line: 34, baseType: !52)
!51 = !DIFile(filename: "mainwindows.h", directory: "/home/lichi/Desktop/irssi/task1")
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !51, line: 16, size: 704, align: 64, elements: !53)
!53 = !{!54, !153, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !52, file: !51, line: 17, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "WINDOW_REC", file: !57, line: 117, baseType: !58)
!57 = !DIFile(filename: "../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WINDOW_REC", file: !4, line: 28, size: 1280, align: 64, elements: !59)
!59 = !{!60, !62, !65, !66, !67, !78, !117, !118, !119, !120, !121, !122, !124, !125, !126, !145, !146, !147, !148, !149, !150, !151, !152}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "refnum", scope: !58, file: !4, line: 29, baseType: !61, size: 32, align: 32)
!61 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !58, file: !4, line: 30, baseType: !63, size: 64, align: 64, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !58, file: !4, line: 32, baseType: !61, size: 32, align: 32, offset: 128)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !58, file: !4, line: 32, baseType: !61, size: 32, align: 32, offset: 160)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !58, file: !4, line: 34, baseType: !68, size: 64, align: 64, offset: 192)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !70, line: 37, baseType: !71)
!70 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !70, line: 39, size: 128, align: 64, elements: !72)
!72 = !{!73, !77}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !71, file: !70, line: 41, baseType: !74, size: 64, align: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !75, line: 77, baseType: !76)
!75 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !71, file: !70, line: 42, baseType: !68, size: 64, align: 64, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !58, file: !4, line: 35, baseType: !79, size: 64, align: 64, offset: 256)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !57, line: 108, baseType: !81)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !82, line: 5, size: 704, align: 64, elements: !83)
!82 = !DIFile(filename: "../../src/core/window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!83 = !{!84, !86, !87, !92, !93, !97, !98, !99, !105, !106, !107, !111}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !81, file: !85, line: 3, baseType: !61, size: 32, align: 32)
!85 = !DIFile(filename: "../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!86 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !81, file: !85, line: 4, baseType: !61, size: 32, align: 32, offset: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !81, file: !85, line: 5, baseType: !88, size: 64, align: 64, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64, align: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !90, line: 37, baseType: !91)
!90 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!91 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !90, line: 37, flags: DIFlagFwdDecl)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !81, file: !85, line: 7, baseType: !76, size: 64, align: 64, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !81, file: !85, line: 8, baseType: !94, size: 64, align: 64, offset: 192)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !57, line: 107, baseType: !96)
!96 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !57, line: 107, flags: DIFlagFwdDecl)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !81, file: !85, line: 9, baseType: !63, size: 64, align: 64, offset: 256)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !81, file: !85, line: 10, baseType: !63, size: 64, align: 64, offset: 320)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !81, file: !85, line: 11, baseType: !100, size: 64, align: 64, offset: 384)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !101, line: 75, baseType: !102)
!101 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !103, line: 139, baseType: !104)
!103 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!104 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !81, file: !85, line: 12, baseType: !61, size: 32, align: 32, offset: 448)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !81, file: !85, line: 13, baseType: !63, size: 64, align: 64, offset: 512)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !81, file: !85, line: 15, baseType: !108, size: 64, align: 64, offset: 576)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64, align: 64)
!109 = !DISubroutineType(types: !110)
!110 = !{null, !79}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !81, file: !85, line: 17, baseType: !112, size: 64, align: 64, offset: 640)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64, align: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{!115, !79}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "active_server", scope: !58, file: !4, line: 36, baseType: !94, size: 64, align: 64, offset: 320)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "connect_server", scope: !58, file: !4, line: 37, baseType: !94, size: 64, align: 64, offset: 384)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !58, file: !4, line: 38, baseType: !63, size: 64, align: 64, offset: 448)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !58, file: !4, line: 40, baseType: !61, size: 32, align: 32, offset: 512)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "bound_items", scope: !58, file: !4, line: 41, baseType: !68, size: 64, align: 64, offset: 576)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "immortal", scope: !58, file: !4, line: 43, baseType: !123, size: 1, align: 32, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!123 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "sticky_refnum", scope: !58, file: !4, line: 44, baseType: !123, size: 1, align: 32, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !58, file: !4, line: 45, baseType: !123, size: 1, align: 32, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !58, file: !4, line: 48, baseType: !127, size: 64, align: 64, offset: 704)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "HISTORY_REC", file: !129, line: 14, baseType: !130)
!129 = !DIFile(filename: "../../src/fe-common/core/command-history.h", directory: "/home/lichi/Desktop/irssi/task1")
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !129, line: 6, size: 256, align: 64, elements: !131)
!131 = !{!132, !133, !142, !143, !144}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !130, file: !129, line: 7, baseType: !63, size: 64, align: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !130, file: !129, line: 9, baseType: !134, size: 64, align: 64, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "GList", file: !136, line: 37, baseType: !137)
!136 = !DIFile(filename: "/usr/include/glib-2.0/glib/glist.h", directory: "/home/lichi/Desktop/irssi/task1")
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GList", file: !136, line: 39, size: 192, align: 64, elements: !138)
!138 = !{!139, !140, !141}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !137, file: !136, line: 41, baseType: !74, size: 64, align: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !137, file: !136, line: 42, baseType: !134, size: 64, align: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !137, file: !136, line: 43, baseType: !134, size: 64, align: 64, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !130, file: !129, line: 10, baseType: !61, size: 32, align: 32, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !130, file: !129, line: 12, baseType: !61, size: 32, align: 32, offset: 160)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "redo", scope: !130, file: !129, line: 13, baseType: !61, size: 1, align: 32, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "history_name", scope: !58, file: !4, line: 49, baseType: !63, size: 64, align: 64, offset: 768)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !58, file: !4, line: 51, baseType: !61, size: 32, align: 32, offset: 832)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !58, file: !4, line: 52, baseType: !63, size: 64, align: 64, offset: 896)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "last_timestamp", scope: !58, file: !4, line: 54, baseType: !100, size: 64, align: 64, offset: 960)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "last_line", scope: !58, file: !4, line: 55, baseType: !100, size: 64, align: 64, offset: 1024)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "theme_name", scope: !58, file: !4, line: 57, baseType: !63, size: 64, align: 64, offset: 1088)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "theme", scope: !58, file: !4, line: 58, baseType: !76, size: 64, align: 64, offset: 1152)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "gui_data", scope: !58, file: !4, line: 60, baseType: !76, size: 64, align: 64, offset: 1216)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "screen_win", scope: !52, file: !51, line: 19, baseType: !154, size: 64, align: 64, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64, align: 64)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "TERM_WINDOW", file: !156, line: 4, baseType: !157)
!156 = !DIFile(filename: "term.h", directory: "/home/lichi/Desktop/irssi/task1")
!157 = !DICompositeType(tag: DW_TAG_structure_type, name: "_TERM_WINDOW", file: !156, line: 4, flags: DIFlagFwdDecl)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "sticky_windows", scope: !52, file: !51, line: 20, baseType: !61, size: 32, align: 32, offset: 128)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "first_line", scope: !52, file: !51, line: 22, baseType: !61, size: 32, align: 32, offset: 160)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "last_line", scope: !52, file: !51, line: 22, baseType: !61, size: 32, align: 32, offset: 192)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "first_column", scope: !52, file: !51, line: 23, baseType: !61, size: 32, align: 32, offset: 224)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "last_column", scope: !52, file: !51, line: 23, baseType: !61, size: 32, align: 32, offset: 256)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !52, file: !51, line: 24, baseType: !61, size: 32, align: 32, offset: 288)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !52, file: !51, line: 24, baseType: !61, size: 32, align: 32, offset: 320)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "statusbars", scope: !52, file: !51, line: 26, baseType: !68, size: 64, align: 64, offset: 384)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_lines_top", scope: !52, file: !51, line: 27, baseType: !61, size: 32, align: 32, offset: 448)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_lines_bottom", scope: !52, file: !51, line: 27, baseType: !61, size: 32, align: 32, offset: 480)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_lines", scope: !52, file: !51, line: 28, baseType: !61, size: 32, align: 32, offset: 512)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_columns_left", scope: !52, file: !51, line: 29, baseType: !61, size: 32, align: 32, offset: 544)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_columns_right", scope: !52, file: !51, line: 29, baseType: !61, size: 32, align: 32, offset: 576)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_columns", scope: !52, file: !51, line: 30, baseType: !61, size: 32, align: 32, offset: 608)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !52, file: !51, line: 32, baseType: !123, size: 1, align: 32, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "size_dirty", scope: !52, file: !51, line: 33, baseType: !123, size: 1, align: 32, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "view", scope: !46, file: !45, line: 15, baseType: !175, size: 64, align: 64, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64, align: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_BUFFER_VIEW_REC", file: !177, line: 7, baseType: !178)
!177 = !DIFile(filename: "textbuffer-view.h", directory: "/home/lichi/Desktop/irssi/task1")
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TEXT_BUFFER_VIEW_REC", file: !177, line: 50, size: 960, align: 64, elements: !179)
!179 = !{!180, !221, !222, !223, !224, !225, !226, !231, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !178, file: !177, line: 51, baseType: !181, size: 64, align: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64, align: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_BUFFER_REC", file: !183, line: 72, baseType: !184)
!183 = !DIFile(filename: "textbuffer.h", directory: "/home/lichi/Desktop/irssi/task1")
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !183, line: 60, size: 448, align: 64, elements: !185)
!185 = !{!186, !187, !204, !205, !206, !217, !218, !219, !220}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "text_chunks", scope: !184, file: !183, line: 61, baseType: !68, size: 64, align: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "first_line", scope: !184, file: !183, line: 62, baseType: !188, size: 64, align: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64, align: 64)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "LINE_REC", file: !183, line: 52, baseType: !190)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_LINE_REC", file: !183, line: 34, size: 320, align: 64, elements: !191)
!191 = !{!192, !194, !195, !198}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !190, file: !183, line: 48, baseType: !193, size: 64, align: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64, align: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !190, file: !183, line: 48, baseType: !193, size: 64, align: 64, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !190, file: !183, line: 50, baseType: !196, size: 64, align: 64, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !190, file: !183, line: 51, baseType: !199, size: 128, align: 64, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "LINE_INFO_REC", file: !183, line: 32, baseType: !200)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !183, line: 29, size: 128, align: 64, elements: !201)
!201 = !{!202, !203}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !200, file: !183, line: 30, baseType: !61, size: 32, align: 32)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !200, file: !183, line: 31, baseType: !100, size: 64, align: 64, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "lines_count", scope: !184, file: !183, line: 63, baseType: !61, size: 32, align: 32, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "cur_line", scope: !184, file: !183, line: 65, baseType: !188, size: 64, align: 64, offset: 192)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "cur_text", scope: !184, file: !183, line: 66, baseType: !207, size: 64, align: 64, offset: 256)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64, align: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_CHUNK_REC", file: !183, line: 58, baseType: !209)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !183, line: 54, size: 131008, align: 32, elements: !210)
!210 = !{!211, !215, !216}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !209, file: !183, line: 55, baseType: !212, size: 130944, align: 8)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 130944, align: 8, elements: !213)
!213 = !{!214}
!214 = !DISubrange(count: 16368)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !209, file: !183, line: 56, baseType: !61, size: 32, align: 32, offset: 130944)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !209, file: !183, line: 57, baseType: !61, size: 32, align: 32, offset: 130976)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "last_fg", scope: !184, file: !183, line: 68, baseType: !61, size: 32, align: 32, offset: 320)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "last_bg", scope: !184, file: !183, line: 69, baseType: !61, size: 32, align: 32, offset: 352)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "last_flags", scope: !184, file: !183, line: 70, baseType: !61, size: 32, align: 32, offset: 384)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "last_eol", scope: !184, file: !183, line: 71, baseType: !123, size: 1, align: 32, offset: 416, flags: DIFlagBitField, extraData: i64 416)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "siblings", scope: !178, file: !177, line: 53, baseType: !68, size: 64, align: 64, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !178, file: !177, line: 55, baseType: !154, size: 64, align: 64, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !178, file: !177, line: 56, baseType: !61, size: 32, align: 32, offset: 192)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !178, file: !177, line: 56, baseType: !61, size: 32, align: 32, offset: 224)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "default_indent", scope: !178, file: !177, line: 58, baseType: !61, size: 32, align: 32, offset: 256)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "default_indent_func", scope: !178, file: !177, line: 59, baseType: !227, size: 64, align: 64, offset: 320)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "INDENT_FUNC", file: !177, line: 10, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64, align: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{!61, !175, !188, !61}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !178, file: !177, line: 61, baseType: !232, size: 64, align: 64, offset: 384)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_BUFFER_CACHE_REC", file: !177, line: 48, baseType: !234)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !177, line: 37, size: 192, align: 64, elements: !235)
!235 = !{!236, !237, !238, !239, !240}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !234, file: !177, line: 38, baseType: !61, size: 32, align: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !234, file: !177, line: 39, baseType: !61, size: 32, align: 32, offset: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "line_cache", scope: !234, file: !177, line: 41, baseType: !88, size: 64, align: 64, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "update_counter", scope: !234, file: !177, line: 45, baseType: !197, size: 8, align: 8, offset: 128)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "last_linecount", scope: !234, file: !177, line: 47, baseType: !61, size: 32, align: 32, offset: 160)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "ypos", scope: !178, file: !177, line: 63, baseType: !61, size: 32, align: 32, offset: 448)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "startline", scope: !178, file: !177, line: 66, baseType: !188, size: 64, align: 64, offset: 512)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "subline", scope: !178, file: !177, line: 68, baseType: !61, size: 32, align: 32, offset: 576)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_startline", scope: !178, file: !177, line: 71, baseType: !188, size: 64, align: 64, offset: 640)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_subline", scope: !178, file: !177, line: 72, baseType: !61, size: 32, align: 32, offset: 704)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "bookmarks", scope: !178, file: !177, line: 76, baseType: !88, size: 64, align: 64, offset: 768)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "hidden_level", scope: !178, file: !177, line: 79, baseType: !61, size: 32, align: 32, offset: 832)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "empty_linecount", scope: !178, file: !177, line: 82, baseType: !61, size: 32, align: 32, offset: 864)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "longword_noindent", scope: !178, file: !177, line: 84, baseType: !123, size: 1, align: 32, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "scroll", scope: !178, file: !177, line: 86, baseType: !123, size: 1, align: 32, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "utf8", scope: !178, file: !177, line: 88, baseType: !123, size: 1, align: 32, offset: 898, flags: DIFlagBitField, extraData: i64 896)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "break_wide", scope: !178, file: !177, line: 90, baseType: !123, size: 1, align: 32, offset: 899, flags: DIFlagBitField, extraData: i64 896)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "bottom", scope: !178, file: !177, line: 92, baseType: !123, size: 1, align: 32, offset: 900, flags: DIFlagBitField, extraData: i64 896)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "more_text", scope: !178, file: !177, line: 94, baseType: !123, size: 1, align: 32, offset: 901, flags: DIFlagBitField, extraData: i64 896)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !178, file: !177, line: 96, baseType: !123, size: 1, align: 32, offset: 902, flags: DIFlagBitField, extraData: i64 896)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "scroll", scope: !46, file: !45, line: 17, baseType: !123, size: 1, align: 32, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "use_scroll", scope: !46, file: !45, line: 18, baseType: !123, size: 1, align: 32, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "sticky", scope: !46, file: !45, line: 20, baseType: !123, size: 1, align: 32, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "use_insert_after", scope: !46, file: !45, line: 21, baseType: !123, size: 1, align: 32, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "insert_after", scope: !46, file: !45, line: 22, baseType: !188, size: 64, align: 64, offset: 192)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "insert_after_time", scope: !46, file: !45, line: 23, baseType: !100, size: 64, align: 64, offset: 256)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64, align: 64)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !75, line: 46, baseType: !64)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !265, line: 9, baseType: !266)
!265 = !DIFile(filename: "../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64, align: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{null, !269, !269, !269, !269, !269, !269}
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64, align: 64)
!270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !75, line: 49, baseType: !61)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !75, line: 48, baseType: !104)
!273 = !{!274, !276}
!274 = distinct !DIGlobalVariable(name: "window_create_override", scope: !0, file: !275, line: 33, type: !61, isLocal: true, isDefinition: true, variable: i32* @window_create_override)
!275 = !DIFile(filename: "gui-windows.c", directory: "/home/lichi/Desktop/irssi/task1")
!276 = distinct !DIGlobalVariable(name: "wcwidth_impl", scope: !0, file: !275, line: 34, type: !61, isLocal: true, isDefinition: true, variable: i32* @wcwidth_impl)
!277 = !{i32 2, !"Dwarf Version", i32 4}
!278 = !{i32 2, !"Debug Info Version", i32 3}
!279 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!280 = distinct !DISubprogram(name: "gui_window_resize", scope: !275, file: !275, line: 127, type: !281, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !283)
!281 = !DISubroutineType(types: !282)
!282 = !{null, !55, !61, !61}
!283 = !{}
!284 = !DILocalVariable(name: "window", arg: 1, scope: !280, file: !275, line: 127, type: !55)
!285 = !DIExpression()
!286 = !DILocation(line: 127, column: 36, scope: !280)
!287 = !DILocalVariable(name: "width", arg: 2, scope: !280, file: !275, line: 127, type: !61)
!288 = !DILocation(line: 127, column: 48, scope: !280)
!289 = !DILocalVariable(name: "height", arg: 3, scope: !280, file: !275, line: 127, type: !61)
!290 = !DILocation(line: 127, column: 59, scope: !280)
!291 = !DILocalVariable(name: "gui", scope: !280, file: !275, line: 129, type: !43)
!292 = !DILocation(line: 129, column: 18, scope: !280)
!293 = !DILocation(line: 131, column: 6, scope: !294)
!294 = distinct !DILexicalBlock(scope: !280, file: !275, line: 131, column: 6)
!295 = !DILocation(line: 131, column: 14, scope: !294)
!296 = !DILocation(line: 131, column: 23, scope: !294)
!297 = !DILocation(line: 131, column: 20, scope: !294)
!298 = !DILocation(line: 131, column: 29, scope: !294)
!299 = !DILocation(line: 131, column: 32, scope: !300)
!300 = !DILexicalBlockFile(scope: !294, file: !275, discriminator: 1)
!301 = !DILocation(line: 131, column: 40, scope: !300)
!302 = !DILocation(line: 131, column: 50, scope: !300)
!303 = !DILocation(line: 131, column: 47, scope: !300)
!304 = !DILocation(line: 131, column: 6, scope: !300)
!305 = !DILocation(line: 132, column: 17, scope: !294)
!306 = !DILocation(line: 134, column: 30, scope: !280)
!307 = !DILocation(line: 134, column: 39, scope: !280)
!308 = !DILocation(line: 134, column: 9, scope: !280)
!309 = !DILocation(line: 134, column: 6, scope: !280)
!310 = !DILocation(line: 136, column: 2, scope: !280)
!311 = !DILocation(line: 137, column: 32, scope: !280)
!312 = !DILocation(line: 137, column: 41, scope: !280)
!313 = !DILocation(line: 137, column: 11, scope: !280)
!314 = !DILocation(line: 137, column: 53, scope: !280)
!315 = !DILocation(line: 137, column: 62, scope: !280)
!316 = !DILocation(line: 137, column: 68, scope: !280)
!317 = !DILocation(line: 139, column: 25, scope: !280)
!318 = !DILocation(line: 139, column: 9, scope: !280)
!319 = !DILocation(line: 139, column: 17, scope: !280)
!320 = !DILocation(line: 139, column: 23, scope: !280)
!321 = !DILocation(line: 140, column: 19, scope: !280)
!322 = !DILocation(line: 140, column: 2, scope: !280)
!323 = !DILocation(line: 140, column: 10, scope: !280)
!324 = !DILocation(line: 140, column: 17, scope: !280)
!325 = !DILocation(line: 141, column: 32, scope: !280)
!326 = !DILocation(line: 141, column: 37, scope: !280)
!327 = !DILocation(line: 141, column: 43, scope: !280)
!328 = !DILocation(line: 141, column: 50, scope: !280)
!329 = !DILocation(line: 141, column: 9, scope: !280)
!330 = !DILocation(line: 142, column: 1, scope: !280)
!331 = !DILocation(line: 142, column: 1, scope: !332)
!332 = !DILexicalBlockFile(scope: !280, file: !275, discriminator: 1)
!333 = distinct !DISubprogram(name: "gui_window_scroll", scope: !275, file: !275, line: 144, type: !334, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !283)
!334 = !DISubroutineType(types: !335)
!335 = !{null, !55, !61}
!336 = !DILocalVariable(name: "window", arg: 1, scope: !333, file: !275, line: 144, type: !55)
!337 = !DILocation(line: 144, column: 36, scope: !333)
!338 = !DILocalVariable(name: "lines", arg: 2, scope: !333, file: !275, line: 144, type: !61)
!339 = !DILocation(line: 144, column: 48, scope: !333)
!340 = !DILocation(line: 146, column: 2, scope: !333)
!341 = distinct !{!341, !340}
!342 = !DILocation(line: 146, column: 10, scope: !343)
!343 = !DILexicalBlockFile(scope: !344, file: !275, discriminator: 1)
!344 = distinct !DILexicalBlock(scope: !345, file: !275, line: 146, column: 10)
!345 = distinct !DILexicalBlock(scope: !333, file: !275, line: 146, column: 4)
!346 = !DILocation(line: 146, column: 17, scope: !343)
!347 = !DILocation(line: 146, column: 5, scope: !348)
!348 = !DILexicalBlockFile(scope: !349, file: !275, discriminator: 2)
!349 = distinct !DILexicalBlock(scope: !344, file: !275, line: 146, column: 3)
!350 = !DILocation(line: 146, column: 14, scope: !351)
!351 = !DILexicalBlockFile(scope: !352, file: !275, discriminator: 3)
!352 = distinct !DILexicalBlock(scope: !344, file: !275, line: 146, column: 12)
!353 = !DILocation(line: 146, column: 101, scope: !351)
!354 = !DILocation(line: 146, column: 112, scope: !355)
!355 = !DILexicalBlockFile(scope: !345, file: !275, discriminator: 4)
!356 = !DILocation(line: 148, column: 54, scope: !333)
!357 = !DILocation(line: 148, column: 63, scope: !333)
!358 = !DILocation(line: 148, column: 33, scope: !333)
!359 = !DILocation(line: 148, column: 75, scope: !333)
!360 = !DILocation(line: 148, column: 81, scope: !333)
!361 = !DILocation(line: 148, column: 9, scope: !333)
!362 = !DILocation(line: 149, column: 38, scope: !333)
!363 = !DILocation(line: 149, column: 2, scope: !333)
!364 = !DILocation(line: 150, column: 1, scope: !333)
!365 = !DILocation(line: 150, column: 1, scope: !366)
!366 = !DILexicalBlockFile(scope: !333, file: !275, discriminator: 1)
!367 = distinct !DISubprogram(name: "gui_window_scroll_line", scope: !275, file: !275, line: 152, type: !368, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !283)
!368 = !DISubroutineType(types: !369)
!369 = !{null, !55, !188}
!370 = !DILocalVariable(name: "window", arg: 1, scope: !367, file: !275, line: 152, type: !55)
!371 = !DILocation(line: 152, column: 41, scope: !367)
!372 = !DILocalVariable(name: "line", arg: 2, scope: !367, file: !275, line: 152, type: !188)
!373 = !DILocation(line: 152, column: 59, scope: !367)
!374 = !DILocation(line: 154, column: 2, scope: !367)
!375 = distinct !{!375, !374}
!376 = !DILocation(line: 154, column: 10, scope: !377)
!377 = !DILexicalBlockFile(scope: !378, file: !275, discriminator: 1)
!378 = distinct !DILexicalBlock(scope: !379, file: !275, line: 154, column: 10)
!379 = distinct !DILexicalBlock(scope: !367, file: !275, line: 154, column: 4)
!380 = !DILocation(line: 154, column: 17, scope: !377)
!381 = !DILocation(line: 154, column: 5, scope: !382)
!382 = !DILexicalBlockFile(scope: !383, file: !275, discriminator: 2)
!383 = distinct !DILexicalBlock(scope: !378, file: !275, line: 154, column: 3)
!384 = !DILocation(line: 154, column: 14, scope: !385)
!385 = !DILexicalBlockFile(scope: !386, file: !275, discriminator: 3)
!386 = distinct !DILexicalBlock(scope: !378, file: !275, line: 154, column: 12)
!387 = !DILocation(line: 154, column: 101, scope: !385)
!388 = !DILocation(line: 154, column: 112, scope: !389)
!389 = !DILexicalBlockFile(scope: !379, file: !275, discriminator: 4)
!390 = !DILocation(line: 155, column: 2, scope: !367)
!391 = distinct !{!391, !390}
!392 = !DILocation(line: 155, column: 10, scope: !393)
!393 = !DILexicalBlockFile(scope: !394, file: !275, discriminator: 1)
!394 = distinct !DILexicalBlock(scope: !395, file: !275, line: 155, column: 10)
!395 = distinct !DILexicalBlock(scope: !367, file: !275, line: 155, column: 4)
!396 = !DILocation(line: 155, column: 15, scope: !393)
!397 = !DILocation(line: 155, column: 5, scope: !398)
!398 = !DILexicalBlockFile(scope: !399, file: !275, discriminator: 2)
!399 = distinct !DILexicalBlock(scope: !394, file: !275, line: 155, column: 3)
!400 = !DILocation(line: 155, column: 14, scope: !401)
!401 = !DILexicalBlockFile(scope: !402, file: !275, discriminator: 3)
!402 = distinct !DILexicalBlock(scope: !394, file: !275, line: 155, column: 12)
!403 = !DILocation(line: 155, column: 99, scope: !401)
!404 = !DILocation(line: 155, column: 110, scope: !405)
!405 = !DILexicalBlockFile(scope: !395, file: !275, discriminator: 4)
!406 = !DILocation(line: 157, column: 59, scope: !367)
!407 = !DILocation(line: 157, column: 68, scope: !367)
!408 = !DILocation(line: 157, column: 38, scope: !367)
!409 = !DILocation(line: 157, column: 80, scope: !367)
!410 = !DILocation(line: 157, column: 86, scope: !367)
!411 = !DILocation(line: 157, column: 9, scope: !367)
!412 = !DILocation(line: 158, column: 38, scope: !367)
!413 = !DILocation(line: 158, column: 2, scope: !367)
!414 = !DILocation(line: 159, column: 1, scope: !367)
!415 = !DILocation(line: 159, column: 1, scope: !416)
!416 = !DILexicalBlockFile(scope: !367, file: !275, discriminator: 1)
!417 = distinct !DISubprogram(name: "gui_window_set_sticky", scope: !275, file: !275, line: 161, type: !418, isLocal: false, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !283)
!418 = !DISubroutineType(types: !419)
!419 = !{null, !55}
!420 = !DILocalVariable(name: "window", arg: 1, scope: !417, file: !275, line: 161, type: !55)
!421 = !DILocation(line: 161, column: 40, scope: !417)
!422 = !DILocalVariable(name: "gui", scope: !417, file: !275, line: 163, type: !43)
!423 = !DILocation(line: 163, column: 18, scope: !417)
!424 = !DILocation(line: 163, column: 46, scope: !417)
!425 = !DILocation(line: 163, column: 55, scope: !417)
!426 = !DILocation(line: 163, column: 25, scope: !417)
!427 = !DILocation(line: 165, column: 7, scope: !428)
!428 = distinct !DILexicalBlock(scope: !417, file: !275, line: 165, column: 6)
!429 = !DILocation(line: 165, column: 12, scope: !428)
!430 = !DILocation(line: 165, column: 6, scope: !417)
!431 = !DILocation(line: 166, column: 3, scope: !432)
!432 = distinct !DILexicalBlock(scope: !428, file: !275, line: 165, column: 20)
!433 = !DILocation(line: 166, column: 8, scope: !432)
!434 = !DILocation(line: 166, column: 15, scope: !432)
!435 = !DILocation(line: 167, column: 3, scope: !432)
!436 = !DILocation(line: 167, column: 8, scope: !432)
!437 = !DILocation(line: 167, column: 16, scope: !432)
!438 = !DILocation(line: 167, column: 30, scope: !432)
!439 = !DILocation(line: 168, column: 2, scope: !432)
!440 = !DILocation(line: 169, column: 1, scope: !417)
!441 = distinct !DISubprogram(name: "gui_window_set_unsticky", scope: !275, file: !275, line: 171, type: !418, isLocal: false, isDefinition: true, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !283)
!442 = !DILocalVariable(name: "window", arg: 1, scope: !441, file: !275, line: 171, type: !55)
!443 = !DILocation(line: 171, column: 42, scope: !441)
!444 = !DILocalVariable(name: "gui", scope: !441, file: !275, line: 173, type: !43)
!445 = !DILocation(line: 173, column: 18, scope: !441)
!446 = !DILocation(line: 173, column: 46, scope: !441)
!447 = !DILocation(line: 173, column: 55, scope: !441)
!448 = !DILocation(line: 173, column: 25, scope: !441)
!449 = !DILocation(line: 175, column: 6, scope: !450)
!450 = distinct !DILexicalBlock(scope: !441, file: !275, line: 175, column: 6)
!451 = !DILocation(line: 175, column: 11, scope: !450)
!452 = !DILocation(line: 175, column: 6, scope: !441)
!453 = !DILocation(line: 176, column: 3, scope: !454)
!454 = distinct !DILexicalBlock(scope: !450, file: !275, line: 175, column: 19)
!455 = !DILocation(line: 176, column: 8, scope: !454)
!456 = !DILocation(line: 176, column: 15, scope: !454)
!457 = !DILocation(line: 177, column: 3, scope: !454)
!458 = !DILocation(line: 177, column: 8, scope: !454)
!459 = !DILocation(line: 177, column: 16, scope: !454)
!460 = !DILocation(line: 177, column: 30, scope: !454)
!461 = !DILocation(line: 178, column: 2, scope: !454)
!462 = !DILocation(line: 179, column: 1, scope: !441)
!463 = distinct !DISubprogram(name: "gui_window_reparent", scope: !275, file: !275, line: 181, type: !464, isLocal: false, isDefinition: true, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !283)
!464 = !DISubroutineType(types: !465)
!465 = !{null, !55, !49}
!466 = !DILocalVariable(name: "window", arg: 1, scope: !463, file: !275, line: 181, type: !55)
!467 = !DILocation(line: 181, column: 38, scope: !463)
!468 = !DILocalVariable(name: "parent", arg: 2, scope: !463, file: !275, line: 181, type: !49)
!469 = !DILocation(line: 181, column: 63, scope: !463)
!470 = !DILocalVariable(name: "oldparent", scope: !463, file: !275, line: 183, type: !49)
!471 = !DILocation(line: 183, column: 19, scope: !463)
!472 = !DILocation(line: 185, column: 37, scope: !463)
!473 = !DILocation(line: 185, column: 46, scope: !463)
!474 = !DILocation(line: 185, column: 16, scope: !463)
!475 = !DILocation(line: 185, column: 58, scope: !463)
!476 = !DILocation(line: 185, column: 12, scope: !463)
!477 = !DILocation(line: 186, column: 6, scope: !478)
!478 = distinct !DILexicalBlock(scope: !463, file: !275, line: 186, column: 6)
!479 = !DILocation(line: 186, column: 19, scope: !478)
!480 = !DILocation(line: 186, column: 16, scope: !478)
!481 = !DILocation(line: 186, column: 6, scope: !463)
!482 = !DILocation(line: 187, column: 3, scope: !478)
!483 = !DILocation(line: 189, column: 33, scope: !463)
!484 = !DILocation(line: 189, column: 9, scope: !463)
!485 = !DILocation(line: 190, column: 51, scope: !463)
!486 = !DILocation(line: 190, column: 60, scope: !463)
!487 = !DILocation(line: 190, column: 30, scope: !463)
!488 = !DILocation(line: 190, column: 72, scope: !463)
!489 = !DILocation(line: 190, column: 2, scope: !463)
!490 = !DILocation(line: 192, column: 56, scope: !463)
!491 = !DILocation(line: 192, column: 25, scope: !463)
!492 = !DILocation(line: 192, column: 34, scope: !463)
!493 = !DILocation(line: 192, column: 4, scope: !463)
!494 = !DILocation(line: 192, column: 46, scope: !463)
!495 = !DILocation(line: 192, column: 54, scope: !463)
!496 = !DILocation(line: 193, column: 13, scope: !497)
!497 = distinct !DILexicalBlock(scope: !463, file: !275, line: 193, column: 13)
!498 = !DILocation(line: 193, column: 21, scope: !497)
!499 = !DILocation(line: 193, column: 13, scope: !463)
!500 = !DILocation(line: 194, column: 25, scope: !497)
!501 = !DILocation(line: 194, column: 3, scope: !497)
!502 = !DILocation(line: 196, column: 8, scope: !503)
!503 = distinct !DILexicalBlock(scope: !463, file: !275, line: 196, column: 6)
!504 = !DILocation(line: 196, column: 17, scope: !503)
!505 = !DILocation(line: 196, column: 25, scope: !503)
!506 = !DILocation(line: 196, column: 34, scope: !503)
!507 = !DILocation(line: 196, column: 23, scope: !503)
!508 = !DILocation(line: 197, column: 8, scope: !503)
!509 = !DILocation(line: 197, column: 20, scope: !503)
!510 = !DILocation(line: 197, column: 28, scope: !503)
!511 = !DILocation(line: 197, column: 40, scope: !503)
!512 = !DILocation(line: 197, column: 26, scope: !503)
!513 = !DILocation(line: 196, column: 51, scope: !503)
!514 = !DILocation(line: 197, column: 57, scope: !503)
!515 = !DILocation(line: 198, column: 6, scope: !503)
!516 = !DILocation(line: 198, column: 14, scope: !503)
!517 = !DILocation(line: 198, column: 23, scope: !503)
!518 = !DILocation(line: 198, column: 34, scope: !503)
!519 = !DILocation(line: 198, column: 20, scope: !503)
!520 = !DILocation(line: 196, column: 6, scope: !521)
!521 = !DILexicalBlockFile(scope: !463, file: !275, discriminator: 1)
!522 = !DILocation(line: 199, column: 21, scope: !523)
!523 = distinct !DILexicalBlock(scope: !503, file: !275, line: 198, column: 41)
!524 = !DILocation(line: 199, column: 29, scope: !523)
!525 = !DILocation(line: 199, column: 37, scope: !523)
!526 = !DILocation(line: 200, column: 9, scope: !523)
!527 = !DILocation(line: 200, column: 18, scope: !523)
!528 = !DILocation(line: 200, column: 26, scope: !523)
!529 = !DILocation(line: 200, column: 35, scope: !523)
!530 = !DILocation(line: 200, column: 24, scope: !523)
!531 = !DILocation(line: 199, column: 3, scope: !523)
!532 = !DILocation(line: 201, column: 2, scope: !523)
!533 = !DILocation(line: 202, column: 1, scope: !463)
!534 = distinct !DISubprogram(name: "gui_windows_reset_settings", scope: !275, file: !275, line: 204, type: !535, isLocal: false, isDefinition: true, scopeLine: 205, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !283)
!535 = !DISubroutineType(types: !536)
!536 = !{null}
!537 = !DILocalVariable(name: "tmp", scope: !534, file: !275, line: 206, type: !68)
!538 = !DILocation(line: 206, column: 10, scope: !534)
!539 = !DILocalVariable(name: "old_wcwidth_impl", scope: !534, file: !275, line: 207, type: !61)
!540 = !DILocation(line: 207, column: 6, scope: !534)
!541 = !DILocation(line: 207, column: 25, scope: !534)
!542 = !DILocation(line: 209, column: 17, scope: !534)
!543 = !DILocation(line: 209, column: 15, scope: !534)
!544 = !DILocation(line: 211, column: 13, scope: !545)
!545 = distinct !DILexicalBlock(scope: !534, file: !275, line: 211, column: 2)
!546 = !DILocation(line: 211, column: 11, scope: !545)
!547 = !DILocation(line: 211, column: 7, scope: !545)
!548 = !DILocation(line: 211, column: 22, scope: !549)
!549 = !DILexicalBlockFile(scope: !550, file: !275, discriminator: 1)
!550 = distinct !DILexicalBlock(scope: !545, file: !275, line: 211, column: 2)
!551 = !DILocation(line: 211, column: 26, scope: !549)
!552 = !DILocation(line: 211, column: 2, scope: !549)
!553 = !DILocalVariable(name: "rec", scope: !554, file: !275, line: 212, type: !55)
!554 = distinct !DILexicalBlock(scope: !550, file: !275, line: 211, column: 51)
!555 = !DILocation(line: 212, column: 15, scope: !554)
!556 = !DILocation(line: 212, column: 21, scope: !554)
!557 = !DILocation(line: 212, column: 26, scope: !554)
!558 = !DILocalVariable(name: "gui", scope: !554, file: !275, line: 213, type: !43)
!559 = !DILocation(line: 213, column: 19, scope: !554)
!560 = !DILocation(line: 213, column: 47, scope: !554)
!561 = !DILocation(line: 213, column: 53, scope: !554)
!562 = !DILocation(line: 213, column: 26, scope: !554)
!563 = !DILocation(line: 215, column: 7, scope: !564)
!564 = distinct !DILexicalBlock(scope: !554, file: !275, line: 215, column: 7)
!565 = !DILocation(line: 215, column: 27, scope: !564)
!566 = !DILocation(line: 215, column: 24, scope: !564)
!567 = !DILocation(line: 215, column: 7, scope: !554)
!568 = !DILocation(line: 216, column: 32, scope: !569)
!569 = distinct !DILexicalBlock(scope: !564, file: !275, line: 215, column: 41)
!570 = !DILocation(line: 216, column: 37, scope: !569)
!571 = !DILocation(line: 216, column: 4, scope: !569)
!572 = !DILocation(line: 217, column: 3, scope: !569)
!573 = !DILocation(line: 219, column: 34, scope: !554)
!574 = !DILocation(line: 219, column: 39, scope: !554)
!575 = !DILocation(line: 219, column: 45, scope: !554)
!576 = !DILocation(line: 219, column: 3, scope: !577)
!577 = !DILexicalBlockFile(scope: !554, file: !275, discriminator: 1)
!578 = !DILocation(line: 221, column: 38, scope: !554)
!579 = !DILocation(line: 221, column: 43, scope: !554)
!580 = !DILocation(line: 222, column: 10, scope: !554)
!581 = !DILocation(line: 223, column: 11, scope: !554)
!582 = !DILocation(line: 223, column: 10, scope: !554)
!583 = !DILocation(line: 224, column: 10, scope: !554)
!584 = !DILocation(line: 221, column: 3, scope: !554)
!585 = !DILocation(line: 226, column: 30, scope: !554)
!586 = !DILocation(line: 226, column: 35, scope: !554)
!587 = !DILocation(line: 227, column: 9, scope: !554)
!588 = !DILocation(line: 227, column: 14, scope: !554)
!589 = !DILocation(line: 227, column: 27, scope: !577)
!590 = !DILocation(line: 227, column: 32, scope: !577)
!591 = !DILocation(line: 227, column: 9, scope: !577)
!592 = !DILocation(line: 228, column: 9, scope: !554)
!593 = !DILocation(line: 227, column: 9, scope: !594)
!594 = !DILexicalBlockFile(scope: !554, file: !275, discriminator: 2)
!595 = !DILocation(line: 227, column: 9, scope: !596)
!596 = !DILexicalBlockFile(scope: !554, file: !275, discriminator: 3)
!597 = !DILocation(line: 226, column: 3, scope: !577)
!598 = !DILocation(line: 230, column: 7, scope: !599)
!599 = distinct !DILexicalBlock(scope: !554, file: !275, line: 230, column: 7)
!600 = !DILocation(line: 230, column: 27, scope: !599)
!601 = !DILocation(line: 230, column: 24, scope: !599)
!602 = !DILocation(line: 230, column: 7, scope: !554)
!603 = !DILocation(line: 231, column: 27, scope: !604)
!604 = distinct !DILexicalBlock(scope: !599, file: !275, line: 230, column: 41)
!605 = !DILocation(line: 231, column: 32, scope: !604)
!606 = !DILocation(line: 231, column: 4, scope: !604)
!607 = !DILocation(line: 232, column: 3, scope: !604)
!608 = !DILocation(line: 233, column: 2, scope: !554)
!609 = !DILocation(line: 211, column: 40, scope: !610)
!610 = !DILexicalBlockFile(scope: !550, file: !275, discriminator: 2)
!611 = !DILocation(line: 211, column: 45, scope: !610)
!612 = !DILocation(line: 211, column: 38, scope: !610)
!613 = !DILocation(line: 211, column: 2, scope: !610)
!614 = distinct !{!614, !615}
!615 = !DILocation(line: 211, column: 2, scope: !534)
!616 = !DILocation(line: 234, column: 1, scope: !534)
!617 = distinct !DISubprogram(name: "gui_windows_init", scope: !275, file: !275, line: 298, type: !535, isLocal: false, isDefinition: true, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !283)
!618 = !DILocation(line: 300, column: 2, scope: !617)
!619 = !DILocation(line: 301, column: 2, scope: !617)
!620 = !DILocation(line: 302, column: 2, scope: !617)
!621 = !DILocation(line: 303, column: 2, scope: !617)
!622 = !DILocation(line: 304, column: 2, scope: !617)
!623 = !DILocation(line: 305, column: 2, scope: !617)
!624 = !DILocation(line: 307, column: 25, scope: !617)
!625 = !DILocation(line: 309, column: 2, scope: !617)
!626 = !DILocation(line: 310, column: 2, scope: !617)
!627 = !DILocation(line: 311, column: 2, scope: !617)
!628 = !DILocation(line: 312, column: 2, scope: !617)
!629 = !DILocation(line: 313, column: 2, scope: !617)
!630 = !DILocation(line: 314, column: 2, scope: !617)
!631 = !DILocation(line: 315, column: 1, scope: !617)
!632 = distinct !DISubprogram(name: "read_settings", scope: !275, file: !275, line: 293, type: !535, isLocal: true, isDefinition: true, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !283)
!633 = !DILocation(line: 295, column: 9, scope: !632)
!634 = !DILocation(line: 296, column: 1, scope: !632)
!635 = distinct !DISubprogram(name: "sig_window_create_override", scope: !275, file: !275, line: 68, type: !636, isLocal: true, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !283)
!636 = !DISubroutineType(types: !637)
!637 = !{null, !74}
!638 = !DILocalVariable(name: "tab", arg: 1, scope: !635, file: !275, line: 68, type: !74)
!639 = !DILocation(line: 68, column: 49, scope: !635)
!640 = !DILocation(line: 70, column: 44, scope: !635)
!641 = !DILocation(line: 70, column: 35, scope: !635)
!642 = !DILocation(line: 70, column: 28, scope: !635)
!643 = !DILocation(line: 70, column: 25, scope: !635)
!644 = !DILocation(line: 71, column: 1, scope: !635)
!645 = distinct !DISubprogram(name: "gui_window_created", scope: !275, file: !275, line: 73, type: !646, isLocal: true, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !283)
!646 = !DISubroutineType(types: !647)
!647 = !{null, !55, !76}
!648 = !DILocalVariable(name: "window", arg: 1, scope: !645, file: !275, line: 73, type: !55)
!649 = !DILocation(line: 73, column: 44, scope: !645)
!650 = !DILocalVariable(name: "automatic", arg: 2, scope: !645, file: !275, line: 73, type: !76)
!651 = !DILocation(line: 73, column: 58, scope: !645)
!652 = !DILocalVariable(name: "parent", scope: !645, file: !275, line: 75, type: !49)
!653 = !DILocation(line: 75, column: 19, scope: !645)
!654 = !DILocalVariable(name: "new_parent", scope: !645, file: !275, line: 76, type: !61)
!655 = !DILocation(line: 76, column: 13, scope: !645)
!656 = !DILocation(line: 78, column: 2, scope: !645)
!657 = distinct !{!657, !656}
!658 = !DILocation(line: 78, column: 10, scope: !659)
!659 = !DILexicalBlockFile(scope: !660, file: !275, discriminator: 1)
!660 = distinct !DILexicalBlock(scope: !661, file: !275, line: 78, column: 10)
!661 = distinct !DILexicalBlock(scope: !645, file: !275, line: 78, column: 4)
!662 = !DILocation(line: 78, column: 17, scope: !659)
!663 = !DILocation(line: 78, column: 5, scope: !664)
!664 = !DILexicalBlockFile(scope: !665, file: !275, discriminator: 2)
!665 = distinct !DILexicalBlock(scope: !660, file: !275, line: 78, column: 3)
!666 = !DILocation(line: 78, column: 14, scope: !667)
!667 = !DILexicalBlockFile(scope: !668, file: !275, discriminator: 3)
!668 = distinct !DILexicalBlock(scope: !660, file: !275, line: 78, column: 12)
!669 = !DILocation(line: 78, column: 101, scope: !667)
!670 = !DILocation(line: 78, column: 112, scope: !671)
!671 = !DILexicalBlockFile(scope: !661, file: !275, discriminator: 4)
!672 = !DILocation(line: 80, column: 15, scope: !645)
!673 = !DILocation(line: 80, column: 38, scope: !645)
!674 = !DILocation(line: 80, column: 66, scope: !645)
!675 = !DILocation(line: 81, column: 3, scope: !645)
!676 = !DILocation(line: 81, column: 26, scope: !645)
!677 = !DILocation(line: 81, column: 52, scope: !645)
!678 = !DILocation(line: 82, column: 3, scope: !645)
!679 = !DILocation(line: 82, column: 26, scope: !645)
!680 = !DILocation(line: 82, column: 53, scope: !645)
!681 = !DILocation(line: 83, column: 3, scope: !645)
!682 = !DILocation(line: 83, column: 14, scope: !645)
!683 = !DILocation(line: 83, column: 21, scope: !645)
!684 = !DILocation(line: 83, column: 46, scope: !685)
!685 = !DILexicalBlockFile(scope: !645, file: !275, discriminator: 1)
!686 = !DILocation(line: 83, column: 59, scope: !685)
!687 = !DILocation(line: 83, column: 25, scope: !685)
!688 = !DILocation(line: 83, column: 70, scope: !685)
!689 = !DILocation(line: 83, column: 21, scope: !685)
!690 = !DILocation(line: 83, column: 21, scope: !691)
!691 = !DILexicalBlockFile(scope: !645, file: !275, discriminator: 2)
!692 = !DILocation(line: 80, column: 13, scope: !685)
!693 = !DILocation(line: 84, column: 12, scope: !645)
!694 = !DILocation(line: 84, column: 11, scope: !645)
!695 = !DILocation(line: 84, column: 48, scope: !685)
!696 = !DILocation(line: 84, column: 61, scope: !685)
!697 = !DILocation(line: 84, column: 27, scope: !685)
!698 = !DILocation(line: 84, column: 73, scope: !685)
!699 = !DILocation(line: 84, column: 11, scope: !685)
!700 = !DILocation(line: 84, column: 101, scope: !691)
!701 = !DILocation(line: 84, column: 124, scope: !691)
!702 = !DILocation(line: 84, column: 83, scope: !691)
!703 = !DILocation(line: 84, column: 11, scope: !691)
!704 = !DILocation(line: 84, column: 11, scope: !705)
!705 = !DILexicalBlockFile(scope: !645, file: !275, discriminator: 3)
!706 = !DILocation(line: 84, column: 9, scope: !705)
!707 = !DILocation(line: 85, column: 6, scope: !708)
!708 = distinct !DILexicalBlock(scope: !645, file: !275, line: 85, column: 6)
!709 = !DILocation(line: 85, column: 13, scope: !708)
!710 = !DILocation(line: 85, column: 6, scope: !645)
!711 = !DILocation(line: 89, column: 35, scope: !712)
!712 = distinct !DILexicalBlock(scope: !708, file: !275, line: 85, column: 21)
!713 = !DILocation(line: 89, column: 48, scope: !712)
!714 = !DILocation(line: 89, column: 14, scope: !712)
!715 = !DILocation(line: 89, column: 60, scope: !712)
!716 = !DILocation(line: 89, column: 10, scope: !712)
!717 = !DILocation(line: 90, column: 2, scope: !712)
!718 = !DILocation(line: 91, column: 25, scope: !645)
!719 = !DILocation(line: 93, column: 6, scope: !720)
!720 = distinct !DILexicalBlock(scope: !645, file: !275, line: 93, column: 6)
!721 = !DILocation(line: 93, column: 14, scope: !720)
!722 = !DILocation(line: 93, column: 21, scope: !720)
!723 = !DILocation(line: 93, column: 6, scope: !645)
!724 = !DILocation(line: 93, column: 46, scope: !725)
!725 = !DILexicalBlockFile(scope: !720, file: !275, discriminator: 1)
!726 = !DILocation(line: 93, column: 29, scope: !725)
!727 = !DILocation(line: 93, column: 37, scope: !725)
!728 = !DILocation(line: 93, column: 44, scope: !725)
!729 = !DILocation(line: 94, column: 37, scope: !645)
!730 = !DILocation(line: 94, column: 45, scope: !645)
!731 = !DILocation(line: 94, column: 21, scope: !645)
!732 = !DILocation(line: 94, column: 2, scope: !645)
!733 = !DILocation(line: 94, column: 10, scope: !645)
!734 = !DILocation(line: 94, column: 19, scope: !645)
!735 = !DILocation(line: 98, column: 6, scope: !736)
!736 = distinct !DILexicalBlock(scope: !645, file: !275, line: 98, column: 6)
!737 = !DILocation(line: 98, column: 16, scope: !736)
!738 = !DILocation(line: 98, column: 23, scope: !736)
!739 = !DILocation(line: 99, column: 7, scope: !736)
!740 = !DILocation(line: 99, column: 15, scope: !736)
!741 = !DILocation(line: 99, column: 30, scope: !736)
!742 = !DILocation(line: 100, column: 8, scope: !736)
!743 = !DILocation(line: 100, column: 19, scope: !736)
!744 = !DILocation(line: 100, column: 22, scope: !745)
!745 = !DILexicalBlockFile(scope: !736, file: !275, discriminator: 1)
!746 = !DILocation(line: 98, column: 6, scope: !685)
!747 = !DILocation(line: 101, column: 25, scope: !736)
!748 = !DILocation(line: 101, column: 3, scope: !736)
!749 = !DILocation(line: 103, column: 39, scope: !645)
!750 = !DILocation(line: 103, column: 2, scope: !645)
!751 = !DILocation(line: 104, column: 1, scope: !645)
!752 = !DILocation(line: 104, column: 1, scope: !685)
!753 = distinct !DISubprogram(name: "gui_window_destroyed", scope: !275, file: !275, line: 106, type: !418, isLocal: true, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !283)
!754 = !DILocalVariable(name: "window", arg: 1, scope: !753, file: !275, line: 106, type: !55)
!755 = !DILocation(line: 106, column: 46, scope: !753)
!756 = !DILocalVariable(name: "parent", scope: !753, file: !275, line: 108, type: !49)
!757 = !DILocation(line: 108, column: 19, scope: !753)
!758 = !DILocalVariable(name: "gui", scope: !753, file: !275, line: 109, type: !43)
!759 = !DILocation(line: 109, column: 18, scope: !753)
!760 = !DILocation(line: 111, column: 2, scope: !753)
!761 = distinct !{!761, !760}
!762 = !DILocation(line: 111, column: 10, scope: !763)
!763 = !DILexicalBlockFile(scope: !764, file: !275, discriminator: 1)
!764 = distinct !DILexicalBlock(scope: !765, file: !275, line: 111, column: 10)
!765 = distinct !DILexicalBlock(scope: !753, file: !275, line: 111, column: 4)
!766 = !DILocation(line: 111, column: 17, scope: !763)
!767 = !DILocation(line: 111, column: 5, scope: !768)
!768 = !DILexicalBlockFile(scope: !769, file: !275, discriminator: 2)
!769 = distinct !DILexicalBlock(scope: !764, file: !275, line: 111, column: 3)
!770 = !DILocation(line: 111, column: 14, scope: !771)
!771 = !DILexicalBlockFile(scope: !772, file: !275, discriminator: 3)
!772 = distinct !DILexicalBlock(scope: !764, file: !275, line: 111, column: 12)
!773 = !DILocation(line: 111, column: 101, scope: !771)
!774 = !DILocation(line: 111, column: 112, scope: !775)
!775 = !DILexicalBlockFile(scope: !765, file: !275, discriminator: 4)
!776 = !DILocation(line: 113, column: 30, scope: !753)
!777 = !DILocation(line: 113, column: 39, scope: !753)
!778 = !DILocation(line: 113, column: 9, scope: !753)
!779 = !DILocation(line: 113, column: 6, scope: !753)
!780 = !DILocation(line: 114, column: 11, scope: !753)
!781 = !DILocation(line: 114, column: 16, scope: !753)
!782 = !DILocation(line: 114, column: 9, scope: !753)
!783 = !DILocation(line: 116, column: 26, scope: !753)
!784 = !DILocation(line: 116, column: 2, scope: !753)
!785 = !DILocation(line: 118, column: 41, scope: !753)
!786 = !DILocation(line: 118, column: 2, scope: !753)
!787 = !DILocation(line: 120, column: 20, scope: !753)
!788 = !DILocation(line: 120, column: 2, scope: !753)
!789 = !DILocation(line: 121, column: 2, scope: !753)
!790 = !DILocation(line: 121, column: 10, scope: !753)
!791 = !DILocation(line: 121, column: 19, scope: !753)
!792 = !DILocation(line: 123, column: 6, scope: !793)
!793 = distinct !DILexicalBlock(scope: !753, file: !275, line: 123, column: 6)
!794 = !DILocation(line: 123, column: 14, scope: !793)
!795 = !DILocation(line: 123, column: 24, scope: !793)
!796 = !DILocation(line: 123, column: 21, scope: !793)
!797 = !DILocation(line: 123, column: 6, scope: !753)
!798 = !DILocation(line: 124, column: 28, scope: !793)
!799 = !DILocation(line: 124, column: 36, scope: !793)
!800 = !DILocation(line: 124, column: 3, scope: !793)
!801 = !DILocation(line: 125, column: 1, scope: !753)
!802 = distinct !DISubprogram(name: "signal_window_changed", scope: !275, file: !275, line: 251, type: !418, isLocal: true, isDefinition: true, scopeLine: 252, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !283)
!803 = !DILocalVariable(name: "window", arg: 1, scope: !802, file: !275, line: 251, type: !55)
!804 = !DILocation(line: 251, column: 47, scope: !802)
!805 = !DILocalVariable(name: "parent", scope: !802, file: !275, line: 253, type: !49)
!806 = !DILocation(line: 253, column: 19, scope: !802)
!807 = !DILocalVariable(name: "old_window", scope: !802, file: !275, line: 254, type: !55)
!808 = !DILocation(line: 254, column: 21, scope: !802)
!809 = !DILocation(line: 256, column: 2, scope: !802)
!810 = distinct !{!810, !809}
!811 = !DILocation(line: 256, column: 10, scope: !812)
!812 = !DILexicalBlockFile(scope: !813, file: !275, discriminator: 1)
!813 = distinct !DILexicalBlock(scope: !814, file: !275, line: 256, column: 10)
!814 = distinct !DILexicalBlock(scope: !802, file: !275, line: 256, column: 4)
!815 = !DILocation(line: 256, column: 17, scope: !812)
!816 = !DILocation(line: 256, column: 5, scope: !817)
!817 = !DILexicalBlockFile(scope: !818, file: !275, discriminator: 2)
!818 = distinct !DILexicalBlock(scope: !813, file: !275, line: 256, column: 3)
!819 = !DILocation(line: 256, column: 14, scope: !820)
!820 = !DILexicalBlockFile(scope: !821, file: !275, discriminator: 3)
!821 = distinct !DILexicalBlock(scope: !813, file: !275, line: 256, column: 12)
!822 = !DILocation(line: 256, column: 101, scope: !820)
!823 = !DILocation(line: 256, column: 112, scope: !824)
!824 = !DILexicalBlockFile(scope: !814, file: !275, discriminator: 4)
!825 = !DILocation(line: 258, column: 13, scope: !826)
!826 = distinct !DILexicalBlock(scope: !802, file: !275, line: 258, column: 13)
!827 = !DILocation(line: 258, column: 13, scope: !802)
!828 = !DILocation(line: 258, column: 23, scope: !829)
!829 = !DILexicalBlockFile(scope: !826, file: !275, discriminator: 1)
!830 = !DILocation(line: 260, column: 41, scope: !802)
!831 = !DILocation(line: 260, column: 50, scope: !802)
!832 = !DILocation(line: 260, column: 20, scope: !802)
!833 = !DILocation(line: 260, column: 62, scope: !802)
!834 = !DILocation(line: 260, column: 16, scope: !802)
!835 = !DILocation(line: 261, column: 29, scope: !836)
!836 = distinct !DILexicalBlock(scope: !802, file: !275, line: 261, column: 6)
!837 = !DILocation(line: 261, column: 38, scope: !836)
!838 = !DILocation(line: 261, column: 8, scope: !836)
!839 = !DILocation(line: 261, column: 50, scope: !836)
!840 = !DILocation(line: 261, column: 58, scope: !836)
!841 = !DILocation(line: 261, column: 69, scope: !836)
!842 = !DILocation(line: 261, column: 65, scope: !836)
!843 = !DILocation(line: 261, column: 6, scope: !802)
!844 = !DILocation(line: 263, column: 20, scope: !845)
!845 = distinct !DILexicalBlock(scope: !836, file: !275, line: 261, column: 79)
!846 = !DILocation(line: 263, column: 18, scope: !845)
!847 = !DILocation(line: 264, column: 2, scope: !845)
!848 = !DILocation(line: 264, column: 13, scope: !849)
!849 = !DILexicalBlockFile(scope: !850, file: !275, discriminator: 1)
!850 = distinct !DILexicalBlock(scope: !836, file: !275, line: 264, column: 13)
!851 = !DILocation(line: 264, column: 28, scope: !849)
!852 = !DILocation(line: 266, column: 20, scope: !853)
!853 = distinct !DILexicalBlock(scope: !850, file: !275, line: 264, column: 36)
!854 = !DILocation(line: 266, column: 18, scope: !853)
!855 = !DILocation(line: 267, column: 2, scope: !853)
!856 = !DILocation(line: 267, column: 35, scope: !857)
!857 = !DILexicalBlockFile(scope: !858, file: !275, discriminator: 1)
!858 = distinct !DILexicalBlock(scope: !850, file: !275, line: 267, column: 13)
!859 = !DILocation(line: 267, column: 44, scope: !857)
!860 = !DILocation(line: 267, column: 14, scope: !857)
!861 = !DILocation(line: 267, column: 56, scope: !857)
!862 = !DILocation(line: 267, column: 13, scope: !857)
!863 = !DILocation(line: 269, column: 7, scope: !864)
!864 = distinct !DILexicalBlock(scope: !865, file: !275, line: 269, column: 7)
!865 = distinct !DILexicalBlock(scope: !858, file: !275, line: 267, column: 64)
!866 = !DILocation(line: 269, column: 17, scope: !864)
!867 = !DILocation(line: 269, column: 14, scope: !864)
!868 = !DILocation(line: 269, column: 7, scope: !865)
!869 = !DILocation(line: 270, column: 42, scope: !864)
!870 = !DILocation(line: 270, column: 40, scope: !864)
!871 = !DILocation(line: 270, column: 25, scope: !864)
!872 = !DILocation(line: 271, column: 2, scope: !865)
!873 = !DILocation(line: 273, column: 21, scope: !874)
!874 = distinct !DILexicalBlock(scope: !875, file: !275, line: 273, column: 21)
!875 = distinct !DILexicalBlock(scope: !858, file: !275, line: 271, column: 9)
!876 = !DILocation(line: 273, column: 37, scope: !874)
!877 = !DILocation(line: 273, column: 21, scope: !875)
!878 = !DILocation(line: 276, column: 42, scope: !879)
!879 = distinct !DILexicalBlock(scope: !874, file: !275, line: 273, column: 53)
!880 = !DILocation(line: 276, column: 40, scope: !879)
!881 = !DILocation(line: 277, column: 3, scope: !879)
!882 = !DILocation(line: 278, column: 23, scope: !875)
!883 = !DILocation(line: 278, column: 31, scope: !875)
!884 = !DILocation(line: 278, column: 3, scope: !875)
!885 = !DILocation(line: 281, column: 15, scope: !802)
!886 = !DILocation(line: 281, column: 31, scope: !802)
!887 = !DILocation(line: 281, column: 13, scope: !802)
!888 = !DILocation(line: 282, column: 6, scope: !889)
!889 = distinct !DILexicalBlock(scope: !802, file: !275, line: 282, column: 6)
!890 = !DILocation(line: 282, column: 17, scope: !889)
!891 = !DILocation(line: 282, column: 24, scope: !889)
!892 = !DILocation(line: 282, column: 27, scope: !893)
!893 = !DILexicalBlockFile(scope: !889, file: !275, discriminator: 1)
!894 = !DILocation(line: 282, column: 41, scope: !893)
!895 = !DILocation(line: 282, column: 38, scope: !893)
!896 = !DILocation(line: 282, column: 6, scope: !893)
!897 = !DILocation(line: 283, column: 52, scope: !889)
!898 = !DILocation(line: 283, column: 65, scope: !889)
!899 = !DILocation(line: 283, column: 31, scope: !889)
!900 = !DILocation(line: 283, column: 77, scope: !889)
!901 = !DILocation(line: 283, column: 3, scope: !889)
!902 = !DILocation(line: 285, column: 27, scope: !802)
!903 = !DILocation(line: 285, column: 2, scope: !802)
!904 = !DILocation(line: 285, column: 18, scope: !802)
!905 = !DILocation(line: 285, column: 25, scope: !802)
!906 = !DILocation(line: 287, column: 51, scope: !802)
!907 = !DILocation(line: 287, column: 60, scope: !802)
!908 = !DILocation(line: 287, column: 30, scope: !802)
!909 = !DILocation(line: 287, column: 72, scope: !802)
!910 = !DILocation(line: 288, column: 8, scope: !802)
!911 = !DILocation(line: 288, column: 24, scope: !802)
!912 = !DILocation(line: 287, column: 2, scope: !802)
!913 = !DILocation(line: 289, column: 28, scope: !914)
!914 = distinct !DILexicalBlock(scope: !802, file: !275, line: 289, column: 6)
!915 = !DILocation(line: 289, column: 37, scope: !914)
!916 = !DILocation(line: 289, column: 7, scope: !914)
!917 = !DILocation(line: 289, column: 49, scope: !914)
!918 = !DILocation(line: 289, column: 55, scope: !914)
!919 = !DILocation(line: 289, column: 6, scope: !914)
!920 = !DILocation(line: 289, column: 6, scope: !802)
!921 = !DILocation(line: 290, column: 3, scope: !914)
!922 = !DILocation(line: 290, column: 19, scope: !914)
!923 = !DILocation(line: 290, column: 25, scope: !914)
!924 = !DILocation(line: 291, column: 1, scope: !802)
!925 = distinct !DISubprogram(name: "gui_windows_deinit", scope: !275, file: !275, line: 317, type: !535, isLocal: false, isDefinition: true, scopeLine: 318, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !283)
!926 = !DILocation(line: 319, column: 2, scope: !925)
!927 = !DILocation(line: 319, column: 9, scope: !928)
!928 = !DILexicalBlockFile(scope: !925, file: !275, discriminator: 1)
!929 = !DILocation(line: 319, column: 17, scope: !928)
!930 = !DILocation(line: 319, column: 2, scope: !928)
!931 = !DILocation(line: 320, column: 18, scope: !925)
!932 = !DILocation(line: 320, column: 27, scope: !925)
!933 = !DILocation(line: 320, column: 3, scope: !925)
!934 = !DILocation(line: 319, column: 2, scope: !935)
!935 = !DILexicalBlockFile(scope: !925, file: !275, discriminator: 2)
!936 = distinct !{!936, !926}
!937 = !DILocation(line: 322, column: 2, scope: !925)
!938 = !DILocation(line: 323, column: 2, scope: !925)
!939 = !DILocation(line: 324, column: 2, scope: !925)
!940 = !DILocation(line: 325, column: 2, scope: !925)
!941 = !DILocation(line: 326, column: 2, scope: !925)
!942 = !DILocation(line: 327, column: 1, scope: !925)
!943 = distinct !DISubprogram(name: "gui_window_init", scope: !275, file: !275, line: 36, type: !944, isLocal: true, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !283)
!944 = !DISubroutineType(types: !945)
!945 = !{!43, !55, !49}
!946 = !DILocalVariable(name: "window", arg: 1, scope: !943, file: !275, line: 36, type: !55)
!947 = !DILocation(line: 36, column: 52, scope: !943)
!948 = !DILocalVariable(name: "parent", arg: 2, scope: !943, file: !275, line: 37, type: !49)
!949 = !DILocation(line: 37, column: 29, scope: !943)
!950 = !DILocalVariable(name: "gui", scope: !943, file: !275, line: 39, type: !43)
!951 = !DILocation(line: 39, column: 18, scope: !943)
!952 = !DILocation(line: 41, column: 18, scope: !943)
!953 = !DILocation(line: 41, column: 26, scope: !943)
!954 = !DILocation(line: 41, column: 2, scope: !943)
!955 = !DILocation(line: 41, column: 10, scope: !943)
!956 = !DILocation(line: 41, column: 16, scope: !943)
!957 = !DILocation(line: 42, column: 28, scope: !943)
!958 = !DILocation(line: 42, column: 37, scope: !943)
!959 = !DILocation(line: 42, column: 45, scope: !943)
!960 = !DILocation(line: 42, column: 54, scope: !943)
!961 = !DILocation(line: 42, column: 43, scope: !943)
!962 = !DILocation(line: 42, column: 9, scope: !943)
!963 = !DILocation(line: 42, column: 17, scope: !943)
!964 = !DILocation(line: 42, column: 24, scope: !943)
!965 = !DILocation(line: 44, column: 28, scope: !943)
!966 = !DILocation(line: 44, column: 9, scope: !943)
!967 = !DILocation(line: 44, column: 6, scope: !943)
!968 = !DILocation(line: 45, column: 16, scope: !943)
!969 = !DILocation(line: 45, column: 2, scope: !943)
!970 = !DILocation(line: 45, column: 7, scope: !943)
!971 = !DILocation(line: 45, column: 14, scope: !943)
!972 = !DILocation(line: 46, column: 37, scope: !943)
!973 = !DILocation(line: 47, column: 9, scope: !943)
!974 = !DILocation(line: 47, column: 17, scope: !943)
!975 = !DILocation(line: 47, column: 24, scope: !943)
!976 = !DILocation(line: 47, column: 32, scope: !943)
!977 = !DILocation(line: 48, column: 9, scope: !943)
!978 = !DILocation(line: 49, column: 9, scope: !943)
!979 = !DILocation(line: 49, column: 19, scope: !943)
!980 = !DILocation(line: 46, column: 14, scope: !981)
!981 = !DILexicalBlockFile(scope: !943, file: !275, discriminator: 1)
!982 = !DILocation(line: 46, column: 2, scope: !943)
!983 = !DILocation(line: 46, column: 7, scope: !943)
!984 = !DILocation(line: 46, column: 12, scope: !943)
!985 = !DILocation(line: 50, column: 37, scope: !943)
!986 = !DILocation(line: 50, column: 42, scope: !943)
!987 = !DILocation(line: 51, column: 9, scope: !943)
!988 = !DILocation(line: 52, column: 10, scope: !943)
!989 = !DILocation(line: 52, column: 9, scope: !943)
!990 = !DILocation(line: 53, column: 9, scope: !943)
!991 = !DILocation(line: 50, column: 2, scope: !943)
!992 = !DILocation(line: 54, column: 33, scope: !943)
!993 = !DILocation(line: 54, column: 38, scope: !943)
!994 = !DILocation(line: 54, column: 44, scope: !943)
!995 = !DILocation(line: 54, column: 2, scope: !981)
!996 = !DILocation(line: 55, column: 17, scope: !943)
!997 = !DILocation(line: 55, column: 15, scope: !943)
!998 = !DILocation(line: 56, column: 35, scope: !943)
!999 = !DILocation(line: 56, column: 40, scope: !943)
!1000 = !DILocation(line: 56, column: 2, scope: !943)
!1001 = !DILocation(line: 57, column: 6, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !943, file: !275, line: 57, column: 6)
!1003 = !DILocation(line: 57, column: 14, scope: !1002)
!1004 = !DILocation(line: 57, column: 24, scope: !1002)
!1005 = !DILocation(line: 57, column: 21, scope: !1002)
!1006 = !DILocation(line: 57, column: 6, scope: !943)
!1007 = !DILocation(line: 58, column: 30, scope: !1002)
!1008 = !DILocation(line: 58, column: 35, scope: !1002)
!1009 = !DILocation(line: 58, column: 41, scope: !1002)
!1010 = !DILocation(line: 58, column: 49, scope: !1002)
!1011 = !DILocation(line: 58, column: 3, scope: !1002)
!1012 = !DILocation(line: 59, column: 9, scope: !943)
!1013 = !DILocation(line: 59, column: 2, scope: !943)
!1014 = distinct !DISubprogram(name: "gui_window_deinit", scope: !275, file: !275, line: 62, type: !1015, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !283)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{null, !43}
!1017 = !DILocalVariable(name: "gui", arg: 1, scope: !1014, file: !275, line: 62, type: !43)
!1018 = !DILocation(line: 62, column: 47, scope: !1014)
!1019 = !DILocation(line: 64, column: 33, scope: !1014)
!1020 = !DILocation(line: 64, column: 38, scope: !1014)
!1021 = !DILocation(line: 64, column: 9, scope: !1014)
!1022 = !DILocation(line: 65, column: 9, scope: !1014)
!1023 = !DILocation(line: 65, column: 2, scope: !1014)
!1024 = !DILocation(line: 66, column: 1, scope: !1014)
!1025 = distinct !DISubprogram(name: "mainwindow_find_unsticky", scope: !275, file: !275, line: 236, type: !1026, isLocal: true, isDefinition: true, scopeLine: 237, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !283)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!49}
!1028 = !DILocalVariable(name: "tmp", scope: !1025, file: !275, line: 238, type: !68)
!1029 = !DILocation(line: 238, column: 10, scope: !1025)
!1030 = !DILocation(line: 240, column: 13, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1025, file: !275, line: 240, column: 2)
!1032 = !DILocation(line: 240, column: 11, scope: !1031)
!1033 = !DILocation(line: 240, column: 7, scope: !1031)
!1034 = !DILocation(line: 240, column: 26, scope: !1035)
!1035 = !DILexicalBlockFile(scope: !1036, file: !275, discriminator: 1)
!1036 = distinct !DILexicalBlock(scope: !1031, file: !275, line: 240, column: 2)
!1037 = !DILocation(line: 240, column: 30, scope: !1035)
!1038 = !DILocation(line: 240, column: 2, scope: !1035)
!1039 = !DILocalVariable(name: "rec", scope: !1040, file: !275, line: 241, type: !49)
!1040 = distinct !DILexicalBlock(scope: !1036, file: !275, line: 240, column: 55)
!1041 = !DILocation(line: 241, column: 20, scope: !1040)
!1042 = !DILocation(line: 241, column: 26, scope: !1040)
!1043 = !DILocation(line: 241, column: 31, scope: !1040)
!1044 = !DILocation(line: 243, column: 8, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1040, file: !275, line: 243, column: 7)
!1046 = !DILocation(line: 243, column: 13, scope: !1045)
!1047 = !DILocation(line: 243, column: 7, scope: !1040)
!1048 = !DILocation(line: 244, column: 32, scope: !1045)
!1049 = !DILocation(line: 244, column: 25, scope: !1045)
!1050 = !DILocation(line: 245, column: 2, scope: !1040)
!1051 = !DILocation(line: 240, column: 44, scope: !1052)
!1052 = !DILexicalBlockFile(scope: !1036, file: !275, discriminator: 2)
!1053 = !DILocation(line: 240, column: 49, scope: !1052)
!1054 = !DILocation(line: 240, column: 42, scope: !1052)
!1055 = !DILocation(line: 240, column: 2, scope: !1052)
!1056 = distinct !{!1056, !1057}
!1057 = !DILocation(line: 240, column: 2, scope: !1025)
!1058 = !DILocation(line: 248, column: 16, scope: !1025)
!1059 = !DILocation(line: 248, column: 9, scope: !1025)
!1060 = !DILocation(line: 249, column: 1, scope: !1025)
