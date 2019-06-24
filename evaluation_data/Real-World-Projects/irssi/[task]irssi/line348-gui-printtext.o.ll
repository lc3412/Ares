; ModuleID = './line348-gui-printtext.o.i'
source_filename = "./line348-gui-printtext.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GHashTable = type opaque
%struct._TEXT_BUFFER_VIEW_REC = type { %struct.TEXT_BUFFER_REC*, %struct._GSList*, %struct._TERM_WINDOW*, i32, i32, i32, {}*, %struct.TEXT_BUFFER_CACHE_REC*, i32, %struct._LINE_REC*, i32, %struct._LINE_REC*, i32, %struct._GHashTable*, i32, i32, i8 }
%struct.TEXT_BUFFER_REC = type { %struct._GSList*, %struct._LINE_REC*, i32, %struct._LINE_REC*, %struct.TEXT_CHUNK_REC*, i32, i32, i32, i8 }
%struct.TEXT_CHUNK_REC = type { [16368 x i8], i32, i32 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._TERM_WINDOW = type opaque
%struct.TEXT_BUFFER_CACHE_REC = type { i32, i32, %struct._GHashTable*, i8, i32 }
%struct._LINE_REC = type { %struct._LINE_REC*, %struct._LINE_REC*, i8*, %struct.LINE_INFO_REC }
%struct.LINE_INFO_REC = type { i32, i64 }
%struct.THEME_REC = type { i32, i8*, i8*, i64, i32, i8, %struct._GHashTable*, [256 x i32], %struct._GSList*, %struct._GHashTable*, i8* }
%struct.MAIN_WINDOW_BORDER_REC = type { i8*, %struct._TERM_WINDOW* }
%struct._TEXT_DEST_REC = type { %struct._WINDOW_REC*, %struct._SERVER_REC*, i8*, i8*, i8*, i8*, i32, i32, i8*, i32 }
%struct._WINDOW_REC = type { i32, i8*, i32, i32, %struct._GSList*, %struct._WI_ITEM_REC*, %struct._SERVER_REC*, %struct._SERVER_REC*, i8*, i32, %struct._GSList*, i8, %struct.HISTORY_REC*, i8*, i32, i8*, i64, i64, i8*, i8*, i8* }
%struct._WI_ITEM_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)* }
%struct.HISTORY_REC = type { i8*, %struct._GList*, i32, i32, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._SERVER_REC = type opaque
%struct.GUI_WINDOW_REC = type { %struct.MAIN_WINDOW_REC*, %struct._TEXT_BUFFER_VIEW_REC*, i8, %struct._LINE_REC*, i64 }
%struct.MAIN_WINDOW_REC = type { %struct._WINDOW_REC*, %struct._TERM_WINDOW*, i32, i32, i32, i32, i32, i32, i32, %struct._GSList*, i32, i32, i32, i32, i32, i32, i8 }

@mirc_colors = global [100 x i32] [i32 15, i32 0, i32 1, i32 2, i32 12, i32 4, i32 5, i32 6, i32 14, i32 10, i32 3, i32 11, i32 9, i32 13, i32 8, i32 7, i32 52, i32 94, i32 100, i32 58, i32 22, i32 29, i32 23, i32 24, i32 17, i32 54, i32 53, i32 89, i32 88, i32 130, i32 142, i32 64, i32 28, i32 35, i32 30, i32 25, i32 18, i32 91, i32 90, i32 125, i32 124, i32 166, i32 184, i32 106, i32 34, i32 49, i32 37, i32 33, i32 19, i32 129, i32 127, i32 161, i32 196, i32 208, i32 226, i32 154, i32 46, i32 86, i32 51, i32 75, i32 21, i32 171, i32 201, i32 198, i32 203, i32 215, i32 227, i32 191, i32 83, i32 122, i32 87, i32 111, i32 63, i32 177, i32 207, i32 205, i32 217, i32 223, i32 229, i32 193, i32 157, i32 158, i32 159, i32 153, i32 147, i32 183, i32 219, i32 212, i32 16, i32 233, i32 235, i32 237, i32 239, i32 241, i32 244, i32 247, i32 250, i32 254, i32 231, i32 -1], align 16
@indent_functions = internal global %struct._GHashTable* null, align 8
@default_indent_func = internal global i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)* null, align 8
@next_xpos = internal global i32 0, align 4
@next_ypos = internal global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"gui print text after finished\00", align 1
@current_theme = external global %struct.THEME_REC*, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"{window_border} \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@clrtoeol_info = external global %struct.MAIN_WINDOW_BORDER_REC*, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"fe-text\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"history\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"scrollback_lines\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"scrollback_time\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"1day\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"scrollback_burst_remove\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"gui print text\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"gui print text finished\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"setup changed\00", align 1
@view_add_eol.eol = internal constant [2 x i8] c"\00\80", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"mirc_blink_fix\00", align 1
@term_color256map = external global [0 x i32], align 4
@__func__.print_text_no_window = private unnamed_addr constant [21 x i8] c"print_text_no_window\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"next_xpos != -1\00", align 1
@root_window = external global %struct._TERM_WINDOW*, align 8
@scrollback_time = internal global i32 0, align 4
@scrollback_lines = internal global i32 0, align 4
@scrollback_burst_remove = internal global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @gui_register_indent_func(i8*, i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)*) #0 !dbg !270 {
  %3 = alloca i8*, align 8
  %4 = alloca i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._GSList*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !273, metadata !274), !dbg !275
  store i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)* %1, i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)** %4, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)** %4, metadata !276, metadata !274), !dbg !277
  call void @llvm.dbg.declare(metadata i8** %5, metadata !278, metadata !274), !dbg !279
  call void @llvm.dbg.declare(metadata i8** %6, metadata !280, metadata !274), !dbg !281
  call void @llvm.dbg.declare(metadata %struct._GSList** %7, metadata !282, metadata !274), !dbg !283
  %8 = load %struct._GHashTable*, %struct._GHashTable** @indent_functions, align 8, !dbg !284
  %9 = load i8*, i8** %3, align 8, !dbg !286
  %10 = call i32 @g_hash_table_lookup_extended(%struct._GHashTable* %8, i8* %9, i8** %5, i8** %6), !dbg !287
  %11 = icmp ne i32 %10, 0, !dbg !287
  br i1 %11, label %12, label %18, !dbg !288

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %6, align 8, !dbg !289
  %14 = bitcast i8* %13 to %struct._GSList*, !dbg !289
  store %struct._GSList* %14, %struct._GSList** %7, align 8, !dbg !291
  %15 = load %struct._GHashTable*, %struct._GHashTable** @indent_functions, align 8, !dbg !292
  %16 = load i8*, i8** %5, align 8, !dbg !293
  %17 = call i32 @g_hash_table_remove(%struct._GHashTable* %15, i8* %16), !dbg !294
  br label %21, !dbg !295

; <label>:18:                                     ; preds = %2
  %19 = load i8*, i8** %3, align 8, !dbg !296
  %20 = call noalias i8* @g_strdup(i8* %19), !dbg !298
  store i8* %20, i8** %5, align 8, !dbg !299
  store %struct._GSList* null, %struct._GSList** %7, align 8, !dbg !300
  br label %21

; <label>:21:                                     ; preds = %18, %12
  %22 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !301
  %23 = load i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)*, i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)** %4, align 8, !dbg !302
  %24 = bitcast i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)* %23 to i8*, !dbg !303
  %25 = call %struct._GSList* @g_slist_append(%struct._GSList* %22, i8* %24), !dbg !304
  store %struct._GSList* %25, %struct._GSList** %7, align 8, !dbg !305
  %26 = load %struct._GHashTable*, %struct._GHashTable** @indent_functions, align 8, !dbg !306
  %27 = load i8*, i8** %5, align 8, !dbg !307
  %28 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !308
  %29 = bitcast %struct._GSList* %28 to i8*, !dbg !308
  %30 = call i32 @g_hash_table_insert(%struct._GHashTable* %26, i8* %27, i8* %29), !dbg !309
  ret void, !dbg !310
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @g_hash_table_lookup_extended(%struct._GHashTable*, i8*, i8**, i8**) #2

declare i32 @g_hash_table_remove(%struct._GHashTable*, i8*) #2

declare noalias i8* @g_strdup(i8*) #2

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #2

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @gui_unregister_indent_func(i8*, i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)*) #0 !dbg !311 {
  %3 = alloca i8*, align 8
  %4 = alloca i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._GSList*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !312, metadata !274), !dbg !313
  store i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)* %1, i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)** %4, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)** %4, metadata !314, metadata !274), !dbg !315
  call void @llvm.dbg.declare(metadata i8** %5, metadata !316, metadata !274), !dbg !317
  call void @llvm.dbg.declare(metadata i8** %6, metadata !318, metadata !274), !dbg !319
  call void @llvm.dbg.declare(metadata %struct._GSList** %7, metadata !320, metadata !274), !dbg !321
  %8 = load %struct._GHashTable*, %struct._GHashTable** @indent_functions, align 8, !dbg !322
  %9 = load i8*, i8** %3, align 8, !dbg !324
  %10 = call i32 @g_hash_table_lookup_extended(%struct._GHashTable* %8, i8* %9, i8** %5, i8** %6), !dbg !325
  %11 = icmp ne i32 %10, 0, !dbg !325
  br i1 %11, label %12, label %33, !dbg !326

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %6, align 8, !dbg !327
  %14 = bitcast i8* %13 to %struct._GSList*, !dbg !327
  store %struct._GSList* %14, %struct._GSList** %7, align 8, !dbg !329
  %15 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !330
  %16 = load i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)*, i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)** %4, align 8, !dbg !331
  %17 = bitcast i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)* %16 to i8*, !dbg !332
  %18 = call %struct._GSList* @g_slist_remove(%struct._GSList* %15, i8* %17), !dbg !333
  store %struct._GSList* %18, %struct._GSList** %7, align 8, !dbg !334
  %19 = load %struct._GHashTable*, %struct._GHashTable** @indent_functions, align 8, !dbg !335
  %20 = load i8*, i8** %5, align 8, !dbg !336
  %21 = call i32 @g_hash_table_remove(%struct._GHashTable* %19, i8* %20), !dbg !337
  %22 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !338
  %23 = icmp eq %struct._GSList* %22, null, !dbg !340
  br i1 %23, label %24, label %26, !dbg !341

; <label>:24:                                     ; preds = %12
  %25 = load i8*, i8** %5, align 8, !dbg !342
  call void @g_free(i8* %25), !dbg !343
  br label %32, !dbg !343

; <label>:26:                                     ; preds = %12
  %27 = load %struct._GHashTable*, %struct._GHashTable** @indent_functions, align 8, !dbg !344
  %28 = load i8*, i8** %5, align 8, !dbg !345
  %29 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !346
  %30 = bitcast %struct._GSList* %29 to i8*, !dbg !346
  %31 = call i32 @g_hash_table_insert(%struct._GHashTable* %27, i8* %28, i8* %30), !dbg !347
  br label %32

; <label>:32:                                     ; preds = %26, %24
  br label %33, !dbg !348

; <label>:33:                                     ; preds = %32, %2
  %34 = load i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)*, i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)** @default_indent_func, align 8, !dbg !349
  %35 = load i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)*, i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)** %4, align 8, !dbg !351
  %36 = icmp eq i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)* %34, %35, !dbg !352
  br i1 %36, label %37, label %38, !dbg !353

; <label>:37:                                     ; preds = %33
  call void @gui_set_default_indent(i8* null), !dbg !354
  br label %38, !dbg !354

; <label>:38:                                     ; preds = %37, %33
  %39 = load i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)*, i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)** %4, align 8, !dbg !355
  call void @textbuffer_views_unregister_indent_func(i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)* %39), !dbg !356
  ret void, !dbg !357
}

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #2

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define void @gui_set_default_indent(i8*) #0 !dbg !358 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._GSList*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !361, metadata !274), !dbg !362
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !363, metadata !274), !dbg !364
  %4 = load i8*, i8** %2, align 8, !dbg !365
  %5 = icmp eq i8* %4, null, !dbg !366
  br i1 %5, label %6, label %7, !dbg !365

; <label>:6:                                      ; preds = %1
  br label %11, !dbg !367

; <label>:7:                                      ; preds = %1
  %8 = load %struct._GHashTable*, %struct._GHashTable** @indent_functions, align 8, !dbg !369
  %9 = load i8*, i8** %2, align 8, !dbg !370
  %10 = call i8* @g_hash_table_lookup(%struct._GHashTable* %8, i8* %9), !dbg !371
  br label %11, !dbg !372

; <label>:11:                                     ; preds = %7, %6
  %12 = phi i8* [ null, %6 ], [ %10, %7 ], !dbg !374
  %13 = bitcast i8* %12 to %struct._GSList*, !dbg !374
  store %struct._GSList* %13, %struct._GSList** %3, align 8, !dbg !376
  %14 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !377
  %15 = icmp eq %struct._GSList* %14, null, !dbg !378
  br i1 %15, label %16, label %17, !dbg !377

; <label>:16:                                     ; preds = %11
  br label %22, !dbg !379

; <label>:17:                                     ; preds = %11
  %18 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !380
  %19 = getelementptr inbounds %struct._GSList, %struct._GSList* %18, i32 0, i32 0, !dbg !381
  %20 = load i8*, i8** %19, align 8, !dbg !381
  %21 = bitcast i8* %20 to i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)*, !dbg !382
  br label %22, !dbg !383

; <label>:22:                                     ; preds = %17, %16
  %23 = phi i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)* [ null, %16 ], [ %21, %17 ], !dbg !384
  store i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)* %23, i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)** @default_indent_func, align 8, !dbg !385
  call void @gui_windows_reset_settings(), !dbg !386
  ret void, !dbg !387
}

declare void @textbuffer_views_unregister_indent_func(i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)*) #2

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #2

declare void @gui_windows_reset_settings() #2

; Function Attrs: nounwind uwtable
define i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)* @get_default_indent_func() #0 !dbg !388 {
  %1 = load i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)*, i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)** @default_indent_func, align 8, !dbg !391
  ret i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)* %1, !dbg !392
}

; Function Attrs: nounwind uwtable
define void @gui_printtext(i32, i32, i8*) #0 !dbg !393 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !396, metadata !274), !dbg !397
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !398, metadata !274), !dbg !399
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !400, metadata !274), !dbg !401
  %7 = load i32, i32* %4, align 4, !dbg !402
  store i32 %7, i32* @next_xpos, align 4, !dbg !403
  %8 = load i32, i32* %5, align 4, !dbg !404
  store i32 %8, i32* @next_ypos, align 4, !dbg !405
  %9 = load i8*, i8** %6, align 8, !dbg !406
  call void @printtext_gui(i8* %9), !dbg !407
  store i32 -1, i32* @next_ypos, align 4, !dbg !408
  store i32 -1, i32* @next_xpos, align 4, !dbg !409
  ret void, !dbg !410
}

declare void @printtext_gui(i8*) #2

; Function Attrs: nounwind uwtable
define void @gui_printtext_internal(i32, i32, i8*) #0 !dbg !411 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !412, metadata !274), !dbg !413
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !414, metadata !274), !dbg !415
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !416, metadata !274), !dbg !417
  %7 = load i32, i32* %4, align 4, !dbg !418
  store i32 %7, i32* @next_xpos, align 4, !dbg !419
  %8 = load i32, i32* %5, align 4, !dbg !420
  store i32 %8, i32* @next_ypos, align 4, !dbg !421
  %9 = load i8*, i8** %6, align 8, !dbg !422
  call void @printtext_gui_internal(i8* %9), !dbg !423
  store i32 -1, i32* @next_ypos, align 4, !dbg !424
  store i32 -1, i32* @next_xpos, align 4, !dbg !425
  ret void, !dbg !426
}

declare void @printtext_gui_internal(i8*) #2

; Function Attrs: nounwind uwtable
define void @gui_printtext_after_time(%struct._TEXT_DEST_REC*, %struct._LINE_REC*, i8*, i64) #0 !dbg !427 {
  %5 = alloca %struct._TEXT_DEST_REC*, align 8
  %6 = alloca %struct._LINE_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.GUI_WINDOW_REC*, align 8
  store %struct._TEXT_DEST_REC* %0, %struct._TEXT_DEST_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC** %5, metadata !445, metadata !274), !dbg !446
  store %struct._LINE_REC* %1, %struct._LINE_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._LINE_REC** %6, metadata !447, metadata !274), !dbg !448
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !449, metadata !274), !dbg !450
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !451, metadata !274), !dbg !452
  call void @llvm.dbg.declare(metadata %struct.GUI_WINDOW_REC** %9, metadata !453, metadata !274), !dbg !454
  %10 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %5, align 8, !dbg !455
  %11 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %10, i32 0, i32 0, !dbg !456
  %12 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %11, align 8, !dbg !456
  %13 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %12, i32 0, i32 20, !dbg !457
  %14 = load i8*, i8** %13, align 8, !dbg !457
  %15 = bitcast i8* %14 to %struct.GUI_WINDOW_REC*, !dbg !458
  store %struct.GUI_WINDOW_REC* %15, %struct.GUI_WINDOW_REC** %9, align 8, !dbg !459
  %16 = load %struct._LINE_REC*, %struct._LINE_REC** %6, align 8, !dbg !460
  %17 = icmp eq %struct._LINE_REC* %16, null, !dbg !462
  br i1 %17, label %18, label %35, !dbg !463

; <label>:18:                                     ; preds = %4
  %19 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %9, align 8, !dbg !464
  %20 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %19, i32 0, i32 1, !dbg !466
  %21 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %20, align 8, !dbg !466
  %22 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %21, i32 0, i32 0, !dbg !467
  %23 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %22, align 8, !dbg !467
  %24 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %23, i32 0, i32 8, !dbg !468
  %25 = load i8, i8* %24, align 4, !dbg !468
  %26 = and i8 %25, 1, !dbg !468
  %27 = zext i8 %26 to i32, !dbg !468
  %28 = icmp ne i32 %27, 0, !dbg !464
  br i1 %28, label %35, label %29, !dbg !469

; <label>:29:                                     ; preds = %18
  %30 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %9, align 8, !dbg !470
  %31 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %30, i32 0, i32 1, !dbg !472
  %32 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %31, align 8, !dbg !472
  %33 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %9, align 8, !dbg !473
  %34 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %33, i32 0, i32 3, !dbg !474
  call void @view_add_eol(%struct._TEXT_BUFFER_VIEW_REC* %32, %struct._LINE_REC** %34), !dbg !475
  br label %35, !dbg !476

; <label>:35:                                     ; preds = %29, %18, %4
  %36 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %9, align 8, !dbg !477
  %37 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %36, i32 0, i32 2, !dbg !478
  %38 = load i8, i8* %37, align 8, !dbg !479
  %39 = and i8 %38, -9, !dbg !479
  %40 = or i8 %39, 8, !dbg !479
  store i8 %40, i8* %37, align 8, !dbg !479
  %41 = load %struct._LINE_REC*, %struct._LINE_REC** %6, align 8, !dbg !480
  %42 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %9, align 8, !dbg !481
  %43 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %42, i32 0, i32 3, !dbg !482
  store %struct._LINE_REC* %41, %struct._LINE_REC** %43, align 8, !dbg !483
  %44 = load i64, i64* %8, align 8, !dbg !484
  %45 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %9, align 8, !dbg !485
  %46 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %45, i32 0, i32 4, !dbg !486
  store i64 %44, i64* %46, align 8, !dbg !487
  %47 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %5, align 8, !dbg !488
  %48 = load i8*, i8** %7, align 8, !dbg !489
  call void @format_send_to_gui(%struct._TEXT_DEST_REC* %47, i8* %48), !dbg !490
  %49 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %9, align 8, !dbg !491
  %50 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %49, i32 0, i32 2, !dbg !492
  %51 = load i8, i8* %50, align 8, !dbg !493
  %52 = and i8 %51, -9, !dbg !493
  store i8 %52, i8* %50, align 8, !dbg !493
  %53 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %5, align 8, !dbg !494
  %54 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %53, i32 0, i32 0, !dbg !495
  %55 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %54, align 8, !dbg !495
  %56 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %9, align 8, !dbg !496
  %57 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %56, i32 0, i32 3, !dbg !497
  %58 = load %struct._LINE_REC*, %struct._LINE_REC** %57, align 8, !dbg !497
  %59 = load %struct._LINE_REC*, %struct._LINE_REC** %6, align 8, !dbg !498
  %60 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0), i32 3, %struct._WINDOW_REC* %55, %struct._LINE_REC* %58, %struct._LINE_REC* %59), !dbg !499
  ret void, !dbg !500
}

; Function Attrs: nounwind uwtable
define internal void @view_add_eol(%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC**) #0 !dbg !256 {
  %3 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  %4 = alloca %struct._LINE_REC**, align 8
  store %struct._TEXT_BUFFER_VIEW_REC* %0, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_BUFFER_VIEW_REC** %3, metadata !501, metadata !274), !dbg !502
  store %struct._LINE_REC** %1, %struct._LINE_REC*** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._LINE_REC*** %4, metadata !503, metadata !274), !dbg !504
  %5 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !505
  %6 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %5, i32 0, i32 0, !dbg !506
  %7 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %6, align 8, !dbg !506
  %8 = load %struct._LINE_REC**, %struct._LINE_REC*** %4, align 8, !dbg !507
  %9 = load %struct._LINE_REC*, %struct._LINE_REC** %8, align 8, !dbg !508
  %10 = call %struct._LINE_REC* @textbuffer_insert(%struct.TEXT_BUFFER_REC* %7, %struct._LINE_REC* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @view_add_eol.eol, i32 0, i32 0), i32 2, %struct.LINE_INFO_REC* null), !dbg !509
  %11 = load %struct._LINE_REC**, %struct._LINE_REC*** %4, align 8, !dbg !510
  store %struct._LINE_REC* %10, %struct._LINE_REC** %11, align 8, !dbg !511
  %12 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !512
  %13 = load %struct._LINE_REC**, %struct._LINE_REC*** %4, align 8, !dbg !513
  %14 = load %struct._LINE_REC*, %struct._LINE_REC** %13, align 8, !dbg !514
  call void @textbuffer_view_insert_line(%struct._TEXT_BUFFER_VIEW_REC* %12, %struct._LINE_REC* %14), !dbg !515
  ret void, !dbg !516
}

declare void @format_send_to_gui(%struct._TEXT_DEST_REC*, i8*) #2

declare i32 @signal_emit(i8*, i32, ...) #2

; Function Attrs: nounwind uwtable
define void @gui_printtext_after(%struct._TEXT_DEST_REC*, %struct._LINE_REC*, i8*) #0 !dbg !517 {
  %4 = alloca %struct._TEXT_DEST_REC*, align 8
  %5 = alloca %struct._LINE_REC*, align 8
  %6 = alloca i8*, align 8
  store %struct._TEXT_DEST_REC* %0, %struct._TEXT_DEST_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC** %4, metadata !520, metadata !274), !dbg !521
  store %struct._LINE_REC* %1, %struct._LINE_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._LINE_REC** %5, metadata !522, metadata !274), !dbg !523
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !524, metadata !274), !dbg !525
  %7 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %4, align 8, !dbg !526
  %8 = load %struct._LINE_REC*, %struct._LINE_REC** %5, align 8, !dbg !527
  %9 = load i8*, i8** %6, align 8, !dbg !528
  call void @gui_printtext_after_time(%struct._TEXT_DEST_REC* %7, %struct._LINE_REC* %8, i8* %9, i64 0), !dbg !529
  ret void, !dbg !530
}

; Function Attrs: nounwind uwtable
define void @gui_printtext_window_border(i32, i32) #0 !dbg !531 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !534, metadata !274), !dbg !535
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !536, metadata !274), !dbg !537
  call void @llvm.dbg.declare(metadata i8** %5, metadata !538, metadata !274), !dbg !539
  call void @llvm.dbg.declare(metadata i8** %6, metadata !540, metadata !274), !dbg !541
  call void @llvm.dbg.declare(metadata i32* %7, metadata !542, metadata !274), !dbg !543
  %9 = load %struct.THEME_REC*, %struct.THEME_REC** @current_theme, align 8, !dbg !544
  %10 = icmp ne %struct.THEME_REC* %9, null, !dbg !546
  br i1 %10, label %11, label %20, !dbg !547

; <label>:11:                                     ; preds = %2
  %12 = load %struct.THEME_REC*, %struct.THEME_REC** @current_theme, align 8, !dbg !548
  %13 = call i8* @theme_format_expand(%struct.THEME_REC* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0)), !dbg !550
  store i8* %13, i8** %6, align 8, !dbg !551
  %14 = load i8*, i8** %6, align 8, !dbg !552
  %15 = call i32 @format_real_length(i8* %14, i32 1), !dbg !553
  store i32 %15, i32* %7, align 4, !dbg !554
  %16 = load i32, i32* %7, align 4, !dbg !555
  %17 = sext i32 %16 to i64, !dbg !556
  %18 = load i8*, i8** %6, align 8, !dbg !556
  %19 = getelementptr inbounds i8, i8* %18, i64 %17, !dbg !556
  store i8 0, i8* %19, align 1, !dbg !557
  br label %22, !dbg !558

; <label>:20:                                     ; preds = %2
  %21 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !559
  store i8* %21, i8** %6, align 8, !dbg !561
  br label %22

; <label>:22:                                     ; preds = %20, %11
  %23 = load i8*, i8** %6, align 8, !dbg !562
  %24 = load i8, i8* %23, align 1, !dbg !564
  %25 = sext i8 %24 to i32, !dbg !564
  %26 = icmp eq i32 %25, 0, !dbg !565
  br i1 %26, label %27, label %30, !dbg !566

; <label>:27:                                     ; preds = %22
  %28 = load i8*, i8** %6, align 8, !dbg !567
  call void @g_free(i8* %28), !dbg !569
  %29 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !570
  store i8* %29, i8** %6, align 8, !dbg !571
  br label %30, !dbg !572

; <label>:30:                                     ; preds = %27, %22
  %31 = load %struct.MAIN_WINDOW_BORDER_REC*, %struct.MAIN_WINDOW_BORDER_REC** @clrtoeol_info, align 8, !dbg !573
  %32 = getelementptr inbounds %struct.MAIN_WINDOW_BORDER_REC, %struct.MAIN_WINDOW_BORDER_REC* %31, i32 0, i32 0, !dbg !575
  %33 = load i8*, i8** %32, align 8, !dbg !575
  %34 = icmp ne i8* %33, null, !dbg !576
  br i1 %34, label %35, label %51, !dbg !577

; <label>:35:                                     ; preds = %30
  call void @llvm.dbg.declare(metadata i8** %8, metadata !578, metadata !274), !dbg !580
  %36 = load %struct.MAIN_WINDOW_BORDER_REC*, %struct.MAIN_WINDOW_BORDER_REC** @clrtoeol_info, align 8, !dbg !581
  %37 = getelementptr inbounds %struct.MAIN_WINDOW_BORDER_REC, %struct.MAIN_WINDOW_BORDER_REC* %36, i32 0, i32 0, !dbg !582
  %38 = load i8*, i8** %37, align 8, !dbg !582
  %39 = call noalias i8* @g_strdup(i8* %38), !dbg !583
  store i8* %39, i8** %8, align 8, !dbg !580
  %40 = load i8*, i8** %8, align 8, !dbg !584
  %41 = call i32 @format_real_length(i8* %40, i32 0), !dbg !585
  store i32 %41, i32* %7, align 4, !dbg !586
  %42 = load i32, i32* %7, align 4, !dbg !587
  %43 = sext i32 %42 to i64, !dbg !588
  %44 = load i8*, i8** %8, align 8, !dbg !588
  %45 = getelementptr inbounds i8, i8* %44, i64 %43, !dbg !588
  store i8 0, i8* %45, align 1, !dbg !589
  %46 = load i8*, i8** %8, align 8, !dbg !590
  %47 = load i8*, i8** %6, align 8, !dbg !591
  %48 = call noalias i8* (i8*, ...) @g_strconcat(i8* %46, i8* %47, i8* null), !dbg !592
  store i8* %48, i8** %5, align 8, !dbg !593
  %49 = load i8*, i8** %8, align 8, !dbg !594
  call void @g_free(i8* %49), !dbg !595
  %50 = load i8*, i8** %6, align 8, !dbg !596
  call void @g_free(i8* %50), !dbg !597
  br label %53, !dbg !598

; <label>:51:                                     ; preds = %30
  %52 = load i8*, i8** %6, align 8, !dbg !599
  store i8* %52, i8** %5, align 8, !dbg !601
  br label %53

; <label>:53:                                     ; preds = %51, %35
  %54 = load i32, i32* %3, align 4, !dbg !602
  %55 = load i32, i32* %4, align 4, !dbg !603
  %56 = load i8*, i8** %5, align 8, !dbg !604
  call void @gui_printtext(i32 %54, i32 %55, i8* %56), !dbg !605
  %57 = load i8*, i8** %5, align 8, !dbg !606
  call void @g_free(i8* %57), !dbg !607
  ret void, !dbg !608
}

declare i8* @theme_format_expand(%struct.THEME_REC*, i8*) #2

declare i32 @format_real_length(i8*, i32) #2

declare noalias i8* @g_strconcat(i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @gui_printtext_init() #0 !dbg !609 {
  store i32 -1, i32* @next_ypos, align 4, !dbg !612
  store i32 -1, i32* @next_xpos, align 4, !dbg !613
  store i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)* null, i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)** @default_indent_func, align 8, !dbg !614
  %1 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal), !dbg !615
  store %struct._GHashTable* %1, %struct._GHashTable** @indent_functions, align 8, !dbg !616
  call void @settings_add_int_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 500), !dbg !617
  call void @settings_add_time_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0)), !dbg !618
  call void @settings_add_int_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0), i32 10), !dbg !619
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*, i8*, i8*, i8*, i8*, %struct._TEXT_DEST_REC*)* @sig_gui_print_text to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !620
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*)* @sig_gui_printtext_finished to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !621
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !622
  call void @read_settings(), !dbg !623
  ret void, !dbg !624
}

declare %struct._GHashTable* @g_hash_table_new(i32 (i8*)*, i32 (i8*, i8*)*) #2

declare i32 @g_str_hash(i8*) #2

declare i32 @g_str_equal(i8*, i8*) #2

declare void @settings_add_int_module(i8*, i8*, i8*, i32) #2

declare void @settings_add_time_module(i8*, i8*, i8*, i8*) #2

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @sig_gui_print_text(%struct._WINDOW_REC*, i8*, i8*, i8*, i8*, %struct._TEXT_DEST_REC*) #0 !dbg !625 {
  %7 = alloca %struct._WINDOW_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct._TEXT_DEST_REC*, align 8
  %13 = alloca %struct.GUI_WINDOW_REC*, align 8
  %14 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  %15 = alloca %struct._LINE_REC*, align 8
  %16 = alloca %struct.LINE_INFO_REC, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %7, metadata !628, metadata !274), !dbg !629
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !630, metadata !274), !dbg !631
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !632, metadata !274), !dbg !633
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !634, metadata !274), !dbg !635
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !636, metadata !274), !dbg !637
  store %struct._TEXT_DEST_REC* %5, %struct._TEXT_DEST_REC** %12, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC** %12, metadata !638, metadata !274), !dbg !639
  call void @llvm.dbg.declare(metadata %struct.GUI_WINDOW_REC** %13, metadata !640, metadata !274), !dbg !641
  call void @llvm.dbg.declare(metadata %struct._TEXT_BUFFER_VIEW_REC** %14, metadata !642, metadata !274), !dbg !643
  call void @llvm.dbg.declare(metadata %struct._LINE_REC** %15, metadata !644, metadata !274), !dbg !645
  call void @llvm.dbg.declare(metadata %struct.LINE_INFO_REC* %16, metadata !646, metadata !274), !dbg !647
  call void @llvm.dbg.declare(metadata i32* %17, metadata !648, metadata !274), !dbg !649
  call void @llvm.dbg.declare(metadata i32* %18, metadata !650, metadata !274), !dbg !651
  call void @llvm.dbg.declare(metadata i32* %19, metadata !652, metadata !274), !dbg !653
  call void @llvm.dbg.declare(metadata i32* %20, metadata !654, metadata !274), !dbg !655
  %21 = load i8*, i8** %10, align 8, !dbg !656
  %22 = ptrtoint i8* %21 to i64, !dbg !657
  %23 = trunc i64 %22 to i32, !dbg !658
  store i32 %23, i32* %19, align 4, !dbg !659
  %24 = load i8*, i8** %8, align 8, !dbg !660
  %25 = ptrtoint i8* %24 to i64, !dbg !661
  %26 = trunc i64 %25 to i32, !dbg !662
  store i32 %26, i32* %17, align 4, !dbg !663
  %27 = load i8*, i8** %9, align 8, !dbg !664
  %28 = ptrtoint i8* %27 to i64, !dbg !665
  %29 = trunc i64 %28 to i32, !dbg !666
  store i32 %29, i32* %18, align 4, !dbg !667
  %30 = load i32, i32* %19, align 4, !dbg !668
  call void @get_colors(i32 %30, i32* %17, i32* %18, i32* %20), !dbg !669
  %31 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !670
  %32 = icmp eq %struct._WINDOW_REC* %31, null, !dbg !672
  br i1 %32, label %33, label %39, !dbg !673

; <label>:33:                                     ; preds = %6
  %34 = load i32, i32* %19, align 4, !dbg !674
  %35 = load i32, i32* %17, align 4, !dbg !676
  %36 = load i32, i32* %18, align 4, !dbg !677
  %37 = load i32, i32* %20, align 4, !dbg !678
  %38 = load i8*, i8** %11, align 8, !dbg !679
  call void @print_text_no_window(i32 %34, i32 %35, i32 %36, i32 %37, i8* %38), !dbg !680
  br label %140, !dbg !681

; <label>:39:                                     ; preds = %6
  %40 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %12, align 8, !dbg !682
  %41 = icmp eq %struct._TEXT_DEST_REC* %40, null, !dbg !683
  br i1 %41, label %42, label %43, !dbg !682

; <label>:42:                                     ; preds = %39
  br label %47, !dbg !684

; <label>:43:                                     ; preds = %39
  %44 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %12, align 8, !dbg !686
  %45 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %44, i32 0, i32 6, !dbg !688
  %46 = load i32, i32* %45, align 8, !dbg !688
  br label %47, !dbg !689

; <label>:47:                                     ; preds = %43, %42
  %48 = phi i32 [ 0, %42 ], [ %46, %43 ], !dbg !690
  %49 = getelementptr inbounds %struct.LINE_INFO_REC, %struct.LINE_INFO_REC* %16, i32 0, i32 0, !dbg !692
  store i32 %48, i32* %49, align 8, !dbg !693
  %50 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !694
  %51 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %50, i32 0, i32 20, !dbg !695
  %52 = load i8*, i8** %51, align 8, !dbg !695
  %53 = bitcast i8* %52 to %struct.GUI_WINDOW_REC*, !dbg !696
  store %struct.GUI_WINDOW_REC* %53, %struct.GUI_WINDOW_REC** %13, align 8, !dbg !697
  %54 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %13, align 8, !dbg !698
  %55 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %54, i32 0, i32 2, !dbg !699
  %56 = load i8, i8* %55, align 8, !dbg !699
  %57 = lshr i8 %56, 3, !dbg !699
  %58 = and i8 %57, 1, !dbg !699
  %59 = zext i8 %58 to i32, !dbg !699
  %60 = icmp ne i32 %59, 0, !dbg !698
  br i1 %60, label %61, label %70, !dbg !700

; <label>:61:                                     ; preds = %47
  %62 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %13, align 8, !dbg !701
  %63 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %62, i32 0, i32 4, !dbg !702
  %64 = load i64, i64* %63, align 8, !dbg !702
  %65 = icmp ne i64 %64, 0, !dbg !701
  br i1 %65, label %66, label %70, !dbg !703

; <label>:66:                                     ; preds = %61
  %67 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %13, align 8, !dbg !704
  %68 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %67, i32 0, i32 4, !dbg !705
  %69 = load i64, i64* %68, align 8, !dbg !705
  br label %72, !dbg !706

; <label>:70:                                     ; preds = %61, %47
  %71 = call i64 @time(i64* null) #5, !dbg !707
  br label %72, !dbg !708

; <label>:72:                                     ; preds = %70, %66
  %73 = phi i64 [ %69, %66 ], [ %71, %70 ], !dbg !709
  %74 = getelementptr inbounds %struct.LINE_INFO_REC, %struct.LINE_INFO_REC* %16, i32 0, i32 1, !dbg !711
  store i64 %73, i64* %74, align 8, !dbg !712
  %75 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %13, align 8, !dbg !713
  %76 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %75, i32 0, i32 1, !dbg !714
  %77 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %76, align 8, !dbg !714
  store %struct._TEXT_BUFFER_VIEW_REC* %77, %struct._TEXT_BUFFER_VIEW_REC** %14, align 8, !dbg !715
  %78 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %13, align 8, !dbg !716
  %79 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %78, i32 0, i32 2, !dbg !717
  %80 = load i8, i8* %79, align 8, !dbg !717
  %81 = lshr i8 %80, 3, !dbg !717
  %82 = and i8 %81, 1, !dbg !717
  %83 = zext i8 %82 to i32, !dbg !717
  %84 = icmp ne i32 %83, 0, !dbg !716
  br i1 %84, label %85, label %89, !dbg !716

; <label>:85:                                     ; preds = %72
  %86 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %13, align 8, !dbg !718
  %87 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %86, i32 0, i32 3, !dbg !719
  %88 = load %struct._LINE_REC*, %struct._LINE_REC** %87, align 8, !dbg !719
  br label %95, !dbg !720

; <label>:89:                                     ; preds = %72
  %90 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %14, align 8, !dbg !721
  %91 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %90, i32 0, i32 0, !dbg !722
  %92 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %91, align 8, !dbg !722
  %93 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %92, i32 0, i32 3, !dbg !723
  %94 = load %struct._LINE_REC*, %struct._LINE_REC** %93, align 8, !dbg !723
  br label %95, !dbg !724

; <label>:95:                                     ; preds = %89, %85
  %96 = phi %struct._LINE_REC* [ %88, %85 ], [ %94, %89 ], !dbg !725
  store %struct._LINE_REC* %96, %struct._LINE_REC** %15, align 8, !dbg !726
  %97 = load i32, i32* %19, align 4, !dbg !727
  %98 = and i32 %97, 128, !dbg !729
  %99 = icmp ne i32 %98, 0, !dbg !729
  br i1 %99, label %100, label %102, !dbg !730

; <label>:100:                                    ; preds = %95
  %101 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %14, align 8, !dbg !731
  call void @view_add_eol(%struct._TEXT_BUFFER_VIEW_REC* %101, %struct._LINE_REC** %15), !dbg !733
  br label %102, !dbg !734

; <label>:102:                                    ; preds = %100, %95
  %103 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %14, align 8, !dbg !735
  %104 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %103, i32 0, i32 0, !dbg !736
  %105 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %104, align 8, !dbg !736
  %106 = load i32, i32* %17, align 4, !dbg !737
  %107 = load i32, i32* %18, align 4, !dbg !738
  %108 = load i32, i32* %19, align 4, !dbg !739
  call void @textbuffer_line_add_colors(%struct.TEXT_BUFFER_REC* %105, %struct._LINE_REC** %15, i32 %106, i32 %107, i32 %108), !dbg !740
  %109 = load i32, i32* %19, align 4, !dbg !741
  %110 = xor i32 %109, -1, !dbg !743
  %111 = and i32 %110, 128, !dbg !744
  %112 = icmp ne i32 %111, 0, !dbg !744
  br i1 %112, label %118, label %113, !dbg !745

; <label>:113:                                    ; preds = %102
  %114 = load i8*, i8** %11, align 8, !dbg !746
  %115 = load i8, i8* %114, align 1, !dbg !748
  %116 = sext i8 %115 to i32, !dbg !748
  %117 = icmp ne i32 %116, 0, !dbg !749
  br i1 %117, label %118, label %128, !dbg !750

; <label>:118:                                    ; preds = %113, %102
  %119 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %14, align 8, !dbg !751
  %120 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %119, i32 0, i32 0, !dbg !753
  %121 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %120, align 8, !dbg !753
  %122 = load %struct._LINE_REC*, %struct._LINE_REC** %15, align 8, !dbg !754
  %123 = load i8*, i8** %11, align 8, !dbg !755
  %124 = load i8*, i8** %11, align 8, !dbg !756
  %125 = call i64 @strlen(i8* %124) #6, !dbg !757
  %126 = trunc i64 %125 to i32, !dbg !757
  %127 = call %struct._LINE_REC* @textbuffer_insert(%struct.TEXT_BUFFER_REC* %121, %struct._LINE_REC* %122, i8* %123, i32 %126, %struct.LINE_INFO_REC* %16), !dbg !758
  store %struct._LINE_REC* %127, %struct._LINE_REC** %15, align 8, !dbg !759
  br label %128, !dbg !760

; <label>:128:                                    ; preds = %118, %113
  %129 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %13, align 8, !dbg !761
  %130 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %129, i32 0, i32 2, !dbg !763
  %131 = load i8, i8* %130, align 8, !dbg !763
  %132 = lshr i8 %131, 3, !dbg !763
  %133 = and i8 %132, 1, !dbg !763
  %134 = zext i8 %133 to i32, !dbg !763
  %135 = icmp ne i32 %134, 0, !dbg !761
  br i1 %135, label %136, label %140, !dbg !764

; <label>:136:                                    ; preds = %128
  %137 = load %struct._LINE_REC*, %struct._LINE_REC** %15, align 8, !dbg !765
  %138 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %13, align 8, !dbg !766
  %139 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %138, i32 0, i32 3, !dbg !767
  store %struct._LINE_REC* %137, %struct._LINE_REC** %139, align 8, !dbg !768
  br label %140, !dbg !766

; <label>:140:                                    ; preds = %33, %136, %128
  ret void, !dbg !769
}

; Function Attrs: nounwind uwtable
define internal void @sig_gui_printtext_finished(%struct._WINDOW_REC*) #0 !dbg !770 {
  %2 = alloca %struct._WINDOW_REC*, align 8
  %3 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  %4 = alloca %struct._LINE_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %2, metadata !773, metadata !274), !dbg !774
  call void @llvm.dbg.declare(metadata %struct._TEXT_BUFFER_VIEW_REC** %3, metadata !775, metadata !274), !dbg !776
  call void @llvm.dbg.declare(metadata %struct._LINE_REC** %4, metadata !777, metadata !274), !dbg !778
  %5 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !779
  %6 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %5, i32 0, i32 20, !dbg !780
  %7 = load i8*, i8** %6, align 8, !dbg !780
  %8 = bitcast i8* %7 to %struct.GUI_WINDOW_REC*, !dbg !781
  %9 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %8, i32 0, i32 1, !dbg !782
  %10 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %9, align 8, !dbg !782
  store %struct._TEXT_BUFFER_VIEW_REC* %10, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !783
  %11 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !784
  %12 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %11, i32 0, i32 20, !dbg !785
  %13 = load i8*, i8** %12, align 8, !dbg !785
  %14 = bitcast i8* %13 to %struct.GUI_WINDOW_REC*, !dbg !786
  %15 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %14, i32 0, i32 2, !dbg !787
  %16 = load i8, i8* %15, align 8, !dbg !787
  %17 = lshr i8 %16, 3, !dbg !787
  %18 = and i8 %17, 1, !dbg !787
  %19 = zext i8 %18 to i32, !dbg !787
  %20 = icmp ne i32 %19, 0, !dbg !788
  br i1 %20, label %21, label %28, !dbg !788

; <label>:21:                                     ; preds = %1
  %22 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !789
  %23 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %22, i32 0, i32 20, !dbg !790
  %24 = load i8*, i8** %23, align 8, !dbg !790
  %25 = bitcast i8* %24 to %struct.GUI_WINDOW_REC*, !dbg !791
  %26 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %25, i32 0, i32 3, !dbg !792
  %27 = load %struct._LINE_REC*, %struct._LINE_REC** %26, align 8, !dbg !792
  br label %34, !dbg !793

; <label>:28:                                     ; preds = %1
  %29 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !795
  %30 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %29, i32 0, i32 0, !dbg !796
  %31 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %30, align 8, !dbg !796
  %32 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %31, i32 0, i32 3, !dbg !797
  %33 = load %struct._LINE_REC*, %struct._LINE_REC** %32, align 8, !dbg !797
  br label %34, !dbg !798

; <label>:34:                                     ; preds = %28, %21
  %35 = phi %struct._LINE_REC* [ %27, %21 ], [ %33, %28 ], !dbg !800
  store %struct._LINE_REC* %35, %struct._LINE_REC** %4, align 8, !dbg !802
  %36 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !803
  call void @view_add_eol(%struct._TEXT_BUFFER_VIEW_REC* %36, %struct._LINE_REC** %4), !dbg !804
  %37 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !805
  call void @remove_old_lines(%struct._TEXT_BUFFER_VIEW_REC* %37), !dbg !806
  ret void, !dbg !807
}

; Function Attrs: nounwind uwtable
define internal void @read_settings() #0 !dbg !808 {
  %1 = call i32 @settings_get_int(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0)), !dbg !809
  store i32 %1, i32* @scrollback_lines, align 4, !dbg !810
  %2 = call i32 @settings_get_time(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0)), !dbg !811
  %3 = sdiv i32 %2, 1000, !dbg !812
  store i32 %3, i32* @scrollback_time, align 4, !dbg !813
  %4 = call i32 @settings_get_int(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0)), !dbg !814
  store i32 %4, i32* @scrollback_burst_remove, align 4, !dbg !815
  ret void, !dbg !816
}

; Function Attrs: nounwind uwtable
define void @gui_printtext_deinit() #0 !dbg !817 {
  %1 = load %struct._GHashTable*, %struct._GHashTable** @indent_functions, align 8, !dbg !818
  call void @g_hash_table_destroy(%struct._GHashTable* %1), !dbg !819
  call void @signal_remove_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*, i8*, i8*, i8*, i8*, %struct._TEXT_DEST_REC*)* @sig_gui_print_text to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !820
  call void @signal_remove_full(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*)* @sig_gui_printtext_finished to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !821
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !822
  ret void, !dbg !823
}

declare void @g_hash_table_destroy(%struct._GHashTable*) #2

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare %struct._LINE_REC* @textbuffer_insert(%struct.TEXT_BUFFER_REC*, %struct._LINE_REC*, i8*, i32, %struct.LINE_INFO_REC*) #2

declare void @textbuffer_view_insert_line(%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*) #2

; Function Attrs: nounwind uwtable
define internal void @get_colors(i32, i32*, i32*, i32*) #0 !dbg !824 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !828, metadata !274), !dbg !829
  store i32* %1, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !830, metadata !274), !dbg !831
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !832, metadata !274), !dbg !833
  store i32* %3, i32** %8, align 8
  call void @llvm.dbg.declare(metadata i32** %8, metadata !834, metadata !274), !dbg !835
  %9 = load i32*, i32** %8, align 8, !dbg !836
  store i32 0, i32* %9, align 4, !dbg !837
  %10 = load i32, i32* %5, align 4, !dbg !838
  %11 = and i32 %10, 16, !dbg !840
  %12 = icmp ne i32 %11, 0, !dbg !840
  br i1 %12, label %13, label %81, !dbg !841

; <label>:13:                                     ; preds = %4
  %14 = load i32*, i32** %7, align 8, !dbg !842
  %15 = load i32, i32* %14, align 4, !dbg !845
  %16 = icmp sge i32 %15, 0, !dbg !846
  br i1 %16, label %17, label %66, !dbg !847

; <label>:17:                                     ; preds = %13
  %18 = load i32*, i32** %7, align 8, !dbg !848
  %19 = load i32, i32* %18, align 4, !dbg !850
  %20 = srem i32 %19, 100, !dbg !851
  %21 = sext i32 %20 to i64, !dbg !852
  %22 = getelementptr inbounds [100 x i32], [100 x i32]* @mirc_colors, i64 0, i64 %21, !dbg !852
  %23 = load i32, i32* %22, align 4, !dbg !852
  %24 = load i32*, i32** %7, align 8, !dbg !853
  store i32 %23, i32* %24, align 4, !dbg !854
  %25 = load i32, i32* %5, align 4, !dbg !855
  %26 = and i32 %25, -2049, !dbg !855
  store i32 %26, i32* %5, align 4, !dbg !855
  %27 = load i32*, i32** %7, align 8, !dbg !856
  %28 = load i32, i32* %27, align 4, !dbg !858
  %29 = icmp ne i32 %28, -1, !dbg !859
  br i1 %29, label %30, label %65, !dbg !860

; <label>:30:                                     ; preds = %17
  %31 = call i32 @settings_get_bool(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0)), !dbg !861
  %32 = icmp ne i32 %31, 0, !dbg !861
  br i1 %32, label %33, label %65, !dbg !863

; <label>:33:                                     ; preds = %30
  %34 = load i32*, i32** %7, align 8, !dbg !864
  %35 = load i32, i32* %34, align 4, !dbg !867
  %36 = icmp slt i32 %35, 16, !dbg !868
  br i1 %36, label %37, label %56, !dbg !869

; <label>:37:                                     ; preds = %33
  %38 = load i32*, i32** %7, align 8, !dbg !870
  %39 = load i32, i32* %38, align 4, !dbg !871
  %40 = and i32 %39, 8, !dbg !872
  %41 = load i32*, i32** %7, align 8, !dbg !873
  %42 = load i32, i32* %41, align 4, !dbg !874
  %43 = and i32 %42, 4, !dbg !875
  %44 = ashr i32 %43, 2, !dbg !876
  %45 = or i32 %40, %44, !dbg !877
  %46 = load i32*, i32** %7, align 8, !dbg !878
  %47 = load i32, i32* %46, align 4, !dbg !879
  %48 = and i32 %47, 2, !dbg !880
  %49 = or i32 %45, %48, !dbg !881
  %50 = load i32*, i32** %7, align 8, !dbg !882
  %51 = load i32, i32* %50, align 4, !dbg !883
  %52 = and i32 %51, 1, !dbg !884
  %53 = shl i32 %52, 2, !dbg !885
  %54 = or i32 %49, %53, !dbg !886
  %55 = load i32*, i32** %7, align 8, !dbg !887
  store i32 %54, i32* %55, align 4, !dbg !888
  br label %56, !dbg !889

; <label>:56:                                     ; preds = %37, %33
  %57 = load i32*, i32** %7, align 8, !dbg !890
  %58 = load i32, i32* %57, align 4, !dbg !891
  %59 = and i32 %58, 255, !dbg !892
  %60 = sext i32 %59 to i64, !dbg !893
  %61 = getelementptr inbounds [0 x i32], [0 x i32]* @term_color256map, i64 0, i64 %60, !dbg !893
  %62 = load i32, i32* %61, align 4, !dbg !893
  %63 = and i32 %62, 7, !dbg !894
  %64 = load i32*, i32** %7, align 8, !dbg !895
  store i32 %63, i32* %64, align 4, !dbg !896
  br label %65, !dbg !897

; <label>:65:                                     ; preds = %56, %30, %17
  br label %66, !dbg !898

; <label>:66:                                     ; preds = %65, %13
  %67 = load i32*, i32** %6, align 8, !dbg !899
  %68 = load i32, i32* %67, align 4, !dbg !901
  %69 = icmp sge i32 %68, 0, !dbg !902
  br i1 %69, label %70, label %80, !dbg !903

; <label>:70:                                     ; preds = %66
  %71 = load i32*, i32** %6, align 8, !dbg !904
  %72 = load i32, i32* %71, align 4, !dbg !906
  %73 = srem i32 %72, 100, !dbg !907
  %74 = sext i32 %73 to i64, !dbg !908
  %75 = getelementptr inbounds [100 x i32], [100 x i32]* @mirc_colors, i64 0, i64 %74, !dbg !908
  %76 = load i32, i32* %75, align 4, !dbg !908
  %77 = load i32*, i32** %6, align 8, !dbg !909
  store i32 %76, i32* %77, align 4, !dbg !910
  %78 = load i32, i32* %5, align 4, !dbg !911
  %79 = and i32 %78, -1025, !dbg !911
  store i32 %79, i32* %5, align 4, !dbg !911
  br label %80, !dbg !912

; <label>:80:                                     ; preds = %70, %66
  br label %81, !dbg !913

; <label>:81:                                     ; preds = %80, %4
  %82 = load i32, i32* %5, align 4, !dbg !914
  %83 = and i32 %82, 1024, !dbg !916
  %84 = icmp ne i32 %83, 0, !dbg !916
  br i1 %84, label %85, label %89, !dbg !917

; <label>:85:                                     ; preds = %81
  %86 = load i32*, i32** %8, align 8, !dbg !918
  %87 = load i32, i32* %86, align 4, !dbg !919
  %88 = or i32 %87, 16777216, !dbg !919
  store i32 %88, i32* %86, align 4, !dbg !919
  br label %109, !dbg !920

; <label>:89:                                     ; preds = %81
  %90 = load i32*, i32** %6, align 8, !dbg !921
  %91 = load i32, i32* %90, align 4, !dbg !923
  %92 = icmp slt i32 %91, 0, !dbg !924
  br i1 %92, label %97, label %93, !dbg !925

; <label>:93:                                     ; preds = %89
  %94 = load i32*, i32** %6, align 8, !dbg !926
  %95 = load i32, i32* %94, align 4, !dbg !928
  %96 = icmp sgt i32 %95, 255, !dbg !929
  br i1 %96, label %97, label %102, !dbg !930

; <label>:97:                                     ; preds = %93, %89
  %98 = load i32*, i32** %6, align 8, !dbg !931
  store i32 -1, i32* %98, align 4, !dbg !933
  %99 = load i32*, i32** %8, align 8, !dbg !934
  %100 = load i32, i32* %99, align 4, !dbg !935
  %101 = or i32 %100, 65536, !dbg !935
  store i32 %101, i32* %99, align 4, !dbg !935
  br label %108, !dbg !936

; <label>:102:                                    ; preds = %93
  %103 = load i32*, i32** %6, align 8, !dbg !937
  %104 = load i32, i32* %103, align 4, !dbg !938
  %105 = load i32*, i32** %8, align 8, !dbg !939
  %106 = load i32, i32* %105, align 4, !dbg !940
  %107 = or i32 %106, %104, !dbg !940
  store i32 %107, i32* %105, align 4, !dbg !940
  br label %108

; <label>:108:                                    ; preds = %102, %97
  br label %109

; <label>:109:                                    ; preds = %108, %85
  %110 = load i32, i32* %5, align 4, !dbg !941
  %111 = and i32 %110, 2048, !dbg !943
  %112 = icmp ne i32 %111, 0, !dbg !943
  br i1 %112, label %113, label %117, !dbg !944

; <label>:113:                                    ; preds = %109
  %114 = load i32*, i32** %8, align 8, !dbg !945
  %115 = load i32, i32* %114, align 4, !dbg !946
  %116 = or i32 %115, 33554432, !dbg !946
  store i32 %116, i32* %114, align 4, !dbg !946
  br label %138, !dbg !947

; <label>:117:                                    ; preds = %109
  %118 = load i32*, i32** %7, align 8, !dbg !948
  %119 = load i32, i32* %118, align 4, !dbg !950
  %120 = icmp slt i32 %119, 0, !dbg !951
  br i1 %120, label %125, label %121, !dbg !952

; <label>:121:                                    ; preds = %117
  %122 = load i32*, i32** %7, align 8, !dbg !953
  %123 = load i32, i32* %122, align 4, !dbg !955
  %124 = icmp sgt i32 %123, 255, !dbg !956
  br i1 %124, label %125, label %130, !dbg !957

; <label>:125:                                    ; preds = %121, %117
  %126 = load i32*, i32** %7, align 8, !dbg !958
  store i32 -1, i32* %126, align 4, !dbg !960
  %127 = load i32*, i32** %8, align 8, !dbg !961
  %128 = load i32, i32* %127, align 4, !dbg !962
  %129 = or i32 %128, 131072, !dbg !962
  store i32 %129, i32* %127, align 4, !dbg !962
  br label %137, !dbg !963

; <label>:130:                                    ; preds = %121
  %131 = load i32*, i32** %7, align 8, !dbg !964
  %132 = load i32, i32* %131, align 4, !dbg !965
  %133 = shl i32 %132, 8, !dbg !966
  %134 = load i32*, i32** %8, align 8, !dbg !967
  %135 = load i32, i32* %134, align 4, !dbg !968
  %136 = or i32 %135, %133, !dbg !968
  store i32 %136, i32* %134, align 4, !dbg !968
  br label %137

; <label>:137:                                    ; preds = %130, %125
  br label %138

; <label>:138:                                    ; preds = %137, %113
  %139 = load i32, i32* %5, align 4, !dbg !969
  %140 = and i32 %139, 2, !dbg !971
  %141 = icmp ne i32 %140, 0, !dbg !971
  br i1 %141, label %142, label %146, !dbg !972

; <label>:142:                                    ; preds = %138
  %143 = load i32*, i32** %8, align 8, !dbg !973
  %144 = load i32, i32* %143, align 4, !dbg !975
  %145 = or i32 %144, 2097152, !dbg !975
  store i32 %145, i32* %143, align 4, !dbg !975
  br label %146, !dbg !976

; <label>:146:                                    ; preds = %142, %138
  %147 = load i32, i32* %5, align 4, !dbg !977
  %148 = and i32 %147, 64, !dbg !979
  %149 = icmp ne i32 %148, 0, !dbg !979
  br i1 %149, label %150, label %154, !dbg !980

; <label>:150:                                    ; preds = %146
  %151 = load i32*, i32** %8, align 8, !dbg !981
  %152 = load i32, i32* %151, align 4, !dbg !983
  %153 = or i32 %152, 4194304, !dbg !983
  store i32 %153, i32* %151, align 4, !dbg !983
  br label %154, !dbg !984

; <label>:154:                                    ; preds = %150, %146
  %155 = load i32, i32* %5, align 4, !dbg !985
  %156 = and i32 %155, 1, !dbg !987
  %157 = icmp ne i32 %156, 0, !dbg !987
  br i1 %157, label %158, label %162, !dbg !988

; <label>:158:                                    ; preds = %154
  %159 = load i32*, i32** %8, align 8, !dbg !989
  %160 = load i32, i32* %159, align 4, !dbg !991
  %161 = or i32 %160, 262144, !dbg !991
  store i32 %161, i32* %159, align 4, !dbg !991
  br label %162, !dbg !992

; <label>:162:                                    ; preds = %158, %154
  %163 = load i32, i32* %5, align 4, !dbg !993
  %164 = and i32 %163, 4, !dbg !995
  %165 = icmp ne i32 %164, 0, !dbg !995
  br i1 %165, label %166, label %170, !dbg !996

; <label>:166:                                    ; preds = %162
  %167 = load i32*, i32** %8, align 8, !dbg !997
  %168 = load i32, i32* %167, align 4, !dbg !999
  %169 = or i32 %168, 1048576, !dbg !999
  store i32 %169, i32* %167, align 4, !dbg !999
  br label %170, !dbg !1000

; <label>:170:                                    ; preds = %166, %162
  %171 = load i32, i32* %5, align 4, !dbg !1001
  %172 = and i32 %171, 8, !dbg !1003
  %173 = icmp ne i32 %172, 0, !dbg !1003
  br i1 %173, label %174, label %178, !dbg !1004

; <label>:174:                                    ; preds = %170
  %175 = load i32*, i32** %8, align 8, !dbg !1005
  %176 = load i32, i32* %175, align 4, !dbg !1007
  %177 = or i32 %176, 524288, !dbg !1007
  store i32 %177, i32* %175, align 4, !dbg !1007
  br label %178, !dbg !1008

; <label>:178:                                    ; preds = %174, %170
  ret void, !dbg !1009
}

; Function Attrs: nounwind uwtable
define internal void @print_text_no_window(i32, i32, i32, i32, i8*) #0 !dbg !1010 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1013, metadata !274), !dbg !1014
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1015, metadata !274), !dbg !1016
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1017, metadata !274), !dbg !1018
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1019, metadata !274), !dbg !1020
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1021, metadata !274), !dbg !1022
  br label %11, !dbg !1023, !llvm.loop !1024

; <label>:11:                                     ; preds = %5
  %12 = load i32, i32* @next_xpos, align 4, !dbg !1025
  %13 = icmp ne i32 %12, -1, !dbg !1029
  br i1 %13, label %14, label %15, !dbg !1025

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !1030

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.print_text_no_window, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0)), !dbg !1033
  br label %45, !dbg !1036

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !1037

; <label>:17:                                     ; preds = %16
  %18 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** @root_window, align 8, !dbg !1039
  %19 = load i32, i32* %9, align 4, !dbg !1040
  call void @term_set_color(%struct._TERM_WINDOW* %18, i32 %19), !dbg !1041
  %20 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** @root_window, align 8, !dbg !1042
  %21 = load i32, i32* @next_xpos, align 4, !dbg !1043
  %22 = load i32, i32* @next_ypos, align 4, !dbg !1044
  call void @term_move(%struct._TERM_WINDOW* %20, i32 %21, i32 %22), !dbg !1045
  %23 = load i32, i32* %6, align 4, !dbg !1046
  %24 = and i32 %23, 256, !dbg !1048
  %25 = icmp ne i32 %24, 0, !dbg !1048
  br i1 %25, label %26, label %39, !dbg !1049

; <label>:26:                                     ; preds = %17
  %27 = load %struct.MAIN_WINDOW_BORDER_REC*, %struct.MAIN_WINDOW_BORDER_REC** @clrtoeol_info, align 8, !dbg !1050
  %28 = getelementptr inbounds %struct.MAIN_WINDOW_BORDER_REC, %struct.MAIN_WINDOW_BORDER_REC* %27, i32 0, i32 1, !dbg !1053
  %29 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %28, align 8, !dbg !1053
  %30 = icmp ne %struct._TERM_WINDOW* %29, null, !dbg !1054
  br i1 %30, label %31, label %36, !dbg !1055

; <label>:31:                                     ; preds = %26
  %32 = load %struct.MAIN_WINDOW_BORDER_REC*, %struct.MAIN_WINDOW_BORDER_REC** @clrtoeol_info, align 8, !dbg !1056
  %33 = getelementptr inbounds %struct.MAIN_WINDOW_BORDER_REC, %struct.MAIN_WINDOW_BORDER_REC* %32, i32 0, i32 1, !dbg !1058
  %34 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %33, align 8, !dbg !1058
  %35 = load i32, i32* @next_ypos, align 4, !dbg !1059
  call void @term_window_clrtoeol_abs(%struct._TERM_WINDOW* %34, i32 %35), !dbg !1060
  br label %38, !dbg !1061

; <label>:36:                                     ; preds = %26
  %37 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** @root_window, align 8, !dbg !1062
  call void @term_clrtoeol(%struct._TERM_WINDOW* %37), !dbg !1064
  br label %38

; <label>:38:                                     ; preds = %36, %31
  br label %39, !dbg !1065

; <label>:39:                                     ; preds = %38, %17
  %40 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** @root_window, align 8, !dbg !1066
  %41 = load i8*, i8** %10, align 8, !dbg !1067
  %42 = call i32 @term_addstr(%struct._TERM_WINDOW* %40, i8* %41), !dbg !1068
  %43 = load i32, i32* @next_xpos, align 4, !dbg !1069
  %44 = add nsw i32 %43, %42, !dbg !1069
  store i32 %44, i32* @next_xpos, align 4, !dbg !1069
  br label %45, !dbg !1070

; <label>:45:                                     ; preds = %39, %15
  ret void, !dbg !1071
}

; Function Attrs: nounwind
declare i64 @time(i64*) #3

declare void @textbuffer_line_add_colors(%struct.TEXT_BUFFER_REC*, %struct._LINE_REC**, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i32 @settings_get_bool(i8*) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare void @term_set_color(%struct._TERM_WINDOW*, i32) #2

declare void @term_move(%struct._TERM_WINDOW*, i32, i32) #2

declare void @term_window_clrtoeol_abs(%struct._TERM_WINDOW*, i32) #2

declare void @term_clrtoeol(%struct._TERM_WINDOW*) #2

declare i32 @term_addstr(%struct._TERM_WINDOW*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @remove_old_lines(%struct._TEXT_BUFFER_VIEW_REC*) #0 !dbg !1073 {
  %2 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  %3 = alloca %struct._LINE_REC*, align 8
  %4 = alloca i64, align 8
  store %struct._TEXT_BUFFER_VIEW_REC* %0, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_BUFFER_VIEW_REC** %2, metadata !1076, metadata !274), !dbg !1077
  call void @llvm.dbg.declare(metadata %struct._LINE_REC** %3, metadata !1078, metadata !274), !dbg !1079
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1080, metadata !274), !dbg !1081
  %5 = call i64 @time(i64* null) #5, !dbg !1082
  %6 = load i32, i32* @scrollback_time, align 4, !dbg !1083
  %7 = sext i32 %6 to i64, !dbg !1083
  %8 = sub nsw i64 %5, %7, !dbg !1084
  %9 = add nsw i64 %8, 1, !dbg !1085
  store i64 %9, i64* %4, align 8, !dbg !1086
  %10 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !1087
  %11 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %10, i32 0, i32 0, !dbg !1089
  %12 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %11, align 8, !dbg !1089
  %13 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %12, i32 0, i32 2, !dbg !1090
  %14 = load i32, i32* %13, align 8, !dbg !1090
  %15 = load i32, i32* @scrollback_lines, align 4, !dbg !1091
  %16 = load i32, i32* @scrollback_burst_remove, align 4, !dbg !1092
  %17 = add nsw i32 %15, %16, !dbg !1093
  %18 = icmp sge i32 %14, %17, !dbg !1094
  br i1 %18, label %19, label %48, !dbg !1095

; <label>:19:                                     ; preds = %1
  br label %20, !dbg !1096

; <label>:20:                                     ; preds = %44, %19
  %21 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !1098
  %22 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %21, i32 0, i32 0, !dbg !1100
  %23 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %22, align 8, !dbg !1100
  %24 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %23, i32 0, i32 2, !dbg !1101
  %25 = load i32, i32* %24, align 8, !dbg !1101
  %26 = load i32, i32* @scrollback_lines, align 4, !dbg !1102
  %27 = icmp sgt i32 %25, %26, !dbg !1103
  br i1 %27, label %28, label %47, !dbg !1104

; <label>:28:                                     ; preds = %20
  %29 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !1105
  %30 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %29, i32 0, i32 0, !dbg !1107
  %31 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %30, align 8, !dbg !1107
  %32 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %31, i32 0, i32 1, !dbg !1108
  %33 = load %struct._LINE_REC*, %struct._LINE_REC** %32, align 8, !dbg !1108
  store %struct._LINE_REC* %33, %struct._LINE_REC** %3, align 8, !dbg !1109
  %34 = load %struct._LINE_REC*, %struct._LINE_REC** %3, align 8, !dbg !1110
  %35 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %34, i32 0, i32 3, !dbg !1112
  %36 = getelementptr inbounds %struct.LINE_INFO_REC, %struct.LINE_INFO_REC* %35, i32 0, i32 1, !dbg !1113
  %37 = load i64, i64* %36, align 8, !dbg !1113
  %38 = load i64, i64* %4, align 8, !dbg !1114
  %39 = icmp sge i64 %37, %38, !dbg !1115
  br i1 %39, label %43, label %40, !dbg !1116

; <label>:40:                                     ; preds = %28
  %41 = load i32, i32* @scrollback_lines, align 4, !dbg !1117
  %42 = icmp eq i32 %41, 0, !dbg !1118
  br i1 %42, label %43, label %44, !dbg !1119

; <label>:43:                                     ; preds = %40, %28
  br label %47, !dbg !1121

; <label>:44:                                     ; preds = %40
  %45 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !1123
  %46 = load %struct._LINE_REC*, %struct._LINE_REC** %3, align 8, !dbg !1124
  call void @textbuffer_view_remove_line(%struct._TEXT_BUFFER_VIEW_REC* %45, %struct._LINE_REC* %46), !dbg !1125
  br label %20, !dbg !1126, !llvm.loop !1128

; <label>:47:                                     ; preds = %43, %20
  br label %48, !dbg !1129

; <label>:48:                                     ; preds = %47, %1
  ret void, !dbg !1130
}

declare void @textbuffer_view_remove_line(%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*) #2

declare i32 @settings_get_int(i8*) #2

declare i32 @settings_get_time(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!267, !268}
!llvm.ident = !{!269}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !245)
!1 = !DIFile(filename: "line348-gui-printtext.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{}
!3 = !{!4, !5, !110, !224, !232, !237, !236, !242, !40, !243, !163}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "INDENT_FUNC", file: !6, line: 10, baseType: !7)
!6 = !DIFile(filename: "textbuffer-view.h", directory: "/home/lichi/Desktop/irssi/task1")
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !32, !10}
!10 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_BUFFER_VIEW_REC", file: !6, line: 7, baseType: !13)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TEXT_BUFFER_VIEW_REC", file: !6, line: 50, size: 960, align: 64, elements: !14)
!14 = !{!15, !71, !72, !77, !78, !79, !80, !81, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !13, file: !6, line: 51, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_BUFFER_REC", file: !18, line: 72, baseType: !19)
!18 = !DIFile(filename: "textbuffer.h", directory: "/home/lichi/Desktop/irssi/task1")
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 60, size: 448, align: 64, elements: !20)
!20 = !{!21, !31, !53, !54, !55, !66, !67, !68, !69}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "text_chunks", scope: !19, file: !18, line: 61, baseType: !22, size: 64, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !24, line: 37, baseType: !25)
!24 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !24, line: 39, size: 128, align: 64, elements: !26)
!26 = !{!27, !30}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !25, file: !24, line: 41, baseType: !28, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !29, line: 77, baseType: !4)
!29 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!30 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !25, file: !24, line: 42, baseType: !22, size: 64, align: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "first_line", scope: !19, file: !18, line: 62, baseType: !32, size: 64, align: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "LINE_REC", file: !18, line: 52, baseType: !34)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_LINE_REC", file: !18, line: 34, size: 320, align: 64, elements: !35)
!35 = !{!36, !38, !39, !42}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !34, file: !18, line: 48, baseType: !37, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !34, file: !18, line: 48, baseType: !37, size: 64, align: 64, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !34, file: !18, line: 50, baseType: !40, size: 64, align: 64, offset: 128)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !34, file: !18, line: 51, baseType: !43, size: 128, align: 64, offset: 192)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "LINE_INFO_REC", file: !18, line: 32, baseType: !44)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 29, size: 128, align: 64, elements: !45)
!45 = !{!46, !47}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !44, file: !18, line: 30, baseType: !10, size: 32, align: 32)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !44, file: !18, line: 31, baseType: !48, size: 64, align: 64, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !49, line: 75, baseType: !50)
!49 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !51, line: 139, baseType: !52)
!51 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!52 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "lines_count", scope: !19, file: !18, line: 63, baseType: !10, size: 32, align: 32, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "cur_line", scope: !19, file: !18, line: 65, baseType: !32, size: 64, align: 64, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "cur_text", scope: !19, file: !18, line: 66, baseType: !56, size: 64, align: 64, offset: 256)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_CHUNK_REC", file: !18, line: 58, baseType: !58)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 54, size: 131008, align: 32, elements: !59)
!59 = !{!60, !64, !65}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !58, file: !18, line: 55, baseType: !61, size: 130944, align: 8)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 130944, align: 8, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 16368)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !58, file: !18, line: 56, baseType: !10, size: 32, align: 32, offset: 130944)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !58, file: !18, line: 57, baseType: !10, size: 32, align: 32, offset: 130976)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "last_fg", scope: !19, file: !18, line: 68, baseType: !10, size: 32, align: 32, offset: 320)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "last_bg", scope: !19, file: !18, line: 69, baseType: !10, size: 32, align: 32, offset: 352)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "last_flags", scope: !19, file: !18, line: 70, baseType: !10, size: 32, align: 32, offset: 384)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "last_eol", scope: !19, file: !18, line: 71, baseType: !70, size: 1, align: 32, offset: 416, flags: DIFlagBitField, extraData: i64 416)
!70 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "siblings", scope: !13, file: !6, line: 53, baseType: !22, size: 64, align: 64, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !13, file: !6, line: 55, baseType: !73, size: 64, align: 64, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "TERM_WINDOW", file: !75, line: 4, baseType: !76)
!75 = !DIFile(filename: "term.h", directory: "/home/lichi/Desktop/irssi/task1")
!76 = !DICompositeType(tag: DW_TAG_structure_type, name: "_TERM_WINDOW", file: !75, line: 4, flags: DIFlagFwdDecl)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !13, file: !6, line: 56, baseType: !10, size: 32, align: 32, offset: 192)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !13, file: !6, line: 56, baseType: !10, size: 32, align: 32, offset: 224)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "default_indent", scope: !13, file: !6, line: 58, baseType: !10, size: 32, align: 32, offset: 256)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "default_indent_func", scope: !13, file: !6, line: 59, baseType: !5, size: 64, align: 64, offset: 320)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !13, file: !6, line: 61, baseType: !82, size: 64, align: 64, offset: 384)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_BUFFER_CACHE_REC", file: !6, line: 48, baseType: !84)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 37, size: 192, align: 64, elements: !85)
!85 = !{!86, !87, !88, !93, !94}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !84, file: !6, line: 38, baseType: !10, size: 32, align: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !84, file: !6, line: 39, baseType: !10, size: 32, align: 32, offset: 32)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "line_cache", scope: !84, file: !6, line: 41, baseType: !89, size: 64, align: 64, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !91, line: 37, baseType: !92)
!91 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!92 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !91, line: 37, flags: DIFlagFwdDecl)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "update_counter", scope: !84, file: !6, line: 45, baseType: !41, size: 8, align: 8, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "last_linecount", scope: !84, file: !6, line: 47, baseType: !10, size: 32, align: 32, offset: 160)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "ypos", scope: !13, file: !6, line: 63, baseType: !10, size: 32, align: 32, offset: 448)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "startline", scope: !13, file: !6, line: 66, baseType: !32, size: 64, align: 64, offset: 512)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "subline", scope: !13, file: !6, line: 68, baseType: !10, size: 32, align: 32, offset: 576)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_startline", scope: !13, file: !6, line: 71, baseType: !32, size: 64, align: 64, offset: 640)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_subline", scope: !13, file: !6, line: 72, baseType: !10, size: 32, align: 32, offset: 704)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "bookmarks", scope: !13, file: !6, line: 76, baseType: !89, size: 64, align: 64, offset: 768)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "hidden_level", scope: !13, file: !6, line: 79, baseType: !10, size: 32, align: 32, offset: 832)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "empty_linecount", scope: !13, file: !6, line: 82, baseType: !10, size: 32, align: 32, offset: 864)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "longword_noindent", scope: !13, file: !6, line: 84, baseType: !70, size: 1, align: 32, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "scroll", scope: !13, file: !6, line: 86, baseType: !70, size: 1, align: 32, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "utf8", scope: !13, file: !6, line: 88, baseType: !70, size: 1, align: 32, offset: 898, flags: DIFlagBitField, extraData: i64 896)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "break_wide", scope: !13, file: !6, line: 90, baseType: !70, size: 1, align: 32, offset: 899, flags: DIFlagBitField, extraData: i64 896)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "bottom", scope: !13, file: !6, line: 92, baseType: !70, size: 1, align: 32, offset: 900, flags: DIFlagBitField, extraData: i64 896)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "more_text", scope: !13, file: !6, line: 94, baseType: !70, size: 1, align: 32, offset: 901, flags: DIFlagBitField, extraData: i64 896)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !13, file: !6, line: 96, baseType: !70, size: 1, align: 32, offset: 902, flags: DIFlagBitField, extraData: i64 896)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, align: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "GUI_WINDOW_REC", file: !112, line: 24, baseType: !113)
!112 = !DIFile(filename: "gui-windows.h", directory: "/home/lichi/Desktop/irssi/task1")
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !112, line: 13, size: 320, align: 64, elements: !114)
!114 = !{!115, !217, !218, !219, !220, !221, !222, !223}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !113, file: !112, line: 14, baseType: !116, size: 64, align: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64, align: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "MAIN_WINDOW_REC", file: !118, line: 34, baseType: !119)
!118 = !DIFile(filename: "mainwindows.h", directory: "/home/lichi/Desktop/irssi/task1")
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !118, line: 16, size: 704, align: 64, elements: !120)
!120 = !{!121, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !119, file: !118, line: 17, baseType: !122, size: 64, align: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "WINDOW_REC", file: !124, line: 117, baseType: !125)
!124 = !DIFile(filename: "../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WINDOW_REC", file: !126, line: 28, size: 1280, align: 64, elements: !127)
!126 = !DIFile(filename: "../../src/fe-common/core/fe-windows.h", directory: "/home/lichi/Desktop/irssi/task1")
!127 = !{!128, !129, !132, !133, !134, !135, !165, !166, !167, !168, !169, !170, !171, !172, !173, !192, !193, !194, !195, !196, !197, !198, !199}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "refnum", scope: !125, file: !126, line: 29, baseType: !10, size: 32, align: 32)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !125, file: !126, line: 30, baseType: !130, size: 64, align: 64, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!131 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !125, file: !126, line: 32, baseType: !10, size: 32, align: 32, offset: 128)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !125, file: !126, line: 32, baseType: !10, size: 32, align: 32, offset: 160)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !125, file: !126, line: 34, baseType: !22, size: 64, align: 64, offset: 192)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !125, file: !126, line: 35, baseType: !136, size: 64, align: 64, offset: 256)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, align: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !124, line: 108, baseType: !138)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !139, line: 5, size: 704, align: 64, elements: !140)
!139 = !DIFile(filename: "../../src/core/window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!140 = !{!141, !143, !144, !145, !146, !150, !151, !152, !153, !154, !155, !159}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !138, file: !142, line: 3, baseType: !10, size: 32, align: 32)
!142 = !DIFile(filename: "../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!143 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !138, file: !142, line: 4, baseType: !10, size: 32, align: 32, offset: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !138, file: !142, line: 5, baseType: !89, size: 64, align: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !138, file: !142, line: 7, baseType: !4, size: 64, align: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !138, file: !142, line: 8, baseType: !147, size: 64, align: 64, offset: 192)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64, align: 64)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !124, line: 107, baseType: !149)
!149 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !124, line: 107, flags: DIFlagFwdDecl)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !138, file: !142, line: 9, baseType: !130, size: 64, align: 64, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !138, file: !142, line: 10, baseType: !130, size: 64, align: 64, offset: 320)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !138, file: !142, line: 11, baseType: !48, size: 64, align: 64, offset: 384)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !138, file: !142, line: 12, baseType: !10, size: 32, align: 32, offset: 448)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !138, file: !142, line: 13, baseType: !130, size: 64, align: 64, offset: 512)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !138, file: !142, line: 15, baseType: !156, size: 64, align: 64, offset: 576)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64, align: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{null, !136}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !138, file: !142, line: 17, baseType: !160, size: 64, align: 64, offset: 640)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64, align: 64)
!161 = !DISubroutineType(types: !162)
!162 = !{!163, !136}
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64, align: 64)
!164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "active_server", scope: !125, file: !126, line: 36, baseType: !147, size: 64, align: 64, offset: 320)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "connect_server", scope: !125, file: !126, line: 37, baseType: !147, size: 64, align: 64, offset: 384)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !125, file: !126, line: 38, baseType: !130, size: 64, align: 64, offset: 448)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !125, file: !126, line: 40, baseType: !10, size: 32, align: 32, offset: 512)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "bound_items", scope: !125, file: !126, line: 41, baseType: !22, size: 64, align: 64, offset: 576)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "immortal", scope: !125, file: !126, line: 43, baseType: !70, size: 1, align: 32, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "sticky_refnum", scope: !125, file: !126, line: 44, baseType: !70, size: 1, align: 32, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !125, file: !126, line: 45, baseType: !70, size: 1, align: 32, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !125, file: !126, line: 48, baseType: !174, size: 64, align: 64, offset: 704)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64, align: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "HISTORY_REC", file: !176, line: 14, baseType: !177)
!176 = !DIFile(filename: "../../src/fe-common/core/command-history.h", directory: "/home/lichi/Desktop/irssi/task1")
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !176, line: 6, size: 256, align: 64, elements: !178)
!178 = !{!179, !180, !189, !190, !191}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !177, file: !176, line: 7, baseType: !130, size: 64, align: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !177, file: !176, line: 9, baseType: !181, size: 64, align: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64, align: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "GList", file: !183, line: 37, baseType: !184)
!183 = !DIFile(filename: "/usr/include/glib-2.0/glib/glist.h", directory: "/home/lichi/Desktop/irssi/task1")
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GList", file: !183, line: 39, size: 192, align: 64, elements: !185)
!185 = !{!186, !187, !188}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !184, file: !183, line: 41, baseType: !28, size: 64, align: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !184, file: !183, line: 42, baseType: !181, size: 64, align: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !184, file: !183, line: 43, baseType: !181, size: 64, align: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !177, file: !176, line: 10, baseType: !10, size: 32, align: 32, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !177, file: !176, line: 12, baseType: !10, size: 32, align: 32, offset: 160)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "redo", scope: !177, file: !176, line: 13, baseType: !10, size: 1, align: 32, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "history_name", scope: !125, file: !126, line: 49, baseType: !130, size: 64, align: 64, offset: 768)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !125, file: !126, line: 51, baseType: !10, size: 32, align: 32, offset: 832)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !125, file: !126, line: 52, baseType: !130, size: 64, align: 64, offset: 896)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "last_timestamp", scope: !125, file: !126, line: 54, baseType: !48, size: 64, align: 64, offset: 960)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "last_line", scope: !125, file: !126, line: 55, baseType: !48, size: 64, align: 64, offset: 1024)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "theme_name", scope: !125, file: !126, line: 57, baseType: !130, size: 64, align: 64, offset: 1088)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "theme", scope: !125, file: !126, line: 58, baseType: !4, size: 64, align: 64, offset: 1152)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "gui_data", scope: !125, file: !126, line: 60, baseType: !4, size: 64, align: 64, offset: 1216)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "screen_win", scope: !119, file: !118, line: 19, baseType: !73, size: 64, align: 64, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "sticky_windows", scope: !119, file: !118, line: 20, baseType: !10, size: 32, align: 32, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "first_line", scope: !119, file: !118, line: 22, baseType: !10, size: 32, align: 32, offset: 160)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "last_line", scope: !119, file: !118, line: 22, baseType: !10, size: 32, align: 32, offset: 192)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "first_column", scope: !119, file: !118, line: 23, baseType: !10, size: 32, align: 32, offset: 224)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "last_column", scope: !119, file: !118, line: 23, baseType: !10, size: 32, align: 32, offset: 256)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !119, file: !118, line: 24, baseType: !10, size: 32, align: 32, offset: 288)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !119, file: !118, line: 24, baseType: !10, size: 32, align: 32, offset: 320)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "statusbars", scope: !119, file: !118, line: 26, baseType: !22, size: 64, align: 64, offset: 384)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_lines_top", scope: !119, file: !118, line: 27, baseType: !10, size: 32, align: 32, offset: 448)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_lines_bottom", scope: !119, file: !118, line: 27, baseType: !10, size: 32, align: 32, offset: 480)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_lines", scope: !119, file: !118, line: 28, baseType: !10, size: 32, align: 32, offset: 512)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_columns_left", scope: !119, file: !118, line: 29, baseType: !10, size: 32, align: 32, offset: 544)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_columns_right", scope: !119, file: !118, line: 29, baseType: !10, size: 32, align: 32, offset: 576)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_columns", scope: !119, file: !118, line: 30, baseType: !10, size: 32, align: 32, offset: 608)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !119, file: !118, line: 32, baseType: !70, size: 1, align: 32, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "size_dirty", scope: !119, file: !118, line: 33, baseType: !70, size: 1, align: 32, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "view", scope: !113, file: !112, line: 15, baseType: !11, size: 64, align: 64, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "scroll", scope: !113, file: !112, line: 17, baseType: !70, size: 1, align: 32, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "use_scroll", scope: !113, file: !112, line: 18, baseType: !70, size: 1, align: 32, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "sticky", scope: !113, file: !112, line: 20, baseType: !70, size: 1, align: 32, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "use_insert_after", scope: !113, file: !112, line: 21, baseType: !70, size: 1, align: 32, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "insert_after", scope: !113, file: !112, line: 22, baseType: !32, size: 64, align: 64, offset: 192)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "insert_after_time", scope: !113, file: !112, line: 23, baseType: !48, size: 64, align: 64, offset: 256)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashFunc", file: !29, line: 90, baseType: !225)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64, align: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{!228, !229}
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !29, line: 55, baseType: !70)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "gconstpointer", file: !29, line: 78, baseType: !230)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64, align: 64)
!231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCompareFunc", file: !29, line: 80, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64, align: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!236, !229, !229}
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !29, line: 49, baseType: !10)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !238, line: 9, baseType: !239)
!238 = !DIFile(filename: "../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64, align: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{null, !230, !230, !230, !230, !230, !230}
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !29, line: 48, baseType: !52)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64, align: 64)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !29, line: 46, baseType: !131)
!245 = !{!246, !251, !252, !253, !254, !255, !264, !265, !266}
!246 = distinct !DIGlobalVariable(name: "mirc_colors", scope: !0, file: !247, line: 33, type: !248, isLocal: false, isDefinition: true, variable: [100 x i32]* @mirc_colors)
!247 = !DIFile(filename: "gui-printtext.c", directory: "/home/lichi/Desktop/irssi/task1")
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 3200, align: 32, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 100)
!251 = distinct !DIGlobalVariable(name: "next_xpos", scope: !0, file: !247, line: 43, type: !10, isLocal: true, isDefinition: true, variable: i32* @next_xpos)
!252 = distinct !DIGlobalVariable(name: "next_ypos", scope: !0, file: !247, line: 43, type: !10, isLocal: true, isDefinition: true, variable: i32* @next_ypos)
!253 = distinct !DIGlobalVariable(name: "indent_functions", scope: !0, file: !247, line: 45, type: !89, isLocal: true, isDefinition: true, variable: %struct._GHashTable** @indent_functions)
!254 = distinct !DIGlobalVariable(name: "default_indent_func", scope: !0, file: !247, line: 46, type: !5, isLocal: true, isDefinition: true, variable: i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)** @default_indent_func)
!255 = distinct !DIGlobalVariable(name: "eol", scope: !256, file: !247, line: 253, type: !260, isLocal: true, isDefinition: true, variable: [2 x i8]* @view_add_eol.eol)
!256 = distinct !DISubprogram(name: "view_add_eol", scope: !247, file: !247, line: 251, type: !257, isLocal: true, isDefinition: true, scopeLine: 252, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!257 = !DISubroutineType(types: !258)
!258 = !{null, !11, !259}
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !261, size: 16, align: 8, elements: !262)
!261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!262 = !{!263}
!263 = !DISubrange(count: 2)
!264 = distinct !DIGlobalVariable(name: "scrollback_time", scope: !0, file: !247, line: 41, type: !10, isLocal: true, isDefinition: true, variable: i32* @scrollback_time)
!265 = distinct !DIGlobalVariable(name: "scrollback_lines", scope: !0, file: !247, line: 41, type: !10, isLocal: true, isDefinition: true, variable: i32* @scrollback_lines)
!266 = distinct !DIGlobalVariable(name: "scrollback_burst_remove", scope: !0, file: !247, line: 41, type: !10, isLocal: true, isDefinition: true, variable: i32* @scrollback_burst_remove)
!267 = !{i32 2, !"Dwarf Version", i32 4}
!268 = !{i32 2, !"Debug Info Version", i32 3}
!269 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!270 = distinct !DISubprogram(name: "gui_register_indent_func", scope: !247, file: !247, line: 48, type: !271, isLocal: false, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!271 = !DISubroutineType(types: !272)
!272 = !{null, !163, !5}
!273 = !DILocalVariable(name: "name", arg: 1, scope: !270, file: !247, line: 48, type: !163)
!274 = !DIExpression()
!275 = !DILocation(line: 48, column: 43, scope: !270)
!276 = !DILocalVariable(name: "func", arg: 2, scope: !270, file: !247, line: 48, type: !5)
!277 = !DILocation(line: 48, column: 61, scope: !270)
!278 = !DILocalVariable(name: "key", scope: !270, file: !247, line: 50, type: !28)
!279 = !DILocation(line: 50, column: 11, scope: !270)
!280 = !DILocalVariable(name: "value", scope: !270, file: !247, line: 50, type: !28)
!281 = !DILocation(line: 50, column: 16, scope: !270)
!282 = !DILocalVariable(name: "list", scope: !270, file: !247, line: 51, type: !22)
!283 = !DILocation(line: 51, column: 17, scope: !270)
!284 = !DILocation(line: 53, column: 35, scope: !285)
!285 = distinct !DILexicalBlock(scope: !270, file: !247, line: 53, column: 6)
!286 = !DILocation(line: 53, column: 53, scope: !285)
!287 = !DILocation(line: 53, column: 6, scope: !285)
!288 = !DILocation(line: 53, column: 6, scope: !270)
!289 = !DILocation(line: 54, column: 24, scope: !290)
!290 = distinct !DILexicalBlock(scope: !285, file: !247, line: 53, column: 74)
!291 = !DILocation(line: 54, column: 22, scope: !290)
!292 = !DILocation(line: 55, column: 23, scope: !290)
!293 = !DILocation(line: 55, column: 41, scope: !290)
!294 = !DILocation(line: 55, column: 3, scope: !290)
!295 = !DILocation(line: 56, column: 2, scope: !290)
!296 = !DILocation(line: 57, column: 18, scope: !297)
!297 = distinct !DILexicalBlock(scope: !285, file: !247, line: 56, column: 9)
!298 = !DILocation(line: 57, column: 9, scope: !297)
!299 = !DILocation(line: 57, column: 7, scope: !297)
!300 = !DILocation(line: 58, column: 22, scope: !297)
!301 = !DILocation(line: 61, column: 24, scope: !270)
!302 = !DILocation(line: 61, column: 39, scope: !270)
!303 = !DILocation(line: 61, column: 30, scope: !270)
!304 = !DILocation(line: 61, column: 9, scope: !270)
!305 = !DILocation(line: 61, column: 7, scope: !270)
!306 = !DILocation(line: 62, column: 22, scope: !270)
!307 = !DILocation(line: 62, column: 40, scope: !270)
!308 = !DILocation(line: 62, column: 45, scope: !270)
!309 = !DILocation(line: 62, column: 2, scope: !270)
!310 = !DILocation(line: 63, column: 1, scope: !270)
!311 = distinct !DISubprogram(name: "gui_unregister_indent_func", scope: !247, file: !247, line: 65, type: !271, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!312 = !DILocalVariable(name: "name", arg: 1, scope: !311, file: !247, line: 65, type: !163)
!313 = !DILocation(line: 65, column: 45, scope: !311)
!314 = !DILocalVariable(name: "func", arg: 2, scope: !311, file: !247, line: 65, type: !5)
!315 = !DILocation(line: 65, column: 63, scope: !311)
!316 = !DILocalVariable(name: "key", scope: !311, file: !247, line: 67, type: !28)
!317 = !DILocation(line: 67, column: 11, scope: !311)
!318 = !DILocalVariable(name: "value", scope: !311, file: !247, line: 67, type: !28)
!319 = !DILocation(line: 67, column: 16, scope: !311)
!320 = !DILocalVariable(name: "list", scope: !311, file: !247, line: 68, type: !22)
!321 = !DILocation(line: 68, column: 17, scope: !311)
!322 = !DILocation(line: 70, column: 35, scope: !323)
!323 = distinct !DILexicalBlock(scope: !311, file: !247, line: 70, column: 6)
!324 = !DILocation(line: 70, column: 53, scope: !323)
!325 = !DILocation(line: 70, column: 6, scope: !323)
!326 = !DILocation(line: 70, column: 6, scope: !311)
!327 = !DILocation(line: 71, column: 10, scope: !328)
!328 = distinct !DILexicalBlock(scope: !323, file: !247, line: 70, column: 74)
!329 = !DILocation(line: 71, column: 8, scope: !328)
!330 = !DILocation(line: 73, column: 25, scope: !328)
!331 = !DILocation(line: 73, column: 40, scope: !328)
!332 = !DILocation(line: 73, column: 31, scope: !328)
!333 = !DILocation(line: 73, column: 10, scope: !328)
!334 = !DILocation(line: 73, column: 8, scope: !328)
!335 = !DILocation(line: 74, column: 23, scope: !328)
!336 = !DILocation(line: 74, column: 41, scope: !328)
!337 = !DILocation(line: 74, column: 3, scope: !328)
!338 = !DILocation(line: 75, column: 7, scope: !339)
!339 = distinct !DILexicalBlock(scope: !328, file: !247, line: 75, column: 7)
!340 = !DILocation(line: 75, column: 12, scope: !339)
!341 = !DILocation(line: 75, column: 7, scope: !328)
!342 = !DILocation(line: 76, column: 11, scope: !339)
!343 = !DILocation(line: 76, column: 4, scope: !339)
!344 = !DILocation(line: 78, column: 24, scope: !339)
!345 = !DILocation(line: 78, column: 42, scope: !339)
!346 = !DILocation(line: 78, column: 47, scope: !339)
!347 = !DILocation(line: 78, column: 4, scope: !339)
!348 = !DILocation(line: 79, column: 2, scope: !328)
!349 = !DILocation(line: 81, column: 6, scope: !350)
!350 = distinct !DILexicalBlock(scope: !311, file: !247, line: 81, column: 6)
!351 = !DILocation(line: 81, column: 29, scope: !350)
!352 = !DILocation(line: 81, column: 26, scope: !350)
!353 = !DILocation(line: 81, column: 6, scope: !311)
!354 = !DILocation(line: 82, column: 3, scope: !350)
!355 = !DILocation(line: 84, column: 42, scope: !311)
!356 = !DILocation(line: 84, column: 2, scope: !311)
!357 = !DILocation(line: 85, column: 1, scope: !311)
!358 = distinct !DISubprogram(name: "gui_set_default_indent", scope: !247, file: !247, line: 87, type: !359, isLocal: false, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !163}
!361 = !DILocalVariable(name: "name", arg: 1, scope: !358, file: !247, line: 87, type: !163)
!362 = !DILocation(line: 87, column: 41, scope: !358)
!363 = !DILocalVariable(name: "list", scope: !358, file: !247, line: 89, type: !22)
!364 = !DILocation(line: 89, column: 10, scope: !358)
!365 = !DILocation(line: 91, column: 9, scope: !358)
!366 = !DILocation(line: 91, column: 14, scope: !358)
!367 = !DILocation(line: 91, column: 9, scope: !368)
!368 = !DILexicalBlockFile(scope: !358, file: !247, discriminator: 1)
!369 = !DILocation(line: 92, column: 23, scope: !358)
!370 = !DILocation(line: 92, column: 41, scope: !358)
!371 = !DILocation(line: 92, column: 3, scope: !358)
!372 = !DILocation(line: 91, column: 9, scope: !373)
!373 = !DILexicalBlockFile(scope: !358, file: !247, discriminator: 2)
!374 = !DILocation(line: 91, column: 9, scope: !375)
!375 = !DILexicalBlockFile(scope: !358, file: !247, discriminator: 3)
!376 = !DILocation(line: 91, column: 7, scope: !375)
!377 = !DILocation(line: 93, column: 24, scope: !358)
!378 = !DILocation(line: 93, column: 29, scope: !358)
!379 = !DILocation(line: 93, column: 24, scope: !368)
!380 = !DILocation(line: 94, column: 17, scope: !358)
!381 = !DILocation(line: 94, column: 23, scope: !358)
!382 = !DILocation(line: 94, column: 3, scope: !358)
!383 = !DILocation(line: 93, column: 24, scope: !373)
!384 = !DILocation(line: 93, column: 24, scope: !375)
!385 = !DILocation(line: 93, column: 22, scope: !375)
!386 = !DILocation(line: 95, column: 9, scope: !358)
!387 = !DILocation(line: 96, column: 1, scope: !358)
!388 = distinct !DISubprogram(name: "get_default_indent_func", scope: !247, file: !247, line: 98, type: !389, isLocal: false, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!389 = !DISubroutineType(types: !390)
!390 = !{!5}
!391 = !DILocation(line: 100, column: 16, scope: !388)
!392 = !DILocation(line: 100, column: 9, scope: !388)
!393 = distinct !DISubprogram(name: "gui_printtext", scope: !247, file: !247, line: 103, type: !394, isLocal: false, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!394 = !DISubroutineType(types: !395)
!395 = !{null, !10, !10, !163}
!396 = !DILocalVariable(name: "xpos", arg: 1, scope: !393, file: !247, line: 103, type: !10)
!397 = !DILocation(line: 103, column: 24, scope: !393)
!398 = !DILocalVariable(name: "ypos", arg: 2, scope: !393, file: !247, line: 103, type: !10)
!399 = !DILocation(line: 103, column: 34, scope: !393)
!400 = !DILocalVariable(name: "str", arg: 3, scope: !393, file: !247, line: 103, type: !163)
!401 = !DILocation(line: 103, column: 52, scope: !393)
!402 = !DILocation(line: 105, column: 14, scope: !393)
!403 = !DILocation(line: 105, column: 12, scope: !393)
!404 = !DILocation(line: 106, column: 14, scope: !393)
!405 = !DILocation(line: 106, column: 12, scope: !393)
!406 = !DILocation(line: 108, column: 16, scope: !393)
!407 = !DILocation(line: 108, column: 2, scope: !393)
!408 = !DILocation(line: 110, column: 24, scope: !393)
!409 = !DILocation(line: 110, column: 12, scope: !393)
!410 = !DILocation(line: 111, column: 1, scope: !393)
!411 = distinct !DISubprogram(name: "gui_printtext_internal", scope: !247, file: !247, line: 113, type: !394, isLocal: false, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!412 = !DILocalVariable(name: "xpos", arg: 1, scope: !411, file: !247, line: 113, type: !10)
!413 = !DILocation(line: 113, column: 33, scope: !411)
!414 = !DILocalVariable(name: "ypos", arg: 2, scope: !411, file: !247, line: 113, type: !10)
!415 = !DILocation(line: 113, column: 43, scope: !411)
!416 = !DILocalVariable(name: "str", arg: 3, scope: !411, file: !247, line: 113, type: !163)
!417 = !DILocation(line: 113, column: 61, scope: !411)
!418 = !DILocation(line: 115, column: 14, scope: !411)
!419 = !DILocation(line: 115, column: 12, scope: !411)
!420 = !DILocation(line: 116, column: 14, scope: !411)
!421 = !DILocation(line: 116, column: 12, scope: !411)
!422 = !DILocation(line: 118, column: 25, scope: !411)
!423 = !DILocation(line: 118, column: 2, scope: !411)
!424 = !DILocation(line: 120, column: 24, scope: !411)
!425 = !DILocation(line: 120, column: 12, scope: !411)
!426 = !DILocation(line: 121, column: 1, scope: !411)
!427 = distinct !DISubprogram(name: "gui_printtext_after_time", scope: !247, file: !247, line: 125, type: !428, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!428 = !DISubroutineType(types: !429)
!429 = !{null, !430, !32, !163, !48}
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64, align: 64)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_DEST_REC", file: !432, line: 62, baseType: !433)
!432 = !DIFile(filename: "../../src/fe-common/core/formats.h", directory: "/home/lichi/Desktop/irssi/task1")
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TEXT_DEST_REC", file: !432, line: 50, size: 576, align: 64, elements: !434)
!434 = !{!435, !436, !437, !438, !439, !440, !441, !442, !443, !444}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !433, file: !432, line: 51, baseType: !122, size: 64, align: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !433, file: !432, line: 52, baseType: !147, size: 64, align: 64, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "server_tag", scope: !433, file: !432, line: 53, baseType: !163, size: 64, align: 64, offset: 128)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !433, file: !432, line: 54, baseType: !163, size: 64, align: 64, offset: 192)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !433, file: !432, line: 55, baseType: !163, size: 64, align: 64, offset: 256)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !433, file: !432, line: 56, baseType: !163, size: 64, align: 64, offset: 320)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !433, file: !432, line: 57, baseType: !10, size: 32, align: 32, offset: 384)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_priority", scope: !433, file: !432, line: 59, baseType: !10, size: 32, align: 32, offset: 416)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !433, file: !432, line: 60, baseType: !130, size: 64, align: 64, offset: 448)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !433, file: !432, line: 61, baseType: !10, size: 32, align: 32, offset: 512)
!445 = !DILocalVariable(name: "dest", arg: 1, scope: !427, file: !247, line: 125, type: !430)
!446 = !DILocation(line: 125, column: 46, scope: !427)
!447 = !DILocalVariable(name: "prev", arg: 2, scope: !427, file: !247, line: 125, type: !32)
!448 = !DILocation(line: 125, column: 62, scope: !427)
!449 = !DILocalVariable(name: "str", arg: 3, scope: !427, file: !247, line: 125, type: !163)
!450 = !DILocation(line: 125, column: 80, scope: !427)
!451 = !DILocalVariable(name: "time", arg: 4, scope: !427, file: !247, line: 125, type: !48)
!452 = !DILocation(line: 125, column: 92, scope: !427)
!453 = !DILocalVariable(name: "gui", scope: !427, file: !247, line: 127, type: !110)
!454 = !DILocation(line: 127, column: 18, scope: !427)
!455 = !DILocation(line: 129, column: 30, scope: !427)
!456 = !DILocation(line: 129, column: 36, scope: !427)
!457 = !DILocation(line: 129, column: 45, scope: !427)
!458 = !DILocation(line: 129, column: 9, scope: !427)
!459 = !DILocation(line: 129, column: 6, scope: !427)
!460 = !DILocation(line: 131, column: 6, scope: !461)
!461 = distinct !DILexicalBlock(scope: !427, file: !247, line: 131, column: 6)
!462 = !DILocation(line: 131, column: 11, scope: !461)
!463 = !DILocation(line: 131, column: 18, scope: !461)
!464 = !DILocation(line: 131, column: 22, scope: !465)
!465 = !DILexicalBlockFile(scope: !461, file: !247, discriminator: 1)
!466 = !DILocation(line: 131, column: 27, scope: !465)
!467 = !DILocation(line: 131, column: 33, scope: !465)
!468 = !DILocation(line: 131, column: 41, scope: !465)
!469 = !DILocation(line: 131, column: 6, scope: !465)
!470 = !DILocation(line: 133, column: 16, scope: !471)
!471 = distinct !DILexicalBlock(scope: !461, file: !247, line: 131, column: 51)
!472 = !DILocation(line: 133, column: 21, scope: !471)
!473 = !DILocation(line: 133, column: 28, scope: !471)
!474 = !DILocation(line: 133, column: 33, scope: !471)
!475 = !DILocation(line: 133, column: 3, scope: !471)
!476 = !DILocation(line: 134, column: 2, scope: !471)
!477 = !DILocation(line: 136, column: 2, scope: !427)
!478 = !DILocation(line: 136, column: 7, scope: !427)
!479 = !DILocation(line: 136, column: 24, scope: !427)
!480 = !DILocation(line: 137, column: 22, scope: !427)
!481 = !DILocation(line: 137, column: 2, scope: !427)
!482 = !DILocation(line: 137, column: 7, scope: !427)
!483 = !DILocation(line: 137, column: 20, scope: !427)
!484 = !DILocation(line: 138, column: 27, scope: !427)
!485 = !DILocation(line: 138, column: 2, scope: !427)
!486 = !DILocation(line: 138, column: 7, scope: !427)
!487 = !DILocation(line: 138, column: 25, scope: !427)
!488 = !DILocation(line: 139, column: 21, scope: !427)
!489 = !DILocation(line: 139, column: 27, scope: !427)
!490 = !DILocation(line: 139, column: 2, scope: !427)
!491 = !DILocation(line: 140, column: 2, scope: !427)
!492 = !DILocation(line: 140, column: 7, scope: !427)
!493 = !DILocation(line: 140, column: 24, scope: !427)
!494 = !DILocation(line: 141, column: 50, scope: !427)
!495 = !DILocation(line: 141, column: 56, scope: !427)
!496 = !DILocation(line: 141, column: 64, scope: !427)
!497 = !DILocation(line: 141, column: 69, scope: !427)
!498 = !DILocation(line: 141, column: 83, scope: !427)
!499 = !DILocation(line: 141, column: 2, scope: !427)
!500 = !DILocation(line: 142, column: 1, scope: !427)
!501 = !DILocalVariable(name: "view", arg: 1, scope: !256, file: !247, line: 251, type: !11)
!502 = !DILocation(line: 251, column: 48, scope: !256)
!503 = !DILocalVariable(name: "line", arg: 2, scope: !256, file: !247, line: 251, type: !259)
!504 = !DILocation(line: 251, column: 65, scope: !256)
!505 = !DILocation(line: 255, column: 28, scope: !256)
!506 = !DILocation(line: 255, column: 34, scope: !256)
!507 = !DILocation(line: 255, column: 43, scope: !256)
!508 = !DILocation(line: 255, column: 42, scope: !256)
!509 = !DILocation(line: 255, column: 10, scope: !256)
!510 = !DILocation(line: 255, column: 3, scope: !256)
!511 = !DILocation(line: 255, column: 8, scope: !256)
!512 = !DILocation(line: 256, column: 30, scope: !256)
!513 = !DILocation(line: 256, column: 37, scope: !256)
!514 = !DILocation(line: 256, column: 36, scope: !256)
!515 = !DILocation(line: 256, column: 2, scope: !256)
!516 = !DILocation(line: 257, column: 1, scope: !256)
!517 = distinct !DISubprogram(name: "gui_printtext_after", scope: !247, file: !247, line: 144, type: !518, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!518 = !DISubroutineType(types: !519)
!519 = !{null, !430, !32, !163}
!520 = !DILocalVariable(name: "dest", arg: 1, scope: !517, file: !247, line: 144, type: !430)
!521 = !DILocation(line: 144, column: 41, scope: !517)
!522 = !DILocalVariable(name: "prev", arg: 2, scope: !517, file: !247, line: 144, type: !32)
!523 = !DILocation(line: 144, column: 57, scope: !517)
!524 = !DILocalVariable(name: "str", arg: 3, scope: !517, file: !247, line: 144, type: !163)
!525 = !DILocation(line: 144, column: 75, scope: !517)
!526 = !DILocation(line: 146, column: 27, scope: !517)
!527 = !DILocation(line: 146, column: 33, scope: !517)
!528 = !DILocation(line: 146, column: 39, scope: !517)
!529 = !DILocation(line: 146, column: 2, scope: !517)
!530 = !DILocation(line: 147, column: 1, scope: !517)
!531 = distinct !DISubprogram(name: "gui_printtext_window_border", scope: !247, file: !247, line: 149, type: !532, isLocal: false, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!532 = !DISubroutineType(types: !533)
!533 = !{null, !10, !10}
!534 = !DILocalVariable(name: "x", arg: 1, scope: !531, file: !247, line: 149, type: !10)
!535 = !DILocation(line: 149, column: 38, scope: !531)
!536 = !DILocalVariable(name: "y", arg: 2, scope: !531, file: !247, line: 149, type: !10)
!537 = !DILocation(line: 149, column: 45, scope: !531)
!538 = !DILocalVariable(name: "v0", scope: !531, file: !247, line: 151, type: !130)
!539 = !DILocation(line: 151, column: 8, scope: !531)
!540 = !DILocalVariable(name: "v1", scope: !531, file: !247, line: 151, type: !130)
!541 = !DILocation(line: 151, column: 13, scope: !531)
!542 = !DILocalVariable(name: "len", scope: !531, file: !247, line: 152, type: !10)
!543 = !DILocation(line: 152, column: 6, scope: !531)
!544 = !DILocation(line: 153, column: 6, scope: !545)
!545 = distinct !DILexicalBlock(scope: !531, file: !247, line: 153, column: 6)
!546 = !DILocation(line: 153, column: 20, scope: !545)
!547 = !DILocation(line: 153, column: 6, scope: !531)
!548 = !DILocation(line: 154, column: 28, scope: !549)
!549 = distinct !DILexicalBlock(scope: !545, file: !247, line: 153, column: 28)
!550 = !DILocation(line: 154, column: 8, scope: !549)
!551 = !DILocation(line: 154, column: 6, scope: !549)
!552 = !DILocation(line: 155, column: 28, scope: !549)
!553 = !DILocation(line: 155, column: 9, scope: !549)
!554 = !DILocation(line: 155, column: 7, scope: !549)
!555 = !DILocation(line: 156, column: 6, scope: !549)
!556 = !DILocation(line: 156, column: 3, scope: !549)
!557 = !DILocation(line: 156, column: 11, scope: !549)
!558 = !DILocation(line: 157, column: 2, scope: !549)
!559 = !DILocation(line: 159, column: 8, scope: !560)
!560 = distinct !DILexicalBlock(scope: !545, file: !247, line: 158, column: 7)
!561 = !DILocation(line: 159, column: 6, scope: !560)
!562 = !DILocation(line: 162, column: 7, scope: !563)
!563 = distinct !DILexicalBlock(scope: !531, file: !247, line: 162, column: 6)
!564 = !DILocation(line: 162, column: 6, scope: !563)
!565 = !DILocation(line: 162, column: 10, scope: !563)
!566 = !DILocation(line: 162, column: 6, scope: !531)
!567 = !DILocation(line: 163, column: 10, scope: !568)
!568 = distinct !DILexicalBlock(scope: !563, file: !247, line: 162, column: 19)
!569 = !DILocation(line: 163, column: 3, scope: !568)
!570 = !DILocation(line: 164, column: 8, scope: !568)
!571 = !DILocation(line: 164, column: 6, scope: !568)
!572 = !DILocation(line: 165, column: 2, scope: !568)
!573 = !DILocation(line: 167, column: 6, scope: !574)
!574 = distinct !DILexicalBlock(scope: !531, file: !247, line: 167, column: 6)
!575 = !DILocation(line: 167, column: 21, scope: !574)
!576 = !DILocation(line: 167, column: 27, scope: !574)
!577 = !DILocation(line: 167, column: 6, scope: !531)
!578 = !DILocalVariable(name: "color", scope: !579, file: !247, line: 168, type: !130)
!579 = distinct !DILexicalBlock(scope: !574, file: !247, line: 167, column: 35)
!580 = !DILocation(line: 168, column: 9, scope: !579)
!581 = !DILocation(line: 168, column: 26, scope: !579)
!582 = !DILocation(line: 168, column: 41, scope: !579)
!583 = !DILocation(line: 168, column: 17, scope: !579)
!584 = !DILocation(line: 169, column: 28, scope: !579)
!585 = !DILocation(line: 169, column: 9, scope: !579)
!586 = !DILocation(line: 169, column: 7, scope: !579)
!587 = !DILocation(line: 170, column: 9, scope: !579)
!588 = !DILocation(line: 170, column: 3, scope: !579)
!589 = !DILocation(line: 170, column: 14, scope: !579)
!590 = !DILocation(line: 171, column: 20, scope: !579)
!591 = !DILocation(line: 171, column: 27, scope: !579)
!592 = !DILocation(line: 171, column: 8, scope: !579)
!593 = !DILocation(line: 171, column: 6, scope: !579)
!594 = !DILocation(line: 172, column: 10, scope: !579)
!595 = !DILocation(line: 172, column: 3, scope: !579)
!596 = !DILocation(line: 173, column: 10, scope: !579)
!597 = !DILocation(line: 173, column: 3, scope: !579)
!598 = !DILocation(line: 174, column: 2, scope: !579)
!599 = !DILocation(line: 175, column: 8, scope: !600)
!600 = distinct !DILexicalBlock(scope: !574, file: !247, line: 174, column: 9)
!601 = !DILocation(line: 175, column: 6, scope: !600)
!602 = !DILocation(line: 178, column: 16, scope: !531)
!603 = !DILocation(line: 178, column: 19, scope: !531)
!604 = !DILocation(line: 178, column: 22, scope: !531)
!605 = !DILocation(line: 178, column: 2, scope: !531)
!606 = !DILocation(line: 179, column: 9, scope: !531)
!607 = !DILocation(line: 179, column: 2, scope: !531)
!608 = !DILocation(line: 180, column: 1, scope: !531)
!609 = distinct !DISubprogram(name: "gui_printtext_init", scope: !247, file: !247, line: 343, type: !610, isLocal: false, isDefinition: true, scopeLine: 344, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!610 = !DISubroutineType(types: !611)
!611 = !{null}
!612 = !DILocation(line: 345, column: 24, scope: !609)
!613 = !DILocation(line: 345, column: 12, scope: !609)
!614 = !DILocation(line: 346, column: 22, scope: !609)
!615 = !DILocation(line: 347, column: 21, scope: !609)
!616 = !DILocation(line: 347, column: 19, scope: !609)
!617 = !DILocation(line: 350, column: 2, scope: !609)
!618 = !DILocation(line: 351, column: 2, scope: !609)
!619 = !DILocation(line: 352, column: 2, scope: !609)
!620 = !DILocation(line: 354, column: 2, scope: !609)
!621 = !DILocation(line: 355, column: 2, scope: !609)
!622 = !DILocation(line: 356, column: 2, scope: !609)
!623 = !DILocation(line: 358, column: 2, scope: !609)
!624 = !DILocation(line: 359, column: 1, scope: !609)
!625 = distinct !DISubprogram(name: "sig_gui_print_text", scope: !247, file: !247, line: 276, type: !626, isLocal: true, isDefinition: true, scopeLine: 279, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!626 = !DISubroutineType(types: !627)
!627 = !{null, !122, !4, !4, !4, !163, !430}
!628 = !DILocalVariable(name: "window", arg: 1, scope: !625, file: !247, line: 276, type: !122)
!629 = !DILocation(line: 276, column: 44, scope: !625)
!630 = !DILocalVariable(name: "fgcolor", arg: 2, scope: !625, file: !247, line: 276, type: !4)
!631 = !DILocation(line: 276, column: 58, scope: !625)
!632 = !DILocalVariable(name: "bgcolor", arg: 3, scope: !625, file: !247, line: 277, type: !4)
!633 = !DILocation(line: 277, column: 17, scope: !625)
!634 = !DILocalVariable(name: "pflags", arg: 4, scope: !625, file: !247, line: 277, type: !4)
!635 = !DILocation(line: 277, column: 32, scope: !625)
!636 = !DILocalVariable(name: "str", arg: 5, scope: !625, file: !247, line: 278, type: !163)
!637 = !DILocation(line: 278, column: 23, scope: !625)
!638 = !DILocalVariable(name: "dest", arg: 6, scope: !625, file: !247, line: 278, type: !430)
!639 = !DILocation(line: 278, column: 43, scope: !625)
!640 = !DILocalVariable(name: "gui", scope: !625, file: !247, line: 280, type: !110)
!641 = !DILocation(line: 280, column: 25, scope: !625)
!642 = !DILocalVariable(name: "view", scope: !625, file: !247, line: 281, type: !11)
!643 = !DILocation(line: 281, column: 31, scope: !625)
!644 = !DILocalVariable(name: "insert_after", scope: !625, file: !247, line: 282, type: !32)
!645 = !DILocation(line: 282, column: 12, scope: !625)
!646 = !DILocalVariable(name: "lineinfo", scope: !625, file: !247, line: 283, type: !43)
!647 = !DILocation(line: 283, column: 23, scope: !625)
!648 = !DILocalVariable(name: "fg", scope: !625, file: !247, line: 284, type: !10)
!649 = !DILocation(line: 284, column: 6, scope: !625)
!650 = !DILocalVariable(name: "bg", scope: !625, file: !247, line: 284, type: !10)
!651 = !DILocation(line: 284, column: 10, scope: !625)
!652 = !DILocalVariable(name: "flags", scope: !625, file: !247, line: 284, type: !10)
!653 = !DILocation(line: 284, column: 14, scope: !625)
!654 = !DILocalVariable(name: "attr", scope: !625, file: !247, line: 284, type: !10)
!655 = !DILocation(line: 284, column: 21, scope: !625)
!656 = !DILocation(line: 286, column: 27, scope: !625)
!657 = !DILocation(line: 286, column: 18, scope: !625)
!658 = !DILocation(line: 286, column: 11, scope: !625)
!659 = !DILocation(line: 286, column: 8, scope: !625)
!660 = !DILocation(line: 287, column: 24, scope: !625)
!661 = !DILocation(line: 287, column: 15, scope: !625)
!662 = !DILocation(line: 287, column: 8, scope: !625)
!663 = !DILocation(line: 287, column: 5, scope: !625)
!664 = !DILocation(line: 288, column: 24, scope: !625)
!665 = !DILocation(line: 288, column: 15, scope: !625)
!666 = !DILocation(line: 288, column: 8, scope: !625)
!667 = !DILocation(line: 288, column: 5, scope: !625)
!668 = !DILocation(line: 289, column: 13, scope: !625)
!669 = !DILocation(line: 289, column: 2, scope: !625)
!670 = !DILocation(line: 291, column: 6, scope: !671)
!671 = distinct !DILexicalBlock(scope: !625, file: !247, line: 291, column: 6)
!672 = !DILocation(line: 291, column: 13, scope: !671)
!673 = !DILocation(line: 291, column: 6, scope: !625)
!674 = !DILocation(line: 292, column: 24, scope: !675)
!675 = distinct !DILexicalBlock(scope: !671, file: !247, line: 291, column: 21)
!676 = !DILocation(line: 292, column: 31, scope: !675)
!677 = !DILocation(line: 292, column: 35, scope: !675)
!678 = !DILocation(line: 292, column: 39, scope: !675)
!679 = !DILocation(line: 292, column: 45, scope: !675)
!680 = !DILocation(line: 292, column: 3, scope: !675)
!681 = !DILocation(line: 293, column: 3, scope: !675)
!682 = !DILocation(line: 296, column: 19, scope: !625)
!683 = !DILocation(line: 296, column: 24, scope: !625)
!684 = !DILocation(line: 296, column: 19, scope: !685)
!685 = !DILexicalBlockFile(scope: !625, file: !247, discriminator: 1)
!686 = !DILocation(line: 296, column: 37, scope: !687)
!687 = !DILexicalBlockFile(scope: !625, file: !247, discriminator: 2)
!688 = !DILocation(line: 296, column: 43, scope: !687)
!689 = !DILocation(line: 296, column: 19, scope: !687)
!690 = !DILocation(line: 296, column: 19, scope: !691)
!691 = !DILexicalBlockFile(scope: !625, file: !247, discriminator: 3)
!692 = !DILocation(line: 296, column: 11, scope: !691)
!693 = !DILocation(line: 296, column: 17, scope: !691)
!694 = !DILocation(line: 297, column: 37, scope: !625)
!695 = !DILocation(line: 297, column: 46, scope: !625)
!696 = !DILocation(line: 297, column: 16, scope: !625)
!697 = !DILocation(line: 297, column: 13, scope: !625)
!698 = !DILocation(line: 298, column: 26, scope: !625)
!699 = !DILocation(line: 298, column: 31, scope: !625)
!700 = !DILocation(line: 298, column: 48, scope: !625)
!701 = !DILocation(line: 298, column: 51, scope: !685)
!702 = !DILocation(line: 298, column: 56, scope: !685)
!703 = !DILocation(line: 298, column: 25, scope: !685)
!704 = !DILocation(line: 299, column: 3, scope: !625)
!705 = !DILocation(line: 299, column: 8, scope: !625)
!706 = !DILocation(line: 298, column: 25, scope: !687)
!707 = !DILocation(line: 299, column: 28, scope: !685)
!708 = !DILocation(line: 298, column: 25, scope: !691)
!709 = !DILocation(line: 298, column: 25, scope: !710)
!710 = !DILexicalBlockFile(scope: !625, file: !247, discriminator: 4)
!711 = !DILocation(line: 298, column: 18, scope: !710)
!712 = !DILocation(line: 298, column: 23, scope: !710)
!713 = !DILocation(line: 301, column: 9, scope: !625)
!714 = !DILocation(line: 301, column: 14, scope: !625)
!715 = !DILocation(line: 301, column: 7, scope: !625)
!716 = !DILocation(line: 302, column: 17, scope: !625)
!717 = !DILocation(line: 302, column: 22, scope: !625)
!718 = !DILocation(line: 303, column: 3, scope: !625)
!719 = !DILocation(line: 303, column: 8, scope: !625)
!720 = !DILocation(line: 302, column: 17, scope: !685)
!721 = !DILocation(line: 303, column: 23, scope: !685)
!722 = !DILocation(line: 303, column: 29, scope: !685)
!723 = !DILocation(line: 303, column: 37, scope: !685)
!724 = !DILocation(line: 302, column: 17, scope: !687)
!725 = !DILocation(line: 302, column: 17, scope: !691)
!726 = !DILocation(line: 302, column: 15, scope: !691)
!727 = !DILocation(line: 305, column: 6, scope: !728)
!728 = distinct !DILexicalBlock(scope: !625, file: !247, line: 305, column: 6)
!729 = !DILocation(line: 305, column: 12, scope: !728)
!730 = !DILocation(line: 305, column: 6, scope: !625)
!731 = !DILocation(line: 306, column: 30, scope: !732)
!732 = distinct !DILexicalBlock(scope: !728, file: !247, line: 305, column: 22)
!733 = !DILocation(line: 306, column: 17, scope: !732)
!734 = !DILocation(line: 307, column: 2, scope: !732)
!735 = !DILocation(line: 308, column: 29, scope: !625)
!736 = !DILocation(line: 308, column: 35, scope: !625)
!737 = !DILocation(line: 308, column: 58, scope: !625)
!738 = !DILocation(line: 308, column: 62, scope: !625)
!739 = !DILocation(line: 308, column: 66, scope: !625)
!740 = !DILocation(line: 308, column: 2, scope: !625)
!741 = !DILocation(line: 314, column: 7, scope: !742)
!742 = distinct !DILexicalBlock(scope: !625, file: !247, line: 314, column: 6)
!743 = !DILocation(line: 314, column: 6, scope: !742)
!744 = !DILocation(line: 314, column: 13, scope: !742)
!745 = !DILocation(line: 314, column: 22, scope: !742)
!746 = !DILocation(line: 314, column: 26, scope: !747)
!747 = !DILexicalBlockFile(scope: !742, file: !247, discriminator: 1)
!748 = !DILocation(line: 314, column: 25, scope: !747)
!749 = !DILocation(line: 314, column: 30, scope: !747)
!750 = !DILocation(line: 314, column: 6, scope: !747)
!751 = !DILocation(line: 315, column: 36, scope: !752)
!752 = distinct !DILexicalBlock(scope: !742, file: !247, line: 314, column: 39)
!753 = !DILocation(line: 315, column: 42, scope: !752)
!754 = !DILocation(line: 315, column: 50, scope: !752)
!755 = !DILocation(line: 315, column: 82, scope: !752)
!756 = !DILocation(line: 316, column: 43, scope: !752)
!757 = !DILocation(line: 316, column: 36, scope: !752)
!758 = !DILocation(line: 315, column: 18, scope: !752)
!759 = !DILocation(line: 315, column: 16, scope: !752)
!760 = !DILocation(line: 317, column: 2, scope: !752)
!761 = !DILocation(line: 319, column: 6, scope: !762)
!762 = distinct !DILexicalBlock(scope: !625, file: !247, line: 319, column: 6)
!763 = !DILocation(line: 319, column: 11, scope: !762)
!764 = !DILocation(line: 319, column: 6, scope: !625)
!765 = !DILocation(line: 320, column: 37, scope: !762)
!766 = !DILocation(line: 320, column: 17, scope: !762)
!767 = !DILocation(line: 320, column: 22, scope: !762)
!768 = !DILocation(line: 320, column: 35, scope: !762)
!769 = !DILocation(line: 321, column: 1, scope: !625)
!770 = distinct !DISubprogram(name: "sig_gui_printtext_finished", scope: !247, file: !247, line: 323, type: !771, isLocal: true, isDefinition: true, scopeLine: 324, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!771 = !DISubroutineType(types: !772)
!772 = !{null, !122}
!773 = !DILocalVariable(name: "window", arg: 1, scope: !770, file: !247, line: 323, type: !122)
!774 = !DILocation(line: 323, column: 52, scope: !770)
!775 = !DILocalVariable(name: "view", scope: !770, file: !247, line: 325, type: !11)
!776 = !DILocation(line: 325, column: 24, scope: !770)
!777 = !DILocalVariable(name: "insert_after", scope: !770, file: !247, line: 326, type: !32)
!778 = !DILocation(line: 326, column: 12, scope: !770)
!779 = !DILocation(line: 328, column: 31, scope: !770)
!780 = !DILocation(line: 328, column: 40, scope: !770)
!781 = !DILocation(line: 328, column: 10, scope: !770)
!782 = !DILocation(line: 328, column: 52, scope: !770)
!783 = !DILocation(line: 328, column: 7, scope: !770)
!784 = !DILocation(line: 329, column: 39, scope: !770)
!785 = !DILocation(line: 329, column: 48, scope: !770)
!786 = !DILocation(line: 329, column: 18, scope: !770)
!787 = !DILocation(line: 329, column: 60, scope: !770)
!788 = !DILocation(line: 329, column: 17, scope: !770)
!789 = !DILocation(line: 330, column: 25, scope: !770)
!790 = !DILocation(line: 330, column: 34, scope: !770)
!791 = !DILocation(line: 330, column: 4, scope: !770)
!792 = !DILocation(line: 330, column: 46, scope: !770)
!793 = !DILocation(line: 329, column: 17, scope: !794)
!794 = !DILexicalBlockFile(scope: !770, file: !247, discriminator: 1)
!795 = !DILocation(line: 330, column: 61, scope: !794)
!796 = !DILocation(line: 330, column: 67, scope: !794)
!797 = !DILocation(line: 330, column: 75, scope: !794)
!798 = !DILocation(line: 329, column: 17, scope: !799)
!799 = !DILexicalBlockFile(scope: !770, file: !247, discriminator: 2)
!800 = !DILocation(line: 329, column: 17, scope: !801)
!801 = !DILexicalBlockFile(scope: !770, file: !247, discriminator: 3)
!802 = !DILocation(line: 329, column: 15, scope: !801)
!803 = !DILocation(line: 332, column: 22, scope: !770)
!804 = !DILocation(line: 332, column: 9, scope: !770)
!805 = !DILocation(line: 333, column: 19, scope: !770)
!806 = !DILocation(line: 333, column: 2, scope: !770)
!807 = !DILocation(line: 334, column: 1, scope: !770)
!808 = distinct !DISubprogram(name: "read_settings", scope: !247, file: !247, line: 336, type: !610, isLocal: true, isDefinition: true, scopeLine: 337, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!809 = !DILocation(line: 338, column: 21, scope: !808)
!810 = !DILocation(line: 338, column: 19, scope: !808)
!811 = !DILocation(line: 339, column: 20, scope: !808)
!812 = !DILocation(line: 339, column: 56, scope: !808)
!813 = !DILocation(line: 339, column: 18, scope: !808)
!814 = !DILocation(line: 340, column: 35, scope: !808)
!815 = !DILocation(line: 340, column: 33, scope: !808)
!816 = !DILocation(line: 341, column: 1, scope: !808)
!817 = distinct !DISubprogram(name: "gui_printtext_deinit", scope: !247, file: !247, line: 361, type: !610, isLocal: false, isDefinition: true, scopeLine: 362, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!818 = !DILocation(line: 363, column: 23, scope: !817)
!819 = !DILocation(line: 363, column: 2, scope: !817)
!820 = !DILocation(line: 365, column: 2, scope: !817)
!821 = !DILocation(line: 366, column: 2, scope: !817)
!822 = !DILocation(line: 367, column: 2, scope: !817)
!823 = !DILocation(line: 368, column: 1, scope: !817)
!824 = distinct !DISubprogram(name: "get_colors", scope: !247, file: !247, line: 205, type: !825, isLocal: true, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!825 = !DISubroutineType(types: !826)
!826 = !{null, !10, !827, !827, !827}
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!828 = !DILocalVariable(name: "flags", arg: 1, scope: !824, file: !247, line: 205, type: !10)
!829 = !DILocation(line: 205, column: 28, scope: !824)
!830 = !DILocalVariable(name: "fg", arg: 2, scope: !824, file: !247, line: 205, type: !827)
!831 = !DILocation(line: 205, column: 40, scope: !824)
!832 = !DILocalVariable(name: "bg", arg: 3, scope: !824, file: !247, line: 205, type: !827)
!833 = !DILocation(line: 205, column: 49, scope: !824)
!834 = !DILocalVariable(name: "attr", arg: 4, scope: !824, file: !247, line: 205, type: !827)
!835 = !DILocation(line: 205, column: 58, scope: !824)
!836 = !DILocation(line: 207, column: 3, scope: !824)
!837 = !DILocation(line: 207, column: 8, scope: !824)
!838 = !DILocation(line: 208, column: 6, scope: !839)
!839 = distinct !DILexicalBlock(scope: !824, file: !247, line: 208, column: 6)
!840 = !DILocation(line: 208, column: 12, scope: !839)
!841 = !DILocation(line: 208, column: 6, scope: !824)
!842 = !DILocation(line: 210, column: 22, scope: !843)
!843 = distinct !DILexicalBlock(scope: !844, file: !247, line: 210, column: 21)
!844 = distinct !DILexicalBlock(scope: !839, file: !247, line: 208, column: 22)
!845 = !DILocation(line: 210, column: 21, scope: !843)
!846 = !DILocation(line: 210, column: 25, scope: !843)
!847 = !DILocation(line: 210, column: 21, scope: !844)
!848 = !DILocation(line: 211, column: 23, scope: !849)
!849 = distinct !DILexicalBlock(scope: !843, file: !247, line: 210, column: 31)
!850 = !DILocation(line: 211, column: 22, scope: !849)
!851 = !DILocation(line: 211, column: 26, scope: !849)
!852 = !DILocation(line: 211, column: 10, scope: !849)
!853 = !DILocation(line: 211, column: 5, scope: !849)
!854 = !DILocation(line: 211, column: 8, scope: !849)
!855 = !DILocation(line: 212, column: 10, scope: !849)
!856 = !DILocation(line: 214, column: 9, scope: !857)
!857 = distinct !DILexicalBlock(scope: !849, file: !247, line: 214, column: 8)
!858 = !DILocation(line: 214, column: 8, scope: !857)
!859 = !DILocation(line: 214, column: 12, scope: !857)
!860 = !DILocation(line: 214, column: 18, scope: !857)
!861 = !DILocation(line: 214, column: 21, scope: !862)
!862 = !DILexicalBlockFile(scope: !857, file: !247, discriminator: 1)
!863 = !DILocation(line: 214, column: 8, scope: !862)
!864 = !DILocation(line: 215, column: 10, scope: !865)
!865 = distinct !DILexicalBlock(scope: !866, file: !247, line: 215, column: 9)
!866 = distinct !DILexicalBlock(scope: !857, file: !247, line: 214, column: 58)
!867 = !DILocation(line: 215, column: 9, scope: !865)
!868 = !DILocation(line: 215, column: 13, scope: !865)
!869 = !DILocation(line: 215, column: 9, scope: !866)
!870 = !DILocation(line: 216, column: 14, scope: !865)
!871 = !DILocation(line: 216, column: 13, scope: !865)
!872 = !DILocation(line: 216, column: 16, scope: !865)
!873 = !DILocation(line: 216, column: 24, scope: !865)
!874 = !DILocation(line: 216, column: 23, scope: !865)
!875 = !DILocation(line: 216, column: 26, scope: !865)
!876 = !DILocation(line: 216, column: 29, scope: !865)
!877 = !DILocation(line: 216, column: 20, scope: !865)
!878 = !DILocation(line: 216, column: 37, scope: !865)
!879 = !DILocation(line: 216, column: 36, scope: !865)
!880 = !DILocation(line: 216, column: 39, scope: !865)
!881 = !DILocation(line: 216, column: 33, scope: !865)
!882 = !DILocation(line: 216, column: 47, scope: !865)
!883 = !DILocation(line: 216, column: 46, scope: !865)
!884 = !DILocation(line: 216, column: 49, scope: !865)
!885 = !DILocation(line: 216, column: 52, scope: !865)
!886 = !DILocation(line: 216, column: 43, scope: !865)
!887 = !DILocation(line: 216, column: 7, scope: !865)
!888 = !DILocation(line: 216, column: 10, scope: !865)
!889 = !DILocation(line: 216, column: 6, scope: !865)
!890 = !DILocation(line: 217, column: 29, scope: !866)
!891 = !DILocation(line: 217, column: 28, scope: !866)
!892 = !DILocation(line: 217, column: 31, scope: !866)
!893 = !DILocation(line: 217, column: 11, scope: !866)
!894 = !DILocation(line: 217, column: 38, scope: !866)
!895 = !DILocation(line: 217, column: 6, scope: !866)
!896 = !DILocation(line: 217, column: 9, scope: !866)
!897 = !DILocation(line: 218, column: 4, scope: !866)
!898 = !DILocation(line: 219, column: 3, scope: !849)
!899 = !DILocation(line: 220, column: 8, scope: !900)
!900 = distinct !DILexicalBlock(scope: !844, file: !247, line: 220, column: 7)
!901 = !DILocation(line: 220, column: 7, scope: !900)
!902 = !DILocation(line: 220, column: 11, scope: !900)
!903 = !DILocation(line: 220, column: 7, scope: !844)
!904 = !DILocation(line: 221, column: 23, scope: !905)
!905 = distinct !DILexicalBlock(scope: !900, file: !247, line: 220, column: 17)
!906 = !DILocation(line: 221, column: 22, scope: !905)
!907 = !DILocation(line: 221, column: 26, scope: !905)
!908 = !DILocation(line: 221, column: 10, scope: !905)
!909 = !DILocation(line: 221, column: 5, scope: !905)
!910 = !DILocation(line: 221, column: 8, scope: !905)
!911 = !DILocation(line: 222, column: 10, scope: !905)
!912 = !DILocation(line: 223, column: 3, scope: !905)
!913 = !DILocation(line: 224, column: 2, scope: !844)
!914 = !DILocation(line: 226, column: 6, scope: !915)
!915 = distinct !DILexicalBlock(scope: !824, file: !247, line: 226, column: 6)
!916 = !DILocation(line: 226, column: 12, scope: !915)
!917 = !DILocation(line: 226, column: 6, scope: !824)
!918 = !DILocation(line: 227, column: 4, scope: !915)
!919 = !DILocation(line: 227, column: 9, scope: !915)
!920 = !DILocation(line: 227, column: 3, scope: !915)
!921 = !DILocation(line: 228, column: 12, scope: !922)
!922 = distinct !DILexicalBlock(scope: !915, file: !247, line: 228, column: 11)
!923 = !DILocation(line: 228, column: 11, scope: !922)
!924 = !DILocation(line: 228, column: 15, scope: !922)
!925 = !DILocation(line: 228, column: 19, scope: !922)
!926 = !DILocation(line: 228, column: 23, scope: !927)
!927 = !DILexicalBlockFile(scope: !922, file: !247, discriminator: 1)
!928 = !DILocation(line: 228, column: 22, scope: !927)
!929 = !DILocation(line: 228, column: 26, scope: !927)
!930 = !DILocation(line: 228, column: 11, scope: !927)
!931 = !DILocation(line: 229, column: 4, scope: !932)
!932 = distinct !DILexicalBlock(scope: !922, file: !247, line: 228, column: 33)
!933 = !DILocation(line: 229, column: 7, scope: !932)
!934 = !DILocation(line: 230, column: 4, scope: !932)
!935 = !DILocation(line: 230, column: 9, scope: !932)
!936 = !DILocation(line: 231, column: 2, scope: !932)
!937 = !DILocation(line: 233, column: 13, scope: !922)
!938 = !DILocation(line: 233, column: 12, scope: !922)
!939 = !DILocation(line: 233, column: 4, scope: !922)
!940 = !DILocation(line: 233, column: 9, scope: !922)
!941 = !DILocation(line: 235, column: 6, scope: !942)
!942 = distinct !DILexicalBlock(scope: !824, file: !247, line: 235, column: 6)
!943 = !DILocation(line: 235, column: 12, scope: !942)
!944 = !DILocation(line: 235, column: 6, scope: !824)
!945 = !DILocation(line: 236, column: 4, scope: !942)
!946 = !DILocation(line: 236, column: 9, scope: !942)
!947 = !DILocation(line: 236, column: 3, scope: !942)
!948 = !DILocation(line: 237, column: 12, scope: !949)
!949 = distinct !DILexicalBlock(scope: !942, file: !247, line: 237, column: 11)
!950 = !DILocation(line: 237, column: 11, scope: !949)
!951 = !DILocation(line: 237, column: 15, scope: !949)
!952 = !DILocation(line: 237, column: 19, scope: !949)
!953 = !DILocation(line: 237, column: 23, scope: !954)
!954 = !DILexicalBlockFile(scope: !949, file: !247, discriminator: 1)
!955 = !DILocation(line: 237, column: 22, scope: !954)
!956 = !DILocation(line: 237, column: 26, scope: !954)
!957 = !DILocation(line: 237, column: 11, scope: !954)
!958 = !DILocation(line: 238, column: 18, scope: !959)
!959 = distinct !DILexicalBlock(scope: !949, file: !247, line: 237, column: 33)
!960 = !DILocation(line: 238, column: 21, scope: !959)
!961 = !DILocation(line: 239, column: 4, scope: !959)
!962 = !DILocation(line: 239, column: 9, scope: !959)
!963 = !DILocation(line: 240, column: 2, scope: !959)
!964 = !DILocation(line: 242, column: 14, scope: !949)
!965 = !DILocation(line: 242, column: 13, scope: !949)
!966 = !DILocation(line: 242, column: 17, scope: !949)
!967 = !DILocation(line: 242, column: 4, scope: !949)
!968 = !DILocation(line: 242, column: 9, scope: !949)
!969 = !DILocation(line: 244, column: 6, scope: !970)
!970 = distinct !DILexicalBlock(scope: !824, file: !247, line: 244, column: 6)
!971 = !DILocation(line: 244, column: 12, scope: !970)
!972 = !DILocation(line: 244, column: 6, scope: !824)
!973 = !DILocation(line: 244, column: 23, scope: !974)
!974 = !DILexicalBlockFile(scope: !970, file: !247, discriminator: 1)
!975 = !DILocation(line: 244, column: 28, scope: !974)
!976 = !DILocation(line: 244, column: 22, scope: !974)
!977 = !DILocation(line: 245, column: 6, scope: !978)
!978 = distinct !DILexicalBlock(scope: !824, file: !247, line: 245, column: 6)
!979 = !DILocation(line: 245, column: 12, scope: !978)
!980 = !DILocation(line: 245, column: 6, scope: !824)
!981 = !DILocation(line: 245, column: 23, scope: !982)
!982 = !DILexicalBlockFile(scope: !978, file: !247, discriminator: 1)
!983 = !DILocation(line: 245, column: 28, scope: !982)
!984 = !DILocation(line: 245, column: 22, scope: !982)
!985 = !DILocation(line: 246, column: 6, scope: !986)
!986 = distinct !DILexicalBlock(scope: !824, file: !247, line: 246, column: 6)
!987 = !DILocation(line: 246, column: 12, scope: !986)
!988 = !DILocation(line: 246, column: 6, scope: !824)
!989 = !DILocation(line: 246, column: 23, scope: !990)
!990 = !DILexicalBlockFile(scope: !986, file: !247, discriminator: 1)
!991 = !DILocation(line: 246, column: 28, scope: !990)
!992 = !DILocation(line: 246, column: 22, scope: !990)
!993 = !DILocation(line: 247, column: 6, scope: !994)
!994 = distinct !DILexicalBlock(scope: !824, file: !247, line: 247, column: 6)
!995 = !DILocation(line: 247, column: 12, scope: !994)
!996 = !DILocation(line: 247, column: 6, scope: !824)
!997 = !DILocation(line: 247, column: 23, scope: !998)
!998 = !DILexicalBlockFile(scope: !994, file: !247, discriminator: 1)
!999 = !DILocation(line: 247, column: 28, scope: !998)
!1000 = !DILocation(line: 247, column: 22, scope: !998)
!1001 = !DILocation(line: 248, column: 6, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !824, file: !247, line: 248, column: 6)
!1003 = !DILocation(line: 248, column: 12, scope: !1002)
!1004 = !DILocation(line: 248, column: 6, scope: !824)
!1005 = !DILocation(line: 248, column: 23, scope: !1006)
!1006 = !DILexicalBlockFile(scope: !1002, file: !247, discriminator: 1)
!1007 = !DILocation(line: 248, column: 28, scope: !1006)
!1008 = !DILocation(line: 248, column: 22, scope: !1006)
!1009 = !DILocation(line: 249, column: 1, scope: !824)
!1010 = distinct !DISubprogram(name: "print_text_no_window", scope: !247, file: !247, line: 259, type: !1011, isLocal: true, isDefinition: true, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{null, !10, !10, !10, !10, !163}
!1013 = !DILocalVariable(name: "flags", arg: 1, scope: !1010, file: !247, line: 259, type: !10)
!1014 = !DILocation(line: 259, column: 38, scope: !1010)
!1015 = !DILocalVariable(name: "fg", arg: 2, scope: !1010, file: !247, line: 259, type: !10)
!1016 = !DILocation(line: 259, column: 49, scope: !1010)
!1017 = !DILocalVariable(name: "bg", arg: 3, scope: !1010, file: !247, line: 259, type: !10)
!1018 = !DILocation(line: 259, column: 57, scope: !1010)
!1019 = !DILocalVariable(name: "attr", arg: 4, scope: !1010, file: !247, line: 259, type: !10)
!1020 = !DILocation(line: 259, column: 65, scope: !1010)
!1021 = !DILocalVariable(name: "str", arg: 5, scope: !1010, file: !247, line: 259, type: !163)
!1022 = !DILocation(line: 259, column: 83, scope: !1010)
!1023 = !DILocation(line: 261, column: 2, scope: !1010)
!1024 = distinct !{!1024, !1023}
!1025 = !DILocation(line: 261, column: 10, scope: !1026)
!1026 = !DILexicalBlockFile(scope: !1027, file: !247, discriminator: 1)
!1027 = distinct !DILexicalBlock(scope: !1028, file: !247, line: 261, column: 10)
!1028 = distinct !DILexicalBlock(scope: !1010, file: !247, line: 261, column: 4)
!1029 = !DILocation(line: 261, column: 20, scope: !1026)
!1030 = !DILocation(line: 261, column: 29, scope: !1031)
!1031 = !DILexicalBlockFile(scope: !1032, file: !247, discriminator: 2)
!1032 = distinct !DILexicalBlock(scope: !1027, file: !247, line: 261, column: 27)
!1033 = !DILocation(line: 261, column: 38, scope: !1034)
!1034 = !DILexicalBlockFile(scope: !1035, file: !247, discriminator: 3)
!1035 = distinct !DILexicalBlock(scope: !1027, file: !247, line: 261, column: 36)
!1036 = !DILocation(line: 261, column: 126, scope: !1034)
!1037 = !DILocation(line: 261, column: 137, scope: !1038)
!1038 = !DILexicalBlockFile(scope: !1028, file: !247, discriminator: 4)
!1039 = !DILocation(line: 263, column: 17, scope: !1010)
!1040 = !DILocation(line: 263, column: 30, scope: !1010)
!1041 = !DILocation(line: 263, column: 2, scope: !1010)
!1042 = !DILocation(line: 265, column: 12, scope: !1010)
!1043 = !DILocation(line: 265, column: 25, scope: !1010)
!1044 = !DILocation(line: 265, column: 36, scope: !1010)
!1045 = !DILocation(line: 265, column: 2, scope: !1010)
!1046 = !DILocation(line: 266, column: 6, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1010, file: !247, line: 266, column: 6)
!1048 = !DILocation(line: 266, column: 12, scope: !1047)
!1049 = !DILocation(line: 266, column: 6, scope: !1010)
!1050 = !DILocation(line: 267, column: 7, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1052, file: !247, line: 267, column: 7)
!1052 = distinct !DILexicalBlock(scope: !1047, file: !247, line: 266, column: 22)
!1053 = !DILocation(line: 267, column: 22, scope: !1051)
!1054 = !DILocation(line: 267, column: 29, scope: !1051)
!1055 = !DILocation(line: 267, column: 7, scope: !1052)
!1056 = !DILocation(line: 268, column: 29, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1051, file: !247, line: 267, column: 37)
!1058 = !DILocation(line: 268, column: 44, scope: !1057)
!1059 = !DILocation(line: 268, column: 52, scope: !1057)
!1060 = !DILocation(line: 268, column: 4, scope: !1057)
!1061 = !DILocation(line: 269, column: 3, scope: !1057)
!1062 = !DILocation(line: 270, column: 18, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1051, file: !247, line: 269, column: 10)
!1064 = !DILocation(line: 270, column: 4, scope: !1063)
!1065 = !DILocation(line: 272, column: 2, scope: !1052)
!1066 = !DILocation(line: 273, column: 27, scope: !1010)
!1067 = !DILocation(line: 273, column: 40, scope: !1010)
!1068 = !DILocation(line: 273, column: 15, scope: !1010)
!1069 = !DILocation(line: 273, column: 12, scope: !1010)
!1070 = !DILocation(line: 274, column: 1, scope: !1010)
!1071 = !DILocation(line: 274, column: 1, scope: !1072)
!1072 = !DILexicalBlockFile(scope: !1010, file: !247, discriminator: 1)
!1073 = distinct !DISubprogram(name: "remove_old_lines", scope: !247, file: !247, line: 182, type: !1074, isLocal: true, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{null, !11}
!1076 = !DILocalVariable(name: "view", arg: 1, scope: !1073, file: !247, line: 182, type: !11)
!1077 = !DILocation(line: 182, column: 52, scope: !1073)
!1078 = !DILocalVariable(name: "line", scope: !1073, file: !247, line: 184, type: !32)
!1079 = !DILocation(line: 184, column: 12, scope: !1073)
!1080 = !DILocalVariable(name: "old_time", scope: !1073, file: !247, line: 185, type: !48)
!1081 = !DILocation(line: 185, column: 9, scope: !1073)
!1082 = !DILocation(line: 187, column: 13, scope: !1073)
!1083 = !DILocation(line: 187, column: 23, scope: !1073)
!1084 = !DILocation(line: 187, column: 22, scope: !1073)
!1085 = !DILocation(line: 187, column: 38, scope: !1073)
!1086 = !DILocation(line: 187, column: 11, scope: !1073)
!1087 = !DILocation(line: 188, column: 6, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1073, file: !247, line: 188, column: 6)
!1089 = !DILocation(line: 188, column: 12, scope: !1088)
!1090 = !DILocation(line: 188, column: 20, scope: !1088)
!1091 = !DILocation(line: 189, column: 6, scope: !1088)
!1092 = !DILocation(line: 189, column: 23, scope: !1088)
!1093 = !DILocation(line: 189, column: 22, scope: !1088)
!1094 = !DILocation(line: 188, column: 32, scope: !1088)
!1095 = !DILocation(line: 188, column: 6, scope: !1073)
!1096 = !DILocation(line: 191, column: 3, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1088, file: !247, line: 189, column: 48)
!1098 = !DILocation(line: 191, column: 10, scope: !1099)
!1099 = !DILexicalBlockFile(scope: !1097, file: !247, discriminator: 1)
!1100 = !DILocation(line: 191, column: 16, scope: !1099)
!1101 = !DILocation(line: 191, column: 24, scope: !1099)
!1102 = !DILocation(line: 191, column: 38, scope: !1099)
!1103 = !DILocation(line: 191, column: 36, scope: !1099)
!1104 = !DILocation(line: 191, column: 3, scope: !1099)
!1105 = !DILocation(line: 192, column: 11, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1097, file: !247, line: 191, column: 56)
!1107 = !DILocation(line: 192, column: 17, scope: !1106)
!1108 = !DILocation(line: 192, column: 25, scope: !1106)
!1109 = !DILocation(line: 192, column: 9, scope: !1106)
!1110 = !DILocation(line: 193, column: 8, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1106, file: !247, line: 193, column: 8)
!1112 = !DILocation(line: 193, column: 14, scope: !1111)
!1113 = !DILocation(line: 193, column: 19, scope: !1111)
!1114 = !DILocation(line: 193, column: 27, scope: !1111)
!1115 = !DILocation(line: 193, column: 24, scope: !1111)
!1116 = !DILocation(line: 193, column: 36, scope: !1111)
!1117 = !DILocation(line: 194, column: 8, scope: !1111)
!1118 = !DILocation(line: 194, column: 25, scope: !1111)
!1119 = !DILocation(line: 193, column: 8, scope: !1120)
!1120 = !DILexicalBlockFile(scope: !1106, file: !247, discriminator: 1)
!1121 = !DILocation(line: 198, column: 5, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1111, file: !247, line: 194, column: 31)
!1123 = !DILocation(line: 200, column: 32, scope: !1106)
!1124 = !DILocation(line: 200, column: 38, scope: !1106)
!1125 = !DILocation(line: 200, column: 4, scope: !1106)
!1126 = !DILocation(line: 191, column: 3, scope: !1127)
!1127 = !DILexicalBlockFile(scope: !1097, file: !247, discriminator: 2)
!1128 = distinct !{!1128, !1096}
!1129 = !DILocation(line: 202, column: 2, scope: !1097)
!1130 = !DILocation(line: 203, column: 1, scope: !1073)
