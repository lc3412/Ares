; ModuleID = './line360-mainwindows-layout.o.i'
source_filename = "./line360-mainwindows-layout.o.i"
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
%struct.MAIN_WINDOW_REC = type { %struct._WINDOW_REC*, %struct._TERM_WINDOW*, i32, i32, i32, i32, i32, i32, i32, %struct._GSList*, i32, i32, i32, i32, i32, i32, i8 }
%struct._WINDOW_REC = type { i32, i8*, i32, i32, %struct._GSList*, %struct._WI_ITEM_REC*, %struct._SERVER_REC*, %struct._SERVER_REC*, i8*, i32, %struct._GSList*, i8, %struct.HISTORY_REC*, i8*, i32, i8*, i64, i64, i8*, i8*, i8* }
%struct._WI_ITEM_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)* }
%struct._SERVER_REC = type opaque
%struct.HISTORY_REC = type { i8*, %struct._GList*, i32, i32, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._TERM_WINDOW = type opaque
%struct.GUI_WINDOW_REC = type { %struct.MAIN_WINDOW_REC*, %struct._TEXT_BUFFER_VIEW_REC*, i8, %struct._LINE_REC*, i64 }
%struct._TEXT_BUFFER_VIEW_REC = type { %struct.TEXT_BUFFER_REC*, %struct._GSList*, %struct._TERM_WINDOW*, i32, i32, i32, i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)*, %struct.TEXT_BUFFER_CACHE_REC*, i32, %struct._LINE_REC*, i32, %struct._LINE_REC*, i32, %struct._GHashTable*, i32, i32, i8 }
%struct.TEXT_BUFFER_REC = type { %struct._GSList*, %struct._LINE_REC*, i32, %struct._LINE_REC*, %struct.TEXT_CHUNK_REC*, i32, i32, i32, i8 }
%struct.TEXT_CHUNK_REC = type { [16368 x i8], i32, i32 }
%struct.TEXT_BUFFER_CACHE_REC = type { i32, i32, %struct._GHashTable*, i8, i32 }
%struct._LINE_REC = type { %struct._LINE_REC*, %struct._LINE_REC*, i8*, %struct.LINE_INFO_REC }
%struct.LINE_INFO_REC = type { i32, i64 }

@.str = private unnamed_addr constant [8 x i8] c"fe-text\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"layout save window\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"layout restore window\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"layout save\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"layout restore\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"layout reset\00", align 1
@mainconfig = external global %struct._CONFIG_REC*, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"sticky\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"parent\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"hidelevel\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"scroll\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"HIDDEN\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"mainwindows\00", align 1
@mainwindows = external global %struct._GSList*, align 8
@.str.12 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"first_line\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"lines\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"first_column\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"columns\00", align 1
@term_height = external global i32, align 4
@screen_reserved_top = external global i32, align 4
@screen_reserved_bottom = external global i32, align 4
@term_width = external global i32, align 4
@.str.17 = private unnamed_addr constant [27 x i8] c"gui window create override\00", align 1
@active_mainwin = external global %struct.MAIN_WINDOW_REC*, align 8

; Function Attrs: nounwind uwtable
define void @mainwindows_layout_init() #0 !dbg !292 {
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*, %struct._CONFIG_NODE*)* @sig_layout_window_save to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !297
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*, %struct._CONFIG_NODE*)* @sig_layout_window_restore to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !298
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_layout_save to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !299
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_layout_restore to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !300
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_layout_reset to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !301
  ret void, !dbg !302
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @sig_layout_window_save(%struct._WINDOW_REC*, %struct._CONFIG_NODE*) #0 !dbg !303 {
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca %struct._CONFIG_NODE*, align 8
  %5 = alloca %struct._WINDOW_REC*, align 8
  %6 = alloca %struct.GUI_WINDOW_REC*, align 8
  %7 = alloca i8*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !313, metadata !314), !dbg !315
  store %struct._CONFIG_NODE* %1, %struct._CONFIG_NODE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %4, metadata !316, metadata !314), !dbg !317
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %5, metadata !318, metadata !314), !dbg !319
  call void @llvm.dbg.declare(metadata %struct.GUI_WINDOW_REC** %6, metadata !320, metadata !314), !dbg !321
  %8 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !322
  %9 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %8, i32 0, i32 20, !dbg !323
  %10 = load i8*, i8** %9, align 8, !dbg !323
  %11 = bitcast i8* %10 to %struct.GUI_WINDOW_REC*, !dbg !324
  store %struct.GUI_WINDOW_REC* %11, %struct.GUI_WINDOW_REC** %6, align 8, !dbg !325
  %12 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %6, align 8, !dbg !326
  %13 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %12, i32 0, i32 2, !dbg !328
  %14 = load i8, i8* %13, align 8, !dbg !328
  %15 = lshr i8 %14, 2, !dbg !328
  %16 = and i8 %15, 1, !dbg !328
  %17 = zext i8 %16 to i32, !dbg !328
  %18 = icmp ne i32 %17, 0, !dbg !326
  br i1 %18, label %19, label %37, !dbg !329

; <label>:19:                                     ; preds = %2
  %20 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !330
  %21 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !332
  call void @config_node_set_bool(%struct._CONFIG_REC* %20, %struct._CONFIG_NODE* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 1), !dbg !333
  %22 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %6, align 8, !dbg !334
  %23 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %22, i32 0, i32 0, !dbg !335
  %24 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %23, align 8, !dbg !335
  %25 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %24, i32 0, i32 0, !dbg !336
  %26 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %25, align 8, !dbg !336
  store %struct._WINDOW_REC* %26, %struct._WINDOW_REC** %5, align 8, !dbg !337
  %27 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !338
  %28 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !340
  %29 = icmp ne %struct._WINDOW_REC* %27, %28, !dbg !341
  br i1 %29, label %30, label %36, !dbg !342

; <label>:30:                                     ; preds = %19
  %31 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !343
  %32 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !344
  %33 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !345
  %34 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %33, i32 0, i32 0, !dbg !346
  %35 = load i32, i32* %34, align 8, !dbg !346
  call void @config_node_set_int(%struct._CONFIG_REC* %31, %struct._CONFIG_NODE* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 %35), !dbg !347
  br label %36, !dbg !347

; <label>:36:                                     ; preds = %30, %19
  br label %37, !dbg !348

; <label>:37:                                     ; preds = %36, %2
  %38 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %6, align 8, !dbg !349
  %39 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %38, i32 0, i32 1, !dbg !351
  %40 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %39, align 8, !dbg !351
  %41 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %40, i32 0, i32 14, !dbg !352
  %42 = load i32, i32* %41, align 8, !dbg !352
  %43 = icmp ne i32 %42, 268435456, !dbg !353
  br i1 %43, label %44, label %55, !dbg !354

; <label>:44:                                     ; preds = %37
  call void @llvm.dbg.declare(metadata i8** %7, metadata !355, metadata !314), !dbg !357
  %45 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %6, align 8, !dbg !358
  %46 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %45, i32 0, i32 1, !dbg !359
  %47 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %46, align 8, !dbg !359
  %48 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %47, i32 0, i32 14, !dbg !360
  %49 = load i32, i32* %48, align 8, !dbg !360
  %50 = call i8* @bits2level(i32 %49), !dbg !361
  store i8* %50, i8** %7, align 8, !dbg !357
  %51 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !362
  %52 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !363
  %53 = load i8*, i8** %7, align 8, !dbg !364
  call void @config_node_set_str(%struct._CONFIG_REC* %51, %struct._CONFIG_NODE* %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* %53), !dbg !365
  %54 = load i8*, i8** %7, align 8, !dbg !366
  call void @g_free(i8* %54), !dbg !367
  br label %55, !dbg !368

; <label>:55:                                     ; preds = %44, %37
  %56 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %6, align 8, !dbg !369
  %57 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %56, i32 0, i32 2, !dbg !371
  %58 = load i8, i8* %57, align 8, !dbg !371
  %59 = lshr i8 %58, 1, !dbg !371
  %60 = and i8 %59, 1, !dbg !371
  %61 = zext i8 %60 to i32, !dbg !371
  %62 = icmp ne i32 %61, 0, !dbg !369
  br i1 %62, label %63, label %71, !dbg !372

; <label>:63:                                     ; preds = %55
  %64 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !373
  %65 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !374
  %66 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %6, align 8, !dbg !375
  %67 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %66, i32 0, i32 2, !dbg !376
  %68 = load i8, i8* %67, align 8, !dbg !376
  %69 = and i8 %68, 1, !dbg !376
  %70 = zext i8 %69 to i32, !dbg !376
  call void @config_node_set_bool(%struct._CONFIG_REC* %64, %struct._CONFIG_NODE* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i32 %70), !dbg !377
  br label %71, !dbg !377

; <label>:71:                                     ; preds = %63, %55
  ret void, !dbg !378
}

; Function Attrs: nounwind uwtable
define internal void @sig_layout_window_restore(%struct._WINDOW_REC*, %struct._CONFIG_NODE*) #0 !dbg !379 {
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca %struct._CONFIG_NODE*, align 8
  %5 = alloca %struct._WINDOW_REC*, align 8
  %6 = alloca %struct.GUI_WINDOW_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !380, metadata !314), !dbg !381
  store %struct._CONFIG_NODE* %1, %struct._CONFIG_NODE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %4, metadata !382, metadata !314), !dbg !383
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %5, metadata !384, metadata !314), !dbg !385
  call void @llvm.dbg.declare(metadata %struct.GUI_WINDOW_REC** %6, metadata !386, metadata !314), !dbg !387
  %7 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !388
  %8 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %7, i32 0, i32 20, !dbg !389
  %9 = load i8*, i8** %8, align 8, !dbg !389
  %10 = bitcast i8* %9 to %struct.GUI_WINDOW_REC*, !dbg !390
  store %struct.GUI_WINDOW_REC* %10, %struct.GUI_WINDOW_REC** %6, align 8, !dbg !391
  %11 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !392
  %12 = call i32 @config_node_get_int(%struct._CONFIG_NODE* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 -1), !dbg !393
  %13 = call %struct._WINDOW_REC* @window_find_refnum(i32 %12), !dbg !394
  store %struct._WINDOW_REC* %13, %struct._WINDOW_REC** %5, align 8, !dbg !396
  %14 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !397
  %15 = icmp ne %struct._WINDOW_REC* %14, null, !dbg !399
  br i1 %15, label %16, label %24, !dbg !400

; <label>:16:                                     ; preds = %2
  %17 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !401
  %18 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !402
  %19 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %18, i32 0, i32 20, !dbg !403
  %20 = load i8*, i8** %19, align 8, !dbg !403
  %21 = bitcast i8* %20 to %struct.GUI_WINDOW_REC*, !dbg !404
  %22 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %21, i32 0, i32 0, !dbg !405
  %23 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %22, align 8, !dbg !405
  call void @gui_window_reparent(%struct._WINDOW_REC* %17, %struct.MAIN_WINDOW_REC* %23), !dbg !406
  br label %24, !dbg !406

; <label>:24:                                     ; preds = %16, %2
  %25 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !407
  %26 = call i32 @config_node_get_bool(%struct._CONFIG_NODE* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 0), !dbg !409
  %27 = icmp ne i32 %26, 0, !dbg !409
  br i1 %27, label %28, label %30, !dbg !410

; <label>:28:                                     ; preds = %24
  %29 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !411
  call void @gui_window_set_sticky(%struct._WINDOW_REC* %29), !dbg !412
  br label %30, !dbg !412

; <label>:30:                                     ; preds = %28, %24
  %31 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %6, align 8, !dbg !413
  %32 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %31, i32 0, i32 1, !dbg !414
  %33 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %32, align 8, !dbg !414
  %34 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !415
  %35 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !416
  %36 = call i32 @level2bits(i8* %35, i32* null), !dbg !417
  call void @textbuffer_view_set_hidden_level(%struct._TEXT_BUFFER_VIEW_REC* %33, i32 %36), !dbg !418
  %37 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !420
  %38 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* null), !dbg !422
  %39 = icmp ne i8* %38, null, !dbg !423
  br i1 %39, label %40, label %64, !dbg !424

; <label>:40:                                     ; preds = %30
  %41 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %6, align 8, !dbg !425
  %42 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %41, i32 0, i32 2, !dbg !427
  %43 = load i8, i8* %42, align 8, !dbg !428
  %44 = and i8 %43, -3, !dbg !428
  %45 = or i8 %44, 2, !dbg !428
  store i8 %45, i8* %42, align 8, !dbg !428
  %46 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !429
  %47 = call i32 @config_node_get_bool(%struct._CONFIG_NODE* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i32 1), !dbg !430
  %48 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %6, align 8, !dbg !431
  %49 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %48, i32 0, i32 2, !dbg !432
  %50 = trunc i32 %47 to i8, !dbg !433
  %51 = load i8, i8* %49, align 8, !dbg !433
  %52 = and i8 %50, 1, !dbg !433
  %53 = and i8 %51, -2, !dbg !433
  %54 = or i8 %53, %52, !dbg !433
  store i8 %54, i8* %49, align 8, !dbg !433
  %55 = zext i8 %52 to i32, !dbg !433
  %56 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %6, align 8, !dbg !434
  %57 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %56, i32 0, i32 1, !dbg !435
  %58 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %57, align 8, !dbg !435
  %59 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %6, align 8, !dbg !436
  %60 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %59, i32 0, i32 2, !dbg !437
  %61 = load i8, i8* %60, align 8, !dbg !437
  %62 = and i8 %61, 1, !dbg !437
  %63 = zext i8 %62 to i32, !dbg !437
  call void @textbuffer_view_set_scroll(%struct._TEXT_BUFFER_VIEW_REC* %58, i32 %63), !dbg !438
  br label %64, !dbg !439

; <label>:64:                                     ; preds = %40, %30
  ret void, !dbg !440
}

; Function Attrs: nounwind uwtable
define internal void @sig_layout_save() #0 !dbg !441 {
  %1 = alloca %struct._CONFIG_NODE*, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %1, metadata !442, metadata !314), !dbg !443
  %2 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !444
  %3 = call i32 @config_set_str(%struct._CONFIG_REC* %2, i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i8* null), !dbg !445
  %4 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !446
  %5 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i32 1), !dbg !447
  store %struct._CONFIG_NODE* %5, %struct._CONFIG_NODE** %1, align 8, !dbg !448
  %6 = load %struct._GSList*, %struct._GSList** @mainwindows, align 8, !dbg !449
  %7 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %1, align 8, !dbg !450
  %8 = bitcast %struct._CONFIG_NODE* %7 to i8*, !dbg !450
  call void @g_slist_foreach(%struct._GSList* %6, void (i8*, i8*)* bitcast (void (%struct.MAIN_WINDOW_REC*, %struct._CONFIG_NODE*)* @main_window_save to void (i8*, i8*)*), i8* %8), !dbg !451
  ret void, !dbg !452
}

; Function Attrs: nounwind uwtable
define internal void @sig_layout_restore() #0 !dbg !453 {
  %1 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %2 = alloca %struct._WINDOW_REC*, align 8
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca %struct._CONFIG_NODE*, align 8
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca %struct._GSList*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct._CONFIG_NODE*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct._GSList*, align 8
  %21 = alloca %struct._GSList*, align 8
  %22 = alloca %struct._GSList*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct._CONFIG_NODE*, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct._WINDOW_REC*, align 8
  %29 = alloca %struct._CONFIG_NODE*, align 8
  %30 = alloca i32, align 4
  %31 = alloca %struct.MAIN_WINDOW_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %1, metadata !454, metadata !314), !dbg !455
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %2, metadata !456, metadata !314), !dbg !457
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !458, metadata !314), !dbg !459
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %4, metadata !460, metadata !314), !dbg !461
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !462, metadata !314), !dbg !463
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !464, metadata !314), !dbg !465
  call void @llvm.dbg.declare(metadata %struct._GSList** %7, metadata !466, metadata !314), !dbg !467
  call void @llvm.dbg.declare(metadata i32* %8, metadata !468, metadata !314), !dbg !469
  call void @llvm.dbg.declare(metadata i32* %9, metadata !470, metadata !314), !dbg !471
  call void @llvm.dbg.declare(metadata i32** %10, metadata !472, metadata !314), !dbg !473
  call void @llvm.dbg.declare(metadata i32** %11, metadata !474, metadata !314), !dbg !475
  call void @llvm.dbg.declare(metadata i32* %12, metadata !476, metadata !314), !dbg !477
  call void @llvm.dbg.declare(metadata i32* %13, metadata !478, metadata !314), !dbg !479
  call void @llvm.dbg.declare(metadata i32* %14, metadata !480, metadata !314), !dbg !481
  call void @llvm.dbg.declare(metadata i32* %15, metadata !482, metadata !314), !dbg !483
  call void @llvm.dbg.declare(metadata i32* %16, metadata !484, metadata !314), !dbg !485
  call void @llvm.dbg.declare(metadata i32* %17, metadata !486, metadata !314), !dbg !487
  %32 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !488
  %33 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i32 0), !dbg !489
  store %struct._CONFIG_NODE* %33, %struct._CONFIG_NODE** %4, align 8, !dbg !490
  %34 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !491
  %35 = icmp eq %struct._CONFIG_NODE* %34, null, !dbg !493
  br i1 %35, label %36, label %37, !dbg !494

; <label>:36:                                     ; preds = %0
  br label %409, !dbg !495

; <label>:37:                                     ; preds = %0
  %38 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !497
  %39 = call %struct._GSList* @get_sorted_windows_config(%struct._CONFIG_NODE* %38), !dbg !498
  store %struct._GSList* %39, %struct._GSList** %6, align 8, !dbg !499
  %40 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !500
  %41 = icmp eq %struct._GSList* %40, null, !dbg !502
  br i1 %41, label %42, label %43, !dbg !503

; <label>:42:                                     ; preds = %37
  br label %409, !dbg !504

; <label>:43:                                     ; preds = %37
  %44 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !506
  %45 = call %struct._GSList* @get_windows_config_filter_line(%struct._GSList* %44), !dbg !507
  store %struct._GSList* %45, %struct._GSList** %7, align 8, !dbg !508
  %46 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !509
  %47 = call i32 @g_slist_length(%struct._GSList* %46), !dbg !510
  store i32 %47, i32* %15, align 4, !dbg !511
  %48 = load i32, i32* @term_height, align 4, !dbg !512
  %49 = load i32, i32* @screen_reserved_top, align 4, !dbg !513
  %50 = sub nsw i32 %48, %49, !dbg !514
  %51 = load i32, i32* @screen_reserved_bottom, align 4, !dbg !515
  %52 = sub nsw i32 %50, %51, !dbg !516
  store i32 %52, i32* %8, align 4, !dbg !517
  store i32 0, i32* %9, align 4, !dbg !518
  %53 = load i32, i32* %15, align 4, !dbg !519
  %54 = sext i32 %53 to i64, !dbg !520
  %55 = call noalias i8* @g_malloc0_n(i64 %54, i64 4), !dbg !521
  %56 = bitcast i8* %55 to i32*, !dbg !522
  store i32* %56, i32** %10, align 8, !dbg !523
  store i32 0, i32* %13, align 4, !dbg !524
  %57 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !526
  store %struct._GSList* %57, %struct._GSList** %5, align 8, !dbg !527
  br label %58, !dbg !528

; <label>:58:                                     ; preds = %79, %43
  %59 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !529
  %60 = icmp ne %struct._GSList* %59, null, !dbg !532
  br i1 %60, label %61, label %85, !dbg !533

; <label>:61:                                     ; preds = %58
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %18, metadata !534, metadata !314), !dbg !536
  %62 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !537
  %63 = getelementptr inbounds %struct._GSList, %struct._GSList* %62, i32 0, i32 0, !dbg !538
  %64 = load i8*, i8** %63, align 8, !dbg !538
  %65 = bitcast i8* %64 to %struct._CONFIG_NODE*, !dbg !537
  store %struct._CONFIG_NODE* %65, %struct._CONFIG_NODE** %18, align 8, !dbg !536
  %66 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %18, align 8, !dbg !539
  %67 = call i32 @config_node_get_int(%struct._CONFIG_NODE* %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 0), !dbg !540
  %68 = load i32, i32* %13, align 4, !dbg !541
  %69 = sext i32 %68 to i64, !dbg !542
  %70 = load i32*, i32** %10, align 8, !dbg !542
  %71 = getelementptr inbounds i32, i32* %70, i64 %69, !dbg !542
  store i32 %67, i32* %71, align 4, !dbg !543
  %72 = load i32, i32* %13, align 4, !dbg !544
  %73 = sext i32 %72 to i64, !dbg !545
  %74 = load i32*, i32** %10, align 8, !dbg !545
  %75 = getelementptr inbounds i32, i32* %74, i64 %73, !dbg !545
  %76 = load i32, i32* %75, align 4, !dbg !545
  %77 = load i32, i32* %9, align 4, !dbg !546
  %78 = add nsw i32 %77, %76, !dbg !546
  store i32 %78, i32* %9, align 4, !dbg !546
  br label %79, !dbg !547

; <label>:79:                                     ; preds = %61
  %80 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !548
  %81 = getelementptr inbounds %struct._GSList, %struct._GSList* %80, i32 0, i32 1, !dbg !550
  %82 = load %struct._GSList*, %struct._GSList** %81, align 8, !dbg !550
  store %struct._GSList* %82, %struct._GSList** %5, align 8, !dbg !551
  %83 = load i32, i32* %13, align 4, !dbg !552
  %84 = add nsw i32 %83, 1, !dbg !552
  store i32 %84, i32* %13, align 4, !dbg !552
  br label %58, !dbg !553, !llvm.loop !554

; <label>:85:                                     ; preds = %58
  %86 = load i32, i32* @term_width, align 4, !dbg !556
  %87 = add nsw i32 %86, 1, !dbg !557
  %88 = sdiv i32 %87, 11, !dbg !558
  store i32 %88, i32* %12, align 4, !dbg !559
  %89 = load i32, i32* %12, align 4, !dbg !560
  %90 = icmp slt i32 %89, 1, !dbg !562
  br i1 %90, label %91, label %92, !dbg !563

; <label>:91:                                     ; preds = %85
  store i32 1, i32* %12, align 4, !dbg !564
  br label %92, !dbg !565

; <label>:92:                                     ; preds = %91, %85
  %93 = load i32, i32* %8, align 4, !dbg !566
  %94 = icmp sle i32 %93, 5, !dbg !568
  br i1 %94, label %95, label %99, !dbg !569

; <label>:95:                                     ; preds = %92
  store i32 1, i32* %15, align 4, !dbg !570
  %96 = load i32, i32* %8, align 4, !dbg !572
  %97 = load i32*, i32** %10, align 8, !dbg !573
  %98 = getelementptr inbounds i32, i32* %97, i64 0, !dbg !573
  store i32 %96, i32* %98, align 4, !dbg !574
  br label %199, !dbg !575

; <label>:99:                                     ; preds = %92
  %100 = load i32, i32* %9, align 4, !dbg !576
  %101 = load i32, i32* %8, align 4, !dbg !579
  %102 = icmp ne i32 %100, %101, !dbg !580
  br i1 %102, label %103, label %198, !dbg !576

; <label>:103:                                    ; preds = %99
  br label %104, !dbg !581

; <label>:104:                                    ; preds = %115, %103
  %105 = load i32, i32* %9, align 4, !dbg !583
  %106 = load i32, i32* %8, align 4, !dbg !585
  %107 = icmp sgt i32 %105, %106, !dbg !586
  br i1 %107, label %108, label %113, !dbg !587

; <label>:108:                                    ; preds = %104
  %109 = load i32, i32* %15, align 4, !dbg !588
  %110 = mul nsw i32 %109, 3, !dbg !589
  %111 = load i32, i32* %8, align 4, !dbg !590
  %112 = icmp sgt i32 %110, %111, !dbg !591
  br label %113

; <label>:113:                                    ; preds = %108, %104
  %114 = phi i1 [ false, %104 ], [ %112, %108 ]
  br i1 %114, label %115, label %118, !dbg !592

; <label>:115:                                    ; preds = %113
  %116 = load i32, i32* %15, align 4, !dbg !594
  %117 = add nsw i32 %116, -1, !dbg !594
  store i32 %117, i32* %15, align 4, !dbg !594
  br label %104, !dbg !596, !llvm.loop !598

; <label>:118:                                    ; preds = %113
  store i32 0, i32* %13, align 4, !dbg !599
  br label %119, !dbg !601

; <label>:119:                                    ; preds = %142, %118
  %120 = load i32, i32* %13, align 4, !dbg !602
  %121 = load i32, i32* %15, align 4, !dbg !605
  %122 = icmp slt i32 %120, %121, !dbg !606
  br i1 %122, label %123, label %145, !dbg !607

; <label>:123:                                    ; preds = %119
  call void @llvm.dbg.declare(metadata i32* %19, metadata !608, metadata !314), !dbg !610
  %124 = load i32, i32* %8, align 4, !dbg !611
  %125 = load i32, i32* %13, align 4, !dbg !612
  %126 = sext i32 %125 to i64, !dbg !613
  %127 = load i32*, i32** %10, align 8, !dbg !613
  %128 = getelementptr inbounds i32, i32* %127, i64 %126, !dbg !613
  %129 = load i32, i32* %128, align 4, !dbg !613
  %130 = mul nsw i32 %124, %129, !dbg !614
  %131 = load i32, i32* %9, align 4, !dbg !615
  %132 = sdiv i32 %130, %131, !dbg !616
  store i32 %132, i32* %19, align 4, !dbg !610
  %133 = load i32, i32* %19, align 4, !dbg !617
  %134 = icmp slt i32 %133, 3, !dbg !619
  br i1 %134, label %135, label %136, !dbg !620

; <label>:135:                                    ; preds = %123
  store i32 3, i32* %19, align 4, !dbg !621
  br label %136, !dbg !622

; <label>:136:                                    ; preds = %135, %123
  %137 = load i32, i32* %19, align 4, !dbg !623
  %138 = load i32, i32* %13, align 4, !dbg !624
  %139 = sext i32 %138 to i64, !dbg !625
  %140 = load i32*, i32** %10, align 8, !dbg !625
  %141 = getelementptr inbounds i32, i32* %140, i64 %139, !dbg !625
  store i32 %137, i32* %141, align 4, !dbg !626
  br label %142, !dbg !627

; <label>:142:                                    ; preds = %136
  %143 = load i32, i32* %13, align 4, !dbg !628
  %144 = add nsw i32 %143, 1, !dbg !628
  store i32 %144, i32* %13, align 4, !dbg !628
  br label %119, !dbg !630, !llvm.loop !631

; <label>:145:                                    ; preds = %119
  store i32 0, i32* %9, align 4, !dbg !633
  store i32 0, i32* %13, align 4, !dbg !634
  br label %146, !dbg !636

; <label>:146:                                    ; preds = %158, %145
  %147 = load i32, i32* %13, align 4, !dbg !637
  %148 = load i32, i32* %15, align 4, !dbg !640
  %149 = icmp slt i32 %147, %148, !dbg !641
  br i1 %149, label %150, label %161, !dbg !642

; <label>:150:                                    ; preds = %146
  %151 = load i32, i32* %13, align 4, !dbg !643
  %152 = sext i32 %151 to i64, !dbg !644
  %153 = load i32*, i32** %10, align 8, !dbg !644
  %154 = getelementptr inbounds i32, i32* %153, i64 %152, !dbg !644
  %155 = load i32, i32* %154, align 4, !dbg !644
  %156 = load i32, i32* %9, align 4, !dbg !645
  %157 = add nsw i32 %156, %155, !dbg !645
  store i32 %157, i32* %9, align 4, !dbg !645
  br label %158, !dbg !646

; <label>:158:                                    ; preds = %150
  %159 = load i32, i32* %13, align 4, !dbg !647
  %160 = add nsw i32 %159, 1, !dbg !647
  store i32 %160, i32* %13, align 4, !dbg !647
  br label %146, !dbg !649, !llvm.loop !650

; <label>:161:                                    ; preds = %146
  %162 = load i32, i32* %9, align 4, !dbg !652
  %163 = load i32, i32* %8, align 4, !dbg !653
  %164 = icmp slt i32 %162, %163, !dbg !654
  %165 = select i1 %164, i32 1, i32 -1, !dbg !652
  store i32 %165, i32* %17, align 4, !dbg !655
  store i32 0, i32* %13, align 4, !dbg !656
  br label %166, !dbg !658

; <label>:166:                                    ; preds = %194, %161
  %167 = load i32, i32* %9, align 4, !dbg !659
  %168 = load i32, i32* %8, align 4, !dbg !662
  %169 = icmp ne i32 %167, %168, !dbg !663
  br i1 %169, label %170, label %197, !dbg !664

; <label>:170:                                    ; preds = %166
  %171 = load i32, i32* %13, align 4, !dbg !665
  %172 = load i32, i32* %15, align 4, !dbg !668
  %173 = icmp eq i32 %171, %172, !dbg !669
  br i1 %173, label %174, label %175, !dbg !670

; <label>:174:                                    ; preds = %170
  store i32 0, i32* %13, align 4, !dbg !671
  br label %175, !dbg !672

; <label>:175:                                    ; preds = %174, %170
  %176 = load i32, i32* %13, align 4, !dbg !673
  %177 = sext i32 %176 to i64, !dbg !675
  %178 = load i32*, i32** %10, align 8, !dbg !675
  %179 = getelementptr inbounds i32, i32* %178, i64 %177, !dbg !675
  %180 = load i32, i32* %179, align 4, !dbg !675
  %181 = icmp sgt i32 %180, 3, !dbg !676
  br i1 %181, label %182, label %193, !dbg !677

; <label>:182:                                    ; preds = %175
  %183 = load i32, i32* %17, align 4, !dbg !678
  %184 = load i32, i32* %9, align 4, !dbg !680
  %185 = add nsw i32 %184, %183, !dbg !680
  store i32 %185, i32* %9, align 4, !dbg !680
  %186 = load i32, i32* %17, align 4, !dbg !681
  %187 = load i32, i32* %13, align 4, !dbg !682
  %188 = sext i32 %187 to i64, !dbg !683
  %189 = load i32*, i32** %10, align 8, !dbg !683
  %190 = getelementptr inbounds i32, i32* %189, i64 %188, !dbg !683
  %191 = load i32, i32* %190, align 4, !dbg !684
  %192 = add nsw i32 %191, %186, !dbg !684
  store i32 %192, i32* %190, align 4, !dbg !684
  br label %193, !dbg !685

; <label>:193:                                    ; preds = %182, %175
  br label %194, !dbg !686

; <label>:194:                                    ; preds = %193
  %195 = load i32, i32* %13, align 4, !dbg !687
  %196 = add nsw i32 %195, 1, !dbg !687
  store i32 %196, i32* %13, align 4, !dbg !687
  br label %166, !dbg !689, !llvm.loop !690

; <label>:197:                                    ; preds = %166
  br label %198, !dbg !692

; <label>:198:                                    ; preds = %197, %99
  br label %199

; <label>:199:                                    ; preds = %198, %95
  store %struct.MAIN_WINDOW_REC* null, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !693
  store i32 0, i32* %14, align 4, !dbg !694
  store %struct._WINDOW_REC* null, %struct._WINDOW_REC** %3, align 8, !dbg !695
  store i32 0, i32* %13, align 4, !dbg !696
  %200 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !698
  store %struct._GSList* %200, %struct._GSList** %5, align 8, !dbg !699
  br label %201, !dbg !700

; <label>:201:                                    ; preds = %383, %199
  %202 = load i32, i32* %13, align 4, !dbg !701
  %203 = load i32, i32* %15, align 4, !dbg !704
  %204 = icmp slt i32 %202, %203, !dbg !705
  br i1 %204, label %205, label %389, !dbg !706

; <label>:205:                                    ; preds = %201
  call void @llvm.dbg.declare(metadata %struct._GSList** %20, metadata !707, metadata !314), !dbg !709
  call void @llvm.dbg.declare(metadata %struct._GSList** %21, metadata !710, metadata !314), !dbg !711
  call void @llvm.dbg.declare(metadata %struct._GSList** %22, metadata !712, metadata !314), !dbg !713
  call void @llvm.dbg.declare(metadata i32* %23, metadata !714, metadata !314), !dbg !715
  call void @llvm.dbg.declare(metadata i32* %24, metadata !716, metadata !314), !dbg !717
  call void @llvm.dbg.declare(metadata i32* %25, metadata !718, metadata !314), !dbg !719
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %26, metadata !720, metadata !314), !dbg !721
  %206 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !722
  %207 = getelementptr inbounds %struct._GSList, %struct._GSList* %206, i32 0, i32 0, !dbg !723
  %208 = load i8*, i8** %207, align 8, !dbg !723
  %209 = bitcast i8* %208 to %struct._CONFIG_NODE*, !dbg !722
  store %struct._CONFIG_NODE* %209, %struct._CONFIG_NODE** %26, align 8, !dbg !721
  %210 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %26, align 8, !dbg !724
  %211 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %210, i32 0, i32 1, !dbg !726
  %212 = load i8*, i8** %211, align 8, !dbg !726
  %213 = icmp eq i8* %212, null, !dbg !727
  br i1 %213, label %214, label %215, !dbg !728

; <label>:214:                                    ; preds = %205
  br label %383, !dbg !729

; <label>:215:                                    ; preds = %205
  %216 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %26, align 8, !dbg !731
  %217 = call i32 @config_node_get_int(%struct._CONFIG_NODE* %216, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i32 -1), !dbg !732
  store i32 %217, i32* %24, align 4, !dbg !733
  %218 = load i32, i32* %24, align 4, !dbg !734
  %219 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %26, align 8, !dbg !735
  %220 = call i32 @config_node_get_int(%struct._CONFIG_NODE* %219, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 0), !dbg !736
  %221 = add nsw i32 %218, %220, !dbg !737
  %222 = sub nsw i32 %221, 1, !dbg !738
  store i32 %222, i32* %25, align 4, !dbg !739
  %223 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !740
  %224 = load i32, i32* %24, align 4, !dbg !741
  %225 = load i32, i32* %25, align 4, !dbg !742
  %226 = call %struct._GSList* @get_windows_config_filter_column(%struct._GSList* %223, i32 %224, i32 %225), !dbg !743
  store %struct._GSList* %226, %struct._GSList** %21, align 8, !dbg !744
  store %struct._WINDOW_REC* null, %struct._WINDOW_REC** %2, align 8, !dbg !745
  store i32 0, i32* %16, align 4, !dbg !746
  %227 = load i32, i32* %12, align 4, !dbg !747
  %228 = sext i32 %227 to i64, !dbg !748
  %229 = call noalias i8* @g_malloc0_n(i64 %228, i64 4), !dbg !749
  %230 = bitcast i8* %229 to i32*, !dbg !750
  store i32* %230, i32** %11, align 8, !dbg !751
  store i32 0, i32* %23, align 4, !dbg !752
  %231 = load %struct._GSList*, %struct._GSList** %21, align 8, !dbg !754
  store %struct._GSList* %231, %struct._GSList** %20, align 8, !dbg !755
  br label %232, !dbg !756

; <label>:232:                                    ; preds = %295, %215
  %233 = load i32, i32* %23, align 4, !dbg !757
  %234 = load i32, i32* %12, align 4, !dbg !760
  %235 = icmp slt i32 %233, %234, !dbg !761
  br i1 %235, label %236, label %239, !dbg !762

; <label>:236:                                    ; preds = %232
  %237 = load %struct._GSList*, %struct._GSList** %20, align 8, !dbg !763
  %238 = icmp ne %struct._GSList* %237, null, !dbg !765
  br label %239

; <label>:239:                                    ; preds = %236, %232
  %240 = phi i1 [ false, %232 ], [ %238, %236 ]
  br i1 %240, label %241, label %301, !dbg !766

; <label>:241:                                    ; preds = %239
  call void @llvm.dbg.declare(metadata i32* %27, metadata !768, metadata !314), !dbg !770
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %28, metadata !771, metadata !314), !dbg !772
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %29, metadata !773, metadata !314), !dbg !774
  %242 = load %struct._GSList*, %struct._GSList** %20, align 8, !dbg !775
  %243 = getelementptr inbounds %struct._GSList, %struct._GSList* %242, i32 0, i32 0, !dbg !776
  %244 = load i8*, i8** %243, align 8, !dbg !776
  %245 = bitcast i8* %244 to %struct._CONFIG_NODE*, !dbg !775
  store %struct._CONFIG_NODE* %245, %struct._CONFIG_NODE** %29, align 8, !dbg !774
  %246 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %29, align 8, !dbg !777
  %247 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %246, i32 0, i32 1, !dbg !779
  %248 = load i8*, i8** %247, align 8, !dbg !779
  %249 = icmp eq i8* %248, null, !dbg !780
  br i1 %249, label %250, label %251, !dbg !781

; <label>:250:                                    ; preds = %241
  br label %295, !dbg !782

; <label>:251:                                    ; preds = %241
  %252 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !784
  %253 = icmp eq %struct._WINDOW_REC* %252, null, !dbg !785
  %254 = select i1 %253, i32 2, i32 3, !dbg !784
  %255 = sext i32 %254 to i64, !dbg !786
  %256 = inttoptr i64 %255 to i8*, !dbg !787
  %257 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i32 0, i32 0), i32 1, i8* %256), !dbg !788
  %258 = call %struct._WINDOW_REC* @window_create(%struct._WI_ITEM_REC* null, i32 1), !dbg !789
  store %struct._WINDOW_REC* %258, %struct._WINDOW_REC** %28, align 8, !dbg !790
  %259 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %28, align 8, !dbg !791
  %260 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %29, align 8, !dbg !792
  %261 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %260, i32 0, i32 1, !dbg !793
  %262 = load i8*, i8** %261, align 8, !dbg !793
  %263 = call i32 @atoi(i8* %262) #4, !dbg !794
  call void @window_set_refnum(%struct._WINDOW_REC* %259, i32 %263), !dbg !795
  %264 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %29, align 8, !dbg !797
  %265 = call i32 @config_node_get_int(%struct._CONFIG_NODE* %264, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i32 10), !dbg !798
  store i32 %265, i32* %27, align 4, !dbg !799
  %266 = load i32, i32* %27, align 4, !dbg !800
  %267 = load i32, i32* %23, align 4, !dbg !801
  %268 = sext i32 %267 to i64, !dbg !802
  %269 = load i32*, i32** %11, align 8, !dbg !802
  %270 = getelementptr inbounds i32, i32* %269, i64 %268, !dbg !802
  store i32 %266, i32* %270, align 4, !dbg !803
  %271 = load i32, i32* %27, align 4, !dbg !804
  %272 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !805
  %273 = icmp eq %struct._WINDOW_REC* %272, null, !dbg !806
  %274 = select i1 %273, i32 0, i32 1, !dbg !805
  %275 = add nsw i32 %271, %274, !dbg !807
  %276 = load i32, i32* %16, align 4, !dbg !808
  %277 = add nsw i32 %276, %275, !dbg !808
  store i32 %277, i32* %16, align 4, !dbg !808
  %278 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !809
  %279 = icmp eq %struct._WINDOW_REC* %278, null, !dbg !811
  br i1 %279, label %280, label %282, !dbg !812

; <label>:280:                                    ; preds = %251
  %281 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %28, align 8, !dbg !813
  store %struct._WINDOW_REC* %281, %struct._WINDOW_REC** %2, align 8, !dbg !814
  br label %282, !dbg !815

; <label>:282:                                    ; preds = %280, %251
  %283 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !816
  %284 = icmp eq %struct._WINDOW_REC* %283, null, !dbg !818
  br i1 %284, label %285, label %287, !dbg !819

; <label>:285:                                    ; preds = %282
  %286 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %28, align 8, !dbg !820
  store %struct._WINDOW_REC* %286, %struct._WINDOW_REC** %3, align 8, !dbg !821
  br label %287, !dbg !822

; <label>:287:                                    ; preds = %285, %282
  %288 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %28, align 8, !dbg !823
  call void @window_set_active(%struct._WINDOW_REC* %288), !dbg !824
  %289 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %28, align 8, !dbg !825
  %290 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %289, i32 0, i32 20, !dbg !826
  %291 = load i8*, i8** %290, align 8, !dbg !826
  %292 = bitcast i8* %291 to %struct.GUI_WINDOW_REC*, !dbg !827
  %293 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %292, i32 0, i32 0, !dbg !828
  %294 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %293, align 8, !dbg !828
  store %struct.MAIN_WINDOW_REC* %294, %struct.MAIN_WINDOW_REC** @active_mainwin, align 8, !dbg !829
  br label %295, !dbg !830

; <label>:295:                                    ; preds = %287, %250
  %296 = load %struct._GSList*, %struct._GSList** %20, align 8, !dbg !831
  %297 = getelementptr inbounds %struct._GSList, %struct._GSList* %296, i32 0, i32 1, !dbg !833
  %298 = load %struct._GSList*, %struct._GSList** %297, align 8, !dbg !833
  store %struct._GSList* %298, %struct._GSList** %20, align 8, !dbg !834
  %299 = load i32, i32* %23, align 4, !dbg !835
  %300 = add nsw i32 %299, 1, !dbg !835
  store i32 %300, i32* %23, align 4, !dbg !835
  br label %232, !dbg !836, !llvm.loop !837

; <label>:301:                                    ; preds = %239
  %302 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !839
  %303 = icmp eq %struct._WINDOW_REC* %302, null, !dbg !841
  br i1 %303, label %304, label %305, !dbg !842

; <label>:304:                                    ; preds = %301
  br label %383, !dbg !843

; <label>:305:                                    ; preds = %301
  %306 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !844
  %307 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %306, i32 0, i32 20, !dbg !845
  %308 = load i8*, i8** %307, align 8, !dbg !845
  %309 = bitcast i8* %308 to %struct.GUI_WINDOW_REC*, !dbg !846
  %310 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %309, i32 0, i32 0, !dbg !847
  %311 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %310, align 8, !dbg !847
  %312 = call %struct._GSList* @mainwindows_get_line(%struct.MAIN_WINDOW_REC* %311), !dbg !848
  %313 = call %struct._GSList* @g_slist_reverse(%struct._GSList* %312), !dbg !849
  store %struct._GSList* %313, %struct._GSList** %22, align 8, !dbg !851
  %314 = load %struct._GSList*, %struct._GSList** %22, align 8, !dbg !852
  %315 = call i32 @g_slist_length(%struct._GSList* %314), !dbg !854
  store i32 %315, i32* %23, align 4, !dbg !855
  %316 = load %struct._GSList*, %struct._GSList** %22, align 8, !dbg !856
  store %struct._GSList* %316, %struct._GSList** %20, align 8, !dbg !857
  br label %317, !dbg !858

; <label>:317:                                    ; preds = %352, %305
  %318 = load %struct._GSList*, %struct._GSList** %20, align 8, !dbg !859
  %319 = icmp ne %struct._GSList* %318, null, !dbg !862
  br i1 %319, label %320, label %358, !dbg !863

; <label>:320:                                    ; preds = %317
  call void @llvm.dbg.declare(metadata i32* %30, metadata !864, metadata !314), !dbg !866
  %321 = load i32, i32* %23, align 4, !dbg !867
  %322 = sub nsw i32 %321, 1, !dbg !868
  %323 = sext i32 %322 to i64, !dbg !869
  %324 = load i32*, i32** %11, align 8, !dbg !869
  %325 = getelementptr inbounds i32, i32* %324, i64 %323, !dbg !869
  %326 = load i32, i32* %325, align 4, !dbg !869
  %327 = load i32, i32* @term_width, align 4, !dbg !870
  %328 = mul nsw i32 %326, %327, !dbg !871
  %329 = load i32, i32* %16, align 4, !dbg !872
  %330 = sdiv i32 %328, %329, !dbg !873
  %331 = icmp sgt i32 10, %330, !dbg !874
  br i1 %331, label %332, label %333, !dbg !875

; <label>:332:                                    ; preds = %320
  br label %344, !dbg !876

; <label>:333:                                    ; preds = %320
  %334 = load i32, i32* %23, align 4, !dbg !878
  %335 = sub nsw i32 %334, 1, !dbg !880
  %336 = sext i32 %335 to i64, !dbg !881
  %337 = load i32*, i32** %11, align 8, !dbg !881
  %338 = getelementptr inbounds i32, i32* %337, i64 %336, !dbg !881
  %339 = load i32, i32* %338, align 4, !dbg !881
  %340 = load i32, i32* @term_width, align 4, !dbg !882
  %341 = mul nsw i32 %339, %340, !dbg !883
  %342 = load i32, i32* %16, align 4, !dbg !884
  %343 = sdiv i32 %341, %342, !dbg !885
  br label %344, !dbg !886

; <label>:344:                                    ; preds = %333, %332
  %345 = phi i32 [ 10, %332 ], [ %343, %333 ], !dbg !887
  store i32 %345, i32* %30, align 4, !dbg !889
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %31, metadata !890, metadata !314), !dbg !891
  %346 = load %struct._GSList*, %struct._GSList** %20, align 8, !dbg !892
  %347 = getelementptr inbounds %struct._GSList, %struct._GSList* %346, i32 0, i32 0, !dbg !893
  %348 = load i8*, i8** %347, align 8, !dbg !893
  %349 = bitcast i8* %348 to %struct.MAIN_WINDOW_REC*, !dbg !892
  store %struct.MAIN_WINDOW_REC* %349, %struct.MAIN_WINDOW_REC** %31, align 8, !dbg !891
  %350 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %31, align 8, !dbg !894
  %351 = load i32, i32* %30, align 4, !dbg !895
  call void @mainwindow_set_rsize(%struct.MAIN_WINDOW_REC* %350, i32 %351), !dbg !896
  br label %352, !dbg !897

; <label>:352:                                    ; preds = %344
  %353 = load %struct._GSList*, %struct._GSList** %20, align 8, !dbg !898
  %354 = getelementptr inbounds %struct._GSList, %struct._GSList* %353, i32 0, i32 1, !dbg !900
  %355 = load %struct._GSList*, %struct._GSList** %354, align 8, !dbg !900
  store %struct._GSList* %355, %struct._GSList** %20, align 8, !dbg !901
  %356 = load i32, i32* %23, align 4, !dbg !902
  %357 = add nsw i32 %356, -1, !dbg !902
  store i32 %357, i32* %23, align 4, !dbg !902
  br label %317, !dbg !903, !llvm.loop !904

; <label>:358:                                    ; preds = %317
  %359 = load %struct._GSList*, %struct._GSList** %22, align 8, !dbg !906
  call void @g_slist_free(%struct._GSList* %359), !dbg !907
  %360 = load i32*, i32** %11, align 8, !dbg !908
  %361 = bitcast i32* %360 to i8*, !dbg !908
  call void @g_free(i8* %361), !dbg !909
  %362 = load i32, i32* %14, align 4, !dbg !910
  %363 = icmp sgt i32 %362, 0, !dbg !912
  br i1 %363, label %364, label %367, !dbg !913

; <label>:364:                                    ; preds = %358
  %365 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !914
  %366 = load i32, i32* %14, align 4, !dbg !915
  call void @mainwindow_set_size(%struct.MAIN_WINDOW_REC* %365, i32 %366, i32 0), !dbg !916
  br label %367, !dbg !916

; <label>:367:                                    ; preds = %364, %358
  %368 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !917
  %369 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %368, i32 0, i32 20, !dbg !918
  %370 = load i8*, i8** %369, align 8, !dbg !918
  %371 = bitcast i8* %370 to %struct.GUI_WINDOW_REC*, !dbg !919
  %372 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %371, i32 0, i32 0, !dbg !920
  %373 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %372, align 8, !dbg !920
  store %struct.MAIN_WINDOW_REC* %373, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !921
  %374 = load i32, i32* %13, align 4, !dbg !922
  %375 = sext i32 %374 to i64, !dbg !923
  %376 = load i32*, i32** %10, align 8, !dbg !923
  %377 = getelementptr inbounds i32, i32* %376, i64 %375, !dbg !923
  %378 = load i32, i32* %377, align 4, !dbg !923
  store i32 %378, i32* %14, align 4, !dbg !924
  %379 = load i32, i32* %14, align 4, !dbg !925
  %380 = icmp slt i32 %379, 3, !dbg !927
  br i1 %380, label %381, label %382, !dbg !928

; <label>:381:                                    ; preds = %367
  store i32 3, i32* %14, align 4, !dbg !929
  br label %382, !dbg !930

; <label>:382:                                    ; preds = %381, %367
  br label %383, !dbg !931

; <label>:383:                                    ; preds = %382, %304, %214
  %384 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !932
  %385 = getelementptr inbounds %struct._GSList, %struct._GSList* %384, i32 0, i32 1, !dbg !934
  %386 = load %struct._GSList*, %struct._GSList** %385, align 8, !dbg !934
  store %struct._GSList* %386, %struct._GSList** %5, align 8, !dbg !935
  %387 = load i32, i32* %13, align 4, !dbg !936
  %388 = add nsw i32 %387, 1, !dbg !936
  store i32 %388, i32* %13, align 4, !dbg !936
  br label %201, !dbg !937, !llvm.loop !938

; <label>:389:                                    ; preds = %201
  %390 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !940
  call void @g_slist_free(%struct._GSList* %390), !dbg !941
  %391 = load i32*, i32** %10, align 8, !dbg !942
  %392 = bitcast i32* %391 to i8*, !dbg !942
  call void @g_free(i8* %392), !dbg !943
  %393 = load i32, i32* %14, align 4, !dbg !944
  %394 = icmp sgt i32 %393, 0, !dbg !946
  br i1 %394, label %395, label %398, !dbg !947

; <label>:395:                                    ; preds = %389
  %396 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %1, align 8, !dbg !948
  %397 = load i32, i32* %14, align 4, !dbg !949
  call void @mainwindow_set_size(%struct.MAIN_WINDOW_REC* %396, i32 %397, i32 0), !dbg !950
  br label %398, !dbg !950

; <label>:398:                                    ; preds = %395, %389
  %399 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !951
  %400 = icmp ne %struct._WINDOW_REC* %399, null, !dbg !953
  br i1 %400, label %401, label %409, !dbg !954

; <label>:401:                                    ; preds = %398
  %402 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !955
  call void @window_set_active(%struct._WINDOW_REC* %402), !dbg !957
  %403 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !958
  %404 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %403, i32 0, i32 20, !dbg !959
  %405 = load i8*, i8** %404, align 8, !dbg !959
  %406 = bitcast i8* %405 to %struct.GUI_WINDOW_REC*, !dbg !960
  %407 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %406, i32 0, i32 0, !dbg !961
  %408 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %407, align 8, !dbg !961
  store %struct.MAIN_WINDOW_REC* %408, %struct.MAIN_WINDOW_REC** @active_mainwin, align 8, !dbg !962
  br label %409, !dbg !963

; <label>:409:                                    ; preds = %36, %42, %401, %398
  ret void, !dbg !964
}

; Function Attrs: nounwind uwtable
define internal void @sig_layout_reset() #0 !dbg !965 {
  %1 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !966
  %2 = call i32 @config_set_str(%struct._CONFIG_REC* %1, i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i8* null), !dbg !967
  ret void, !dbg !968
}

; Function Attrs: nounwind uwtable
define void @mainwindows_layout_deinit() #0 !dbg !969 {
  call void @signal_remove_full(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*, %struct._CONFIG_NODE*)* @sig_layout_window_save to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !970
  call void @signal_remove_full(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*, %struct._CONFIG_NODE*)* @sig_layout_window_restore to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !971
  call void @signal_remove_full(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_layout_save to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !972
  call void @signal_remove_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_layout_restore to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !973
  call void @signal_remove_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_layout_reset to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !974
  ret void, !dbg !975
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare void @config_node_set_bool(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i32) #1

declare void @config_node_set_int(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i32) #1

declare i8* @bits2level(i32) #1

declare void @config_node_set_str(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i8*) #1

declare void @g_free(i8*) #1

declare %struct._WINDOW_REC* @window_find_refnum(i32) #1

declare i32 @config_node_get_int(%struct._CONFIG_NODE*, i8*, i32) #1

declare void @gui_window_reparent(%struct._WINDOW_REC*, %struct.MAIN_WINDOW_REC*) #1

declare i32 @config_node_get_bool(%struct._CONFIG_NODE*, i8*, i32) #1

declare void @gui_window_set_sticky(%struct._WINDOW_REC*) #1

declare void @textbuffer_view_set_hidden_level(%struct._TEXT_BUFFER_VIEW_REC*, i32) #1

declare i32 @level2bits(i8*, i32*) #1

declare i8* @config_node_get_str(%struct._CONFIG_NODE*, i8*, i8*) #1

declare void @textbuffer_view_set_scroll(%struct._TEXT_BUFFER_VIEW_REC*, i32) #1

declare i32 @config_set_str(%struct._CONFIG_REC*, i8*, i8*, i8*) #1

declare %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC*, i8*, i32) #1

declare void @g_slist_foreach(%struct._GSList*, void (i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @main_window_save(%struct.MAIN_WINDOW_REC*, %struct._CONFIG_NODE*) #0 !dbg !976 {
  %3 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %4 = alloca %struct._CONFIG_NODE*, align 8
  %5 = alloca [12 x i8], align 1
  store %struct.MAIN_WINDOW_REC* %0, %struct.MAIN_WINDOW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %3, metadata !979, metadata !314), !dbg !980
  store %struct._CONFIG_NODE* %1, %struct._CONFIG_NODE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %4, metadata !981, metadata !314), !dbg !982
  call void @llvm.dbg.declare(metadata [12 x i8]* %5, metadata !983, metadata !314), !dbg !987
  %6 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i32 0, i32 0, !dbg !988
  %7 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !989
  %8 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %7, i32 0, i32 0, !dbg !990
  %9 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %8, align 8, !dbg !990
  %10 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %9, i32 0, i32 0, !dbg !991
  %11 = load i32, i32* %10, align 8, !dbg !991
  %12 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %6, i64 12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i32 %11), !dbg !992
  %13 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !993
  %14 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !994
  %15 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i32 0, i32 0, !dbg !995
  %16 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* %13, %struct._CONFIG_NODE* %14, i8* %15, i32 2), !dbg !996
  store %struct._CONFIG_NODE* %16, %struct._CONFIG_NODE** %4, align 8, !dbg !997
  %17 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !998
  %18 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !999
  %19 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !1000
  %20 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %19, i32 0, i32 3, !dbg !1001
  %21 = load i32, i32* %20, align 4, !dbg !1001
  call void @config_node_set_int(%struct._CONFIG_REC* %17, %struct._CONFIG_NODE* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i32 %21), !dbg !1002
  %22 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1003
  %23 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1004
  %24 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !1005
  %25 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %24, i32 0, i32 8, !dbg !1006
  %26 = load i32, i32* %25, align 8, !dbg !1006
  call void @config_node_set_int(%struct._CONFIG_REC* %22, %struct._CONFIG_NODE* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %26), !dbg !1007
  %27 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1008
  %28 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1009
  %29 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !1010
  %30 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %29, i32 0, i32 5, !dbg !1011
  %31 = load i32, i32* %30, align 4, !dbg !1011
  call void @config_node_set_int(%struct._CONFIG_REC* %27, %struct._CONFIG_NODE* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i32 %31), !dbg !1012
  %32 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1013
  %33 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1014
  %34 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %3, align 8, !dbg !1015
  %35 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %34, i32 0, i32 7, !dbg !1016
  %36 = load i32, i32* %35, align 4, !dbg !1016
  call void @config_node_set_int(%struct._CONFIG_REC* %32, %struct._CONFIG_NODE* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i32 %36), !dbg !1017
  ret void, !dbg !1018
}

declare i32 @g_snprintf(i8*, i64, i8*, ...) #1

declare %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GSList* @get_sorted_windows_config(%struct._CONFIG_NODE*) #0 !dbg !1019 {
  %2 = alloca %struct._CONFIG_NODE*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct._GSList*, align 8
  store %struct._CONFIG_NODE* %0, %struct._CONFIG_NODE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %2, metadata !1022, metadata !314), !dbg !1023
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !1024, metadata !314), !dbg !1025
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !1026, metadata !314), !dbg !1027
  store %struct._GSList* null, %struct._GSList** %4, align 8, !dbg !1028
  %5 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %2, align 8, !dbg !1029
  %6 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %5, i32 0, i32 2, !dbg !1030
  %7 = load i8*, i8** %6, align 8, !dbg !1030
  %8 = bitcast i8* %7 to %struct._GSList*, !dbg !1029
  %9 = call %struct._GSList* @config_node_first(%struct._GSList* %8), !dbg !1031
  store %struct._GSList* %9, %struct._GSList** %3, align 8, !dbg !1032
  br label %10, !dbg !1033

; <label>:10:                                     ; preds = %19, %1
  %11 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1034
  %12 = icmp ne %struct._GSList* %11, null, !dbg !1038
  br i1 %12, label %13, label %22, !dbg !1039

; <label>:13:                                     ; preds = %10
  %14 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1040
  %15 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1042
  %16 = getelementptr inbounds %struct._GSList, %struct._GSList* %15, i32 0, i32 0, !dbg !1043
  %17 = load i8*, i8** %16, align 8, !dbg !1043
  %18 = call %struct._GSList* @g_slist_insert_sorted(%struct._GSList* %14, i8* %17, i32 (i8*, i8*)* bitcast (i32 (%struct._CONFIG_NODE*, %struct._CONFIG_NODE*)* @window_node_cmp to i32 (i8*, i8*)*)), !dbg !1044
  store %struct._GSList* %18, %struct._GSList** %4, align 8, !dbg !1045
  br label %19, !dbg !1046

; <label>:19:                                     ; preds = %13
  %20 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1047
  %21 = call %struct._GSList* @config_node_next(%struct._GSList* %20), !dbg !1049
  store %struct._GSList* %21, %struct._GSList** %3, align 8, !dbg !1050
  br label %10, !dbg !1051, !llvm.loop !1052

; <label>:22:                                     ; preds = %10
  %23 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1053
  ret %struct._GSList* %23, !dbg !1054
}

; Function Attrs: nounwind uwtable
define internal %struct._GSList* @get_windows_config_filter_line(%struct._GSList*) #0 !dbg !1055 {
  %2 = alloca %struct._GSList*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct._CONFIG_NODE*, align 8
  store %struct._GSList* %0, %struct._GSList** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %2, metadata !1058, metadata !314), !dbg !1059
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !1060, metadata !314), !dbg !1061
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !1062, metadata !314), !dbg !1063
  store %struct._GSList* null, %struct._GSList** %4, align 8, !dbg !1064
  %6 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !1065
  store %struct._GSList* %6, %struct._GSList** %3, align 8, !dbg !1067
  br label %7, !dbg !1068

; <label>:7:                                      ; preds = %24, %1
  %8 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1069
  %9 = icmp ne %struct._GSList* %8, null, !dbg !1072
  br i1 %9, label %10, label %28, !dbg !1073

; <label>:10:                                     ; preds = %7
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %5, metadata !1074, metadata !314), !dbg !1076
  %11 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1077
  %12 = getelementptr inbounds %struct._GSList, %struct._GSList* %11, i32 0, i32 0, !dbg !1078
  %13 = load i8*, i8** %12, align 8, !dbg !1078
  %14 = bitcast i8* %13 to %struct._CONFIG_NODE*, !dbg !1077
  store %struct._CONFIG_NODE* %14, %struct._CONFIG_NODE** %5, align 8, !dbg !1076
  %15 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !1079
  %16 = call i32 @config_node_get_int(%struct._CONFIG_NODE* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i32 0), !dbg !1081
  %17 = icmp eq i32 %16, 0, !dbg !1082
  br i1 %17, label %18, label %23, !dbg !1083

; <label>:18:                                     ; preds = %10
  %19 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1084
  %20 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !1085
  %21 = bitcast %struct._CONFIG_NODE* %20 to i8*, !dbg !1085
  %22 = call %struct._GSList* @g_slist_append(%struct._GSList* %19, i8* %21), !dbg !1086
  store %struct._GSList* %22, %struct._GSList** %4, align 8, !dbg !1087
  br label %23, !dbg !1088

; <label>:23:                                     ; preds = %18, %10
  br label %24, !dbg !1089

; <label>:24:                                     ; preds = %23
  %25 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1090
  %26 = getelementptr inbounds %struct._GSList, %struct._GSList* %25, i32 0, i32 1, !dbg !1092
  %27 = load %struct._GSList*, %struct._GSList** %26, align 8, !dbg !1092
  store %struct._GSList* %27, %struct._GSList** %3, align 8, !dbg !1093
  br label %7, !dbg !1094, !llvm.loop !1095

; <label>:28:                                     ; preds = %7
  %29 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1097
  ret %struct._GSList* %29, !dbg !1098
}

declare i32 @g_slist_length(%struct._GSList*) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._GSList* @get_windows_config_filter_column(%struct._GSList*, i32, i32) #0 !dbg !1099 {
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct._GSList*, align 8
  %8 = alloca %struct._GSList*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct._CONFIG_NODE*, align 8
  store %struct._GSList* %0, %struct._GSList** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !1102, metadata !314), !dbg !1103
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1104, metadata !314), !dbg !1105
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1106, metadata !314), !dbg !1107
  call void @llvm.dbg.declare(metadata %struct._GSList** %7, metadata !1108, metadata !314), !dbg !1109
  call void @llvm.dbg.declare(metadata %struct._GSList** %8, metadata !1110, metadata !314), !dbg !1111
  store %struct._GSList* null, %struct._GSList** %8, align 8, !dbg !1112
  %12 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1113
  store %struct._GSList* %12, %struct._GSList** %7, align 8, !dbg !1115
  br label %13, !dbg !1116

; <label>:13:                                     ; preds = %41, %3
  %14 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1117
  %15 = icmp ne %struct._GSList* %14, null, !dbg !1120
  br i1 %15, label %16, label %45, !dbg !1121

; <label>:16:                                     ; preds = %13
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1122, metadata !314), !dbg !1124
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1125, metadata !314), !dbg !1126
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %11, metadata !1127, metadata !314), !dbg !1128
  %17 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1129
  %18 = getelementptr inbounds %struct._GSList, %struct._GSList* %17, i32 0, i32 0, !dbg !1130
  %19 = load i8*, i8** %18, align 8, !dbg !1130
  %20 = bitcast i8* %19 to %struct._CONFIG_NODE*, !dbg !1129
  store %struct._CONFIG_NODE* %20, %struct._CONFIG_NODE** %11, align 8, !dbg !1128
  %21 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %11, align 8, !dbg !1131
  %22 = call i32 @config_node_get_int(%struct._CONFIG_NODE* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i32 -1), !dbg !1132
  store i32 %22, i32* %9, align 4, !dbg !1133
  %23 = load i32, i32* %9, align 4, !dbg !1134
  %24 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %11, align 8, !dbg !1135
  %25 = call i32 @config_node_get_int(%struct._CONFIG_NODE* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 0), !dbg !1136
  %26 = add nsw i32 %23, %25, !dbg !1137
  %27 = sub nsw i32 %26, 1, !dbg !1138
  store i32 %27, i32* %10, align 4, !dbg !1139
  %28 = load i32, i32* %9, align 4, !dbg !1140
  %29 = load i32, i32* %5, align 4, !dbg !1142
  %30 = icmp sge i32 %28, %29, !dbg !1143
  br i1 %30, label %31, label %40, !dbg !1144

; <label>:31:                                     ; preds = %16
  %32 = load i32, i32* %10, align 4, !dbg !1145
  %33 = load i32, i32* %6, align 4, !dbg !1147
  %34 = icmp sle i32 %32, %33, !dbg !1148
  br i1 %34, label %35, label %40, !dbg !1149

; <label>:35:                                     ; preds = %31
  %36 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1150
  %37 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %11, align 8, !dbg !1151
  %38 = bitcast %struct._CONFIG_NODE* %37 to i8*, !dbg !1151
  %39 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %36, i8* %38), !dbg !1152
  store %struct._GSList* %39, %struct._GSList** %8, align 8, !dbg !1153
  br label %40, !dbg !1154

; <label>:40:                                     ; preds = %35, %31, %16
  br label %41, !dbg !1155

; <label>:41:                                     ; preds = %40
  %42 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1156
  %43 = getelementptr inbounds %struct._GSList, %struct._GSList* %42, i32 0, i32 1, !dbg !1158
  %44 = load %struct._GSList*, %struct._GSList** %43, align 8, !dbg !1158
  store %struct._GSList* %44, %struct._GSList** %7, align 8, !dbg !1159
  br label %13, !dbg !1160, !llvm.loop !1161

; <label>:45:                                     ; preds = %13
  %46 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1163
  ret %struct._GSList* %46, !dbg !1164
}

declare i32 @signal_emit(i8*, i32, ...) #1

declare %struct._WINDOW_REC* @window_create(%struct._WI_ITEM_REC*, i32) #1

declare void @window_set_refnum(%struct._WINDOW_REC*, i32) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

declare void @window_set_active(%struct._WINDOW_REC*) #1

declare %struct._GSList* @g_slist_reverse(%struct._GSList*) #1

declare %struct._GSList* @mainwindows_get_line(%struct.MAIN_WINDOW_REC*) #1

declare void @mainwindow_set_rsize(%struct.MAIN_WINDOW_REC*, i32) #1

declare void @g_slist_free(%struct._GSList*) #1

declare void @mainwindow_set_size(%struct.MAIN_WINDOW_REC*, i32, i32) #1

declare %struct._GSList* @config_node_first(%struct._GSList*) #1

declare %struct._GSList* @g_slist_insert_sorted(%struct._GSList*, i8*, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @window_node_cmp(%struct._CONFIG_NODE*, %struct._CONFIG_NODE*) #0 !dbg !1165 {
  %3 = alloca %struct._CONFIG_NODE*, align 8
  %4 = alloca %struct._CONFIG_NODE*, align 8
  store %struct._CONFIG_NODE* %0, %struct._CONFIG_NODE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %3, metadata !1168, metadata !314), !dbg !1169
  store %struct._CONFIG_NODE* %1, %struct._CONFIG_NODE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %4, metadata !1170, metadata !314), !dbg !1171
  %5 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1172
  %6 = call i32 @config_node_get_int(%struct._CONFIG_NODE* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i32 0), !dbg !1173
  %7 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1174
  %8 = call i32 @config_node_get_int(%struct._CONFIG_NODE* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i32 0), !dbg !1175
  %9 = icmp eq i32 %6, %8, !dbg !1176
  br i1 %9, label %10, label %16, !dbg !1177

; <label>:10:                                     ; preds = %2
  %11 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1178
  %12 = call i32 @config_node_get_int(%struct._CONFIG_NODE* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i32 0), !dbg !1179
  %13 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1180
  %14 = call i32 @config_node_get_int(%struct._CONFIG_NODE* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i32 0), !dbg !1181
  %15 = icmp sgt i32 %12, %14, !dbg !1182
  br i1 %15, label %22, label %16, !dbg !1183

; <label>:16:                                     ; preds = %10, %2
  %17 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1184
  %18 = call i32 @config_node_get_int(%struct._CONFIG_NODE* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i32 0), !dbg !1185
  %19 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1186
  %20 = call i32 @config_node_get_int(%struct._CONFIG_NODE* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i32 0), !dbg !1187
  %21 = icmp sgt i32 %18, %20, !dbg !1188
  br label %22, !dbg !1189

; <label>:22:                                     ; preds = %16, %10
  %23 = phi i1 [ true, %10 ], [ %21, %16 ]
  %24 = select i1 %23, i32 -1, i32 1, !dbg !1191
  ret i32 %24, !dbg !1192
}

declare %struct._GSList* @config_node_next(%struct._GSList*) #1

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #1

declare %struct._GSList* @g_slist_prepend(%struct._GSList*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!289, !290}
!llvm.ident = !{!291}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !50)
!1 = !DIFile(filename: "line360-mainwindows-layout.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !34, !42}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 10, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../src/core/levels.h", directory: "/home/lichi/Desktop/irssi/task1")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33}
!6 = !DIEnumerator(name: "MSGLEVEL_CRAP", value: 1)
!7 = !DIEnumerator(name: "MSGLEVEL_MSGS", value: 2)
!8 = !DIEnumerator(name: "MSGLEVEL_PUBLIC", value: 4)
!9 = !DIEnumerator(name: "MSGLEVEL_NOTICES", value: 8)
!10 = !DIEnumerator(name: "MSGLEVEL_SNOTES", value: 16)
!11 = !DIEnumerator(name: "MSGLEVEL_CTCPS", value: 32)
!12 = !DIEnumerator(name: "MSGLEVEL_ACTIONS", value: 64)
!13 = !DIEnumerator(name: "MSGLEVEL_JOINS", value: 128)
!14 = !DIEnumerator(name: "MSGLEVEL_PARTS", value: 256)
!15 = !DIEnumerator(name: "MSGLEVEL_QUITS", value: 512)
!16 = !DIEnumerator(name: "MSGLEVEL_KICKS", value: 1024)
!17 = !DIEnumerator(name: "MSGLEVEL_MODES", value: 2048)
!18 = !DIEnumerator(name: "MSGLEVEL_TOPICS", value: 4096)
!19 = !DIEnumerator(name: "MSGLEVEL_WALLOPS", value: 8192)
!20 = !DIEnumerator(name: "MSGLEVEL_INVITES", value: 16384)
!21 = !DIEnumerator(name: "MSGLEVEL_NICKS", value: 32768)
!22 = !DIEnumerator(name: "MSGLEVEL_DCC", value: 65536)
!23 = !DIEnumerator(name: "MSGLEVEL_DCCMSGS", value: 131072)
!24 = !DIEnumerator(name: "MSGLEVEL_CLIENTNOTICE", value: 262144)
!25 = !DIEnumerator(name: "MSGLEVEL_CLIENTCRAP", value: 524288)
!26 = !DIEnumerator(name: "MSGLEVEL_CLIENTERROR", value: 1048576)
!27 = !DIEnumerator(name: "MSGLEVEL_HILIGHT", value: 2097152)
!28 = !DIEnumerator(name: "MSGLEVEL_ALL", value: 4194303)
!29 = !DIEnumerator(name: "MSGLEVEL_NOHILIGHT", value: 16777216)
!30 = !DIEnumerator(name: "MSGLEVEL_NO_ACT", value: 33554432)
!31 = !DIEnumerator(name: "MSGLEVEL_NEVER", value: 67108864)
!32 = !DIEnumerator(name: "MSGLEVEL_LASTLOG", value: 134217728)
!33 = !DIEnumerator(name: "MSGLEVEL_HIDDEN", value: 268435456)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !35, line: 4, size: 32, align: 32, elements: !36)
!35 = !DIFile(filename: "../../src/lib-config/iconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!36 = !{!37, !38, !39, !40, !41}
!37 = !DIEnumerator(name: "NODE_TYPE_KEY", value: 0)
!38 = !DIEnumerator(name: "NODE_TYPE_VALUE", value: 1)
!39 = !DIEnumerator(name: "NODE_TYPE_BLOCK", value: 2)
!40 = !DIEnumerator(name: "NODE_TYPE_LIST", value: 3)
!41 = !DIEnumerator(name: "NODE_TYPE_COMMENT", value: 4)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !43, line: 14, size: 32, align: 32, elements: !44)
!43 = !DIFile(filename: "../../src/fe-common/core/fe-windows.h", directory: "/home/lichi/Desktop/irssi/task1")
!44 = !{!45, !46, !47, !48, !49}
!45 = !DIEnumerator(name: "MAIN_WINDOW_TYPE_NONE", value: -1)
!46 = !DIEnumerator(name: "MAIN_WINDOW_TYPE_DEFAULT", value: 0)
!47 = !DIEnumerator(name: "MAIN_WINDOW_TYPE_HIDDEN", value: 1)
!48 = !DIEnumerator(name: "MAIN_WINDOW_TYPE_SPLIT", value: 2)
!49 = !DIEnumerator(name: "MAIN_WINDOW_TYPE_RSPLIT", value: 3)
!50 = !{!51, !58, !59, !277, !281, !90, !282, !283}
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !52, line: 9, baseType: !53)
!52 = !DIFile(filename: "../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DISubroutineType(types: !55)
!55 = !{null, !56, !56, !56, !56, !56, !56}
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "GUI_WINDOW_REC", file: !61, line: 24, baseType: !62)
!61 = !DIFile(filename: "gui-windows.h", directory: "/home/lichi/Desktop/irssi/task1")
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !61, line: 13, size: 320, align: 64, elements: !63)
!63 = !{!64, !189, !271, !272, !273, !274, !275, !276}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !62, file: !61, line: 14, baseType: !65, size: 64, align: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "MAIN_WINDOW_REC", file: !67, line: 34, baseType: !68)
!67 = !DIFile(filename: "mainwindows.h", directory: "/home/lichi/Desktop/irssi/task1")
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !67, line: 16, size: 704, align: 64, elements: !69)
!69 = !{!70, !168, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !68, file: !67, line: 17, baseType: !71, size: 64, align: 64)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "WINDOW_REC", file: !73, line: 117, baseType: !74)
!73 = !DIFile(filename: "../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WINDOW_REC", file: !43, line: 28, size: 1280, align: 64, elements: !75)
!75 = !{!76, !78, !81, !82, !83, !93, !132, !133, !134, !135, !136, !137, !139, !140, !141, !160, !161, !162, !163, !164, !165, !166, !167}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "refnum", scope: !74, file: !43, line: 29, baseType: !77, size: 32, align: 32)
!77 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !74, file: !43, line: 30, baseType: !79, size: 64, align: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!80 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !74, file: !43, line: 32, baseType: !77, size: 32, align: 32, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !74, file: !43, line: 32, baseType: !77, size: 32, align: 32, offset: 160)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !74, file: !43, line: 34, baseType: !84, size: 64, align: 64, offset: 192)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !86, line: 37, baseType: !87)
!86 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !86, line: 39, size: 128, align: 64, elements: !88)
!88 = !{!89, !92}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !87, file: !86, line: 41, baseType: !90, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !91, line: 77, baseType: !58)
!91 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!92 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !87, file: !86, line: 42, baseType: !84, size: 64, align: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !74, file: !43, line: 35, baseType: !94, size: 64, align: 64, offset: 256)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !73, line: 108, baseType: !96)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !97, line: 5, size: 704, align: 64, elements: !98)
!97 = !DIFile(filename: "../../src/core/window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!98 = !{!99, !101, !102, !107, !108, !112, !113, !114, !120, !121, !122, !126}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !96, file: !100, line: 3, baseType: !77, size: 32, align: 32)
!100 = !DIFile(filename: "../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!101 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !96, file: !100, line: 4, baseType: !77, size: 32, align: 32, offset: 32)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !96, file: !100, line: 5, baseType: !103, size: 64, align: 64, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, align: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !105, line: 37, baseType: !106)
!105 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!106 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !105, line: 37, flags: DIFlagFwdDecl)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !96, file: !100, line: 7, baseType: !58, size: 64, align: 64, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !96, file: !100, line: 8, baseType: !109, size: 64, align: 64, offset: 192)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !73, line: 107, baseType: !111)
!111 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !73, line: 107, flags: DIFlagFwdDecl)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !96, file: !100, line: 9, baseType: !79, size: 64, align: 64, offset: 256)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !96, file: !100, line: 10, baseType: !79, size: 64, align: 64, offset: 320)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !96, file: !100, line: 11, baseType: !115, size: 64, align: 64, offset: 384)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !116, line: 75, baseType: !117)
!116 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !118, line: 139, baseType: !119)
!118 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!119 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !96, file: !100, line: 12, baseType: !77, size: 32, align: 32, offset: 448)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !96, file: !100, line: 13, baseType: !79, size: 64, align: 64, offset: 512)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !96, file: !100, line: 15, baseType: !123, size: 64, align: 64, offset: 576)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, align: 64)
!124 = !DISubroutineType(types: !125)
!125 = !{null, !94}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !96, file: !100, line: 17, baseType: !127, size: 64, align: 64, offset: 640)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!128 = !DISubroutineType(types: !129)
!129 = !{!130, !94}
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "active_server", scope: !74, file: !43, line: 36, baseType: !109, size: 64, align: 64, offset: 320)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "connect_server", scope: !74, file: !43, line: 37, baseType: !109, size: 64, align: 64, offset: 384)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !74, file: !43, line: 38, baseType: !79, size: 64, align: 64, offset: 448)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !74, file: !43, line: 40, baseType: !77, size: 32, align: 32, offset: 512)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "bound_items", scope: !74, file: !43, line: 41, baseType: !84, size: 64, align: 64, offset: 576)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "immortal", scope: !74, file: !43, line: 43, baseType: !138, size: 1, align: 32, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!138 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "sticky_refnum", scope: !74, file: !43, line: 44, baseType: !138, size: 1, align: 32, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !74, file: !43, line: 45, baseType: !138, size: 1, align: 32, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !74, file: !43, line: 48, baseType: !142, size: 64, align: 64, offset: 704)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64, align: 64)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "HISTORY_REC", file: !144, line: 14, baseType: !145)
!144 = !DIFile(filename: "../../src/fe-common/core/command-history.h", directory: "/home/lichi/Desktop/irssi/task1")
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !144, line: 6, size: 256, align: 64, elements: !146)
!146 = !{!147, !148, !157, !158, !159}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !145, file: !144, line: 7, baseType: !79, size: 64, align: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !145, file: !144, line: 9, baseType: !149, size: 64, align: 64, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "GList", file: !151, line: 37, baseType: !152)
!151 = !DIFile(filename: "/usr/include/glib-2.0/glib/glist.h", directory: "/home/lichi/Desktop/irssi/task1")
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GList", file: !151, line: 39, size: 192, align: 64, elements: !153)
!153 = !{!154, !155, !156}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !152, file: !151, line: 41, baseType: !90, size: 64, align: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !152, file: !151, line: 42, baseType: !149, size: 64, align: 64, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !152, file: !151, line: 43, baseType: !149, size: 64, align: 64, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !145, file: !144, line: 10, baseType: !77, size: 32, align: 32, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !145, file: !144, line: 12, baseType: !77, size: 32, align: 32, offset: 160)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "redo", scope: !145, file: !144, line: 13, baseType: !77, size: 1, align: 32, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "history_name", scope: !74, file: !43, line: 49, baseType: !79, size: 64, align: 64, offset: 768)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !74, file: !43, line: 51, baseType: !77, size: 32, align: 32, offset: 832)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !74, file: !43, line: 52, baseType: !79, size: 64, align: 64, offset: 896)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "last_timestamp", scope: !74, file: !43, line: 54, baseType: !115, size: 64, align: 64, offset: 960)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "last_line", scope: !74, file: !43, line: 55, baseType: !115, size: 64, align: 64, offset: 1024)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "theme_name", scope: !74, file: !43, line: 57, baseType: !79, size: 64, align: 64, offset: 1088)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "theme", scope: !74, file: !43, line: 58, baseType: !58, size: 64, align: 64, offset: 1152)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "gui_data", scope: !74, file: !43, line: 60, baseType: !58, size: 64, align: 64, offset: 1216)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "screen_win", scope: !68, file: !67, line: 19, baseType: !169, size: 64, align: 64, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64, align: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "TERM_WINDOW", file: !171, line: 4, baseType: !172)
!171 = !DIFile(filename: "term.h", directory: "/home/lichi/Desktop/irssi/task1")
!172 = !DICompositeType(tag: DW_TAG_structure_type, name: "_TERM_WINDOW", file: !171, line: 4, flags: DIFlagFwdDecl)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "sticky_windows", scope: !68, file: !67, line: 20, baseType: !77, size: 32, align: 32, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "first_line", scope: !68, file: !67, line: 22, baseType: !77, size: 32, align: 32, offset: 160)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "last_line", scope: !68, file: !67, line: 22, baseType: !77, size: 32, align: 32, offset: 192)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "first_column", scope: !68, file: !67, line: 23, baseType: !77, size: 32, align: 32, offset: 224)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "last_column", scope: !68, file: !67, line: 23, baseType: !77, size: 32, align: 32, offset: 256)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !68, file: !67, line: 24, baseType: !77, size: 32, align: 32, offset: 288)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !68, file: !67, line: 24, baseType: !77, size: 32, align: 32, offset: 320)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "statusbars", scope: !68, file: !67, line: 26, baseType: !84, size: 64, align: 64, offset: 384)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_lines_top", scope: !68, file: !67, line: 27, baseType: !77, size: 32, align: 32, offset: 448)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_lines_bottom", scope: !68, file: !67, line: 27, baseType: !77, size: 32, align: 32, offset: 480)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_lines", scope: !68, file: !67, line: 28, baseType: !77, size: 32, align: 32, offset: 512)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_columns_left", scope: !68, file: !67, line: 29, baseType: !77, size: 32, align: 32, offset: 544)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_columns_right", scope: !68, file: !67, line: 29, baseType: !77, size: 32, align: 32, offset: 576)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_columns", scope: !68, file: !67, line: 30, baseType: !77, size: 32, align: 32, offset: 608)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !68, file: !67, line: 32, baseType: !138, size: 1, align: 32, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "size_dirty", scope: !68, file: !67, line: 33, baseType: !138, size: 1, align: 32, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "view", scope: !62, file: !61, line: 15, baseType: !190, size: 64, align: 64, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_BUFFER_VIEW_REC", file: !192, line: 7, baseType: !193)
!192 = !DIFile(filename: "textbuffer-view.h", directory: "/home/lichi/Desktop/irssi/task1")
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TEXT_BUFFER_VIEW_REC", file: !192, line: 50, size: 960, align: 64, elements: !194)
!194 = !{!195, !236, !237, !238, !239, !240, !241, !246, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !193, file: !192, line: 51, baseType: !196, size: 64, align: 64)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_BUFFER_REC", file: !198, line: 72, baseType: !199)
!198 = !DIFile(filename: "textbuffer.h", directory: "/home/lichi/Desktop/irssi/task1")
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !198, line: 60, size: 448, align: 64, elements: !200)
!200 = !{!201, !202, !219, !220, !221, !232, !233, !234, !235}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "text_chunks", scope: !199, file: !198, line: 61, baseType: !84, size: 64, align: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "first_line", scope: !199, file: !198, line: 62, baseType: !203, size: 64, align: 64, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, align: 64)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "LINE_REC", file: !198, line: 52, baseType: !205)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_LINE_REC", file: !198, line: 34, size: 320, align: 64, elements: !206)
!206 = !{!207, !209, !210, !213}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !205, file: !198, line: 48, baseType: !208, size: 64, align: 64)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !205, file: !198, line: 48, baseType: !208, size: 64, align: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !205, file: !198, line: 50, baseType: !211, size: 64, align: 64, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64, align: 64)
!212 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !205, file: !198, line: 51, baseType: !214, size: 128, align: 64, offset: 192)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "LINE_INFO_REC", file: !198, line: 32, baseType: !215)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !198, line: 29, size: 128, align: 64, elements: !216)
!216 = !{!217, !218}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !215, file: !198, line: 30, baseType: !77, size: 32, align: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !215, file: !198, line: 31, baseType: !115, size: 64, align: 64, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "lines_count", scope: !199, file: !198, line: 63, baseType: !77, size: 32, align: 32, offset: 128)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "cur_line", scope: !199, file: !198, line: 65, baseType: !203, size: 64, align: 64, offset: 192)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "cur_text", scope: !199, file: !198, line: 66, baseType: !222, size: 64, align: 64, offset: 256)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, align: 64)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_CHUNK_REC", file: !198, line: 58, baseType: !224)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !198, line: 54, size: 131008, align: 32, elements: !225)
!225 = !{!226, !230, !231}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !224, file: !198, line: 55, baseType: !227, size: 130944, align: 8)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 130944, align: 8, elements: !228)
!228 = !{!229}
!229 = !DISubrange(count: 16368)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !224, file: !198, line: 56, baseType: !77, size: 32, align: 32, offset: 130944)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !224, file: !198, line: 57, baseType: !77, size: 32, align: 32, offset: 130976)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "last_fg", scope: !199, file: !198, line: 68, baseType: !77, size: 32, align: 32, offset: 320)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "last_bg", scope: !199, file: !198, line: 69, baseType: !77, size: 32, align: 32, offset: 352)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "last_flags", scope: !199, file: !198, line: 70, baseType: !77, size: 32, align: 32, offset: 384)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "last_eol", scope: !199, file: !198, line: 71, baseType: !138, size: 1, align: 32, offset: 416, flags: DIFlagBitField, extraData: i64 416)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "siblings", scope: !193, file: !192, line: 53, baseType: !84, size: 64, align: 64, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !193, file: !192, line: 55, baseType: !169, size: 64, align: 64, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !193, file: !192, line: 56, baseType: !77, size: 32, align: 32, offset: 192)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !193, file: !192, line: 56, baseType: !77, size: 32, align: 32, offset: 224)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "default_indent", scope: !193, file: !192, line: 58, baseType: !77, size: 32, align: 32, offset: 256)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "default_indent_func", scope: !193, file: !192, line: 59, baseType: !242, size: 64, align: 64, offset: 320)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "INDENT_FUNC", file: !192, line: 10, baseType: !243)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64, align: 64)
!244 = !DISubroutineType(types: !245)
!245 = !{!77, !190, !203, !77}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !193, file: !192, line: 61, baseType: !247, size: 64, align: 64, offset: 384)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_BUFFER_CACHE_REC", file: !192, line: 48, baseType: !249)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !192, line: 37, size: 192, align: 64, elements: !250)
!250 = !{!251, !252, !253, !254, !255}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !249, file: !192, line: 38, baseType: !77, size: 32, align: 32)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !249, file: !192, line: 39, baseType: !77, size: 32, align: 32, offset: 32)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "line_cache", scope: !249, file: !192, line: 41, baseType: !103, size: 64, align: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "update_counter", scope: !249, file: !192, line: 45, baseType: !212, size: 8, align: 8, offset: 128)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "last_linecount", scope: !249, file: !192, line: 47, baseType: !77, size: 32, align: 32, offset: 160)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "ypos", scope: !193, file: !192, line: 63, baseType: !77, size: 32, align: 32, offset: 448)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "startline", scope: !193, file: !192, line: 66, baseType: !203, size: 64, align: 64, offset: 512)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "subline", scope: !193, file: !192, line: 68, baseType: !77, size: 32, align: 32, offset: 576)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_startline", scope: !193, file: !192, line: 71, baseType: !203, size: 64, align: 64, offset: 640)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_subline", scope: !193, file: !192, line: 72, baseType: !77, size: 32, align: 32, offset: 704)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "bookmarks", scope: !193, file: !192, line: 76, baseType: !103, size: 64, align: 64, offset: 768)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "hidden_level", scope: !193, file: !192, line: 79, baseType: !77, size: 32, align: 32, offset: 832)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "empty_linecount", scope: !193, file: !192, line: 82, baseType: !77, size: 32, align: 32, offset: 864)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "longword_noindent", scope: !193, file: !192, line: 84, baseType: !138, size: 1, align: 32, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "scroll", scope: !193, file: !192, line: 86, baseType: !138, size: 1, align: 32, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "utf8", scope: !193, file: !192, line: 88, baseType: !138, size: 1, align: 32, offset: 898, flags: DIFlagBitField, extraData: i64 896)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "break_wide", scope: !193, file: !192, line: 90, baseType: !138, size: 1, align: 32, offset: 899, flags: DIFlagBitField, extraData: i64 896)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "bottom", scope: !193, file: !192, line: 92, baseType: !138, size: 1, align: 32, offset: 900, flags: DIFlagBitField, extraData: i64 896)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "more_text", scope: !193, file: !192, line: 94, baseType: !138, size: 1, align: 32, offset: 901, flags: DIFlagBitField, extraData: i64 896)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !193, file: !192, line: 96, baseType: !138, size: 1, align: 32, offset: 902, flags: DIFlagBitField, extraData: i64 896)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "scroll", scope: !62, file: !61, line: 17, baseType: !138, size: 1, align: 32, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "use_scroll", scope: !62, file: !61, line: 18, baseType: !138, size: 1, align: 32, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "sticky", scope: !62, file: !61, line: 20, baseType: !138, size: 1, align: 32, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "use_insert_after", scope: !62, file: !61, line: 21, baseType: !138, size: 1, align: 32, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "insert_after", scope: !62, file: !61, line: 22, baseType: !203, size: 64, align: 64, offset: 192)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "insert_after_time", scope: !62, file: !61, line: 23, baseType: !115, size: 64, align: 64, offset: 256)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "GFunc", file: !91, line: 88, baseType: !278)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64, align: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{null, !90, !90}
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, align: 64)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !91, line: 48, baseType: !119)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCompareFunc", file: !91, line: 80, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64, align: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{!287, !288, !288}
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !91, line: 49, baseType: !77)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "gconstpointer", file: !91, line: 78, baseType: !56)
!289 = !{i32 2, !"Dwarf Version", i32 4}
!290 = !{i32 2, !"Debug Info Version", i32 3}
!291 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!292 = distinct !DISubprogram(name: "mainwindows_layout_init", scope: !293, file: !293, line: 311, type: !294, isLocal: false, isDefinition: true, scopeLine: 312, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!293 = !DIFile(filename: "mainwindows-layout.c", directory: "/home/lichi/Desktop/irssi/task1")
!294 = !DISubroutineType(types: !295)
!295 = !{null}
!296 = !{}
!297 = !DILocation(line: 313, column: 2, scope: !292)
!298 = !DILocation(line: 314, column: 2, scope: !292)
!299 = !DILocation(line: 315, column: 2, scope: !292)
!300 = !DILocation(line: 316, column: 2, scope: !292)
!301 = !DILocation(line: 317, column: 2, scope: !292)
!302 = !DILocation(line: 318, column: 1, scope: !292)
!303 = distinct !DISubprogram(name: "sig_layout_window_save", scope: !293, file: !293, line: 32, type: !304, isLocal: true, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!304 = !DISubroutineType(types: !305)
!305 = !{null, !71, !306}
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "CONFIG_NODE", file: !35, line: 17, baseType: !308)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CONFIG_NODE", file: !35, line: 20, size: 192, align: 64, elements: !309)
!309 = !{!310, !311, !312}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !308, file: !35, line: 21, baseType: !77, size: 32, align: 32)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !308, file: !35, line: 22, baseType: !79, size: 64, align: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !308, file: !35, line: 23, baseType: !58, size: 64, align: 64, offset: 128)
!313 = !DILocalVariable(name: "window", arg: 1, scope: !303, file: !293, line: 32, type: !71)
!314 = !DIExpression()
!315 = !DILocation(line: 32, column: 48, scope: !303)
!316 = !DILocalVariable(name: "node", arg: 2, scope: !303, file: !293, line: 32, type: !306)
!317 = !DILocation(line: 32, column: 69, scope: !303)
!318 = !DILocalVariable(name: "active", scope: !303, file: !293, line: 34, type: !71)
!319 = !DILocation(line: 34, column: 14, scope: !303)
!320 = !DILocalVariable(name: "gui", scope: !303, file: !293, line: 35, type: !59)
!321 = !DILocation(line: 35, column: 25, scope: !303)
!322 = !DILocation(line: 37, column: 37, scope: !303)
!323 = !DILocation(line: 37, column: 46, scope: !303)
!324 = !DILocation(line: 37, column: 16, scope: !303)
!325 = !DILocation(line: 37, column: 13, scope: !303)
!326 = !DILocation(line: 38, column: 6, scope: !327)
!327 = distinct !DILexicalBlock(scope: !303, file: !293, line: 38, column: 6)
!328 = !DILocation(line: 38, column: 11, scope: !327)
!329 = !DILocation(line: 38, column: 6, scope: !303)
!330 = !DILocation(line: 39, column: 24, scope: !331)
!331 = distinct !DILexicalBlock(scope: !327, file: !293, line: 38, column: 19)
!332 = !DILocation(line: 39, column: 36, scope: !331)
!333 = !DILocation(line: 39, column: 3, scope: !331)
!334 = !DILocation(line: 40, column: 12, scope: !331)
!335 = !DILocation(line: 40, column: 17, scope: !331)
!336 = !DILocation(line: 40, column: 25, scope: !331)
!337 = !DILocation(line: 40, column: 10, scope: !331)
!338 = !DILocation(line: 41, column: 7, scope: !339)
!339 = distinct !DILexicalBlock(scope: !331, file: !293, line: 41, column: 7)
!340 = !DILocation(line: 41, column: 17, scope: !339)
!341 = !DILocation(line: 41, column: 14, scope: !339)
!342 = !DILocation(line: 41, column: 7, scope: !331)
!343 = !DILocation(line: 42, column: 24, scope: !339)
!344 = !DILocation(line: 42, column: 36, scope: !339)
!345 = !DILocation(line: 42, column: 52, scope: !339)
!346 = !DILocation(line: 42, column: 60, scope: !339)
!347 = !DILocation(line: 42, column: 4, scope: !339)
!348 = !DILocation(line: 43, column: 2, scope: !331)
!349 = !DILocation(line: 45, column: 6, scope: !350)
!350 = distinct !DILexicalBlock(scope: !303, file: !293, line: 45, column: 6)
!351 = !DILocation(line: 45, column: 11, scope: !350)
!352 = !DILocation(line: 45, column: 17, scope: !350)
!353 = !DILocation(line: 45, column: 30, scope: !350)
!354 = !DILocation(line: 45, column: 6, scope: !303)
!355 = !DILocalVariable(name: "level", scope: !356, file: !293, line: 46, type: !79)
!356 = distinct !DILexicalBlock(scope: !350, file: !293, line: 45, column: 50)
!357 = !DILocation(line: 46, column: 9, scope: !356)
!358 = !DILocation(line: 46, column: 28, scope: !356)
!359 = !DILocation(line: 46, column: 33, scope: !356)
!360 = !DILocation(line: 46, column: 39, scope: !356)
!361 = !DILocation(line: 46, column: 17, scope: !356)
!362 = !DILocation(line: 47, column: 23, scope: !356)
!363 = !DILocation(line: 47, column: 35, scope: !356)
!364 = !DILocation(line: 47, column: 54, scope: !356)
!365 = !DILocation(line: 47, column: 3, scope: !356)
!366 = !DILocation(line: 48, column: 10, scope: !356)
!367 = !DILocation(line: 48, column: 3, scope: !356)
!368 = !DILocation(line: 49, column: 2, scope: !356)
!369 = !DILocation(line: 51, column: 6, scope: !370)
!370 = distinct !DILexicalBlock(scope: !303, file: !293, line: 51, column: 6)
!371 = !DILocation(line: 51, column: 11, scope: !370)
!372 = !DILocation(line: 51, column: 6, scope: !303)
!373 = !DILocation(line: 52, column: 38, scope: !370)
!374 = !DILocation(line: 52, column: 50, scope: !370)
!375 = !DILocation(line: 52, column: 66, scope: !370)
!376 = !DILocation(line: 52, column: 71, scope: !370)
!377 = !DILocation(line: 52, column: 17, scope: !370)
!378 = !DILocation(line: 53, column: 1, scope: !303)
!379 = distinct !DISubprogram(name: "sig_layout_window_restore", scope: !293, file: !293, line: 55, type: !304, isLocal: true, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!380 = !DILocalVariable(name: "window", arg: 1, scope: !379, file: !293, line: 55, type: !71)
!381 = !DILocation(line: 55, column: 51, scope: !379)
!382 = !DILocalVariable(name: "node", arg: 2, scope: !379, file: !293, line: 55, type: !306)
!383 = !DILocation(line: 55, column: 72, scope: !379)
!384 = !DILocalVariable(name: "parent", scope: !379, file: !293, line: 57, type: !71)
!385 = !DILocation(line: 57, column: 14, scope: !379)
!386 = !DILocalVariable(name: "gui", scope: !379, file: !293, line: 58, type: !59)
!387 = !DILocation(line: 58, column: 18, scope: !379)
!388 = !DILocation(line: 60, column: 30, scope: !379)
!389 = !DILocation(line: 60, column: 39, scope: !379)
!390 = !DILocation(line: 60, column: 9, scope: !379)
!391 = !DILocation(line: 60, column: 6, scope: !379)
!392 = !DILocation(line: 62, column: 50, scope: !379)
!393 = !DILocation(line: 62, column: 30, scope: !379)
!394 = !DILocation(line: 62, column: 11, scope: !395)
!395 = !DILexicalBlockFile(scope: !379, file: !293, discriminator: 1)
!396 = !DILocation(line: 62, column: 9, scope: !379)
!397 = !DILocation(line: 63, column: 6, scope: !398)
!398 = distinct !DILexicalBlock(scope: !379, file: !293, line: 63, column: 6)
!399 = !DILocation(line: 63, column: 13, scope: !398)
!400 = !DILocation(line: 63, column: 6, scope: !379)
!401 = !DILocation(line: 64, column: 23, scope: !398)
!402 = !DILocation(line: 64, column: 54, scope: !398)
!403 = !DILocation(line: 64, column: 63, scope: !398)
!404 = !DILocation(line: 64, column: 33, scope: !398)
!405 = !DILocation(line: 64, column: 75, scope: !398)
!406 = !DILocation(line: 64, column: 3, scope: !398)
!407 = !DILocation(line: 66, column: 27, scope: !408)
!408 = distinct !DILexicalBlock(scope: !379, file: !293, line: 66, column: 6)
!409 = !DILocation(line: 66, column: 6, scope: !408)
!410 = !DILocation(line: 66, column: 6, scope: !379)
!411 = !DILocation(line: 67, column: 25, scope: !408)
!412 = !DILocation(line: 67, column: 3, scope: !408)
!413 = !DILocation(line: 69, column: 35, scope: !379)
!414 = !DILocation(line: 69, column: 40, scope: !379)
!415 = !DILocation(line: 69, column: 77, scope: !379)
!416 = !DILocation(line: 69, column: 57, scope: !379)
!417 = !DILocation(line: 69, column: 46, scope: !395)
!418 = !DILocation(line: 69, column: 2, scope: !419)
!419 = !DILexicalBlockFile(scope: !379, file: !293, discriminator: 2)
!420 = !DILocation(line: 71, column: 26, scope: !421)
!421 = distinct !DILexicalBlock(scope: !379, file: !293, line: 71, column: 6)
!422 = !DILocation(line: 71, column: 6, scope: !421)
!423 = !DILocation(line: 71, column: 47, scope: !421)
!424 = !DILocation(line: 71, column: 6, scope: !379)
!425 = !DILocation(line: 72, column: 3, scope: !426)
!426 = distinct !DILexicalBlock(scope: !421, file: !293, line: 71, column: 56)
!427 = !DILocation(line: 72, column: 8, scope: !426)
!428 = !DILocation(line: 72, column: 19, scope: !426)
!429 = !DILocation(line: 73, column: 38, scope: !426)
!430 = !DILocation(line: 73, column: 17, scope: !426)
!431 = !DILocation(line: 73, column: 3, scope: !426)
!432 = !DILocation(line: 73, column: 8, scope: !426)
!433 = !DILocation(line: 73, column: 15, scope: !426)
!434 = !DILocation(line: 74, column: 30, scope: !426)
!435 = !DILocation(line: 74, column: 35, scope: !426)
!436 = !DILocation(line: 74, column: 41, scope: !426)
!437 = !DILocation(line: 74, column: 46, scope: !426)
!438 = !DILocation(line: 74, column: 3, scope: !426)
!439 = !DILocation(line: 75, column: 2, scope: !426)
!440 = !DILocation(line: 76, column: 1, scope: !379)
!441 = distinct !DISubprogram(name: "sig_layout_save", scope: !293, file: !293, line: 91, type: !294, isLocal: true, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!442 = !DILocalVariable(name: "node", scope: !441, file: !293, line: 93, type: !306)
!443 = !DILocation(line: 93, column: 15, scope: !441)
!444 = !DILocation(line: 95, column: 17, scope: !441)
!445 = !DILocation(line: 95, column: 2, scope: !441)
!446 = !DILocation(line: 96, column: 30, scope: !441)
!447 = !DILocation(line: 96, column: 9, scope: !441)
!448 = !DILocation(line: 96, column: 7, scope: !441)
!449 = !DILocation(line: 98, column: 18, scope: !441)
!450 = !DILocation(line: 98, column: 57, scope: !441)
!451 = !DILocation(line: 98, column: 2, scope: !441)
!452 = !DILocation(line: 99, column: 1, scope: !441)
!453 = distinct !DISubprogram(name: "sig_layout_restore", scope: !293, file: !293, line: 162, type: !294, isLocal: true, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!454 = !DILocalVariable(name: "lower_window", scope: !453, file: !293, line: 164, type: !65)
!455 = !DILocation(line: 164, column: 19, scope: !453)
!456 = !DILocalVariable(name: "window", scope: !453, file: !293, line: 165, type: !71)
!457 = !DILocation(line: 165, column: 14, scope: !453)
!458 = !DILocalVariable(name: "first", scope: !453, file: !293, line: 165, type: !71)
!459 = !DILocation(line: 165, column: 23, scope: !453)
!460 = !DILocalVariable(name: "node", scope: !453, file: !293, line: 166, type: !306)
!461 = !DILocation(line: 166, column: 15, scope: !453)
!462 = !DILocalVariable(name: "tmp", scope: !453, file: !293, line: 167, type: !84)
!463 = !DILocation(line: 167, column: 10, scope: !453)
!464 = !DILocalVariable(name: "sorted_config", scope: !453, file: !293, line: 167, type: !84)
!465 = !DILocation(line: 167, column: 16, scope: !453)
!466 = !DILocalVariable(name: "lines_config", scope: !453, file: !293, line: 167, type: !84)
!467 = !DILocation(line: 167, column: 32, scope: !453)
!468 = !DILocalVariable(name: "avail_height", scope: !453, file: !293, line: 168, type: !77)
!469 = !DILocation(line: 168, column: 6, scope: !453)
!470 = !DILocalVariable(name: "height", scope: !453, file: !293, line: 168, type: !77)
!471 = !DILocation(line: 168, column: 20, scope: !453)
!472 = !DILocalVariable(name: "heights", scope: !453, file: !293, line: 168, type: !281)
!473 = !DILocation(line: 168, column: 29, scope: !453)
!474 = !DILocalVariable(name: "widths", scope: !453, file: !293, line: 168, type: !281)
!475 = !DILocation(line: 168, column: 39, scope: !453)
!476 = !DILocalVariable(name: "max_wins_line", scope: !453, file: !293, line: 168, type: !77)
!477 = !DILocation(line: 168, column: 47, scope: !453)
!478 = !DILocalVariable(name: "i", scope: !453, file: !293, line: 169, type: !77)
!479 = !DILocation(line: 169, column: 6, scope: !453)
!480 = !DILocalVariable(name: "lower_size", scope: !453, file: !293, line: 169, type: !77)
!481 = !DILocation(line: 169, column: 9, scope: !453)
!482 = !DILocalVariable(name: "lines_count", scope: !453, file: !293, line: 169, type: !77)
!483 = !DILocation(line: 169, column: 21, scope: !453)
!484 = !DILocalVariable(name: "columns_count", scope: !453, file: !293, line: 169, type: !77)
!485 = !DILocation(line: 169, column: 34, scope: !453)
!486 = !DILocalVariable(name: "diff", scope: !453, file: !293, line: 169, type: !77)
!487 = !DILocation(line: 169, column: 49, scope: !453)
!488 = !DILocation(line: 171, column: 30, scope: !453)
!489 = !DILocation(line: 171, column: 9, scope: !453)
!490 = !DILocation(line: 171, column: 7, scope: !453)
!491 = !DILocation(line: 172, column: 6, scope: !492)
!492 = distinct !DILexicalBlock(scope: !453, file: !293, line: 172, column: 6)
!493 = !DILocation(line: 172, column: 11, scope: !492)
!494 = !DILocation(line: 172, column: 6, scope: !453)
!495 = !DILocation(line: 172, column: 19, scope: !496)
!496 = !DILexicalBlockFile(scope: !492, file: !293, discriminator: 1)
!497 = !DILocation(line: 174, column: 44, scope: !453)
!498 = !DILocation(line: 174, column: 18, scope: !453)
!499 = !DILocation(line: 174, column: 16, scope: !453)
!500 = !DILocation(line: 175, column: 6, scope: !501)
!501 = distinct !DILexicalBlock(scope: !453, file: !293, line: 175, column: 6)
!502 = !DILocation(line: 175, column: 20, scope: !501)
!503 = !DILocation(line: 175, column: 6, scope: !453)
!504 = !DILocation(line: 175, column: 28, scope: !505)
!505 = !DILexicalBlockFile(scope: !501, file: !293, discriminator: 1)
!506 = !DILocation(line: 177, column: 48, scope: !453)
!507 = !DILocation(line: 177, column: 17, scope: !453)
!508 = !DILocation(line: 177, column: 15, scope: !453)
!509 = !DILocation(line: 178, column: 31, scope: !453)
!510 = !DILocation(line: 178, column: 16, scope: !453)
!511 = !DILocation(line: 178, column: 14, scope: !453)
!512 = !DILocation(line: 181, column: 17, scope: !453)
!513 = !DILocation(line: 182, column: 3, scope: !453)
!514 = !DILocation(line: 181, column: 29, scope: !453)
!515 = !DILocation(line: 182, column: 25, scope: !453)
!516 = !DILocation(line: 182, column: 23, scope: !453)
!517 = !DILocation(line: 181, column: 15, scope: !453)
!518 = !DILocation(line: 183, column: 9, scope: !453)
!519 = !DILocation(line: 184, column: 35, scope: !453)
!520 = !DILocation(line: 184, column: 34, scope: !453)
!521 = !DILocation(line: 184, column: 21, scope: !453)
!522 = !DILocation(line: 184, column: 13, scope: !453)
!523 = !DILocation(line: 184, column: 10, scope: !453)
!524 = !DILocation(line: 185, column: 9, scope: !525)
!525 = distinct !DILexicalBlock(scope: !453, file: !293, line: 185, column: 2)
!526 = !DILocation(line: 185, column: 20, scope: !525)
!527 = !DILocation(line: 185, column: 18, scope: !525)
!528 = !DILocation(line: 185, column: 7, scope: !525)
!529 = !DILocation(line: 185, column: 34, scope: !530)
!530 = !DILexicalBlockFile(scope: !531, file: !293, discriminator: 1)
!531 = distinct !DILexicalBlock(scope: !525, file: !293, line: 185, column: 2)
!532 = !DILocation(line: 185, column: 38, scope: !530)
!533 = !DILocation(line: 185, column: 2, scope: !530)
!534 = !DILocalVariable(name: "node", scope: !535, file: !293, line: 186, type: !306)
!535 = distinct !DILexicalBlock(scope: !531, file: !293, line: 185, column: 68)
!536 = !DILocation(line: 186, column: 16, scope: !535)
!537 = !DILocation(line: 186, column: 23, scope: !535)
!538 = !DILocation(line: 186, column: 28, scope: !535)
!539 = !DILocation(line: 188, column: 36, scope: !535)
!540 = !DILocation(line: 188, column: 16, scope: !535)
!541 = !DILocation(line: 188, column: 11, scope: !535)
!542 = !DILocation(line: 188, column: 3, scope: !535)
!543 = !DILocation(line: 188, column: 14, scope: !535)
!544 = !DILocation(line: 189, column: 21, scope: !535)
!545 = !DILocation(line: 189, column: 13, scope: !535)
!546 = !DILocation(line: 189, column: 10, scope: !535)
!547 = !DILocation(line: 190, column: 2, scope: !535)
!548 = !DILocation(line: 185, column: 52, scope: !549)
!549 = !DILexicalBlockFile(scope: !531, file: !293, discriminator: 2)
!550 = !DILocation(line: 185, column: 57, scope: !549)
!551 = !DILocation(line: 185, column: 50, scope: !549)
!552 = !DILocation(line: 185, column: 64, scope: !549)
!553 = !DILocation(line: 185, column: 2, scope: !549)
!554 = distinct !{!554, !555}
!555 = !DILocation(line: 185, column: 2, scope: !453)
!556 = !DILocation(line: 192, column: 19, scope: !453)
!557 = !DILocation(line: 192, column: 30, scope: !453)
!558 = !DILocation(line: 192, column: 35, scope: !453)
!559 = !DILocation(line: 192, column: 16, scope: !453)
!560 = !DILocation(line: 193, column: 6, scope: !561)
!561 = distinct !DILexicalBlock(scope: !453, file: !293, line: 193, column: 6)
!562 = !DILocation(line: 193, column: 20, scope: !561)
!563 = !DILocation(line: 193, column: 6, scope: !453)
!564 = !DILocation(line: 194, column: 17, scope: !561)
!565 = !DILocation(line: 194, column: 3, scope: !561)
!566 = !DILocation(line: 196, column: 6, scope: !567)
!567 = distinct !DILexicalBlock(scope: !453, file: !293, line: 196, column: 6)
!568 = !DILocation(line: 196, column: 19, scope: !567)
!569 = !DILocation(line: 196, column: 6, scope: !453)
!570 = !DILocation(line: 199, column: 15, scope: !571)
!571 = distinct !DILexicalBlock(scope: !567, file: !293, line: 196, column: 31)
!572 = !DILocation(line: 200, column: 16, scope: !571)
!573 = !DILocation(line: 200, column: 3, scope: !571)
!574 = !DILocation(line: 200, column: 14, scope: !571)
!575 = !DILocation(line: 201, column: 2, scope: !571)
!576 = !DILocation(line: 201, column: 13, scope: !577)
!577 = !DILexicalBlockFile(scope: !578, file: !293, discriminator: 1)
!578 = distinct !DILexicalBlock(scope: !567, file: !293, line: 201, column: 13)
!579 = !DILocation(line: 201, column: 23, scope: !577)
!580 = !DILocation(line: 201, column: 20, scope: !577)
!581 = !DILocation(line: 204, column: 3, scope: !582)
!582 = distinct !DILexicalBlock(scope: !578, file: !293, line: 201, column: 37)
!583 = !DILocation(line: 204, column: 10, scope: !584)
!584 = !DILexicalBlockFile(scope: !582, file: !293, discriminator: 1)
!585 = !DILocation(line: 204, column: 19, scope: !584)
!586 = !DILocation(line: 204, column: 17, scope: !584)
!587 = !DILocation(line: 204, column: 32, scope: !584)
!588 = !DILocation(line: 205, column: 10, scope: !582)
!589 = !DILocation(line: 205, column: 21, scope: !582)
!590 = !DILocation(line: 205, column: 31, scope: !582)
!591 = !DILocation(line: 205, column: 29, scope: !582)
!592 = !DILocation(line: 204, column: 3, scope: !593)
!593 = !DILexicalBlockFile(scope: !582, file: !293, discriminator: 2)
!594 = !DILocation(line: 208, column: 15, scope: !595)
!595 = distinct !DILexicalBlock(scope: !582, file: !293, line: 205, column: 45)
!596 = !DILocation(line: 204, column: 3, scope: !597)
!597 = !DILexicalBlockFile(scope: !582, file: !293, discriminator: 3)
!598 = distinct !{!598, !581}
!599 = !DILocation(line: 212, column: 10, scope: !600)
!600 = distinct !DILexicalBlock(scope: !582, file: !293, line: 212, column: 3)
!601 = !DILocation(line: 212, column: 8, scope: !600)
!602 = !DILocation(line: 212, column: 15, scope: !603)
!603 = !DILexicalBlockFile(scope: !604, file: !293, discriminator: 1)
!604 = distinct !DILexicalBlock(scope: !600, file: !293, line: 212, column: 3)
!605 = !DILocation(line: 212, column: 19, scope: !603)
!606 = !DILocation(line: 212, column: 17, scope: !603)
!607 = !DILocation(line: 212, column: 3, scope: !603)
!608 = !DILocalVariable(name: "size", scope: !609, file: !293, line: 213, type: !77)
!609 = distinct !DILexicalBlock(scope: !604, file: !293, line: 212, column: 37)
!610 = !DILocation(line: 213, column: 8, scope: !609)
!611 = !DILocation(line: 213, column: 15, scope: !609)
!612 = !DILocation(line: 213, column: 36, scope: !609)
!613 = !DILocation(line: 213, column: 28, scope: !609)
!614 = !DILocation(line: 213, column: 27, scope: !609)
!615 = !DILocation(line: 213, column: 39, scope: !609)
!616 = !DILocation(line: 213, column: 38, scope: !609)
!617 = !DILocation(line: 214, column: 8, scope: !618)
!618 = distinct !DILexicalBlock(scope: !609, file: !293, line: 214, column: 8)
!619 = !DILocation(line: 214, column: 13, scope: !618)
!620 = !DILocation(line: 214, column: 8, scope: !609)
!621 = !DILocation(line: 215, column: 10, scope: !618)
!622 = !DILocation(line: 215, column: 5, scope: !618)
!623 = !DILocation(line: 216, column: 17, scope: !609)
!624 = !DILocation(line: 216, column: 12, scope: !609)
!625 = !DILocation(line: 216, column: 4, scope: !609)
!626 = !DILocation(line: 216, column: 15, scope: !609)
!627 = !DILocation(line: 217, column: 3, scope: !609)
!628 = !DILocation(line: 212, column: 33, scope: !629)
!629 = !DILexicalBlockFile(scope: !604, file: !293, discriminator: 2)
!630 = !DILocation(line: 212, column: 3, scope: !629)
!631 = distinct !{!631, !632}
!632 = !DILocation(line: 212, column: 3, scope: !582)
!633 = !DILocation(line: 220, column: 10, scope: !582)
!634 = !DILocation(line: 221, column: 10, scope: !635)
!635 = distinct !DILexicalBlock(scope: !582, file: !293, line: 221, column: 3)
!636 = !DILocation(line: 221, column: 8, scope: !635)
!637 = !DILocation(line: 221, column: 15, scope: !638)
!638 = !DILexicalBlockFile(scope: !639, file: !293, discriminator: 1)
!639 = distinct !DILexicalBlock(scope: !635, file: !293, line: 221, column: 3)
!640 = !DILocation(line: 221, column: 19, scope: !638)
!641 = !DILocation(line: 221, column: 17, scope: !638)
!642 = !DILocation(line: 221, column: 3, scope: !638)
!643 = !DILocation(line: 222, column: 22, scope: !639)
!644 = !DILocation(line: 222, column: 14, scope: !639)
!645 = !DILocation(line: 222, column: 11, scope: !639)
!646 = !DILocation(line: 222, column: 4, scope: !639)
!647 = !DILocation(line: 221, column: 33, scope: !648)
!648 = !DILexicalBlockFile(scope: !639, file: !293, discriminator: 2)
!649 = !DILocation(line: 221, column: 3, scope: !648)
!650 = distinct !{!650, !651}
!651 = !DILocation(line: 221, column: 3, scope: !582)
!652 = !DILocation(line: 224, column: 10, scope: !582)
!653 = !DILocation(line: 224, column: 19, scope: !582)
!654 = !DILocation(line: 224, column: 17, scope: !582)
!655 = !DILocation(line: 224, column: 8, scope: !582)
!656 = !DILocation(line: 225, column: 10, scope: !657)
!657 = distinct !DILexicalBlock(scope: !582, file: !293, line: 225, column: 3)
!658 = !DILocation(line: 225, column: 8, scope: !657)
!659 = !DILocation(line: 225, column: 15, scope: !660)
!660 = !DILexicalBlockFile(scope: !661, file: !293, discriminator: 1)
!661 = distinct !DILexicalBlock(scope: !657, file: !293, line: 225, column: 3)
!662 = !DILocation(line: 225, column: 25, scope: !660)
!663 = !DILocation(line: 225, column: 22, scope: !660)
!664 = !DILocation(line: 225, column: 3, scope: !660)
!665 = !DILocation(line: 226, column: 8, scope: !666)
!666 = distinct !DILexicalBlock(scope: !667, file: !293, line: 226, column: 8)
!667 = distinct !DILexicalBlock(scope: !661, file: !293, line: 225, column: 44)
!668 = !DILocation(line: 226, column: 13, scope: !666)
!669 = !DILocation(line: 226, column: 10, scope: !666)
!670 = !DILocation(line: 226, column: 8, scope: !667)
!671 = !DILocation(line: 227, column: 7, scope: !666)
!672 = !DILocation(line: 227, column: 5, scope: !666)
!673 = !DILocation(line: 229, column: 16, scope: !674)
!674 = distinct !DILexicalBlock(scope: !667, file: !293, line: 229, column: 8)
!675 = !DILocation(line: 229, column: 8, scope: !674)
!676 = !DILocation(line: 229, column: 19, scope: !674)
!677 = !DILocation(line: 229, column: 8, scope: !667)
!678 = !DILocation(line: 230, column: 15, scope: !679)
!679 = distinct !DILexicalBlock(scope: !674, file: !293, line: 229, column: 27)
!680 = !DILocation(line: 230, column: 12, scope: !679)
!681 = !DILocation(line: 231, column: 19, scope: !679)
!682 = !DILocation(line: 231, column: 13, scope: !679)
!683 = !DILocation(line: 231, column: 5, scope: !679)
!684 = !DILocation(line: 231, column: 16, scope: !679)
!685 = !DILocation(line: 232, column: 4, scope: !679)
!686 = !DILocation(line: 233, column: 3, scope: !667)
!687 = !DILocation(line: 225, column: 40, scope: !688)
!688 = !DILexicalBlockFile(scope: !661, file: !293, discriminator: 2)
!689 = !DILocation(line: 225, column: 3, scope: !688)
!690 = distinct !{!690, !691}
!691 = !DILocation(line: 225, column: 3, scope: !582)
!692 = !DILocation(line: 234, column: 2, scope: !582)
!693 = !DILocation(line: 237, column: 15, scope: !453)
!694 = !DILocation(line: 237, column: 33, scope: !453)
!695 = !DILocation(line: 237, column: 44, scope: !453)
!696 = !DILocation(line: 238, column: 9, scope: !697)
!697 = distinct !DILexicalBlock(scope: !453, file: !293, line: 238, column: 2)
!698 = !DILocation(line: 238, column: 20, scope: !697)
!699 = !DILocation(line: 238, column: 18, scope: !697)
!700 = !DILocation(line: 238, column: 7, scope: !697)
!701 = !DILocation(line: 238, column: 34, scope: !702)
!702 = !DILexicalBlockFile(scope: !703, file: !293, discriminator: 1)
!703 = distinct !DILexicalBlock(scope: !697, file: !293, line: 238, column: 2)
!704 = !DILocation(line: 238, column: 38, scope: !702)
!705 = !DILocation(line: 238, column: 36, scope: !702)
!706 = !DILocation(line: 238, column: 2, scope: !702)
!707 = !DILocalVariable(name: "tmp2", scope: !708, file: !293, line: 239, type: !84)
!708 = distinct !DILexicalBlock(scope: !703, file: !293, line: 238, column: 73)
!709 = !DILocation(line: 239, column: 11, scope: !708)
!710 = !DILocalVariable(name: "columns_config", scope: !708, file: !293, line: 239, type: !84)
!711 = !DILocation(line: 239, column: 18, scope: !708)
!712 = !DILocalVariable(name: "line", scope: !708, file: !293, line: 239, type: !84)
!713 = !DILocation(line: 239, column: 35, scope: !708)
!714 = !DILocalVariable(name: "j", scope: !708, file: !293, line: 240, type: !77)
!715 = !DILocation(line: 240, column: 7, scope: !708)
!716 = !DILocalVariable(name: "l1", scope: !708, file: !293, line: 240, type: !77)
!717 = !DILocation(line: 240, column: 10, scope: !708)
!718 = !DILocalVariable(name: "l2", scope: !708, file: !293, line: 240, type: !77)
!719 = !DILocation(line: 240, column: 14, scope: !708)
!720 = !DILocalVariable(name: "node", scope: !708, file: !293, line: 241, type: !306)
!721 = !DILocation(line: 241, column: 16, scope: !708)
!722 = !DILocation(line: 241, column: 23, scope: !708)
!723 = !DILocation(line: 241, column: 28, scope: !708)
!724 = !DILocation(line: 242, column: 7, scope: !725)
!725 = distinct !DILexicalBlock(scope: !708, file: !293, line: 242, column: 7)
!726 = !DILocation(line: 242, column: 13, scope: !725)
!727 = !DILocation(line: 242, column: 17, scope: !725)
!728 = !DILocation(line: 242, column: 7, scope: !708)
!729 = !DILocation(line: 242, column: 25, scope: !730)
!730 = !DILexicalBlockFile(scope: !725, file: !293, discriminator: 1)
!731 = !DILocation(line: 244, column: 28, scope: !708)
!732 = !DILocation(line: 244, column: 8, scope: !708)
!733 = !DILocation(line: 244, column: 6, scope: !708)
!734 = !DILocation(line: 245, column: 8, scope: !708)
!735 = !DILocation(line: 245, column: 33, scope: !708)
!736 = !DILocation(line: 245, column: 13, scope: !708)
!737 = !DILocation(line: 245, column: 11, scope: !708)
!738 = !DILocation(line: 245, column: 51, scope: !708)
!739 = !DILocation(line: 245, column: 6, scope: !708)
!740 = !DILocation(line: 246, column: 53, scope: !708)
!741 = !DILocation(line: 246, column: 68, scope: !708)
!742 = !DILocation(line: 246, column: 72, scope: !708)
!743 = !DILocation(line: 246, column: 20, scope: !708)
!744 = !DILocation(line: 246, column: 18, scope: !708)
!745 = !DILocation(line: 248, column: 10, scope: !708)
!746 = !DILocation(line: 248, column: 31, scope: !708)
!747 = !DILocation(line: 249, column: 35, scope: !708)
!748 = !DILocation(line: 249, column: 34, scope: !708)
!749 = !DILocation(line: 249, column: 21, scope: !708)
!750 = !DILocation(line: 249, column: 13, scope: !708)
!751 = !DILocation(line: 249, column: 10, scope: !708)
!752 = !DILocation(line: 250, column: 10, scope: !753)
!753 = distinct !DILexicalBlock(scope: !708, file: !293, line: 250, column: 3)
!754 = !DILocation(line: 250, column: 22, scope: !753)
!755 = !DILocation(line: 250, column: 20, scope: !753)
!756 = !DILocation(line: 250, column: 8, scope: !753)
!757 = !DILocation(line: 250, column: 38, scope: !758)
!758 = !DILexicalBlockFile(scope: !759, file: !293, discriminator: 1)
!759 = distinct !DILexicalBlock(scope: !753, file: !293, line: 250, column: 3)
!760 = !DILocation(line: 250, column: 42, scope: !758)
!761 = !DILocation(line: 250, column: 40, scope: !758)
!762 = !DILocation(line: 250, column: 56, scope: !758)
!763 = !DILocation(line: 250, column: 59, scope: !764)
!764 = !DILexicalBlockFile(scope: !759, file: !293, discriminator: 2)
!765 = !DILocation(line: 250, column: 64, scope: !764)
!766 = !DILocation(line: 250, column: 3, scope: !767)
!767 = !DILexicalBlockFile(scope: !753, file: !293, discriminator: 3)
!768 = !DILocalVariable(name: "width", scope: !769, file: !293, line: 251, type: !77)
!769 = distinct !DILexicalBlock(scope: !759, file: !293, line: 250, column: 96)
!770 = !DILocation(line: 251, column: 8, scope: !769)
!771 = !DILocalVariable(name: "new_win", scope: !769, file: !293, line: 252, type: !71)
!772 = !DILocation(line: 252, column: 16, scope: !769)
!773 = !DILocalVariable(name: "node2", scope: !769, file: !293, line: 253, type: !306)
!774 = !DILocation(line: 253, column: 17, scope: !769)
!775 = !DILocation(line: 253, column: 25, scope: !769)
!776 = !DILocation(line: 253, column: 31, scope: !769)
!777 = !DILocation(line: 254, column: 8, scope: !778)
!778 = distinct !DILexicalBlock(scope: !769, file: !293, line: 254, column: 8)
!779 = !DILocation(line: 254, column: 15, scope: !778)
!780 = !DILocation(line: 254, column: 19, scope: !778)
!781 = !DILocation(line: 254, column: 8, scope: !769)
!782 = !DILocation(line: 254, column: 27, scope: !783)
!783 = !DILexicalBlockFile(scope: !778, file: !293, discriminator: 1)
!784 = !DILocation(line: 258, column: 30, scope: !769)
!785 = !DILocation(line: 258, column: 37, scope: !769)
!786 = !DILocation(line: 258, column: 21, scope: !769)
!787 = !DILocation(line: 258, column: 10, scope: !769)
!788 = !DILocation(line: 257, column: 4, scope: !769)
!789 = !DILocation(line: 260, column: 14, scope: !769)
!790 = !DILocation(line: 260, column: 12, scope: !769)
!791 = !DILocation(line: 262, column: 22, scope: !769)
!792 = !DILocation(line: 262, column: 36, scope: !769)
!793 = !DILocation(line: 262, column: 43, scope: !769)
!794 = !DILocation(line: 262, column: 31, scope: !769)
!795 = !DILocation(line: 262, column: 4, scope: !796)
!796 = !DILexicalBlockFile(scope: !769, file: !293, discriminator: 1)
!797 = !DILocation(line: 263, column: 32, scope: !769)
!798 = !DILocation(line: 263, column: 12, scope: !769)
!799 = !DILocation(line: 263, column: 10, scope: !769)
!800 = !DILocation(line: 264, column: 16, scope: !769)
!801 = !DILocation(line: 264, column: 11, scope: !769)
!802 = !DILocation(line: 264, column: 4, scope: !769)
!803 = !DILocation(line: 264, column: 14, scope: !769)
!804 = !DILocation(line: 265, column: 21, scope: !769)
!805 = !DILocation(line: 265, column: 30, scope: !769)
!806 = !DILocation(line: 265, column: 37, scope: !769)
!807 = !DILocation(line: 265, column: 27, scope: !769)
!808 = !DILocation(line: 265, column: 18, scope: !769)
!809 = !DILocation(line: 267, column: 8, scope: !810)
!810 = distinct !DILexicalBlock(scope: !769, file: !293, line: 267, column: 8)
!811 = !DILocation(line: 267, column: 15, scope: !810)
!812 = !DILocation(line: 267, column: 8, scope: !769)
!813 = !DILocation(line: 268, column: 14, scope: !810)
!814 = !DILocation(line: 268, column: 12, scope: !810)
!815 = !DILocation(line: 268, column: 5, scope: !810)
!816 = !DILocation(line: 269, column: 8, scope: !817)
!817 = distinct !DILexicalBlock(scope: !769, file: !293, line: 269, column: 8)
!818 = !DILocation(line: 269, column: 14, scope: !817)
!819 = !DILocation(line: 269, column: 8, scope: !769)
!820 = !DILocation(line: 270, column: 13, scope: !817)
!821 = !DILocation(line: 270, column: 11, scope: !817)
!822 = !DILocation(line: 270, column: 5, scope: !817)
!823 = !DILocation(line: 272, column: 22, scope: !769)
!824 = !DILocation(line: 272, column: 4, scope: !769)
!825 = !DILocation(line: 273, column: 44, scope: !769)
!826 = !DILocation(line: 273, column: 54, scope: !769)
!827 = !DILocation(line: 273, column: 23, scope: !769)
!828 = !DILocation(line: 273, column: 66, scope: !769)
!829 = !DILocation(line: 273, column: 19, scope: !769)
!830 = !DILocation(line: 274, column: 3, scope: !769)
!831 = !DILocation(line: 250, column: 79, scope: !832)
!832 = !DILexicalBlockFile(scope: !759, file: !293, discriminator: 4)
!833 = !DILocation(line: 250, column: 85, scope: !832)
!834 = !DILocation(line: 250, column: 77, scope: !832)
!835 = !DILocation(line: 250, column: 92, scope: !832)
!836 = !DILocation(line: 250, column: 3, scope: !832)
!837 = distinct !{!837, !838}
!838 = !DILocation(line: 250, column: 3, scope: !708)
!839 = !DILocation(line: 275, column: 7, scope: !840)
!840 = distinct !DILexicalBlock(scope: !708, file: !293, line: 275, column: 7)
!841 = !DILocation(line: 275, column: 14, scope: !840)
!842 = !DILocation(line: 275, column: 7, scope: !708)
!843 = !DILocation(line: 276, column: 4, scope: !840)
!844 = !DILocation(line: 277, column: 70, scope: !708)
!845 = !DILocation(line: 277, column: 79, scope: !708)
!846 = !DILocation(line: 277, column: 49, scope: !708)
!847 = !DILocation(line: 277, column: 91, scope: !708)
!848 = !DILocation(line: 277, column: 26, scope: !708)
!849 = !DILocation(line: 277, column: 10, scope: !850)
!850 = !DILexicalBlockFile(scope: !708, file: !293, discriminator: 1)
!851 = !DILocation(line: 277, column: 8, scope: !708)
!852 = !DILocation(line: 278, column: 27, scope: !853)
!853 = distinct !DILexicalBlock(scope: !708, file: !293, line: 278, column: 3)
!854 = !DILocation(line: 278, column: 12, scope: !853)
!855 = !DILocation(line: 278, column: 10, scope: !853)
!856 = !DILocation(line: 278, column: 41, scope: !853)
!857 = !DILocation(line: 278, column: 39, scope: !853)
!858 = !DILocation(line: 278, column: 8, scope: !853)
!859 = !DILocation(line: 278, column: 47, scope: !860)
!860 = !DILexicalBlockFile(scope: !861, file: !293, discriminator: 1)
!861 = distinct !DILexicalBlock(scope: !853, file: !293, line: 278, column: 3)
!862 = !DILocation(line: 278, column: 52, scope: !860)
!863 = !DILocation(line: 278, column: 3, scope: !860)
!864 = !DILocalVariable(name: "width", scope: !865, file: !293, line: 279, type: !77)
!865 = distinct !DILexicalBlock(scope: !861, file: !293, line: 278, column: 84)
!866 = !DILocation(line: 279, column: 8, scope: !865)
!867 = !DILocation(line: 279, column: 33, scope: !865)
!868 = !DILocation(line: 279, column: 34, scope: !865)
!869 = !DILocation(line: 279, column: 26, scope: !865)
!870 = !DILocation(line: 279, column: 40, scope: !865)
!871 = !DILocation(line: 279, column: 38, scope: !865)
!872 = !DILocation(line: 279, column: 53, scope: !865)
!873 = !DILocation(line: 279, column: 51, scope: !865)
!874 = !DILocation(line: 279, column: 23, scope: !865)
!875 = !DILocation(line: 279, column: 17, scope: !865)
!876 = !DILocation(line: 279, column: 17, scope: !877)
!877 = !DILexicalBlockFile(scope: !865, file: !293, discriminator: 1)
!878 = !DILocation(line: 279, column: 86, scope: !879)
!879 = !DILexicalBlockFile(scope: !865, file: !293, discriminator: 2)
!880 = !DILocation(line: 279, column: 87, scope: !879)
!881 = !DILocation(line: 279, column: 79, scope: !879)
!882 = !DILocation(line: 279, column: 93, scope: !879)
!883 = !DILocation(line: 279, column: 91, scope: !879)
!884 = !DILocation(line: 279, column: 106, scope: !879)
!885 = !DILocation(line: 279, column: 104, scope: !879)
!886 = !DILocation(line: 279, column: 17, scope: !879)
!887 = !DILocation(line: 279, column: 17, scope: !888)
!888 = !DILexicalBlockFile(scope: !865, file: !293, discriminator: 3)
!889 = !DILocation(line: 279, column: 8, scope: !888)
!890 = !DILocalVariable(name: "rec", scope: !865, file: !293, line: 280, type: !65)
!891 = !DILocation(line: 280, column: 21, scope: !865)
!892 = !DILocation(line: 280, column: 27, scope: !865)
!893 = !DILocation(line: 280, column: 33, scope: !865)
!894 = !DILocation(line: 281, column: 25, scope: !865)
!895 = !DILocation(line: 281, column: 30, scope: !865)
!896 = !DILocation(line: 281, column: 4, scope: !865)
!897 = !DILocation(line: 282, column: 3, scope: !865)
!898 = !DILocation(line: 278, column: 67, scope: !899)
!899 = !DILexicalBlockFile(scope: !861, file: !293, discriminator: 2)
!900 = !DILocation(line: 278, column: 73, scope: !899)
!901 = !DILocation(line: 278, column: 65, scope: !899)
!902 = !DILocation(line: 278, column: 80, scope: !899)
!903 = !DILocation(line: 278, column: 3, scope: !899)
!904 = distinct !{!904, !905}
!905 = !DILocation(line: 278, column: 3, scope: !708)
!906 = !DILocation(line: 283, column: 16, scope: !708)
!907 = !DILocation(line: 283, column: 3, scope: !708)
!908 = !DILocation(line: 284, column: 10, scope: !708)
!909 = !DILocation(line: 284, column: 3, scope: !708)
!910 = !DILocation(line: 286, column: 7, scope: !911)
!911 = distinct !DILexicalBlock(scope: !708, file: !293, line: 286, column: 7)
!912 = !DILocation(line: 286, column: 18, scope: !911)
!913 = !DILocation(line: 286, column: 7, scope: !708)
!914 = !DILocation(line: 287, column: 24, scope: !911)
!915 = !DILocation(line: 287, column: 38, scope: !911)
!916 = !DILocation(line: 287, column: 4, scope: !911)
!917 = !DILocation(line: 289, column: 41, scope: !708)
!918 = !DILocation(line: 289, column: 50, scope: !708)
!919 = !DILocation(line: 289, column: 20, scope: !708)
!920 = !DILocation(line: 289, column: 62, scope: !708)
!921 = !DILocation(line: 289, column: 16, scope: !708)
!922 = !DILocation(line: 290, column: 24, scope: !708)
!923 = !DILocation(line: 290, column: 16, scope: !708)
!924 = !DILocation(line: 290, column: 14, scope: !708)
!925 = !DILocation(line: 291, column: 7, scope: !926)
!926 = distinct !DILexicalBlock(scope: !708, file: !293, line: 291, column: 7)
!927 = !DILocation(line: 291, column: 18, scope: !926)
!928 = !DILocation(line: 291, column: 7, scope: !708)
!929 = !DILocation(line: 292, column: 15, scope: !926)
!930 = !DILocation(line: 292, column: 4, scope: !926)
!931 = !DILocation(line: 293, column: 2, scope: !708)
!932 = !DILocation(line: 238, column: 57, scope: !933)
!933 = !DILexicalBlockFile(scope: !703, file: !293, discriminator: 2)
!934 = !DILocation(line: 238, column: 62, scope: !933)
!935 = !DILocation(line: 238, column: 55, scope: !933)
!936 = !DILocation(line: 238, column: 69, scope: !933)
!937 = !DILocation(line: 238, column: 2, scope: !933)
!938 = distinct !{!938, !939}
!939 = !DILocation(line: 238, column: 2, scope: !453)
!940 = !DILocation(line: 294, column: 15, scope: !453)
!941 = !DILocation(line: 294, column: 2, scope: !453)
!942 = !DILocation(line: 295, column: 9, scope: !453)
!943 = !DILocation(line: 295, column: 2, scope: !453)
!944 = !DILocation(line: 297, column: 6, scope: !945)
!945 = distinct !DILexicalBlock(scope: !453, file: !293, line: 297, column: 6)
!946 = !DILocation(line: 297, column: 17, scope: !945)
!947 = !DILocation(line: 297, column: 6, scope: !453)
!948 = !DILocation(line: 298, column: 23, scope: !945)
!949 = !DILocation(line: 298, column: 37, scope: !945)
!950 = !DILocation(line: 298, column: 3, scope: !945)
!951 = !DILocation(line: 300, column: 6, scope: !952)
!952 = distinct !DILexicalBlock(scope: !453, file: !293, line: 300, column: 6)
!953 = !DILocation(line: 300, column: 12, scope: !952)
!954 = !DILocation(line: 300, column: 6, scope: !453)
!955 = !DILocation(line: 301, column: 21, scope: !956)
!956 = distinct !DILexicalBlock(scope: !952, file: !293, line: 300, column: 20)
!957 = !DILocation(line: 301, column: 3, scope: !956)
!958 = !DILocation(line: 302, column: 43, scope: !956)
!959 = !DILocation(line: 302, column: 51, scope: !956)
!960 = !DILocation(line: 302, column: 22, scope: !956)
!961 = !DILocation(line: 302, column: 63, scope: !956)
!962 = !DILocation(line: 302, column: 18, scope: !956)
!963 = !DILocation(line: 303, column: 2, scope: !956)
!964 = !DILocation(line: 304, column: 1, scope: !453)
!965 = distinct !DISubprogram(name: "sig_layout_reset", scope: !293, file: !293, line: 306, type: !294, isLocal: true, isDefinition: true, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!966 = !DILocation(line: 308, column: 17, scope: !965)
!967 = !DILocation(line: 308, column: 2, scope: !965)
!968 = !DILocation(line: 309, column: 1, scope: !965)
!969 = distinct !DISubprogram(name: "mainwindows_layout_deinit", scope: !293, file: !293, line: 320, type: !294, isLocal: false, isDefinition: true, scopeLine: 321, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!970 = !DILocation(line: 322, column: 2, scope: !969)
!971 = !DILocation(line: 323, column: 2, scope: !969)
!972 = !DILocation(line: 324, column: 2, scope: !969)
!973 = !DILocation(line: 325, column: 2, scope: !969)
!974 = !DILocation(line: 326, column: 2, scope: !969)
!975 = !DILocation(line: 327, column: 1, scope: !969)
!976 = distinct !DISubprogram(name: "main_window_save", scope: !293, file: !293, line: 78, type: !977, isLocal: true, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!977 = !DISubroutineType(types: !978)
!978 = !{null, !65, !306}
!979 = !DILocalVariable(name: "window", arg: 1, scope: !976, file: !293, line: 78, type: !65)
!980 = !DILocation(line: 78, column: 47, scope: !976)
!981 = !DILocalVariable(name: "node", arg: 2, scope: !976, file: !293, line: 78, type: !306)
!982 = !DILocation(line: 78, column: 68, scope: !976)
!983 = !DILocalVariable(name: "num", scope: !976, file: !293, line: 80, type: !984)
!984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 96, align: 8, elements: !985)
!985 = !{!986}
!986 = !DISubrange(count: 12)
!987 = !DILocation(line: 80, column: 14, scope: !976)
!988 = !DILocation(line: 82, column: 20, scope: !976)
!989 = !DILocation(line: 82, column: 44, scope: !976)
!990 = !DILocation(line: 82, column: 52, scope: !976)
!991 = !DILocation(line: 82, column: 60, scope: !976)
!992 = !DILocation(line: 82, column: 9, scope: !976)
!993 = !DILocation(line: 83, column: 29, scope: !976)
!994 = !DILocation(line: 83, column: 41, scope: !976)
!995 = !DILocation(line: 83, column: 47, scope: !976)
!996 = !DILocation(line: 83, column: 9, scope: !976)
!997 = !DILocation(line: 83, column: 7, scope: !976)
!998 = !DILocation(line: 85, column: 22, scope: !976)
!999 = !DILocation(line: 85, column: 34, scope: !976)
!1000 = !DILocation(line: 85, column: 54, scope: !976)
!1001 = !DILocation(line: 85, column: 62, scope: !976)
!1002 = !DILocation(line: 85, column: 2, scope: !976)
!1003 = !DILocation(line: 86, column: 22, scope: !976)
!1004 = !DILocation(line: 86, column: 34, scope: !976)
!1005 = !DILocation(line: 86, column: 49, scope: !976)
!1006 = !DILocation(line: 86, column: 57, scope: !976)
!1007 = !DILocation(line: 86, column: 2, scope: !976)
!1008 = !DILocation(line: 87, column: 22, scope: !976)
!1009 = !DILocation(line: 87, column: 34, scope: !976)
!1010 = !DILocation(line: 87, column: 56, scope: !976)
!1011 = !DILocation(line: 87, column: 64, scope: !976)
!1012 = !DILocation(line: 87, column: 2, scope: !976)
!1013 = !DILocation(line: 88, column: 22, scope: !976)
!1014 = !DILocation(line: 88, column: 34, scope: !976)
!1015 = !DILocation(line: 88, column: 51, scope: !976)
!1016 = !DILocation(line: 88, column: 59, scope: !976)
!1017 = !DILocation(line: 88, column: 2, scope: !976)
!1018 = !DILocation(line: 89, column: 1, scope: !976)
!1019 = distinct !DISubprogram(name: "get_sorted_windows_config", scope: !293, file: !293, line: 117, type: !1020, isLocal: true, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!84, !306}
!1022 = !DILocalVariable(name: "node", arg: 1, scope: !1019, file: !293, line: 117, type: !306)
!1023 = !DILocation(line: 117, column: 55, scope: !1019)
!1024 = !DILocalVariable(name: "tmp", scope: !1019, file: !293, line: 119, type: !84)
!1025 = !DILocation(line: 119, column: 10, scope: !1019)
!1026 = !DILocalVariable(name: "output", scope: !1019, file: !293, line: 119, type: !84)
!1027 = !DILocation(line: 119, column: 16, scope: !1019)
!1028 = !DILocation(line: 121, column: 16, scope: !1019)
!1029 = !DILocation(line: 122, column: 26, scope: !1019)
!1030 = !DILocation(line: 122, column: 32, scope: !1019)
!1031 = !DILocation(line: 122, column: 8, scope: !1019)
!1032 = !DILocation(line: 122, column: 6, scope: !1019)
!1033 = !DILocation(line: 123, column: 2, scope: !1019)
!1034 = !DILocation(line: 123, column: 9, scope: !1035)
!1035 = !DILexicalBlockFile(scope: !1036, file: !293, discriminator: 1)
!1036 = distinct !DILexicalBlock(scope: !1037, file: !293, line: 123, column: 2)
!1037 = distinct !DILexicalBlock(scope: !1019, file: !293, line: 123, column: 2)
!1038 = !DILocation(line: 123, column: 13, scope: !1035)
!1039 = !DILocation(line: 123, column: 2, scope: !1035)
!1040 = !DILocation(line: 124, column: 34, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1036, file: !293, line: 123, column: 50)
!1042 = !DILocation(line: 124, column: 42, scope: !1041)
!1043 = !DILocation(line: 124, column: 47, scope: !1041)
!1044 = !DILocation(line: 124, column: 12, scope: !1041)
!1045 = !DILocation(line: 124, column: 10, scope: !1041)
!1046 = !DILocation(line: 126, column: 2, scope: !1041)
!1047 = !DILocation(line: 123, column: 44, scope: !1048)
!1048 = !DILexicalBlockFile(scope: !1036, file: !293, discriminator: 2)
!1049 = !DILocation(line: 123, column: 27, scope: !1048)
!1050 = !DILocation(line: 123, column: 25, scope: !1048)
!1051 = !DILocation(line: 123, column: 2, scope: !1048)
!1052 = distinct !{!1052, !1033}
!1053 = !DILocation(line: 128, column: 16, scope: !1019)
!1054 = !DILocation(line: 128, column: 9, scope: !1019)
!1055 = distinct !DISubprogram(name: "get_windows_config_filter_line", scope: !293, file: !293, line: 131, type: !1056, isLocal: true, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!84, !84}
!1058 = !DILocalVariable(name: "in", arg: 1, scope: !1055, file: !293, line: 131, type: !84)
!1059 = !DILocation(line: 131, column: 55, scope: !1055)
!1060 = !DILocalVariable(name: "tmp", scope: !1055, file: !293, line: 133, type: !84)
!1061 = !DILocation(line: 133, column: 10, scope: !1055)
!1062 = !DILocalVariable(name: "output", scope: !1055, file: !293, line: 133, type: !84)
!1063 = !DILocation(line: 133, column: 16, scope: !1055)
!1064 = !DILocation(line: 135, column: 9, scope: !1055)
!1065 = !DILocation(line: 136, column: 13, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1055, file: !293, line: 136, column: 2)
!1067 = !DILocation(line: 136, column: 11, scope: !1066)
!1068 = !DILocation(line: 136, column: 7, scope: !1066)
!1069 = !DILocation(line: 136, column: 17, scope: !1070)
!1070 = !DILexicalBlockFile(scope: !1071, file: !293, discriminator: 1)
!1071 = distinct !DILexicalBlock(scope: !1066, file: !293, line: 136, column: 2)
!1072 = !DILocation(line: 136, column: 21, scope: !1070)
!1073 = !DILocation(line: 136, column: 2, scope: !1070)
!1074 = !DILocalVariable(name: "node", scope: !1075, file: !293, line: 137, type: !306)
!1075 = distinct !DILexicalBlock(scope: !1071, file: !293, line: 136, column: 46)
!1076 = !DILocation(line: 137, column: 16, scope: !1075)
!1077 = !DILocation(line: 137, column: 23, scope: !1075)
!1078 = !DILocation(line: 137, column: 28, scope: !1075)
!1079 = !DILocation(line: 138, column: 27, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1075, file: !293, line: 138, column: 7)
!1081 = !DILocation(line: 138, column: 7, scope: !1080)
!1082 = !DILocation(line: 138, column: 52, scope: !1080)
!1083 = !DILocation(line: 138, column: 7, scope: !1075)
!1084 = !DILocation(line: 139, column: 28, scope: !1080)
!1085 = !DILocation(line: 139, column: 36, scope: !1080)
!1086 = !DILocation(line: 139, column: 13, scope: !1080)
!1087 = !DILocation(line: 139, column: 11, scope: !1080)
!1088 = !DILocation(line: 139, column: 4, scope: !1080)
!1089 = !DILocation(line: 140, column: 2, scope: !1075)
!1090 = !DILocation(line: 136, column: 35, scope: !1091)
!1091 = !DILexicalBlockFile(scope: !1071, file: !293, discriminator: 2)
!1092 = !DILocation(line: 136, column: 40, scope: !1091)
!1093 = !DILocation(line: 136, column: 33, scope: !1091)
!1094 = !DILocation(line: 136, column: 2, scope: !1091)
!1095 = distinct !{!1095, !1096}
!1096 = !DILocation(line: 136, column: 2, scope: !1055)
!1097 = !DILocation(line: 142, column: 9, scope: !1055)
!1098 = !DILocation(line: 142, column: 2, scope: !1055)
!1099 = distinct !DISubprogram(name: "get_windows_config_filter_column", scope: !293, file: !293, line: 145, type: !1100, isLocal: true, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!84, !84, !77, !77}
!1102 = !DILocalVariable(name: "in", arg: 1, scope: !1099, file: !293, line: 145, type: !84)
!1103 = !DILocation(line: 145, column: 57, scope: !1099)
!1104 = !DILocalVariable(name: "first_line", arg: 2, scope: !1099, file: !293, line: 145, type: !77)
!1105 = !DILocation(line: 145, column: 65, scope: !1099)
!1106 = !DILocalVariable(name: "last_line", arg: 3, scope: !1099, file: !293, line: 145, type: !77)
!1107 = !DILocation(line: 145, column: 81, scope: !1099)
!1108 = !DILocalVariable(name: "tmp", scope: !1099, file: !293, line: 147, type: !84)
!1109 = !DILocation(line: 147, column: 10, scope: !1099)
!1110 = !DILocalVariable(name: "output", scope: !1099, file: !293, line: 147, type: !84)
!1111 = !DILocation(line: 147, column: 16, scope: !1099)
!1112 = !DILocation(line: 149, column: 9, scope: !1099)
!1113 = !DILocation(line: 150, column: 13, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1099, file: !293, line: 150, column: 2)
!1115 = !DILocation(line: 150, column: 11, scope: !1114)
!1116 = !DILocation(line: 150, column: 7, scope: !1114)
!1117 = !DILocation(line: 150, column: 17, scope: !1118)
!1118 = !DILexicalBlockFile(scope: !1119, file: !293, discriminator: 1)
!1119 = distinct !DILexicalBlock(scope: !1114, file: !293, line: 150, column: 2)
!1120 = !DILocation(line: 150, column: 21, scope: !1118)
!1121 = !DILocation(line: 150, column: 2, scope: !1118)
!1122 = !DILocalVariable(name: "l1", scope: !1123, file: !293, line: 151, type: !77)
!1123 = distinct !DILexicalBlock(scope: !1119, file: !293, line: 150, column: 46)
!1124 = !DILocation(line: 151, column: 7, scope: !1123)
!1125 = !DILocalVariable(name: "l2", scope: !1123, file: !293, line: 151, type: !77)
!1126 = !DILocation(line: 151, column: 11, scope: !1123)
!1127 = !DILocalVariable(name: "node", scope: !1123, file: !293, line: 152, type: !306)
!1128 = !DILocation(line: 152, column: 16, scope: !1123)
!1129 = !DILocation(line: 152, column: 23, scope: !1123)
!1130 = !DILocation(line: 152, column: 28, scope: !1123)
!1131 = !DILocation(line: 153, column: 28, scope: !1123)
!1132 = !DILocation(line: 153, column: 8, scope: !1123)
!1133 = !DILocation(line: 153, column: 6, scope: !1123)
!1134 = !DILocation(line: 154, column: 8, scope: !1123)
!1135 = !DILocation(line: 154, column: 33, scope: !1123)
!1136 = !DILocation(line: 154, column: 13, scope: !1123)
!1137 = !DILocation(line: 154, column: 11, scope: !1123)
!1138 = !DILocation(line: 154, column: 51, scope: !1123)
!1139 = !DILocation(line: 154, column: 6, scope: !1123)
!1140 = !DILocation(line: 155, column: 7, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1123, file: !293, line: 155, column: 7)
!1142 = !DILocation(line: 155, column: 13, scope: !1141)
!1143 = !DILocation(line: 155, column: 10, scope: !1141)
!1144 = !DILocation(line: 155, column: 24, scope: !1141)
!1145 = !DILocation(line: 155, column: 27, scope: !1146)
!1146 = !DILexicalBlockFile(scope: !1141, file: !293, discriminator: 1)
!1147 = !DILocation(line: 155, column: 33, scope: !1146)
!1148 = !DILocation(line: 155, column: 30, scope: !1146)
!1149 = !DILocation(line: 155, column: 7, scope: !1146)
!1150 = !DILocation(line: 156, column: 29, scope: !1141)
!1151 = !DILocation(line: 156, column: 37, scope: !1141)
!1152 = !DILocation(line: 156, column: 13, scope: !1141)
!1153 = !DILocation(line: 156, column: 11, scope: !1141)
!1154 = !DILocation(line: 156, column: 4, scope: !1141)
!1155 = !DILocation(line: 157, column: 2, scope: !1123)
!1156 = !DILocation(line: 150, column: 35, scope: !1157)
!1157 = !DILexicalBlockFile(scope: !1119, file: !293, discriminator: 2)
!1158 = !DILocation(line: 150, column: 40, scope: !1157)
!1159 = !DILocation(line: 150, column: 33, scope: !1157)
!1160 = !DILocation(line: 150, column: 2, scope: !1157)
!1161 = distinct !{!1161, !1162}
!1162 = !DILocation(line: 150, column: 2, scope: !1099)
!1163 = !DILocation(line: 159, column: 9, scope: !1099)
!1164 = !DILocation(line: 159, column: 2, scope: !1099)
!1165 = distinct !DISubprogram(name: "window_node_cmp", scope: !293, file: !293, line: 101, type: !1166, isLocal: true, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!77, !306, !306}
!1168 = !DILocalVariable(name: "n1", arg: 1, scope: !1165, file: !293, line: 101, type: !306)
!1169 = !DILocation(line: 101, column: 41, scope: !1165)
!1170 = !DILocalVariable(name: "n2", arg: 2, scope: !1165, file: !293, line: 101, type: !306)
!1171 = !DILocation(line: 101, column: 58, scope: !1165)
!1172 = !DILocation(line: 103, column: 30, scope: !1165)
!1173 = !DILocation(line: 103, column: 10, scope: !1165)
!1174 = !DILocation(line: 104, column: 23, scope: !1165)
!1175 = !DILocation(line: 104, column: 3, scope: !1165)
!1176 = !DILocation(line: 103, column: 51, scope: !1165)
!1177 = !DILocation(line: 105, column: 3, scope: !1165)
!1178 = !DILocation(line: 106, column: 23, scope: !1165)
!1179 = !DILocation(line: 106, column: 3, scope: !1165)
!1180 = !DILocation(line: 107, column: 23, scope: !1165)
!1181 = !DILocation(line: 107, column: 3, scope: !1165)
!1182 = !DILocation(line: 106, column: 46, scope: !1165)
!1183 = !DILocation(line: 108, column: 11, scope: !1165)
!1184 = !DILocation(line: 109, column: 23, scope: !1165)
!1185 = !DILocation(line: 109, column: 3, scope: !1165)
!1186 = !DILocation(line: 110, column: 23, scope: !1165)
!1187 = !DILocation(line: 110, column: 3, scope: !1165)
!1188 = !DILocation(line: 109, column: 44, scope: !1165)
!1189 = !DILocation(line: 108, column: 11, scope: !1190)
!1190 = !DILexicalBlockFile(scope: !1165, file: !293, discriminator: 1)
!1191 = !DILocation(line: 103, column: 9, scope: !1190)
!1192 = !DILocation(line: 103, column: 2, scope: !1190)
