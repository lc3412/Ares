; ModuleID = './line378-textbuffer-view.o.i'
source_filename = "./line378-textbuffer-view.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GSList = type { i8*, %struct._GSList* }
%struct._TEXT_BUFFER_VIEW_REC = type { %struct.TEXT_BUFFER_REC*, %struct._GSList*, %struct._TERM_WINDOW*, i32, i32, i32, i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)*, %struct.TEXT_BUFFER_CACHE_REC*, i32, %struct._LINE_REC*, i32, %struct._LINE_REC*, i32, %struct._GHashTable*, i32, i32, i8 }
%struct.TEXT_BUFFER_REC = type { %struct._GSList*, %struct._LINE_REC*, i32, %struct._LINE_REC*, %struct.TEXT_CHUNK_REC*, i32, i32, i32, i8 }
%struct.TEXT_CHUNK_REC = type { [16368 x i8], i32, i32 }
%struct._TERM_WINDOW = type opaque
%struct.TEXT_BUFFER_CACHE_REC = type { i32, i32, %struct._GHashTable*, i8, i32 }
%struct._LINE_REC = type { %struct._LINE_REC*, %struct._LINE_REC*, i8*, %struct.LINE_INFO_REC }
%struct.LINE_INFO_REC = type { i32, i64 }
%struct._GHashTable = type opaque
%struct.LINE_CACHE_REC = type { i64, i32, [1 x %struct.LINE_CACHE_SUB_REC] }
%struct.LINE_CACHE_SUB_REC = type { i8*, i32, i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)*, i32, i8 }
%struct.BOOKMARK_FIND_REC = type { %struct._LINE_REC*, %struct._GSList* }

@.str = private unnamed_addr constant [15 x i8] c"TextBufferView\00", align 1
@__func__.textbuffer_view_create = private unnamed_addr constant [23 x i8] c"textbuffer_view_create\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"buffer != NULL\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"width > 0\00", align 1
@views = internal global %struct._GSList* null, align 8
@__func__.textbuffer_view_destroy = private unnamed_addr constant [24 x i8] c"textbuffer_view_destroy\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"view != NULL\00", align 1
@__func__.textbuffer_view_resize = private unnamed_addr constant [23 x i8] c"textbuffer_view_resize\00", align 1
@__func__.textbuffer_view_clear = private unnamed_addr constant [22 x i8] c"textbuffer_view_clear\00", align 1
@__func__.textbuffer_view_scroll = private unnamed_addr constant [23 x i8] c"textbuffer_view_scroll\00", align 1
@__func__.textbuffer_view_scroll_line = private unnamed_addr constant [28 x i8] c"textbuffer_view_scroll_line\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"textbuffer-view.c\00", align 1
@__func__.textbuffer_view_get_line_cache = private unnamed_addr constant [31 x i8] c"textbuffer_view_get_line_cache\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"line != NULL\00", align 1
@__func__.textbuffer_view_insert_line = private unnamed_addr constant [28 x i8] c"textbuffer_view_insert_line\00", align 1
@__func__.textbuffer_view_remove_line = private unnamed_addr constant [28 x i8] c"textbuffer_view_remove_line\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"gui textbuffer line removed\00", align 1
@__func__.textbuffer_view_remove_all_lines = private unnamed_addr constant [33 x i8] c"textbuffer_view_remove_all_lines\00", align 1
@__func__.textbuffer_view_set_bookmark = private unnamed_addr constant [29 x i8] c"textbuffer_view_set_bookmark\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"name != NULL\00", align 1
@__func__.textbuffer_view_set_bookmark_bottom = private unnamed_addr constant [36 x i8] c"textbuffer_view_set_bookmark_bottom\00", align 1
@__func__.textbuffer_view_get_bookmark = private unnamed_addr constant [29 x i8] c"textbuffer_view_get_bookmark\00", align 1
@__func__.textbuffer_view_set_hidden_level = private unnamed_addr constant [33 x i8] c"textbuffer_view_set_hidden_level\00", align 1
@__func__.textbuffer_view_set_window = private unnamed_addr constant [27 x i8] c"textbuffer_view_set_window\00", align 1
@__func__.textbuffer_view_redraw = private unnamed_addr constant [23 x i8] c"textbuffer_view_redraw\00", align 1
@linecache_tag = internal global i32 0, align 4
@__func__.textbuffer_view_init_ypos = private unnamed_addr constant [26 x i8] c"textbuffer_view_init_ypos\00", align 1
@term_width = external global i32, align 4
@__func__.view_update_line_cache = private unnamed_addr constant [23 x i8] c"view_update_line_cache\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"line->text != NULL\00", align 1
@term_type = external global i32, align 4
@g_utf8_skip = external constant i8*, align 8

; Function Attrs: nounwind uwtable
define void @textbuffer_view_reset_cache(%struct._TEXT_BUFFER_VIEW_REC*) #0 !dbg !180 {
  %2 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  store %struct._TEXT_BUFFER_VIEW_REC* %0, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_BUFFER_VIEW_REC** %2, metadata !184, metadata !185), !dbg !186
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !187, metadata !185), !dbg !188
  %5 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !189
  %6 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %5, i32 0, i32 7, !dbg !190
  %7 = load %struct.TEXT_BUFFER_CACHE_REC*, %struct.TEXT_BUFFER_CACHE_REC** %6, align 8, !dbg !190
  call void @textbuffer_cache_unref(%struct.TEXT_BUFFER_CACHE_REC* %7), !dbg !191
  %8 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !192
  %9 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %8, i32 0, i32 1, !dbg !193
  %10 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !193
  call void @g_slist_foreach(%struct._GSList* %10, void (i8*, i8*)* bitcast (void (%struct.TEXT_BUFFER_CACHE_REC*)* @textbuffer_cache_unref to void (i8*, i8*)*), i8* null), !dbg !194
  %11 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !195
  %12 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %11, i32 0, i32 1, !dbg !196
  %13 = load %struct._GSList*, %struct._GSList** %12, align 8, !dbg !196
  %14 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !197
  %15 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %14, i32 0, i32 3, !dbg !198
  %16 = load i32, i32* %15, align 8, !dbg !198
  %17 = call %struct.TEXT_BUFFER_CACHE_REC* @textbuffer_cache_get(%struct._GSList* %13, i32 %16), !dbg !199
  %18 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !200
  %19 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %18, i32 0, i32 7, !dbg !201
  store %struct.TEXT_BUFFER_CACHE_REC* %17, %struct.TEXT_BUFFER_CACHE_REC** %19, align 8, !dbg !202
  %20 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !203
  %21 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %20, i32 0, i32 1, !dbg !205
  %22 = load %struct._GSList*, %struct._GSList** %21, align 8, !dbg !205
  store %struct._GSList* %22, %struct._GSList** %3, align 8, !dbg !206
  br label %23, !dbg !207

; <label>:23:                                     ; preds = %40, %1
  %24 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !208
  %25 = icmp ne %struct._GSList* %24, null, !dbg !211
  br i1 %25, label %26, label %44, !dbg !212

; <label>:26:                                     ; preds = %23
  call void @llvm.dbg.declare(metadata %struct._TEXT_BUFFER_VIEW_REC** %4, metadata !213, metadata !185), !dbg !215
  %27 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !216
  %28 = getelementptr inbounds %struct._GSList, %struct._GSList* %27, i32 0, i32 0, !dbg !217
  %29 = load i8*, i8** %28, align 8, !dbg !217
  %30 = bitcast i8* %29 to %struct._TEXT_BUFFER_VIEW_REC*, !dbg !216
  store %struct._TEXT_BUFFER_VIEW_REC* %30, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !215
  %31 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !218
  %32 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %31, i32 0, i32 1, !dbg !219
  %33 = load %struct._GSList*, %struct._GSList** %32, align 8, !dbg !219
  %34 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !220
  %35 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %34, i32 0, i32 3, !dbg !221
  %36 = load i32, i32* %35, align 8, !dbg !221
  %37 = call %struct.TEXT_BUFFER_CACHE_REC* @textbuffer_cache_get(%struct._GSList* %33, i32 %36), !dbg !222
  %38 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !223
  %39 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %38, i32 0, i32 7, !dbg !224
  store %struct.TEXT_BUFFER_CACHE_REC* %37, %struct.TEXT_BUFFER_CACHE_REC** %39, align 8, !dbg !225
  br label %40, !dbg !226

; <label>:40:                                     ; preds = %26
  %41 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !227
  %42 = getelementptr inbounds %struct._GSList, %struct._GSList* %41, i32 0, i32 1, !dbg !229
  %43 = load %struct._GSList*, %struct._GSList** %42, align 8, !dbg !229
  store %struct._GSList* %43, %struct._GSList** %3, align 8, !dbg !230
  br label %23, !dbg !231, !llvm.loop !232

; <label>:44:                                     ; preds = %23
  ret void, !dbg !234
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal void @textbuffer_cache_unref(%struct.TEXT_BUFFER_CACHE_REC*) #0 !dbg !235 {
  %2 = alloca %struct.TEXT_BUFFER_CACHE_REC*, align 8
  store %struct.TEXT_BUFFER_CACHE_REC* %0, %struct.TEXT_BUFFER_CACHE_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.TEXT_BUFFER_CACHE_REC** %2, metadata !238, metadata !185), !dbg !239
  %3 = load %struct.TEXT_BUFFER_CACHE_REC*, %struct.TEXT_BUFFER_CACHE_REC** %2, align 8, !dbg !240
  %4 = getelementptr inbounds %struct.TEXT_BUFFER_CACHE_REC, %struct.TEXT_BUFFER_CACHE_REC* %3, i32 0, i32 0, !dbg !242
  %5 = load i32, i32* %4, align 8, !dbg !243
  %6 = add nsw i32 %5, -1, !dbg !243
  store i32 %6, i32* %4, align 8, !dbg !243
  %7 = icmp eq i32 %6, 0, !dbg !244
  br i1 %7, label %8, label %10, !dbg !245

; <label>:8:                                      ; preds = %1
  %9 = load %struct.TEXT_BUFFER_CACHE_REC*, %struct.TEXT_BUFFER_CACHE_REC** %2, align 8, !dbg !246
  call void @textbuffer_cache_destroy(%struct.TEXT_BUFFER_CACHE_REC* %9), !dbg !247
  br label %10, !dbg !247

; <label>:10:                                     ; preds = %8, %1
  ret void, !dbg !248
}

declare void @g_slist_foreach(%struct._GSList*, void (i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct.TEXT_BUFFER_CACHE_REC* @textbuffer_cache_get(%struct._GSList*, i32) #0 !dbg !249 {
  %3 = alloca %struct.TEXT_BUFFER_CACHE_REC*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TEXT_BUFFER_CACHE_REC*, align 8
  %7 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  store %struct._GSList* %0, %struct._GSList** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !252, metadata !185), !dbg !253
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !254, metadata !185), !dbg !255
  call void @llvm.dbg.declare(metadata %struct.TEXT_BUFFER_CACHE_REC** %6, metadata !256, metadata !185), !dbg !257
  br label %8, !dbg !258

; <label>:8:                                      ; preds = %31, %2
  %9 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !259
  %10 = icmp ne %struct._GSList* %9, null, !dbg !261
  br i1 %10, label %11, label %35, !dbg !262

; <label>:11:                                     ; preds = %8
  call void @llvm.dbg.declare(metadata %struct._TEXT_BUFFER_VIEW_REC** %7, metadata !263, metadata !185), !dbg !265
  %12 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !266
  %13 = getelementptr inbounds %struct._GSList, %struct._GSList* %12, i32 0, i32 0, !dbg !267
  %14 = load i8*, i8** %13, align 8, !dbg !267
  %15 = bitcast i8* %14 to %struct._TEXT_BUFFER_VIEW_REC*, !dbg !266
  store %struct._TEXT_BUFFER_VIEW_REC* %15, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !265
  %16 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !268
  %17 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %16, i32 0, i32 3, !dbg !270
  %18 = load i32, i32* %17, align 8, !dbg !270
  %19 = load i32, i32* %5, align 4, !dbg !271
  %20 = icmp eq i32 %18, %19, !dbg !272
  br i1 %20, label %21, label %31, !dbg !273

; <label>:21:                                     ; preds = %11
  %22 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !274
  %23 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %22, i32 0, i32 7, !dbg !276
  %24 = load %struct.TEXT_BUFFER_CACHE_REC*, %struct.TEXT_BUFFER_CACHE_REC** %23, align 8, !dbg !276
  %25 = getelementptr inbounds %struct.TEXT_BUFFER_CACHE_REC, %struct.TEXT_BUFFER_CACHE_REC* %24, i32 0, i32 0, !dbg !277
  %26 = load i32, i32* %25, align 8, !dbg !278
  %27 = add nsw i32 %26, 1, !dbg !278
  store i32 %27, i32* %25, align 8, !dbg !278
  %28 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !279
  %29 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %28, i32 0, i32 7, !dbg !280
  %30 = load %struct.TEXT_BUFFER_CACHE_REC*, %struct.TEXT_BUFFER_CACHE_REC** %29, align 8, !dbg !280
  store %struct.TEXT_BUFFER_CACHE_REC* %30, %struct.TEXT_BUFFER_CACHE_REC** %3, align 8, !dbg !281
  br label %47, !dbg !281

; <label>:31:                                     ; preds = %11
  %32 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !282
  %33 = getelementptr inbounds %struct._GSList, %struct._GSList* %32, i32 0, i32 1, !dbg !283
  %34 = load %struct._GSList*, %struct._GSList** %33, align 8, !dbg !283
  store %struct._GSList* %34, %struct._GSList** %4, align 8, !dbg !284
  br label %8, !dbg !285, !llvm.loop !287

; <label>:35:                                     ; preds = %8
  %36 = call noalias i8* @g_malloc0_n(i64 1, i64 24), !dbg !288
  %37 = bitcast i8* %36 to %struct.TEXT_BUFFER_CACHE_REC*, !dbg !289
  store %struct.TEXT_BUFFER_CACHE_REC* %37, %struct.TEXT_BUFFER_CACHE_REC** %6, align 8, !dbg !290
  %38 = load %struct.TEXT_BUFFER_CACHE_REC*, %struct.TEXT_BUFFER_CACHE_REC** %6, align 8, !dbg !291
  %39 = getelementptr inbounds %struct.TEXT_BUFFER_CACHE_REC, %struct.TEXT_BUFFER_CACHE_REC* %38, i32 0, i32 0, !dbg !292
  store i32 1, i32* %39, align 8, !dbg !293
  %40 = load i32, i32* %5, align 4, !dbg !294
  %41 = load %struct.TEXT_BUFFER_CACHE_REC*, %struct.TEXT_BUFFER_CACHE_REC** %6, align 8, !dbg !295
  %42 = getelementptr inbounds %struct.TEXT_BUFFER_CACHE_REC, %struct.TEXT_BUFFER_CACHE_REC* %41, i32 0, i32 1, !dbg !296
  store i32 %40, i32* %42, align 4, !dbg !297
  %43 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_direct_hash, i32 (i8*, i8*)* @g_direct_equal), !dbg !298
  %44 = load %struct.TEXT_BUFFER_CACHE_REC*, %struct.TEXT_BUFFER_CACHE_REC** %6, align 8, !dbg !299
  %45 = getelementptr inbounds %struct.TEXT_BUFFER_CACHE_REC, %struct.TEXT_BUFFER_CACHE_REC* %44, i32 0, i32 2, !dbg !300
  store %struct._GHashTable* %43, %struct._GHashTable** %45, align 8, !dbg !301
  %46 = load %struct.TEXT_BUFFER_CACHE_REC*, %struct.TEXT_BUFFER_CACHE_REC** %6, align 8, !dbg !302
  store %struct.TEXT_BUFFER_CACHE_REC* %46, %struct.TEXT_BUFFER_CACHE_REC** %3, align 8, !dbg !303
  br label %47, !dbg !303

; <label>:47:                                     ; preds = %35, %21
  %48 = load %struct.TEXT_BUFFER_CACHE_REC*, %struct.TEXT_BUFFER_CACHE_REC** %3, align 8, !dbg !304
  ret %struct.TEXT_BUFFER_CACHE_REC* %48, !dbg !304
}

; Function Attrs: nounwind uwtable
define %struct._TEXT_BUFFER_VIEW_REC* @textbuffer_view_create(%struct.TEXT_BUFFER_REC*, i32, i32, i32, i32) #0 !dbg !305 {
  %6 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  %7 = alloca %struct.TEXT_BUFFER_REC*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  store %struct.TEXT_BUFFER_REC* %0, %struct.TEXT_BUFFER_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.TEXT_BUFFER_REC** %7, metadata !308, metadata !185), !dbg !309
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !310, metadata !185), !dbg !311
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !312, metadata !185), !dbg !313
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !314, metadata !185), !dbg !315
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !316, metadata !185), !dbg !317
  call void @llvm.dbg.declare(metadata %struct._TEXT_BUFFER_VIEW_REC** %12, metadata !318, metadata !185), !dbg !319
  br label %13, !dbg !320, !llvm.loop !321

; <label>:13:                                     ; preds = %5
  %14 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %7, align 8, !dbg !322
  %15 = icmp ne %struct.TEXT_BUFFER_REC* %14, null, !dbg !326
  br i1 %15, label %16, label %17, !dbg !322

; <label>:16:                                     ; preds = %13
  br label %18, !dbg !327

; <label>:17:                                     ; preds = %13
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.textbuffer_view_create, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)), !dbg !330
  store %struct._TEXT_BUFFER_VIEW_REC* null, %struct._TEXT_BUFFER_VIEW_REC** %6, align 8, !dbg !333
  br label %96, !dbg !333

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !334

; <label>:19:                                     ; preds = %18
  br label %20, !dbg !336, !llvm.loop !337

; <label>:20:                                     ; preds = %19
  %21 = load i32, i32* %8, align 4, !dbg !338
  %22 = icmp sgt i32 %21, 0, !dbg !342
  br i1 %22, label %23, label %24, !dbg !338

; <label>:23:                                     ; preds = %20
  br label %25, !dbg !343

; <label>:24:                                     ; preds = %20
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.textbuffer_view_create, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0)), !dbg !346
  store %struct._TEXT_BUFFER_VIEW_REC* null, %struct._TEXT_BUFFER_VIEW_REC** %6, align 8, !dbg !349
  br label %96, !dbg !349

; <label>:25:                                     ; preds = %23
  br label %26, !dbg !350

; <label>:26:                                     ; preds = %25
  %27 = call noalias i8* @g_malloc0_n(i64 1, i64 120), !dbg !352
  %28 = bitcast i8* %27 to %struct._TEXT_BUFFER_VIEW_REC*, !dbg !353
  store %struct._TEXT_BUFFER_VIEW_REC* %28, %struct._TEXT_BUFFER_VIEW_REC** %12, align 8, !dbg !354
  %29 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %7, align 8, !dbg !355
  %30 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %12, align 8, !dbg !356
  %31 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %30, i32 0, i32 0, !dbg !357
  store %struct.TEXT_BUFFER_REC* %29, %struct.TEXT_BUFFER_REC** %31, align 8, !dbg !358
  %32 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %7, align 8, !dbg !359
  %33 = call %struct._GSList* @textbuffer_get_views(%struct.TEXT_BUFFER_REC* %32), !dbg !360
  %34 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %12, align 8, !dbg !361
  %35 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %34, i32 0, i32 1, !dbg !362
  store %struct._GSList* %33, %struct._GSList** %35, align 8, !dbg !363
  %36 = load i32, i32* %8, align 4, !dbg !364
  %37 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %12, align 8, !dbg !365
  %38 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %37, i32 0, i32 3, !dbg !366
  store i32 %36, i32* %38, align 8, !dbg !367
  %39 = load i32, i32* %9, align 4, !dbg !368
  %40 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %12, align 8, !dbg !369
  %41 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %40, i32 0, i32 4, !dbg !370
  store i32 %39, i32* %41, align 4, !dbg !371
  %42 = load i32, i32* %10, align 4, !dbg !372
  %43 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %12, align 8, !dbg !373
  %44 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %43, i32 0, i32 16, !dbg !374
  %45 = trunc i32 %42 to i8, !dbg !375
  %46 = load i8, i8* %44, align 8, !dbg !375
  %47 = and i8 %45, 1, !dbg !375
  %48 = shl i8 %47, 1, !dbg !375
  %49 = and i8 %46, -3, !dbg !375
  %50 = or i8 %49, %48, !dbg !375
  store i8 %50, i8* %44, align 8, !dbg !375
  %51 = zext i8 %47 to i32, !dbg !375
  %52 = load i32, i32* %11, align 4, !dbg !376
  %53 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %12, align 8, !dbg !377
  %54 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %53, i32 0, i32 16, !dbg !378
  %55 = trunc i32 %52 to i8, !dbg !379
  %56 = load i8, i8* %54, align 8, !dbg !379
  %57 = and i8 %55, 1, !dbg !379
  %58 = shl i8 %57, 2, !dbg !379
  %59 = and i8 %56, -5, !dbg !379
  %60 = or i8 %59, %58, !dbg !379
  store i8 %60, i8* %54, align 8, !dbg !379
  %61 = zext i8 %57 to i32, !dbg !379
  %62 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %12, align 8, !dbg !380
  %63 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %62, i32 0, i32 1, !dbg !381
  %64 = load %struct._GSList*, %struct._GSList** %63, align 8, !dbg !381
  %65 = load i32, i32* %8, align 4, !dbg !382
  %66 = call %struct.TEXT_BUFFER_CACHE_REC* @textbuffer_cache_get(%struct._GSList* %64, i32 %65), !dbg !383
  %67 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %12, align 8, !dbg !384
  %68 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %67, i32 0, i32 7, !dbg !385
  store %struct.TEXT_BUFFER_CACHE_REC* %66, %struct.TEXT_BUFFER_CACHE_REC** %68, align 8, !dbg !386
  %69 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %12, align 8, !dbg !387
  call void @textbuffer_view_init_bottom(%struct._TEXT_BUFFER_VIEW_REC* %69), !dbg !388
  %70 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %12, align 8, !dbg !389
  %71 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %70, i32 0, i32 11, !dbg !390
  %72 = load %struct._LINE_REC*, %struct._LINE_REC** %71, align 8, !dbg !390
  %73 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %12, align 8, !dbg !391
  %74 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %73, i32 0, i32 9, !dbg !392
  store %struct._LINE_REC* %72, %struct._LINE_REC** %74, align 8, !dbg !393
  %75 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %12, align 8, !dbg !394
  %76 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %75, i32 0, i32 12, !dbg !395
  %77 = load i32, i32* %76, align 8, !dbg !395
  %78 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %12, align 8, !dbg !396
  %79 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %78, i32 0, i32 10, !dbg !397
  store i32 %77, i32* %79, align 8, !dbg !398
  %80 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %12, align 8, !dbg !399
  %81 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %80, i32 0, i32 16, !dbg !400
  %82 = load i8, i8* %81, align 8, !dbg !401
  %83 = and i8 %82, -17, !dbg !401
  %84 = or i8 %83, 16, !dbg !401
  store i8 %84, i8* %81, align 8, !dbg !401
  %85 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %12, align 8, !dbg !402
  %86 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %85, i32 0, i32 14, !dbg !403
  store i32 0, i32* %86, align 8, !dbg !404
  %87 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %12, align 8, !dbg !405
  call void @textbuffer_view_init_ypos(%struct._TEXT_BUFFER_VIEW_REC* %87), !dbg !406
  %88 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal), !dbg !407
  %89 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %12, align 8, !dbg !408
  %90 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %89, i32 0, i32 13, !dbg !409
  store %struct._GHashTable* %88, %struct._GHashTable** %90, align 8, !dbg !410
  %91 = load %struct._GSList*, %struct._GSList** @views, align 8, !dbg !411
  %92 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %12, align 8, !dbg !412
  %93 = bitcast %struct._TEXT_BUFFER_VIEW_REC* %92 to i8*, !dbg !412
  %94 = call %struct._GSList* @g_slist_append(%struct._GSList* %91, i8* %93), !dbg !413
  store %struct._GSList* %94, %struct._GSList** @views, align 8, !dbg !414
  %95 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %12, align 8, !dbg !415
  store %struct._TEXT_BUFFER_VIEW_REC* %95, %struct._TEXT_BUFFER_VIEW_REC** %6, align 8, !dbg !416
  br label %96, !dbg !416

; <label>:96:                                     ; preds = %26, %24, %17
  %97 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %6, align 8, !dbg !417
  ret %struct._TEXT_BUFFER_VIEW_REC* %97, !dbg !417
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare noalias i8* @g_malloc0_n(i64, i64) #2

; Function Attrs: nounwind uwtable
define internal %struct._GSList* @textbuffer_get_views(%struct.TEXT_BUFFER_REC*) #0 !dbg !418 {
  %2 = alloca %struct._GSList*, align 8
  %3 = alloca %struct.TEXT_BUFFER_REC*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  store %struct.TEXT_BUFFER_REC* %0, %struct.TEXT_BUFFER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.TEXT_BUFFER_REC** %3, metadata !421, metadata !185), !dbg !422
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !423, metadata !185), !dbg !424
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !425, metadata !185), !dbg !426
  %7 = load %struct._GSList*, %struct._GSList** @views, align 8, !dbg !427
  store %struct._GSList* %7, %struct._GSList** %4, align 8, !dbg !429
  br label %8, !dbg !430

; <label>:8:                                      ; preds = %31, %1
  %9 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !431
  %10 = icmp ne %struct._GSList* %9, null, !dbg !434
  br i1 %10, label %11, label %35, !dbg !435

; <label>:11:                                     ; preds = %8
  call void @llvm.dbg.declare(metadata %struct._TEXT_BUFFER_VIEW_REC** %6, metadata !436, metadata !185), !dbg !438
  %12 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !439
  %13 = getelementptr inbounds %struct._GSList, %struct._GSList* %12, i32 0, i32 0, !dbg !440
  %14 = load i8*, i8** %13, align 8, !dbg !440
  %15 = bitcast i8* %14 to %struct._TEXT_BUFFER_VIEW_REC*, !dbg !439
  store %struct._TEXT_BUFFER_VIEW_REC* %15, %struct._TEXT_BUFFER_VIEW_REC** %6, align 8, !dbg !438
  %16 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %6, align 8, !dbg !441
  %17 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %16, i32 0, i32 0, !dbg !443
  %18 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %17, align 8, !dbg !443
  %19 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %3, align 8, !dbg !444
  %20 = icmp eq %struct.TEXT_BUFFER_REC* %18, %19, !dbg !445
  br i1 %20, label %21, label %30, !dbg !446

; <label>:21:                                     ; preds = %11
  %22 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %6, align 8, !dbg !447
  %23 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %22, i32 0, i32 1, !dbg !449
  %24 = load %struct._GSList*, %struct._GSList** %23, align 8, !dbg !449
  %25 = call %struct._GSList* @g_slist_copy(%struct._GSList* %24), !dbg !450
  store %struct._GSList* %25, %struct._GSList** %5, align 8, !dbg !451
  %26 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !452
  %27 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %6, align 8, !dbg !453
  %28 = bitcast %struct._TEXT_BUFFER_VIEW_REC* %27 to i8*, !dbg !453
  %29 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %26, i8* %28), !dbg !454
  store %struct._GSList* %29, %struct._GSList** %2, align 8, !dbg !455
  br label %36, !dbg !455

; <label>:30:                                     ; preds = %11
  br label %31, !dbg !456

; <label>:31:                                     ; preds = %30
  %32 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !457
  %33 = getelementptr inbounds %struct._GSList, %struct._GSList* %32, i32 0, i32 1, !dbg !459
  %34 = load %struct._GSList*, %struct._GSList** %33, align 8, !dbg !459
  store %struct._GSList* %34, %struct._GSList** %4, align 8, !dbg !460
  br label %8, !dbg !461, !llvm.loop !462

; <label>:35:                                     ; preds = %8
  store %struct._GSList* null, %struct._GSList** %2, align 8, !dbg !464
  br label %36, !dbg !464

; <label>:36:                                     ; preds = %35, %21
  %37 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !465
  ret %struct._GSList* %37, !dbg !465
}

; Function Attrs: nounwind uwtable
define internal void @textbuffer_view_init_bottom(%struct._TEXT_BUFFER_VIEW_REC*) #0 !dbg !466 {
  %2 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  %3 = alloca %struct._LINE_REC*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct._TEXT_BUFFER_VIEW_REC* %0, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_BUFFER_VIEW_REC** %2, metadata !467, metadata !185), !dbg !468
  call void @llvm.dbg.declare(metadata %struct._LINE_REC** %3, metadata !469, metadata !185), !dbg !470
  call void @llvm.dbg.declare(metadata i32* %4, metadata !471, metadata !185), !dbg !472
  call void @llvm.dbg.declare(metadata i32* %5, metadata !473, metadata !185), !dbg !474
  %6 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !475
  %7 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %6, i32 0, i32 15, !dbg !477
  %8 = load i32, i32* %7, align 4, !dbg !477
  %9 = icmp eq i32 %8, 0, !dbg !478
  br i1 %9, label %10, label %13, !dbg !479

; <label>:10:                                     ; preds = %1
  %11 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !480
  %12 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %11, i32 0, i32 11, !dbg !482
  store %struct._LINE_REC* null, %struct._LINE_REC** %12, align 8, !dbg !483
  br label %13, !dbg !484

; <label>:13:                                     ; preds = %10, %1
  store i32 0, i32* %5, align 4, !dbg !485
  %14 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !486
  %15 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %14, i32 0, i32 0, !dbg !487
  %16 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %15, align 8, !dbg !487
  %17 = call %struct._LINE_REC* @textbuffer_line_last(%struct.TEXT_BUFFER_REC* %16), !dbg !488
  store %struct._LINE_REC* %17, %struct._LINE_REC** %3, align 8, !dbg !489
  br label %18, !dbg !490

; <label>:18:                                     ; preds = %103, %13
  %19 = load %struct._LINE_REC*, %struct._LINE_REC** %3, align 8, !dbg !491
  %20 = icmp ne %struct._LINE_REC* %19, null, !dbg !495
  br i1 %20, label %21, label %107, !dbg !496

; <label>:21:                                     ; preds = %18
  %22 = load %struct._LINE_REC*, %struct._LINE_REC** %3, align 8, !dbg !497
  %23 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %22, i32 0, i32 3, !dbg !500
  %24 = getelementptr inbounds %struct.LINE_INFO_REC, %struct.LINE_INFO_REC* %23, i32 0, i32 0, !dbg !501
  %25 = load i32, i32* %24, align 8, !dbg !501
  %26 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !502
  %27 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %26, i32 0, i32 14, !dbg !503
  %28 = load i32, i32* %27, align 8, !dbg !503
  %29 = and i32 %25, %28, !dbg !504
  %30 = icmp ne i32 %29, 0, !dbg !505
  br i1 %30, label %31, label %32, !dbg !506

; <label>:31:                                     ; preds = %21
  br label %103, !dbg !507

; <label>:32:                                     ; preds = %21
  %33 = load %struct._LINE_REC*, %struct._LINE_REC** %3, align 8, !dbg !508
  %34 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %33, i32 0, i32 3, !dbg !509
  %35 = getelementptr inbounds %struct.LINE_INFO_REC, %struct.LINE_INFO_REC* %34, i32 0, i32 0, !dbg !510
  %36 = load i32, i32* %35, align 8, !dbg !510
  %37 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !511
  %38 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %37, i32 0, i32 14, !dbg !512
  %39 = load i32, i32* %38, align 8, !dbg !512
  %40 = and i32 %36, %39, !dbg !513
  %41 = icmp ne i32 %40, 0, !dbg !514
  br i1 %41, label %42, label %43, !dbg !515

; <label>:42:                                     ; preds = %32
  br label %49, !dbg !516

; <label>:43:                                     ; preds = %32
  %44 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !518
  %45 = load %struct._LINE_REC*, %struct._LINE_REC** %3, align 8, !dbg !520
  %46 = call %struct.LINE_CACHE_REC* @textbuffer_view_get_line_cache(%struct._TEXT_BUFFER_VIEW_REC* %44, %struct._LINE_REC* %45), !dbg !521
  %47 = getelementptr inbounds %struct.LINE_CACHE_REC, %struct.LINE_CACHE_REC* %46, i32 0, i32 1, !dbg !522
  %48 = load i32, i32* %47, align 8, !dbg !522
  br label %49, !dbg !523

; <label>:49:                                     ; preds = %43, %42
  %50 = phi i32 [ 0, %42 ], [ %48, %43 ], !dbg !524
  store i32 %50, i32* %4, align 4, !dbg !526
  %51 = load %struct._LINE_REC*, %struct._LINE_REC** %3, align 8, !dbg !527
  %52 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !529
  %53 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %52, i32 0, i32 11, !dbg !530
  %54 = load %struct._LINE_REC*, %struct._LINE_REC** %53, align 8, !dbg !530
  %55 = icmp eq %struct._LINE_REC* %51, %54, !dbg !531
  br i1 %55, label %56, label %80, !dbg !532

; <label>:56:                                     ; preds = %49
  %57 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !533
  %58 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %57, i32 0, i32 12, !dbg !536
  %59 = load i32, i32* %58, align 8, !dbg !536
  %60 = load i32, i32* %4, align 4, !dbg !537
  %61 = icmp sgt i32 %59, %60, !dbg !538
  br i1 %61, label %62, label %66, !dbg !539

; <label>:62:                                     ; preds = %56
  %63 = load i32, i32* %4, align 4, !dbg !540
  %64 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !541
  %65 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %64, i32 0, i32 12, !dbg !542
  store i32 %63, i32* %65, align 8, !dbg !543
  br label %66, !dbg !541

; <label>:66:                                     ; preds = %62, %56
  %67 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !544
  %68 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %67, i32 0, i32 4, !dbg !545
  %69 = load i32, i32* %68, align 4, !dbg !545
  %70 = load i32, i32* %5, align 4, !dbg !546
  %71 = sub nsw i32 %69, %70, !dbg !547
  %72 = load i32, i32* %4, align 4, !dbg !548
  %73 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !549
  %74 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %73, i32 0, i32 12, !dbg !550
  %75 = load i32, i32* %74, align 8, !dbg !550
  %76 = sub nsw i32 %72, %75, !dbg !551
  %77 = sub nsw i32 %71, %76, !dbg !552
  %78 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !553
  %79 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %78, i32 0, i32 15, !dbg !554
  store i32 %77, i32* %79, align 4, !dbg !555
  br label %124, !dbg !556

; <label>:80:                                     ; preds = %49
  %81 = load i32, i32* %4, align 4, !dbg !557
  %82 = load i32, i32* %5, align 4, !dbg !558
  %83 = add nsw i32 %82, %81, !dbg !558
  store i32 %83, i32* %5, align 4, !dbg !558
  %84 = load i32, i32* %5, align 4, !dbg !559
  %85 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !561
  %86 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %85, i32 0, i32 4, !dbg !562
  %87 = load i32, i32* %86, align 4, !dbg !562
  %88 = icmp sge i32 %84, %87, !dbg !563
  br i1 %88, label %89, label %102, !dbg !564

; <label>:89:                                     ; preds = %80
  %90 = load %struct._LINE_REC*, %struct._LINE_REC** %3, align 8, !dbg !565
  %91 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !567
  %92 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %91, i32 0, i32 11, !dbg !568
  store %struct._LINE_REC* %90, %struct._LINE_REC** %92, align 8, !dbg !569
  %93 = load i32, i32* %5, align 4, !dbg !570
  %94 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !571
  %95 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %94, i32 0, i32 4, !dbg !572
  %96 = load i32, i32* %95, align 4, !dbg !572
  %97 = sub nsw i32 %93, %96, !dbg !573
  %98 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !574
  %99 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %98, i32 0, i32 12, !dbg !575
  store i32 %97, i32* %99, align 8, !dbg !576
  %100 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !577
  %101 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %100, i32 0, i32 15, !dbg !578
  store i32 0, i32* %101, align 4, !dbg !579
  br label %124, !dbg !580

; <label>:102:                                    ; preds = %80
  br label %103, !dbg !581

; <label>:103:                                    ; preds = %102, %31
  %104 = load %struct._LINE_REC*, %struct._LINE_REC** %3, align 8, !dbg !582
  %105 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %104, i32 0, i32 0, !dbg !584
  %106 = load %struct._LINE_REC*, %struct._LINE_REC** %105, align 8, !dbg !584
  store %struct._LINE_REC* %106, %struct._LINE_REC** %3, align 8, !dbg !585
  br label %18, !dbg !586, !llvm.loop !587

; <label>:107:                                    ; preds = %18
  %108 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !588
  %109 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %108, i32 0, i32 0, !dbg !589
  %110 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %109, align 8, !dbg !589
  %111 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %110, i32 0, i32 1, !dbg !590
  %112 = load %struct._LINE_REC*, %struct._LINE_REC** %111, align 8, !dbg !590
  %113 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !591
  %114 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %113, i32 0, i32 11, !dbg !592
  store %struct._LINE_REC* %112, %struct._LINE_REC** %114, align 8, !dbg !593
  %115 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !594
  %116 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %115, i32 0, i32 12, !dbg !595
  store i32 0, i32* %116, align 8, !dbg !596
  %117 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !597
  %118 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %117, i32 0, i32 4, !dbg !598
  %119 = load i32, i32* %118, align 4, !dbg !598
  %120 = load i32, i32* %5, align 4, !dbg !599
  %121 = sub nsw i32 %119, %120, !dbg !600
  %122 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !601
  %123 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %122, i32 0, i32 15, !dbg !602
  store i32 %121, i32* %123, align 4, !dbg !603
  br label %124, !dbg !604

; <label>:124:                                    ; preds = %107, %89, %66
  ret void, !dbg !605
}

; Function Attrs: nounwind uwtable
define internal void @textbuffer_view_init_ypos(%struct._TEXT_BUFFER_VIEW_REC*) #0 !dbg !607 {
  %2 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  %3 = alloca %struct._LINE_REC*, align 8
  store %struct._TEXT_BUFFER_VIEW_REC* %0, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_BUFFER_VIEW_REC** %2, metadata !608, metadata !185), !dbg !609
  call void @llvm.dbg.declare(metadata %struct._LINE_REC** %3, metadata !610, metadata !185), !dbg !611
  br label %4, !dbg !612, !llvm.loop !613

; <label>:4:                                      ; preds = %1
  %5 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !614
  %6 = icmp ne %struct._TEXT_BUFFER_VIEW_REC* %5, null, !dbg !618
  br i1 %6, label %7, label %8, !dbg !614

; <label>:7:                                      ; preds = %4
  br label %9, !dbg !619

; <label>:8:                                      ; preds = %4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.textbuffer_view_init_ypos, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0)), !dbg !622
  br label %51, !dbg !625

; <label>:9:                                      ; preds = %7
  br label %10, !dbg !626

; <label>:10:                                     ; preds = %9
  %11 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !628
  %12 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %11, i32 0, i32 10, !dbg !629
  %13 = load i32, i32* %12, align 8, !dbg !629
  %14 = sub nsw i32 0, %13, !dbg !630
  %15 = sub nsw i32 %14, 1, !dbg !631
  %16 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !632
  %17 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %16, i32 0, i32 8, !dbg !633
  store i32 %15, i32* %17, align 8, !dbg !634
  %18 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !635
  %19 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %18, i32 0, i32 9, !dbg !637
  %20 = load %struct._LINE_REC*, %struct._LINE_REC** %19, align 8, !dbg !637
  store %struct._LINE_REC* %20, %struct._LINE_REC** %3, align 8, !dbg !638
  br label %21, !dbg !639

; <label>:21:                                     ; preds = %47, %10
  %22 = load %struct._LINE_REC*, %struct._LINE_REC** %3, align 8, !dbg !640
  %23 = icmp ne %struct._LINE_REC* %22, null, !dbg !643
  br i1 %23, label %24, label %51, !dbg !644

; <label>:24:                                     ; preds = %21
  %25 = load %struct._LINE_REC*, %struct._LINE_REC** %3, align 8, !dbg !645
  %26 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %25, i32 0, i32 3, !dbg !646
  %27 = getelementptr inbounds %struct.LINE_INFO_REC, %struct.LINE_INFO_REC* %26, i32 0, i32 0, !dbg !647
  %28 = load i32, i32* %27, align 8, !dbg !647
  %29 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !648
  %30 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %29, i32 0, i32 14, !dbg !649
  %31 = load i32, i32* %30, align 8, !dbg !649
  %32 = and i32 %28, %31, !dbg !650
  %33 = icmp ne i32 %32, 0, !dbg !651
  br i1 %33, label %34, label %35, !dbg !652

; <label>:34:                                     ; preds = %24
  br label %41, !dbg !653

; <label>:35:                                     ; preds = %24
  %36 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !654
  %37 = load %struct._LINE_REC*, %struct._LINE_REC** %3, align 8, !dbg !656
  %38 = call %struct.LINE_CACHE_REC* @textbuffer_view_get_line_cache(%struct._TEXT_BUFFER_VIEW_REC* %36, %struct._LINE_REC* %37), !dbg !657
  %39 = getelementptr inbounds %struct.LINE_CACHE_REC, %struct.LINE_CACHE_REC* %38, i32 0, i32 1, !dbg !658
  %40 = load i32, i32* %39, align 8, !dbg !658
  br label %41, !dbg !659

; <label>:41:                                     ; preds = %35, %34
  %42 = phi i32 [ 0, %34 ], [ %40, %35 ], !dbg !660
  %43 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !662
  %44 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %43, i32 0, i32 8, !dbg !663
  %45 = load i32, i32* %44, align 8, !dbg !664
  %46 = add nsw i32 %45, %42, !dbg !664
  store i32 %46, i32* %44, align 8, !dbg !664
  br label %47, !dbg !662

; <label>:47:                                     ; preds = %41
  %48 = load %struct._LINE_REC*, %struct._LINE_REC** %3, align 8, !dbg !665
  %49 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %48, i32 0, i32 1, !dbg !666
  %50 = load %struct._LINE_REC*, %struct._LINE_REC** %49, align 8, !dbg !666
  store %struct._LINE_REC* %50, %struct._LINE_REC** %3, align 8, !dbg !667
  br label %21, !dbg !668, !llvm.loop !669

; <label>:51:                                     ; preds = %8, %21
  ret void, !dbg !671
}

declare %struct._GHashTable* @g_hash_table_new(i32 (i8*)*, i32 (i8*, i8*)*) #2

declare i32 @g_str_hash(i8*) #2

declare i32 @g_str_equal(i8*, i8*) #2

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #2

; Function Attrs: nounwind uwtable
define void @textbuffer_view_destroy(%struct._TEXT_BUFFER_VIEW_REC*) #0 !dbg !672 {
  %2 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  store %struct._TEXT_BUFFER_VIEW_REC* %0, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_BUFFER_VIEW_REC** %2, metadata !673, metadata !185), !dbg !674
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !675, metadata !185), !dbg !676
  br label %5, !dbg !677, !llvm.loop !678

; <label>:5:                                      ; preds = %1
  %6 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !679
  %7 = icmp ne %struct._TEXT_BUFFER_VIEW_REC* %6, null, !dbg !683
  br i1 %7, label %8, label %9, !dbg !679

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !684

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.textbuffer_view_destroy, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0)), !dbg !687
  br label %64, !dbg !690

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !691

; <label>:11:                                     ; preds = %10
  %12 = load %struct._GSList*, %struct._GSList** @views, align 8, !dbg !693
  %13 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !694
  %14 = bitcast %struct._TEXT_BUFFER_VIEW_REC* %13 to i8*, !dbg !694
  %15 = call %struct._GSList* @g_slist_remove(%struct._GSList* %12, i8* %14), !dbg !695
  store %struct._GSList* %15, %struct._GSList** @views, align 8, !dbg !696
  %16 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !697
  %17 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %16, i32 0, i32 1, !dbg !699
  %18 = load %struct._GSList*, %struct._GSList** %17, align 8, !dbg !699
  %19 = icmp eq %struct._GSList* %18, null, !dbg !700
  br i1 %19, label %20, label %24, !dbg !701

; <label>:20:                                     ; preds = %11
  %21 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !702
  %22 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %21, i32 0, i32 0, !dbg !704
  %23 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %22, align 8, !dbg !704
  call void @textbuffer_destroy(%struct.TEXT_BUFFER_REC* %23), !dbg !705
  br label %52, !dbg !706

; <label>:24:                                     ; preds = %11
  %25 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !707
  %26 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %25, i32 0, i32 1, !dbg !710
  %27 = load %struct._GSList*, %struct._GSList** %26, align 8, !dbg !710
  store %struct._GSList* %27, %struct._GSList** %3, align 8, !dbg !711
  br label %28, !dbg !712

; <label>:28:                                     ; preds = %44, %24
  %29 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !713
  %30 = icmp ne %struct._GSList* %29, null, !dbg !716
  br i1 %30, label %31, label %48, !dbg !717

; <label>:31:                                     ; preds = %28
  call void @llvm.dbg.declare(metadata %struct._TEXT_BUFFER_VIEW_REC** %4, metadata !718, metadata !185), !dbg !720
  %32 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !721
  %33 = getelementptr inbounds %struct._GSList, %struct._GSList* %32, i32 0, i32 0, !dbg !722
  %34 = load i8*, i8** %33, align 8, !dbg !722
  %35 = bitcast i8* %34 to %struct._TEXT_BUFFER_VIEW_REC*, !dbg !721
  store %struct._TEXT_BUFFER_VIEW_REC* %35, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !720
  %36 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !723
  %37 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %36, i32 0, i32 1, !dbg !724
  %38 = load %struct._GSList*, %struct._GSList** %37, align 8, !dbg !724
  %39 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !725
  %40 = bitcast %struct._TEXT_BUFFER_VIEW_REC* %39 to i8*, !dbg !725
  %41 = call %struct._GSList* @g_slist_remove(%struct._GSList* %38, i8* %40), !dbg !726
  %42 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !727
  %43 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %42, i32 0, i32 1, !dbg !728
  store %struct._GSList* %41, %struct._GSList** %43, align 8, !dbg !729
  br label %44, !dbg !730

; <label>:44:                                     ; preds = %31
  %45 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !731
  %46 = getelementptr inbounds %struct._GSList, %struct._GSList* %45, i32 0, i32 1, !dbg !733
  %47 = load %struct._GSList*, %struct._GSList** %46, align 8, !dbg !733
  store %struct._GSList* %47, %struct._GSList** %3, align 8, !dbg !734
  br label %28, !dbg !735, !llvm.loop !736

; <label>:48:                                     ; preds = %28
  %49 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !738
  %50 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %49, i32 0, i32 1, !dbg !739
  %51 = load %struct._GSList*, %struct._GSList** %50, align 8, !dbg !739
  call void @g_slist_free(%struct._GSList* %51), !dbg !740
  br label %52

; <label>:52:                                     ; preds = %48, %20
  %53 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !741
  %54 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %53, i32 0, i32 13, !dbg !742
  %55 = load %struct._GHashTable*, %struct._GHashTable** %54, align 8, !dbg !742
  call void @g_hash_table_foreach(%struct._GHashTable* %55, void (i8*, i8*, i8*)* bitcast (void (i8*)* @g_free to void (i8*, i8*, i8*)*), i8* null), !dbg !743
  %56 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !744
  %57 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %56, i32 0, i32 13, !dbg !745
  %58 = load %struct._GHashTable*, %struct._GHashTable** %57, align 8, !dbg !745
  call void @g_hash_table_destroy(%struct._GHashTable* %58), !dbg !746
  %59 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !747
  %60 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %59, i32 0, i32 7, !dbg !748
  %61 = load %struct.TEXT_BUFFER_CACHE_REC*, %struct.TEXT_BUFFER_CACHE_REC** %60, align 8, !dbg !748
  call void @textbuffer_cache_unref(%struct.TEXT_BUFFER_CACHE_REC* %61), !dbg !749
  %62 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !750
  %63 = bitcast %struct._TEXT_BUFFER_VIEW_REC* %62 to i8*, !dbg !750
  call void @g_free(i8* %63), !dbg !751
  br label %64, !dbg !752

; <label>:64:                                     ; preds = %52, %9
  ret void, !dbg !753
}

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #2

declare void @textbuffer_destroy(%struct.TEXT_BUFFER_REC*) #2

declare void @g_slist_free(%struct._GSList*) #2

declare void @g_hash_table_foreach(%struct._GHashTable*, void (i8*, i8*, i8*)*, i8*) #2

declare void @g_free(i8*) #2

declare void @g_hash_table_destroy(%struct._GHashTable*) #2

; Function Attrs: nounwind uwtable
define void @textbuffer_view_set_default_indent(%struct._TEXT_BUFFER_VIEW_REC*, i32, i32, i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)*) #0 !dbg !755 {
  %5 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)*, align 8
  store %struct._TEXT_BUFFER_VIEW_REC* %0, %struct._TEXT_BUFFER_VIEW_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_BUFFER_VIEW_REC** %5, metadata !758, metadata !185), !dbg !759
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !760, metadata !185), !dbg !761
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !762, metadata !185), !dbg !763
  store i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)* %3, i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)** %8, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)** %8, metadata !764, metadata !185), !dbg !765
  %9 = load i32, i32* %6, align 4, !dbg !766
  %10 = icmp ne i32 %9, -1, !dbg !768
  br i1 %10, label %11, label %15, !dbg !769

; <label>:11:                                     ; preds = %4
  %12 = load i32, i32* %6, align 4, !dbg !770
  %13 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %5, align 8, !dbg !771
  %14 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %13, i32 0, i32 5, !dbg !772
  store i32 %12, i32* %14, align 8, !dbg !773
  br label %15, !dbg !771

; <label>:15:                                     ; preds = %11, %4
  %16 = load i32, i32* %7, align 4, !dbg !774
  %17 = icmp ne i32 %16, -1, !dbg !776
  br i1 %17, label %18, label %28, !dbg !777

; <label>:18:                                     ; preds = %15
  %19 = load i32, i32* %7, align 4, !dbg !778
  %20 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %5, align 8, !dbg !779
  %21 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %20, i32 0, i32 16, !dbg !780
  %22 = trunc i32 %19 to i8, !dbg !781
  %23 = load i8, i8* %21, align 8, !dbg !781
  %24 = and i8 %22, 1, !dbg !781
  %25 = and i8 %23, -2, !dbg !781
  %26 = or i8 %25, %24, !dbg !781
  store i8 %26, i8* %21, align 8, !dbg !781
  %27 = zext i8 %24 to i32, !dbg !781
  br label %28, !dbg !779

; <label>:28:                                     ; preds = %18, %15
  %29 = load i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)*, i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)** %8, align 8, !dbg !782
  %30 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %5, align 8, !dbg !783
  %31 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %30, i32 0, i32 6, !dbg !784
  store i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)* %29, i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)** %31, align 8, !dbg !785
  ret void, !dbg !786
}

; Function Attrs: nounwind uwtable
define void @textbuffer_view_set_break_wide(%struct._TEXT_BUFFER_VIEW_REC*, i32) #0 !dbg !787 {
  %3 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  %4 = alloca i32, align 4
  store %struct._TEXT_BUFFER_VIEW_REC* %0, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_BUFFER_VIEW_REC** %3, metadata !790, metadata !185), !dbg !791
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !792, metadata !185), !dbg !793
  %5 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !794
  %6 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %5, i32 0, i32 16, !dbg !796
  %7 = load i8, i8* %6, align 8, !dbg !796
  %8 = lshr i8 %7, 3, !dbg !796
  %9 = and i8 %8, 1, !dbg !796
  %10 = zext i8 %9 to i32, !dbg !796
  %11 = load i32, i32* %4, align 4, !dbg !797
  %12 = icmp ne i32 %10, %11, !dbg !798
  br i1 %12, label %13, label %25, !dbg !799

; <label>:13:                                     ; preds = %2
  %14 = load i32, i32* %4, align 4, !dbg !800
  %15 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !802
  %16 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %15, i32 0, i32 16, !dbg !803
  %17 = trunc i32 %14 to i8, !dbg !804
  %18 = load i8, i8* %16, align 8, !dbg !804
  %19 = and i8 %17, 1, !dbg !804
  %20 = shl i8 %19, 3, !dbg !804
  %21 = and i8 %18, -9, !dbg !804
  %22 = or i8 %21, %20, !dbg !804
  store i8 %22, i8* %16, align 8, !dbg !804
  %23 = zext i8 %19 to i32, !dbg !804
  %24 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !805
  call void @textbuffer_view_reset_cache(%struct._TEXT_BUFFER_VIEW_REC* %24), !dbg !806
  br label %25, !dbg !807

; <label>:25:                                     ; preds = %13, %2
  ret void, !dbg !808
}

; Function Attrs: nounwind uwtable
define void @textbuffer_views_unregister_indent_func(i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)*) #0 !dbg !809 {
  %2 = alloca i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)*, align 8
  store i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)* %0, i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)** %2, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)** %2, metadata !812, metadata !185), !dbg !813
  %3 = load %struct._GSList*, %struct._GSList** @views, align 8, !dbg !814
  %4 = load i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)*, i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)** %2, align 8, !dbg !815
  %5 = bitcast i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)* %4 to i8*, !dbg !816
  call void @g_slist_foreach(%struct._GSList* %3, void (i8*, i8*)* bitcast (void (%struct._TEXT_BUFFER_VIEW_REC*, i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)*)* @view_unregister_indent_func to void (i8*, i8*)*), i8* %5), !dbg !817
  ret void, !dbg !818
}

; Function Attrs: nounwind uwtable
define internal void @view_unregister_indent_func(%struct._TEXT_BUFFER_VIEW_REC*, i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)*) #0 !dbg !819 {
  %3 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  %4 = alloca i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)*, align 8
  store %struct._TEXT_BUFFER_VIEW_REC* %0, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_BUFFER_VIEW_REC** %3, metadata !822, metadata !185), !dbg !823
  store i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)* %1, i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)** %4, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)** %4, metadata !824, metadata !185), !dbg !825
  %5 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !826
  %6 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %5, i32 0, i32 6, !dbg !828
  %7 = load i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)*, i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)** %6, align 8, !dbg !828
  %8 = load i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)*, i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)** %4, align 8, !dbg !829
  %9 = icmp eq i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)* %7, %8, !dbg !830
  br i1 %9, label %10, label %13, !dbg !831

; <label>:10:                                     ; preds = %2
  %11 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !832
  %12 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %11, i32 0, i32 6, !dbg !833
  store i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)* null, i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)** %12, align 8, !dbg !834
  br label %13, !dbg !832

; <label>:13:                                     ; preds = %10, %2
  %14 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !835
  call void @textbuffer_view_reset_cache(%struct._TEXT_BUFFER_VIEW_REC* %14), !dbg !836
  %15 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !837
  %16 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %15, i32 0, i32 1, !dbg !838
  %17 = load %struct._GSList*, %struct._GSList** %16, align 8, !dbg !838
  %18 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !839
  %19 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %18, i32 0, i32 3, !dbg !840
  %20 = load i32, i32* %19, align 8, !dbg !840
  %21 = call %struct.TEXT_BUFFER_CACHE_REC* @textbuffer_cache_get(%struct._GSList* %17, i32 %20), !dbg !841
  %22 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !842
  %23 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %22, i32 0, i32 7, !dbg !843
  store %struct.TEXT_BUFFER_CACHE_REC* %21, %struct.TEXT_BUFFER_CACHE_REC** %23, align 8, !dbg !844
  ret void, !dbg !845
}

; Function Attrs: nounwind uwtable
define void @textbuffer_view_set_scroll(%struct._TEXT_BUFFER_VIEW_REC*, i32) #0 !dbg !846 {
  %3 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  %4 = alloca i32, align 4
  store %struct._TEXT_BUFFER_VIEW_REC* %0, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_BUFFER_VIEW_REC** %3, metadata !849, metadata !185), !dbg !850
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !851, metadata !185), !dbg !852
  %5 = load i32, i32* %4, align 4, !dbg !853
  %6 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !854
  %7 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %6, i32 0, i32 16, !dbg !855
  %8 = trunc i32 %5 to i8, !dbg !856
  %9 = load i8, i8* %7, align 8, !dbg !856
  %10 = and i8 %8, 1, !dbg !856
  %11 = shl i8 %10, 1, !dbg !856
  %12 = and i8 %9, -3, !dbg !856
  %13 = or i8 %12, %11, !dbg !856
  store i8 %13, i8* %7, align 8, !dbg !856
  %14 = zext i8 %10 to i32, !dbg !856
  ret void, !dbg !857
}

; Function Attrs: nounwind uwtable
define void @textbuffer_view_set_utf8(%struct._TEXT_BUFFER_VIEW_REC*, i32) #0 !dbg !858 {
  %3 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  %4 = alloca i32, align 4
  store %struct._TEXT_BUFFER_VIEW_REC* %0, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_BUFFER_VIEW_REC** %3, metadata !859, metadata !185), !dbg !860
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !861, metadata !185), !dbg !862
  %5 = load i32, i32* %4, align 4, !dbg !863
  %6 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !864
  %7 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %6, i32 0, i32 16, !dbg !865
  %8 = trunc i32 %5 to i8, !dbg !866
  %9 = load i8, i8* %7, align 8, !dbg !866
  %10 = and i8 %8, 1, !dbg !866
  %11 = shl i8 %10, 2, !dbg !866
  %12 = and i8 %9, -5, !dbg !866
  %13 = or i8 %12, %11, !dbg !866
  store i8 %13, i8* %7, align 8, !dbg !866
  %14 = zext i8 %10 to i32, !dbg !866
  ret void, !dbg !867
}

; Function Attrs: nounwind uwtable
define void @textbuffer_view_resize(%struct._TEXT_BUFFER_VIEW_REC*, i32, i32) #0 !dbg !868 {
  %4 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct._TEXT_BUFFER_VIEW_REC* %0, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_BUFFER_VIEW_REC** %4, metadata !871, metadata !185), !dbg !872
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !873, metadata !185), !dbg !874
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !875, metadata !185), !dbg !876
  call void @llvm.dbg.declare(metadata i32* %7, metadata !877, metadata !185), !dbg !878
  br label %8, !dbg !879, !llvm.loop !880

; <label>:8:                                      ; preds = %3
  %9 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !881
  %10 = icmp ne %struct._TEXT_BUFFER_VIEW_REC* %9, null, !dbg !885
  br i1 %10, label %11, label %12, !dbg !881

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !886

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.textbuffer_view_resize, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0)), !dbg !889
  br label %275, !dbg !892

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !893

; <label>:14:                                     ; preds = %13
  br label %15, !dbg !895, !llvm.loop !896

; <label>:15:                                     ; preds = %14
  %16 = load i32, i32* %5, align 4, !dbg !897
  %17 = icmp sgt i32 %16, 0, !dbg !901
  br i1 %17, label %18, label %19, !dbg !897

; <label>:18:                                     ; preds = %15
  br label %20, !dbg !902

; <label>:19:                                     ; preds = %15
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.textbuffer_view_resize, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0)), !dbg !905
  br label %275, !dbg !908

; <label>:20:                                     ; preds = %18
  br label %21, !dbg !909

; <label>:21:                                     ; preds = %20
  %22 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !911
  %23 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %22, i32 0, i32 3, !dbg !913
  %24 = load i32, i32* %23, align 8, !dbg !913
  %25 = load i32, i32* %5, align 4, !dbg !914
  %26 = icmp ne i32 %24, %25, !dbg !915
  br i1 %26, label %27, label %38, !dbg !916

; <label>:27:                                     ; preds = %21
  %28 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !917
  %29 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %28, i32 0, i32 7, !dbg !919
  %30 = load %struct.TEXT_BUFFER_CACHE_REC*, %struct.TEXT_BUFFER_CACHE_REC** %29, align 8, !dbg !919
  call void @textbuffer_cache_unref(%struct.TEXT_BUFFER_CACHE_REC* %30), !dbg !920
  %31 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !921
  %32 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %31, i32 0, i32 1, !dbg !922
  %33 = load %struct._GSList*, %struct._GSList** %32, align 8, !dbg !922
  %34 = load i32, i32* %5, align 4, !dbg !923
  %35 = call %struct.TEXT_BUFFER_CACHE_REC* @textbuffer_cache_get(%struct._GSList* %33, i32 %34), !dbg !924
  %36 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !925
  %37 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %36, i32 0, i32 7, !dbg !926
  store %struct.TEXT_BUFFER_CACHE_REC* %35, %struct.TEXT_BUFFER_CACHE_REC** %37, align 8, !dbg !927
  br label %38, !dbg !928

; <label>:38:                                     ; preds = %27, %21
  %39 = load i32, i32* %5, align 4, !dbg !929
  %40 = icmp sgt i32 %39, 10, !dbg !930
  br i1 %40, label %41, label %43, !dbg !929

; <label>:41:                                     ; preds = %38
  %42 = load i32, i32* %5, align 4, !dbg !931
  br label %44, !dbg !933

; <label>:43:                                     ; preds = %38
  br label %44, !dbg !934

; <label>:44:                                     ; preds = %43, %41
  %45 = phi i32 [ %42, %41 ], [ 10, %43 ], !dbg !936
  %46 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !938
  %47 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %46, i32 0, i32 3, !dbg !939
  store i32 %45, i32* %47, align 8, !dbg !940
  %48 = load i32, i32* %6, align 4, !dbg !941
  %49 = icmp sgt i32 %48, 1, !dbg !942
  br i1 %49, label %50, label %52, !dbg !941

; <label>:50:                                     ; preds = %44
  %51 = load i32, i32* %6, align 4, !dbg !943
  br label %53, !dbg !944

; <label>:52:                                     ; preds = %44
  br label %53, !dbg !945

; <label>:53:                                     ; preds = %52, %50
  %54 = phi i32 [ %51, %50 ], [ 1, %52 ], !dbg !946
  %55 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !947
  %56 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %55, i32 0, i32 4, !dbg !948
  store i32 %54, i32* %56, align 4, !dbg !949
  %57 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !950
  %58 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %57, i32 0, i32 0, !dbg !952
  %59 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %58, align 8, !dbg !952
  %60 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %59, i32 0, i32 1, !dbg !953
  %61 = load %struct._LINE_REC*, %struct._LINE_REC** %60, align 8, !dbg !953
  %62 = icmp eq %struct._LINE_REC* %61, null, !dbg !954
  br i1 %62, label %63, label %67, !dbg !955

; <label>:63:                                     ; preds = %53
  %64 = load i32, i32* %6, align 4, !dbg !956
  %65 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !958
  %66 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %65, i32 0, i32 15, !dbg !959
  store i32 %64, i32* %66, align 4, !dbg !960
  br label %275, !dbg !961

; <label>:67:                                     ; preds = %53
  %68 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !962
  call void @textbuffer_view_init_bottom(%struct._TEXT_BUFFER_VIEW_REC* %68), !dbg !963
  %69 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !964
  %70 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %69, i32 0, i32 11, !dbg !966
  %71 = load %struct._LINE_REC*, %struct._LINE_REC** %70, align 8, !dbg !966
  %72 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %71, i32 0, i32 1, !dbg !967
  %73 = load %struct._LINE_REC*, %struct._LINE_REC** %72, align 8, !dbg !967
  %74 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !968
  %75 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %74, i32 0, i32 9, !dbg !969
  %76 = load %struct._LINE_REC*, %struct._LINE_REC** %75, align 8, !dbg !969
  %77 = call i32 @textbuffer_line_exists_after(%struct._LINE_REC* %73, %struct._LINE_REC* %76), !dbg !970
  %78 = icmp ne i32 %77, 0, !dbg !970
  br i1 %78, label %79, label %90, !dbg !971

; <label>:79:                                     ; preds = %67
  %80 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !972
  %81 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %80, i32 0, i32 11, !dbg !974
  %82 = load %struct._LINE_REC*, %struct._LINE_REC** %81, align 8, !dbg !974
  %83 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !975
  %84 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %83, i32 0, i32 9, !dbg !976
  store %struct._LINE_REC* %82, %struct._LINE_REC** %84, align 8, !dbg !977
  %85 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !978
  %86 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %85, i32 0, i32 12, !dbg !979
  %87 = load i32, i32* %86, align 8, !dbg !979
  %88 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !980
  %89 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %88, i32 0, i32 10, !dbg !981
  store i32 %87, i32* %89, align 8, !dbg !982
  br label %155, !dbg !983

; <label>:90:                                     ; preds = %67
  %91 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !984
  %92 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %91, i32 0, i32 9, !dbg !987
  %93 = load %struct._LINE_REC*, %struct._LINE_REC** %92, align 8, !dbg !987
  %94 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !988
  %95 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %94, i32 0, i32 11, !dbg !989
  %96 = load %struct._LINE_REC*, %struct._LINE_REC** %95, align 8, !dbg !989
  %97 = icmp eq %struct._LINE_REC* %93, %96, !dbg !990
  br i1 %97, label %98, label %112, !dbg !991

; <label>:98:                                     ; preds = %90
  %99 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !992
  %100 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %99, i32 0, i32 10, !dbg !993
  %101 = load i32, i32* %100, align 8, !dbg !993
  %102 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !994
  %103 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %102, i32 0, i32 12, !dbg !995
  %104 = load i32, i32* %103, align 8, !dbg !995
  %105 = icmp sgt i32 %101, %104, !dbg !996
  br i1 %105, label %106, label %112, !dbg !997

; <label>:106:                                    ; preds = %98
  %107 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !999
  %108 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %107, i32 0, i32 12, !dbg !1001
  %109 = load i32, i32* %108, align 8, !dbg !1001
  %110 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !1002
  %111 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %110, i32 0, i32 10, !dbg !1003
  store i32 %109, i32* %111, align 8, !dbg !1004
  br label %154, !dbg !1005

; <label>:112:                                    ; preds = %98, %90
  %113 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !1006
  %114 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %113, i32 0, i32 9, !dbg !1009
  %115 = load %struct._LINE_REC*, %struct._LINE_REC** %114, align 8, !dbg !1009
  %116 = icmp ne %struct._LINE_REC* %115, null, !dbg !1010
  br i1 %116, label %117, label %150, !dbg !1006

; <label>:117:                                    ; preds = %112
  %118 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !1011
  %119 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %118, i32 0, i32 9, !dbg !1013
  %120 = load %struct._LINE_REC*, %struct._LINE_REC** %119, align 8, !dbg !1013
  %121 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %120, i32 0, i32 3, !dbg !1014
  %122 = getelementptr inbounds %struct.LINE_INFO_REC, %struct.LINE_INFO_REC* %121, i32 0, i32 0, !dbg !1015
  %123 = load i32, i32* %122, align 8, !dbg !1015
  %124 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !1016
  %125 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %124, i32 0, i32 14, !dbg !1017
  %126 = load i32, i32* %125, align 8, !dbg !1017
  %127 = and i32 %123, %126, !dbg !1018
  %128 = icmp ne i32 %127, 0, !dbg !1019
  br i1 %128, label %129, label %130, !dbg !1020

; <label>:129:                                    ; preds = %117
  br label %138, !dbg !1021

; <label>:130:                                    ; preds = %117
  %131 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !1023
  %132 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !1025
  %133 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %132, i32 0, i32 9, !dbg !1026
  %134 = load %struct._LINE_REC*, %struct._LINE_REC** %133, align 8, !dbg !1026
  %135 = call %struct.LINE_CACHE_REC* @textbuffer_view_get_line_cache(%struct._TEXT_BUFFER_VIEW_REC* %131, %struct._LINE_REC* %134), !dbg !1027
  %136 = getelementptr inbounds %struct.LINE_CACHE_REC, %struct.LINE_CACHE_REC* %135, i32 0, i32 1, !dbg !1028
  %137 = load i32, i32* %136, align 8, !dbg !1028
  br label %138, !dbg !1029

; <label>:138:                                    ; preds = %130, %129
  %139 = phi i32 [ 0, %129 ], [ %137, %130 ], !dbg !1030
  store i32 %139, i32* %7, align 4, !dbg !1032
  %140 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !1033
  %141 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %140, i32 0, i32 10, !dbg !1035
  %142 = load i32, i32* %141, align 8, !dbg !1035
  %143 = load i32, i32* %7, align 4, !dbg !1036
  %144 = icmp sgt i32 %142, %143, !dbg !1037
  br i1 %144, label %145, label %149, !dbg !1038

; <label>:145:                                    ; preds = %138
  %146 = load i32, i32* %7, align 4, !dbg !1039
  %147 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !1040
  %148 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %147, i32 0, i32 10, !dbg !1041
  store i32 %146, i32* %148, align 8, !dbg !1042
  br label %149, !dbg !1040

; <label>:149:                                    ; preds = %145, %138
  br label %153, !dbg !1043

; <label>:150:                                    ; preds = %112
  %151 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !1044
  %152 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %151, i32 0, i32 10, !dbg !1046
  store i32 0, i32* %152, align 8, !dbg !1047
  br label %153

; <label>:153:                                    ; preds = %150, %149
  br label %154

; <label>:154:                                    ; preds = %153, %106
  br label %155

; <label>:155:                                    ; preds = %154, %79
  %156 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !1048
  call void @textbuffer_view_init_ypos(%struct._TEXT_BUFFER_VIEW_REC* %156), !dbg !1049
  %157 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !1050
  %158 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %157, i32 0, i32 16, !dbg !1052
  %159 = load i8, i8* %158, align 8, !dbg !1052
  %160 = lshr i8 %159, 4, !dbg !1052
  %161 = and i8 %160, 1, !dbg !1052
  %162 = zext i8 %161 to i32, !dbg !1052
  %163 = icmp ne i32 %162, 0, !dbg !1050
  br i1 %163, label %164, label %205, !dbg !1053

; <label>:164:                                    ; preds = %155
  %165 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !1054
  %166 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %165, i32 0, i32 8, !dbg !1056
  %167 = load i32, i32* %166, align 8, !dbg !1056
  %168 = icmp sge i32 %167, -1, !dbg !1057
  br i1 %168, label %169, label %177, !dbg !1058

; <label>:169:                                    ; preds = %164
  %170 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !1059
  %171 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %170, i32 0, i32 8, !dbg !1061
  %172 = load i32, i32* %171, align 8, !dbg !1061
  %173 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !1062
  %174 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %173, i32 0, i32 4, !dbg !1063
  %175 = load i32, i32* %174, align 4, !dbg !1063
  %176 = icmp slt i32 %172, %175, !dbg !1064
  br i1 %176, label %205, label %177, !dbg !1065

; <label>:177:                                    ; preds = %169, %164
  %178 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !1066
  %179 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %178, i32 0, i32 11, !dbg !1068
  %180 = load %struct._LINE_REC*, %struct._LINE_REC** %179, align 8, !dbg !1068
  %181 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !1069
  %182 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %181, i32 0, i32 9, !dbg !1070
  store %struct._LINE_REC* %180, %struct._LINE_REC** %182, align 8, !dbg !1071
  %183 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !1072
  %184 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %183, i32 0, i32 12, !dbg !1073
  %185 = load i32, i32* %184, align 8, !dbg !1073
  %186 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !1074
  %187 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %186, i32 0, i32 10, !dbg !1075
  store i32 %185, i32* %187, align 8, !dbg !1076
  %188 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !1077
  %189 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %188, i32 0, i32 15, !dbg !1079
  %190 = load i32, i32* %189, align 4, !dbg !1079
  %191 = icmp sgt i32 %190, 0, !dbg !1080
  br i1 %191, label %192, label %203, !dbg !1081

; <label>:192:                                    ; preds = %177
  %193 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !1082
  %194 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !1084
  %195 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %194, i32 0, i32 9, !dbg !1085
  %196 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !1086
  %197 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %196, i32 0, i32 10, !dbg !1087
  %198 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !1088
  %199 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %198, i32 0, i32 15, !dbg !1089
  %200 = load i32, i32* %199, align 4, !dbg !1089
  %201 = sub nsw i32 0, %200, !dbg !1090
  %202 = call i32 @view_scroll(%struct._TEXT_BUFFER_VIEW_REC* %193, %struct._LINE_REC** %195, i32* %197, i32 %201, i32 0), !dbg !1091
  br label %203, !dbg !1092

; <label>:203:                                    ; preds = %192, %177
  %204 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !1093
  call void @textbuffer_view_init_ypos(%struct._TEXT_BUFFER_VIEW_REC* %204), !dbg !1094
  br label %205, !dbg !1095

; <label>:205:                                    ; preds = %203, %169, %155
  %206 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !1096
  %207 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %206, i32 0, i32 8, !dbg !1097
  %208 = load i32, i32* %207, align 8, !dbg !1097
  %209 = icmp sge i32 %208, -1, !dbg !1098
  br i1 %209, label %210, label %218, !dbg !1099

; <label>:210:                                    ; preds = %205
  %211 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !1100
  %212 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %211, i32 0, i32 8, !dbg !1101
  %213 = load i32, i32* %212, align 8, !dbg !1101
  %214 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !1102
  %215 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %214, i32 0, i32 4, !dbg !1103
  %216 = load i32, i32* %215, align 4, !dbg !1103
  %217 = icmp slt i32 %213, %216, !dbg !1104
  br label %218

; <label>:218:                                    ; preds = %210, %205
  %219 = phi i1 [ false, %205 ], [ %217, %210 ]
  %220 = zext i1 %219 to i32, !dbg !1105
  %221 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !1106
  %222 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %221, i32 0, i32 16, !dbg !1107
  %223 = trunc i32 %220 to i8, !dbg !1108
  %224 = load i8, i8* %222, align 8, !dbg !1108
  %225 = and i8 %223, 1, !dbg !1108
  %226 = shl i8 %225, 4, !dbg !1108
  %227 = and i8 %224, -17, !dbg !1108
  %228 = or i8 %227, %226, !dbg !1108
  store i8 %228, i8* %222, align 8, !dbg !1108
  %229 = zext i8 %225 to i32, !dbg !1108
  %230 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !1109
  %231 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %230, i32 0, i32 16, !dbg !1111
  %232 = load i8, i8* %231, align 8, !dbg !1111
  %233 = lshr i8 %232, 4, !dbg !1111
  %234 = and i8 %233, 1, !dbg !1111
  %235 = zext i8 %234 to i32, !dbg !1111
  %236 = icmp ne i32 %235, 0, !dbg !1109
  br i1 %236, label %237, label %269, !dbg !1112

; <label>:237:                                    ; preds = %218
  %238 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !1113
  %239 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !1115
  %240 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %239, i32 0, i32 9, !dbg !1116
  %241 = load %struct._LINE_REC*, %struct._LINE_REC** %240, align 8, !dbg !1116
  %242 = call i32 @view_get_linecount_all(%struct._TEXT_BUFFER_VIEW_REC* %238, %struct._LINE_REC* %241), !dbg !1117
  %243 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !1118
  %244 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %243, i32 0, i32 10, !dbg !1119
  %245 = load i32, i32* %244, align 8, !dbg !1119
  %246 = sub nsw i32 %242, %245, !dbg !1120
  store i32 %246, i32* %7, align 4, !dbg !1121
  %247 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !1122
  %248 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %247, i32 0, i32 15, !dbg !1124
  %249 = load i32, i32* %248, align 4, !dbg !1124
  %250 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !1125
  %251 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %250, i32 0, i32 4, !dbg !1126
  %252 = load i32, i32* %251, align 4, !dbg !1126
  %253 = load i32, i32* %7, align 4, !dbg !1127
  %254 = sub nsw i32 %252, %253, !dbg !1128
  %255 = icmp slt i32 %249, %254, !dbg !1129
  br i1 %255, label %256, label %264, !dbg !1130

; <label>:256:                                    ; preds = %237
  %257 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !1131
  %258 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %257, i32 0, i32 4, !dbg !1132
  %259 = load i32, i32* %258, align 4, !dbg !1132
  %260 = load i32, i32* %7, align 4, !dbg !1133
  %261 = sub nsw i32 %259, %260, !dbg !1134
  %262 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !1135
  %263 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %262, i32 0, i32 15, !dbg !1136
  store i32 %261, i32* %263, align 4, !dbg !1137
  br label %264, !dbg !1135

; <label>:264:                                    ; preds = %256, %237
  %265 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !1138
  %266 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %265, i32 0, i32 16, !dbg !1139
  %267 = load i8, i8* %266, align 8, !dbg !1140
  %268 = and i8 %267, -33, !dbg !1140
  store i8 %268, i8* %266, align 8, !dbg !1140
  br label %269, !dbg !1141

; <label>:269:                                    ; preds = %264, %218
  %270 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !1142
  %271 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %270, i32 0, i32 16, !dbg !1143
  %272 = load i8, i8* %271, align 8, !dbg !1144
  %273 = and i8 %272, -65, !dbg !1144
  %274 = or i8 %273, 64, !dbg !1144
  store i8 %274, i8* %271, align 8, !dbg !1144
  br label %275, !dbg !1145

; <label>:275:                                    ; preds = %269, %63, %19, %12
  ret void, !dbg !1146
}

declare i32 @textbuffer_line_exists_after(%struct._LINE_REC*, %struct._LINE_REC*) #2

; Function Attrs: nounwind uwtable
define %struct.LINE_CACHE_REC* @textbuffer_view_get_line_cache(%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*) #0 !dbg !1147 {
  %3 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  %4 = alloca %struct._LINE_REC*, align 8
  %5 = alloca %struct.LINE_CACHE_REC*, align 8
  store %struct._TEXT_BUFFER_VIEW_REC* %0, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_BUFFER_VIEW_REC** %3, metadata !1160, metadata !185), !dbg !1161
  store %struct._LINE_REC* %1, %struct._LINE_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._LINE_REC** %4, metadata !1162, metadata !185), !dbg !1163
  call void @llvm.dbg.declare(metadata %struct.LINE_CACHE_REC** %5, metadata !1164, metadata !185), !dbg !1165
  br label %6, !dbg !1166, !llvm.loop !1167

; <label>:6:                                      ; preds = %2
  %7 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !1168
  %8 = icmp ne %struct._TEXT_BUFFER_VIEW_REC* %7, null, !dbg !1172
  br i1 %8, label %9, label %10, !dbg !1168

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !1173

; <label>:10:                                     ; preds = %6
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i32 1013, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.textbuffer_view_get_line_cache, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0)) #9, !dbg !1175
  unreachable, !dbg !1175

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !1177

; <label>:12:                                     ; preds = %11
  br label %13, !dbg !1179, !llvm.loop !1180

; <label>:13:                                     ; preds = %12
  %14 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !1181
  %15 = icmp ne %struct._LINE_REC* %14, null, !dbg !1185
  br i1 %15, label %16, label %17, !dbg !1181

; <label>:16:                                     ; preds = %13
  br label %18, !dbg !1186

; <label>:17:                                     ; preds = %13
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i32 1014, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.textbuffer_view_get_line_cache, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0)) #9, !dbg !1188
  unreachable, !dbg !1188

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !1190

; <label>:19:                                     ; preds = %18
  %20 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !1192
  %21 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %20, i32 0, i32 7, !dbg !1193
  %22 = load %struct.TEXT_BUFFER_CACHE_REC*, %struct.TEXT_BUFFER_CACHE_REC** %21, align 8, !dbg !1193
  %23 = getelementptr inbounds %struct.TEXT_BUFFER_CACHE_REC, %struct.TEXT_BUFFER_CACHE_REC* %22, i32 0, i32 2, !dbg !1194
  %24 = load %struct._GHashTable*, %struct._GHashTable** %23, align 8, !dbg !1194
  %25 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !1195
  %26 = bitcast %struct._LINE_REC* %25 to i8*, !dbg !1195
  %27 = call i8* @g_hash_table_lookup(%struct._GHashTable* %24, i8* %26), !dbg !1196
  %28 = bitcast i8* %27 to %struct.LINE_CACHE_REC*, !dbg !1196
  store %struct.LINE_CACHE_REC* %28, %struct.LINE_CACHE_REC** %5, align 8, !dbg !1197
  %29 = load %struct.LINE_CACHE_REC*, %struct.LINE_CACHE_REC** %5, align 8, !dbg !1198
  %30 = icmp eq %struct.LINE_CACHE_REC* %29, null, !dbg !1200
  br i1 %30, label %31, label %35, !dbg !1201

; <label>:31:                                     ; preds = %19
  %32 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !1202
  %33 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !1203
  %34 = call %struct.LINE_CACHE_REC* @view_update_line_cache(%struct._TEXT_BUFFER_VIEW_REC* %32, %struct._LINE_REC* %33), !dbg !1204
  store %struct.LINE_CACHE_REC* %34, %struct.LINE_CACHE_REC** %5, align 8, !dbg !1205
  br label %39, !dbg !1206

; <label>:35:                                     ; preds = %19
  %36 = call i64 @time(i64* null) #10, !dbg !1207
  %37 = load %struct.LINE_CACHE_REC*, %struct.LINE_CACHE_REC** %5, align 8, !dbg !1208
  %38 = getelementptr inbounds %struct.LINE_CACHE_REC, %struct.LINE_CACHE_REC* %37, i32 0, i32 0, !dbg !1209
  store i64 %36, i64* %38, align 8, !dbg !1210
  br label %39

; <label>:39:                                     ; preds = %35, %31
  %40 = load %struct.LINE_CACHE_REC*, %struct.LINE_CACHE_REC** %5, align 8, !dbg !1211
  ret %struct.LINE_CACHE_REC* %40, !dbg !1212
}

; Function Attrs: nounwind uwtable
define internal i32 @view_scroll(%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC**, i32*, i32, i32) #0 !dbg !1213 {
  %6 = alloca i32, align 4
  %7 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  %8 = alloca %struct._LINE_REC**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct._TEXT_BUFFER_VIEW_REC* %0, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_BUFFER_VIEW_REC** %7, metadata !1218, metadata !185), !dbg !1219
  store %struct._LINE_REC** %1, %struct._LINE_REC*** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._LINE_REC*** %8, metadata !1220, metadata !185), !dbg !1221
  store i32* %2, i32** %9, align 8
  call void @llvm.dbg.declare(metadata i32** %9, metadata !1222, metadata !185), !dbg !1223
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1224, metadata !185), !dbg !1225
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1226, metadata !185), !dbg !1227
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1228, metadata !185), !dbg !1229
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1230, metadata !185), !dbg !1231
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1232, metadata !185), !dbg !1233
  %15 = load %struct._LINE_REC**, %struct._LINE_REC*** %8, align 8, !dbg !1234
  %16 = load %struct._LINE_REC*, %struct._LINE_REC** %15, align 8, !dbg !1236
  %17 = icmp eq %struct._LINE_REC* %16, null, !dbg !1237
  br i1 %17, label %18, label %19, !dbg !1238

; <label>:18:                                     ; preds = %5
  store i32 0, i32* %6, align 4, !dbg !1239
  br label %246, !dbg !1239

; <label>:19:                                     ; preds = %5
  %20 = load %struct._LINE_REC**, %struct._LINE_REC*** %8, align 8, !dbg !1240
  %21 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !1241
  %22 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %21, i32 0, i32 9, !dbg !1242
  %23 = icmp eq %struct._LINE_REC** %20, %22, !dbg !1243
  %24 = zext i1 %23 to i32, !dbg !1243
  store i32 %24, i32* %14, align 4, !dbg !1244
  %25 = load i32*, i32** %9, align 8, !dbg !1245
  %26 = load i32, i32* %25, align 4, !dbg !1246
  %27 = sub nsw i32 0, %26, !dbg !1247
  store i32 %27, i32* %13, align 4, !dbg !1248
  %28 = load i32*, i32** %9, align 8, !dbg !1249
  %29 = load i32, i32* %28, align 4, !dbg !1250
  %30 = load i32, i32* %10, align 4, !dbg !1251
  %31 = add nsw i32 %30, %29, !dbg !1251
  store i32 %31, i32* %10, align 4, !dbg !1251
  %32 = load i32*, i32** %9, align 8, !dbg !1252
  store i32 0, i32* %32, align 4, !dbg !1253
  br label %33, !dbg !1254

; <label>:33:                                     ; preds = %106, %19
  %34 = load i32, i32* %10, align 4, !dbg !1255
  %35 = icmp sgt i32 %34, 0, !dbg !1257
  br i1 %35, label %36, label %112, !dbg !1258

; <label>:36:                                     ; preds = %33
  %37 = load %struct._LINE_REC**, %struct._LINE_REC*** %8, align 8, !dbg !1259
  %38 = load %struct._LINE_REC*, %struct._LINE_REC** %37, align 8, !dbg !1261
  %39 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %38, i32 0, i32 3, !dbg !1262
  %40 = getelementptr inbounds %struct.LINE_INFO_REC, %struct.LINE_INFO_REC* %39, i32 0, i32 0, !dbg !1263
  %41 = load i32, i32* %40, align 8, !dbg !1263
  %42 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !1264
  %43 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %42, i32 0, i32 14, !dbg !1265
  %44 = load i32, i32* %43, align 8, !dbg !1265
  %45 = and i32 %41, %44, !dbg !1266
  %46 = icmp ne i32 %45, 0, !dbg !1267
  br i1 %46, label %47, label %48, !dbg !1268

; <label>:47:                                     ; preds = %36
  br label %55, !dbg !1269

; <label>:48:                                     ; preds = %36
  %49 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !1271
  %50 = load %struct._LINE_REC**, %struct._LINE_REC*** %8, align 8, !dbg !1273
  %51 = load %struct._LINE_REC*, %struct._LINE_REC** %50, align 8, !dbg !1274
  %52 = call %struct.LINE_CACHE_REC* @textbuffer_view_get_line_cache(%struct._TEXT_BUFFER_VIEW_REC* %49, %struct._LINE_REC* %51), !dbg !1275
  %53 = getelementptr inbounds %struct.LINE_CACHE_REC, %struct.LINE_CACHE_REC* %52, i32 0, i32 1, !dbg !1276
  %54 = load i32, i32* %53, align 8, !dbg !1276
  br label %55, !dbg !1277

; <label>:55:                                     ; preds = %48, %47
  %56 = phi i32 [ 0, %47 ], [ %54, %48 ], !dbg !1278
  store i32 %56, i32* %12, align 4, !dbg !1280
  %57 = load i32, i32* %14, align 4, !dbg !1281
  %58 = icmp ne i32 %57, 0, !dbg !1281
  br i1 %58, label %59, label %82, !dbg !1283

; <label>:59:                                     ; preds = %55
  %60 = load %struct._LINE_REC**, %struct._LINE_REC*** %8, align 8, !dbg !1284
  %61 = load %struct._LINE_REC*, %struct._LINE_REC** %60, align 8, !dbg !1286
  %62 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !1287
  %63 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %62, i32 0, i32 11, !dbg !1288
  %64 = load %struct._LINE_REC*, %struct._LINE_REC** %63, align 8, !dbg !1288
  %65 = icmp eq %struct._LINE_REC* %61, %64, !dbg !1289
  br i1 %65, label %66, label %82, !dbg !1290

; <label>:66:                                     ; preds = %59
  %67 = load i32, i32* %10, align 4, !dbg !1291
  %68 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !1292
  %69 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %68, i32 0, i32 12, !dbg !1293
  %70 = load i32, i32* %69, align 8, !dbg !1293
  %71 = icmp sge i32 %67, %70, !dbg !1294
  br i1 %71, label %72, label %82, !dbg !1295

; <label>:72:                                     ; preds = %66
  %73 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !1296
  %74 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %73, i32 0, i32 12, !dbg !1298
  %75 = load i32, i32* %74, align 8, !dbg !1298
  %76 = load i32*, i32** %9, align 8, !dbg !1299
  store i32 %75, i32* %76, align 4, !dbg !1300
  %77 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !1301
  %78 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %77, i32 0, i32 12, !dbg !1302
  %79 = load i32, i32* %78, align 8, !dbg !1302
  %80 = load i32, i32* %13, align 4, !dbg !1303
  %81 = add nsw i32 %80, %79, !dbg !1303
  store i32 %81, i32* %13, align 4, !dbg !1303
  store i32 0, i32* %10, align 4, !dbg !1304
  br label %112, !dbg !1305

; <label>:82:                                     ; preds = %66, %59, %55
  %83 = load i32, i32* %12, align 4, !dbg !1306
  %84 = load i32, i32* %13, align 4, !dbg !1307
  %85 = add nsw i32 %84, %83, !dbg !1307
  store i32 %85, i32* %13, align 4, !dbg !1307
  %86 = load i32, i32* %12, align 4, !dbg !1308
  %87 = load i32, i32* %10, align 4, !dbg !1309
  %88 = sub nsw i32 %87, %86, !dbg !1309
  store i32 %88, i32* %10, align 4, !dbg !1309
  %89 = load i32, i32* %10, align 4, !dbg !1310
  %90 = icmp slt i32 %89, 0, !dbg !1312
  br i1 %90, label %91, label %99, !dbg !1313

; <label>:91:                                     ; preds = %82
  %92 = load i32, i32* %10, align 4, !dbg !1314
  %93 = load i32, i32* %13, align 4, !dbg !1316
  %94 = add nsw i32 %93, %92, !dbg !1316
  store i32 %94, i32* %13, align 4, !dbg !1316
  %95 = load i32, i32* %12, align 4, !dbg !1317
  %96 = load i32, i32* %10, align 4, !dbg !1318
  %97 = add nsw i32 %95, %96, !dbg !1319
  %98 = load i32*, i32** %9, align 8, !dbg !1320
  store i32 %97, i32* %98, align 4, !dbg !1321
  store i32 0, i32* %10, align 4, !dbg !1322
  br label %112, !dbg !1323

; <label>:99:                                     ; preds = %82
  %100 = load %struct._LINE_REC**, %struct._LINE_REC*** %8, align 8, !dbg !1324
  %101 = load %struct._LINE_REC*, %struct._LINE_REC** %100, align 8, !dbg !1326
  %102 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %101, i32 0, i32 1, !dbg !1327
  %103 = load %struct._LINE_REC*, %struct._LINE_REC** %102, align 8, !dbg !1327
  %104 = icmp eq %struct._LINE_REC* %103, null, !dbg !1328
  br i1 %104, label %105, label %106, !dbg !1329

; <label>:105:                                    ; preds = %99
  br label %112, !dbg !1330

; <label>:106:                                    ; preds = %99
  %107 = load %struct._LINE_REC**, %struct._LINE_REC*** %8, align 8, !dbg !1331
  %108 = load %struct._LINE_REC*, %struct._LINE_REC** %107, align 8, !dbg !1332
  %109 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %108, i32 0, i32 1, !dbg !1333
  %110 = load %struct._LINE_REC*, %struct._LINE_REC** %109, align 8, !dbg !1333
  %111 = load %struct._LINE_REC**, %struct._LINE_REC*** %8, align 8, !dbg !1334
  store %struct._LINE_REC* %110, %struct._LINE_REC** %111, align 8, !dbg !1335
  br label %33, !dbg !1336, !llvm.loop !1338

; <label>:112:                                    ; preds = %105, %91, %72, %33
  br label %113, !dbg !1339

; <label>:113:                                    ; preds = %164, %112
  %114 = load i32, i32* %10, align 4, !dbg !1340
  %115 = icmp slt i32 %114, 0, !dbg !1341
  br i1 %115, label %116, label %122, !dbg !1342

; <label>:116:                                    ; preds = %113
  %117 = load %struct._LINE_REC**, %struct._LINE_REC*** %8, align 8, !dbg !1343
  %118 = load %struct._LINE_REC*, %struct._LINE_REC** %117, align 8, !dbg !1344
  %119 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %118, i32 0, i32 0, !dbg !1345
  %120 = load %struct._LINE_REC*, %struct._LINE_REC** %119, align 8, !dbg !1345
  %121 = icmp ne %struct._LINE_REC* %120, null, !dbg !1346
  br label %122

; <label>:122:                                    ; preds = %116, %113
  %123 = phi i1 [ false, %113 ], [ %121, %116 ]
  br i1 %123, label %124, label %165, !dbg !1347

; <label>:124:                                    ; preds = %122
  %125 = load %struct._LINE_REC**, %struct._LINE_REC*** %8, align 8, !dbg !1349
  %126 = load %struct._LINE_REC*, %struct._LINE_REC** %125, align 8, !dbg !1351
  %127 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %126, i32 0, i32 0, !dbg !1352
  %128 = load %struct._LINE_REC*, %struct._LINE_REC** %127, align 8, !dbg !1352
  %129 = load %struct._LINE_REC**, %struct._LINE_REC*** %8, align 8, !dbg !1353
  store %struct._LINE_REC* %128, %struct._LINE_REC** %129, align 8, !dbg !1354
  %130 = load %struct._LINE_REC**, %struct._LINE_REC*** %8, align 8, !dbg !1355
  %131 = load %struct._LINE_REC*, %struct._LINE_REC** %130, align 8, !dbg !1356
  %132 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %131, i32 0, i32 3, !dbg !1357
  %133 = getelementptr inbounds %struct.LINE_INFO_REC, %struct.LINE_INFO_REC* %132, i32 0, i32 0, !dbg !1358
  %134 = load i32, i32* %133, align 8, !dbg !1358
  %135 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !1359
  %136 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %135, i32 0, i32 14, !dbg !1360
  %137 = load i32, i32* %136, align 8, !dbg !1360
  %138 = and i32 %134, %137, !dbg !1361
  %139 = icmp ne i32 %138, 0, !dbg !1362
  br i1 %139, label %140, label %141, !dbg !1363

; <label>:140:                                    ; preds = %124
  br label %148, !dbg !1364

; <label>:141:                                    ; preds = %124
  %142 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !1366
  %143 = load %struct._LINE_REC**, %struct._LINE_REC*** %8, align 8, !dbg !1368
  %144 = load %struct._LINE_REC*, %struct._LINE_REC** %143, align 8, !dbg !1369
  %145 = call %struct.LINE_CACHE_REC* @textbuffer_view_get_line_cache(%struct._TEXT_BUFFER_VIEW_REC* %142, %struct._LINE_REC* %144), !dbg !1370
  %146 = getelementptr inbounds %struct.LINE_CACHE_REC, %struct.LINE_CACHE_REC* %145, i32 0, i32 1, !dbg !1371
  %147 = load i32, i32* %146, align 8, !dbg !1371
  br label %148, !dbg !1372

; <label>:148:                                    ; preds = %141, %140
  %149 = phi i32 [ 0, %140 ], [ %147, %141 ], !dbg !1373
  store i32 %149, i32* %12, align 4, !dbg !1375
  %150 = load i32, i32* %12, align 4, !dbg !1376
  %151 = load i32, i32* %13, align 4, !dbg !1377
  %152 = sub nsw i32 %151, %150, !dbg !1377
  store i32 %152, i32* %13, align 4, !dbg !1377
  %153 = load i32, i32* %12, align 4, !dbg !1378
  %154 = load i32, i32* %10, align 4, !dbg !1379
  %155 = add nsw i32 %154, %153, !dbg !1379
  store i32 %155, i32* %10, align 4, !dbg !1379
  %156 = load i32, i32* %10, align 4, !dbg !1380
  %157 = icmp sgt i32 %156, 0, !dbg !1382
  br i1 %157, label %158, label %164, !dbg !1383

; <label>:158:                                    ; preds = %148
  %159 = load i32, i32* %10, align 4, !dbg !1384
  %160 = load i32, i32* %13, align 4, !dbg !1386
  %161 = add nsw i32 %160, %159, !dbg !1386
  store i32 %161, i32* %13, align 4, !dbg !1386
  %162 = load i32, i32* %10, align 4, !dbg !1387
  %163 = load i32*, i32** %9, align 8, !dbg !1388
  store i32 %162, i32* %163, align 4, !dbg !1389
  br label %165, !dbg !1390

; <label>:164:                                    ; preds = %148
  br label %113, !dbg !1391, !llvm.loop !1393

; <label>:165:                                    ; preds = %158, %122
  %166 = load i32, i32* %14, align 4, !dbg !1394
  %167 = icmp ne i32 %166, 0, !dbg !1394
  br i1 %167, label %168, label %236, !dbg !1396

; <label>:168:                                    ; preds = %165
  %169 = load i32, i32* %13, align 4, !dbg !1397
  %170 = icmp ne i32 %169, 0, !dbg !1399
  br i1 %170, label %171, label %236, !dbg !1400

; <label>:171:                                    ; preds = %168
  %172 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !1401
  %173 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %172, i32 0, i32 2, !dbg !1403
  %174 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %173, align 8, !dbg !1403
  %175 = icmp ne %struct._TERM_WINDOW* %174, null, !dbg !1404
  br i1 %175, label %176, label %236, !dbg !1405

; <label>:176:                                    ; preds = %171
  %177 = load i32, i32* %13, align 4, !dbg !1406
  %178 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !1409
  %179 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %178, i32 0, i32 4, !dbg !1410
  %180 = load i32, i32* %179, align 4, !dbg !1410
  %181 = sub nsw i32 0, %180, !dbg !1411
  %182 = icmp sle i32 %177, %181, !dbg !1412
  br i1 %182, label %189, label %183, !dbg !1413

; <label>:183:                                    ; preds = %176
  %184 = load i32, i32* %13, align 4, !dbg !1414
  %185 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !1416
  %186 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %185, i32 0, i32 4, !dbg !1417
  %187 = load i32, i32* %186, align 4, !dbg !1417
  %188 = icmp sge i32 %184, %187, !dbg !1418
  br i1 %188, label %189, label %191, !dbg !1419

; <label>:189:                                    ; preds = %183, %176
  %190 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !1420
  call void @textbuffer_view_redraw(%struct._TEXT_BUFFER_VIEW_REC* %190), !dbg !1422
  br label %235, !dbg !1423

; <label>:191:                                    ; preds = %183
  %192 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !1424
  %193 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %192, i32 0, i32 3, !dbg !1427
  %194 = load i32, i32* %193, align 8, !dbg !1427
  %195 = load i32, i32* @term_width, align 4, !dbg !1428
  %196 = icmp eq i32 %194, %195, !dbg !1429
  br i1 %196, label %197, label %228, !dbg !1430

; <label>:197:                                    ; preds = %191
  %198 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !1431
  %199 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %198, i32 0, i32 2, !dbg !1433
  %200 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %199, align 8, !dbg !1433
  call void @term_set_color(%struct._TERM_WINDOW* %200, i32 196608), !dbg !1434
  %201 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !1435
  %202 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %201, i32 0, i32 2, !dbg !1436
  %203 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %202, align 8, !dbg !1436
  %204 = load i32, i32* %13, align 4, !dbg !1437
  call void @term_window_scroll(%struct._TERM_WINDOW* %203, i32 %204), !dbg !1438
  %205 = load i32, i32* %11, align 4, !dbg !1439
  %206 = icmp ne i32 %205, 0, !dbg !1439
  br i1 %206, label %207, label %224, !dbg !1441

; <label>:207:                                    ; preds = %197
  %208 = load i32, i32* %13, align 4, !dbg !1442
  %209 = icmp slt i32 %208, 0, !dbg !1445
  br i1 %209, label %210, label %220, !dbg !1446

; <label>:210:                                    ; preds = %207
  %211 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !1447
  %212 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !1448
  %213 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %212, i32 0, i32 9, !dbg !1449
  %214 = load %struct._LINE_REC*, %struct._LINE_REC** %213, align 8, !dbg !1449
  %215 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !1450
  %216 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %215, i32 0, i32 10, !dbg !1451
  %217 = load i32, i32* %216, align 8, !dbg !1451
  %218 = load i32, i32* %13, align 4, !dbg !1452
  %219 = sub nsw i32 0, %218, !dbg !1453
  call void @view_draw(%struct._TEXT_BUFFER_VIEW_REC* %211, %struct._LINE_REC* %214, i32 %217, i32 0, i32 %219, i32 1), !dbg !1454
  br label %223, !dbg !1454

; <label>:220:                                    ; preds = %207
  %221 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !1455
  %222 = load i32, i32* %13, align 4, !dbg !1456
  call void @view_draw_bottom(%struct._TEXT_BUFFER_VIEW_REC* %221, i32 %222), !dbg !1457
  br label %223

; <label>:223:                                    ; preds = %220, %210
  br label %224, !dbg !1458

; <label>:224:                                    ; preds = %223, %197
  %225 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !1459
  %226 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %225, i32 0, i32 2, !dbg !1460
  %227 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %226, align 8, !dbg !1460
  call void @term_refresh(%struct._TERM_WINDOW* %227), !dbg !1461
  br label %234, !dbg !1462

; <label>:228:                                    ; preds = %191
  %229 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !1463
  %230 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %229, i32 0, i32 16, !dbg !1465
  %231 = load i8, i8* %230, align 8, !dbg !1466
  %232 = and i8 %231, -65, !dbg !1466
  %233 = or i8 %232, 64, !dbg !1466
  store i8 %233, i8* %230, align 8, !dbg !1466
  call void @irssi_set_dirty(), !dbg !1467
  br label %234

; <label>:234:                                    ; preds = %228, %224
  br label %235

; <label>:235:                                    ; preds = %234, %189
  br label %236, !dbg !1468

; <label>:236:                                    ; preds = %235, %171, %168, %165
  %237 = load i32, i32* %13, align 4, !dbg !1469
  %238 = icmp sge i32 %237, 0, !dbg !1470
  br i1 %238, label %239, label %241, !dbg !1469

; <label>:239:                                    ; preds = %236
  %240 = load i32, i32* %13, align 4, !dbg !1471
  br label %244, !dbg !1472

; <label>:241:                                    ; preds = %236
  %242 = load i32, i32* %13, align 4, !dbg !1473
  %243 = sub nsw i32 0, %242, !dbg !1474
  br label %244, !dbg !1475

; <label>:244:                                    ; preds = %241, %239
  %245 = phi i32 [ %240, %239 ], [ %243, %241 ], !dbg !1476
  store i32 %245, i32* %6, align 4, !dbg !1477
  br label %246, !dbg !1477

; <label>:246:                                    ; preds = %244, %18
  %247 = load i32, i32* %6, align 4, !dbg !1478
  ret i32 %247, !dbg !1478
}

; Function Attrs: nounwind uwtable
define internal i32 @view_get_linecount_all(%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*) #0 !dbg !1479 {
  %3 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  %4 = alloca %struct._LINE_REC*, align 8
  %5 = alloca i32, align 4
  store %struct._TEXT_BUFFER_VIEW_REC* %0, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_BUFFER_VIEW_REC** %3, metadata !1482, metadata !185), !dbg !1483
  store %struct._LINE_REC* %1, %struct._LINE_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._LINE_REC** %4, metadata !1484, metadata !185), !dbg !1485
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1486, metadata !185), !dbg !1487
  store i32 0, i32* %5, align 4, !dbg !1488
  br label %6, !dbg !1489

; <label>:6:                                      ; preds = %26, %2
  %7 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !1490
  %8 = icmp ne %struct._LINE_REC* %7, null, !dbg !1492
  br i1 %8, label %9, label %33, !dbg !1493

; <label>:9:                                      ; preds = %6
  %10 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !1494
  %11 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %10, i32 0, i32 3, !dbg !1496
  %12 = getelementptr inbounds %struct.LINE_INFO_REC, %struct.LINE_INFO_REC* %11, i32 0, i32 0, !dbg !1497
  %13 = load i32, i32* %12, align 8, !dbg !1497
  %14 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !1498
  %15 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %14, i32 0, i32 14, !dbg !1499
  %16 = load i32, i32* %15, align 8, !dbg !1499
  %17 = and i32 %13, %16, !dbg !1500
  %18 = icmp ne i32 %17, 0, !dbg !1501
  br i1 %18, label %19, label %20, !dbg !1502

; <label>:19:                                     ; preds = %9
  br label %26, !dbg !1503

; <label>:20:                                     ; preds = %9
  %21 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !1505
  %22 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !1507
  %23 = call %struct.LINE_CACHE_REC* @textbuffer_view_get_line_cache(%struct._TEXT_BUFFER_VIEW_REC* %21, %struct._LINE_REC* %22), !dbg !1508
  %24 = getelementptr inbounds %struct.LINE_CACHE_REC, %struct.LINE_CACHE_REC* %23, i32 0, i32 1, !dbg !1509
  %25 = load i32, i32* %24, align 8, !dbg !1509
  br label %26, !dbg !1510

; <label>:26:                                     ; preds = %20, %19
  %27 = phi i32 [ 0, %19 ], [ %25, %20 ], !dbg !1511
  %28 = load i32, i32* %5, align 4, !dbg !1513
  %29 = add nsw i32 %28, %27, !dbg !1513
  store i32 %29, i32* %5, align 4, !dbg !1513
  %30 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !1514
  %31 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %30, i32 0, i32 1, !dbg !1515
  %32 = load %struct._LINE_REC*, %struct._LINE_REC** %31, align 8, !dbg !1515
  store %struct._LINE_REC* %32, %struct._LINE_REC** %4, align 8, !dbg !1516
  br label %6, !dbg !1517, !llvm.loop !1519

; <label>:33:                                     ; preds = %6
  %34 = load i32, i32* %5, align 4, !dbg !1520
  ret i32 %34, !dbg !1521
}

; Function Attrs: nounwind uwtable
define void @textbuffer_view_clear(%struct._TEXT_BUFFER_VIEW_REC*) #0 !dbg !1522 {
  %2 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  store %struct._TEXT_BUFFER_VIEW_REC* %0, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_BUFFER_VIEW_REC** %2, metadata !1523, metadata !185), !dbg !1524
  br label %3, !dbg !1525, !llvm.loop !1526

; <label>:3:                                      ; preds = %1
  %4 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !1527
  %5 = icmp ne %struct._TEXT_BUFFER_VIEW_REC* %4, null, !dbg !1531
  br i1 %5, label %6, label %7, !dbg !1527

; <label>:6:                                      ; preds = %3
  br label %8, !dbg !1532

; <label>:7:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.textbuffer_view_clear, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0)), !dbg !1535
  br label %75, !dbg !1538

; <label>:8:                                      ; preds = %6
  br label %9, !dbg !1539

; <label>:9:                                      ; preds = %8
  %10 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !1541
  %11 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %10, i32 0, i32 8, !dbg !1542
  store i32 -1, i32* %11, align 8, !dbg !1543
  %12 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !1544
  %13 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %12, i32 0, i32 0, !dbg !1545
  %14 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %13, align 8, !dbg !1545
  %15 = call %struct._LINE_REC* @textbuffer_line_last(%struct.TEXT_BUFFER_REC* %14), !dbg !1546
  %16 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !1547
  %17 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %16, i32 0, i32 9, !dbg !1548
  store %struct._LINE_REC* %15, %struct._LINE_REC** %17, align 8, !dbg !1549
  %18 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !1550
  %19 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %18, i32 0, i32 11, !dbg !1551
  store %struct._LINE_REC* %15, %struct._LINE_REC** %19, align 8, !dbg !1552
  %20 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !1553
  %21 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %20, i32 0, i32 0, !dbg !1554
  %22 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %21, align 8, !dbg !1554
  %23 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %22, i32 0, i32 3, !dbg !1555
  %24 = load %struct._LINE_REC*, %struct._LINE_REC** %23, align 8, !dbg !1555
  %25 = icmp eq %struct._LINE_REC* %24, null, !dbg !1556
  br i1 %25, label %26, label %27, !dbg !1553

; <label>:26:                                     ; preds = %9
  br label %54, !dbg !1557

; <label>:27:                                     ; preds = %9
  %28 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !1559
  %29 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %28, i32 0, i32 0, !dbg !1560
  %30 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %29, align 8, !dbg !1560
  %31 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %30, i32 0, i32 3, !dbg !1561
  %32 = load %struct._LINE_REC*, %struct._LINE_REC** %31, align 8, !dbg !1561
  %33 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %32, i32 0, i32 3, !dbg !1562
  %34 = getelementptr inbounds %struct.LINE_INFO_REC, %struct.LINE_INFO_REC* %33, i32 0, i32 0, !dbg !1563
  %35 = load i32, i32* %34, align 8, !dbg !1563
  %36 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !1564
  %37 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %36, i32 0, i32 14, !dbg !1565
  %38 = load i32, i32* %37, align 8, !dbg !1565
  %39 = and i32 %35, %38, !dbg !1566
  %40 = icmp ne i32 %39, 0, !dbg !1567
  br i1 %40, label %41, label %42, !dbg !1568

; <label>:41:                                     ; preds = %27
  br label %52, !dbg !1569

; <label>:42:                                     ; preds = %27
  %43 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !1570
  %44 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !1572
  %45 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %44, i32 0, i32 0, !dbg !1573
  %46 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %45, align 8, !dbg !1573
  %47 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %46, i32 0, i32 3, !dbg !1574
  %48 = load %struct._LINE_REC*, %struct._LINE_REC** %47, align 8, !dbg !1574
  %49 = call %struct.LINE_CACHE_REC* @textbuffer_view_get_line_cache(%struct._TEXT_BUFFER_VIEW_REC* %43, %struct._LINE_REC* %48), !dbg !1575
  %50 = getelementptr inbounds %struct.LINE_CACHE_REC, %struct.LINE_CACHE_REC* %49, i32 0, i32 1, !dbg !1576
  %51 = load i32, i32* %50, align 8, !dbg !1576
  br label %52, !dbg !1577

; <label>:52:                                     ; preds = %42, %41
  %53 = phi i32 [ 0, %41 ], [ %51, %42 ], !dbg !1578
  br label %54, !dbg !1580

; <label>:54:                                     ; preds = %52, %26
  %55 = phi i32 [ 0, %26 ], [ %53, %52 ], !dbg !1581
  %56 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !1582
  %57 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %56, i32 0, i32 10, !dbg !1583
  store i32 %55, i32* %57, align 8, !dbg !1584
  %58 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !1585
  %59 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %58, i32 0, i32 12, !dbg !1586
  store i32 %55, i32* %59, align 8, !dbg !1587
  %60 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !1588
  %61 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %60, i32 0, i32 4, !dbg !1589
  %62 = load i32, i32* %61, align 4, !dbg !1589
  %63 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !1590
  %64 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %63, i32 0, i32 15, !dbg !1591
  store i32 %62, i32* %64, align 4, !dbg !1592
  %65 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !1593
  %66 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %65, i32 0, i32 16, !dbg !1594
  %67 = load i8, i8* %66, align 8, !dbg !1595
  %68 = and i8 %67, -17, !dbg !1595
  %69 = or i8 %68, 16, !dbg !1595
  store i8 %69, i8* %66, align 8, !dbg !1595
  %70 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !1596
  %71 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %70, i32 0, i32 16, !dbg !1597
  %72 = load i8, i8* %71, align 8, !dbg !1598
  %73 = and i8 %72, -33, !dbg !1598
  store i8 %73, i8* %71, align 8, !dbg !1598
  %74 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !1599
  call void @textbuffer_view_redraw(%struct._TEXT_BUFFER_VIEW_REC* %74), !dbg !1600
  br label %75, !dbg !1601

; <label>:75:                                     ; preds = %54, %7
  ret void, !dbg !1602
}

declare %struct._LINE_REC* @textbuffer_line_last(%struct.TEXT_BUFFER_REC*) #2

; Function Attrs: nounwind uwtable
define void @textbuffer_view_redraw(%struct._TEXT_BUFFER_VIEW_REC*) #0 !dbg !1603 {
  %2 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  store %struct._TEXT_BUFFER_VIEW_REC* %0, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_BUFFER_VIEW_REC** %2, metadata !1604, metadata !185), !dbg !1605
  br label %3, !dbg !1606, !llvm.loop !1607

; <label>:3:                                      ; preds = %1
  %4 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !1608
  %5 = icmp ne %struct._TEXT_BUFFER_VIEW_REC* %4, null, !dbg !1612
  br i1 %5, label %6, label %7, !dbg !1608

; <label>:6:                                      ; preds = %3
  br label %8, !dbg !1613

; <label>:7:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.textbuffer_view_redraw, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0)), !dbg !1616
  br label %32, !dbg !1619

; <label>:8:                                      ; preds = %6
  br label %9, !dbg !1620

; <label>:9:                                      ; preds = %8
  %10 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !1622
  %11 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %10, i32 0, i32 2, !dbg !1624
  %12 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %11, align 8, !dbg !1624
  %13 = icmp ne %struct._TERM_WINDOW* %12, null, !dbg !1625
  br i1 %13, label %14, label %32, !dbg !1626

; <label>:14:                                     ; preds = %9
  %15 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !1627
  %16 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %15, i32 0, i32 16, !dbg !1629
  %17 = load i8, i8* %16, align 8, !dbg !1630
  %18 = and i8 %17, -65, !dbg !1630
  store i8 %18, i8* %16, align 8, !dbg !1630
  %19 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !1631
  %20 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !1632
  %21 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %20, i32 0, i32 9, !dbg !1633
  %22 = load %struct._LINE_REC*, %struct._LINE_REC** %21, align 8, !dbg !1633
  %23 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !1634
  %24 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %23, i32 0, i32 10, !dbg !1635
  %25 = load i32, i32* %24, align 8, !dbg !1635
  %26 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !1636
  %27 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %26, i32 0, i32 4, !dbg !1637
  %28 = load i32, i32* %27, align 4, !dbg !1637
  call void @view_draw(%struct._TEXT_BUFFER_VIEW_REC* %19, %struct._LINE_REC* %22, i32 %25, i32 0, i32 %28, i32 1), !dbg !1638
  %29 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !1639
  %30 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %29, i32 0, i32 2, !dbg !1640
  %31 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %30, align 8, !dbg !1640
  call void @term_refresh(%struct._TERM_WINDOW* %31), !dbg !1641
  br label %32, !dbg !1642

; <label>:32:                                     ; preds = %7, %14, %9
  ret void, !dbg !1643
}

; Function Attrs: nounwind uwtable
define void @textbuffer_view_scroll(%struct._TEXT_BUFFER_VIEW_REC*, i32) #0 !dbg !1644 {
  %3 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct._TEXT_BUFFER_VIEW_REC* %0, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_BUFFER_VIEW_REC** %3, metadata !1645, metadata !185), !dbg !1646
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1647, metadata !185), !dbg !1648
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1649, metadata !185), !dbg !1650
  br label %6, !dbg !1651, !llvm.loop !1652

; <label>:6:                                      ; preds = %2
  %7 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !1653
  %8 = icmp ne %struct._TEXT_BUFFER_VIEW_REC* %7, null, !dbg !1657
  br i1 %8, label %9, label %10, !dbg !1653

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !1658

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.textbuffer_view_scroll, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0)), !dbg !1661
  br label %78, !dbg !1664

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !1665

; <label>:12:                                     ; preds = %11
  %13 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !1667
  %14 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !1668
  %15 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %14, i32 0, i32 9, !dbg !1669
  %16 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !1670
  %17 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %16, i32 0, i32 10, !dbg !1671
  %18 = load i32, i32* %4, align 4, !dbg !1672
  %19 = call i32 @view_scroll(%struct._TEXT_BUFFER_VIEW_REC* %13, %struct._LINE_REC** %15, i32* %17, i32 %18, i32 1), !dbg !1673
  store i32 %19, i32* %5, align 4, !dbg !1674
  %20 = load i32, i32* %4, align 4, !dbg !1675
  %21 = icmp slt i32 %20, 0, !dbg !1676
  br i1 %21, label %22, label %24, !dbg !1675

; <label>:22:                                     ; preds = %12
  %23 = load i32, i32* %5, align 4, !dbg !1677
  br label %27, !dbg !1679

; <label>:24:                                     ; preds = %12
  %25 = load i32, i32* %5, align 4, !dbg !1680
  %26 = sub nsw i32 0, %25, !dbg !1682
  br label %27, !dbg !1683

; <label>:27:                                     ; preds = %24, %22
  %28 = phi i32 [ %23, %22 ], [ %26, %24 ], !dbg !1684
  %29 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !1686
  %30 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %29, i32 0, i32 8, !dbg !1687
  %31 = load i32, i32* %30, align 8, !dbg !1688
  %32 = add nsw i32 %31, %28, !dbg !1688
  store i32 %32, i32* %30, align 8, !dbg !1688
  %33 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !1689
  %34 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %33, i32 0, i32 8, !dbg !1690
  %35 = load i32, i32* %34, align 8, !dbg !1690
  %36 = icmp sge i32 %35, -1, !dbg !1691
  br i1 %36, label %37, label %45, !dbg !1692

; <label>:37:                                     ; preds = %27
  %38 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !1693
  %39 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %38, i32 0, i32 8, !dbg !1694
  %40 = load i32, i32* %39, align 8, !dbg !1694
  %41 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !1695
  %42 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %41, i32 0, i32 4, !dbg !1696
  %43 = load i32, i32* %42, align 4, !dbg !1696
  %44 = icmp slt i32 %40, %43, !dbg !1697
  br label %45

; <label>:45:                                     ; preds = %37, %27
  %46 = phi i1 [ false, %27 ], [ %44, %37 ]
  %47 = zext i1 %46 to i32, !dbg !1698
  %48 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !1699
  %49 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %48, i32 0, i32 16, !dbg !1700
  %50 = trunc i32 %47 to i8, !dbg !1701
  %51 = load i8, i8* %49, align 8, !dbg !1701
  %52 = and i8 %50, 1, !dbg !1701
  %53 = shl i8 %52, 4, !dbg !1701
  %54 = and i8 %51, -17, !dbg !1701
  %55 = or i8 %54, %53, !dbg !1701
  store i8 %55, i8* %49, align 8, !dbg !1701
  %56 = zext i8 %52 to i32, !dbg !1701
  %57 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !1702
  %58 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %57, i32 0, i32 16, !dbg !1704
  %59 = load i8, i8* %58, align 8, !dbg !1704
  %60 = lshr i8 %59, 4, !dbg !1704
  %61 = and i8 %60, 1, !dbg !1704
  %62 = zext i8 %61 to i32, !dbg !1704
  %63 = icmp ne i32 %62, 0, !dbg !1702
  br i1 %63, label %64, label %69, !dbg !1705

; <label>:64:                                     ; preds = %45
  %65 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !1706
  %66 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %65, i32 0, i32 16, !dbg !1708
  %67 = load i8, i8* %66, align 8, !dbg !1709
  %68 = and i8 %67, -33, !dbg !1709
  store i8 %68, i8* %66, align 8, !dbg !1709
  br label %69, !dbg !1706

; <label>:69:                                     ; preds = %64, %45
  %70 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !1710
  %71 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %70, i32 0, i32 2, !dbg !1712
  %72 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %71, align 8, !dbg !1712
  %73 = icmp ne %struct._TERM_WINDOW* %72, null, !dbg !1713
  br i1 %73, label %74, label %78, !dbg !1714

; <label>:74:                                     ; preds = %69
  %75 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !1715
  %76 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %75, i32 0, i32 2, !dbg !1716
  %77 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %76, align 8, !dbg !1716
  call void @term_refresh(%struct._TERM_WINDOW* %77), !dbg !1717
  br label %78, !dbg !1717

; <label>:78:                                     ; preds = %10, %74, %69
  ret void, !dbg !1718
}

declare void @term_refresh(%struct._TERM_WINDOW*) #2

; Function Attrs: nounwind uwtable
define void @textbuffer_view_scroll_line(%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*) #0 !dbg !1719 {
  %3 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  %4 = alloca %struct._LINE_REC*, align 8
  store %struct._TEXT_BUFFER_VIEW_REC* %0, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_BUFFER_VIEW_REC** %3, metadata !1722, metadata !185), !dbg !1723
  store %struct._LINE_REC* %1, %struct._LINE_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._LINE_REC** %4, metadata !1724, metadata !185), !dbg !1725
  br label %5, !dbg !1726, !llvm.loop !1727

; <label>:5:                                      ; preds = %2
  %6 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !1728
  %7 = icmp ne %struct._TEXT_BUFFER_VIEW_REC* %6, null, !dbg !1732
  br i1 %7, label %8, label %9, !dbg !1728

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !1733

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.textbuffer_view_scroll_line, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0)), !dbg !1736
  br label %77, !dbg !1739

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !1740

; <label>:11:                                     ; preds = %10
  %12 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !1742
  %13 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %12, i32 0, i32 11, !dbg !1744
  %14 = load %struct._LINE_REC*, %struct._LINE_REC** %13, align 8, !dbg !1744
  %15 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %14, i32 0, i32 1, !dbg !1745
  %16 = load %struct._LINE_REC*, %struct._LINE_REC** %15, align 8, !dbg !1745
  %17 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !1746
  %18 = call i32 @textbuffer_line_exists_after(%struct._LINE_REC* %16, %struct._LINE_REC* %17), !dbg !1747
  %19 = icmp ne i32 %18, 0, !dbg !1747
  br i1 %19, label %20, label %31, !dbg !1748

; <label>:20:                                     ; preds = %11
  %21 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !1749
  %22 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %21, i32 0, i32 11, !dbg !1751
  %23 = load %struct._LINE_REC*, %struct._LINE_REC** %22, align 8, !dbg !1751
  %24 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !1752
  %25 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %24, i32 0, i32 9, !dbg !1753
  store %struct._LINE_REC* %23, %struct._LINE_REC** %25, align 8, !dbg !1754
  %26 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !1755
  %27 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %26, i32 0, i32 12, !dbg !1756
  %28 = load i32, i32* %27, align 8, !dbg !1756
  %29 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !1757
  %30 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %29, i32 0, i32 10, !dbg !1758
  store i32 %28, i32* %30, align 8, !dbg !1759
  br label %37, !dbg !1760

; <label>:31:                                     ; preds = %11
  %32 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !1761
  %33 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !1763
  %34 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %33, i32 0, i32 9, !dbg !1764
  store %struct._LINE_REC* %32, %struct._LINE_REC** %34, align 8, !dbg !1765
  %35 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !1766
  %36 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %35, i32 0, i32 10, !dbg !1767
  store i32 0, i32* %36, align 8, !dbg !1768
  br label %37

; <label>:37:                                     ; preds = %31, %20
  %38 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !1769
  call void @textbuffer_view_init_ypos(%struct._TEXT_BUFFER_VIEW_REC* %38), !dbg !1770
  %39 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !1771
  %40 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %39, i32 0, i32 8, !dbg !1772
  %41 = load i32, i32* %40, align 8, !dbg !1772
  %42 = icmp sge i32 %41, -1, !dbg !1773
  br i1 %42, label %43, label %51, !dbg !1774

; <label>:43:                                     ; preds = %37
  %44 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !1775
  %45 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %44, i32 0, i32 8, !dbg !1777
  %46 = load i32, i32* %45, align 8, !dbg !1777
  %47 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !1778
  %48 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %47, i32 0, i32 4, !dbg !1779
  %49 = load i32, i32* %48, align 4, !dbg !1779
  %50 = icmp slt i32 %46, %49, !dbg !1780
  br label %51

; <label>:51:                                     ; preds = %43, %37
  %52 = phi i1 [ false, %37 ], [ %50, %43 ]
  %53 = zext i1 %52 to i32, !dbg !1781
  %54 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !1783
  %55 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %54, i32 0, i32 16, !dbg !1784
  %56 = trunc i32 %53 to i8, !dbg !1785
  %57 = load i8, i8* %55, align 8, !dbg !1785
  %58 = and i8 %56, 1, !dbg !1785
  %59 = shl i8 %58, 4, !dbg !1785
  %60 = and i8 %57, -17, !dbg !1785
  %61 = or i8 %60, %59, !dbg !1785
  store i8 %61, i8* %55, align 8, !dbg !1785
  %62 = zext i8 %58 to i32, !dbg !1785
  %63 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !1786
  %64 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %63, i32 0, i32 16, !dbg !1788
  %65 = load i8, i8* %64, align 8, !dbg !1788
  %66 = lshr i8 %65, 4, !dbg !1788
  %67 = and i8 %66, 1, !dbg !1788
  %68 = zext i8 %67 to i32, !dbg !1788
  %69 = icmp ne i32 %68, 0, !dbg !1786
  br i1 %69, label %70, label %75, !dbg !1789

; <label>:70:                                     ; preds = %51
  %71 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !1790
  %72 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %71, i32 0, i32 16, !dbg !1792
  %73 = load i8, i8* %72, align 8, !dbg !1793
  %74 = and i8 %73, -33, !dbg !1793
  store i8 %74, i8* %72, align 8, !dbg !1793
  br label %75, !dbg !1790

; <label>:75:                                     ; preds = %70, %51
  %76 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !1794
  call void @textbuffer_view_redraw(%struct._TEXT_BUFFER_VIEW_REC* %76), !dbg !1795
  br label %77, !dbg !1796

; <label>:77:                                     ; preds = %75, %9
  ret void, !dbg !1797
}

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #3

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct.LINE_CACHE_REC* @view_update_line_cache(%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*) #0 !dbg !1798 {
  %3 = alloca %struct.LINE_CACHE_REC*, align 8
  %4 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  %5 = alloca %struct._LINE_REC*, align 8
  %6 = alloca i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)*, align 8
  %7 = alloca %struct.LINE_CACHE_REC*, align 8
  %8 = alloca %struct.LINE_CACHE_SUB_REC*, align 8
  %9 = alloca %struct._GSList*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  store %struct._TEXT_BUFFER_VIEW_REC* %0, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_BUFFER_VIEW_REC** %4, metadata !1799, metadata !185), !dbg !1800
  store %struct._LINE_REC* %1, %struct._LINE_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._LINE_REC** %5, metadata !1801, metadata !185), !dbg !1802
  call void @llvm.dbg.declare(metadata i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)** %6, metadata !1803, metadata !185), !dbg !1804
  call void @llvm.dbg.declare(metadata %struct.LINE_CACHE_REC** %7, metadata !1805, metadata !185), !dbg !1806
  call void @llvm.dbg.declare(metadata %struct.LINE_CACHE_SUB_REC** %8, metadata !1807, metadata !185), !dbg !1808
  call void @llvm.dbg.declare(metadata %struct._GSList** %9, metadata !1809, metadata !185), !dbg !1810
  call void @llvm.dbg.declare(metadata i8* %10, metadata !1811, metadata !185), !dbg !1812
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1813, metadata !185), !dbg !1814
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1815, metadata !185), !dbg !1816
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1817, metadata !185), !dbg !1818
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1819, metadata !185), !dbg !1820
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1821, metadata !185), !dbg !1822
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1823, metadata !185), !dbg !1824
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1825, metadata !185), !dbg !1826
  call void @llvm.dbg.declare(metadata i32* %18, metadata !1827, metadata !185), !dbg !1828
  call void @llvm.dbg.declare(metadata i32* %19, metadata !1829, metadata !185), !dbg !1830
  call void @llvm.dbg.declare(metadata i32* %20, metadata !1831, metadata !185), !dbg !1832
  call void @llvm.dbg.declare(metadata i32* %21, metadata !1833, metadata !185), !dbg !1834
  call void @llvm.dbg.declare(metadata i32* %22, metadata !1835, metadata !185), !dbg !1836
  call void @llvm.dbg.declare(metadata i32* %23, metadata !1837, metadata !185), !dbg !1838
  call void @llvm.dbg.declare(metadata i32* %24, metadata !1839, metadata !185), !dbg !1840
  call void @llvm.dbg.declare(metadata i32* %25, metadata !1841, metadata !185), !dbg !1842
  br label %28, !dbg !1843, !llvm.loop !1844

; <label>:28:                                     ; preds = %2
  %29 = load %struct._LINE_REC*, %struct._LINE_REC** %5, align 8, !dbg !1845
  %30 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %29, i32 0, i32 2, !dbg !1849
  %31 = load i8*, i8** %30, align 8, !dbg !1849
  %32 = icmp ne i8* %31, null, !dbg !1850
  br i1 %32, label %33, label %34, !dbg !1845

; <label>:33:                                     ; preds = %28
  br label %35, !dbg !1851

; <label>:34:                                     ; preds = %28
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.view_update_line_cache, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0)), !dbg !1854
  store %struct.LINE_CACHE_REC* null, %struct.LINE_CACHE_REC** %3, align 8, !dbg !1857
  br label %376, !dbg !1857

; <label>:35:                                     ; preds = %33
  br label %36, !dbg !1858

; <label>:36:                                     ; preds = %35
  store i32 196608, i32* %19, align 4, !dbg !1860
  store i32 0, i32* %14, align 4, !dbg !1861
  %37 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !1862
  %38 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %37, i32 0, i32 5, !dbg !1863
  %39 = load i32, i32* %38, align 8, !dbg !1863
  store i32 %39, i32* %16, align 4, !dbg !1864
  store i32 0, i32* %18, align 4, !dbg !1865
  store i32 0, i32* %17, align 4, !dbg !1866
  store i8* null, i8** %13, align 8, !dbg !1867
  store %struct.LINE_CACHE_SUB_REC* null, %struct.LINE_CACHE_SUB_REC** %8, align 8, !dbg !1868
  store i32 -1, i32* %22, align 4, !dbg !1869
  store i32 -1, i32* %21, align 4, !dbg !1870
  store i32 -1, i32* %24, align 4, !dbg !1871
  store i32 -1, i32* %23, align 4, !dbg !1872
  %40 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !1873
  %41 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %40, i32 0, i32 6, !dbg !1874
  %42 = load i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)*, i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)** %41, align 8, !dbg !1874
  store i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)* %42, i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)** %6, align 8, !dbg !1875
  store i32 1, i32* %20, align 4, !dbg !1876
  store %struct._GSList* null, %struct._GSList** %9, align 8, !dbg !1877
  %43 = load %struct._LINE_REC*, %struct._LINE_REC** %5, align 8, !dbg !1878
  %44 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %43, i32 0, i32 2, !dbg !1880
  %45 = load i8*, i8** %44, align 8, !dbg !1880
  store i8* %45, i8** %11, align 8, !dbg !1881
  br label %46, !dbg !1882

; <label>:46:                                     ; preds = %318, %270, %117, %66, %36
  %47 = load i8*, i8** %11, align 8, !dbg !1883
  %48 = load i8, i8* %47, align 1, !dbg !1887
  %49 = zext i8 %48 to i32, !dbg !1887
  %50 = icmp eq i32 %49, 0, !dbg !1888
  br i1 %50, label %51, label %118, !dbg !1889

; <label>:51:                                     ; preds = %46
  %52 = load i8*, i8** %11, align 8, !dbg !1890
  %53 = getelementptr inbounds i8, i8* %52, i32 1, !dbg !1890
  store i8* %53, i8** %11, align 8, !dbg !1890
  %54 = load i8*, i8** %11, align 8, !dbg !1892
  %55 = load i8, i8* %54, align 1, !dbg !1893
  store i8 %55, i8* %10, align 1, !dbg !1894
  %56 = load i8*, i8** %11, align 8, !dbg !1895
  %57 = getelementptr inbounds i8, i8* %56, i32 1, !dbg !1895
  store i8* %57, i8** %11, align 8, !dbg !1895
  %58 = load i8, i8* %10, align 1, !dbg !1896
  %59 = zext i8 %58 to i32, !dbg !1896
  %60 = icmp eq i32 %59, 128, !dbg !1898
  br i1 %60, label %61, label %62, !dbg !1899

; <label>:61:                                     ; preds = %51
  br label %323, !dbg !1900

; <label>:62:                                     ; preds = %51
  %63 = load i8, i8* %10, align 1, !dbg !1901
  %64 = zext i8 %63 to i32, !dbg !1901
  %65 = icmp eq i32 %64, 129, !dbg !1903
  br i1 %65, label %66, label %70, !dbg !1904

; <label>:66:                                     ; preds = %62
  call void @llvm.dbg.declare(metadata i8** %26, metadata !1905, metadata !185), !dbg !1907
  %67 = bitcast i8** %26 to i8*, !dbg !1908
  %68 = load i8*, i8** %11, align 8, !dbg !1909
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %67, i8* %68, i64 8, i32 1, i1 false), !dbg !1908
  %69 = load i8*, i8** %26, align 8, !dbg !1910
  store i8* %69, i8** %11, align 8, !dbg !1911
  br label %46, !dbg !1912, !llvm.loop !1913

; <label>:70:                                     ; preds = %62
  %71 = load i8, i8* %10, align 1, !dbg !1915
  %72 = zext i8 %71 to i32, !dbg !1915
  %73 = icmp eq i32 %72, 133, !dbg !1917
  br i1 %73, label %74, label %84, !dbg !1918

; <label>:74:                                     ; preds = %70
  %75 = load i32, i32* %14, align 4, !dbg !1919
  %76 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !1922
  %77 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %76, i32 0, i32 3, !dbg !1923
  %78 = load i32, i32* %77, align 8, !dbg !1923
  %79 = sub nsw i32 %78, 5, !dbg !1924
  %80 = icmp slt i32 %75, %79, !dbg !1925
  br i1 %80, label %81, label %83, !dbg !1926

; <label>:81:                                     ; preds = %74
  %82 = load i32, i32* %14, align 4, !dbg !1927
  store i32 %82, i32* %16, align 4, !dbg !1929
  br label %83, !dbg !1930

; <label>:83:                                     ; preds = %81, %74
  br label %117, !dbg !1931

; <label>:84:                                     ; preds = %70
  %85 = load i8, i8* %10, align 1, !dbg !1932
  %86 = zext i8 %85 to i32, !dbg !1932
  %87 = icmp eq i32 %86, 138, !dbg !1935
  br i1 %87, label %88, label %98, !dbg !1932

; <label>:88:                                     ; preds = %84
  %89 = load i32, i32* %19, align 4, !dbg !1936
  %90 = and i32 %89, -16777217, !dbg !1936
  store i32 %90, i32* %19, align 4, !dbg !1936
  %91 = load i32, i32* %19, align 4, !dbg !1938
  %92 = and i32 %91, 41877248, !dbg !1939
  %93 = load i8*, i8** %11, align 8, !dbg !1940
  %94 = getelementptr inbounds i8, i8* %93, i32 1, !dbg !1940
  store i8* %94, i8** %11, align 8, !dbg !1940
  %95 = load i8, i8* %93, align 1, !dbg !1941
  %96 = zext i8 %95 to i32, !dbg !1941
  %97 = or i32 %92, %96, !dbg !1942
  store i32 %97, i32* %19, align 4, !dbg !1943
  br label %116, !dbg !1944

; <label>:98:                                     ; preds = %84
  %99 = load i8, i8* %10, align 1, !dbg !1945
  %100 = zext i8 %99 to i32, !dbg !1945
  %101 = icmp eq i32 %100, 139, !dbg !1948
  br i1 %101, label %102, label %113, !dbg !1945

; <label>:102:                                    ; preds = %98
  %103 = load i32, i32* %19, align 4, !dbg !1949
  %104 = and i32 %103, -33554433, !dbg !1949
  store i32 %104, i32* %19, align 4, !dbg !1949
  %105 = load i32, i32* %19, align 4, !dbg !1951
  %106 = and i32 %105, 24969471, !dbg !1952
  %107 = load i8*, i8** %11, align 8, !dbg !1953
  %108 = getelementptr inbounds i8, i8* %107, i32 1, !dbg !1953
  store i8* %108, i8** %11, align 8, !dbg !1953
  %109 = load i8, i8* %107, align 1, !dbg !1954
  %110 = zext i8 %109 to i32, !dbg !1954
  %111 = shl i32 %110, 8, !dbg !1955
  %112 = or i32 %106, %111, !dbg !1956
  store i32 %112, i32* %19, align 4, !dbg !1957
  br label %115, !dbg !1958

; <label>:113:                                    ; preds = %98
  %114 = load i8, i8* %10, align 1, !dbg !1959
  call void @update_cmd_color(i8 zeroext %114, i32* %19), !dbg !1960
  br label %115

; <label>:115:                                    ; preds = %113, %102
  br label %116

; <label>:116:                                    ; preds = %115, %88
  br label %117

; <label>:117:                                    ; preds = %116, %83
  br label %46, !dbg !1961, !llvm.loop !1913

; <label>:118:                                    ; preds = %46
  %119 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !1962
  %120 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %119, i32 0, i32 16, !dbg !1964
  %121 = load i8, i8* %120, align 8, !dbg !1964
  %122 = lshr i8 %121, 2, !dbg !1964
  %123 = and i8 %122, 1, !dbg !1964
  %124 = zext i8 %123 to i32, !dbg !1964
  %125 = icmp ne i32 %124, 0, !dbg !1962
  br i1 %125, label %178, label %126, !dbg !1965

; <label>:126:                                    ; preds = %118
  %127 = load i32, i32* @term_type, align 4, !dbg !1966
  %128 = icmp ne i32 %127, 2, !dbg !1969
  br i1 %128, label %171, label %129, !dbg !1970

; <label>:129:                                    ; preds = %126
  %130 = load i8*, i8** %11, align 8, !dbg !1971
  %131 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !1971
  %132 = load i8, i8* %131, align 1, !dbg !1971
  %133 = zext i8 %132 to i32, !dbg !1971
  %134 = icmp eq i32 %133, 0, !dbg !1972
  br i1 %134, label %171, label %135, !dbg !1973

; <label>:135:                                    ; preds = %129
  %136 = load i8*, i8** %11, align 8, !dbg !1974
  %137 = getelementptr inbounds i8, i8* %136, i64 0, !dbg !1974
  %138 = load i8, i8* %137, align 1, !dbg !1974
  %139 = zext i8 %138 to i32, !dbg !1976
  %140 = icmp sle i32 129, %139, !dbg !1977
  br i1 %140, label %141, label %171, !dbg !1978

; <label>:141:                                    ; preds = %135
  %142 = load i8*, i8** %11, align 8, !dbg !1979
  %143 = getelementptr inbounds i8, i8* %142, i64 0, !dbg !1979
  %144 = load i8, i8* %143, align 1, !dbg !1979
  %145 = zext i8 %144 to i32, !dbg !1981
  %146 = icmp sle i32 %145, 254, !dbg !1982
  br i1 %146, label %147, label %171, !dbg !1983

; <label>:147:                                    ; preds = %141
  %148 = load i8*, i8** %11, align 8, !dbg !1984
  %149 = getelementptr inbounds i8, i8* %148, i64 1, !dbg !1984
  %150 = load i8, i8* %149, align 1, !dbg !1984
  %151 = zext i8 %150 to i32, !dbg !1986
  %152 = icmp sle i32 64, %151, !dbg !1987
  br i1 %152, label %153, label %159, !dbg !1988

; <label>:153:                                    ; preds = %147
  %154 = load i8*, i8** %11, align 8, !dbg !1989
  %155 = getelementptr inbounds i8, i8* %154, i64 1, !dbg !1989
  %156 = load i8, i8* %155, align 1, !dbg !1989
  %157 = zext i8 %156 to i32, !dbg !1991
  %158 = icmp sle i32 %157, 126, !dbg !1992
  br i1 %158, label %172, label %159, !dbg !1993

; <label>:159:                                    ; preds = %153, %147
  %160 = load i8*, i8** %11, align 8, !dbg !1994
  %161 = getelementptr inbounds i8, i8* %160, i64 1, !dbg !1994
  %162 = load i8, i8* %161, align 1, !dbg !1994
  %163 = zext i8 %162 to i32, !dbg !1996
  %164 = icmp sle i32 128, %163, !dbg !1997
  br i1 %164, label %165, label %171, !dbg !1998

; <label>:165:                                    ; preds = %159
  %166 = load i8*, i8** %11, align 8, !dbg !1999
  %167 = getelementptr inbounds i8, i8* %166, i64 1, !dbg !1999
  %168 = load i8, i8* %167, align 1, !dbg !1999
  %169 = zext i8 %168 to i32, !dbg !2001
  %170 = icmp sle i32 %169, 254, !dbg !2002
  br i1 %170, label %172, label %171, !dbg !2003

; <label>:171:                                    ; preds = %165, %159, %141, %135, %129, %126
  store i32 1, i32* %25, align 4, !dbg !2005
  br label %173, !dbg !2006

; <label>:172:                                    ; preds = %165, %153
  store i32 2, i32* %25, align 4, !dbg !2007
  br label %173

; <label>:173:                                    ; preds = %172, %171
  %174 = load i8*, i8** %11, align 8, !dbg !2008
  %175 = load i32, i32* %25, align 4, !dbg !2009
  %176 = sext i32 %175 to i64, !dbg !2010
  %177 = getelementptr inbounds i8, i8* %174, i64 %176, !dbg !2010
  store i8* %177, i8** %12, align 8, !dbg !2011
  br label %181, !dbg !2012

; <label>:178:                                    ; preds = %118
  %179 = load i8*, i8** %11, align 8, !dbg !2013
  %180 = call i32 @read_unichar(i8* %179, i8** %12, i32* %25), !dbg !2015
  br label %181

; <label>:181:                                    ; preds = %178, %173
  %182 = load i32, i32* %14, align 4, !dbg !2016
  %183 = load i32, i32* %25, align 4, !dbg !2018
  %184 = add nsw i32 %182, %183, !dbg !2019
  %185 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !2020
  %186 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %185, i32 0, i32 3, !dbg !2021
  %187 = load i32, i32* %186, align 8, !dbg !2021
  %188 = icmp sgt i32 %184, %187, !dbg !2022
  br i1 %188, label %189, label %214, !dbg !2023

; <label>:189:                                    ; preds = %181
  %190 = load %struct.LINE_CACHE_SUB_REC*, %struct.LINE_CACHE_SUB_REC** %8, align 8, !dbg !2024
  %191 = icmp ne %struct.LINE_CACHE_SUB_REC* %190, null, !dbg !2026
  br i1 %191, label %192, label %214, !dbg !2027

; <label>:192:                                    ; preds = %189
  %193 = load i32, i32* %17, align 4, !dbg !2028
  %194 = load i32, i32* %16, align 4, !dbg !2029
  %195 = icmp sle i32 %193, %194, !dbg !2030
  br i1 %195, label %199, label %196, !dbg !2031

; <label>:196:                                    ; preds = %192
  %197 = load i32, i32* %17, align 4, !dbg !2032
  %198 = icmp sle i32 %197, 10, !dbg !2033
  br i1 %198, label %199, label %214, !dbg !2034

; <label>:199:                                    ; preds = %196, %192
  %200 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !2035
  %201 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %200, i32 0, i32 16, !dbg !2036
  %202 = load i8, i8* %201, align 8, !dbg !2036
  %203 = and i8 %202, 1, !dbg !2036
  %204 = zext i8 %203 to i32, !dbg !2036
  %205 = icmp ne i32 %204, 0, !dbg !2035
  br i1 %205, label %206, label %214, !dbg !2037

; <label>:206:                                    ; preds = %199
  %207 = load %struct.LINE_CACHE_SUB_REC*, %struct.LINE_CACHE_SUB_REC** %8, align 8, !dbg !2039
  %208 = getelementptr inbounds %struct.LINE_CACHE_SUB_REC, %struct.LINE_CACHE_SUB_REC* %207, i32 0, i32 1, !dbg !2041
  %209 = load i32, i32* %208, align 8, !dbg !2041
  %210 = load i32, i32* %14, align 4, !dbg !2042
  %211 = sub nsw i32 %210, %209, !dbg !2042
  store i32 %211, i32* %14, align 4, !dbg !2042
  %212 = load %struct.LINE_CACHE_SUB_REC*, %struct.LINE_CACHE_SUB_REC** %8, align 8, !dbg !2043
  %213 = getelementptr inbounds %struct.LINE_CACHE_SUB_REC, %struct.LINE_CACHE_SUB_REC* %212, i32 0, i32 1, !dbg !2044
  store i32 0, i32* %213, align 8, !dbg !2045
  br label %214, !dbg !2046

; <label>:214:                                    ; preds = %206, %199, %196, %189, %181
  %215 = load i32, i32* %14, align 4, !dbg !2047
  %216 = load i32, i32* %25, align 4, !dbg !2049
  %217 = add nsw i32 %215, %216, !dbg !2050
  %218 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !2051
  %219 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %218, i32 0, i32 3, !dbg !2052
  %220 = load i32, i32* %219, align 8, !dbg !2052
  %221 = icmp sgt i32 %217, %220, !dbg !2053
  br i1 %221, label %222, label %289, !dbg !2054

; <label>:222:                                    ; preds = %214
  %223 = load i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)*, i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)** %6, align 8, !dbg !2055
  %224 = icmp eq i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)* %223, null, !dbg !2057
  br i1 %224, label %225, label %227, !dbg !2055

; <label>:225:                                    ; preds = %222
  %226 = load i32, i32* %16, align 4, !dbg !2058
  br label %232, !dbg !2060

; <label>:227:                                    ; preds = %222
  %228 = load i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)*, i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)** %6, align 8, !dbg !2061
  %229 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !2062
  %230 = load %struct._LINE_REC*, %struct._LINE_REC** %5, align 8, !dbg !2063
  %231 = call i32 %228(%struct._TEXT_BUFFER_VIEW_REC* %229, %struct._LINE_REC* %230, i32 -1), !dbg !2061
  br label %232, !dbg !2064

; <label>:232:                                    ; preds = %227, %225
  %233 = phi i32 [ %226, %225 ], [ %231, %227 ], !dbg !2066
  store i32 %233, i32* %14, align 4, !dbg !2068
  %234 = call noalias i8* @g_malloc0_n(i64 1, i64 32), !dbg !2069
  %235 = bitcast i8* %234 to %struct.LINE_CACHE_SUB_REC*, !dbg !2070
  store %struct.LINE_CACHE_SUB_REC* %235, %struct.LINE_CACHE_SUB_REC** %8, align 8, !dbg !2071
  %236 = load i32, i32* %17, align 4, !dbg !2072
  %237 = load i32, i32* %16, align 4, !dbg !2074
  %238 = icmp sgt i32 %236, %237, !dbg !2075
  br i1 %238, label %239, label %256, !dbg !2076

; <label>:239:                                    ; preds = %232
  %240 = load i32, i32* %17, align 4, !dbg !2077
  %241 = icmp sgt i32 %240, 10, !dbg !2079
  br i1 %241, label %242, label %256, !dbg !2080

; <label>:242:                                    ; preds = %239
  %243 = load i32, i32* %18, align 4, !dbg !2081
  store i32 %243, i32* %19, align 4, !dbg !2083
  %244 = load i32, i32* %22, align 4, !dbg !2084
  store i32 %244, i32* %24, align 4, !dbg !2085
  %245 = load i32, i32* %21, align 4, !dbg !2086
  store i32 %245, i32* %23, align 4, !dbg !2087
  %246 = load i8*, i8** %13, align 8, !dbg !2088
  store i8* %246, i8** %11, align 8, !dbg !2089
  br label %247, !dbg !2090

; <label>:247:                                    ; preds = %252, %242
  %248 = load i8*, i8** %11, align 8, !dbg !2091
  %249 = load i8, i8* %248, align 1, !dbg !2093
  %250 = zext i8 %249 to i32, !dbg !2093
  %251 = icmp eq i32 %250, 32, !dbg !2094
  br i1 %251, label %252, label %255, !dbg !2095

; <label>:252:                                    ; preds = %247
  %253 = load i8*, i8** %11, align 8, !dbg !2096
  %254 = getelementptr inbounds i8, i8* %253, i32 1, !dbg !2096
  store i8* %254, i8** %11, align 8, !dbg !2096
  br label %247, !dbg !2098, !llvm.loop !2099

; <label>:255:                                    ; preds = %247
  br label %270, !dbg !2100

; <label>:256:                                    ; preds = %239, %232
  %257 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !2101
  %258 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %257, i32 0, i32 16, !dbg !2104
  %259 = load i8, i8* %258, align 8, !dbg !2104
  %260 = and i8 %259, 1, !dbg !2104
  %261 = zext i8 %260 to i32, !dbg !2104
  %262 = icmp ne i32 %261, 0, !dbg !2101
  br i1 %262, label %263, label %269, !dbg !2101

; <label>:263:                                    ; preds = %256
  store i32 0, i32* %14, align 4, !dbg !2105
  %264 = load %struct.LINE_CACHE_SUB_REC*, %struct.LINE_CACHE_SUB_REC** %8, align 8, !dbg !2107
  %265 = getelementptr inbounds %struct.LINE_CACHE_SUB_REC, %struct.LINE_CACHE_SUB_REC* %264, i32 0, i32 4, !dbg !2108
  %266 = load i8, i8* %265, align 4, !dbg !2109
  %267 = and i8 %266, -2, !dbg !2109
  %268 = or i8 %267, 1, !dbg !2109
  store i8 %268, i8* %265, align 4, !dbg !2109
  br label %269, !dbg !2110

; <label>:269:                                    ; preds = %263, %256
  br label %270

; <label>:270:                                    ; preds = %269, %255
  %271 = load i8*, i8** %11, align 8, !dbg !2111
  %272 = load %struct.LINE_CACHE_SUB_REC*, %struct.LINE_CACHE_SUB_REC** %8, align 8, !dbg !2112
  %273 = getelementptr inbounds %struct.LINE_CACHE_SUB_REC, %struct.LINE_CACHE_SUB_REC* %272, i32 0, i32 0, !dbg !2113
  store i8* %271, i8** %273, align 8, !dbg !2114
  %274 = load i32, i32* %14, align 4, !dbg !2115
  %275 = load %struct.LINE_CACHE_SUB_REC*, %struct.LINE_CACHE_SUB_REC** %8, align 8, !dbg !2116
  %276 = getelementptr inbounds %struct.LINE_CACHE_SUB_REC, %struct.LINE_CACHE_SUB_REC* %275, i32 0, i32 1, !dbg !2117
  store i32 %274, i32* %276, align 8, !dbg !2118
  %277 = load i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)*, i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)** %6, align 8, !dbg !2119
  %278 = load %struct.LINE_CACHE_SUB_REC*, %struct.LINE_CACHE_SUB_REC** %8, align 8, !dbg !2120
  %279 = getelementptr inbounds %struct.LINE_CACHE_SUB_REC, %struct.LINE_CACHE_SUB_REC* %278, i32 0, i32 2, !dbg !2121
  store i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)* %277, i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)** %279, align 8, !dbg !2122
  %280 = load i32, i32* %19, align 4, !dbg !2123
  %281 = load %struct.LINE_CACHE_SUB_REC*, %struct.LINE_CACHE_SUB_REC** %8, align 8, !dbg !2124
  %282 = getelementptr inbounds %struct.LINE_CACHE_SUB_REC, %struct.LINE_CACHE_SUB_REC* %281, i32 0, i32 3, !dbg !2125
  store i32 %280, i32* %282, align 8, !dbg !2126
  %283 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !2127
  %284 = load %struct.LINE_CACHE_SUB_REC*, %struct.LINE_CACHE_SUB_REC** %8, align 8, !dbg !2128
  %285 = bitcast %struct.LINE_CACHE_SUB_REC* %284 to i8*, !dbg !2128
  %286 = call %struct._GSList* @g_slist_append(%struct._GSList* %283, i8* %285), !dbg !2129
  store %struct._GSList* %286, %struct._GSList** %9, align 8, !dbg !2130
  %287 = load i32, i32* %20, align 4, !dbg !2131
  %288 = add nsw i32 %287, 1, !dbg !2131
  store i32 %288, i32* %20, align 4, !dbg !2131
  store i32 0, i32* %17, align 4, !dbg !2132
  br label %46, !dbg !2133, !llvm.loop !1913

; <label>:289:                                    ; preds = %214
  %290 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !2134
  %291 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %290, i32 0, i32 16, !dbg !2136
  %292 = load i8, i8* %291, align 8, !dbg !2136
  %293 = lshr i8 %292, 3, !dbg !2136
  %294 = and i8 %293, 1, !dbg !2136
  %295 = zext i8 %294 to i32, !dbg !2136
  %296 = icmp ne i32 %295, 0, !dbg !2134
  br i1 %296, label %297, label %306, !dbg !2137

; <label>:297:                                    ; preds = %289
  %298 = load i32, i32* %25, align 4, !dbg !2138
  %299 = icmp sgt i32 %298, 1, !dbg !2140
  br i1 %299, label %300, label %306, !dbg !2141

; <label>:300:                                    ; preds = %297
  %301 = load i32, i32* %14, align 4, !dbg !2142
  store i32 %301, i32* %17, align 4, !dbg !2144
  %302 = load i8*, i8** %12, align 8, !dbg !2145
  store i8* %302, i8** %13, align 8, !dbg !2146
  %303 = load i32, i32* %19, align 4, !dbg !2147
  store i32 %303, i32* %18, align 4, !dbg !2148
  %304 = load i32, i32* %24, align 4, !dbg !2149
  store i32 %304, i32* %22, align 4, !dbg !2150
  %305 = load i32, i32* %23, align 4, !dbg !2151
  store i32 %305, i32* %21, align 4, !dbg !2152
  br label %318, !dbg !2153

; <label>:306:                                    ; preds = %297, %289
  %307 = load i8*, i8** %11, align 8, !dbg !2154
  %308 = load i8, i8* %307, align 1, !dbg !2157
  %309 = zext i8 %308 to i32, !dbg !2157
  %310 = icmp eq i32 %309, 32, !dbg !2158
  br i1 %310, label %311, label %317, !dbg !2157

; <label>:311:                                    ; preds = %306
  %312 = load i32, i32* %14, align 4, !dbg !2159
  store i32 %312, i32* %17, align 4, !dbg !2161
  %313 = load i8*, i8** %11, align 8, !dbg !2162
  store i8* %313, i8** %13, align 8, !dbg !2163
  %314 = load i32, i32* %19, align 4, !dbg !2164
  store i32 %314, i32* %18, align 4, !dbg !2165
  %315 = load i32, i32* %24, align 4, !dbg !2166
  store i32 %315, i32* %22, align 4, !dbg !2167
  %316 = load i32, i32* %23, align 4, !dbg !2168
  store i32 %316, i32* %21, align 4, !dbg !2169
  br label %317, !dbg !2170

; <label>:317:                                    ; preds = %311, %306
  br label %318

; <label>:318:                                    ; preds = %317, %300
  %319 = load i32, i32* %25, align 4, !dbg !2171
  %320 = load i32, i32* %14, align 4, !dbg !2172
  %321 = add nsw i32 %320, %319, !dbg !2172
  store i32 %321, i32* %14, align 4, !dbg !2172
  %322 = load i8*, i8** %12, align 8, !dbg !2173
  store i8* %322, i8** %11, align 8, !dbg !2174
  br label %46, !dbg !2175, !llvm.loop !1913

; <label>:323:                                    ; preds = %61
  %324 = load i32, i32* %20, align 4, !dbg !2177
  %325 = sub nsw i32 %324, 1, !dbg !2178
  %326 = sext i32 %325 to i64, !dbg !2179
  %327 = mul i64 32, %326, !dbg !2180
  %328 = add i64 16, %327, !dbg !2181
  %329 = call noalias i8* @g_malloc(i64 %328), !dbg !2182
  %330 = bitcast i8* %329 to %struct.LINE_CACHE_REC*, !dbg !2182
  store %struct.LINE_CACHE_REC* %330, %struct.LINE_CACHE_REC** %7, align 8, !dbg !2183
  %331 = call i64 @time(i64* null) #10, !dbg !2184
  %332 = load %struct.LINE_CACHE_REC*, %struct.LINE_CACHE_REC** %7, align 8, !dbg !2185
  %333 = getelementptr inbounds %struct.LINE_CACHE_REC, %struct.LINE_CACHE_REC* %332, i32 0, i32 0, !dbg !2186
  store i64 %331, i64* %333, align 8, !dbg !2187
  %334 = load i32, i32* %20, align 4, !dbg !2188
  %335 = load %struct.LINE_CACHE_REC*, %struct.LINE_CACHE_REC** %7, align 8, !dbg !2189
  %336 = getelementptr inbounds %struct.LINE_CACHE_REC, %struct.LINE_CACHE_REC* %335, i32 0, i32 1, !dbg !2190
  store i32 %334, i32* %336, align 8, !dbg !2191
  %337 = load %struct.LINE_CACHE_REC*, %struct.LINE_CACHE_REC** %7, align 8, !dbg !2192
  %338 = getelementptr inbounds %struct.LINE_CACHE_REC, %struct.LINE_CACHE_REC* %337, i32 0, i32 1, !dbg !2194
  %339 = load i32, i32* %338, align 8, !dbg !2194
  %340 = icmp sgt i32 %339, 1, !dbg !2195
  br i1 %340, label %341, label %364, !dbg !2196

; <label>:341:                                    ; preds = %323
  store i32 0, i32* %15, align 4, !dbg !2197
  br label %342, !dbg !2200

; <label>:342:                                    ; preds = %360, %341
  %343 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !2201
  %344 = icmp ne %struct._GSList* %343, null, !dbg !2204
  br i1 %344, label %345, label %363, !dbg !2205

; <label>:345:                                    ; preds = %342
  call void @llvm.dbg.declare(metadata i8** %27, metadata !2206, metadata !185), !dbg !2208
  %346 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !2209
  %347 = getelementptr inbounds %struct._GSList, %struct._GSList* %346, i32 0, i32 0, !dbg !2210
  %348 = load i8*, i8** %347, align 8, !dbg !2210
  store i8* %348, i8** %27, align 8, !dbg !2208
  %349 = load i32, i32* %15, align 4, !dbg !2211
  %350 = sext i32 %349 to i64, !dbg !2212
  %351 = load %struct.LINE_CACHE_REC*, %struct.LINE_CACHE_REC** %7, align 8, !dbg !2212
  %352 = getelementptr inbounds %struct.LINE_CACHE_REC, %struct.LINE_CACHE_REC* %351, i32 0, i32 2, !dbg !2213
  %353 = getelementptr inbounds [1 x %struct.LINE_CACHE_SUB_REC], [1 x %struct.LINE_CACHE_SUB_REC]* %352, i64 0, i64 %350, !dbg !2212
  %354 = bitcast %struct.LINE_CACHE_SUB_REC* %353 to i8*, !dbg !2214
  %355 = load i8*, i8** %27, align 8, !dbg !2215
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %354, i8* %355, i64 32, i32 1, i1 false), !dbg !2214
  %356 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !2216
  %357 = load i8*, i8** %27, align 8, !dbg !2217
  %358 = call %struct._GSList* @g_slist_remove(%struct._GSList* %356, i8* %357), !dbg !2218
  store %struct._GSList* %358, %struct._GSList** %9, align 8, !dbg !2219
  %359 = load i8*, i8** %27, align 8, !dbg !2220
  call void @g_free(i8* %359), !dbg !2221
  br label %360, !dbg !2222

; <label>:360:                                    ; preds = %345
  %361 = load i32, i32* %15, align 4, !dbg !2223
  %362 = add nsw i32 %361, 1, !dbg !2223
  store i32 %362, i32* %15, align 4, !dbg !2223
  br label %342, !dbg !2225, !llvm.loop !2226

; <label>:363:                                    ; preds = %342
  br label %364, !dbg !2228

; <label>:364:                                    ; preds = %363, %323
  %365 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !2229
  %366 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %365, i32 0, i32 7, !dbg !2230
  %367 = load %struct.TEXT_BUFFER_CACHE_REC*, %struct.TEXT_BUFFER_CACHE_REC** %366, align 8, !dbg !2230
  %368 = getelementptr inbounds %struct.TEXT_BUFFER_CACHE_REC, %struct.TEXT_BUFFER_CACHE_REC* %367, i32 0, i32 2, !dbg !2231
  %369 = load %struct._GHashTable*, %struct._GHashTable** %368, align 8, !dbg !2231
  %370 = load %struct._LINE_REC*, %struct._LINE_REC** %5, align 8, !dbg !2232
  %371 = bitcast %struct._LINE_REC* %370 to i8*, !dbg !2232
  %372 = load %struct.LINE_CACHE_REC*, %struct.LINE_CACHE_REC** %7, align 8, !dbg !2233
  %373 = bitcast %struct.LINE_CACHE_REC* %372 to i8*, !dbg !2233
  %374 = call i32 @g_hash_table_insert(%struct._GHashTable* %369, i8* %371, i8* %373), !dbg !2234
  %375 = load %struct.LINE_CACHE_REC*, %struct.LINE_CACHE_REC** %7, align 8, !dbg !2235
  store %struct.LINE_CACHE_REC* %375, %struct.LINE_CACHE_REC** %3, align 8, !dbg !2236
  br label %376, !dbg !2236

; <label>:376:                                    ; preds = %364, %34
  %377 = load %struct.LINE_CACHE_REC*, %struct.LINE_CACHE_REC** %3, align 8, !dbg !2237
  ret %struct.LINE_CACHE_REC* %377, !dbg !2237
}

; Function Attrs: nounwind
declare i64 @time(i64*) #4

; Function Attrs: nounwind uwtable
define void @textbuffer_view_insert_line(%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*) #0 !dbg !2238 {
  %3 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  %4 = alloca %struct._LINE_REC*, align 8
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  store %struct._TEXT_BUFFER_VIEW_REC* %0, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_BUFFER_VIEW_REC** %3, metadata !2239, metadata !185), !dbg !2240
  store %struct._LINE_REC* %1, %struct._LINE_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._LINE_REC** %4, metadata !2241, metadata !185), !dbg !2242
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !2243, metadata !185), !dbg !2244
  call void @llvm.dbg.declare(metadata i8* %6, metadata !2245, metadata !185), !dbg !2246
  br label %8, !dbg !2247, !llvm.loop !2248

; <label>:8:                                      ; preds = %2
  %9 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2249
  %10 = icmp ne %struct._TEXT_BUFFER_VIEW_REC* %9, null, !dbg !2253
  br i1 %10, label %11, label %12, !dbg !2249

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !2254

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.textbuffer_view_insert_line, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0)), !dbg !2257
  br label %65, !dbg !2260

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !2261

; <label>:14:                                     ; preds = %13
  br label %15, !dbg !2263, !llvm.loop !2264

; <label>:15:                                     ; preds = %14
  %16 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !2265
  %17 = icmp ne %struct._LINE_REC* %16, null, !dbg !2269
  br i1 %17, label %18, label %19, !dbg !2265

; <label>:18:                                     ; preds = %15
  br label %20, !dbg !2270

; <label>:19:                                     ; preds = %15
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.textbuffer_view_insert_line, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0)), !dbg !2273
  br label %65, !dbg !2276

; <label>:20:                                     ; preds = %18
  br label %21, !dbg !2277

; <label>:21:                                     ; preds = %20
  %22 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2279
  %23 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %22, i32 0, i32 0, !dbg !2281
  %24 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %23, align 8, !dbg !2281
  %25 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %24, i32 0, i32 8, !dbg !2282
  %26 = load i8, i8* %25, align 4, !dbg !2282
  %27 = and i8 %26, 1, !dbg !2282
  %28 = zext i8 %27 to i32, !dbg !2282
  %29 = icmp ne i32 %28, 0, !dbg !2279
  br i1 %29, label %31, label %30, !dbg !2283

; <label>:30:                                     ; preds = %21
  br label %65, !dbg !2284

; <label>:31:                                     ; preds = %21
  %32 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2285
  %33 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %32, i32 0, i32 7, !dbg !2286
  %34 = load %struct.TEXT_BUFFER_CACHE_REC*, %struct.TEXT_BUFFER_CACHE_REC** %33, align 8, !dbg !2286
  %35 = getelementptr inbounds %struct.TEXT_BUFFER_CACHE_REC, %struct.TEXT_BUFFER_CACHE_REC* %34, i32 0, i32 3, !dbg !2287
  %36 = load i8, i8* %35, align 8, !dbg !2287
  %37 = zext i8 %36 to i32, !dbg !2285
  %38 = add nsw i32 %37, 1, !dbg !2288
  %39 = trunc i32 %38 to i8, !dbg !2285
  store i8 %39, i8* %6, align 1, !dbg !2289
  %40 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2290
  %41 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !2291
  %42 = load i8, i8* %6, align 1, !dbg !2292
  call void @view_update_cache(%struct._TEXT_BUFFER_VIEW_REC* %40, %struct._LINE_REC* %41, i8 zeroext %42), !dbg !2293
  %43 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2294
  %44 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !2295
  call void @view_insert_line(%struct._TEXT_BUFFER_VIEW_REC* %43, %struct._LINE_REC* %44), !dbg !2296
  %45 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2297
  %46 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %45, i32 0, i32 1, !dbg !2299
  %47 = load %struct._GSList*, %struct._GSList** %46, align 8, !dbg !2299
  store %struct._GSList* %47, %struct._GSList** %5, align 8, !dbg !2300
  br label %48, !dbg !2301

; <label>:48:                                     ; preds = %61, %31
  %49 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2302
  %50 = icmp ne %struct._GSList* %49, null, !dbg !2305
  br i1 %50, label %51, label %65, !dbg !2306

; <label>:51:                                     ; preds = %48
  call void @llvm.dbg.declare(metadata %struct._TEXT_BUFFER_VIEW_REC** %7, metadata !2307, metadata !185), !dbg !2309
  %52 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2310
  %53 = getelementptr inbounds %struct._GSList, %struct._GSList* %52, i32 0, i32 0, !dbg !2311
  %54 = load i8*, i8** %53, align 8, !dbg !2311
  %55 = bitcast i8* %54 to %struct._TEXT_BUFFER_VIEW_REC*, !dbg !2310
  store %struct._TEXT_BUFFER_VIEW_REC* %55, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !2309
  %56 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !2312
  %57 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !2313
  %58 = load i8, i8* %6, align 1, !dbg !2314
  call void @view_update_cache(%struct._TEXT_BUFFER_VIEW_REC* %56, %struct._LINE_REC* %57, i8 zeroext %58), !dbg !2315
  %59 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !2316
  %60 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !2317
  call void @view_insert_line(%struct._TEXT_BUFFER_VIEW_REC* %59, %struct._LINE_REC* %60), !dbg !2318
  br label %61, !dbg !2319

; <label>:61:                                     ; preds = %51
  %62 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2320
  %63 = getelementptr inbounds %struct._GSList, %struct._GSList* %62, i32 0, i32 1, !dbg !2322
  %64 = load %struct._GSList*, %struct._GSList** %63, align 8, !dbg !2322
  store %struct._GSList* %64, %struct._GSList** %5, align 8, !dbg !2323
  br label %48, !dbg !2324, !llvm.loop !2325

; <label>:65:                                     ; preds = %12, %19, %30, %48
  ret void, !dbg !2327
}

; Function Attrs: nounwind uwtable
define internal void @view_update_cache(%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i8 zeroext) #0 !dbg !2328 {
  %4 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  %5 = alloca %struct._LINE_REC*, align 8
  %6 = alloca i8, align 1
  store %struct._TEXT_BUFFER_VIEW_REC* %0, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_BUFFER_VIEW_REC** %4, metadata !2331, metadata !185), !dbg !2332
  store %struct._LINE_REC* %1, %struct._LINE_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._LINE_REC** %5, metadata !2333, metadata !185), !dbg !2334
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !2335, metadata !185), !dbg !2336
  %7 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !2337
  %8 = load %struct._LINE_REC*, %struct._LINE_REC** %5, align 8, !dbg !2338
  %9 = load i8, i8* %6, align 1, !dbg !2339
  call void @view_remove_cache(%struct._TEXT_BUFFER_VIEW_REC* %7, %struct._LINE_REC* %8, i8 zeroext %9), !dbg !2340
  %10 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !2341
  %11 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %10, i32 0, i32 0, !dbg !2343
  %12 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %11, align 8, !dbg !2343
  %13 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %12, i32 0, i32 3, !dbg !2344
  %14 = load %struct._LINE_REC*, %struct._LINE_REC** %13, align 8, !dbg !2344
  %15 = load %struct._LINE_REC*, %struct._LINE_REC** %5, align 8, !dbg !2345
  %16 = icmp eq %struct._LINE_REC* %14, %15, !dbg !2346
  br i1 %16, label %17, label %40, !dbg !2347

; <label>:17:                                     ; preds = %3
  %18 = load %struct._LINE_REC*, %struct._LINE_REC** %5, align 8, !dbg !2348
  %19 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %18, i32 0, i32 3, !dbg !2349
  %20 = getelementptr inbounds %struct.LINE_INFO_REC, %struct.LINE_INFO_REC* %19, i32 0, i32 0, !dbg !2350
  %21 = load i32, i32* %20, align 8, !dbg !2350
  %22 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !2351
  %23 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %22, i32 0, i32 14, !dbg !2352
  %24 = load i32, i32* %23, align 8, !dbg !2352
  %25 = and i32 %21, %24, !dbg !2353
  %26 = icmp ne i32 %25, 0, !dbg !2354
  br i1 %26, label %27, label %28, !dbg !2355

; <label>:27:                                     ; preds = %17
  br label %34, !dbg !2356

; <label>:28:                                     ; preds = %17
  %29 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !2358
  %30 = load %struct._LINE_REC*, %struct._LINE_REC** %5, align 8, !dbg !2360
  %31 = call %struct.LINE_CACHE_REC* @textbuffer_view_get_line_cache(%struct._TEXT_BUFFER_VIEW_REC* %29, %struct._LINE_REC* %30), !dbg !2361
  %32 = getelementptr inbounds %struct.LINE_CACHE_REC, %struct.LINE_CACHE_REC* %31, i32 0, i32 1, !dbg !2362
  %33 = load i32, i32* %32, align 8, !dbg !2362
  br label %34, !dbg !2363

; <label>:34:                                     ; preds = %28, %27
  %35 = phi i32 [ 0, %27 ], [ %33, %28 ], !dbg !2364
  %36 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !2366
  %37 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %36, i32 0, i32 7, !dbg !2367
  %38 = load %struct.TEXT_BUFFER_CACHE_REC*, %struct.TEXT_BUFFER_CACHE_REC** %37, align 8, !dbg !2367
  %39 = getelementptr inbounds %struct.TEXT_BUFFER_CACHE_REC, %struct.TEXT_BUFFER_CACHE_REC* %38, i32 0, i32 4, !dbg !2368
  store i32 %35, i32* %39, align 4, !dbg !2369
  br label %40, !dbg !2366

; <label>:40:                                     ; preds = %34, %3
  ret void, !dbg !2370
}

; Function Attrs: nounwind uwtable
define internal void @view_insert_line(%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*) #0 !dbg !2371 {
  %3 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  %4 = alloca %struct._LINE_REC*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct._TEXT_BUFFER_VIEW_REC* %0, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_BUFFER_VIEW_REC** %3, metadata !2372, metadata !185), !dbg !2373
  store %struct._LINE_REC* %1, %struct._LINE_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._LINE_REC** %4, metadata !2374, metadata !185), !dbg !2375
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2376, metadata !185), !dbg !2377
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2378, metadata !185), !dbg !2379
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2380, metadata !185), !dbg !2381
  %8 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2382
  %9 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %8, i32 0, i32 16, !dbg !2384
  %10 = load i8, i8* %9, align 8, !dbg !2384
  %11 = lshr i8 %10, 4, !dbg !2384
  %12 = and i8 %11, 1, !dbg !2384
  %13 = zext i8 %12 to i32, !dbg !2384
  %14 = icmp ne i32 %13, 0, !dbg !2382
  br i1 %14, label %21, label %15, !dbg !2385

; <label>:15:                                     ; preds = %2
  %16 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2386
  %17 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %16, i32 0, i32 16, !dbg !2387
  %18 = load i8, i8* %17, align 8, !dbg !2388
  %19 = and i8 %18, -33, !dbg !2388
  %20 = or i8 %19, 32, !dbg !2388
  store i8 %20, i8* %17, align 8, !dbg !2388
  br label %21, !dbg !2386

; <label>:21:                                     ; preds = %15, %2
  %22 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2389
  %23 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %22, i32 0, i32 11, !dbg !2391
  %24 = load %struct._LINE_REC*, %struct._LINE_REC** %23, align 8, !dbg !2391
  %25 = icmp eq %struct._LINE_REC* %24, null, !dbg !2392
  br i1 %25, label %26, label %36, !dbg !2393

; <label>:26:                                     ; preds = %21
  %27 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2394
  %28 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %27, i32 0, i32 0, !dbg !2396
  %29 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %28, align 8, !dbg !2396
  %30 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %29, i32 0, i32 1, !dbg !2397
  %31 = load %struct._LINE_REC*, %struct._LINE_REC** %30, align 8, !dbg !2397
  %32 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2398
  %33 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %32, i32 0, i32 11, !dbg !2399
  store %struct._LINE_REC* %31, %struct._LINE_REC** %33, align 8, !dbg !2400
  %34 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2401
  %35 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %34, i32 0, i32 9, !dbg !2402
  store %struct._LINE_REC* %31, %struct._LINE_REC** %35, align 8, !dbg !2403
  br label %36, !dbg !2404

; <label>:36:                                     ; preds = %26, %21
  %37 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2405
  %38 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %37, i32 0, i32 0, !dbg !2407
  %39 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %38, align 8, !dbg !2407
  %40 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %39, i32 0, i32 3, !dbg !2408
  %41 = load %struct._LINE_REC*, %struct._LINE_REC** %40, align 8, !dbg !2408
  %42 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !2409
  %43 = icmp ne %struct._LINE_REC* %41, %42, !dbg !2410
  br i1 %43, label %44, label %52, !dbg !2411

; <label>:44:                                     ; preds = %36
  %45 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2412
  %46 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %45, i32 0, i32 11, !dbg !2413
  %47 = load %struct._LINE_REC*, %struct._LINE_REC** %46, align 8, !dbg !2413
  %48 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !2414
  %49 = call i32 @textbuffer_line_exists_after(%struct._LINE_REC* %47, %struct._LINE_REC* %48), !dbg !2415
  %50 = icmp ne i32 %49, 0, !dbg !2415
  br i1 %50, label %52, label %51, !dbg !2416

; <label>:51:                                     ; preds = %44
  br label %263, !dbg !2418

; <label>:52:                                     ; preds = %44, %36
  %53 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !2419
  %54 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %53, i32 0, i32 3, !dbg !2420
  %55 = getelementptr inbounds %struct.LINE_INFO_REC, %struct.LINE_INFO_REC* %54, i32 0, i32 0, !dbg !2421
  %56 = load i32, i32* %55, align 8, !dbg !2421
  %57 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2422
  %58 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %57, i32 0, i32 14, !dbg !2423
  %59 = load i32, i32* %58, align 8, !dbg !2423
  %60 = and i32 %56, %59, !dbg !2424
  %61 = icmp ne i32 %60, 0, !dbg !2425
  br i1 %61, label %62, label %63, !dbg !2426

; <label>:62:                                     ; preds = %52
  br label %69, !dbg !2427

; <label>:63:                                     ; preds = %52
  %64 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2428
  %65 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !2430
  %66 = call %struct.LINE_CACHE_REC* @textbuffer_view_get_line_cache(%struct._TEXT_BUFFER_VIEW_REC* %64, %struct._LINE_REC* %65), !dbg !2431
  %67 = getelementptr inbounds %struct.LINE_CACHE_REC, %struct.LINE_CACHE_REC* %66, i32 0, i32 1, !dbg !2432
  %68 = load i32, i32* %67, align 8, !dbg !2432
  br label %69, !dbg !2433

; <label>:69:                                     ; preds = %63, %62
  %70 = phi i32 [ 0, %62 ], [ %68, %63 ], !dbg !2434
  store i32 %70, i32* %5, align 4, !dbg !2436
  %71 = load i32, i32* %5, align 4, !dbg !2437
  %72 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2438
  %73 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %72, i32 0, i32 8, !dbg !2439
  %74 = load i32, i32* %73, align 8, !dbg !2440
  %75 = add nsw i32 %74, %71, !dbg !2440
  store i32 %75, i32* %73, align 8, !dbg !2440
  %76 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2441
  %77 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %76, i32 0, i32 15, !dbg !2443
  %78 = load i32, i32* %77, align 4, !dbg !2443
  %79 = icmp sgt i32 %78, 0, !dbg !2444
  br i1 %79, label %80, label %99, !dbg !2445

; <label>:80:                                     ; preds = %69
  %81 = load i32, i32* %5, align 4, !dbg !2446
  %82 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2448
  %83 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %82, i32 0, i32 15, !dbg !2449
  %84 = load i32, i32* %83, align 4, !dbg !2450
  %85 = sub nsw i32 %84, %81, !dbg !2450
  store i32 %85, i32* %83, align 4, !dbg !2450
  %86 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2451
  %87 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %86, i32 0, i32 15, !dbg !2453
  %88 = load i32, i32* %87, align 4, !dbg !2453
  %89 = icmp sge i32 %88, 0, !dbg !2454
  br i1 %89, label %90, label %91, !dbg !2455

; <label>:90:                                     ; preds = %80
  store i32 0, i32* %5, align 4, !dbg !2456
  br label %98, !dbg !2457

; <label>:91:                                     ; preds = %80
  %92 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2458
  %93 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %92, i32 0, i32 15, !dbg !2460
  %94 = load i32, i32* %93, align 4, !dbg !2460
  %95 = sub nsw i32 0, %94, !dbg !2461
  store i32 %95, i32* %5, align 4, !dbg !2462
  %96 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2463
  %97 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %96, i32 0, i32 15, !dbg !2464
  store i32 0, i32* %97, align 4, !dbg !2465
  br label %98

; <label>:98:                                     ; preds = %91, %90
  br label %99, !dbg !2466

; <label>:99:                                     ; preds = %98, %69
  %100 = load i32, i32* %5, align 4, !dbg !2467
  %101 = icmp sgt i32 %100, 0, !dbg !2469
  br i1 %101, label %102, label %110, !dbg !2470

; <label>:102:                                    ; preds = %99
  %103 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2471
  %104 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2473
  %105 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %104, i32 0, i32 11, !dbg !2474
  %106 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2475
  %107 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %106, i32 0, i32 12, !dbg !2476
  %108 = load i32, i32* %5, align 4, !dbg !2477
  %109 = call i32 @view_scroll(%struct._TEXT_BUFFER_VIEW_REC* %103, %struct._LINE_REC** %105, i32* %107, i32 %108, i32 0), !dbg !2478
  br label %110, !dbg !2479

; <label>:110:                                    ; preds = %102, %99
  %111 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2480
  %112 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %111, i32 0, i32 16, !dbg !2482
  %113 = load i8, i8* %112, align 8, !dbg !2482
  %114 = lshr i8 %113, 4, !dbg !2482
  %115 = and i8 %114, 1, !dbg !2482
  %116 = zext i8 %115 to i32, !dbg !2482
  %117 = icmp ne i32 %116, 0, !dbg !2480
  br i1 %117, label %118, label %244, !dbg !2483

; <label>:118:                                    ; preds = %110
  %119 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2484
  %120 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %119, i32 0, i32 16, !dbg !2487
  %121 = load i8, i8* %120, align 8, !dbg !2487
  %122 = lshr i8 %121, 1, !dbg !2487
  %123 = and i8 %122, 1, !dbg !2487
  %124 = zext i8 %123 to i32, !dbg !2487
  %125 = icmp ne i32 %124, 0, !dbg !2484
  br i1 %125, label %126, label %155, !dbg !2488

; <label>:126:                                    ; preds = %118
  %127 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2489
  %128 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %127, i32 0, i32 8, !dbg !2491
  %129 = load i32, i32* %128, align 8, !dbg !2491
  %130 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2492
  %131 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %130, i32 0, i32 4, !dbg !2493
  %132 = load i32, i32* %131, align 4, !dbg !2493
  %133 = icmp sge i32 %129, %132, !dbg !2494
  br i1 %133, label %134, label %155, !dbg !2495

; <label>:134:                                    ; preds = %126
  %135 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2496
  %136 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %135, i32 0, i32 8, !dbg !2498
  %137 = load i32, i32* %136, align 8, !dbg !2498
  %138 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2499
  %139 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %138, i32 0, i32 4, !dbg !2500
  %140 = load i32, i32* %139, align 4, !dbg !2500
  %141 = sub nsw i32 %137, %140, !dbg !2501
  %142 = add nsw i32 %141, 1, !dbg !2502
  store i32 %142, i32* %5, align 4, !dbg !2503
  %143 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2504
  %144 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2505
  %145 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %144, i32 0, i32 9, !dbg !2506
  %146 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2507
  %147 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %146, i32 0, i32 10, !dbg !2508
  %148 = load i32, i32* %5, align 4, !dbg !2509
  %149 = call i32 @view_scroll(%struct._TEXT_BUFFER_VIEW_REC* %143, %struct._LINE_REC** %145, i32* %147, i32 %148, i32 0), !dbg !2510
  %150 = load i32, i32* %5, align 4, !dbg !2511
  %151 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2512
  %152 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %151, i32 0, i32 8, !dbg !2513
  %153 = load i32, i32* %152, align 8, !dbg !2514
  %154 = sub nsw i32 %153, %150, !dbg !2514
  store i32 %154, i32* %152, align 8, !dbg !2514
  br label %180, !dbg !2515

; <label>:155:                                    ; preds = %126, %118
  %156 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2516
  %157 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %156, i32 0, i32 8, !dbg !2518
  %158 = load i32, i32* %157, align 8, !dbg !2518
  %159 = icmp sge i32 %158, -1, !dbg !2519
  br i1 %159, label %160, label %168, !dbg !2520

; <label>:160:                                    ; preds = %155
  %161 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2521
  %162 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %161, i32 0, i32 8, !dbg !2523
  %163 = load i32, i32* %162, align 8, !dbg !2523
  %164 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2524
  %165 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %164, i32 0, i32 4, !dbg !2525
  %166 = load i32, i32* %165, align 4, !dbg !2525
  %167 = icmp slt i32 %163, %166, !dbg !2526
  br label %168

; <label>:168:                                    ; preds = %160, %155
  %169 = phi i1 [ false, %155 ], [ %167, %160 ]
  %170 = zext i1 %169 to i32, !dbg !2527
  %171 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2529
  %172 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %171, i32 0, i32 16, !dbg !2530
  %173 = trunc i32 %170 to i8, !dbg !2531
  %174 = load i8, i8* %172, align 8, !dbg !2531
  %175 = and i8 %173, 1, !dbg !2531
  %176 = shl i8 %175, 4, !dbg !2531
  %177 = and i8 %174, -17, !dbg !2531
  %178 = or i8 %177, %176, !dbg !2531
  store i8 %178, i8* %172, align 8, !dbg !2531
  %179 = zext i8 %175 to i32, !dbg !2531
  br label %180

; <label>:180:                                    ; preds = %168, %134
  %181 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2532
  %182 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %181, i32 0, i32 2, !dbg !2534
  %183 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %182, align 8, !dbg !2534
  %184 = icmp ne %struct._TERM_WINDOW* %183, null, !dbg !2535
  br i1 %184, label %185, label %243, !dbg !2536

; <label>:185:                                    ; preds = %180
  %186 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !2537
  %187 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %186, i32 0, i32 3, !dbg !2539
  %188 = getelementptr inbounds %struct.LINE_INFO_REC, %struct.LINE_INFO_REC* %187, i32 0, i32 0, !dbg !2540
  %189 = load i32, i32* %188, align 8, !dbg !2540
  %190 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2541
  %191 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %190, i32 0, i32 14, !dbg !2542
  %192 = load i32, i32* %191, align 8, !dbg !2542
  %193 = and i32 %189, %192, !dbg !2543
  %194 = icmp ne i32 %193, 0, !dbg !2544
  br i1 %194, label %243, label %195, !dbg !2545

; <label>:195:                                    ; preds = %185
  %196 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2546
  %197 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %196, i32 0, i32 8, !dbg !2548
  %198 = load i32, i32* %197, align 8, !dbg !2548
  %199 = add nsw i32 %198, 1, !dbg !2549
  %200 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !2550
  %201 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %200, i32 0, i32 3, !dbg !2551
  %202 = getelementptr inbounds %struct.LINE_INFO_REC, %struct.LINE_INFO_REC* %201, i32 0, i32 0, !dbg !2552
  %203 = load i32, i32* %202, align 8, !dbg !2552
  %204 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2553
  %205 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %204, i32 0, i32 14, !dbg !2554
  %206 = load i32, i32* %205, align 8, !dbg !2554
  %207 = and i32 %203, %206, !dbg !2555
  %208 = icmp ne i32 %207, 0, !dbg !2556
  br i1 %208, label %209, label %210, !dbg !2557

; <label>:209:                                    ; preds = %195
  br label %216, !dbg !2558

; <label>:210:                                    ; preds = %195
  %211 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2560
  %212 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !2562
  %213 = call %struct.LINE_CACHE_REC* @textbuffer_view_get_line_cache(%struct._TEXT_BUFFER_VIEW_REC* %211, %struct._LINE_REC* %212), !dbg !2563
  %214 = getelementptr inbounds %struct.LINE_CACHE_REC, %struct.LINE_CACHE_REC* %213, i32 0, i32 1, !dbg !2564
  %215 = load i32, i32* %214, align 8, !dbg !2564
  br label %216, !dbg !2565

; <label>:216:                                    ; preds = %210, %209
  %217 = phi i32 [ 0, %209 ], [ %215, %210 ], !dbg !2566
  %218 = sub nsw i32 %199, %217, !dbg !2568
  store i32 %218, i32* %6, align 4, !dbg !2569
  %219 = load i32, i32* %6, align 4, !dbg !2570
  %220 = icmp sge i32 %219, 0, !dbg !2572
  br i1 %220, label %221, label %222, !dbg !2573

; <label>:221:                                    ; preds = %216
  store i32 0, i32* %7, align 4, !dbg !2574
  br label %225, !dbg !2575

; <label>:222:                                    ; preds = %216
  %223 = load i32, i32* %6, align 4, !dbg !2576
  %224 = sub nsw i32 0, %223, !dbg !2578
  store i32 %224, i32* %7, align 4, !dbg !2579
  store i32 0, i32* %6, align 4, !dbg !2580
  br label %225

; <label>:225:                                    ; preds = %222, %221
  %226 = load i32, i32* %6, align 4, !dbg !2581
  %227 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2583
  %228 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %227, i32 0, i32 4, !dbg !2584
  %229 = load i32, i32* %228, align 4, !dbg !2584
  %230 = icmp slt i32 %226, %229, !dbg !2585
  br i1 %230, label %231, label %242, !dbg !2586

; <label>:231:                                    ; preds = %225
  %232 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2587
  %233 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !2589
  %234 = load i32, i32* %7, align 4, !dbg !2590
  %235 = load i32, i32* %6, align 4, !dbg !2591
  %236 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2592
  %237 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %236, i32 0, i32 4, !dbg !2593
  %238 = load i32, i32* %237, align 4, !dbg !2593
  %239 = load i32, i32* %6, align 4, !dbg !2594
  %240 = sub nsw i32 %238, %239, !dbg !2595
  %241 = call i32 @view_line_draw(%struct._TEXT_BUFFER_VIEW_REC* %232, %struct._LINE_REC* %233, i32 %234, i32 %235, i32 %240), !dbg !2596
  br label %242, !dbg !2597

; <label>:242:                                    ; preds = %231, %225
  br label %243, !dbg !2598

; <label>:243:                                    ; preds = %242, %185, %180
  br label %244, !dbg !2599

; <label>:244:                                    ; preds = %243, %110
  %245 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2600
  %246 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %245, i32 0, i32 2, !dbg !2602
  %247 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %246, align 8, !dbg !2602
  %248 = icmp ne %struct._TERM_WINDOW* %247, null, !dbg !2603
  br i1 %248, label %249, label %263, !dbg !2604

; <label>:249:                                    ; preds = %244
  %250 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !2605
  %251 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %250, i32 0, i32 3, !dbg !2607
  %252 = getelementptr inbounds %struct.LINE_INFO_REC, %struct.LINE_INFO_REC* %251, i32 0, i32 0, !dbg !2608
  %253 = load i32, i32* %252, align 8, !dbg !2608
  %254 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2609
  %255 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %254, i32 0, i32 14, !dbg !2610
  %256 = load i32, i32* %255, align 8, !dbg !2610
  %257 = and i32 %253, %256, !dbg !2611
  %258 = icmp ne i32 %257, 0, !dbg !2612
  br i1 %258, label %263, label %259, !dbg !2613

; <label>:259:                                    ; preds = %249
  %260 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2614
  %261 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %260, i32 0, i32 2, !dbg !2615
  %262 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %261, align 8, !dbg !2615
  call void @term_refresh(%struct._TERM_WINDOW* %262), !dbg !2616
  br label %263, !dbg !2616

; <label>:263:                                    ; preds = %51, %259, %249, %244
  ret void, !dbg !2617
}

; Function Attrs: nounwind uwtable
define void @textbuffer_view_remove_line(%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*) #0 !dbg !2618 {
  %3 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  %4 = alloca %struct._LINE_REC*, align 8
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  store %struct._TEXT_BUFFER_VIEW_REC* %0, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_BUFFER_VIEW_REC** %3, metadata !2619, metadata !185), !dbg !2620
  store %struct._LINE_REC* %1, %struct._LINE_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._LINE_REC** %4, metadata !2621, metadata !185), !dbg !2622
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !2623, metadata !185), !dbg !2624
  call void @llvm.dbg.declare(metadata i8* %6, metadata !2625, metadata !185), !dbg !2626
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2627, metadata !185), !dbg !2628
  br label %9, !dbg !2629, !llvm.loop !2630

; <label>:9:                                      ; preds = %2
  %10 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2631
  %11 = icmp ne %struct._TEXT_BUFFER_VIEW_REC* %10, null, !dbg !2635
  br i1 %11, label %12, label %13, !dbg !2631

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !2636

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.textbuffer_view_remove_line, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0)), !dbg !2639
  br label %87, !dbg !2642

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !2643

; <label>:15:                                     ; preds = %14
  br label %16, !dbg !2645, !llvm.loop !2646

; <label>:16:                                     ; preds = %15
  %17 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !2647
  %18 = icmp ne %struct._LINE_REC* %17, null, !dbg !2651
  br i1 %18, label %19, label %20, !dbg !2647

; <label>:19:                                     ; preds = %16
  br label %21, !dbg !2652

; <label>:20:                                     ; preds = %16
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.textbuffer_view_remove_line, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0)), !dbg !2655
  br label %87, !dbg !2658

; <label>:21:                                     ; preds = %19
  br label %22, !dbg !2659

; <label>:22:                                     ; preds = %21
  %23 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2661
  %24 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !2662
  %25 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !2663
  %26 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %25, i32 0, i32 0, !dbg !2664
  %27 = load %struct._LINE_REC*, %struct._LINE_REC** %26, align 8, !dbg !2664
  %28 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0), i32 3, %struct._TEXT_BUFFER_VIEW_REC* %23, %struct._LINE_REC* %24, %struct._LINE_REC* %27), !dbg !2665
  %29 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !2666
  %30 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %29, i32 0, i32 3, !dbg !2667
  %31 = getelementptr inbounds %struct.LINE_INFO_REC, %struct.LINE_INFO_REC* %30, i32 0, i32 0, !dbg !2668
  %32 = load i32, i32* %31, align 8, !dbg !2668
  %33 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2669
  %34 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %33, i32 0, i32 14, !dbg !2670
  %35 = load i32, i32* %34, align 8, !dbg !2670
  %36 = and i32 %32, %35, !dbg !2671
  %37 = icmp ne i32 %36, 0, !dbg !2672
  br i1 %37, label %38, label %39, !dbg !2673

; <label>:38:                                     ; preds = %22
  br label %45, !dbg !2674

; <label>:39:                                     ; preds = %22
  %40 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2676
  %41 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !2678
  %42 = call %struct.LINE_CACHE_REC* @textbuffer_view_get_line_cache(%struct._TEXT_BUFFER_VIEW_REC* %40, %struct._LINE_REC* %41), !dbg !2679
  %43 = getelementptr inbounds %struct.LINE_CACHE_REC, %struct.LINE_CACHE_REC* %42, i32 0, i32 1, !dbg !2680
  %44 = load i32, i32* %43, align 8, !dbg !2680
  br label %45, !dbg !2681

; <label>:45:                                     ; preds = %39, %38
  %46 = phi i32 [ 0, %38 ], [ %44, %39 ], !dbg !2682
  store i32 %46, i32* %7, align 4, !dbg !2684
  %47 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2685
  %48 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %47, i32 0, i32 7, !dbg !2686
  %49 = load %struct.TEXT_BUFFER_CACHE_REC*, %struct.TEXT_BUFFER_CACHE_REC** %48, align 8, !dbg !2686
  %50 = getelementptr inbounds %struct.TEXT_BUFFER_CACHE_REC, %struct.TEXT_BUFFER_CACHE_REC* %49, i32 0, i32 3, !dbg !2687
  %51 = load i8, i8* %50, align 8, !dbg !2687
  %52 = zext i8 %51 to i32, !dbg !2685
  %53 = add nsw i32 %52, 1, !dbg !2688
  %54 = trunc i32 %53 to i8, !dbg !2685
  store i8 %54, i8* %6, align 1, !dbg !2689
  %55 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2690
  %56 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !2691
  %57 = load i32, i32* %7, align 4, !dbg !2692
  call void @view_remove_line(%struct._TEXT_BUFFER_VIEW_REC* %55, %struct._LINE_REC* %56, i32 %57), !dbg !2693
  %58 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2694
  %59 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !2695
  %60 = load i8, i8* %6, align 1, !dbg !2696
  call void @view_remove_cache(%struct._TEXT_BUFFER_VIEW_REC* %58, %struct._LINE_REC* %59, i8 zeroext %60), !dbg !2697
  %61 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2698
  %62 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %61, i32 0, i32 1, !dbg !2700
  %63 = load %struct._GSList*, %struct._GSList** %62, align 8, !dbg !2700
  store %struct._GSList* %63, %struct._GSList** %5, align 8, !dbg !2701
  br label %64, !dbg !2702

; <label>:64:                                     ; preds = %78, %45
  %65 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2703
  %66 = icmp ne %struct._GSList* %65, null, !dbg !2706
  br i1 %66, label %67, label %82, !dbg !2707

; <label>:67:                                     ; preds = %64
  call void @llvm.dbg.declare(metadata %struct._TEXT_BUFFER_VIEW_REC** %8, metadata !2708, metadata !185), !dbg !2710
  %68 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2711
  %69 = getelementptr inbounds %struct._GSList, %struct._GSList* %68, i32 0, i32 0, !dbg !2712
  %70 = load i8*, i8** %69, align 8, !dbg !2712
  %71 = bitcast i8* %70 to %struct._TEXT_BUFFER_VIEW_REC*, !dbg !2711
  store %struct._TEXT_BUFFER_VIEW_REC* %71, %struct._TEXT_BUFFER_VIEW_REC** %8, align 8, !dbg !2710
  %72 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %8, align 8, !dbg !2713
  %73 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !2714
  %74 = load i32, i32* %7, align 4, !dbg !2715
  call void @view_remove_line(%struct._TEXT_BUFFER_VIEW_REC* %72, %struct._LINE_REC* %73, i32 %74), !dbg !2716
  %75 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %8, align 8, !dbg !2717
  %76 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !2718
  %77 = load i8, i8* %6, align 1, !dbg !2719
  call void @view_remove_cache(%struct._TEXT_BUFFER_VIEW_REC* %75, %struct._LINE_REC* %76, i8 zeroext %77), !dbg !2720
  br label %78, !dbg !2721

; <label>:78:                                     ; preds = %67
  %79 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2722
  %80 = getelementptr inbounds %struct._GSList, %struct._GSList* %79, i32 0, i32 1, !dbg !2724
  %81 = load %struct._GSList*, %struct._GSList** %80, align 8, !dbg !2724
  store %struct._GSList* %81, %struct._GSList** %5, align 8, !dbg !2725
  br label %64, !dbg !2726, !llvm.loop !2727

; <label>:82:                                     ; preds = %64
  %83 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2729
  %84 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %83, i32 0, i32 0, !dbg !2730
  %85 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %84, align 8, !dbg !2730
  %86 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !2731
  call void @textbuffer_remove(%struct.TEXT_BUFFER_REC* %85, %struct._LINE_REC* %86), !dbg !2732
  br label %87, !dbg !2733

; <label>:87:                                     ; preds = %82, %20, %13
  ret void, !dbg !2734
}

declare i32 @signal_emit(i8*, i32, ...) #2

; Function Attrs: nounwind uwtable
define internal void @view_remove_line(%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32) #0 !dbg !2735 {
  %4 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  %5 = alloca %struct._LINE_REC*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._LINE_REC*, align 8
  %9 = alloca i32, align 4
  store %struct._TEXT_BUFFER_VIEW_REC* %0, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_BUFFER_VIEW_REC** %4, metadata !2738, metadata !185), !dbg !2739
  store %struct._LINE_REC* %1, %struct._LINE_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._LINE_REC** %5, metadata !2740, metadata !185), !dbg !2741
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2742, metadata !185), !dbg !2743
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2744, metadata !185), !dbg !2745
  %10 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !2746
  %11 = load %struct._LINE_REC*, %struct._LINE_REC** %5, align 8, !dbg !2747
  call void @view_bookmarks_check(%struct._TEXT_BUFFER_VIEW_REC* %10, %struct._LINE_REC* %11), !dbg !2748
  %12 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !2749
  %13 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %12, i32 0, i32 0, !dbg !2751
  %14 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %13, align 8, !dbg !2751
  %15 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %14, i32 0, i32 3, !dbg !2752
  %16 = load %struct._LINE_REC*, %struct._LINE_REC** %15, align 8, !dbg !2752
  %17 = load %struct._LINE_REC*, %struct._LINE_REC** %5, align 8, !dbg !2753
  %18 = icmp eq %struct._LINE_REC* %16, %17, !dbg !2754
  br i1 %18, label %19, label %63, !dbg !2755

; <label>:19:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata %struct._LINE_REC** %8, metadata !2756, metadata !185), !dbg !2758
  %20 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !2759
  %21 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %20, i32 0, i32 0, !dbg !2760
  %22 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %21, align 8, !dbg !2760
  %23 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %22, i32 0, i32 1, !dbg !2761
  %24 = load %struct._LINE_REC*, %struct._LINE_REC** %23, align 8, !dbg !2761
  %25 = load %struct._LINE_REC*, %struct._LINE_REC** %5, align 8, !dbg !2762
  %26 = icmp eq %struct._LINE_REC* %24, %25, !dbg !2763
  br i1 %26, label %27, label %28, !dbg !2759

; <label>:27:                                     ; preds = %19
  br label %33, !dbg !2764

; <label>:28:                                     ; preds = %19
  %29 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !2766
  %30 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %29, i32 0, i32 0, !dbg !2767
  %31 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %30, align 8, !dbg !2767
  %32 = call %struct._LINE_REC* @textbuffer_line_last(%struct.TEXT_BUFFER_REC* %31), !dbg !2768
  br label %33, !dbg !2769

; <label>:33:                                     ; preds = %28, %27
  %34 = phi %struct._LINE_REC* [ null, %27 ], [ %32, %28 ], !dbg !2771
  store %struct._LINE_REC* %34, %struct._LINE_REC** %8, align 8, !dbg !2773
  %35 = load %struct._LINE_REC*, %struct._LINE_REC** %8, align 8, !dbg !2774
  %36 = icmp eq %struct._LINE_REC* %35, null, !dbg !2775
  br i1 %36, label %37, label %38, !dbg !2774

; <label>:37:                                     ; preds = %33
  br label %57, !dbg !2776

; <label>:38:                                     ; preds = %33
  %39 = load %struct._LINE_REC*, %struct._LINE_REC** %8, align 8, !dbg !2777
  %40 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %39, i32 0, i32 3, !dbg !2778
  %41 = getelementptr inbounds %struct.LINE_INFO_REC, %struct.LINE_INFO_REC* %40, i32 0, i32 0, !dbg !2779
  %42 = load i32, i32* %41, align 8, !dbg !2779
  %43 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !2780
  %44 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %43, i32 0, i32 14, !dbg !2781
  %45 = load i32, i32* %44, align 8, !dbg !2781
  %46 = and i32 %42, %45, !dbg !2782
  %47 = icmp ne i32 %46, 0, !dbg !2783
  br i1 %47, label %48, label %49, !dbg !2784

; <label>:48:                                     ; preds = %38
  br label %55, !dbg !2785

; <label>:49:                                     ; preds = %38
  %50 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !2786
  %51 = load %struct._LINE_REC*, %struct._LINE_REC** %8, align 8, !dbg !2787
  %52 = call %struct.LINE_CACHE_REC* @textbuffer_view_get_line_cache(%struct._TEXT_BUFFER_VIEW_REC* %50, %struct._LINE_REC* %51), !dbg !2788
  %53 = getelementptr inbounds %struct.LINE_CACHE_REC, %struct.LINE_CACHE_REC* %52, i32 0, i32 1, !dbg !2789
  %54 = load i32, i32* %53, align 8, !dbg !2789
  br label %55, !dbg !2790

; <label>:55:                                     ; preds = %49, %48
  %56 = phi i32 [ 0, %48 ], [ %54, %49 ], !dbg !2791
  br label %57, !dbg !2792

; <label>:57:                                     ; preds = %55, %37
  %58 = phi i32 [ 0, %37 ], [ %56, %55 ], !dbg !2793
  %59 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !2794
  %60 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %59, i32 0, i32 7, !dbg !2795
  %61 = load %struct.TEXT_BUFFER_CACHE_REC*, %struct.TEXT_BUFFER_CACHE_REC** %60, align 8, !dbg !2795
  %62 = getelementptr inbounds %struct.TEXT_BUFFER_CACHE_REC, %struct.TEXT_BUFFER_CACHE_REC* %61, i32 0, i32 4, !dbg !2796
  store i32 %58, i32* %62, align 4, !dbg !2797
  br label %63, !dbg !2798

; <label>:63:                                     ; preds = %57, %3
  %64 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !2799
  %65 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %64, i32 0, i32 0, !dbg !2801
  %66 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %65, align 8, !dbg !2801
  %67 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %66, i32 0, i32 1, !dbg !2802
  %68 = load %struct._LINE_REC*, %struct._LINE_REC** %67, align 8, !dbg !2802
  %69 = load %struct._LINE_REC*, %struct._LINE_REC** %5, align 8, !dbg !2803
  %70 = icmp eq %struct._LINE_REC* %68, %69, !dbg !2804
  br i1 %70, label %71, label %127, !dbg !2805

; <label>:71:                                     ; preds = %63
  %72 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !2806
  %73 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %72, i32 0, i32 11, !dbg !2809
  %74 = load %struct._LINE_REC*, %struct._LINE_REC** %73, align 8, !dbg !2809
  %75 = load %struct._LINE_REC*, %struct._LINE_REC** %5, align 8, !dbg !2810
  %76 = icmp eq %struct._LINE_REC* %74, %75, !dbg !2811
  br i1 %76, label %77, label %87, !dbg !2812

; <label>:77:                                     ; preds = %71
  %78 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !2813
  %79 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %78, i32 0, i32 11, !dbg !2815
  %80 = load %struct._LINE_REC*, %struct._LINE_REC** %79, align 8, !dbg !2815
  %81 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %80, i32 0, i32 1, !dbg !2816
  %82 = load %struct._LINE_REC*, %struct._LINE_REC** %81, align 8, !dbg !2816
  %83 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !2817
  %84 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %83, i32 0, i32 11, !dbg !2818
  store %struct._LINE_REC* %82, %struct._LINE_REC** %84, align 8, !dbg !2819
  %85 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !2820
  %86 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %85, i32 0, i32 12, !dbg !2821
  store i32 0, i32* %86, align 8, !dbg !2822
  br label %87, !dbg !2823

; <label>:87:                                     ; preds = %77, %71
  %88 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !2824
  %89 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %88, i32 0, i32 9, !dbg !2826
  %90 = load %struct._LINE_REC*, %struct._LINE_REC** %89, align 8, !dbg !2826
  %91 = load %struct._LINE_REC*, %struct._LINE_REC** %5, align 8, !dbg !2827
  %92 = icmp eq %struct._LINE_REC* %90, %91, !dbg !2828
  br i1 %92, label %93, label %126, !dbg !2829

; <label>:93:                                     ; preds = %87
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2830, metadata !185), !dbg !2832
  %94 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !2833
  %95 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %94, i32 0, i32 9, !dbg !2834
  %96 = load %struct._LINE_REC*, %struct._LINE_REC** %95, align 8, !dbg !2834
  %97 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %96, i32 0, i32 1, !dbg !2835
  %98 = load %struct._LINE_REC*, %struct._LINE_REC** %97, align 8, !dbg !2835
  %99 = icmp eq %struct._LINE_REC* %98, null, !dbg !2836
  %100 = zext i1 %99 to i32, !dbg !2836
  store i32 %100, i32* %9, align 4, !dbg !2832
  %101 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !2837
  %102 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !2838
  %103 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %102, i32 0, i32 9, !dbg !2839
  %104 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !2840
  %105 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %104, i32 0, i32 10, !dbg !2841
  %106 = load i32, i32* %6, align 4, !dbg !2842
  %107 = call i32 @view_scroll(%struct._TEXT_BUFFER_VIEW_REC* %101, %struct._LINE_REC** %103, i32* %105, i32 %106, i32 0), !dbg !2843
  store i32 %107, i32* %7, align 4, !dbg !2844
  %108 = load i32, i32* %7, align 4, !dbg !2845
  %109 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !2846
  %110 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %109, i32 0, i32 8, !dbg !2847
  %111 = load i32, i32* %110, align 8, !dbg !2848
  %112 = sub nsw i32 %111, %108, !dbg !2848
  store i32 %112, i32* %110, align 8, !dbg !2848
  %113 = load i32, i32* %6, align 4, !dbg !2849
  %114 = load i32, i32* %7, align 4, !dbg !2850
  %115 = sub nsw i32 %113, %114, !dbg !2851
  %116 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !2852
  %117 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %116, i32 0, i32 15, !dbg !2853
  %118 = load i32, i32* %117, align 4, !dbg !2854
  %119 = add nsw i32 %118, %115, !dbg !2854
  store i32 %119, i32* %117, align 4, !dbg !2854
  %120 = load i32, i32* %9, align 4, !dbg !2855
  %121 = icmp eq i32 %120, 1, !dbg !2857
  br i1 %121, label %122, label %125, !dbg !2858

; <label>:122:                                    ; preds = %93
  %123 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !2859
  %124 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %123, i32 0, i32 9, !dbg !2860
  store %struct._LINE_REC* null, %struct._LINE_REC** %124, align 8, !dbg !2861
  br label %125, !dbg !2859

; <label>:125:                                    ; preds = %122, %93
  br label %126, !dbg !2862

; <label>:126:                                    ; preds = %125, %87
  br label %162, !dbg !2863

; <label>:127:                                    ; preds = %63
  %128 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !2864
  %129 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %128, i32 0, i32 11, !dbg !2867
  %130 = load %struct._LINE_REC*, %struct._LINE_REC** %129, align 8, !dbg !2867
  %131 = load %struct._LINE_REC*, %struct._LINE_REC** %5, align 8, !dbg !2868
  %132 = call i32 @textbuffer_line_exists_after(%struct._LINE_REC* %130, %struct._LINE_REC* %131), !dbg !2869
  %133 = icmp ne i32 %132, 0, !dbg !2869
  br i1 %133, label %134, label %150, !dbg !2870

; <label>:134:                                    ; preds = %127
  %135 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !2871
  %136 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !2873
  %137 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %136, i32 0, i32 11, !dbg !2874
  %138 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !2875
  %139 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %138, i32 0, i32 12, !dbg !2876
  %140 = load i32, i32* %6, align 4, !dbg !2877
  %141 = sub nsw i32 0, %140, !dbg !2878
  %142 = call i32 @view_scroll(%struct._TEXT_BUFFER_VIEW_REC* %135, %struct._LINE_REC** %137, i32* %139, i32 %141, i32 0), !dbg !2879
  store i32 %142, i32* %7, align 4, !dbg !2880
  %143 = load i32, i32* %6, align 4, !dbg !2881
  %144 = load i32, i32* %7, align 4, !dbg !2882
  %145 = sub nsw i32 %143, %144, !dbg !2883
  %146 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !2884
  %147 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %146, i32 0, i32 15, !dbg !2885
  %148 = load i32, i32* %147, align 4, !dbg !2886
  %149 = add nsw i32 %148, %145, !dbg !2886
  store i32 %149, i32* %147, align 4, !dbg !2886
  br label %150, !dbg !2887

; <label>:150:                                    ; preds = %134, %127
  %151 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !2888
  %152 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %151, i32 0, i32 9, !dbg !2890
  %153 = load %struct._LINE_REC*, %struct._LINE_REC** %152, align 8, !dbg !2890
  %154 = load %struct._LINE_REC*, %struct._LINE_REC** %5, align 8, !dbg !2891
  %155 = call i32 @textbuffer_line_exists_after(%struct._LINE_REC* %153, %struct._LINE_REC* %154), !dbg !2892
  %156 = icmp ne i32 %155, 0, !dbg !2892
  br i1 %156, label %157, label %161, !dbg !2893

; <label>:157:                                    ; preds = %150
  %158 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !2894
  %159 = load %struct._LINE_REC*, %struct._LINE_REC** %5, align 8, !dbg !2896
  %160 = load i32, i32* %6, align 4, !dbg !2897
  call void @view_remove_line_update_startline(%struct._TEXT_BUFFER_VIEW_REC* %158, %struct._LINE_REC* %159, i32 %160), !dbg !2898
  br label %161, !dbg !2899

; <label>:161:                                    ; preds = %157, %150
  br label %162

; <label>:162:                                    ; preds = %161, %126
  %163 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !2900
  %164 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %163, i32 0, i32 8, !dbg !2901
  %165 = load i32, i32* %164, align 8, !dbg !2901
  %166 = icmp sge i32 %165, -1, !dbg !2902
  br i1 %166, label %167, label %175, !dbg !2903

; <label>:167:                                    ; preds = %162
  %168 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !2904
  %169 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %168, i32 0, i32 8, !dbg !2906
  %170 = load i32, i32* %169, align 8, !dbg !2906
  %171 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !2907
  %172 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %171, i32 0, i32 4, !dbg !2908
  %173 = load i32, i32* %172, align 4, !dbg !2908
  %174 = icmp slt i32 %170, %173, !dbg !2909
  br label %175

; <label>:175:                                    ; preds = %167, %162
  %176 = phi i1 [ false, %162 ], [ %174, %167 ]
  %177 = zext i1 %176 to i32, !dbg !2910
  %178 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !2912
  %179 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %178, i32 0, i32 16, !dbg !2913
  %180 = trunc i32 %177 to i8, !dbg !2914
  %181 = load i8, i8* %179, align 8, !dbg !2914
  %182 = and i8 %180, 1, !dbg !2914
  %183 = shl i8 %182, 4, !dbg !2914
  %184 = and i8 %181, -17, !dbg !2914
  %185 = or i8 %184, %183, !dbg !2914
  store i8 %185, i8* %179, align 8, !dbg !2914
  %186 = zext i8 %182 to i32, !dbg !2914
  %187 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !2915
  %188 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %187, i32 0, i32 16, !dbg !2917
  %189 = load i8, i8* %188, align 8, !dbg !2917
  %190 = lshr i8 %189, 4, !dbg !2917
  %191 = and i8 %190, 1, !dbg !2917
  %192 = zext i8 %191 to i32, !dbg !2917
  %193 = icmp ne i32 %192, 0, !dbg !2915
  br i1 %193, label %194, label %199, !dbg !2918

; <label>:194:                                    ; preds = %175
  %195 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !2919
  %196 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %195, i32 0, i32 16, !dbg !2921
  %197 = load i8, i8* %196, align 8, !dbg !2922
  %198 = and i8 %197, -33, !dbg !2922
  store i8 %198, i8* %196, align 8, !dbg !2922
  br label %199, !dbg !2919

; <label>:199:                                    ; preds = %194, %175
  %200 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !2923
  %201 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %200, i32 0, i32 2, !dbg !2925
  %202 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %201, align 8, !dbg !2925
  %203 = icmp ne %struct._TERM_WINDOW* %202, null, !dbg !2926
  br i1 %203, label %204, label %208, !dbg !2927

; <label>:204:                                    ; preds = %199
  %205 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !2928
  %206 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %205, i32 0, i32 2, !dbg !2929
  %207 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %206, align 8, !dbg !2929
  call void @term_refresh(%struct._TERM_WINDOW* %207), !dbg !2930
  br label %208, !dbg !2930

; <label>:208:                                    ; preds = %204, %199
  ret void, !dbg !2931
}

; Function Attrs: nounwind uwtable
define internal void @view_remove_cache(%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i8 zeroext) #0 !dbg !2932 {
  %4 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  %5 = alloca %struct._LINE_REC*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.LINE_CACHE_REC*, align 8
  store %struct._TEXT_BUFFER_VIEW_REC* %0, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_BUFFER_VIEW_REC** %4, metadata !2933, metadata !185), !dbg !2934
  store %struct._LINE_REC* %1, %struct._LINE_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._LINE_REC** %5, metadata !2935, metadata !185), !dbg !2936
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !2937, metadata !185), !dbg !2938
  call void @llvm.dbg.declare(metadata %struct.LINE_CACHE_REC** %7, metadata !2939, metadata !185), !dbg !2940
  %8 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !2941
  %9 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %8, i32 0, i32 7, !dbg !2943
  %10 = load %struct.TEXT_BUFFER_CACHE_REC*, %struct.TEXT_BUFFER_CACHE_REC** %9, align 8, !dbg !2943
  %11 = getelementptr inbounds %struct.TEXT_BUFFER_CACHE_REC, %struct.TEXT_BUFFER_CACHE_REC* %10, i32 0, i32 3, !dbg !2944
  %12 = load i8, i8* %11, align 8, !dbg !2944
  %13 = zext i8 %12 to i32, !dbg !2941
  %14 = load i8, i8* %6, align 1, !dbg !2945
  %15 = zext i8 %14 to i32, !dbg !2945
  %16 = icmp eq i32 %13, %15, !dbg !2946
  br i1 %16, label %17, label %18, !dbg !2947

; <label>:17:                                     ; preds = %3
  br label %46, !dbg !2948

; <label>:18:                                     ; preds = %3
  %19 = load i8, i8* %6, align 1, !dbg !2949
  %20 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !2950
  %21 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %20, i32 0, i32 7, !dbg !2951
  %22 = load %struct.TEXT_BUFFER_CACHE_REC*, %struct.TEXT_BUFFER_CACHE_REC** %21, align 8, !dbg !2951
  %23 = getelementptr inbounds %struct.TEXT_BUFFER_CACHE_REC, %struct.TEXT_BUFFER_CACHE_REC* %22, i32 0, i32 3, !dbg !2952
  store i8 %19, i8* %23, align 8, !dbg !2953
  %24 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !2954
  %25 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %24, i32 0, i32 7, !dbg !2955
  %26 = load %struct.TEXT_BUFFER_CACHE_REC*, %struct.TEXT_BUFFER_CACHE_REC** %25, align 8, !dbg !2955
  %27 = getelementptr inbounds %struct.TEXT_BUFFER_CACHE_REC, %struct.TEXT_BUFFER_CACHE_REC* %26, i32 0, i32 2, !dbg !2956
  %28 = load %struct._GHashTable*, %struct._GHashTable** %27, align 8, !dbg !2956
  %29 = load %struct._LINE_REC*, %struct._LINE_REC** %5, align 8, !dbg !2957
  %30 = bitcast %struct._LINE_REC* %29 to i8*, !dbg !2957
  %31 = call i8* @g_hash_table_lookup(%struct._GHashTable* %28, i8* %30), !dbg !2958
  %32 = bitcast i8* %31 to %struct.LINE_CACHE_REC*, !dbg !2958
  store %struct.LINE_CACHE_REC* %32, %struct.LINE_CACHE_REC** %7, align 8, !dbg !2959
  %33 = load %struct.LINE_CACHE_REC*, %struct.LINE_CACHE_REC** %7, align 8, !dbg !2960
  %34 = icmp ne %struct.LINE_CACHE_REC* %33, null, !dbg !2962
  br i1 %34, label %35, label %46, !dbg !2963

; <label>:35:                                     ; preds = %18
  %36 = load %struct.LINE_CACHE_REC*, %struct.LINE_CACHE_REC** %7, align 8, !dbg !2964
  %37 = bitcast %struct.LINE_CACHE_REC* %36 to i8*, !dbg !2964
  call void @g_free(i8* %37), !dbg !2966
  %38 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !2967
  %39 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %38, i32 0, i32 7, !dbg !2968
  %40 = load %struct.TEXT_BUFFER_CACHE_REC*, %struct.TEXT_BUFFER_CACHE_REC** %39, align 8, !dbg !2968
  %41 = getelementptr inbounds %struct.TEXT_BUFFER_CACHE_REC, %struct.TEXT_BUFFER_CACHE_REC* %40, i32 0, i32 2, !dbg !2969
  %42 = load %struct._GHashTable*, %struct._GHashTable** %41, align 8, !dbg !2969
  %43 = load %struct._LINE_REC*, %struct._LINE_REC** %5, align 8, !dbg !2970
  %44 = bitcast %struct._LINE_REC* %43 to i8*, !dbg !2970
  %45 = call i32 @g_hash_table_remove(%struct._GHashTable* %42, i8* %44), !dbg !2971
  br label %46, !dbg !2972

; <label>:46:                                     ; preds = %17, %35, %18
  ret void, !dbg !2973
}

declare void @textbuffer_remove(%struct.TEXT_BUFFER_REC*, %struct._LINE_REC*) #2

; Function Attrs: nounwind uwtable
define void @textbuffer_view_remove_lines_by_level(%struct._TEXT_BUFFER_VIEW_REC*, i32) #0 !dbg !2974 {
  %3 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._LINE_REC*, align 8
  %6 = alloca %struct._LINE_REC*, align 8
  store %struct._TEXT_BUFFER_VIEW_REC* %0, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_BUFFER_VIEW_REC** %3, metadata !2975, metadata !185), !dbg !2976
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2977, metadata !185), !dbg !2978
  call void @llvm.dbg.declare(metadata %struct._LINE_REC** %5, metadata !2979, metadata !185), !dbg !2980
  call void @llvm.dbg.declare(metadata %struct._LINE_REC** %6, metadata !2981, metadata !185), !dbg !2982
  call void @term_refresh_freeze(), !dbg !2983
  %7 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !2984
  %8 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %7, i32 0, i32 0, !dbg !2985
  %9 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %8, align 8, !dbg !2985
  %10 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %9, i32 0, i32 1, !dbg !2986
  %11 = load %struct._LINE_REC*, %struct._LINE_REC** %10, align 8, !dbg !2986
  store %struct._LINE_REC* %11, %struct._LINE_REC** %5, align 8, !dbg !2987
  br label %12, !dbg !2988

; <label>:12:                                     ; preds = %29, %2
  %13 = load %struct._LINE_REC*, %struct._LINE_REC** %5, align 8, !dbg !2989
  %14 = icmp ne %struct._LINE_REC* %13, null, !dbg !2991
  br i1 %14, label %15, label %31, !dbg !2992

; <label>:15:                                     ; preds = %12
  %16 = load %struct._LINE_REC*, %struct._LINE_REC** %5, align 8, !dbg !2993
  %17 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %16, i32 0, i32 1, !dbg !2995
  %18 = load %struct._LINE_REC*, %struct._LINE_REC** %17, align 8, !dbg !2995
  store %struct._LINE_REC* %18, %struct._LINE_REC** %6, align 8, !dbg !2996
  %19 = load %struct._LINE_REC*, %struct._LINE_REC** %5, align 8, !dbg !2997
  %20 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %19, i32 0, i32 3, !dbg !2999
  %21 = getelementptr inbounds %struct.LINE_INFO_REC, %struct.LINE_INFO_REC* %20, i32 0, i32 0, !dbg !3000
  %22 = load i32, i32* %21, align 8, !dbg !3000
  %23 = load i32, i32* %4, align 4, !dbg !3001
  %24 = and i32 %22, %23, !dbg !3002
  %25 = icmp ne i32 %24, 0, !dbg !3002
  br i1 %25, label %26, label %29, !dbg !3003

; <label>:26:                                     ; preds = %15
  %27 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !3004
  %28 = load %struct._LINE_REC*, %struct._LINE_REC** %5, align 8, !dbg !3005
  call void @textbuffer_view_remove_line(%struct._TEXT_BUFFER_VIEW_REC* %27, %struct._LINE_REC* %28), !dbg !3006
  br label %29, !dbg !3006

; <label>:29:                                     ; preds = %26, %15
  %30 = load %struct._LINE_REC*, %struct._LINE_REC** %6, align 8, !dbg !3007
  store %struct._LINE_REC* %30, %struct._LINE_REC** %5, align 8, !dbg !3008
  br label %12, !dbg !3009, !llvm.loop !3011

; <label>:31:                                     ; preds = %12
  %32 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !3012
  call void @textbuffer_view_redraw(%struct._TEXT_BUFFER_VIEW_REC* %32), !dbg !3013
  call void @term_refresh_thaw(), !dbg !3014
  ret void, !dbg !3015
}

declare void @term_refresh_freeze() #2

declare void @term_refresh_thaw() #2

; Function Attrs: nounwind uwtable
define void @textbuffer_view_remove_all_lines(%struct._TEXT_BUFFER_VIEW_REC*) #0 !dbg !3016 {
  %2 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  store %struct._TEXT_BUFFER_VIEW_REC* %0, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_BUFFER_VIEW_REC** %2, metadata !3017, metadata !185), !dbg !3018
  br label %3, !dbg !3019, !llvm.loop !3020

; <label>:3:                                      ; preds = %1
  %4 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !3021
  %5 = icmp ne %struct._TEXT_BUFFER_VIEW_REC* %4, null, !dbg !3025
  br i1 %5, label %6, label %7, !dbg !3021

; <label>:6:                                      ; preds = %3
  br label %8, !dbg !3026

; <label>:7:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.textbuffer_view_remove_all_lines, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0)), !dbg !3029
  br label %22, !dbg !3032

; <label>:8:                                      ; preds = %6
  br label %9, !dbg !3033

; <label>:9:                                      ; preds = %8
  %10 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !3035
  %11 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %10, i32 0, i32 0, !dbg !3036
  %12 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %11, align 8, !dbg !3036
  call void @textbuffer_remove_all_lines(%struct.TEXT_BUFFER_REC* %12), !dbg !3037
  %13 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !3038
  %14 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %13, i32 0, i32 13, !dbg !3039
  %15 = load %struct._GHashTable*, %struct._GHashTable** %14, align 8, !dbg !3039
  %16 = call i32 @g_hash_table_foreach_remove(%struct._GHashTable* %15, i32 (i8*, i8*, i8*)* bitcast (i32 (i8*)* @g_free_true to i32 (i8*, i8*, i8*)*), i8* null), !dbg !3040
  %17 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !3041
  call void @textbuffer_view_reset_cache(%struct._TEXT_BUFFER_VIEW_REC* %17), !dbg !3042
  %18 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !3043
  call void @textbuffer_view_clear(%struct._TEXT_BUFFER_VIEW_REC* %18), !dbg !3044
  %19 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %2, align 8, !dbg !3045
  %20 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %19, i32 0, i32 1, !dbg !3046
  %21 = load %struct._GSList*, %struct._GSList** %20, align 8, !dbg !3046
  call void @g_slist_foreach(%struct._GSList* %21, void (i8*, i8*)* bitcast (void (%struct._TEXT_BUFFER_VIEW_REC*)* @textbuffer_view_clear to void (i8*, i8*)*), i8* null), !dbg !3047
  br label %22, !dbg !3048

; <label>:22:                                     ; preds = %9, %7
  ret void, !dbg !3049
}

declare void @textbuffer_remove_all_lines(%struct.TEXT_BUFFER_REC*) #2

declare i32 @g_hash_table_foreach_remove(%struct._GHashTable*, i32 (i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @g_free_true(i8*) #0 !dbg !3051 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3054, metadata !185), !dbg !3055
  %3 = load i8*, i8** %2, align 8, !dbg !3056
  call void @g_free(i8* %3), !dbg !3057
  ret i32 1, !dbg !3058
}

; Function Attrs: nounwind uwtable
define void @textbuffer_view_set_bookmark(%struct._TEXT_BUFFER_VIEW_REC*, i8*, %struct._LINE_REC*) #0 !dbg !3059 {
  %4 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._LINE_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._TEXT_BUFFER_VIEW_REC* %0, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_BUFFER_VIEW_REC** %4, metadata !3062, metadata !185), !dbg !3063
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3064, metadata !185), !dbg !3065
  store %struct._LINE_REC* %2, %struct._LINE_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._LINE_REC** %6, metadata !3066, metadata !185), !dbg !3067
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3068, metadata !185), !dbg !3069
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3070, metadata !185), !dbg !3071
  br label %9, !dbg !3072, !llvm.loop !3073

; <label>:9:                                      ; preds = %3
  %10 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !3074
  %11 = icmp ne %struct._TEXT_BUFFER_VIEW_REC* %10, null, !dbg !3078
  br i1 %11, label %12, label %13, !dbg !3074

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !3079

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.textbuffer_view_set_bookmark, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0)), !dbg !3082
  br label %45, !dbg !3085

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !3086

; <label>:15:                                     ; preds = %14
  br label %16, !dbg !3088, !llvm.loop !3089

; <label>:16:                                     ; preds = %15
  %17 = load i8*, i8** %5, align 8, !dbg !3090
  %18 = icmp ne i8* %17, null, !dbg !3094
  br i1 %18, label %19, label %20, !dbg !3090

; <label>:19:                                     ; preds = %16
  br label %21, !dbg !3095

; <label>:20:                                     ; preds = %16
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.textbuffer_view_set_bookmark, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0)), !dbg !3098
  br label %45, !dbg !3101

; <label>:21:                                     ; preds = %19
  br label %22, !dbg !3102

; <label>:22:                                     ; preds = %21
  %23 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !3104
  %24 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %23, i32 0, i32 13, !dbg !3106
  %25 = load %struct._GHashTable*, %struct._GHashTable** %24, align 8, !dbg !3106
  %26 = load i8*, i8** %5, align 8, !dbg !3107
  %27 = call i32 @g_hash_table_lookup_extended(%struct._GHashTable* %25, i8* %26, i8** %7, i8** %8), !dbg !3108
  %28 = icmp ne i32 %27, 0, !dbg !3108
  br i1 %28, label %29, label %36, !dbg !3109

; <label>:29:                                     ; preds = %22
  %30 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !3110
  %31 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %30, i32 0, i32 13, !dbg !3112
  %32 = load %struct._GHashTable*, %struct._GHashTable** %31, align 8, !dbg !3112
  %33 = load i8*, i8** %7, align 8, !dbg !3113
  %34 = call i32 @g_hash_table_remove(%struct._GHashTable* %32, i8* %33), !dbg !3114
  %35 = load i8*, i8** %7, align 8, !dbg !3115
  call void @g_free(i8* %35), !dbg !3116
  br label %36, !dbg !3117

; <label>:36:                                     ; preds = %29, %22
  %37 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !3118
  %38 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %37, i32 0, i32 13, !dbg !3119
  %39 = load %struct._GHashTable*, %struct._GHashTable** %38, align 8, !dbg !3119
  %40 = load i8*, i8** %5, align 8, !dbg !3120
  %41 = call noalias i8* @g_strdup(i8* %40), !dbg !3121
  %42 = load %struct._LINE_REC*, %struct._LINE_REC** %6, align 8, !dbg !3122
  %43 = bitcast %struct._LINE_REC* %42 to i8*, !dbg !3122
  %44 = call i32 @g_hash_table_insert(%struct._GHashTable* %39, i8* %41, i8* %43), !dbg !3123
  br label %45, !dbg !3125

; <label>:45:                                     ; preds = %36, %20, %13
  ret void, !dbg !3126
}

declare i32 @g_hash_table_lookup_extended(%struct._GHashTable*, i8*, i8**, i8**) #2

declare i32 @g_hash_table_remove(%struct._GHashTable*, i8*) #2

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #2

declare noalias i8* @g_strdup(i8*) #2

; Function Attrs: nounwind uwtable
define void @textbuffer_view_set_bookmark_bottom(%struct._TEXT_BUFFER_VIEW_REC*, i8*) #0 !dbg !3127 {
  %3 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._LINE_REC*, align 8
  store %struct._TEXT_BUFFER_VIEW_REC* %0, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_BUFFER_VIEW_REC** %3, metadata !3130, metadata !185), !dbg !3131
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3132, metadata !185), !dbg !3133
  call void @llvm.dbg.declare(metadata %struct._LINE_REC** %5, metadata !3134, metadata !185), !dbg !3135
  br label %6, !dbg !3136, !llvm.loop !3137

; <label>:6:                                      ; preds = %2
  %7 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !3138
  %8 = icmp ne %struct._TEXT_BUFFER_VIEW_REC* %7, null, !dbg !3142
  br i1 %8, label %9, label %10, !dbg !3138

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !3143

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.textbuffer_view_set_bookmark_bottom, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0)), !dbg !3146
  br label %32, !dbg !3149

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !3150

; <label>:12:                                     ; preds = %11
  br label %13, !dbg !3152, !llvm.loop !3153

; <label>:13:                                     ; preds = %12
  %14 = load i8*, i8** %4, align 8, !dbg !3154
  %15 = icmp ne i8* %14, null, !dbg !3158
  br i1 %15, label %16, label %17, !dbg !3154

; <label>:16:                                     ; preds = %13
  br label %18, !dbg !3159

; <label>:17:                                     ; preds = %13
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.textbuffer_view_set_bookmark_bottom, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0)), !dbg !3162
  br label %32, !dbg !3165

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !3166

; <label>:19:                                     ; preds = %18
  %20 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !3168
  %21 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %20, i32 0, i32 11, !dbg !3170
  %22 = load %struct._LINE_REC*, %struct._LINE_REC** %21, align 8, !dbg !3170
  %23 = icmp ne %struct._LINE_REC* %22, null, !dbg !3171
  br i1 %23, label %24, label %32, !dbg !3172

; <label>:24:                                     ; preds = %19
  %25 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !3173
  %26 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %25, i32 0, i32 0, !dbg !3175
  %27 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %26, align 8, !dbg !3175
  %28 = call %struct._LINE_REC* @textbuffer_line_last(%struct.TEXT_BUFFER_REC* %27), !dbg !3176
  store %struct._LINE_REC* %28, %struct._LINE_REC** %5, align 8, !dbg !3177
  %29 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !3178
  %30 = load i8*, i8** %4, align 8, !dbg !3179
  %31 = load %struct._LINE_REC*, %struct._LINE_REC** %5, align 8, !dbg !3180
  call void @textbuffer_view_set_bookmark(%struct._TEXT_BUFFER_VIEW_REC* %29, i8* %30, %struct._LINE_REC* %31), !dbg !3181
  br label %32, !dbg !3182

; <label>:32:                                     ; preds = %10, %17, %24, %19
  ret void, !dbg !3183
}

; Function Attrs: nounwind uwtable
define %struct._LINE_REC* @textbuffer_view_get_bookmark(%struct._TEXT_BUFFER_VIEW_REC*, i8*) #0 !dbg !3184 {
  %3 = alloca %struct._LINE_REC*, align 8
  %4 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  %5 = alloca i8*, align 8
  store %struct._TEXT_BUFFER_VIEW_REC* %0, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_BUFFER_VIEW_REC** %4, metadata !3187, metadata !185), !dbg !3188
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3189, metadata !185), !dbg !3190
  br label %6, !dbg !3191, !llvm.loop !3192

; <label>:6:                                      ; preds = %2
  %7 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !3193
  %8 = icmp ne %struct._TEXT_BUFFER_VIEW_REC* %7, null, !dbg !3197
  br i1 %8, label %9, label %10, !dbg !3193

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !3198

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.textbuffer_view_get_bookmark, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0)), !dbg !3201
  store %struct._LINE_REC* null, %struct._LINE_REC** %3, align 8, !dbg !3204
  br label %26, !dbg !3204

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !3205

; <label>:12:                                     ; preds = %11
  br label %13, !dbg !3207, !llvm.loop !3208

; <label>:13:                                     ; preds = %12
  %14 = load i8*, i8** %5, align 8, !dbg !3209
  %15 = icmp ne i8* %14, null, !dbg !3213
  br i1 %15, label %16, label %17, !dbg !3209

; <label>:16:                                     ; preds = %13
  br label %18, !dbg !3214

; <label>:17:                                     ; preds = %13
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.textbuffer_view_get_bookmark, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0)), !dbg !3217
  store %struct._LINE_REC* null, %struct._LINE_REC** %3, align 8, !dbg !3220
  br label %26, !dbg !3220

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !3221

; <label>:19:                                     ; preds = %18
  %20 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !3223
  %21 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %20, i32 0, i32 13, !dbg !3224
  %22 = load %struct._GHashTable*, %struct._GHashTable** %21, align 8, !dbg !3224
  %23 = load i8*, i8** %5, align 8, !dbg !3225
  %24 = call i8* @g_hash_table_lookup(%struct._GHashTable* %22, i8* %23), !dbg !3226
  %25 = bitcast i8* %24 to %struct._LINE_REC*, !dbg !3226
  store %struct._LINE_REC* %25, %struct._LINE_REC** %3, align 8, !dbg !3227
  br label %26, !dbg !3227

; <label>:26:                                     ; preds = %19, %17, %10
  %27 = load %struct._LINE_REC*, %struct._LINE_REC** %3, align 8, !dbg !3228
  ret %struct._LINE_REC* %27, !dbg !3228
}

; Function Attrs: nounwind uwtable
define void @textbuffer_view_set_hidden_level(%struct._TEXT_BUFFER_VIEW_REC*, i32) #0 !dbg !3229 {
  %3 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct._LINE_REC*, align 8
  store %struct._TEXT_BUFFER_VIEW_REC* %0, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_BUFFER_VIEW_REC** %3, metadata !3230, metadata !185), !dbg !3231
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3232, metadata !185), !dbg !3233
  br label %8, !dbg !3234, !llvm.loop !3235

; <label>:8:                                      ; preds = %2
  %9 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !3236
  %10 = icmp ne %struct._TEXT_BUFFER_VIEW_REC* %9, null, !dbg !3240
  br i1 %10, label %11, label %12, !dbg !3236

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !3241

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.textbuffer_view_set_hidden_level, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0)), !dbg !3244
  br label %115, !dbg !3247

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !3248

; <label>:14:                                     ; preds = %13
  %15 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !3250
  %16 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %15, i32 0, i32 14, !dbg !3252
  %17 = load i32, i32* %16, align 8, !dbg !3252
  %18 = load i32, i32* %4, align 4, !dbg !3253
  %19 = icmp ne i32 %17, %18, !dbg !3254
  br i1 %19, label %20, label %115, !dbg !3255

; <label>:20:                                     ; preds = %14
  %21 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !3256
  %22 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %21, i32 0, i32 15, !dbg !3259
  %23 = load i32, i32* %22, align 4, !dbg !3259
  %24 = icmp sgt i32 %23, 0, !dbg !3260
  br i1 %24, label %25, label %103, !dbg !3261

; <label>:25:                                     ; preds = %20
  %26 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !3262
  %27 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %26, i32 0, i32 9, !dbg !3264
  %28 = load %struct._LINE_REC*, %struct._LINE_REC** %27, align 8, !dbg !3264
  %29 = icmp ne %struct._LINE_REC* %28, null, !dbg !3265
  br i1 %29, label %30, label %103, !dbg !3266

; <label>:30:                                     ; preds = %25
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3267, metadata !185), !dbg !3269
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3270, metadata !185), !dbg !3271
  call void @llvm.dbg.declare(metadata %struct._LINE_REC** %7, metadata !3272, metadata !185), !dbg !3273
  %31 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !3274
  %32 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %31, i32 0, i32 9, !dbg !3275
  %33 = load %struct._LINE_REC*, %struct._LINE_REC** %32, align 8, !dbg !3275
  store %struct._LINE_REC* %33, %struct._LINE_REC** %7, align 8, !dbg !3276
  br label %34, !dbg !3277

; <label>:34:                                     ; preds = %53, %30
  %35 = load %struct._LINE_REC*, %struct._LINE_REC** %7, align 8, !dbg !3278
  %36 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %35, i32 0, i32 0, !dbg !3280
  %37 = load %struct._LINE_REC*, %struct._LINE_REC** %36, align 8, !dbg !3280
  %38 = icmp ne %struct._LINE_REC* %37, null, !dbg !3281
  br i1 %38, label %39, label %51, !dbg !3282

; <label>:39:                                     ; preds = %34
  %40 = load %struct._LINE_REC*, %struct._LINE_REC** %7, align 8, !dbg !3283
  %41 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %40, i32 0, i32 0, !dbg !3285
  %42 = load %struct._LINE_REC*, %struct._LINE_REC** %41, align 8, !dbg !3285
  %43 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %42, i32 0, i32 3, !dbg !3286
  %44 = getelementptr inbounds %struct.LINE_INFO_REC, %struct.LINE_INFO_REC* %43, i32 0, i32 0, !dbg !3287
  %45 = load i32, i32* %44, align 8, !dbg !3287
  %46 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !3288
  %47 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %46, i32 0, i32 14, !dbg !3289
  %48 = load i32, i32* %47, align 8, !dbg !3289
  %49 = and i32 %45, %48, !dbg !3290
  %50 = icmp ne i32 %49, 0, !dbg !3291
  br label %51

; <label>:51:                                     ; preds = %39, %34
  %52 = phi i1 [ false, %34 ], [ %50, %39 ]
  br i1 %52, label %53, label %57, !dbg !3292

; <label>:53:                                     ; preds = %51
  %54 = load %struct._LINE_REC*, %struct._LINE_REC** %7, align 8, !dbg !3294
  %55 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %54, i32 0, i32 0, !dbg !3296
  %56 = load %struct._LINE_REC*, %struct._LINE_REC** %55, align 8, !dbg !3296
  store %struct._LINE_REC* %56, %struct._LINE_REC** %7, align 8, !dbg !3297
  br label %34, !dbg !3298, !llvm.loop !3300

; <label>:57:                                     ; preds = %51
  %58 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !3301
  %59 = load %struct._LINE_REC*, %struct._LINE_REC** %7, align 8, !dbg !3302
  %60 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !3303
  %61 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %60, i32 0, i32 10, !dbg !3304
  %62 = load i32, i32* %61, align 8, !dbg !3304
  %63 = call i32 @view_get_lines_height(%struct._TEXT_BUFFER_VIEW_REC* %58, %struct._LINE_REC* %59, i32 %62, %struct._LINE_REC* null), !dbg !3305
  store i32 %63, i32* %5, align 4, !dbg !3306
  %64 = load i32, i32* %4, align 4, !dbg !3307
  %65 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !3308
  %66 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %65, i32 0, i32 14, !dbg !3309
  store i32 %64, i32* %66, align 8, !dbg !3310
  %67 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !3311
  %68 = load %struct._LINE_REC*, %struct._LINE_REC** %7, align 8, !dbg !3312
  %69 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !3313
  %70 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %69, i32 0, i32 10, !dbg !3314
  %71 = load i32, i32* %70, align 8, !dbg !3314
  %72 = call i32 @view_get_lines_height(%struct._TEXT_BUFFER_VIEW_REC* %67, %struct._LINE_REC* %68, i32 %71, %struct._LINE_REC* null), !dbg !3315
  store i32 %72, i32* %6, align 4, !dbg !3316
  %73 = load i32, i32* %6, align 4, !dbg !3317
  %74 = load i32, i32* %5, align 4, !dbg !3318
  %75 = sub nsw i32 %73, %74, !dbg !3319
  %76 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !3320
  %77 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %76, i32 0, i32 15, !dbg !3321
  %78 = load i32, i32* %77, align 4, !dbg !3322
  %79 = sub nsw i32 %78, %75, !dbg !3322
  store i32 %79, i32* %77, align 4, !dbg !3322
  %80 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !3323
  %81 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %80, i32 0, i32 15, !dbg !3325
  %82 = load i32, i32* %81, align 4, !dbg !3325
  %83 = icmp slt i32 %82, 0, !dbg !3326
  br i1 %83, label %84, label %87, !dbg !3327

; <label>:84:                                     ; preds = %57
  %85 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !3328
  %86 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %85, i32 0, i32 15, !dbg !3329
  store i32 0, i32* %86, align 4, !dbg !3330
  br label %102, !dbg !3328

; <label>:87:                                     ; preds = %57
  %88 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !3331
  %89 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %88, i32 0, i32 15, !dbg !3333
  %90 = load i32, i32* %89, align 4, !dbg !3333
  %91 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !3334
  %92 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %91, i32 0, i32 4, !dbg !3335
  %93 = load i32, i32* %92, align 4, !dbg !3335
  %94 = icmp sgt i32 %90, %93, !dbg !3336
  br i1 %94, label %95, label %101, !dbg !3337

; <label>:95:                                     ; preds = %87
  %96 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !3338
  %97 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %96, i32 0, i32 4, !dbg !3339
  %98 = load i32, i32* %97, align 4, !dbg !3339
  %99 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !3340
  %100 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %99, i32 0, i32 15, !dbg !3341
  store i32 %98, i32* %100, align 4, !dbg !3342
  br label %101, !dbg !3340

; <label>:101:                                    ; preds = %95, %87
  br label %102

; <label>:102:                                    ; preds = %101, %84
  br label %107, !dbg !3343

; <label>:103:                                    ; preds = %25, %20
  %104 = load i32, i32* %4, align 4, !dbg !3344
  %105 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !3346
  %106 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %105, i32 0, i32 14, !dbg !3347
  store i32 %104, i32* %106, align 8, !dbg !3348
  br label %107

; <label>:107:                                    ; preds = %103, %102
  %108 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !3349
  %109 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !3350
  %110 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %109, i32 0, i32 3, !dbg !3351
  %111 = load i32, i32* %110, align 8, !dbg !3351
  %112 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !3352
  %113 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %112, i32 0, i32 4, !dbg !3353
  %114 = load i32, i32* %113, align 4, !dbg !3353
  call void @textbuffer_view_resize(%struct._TEXT_BUFFER_VIEW_REC* %108, i32 %111, i32 %114), !dbg !3354
  br label %115, !dbg !3355

; <label>:115:                                    ; preds = %12, %107, %14
  ret void, !dbg !3356
}

; Function Attrs: nounwind uwtable
define internal i32 @view_get_lines_height(%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32, %struct._LINE_REC*) #0 !dbg !3357 {
  %5 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  %6 = alloca %struct._LINE_REC*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._LINE_REC*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct._TEXT_BUFFER_VIEW_REC* %0, %struct._TEXT_BUFFER_VIEW_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_BUFFER_VIEW_REC** %5, metadata !3360, metadata !185), !dbg !3361
  store %struct._LINE_REC* %1, %struct._LINE_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._LINE_REC** %6, metadata !3362, metadata !185), !dbg !3363
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3364, metadata !185), !dbg !3365
  store %struct._LINE_REC* %3, %struct._LINE_REC** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._LINE_REC** %8, metadata !3366, metadata !185), !dbg !3367
  call void @llvm.dbg.declare(metadata i32* %9, metadata !3368, metadata !185), !dbg !3369
  call void @llvm.dbg.declare(metadata i32* %10, metadata !3370, metadata !185), !dbg !3371
  %11 = load i32, i32* %7, align 4, !dbg !3372
  %12 = sub nsw i32 0, %11, !dbg !3373
  store i32 %12, i32* %9, align 4, !dbg !3374
  br label %13, !dbg !3375

; <label>:13:                                     ; preds = %50, %4
  %14 = load %struct._LINE_REC*, %struct._LINE_REC** %6, align 8, !dbg !3376
  %15 = icmp ne %struct._LINE_REC* %14, null, !dbg !3378
  br i1 %15, label %16, label %22, !dbg !3379

; <label>:16:                                     ; preds = %13
  %17 = load i32, i32* %9, align 4, !dbg !3380
  %18 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %5, align 8, !dbg !3382
  %19 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %18, i32 0, i32 4, !dbg !3383
  %20 = load i32, i32* %19, align 4, !dbg !3383
  %21 = icmp slt i32 %17, %20, !dbg !3384
  br label %22

; <label>:22:                                     ; preds = %16, %13
  %23 = phi i1 [ false, %13 ], [ %21, %16 ]
  br i1 %23, label %24, label %54, !dbg !3385

; <label>:24:                                     ; preds = %22
  %25 = load %struct._LINE_REC*, %struct._LINE_REC** %6, align 8, !dbg !3387
  %26 = load %struct._LINE_REC*, %struct._LINE_REC** %8, align 8, !dbg !3390
  %27 = icmp ne %struct._LINE_REC* %25, %26, !dbg !3391
  br i1 %27, label %28, label %50, !dbg !3392

; <label>:28:                                     ; preds = %24
  %29 = load %struct._LINE_REC*, %struct._LINE_REC** %6, align 8, !dbg !3393
  %30 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %29, i32 0, i32 3, !dbg !3395
  %31 = getelementptr inbounds %struct.LINE_INFO_REC, %struct.LINE_INFO_REC* %30, i32 0, i32 0, !dbg !3396
  %32 = load i32, i32* %31, align 8, !dbg !3396
  %33 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %5, align 8, !dbg !3397
  %34 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %33, i32 0, i32 14, !dbg !3398
  %35 = load i32, i32* %34, align 8, !dbg !3398
  %36 = and i32 %32, %35, !dbg !3399
  %37 = icmp ne i32 %36, 0, !dbg !3400
  br i1 %37, label %38, label %39, !dbg !3401

; <label>:38:                                     ; preds = %28
  br label %45, !dbg !3402

; <label>:39:                                     ; preds = %28
  %40 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %5, align 8, !dbg !3404
  %41 = load %struct._LINE_REC*, %struct._LINE_REC** %6, align 8, !dbg !3406
  %42 = call %struct.LINE_CACHE_REC* @textbuffer_view_get_line_cache(%struct._TEXT_BUFFER_VIEW_REC* %40, %struct._LINE_REC* %41), !dbg !3407
  %43 = getelementptr inbounds %struct.LINE_CACHE_REC, %struct.LINE_CACHE_REC* %42, i32 0, i32 1, !dbg !3408
  %44 = load i32, i32* %43, align 8, !dbg !3408
  br label %45, !dbg !3409

; <label>:45:                                     ; preds = %39, %38
  %46 = phi i32 [ 0, %38 ], [ %44, %39 ], !dbg !3410
  store i32 %46, i32* %10, align 4, !dbg !3412
  %47 = load i32, i32* %10, align 4, !dbg !3413
  %48 = load i32, i32* %9, align 4, !dbg !3414
  %49 = add nsw i32 %48, %47, !dbg !3414
  store i32 %49, i32* %9, align 4, !dbg !3414
  br label %50, !dbg !3415

; <label>:50:                                     ; preds = %45, %24
  %51 = load %struct._LINE_REC*, %struct._LINE_REC** %6, align 8, !dbg !3416
  %52 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %51, i32 0, i32 1, !dbg !3417
  %53 = load %struct._LINE_REC*, %struct._LINE_REC** %52, align 8, !dbg !3417
  store %struct._LINE_REC* %53, %struct._LINE_REC** %6, align 8, !dbg !3418
  br label %13, !dbg !3419, !llvm.loop !3421

; <label>:54:                                     ; preds = %22
  %55 = load i32, i32* %9, align 4, !dbg !3422
  %56 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %5, align 8, !dbg !3423
  %57 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %56, i32 0, i32 4, !dbg !3424
  %58 = load i32, i32* %57, align 4, !dbg !3424
  %59 = icmp slt i32 %55, %58, !dbg !3425
  br i1 %59, label %60, label %62, !dbg !3422

; <label>:60:                                     ; preds = %54
  %61 = load i32, i32* %9, align 4, !dbg !3426
  br label %66, !dbg !3427

; <label>:62:                                     ; preds = %54
  %63 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %5, align 8, !dbg !3428
  %64 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %63, i32 0, i32 4, !dbg !3429
  %65 = load i32, i32* %64, align 4, !dbg !3429
  br label %66, !dbg !3430

; <label>:66:                                     ; preds = %62, %60
  %67 = phi i32 [ %61, %60 ], [ %65, %62 ], !dbg !3431
  ret i32 %67, !dbg !3432
}

; Function Attrs: nounwind uwtable
define void @textbuffer_view_set_window(%struct._TEXT_BUFFER_VIEW_REC*, %struct._TERM_WINDOW*) #0 !dbg !3433 {
  %3 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  %4 = alloca %struct._TERM_WINDOW*, align 8
  store %struct._TEXT_BUFFER_VIEW_REC* %0, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_BUFFER_VIEW_REC** %3, metadata !3436, metadata !185), !dbg !3437
  store %struct._TERM_WINDOW* %1, %struct._TERM_WINDOW** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_WINDOW** %4, metadata !3438, metadata !185), !dbg !3439
  br label %5, !dbg !3440, !llvm.loop !3441

; <label>:5:                                      ; preds = %2
  %6 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !3442
  %7 = icmp ne %struct._TEXT_BUFFER_VIEW_REC* %6, null, !dbg !3446
  br i1 %7, label %8, label %9, !dbg !3442

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !3447

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.textbuffer_view_set_window, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0)), !dbg !3450
  br label %30, !dbg !3453

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !3454

; <label>:11:                                     ; preds = %10
  %12 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !3456
  %13 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %12, i32 0, i32 2, !dbg !3458
  %14 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %13, align 8, !dbg !3458
  %15 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %4, align 8, !dbg !3459
  %16 = icmp ne %struct._TERM_WINDOW* %14, %15, !dbg !3460
  br i1 %16, label %17, label %30, !dbg !3461

; <label>:17:                                     ; preds = %11
  %18 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %4, align 8, !dbg !3462
  %19 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !3464
  %20 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %19, i32 0, i32 2, !dbg !3465
  store %struct._TERM_WINDOW* %18, %struct._TERM_WINDOW** %20, align 8, !dbg !3466
  %21 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %4, align 8, !dbg !3467
  %22 = icmp ne %struct._TERM_WINDOW* %21, null, !dbg !3469
  br i1 %22, label %23, label %29, !dbg !3470

; <label>:23:                                     ; preds = %17
  %24 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !3471
  %25 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %24, i32 0, i32 16, !dbg !3472
  %26 = load i8, i8* %25, align 8, !dbg !3473
  %27 = and i8 %26, -65, !dbg !3473
  %28 = or i8 %27, 64, !dbg !3473
  store i8 %28, i8* %25, align 8, !dbg !3473
  br label %29, !dbg !3471

; <label>:29:                                     ; preds = %23, %17
  br label %30, !dbg !3474

; <label>:30:                                     ; preds = %9, %29, %11
  ret void, !dbg !3475
}

; Function Attrs: nounwind uwtable
define internal void @view_draw(%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32, i32, i32, i32) #0 !dbg !3476 {
  %7 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  %8 = alloca %struct._LINE_REC*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct._TEXT_BUFFER_VIEW_REC* %0, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_BUFFER_VIEW_REC** %7, metadata !3479, metadata !185), !dbg !3480
  store %struct._LINE_REC* %1, %struct._LINE_REC** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._LINE_REC** %8, metadata !3481, metadata !185), !dbg !3482
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !3483, metadata !185), !dbg !3484
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !3485, metadata !185), !dbg !3486
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !3487, metadata !185), !dbg !3488
  store i32 %5, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !3489, metadata !185), !dbg !3490
  call void @llvm.dbg.declare(metadata i32* %13, metadata !3491, metadata !185), !dbg !3492
  %14 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !3493
  %15 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %14, i32 0, i32 16, !dbg !3495
  %16 = load i8, i8* %15, align 8, !dbg !3495
  %17 = lshr i8 %16, 6, !dbg !3495
  %18 = and i8 %17, 1, !dbg !3495
  %19 = zext i8 %18 to i32, !dbg !3495
  %20 = icmp ne i32 %19, 0, !dbg !3493
  br i1 %20, label %21, label %22, !dbg !3496

; <label>:21:                                     ; preds = %6
  br label %82, !dbg !3497

; <label>:22:                                     ; preds = %6
  br label %23, !dbg !3498

; <label>:23:                                     ; preds = %54, %22
  %24 = load %struct._LINE_REC*, %struct._LINE_REC** %8, align 8, !dbg !3499
  %25 = icmp ne %struct._LINE_REC* %24, null, !dbg !3501
  br i1 %25, label %26, label %29, !dbg !3502

; <label>:26:                                     ; preds = %23
  %27 = load i32, i32* %11, align 4, !dbg !3503
  %28 = icmp sgt i32 %27, 0, !dbg !3505
  br label %29

; <label>:29:                                     ; preds = %26, %23
  %30 = phi i1 [ false, %23 ], [ %28, %26 ]
  br i1 %30, label %31, label %58, !dbg !3506

; <label>:31:                                     ; preds = %29
  %32 = load %struct._LINE_REC*, %struct._LINE_REC** %8, align 8, !dbg !3508
  %33 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %32, i32 0, i32 3, !dbg !3511
  %34 = getelementptr inbounds %struct.LINE_INFO_REC, %struct.LINE_INFO_REC* %33, i32 0, i32 0, !dbg !3512
  %35 = load i32, i32* %34, align 8, !dbg !3512
  %36 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !3513
  %37 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %36, i32 0, i32 14, !dbg !3514
  %38 = load i32, i32* %37, align 8, !dbg !3514
  %39 = and i32 %35, %38, !dbg !3515
  %40 = icmp ne i32 %39, 0, !dbg !3516
  br i1 %40, label %54, label %41, !dbg !3517

; <label>:41:                                     ; preds = %31
  %42 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !3518
  %43 = load %struct._LINE_REC*, %struct._LINE_REC** %8, align 8, !dbg !3520
  %44 = load i32, i32* %9, align 4, !dbg !3521
  %45 = load i32, i32* %10, align 4, !dbg !3522
  %46 = load i32, i32* %11, align 4, !dbg !3523
  %47 = call i32 @view_line_draw(%struct._TEXT_BUFFER_VIEW_REC* %42, %struct._LINE_REC* %43, i32 %44, i32 %45, i32 %46), !dbg !3524
  store i32 %47, i32* %13, align 4, !dbg !3525
  %48 = load i32, i32* %13, align 4, !dbg !3526
  %49 = load i32, i32* %10, align 4, !dbg !3527
  %50 = add nsw i32 %49, %48, !dbg !3527
  store i32 %50, i32* %10, align 4, !dbg !3527
  %51 = load i32, i32* %13, align 4, !dbg !3528
  %52 = load i32, i32* %11, align 4, !dbg !3529
  %53 = sub nsw i32 %52, %51, !dbg !3529
  store i32 %53, i32* %11, align 4, !dbg !3529
  br label %54, !dbg !3530

; <label>:54:                                     ; preds = %41, %31
  store i32 0, i32* %9, align 4, !dbg !3531
  %55 = load %struct._LINE_REC*, %struct._LINE_REC** %8, align 8, !dbg !3532
  %56 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %55, i32 0, i32 1, !dbg !3533
  %57 = load %struct._LINE_REC*, %struct._LINE_REC** %56, align 8, !dbg !3533
  store %struct._LINE_REC* %57, %struct._LINE_REC** %8, align 8, !dbg !3534
  br label %23, !dbg !3535, !llvm.loop !3537

; <label>:58:                                     ; preds = %29
  %59 = load i32, i32* %12, align 4, !dbg !3538
  %60 = icmp ne i32 %59, 0, !dbg !3538
  br i1 %60, label %61, label %82, !dbg !3540

; <label>:61:                                     ; preds = %58
  %62 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !3541
  %63 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %62, i32 0, i32 2, !dbg !3543
  %64 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %63, align 8, !dbg !3543
  call void @term_set_color(%struct._TERM_WINDOW* %64, i32 196608), !dbg !3544
  br label %65, !dbg !3545

; <label>:65:                                     ; preds = %68, %61
  %66 = load i32, i32* %11, align 4, !dbg !3546
  %67 = icmp sgt i32 %66, 0, !dbg !3548
  br i1 %67, label %68, label %81, !dbg !3549

; <label>:68:                                     ; preds = %65
  %69 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !3550
  %70 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %69, i32 0, i32 2, !dbg !3552
  %71 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %70, align 8, !dbg !3552
  %72 = load i32, i32* %10, align 4, !dbg !3553
  call void @term_move(%struct._TERM_WINDOW* %71, i32 0, i32 %72), !dbg !3554
  %73 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !3555
  %74 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %73, i32 0, i32 2, !dbg !3556
  %75 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %74, align 8, !dbg !3556
  %76 = load i32, i32* %10, align 4, !dbg !3557
  call void @term_window_clrtoeol(%struct._TERM_WINDOW* %75, i32 %76), !dbg !3558
  %77 = load i32, i32* %10, align 4, !dbg !3559
  %78 = add nsw i32 %77, 1, !dbg !3559
  store i32 %78, i32* %10, align 4, !dbg !3559
  %79 = load i32, i32* %11, align 4, !dbg !3560
  %80 = add nsw i32 %79, -1, !dbg !3560
  store i32 %80, i32* %11, align 4, !dbg !3560
  br label %65, !dbg !3561, !llvm.loop !3563

; <label>:81:                                     ; preds = %65
  br label %82, !dbg !3564

; <label>:82:                                     ; preds = %21, %81, %58
  ret void, !dbg !3565
}

; Function Attrs: nounwind uwtable
define void @textbuffer_view_init() #0 !dbg !3566 {
  %1 = call i32 @g_timeout_add(i32 300000, i32 (i8*)* bitcast (i32 ()* @sig_check_linecache to i32 (i8*)*), i8* null), !dbg !3569
  store i32 %1, i32* @linecache_tag, align 4, !dbg !3570
  ret void, !dbg !3571
}

declare i32 @g_timeout_add(i32, i32 (i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @sig_check_linecache() #0 !dbg !3572 {
  %1 = alloca %struct._GSList*, align 8
  %2 = alloca %struct._GSList*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %1, metadata !3575, metadata !185), !dbg !3576
  call void @llvm.dbg.declare(metadata %struct._GSList** %2, metadata !3577, metadata !185), !dbg !3578
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3579, metadata !185), !dbg !3580
  %5 = call i64 @time(i64* null) #10, !dbg !3581
  store i64 %5, i64* %3, align 8, !dbg !3582
  store %struct._GSList* null, %struct._GSList** %2, align 8, !dbg !3583
  %6 = load %struct._GSList*, %struct._GSList** @views, align 8, !dbg !3584
  store %struct._GSList* %6, %struct._GSList** %1, align 8, !dbg !3586
  br label %7, !dbg !3587

; <label>:7:                                      ; preds = %37, %0
  %8 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !3588
  %9 = icmp ne %struct._GSList* %8, null, !dbg !3591
  br i1 %9, label %10, label %41, !dbg !3592

; <label>:10:                                     ; preds = %7
  call void @llvm.dbg.declare(metadata %struct._TEXT_BUFFER_VIEW_REC** %4, metadata !3593, metadata !185), !dbg !3595
  %11 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !3596
  %12 = getelementptr inbounds %struct._GSList, %struct._GSList* %11, i32 0, i32 0, !dbg !3597
  %13 = load i8*, i8** %12, align 8, !dbg !3597
  %14 = bitcast i8* %13 to %struct._TEXT_BUFFER_VIEW_REC*, !dbg !3596
  store %struct._TEXT_BUFFER_VIEW_REC* %14, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !3595
  %15 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !3598
  %16 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !3600
  %17 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %16, i32 0, i32 7, !dbg !3601
  %18 = load %struct.TEXT_BUFFER_CACHE_REC*, %struct.TEXT_BUFFER_CACHE_REC** %17, align 8, !dbg !3601
  %19 = bitcast %struct.TEXT_BUFFER_CACHE_REC* %18 to i8*, !dbg !3600
  %20 = call %struct._GSList* @g_slist_find(%struct._GSList* %15, i8* %19), !dbg !3602
  %21 = icmp ne %struct._GSList* %20, null, !dbg !3603
  br i1 %21, label %22, label %23, !dbg !3604

; <label>:22:                                     ; preds = %10
  br label %37, !dbg !3605

; <label>:23:                                     ; preds = %10
  %24 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !3606
  %25 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !3607
  %26 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %25, i32 0, i32 7, !dbg !3608
  %27 = load %struct.TEXT_BUFFER_CACHE_REC*, %struct.TEXT_BUFFER_CACHE_REC** %26, align 8, !dbg !3608
  %28 = bitcast %struct.TEXT_BUFFER_CACHE_REC* %27 to i8*, !dbg !3607
  %29 = call %struct._GSList* @g_slist_append(%struct._GSList* %24, i8* %28), !dbg !3609
  store %struct._GSList* %29, %struct._GSList** %2, align 8, !dbg !3610
  %30 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !3611
  %31 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %30, i32 0, i32 7, !dbg !3612
  %32 = load %struct.TEXT_BUFFER_CACHE_REC*, %struct.TEXT_BUFFER_CACHE_REC** %31, align 8, !dbg !3612
  %33 = getelementptr inbounds %struct.TEXT_BUFFER_CACHE_REC, %struct.TEXT_BUFFER_CACHE_REC* %32, i32 0, i32 2, !dbg !3613
  %34 = load %struct._GHashTable*, %struct._GHashTable** %33, align 8, !dbg !3613
  %35 = bitcast i64* %3 to i8*, !dbg !3614
  %36 = call i32 @g_hash_table_foreach_remove(%struct._GHashTable* %34, i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, %struct.LINE_CACHE_REC*, i64*)* @line_cache_check_remove to i32 (i8*, i8*, i8*)*), i8* %35), !dbg !3615
  br label %37, !dbg !3616

; <label>:37:                                     ; preds = %23, %22
  %38 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !3617
  %39 = getelementptr inbounds %struct._GSList, %struct._GSList* %38, i32 0, i32 1, !dbg !3619
  %40 = load %struct._GSList*, %struct._GSList** %39, align 8, !dbg !3619
  store %struct._GSList* %40, %struct._GSList** %1, align 8, !dbg !3620
  br label %7, !dbg !3621, !llvm.loop !3622

; <label>:41:                                     ; preds = %7
  %42 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !3624
  call void @g_slist_free(%struct._GSList* %42), !dbg !3625
  ret i32 1, !dbg !3626
}

; Function Attrs: nounwind uwtable
define void @textbuffer_view_deinit() #0 !dbg !3627 {
  %1 = load i32, i32* @linecache_tag, align 4, !dbg !3628
  %2 = call i32 @g_source_remove(i32 %1), !dbg !3629
  ret void, !dbg !3630
}

declare i32 @g_source_remove(i32) #2

; Function Attrs: nounwind uwtable
define internal void @textbuffer_cache_destroy(%struct.TEXT_BUFFER_CACHE_REC*) #0 !dbg !3631 {
  %2 = alloca %struct.TEXT_BUFFER_CACHE_REC*, align 8
  store %struct.TEXT_BUFFER_CACHE_REC* %0, %struct.TEXT_BUFFER_CACHE_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.TEXT_BUFFER_CACHE_REC** %2, metadata !3632, metadata !185), !dbg !3633
  %3 = load %struct.TEXT_BUFFER_CACHE_REC*, %struct.TEXT_BUFFER_CACHE_REC** %2, align 8, !dbg !3634
  %4 = getelementptr inbounds %struct.TEXT_BUFFER_CACHE_REC, %struct.TEXT_BUFFER_CACHE_REC* %3, i32 0, i32 2, !dbg !3635
  %5 = load %struct._GHashTable*, %struct._GHashTable** %4, align 8, !dbg !3635
  call void @g_hash_table_foreach(%struct._GHashTable* %5, void (i8*, i8*, i8*)* bitcast (i32 (i8*, %struct.LINE_CACHE_REC*)* @line_cache_destroy to void (i8*, i8*, i8*)*), i8* null), !dbg !3636
  %6 = load %struct.TEXT_BUFFER_CACHE_REC*, %struct.TEXT_BUFFER_CACHE_REC** %2, align 8, !dbg !3637
  %7 = getelementptr inbounds %struct.TEXT_BUFFER_CACHE_REC, %struct.TEXT_BUFFER_CACHE_REC* %6, i32 0, i32 2, !dbg !3638
  %8 = load %struct._GHashTable*, %struct._GHashTable** %7, align 8, !dbg !3638
  call void @g_hash_table_destroy(%struct._GHashTable* %8), !dbg !3639
  %9 = load %struct.TEXT_BUFFER_CACHE_REC*, %struct.TEXT_BUFFER_CACHE_REC** %2, align 8, !dbg !3640
  %10 = bitcast %struct.TEXT_BUFFER_CACHE_REC* %9 to i8*, !dbg !3640
  call void @g_free(i8* %10), !dbg !3641
  ret void, !dbg !3642
}

; Function Attrs: nounwind uwtable
define internal i32 @line_cache_destroy(i8*, %struct.LINE_CACHE_REC*) #0 !dbg !3643 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.LINE_CACHE_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3646, metadata !185), !dbg !3647
  store %struct.LINE_CACHE_REC* %1, %struct.LINE_CACHE_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.LINE_CACHE_REC** %4, metadata !3648, metadata !185), !dbg !3649
  %5 = load %struct.LINE_CACHE_REC*, %struct.LINE_CACHE_REC** %4, align 8, !dbg !3650
  %6 = bitcast %struct.LINE_CACHE_REC* %5 to i8*, !dbg !3650
  call void @g_free(i8* %6), !dbg !3651
  ret i32 1, !dbg !3652
}

; Function Attrs: nounwind readnone
declare i32 @g_direct_hash(i8*) #5

; Function Attrs: nounwind readnone
declare i32 @g_direct_equal(i8*, i8*) #5

declare %struct._GSList* @g_slist_copy(%struct._GSList*) #2

declare %struct._GSList* @g_slist_prepend(%struct._GSList*, i8*) #2

declare void @term_set_color(%struct._TERM_WINDOW*, i32) #2

declare void @term_window_scroll(%struct._TERM_WINDOW*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @view_draw_bottom(%struct._TEXT_BUFFER_VIEW_REC*, i32) #0 !dbg !3653 {
  %3 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._LINE_REC*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct._TEXT_BUFFER_VIEW_REC* %0, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_BUFFER_VIEW_REC** %3, metadata !3654, metadata !185), !dbg !3655
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3656, metadata !185), !dbg !3657
  call void @llvm.dbg.declare(metadata %struct._LINE_REC** %5, metadata !3658, metadata !185), !dbg !3659
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3660, metadata !185), !dbg !3661
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3662, metadata !185), !dbg !3663
  call void @llvm.dbg.declare(metadata i32* %8, metadata !3664, metadata !185), !dbg !3665
  call void @llvm.dbg.declare(metadata i32* %9, metadata !3666, metadata !185), !dbg !3667
  %10 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !3668
  %11 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %10, i32 0, i32 4, !dbg !3669
  %12 = load i32, i32* %11, align 4, !dbg !3669
  %13 = load i32, i32* %4, align 4, !dbg !3670
  %14 = sub nsw i32 %12, %13, !dbg !3671
  store i32 %14, i32* %7, align 4, !dbg !3672
  %15 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !3673
  %16 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %15, i32 0, i32 9, !dbg !3674
  %17 = load %struct._LINE_REC*, %struct._LINE_REC** %16, align 8, !dbg !3674
  store %struct._LINE_REC* %17, %struct._LINE_REC** %5, align 8, !dbg !3675
  %18 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !3676
  %19 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %18, i32 0, i32 10, !dbg !3677
  %20 = load i32, i32* %19, align 8, !dbg !3677
  %21 = sub nsw i32 0, %20, !dbg !3678
  store i32 %21, i32* %6, align 4, !dbg !3679
  store i32 0, i32* %8, align 4, !dbg !3680
  br label %22, !dbg !3681

; <label>:22:                                     ; preds = %62, %2
  %23 = load %struct._LINE_REC*, %struct._LINE_REC** %5, align 8, !dbg !3682
  %24 = icmp ne %struct._LINE_REC* %23, null, !dbg !3684
  br i1 %24, label %25, label %29, !dbg !3685

; <label>:25:                                     ; preds = %22
  %26 = load i32, i32* %6, align 4, !dbg !3686
  %27 = load i32, i32* %7, align 4, !dbg !3688
  %28 = icmp slt i32 %26, %27, !dbg !3689
  br label %29

; <label>:29:                                     ; preds = %25, %22
  %30 = phi i1 [ false, %22 ], [ %28, %25 ]
  br i1 %30, label %31, label %66, !dbg !3690

; <label>:31:                                     ; preds = %29
  %32 = load %struct._LINE_REC*, %struct._LINE_REC** %5, align 8, !dbg !3692
  %33 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %32, i32 0, i32 3, !dbg !3694
  %34 = getelementptr inbounds %struct.LINE_INFO_REC, %struct.LINE_INFO_REC* %33, i32 0, i32 0, !dbg !3695
  %35 = load i32, i32* %34, align 8, !dbg !3695
  %36 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !3696
  %37 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %36, i32 0, i32 14, !dbg !3697
  %38 = load i32, i32* %37, align 8, !dbg !3697
  %39 = and i32 %35, %38, !dbg !3698
  %40 = icmp ne i32 %39, 0, !dbg !3699
  br i1 %40, label %41, label %42, !dbg !3700

; <label>:41:                                     ; preds = %31
  br label %48, !dbg !3701

; <label>:42:                                     ; preds = %31
  %43 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !3703
  %44 = load %struct._LINE_REC*, %struct._LINE_REC** %5, align 8, !dbg !3705
  %45 = call %struct.LINE_CACHE_REC* @textbuffer_view_get_line_cache(%struct._TEXT_BUFFER_VIEW_REC* %43, %struct._LINE_REC* %44), !dbg !3706
  %46 = getelementptr inbounds %struct.LINE_CACHE_REC, %struct.LINE_CACHE_REC* %45, i32 0, i32 1, !dbg !3707
  %47 = load i32, i32* %46, align 8, !dbg !3707
  br label %48, !dbg !3708

; <label>:48:                                     ; preds = %42, %41
  %49 = phi i32 [ 0, %41 ], [ %47, %42 ], !dbg !3709
  store i32 %49, i32* %9, align 4, !dbg !3711
  %50 = load i32, i32* %9, align 4, !dbg !3712
  %51 = load i32, i32* %6, align 4, !dbg !3713
  %52 = add nsw i32 %51, %50, !dbg !3713
  store i32 %52, i32* %6, align 4, !dbg !3713
  %53 = load i32, i32* %6, align 4, !dbg !3714
  %54 = load i32, i32* %7, align 4, !dbg !3716
  %55 = icmp sgt i32 %53, %54, !dbg !3717
  br i1 %55, label %56, label %62, !dbg !3718

; <label>:56:                                     ; preds = %48
  %57 = load i32, i32* %7, align 4, !dbg !3719
  %58 = load i32, i32* %6, align 4, !dbg !3721
  %59 = load i32, i32* %9, align 4, !dbg !3722
  %60 = sub nsw i32 %58, %59, !dbg !3723
  %61 = sub nsw i32 %57, %60, !dbg !3724
  store i32 %61, i32* %8, align 4, !dbg !3725
  br label %66, !dbg !3726

; <label>:62:                                     ; preds = %48
  %63 = load %struct._LINE_REC*, %struct._LINE_REC** %5, align 8, !dbg !3727
  %64 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %63, i32 0, i32 1, !dbg !3728
  %65 = load %struct._LINE_REC*, %struct._LINE_REC** %64, align 8, !dbg !3728
  store %struct._LINE_REC* %65, %struct._LINE_REC** %5, align 8, !dbg !3729
  br label %22, !dbg !3730, !llvm.loop !3732

; <label>:66:                                     ; preds = %56, %29
  %67 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !3733
  %68 = load %struct._LINE_REC*, %struct._LINE_REC** %5, align 8, !dbg !3734
  %69 = load i32, i32* %8, align 4, !dbg !3735
  %70 = load i32, i32* %7, align 4, !dbg !3736
  %71 = load i32, i32* %4, align 4, !dbg !3737
  call void @view_draw(%struct._TEXT_BUFFER_VIEW_REC* %67, %struct._LINE_REC* %68, i32 %69, i32 %70, i32 %71, i32 1), !dbg !3738
  ret void, !dbg !3739
}

declare void @irssi_set_dirty() #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: nounwind uwtable
define internal void @update_cmd_color(i8 zeroext, i32*) #0 !dbg !3740 {
  %3 = alloca i8, align 1
  %4 = alloca i32*, align 8
  store i8 %0, i8* %3, align 1
  call void @llvm.dbg.declare(metadata i8* %3, metadata !3743, metadata !185), !dbg !3744
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !3745, metadata !185), !dbg !3746
  %5 = load i8, i8* %3, align 1, !dbg !3747
  %6 = zext i8 %5 to i32, !dbg !3747
  %7 = and i32 %6, 128, !dbg !3749
  %8 = icmp eq i32 %7, 0, !dbg !3750
  br i1 %8, label %9, label %60, !dbg !3751

; <label>:9:                                      ; preds = %2
  %10 = load i8, i8* %3, align 1, !dbg !3752
  %11 = zext i8 %10 to i32, !dbg !3752
  %12 = and i32 %11, 32, !dbg !3755
  %13 = icmp ne i32 %12, 0, !dbg !3755
  br i1 %13, label %14, label %37, !dbg !3756

; <label>:14:                                     ; preds = %9
  %15 = load i32*, i32** %4, align 8, !dbg !3757
  %16 = load i32, i32* %15, align 4, !dbg !3759
  %17 = and i32 %16, 24969471, !dbg !3759
  store i32 %17, i32* %15, align 4, !dbg !3759
  %18 = load i8, i8* %3, align 1, !dbg !3760
  %19 = zext i8 %18 to i32, !dbg !3760
  %20 = and i32 %19, 16, !dbg !3762
  %21 = icmp eq i32 %20, 0, !dbg !3763
  br i1 %21, label %22, label %30, !dbg !3764

; <label>:22:                                     ; preds = %14
  %23 = load i8, i8* %3, align 1, !dbg !3765
  %24 = zext i8 %23 to i32, !dbg !3765
  %25 = and i32 %24, 15, !dbg !3766
  %26 = shl i32 %25, 8, !dbg !3767
  %27 = load i32*, i32** %4, align 8, !dbg !3768
  %28 = load i32, i32* %27, align 4, !dbg !3769
  %29 = or i32 %28, %26, !dbg !3769
  store i32 %29, i32* %27, align 4, !dbg !3769
  br label %36, !dbg !3770

; <label>:30:                                     ; preds = %14
  %31 = load i32*, i32** %4, align 8, !dbg !3771
  %32 = load i32, i32* %31, align 4, !dbg !3773
  %33 = and i32 %32, 24969471, !dbg !3774
  %34 = or i32 %33, 131072, !dbg !3775
  %35 = load i32*, i32** %4, align 8, !dbg !3776
  store i32 %34, i32* %35, align 4, !dbg !3777
  br label %36

; <label>:36:                                     ; preds = %30, %22
  br label %59, !dbg !3778

; <label>:37:                                     ; preds = %9
  %38 = load i32*, i32** %4, align 8, !dbg !3779
  %39 = load i32, i32* %38, align 4, !dbg !3781
  %40 = and i32 %39, 41877248, !dbg !3781
  store i32 %40, i32* %38, align 4, !dbg !3781
  %41 = load i8, i8* %3, align 1, !dbg !3782
  %42 = zext i8 %41 to i32, !dbg !3782
  %43 = and i32 %42, 16, !dbg !3784
  %44 = icmp eq i32 %43, 0, !dbg !3785
  br i1 %44, label %45, label %52, !dbg !3786

; <label>:45:                                     ; preds = %37
  %46 = load i8, i8* %3, align 1, !dbg !3787
  %47 = zext i8 %46 to i32, !dbg !3787
  %48 = and i32 %47, 15, !dbg !3788
  %49 = load i32*, i32** %4, align 8, !dbg !3789
  %50 = load i32, i32* %49, align 4, !dbg !3790
  %51 = or i32 %50, %48, !dbg !3790
  store i32 %51, i32* %49, align 4, !dbg !3790
  br label %58, !dbg !3791

; <label>:52:                                     ; preds = %37
  %53 = load i32*, i32** %4, align 8, !dbg !3792
  %54 = load i32, i32* %53, align 4, !dbg !3794
  %55 = and i32 %54, 41877248, !dbg !3795
  %56 = or i32 %55, 65536, !dbg !3796
  %57 = load i32*, i32** %4, align 8, !dbg !3797
  store i32 %56, i32* %57, align 4, !dbg !3798
  br label %58

; <label>:58:                                     ; preds = %52, %45
  br label %59

; <label>:59:                                     ; preds = %58, %36
  br label %92, !dbg !3799

; <label>:60:                                     ; preds = %2
  %61 = load i8, i8* %3, align 1, !dbg !3800
  %62 = zext i8 %61 to i32, !dbg !3800
  switch i32 %62, label %91 [
    i32 131, label %63
    i32 132, label %67
    i32 134, label %71
    i32 135, label %75
    i32 136, label %79
    i32 137, label %83
    i32 130, label %84
  ], !dbg !3802

; <label>:63:                                     ; preds = %60
  %64 = load i32*, i32** %4, align 8, !dbg !3803
  %65 = load i32, i32* %64, align 4, !dbg !3805
  %66 = xor i32 %65, 1048576, !dbg !3805
  store i32 %66, i32* %64, align 4, !dbg !3805
  br label %91, !dbg !3806

; <label>:67:                                     ; preds = %60
  %68 = load i32*, i32** %4, align 8, !dbg !3807
  %69 = load i32, i32* %68, align 4, !dbg !3808
  %70 = xor i32 %69, 2097152, !dbg !3808
  store i32 %70, i32* %68, align 4, !dbg !3808
  br label %91, !dbg !3809

; <label>:71:                                     ; preds = %60
  %72 = load i32*, i32** %4, align 8, !dbg !3810
  %73 = load i32, i32* %72, align 4, !dbg !3811
  %74 = xor i32 %73, 524288, !dbg !3811
  store i32 %74, i32* %72, align 4, !dbg !3811
  br label %91, !dbg !3812

; <label>:75:                                     ; preds = %60
  %76 = load i32*, i32** %4, align 8, !dbg !3813
  %77 = load i32, i32* %76, align 4, !dbg !3814
  %78 = xor i32 %77, 262144, !dbg !3814
  store i32 %78, i32* %76, align 4, !dbg !3814
  br label %91, !dbg !3815

; <label>:79:                                     ; preds = %60
  %80 = load i32*, i32** %4, align 8, !dbg !3816
  %81 = load i32, i32* %80, align 4, !dbg !3817
  %82 = xor i32 %81, 4194304, !dbg !3817
  store i32 %82, i32* %80, align 4, !dbg !3817
  br label %91, !dbg !3818

; <label>:83:                                     ; preds = %60
  br label %91, !dbg !3819

; <label>:84:                                     ; preds = %60
  %85 = load i32*, i32** %4, align 8, !dbg !3820
  %86 = load i32, i32* %85, align 4, !dbg !3821
  %87 = and i32 %86, 41877248, !dbg !3821
  store i32 %87, i32* %85, align 4, !dbg !3821
  %88 = load i32*, i32** %4, align 8, !dbg !3822
  %89 = load i32, i32* %88, align 4, !dbg !3823
  %90 = and i32 %89, -16777217, !dbg !3823
  store i32 %90, i32* %88, align 4, !dbg !3823
  br label %91, !dbg !3824

; <label>:91:                                     ; preds = %60, %84, %83, %79, %75, %71, %67, %63
  br label %92

; <label>:92:                                     ; preds = %91, %59
  ret void, !dbg !3825
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @read_unichar(i8*, i8**, i32*) #7 !dbg !3826 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3834, metadata !185), !dbg !3835
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !3836, metadata !185), !dbg !3837
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !3838, metadata !185), !dbg !3839
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3840, metadata !185), !dbg !3841
  %8 = load i8*, i8** %4, align 8, !dbg !3842
  %9 = call i32 @g_utf8_get_char_validated(i8* %8, i64 -1) #11, !dbg !3843
  store i32 %9, i32* %7, align 4, !dbg !3841
  %10 = load i32, i32* %7, align 4, !dbg !3844
  %11 = and i32 %10, -2147483648, !dbg !3846
  %12 = icmp ne i32 %11, 0, !dbg !3846
  br i1 %12, label %13, label %18, !dbg !3847

; <label>:13:                                     ; preds = %3
  store i32 65533, i32* %7, align 4, !dbg !3848
  %14 = load i8*, i8** %4, align 8, !dbg !3850
  %15 = getelementptr inbounds i8, i8* %14, i64 1, !dbg !3851
  %16 = load i8**, i8*** %5, align 8, !dbg !3852
  store i8* %15, i8** %16, align 8, !dbg !3853
  %17 = load i32*, i32** %6, align 8, !dbg !3854
  store i32 1, i32* %17, align 4, !dbg !3855
  br label %40, !dbg !3856

; <label>:18:                                     ; preds = %3
  %19 = load i8*, i8** %4, align 8, !dbg !3857
  %20 = load i8*, i8** %4, align 8, !dbg !3859
  %21 = load i8, i8* %20, align 1, !dbg !3860
  %22 = zext i8 %21 to i64, !dbg !3861
  %23 = load i8*, i8** @g_utf8_skip, align 8, !dbg !3861
  %24 = getelementptr inbounds i8, i8* %23, i64 %22, !dbg !3861
  %25 = load i8, i8* %24, align 1, !dbg !3861
  %26 = sext i8 %25 to i32, !dbg !3861
  %27 = sext i32 %26 to i64, !dbg !3862
  %28 = getelementptr inbounds i8, i8* %19, i64 %27, !dbg !3862
  %29 = load i8**, i8*** %5, align 8, !dbg !3863
  store i8* %28, i8** %29, align 8, !dbg !3864
  %30 = load i32, i32* %7, align 4, !dbg !3865
  %31 = and i32 %30, -129, !dbg !3866
  %32 = icmp uge i32 %31, 32, !dbg !3867
  br i1 %32, label %33, label %36, !dbg !3868

; <label>:33:                                     ; preds = %18
  %34 = load i32, i32* %7, align 4, !dbg !3869
  %35 = call i32 @i_wcwidth(i32 %34), !dbg !3871
  br label %37, !dbg !3872

; <label>:36:                                     ; preds = %18
  br label %37, !dbg !3873

; <label>:37:                                     ; preds = %36, %33
  %38 = phi i32 [ %35, %33 ], [ 1, %36 ], !dbg !3875
  %39 = load i32*, i32** %6, align 8, !dbg !3877
  store i32 %38, i32* %39, align 4, !dbg !3878
  br label %40

; <label>:40:                                     ; preds = %37, %13
  %41 = load i32, i32* %7, align 4, !dbg !3879
  ret i32 %41, !dbg !3880
}

declare noalias i8* @g_malloc(i64) #2

; Function Attrs: nounwind readonly
declare i32 @g_utf8_get_char_validated(i8*, i64) #8

declare i32 @i_wcwidth(i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @view_line_draw(%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32, i32, i32) #0 !dbg !3881 {
  %6 = alloca i32, align 4
  %7 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  %8 = alloca %struct._LINE_REC*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)*, align 8
  %13 = alloca %struct.LINE_CACHE_REC*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct._TEXT_BUFFER_VIEW_REC* %0, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_BUFFER_VIEW_REC** %7, metadata !3884, metadata !185), !dbg !3885
  store %struct._LINE_REC* %1, %struct._LINE_REC** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._LINE_REC** %8, metadata !3886, metadata !185), !dbg !3887
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !3888, metadata !185), !dbg !3889
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !3890, metadata !185), !dbg !3891
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !3892, metadata !185), !dbg !3893
  call void @llvm.dbg.declare(metadata i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)** %12, metadata !3894, metadata !185), !dbg !3895
  call void @llvm.dbg.declare(metadata %struct.LINE_CACHE_REC** %13, metadata !3896, metadata !185), !dbg !3897
  call void @llvm.dbg.declare(metadata i8** %14, metadata !3898, metadata !185), !dbg !3899
  call void @llvm.dbg.declare(metadata i8** %15, metadata !3900, metadata !185), !dbg !3901
  call void @llvm.dbg.declare(metadata i8** %16, metadata !3902, metadata !185), !dbg !3903
  call void @llvm.dbg.declare(metadata i8** %17, metadata !3904, metadata !185), !dbg !3905
  call void @llvm.dbg.declare(metadata i32* %18, metadata !3906, metadata !185), !dbg !3907
  call void @llvm.dbg.declare(metadata i32* %19, metadata !3908, metadata !185), !dbg !3909
  call void @llvm.dbg.declare(metadata i32* %20, metadata !3910, metadata !185), !dbg !3911
  call void @llvm.dbg.declare(metadata i32* %21, metadata !3912, metadata !185), !dbg !3913
  call void @llvm.dbg.declare(metadata i32* %22, metadata !3914, metadata !185), !dbg !3915
  call void @llvm.dbg.declare(metadata i32* %23, metadata !3916, metadata !185), !dbg !3917
  call void @llvm.dbg.declare(metadata i32* %24, metadata !3918, metadata !185), !dbg !3919
  call void @llvm.dbg.declare(metadata i32* %25, metadata !3920, metadata !185), !dbg !3921
  %26 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !3922
  %27 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %26, i32 0, i32 16, !dbg !3924
  %28 = load i8, i8* %27, align 8, !dbg !3924
  %29 = lshr i8 %28, 6, !dbg !3924
  %30 = and i8 %29, 1, !dbg !3924
  %31 = zext i8 %30 to i32, !dbg !3924
  %32 = icmp ne i32 %31, 0, !dbg !3922
  br i1 %32, label %33, label %34, !dbg !3925

; <label>:33:                                     ; preds = %5
  store i32 0, i32* %6, align 4, !dbg !3926
  br label %432, !dbg !3926

; <label>:34:                                     ; preds = %5
  %35 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !3927
  %36 = load %struct._LINE_REC*, %struct._LINE_REC** %8, align 8, !dbg !3928
  %37 = call %struct.LINE_CACHE_REC* @textbuffer_view_get_line_cache(%struct._TEXT_BUFFER_VIEW_REC* %35, %struct._LINE_REC* %36), !dbg !3929
  store %struct.LINE_CACHE_REC* %37, %struct.LINE_CACHE_REC** %13, align 8, !dbg !3930
  %38 = load i32, i32* %9, align 4, !dbg !3931
  %39 = load %struct.LINE_CACHE_REC*, %struct.LINE_CACHE_REC** %13, align 8, !dbg !3933
  %40 = getelementptr inbounds %struct.LINE_CACHE_REC, %struct.LINE_CACHE_REC* %39, i32 0, i32 1, !dbg !3934
  %41 = load i32, i32* %40, align 8, !dbg !3934
  %42 = icmp sge i32 %38, %41, !dbg !3935
  br i1 %42, label %43, label %44, !dbg !3936

; <label>:43:                                     ; preds = %34
  store i32 0, i32* %6, align 4, !dbg !3937
  br label %432, !dbg !3937

; <label>:44:                                     ; preds = %34
  store i32 196608, i32* %20, align 4, !dbg !3938
  store i32 1, i32* %23, align 4, !dbg !3939
  store i32 0, i32* %24, align 4, !dbg !3940
  store i32 0, i32* %21, align 4, !dbg !3941
  store i32 0, i32* %19, align 4, !dbg !3942
  store i32 1, i32* %22, align 4, !dbg !3943
  %45 = load i32, i32* %9, align 4, !dbg !3944
  %46 = icmp eq i32 %45, 0, !dbg !3945
  br i1 %46, label %47, label %51, !dbg !3944

; <label>:47:                                     ; preds = %44
  %48 = load %struct._LINE_REC*, %struct._LINE_REC** %8, align 8, !dbg !3946
  %49 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %48, i32 0, i32 2, !dbg !3948
  %50 = load i8*, i8** %49, align 8, !dbg !3948
  br label %60, !dbg !3949

; <label>:51:                                     ; preds = %44
  %52 = load i32, i32* %9, align 4, !dbg !3950
  %53 = sub nsw i32 %52, 1, !dbg !3952
  %54 = sext i32 %53 to i64, !dbg !3953
  %55 = load %struct.LINE_CACHE_REC*, %struct.LINE_CACHE_REC** %13, align 8, !dbg !3953
  %56 = getelementptr inbounds %struct.LINE_CACHE_REC, %struct.LINE_CACHE_REC* %55, i32 0, i32 2, !dbg !3954
  %57 = getelementptr inbounds [1 x %struct.LINE_CACHE_SUB_REC], [1 x %struct.LINE_CACHE_SUB_REC]* %56, i64 0, i64 %54, !dbg !3953
  %58 = getelementptr inbounds %struct.LINE_CACHE_SUB_REC, %struct.LINE_CACHE_SUB_REC* %57, i32 0, i32 0, !dbg !3955
  %59 = load i8*, i8** %58, align 8, !dbg !3955
  br label %60, !dbg !3956

; <label>:60:                                     ; preds = %51, %47
  %61 = phi i8* [ %50, %47 ], [ %59, %51 ], !dbg !3957
  store i8* %61, i8** %14, align 8, !dbg !3959
  store i8* %61, i8** %16, align 8, !dbg !3960
  br label %62, !dbg !3961

; <label>:62:                                     ; preds = %404, %281, %238, %60
  %63 = load i8*, i8** %14, align 8, !dbg !3962
  %64 = load i8*, i8** %16, align 8, !dbg !3967
  %65 = icmp eq i8* %63, %64, !dbg !3968
  br i1 %65, label %66, label %220, !dbg !3969

; <label>:66:                                     ; preds = %62
  %67 = load i32, i32* %24, align 4, !dbg !3970
  %68 = icmp ne i32 %67, 0, !dbg !3970
  br i1 %68, label %69, label %90, !dbg !3973

; <label>:69:                                     ; preds = %66
  %70 = load i32, i32* %19, align 4, !dbg !3974
  %71 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !3976
  %72 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %71, i32 0, i32 3, !dbg !3977
  %73 = load i32, i32* %72, align 8, !dbg !3977
  %74 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !3978
  %75 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %74, i32 0, i32 3, !dbg !3979
  %76 = load i32, i32* %75, align 8, !dbg !3979
  %77 = load i32, i32* @term_width, align 4, !dbg !3980
  %78 = icmp eq i32 %76, %77, !dbg !3981
  %79 = select i1 %78, i32 0, i32 1, !dbg !3978
  %80 = add nsw i32 %73, %79, !dbg !3982
  %81 = icmp slt i32 %70, %80, !dbg !3983
  br i1 %81, label %82, label %90, !dbg !3984

; <label>:82:                                     ; preds = %69
  %83 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !3985
  %84 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %83, i32 0, i32 2, !dbg !3987
  %85 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %84, align 8, !dbg !3987
  call void @term_set_color(%struct._TERM_WINDOW* %85, i32 196608), !dbg !3988
  %86 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !3989
  %87 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %86, i32 0, i32 2, !dbg !3990
  %88 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %87, align 8, !dbg !3990
  %89 = load i32, i32* %10, align 4, !dbg !3991
  call void @term_window_clrtoeol(%struct._TERM_WINDOW* %88, i32 %89), !dbg !3992
  br label %90, !dbg !3993

; <label>:90:                                     ; preds = %82, %69, %66
  %91 = load i32, i32* %22, align 4, !dbg !3994
  %92 = icmp ne i32 %91, 0, !dbg !3994
  br i1 %92, label %93, label %94, !dbg !3996

; <label>:93:                                     ; preds = %90
  store i32 0, i32* %22, align 4, !dbg !3997
  br label %102, !dbg !3998

; <label>:94:                                     ; preds = %90
  %95 = load i32, i32* %10, align 4, !dbg !3999
  %96 = add nsw i32 %95, 1, !dbg !3999
  store i32 %96, i32* %10, align 4, !dbg !3999
  %97 = load i32, i32* %11, align 4, !dbg !4001
  %98 = add nsw i32 %97, -1, !dbg !4001
  store i32 %98, i32* %11, align 4, !dbg !4001
  %99 = icmp eq i32 %98, 0, !dbg !4003
  br i1 %99, label %100, label %101, !dbg !4004

; <label>:100:                                    ; preds = %94
  br label %406, !dbg !4005

; <label>:101:                                    ; preds = %94
  br label %102

; <label>:102:                                    ; preds = %101, %93
  %103 = load i32, i32* %9, align 4, !dbg !4006
  %104 = icmp sgt i32 %103, 0, !dbg !4008
  br i1 %104, label %105, label %134, !dbg !4009

; <label>:105:                                    ; preds = %102
  %106 = load i32, i32* %9, align 4, !dbg !4010
  %107 = sub nsw i32 %106, 1, !dbg !4012
  %108 = sext i32 %107 to i64, !dbg !4013
  %109 = load %struct.LINE_CACHE_REC*, %struct.LINE_CACHE_REC** %13, align 8, !dbg !4013
  %110 = getelementptr inbounds %struct.LINE_CACHE_REC, %struct.LINE_CACHE_REC* %109, i32 0, i32 2, !dbg !4014
  %111 = getelementptr inbounds [1 x %struct.LINE_CACHE_SUB_REC], [1 x %struct.LINE_CACHE_SUB_REC]* %110, i64 0, i64 %108, !dbg !4013
  %112 = getelementptr inbounds %struct.LINE_CACHE_SUB_REC, %struct.LINE_CACHE_SUB_REC* %111, i32 0, i32 2, !dbg !4015
  %113 = load i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)*, i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)** %112, align 8, !dbg !4015
  store i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)* %113, i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)** %12, align 8, !dbg !4016
  %114 = load i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)*, i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)** %12, align 8, !dbg !4017
  %115 = icmp eq i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)* %114, null, !dbg !4019
  br i1 %115, label %116, label %125, !dbg !4020

; <label>:116:                                    ; preds = %105
  %117 = load i32, i32* %9, align 4, !dbg !4021
  %118 = sub nsw i32 %117, 1, !dbg !4022
  %119 = sext i32 %118 to i64, !dbg !4023
  %120 = load %struct.LINE_CACHE_REC*, %struct.LINE_CACHE_REC** %13, align 8, !dbg !4023
  %121 = getelementptr inbounds %struct.LINE_CACHE_REC, %struct.LINE_CACHE_REC* %120, i32 0, i32 2, !dbg !4024
  %122 = getelementptr inbounds [1 x %struct.LINE_CACHE_SUB_REC], [1 x %struct.LINE_CACHE_SUB_REC]* %121, i64 0, i64 %119, !dbg !4023
  %123 = getelementptr inbounds %struct.LINE_CACHE_SUB_REC, %struct.LINE_CACHE_SUB_REC* %122, i32 0, i32 1, !dbg !4025
  %124 = load i32, i32* %123, align 8, !dbg !4025
  store i32 %124, i32* %19, align 4, !dbg !4026
  br label %125, !dbg !4027

; <label>:125:                                    ; preds = %116, %105
  %126 = load i32, i32* %9, align 4, !dbg !4028
  %127 = sub nsw i32 %126, 1, !dbg !4029
  %128 = sext i32 %127 to i64, !dbg !4030
  %129 = load %struct.LINE_CACHE_REC*, %struct.LINE_CACHE_REC** %13, align 8, !dbg !4030
  %130 = getelementptr inbounds %struct.LINE_CACHE_REC, %struct.LINE_CACHE_REC* %129, i32 0, i32 2, !dbg !4031
  %131 = getelementptr inbounds [1 x %struct.LINE_CACHE_SUB_REC], [1 x %struct.LINE_CACHE_SUB_REC]* %130, i64 0, i64 %128, !dbg !4030
  %132 = getelementptr inbounds %struct.LINE_CACHE_SUB_REC, %struct.LINE_CACHE_SUB_REC* %131, i32 0, i32 3, !dbg !4032
  %133 = load i32, i32* %132, align 8, !dbg !4032
  store i32 %133, i32* %20, align 4, !dbg !4033
  br label %135, !dbg !4034

; <label>:134:                                    ; preds = %102
  store i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)* null, i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)** %12, align 8, !dbg !4035
  br label %135

; <label>:135:                                    ; preds = %134, %125
  %136 = load i32, i32* %19, align 4, !dbg !4037
  %137 = icmp eq i32 %136, 0, !dbg !4039
  br i1 %137, label %138, label %142, !dbg !4040

; <label>:138:                                    ; preds = %135
  %139 = load i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)*, i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)** %12, align 8, !dbg !4041
  %140 = icmp eq i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)* %139, null, !dbg !4043
  br i1 %140, label %141, label %142, !dbg !4044

; <label>:141:                                    ; preds = %138
  store i32 1, i32* %24, align 4, !dbg !4045
  br label %163, !dbg !4046

; <label>:142:                                    ; preds = %138, %135
  %143 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !4047
  %144 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %143, i32 0, i32 2, !dbg !4049
  %145 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %144, align 8, !dbg !4049
  call void @term_set_color(%struct._TERM_WINDOW* %145, i32 196608), !dbg !4050
  %146 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !4051
  %147 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %146, i32 0, i32 2, !dbg !4052
  %148 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %147, align 8, !dbg !4052
  %149 = load i32, i32* %10, align 4, !dbg !4053
  call void @term_move(%struct._TERM_WINDOW* %148, i32 0, i32 %149), !dbg !4054
  %150 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !4055
  %151 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %150, i32 0, i32 2, !dbg !4056
  %152 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %151, align 8, !dbg !4056
  %153 = load i32, i32* %10, align 4, !dbg !4057
  call void @term_window_clrtoeol(%struct._TERM_WINDOW* %152, i32 %153), !dbg !4058
  %154 = load i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)*, i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)** %12, align 8, !dbg !4059
  %155 = icmp ne i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)* %154, null, !dbg !4061
  br i1 %155, label %156, label %162, !dbg !4062

; <label>:156:                                    ; preds = %142
  %157 = load i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)*, i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)** %12, align 8, !dbg !4063
  %158 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !4064
  %159 = load %struct._LINE_REC*, %struct._LINE_REC** %8, align 8, !dbg !4065
  %160 = load i32, i32* %10, align 4, !dbg !4066
  %161 = call i32 %157(%struct._TEXT_BUFFER_VIEW_REC* %158, %struct._LINE_REC* %159, i32 %160), !dbg !4063
  store i32 %161, i32* %19, align 4, !dbg !4067
  br label %162, !dbg !4068

; <label>:162:                                    ; preds = %156, %142
  br label %163

; <label>:163:                                    ; preds = %162, %141
  %164 = load i32, i32* %23, align 4, !dbg !4069
  %165 = icmp ne i32 %164, 0, !dbg !4069
  br i1 %165, label %169, label %166, !dbg !4071

; <label>:166:                                    ; preds = %163
  %167 = load i32, i32* %19, align 4, !dbg !4072
  %168 = icmp sgt i32 %167, 0, !dbg !4074
  br i1 %168, label %169, label %175, !dbg !4075

; <label>:169:                                    ; preds = %166, %163
  %170 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !4076
  %171 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %170, i32 0, i32 2, !dbg !4077
  %172 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %171, align 8, !dbg !4077
  %173 = load i32, i32* %19, align 4, !dbg !4078
  %174 = load i32, i32* %10, align 4, !dbg !4079
  call void @term_move(%struct._TERM_WINDOW* %172, i32 %173, i32 %174), !dbg !4080
  br label %175, !dbg !4080

; <label>:175:                                    ; preds = %169, %166
  %176 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !4081
  %177 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %176, i32 0, i32 2, !dbg !4082
  %178 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %177, align 8, !dbg !4082
  %179 = load i32, i32* %20, align 4, !dbg !4083
  call void @term_set_color(%struct._TERM_WINDOW* %178, i32 %179), !dbg !4084
  %180 = load i32, i32* %9, align 4, !dbg !4085
  %181 = load %struct.LINE_CACHE_REC*, %struct.LINE_CACHE_REC** %13, align 8, !dbg !4087
  %182 = getelementptr inbounds %struct.LINE_CACHE_REC, %struct.LINE_CACHE_REC* %181, i32 0, i32 1, !dbg !4088
  %183 = load i32, i32* %182, align 8, !dbg !4088
  %184 = sub nsw i32 %183, 1, !dbg !4089
  %185 = icmp eq i32 %180, %184, !dbg !4090
  br i1 %185, label %186, label %187, !dbg !4091

; <label>:186:                                    ; preds = %175
  store i8* null, i8** %16, align 8, !dbg !4092
  store i32 0, i32* %23, align 4, !dbg !4094
  br label %215, !dbg !4095

; <label>:187:                                    ; preds = %175
  %188 = load i32, i32* %9, align 4, !dbg !4096
  %189 = sext i32 %188 to i64, !dbg !4098
  %190 = load %struct.LINE_CACHE_REC*, %struct.LINE_CACHE_REC** %13, align 8, !dbg !4098
  %191 = getelementptr inbounds %struct.LINE_CACHE_REC, %struct.LINE_CACHE_REC* %190, i32 0, i32 2, !dbg !4099
  %192 = getelementptr inbounds [1 x %struct.LINE_CACHE_SUB_REC], [1 x %struct.LINE_CACHE_SUB_REC]* %191, i64 0, i64 %189, !dbg !4098
  %193 = getelementptr inbounds %struct.LINE_CACHE_SUB_REC, %struct.LINE_CACHE_SUB_REC* %192, i32 0, i32 0, !dbg !4100
  %194 = load i8*, i8** %193, align 8, !dbg !4100
  store i8* %194, i8** %16, align 8, !dbg !4101
  %195 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !4102
  %196 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %195, i32 0, i32 3, !dbg !4104
  %197 = load i32, i32* %196, align 8, !dbg !4104
  %198 = load i32, i32* @term_width, align 4, !dbg !4105
  %199 = icmp eq i32 %197, %198, !dbg !4106
  br i1 %199, label %200, label %213, !dbg !4107

; <label>:200:                                    ; preds = %187
  %201 = load i32, i32* %9, align 4, !dbg !4108
  %202 = sext i32 %201 to i64, !dbg !4110
  %203 = load %struct.LINE_CACHE_REC*, %struct.LINE_CACHE_REC** %13, align 8, !dbg !4110
  %204 = getelementptr inbounds %struct.LINE_CACHE_REC, %struct.LINE_CACHE_REC* %203, i32 0, i32 2, !dbg !4111
  %205 = getelementptr inbounds [1 x %struct.LINE_CACHE_SUB_REC], [1 x %struct.LINE_CACHE_SUB_REC]* %204, i64 0, i64 %202, !dbg !4110
  %206 = getelementptr inbounds %struct.LINE_CACHE_SUB_REC, %struct.LINE_CACHE_SUB_REC* %205, i32 0, i32 4, !dbg !4112
  %207 = load i8, i8* %206, align 4, !dbg !4112
  %208 = and i8 %207, 1, !dbg !4112
  %209 = zext i8 %208 to i32, !dbg !4112
  %210 = icmp ne i32 %209, 0, !dbg !4113
  %211 = xor i1 %210, true, !dbg !4113
  %212 = zext i1 %211 to i32, !dbg !4113
  store i32 %212, i32* %23, align 4, !dbg !4114
  br label %214, !dbg !4115

; <label>:213:                                    ; preds = %187
  store i32 1, i32* %23, align 4, !dbg !4116
  br label %214

; <label>:214:                                    ; preds = %213, %200
  br label %215

; <label>:215:                                    ; preds = %214, %186
  %216 = load i32, i32* %21, align 4, !dbg !4118
  %217 = add nsw i32 %216, 1, !dbg !4118
  store i32 %217, i32* %21, align 4, !dbg !4118
  %218 = load i32, i32* %9, align 4, !dbg !4119
  %219 = add nsw i32 %218, 1, !dbg !4119
  store i32 %219, i32* %9, align 4, !dbg !4119
  br label %220, !dbg !4120

; <label>:220:                                    ; preds = %215, %62
  %221 = load i8*, i8** %14, align 8, !dbg !4121
  %222 = load i8, i8* %221, align 1, !dbg !4123
  %223 = zext i8 %222 to i32, !dbg !4123
  %224 = icmp eq i32 %223, 0, !dbg !4124
  br i1 %224, label %225, label %284, !dbg !4125

; <label>:225:                                    ; preds = %220
  %226 = load i8*, i8** %14, align 8, !dbg !4126
  %227 = getelementptr inbounds i8, i8* %226, i32 1, !dbg !4126
  store i8* %227, i8** %14, align 8, !dbg !4126
  %228 = load i8*, i8** %14, align 8, !dbg !4128
  %229 = load i8, i8* %228, align 1, !dbg !4130
  %230 = zext i8 %229 to i32, !dbg !4130
  %231 = icmp eq i32 %230, 128, !dbg !4131
  br i1 %231, label %232, label %233, !dbg !4132

; <label>:232:                                    ; preds = %225
  br label %406, !dbg !4133

; <label>:233:                                    ; preds = %225
  %234 = load i8*, i8** %14, align 8, !dbg !4134
  %235 = load i8, i8* %234, align 1, !dbg !4136
  %236 = zext i8 %235 to i32, !dbg !4136
  %237 = icmp eq i32 %236, 129, !dbg !4137
  br i1 %237, label %238, label %243, !dbg !4138

; <label>:238:                                    ; preds = %233
  %239 = bitcast i8** %17 to i8*, !dbg !4139
  %240 = load i8*, i8** %14, align 8, !dbg !4141
  %241 = getelementptr inbounds i8, i8* %240, i64 1, !dbg !4142
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %239, i8* %241, i64 8, i32 1, i1 false), !dbg !4139
  %242 = load i8*, i8** %17, align 8, !dbg !4143
  store i8* %242, i8** %14, align 8, !dbg !4144
  br label %62, !dbg !4145, !llvm.loop !4146

; <label>:243:                                    ; preds = %233
  %244 = load i8*, i8** %14, align 8, !dbg !4147
  %245 = load i8, i8* %244, align 1, !dbg !4150
  %246 = zext i8 %245 to i32, !dbg !4150
  %247 = icmp eq i32 %246, 138, !dbg !4151
  br i1 %247, label %248, label %257, !dbg !4152

; <label>:248:                                    ; preds = %243
  %249 = load i32, i32* %20, align 4, !dbg !4153
  %250 = and i32 %249, 41877248, !dbg !4154
  %251 = and i32 %250, -16777217, !dbg !4155
  %252 = load i8*, i8** %14, align 8, !dbg !4156
  %253 = getelementptr inbounds i8, i8* %252, i32 1, !dbg !4156
  store i8* %253, i8** %14, align 8, !dbg !4156
  %254 = load i8, i8* %253, align 1, !dbg !4157
  %255 = zext i8 %254 to i32, !dbg !4157
  %256 = or i32 %251, %255, !dbg !4158
  store i32 %256, i32* %20, align 4, !dbg !4159
  br label %276, !dbg !4160

; <label>:257:                                    ; preds = %243
  %258 = load i8*, i8** %14, align 8, !dbg !4161
  %259 = load i8, i8* %258, align 1, !dbg !4163
  %260 = zext i8 %259 to i32, !dbg !4163
  %261 = icmp eq i32 %260, 139, !dbg !4164
  br i1 %261, label %262, label %272, !dbg !4165

; <label>:262:                                    ; preds = %257
  %263 = load i32, i32* %20, align 4, !dbg !4166
  %264 = and i32 %263, 24969471, !dbg !4167
  %265 = and i32 %264, -33554433, !dbg !4168
  %266 = load i8*, i8** %14, align 8, !dbg !4169
  %267 = getelementptr inbounds i8, i8* %266, i32 1, !dbg !4169
  store i8* %267, i8** %14, align 8, !dbg !4169
  %268 = load i8, i8* %267, align 1, !dbg !4170
  %269 = zext i8 %268 to i32, !dbg !4170
  %270 = shl i32 %269, 8, !dbg !4171
  %271 = or i32 %265, %270, !dbg !4172
  store i32 %271, i32* %20, align 4, !dbg !4173
  br label %275, !dbg !4174

; <label>:272:                                    ; preds = %257
  %273 = load i8*, i8** %14, align 8, !dbg !4175
  %274 = load i8, i8* %273, align 1, !dbg !4176
  call void @update_cmd_color(i8 zeroext %274, i32* %20), !dbg !4177
  br label %275

; <label>:275:                                    ; preds = %272, %262
  br label %276

; <label>:276:                                    ; preds = %275, %248
  %277 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !4178
  %278 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %277, i32 0, i32 2, !dbg !4179
  %279 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %278, align 8, !dbg !4179
  %280 = load i32, i32* %20, align 4, !dbg !4180
  call void @term_set_color(%struct._TERM_WINDOW* %279, i32 %280), !dbg !4181
  br label %281

; <label>:281:                                    ; preds = %276
  %282 = load i8*, i8** %14, align 8, !dbg !4182
  %283 = getelementptr inbounds i8, i8* %282, i32 1, !dbg !4182
  store i8* %283, i8** %14, align 8, !dbg !4182
  br label %62, !dbg !4183, !llvm.loop !4146

; <label>:284:                                    ; preds = %220
  %285 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !4184
  %286 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %285, i32 0, i32 16, !dbg !4186
  %287 = load i8, i8* %286, align 8, !dbg !4186
  %288 = lshr i8 %287, 2, !dbg !4186
  %289 = and i8 %288, 1, !dbg !4186
  %290 = zext i8 %289 to i32, !dbg !4186
  %291 = icmp ne i32 %290, 0, !dbg !4184
  br i1 %291, label %292, label %295, !dbg !4187

; <label>:292:                                    ; preds = %284
  %293 = load i8*, i8** %14, align 8, !dbg !4188
  %294 = call i32 @read_unichar(i8* %293, i8** %15, i32* %25), !dbg !4190
  store i32 %294, i32* %18, align 4, !dbg !4191
  br label %345, !dbg !4192

; <label>:295:                                    ; preds = %284
  %296 = load i8*, i8** %14, align 8, !dbg !4193
  %297 = load i8, i8* %296, align 1, !dbg !4195
  %298 = zext i8 %297 to i32, !dbg !4195
  store i32 %298, i32* %18, align 4, !dbg !4196
  %299 = load i8*, i8** %14, align 8, !dbg !4197
  store i8* %299, i8** %15, align 8, !dbg !4198
  %300 = load i32, i32* @term_type, align 4, !dbg !4199
  %301 = icmp eq i32 %300, 2, !dbg !4201
  br i1 %301, label %302, label %339, !dbg !4202

; <label>:302:                                    ; preds = %295
  %303 = load i8*, i8** %15, align 8, !dbg !4203
  %304 = getelementptr inbounds i8, i8* %303, i64 0, !dbg !4203
  %305 = load i8, i8* %304, align 1, !dbg !4203
  %306 = zext i8 %305 to i32, !dbg !4204
  %307 = icmp sle i32 129, %306, !dbg !4205
  br i1 %307, label %308, label %339, !dbg !4206

; <label>:308:                                    ; preds = %302
  %309 = load i8*, i8** %15, align 8, !dbg !4207
  %310 = getelementptr inbounds i8, i8* %309, i64 0, !dbg !4207
  %311 = load i8, i8* %310, align 1, !dbg !4207
  %312 = zext i8 %311 to i32, !dbg !4209
  %313 = icmp sle i32 %312, 254, !dbg !4210
  br i1 %313, label %314, label %339, !dbg !4211

; <label>:314:                                    ; preds = %308
  %315 = load i8*, i8** %15, align 8, !dbg !4212
  %316 = getelementptr inbounds i8, i8* %315, i64 1, !dbg !4212
  %317 = load i8, i8* %316, align 1, !dbg !4212
  %318 = zext i8 %317 to i32, !dbg !4214
  %319 = icmp sle i32 64, %318, !dbg !4215
  br i1 %319, label %320, label %326, !dbg !4216

; <label>:320:                                    ; preds = %314
  %321 = load i8*, i8** %15, align 8, !dbg !4217
  %322 = getelementptr inbounds i8, i8* %321, i64 1, !dbg !4217
  %323 = load i8, i8* %322, align 1, !dbg !4217
  %324 = zext i8 %323 to i32, !dbg !4219
  %325 = icmp sle i32 %324, 126, !dbg !4220
  br i1 %325, label %338, label %326, !dbg !4221

; <label>:326:                                    ; preds = %320, %314
  %327 = load i8*, i8** %15, align 8, !dbg !4222
  %328 = getelementptr inbounds i8, i8* %327, i64 1, !dbg !4222
  %329 = load i8, i8* %328, align 1, !dbg !4222
  %330 = zext i8 %329 to i32, !dbg !4224
  %331 = icmp sle i32 128, %330, !dbg !4225
  br i1 %331, label %332, label %339, !dbg !4226

; <label>:332:                                    ; preds = %326
  %333 = load i8*, i8** %15, align 8, !dbg !4227
  %334 = getelementptr inbounds i8, i8* %333, i64 1, !dbg !4227
  %335 = load i8, i8* %334, align 1, !dbg !4227
  %336 = zext i8 %335 to i32, !dbg !4229
  %337 = icmp sle i32 %336, 254, !dbg !4230
  br i1 %337, label %338, label %339, !dbg !4231

; <label>:338:                                    ; preds = %332, %320
  store i32 2, i32* %25, align 4, !dbg !4233
  br label %340, !dbg !4234

; <label>:339:                                    ; preds = %332, %326, %308, %302, %295
  store i32 1, i32* %25, align 4, !dbg !4235
  br label %340

; <label>:340:                                    ; preds = %339, %338
  %341 = load i32, i32* %25, align 4, !dbg !4236
  %342 = load i8*, i8** %15, align 8, !dbg !4237
  %343 = sext i32 %341 to i64, !dbg !4237
  %344 = getelementptr inbounds i8, i8* %342, i64 %343, !dbg !4237
  store i8* %344, i8** %15, align 8, !dbg !4237
  br label %345

; <label>:345:                                    ; preds = %340, %292
  %346 = load i32, i32* %25, align 4, !dbg !4238
  %347 = load i32, i32* %19, align 4, !dbg !4239
  %348 = add nsw i32 %347, %346, !dbg !4239
  store i32 %348, i32* %19, align 4, !dbg !4239
  %349 = load i32, i32* %19, align 4, !dbg !4240
  %350 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !4242
  %351 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %350, i32 0, i32 3, !dbg !4243
  %352 = load i32, i32* %351, align 8, !dbg !4243
  %353 = icmp sle i32 %349, %352, !dbg !4244
  br i1 %353, label %354, label %404, !dbg !4245

; <label>:354:                                    ; preds = %345
  %355 = load i32, i32* %18, align 4, !dbg !4246
  %356 = and i32 %355, -129, !dbg !4249
  %357 = icmp uge i32 %356, 32, !dbg !4250
  br i1 %357, label %358, label %387, !dbg !4251

; <label>:358:                                    ; preds = %354
  %359 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !4252
  %360 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %359, i32 0, i32 16, !dbg !4255
  %361 = load i8, i8* %360, align 8, !dbg !4255
  %362 = lshr i8 %361, 2, !dbg !4255
  %363 = and i8 %362, 1, !dbg !4255
  %364 = zext i8 %363 to i32, !dbg !4255
  %365 = icmp ne i32 %364, 0, !dbg !4252
  br i1 %365, label %366, label %371, !dbg !4256

; <label>:366:                                    ; preds = %358
  %367 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !4257
  %368 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %367, i32 0, i32 2, !dbg !4258
  %369 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %368, align 8, !dbg !4258
  %370 = load i32, i32* %18, align 4, !dbg !4259
  call void @term_add_unichar(%struct._TERM_WINDOW* %369, i32 %370), !dbg !4260
  br label %386, !dbg !4260

; <label>:371:                                    ; preds = %358
  br label %372, !dbg !4261

; <label>:372:                                    ; preds = %382, %371
  %373 = load i8*, i8** %14, align 8, !dbg !4262
  %374 = load i8*, i8** %15, align 8, !dbg !4266
  %375 = icmp ult i8* %373, %374, !dbg !4267
  br i1 %375, label %376, label %385, !dbg !4268

; <label>:376:                                    ; preds = %372
  %377 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !4269
  %378 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %377, i32 0, i32 2, !dbg !4270
  %379 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %378, align 8, !dbg !4270
  %380 = load i8*, i8** %14, align 8, !dbg !4271
  %381 = load i8, i8* %380, align 1, !dbg !4272
  call void @term_addch(%struct._TERM_WINDOW* %379, i8 signext %381), !dbg !4273
  br label %382, !dbg !4273

; <label>:382:                                    ; preds = %376
  %383 = load i8*, i8** %14, align 8, !dbg !4274
  %384 = getelementptr inbounds i8, i8* %383, i32 1, !dbg !4274
  store i8* %384, i8** %14, align 8, !dbg !4274
  br label %372, !dbg !4276, !llvm.loop !4277

; <label>:385:                                    ; preds = %372
  br label %386

; <label>:386:                                    ; preds = %385, %366
  br label %403, !dbg !4278

; <label>:387:                                    ; preds = %354
  %388 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !4279
  %389 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %388, i32 0, i32 2, !dbg !4281
  %390 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %389, align 8, !dbg !4281
  call void @term_set_color(%struct._TERM_WINDOW* %390, i32 2293760), !dbg !4282
  %391 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !4283
  %392 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %391, i32 0, i32 2, !dbg !4284
  %393 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %392, align 8, !dbg !4284
  %394 = load i32, i32* %18, align 4, !dbg !4285
  %395 = and i32 %394, 127, !dbg !4286
  %396 = add i32 %395, 65, !dbg !4287
  %397 = sub i32 %396, 1, !dbg !4288
  %398 = trunc i32 %397 to i8, !dbg !4289
  call void @term_addch(%struct._TERM_WINDOW* %393, i8 signext %398), !dbg !4290
  %399 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !4291
  %400 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %399, i32 0, i32 2, !dbg !4292
  %401 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %400, align 8, !dbg !4292
  %402 = load i32, i32* %20, align 4, !dbg !4293
  call void @term_set_color(%struct._TERM_WINDOW* %401, i32 %402), !dbg !4294
  br label %403

; <label>:403:                                    ; preds = %387, %386
  br label %404, !dbg !4295

; <label>:404:                                    ; preds = %403, %345
  %405 = load i8*, i8** %15, align 8, !dbg !4296
  store i8* %405, i8** %14, align 8, !dbg !4297
  br label %62, !dbg !4298, !llvm.loop !4146

; <label>:406:                                    ; preds = %232, %100
  %407 = load i32, i32* %24, align 4, !dbg !4300
  %408 = icmp ne i32 %407, 0, !dbg !4300
  br i1 %408, label %409, label %430, !dbg !4302

; <label>:409:                                    ; preds = %406
  %410 = load i32, i32* %19, align 4, !dbg !4303
  %411 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !4305
  %412 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %411, i32 0, i32 3, !dbg !4306
  %413 = load i32, i32* %412, align 8, !dbg !4306
  %414 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !4307
  %415 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %414, i32 0, i32 3, !dbg !4308
  %416 = load i32, i32* %415, align 8, !dbg !4308
  %417 = load i32, i32* @term_width, align 4, !dbg !4309
  %418 = icmp eq i32 %416, %417, !dbg !4310
  %419 = select i1 %418, i32 0, i32 1, !dbg !4307
  %420 = add nsw i32 %413, %419, !dbg !4311
  %421 = icmp slt i32 %410, %420, !dbg !4312
  br i1 %421, label %422, label %430, !dbg !4313

; <label>:422:                                    ; preds = %409
  %423 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !4314
  %424 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %423, i32 0, i32 2, !dbg !4316
  %425 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %424, align 8, !dbg !4316
  call void @term_set_color(%struct._TERM_WINDOW* %425, i32 196608), !dbg !4317
  %426 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %7, align 8, !dbg !4318
  %427 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %426, i32 0, i32 2, !dbg !4319
  %428 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %427, align 8, !dbg !4319
  %429 = load i32, i32* %10, align 4, !dbg !4320
  call void @term_window_clrtoeol(%struct._TERM_WINDOW* %428, i32 %429), !dbg !4321
  br label %430, !dbg !4322

; <label>:430:                                    ; preds = %422, %409, %406
  %431 = load i32, i32* %21, align 4, !dbg !4323
  store i32 %431, i32* %6, align 4, !dbg !4324
  br label %432, !dbg !4324

; <label>:432:                                    ; preds = %430, %43, %33
  %433 = load i32, i32* %6, align 4, !dbg !4325
  ret i32 %433, !dbg !4325
}

declare void @term_window_clrtoeol(%struct._TERM_WINDOW*, i32) #2

declare void @term_move(%struct._TERM_WINDOW*, i32, i32) #2

declare void @term_add_unichar(%struct._TERM_WINDOW*, i32) #2

declare void @term_addch(%struct._TERM_WINDOW*, i8 signext) #2

; Function Attrs: nounwind uwtable
define internal void @view_bookmarks_check(%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*) #0 !dbg !4326 {
  %3 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  %4 = alloca %struct._LINE_REC*, align 8
  %5 = alloca %struct.BOOKMARK_FIND_REC, align 8
  %6 = alloca %struct._GSList*, align 8
  store %struct._TEXT_BUFFER_VIEW_REC* %0, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_BUFFER_VIEW_REC** %3, metadata !4327, metadata !185), !dbg !4328
  store %struct._LINE_REC* %1, %struct._LINE_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._LINE_REC** %4, metadata !4329, metadata !185), !dbg !4330
  call void @llvm.dbg.declare(metadata %struct.BOOKMARK_FIND_REC* %5, metadata !4331, metadata !185), !dbg !4337
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !4338, metadata !185), !dbg !4339
  %7 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !4340
  %8 = getelementptr inbounds %struct.BOOKMARK_FIND_REC, %struct.BOOKMARK_FIND_REC* %5, i32 0, i32 0, !dbg !4341
  store %struct._LINE_REC* %7, %struct._LINE_REC** %8, align 8, !dbg !4342
  %9 = getelementptr inbounds %struct.BOOKMARK_FIND_REC, %struct.BOOKMARK_FIND_REC* %5, i32 0, i32 1, !dbg !4343
  store %struct._GSList* null, %struct._GSList** %9, align 8, !dbg !4344
  %10 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !4345
  %11 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %10, i32 0, i32 13, !dbg !4346
  %12 = load %struct._GHashTable*, %struct._GHashTable** %11, align 8, !dbg !4346
  %13 = bitcast %struct.BOOKMARK_FIND_REC* %5 to i8*, !dbg !4347
  call void @g_hash_table_foreach(%struct._GHashTable* %12, void (i8*, i8*, i8*)* bitcast (void (i8*, %struct._LINE_REC*, %struct.BOOKMARK_FIND_REC*)* @bookmark_check_remove to void (i8*, i8*, i8*)*), i8* %13), !dbg !4348
  %14 = getelementptr inbounds %struct.BOOKMARK_FIND_REC, %struct.BOOKMARK_FIND_REC* %5, i32 0, i32 1, !dbg !4349
  %15 = load %struct._GSList*, %struct._GSList** %14, align 8, !dbg !4349
  %16 = icmp ne %struct._GSList* %15, null, !dbg !4351
  br i1 %16, label %17, label %41, !dbg !4352

; <label>:17:                                     ; preds = %2
  %18 = getelementptr inbounds %struct.BOOKMARK_FIND_REC, %struct.BOOKMARK_FIND_REC* %5, i32 0, i32 1, !dbg !4353
  %19 = load %struct._GSList*, %struct._GSList** %18, align 8, !dbg !4353
  store %struct._GSList* %19, %struct._GSList** %6, align 8, !dbg !4356
  br label %20, !dbg !4357

; <label>:20:                                     ; preds = %34, %17
  %21 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !4358
  %22 = icmp ne %struct._GSList* %21, null, !dbg !4361
  br i1 %22, label %23, label %38, !dbg !4362

; <label>:23:                                     ; preds = %20
  %24 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !4363
  %25 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %24, i32 0, i32 13, !dbg !4365
  %26 = load %struct._GHashTable*, %struct._GHashTable** %25, align 8, !dbg !4365
  %27 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !4366
  %28 = getelementptr inbounds %struct._GSList, %struct._GSList* %27, i32 0, i32 0, !dbg !4367
  %29 = load i8*, i8** %28, align 8, !dbg !4367
  %30 = call i32 @g_hash_table_remove(%struct._GHashTable* %26, i8* %29), !dbg !4368
  %31 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !4369
  %32 = getelementptr inbounds %struct._GSList, %struct._GSList* %31, i32 0, i32 0, !dbg !4370
  %33 = load i8*, i8** %32, align 8, !dbg !4370
  call void @g_free(i8* %33), !dbg !4371
  br label %34, !dbg !4372

; <label>:34:                                     ; preds = %23
  %35 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !4373
  %36 = getelementptr inbounds %struct._GSList, %struct._GSList* %35, i32 0, i32 1, !dbg !4375
  %37 = load %struct._GSList*, %struct._GSList** %36, align 8, !dbg !4375
  store %struct._GSList* %37, %struct._GSList** %6, align 8, !dbg !4376
  br label %20, !dbg !4377, !llvm.loop !4378

; <label>:38:                                     ; preds = %20
  %39 = getelementptr inbounds %struct.BOOKMARK_FIND_REC, %struct.BOOKMARK_FIND_REC* %5, i32 0, i32 1, !dbg !4380
  %40 = load %struct._GSList*, %struct._GSList** %39, align 8, !dbg !4380
  call void @g_slist_free(%struct._GSList* %40), !dbg !4381
  br label %41, !dbg !4382

; <label>:41:                                     ; preds = %38, %2
  ret void, !dbg !4383
}

; Function Attrs: nounwind uwtable
define internal void @view_remove_line_update_startline(%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32) #0 !dbg !4384 {
  %4 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  %5 = alloca %struct._LINE_REC*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct._TEXT_BUFFER_VIEW_REC* %0, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_BUFFER_VIEW_REC** %4, metadata !4385, metadata !185), !dbg !4386
  store %struct._LINE_REC* %1, %struct._LINE_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._LINE_REC** %5, metadata !4387, metadata !185), !dbg !4388
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4389, metadata !185), !dbg !4390
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4391, metadata !185), !dbg !4392
  %8 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !4393
  %9 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %8, i32 0, i32 9, !dbg !4395
  %10 = load %struct._LINE_REC*, %struct._LINE_REC** %9, align 8, !dbg !4395
  %11 = load %struct._LINE_REC*, %struct._LINE_REC** %5, align 8, !dbg !4396
  %12 = icmp eq %struct._LINE_REC* %10, %11, !dbg !4397
  br i1 %12, label %13, label %38, !dbg !4398

; <label>:13:                                     ; preds = %3
  %14 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !4399
  %15 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %14, i32 0, i32 9, !dbg !4401
  %16 = load %struct._LINE_REC*, %struct._LINE_REC** %15, align 8, !dbg !4401
  %17 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %16, i32 0, i32 0, !dbg !4402
  %18 = load %struct._LINE_REC*, %struct._LINE_REC** %17, align 8, !dbg !4402
  %19 = icmp ne %struct._LINE_REC* %18, null, !dbg !4403
  br i1 %19, label %20, label %26, !dbg !4399

; <label>:20:                                     ; preds = %13
  %21 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !4404
  %22 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %21, i32 0, i32 9, !dbg !4405
  %23 = load %struct._LINE_REC*, %struct._LINE_REC** %22, align 8, !dbg !4405
  %24 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %23, i32 0, i32 0, !dbg !4406
  %25 = load %struct._LINE_REC*, %struct._LINE_REC** %24, align 8, !dbg !4406
  br label %32, !dbg !4407

; <label>:26:                                     ; preds = %13
  %27 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !4409
  %28 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %27, i32 0, i32 9, !dbg !4410
  %29 = load %struct._LINE_REC*, %struct._LINE_REC** %28, align 8, !dbg !4410
  %30 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %29, i32 0, i32 1, !dbg !4411
  %31 = load %struct._LINE_REC*, %struct._LINE_REC** %30, align 8, !dbg !4411
  br label %32, !dbg !4412

; <label>:32:                                     ; preds = %26, %20
  %33 = phi %struct._LINE_REC* [ %25, %20 ], [ %31, %26 ], !dbg !4414
  %34 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !4416
  %35 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %34, i32 0, i32 9, !dbg !4417
  store %struct._LINE_REC* %33, %struct._LINE_REC** %35, align 8, !dbg !4418
  %36 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !4419
  %37 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %36, i32 0, i32 10, !dbg !4420
  store i32 0, i32* %37, align 8, !dbg !4421
  br label %64, !dbg !4422

; <label>:38:                                     ; preds = %3
  %39 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !4423
  %40 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %39, i32 0, i32 4, !dbg !4425
  %41 = load i32, i32* %40, align 4, !dbg !4425
  %42 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !4426
  %43 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !4427
  %44 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %43, i32 0, i32 9, !dbg !4428
  %45 = load %struct._LINE_REC*, %struct._LINE_REC** %44, align 8, !dbg !4428
  %46 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !4429
  %47 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %46, i32 0, i32 10, !dbg !4430
  %48 = load i32, i32* %47, align 8, !dbg !4430
  %49 = load %struct._LINE_REC*, %struct._LINE_REC** %5, align 8, !dbg !4431
  %50 = call i32 @view_get_lines_height(%struct._TEXT_BUFFER_VIEW_REC* %42, %struct._LINE_REC* %45, i32 %48, %struct._LINE_REC* %49), !dbg !4432
  %51 = sub nsw i32 %41, %50, !dbg !4433
  store i32 %51, i32* %7, align 4, !dbg !4434
  %52 = load i32, i32* %7, align 4, !dbg !4435
  %53 = icmp sgt i32 %52, 0, !dbg !4437
  br i1 %53, label %54, label %63, !dbg !4438

; <label>:54:                                     ; preds = %38
  %55 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !4439
  %56 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !4441
  %57 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %56, i32 0, i32 9, !dbg !4442
  %58 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !4443
  %59 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %58, i32 0, i32 10, !dbg !4444
  %60 = load i32, i32* %7, align 4, !dbg !4445
  %61 = sub nsw i32 0, %60, !dbg !4446
  %62 = call i32 @view_scroll(%struct._TEXT_BUFFER_VIEW_REC* %55, %struct._LINE_REC** %57, i32* %59, i32 %61, i32 0), !dbg !4447
  br label %63, !dbg !4448

; <label>:63:                                     ; preds = %54, %38
  br label %64

; <label>:64:                                     ; preds = %63, %32
  %65 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !4449
  call void @textbuffer_view_init_ypos(%struct._TEXT_BUFFER_VIEW_REC* %65), !dbg !4450
  %66 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !4451
  %67 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %66, i32 0, i32 9, !dbg !4453
  %68 = load %struct._LINE_REC*, %struct._LINE_REC** %67, align 8, !dbg !4453
  %69 = load %struct._LINE_REC*, %struct._LINE_REC** %5, align 8, !dbg !4454
  %70 = call i32 @textbuffer_line_exists_after(%struct._LINE_REC* %68, %struct._LINE_REC* %69), !dbg !4455
  %71 = icmp ne i32 %70, 0, !dbg !4455
  br i1 %71, label %72, label %78, !dbg !4456

; <label>:72:                                     ; preds = %64
  %73 = load i32, i32* %6, align 4, !dbg !4457
  %74 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %4, align 8, !dbg !4458
  %75 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %74, i32 0, i32 8, !dbg !4459
  %76 = load i32, i32* %75, align 8, !dbg !4460
  %77 = sub nsw i32 %76, %73, !dbg !4460
  store i32 %77, i32* %75, align 8, !dbg !4460
  br label %78, !dbg !4458

; <label>:78:                                     ; preds = %72, %64
  ret void, !dbg !4461
}

; Function Attrs: nounwind uwtable
define internal void @bookmark_check_remove(i8*, %struct._LINE_REC*, %struct.BOOKMARK_FIND_REC*) #0 !dbg !4462 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._LINE_REC*, align 8
  %6 = alloca %struct.BOOKMARK_FIND_REC*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4466, metadata !185), !dbg !4467
  store %struct._LINE_REC* %1, %struct._LINE_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._LINE_REC** %5, metadata !4468, metadata !185), !dbg !4469
  store %struct.BOOKMARK_FIND_REC* %2, %struct.BOOKMARK_FIND_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.BOOKMARK_FIND_REC** %6, metadata !4470, metadata !185), !dbg !4471
  %7 = load %struct._LINE_REC*, %struct._LINE_REC** %5, align 8, !dbg !4472
  %8 = load %struct.BOOKMARK_FIND_REC*, %struct.BOOKMARK_FIND_REC** %6, align 8, !dbg !4474
  %9 = getelementptr inbounds %struct.BOOKMARK_FIND_REC, %struct.BOOKMARK_FIND_REC* %8, i32 0, i32 0, !dbg !4475
  %10 = load %struct._LINE_REC*, %struct._LINE_REC** %9, align 8, !dbg !4475
  %11 = icmp eq %struct._LINE_REC* %7, %10, !dbg !4476
  br i1 %11, label %12, label %20, !dbg !4477

; <label>:12:                                     ; preds = %3
  %13 = load %struct.BOOKMARK_FIND_REC*, %struct.BOOKMARK_FIND_REC** %6, align 8, !dbg !4478
  %14 = getelementptr inbounds %struct.BOOKMARK_FIND_REC, %struct.BOOKMARK_FIND_REC* %13, i32 0, i32 1, !dbg !4479
  %15 = load %struct._GSList*, %struct._GSList** %14, align 8, !dbg !4479
  %16 = load i8*, i8** %4, align 8, !dbg !4480
  %17 = call %struct._GSList* @g_slist_append(%struct._GSList* %15, i8* %16), !dbg !4481
  %18 = load %struct.BOOKMARK_FIND_REC*, %struct.BOOKMARK_FIND_REC** %6, align 8, !dbg !4482
  %19 = getelementptr inbounds %struct.BOOKMARK_FIND_REC, %struct.BOOKMARK_FIND_REC* %18, i32 0, i32 1, !dbg !4483
  store %struct._GSList* %17, %struct._GSList** %19, align 8, !dbg !4484
  br label %20, !dbg !4482

; <label>:20:                                     ; preds = %12, %3
  ret void, !dbg !4485
}

declare %struct._GSList* @g_slist_find(%struct._GSList*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @line_cache_check_remove(i8*, %struct.LINE_CACHE_REC*, i64*) #0 !dbg !4486 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.LINE_CACHE_REC*, align 8
  %7 = alloca i64*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4490, metadata !185), !dbg !4491
  store %struct.LINE_CACHE_REC* %1, %struct.LINE_CACHE_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.LINE_CACHE_REC** %6, metadata !4492, metadata !185), !dbg !4493
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !4494, metadata !185), !dbg !4495
  %8 = load %struct.LINE_CACHE_REC*, %struct.LINE_CACHE_REC** %6, align 8, !dbg !4496
  %9 = getelementptr inbounds %struct.LINE_CACHE_REC, %struct.LINE_CACHE_REC* %8, i32 0, i32 0, !dbg !4498
  %10 = load i64, i64* %9, align 8, !dbg !4498
  %11 = add nsw i64 %10, 600, !dbg !4499
  %12 = load i64*, i64** %7, align 8, !dbg !4500
  %13 = load i64, i64* %12, align 8, !dbg !4501
  %14 = icmp sgt i64 %11, %13, !dbg !4502
  br i1 %14, label %15, label %16, !dbg !4503

; <label>:15:                                     ; preds = %3
  store i32 0, i32* %4, align 4, !dbg !4504
  br label %19, !dbg !4504

; <label>:16:                                     ; preds = %3
  %17 = load %struct.LINE_CACHE_REC*, %struct.LINE_CACHE_REC** %6, align 8, !dbg !4505
  %18 = call i32 @line_cache_destroy(i8* null, %struct.LINE_CACHE_REC* %17), !dbg !4506
  store i32 1, i32* %4, align 4, !dbg !4507
  br label %19, !dbg !4507

; <label>:19:                                     ; preds = %16, %15
  %20 = load i32, i32* %4, align 4, !dbg !4508
  ret i32 %20, !dbg !4508
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!177, !178}
!llvm.ident = !{!179}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !18, globals: !173)
!1 = !DIFile(filename: "line378-textbuffer-view.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 11, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "textbuffer.h", directory: "/home/lichi/Desktop/irssi/task1")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17}
!6 = !DIEnumerator(name: "LINE_CMD_EOL", value: 128)
!7 = !DIEnumerator(name: "LINE_CMD_CONTINUE", value: 129)
!8 = !DIEnumerator(name: "LINE_CMD_COLOR0", value: 130)
!9 = !DIEnumerator(name: "LINE_CMD_UNDERLINE", value: 131)
!10 = !DIEnumerator(name: "LINE_CMD_REVERSE", value: 132)
!11 = !DIEnumerator(name: "LINE_CMD_INDENT", value: 133)
!12 = !DIEnumerator(name: "LINE_CMD_BLINK", value: 134)
!13 = !DIEnumerator(name: "LINE_CMD_BOLD", value: 135)
!14 = !DIEnumerator(name: "LINE_CMD_ITALIC", value: 136)
!15 = !DIEnumerator(name: "LINE_CMD_MONOSPACE", value: 137)
!16 = !DIEnumerator(name: "LINE_COLOR_EXT", value: 138)
!17 = !DIEnumerator(name: "LINE_COLOR_EXT_BG", value: 139)
!18 = !{!19, !25, !26, !29, !131, !139, !144, !148, !153, !103, !158, !56, !169, !170}
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "GFunc", file: !20, line: 88, baseType: !21)
!20 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!22 = !DISubroutineType(types: !23)
!23 = !{null, !24, !24}
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !20, line: 77, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!28 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_BUFFER_VIEW_REC", file: !31, line: 7, baseType: !32)
!31 = !DIFile(filename: "textbuffer-view.h", directory: "/home/lichi/Desktop/irssi/task1")
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TEXT_BUFFER_VIEW_REC", file: !31, line: 50, size: 960, align: 64, elements: !33)
!33 = !{!34, !88, !89, !94, !95, !96, !97, !102, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !32, file: !31, line: 51, baseType: !35, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_BUFFER_REC", file: !4, line: 72, baseType: !37)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 60, size: 448, align: 64, elements: !38)
!38 = !{!39, !47, !70, !71, !72, !83, !84, !85, !86}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "text_chunks", scope: !37, file: !4, line: 61, baseType: !40, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !42, line: 37, baseType: !43)
!42 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !42, line: 39, size: 128, align: 64, elements: !44)
!44 = !{!45, !46}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !43, file: !42, line: 41, baseType: !24, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !43, file: !42, line: 42, baseType: !40, size: 64, align: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "first_line", scope: !37, file: !4, line: 62, baseType: !48, size: 64, align: 64, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "LINE_REC", file: !4, line: 52, baseType: !50)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_LINE_REC", file: !4, line: 34, size: 320, align: 64, elements: !51)
!51 = !{!52, !54, !55, !58}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !50, file: !4, line: 48, baseType: !53, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !50, file: !4, line: 48, baseType: !53, size: 64, align: 64, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !50, file: !4, line: 50, baseType: !56, size: 64, align: 64, offset: 128)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !50, file: !4, line: 51, baseType: !59, size: 128, align: 64, offset: 192)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "LINE_INFO_REC", file: !4, line: 32, baseType: !60)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 29, size: 128, align: 64, elements: !61)
!61 = !{!62, !64}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !60, file: !4, line: 30, baseType: !63, size: 32, align: 32)
!63 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !60, file: !4, line: 31, baseType: !65, size: 64, align: 64, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !66, line: 75, baseType: !67)
!66 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !68, line: 139, baseType: !69)
!68 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!69 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "lines_count", scope: !37, file: !4, line: 63, baseType: !63, size: 32, align: 32, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "cur_line", scope: !37, file: !4, line: 65, baseType: !48, size: 64, align: 64, offset: 192)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "cur_text", scope: !37, file: !4, line: 66, baseType: !73, size: 64, align: 64, offset: 256)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_CHUNK_REC", file: !4, line: 58, baseType: !75)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 54, size: 131008, align: 32, elements: !76)
!76 = !{!77, !81, !82}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !75, file: !4, line: 55, baseType: !78, size: 130944, align: 8)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 130944, align: 8, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 16368)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !75, file: !4, line: 56, baseType: !63, size: 32, align: 32, offset: 130944)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !75, file: !4, line: 57, baseType: !63, size: 32, align: 32, offset: 130976)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "last_fg", scope: !37, file: !4, line: 68, baseType: !63, size: 32, align: 32, offset: 320)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "last_bg", scope: !37, file: !4, line: 69, baseType: !63, size: 32, align: 32, offset: 352)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "last_flags", scope: !37, file: !4, line: 70, baseType: !63, size: 32, align: 32, offset: 384)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "last_eol", scope: !37, file: !4, line: 71, baseType: !87, size: 1, align: 32, offset: 416, flags: DIFlagBitField, extraData: i64 416)
!87 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "siblings", scope: !32, file: !31, line: 53, baseType: !40, size: 64, align: 64, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !32, file: !31, line: 55, baseType: !90, size: 64, align: 64, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "TERM_WINDOW", file: !92, line: 4, baseType: !93)
!92 = !DIFile(filename: "term.h", directory: "/home/lichi/Desktop/irssi/task1")
!93 = !DICompositeType(tag: DW_TAG_structure_type, name: "_TERM_WINDOW", file: !92, line: 4, flags: DIFlagFwdDecl)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !32, file: !31, line: 56, baseType: !63, size: 32, align: 32, offset: 192)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !32, file: !31, line: 56, baseType: !63, size: 32, align: 32, offset: 224)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "default_indent", scope: !32, file: !31, line: 58, baseType: !63, size: 32, align: 32, offset: 256)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "default_indent_func", scope: !32, file: !31, line: 59, baseType: !98, size: 64, align: 64, offset: 320)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "INDENT_FUNC", file: !31, line: 10, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, align: 64)
!100 = !DISubroutineType(types: !101)
!101 = !{!63, !29, !48, !63}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !32, file: !31, line: 61, baseType: !103, size: 64, align: 64, offset: 384)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, align: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_BUFFER_CACHE_REC", file: !31, line: 48, baseType: !105)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !31, line: 37, size: 192, align: 64, elements: !106)
!106 = !{!107, !108, !109, !114, !115}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !105, file: !31, line: 38, baseType: !63, size: 32, align: 32)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !105, file: !31, line: 39, baseType: !63, size: 32, align: 32, offset: 32)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "line_cache", scope: !105, file: !31, line: 41, baseType: !110, size: 64, align: 64, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, align: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !112, line: 37, baseType: !113)
!112 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!113 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !112, line: 37, flags: DIFlagFwdDecl)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "update_counter", scope: !105, file: !31, line: 45, baseType: !57, size: 8, align: 8, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "last_linecount", scope: !105, file: !31, line: 47, baseType: !63, size: 32, align: 32, offset: 160)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "ypos", scope: !32, file: !31, line: 63, baseType: !63, size: 32, align: 32, offset: 448)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "startline", scope: !32, file: !31, line: 66, baseType: !48, size: 64, align: 64, offset: 512)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "subline", scope: !32, file: !31, line: 68, baseType: !63, size: 32, align: 32, offset: 576)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_startline", scope: !32, file: !31, line: 71, baseType: !48, size: 64, align: 64, offset: 640)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_subline", scope: !32, file: !31, line: 72, baseType: !63, size: 32, align: 32, offset: 704)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "bookmarks", scope: !32, file: !31, line: 76, baseType: !110, size: 64, align: 64, offset: 768)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "hidden_level", scope: !32, file: !31, line: 79, baseType: !63, size: 32, align: 32, offset: 832)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "empty_linecount", scope: !32, file: !31, line: 82, baseType: !63, size: 32, align: 32, offset: 864)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "longword_noindent", scope: !32, file: !31, line: 84, baseType: !87, size: 1, align: 32, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "scroll", scope: !32, file: !31, line: 86, baseType: !87, size: 1, align: 32, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "utf8", scope: !32, file: !31, line: 88, baseType: !87, size: 1, align: 32, offset: 898, flags: DIFlagBitField, extraData: i64 896)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "break_wide", scope: !32, file: !31, line: 90, baseType: !87, size: 1, align: 32, offset: 899, flags: DIFlagBitField, extraData: i64 896)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "bottom", scope: !32, file: !31, line: 92, baseType: !87, size: 1, align: 32, offset: 900, flags: DIFlagBitField, extraData: i64 896)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "more_text", scope: !32, file: !31, line: 94, baseType: !87, size: 1, align: 32, offset: 901, flags: DIFlagBitField, extraData: i64 896)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !32, file: !31, line: 96, baseType: !87, size: 1, align: 32, offset: 902, flags: DIFlagBitField, extraData: i64 896)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashFunc", file: !20, line: 90, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64, align: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{!135, !136}
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !20, line: 55, baseType: !87)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "gconstpointer", file: !20, line: 78, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64, align: 64)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCompareFunc", file: !20, line: 80, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{!143, !136, !136}
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !20, line: 49, baseType: !63)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHFunc", file: !20, line: 91, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64, align: 64)
!146 = !DISubroutineType(types: !147)
!147 = !{null, !24, !24, !24}
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHRFunc", file: !112, line: 39, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = !DISubroutineType(types: !151)
!151 = !{!152, !24, !24, !24}
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !20, line: 50, baseType: !143)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !154, line: 155, baseType: !155)
!154 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/irssi/task1")
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64, align: 64)
!156 = !DISubroutineType(types: !157)
!157 = !{!152, !24}
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64, align: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "LINE_CACHE_SUB_REC", file: !31, line: 25, baseType: !160)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !31, line: 13, size: 256, align: 64, elements: !161)
!161 = !{!162, !165, !166, !167, !168}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !160, file: !31, line: 14, baseType: !163, size: 64, align: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64, align: 64)
!164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "indent", scope: !160, file: !31, line: 15, baseType: !63, size: 32, align: 32, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "indent_func", scope: !160, file: !31, line: 16, baseType: !98, size: 64, align: 64, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !160, file: !31, line: 17, baseType: !63, size: 32, align: 32, offset: 192)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "continues", scope: !160, file: !31, line: 24, baseType: !87, size: 1, align: 32, offset: 224, flags: DIFlagBitField, extraData: i64 224)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64, align: 64)
!171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "guchar", file: !20, line: 52, baseType: !57)
!173 = !{!174, !176}
!174 = distinct !DIGlobalVariable(name: "linecache_tag", scope: !0, file: !175, line: 38, type: !63, isLocal: true, isDefinition: true, variable: i32* @linecache_tag)
!175 = !DIFile(filename: "textbuffer-view.c", directory: "/home/lichi/Desktop/irssi/task1")
!176 = distinct !DIGlobalVariable(name: "views", scope: !0, file: !175, line: 39, type: !40, isLocal: true, isDefinition: true, variable: %struct._GSList** @views)
!177 = !{i32 2, !"Dwarf Version", i32 4}
!178 = !{i32 2, !"Debug Info Version", i32 3}
!179 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!180 = distinct !DISubprogram(name: "textbuffer_view_reset_cache", scope: !175, file: !175, line: 377, type: !181, isLocal: false, isDefinition: true, scopeLine: 378, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !183)
!181 = !DISubroutineType(types: !182)
!182 = !{null, !29}
!183 = !{}
!184 = !DILocalVariable(name: "view", arg: 1, scope: !180, file: !175, line: 377, type: !29)
!185 = !DIExpression()
!186 = !DILocation(line: 377, column: 56, scope: !180)
!187 = !DILocalVariable(name: "tmp", scope: !180, file: !175, line: 379, type: !40)
!188 = !DILocation(line: 379, column: 10, scope: !180)
!189 = !DILocation(line: 383, column: 25, scope: !180)
!190 = !DILocation(line: 383, column: 31, scope: !180)
!191 = !DILocation(line: 383, column: 2, scope: !180)
!192 = !DILocation(line: 384, column: 25, scope: !180)
!193 = !DILocation(line: 384, column: 31, scope: !180)
!194 = !DILocation(line: 384, column: 9, scope: !180)
!195 = !DILocation(line: 386, column: 37, scope: !180)
!196 = !DILocation(line: 386, column: 43, scope: !180)
!197 = !DILocation(line: 386, column: 53, scope: !180)
!198 = !DILocation(line: 386, column: 59, scope: !180)
!199 = !DILocation(line: 386, column: 16, scope: !180)
!200 = !DILocation(line: 386, column: 2, scope: !180)
!201 = !DILocation(line: 386, column: 8, scope: !180)
!202 = !DILocation(line: 386, column: 14, scope: !180)
!203 = !DILocation(line: 387, column: 13, scope: !204)
!204 = distinct !DILexicalBlock(scope: !180, file: !175, line: 387, column: 2)
!205 = !DILocation(line: 387, column: 19, scope: !204)
!206 = !DILocation(line: 387, column: 11, scope: !204)
!207 = !DILocation(line: 387, column: 7, scope: !204)
!208 = !DILocation(line: 387, column: 29, scope: !209)
!209 = !DILexicalBlockFile(scope: !210, file: !175, discriminator: 1)
!210 = distinct !DILexicalBlock(scope: !204, file: !175, line: 387, column: 2)
!211 = !DILocation(line: 387, column: 33, scope: !209)
!212 = !DILocation(line: 387, column: 2, scope: !209)
!213 = !DILocalVariable(name: "rec", scope: !214, file: !175, line: 388, type: !29)
!214 = distinct !DILexicalBlock(scope: !210, file: !175, line: 387, column: 58)
!215 = !DILocation(line: 388, column: 25, scope: !214)
!216 = !DILocation(line: 388, column: 31, scope: !214)
!217 = !DILocation(line: 388, column: 36, scope: !214)
!218 = !DILocation(line: 390, column: 37, scope: !214)
!219 = !DILocation(line: 390, column: 42, scope: !214)
!220 = !DILocation(line: 390, column: 52, scope: !214)
!221 = !DILocation(line: 390, column: 57, scope: !214)
!222 = !DILocation(line: 390, column: 16, scope: !214)
!223 = !DILocation(line: 390, column: 3, scope: !214)
!224 = !DILocation(line: 390, column: 8, scope: !214)
!225 = !DILocation(line: 390, column: 14, scope: !214)
!226 = !DILocation(line: 391, column: 2, scope: !214)
!227 = !DILocation(line: 387, column: 47, scope: !228)
!228 = !DILexicalBlockFile(scope: !210, file: !175, discriminator: 2)
!229 = !DILocation(line: 387, column: 52, scope: !228)
!230 = !DILocation(line: 387, column: 45, scope: !228)
!231 = !DILocation(line: 387, column: 2, scope: !228)
!232 = distinct !{!232, !233}
!233 = !DILocation(line: 387, column: 2, scope: !180)
!234 = !DILocation(line: 392, column: 1, scope: !180)
!235 = distinct !DISubprogram(name: "textbuffer_cache_unref", scope: !175, file: !175, line: 108, type: !236, isLocal: true, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !183)
!236 = !DISubroutineType(types: !237)
!237 = !{null, !103}
!238 = !DILocalVariable(name: "cache", arg: 1, scope: !235, file: !175, line: 108, type: !103)
!239 = !DILocation(line: 108, column: 59, scope: !235)
!240 = !DILocation(line: 110, column: 8, scope: !241)
!241 = distinct !DILexicalBlock(scope: !235, file: !175, line: 110, column: 6)
!242 = !DILocation(line: 110, column: 15, scope: !241)
!243 = !DILocation(line: 110, column: 6, scope: !241)
!244 = !DILocation(line: 110, column: 24, scope: !241)
!245 = !DILocation(line: 110, column: 6, scope: !235)
!246 = !DILocation(line: 111, column: 42, scope: !241)
!247 = !DILocation(line: 111, column: 17, scope: !241)
!248 = !DILocation(line: 112, column: 1, scope: !235)
!249 = distinct !DISubprogram(name: "textbuffer_cache_get", scope: !175, file: !175, line: 70, type: !250, isLocal: true, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !183)
!250 = !DISubroutineType(types: !251)
!251 = !{!103, !40, !63}
!252 = !DILocalVariable(name: "views", arg: 1, scope: !249, file: !175, line: 70, type: !40)
!253 = !DILocation(line: 70, column: 30, scope: !249)
!254 = !DILocalVariable(name: "width", arg: 2, scope: !249, file: !175, line: 70, type: !63)
!255 = !DILocation(line: 70, column: 41, scope: !249)
!256 = !DILocalVariable(name: "cache", scope: !249, file: !175, line: 72, type: !103)
!257 = !DILocation(line: 72, column: 25, scope: !249)
!258 = !DILocation(line: 75, column: 2, scope: !249)
!259 = !DILocation(line: 75, column: 9, scope: !260)
!260 = !DILexicalBlockFile(scope: !249, file: !175, discriminator: 1)
!261 = !DILocation(line: 75, column: 15, scope: !260)
!262 = !DILocation(line: 75, column: 2, scope: !260)
!263 = !DILocalVariable(name: "view", scope: !264, file: !175, line: 76, type: !29)
!264 = distinct !DILexicalBlock(scope: !249, file: !175, line: 75, column: 23)
!265 = !DILocation(line: 76, column: 25, scope: !264)
!266 = !DILocation(line: 76, column: 32, scope: !264)
!267 = !DILocation(line: 76, column: 39, scope: !264)
!268 = !DILocation(line: 78, column: 7, scope: !269)
!269 = distinct !DILexicalBlock(scope: !264, file: !175, line: 78, column: 7)
!270 = !DILocation(line: 78, column: 13, scope: !269)
!271 = !DILocation(line: 78, column: 22, scope: !269)
!272 = !DILocation(line: 78, column: 19, scope: !269)
!273 = !DILocation(line: 78, column: 7, scope: !264)
!274 = !DILocation(line: 79, column: 4, scope: !275)
!275 = distinct !DILexicalBlock(scope: !269, file: !175, line: 78, column: 29)
!276 = !DILocation(line: 79, column: 10, scope: !275)
!277 = !DILocation(line: 79, column: 17, scope: !275)
!278 = !DILocation(line: 79, column: 25, scope: !275)
!279 = !DILocation(line: 80, column: 11, scope: !275)
!280 = !DILocation(line: 80, column: 17, scope: !275)
!281 = !DILocation(line: 80, column: 4, scope: !275)
!282 = !DILocation(line: 82, column: 25, scope: !264)
!283 = !DILocation(line: 82, column: 32, scope: !264)
!284 = !DILocation(line: 82, column: 23, scope: !264)
!285 = !DILocation(line: 75, column: 2, scope: !286)
!286 = !DILexicalBlockFile(scope: !249, file: !175, discriminator: 2)
!287 = distinct !{!287, !258}
!288 = !DILocation(line: 86, column: 37, scope: !249)
!289 = !DILocation(line: 86, column: 11, scope: !249)
!290 = !DILocation(line: 86, column: 8, scope: !249)
!291 = !DILocation(line: 87, column: 2, scope: !249)
!292 = !DILocation(line: 87, column: 9, scope: !249)
!293 = !DILocation(line: 87, column: 18, scope: !249)
!294 = !DILocation(line: 88, column: 24, scope: !249)
!295 = !DILocation(line: 88, column: 9, scope: !249)
!296 = !DILocation(line: 88, column: 16, scope: !249)
!297 = !DILocation(line: 88, column: 22, scope: !249)
!298 = !DILocation(line: 89, column: 22, scope: !249)
!299 = !DILocation(line: 89, column: 2, scope: !249)
!300 = !DILocation(line: 89, column: 9, scope: !249)
!301 = !DILocation(line: 89, column: 20, scope: !249)
!302 = !DILocation(line: 91, column: 16, scope: !249)
!303 = !DILocation(line: 91, column: 9, scope: !249)
!304 = !DILocation(line: 92, column: 1, scope: !249)
!305 = distinct !DISubprogram(name: "textbuffer_view_create", scope: !175, file: !175, line: 609, type: !306, isLocal: false, isDefinition: true, scopeLine: 612, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !183)
!306 = !DISubroutineType(types: !307)
!307 = !{!29, !35, !63, !63, !63, !63}
!308 = !DILocalVariable(name: "buffer", arg: 1, scope: !305, file: !175, line: 609, type: !35)
!309 = !DILocation(line: 609, column: 63, scope: !305)
!310 = !DILocalVariable(name: "width", arg: 2, scope: !305, file: !175, line: 610, type: !63)
!311 = !DILocation(line: 610, column: 15, scope: !305)
!312 = !DILocalVariable(name: "height", arg: 3, scope: !305, file: !175, line: 610, type: !63)
!313 = !DILocation(line: 610, column: 26, scope: !305)
!314 = !DILocalVariable(name: "scroll", arg: 4, scope: !305, file: !175, line: 611, type: !63)
!315 = !DILocation(line: 611, column: 15, scope: !305)
!316 = !DILocalVariable(name: "utf8", arg: 5, scope: !305, file: !175, line: 611, type: !63)
!317 = !DILocation(line: 611, column: 27, scope: !305)
!318 = !DILocalVariable(name: "view", scope: !305, file: !175, line: 613, type: !29)
!319 = !DILocation(line: 613, column: 24, scope: !305)
!320 = !DILocation(line: 615, column: 9, scope: !305)
!321 = distinct !{!321, !320}
!322 = !DILocation(line: 615, column: 17, scope: !323)
!323 = !DILexicalBlockFile(scope: !324, file: !175, discriminator: 1)
!324 = distinct !DILexicalBlock(scope: !325, file: !175, line: 615, column: 17)
!325 = distinct !DILexicalBlock(scope: !305, file: !175, line: 615, column: 11)
!326 = !DILocation(line: 615, column: 24, scope: !323)
!327 = !DILocation(line: 615, column: 12, scope: !328)
!328 = !DILexicalBlockFile(scope: !329, file: !175, discriminator: 2)
!329 = distinct !DILexicalBlock(scope: !324, file: !175, line: 615, column: 10)
!330 = !DILocation(line: 615, column: 21, scope: !331)
!331 = !DILexicalBlockFile(scope: !332, file: !175, discriminator: 3)
!332 = distinct !DILexicalBlock(scope: !324, file: !175, line: 615, column: 19)
!333 = !DILocation(line: 615, column: 112, scope: !331)
!334 = !DILocation(line: 615, column: 14, scope: !335)
!335 = !DILexicalBlockFile(scope: !325, file: !175, discriminator: 4)
!336 = !DILocation(line: 616, column: 9, scope: !305)
!337 = distinct !{!337, !336}
!338 = !DILocation(line: 616, column: 17, scope: !339)
!339 = !DILexicalBlockFile(scope: !340, file: !175, discriminator: 1)
!340 = distinct !DILexicalBlock(scope: !341, file: !175, line: 616, column: 17)
!341 = distinct !DILexicalBlock(scope: !305, file: !175, line: 616, column: 11)
!342 = !DILocation(line: 616, column: 23, scope: !339)
!343 = !DILocation(line: 616, column: 30, scope: !344)
!344 = !DILexicalBlockFile(scope: !345, file: !175, discriminator: 2)
!345 = distinct !DILexicalBlock(scope: !340, file: !175, line: 616, column: 28)
!346 = !DILocation(line: 616, column: 39, scope: !347)
!347 = !DILexicalBlockFile(scope: !348, file: !175, discriminator: 3)
!348 = distinct !DILexicalBlock(scope: !340, file: !175, line: 616, column: 37)
!349 = !DILocation(line: 616, column: 125, scope: !347)
!350 = !DILocation(line: 616, column: 14, scope: !351)
!351 = !DILexicalBlockFile(scope: !341, file: !175, discriminator: 4)
!352 = !DILocation(line: 618, column: 35, scope: !305)
!353 = !DILocation(line: 618, column: 10, scope: !305)
!354 = !DILocation(line: 618, column: 7, scope: !305)
!355 = !DILocation(line: 619, column: 17, scope: !305)
!356 = !DILocation(line: 619, column: 2, scope: !305)
!357 = !DILocation(line: 619, column: 8, scope: !305)
!358 = !DILocation(line: 619, column: 15, scope: !305)
!359 = !DILocation(line: 620, column: 47, scope: !305)
!360 = !DILocation(line: 620, column: 26, scope: !305)
!361 = !DILocation(line: 620, column: 9, scope: !305)
!362 = !DILocation(line: 620, column: 15, scope: !305)
!363 = !DILocation(line: 620, column: 24, scope: !305)
!364 = !DILocation(line: 622, column: 16, scope: !305)
!365 = !DILocation(line: 622, column: 2, scope: !305)
!366 = !DILocation(line: 622, column: 8, scope: !305)
!367 = !DILocation(line: 622, column: 14, scope: !305)
!368 = !DILocation(line: 623, column: 24, scope: !305)
!369 = !DILocation(line: 623, column: 9, scope: !305)
!370 = !DILocation(line: 623, column: 15, scope: !305)
!371 = !DILocation(line: 623, column: 22, scope: !305)
!372 = !DILocation(line: 624, column: 17, scope: !305)
!373 = !DILocation(line: 624, column: 2, scope: !305)
!374 = !DILocation(line: 624, column: 8, scope: !305)
!375 = !DILocation(line: 624, column: 15, scope: !305)
!376 = !DILocation(line: 625, column: 22, scope: !305)
!377 = !DILocation(line: 625, column: 9, scope: !305)
!378 = !DILocation(line: 625, column: 15, scope: !305)
!379 = !DILocation(line: 625, column: 20, scope: !305)
!380 = !DILocation(line: 627, column: 37, scope: !305)
!381 = !DILocation(line: 627, column: 43, scope: !305)
!382 = !DILocation(line: 627, column: 53, scope: !305)
!383 = !DILocation(line: 627, column: 16, scope: !305)
!384 = !DILocation(line: 627, column: 2, scope: !305)
!385 = !DILocation(line: 627, column: 8, scope: !305)
!386 = !DILocation(line: 627, column: 14, scope: !305)
!387 = !DILocation(line: 628, column: 30, scope: !305)
!388 = !DILocation(line: 628, column: 2, scope: !305)
!389 = !DILocation(line: 630, column: 20, scope: !305)
!390 = !DILocation(line: 630, column: 26, scope: !305)
!391 = !DILocation(line: 630, column: 2, scope: !305)
!392 = !DILocation(line: 630, column: 8, scope: !305)
!393 = !DILocation(line: 630, column: 18, scope: !305)
!394 = !DILocation(line: 631, column: 25, scope: !305)
!395 = !DILocation(line: 631, column: 31, scope: !305)
!396 = !DILocation(line: 631, column: 9, scope: !305)
!397 = !DILocation(line: 631, column: 15, scope: !305)
!398 = !DILocation(line: 631, column: 23, scope: !305)
!399 = !DILocation(line: 632, column: 2, scope: !305)
!400 = !DILocation(line: 632, column: 8, scope: !305)
!401 = !DILocation(line: 632, column: 15, scope: !305)
!402 = !DILocation(line: 634, column: 2, scope: !305)
!403 = !DILocation(line: 634, column: 8, scope: !305)
!404 = !DILocation(line: 634, column: 21, scope: !305)
!405 = !DILocation(line: 636, column: 28, scope: !305)
!406 = !DILocation(line: 636, column: 2, scope: !305)
!407 = !DILocation(line: 638, column: 20, scope: !305)
!408 = !DILocation(line: 638, column: 2, scope: !305)
!409 = !DILocation(line: 638, column: 8, scope: !305)
!410 = !DILocation(line: 638, column: 18, scope: !305)
!411 = !DILocation(line: 641, column: 25, scope: !305)
!412 = !DILocation(line: 641, column: 32, scope: !305)
!413 = !DILocation(line: 641, column: 10, scope: !305)
!414 = !DILocation(line: 641, column: 8, scope: !305)
!415 = !DILocation(line: 642, column: 16, scope: !305)
!416 = !DILocation(line: 642, column: 9, scope: !305)
!417 = !DILocation(line: 643, column: 1, scope: !305)
!418 = distinct !DISubprogram(name: "textbuffer_get_views", scope: !175, file: !175, line: 53, type: !419, isLocal: true, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !183)
!419 = !DISubroutineType(types: !420)
!420 = !{!40, !35}
!421 = !DILocalVariable(name: "buffer", arg: 1, scope: !418, file: !175, line: 53, type: !35)
!422 = !DILocation(line: 53, column: 54, scope: !418)
!423 = !DILocalVariable(name: "tmp", scope: !418, file: !175, line: 55, type: !40)
!424 = !DILocation(line: 55, column: 10, scope: !418)
!425 = !DILocalVariable(name: "list", scope: !418, file: !175, line: 55, type: !40)
!426 = !DILocation(line: 55, column: 16, scope: !418)
!427 = !DILocation(line: 57, column: 13, scope: !428)
!428 = distinct !DILexicalBlock(scope: !418, file: !175, line: 57, column: 2)
!429 = !DILocation(line: 57, column: 11, scope: !428)
!430 = !DILocation(line: 57, column: 7, scope: !428)
!431 = !DILocation(line: 57, column: 20, scope: !432)
!432 = !DILexicalBlockFile(scope: !433, file: !175, discriminator: 1)
!433 = distinct !DILexicalBlock(scope: !428, file: !175, line: 57, column: 2)
!434 = !DILocation(line: 57, column: 24, scope: !432)
!435 = !DILocation(line: 57, column: 2, scope: !432)
!436 = !DILocalVariable(name: "view", scope: !437, file: !175, line: 58, type: !29)
!437 = distinct !DILexicalBlock(scope: !433, file: !175, line: 57, column: 49)
!438 = !DILocation(line: 58, column: 25, scope: !437)
!439 = !DILocation(line: 58, column: 32, scope: !437)
!440 = !DILocation(line: 58, column: 37, scope: !437)
!441 = !DILocation(line: 60, column: 7, scope: !442)
!442 = distinct !DILexicalBlock(scope: !437, file: !175, line: 60, column: 7)
!443 = !DILocation(line: 60, column: 13, scope: !442)
!444 = !DILocation(line: 60, column: 23, scope: !442)
!445 = !DILocation(line: 60, column: 20, scope: !442)
!446 = !DILocation(line: 60, column: 7, scope: !437)
!447 = !DILocation(line: 61, column: 24, scope: !448)
!448 = distinct !DILexicalBlock(scope: !442, file: !175, line: 60, column: 31)
!449 = !DILocation(line: 61, column: 30, scope: !448)
!450 = !DILocation(line: 61, column: 11, scope: !448)
!451 = !DILocation(line: 61, column: 9, scope: !448)
!452 = !DILocation(line: 62, column: 48, scope: !448)
!453 = !DILocation(line: 62, column: 54, scope: !448)
!454 = !DILocation(line: 62, column: 32, scope: !448)
!455 = !DILocation(line: 62, column: 25, scope: !448)
!456 = !DILocation(line: 64, column: 2, scope: !437)
!457 = !DILocation(line: 57, column: 38, scope: !458)
!458 = !DILexicalBlockFile(scope: !433, file: !175, discriminator: 2)
!459 = !DILocation(line: 57, column: 43, scope: !458)
!460 = !DILocation(line: 57, column: 36, scope: !458)
!461 = !DILocation(line: 57, column: 2, scope: !458)
!462 = distinct !{!462, !463}
!463 = !DILocation(line: 57, column: 2, scope: !418)
!464 = !DILocation(line: 66, column: 9, scope: !418)
!465 = !DILocation(line: 67, column: 1, scope: !418)
!466 = distinct !DISubprogram(name: "textbuffer_view_init_bottom", scope: !175, file: !175, line: 555, type: !181, isLocal: true, isDefinition: true, scopeLine: 556, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !183)
!467 = !DILocalVariable(name: "view", arg: 1, scope: !466, file: !175, line: 555, type: !29)
!468 = !DILocation(line: 555, column: 63, scope: !466)
!469 = !DILocalVariable(name: "line", scope: !466, file: !175, line: 557, type: !48)
!470 = !DILocation(line: 557, column: 19, scope: !466)
!471 = !DILocalVariable(name: "linecount", scope: !466, file: !175, line: 558, type: !63)
!472 = !DILocation(line: 558, column: 13, scope: !466)
!473 = !DILocalVariable(name: "total", scope: !466, file: !175, line: 558, type: !63)
!474 = !DILocation(line: 558, column: 24, scope: !466)
!475 = !DILocation(line: 560, column: 6, scope: !476)
!476 = distinct !DILexicalBlock(scope: !466, file: !175, line: 560, column: 6)
!477 = !DILocation(line: 560, column: 12, scope: !476)
!478 = !DILocation(line: 560, column: 28, scope: !476)
!479 = !DILocation(line: 560, column: 6, scope: !466)
!480 = !DILocation(line: 563, column: 17, scope: !481)
!481 = distinct !DILexicalBlock(scope: !476, file: !175, line: 560, column: 34)
!482 = !DILocation(line: 563, column: 23, scope: !481)
!483 = !DILocation(line: 563, column: 40, scope: !481)
!484 = !DILocation(line: 564, column: 2, scope: !481)
!485 = !DILocation(line: 566, column: 8, scope: !466)
!486 = !DILocation(line: 567, column: 37, scope: !466)
!487 = !DILocation(line: 567, column: 43, scope: !466)
!488 = !DILocation(line: 567, column: 16, scope: !466)
!489 = !DILocation(line: 567, column: 14, scope: !466)
!490 = !DILocation(line: 568, column: 2, scope: !466)
!491 = !DILocation(line: 568, column: 9, scope: !492)
!492 = !DILexicalBlockFile(scope: !493, file: !175, discriminator: 1)
!493 = distinct !DILexicalBlock(scope: !494, file: !175, line: 568, column: 2)
!494 = distinct !DILexicalBlock(scope: !466, file: !175, line: 568, column: 2)
!495 = !DILocation(line: 568, column: 14, scope: !492)
!496 = !DILocation(line: 568, column: 2, scope: !492)
!497 = !DILocation(line: 569, column: 10, scope: !498)
!498 = distinct !DILexicalBlock(scope: !499, file: !175, line: 569, column: 7)
!499 = distinct !DILexicalBlock(scope: !493, file: !175, line: 568, column: 41)
!500 = !DILocation(line: 569, column: 17, scope: !498)
!501 = !DILocation(line: 569, column: 22, scope: !498)
!502 = !DILocation(line: 569, column: 31, scope: !498)
!503 = !DILocation(line: 569, column: 38, scope: !498)
!504 = !DILocation(line: 569, column: 28, scope: !498)
!505 = !DILocation(line: 569, column: 52, scope: !498)
!506 = !DILocation(line: 569, column: 7, scope: !499)
!507 = !DILocation(line: 570, column: 4, scope: !498)
!508 = !DILocation(line: 572, column: 19, scope: !499)
!509 = !DILocation(line: 572, column: 26, scope: !499)
!510 = !DILocation(line: 572, column: 31, scope: !499)
!511 = !DILocation(line: 572, column: 40, scope: !499)
!512 = !DILocation(line: 572, column: 47, scope: !499)
!513 = !DILocation(line: 572, column: 37, scope: !499)
!514 = !DILocation(line: 572, column: 61, scope: !499)
!515 = !DILocation(line: 572, column: 16, scope: !499)
!516 = !DILocation(line: 572, column: 16, scope: !517)
!517 = !DILexicalBlockFile(scope: !499, file: !175, discriminator: 1)
!518 = !DILocation(line: 572, column: 104, scope: !519)
!519 = !DILexicalBlockFile(scope: !499, file: !175, discriminator: 2)
!520 = !DILocation(line: 572, column: 110, scope: !519)
!521 = !DILocation(line: 572, column: 73, scope: !519)
!522 = !DILocation(line: 572, column: 117, scope: !519)
!523 = !DILocation(line: 572, column: 16, scope: !519)
!524 = !DILocation(line: 572, column: 16, scope: !525)
!525 = !DILexicalBlockFile(scope: !499, file: !175, discriminator: 3)
!526 = !DILocation(line: 572, column: 13, scope: !525)
!527 = !DILocation(line: 573, column: 7, scope: !528)
!528 = distinct !DILexicalBlock(scope: !499, file: !175, line: 573, column: 7)
!529 = !DILocation(line: 573, column: 15, scope: !528)
!530 = !DILocation(line: 573, column: 21, scope: !528)
!531 = !DILocation(line: 573, column: 12, scope: !528)
!532 = !DILocation(line: 573, column: 7, scope: !499)
!533 = !DILocation(line: 575, column: 8, scope: !534)
!534 = distinct !DILexicalBlock(scope: !535, file: !175, line: 575, column: 8)
!535 = distinct !DILexicalBlock(scope: !528, file: !175, line: 573, column: 39)
!536 = !DILocation(line: 575, column: 14, scope: !534)
!537 = !DILocation(line: 575, column: 31, scope: !534)
!538 = !DILocation(line: 575, column: 29, scope: !534)
!539 = !DILocation(line: 575, column: 8, scope: !535)
!540 = !DILocation(line: 576, column: 28, scope: !534)
!541 = !DILocation(line: 576, column: 5, scope: !534)
!542 = !DILocation(line: 576, column: 11, scope: !534)
!543 = !DILocation(line: 576, column: 26, scope: !534)
!544 = !DILocation(line: 577, column: 28, scope: !535)
!545 = !DILocation(line: 577, column: 34, scope: !535)
!546 = !DILocation(line: 577, column: 43, scope: !535)
!547 = !DILocation(line: 577, column: 41, scope: !535)
!548 = !DILocation(line: 578, column: 6, scope: !535)
!549 = !DILocation(line: 578, column: 16, scope: !535)
!550 = !DILocation(line: 578, column: 22, scope: !535)
!551 = !DILocation(line: 578, column: 15, scope: !535)
!552 = !DILocation(line: 577, column: 49, scope: !535)
!553 = !DILocation(line: 577, column: 4, scope: !535)
!554 = !DILocation(line: 577, column: 10, scope: !535)
!555 = !DILocation(line: 577, column: 26, scope: !535)
!556 = !DILocation(line: 579, column: 25, scope: !535)
!557 = !DILocation(line: 582, column: 26, scope: !499)
!558 = !DILocation(line: 582, column: 23, scope: !499)
!559 = !DILocation(line: 583, column: 7, scope: !560)
!560 = distinct !DILexicalBlock(scope: !499, file: !175, line: 583, column: 7)
!561 = !DILocation(line: 583, column: 16, scope: !560)
!562 = !DILocation(line: 583, column: 22, scope: !560)
!563 = !DILocation(line: 583, column: 13, scope: !560)
!564 = !DILocation(line: 583, column: 7, scope: !499)
!565 = !DILocation(line: 584, column: 29, scope: !566)
!566 = distinct !DILexicalBlock(scope: !560, file: !175, line: 583, column: 30)
!567 = !DILocation(line: 584, column: 4, scope: !566)
!568 = !DILocation(line: 584, column: 10, scope: !566)
!569 = !DILocation(line: 584, column: 27, scope: !566)
!570 = !DILocation(line: 585, column: 27, scope: !566)
!571 = !DILocation(line: 585, column: 35, scope: !566)
!572 = !DILocation(line: 585, column: 41, scope: !566)
!573 = !DILocation(line: 585, column: 33, scope: !566)
!574 = !DILocation(line: 585, column: 4, scope: !566)
!575 = !DILocation(line: 585, column: 10, scope: !566)
!576 = !DILocation(line: 585, column: 25, scope: !566)
!577 = !DILocation(line: 586, column: 25, scope: !566)
!578 = !DILocation(line: 586, column: 31, scope: !566)
!579 = !DILocation(line: 586, column: 47, scope: !566)
!580 = !DILocation(line: 587, column: 25, scope: !566)
!581 = !DILocation(line: 589, column: 2, scope: !499)
!582 = !DILocation(line: 568, column: 29, scope: !583)
!583 = !DILexicalBlockFile(scope: !493, file: !175, discriminator: 2)
!584 = !DILocation(line: 568, column: 35, scope: !583)
!585 = !DILocation(line: 568, column: 27, scope: !583)
!586 = !DILocation(line: 568, column: 2, scope: !583)
!587 = distinct !{!587, !490}
!588 = !DILocation(line: 592, column: 27, scope: !466)
!589 = !DILocation(line: 592, column: 33, scope: !466)
!590 = !DILocation(line: 592, column: 41, scope: !466)
!591 = !DILocation(line: 592, column: 2, scope: !466)
!592 = !DILocation(line: 592, column: 8, scope: !466)
!593 = !DILocation(line: 592, column: 25, scope: !466)
!594 = !DILocation(line: 593, column: 2, scope: !466)
!595 = !DILocation(line: 593, column: 8, scope: !466)
!596 = !DILocation(line: 593, column: 23, scope: !466)
!597 = !DILocation(line: 594, column: 26, scope: !466)
!598 = !DILocation(line: 594, column: 32, scope: !466)
!599 = !DILocation(line: 594, column: 41, scope: !466)
!600 = !DILocation(line: 594, column: 39, scope: !466)
!601 = !DILocation(line: 594, column: 2, scope: !466)
!602 = !DILocation(line: 594, column: 8, scope: !466)
!603 = !DILocation(line: 594, column: 24, scope: !466)
!604 = !DILocation(line: 595, column: 1, scope: !466)
!605 = !DILocation(line: 595, column: 1, scope: !606)
!606 = !DILexicalBlockFile(scope: !466, file: !175, discriminator: 1)
!607 = distinct !DISubprogram(name: "textbuffer_view_init_ypos", scope: !175, file: !175, line: 597, type: !181, isLocal: true, isDefinition: true, scopeLine: 598, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !183)
!608 = !DILocalVariable(name: "view", arg: 1, scope: !607, file: !175, line: 597, type: !29)
!609 = !DILocation(line: 597, column: 61, scope: !607)
!610 = !DILocalVariable(name: "line", scope: !607, file: !175, line: 599, type: !48)
!611 = !DILocation(line: 599, column: 19, scope: !607)
!612 = !DILocation(line: 601, column: 2, scope: !607)
!613 = distinct !{!613, !612}
!614 = !DILocation(line: 601, column: 10, scope: !615)
!615 = !DILexicalBlockFile(scope: !616, file: !175, discriminator: 1)
!616 = distinct !DILexicalBlock(scope: !617, file: !175, line: 601, column: 10)
!617 = distinct !DILexicalBlock(scope: !607, file: !175, line: 601, column: 4)
!618 = !DILocation(line: 601, column: 15, scope: !615)
!619 = !DILocation(line: 601, column: 5, scope: !620)
!620 = !DILexicalBlockFile(scope: !621, file: !175, discriminator: 2)
!621 = distinct !DILexicalBlock(scope: !616, file: !175, line: 601, column: 3)
!622 = !DILocation(line: 601, column: 14, scope: !623)
!623 = !DILexicalBlockFile(scope: !624, file: !175, discriminator: 3)
!624 = distinct !DILexicalBlock(scope: !616, file: !175, line: 601, column: 12)
!625 = !DILocation(line: 601, column: 103, scope: !623)
!626 = !DILocation(line: 601, column: 114, scope: !627)
!627 = !DILexicalBlockFile(scope: !617, file: !175, discriminator: 4)
!628 = !DILocation(line: 603, column: 16, scope: !607)
!629 = !DILocation(line: 603, column: 22, scope: !607)
!630 = !DILocation(line: 603, column: 15, scope: !607)
!631 = !DILocation(line: 603, column: 29, scope: !607)
!632 = !DILocation(line: 603, column: 2, scope: !607)
!633 = !DILocation(line: 603, column: 8, scope: !607)
!634 = !DILocation(line: 603, column: 13, scope: !607)
!635 = !DILocation(line: 604, column: 14, scope: !636)
!636 = distinct !DILexicalBlock(scope: !607, file: !175, line: 604, column: 2)
!637 = !DILocation(line: 604, column: 20, scope: !636)
!638 = !DILocation(line: 604, column: 12, scope: !636)
!639 = !DILocation(line: 604, column: 7, scope: !636)
!640 = !DILocation(line: 604, column: 31, scope: !641)
!641 = !DILexicalBlockFile(scope: !642, file: !175, discriminator: 1)
!642 = distinct !DILexicalBlock(scope: !636, file: !175, line: 604, column: 2)
!643 = !DILocation(line: 604, column: 36, scope: !641)
!644 = !DILocation(line: 604, column: 2, scope: !641)
!645 = !DILocation(line: 605, column: 21, scope: !642)
!646 = !DILocation(line: 605, column: 28, scope: !642)
!647 = !DILocation(line: 605, column: 33, scope: !642)
!648 = !DILocation(line: 605, column: 42, scope: !642)
!649 = !DILocation(line: 605, column: 49, scope: !642)
!650 = !DILocation(line: 605, column: 39, scope: !642)
!651 = !DILocation(line: 605, column: 63, scope: !642)
!652 = !DILocation(line: 605, column: 18, scope: !642)
!653 = !DILocation(line: 605, column: 18, scope: !641)
!654 = !DILocation(line: 605, column: 106, scope: !655)
!655 = !DILexicalBlockFile(scope: !642, file: !175, discriminator: 2)
!656 = !DILocation(line: 605, column: 112, scope: !655)
!657 = !DILocation(line: 605, column: 75, scope: !655)
!658 = !DILocation(line: 605, column: 119, scope: !655)
!659 = !DILocation(line: 605, column: 18, scope: !655)
!660 = !DILocation(line: 605, column: 18, scope: !661)
!661 = !DILexicalBlockFile(scope: !642, file: !175, discriminator: 3)
!662 = !DILocation(line: 605, column: 3, scope: !661)
!663 = !DILocation(line: 605, column: 9, scope: !661)
!664 = !DILocation(line: 605, column: 14, scope: !661)
!665 = !DILocation(line: 604, column: 51, scope: !655)
!666 = !DILocation(line: 604, column: 57, scope: !655)
!667 = !DILocation(line: 604, column: 49, scope: !655)
!668 = !DILocation(line: 604, column: 2, scope: !655)
!669 = distinct !{!669, !670}
!670 = !DILocation(line: 604, column: 2, scope: !607)
!671 = !DILocation(line: 606, column: 1, scope: !607)
!672 = distinct !DISubprogram(name: "textbuffer_view_destroy", scope: !175, file: !175, line: 646, type: !181, isLocal: false, isDefinition: true, scopeLine: 647, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !183)
!673 = !DILocalVariable(name: "view", arg: 1, scope: !672, file: !175, line: 646, type: !29)
!674 = !DILocation(line: 646, column: 52, scope: !672)
!675 = !DILocalVariable(name: "tmp", scope: !672, file: !175, line: 648, type: !40)
!676 = !DILocation(line: 648, column: 10, scope: !672)
!677 = !DILocation(line: 650, column: 2, scope: !672)
!678 = distinct !{!678, !677}
!679 = !DILocation(line: 650, column: 10, scope: !680)
!680 = !DILexicalBlockFile(scope: !681, file: !175, discriminator: 1)
!681 = distinct !DILexicalBlock(scope: !682, file: !175, line: 650, column: 10)
!682 = distinct !DILexicalBlock(scope: !672, file: !175, line: 650, column: 4)
!683 = !DILocation(line: 650, column: 15, scope: !680)
!684 = !DILocation(line: 650, column: 5, scope: !685)
!685 = !DILexicalBlockFile(scope: !686, file: !175, discriminator: 2)
!686 = distinct !DILexicalBlock(scope: !681, file: !175, line: 650, column: 3)
!687 = !DILocation(line: 650, column: 14, scope: !688)
!688 = !DILexicalBlockFile(scope: !689, file: !175, discriminator: 3)
!689 = distinct !DILexicalBlock(scope: !681, file: !175, line: 650, column: 12)
!690 = !DILocation(line: 650, column: 103, scope: !688)
!691 = !DILocation(line: 650, column: 114, scope: !692)
!692 = !DILexicalBlockFile(scope: !682, file: !175, discriminator: 4)
!693 = !DILocation(line: 652, column: 25, scope: !672)
!694 = !DILocation(line: 652, column: 32, scope: !672)
!695 = !DILocation(line: 652, column: 10, scope: !672)
!696 = !DILocation(line: 652, column: 8, scope: !672)
!697 = !DILocation(line: 654, column: 6, scope: !698)
!698 = distinct !DILexicalBlock(scope: !672, file: !175, line: 654, column: 6)
!699 = !DILocation(line: 654, column: 12, scope: !698)
!700 = !DILocation(line: 654, column: 21, scope: !698)
!701 = !DILocation(line: 654, column: 6, scope: !672)
!702 = !DILocation(line: 656, column: 36, scope: !703)
!703 = distinct !DILexicalBlock(scope: !698, file: !175, line: 654, column: 29)
!704 = !DILocation(line: 656, column: 42, scope: !703)
!705 = !DILocation(line: 656, column: 17, scope: !703)
!706 = !DILocation(line: 657, column: 2, scope: !703)
!707 = !DILocation(line: 659, column: 14, scope: !708)
!708 = distinct !DILexicalBlock(scope: !709, file: !175, line: 659, column: 3)
!709 = distinct !DILexicalBlock(scope: !698, file: !175, line: 657, column: 9)
!710 = !DILocation(line: 659, column: 20, scope: !708)
!711 = !DILocation(line: 659, column: 12, scope: !708)
!712 = !DILocation(line: 659, column: 8, scope: !708)
!713 = !DILocation(line: 659, column: 30, scope: !714)
!714 = !DILexicalBlockFile(scope: !715, file: !175, discriminator: 1)
!715 = distinct !DILexicalBlock(scope: !708, file: !175, line: 659, column: 3)
!716 = !DILocation(line: 659, column: 34, scope: !714)
!717 = !DILocation(line: 659, column: 3, scope: !714)
!718 = !DILocalVariable(name: "rec", scope: !719, file: !175, line: 660, type: !29)
!719 = distinct !DILexicalBlock(scope: !715, file: !175, line: 659, column: 59)
!720 = !DILocation(line: 660, column: 26, scope: !719)
!721 = !DILocation(line: 660, column: 32, scope: !719)
!722 = !DILocation(line: 660, column: 37, scope: !719)
!723 = !DILocation(line: 662, column: 35, scope: !719)
!724 = !DILocation(line: 662, column: 40, scope: !719)
!725 = !DILocation(line: 662, column: 50, scope: !719)
!726 = !DILocation(line: 662, column: 20, scope: !719)
!727 = !DILocation(line: 662, column: 4, scope: !719)
!728 = !DILocation(line: 662, column: 9, scope: !719)
!729 = !DILocation(line: 662, column: 18, scope: !719)
!730 = !DILocation(line: 663, column: 3, scope: !719)
!731 = !DILocation(line: 659, column: 48, scope: !732)
!732 = !DILexicalBlockFile(scope: !715, file: !175, discriminator: 2)
!733 = !DILocation(line: 659, column: 53, scope: !732)
!734 = !DILocation(line: 659, column: 46, scope: !732)
!735 = !DILocation(line: 659, column: 3, scope: !732)
!736 = distinct !{!736, !737}
!737 = !DILocation(line: 659, column: 3, scope: !709)
!738 = !DILocation(line: 664, column: 16, scope: !709)
!739 = !DILocation(line: 664, column: 22, scope: !709)
!740 = !DILocation(line: 664, column: 3, scope: !709)
!741 = !DILocation(line: 667, column: 23, scope: !672)
!742 = !DILocation(line: 667, column: 29, scope: !672)
!743 = !DILocation(line: 667, column: 2, scope: !672)
!744 = !DILocation(line: 668, column: 23, scope: !672)
!745 = !DILocation(line: 668, column: 29, scope: !672)
!746 = !DILocation(line: 668, column: 2, scope: !672)
!747 = !DILocation(line: 670, column: 32, scope: !672)
!748 = !DILocation(line: 670, column: 38, scope: !672)
!749 = !DILocation(line: 670, column: 9, scope: !672)
!750 = !DILocation(line: 671, column: 9, scope: !672)
!751 = !DILocation(line: 671, column: 2, scope: !672)
!752 = !DILocation(line: 672, column: 1, scope: !672)
!753 = !DILocation(line: 672, column: 1, scope: !754)
!754 = !DILexicalBlockFile(scope: !672, file: !175, discriminator: 1)
!755 = distinct !DISubprogram(name: "textbuffer_view_set_default_indent", scope: !175, file: !175, line: 675, type: !756, isLocal: false, isDefinition: true, scopeLine: 679, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !183)
!756 = !DISubroutineType(types: !757)
!757 = !{null, !29, !63, !63, !98}
!758 = !DILocalVariable(name: "view", arg: 1, scope: !755, file: !175, line: 675, type: !29)
!759 = !DILocation(line: 675, column: 63, scope: !755)
!760 = !DILocalVariable(name: "default_indent", arg: 2, scope: !755, file: !175, line: 676, type: !63)
!761 = !DILocation(line: 676, column: 10, scope: !755)
!762 = !DILocalVariable(name: "longword_noindent", arg: 3, scope: !755, file: !175, line: 677, type: !63)
!763 = !DILocation(line: 677, column: 10, scope: !755)
!764 = !DILocalVariable(name: "indent_func", arg: 4, scope: !755, file: !175, line: 678, type: !98)
!765 = !DILocation(line: 678, column: 18, scope: !755)
!766 = !DILocation(line: 680, column: 13, scope: !767)
!767 = distinct !DILexicalBlock(scope: !755, file: !175, line: 680, column: 13)
!768 = !DILocation(line: 680, column: 28, scope: !767)
!769 = !DILocation(line: 680, column: 13, scope: !755)
!770 = !DILocation(line: 681, column: 26, scope: !767)
!771 = !DILocation(line: 681, column: 3, scope: !767)
!772 = !DILocation(line: 681, column: 9, scope: !767)
!773 = !DILocation(line: 681, column: 24, scope: !767)
!774 = !DILocation(line: 682, column: 13, scope: !775)
!775 = distinct !DILexicalBlock(scope: !755, file: !175, line: 682, column: 13)
!776 = !DILocation(line: 682, column: 31, scope: !775)
!777 = !DILocation(line: 682, column: 13, scope: !755)
!778 = !DILocation(line: 683, column: 29, scope: !775)
!779 = !DILocation(line: 683, column: 3, scope: !775)
!780 = !DILocation(line: 683, column: 9, scope: !775)
!781 = !DILocation(line: 683, column: 27, scope: !775)
!782 = !DILocation(line: 685, column: 30, scope: !755)
!783 = !DILocation(line: 685, column: 2, scope: !755)
!784 = !DILocation(line: 685, column: 8, scope: !755)
!785 = !DILocation(line: 685, column: 28, scope: !755)
!786 = !DILocation(line: 686, column: 1, scope: !755)
!787 = distinct !DISubprogram(name: "textbuffer_view_set_break_wide", scope: !175, file: !175, line: 689, type: !788, isLocal: false, isDefinition: true, scopeLine: 691, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !183)
!788 = !DISubroutineType(types: !789)
!789 = !{null, !29, !152}
!790 = !DILocalVariable(name: "view", arg: 1, scope: !787, file: !175, line: 689, type: !29)
!791 = !DILocation(line: 689, column: 59, scope: !787)
!792 = !DILocalVariable(name: "break_wide", arg: 2, scope: !787, file: !175, line: 690, type: !152)
!793 = !DILocation(line: 690, column: 18, scope: !787)
!794 = !DILocation(line: 692, column: 6, scope: !795)
!795 = distinct !DILexicalBlock(scope: !787, file: !175, line: 692, column: 6)
!796 = !DILocation(line: 692, column: 12, scope: !795)
!797 = !DILocation(line: 692, column: 26, scope: !795)
!798 = !DILocation(line: 692, column: 23, scope: !795)
!799 = !DILocation(line: 692, column: 6, scope: !787)
!800 = !DILocation(line: 693, column: 22, scope: !801)
!801 = distinct !DILexicalBlock(scope: !795, file: !175, line: 692, column: 38)
!802 = !DILocation(line: 693, column: 3, scope: !801)
!803 = !DILocation(line: 693, column: 9, scope: !801)
!804 = !DILocation(line: 693, column: 20, scope: !801)
!805 = !DILocation(line: 694, column: 31, scope: !801)
!806 = !DILocation(line: 694, column: 3, scope: !801)
!807 = !DILocation(line: 695, column: 2, scope: !801)
!808 = !DILocation(line: 696, column: 1, scope: !787)
!809 = distinct !DISubprogram(name: "textbuffer_views_unregister_indent_func", scope: !175, file: !175, line: 710, type: !810, isLocal: false, isDefinition: true, scopeLine: 711, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !183)
!810 = !DISubroutineType(types: !811)
!811 = !{null, !98}
!812 = !DILocalVariable(name: "indent_func", arg: 1, scope: !809, file: !175, line: 710, type: !98)
!813 = !DILocation(line: 710, column: 58, scope: !809)
!814 = !DILocation(line: 712, column: 18, scope: !809)
!815 = !DILocation(line: 713, column: 13, scope: !809)
!816 = !DILocation(line: 713, column: 4, scope: !809)
!817 = !DILocation(line: 712, column: 2, scope: !809)
!818 = !DILocation(line: 714, column: 1, scope: !809)
!819 = distinct !DISubprogram(name: "view_unregister_indent_func", scope: !175, file: !175, line: 698, type: !820, isLocal: true, isDefinition: true, scopeLine: 700, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !183)
!820 = !DISubroutineType(types: !821)
!821 = !{null, !29, !98}
!822 = !DILocalVariable(name: "view", arg: 1, scope: !819, file: !175, line: 698, type: !29)
!823 = !DILocation(line: 698, column: 63, scope: !819)
!824 = !DILocalVariable(name: "indent_func", arg: 2, scope: !819, file: !175, line: 699, type: !98)
!825 = !DILocation(line: 699, column: 18, scope: !819)
!826 = !DILocation(line: 701, column: 6, scope: !827)
!827 = distinct !DILexicalBlock(scope: !819, file: !175, line: 701, column: 6)
!828 = !DILocation(line: 701, column: 12, scope: !827)
!829 = !DILocation(line: 701, column: 35, scope: !827)
!830 = !DILocation(line: 701, column: 32, scope: !827)
!831 = !DILocation(line: 701, column: 6, scope: !819)
!832 = !DILocation(line: 702, column: 3, scope: !827)
!833 = !DILocation(line: 702, column: 9, scope: !827)
!834 = !DILocation(line: 702, column: 29, scope: !827)
!835 = !DILocation(line: 706, column: 30, scope: !819)
!836 = !DILocation(line: 706, column: 2, scope: !819)
!837 = !DILocation(line: 707, column: 37, scope: !819)
!838 = !DILocation(line: 707, column: 43, scope: !819)
!839 = !DILocation(line: 707, column: 53, scope: !819)
!840 = !DILocation(line: 707, column: 59, scope: !819)
!841 = !DILocation(line: 707, column: 16, scope: !819)
!842 = !DILocation(line: 707, column: 2, scope: !819)
!843 = !DILocation(line: 707, column: 8, scope: !819)
!844 = !DILocation(line: 707, column: 14, scope: !819)
!845 = !DILocation(line: 708, column: 1, scope: !819)
!846 = distinct !DISubprogram(name: "textbuffer_view_set_scroll", scope: !175, file: !175, line: 716, type: !847, isLocal: false, isDefinition: true, scopeLine: 717, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !183)
!847 = !DISubroutineType(types: !848)
!848 = !{null, !29, !63}
!849 = !DILocalVariable(name: "view", arg: 1, scope: !846, file: !175, line: 716, type: !29)
!850 = !DILocation(line: 716, column: 55, scope: !846)
!851 = !DILocalVariable(name: "scroll", arg: 2, scope: !846, file: !175, line: 716, type: !63)
!852 = !DILocation(line: 716, column: 65, scope: !846)
!853 = !DILocation(line: 718, column: 24, scope: !846)
!854 = !DILocation(line: 718, column: 9, scope: !846)
!855 = !DILocation(line: 718, column: 15, scope: !846)
!856 = !DILocation(line: 718, column: 22, scope: !846)
!857 = !DILocation(line: 719, column: 1, scope: !846)
!858 = distinct !DISubprogram(name: "textbuffer_view_set_utf8", scope: !175, file: !175, line: 721, type: !847, isLocal: false, isDefinition: true, scopeLine: 722, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !183)
!859 = !DILocalVariable(name: "view", arg: 1, scope: !858, file: !175, line: 721, type: !29)
!860 = !DILocation(line: 721, column: 53, scope: !858)
!861 = !DILocalVariable(name: "utf8", arg: 2, scope: !858, file: !175, line: 721, type: !63)
!862 = !DILocation(line: 721, column: 63, scope: !858)
!863 = !DILocation(line: 723, column: 22, scope: !858)
!864 = !DILocation(line: 723, column: 9, scope: !858)
!865 = !DILocation(line: 723, column: 15, scope: !858)
!866 = !DILocation(line: 723, column: 20, scope: !858)
!867 = !DILocation(line: 724, column: 1, scope: !858)
!868 = distinct !DISubprogram(name: "textbuffer_view_resize", scope: !175, file: !175, line: 885, type: !869, isLocal: false, isDefinition: true, scopeLine: 886, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !183)
!869 = !DISubroutineType(types: !870)
!870 = !{null, !29, !63, !63}
!871 = !DILocalVariable(name: "view", arg: 1, scope: !868, file: !175, line: 885, type: !29)
!872 = !DILocation(line: 885, column: 51, scope: !868)
!873 = !DILocalVariable(name: "width", arg: 2, scope: !868, file: !175, line: 885, type: !63)
!874 = !DILocation(line: 885, column: 61, scope: !868)
!875 = !DILocalVariable(name: "height", arg: 3, scope: !868, file: !175, line: 885, type: !63)
!876 = !DILocation(line: 885, column: 72, scope: !868)
!877 = !DILocalVariable(name: "linecount", scope: !868, file: !175, line: 887, type: !63)
!878 = !DILocation(line: 887, column: 6, scope: !868)
!879 = !DILocation(line: 889, column: 9, scope: !868)
!880 = distinct !{!880, !879}
!881 = !DILocation(line: 889, column: 17, scope: !882)
!882 = !DILexicalBlockFile(scope: !883, file: !175, discriminator: 1)
!883 = distinct !DILexicalBlock(scope: !884, file: !175, line: 889, column: 17)
!884 = distinct !DILexicalBlock(scope: !868, file: !175, line: 889, column: 11)
!885 = !DILocation(line: 889, column: 22, scope: !882)
!886 = !DILocation(line: 889, column: 12, scope: !887)
!887 = !DILexicalBlockFile(scope: !888, file: !175, discriminator: 2)
!888 = distinct !DILexicalBlock(scope: !883, file: !175, line: 889, column: 10)
!889 = !DILocation(line: 889, column: 21, scope: !890)
!890 = !DILexicalBlockFile(scope: !891, file: !175, discriminator: 3)
!891 = distinct !DILexicalBlock(scope: !883, file: !175, line: 889, column: 19)
!892 = !DILocation(line: 889, column: 110, scope: !890)
!893 = !DILocation(line: 889, column: 121, scope: !894)
!894 = !DILexicalBlockFile(scope: !884, file: !175, discriminator: 4)
!895 = !DILocation(line: 890, column: 9, scope: !868)
!896 = distinct !{!896, !895}
!897 = !DILocation(line: 890, column: 17, scope: !898)
!898 = !DILexicalBlockFile(scope: !899, file: !175, discriminator: 1)
!899 = distinct !DILexicalBlock(scope: !900, file: !175, line: 890, column: 17)
!900 = distinct !DILexicalBlock(scope: !868, file: !175, line: 890, column: 11)
!901 = !DILocation(line: 890, column: 23, scope: !898)
!902 = !DILocation(line: 890, column: 30, scope: !903)
!903 = !DILexicalBlockFile(scope: !904, file: !175, discriminator: 2)
!904 = distinct !DILexicalBlock(scope: !899, file: !175, line: 890, column: 28)
!905 = !DILocation(line: 890, column: 39, scope: !906)
!906 = !DILexicalBlockFile(scope: !907, file: !175, discriminator: 3)
!907 = distinct !DILexicalBlock(scope: !899, file: !175, line: 890, column: 37)
!908 = !DILocation(line: 890, column: 125, scope: !906)
!909 = !DILocation(line: 890, column: 136, scope: !910)
!910 = !DILexicalBlockFile(scope: !900, file: !175, discriminator: 4)
!911 = !DILocation(line: 892, column: 6, scope: !912)
!912 = distinct !DILexicalBlock(scope: !868, file: !175, line: 892, column: 6)
!913 = !DILocation(line: 892, column: 12, scope: !912)
!914 = !DILocation(line: 892, column: 21, scope: !912)
!915 = !DILocation(line: 892, column: 18, scope: !912)
!916 = !DILocation(line: 892, column: 6, scope: !868)
!917 = !DILocation(line: 894, column: 26, scope: !918)
!918 = distinct !DILexicalBlock(scope: !912, file: !175, line: 892, column: 28)
!919 = !DILocation(line: 894, column: 32, scope: !918)
!920 = !DILocation(line: 894, column: 3, scope: !918)
!921 = !DILocation(line: 895, column: 38, scope: !918)
!922 = !DILocation(line: 895, column: 44, scope: !918)
!923 = !DILocation(line: 895, column: 54, scope: !918)
!924 = !DILocation(line: 895, column: 17, scope: !918)
!925 = !DILocation(line: 895, column: 3, scope: !918)
!926 = !DILocation(line: 895, column: 9, scope: !918)
!927 = !DILocation(line: 895, column: 15, scope: !918)
!928 = !DILocation(line: 896, column: 2, scope: !918)
!929 = !DILocation(line: 898, column: 16, scope: !868)
!930 = !DILocation(line: 898, column: 22, scope: !868)
!931 = !DILocation(line: 898, column: 29, scope: !932)
!932 = !DILexicalBlockFile(scope: !868, file: !175, discriminator: 1)
!933 = !DILocation(line: 898, column: 16, scope: !932)
!934 = !DILocation(line: 898, column: 16, scope: !935)
!935 = !DILexicalBlockFile(scope: !868, file: !175, discriminator: 2)
!936 = !DILocation(line: 898, column: 16, scope: !937)
!937 = !DILexicalBlockFile(scope: !868, file: !175, discriminator: 3)
!938 = !DILocation(line: 898, column: 2, scope: !937)
!939 = !DILocation(line: 898, column: 8, scope: !937)
!940 = !DILocation(line: 898, column: 14, scope: !937)
!941 = !DILocation(line: 899, column: 17, scope: !868)
!942 = !DILocation(line: 899, column: 24, scope: !868)
!943 = !DILocation(line: 899, column: 30, scope: !932)
!944 = !DILocation(line: 899, column: 17, scope: !932)
!945 = !DILocation(line: 899, column: 17, scope: !935)
!946 = !DILocation(line: 899, column: 17, scope: !937)
!947 = !DILocation(line: 899, column: 2, scope: !937)
!948 = !DILocation(line: 899, column: 8, scope: !937)
!949 = !DILocation(line: 899, column: 15, scope: !937)
!950 = !DILocation(line: 901, column: 6, scope: !951)
!951 = distinct !DILexicalBlock(scope: !868, file: !175, line: 901, column: 6)
!952 = !DILocation(line: 901, column: 12, scope: !951)
!953 = !DILocation(line: 901, column: 20, scope: !951)
!954 = !DILocation(line: 901, column: 31, scope: !951)
!955 = !DILocation(line: 901, column: 6, scope: !868)
!956 = !DILocation(line: 902, column: 41, scope: !957)
!957 = distinct !DILexicalBlock(scope: !951, file: !175, line: 901, column: 39)
!958 = !DILocation(line: 902, column: 17, scope: !957)
!959 = !DILocation(line: 902, column: 23, scope: !957)
!960 = !DILocation(line: 902, column: 39, scope: !957)
!961 = !DILocation(line: 903, column: 3, scope: !957)
!962 = !DILocation(line: 906, column: 30, scope: !868)
!963 = !DILocation(line: 906, column: 2, scope: !868)
!964 = !DILocation(line: 909, column: 35, scope: !965)
!965 = distinct !DILexicalBlock(scope: !868, file: !175, line: 909, column: 6)
!966 = !DILocation(line: 909, column: 41, scope: !965)
!967 = !DILocation(line: 909, column: 59, scope: !965)
!968 = !DILocation(line: 910, column: 7, scope: !965)
!969 = !DILocation(line: 910, column: 13, scope: !965)
!970 = !DILocation(line: 909, column: 6, scope: !965)
!971 = !DILocation(line: 909, column: 6, scope: !868)
!972 = !DILocation(line: 911, column: 21, scope: !973)
!973 = distinct !DILexicalBlock(scope: !965, file: !175, line: 910, column: 25)
!974 = !DILocation(line: 911, column: 27, scope: !973)
!975 = !DILocation(line: 911, column: 3, scope: !973)
!976 = !DILocation(line: 911, column: 9, scope: !973)
!977 = !DILocation(line: 911, column: 19, scope: !973)
!978 = !DILocation(line: 912, column: 33, scope: !973)
!979 = !DILocation(line: 912, column: 39, scope: !973)
!980 = !DILocation(line: 912, column: 17, scope: !973)
!981 = !DILocation(line: 912, column: 23, scope: !973)
!982 = !DILocation(line: 912, column: 31, scope: !973)
!983 = !DILocation(line: 913, column: 2, scope: !973)
!984 = !DILocation(line: 913, column: 13, scope: !985)
!985 = !DILexicalBlockFile(scope: !986, file: !175, discriminator: 1)
!986 = distinct !DILexicalBlock(scope: !965, file: !175, line: 913, column: 13)
!987 = !DILocation(line: 913, column: 19, scope: !985)
!988 = !DILocation(line: 913, column: 32, scope: !985)
!989 = !DILocation(line: 913, column: 38, scope: !985)
!990 = !DILocation(line: 913, column: 29, scope: !985)
!991 = !DILocation(line: 913, column: 55, scope: !985)
!992 = !DILocation(line: 914, column: 6, scope: !986)
!993 = !DILocation(line: 914, column: 12, scope: !986)
!994 = !DILocation(line: 914, column: 22, scope: !986)
!995 = !DILocation(line: 914, column: 28, scope: !986)
!996 = !DILocation(line: 914, column: 20, scope: !986)
!997 = !DILocation(line: 913, column: 13, scope: !998)
!998 = !DILexicalBlockFile(scope: !965, file: !175, discriminator: 2)
!999 = !DILocation(line: 915, column: 33, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !986, file: !175, line: 914, column: 44)
!1001 = !DILocation(line: 915, column: 39, scope: !1000)
!1002 = !DILocation(line: 915, column: 17, scope: !1000)
!1003 = !DILocation(line: 915, column: 23, scope: !1000)
!1004 = !DILocation(line: 915, column: 31, scope: !1000)
!1005 = !DILocation(line: 916, column: 2, scope: !1000)
!1006 = !DILocation(line: 916, column: 13, scope: !1007)
!1007 = !DILexicalBlockFile(scope: !1008, file: !175, discriminator: 1)
!1008 = distinct !DILexicalBlock(scope: !986, file: !175, line: 916, column: 13)
!1009 = !DILocation(line: 916, column: 19, scope: !1007)
!1010 = !DILocation(line: 916, column: 29, scope: !1007)
!1011 = !DILocation(line: 918, column: 19, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1008, file: !175, line: 916, column: 37)
!1013 = !DILocation(line: 918, column: 25, scope: !1012)
!1014 = !DILocation(line: 918, column: 37, scope: !1012)
!1015 = !DILocation(line: 918, column: 42, scope: !1012)
!1016 = !DILocation(line: 918, column: 51, scope: !1012)
!1017 = !DILocation(line: 918, column: 58, scope: !1012)
!1018 = !DILocation(line: 918, column: 48, scope: !1012)
!1019 = !DILocation(line: 918, column: 72, scope: !1012)
!1020 = !DILocation(line: 918, column: 16, scope: !1012)
!1021 = !DILocation(line: 918, column: 16, scope: !1022)
!1022 = !DILexicalBlockFile(scope: !1012, file: !175, discriminator: 1)
!1023 = !DILocation(line: 918, column: 115, scope: !1024)
!1024 = !DILexicalBlockFile(scope: !1012, file: !175, discriminator: 2)
!1025 = !DILocation(line: 918, column: 121, scope: !1024)
!1026 = !DILocation(line: 918, column: 127, scope: !1024)
!1027 = !DILocation(line: 918, column: 84, scope: !1024)
!1028 = !DILocation(line: 918, column: 139, scope: !1024)
!1029 = !DILocation(line: 918, column: 16, scope: !1024)
!1030 = !DILocation(line: 918, column: 16, scope: !1031)
!1031 = !DILexicalBlockFile(scope: !1012, file: !175, discriminator: 3)
!1032 = !DILocation(line: 918, column: 13, scope: !1031)
!1033 = !DILocation(line: 919, column: 7, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1012, file: !175, line: 919, column: 7)
!1035 = !DILocation(line: 919, column: 13, scope: !1034)
!1036 = !DILocation(line: 919, column: 23, scope: !1034)
!1037 = !DILocation(line: 919, column: 21, scope: !1034)
!1038 = !DILocation(line: 919, column: 7, scope: !1012)
!1039 = !DILocation(line: 920, column: 41, scope: !1034)
!1040 = !DILocation(line: 920, column: 25, scope: !1034)
!1041 = !DILocation(line: 920, column: 31, scope: !1034)
!1042 = !DILocation(line: 920, column: 39, scope: !1034)
!1043 = !DILocation(line: 921, column: 2, scope: !1012)
!1044 = !DILocation(line: 923, column: 3, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1008, file: !175, line: 921, column: 9)
!1046 = !DILocation(line: 923, column: 9, scope: !1045)
!1047 = !DILocation(line: 923, column: 17, scope: !1045)
!1048 = !DILocation(line: 926, column: 28, scope: !868)
!1049 = !DILocation(line: 926, column: 2, scope: !868)
!1050 = !DILocation(line: 927, column: 6, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !868, file: !175, line: 927, column: 6)
!1052 = !DILocation(line: 927, column: 12, scope: !1051)
!1053 = !DILocation(line: 927, column: 19, scope: !1051)
!1054 = !DILocation(line: 927, column: 25, scope: !1055)
!1055 = !DILexicalBlockFile(scope: !1051, file: !175, discriminator: 1)
!1056 = !DILocation(line: 927, column: 32, scope: !1055)
!1057 = !DILocation(line: 927, column: 37, scope: !1055)
!1058 = !DILocation(line: 927, column: 43, scope: !1055)
!1059 = !DILocation(line: 927, column: 47, scope: !1060)
!1060 = !DILexicalBlockFile(scope: !1051, file: !175, discriminator: 2)
!1061 = !DILocation(line: 927, column: 54, scope: !1060)
!1062 = !DILocation(line: 927, column: 62, scope: !1060)
!1063 = !DILocation(line: 927, column: 69, scope: !1060)
!1064 = !DILocation(line: 927, column: 59, scope: !1060)
!1065 = !DILocation(line: 927, column: 6, scope: !1060)
!1066 = !DILocation(line: 930, column: 21, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1051, file: !175, line: 927, column: 78)
!1068 = !DILocation(line: 930, column: 27, scope: !1067)
!1069 = !DILocation(line: 930, column: 3, scope: !1067)
!1070 = !DILocation(line: 930, column: 9, scope: !1067)
!1071 = !DILocation(line: 930, column: 19, scope: !1067)
!1072 = !DILocation(line: 931, column: 19, scope: !1067)
!1073 = !DILocation(line: 931, column: 25, scope: !1067)
!1074 = !DILocation(line: 931, column: 3, scope: !1067)
!1075 = !DILocation(line: 931, column: 9, scope: !1067)
!1076 = !DILocation(line: 931, column: 17, scope: !1067)
!1077 = !DILocation(line: 932, column: 7, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1067, file: !175, line: 932, column: 7)
!1079 = !DILocation(line: 932, column: 13, scope: !1078)
!1080 = !DILocation(line: 932, column: 29, scope: !1078)
!1081 = !DILocation(line: 932, column: 7, scope: !1067)
!1082 = !DILocation(line: 933, column: 16, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1078, file: !175, line: 932, column: 34)
!1084 = !DILocation(line: 933, column: 23, scope: !1083)
!1085 = !DILocation(line: 933, column: 29, scope: !1083)
!1086 = !DILocation(line: 933, column: 41, scope: !1083)
!1087 = !DILocation(line: 933, column: 47, scope: !1083)
!1088 = !DILocation(line: 934, column: 10, scope: !1083)
!1089 = !DILocation(line: 934, column: 16, scope: !1083)
!1090 = !DILocation(line: 934, column: 9, scope: !1083)
!1091 = !DILocation(line: 933, column: 4, scope: !1083)
!1092 = !DILocation(line: 935, column: 3, scope: !1083)
!1093 = !DILocation(line: 936, column: 29, scope: !1067)
!1094 = !DILocation(line: 936, column: 3, scope: !1067)
!1095 = !DILocation(line: 937, column: 2, scope: !1067)
!1096 = !DILocation(line: 939, column: 19, scope: !868)
!1097 = !DILocation(line: 939, column: 26, scope: !868)
!1098 = !DILocation(line: 939, column: 31, scope: !868)
!1099 = !DILocation(line: 939, column: 37, scope: !868)
!1100 = !DILocation(line: 939, column: 41, scope: !932)
!1101 = !DILocation(line: 939, column: 48, scope: !932)
!1102 = !DILocation(line: 939, column: 56, scope: !932)
!1103 = !DILocation(line: 939, column: 63, scope: !932)
!1104 = !DILocation(line: 939, column: 53, scope: !932)
!1105 = !DILocation(line: 939, column: 37, scope: !935)
!1106 = !DILocation(line: 939, column: 2, scope: !935)
!1107 = !DILocation(line: 939, column: 8, scope: !935)
!1108 = !DILocation(line: 939, column: 15, scope: !935)
!1109 = !DILocation(line: 940, column: 6, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !868, file: !175, line: 940, column: 6)
!1111 = !DILocation(line: 940, column: 12, scope: !1110)
!1112 = !DILocation(line: 940, column: 6, scope: !868)
!1113 = !DILocation(line: 942, column: 38, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1110, file: !175, line: 940, column: 20)
!1115 = !DILocation(line: 942, column: 44, scope: !1114)
!1116 = !DILocation(line: 942, column: 50, scope: !1114)
!1117 = !DILocation(line: 942, column: 15, scope: !1114)
!1118 = !DILocation(line: 943, column: 4, scope: !1114)
!1119 = !DILocation(line: 943, column: 10, scope: !1114)
!1120 = !DILocation(line: 942, column: 61, scope: !1114)
!1121 = !DILocation(line: 942, column: 13, scope: !1114)
!1122 = !DILocation(line: 944, column: 21, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1114, file: !175, line: 944, column: 21)
!1124 = !DILocation(line: 944, column: 27, scope: !1123)
!1125 = !DILocation(line: 944, column: 45, scope: !1123)
!1126 = !DILocation(line: 944, column: 51, scope: !1123)
!1127 = !DILocation(line: 944, column: 58, scope: !1123)
!1128 = !DILocation(line: 944, column: 57, scope: !1123)
!1129 = !DILocation(line: 944, column: 43, scope: !1123)
!1130 = !DILocation(line: 944, column: 21, scope: !1114)
!1131 = !DILocation(line: 945, column: 28, scope: !1123)
!1132 = !DILocation(line: 945, column: 34, scope: !1123)
!1133 = !DILocation(line: 945, column: 41, scope: !1123)
!1134 = !DILocation(line: 945, column: 40, scope: !1123)
!1135 = !DILocation(line: 945, column: 4, scope: !1123)
!1136 = !DILocation(line: 945, column: 10, scope: !1123)
!1137 = !DILocation(line: 945, column: 26, scope: !1123)
!1138 = !DILocation(line: 946, column: 17, scope: !1114)
!1139 = !DILocation(line: 946, column: 23, scope: !1114)
!1140 = !DILocation(line: 946, column: 33, scope: !1114)
!1141 = !DILocation(line: 947, column: 2, scope: !1114)
!1142 = !DILocation(line: 949, column: 2, scope: !868)
!1143 = !DILocation(line: 949, column: 8, scope: !868)
!1144 = !DILocation(line: 949, column: 14, scope: !868)
!1145 = !DILocation(line: 950, column: 1, scope: !868)
!1146 = !DILocation(line: 950, column: 1, scope: !932)
!1147 = distinct !DISubprogram(name: "textbuffer_view_get_line_cache", scope: !175, file: !175, line: 1008, type: !1148, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !183)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!1150, !29, !48}
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64, align: 64)
!1151 = !DIDerivedType(tag: DW_TAG_typedef, name: "LINE_CACHE_REC", file: !31, line: 35, baseType: !1152)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !31, line: 27, size: 384, align: 64, elements: !1153)
!1153 = !{!1154, !1155, !1156}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "last_access", scope: !1152, file: !31, line: 28, baseType: !65, size: 64, align: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1152, file: !31, line: 30, baseType: !63, size: 32, align: 32, offset: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !1152, file: !31, line: 34, baseType: !1157, size: 256, align: 64, offset: 128)
!1157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 256, align: 64, elements: !1158)
!1158 = !{!1159}
!1159 = !DISubrange(count: 1)
!1160 = !DILocalVariable(name: "view", arg: 1, scope: !1147, file: !175, line: 1008, type: !29)
!1161 = !DILocation(line: 1008, column: 70, scope: !1147)
!1162 = !DILocalVariable(name: "line", arg: 2, scope: !1147, file: !175, line: 1009, type: !48)
!1163 = !DILocation(line: 1009, column: 23, scope: !1147)
!1164 = !DILocalVariable(name: "cache", scope: !1147, file: !175, line: 1011, type: !1150)
!1165 = !DILocation(line: 1011, column: 18, scope: !1147)
!1166 = !DILocation(line: 1013, column: 9, scope: !1147)
!1167 = distinct !{!1167, !1166}
!1168 = !DILocation(line: 1013, column: 18, scope: !1169)
!1169 = !DILexicalBlockFile(scope: !1170, file: !175, discriminator: 1)
!1170 = distinct !DILexicalBlock(scope: !1171, file: !175, line: 1013, column: 18)
!1171 = distinct !DILexicalBlock(scope: !1147, file: !175, line: 1013, column: 12)
!1172 = !DILocation(line: 1013, column: 23, scope: !1169)
!1173 = !DILocation(line: 1013, column: 18, scope: !1174)
!1174 = !DILexicalBlockFile(scope: !1171, file: !175, discriminator: 2)
!1175 = !DILocation(line: 1013, column: 17, scope: !1176)
!1176 = !DILexicalBlockFile(scope: !1170, file: !175, discriminator: 3)
!1177 = !DILocation(line: 1013, column: 133, scope: !1178)
!1178 = !DILexicalBlockFile(scope: !1171, file: !175, discriminator: 4)
!1179 = !DILocation(line: 1014, column: 9, scope: !1147)
!1180 = distinct !{!1180, !1179}
!1181 = !DILocation(line: 1014, column: 18, scope: !1182)
!1182 = !DILexicalBlockFile(scope: !1183, file: !175, discriminator: 1)
!1183 = distinct !DILexicalBlock(scope: !1184, file: !175, line: 1014, column: 18)
!1184 = distinct !DILexicalBlock(scope: !1147, file: !175, line: 1014, column: 12)
!1185 = !DILocation(line: 1014, column: 23, scope: !1182)
!1186 = !DILocation(line: 1014, column: 18, scope: !1187)
!1187 = !DILexicalBlockFile(scope: !1184, file: !175, discriminator: 2)
!1188 = !DILocation(line: 1014, column: 17, scope: !1189)
!1189 = !DILexicalBlockFile(scope: !1183, file: !175, discriminator: 3)
!1190 = !DILocation(line: 1014, column: 133, scope: !1191)
!1191 = !DILexicalBlockFile(scope: !1184, file: !175, discriminator: 4)
!1192 = !DILocation(line: 1016, column: 30, scope: !1147)
!1193 = !DILocation(line: 1016, column: 36, scope: !1147)
!1194 = !DILocation(line: 1016, column: 43, scope: !1147)
!1195 = !DILocation(line: 1016, column: 55, scope: !1147)
!1196 = !DILocation(line: 1016, column: 10, scope: !1147)
!1197 = !DILocation(line: 1016, column: 8, scope: !1147)
!1198 = !DILocation(line: 1017, column: 6, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1147, file: !175, line: 1017, column: 6)
!1200 = !DILocation(line: 1017, column: 12, scope: !1199)
!1201 = !DILocation(line: 1017, column: 6, scope: !1147)
!1202 = !DILocation(line: 1018, column: 34, scope: !1199)
!1203 = !DILocation(line: 1018, column: 40, scope: !1199)
!1204 = !DILocation(line: 1018, column: 11, scope: !1199)
!1205 = !DILocation(line: 1018, column: 9, scope: !1199)
!1206 = !DILocation(line: 1018, column: 3, scope: !1199)
!1207 = !DILocation(line: 1020, column: 24, scope: !1199)
!1208 = !DILocation(line: 1020, column: 3, scope: !1199)
!1209 = !DILocation(line: 1020, column: 10, scope: !1199)
!1210 = !DILocation(line: 1020, column: 22, scope: !1199)
!1211 = !DILocation(line: 1022, column: 16, scope: !1147)
!1212 = !DILocation(line: 1022, column: 9, scope: !1147)
!1213 = distinct !DISubprogram(name: "view_scroll", scope: !175, file: !175, line: 798, type: !1214, isLocal: true, isDefinition: true, scopeLine: 800, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !183)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!63, !29, !1216, !1217, !63, !63}
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!1218 = !DILocalVariable(name: "view", arg: 1, scope: !1213, file: !175, line: 798, type: !29)
!1219 = !DILocation(line: 798, column: 46, scope: !1213)
!1220 = !DILocalVariable(name: "lines", arg: 2, scope: !1213, file: !175, line: 798, type: !1216)
!1221 = !DILocation(line: 798, column: 63, scope: !1213)
!1222 = !DILocalVariable(name: "subline", arg: 3, scope: !1213, file: !175, line: 799, type: !1217)
!1223 = !DILocation(line: 799, column: 15, scope: !1213)
!1224 = !DILocalVariable(name: "scrollcount", arg: 4, scope: !1213, file: !175, line: 799, type: !63)
!1225 = !DILocation(line: 799, column: 28, scope: !1213)
!1226 = !DILocalVariable(name: "draw_nonclean", arg: 5, scope: !1213, file: !175, line: 799, type: !63)
!1227 = !DILocation(line: 799, column: 45, scope: !1213)
!1228 = !DILocalVariable(name: "linecount", scope: !1213, file: !175, line: 801, type: !63)
!1229 = !DILocation(line: 801, column: 6, scope: !1213)
!1230 = !DILocalVariable(name: "realcount", scope: !1213, file: !175, line: 801, type: !63)
!1231 = !DILocation(line: 801, column: 17, scope: !1213)
!1232 = !DILocalVariable(name: "scroll_visible", scope: !1213, file: !175, line: 801, type: !63)
!1233 = !DILocation(line: 801, column: 28, scope: !1213)
!1234 = !DILocation(line: 803, column: 7, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1213, file: !175, line: 803, column: 6)
!1236 = !DILocation(line: 803, column: 6, scope: !1235)
!1237 = !DILocation(line: 803, column: 13, scope: !1235)
!1238 = !DILocation(line: 803, column: 6, scope: !1213)
!1239 = !DILocation(line: 804, column: 3, scope: !1235)
!1240 = !DILocation(line: 807, column: 19, scope: !1213)
!1241 = !DILocation(line: 807, column: 29, scope: !1213)
!1242 = !DILocation(line: 807, column: 35, scope: !1213)
!1243 = !DILocation(line: 807, column: 25, scope: !1213)
!1244 = !DILocation(line: 807, column: 17, scope: !1213)
!1245 = !DILocation(line: 809, column: 16, scope: !1213)
!1246 = !DILocation(line: 809, column: 15, scope: !1213)
!1247 = !DILocation(line: 809, column: 14, scope: !1213)
!1248 = !DILocation(line: 809, column: 12, scope: !1213)
!1249 = !DILocation(line: 810, column: 18, scope: !1213)
!1250 = !DILocation(line: 810, column: 17, scope: !1213)
!1251 = !DILocation(line: 810, column: 14, scope: !1213)
!1252 = !DILocation(line: 811, column: 3, scope: !1213)
!1253 = !DILocation(line: 811, column: 11, scope: !1213)
!1254 = !DILocation(line: 812, column: 2, scope: !1213)
!1255 = !DILocation(line: 812, column: 9, scope: !1256)
!1256 = !DILexicalBlockFile(scope: !1213, file: !175, discriminator: 1)
!1257 = !DILocation(line: 812, column: 21, scope: !1256)
!1258 = !DILocation(line: 812, column: 2, scope: !1256)
!1259 = !DILocation(line: 813, column: 20, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1213, file: !175, line: 812, column: 26)
!1261 = !DILocation(line: 813, column: 19, scope: !1260)
!1262 = !DILocation(line: 813, column: 28, scope: !1260)
!1263 = !DILocation(line: 813, column: 33, scope: !1260)
!1264 = !DILocation(line: 813, column: 42, scope: !1260)
!1265 = !DILocation(line: 813, column: 49, scope: !1260)
!1266 = !DILocation(line: 813, column: 39, scope: !1260)
!1267 = !DILocation(line: 813, column: 63, scope: !1260)
!1268 = !DILocation(line: 813, column: 16, scope: !1260)
!1269 = !DILocation(line: 813, column: 16, scope: !1270)
!1270 = !DILexicalBlockFile(scope: !1260, file: !175, discriminator: 1)
!1271 = !DILocation(line: 813, column: 106, scope: !1272)
!1272 = !DILexicalBlockFile(scope: !1260, file: !175, discriminator: 2)
!1273 = !DILocation(line: 813, column: 113, scope: !1272)
!1274 = !DILocation(line: 813, column: 112, scope: !1272)
!1275 = !DILocation(line: 813, column: 75, scope: !1272)
!1276 = !DILocation(line: 813, column: 121, scope: !1272)
!1277 = !DILocation(line: 813, column: 16, scope: !1272)
!1278 = !DILocation(line: 813, column: 16, scope: !1279)
!1279 = !DILexicalBlockFile(scope: !1260, file: !175, discriminator: 3)
!1280 = !DILocation(line: 813, column: 13, scope: !1279)
!1281 = !DILocation(line: 815, column: 8, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1260, file: !175, line: 815, column: 7)
!1283 = !DILocation(line: 815, column: 23, scope: !1282)
!1284 = !DILocation(line: 815, column: 27, scope: !1285)
!1285 = !DILexicalBlockFile(scope: !1282, file: !175, discriminator: 1)
!1286 = !DILocation(line: 815, column: 26, scope: !1285)
!1287 = !DILocation(line: 815, column: 36, scope: !1285)
!1288 = !DILocation(line: 815, column: 42, scope: !1285)
!1289 = !DILocation(line: 815, column: 33, scope: !1285)
!1290 = !DILocation(line: 815, column: 60, scope: !1285)
!1291 = !DILocation(line: 816, column: 8, scope: !1282)
!1292 = !DILocation(line: 816, column: 23, scope: !1282)
!1293 = !DILocation(line: 816, column: 29, scope: !1282)
!1294 = !DILocation(line: 816, column: 20, scope: !1282)
!1295 = !DILocation(line: 815, column: 7, scope: !1272)
!1296 = !DILocation(line: 817, column: 15, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1282, file: !175, line: 816, column: 46)
!1298 = !DILocation(line: 817, column: 21, scope: !1297)
!1299 = !DILocation(line: 817, column: 5, scope: !1297)
!1300 = !DILocation(line: 817, column: 13, scope: !1297)
!1301 = !DILocation(line: 818, column: 17, scope: !1297)
!1302 = !DILocation(line: 818, column: 23, scope: !1297)
!1303 = !DILocation(line: 818, column: 14, scope: !1297)
!1304 = !DILocation(line: 819, column: 16, scope: !1297)
!1305 = !DILocation(line: 820, column: 4, scope: !1297)
!1306 = !DILocation(line: 823, column: 16, scope: !1260)
!1307 = !DILocation(line: 823, column: 13, scope: !1260)
!1308 = !DILocation(line: 824, column: 18, scope: !1260)
!1309 = !DILocation(line: 824, column: 15, scope: !1260)
!1310 = !DILocation(line: 825, column: 7, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1260, file: !175, line: 825, column: 7)
!1312 = !DILocation(line: 825, column: 19, scope: !1311)
!1313 = !DILocation(line: 825, column: 7, scope: !1260)
!1314 = !DILocation(line: 826, column: 17, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1311, file: !175, line: 825, column: 24)
!1316 = !DILocation(line: 826, column: 14, scope: !1315)
!1317 = !DILocation(line: 827, column: 15, scope: !1315)
!1318 = !DILocation(line: 827, column: 25, scope: !1315)
!1319 = !DILocation(line: 827, column: 24, scope: !1315)
!1320 = !DILocation(line: 827, column: 5, scope: !1315)
!1321 = !DILocation(line: 827, column: 13, scope: !1315)
!1322 = !DILocation(line: 828, column: 16, scope: !1315)
!1323 = !DILocation(line: 829, column: 4, scope: !1315)
!1324 = !DILocation(line: 832, column: 9, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1260, file: !175, line: 832, column: 7)
!1326 = !DILocation(line: 832, column: 8, scope: !1325)
!1327 = !DILocation(line: 832, column: 17, scope: !1325)
!1328 = !DILocation(line: 832, column: 22, scope: !1325)
!1329 = !DILocation(line: 832, column: 7, scope: !1260)
!1330 = !DILocation(line: 833, column: 4, scope: !1325)
!1331 = !DILocation(line: 835, column: 14, scope: !1260)
!1332 = !DILocation(line: 835, column: 13, scope: !1260)
!1333 = !DILocation(line: 835, column: 22, scope: !1260)
!1334 = !DILocation(line: 835, column: 4, scope: !1260)
!1335 = !DILocation(line: 835, column: 10, scope: !1260)
!1336 = !DILocation(line: 812, column: 2, scope: !1337)
!1337 = !DILexicalBlockFile(scope: !1213, file: !175, discriminator: 2)
!1338 = distinct !{!1338, !1254}
!1339 = !DILocation(line: 839, column: 2, scope: !1213)
!1340 = !DILocation(line: 839, column: 9, scope: !1256)
!1341 = !DILocation(line: 839, column: 21, scope: !1256)
!1342 = !DILocation(line: 839, column: 25, scope: !1256)
!1343 = !DILocation(line: 839, column: 30, scope: !1337)
!1344 = !DILocation(line: 839, column: 29, scope: !1337)
!1345 = !DILocation(line: 839, column: 38, scope: !1337)
!1346 = !DILocation(line: 839, column: 43, scope: !1337)
!1347 = !DILocation(line: 839, column: 2, scope: !1348)
!1348 = !DILexicalBlockFile(scope: !1213, file: !175, discriminator: 3)
!1349 = !DILocation(line: 840, column: 14, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1213, file: !175, line: 839, column: 51)
!1351 = !DILocation(line: 840, column: 13, scope: !1350)
!1352 = !DILocation(line: 840, column: 22, scope: !1350)
!1353 = !DILocation(line: 840, column: 4, scope: !1350)
!1354 = !DILocation(line: 840, column: 10, scope: !1350)
!1355 = !DILocation(line: 841, column: 20, scope: !1350)
!1356 = !DILocation(line: 841, column: 19, scope: !1350)
!1357 = !DILocation(line: 841, column: 28, scope: !1350)
!1358 = !DILocation(line: 841, column: 33, scope: !1350)
!1359 = !DILocation(line: 841, column: 42, scope: !1350)
!1360 = !DILocation(line: 841, column: 49, scope: !1350)
!1361 = !DILocation(line: 841, column: 39, scope: !1350)
!1362 = !DILocation(line: 841, column: 63, scope: !1350)
!1363 = !DILocation(line: 841, column: 16, scope: !1350)
!1364 = !DILocation(line: 841, column: 16, scope: !1365)
!1365 = !DILexicalBlockFile(scope: !1350, file: !175, discriminator: 1)
!1366 = !DILocation(line: 841, column: 106, scope: !1367)
!1367 = !DILexicalBlockFile(scope: !1350, file: !175, discriminator: 2)
!1368 = !DILocation(line: 841, column: 113, scope: !1367)
!1369 = !DILocation(line: 841, column: 112, scope: !1367)
!1370 = !DILocation(line: 841, column: 75, scope: !1367)
!1371 = !DILocation(line: 841, column: 121, scope: !1367)
!1372 = !DILocation(line: 841, column: 16, scope: !1367)
!1373 = !DILocation(line: 841, column: 16, scope: !1374)
!1374 = !DILexicalBlockFile(scope: !1350, file: !175, discriminator: 3)
!1375 = !DILocation(line: 841, column: 13, scope: !1374)
!1376 = !DILocation(line: 843, column: 16, scope: !1350)
!1377 = !DILocation(line: 843, column: 13, scope: !1350)
!1378 = !DILocation(line: 844, column: 18, scope: !1350)
!1379 = !DILocation(line: 844, column: 15, scope: !1350)
!1380 = !DILocation(line: 845, column: 7, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1350, file: !175, line: 845, column: 7)
!1382 = !DILocation(line: 845, column: 19, scope: !1381)
!1383 = !DILocation(line: 845, column: 7, scope: !1350)
!1384 = !DILocation(line: 846, column: 17, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1381, file: !175, line: 845, column: 24)
!1386 = !DILocation(line: 846, column: 14, scope: !1385)
!1387 = !DILocation(line: 847, column: 15, scope: !1385)
!1388 = !DILocation(line: 847, column: 5, scope: !1385)
!1389 = !DILocation(line: 847, column: 13, scope: !1385)
!1390 = !DILocation(line: 848, column: 4, scope: !1385)
!1391 = !DILocation(line: 839, column: 2, scope: !1392)
!1392 = !DILexicalBlockFile(scope: !1213, file: !175, discriminator: 4)
!1393 = distinct !{!1393, !1339}
!1394 = !DILocation(line: 852, column: 6, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1213, file: !175, line: 852, column: 6)
!1396 = !DILocation(line: 852, column: 21, scope: !1395)
!1397 = !DILocation(line: 852, column: 24, scope: !1398)
!1398 = !DILexicalBlockFile(scope: !1395, file: !175, discriminator: 1)
!1399 = !DILocation(line: 852, column: 34, scope: !1398)
!1400 = !DILocation(line: 852, column: 39, scope: !1398)
!1401 = !DILocation(line: 852, column: 42, scope: !1402)
!1402 = !DILexicalBlockFile(scope: !1395, file: !175, discriminator: 2)
!1403 = !DILocation(line: 852, column: 48, scope: !1402)
!1404 = !DILocation(line: 852, column: 55, scope: !1402)
!1405 = !DILocation(line: 852, column: 6, scope: !1402)
!1406 = !DILocation(line: 853, column: 7, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !175, line: 853, column: 7)
!1408 = distinct !DILexicalBlock(scope: !1395, file: !175, line: 852, column: 63)
!1409 = !DILocation(line: 853, column: 21, scope: !1407)
!1410 = !DILocation(line: 853, column: 27, scope: !1407)
!1411 = !DILocation(line: 853, column: 20, scope: !1407)
!1412 = !DILocation(line: 853, column: 17, scope: !1407)
!1413 = !DILocation(line: 853, column: 34, scope: !1407)
!1414 = !DILocation(line: 853, column: 37, scope: !1415)
!1415 = !DILexicalBlockFile(scope: !1407, file: !175, discriminator: 1)
!1416 = !DILocation(line: 853, column: 50, scope: !1415)
!1417 = !DILocation(line: 853, column: 56, scope: !1415)
!1418 = !DILocation(line: 853, column: 47, scope: !1415)
!1419 = !DILocation(line: 853, column: 7, scope: !1415)
!1420 = !DILocation(line: 856, column: 27, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1407, file: !175, line: 853, column: 64)
!1422 = !DILocation(line: 856, column: 4, scope: !1421)
!1423 = !DILocation(line: 857, column: 3, scope: !1421)
!1424 = !DILocation(line: 858, column: 8, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !175, line: 858, column: 8)
!1426 = distinct !DILexicalBlock(scope: !1407, file: !175, line: 857, column: 10)
!1427 = !DILocation(line: 858, column: 14, scope: !1425)
!1428 = !DILocation(line: 858, column: 23, scope: !1425)
!1429 = !DILocation(line: 858, column: 20, scope: !1425)
!1430 = !DILocation(line: 858, column: 8, scope: !1426)
!1431 = !DILocation(line: 860, column: 20, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1425, file: !175, line: 858, column: 35)
!1433 = !DILocation(line: 860, column: 26, scope: !1432)
!1434 = !DILocation(line: 860, column: 5, scope: !1432)
!1435 = !DILocation(line: 861, column: 24, scope: !1432)
!1436 = !DILocation(line: 861, column: 30, scope: !1432)
!1437 = !DILocation(line: 861, column: 38, scope: !1432)
!1438 = !DILocation(line: 861, column: 5, scope: !1432)
!1439 = !DILocation(line: 863, column: 9, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1432, file: !175, line: 863, column: 9)
!1441 = !DILocation(line: 863, column: 9, scope: !1432)
!1442 = !DILocation(line: 864, column: 10, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !175, line: 864, column: 10)
!1444 = distinct !DILexicalBlock(scope: !1440, file: !175, line: 863, column: 24)
!1445 = !DILocation(line: 864, column: 20, scope: !1443)
!1446 = !DILocation(line: 864, column: 10, scope: !1444)
!1447 = !DILocation(line: 865, column: 17, scope: !1443)
!1448 = !DILocation(line: 865, column: 24, scope: !1443)
!1449 = !DILocation(line: 865, column: 31, scope: !1443)
!1450 = !DILocation(line: 865, column: 43, scope: !1443)
!1451 = !DILocation(line: 865, column: 50, scope: !1443)
!1452 = !DILocation(line: 865, column: 63, scope: !1443)
!1453 = !DILocation(line: 865, column: 62, scope: !1443)
!1454 = !DILocation(line: 865, column: 7, scope: !1443)
!1455 = !DILocation(line: 867, column: 24, scope: !1443)
!1456 = !DILocation(line: 867, column: 30, scope: !1443)
!1457 = !DILocation(line: 867, column: 7, scope: !1443)
!1458 = !DILocation(line: 868, column: 5, scope: !1444)
!1459 = !DILocation(line: 870, column: 18, scope: !1432)
!1460 = !DILocation(line: 870, column: 24, scope: !1432)
!1461 = !DILocation(line: 870, column: 5, scope: !1432)
!1462 = !DILocation(line: 871, column: 4, scope: !1432)
!1463 = !DILocation(line: 875, column: 5, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1425, file: !175, line: 871, column: 11)
!1465 = !DILocation(line: 875, column: 11, scope: !1464)
!1466 = !DILocation(line: 875, column: 17, scope: !1464)
!1467 = !DILocation(line: 876, column: 5, scope: !1464)
!1468 = !DILocation(line: 879, column: 2, scope: !1408)
!1469 = !DILocation(line: 881, column: 9, scope: !1213)
!1470 = !DILocation(line: 881, column: 19, scope: !1213)
!1471 = !DILocation(line: 881, column: 26, scope: !1256)
!1472 = !DILocation(line: 881, column: 9, scope: !1256)
!1473 = !DILocation(line: 881, column: 39, scope: !1337)
!1474 = !DILocation(line: 881, column: 38, scope: !1337)
!1475 = !DILocation(line: 881, column: 9, scope: !1337)
!1476 = !DILocation(line: 881, column: 9, scope: !1348)
!1477 = !DILocation(line: 881, column: 2, scope: !1348)
!1478 = !DILocation(line: 882, column: 1, scope: !1213)
!1479 = distinct !DISubprogram(name: "view_get_linecount_all", scope: !175, file: !175, line: 726, type: !1480, isLocal: true, isDefinition: true, scopeLine: 727, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !183)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{!63, !29, !48}
!1482 = !DILocalVariable(name: "view", arg: 1, scope: !1479, file: !175, line: 726, type: !29)
!1483 = !DILocation(line: 726, column: 57, scope: !1479)
!1484 = !DILocalVariable(name: "line", arg: 2, scope: !1479, file: !175, line: 726, type: !48)
!1485 = !DILocation(line: 726, column: 73, scope: !1479)
!1486 = !DILocalVariable(name: "linecount", scope: !1479, file: !175, line: 728, type: !63)
!1487 = !DILocation(line: 728, column: 6, scope: !1479)
!1488 = !DILocation(line: 730, column: 19, scope: !1479)
!1489 = !DILocation(line: 731, column: 2, scope: !1479)
!1490 = !DILocation(line: 731, column: 9, scope: !1491)
!1491 = !DILexicalBlockFile(scope: !1479, file: !175, discriminator: 1)
!1492 = !DILocation(line: 731, column: 14, scope: !1491)
!1493 = !DILocation(line: 731, column: 2, scope: !1491)
!1494 = !DILocation(line: 732, column: 20, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1479, file: !175, line: 731, column: 22)
!1496 = !DILocation(line: 732, column: 27, scope: !1495)
!1497 = !DILocation(line: 732, column: 32, scope: !1495)
!1498 = !DILocation(line: 732, column: 41, scope: !1495)
!1499 = !DILocation(line: 732, column: 48, scope: !1495)
!1500 = !DILocation(line: 732, column: 38, scope: !1495)
!1501 = !DILocation(line: 732, column: 62, scope: !1495)
!1502 = !DILocation(line: 732, column: 17, scope: !1495)
!1503 = !DILocation(line: 732, column: 17, scope: !1504)
!1504 = !DILexicalBlockFile(scope: !1495, file: !175, discriminator: 1)
!1505 = !DILocation(line: 732, column: 105, scope: !1506)
!1506 = !DILexicalBlockFile(scope: !1495, file: !175, discriminator: 2)
!1507 = !DILocation(line: 732, column: 111, scope: !1506)
!1508 = !DILocation(line: 732, column: 74, scope: !1506)
!1509 = !DILocation(line: 732, column: 118, scope: !1506)
!1510 = !DILocation(line: 732, column: 17, scope: !1506)
!1511 = !DILocation(line: 732, column: 17, scope: !1512)
!1512 = !DILexicalBlockFile(scope: !1495, file: !175, discriminator: 3)
!1513 = !DILocation(line: 732, column: 13, scope: !1512)
!1514 = !DILocation(line: 733, column: 24, scope: !1495)
!1515 = !DILocation(line: 733, column: 30, scope: !1495)
!1516 = !DILocation(line: 733, column: 22, scope: !1495)
!1517 = !DILocation(line: 731, column: 2, scope: !1518)
!1518 = !DILexicalBlockFile(scope: !1479, file: !175, discriminator: 2)
!1519 = distinct !{!1519, !1489}
!1520 = !DILocation(line: 736, column: 16, scope: !1479)
!1521 = !DILocation(line: 736, column: 9, scope: !1479)
!1522 = distinct !DISubprogram(name: "textbuffer_view_clear", scope: !175, file: !175, line: 953, type: !181, isLocal: false, isDefinition: true, scopeLine: 954, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !183)
!1523 = !DILocalVariable(name: "view", arg: 1, scope: !1522, file: !175, line: 953, type: !29)
!1524 = !DILocation(line: 953, column: 50, scope: !1522)
!1525 = !DILocation(line: 955, column: 9, scope: !1522)
!1526 = distinct !{!1526, !1525}
!1527 = !DILocation(line: 955, column: 17, scope: !1528)
!1528 = !DILexicalBlockFile(scope: !1529, file: !175, discriminator: 1)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !175, line: 955, column: 17)
!1530 = distinct !DILexicalBlock(scope: !1522, file: !175, line: 955, column: 11)
!1531 = !DILocation(line: 955, column: 22, scope: !1528)
!1532 = !DILocation(line: 955, column: 12, scope: !1533)
!1533 = !DILexicalBlockFile(scope: !1534, file: !175, discriminator: 2)
!1534 = distinct !DILexicalBlock(scope: !1529, file: !175, line: 955, column: 10)
!1535 = !DILocation(line: 955, column: 21, scope: !1536)
!1536 = !DILexicalBlockFile(scope: !1537, file: !175, discriminator: 3)
!1537 = distinct !DILexicalBlock(scope: !1529, file: !175, line: 955, column: 19)
!1538 = !DILocation(line: 955, column: 110, scope: !1536)
!1539 = !DILocation(line: 955, column: 121, scope: !1540)
!1540 = !DILexicalBlockFile(scope: !1530, file: !175, discriminator: 4)
!1541 = !DILocation(line: 957, column: 2, scope: !1522)
!1542 = !DILocation(line: 957, column: 8, scope: !1522)
!1543 = !DILocation(line: 957, column: 13, scope: !1522)
!1544 = !DILocation(line: 959, column: 24, scope: !1522)
!1545 = !DILocation(line: 959, column: 30, scope: !1522)
!1546 = !DILocation(line: 959, column: 3, scope: !1522)
!1547 = !DILocation(line: 958, column: 27, scope: !1522)
!1548 = !DILocation(line: 958, column: 33, scope: !1522)
!1549 = !DILocation(line: 958, column: 43, scope: !1522)
!1550 = !DILocation(line: 958, column: 2, scope: !1522)
!1551 = !DILocation(line: 958, column: 8, scope: !1522)
!1552 = !DILocation(line: 958, column: 25, scope: !1522)
!1553 = !DILocation(line: 961, column: 3, scope: !1522)
!1554 = !DILocation(line: 961, column: 9, scope: !1522)
!1555 = !DILocation(line: 961, column: 17, scope: !1522)
!1556 = !DILocation(line: 961, column: 26, scope: !1522)
!1557 = !DILocation(line: 961, column: 3, scope: !1558)
!1558 = !DILexicalBlockFile(scope: !1522, file: !175, discriminator: 1)
!1559 = !DILocation(line: 962, column: 7, scope: !1522)
!1560 = !DILocation(line: 962, column: 13, scope: !1522)
!1561 = !DILocation(line: 962, column: 21, scope: !1522)
!1562 = !DILocation(line: 962, column: 32, scope: !1522)
!1563 = !DILocation(line: 962, column: 37, scope: !1522)
!1564 = !DILocation(line: 962, column: 46, scope: !1522)
!1565 = !DILocation(line: 962, column: 53, scope: !1522)
!1566 = !DILocation(line: 962, column: 43, scope: !1522)
!1567 = !DILocation(line: 962, column: 67, scope: !1522)
!1568 = !DILocation(line: 962, column: 4, scope: !1522)
!1569 = !DILocation(line: 962, column: 4, scope: !1558)
!1570 = !DILocation(line: 962, column: 110, scope: !1571)
!1571 = !DILexicalBlockFile(scope: !1522, file: !175, discriminator: 2)
!1572 = !DILocation(line: 962, column: 116, scope: !1571)
!1573 = !DILocation(line: 962, column: 122, scope: !1571)
!1574 = !DILocation(line: 962, column: 130, scope: !1571)
!1575 = !DILocation(line: 962, column: 79, scope: !1571)
!1576 = !DILocation(line: 962, column: 141, scope: !1571)
!1577 = !DILocation(line: 962, column: 4, scope: !1571)
!1578 = !DILocation(line: 962, column: 4, scope: !1579)
!1579 = !DILexicalBlockFile(scope: !1522, file: !175, discriminator: 3)
!1580 = !DILocation(line: 961, column: 3, scope: !1571)
!1581 = !DILocation(line: 961, column: 3, scope: !1579)
!1582 = !DILocation(line: 960, column: 25, scope: !1522)
!1583 = !DILocation(line: 960, column: 31, scope: !1522)
!1584 = !DILocation(line: 960, column: 39, scope: !1522)
!1585 = !DILocation(line: 960, column: 2, scope: !1522)
!1586 = !DILocation(line: 960, column: 8, scope: !1522)
!1587 = !DILocation(line: 960, column: 23, scope: !1522)
!1588 = !DILocation(line: 963, column: 26, scope: !1522)
!1589 = !DILocation(line: 963, column: 32, scope: !1522)
!1590 = !DILocation(line: 963, column: 2, scope: !1522)
!1591 = !DILocation(line: 963, column: 8, scope: !1522)
!1592 = !DILocation(line: 963, column: 24, scope: !1522)
!1593 = !DILocation(line: 964, column: 2, scope: !1522)
!1594 = !DILocation(line: 964, column: 8, scope: !1522)
!1595 = !DILocation(line: 964, column: 15, scope: !1522)
!1596 = !DILocation(line: 965, column: 2, scope: !1522)
!1597 = !DILocation(line: 965, column: 8, scope: !1522)
!1598 = !DILocation(line: 965, column: 18, scope: !1522)
!1599 = !DILocation(line: 967, column: 32, scope: !1522)
!1600 = !DILocation(line: 967, column: 9, scope: !1522)
!1601 = !DILocation(line: 968, column: 1, scope: !1522)
!1602 = !DILocation(line: 968, column: 1, scope: !1558)
!1603 = distinct !DISubprogram(name: "textbuffer_view_redraw", scope: !175, file: !175, line: 1411, type: !181, isLocal: false, isDefinition: true, scopeLine: 1412, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !183)
!1604 = !DILocalVariable(name: "view", arg: 1, scope: !1603, file: !175, line: 1411, type: !29)
!1605 = !DILocation(line: 1411, column: 51, scope: !1603)
!1606 = !DILocation(line: 1413, column: 2, scope: !1603)
!1607 = distinct !{!1607, !1606}
!1608 = !DILocation(line: 1413, column: 10, scope: !1609)
!1609 = !DILexicalBlockFile(scope: !1610, file: !175, discriminator: 1)
!1610 = distinct !DILexicalBlock(scope: !1611, file: !175, line: 1413, column: 10)
!1611 = distinct !DILexicalBlock(scope: !1603, file: !175, line: 1413, column: 4)
!1612 = !DILocation(line: 1413, column: 15, scope: !1609)
!1613 = !DILocation(line: 1413, column: 5, scope: !1614)
!1614 = !DILexicalBlockFile(scope: !1615, file: !175, discriminator: 2)
!1615 = distinct !DILexicalBlock(scope: !1610, file: !175, line: 1413, column: 3)
!1616 = !DILocation(line: 1413, column: 14, scope: !1617)
!1617 = !DILexicalBlockFile(scope: !1618, file: !175, discriminator: 3)
!1618 = distinct !DILexicalBlock(scope: !1610, file: !175, line: 1413, column: 12)
!1619 = !DILocation(line: 1413, column: 103, scope: !1617)
!1620 = !DILocation(line: 1413, column: 114, scope: !1621)
!1621 = !DILexicalBlockFile(scope: !1611, file: !175, discriminator: 4)
!1622 = !DILocation(line: 1415, column: 6, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1603, file: !175, line: 1415, column: 6)
!1624 = !DILocation(line: 1415, column: 12, scope: !1623)
!1625 = !DILocation(line: 1415, column: 19, scope: !1623)
!1626 = !DILocation(line: 1415, column: 6, scope: !1603)
!1627 = !DILocation(line: 1416, column: 3, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1623, file: !175, line: 1415, column: 27)
!1629 = !DILocation(line: 1416, column: 9, scope: !1628)
!1630 = !DILocation(line: 1416, column: 15, scope: !1628)
!1631 = !DILocation(line: 1417, column: 13, scope: !1628)
!1632 = !DILocation(line: 1417, column: 20, scope: !1628)
!1633 = !DILocation(line: 1417, column: 27, scope: !1628)
!1634 = !DILocation(line: 1417, column: 39, scope: !1628)
!1635 = !DILocation(line: 1417, column: 46, scope: !1628)
!1636 = !DILocation(line: 1417, column: 58, scope: !1628)
!1637 = !DILocation(line: 1417, column: 64, scope: !1628)
!1638 = !DILocation(line: 1417, column: 3, scope: !1628)
!1639 = !DILocation(line: 1418, column: 16, scope: !1628)
!1640 = !DILocation(line: 1418, column: 22, scope: !1628)
!1641 = !DILocation(line: 1418, column: 3, scope: !1628)
!1642 = !DILocation(line: 1419, column: 2, scope: !1628)
!1643 = !DILocation(line: 1420, column: 1, scope: !1603)
!1644 = distinct !DISubprogram(name: "textbuffer_view_scroll", scope: !175, file: !175, line: 971, type: !847, isLocal: false, isDefinition: true, scopeLine: 972, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !183)
!1645 = !DILocalVariable(name: "view", arg: 1, scope: !1644, file: !175, line: 971, type: !29)
!1646 = !DILocation(line: 971, column: 51, scope: !1644)
!1647 = !DILocalVariable(name: "lines", arg: 2, scope: !1644, file: !175, line: 971, type: !63)
!1648 = !DILocation(line: 971, column: 61, scope: !1644)
!1649 = !DILocalVariable(name: "count", scope: !1644, file: !175, line: 973, type: !63)
!1650 = !DILocation(line: 973, column: 6, scope: !1644)
!1651 = !DILocation(line: 975, column: 9, scope: !1644)
!1652 = distinct !{!1652, !1651}
!1653 = !DILocation(line: 975, column: 17, scope: !1654)
!1654 = !DILexicalBlockFile(scope: !1655, file: !175, discriminator: 1)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !175, line: 975, column: 17)
!1656 = distinct !DILexicalBlock(scope: !1644, file: !175, line: 975, column: 11)
!1657 = !DILocation(line: 975, column: 22, scope: !1654)
!1658 = !DILocation(line: 975, column: 12, scope: !1659)
!1659 = !DILexicalBlockFile(scope: !1660, file: !175, discriminator: 2)
!1660 = distinct !DILexicalBlock(scope: !1655, file: !175, line: 975, column: 10)
!1661 = !DILocation(line: 975, column: 21, scope: !1662)
!1662 = !DILexicalBlockFile(scope: !1663, file: !175, discriminator: 3)
!1663 = distinct !DILexicalBlock(scope: !1655, file: !175, line: 975, column: 19)
!1664 = !DILocation(line: 975, column: 110, scope: !1662)
!1665 = !DILocation(line: 975, column: 121, scope: !1666)
!1666 = !DILexicalBlockFile(scope: !1656, file: !175, discriminator: 4)
!1667 = !DILocation(line: 977, column: 22, scope: !1644)
!1668 = !DILocation(line: 977, column: 29, scope: !1644)
!1669 = !DILocation(line: 977, column: 35, scope: !1644)
!1670 = !DILocation(line: 977, column: 47, scope: !1644)
!1671 = !DILocation(line: 977, column: 53, scope: !1644)
!1672 = !DILocation(line: 978, column: 8, scope: !1644)
!1673 = !DILocation(line: 977, column: 10, scope: !1644)
!1674 = !DILocation(line: 977, column: 8, scope: !1644)
!1675 = !DILocation(line: 979, column: 16, scope: !1644)
!1676 = !DILocation(line: 979, column: 22, scope: !1644)
!1677 = !DILocation(line: 979, column: 28, scope: !1678)
!1678 = !DILexicalBlockFile(scope: !1644, file: !175, discriminator: 1)
!1679 = !DILocation(line: 979, column: 16, scope: !1678)
!1680 = !DILocation(line: 979, column: 37, scope: !1681)
!1681 = !DILexicalBlockFile(scope: !1644, file: !175, discriminator: 2)
!1682 = !DILocation(line: 979, column: 36, scope: !1681)
!1683 = !DILocation(line: 979, column: 16, scope: !1681)
!1684 = !DILocation(line: 979, column: 16, scope: !1685)
!1685 = !DILexicalBlockFile(scope: !1644, file: !175, discriminator: 3)
!1686 = !DILocation(line: 979, column: 2, scope: !1685)
!1687 = !DILocation(line: 979, column: 8, scope: !1685)
!1688 = !DILocation(line: 979, column: 13, scope: !1685)
!1689 = !DILocation(line: 980, column: 19, scope: !1644)
!1690 = !DILocation(line: 980, column: 26, scope: !1644)
!1691 = !DILocation(line: 980, column: 31, scope: !1644)
!1692 = !DILocation(line: 980, column: 37, scope: !1644)
!1693 = !DILocation(line: 980, column: 41, scope: !1678)
!1694 = !DILocation(line: 980, column: 48, scope: !1678)
!1695 = !DILocation(line: 980, column: 56, scope: !1678)
!1696 = !DILocation(line: 980, column: 63, scope: !1678)
!1697 = !DILocation(line: 980, column: 53, scope: !1678)
!1698 = !DILocation(line: 980, column: 37, scope: !1681)
!1699 = !DILocation(line: 980, column: 2, scope: !1681)
!1700 = !DILocation(line: 980, column: 8, scope: !1681)
!1701 = !DILocation(line: 980, column: 15, scope: !1681)
!1702 = !DILocation(line: 981, column: 13, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1644, file: !175, line: 981, column: 13)
!1704 = !DILocation(line: 981, column: 19, scope: !1703)
!1705 = !DILocation(line: 981, column: 13, scope: !1644)
!1706 = !DILocation(line: 981, column: 27, scope: !1707)
!1707 = !DILexicalBlockFile(scope: !1703, file: !175, discriminator: 1)
!1708 = !DILocation(line: 981, column: 33, scope: !1707)
!1709 = !DILocation(line: 981, column: 43, scope: !1707)
!1710 = !DILocation(line: 983, column: 13, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1644, file: !175, line: 983, column: 13)
!1712 = !DILocation(line: 983, column: 19, scope: !1711)
!1713 = !DILocation(line: 983, column: 26, scope: !1711)
!1714 = !DILocation(line: 983, column: 13, scope: !1644)
!1715 = !DILocation(line: 984, column: 16, scope: !1711)
!1716 = !DILocation(line: 984, column: 22, scope: !1711)
!1717 = !DILocation(line: 984, column: 3, scope: !1711)
!1718 = !DILocation(line: 985, column: 1, scope: !1644)
!1719 = distinct !DISubprogram(name: "textbuffer_view_scroll_line", scope: !175, file: !175, line: 988, type: !1720, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !183)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{null, !29, !48}
!1722 = !DILocalVariable(name: "view", arg: 1, scope: !1719, file: !175, line: 988, type: !29)
!1723 = !DILocation(line: 988, column: 56, scope: !1719)
!1724 = !DILocalVariable(name: "line", arg: 2, scope: !1719, file: !175, line: 988, type: !48)
!1725 = !DILocation(line: 988, column: 72, scope: !1719)
!1726 = !DILocation(line: 990, column: 9, scope: !1719)
!1727 = distinct !{!1727, !1726}
!1728 = !DILocation(line: 990, column: 17, scope: !1729)
!1729 = !DILexicalBlockFile(scope: !1730, file: !175, discriminator: 1)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !175, line: 990, column: 17)
!1731 = distinct !DILexicalBlock(scope: !1719, file: !175, line: 990, column: 11)
!1732 = !DILocation(line: 990, column: 22, scope: !1729)
!1733 = !DILocation(line: 990, column: 12, scope: !1734)
!1734 = !DILexicalBlockFile(scope: !1735, file: !175, discriminator: 2)
!1735 = distinct !DILexicalBlock(scope: !1730, file: !175, line: 990, column: 10)
!1736 = !DILocation(line: 990, column: 21, scope: !1737)
!1737 = !DILexicalBlockFile(scope: !1738, file: !175, discriminator: 3)
!1738 = distinct !DILexicalBlock(scope: !1730, file: !175, line: 990, column: 19)
!1739 = !DILocation(line: 990, column: 110, scope: !1737)
!1740 = !DILocation(line: 990, column: 121, scope: !1741)
!1741 = !DILexicalBlockFile(scope: !1731, file: !175, discriminator: 4)
!1742 = !DILocation(line: 992, column: 35, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1719, file: !175, line: 992, column: 6)
!1744 = !DILocation(line: 992, column: 41, scope: !1743)
!1745 = !DILocation(line: 992, column: 59, scope: !1743)
!1746 = !DILocation(line: 992, column: 65, scope: !1743)
!1747 = !DILocation(line: 992, column: 6, scope: !1743)
!1748 = !DILocation(line: 992, column: 6, scope: !1719)
!1749 = !DILocation(line: 993, column: 21, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1743, file: !175, line: 992, column: 72)
!1751 = !DILocation(line: 993, column: 27, scope: !1750)
!1752 = !DILocation(line: 993, column: 3, scope: !1750)
!1753 = !DILocation(line: 993, column: 9, scope: !1750)
!1754 = !DILocation(line: 993, column: 19, scope: !1750)
!1755 = !DILocation(line: 994, column: 19, scope: !1750)
!1756 = !DILocation(line: 994, column: 25, scope: !1750)
!1757 = !DILocation(line: 994, column: 3, scope: !1750)
!1758 = !DILocation(line: 994, column: 9, scope: !1750)
!1759 = !DILocation(line: 994, column: 17, scope: !1750)
!1760 = !DILocation(line: 995, column: 2, scope: !1750)
!1761 = !DILocation(line: 996, column: 21, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1743, file: !175, line: 995, column: 9)
!1763 = !DILocation(line: 996, column: 3, scope: !1762)
!1764 = !DILocation(line: 996, column: 9, scope: !1762)
!1765 = !DILocation(line: 996, column: 19, scope: !1762)
!1766 = !DILocation(line: 997, column: 17, scope: !1762)
!1767 = !DILocation(line: 997, column: 23, scope: !1762)
!1768 = !DILocation(line: 997, column: 31, scope: !1762)
!1769 = !DILocation(line: 1000, column: 28, scope: !1719)
!1770 = !DILocation(line: 1000, column: 2, scope: !1719)
!1771 = !DILocation(line: 1001, column: 19, scope: !1719)
!1772 = !DILocation(line: 1001, column: 26, scope: !1719)
!1773 = !DILocation(line: 1001, column: 31, scope: !1719)
!1774 = !DILocation(line: 1001, column: 37, scope: !1719)
!1775 = !DILocation(line: 1001, column: 41, scope: !1776)
!1776 = !DILexicalBlockFile(scope: !1719, file: !175, discriminator: 1)
!1777 = !DILocation(line: 1001, column: 48, scope: !1776)
!1778 = !DILocation(line: 1001, column: 56, scope: !1776)
!1779 = !DILocation(line: 1001, column: 63, scope: !1776)
!1780 = !DILocation(line: 1001, column: 53, scope: !1776)
!1781 = !DILocation(line: 1001, column: 37, scope: !1782)
!1782 = !DILexicalBlockFile(scope: !1719, file: !175, discriminator: 2)
!1783 = !DILocation(line: 1001, column: 2, scope: !1782)
!1784 = !DILocation(line: 1001, column: 8, scope: !1782)
!1785 = !DILocation(line: 1001, column: 15, scope: !1782)
!1786 = !DILocation(line: 1002, column: 13, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1719, file: !175, line: 1002, column: 13)
!1788 = !DILocation(line: 1002, column: 19, scope: !1787)
!1789 = !DILocation(line: 1002, column: 13, scope: !1719)
!1790 = !DILocation(line: 1002, column: 27, scope: !1791)
!1791 = !DILexicalBlockFile(scope: !1787, file: !175, discriminator: 1)
!1792 = !DILocation(line: 1002, column: 33, scope: !1791)
!1793 = !DILocation(line: 1002, column: 43, scope: !1791)
!1794 = !DILocation(line: 1004, column: 25, scope: !1719)
!1795 = !DILocation(line: 1004, column: 2, scope: !1719)
!1796 = !DILocation(line: 1005, column: 1, scope: !1719)
!1797 = !DILocation(line: 1005, column: 1, scope: !1776)
!1798 = distinct !DISubprogram(name: "view_update_line_cache", scope: !175, file: !175, line: 206, type: !1148, isLocal: true, isDefinition: true, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !183)
!1799 = !DILocalVariable(name: "view", arg: 1, scope: !1798, file: !175, line: 206, type: !29)
!1800 = !DILocation(line: 206, column: 46, scope: !1798)
!1801 = !DILocalVariable(name: "line", arg: 2, scope: !1798, file: !175, line: 206, type: !48)
!1802 = !DILocation(line: 206, column: 62, scope: !1798)
!1803 = !DILocalVariable(name: "indent_func", scope: !1798, file: !175, line: 208, type: !98)
!1804 = !DILocation(line: 208, column: 21, scope: !1798)
!1805 = !DILocalVariable(name: "rec", scope: !1798, file: !175, line: 209, type: !1150)
!1806 = !DILocation(line: 209, column: 18, scope: !1798)
!1807 = !DILocalVariable(name: "sub", scope: !1798, file: !175, line: 210, type: !158)
!1808 = !DILocation(line: 210, column: 22, scope: !1798)
!1809 = !DILocalVariable(name: "lines", scope: !1798, file: !175, line: 211, type: !40)
!1810 = !DILocation(line: 211, column: 10, scope: !1798)
!1811 = !DILocalVariable(name: "cmd", scope: !1798, file: !175, line: 212, type: !57)
!1812 = !DILocation(line: 212, column: 23, scope: !1798)
!1813 = !DILocalVariable(name: "ptr", scope: !1798, file: !175, line: 213, type: !163)
!1814 = !DILocation(line: 213, column: 23, scope: !1798)
!1815 = !DILocalVariable(name: "next_ptr", scope: !1798, file: !175, line: 213, type: !163)
!1816 = !DILocation(line: 213, column: 29, scope: !1798)
!1817 = !DILocalVariable(name: "last_space_ptr", scope: !1798, file: !175, line: 213, type: !163)
!1818 = !DILocation(line: 213, column: 40, scope: !1798)
!1819 = !DILocalVariable(name: "xpos", scope: !1798, file: !175, line: 214, type: !63)
!1820 = !DILocation(line: 214, column: 6, scope: !1798)
!1821 = !DILocalVariable(name: "pos", scope: !1798, file: !175, line: 214, type: !63)
!1822 = !DILocation(line: 214, column: 12, scope: !1798)
!1823 = !DILocalVariable(name: "indent_pos", scope: !1798, file: !175, line: 214, type: !63)
!1824 = !DILocation(line: 214, column: 17, scope: !1798)
!1825 = !DILocalVariable(name: "last_space", scope: !1798, file: !175, line: 214, type: !63)
!1826 = !DILocation(line: 214, column: 29, scope: !1798)
!1827 = !DILocalVariable(name: "last_color", scope: !1798, file: !175, line: 214, type: !63)
!1828 = !DILocation(line: 214, column: 41, scope: !1798)
!1829 = !DILocalVariable(name: "color", scope: !1798, file: !175, line: 214, type: !63)
!1830 = !DILocation(line: 214, column: 53, scope: !1798)
!1831 = !DILocalVariable(name: "linecount", scope: !1798, file: !175, line: 214, type: !63)
!1832 = !DILocation(line: 214, column: 60, scope: !1798)
!1833 = !DILocalVariable(name: "last_bg24", scope: !1798, file: !175, line: 215, type: !87)
!1834 = !DILocation(line: 215, column: 15, scope: !1798)
!1835 = !DILocalVariable(name: "last_fg24", scope: !1798, file: !175, line: 215, type: !87)
!1836 = !DILocation(line: 215, column: 26, scope: !1798)
!1837 = !DILocalVariable(name: "bg24", scope: !1798, file: !175, line: 215, type: !87)
!1838 = !DILocation(line: 215, column: 37, scope: !1798)
!1839 = !DILocalVariable(name: "fg24", scope: !1798, file: !175, line: 215, type: !87)
!1840 = !DILocation(line: 215, column: 43, scope: !1798)
!1841 = !DILocalVariable(name: "char_width", scope: !1798, file: !175, line: 216, type: !63)
!1842 = !DILocation(line: 216, column: 6, scope: !1798)
!1843 = !DILocation(line: 218, column: 2, scope: !1798)
!1844 = distinct !{!1844, !1843}
!1845 = !DILocation(line: 218, column: 10, scope: !1846)
!1846 = !DILexicalBlockFile(scope: !1847, file: !175, discriminator: 1)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !175, line: 218, column: 10)
!1848 = distinct !DILexicalBlock(scope: !1798, file: !175, line: 218, column: 4)
!1849 = !DILocation(line: 218, column: 16, scope: !1846)
!1850 = !DILocation(line: 218, column: 21, scope: !1846)
!1851 = !DILocation(line: 218, column: 5, scope: !1852)
!1852 = !DILexicalBlockFile(scope: !1853, file: !175, discriminator: 2)
!1853 = distinct !DILexicalBlock(scope: !1847, file: !175, line: 218, column: 3)
!1854 = !DILocation(line: 218, column: 14, scope: !1855)
!1855 = !DILexicalBlockFile(scope: !1856, file: !175, discriminator: 3)
!1856 = distinct !DILexicalBlock(scope: !1847, file: !175, line: 218, column: 12)
!1857 = !DILocation(line: 218, column: 109, scope: !1855)
!1858 = !DILocation(line: 218, column: 7, scope: !1859)
!1859 = !DILexicalBlockFile(scope: !1848, file: !175, discriminator: 4)
!1860 = !DILocation(line: 220, column: 8, scope: !1798)
!1861 = !DILocation(line: 221, column: 7, scope: !1798)
!1862 = !DILocation(line: 221, column: 25, scope: !1798)
!1863 = !DILocation(line: 221, column: 31, scope: !1798)
!1864 = !DILocation(line: 221, column: 23, scope: !1798)
!1865 = !DILocation(line: 222, column: 26, scope: !1798)
!1866 = !DILocation(line: 222, column: 13, scope: !1798)
!1867 = !DILocation(line: 222, column: 46, scope: !1798)
!1868 = !DILocation(line: 222, column: 57, scope: !1798)
!1869 = !DILocation(line: 223, column: 38, scope: !1798)
!1870 = !DILocation(line: 223, column: 26, scope: !1798)
!1871 = !DILocation(line: 223, column: 14, scope: !1798)
!1872 = !DILocation(line: 223, column: 7, scope: !1798)
!1873 = !DILocation(line: 225, column: 23, scope: !1798)
!1874 = !DILocation(line: 225, column: 29, scope: !1798)
!1875 = !DILocation(line: 225, column: 21, scope: !1798)
!1876 = !DILocation(line: 226, column: 19, scope: !1798)
!1877 = !DILocation(line: 227, column: 8, scope: !1798)
!1878 = !DILocation(line: 228, column: 13, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1798, file: !175, line: 228, column: 2)
!1880 = !DILocation(line: 228, column: 19, scope: !1879)
!1881 = !DILocation(line: 228, column: 11, scope: !1879)
!1882 = !DILocation(line: 228, column: 7, scope: !1879)
!1883 = !DILocation(line: 229, column: 8, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1885, file: !175, line: 229, column: 7)
!1885 = distinct !DILexicalBlock(scope: !1886, file: !175, line: 228, column: 27)
!1886 = distinct !DILexicalBlock(scope: !1879, file: !175, line: 228, column: 2)
!1887 = !DILocation(line: 229, column: 7, scope: !1884)
!1888 = !DILocation(line: 229, column: 12, scope: !1884)
!1889 = !DILocation(line: 229, column: 7, scope: !1885)
!1890 = !DILocation(line: 231, column: 7, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1884, file: !175, line: 229, column: 21)
!1892 = !DILocation(line: 232, column: 11, scope: !1891)
!1893 = !DILocation(line: 232, column: 10, scope: !1891)
!1894 = !DILocation(line: 232, column: 8, scope: !1891)
!1895 = !DILocation(line: 233, column: 28, scope: !1891)
!1896 = !DILocation(line: 235, column: 8, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1891, file: !175, line: 235, column: 8)
!1898 = !DILocation(line: 235, column: 12, scope: !1897)
!1899 = !DILocation(line: 235, column: 8, scope: !1891)
!1900 = !DILocation(line: 236, column: 5, scope: !1897)
!1901 = !DILocation(line: 238, column: 8, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1891, file: !175, line: 238, column: 8)
!1903 = !DILocation(line: 238, column: 12, scope: !1902)
!1904 = !DILocation(line: 238, column: 8, scope: !1891)
!1905 = !DILocalVariable(name: "tmp", scope: !1906, file: !175, line: 239, type: !56)
!1906 = distinct !DILexicalBlock(scope: !1902, file: !175, line: 238, column: 34)
!1907 = !DILocation(line: 239, column: 20, scope: !1906)
!1908 = !DILocation(line: 241, column: 5, scope: !1906)
!1909 = !DILocation(line: 241, column: 18, scope: !1906)
!1910 = !DILocation(line: 242, column: 11, scope: !1906)
!1911 = !DILocation(line: 242, column: 9, scope: !1906)
!1912 = !DILocation(line: 243, column: 5, scope: !1906)
!1913 = distinct !{!1913, !1914}
!1914 = !DILocation(line: 228, column: 2, scope: !1798)
!1915 = !DILocation(line: 246, column: 8, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1891, file: !175, line: 246, column: 8)
!1917 = !DILocation(line: 246, column: 12, scope: !1916)
!1918 = !DILocation(line: 246, column: 8, scope: !1891)
!1919 = !DILocation(line: 249, column: 9, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1921, file: !175, line: 249, column: 9)
!1921 = distinct !DILexicalBlock(scope: !1916, file: !175, line: 246, column: 32)
!1922 = !DILocation(line: 249, column: 16, scope: !1920)
!1923 = !DILocation(line: 249, column: 22, scope: !1920)
!1924 = !DILocation(line: 249, column: 27, scope: !1920)
!1925 = !DILocation(line: 249, column: 14, scope: !1920)
!1926 = !DILocation(line: 249, column: 9, scope: !1921)
!1927 = !DILocation(line: 249, column: 44, scope: !1928)
!1928 = !DILexicalBlockFile(scope: !1920, file: !175, discriminator: 1)
!1929 = !DILocation(line: 249, column: 42, scope: !1928)
!1930 = !DILocation(line: 249, column: 31, scope: !1928)
!1931 = !DILocation(line: 250, column: 4, scope: !1921)
!1932 = !DILocation(line: 250, column: 15, scope: !1933)
!1933 = !DILexicalBlockFile(scope: !1934, file: !175, discriminator: 1)
!1934 = distinct !DILexicalBlock(scope: !1916, file: !175, line: 250, column: 15)
!1935 = !DILocation(line: 250, column: 19, scope: !1933)
!1936 = !DILocation(line: 251, column: 11, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1934, file: !175, line: 250, column: 38)
!1938 = !DILocation(line: 252, column: 14, scope: !1937)
!1939 = !DILocation(line: 252, column: 20, scope: !1937)
!1940 = !DILocation(line: 252, column: 142, scope: !1937)
!1941 = !DILocation(line: 252, column: 138, scope: !1937)
!1942 = !DILocation(line: 252, column: 136, scope: !1937)
!1943 = !DILocation(line: 252, column: 11, scope: !1937)
!1944 = !DILocation(line: 253, column: 4, scope: !1937)
!1945 = !DILocation(line: 253, column: 15, scope: !1946)
!1946 = !DILexicalBlockFile(scope: !1947, file: !175, discriminator: 1)
!1947 = distinct !DILexicalBlock(scope: !1934, file: !175, line: 253, column: 15)
!1948 = !DILocation(line: 253, column: 19, scope: !1946)
!1949 = !DILocation(line: 254, column: 11, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1947, file: !175, line: 253, column: 41)
!1951 = !DILocation(line: 255, column: 14, scope: !1950)
!1952 = !DILocation(line: 255, column: 20, scope: !1950)
!1953 = !DILocation(line: 255, column: 143, scope: !1950)
!1954 = !DILocation(line: 255, column: 139, scope: !1950)
!1955 = !DILocation(line: 255, column: 146, scope: !1950)
!1956 = !DILocation(line: 255, column: 136, scope: !1950)
!1957 = !DILocation(line: 255, column: 11, scope: !1950)
!1958 = !DILocation(line: 256, column: 4, scope: !1950)
!1959 = !DILocation(line: 262, column: 22, scope: !1947)
!1960 = !DILocation(line: 262, column: 5, scope: !1947)
!1961 = !DILocation(line: 263, column: 4, scope: !1891)
!1962 = !DILocation(line: 266, column: 8, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1885, file: !175, line: 266, column: 7)
!1964 = !DILocation(line: 266, column: 14, scope: !1963)
!1965 = !DILocation(line: 266, column: 7, scope: !1885)
!1966 = !DILocation(line: 268, column: 8, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !175, line: 268, column: 8)
!1968 = distinct !DILexicalBlock(scope: !1963, file: !175, line: 266, column: 20)
!1969 = !DILocation(line: 268, column: 18, scope: !1967)
!1970 = !DILocation(line: 268, column: 23, scope: !1967)
!1971 = !DILocation(line: 269, column: 8, scope: !1967)
!1972 = !DILocation(line: 269, column: 15, scope: !1967)
!1973 = !DILocation(line: 269, column: 23, scope: !1967)
!1974 = !DILocation(line: 269, column: 38, scope: !1975)
!1975 = !DILexicalBlockFile(scope: !1967, file: !175, discriminator: 1)
!1976 = !DILocation(line: 269, column: 37, scope: !1975)
!1977 = !DILocation(line: 269, column: 34, scope: !1975)
!1978 = !DILocation(line: 269, column: 46, scope: !1975)
!1979 = !DILocation(line: 269, column: 50, scope: !1980)
!1980 = !DILexicalBlockFile(scope: !1967, file: !175, discriminator: 2)
!1981 = !DILocation(line: 269, column: 49, scope: !1980)
!1982 = !DILocation(line: 269, column: 58, scope: !1980)
!1983 = !DILocation(line: 269, column: 67, scope: !1980)
!1984 = !DILocation(line: 269, column: 82, scope: !1985)
!1985 = !DILexicalBlockFile(scope: !1967, file: !175, discriminator: 3)
!1986 = !DILocation(line: 269, column: 81, scope: !1985)
!1987 = !DILocation(line: 269, column: 78, scope: !1985)
!1988 = !DILocation(line: 269, column: 90, scope: !1985)
!1989 = !DILocation(line: 269, column: 94, scope: !1990)
!1990 = !DILexicalBlockFile(scope: !1967, file: !175, discriminator: 4)
!1991 = !DILocation(line: 269, column: 93, scope: !1990)
!1992 = !DILocation(line: 269, column: 102, scope: !1990)
!1993 = !DILocation(line: 269, column: 111, scope: !1990)
!1994 = !DILocation(line: 269, column: 124, scope: !1995)
!1995 = !DILexicalBlockFile(scope: !1967, file: !175, discriminator: 5)
!1996 = !DILocation(line: 269, column: 123, scope: !1995)
!1997 = !DILocation(line: 269, column: 120, scope: !1995)
!1998 = !DILocation(line: 269, column: 132, scope: !1995)
!1999 = !DILocation(line: 269, column: 136, scope: !2000)
!2000 = !DILexicalBlockFile(scope: !1967, file: !175, discriminator: 6)
!2001 = !DILocation(line: 269, column: 135, scope: !2000)
!2002 = !DILocation(line: 269, column: 144, scope: !2000)
!2003 = !DILocation(line: 268, column: 8, scope: !2004)
!2004 = !DILexicalBlockFile(scope: !1968, file: !175, discriminator: 1)
!2005 = !DILocation(line: 270, column: 16, scope: !1967)
!2006 = !DILocation(line: 270, column: 5, scope: !1967)
!2007 = !DILocation(line: 272, column: 16, scope: !1967)
!2008 = !DILocation(line: 273, column: 15, scope: !1968)
!2009 = !DILocation(line: 273, column: 19, scope: !1968)
!2010 = !DILocation(line: 273, column: 18, scope: !1968)
!2011 = !DILocation(line: 273, column: 13, scope: !1968)
!2012 = !DILocation(line: 274, column: 3, scope: !1968)
!2013 = !DILocation(line: 275, column: 17, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !1963, file: !175, line: 274, column: 10)
!2015 = !DILocation(line: 275, column: 4, scope: !2014)
!2016 = !DILocation(line: 278, column: 7, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !1885, file: !175, line: 278, column: 7)
!2018 = !DILocation(line: 278, column: 14, scope: !2017)
!2019 = !DILocation(line: 278, column: 12, scope: !2017)
!2020 = !DILocation(line: 278, column: 27, scope: !2017)
!2021 = !DILocation(line: 278, column: 33, scope: !2017)
!2022 = !DILocation(line: 278, column: 25, scope: !2017)
!2023 = !DILocation(line: 278, column: 39, scope: !2017)
!2024 = !DILocation(line: 278, column: 42, scope: !2025)
!2025 = !DILexicalBlockFile(scope: !2017, file: !175, discriminator: 1)
!2026 = !DILocation(line: 278, column: 46, scope: !2025)
!2027 = !DILocation(line: 278, column: 53, scope: !2025)
!2028 = !DILocation(line: 279, column: 8, scope: !2017)
!2029 = !DILocation(line: 279, column: 22, scope: !2017)
!2030 = !DILocation(line: 279, column: 19, scope: !2017)
!2031 = !DILocation(line: 279, column: 33, scope: !2017)
!2032 = !DILocation(line: 279, column: 36, scope: !2025)
!2033 = !DILocation(line: 279, column: 47, scope: !2025)
!2034 = !DILocation(line: 279, column: 54, scope: !2025)
!2035 = !DILocation(line: 280, column: 7, scope: !2017)
!2036 = !DILocation(line: 280, column: 13, scope: !2017)
!2037 = !DILocation(line: 278, column: 7, scope: !2038)
!2038 = !DILexicalBlockFile(scope: !1885, file: !175, discriminator: 2)
!2039 = !DILocation(line: 282, column: 12, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2017, file: !175, line: 280, column: 32)
!2041 = !DILocation(line: 282, column: 17, scope: !2040)
!2042 = !DILocation(line: 282, column: 9, scope: !2040)
!2043 = !DILocation(line: 283, column: 25, scope: !2040)
!2044 = !DILocation(line: 283, column: 30, scope: !2040)
!2045 = !DILocation(line: 283, column: 37, scope: !2040)
!2046 = !DILocation(line: 284, column: 3, scope: !2040)
!2047 = !DILocation(line: 286, column: 7, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !1885, file: !175, line: 286, column: 7)
!2049 = !DILocation(line: 286, column: 14, scope: !2048)
!2050 = !DILocation(line: 286, column: 12, scope: !2048)
!2051 = !DILocation(line: 286, column: 27, scope: !2048)
!2052 = !DILocation(line: 286, column: 33, scope: !2048)
!2053 = !DILocation(line: 286, column: 25, scope: !2048)
!2054 = !DILocation(line: 286, column: 7, scope: !1885)
!2055 = !DILocation(line: 287, column: 11, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2048, file: !175, line: 286, column: 40)
!2057 = !DILocation(line: 287, column: 23, scope: !2056)
!2058 = !DILocation(line: 287, column: 32, scope: !2059)
!2059 = !DILexicalBlockFile(scope: !2056, file: !175, discriminator: 1)
!2060 = !DILocation(line: 287, column: 11, scope: !2059)
!2061 = !DILocation(line: 288, column: 5, scope: !2056)
!2062 = !DILocation(line: 288, column: 17, scope: !2056)
!2063 = !DILocation(line: 288, column: 23, scope: !2056)
!2064 = !DILocation(line: 287, column: 11, scope: !2065)
!2065 = !DILexicalBlockFile(scope: !2056, file: !175, discriminator: 2)
!2066 = !DILocation(line: 287, column: 11, scope: !2067)
!2067 = !DILexicalBlockFile(scope: !2056, file: !175, discriminator: 3)
!2068 = !DILocation(line: 287, column: 9, scope: !2067)
!2069 = !DILocation(line: 290, column: 34, scope: !2056)
!2070 = !DILocation(line: 290, column: 11, scope: !2056)
!2071 = !DILocation(line: 290, column: 8, scope: !2056)
!2072 = !DILocation(line: 291, column: 8, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2056, file: !175, line: 291, column: 8)
!2074 = !DILocation(line: 291, column: 21, scope: !2073)
!2075 = !DILocation(line: 291, column: 19, scope: !2073)
!2076 = !DILocation(line: 291, column: 32, scope: !2073)
!2077 = !DILocation(line: 291, column: 35, scope: !2078)
!2078 = !DILexicalBlockFile(scope: !2073, file: !175, discriminator: 1)
!2079 = !DILocation(line: 291, column: 46, scope: !2078)
!2080 = !DILocation(line: 291, column: 8, scope: !2078)
!2081 = !DILocation(line: 293, column: 41, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2073, file: !175, line: 291, column: 52)
!2083 = !DILocation(line: 293, column: 39, scope: !2082)
!2084 = !DILocation(line: 293, column: 60, scope: !2082)
!2085 = !DILocation(line: 293, column: 58, scope: !2082)
!2086 = !DILocation(line: 293, column: 78, scope: !2082)
!2087 = !DILocation(line: 293, column: 76, scope: !2082)
!2088 = !DILocation(line: 294, column: 11, scope: !2082)
!2089 = !DILocation(line: 294, column: 9, scope: !2082)
!2090 = !DILocation(line: 295, column: 5, scope: !2082)
!2091 = !DILocation(line: 295, column: 13, scope: !2092)
!2092 = !DILexicalBlockFile(scope: !2082, file: !175, discriminator: 1)
!2093 = !DILocation(line: 295, column: 12, scope: !2092)
!2094 = !DILocation(line: 295, column: 17, scope: !2092)
!2095 = !DILocation(line: 295, column: 5, scope: !2092)
!2096 = !DILocation(line: 295, column: 28, scope: !2097)
!2097 = !DILexicalBlockFile(scope: !2082, file: !175, discriminator: 2)
!2098 = !DILocation(line: 295, column: 5, scope: !2097)
!2099 = distinct !{!2099, !2090}
!2100 = !DILocation(line: 296, column: 4, scope: !2082)
!2101 = !DILocation(line: 296, column: 15, scope: !2102)
!2102 = !DILexicalBlockFile(scope: !2103, file: !175, discriminator: 1)
!2103 = distinct !DILexicalBlock(scope: !2073, file: !175, line: 296, column: 15)
!2104 = !DILocation(line: 296, column: 21, scope: !2102)
!2105 = !DILocation(line: 298, column: 10, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2103, file: !175, line: 296, column: 40)
!2107 = !DILocation(line: 299, column: 5, scope: !2106)
!2108 = !DILocation(line: 299, column: 10, scope: !2106)
!2109 = !DILocation(line: 299, column: 20, scope: !2106)
!2110 = !DILocation(line: 300, column: 4, scope: !2106)
!2111 = !DILocation(line: 302, column: 17, scope: !2056)
!2112 = !DILocation(line: 302, column: 4, scope: !2056)
!2113 = !DILocation(line: 302, column: 9, scope: !2056)
!2114 = !DILocation(line: 302, column: 15, scope: !2056)
!2115 = !DILocation(line: 303, column: 18, scope: !2056)
!2116 = !DILocation(line: 303, column: 4, scope: !2056)
!2117 = !DILocation(line: 303, column: 9, scope: !2056)
!2118 = !DILocation(line: 303, column: 16, scope: !2056)
!2119 = !DILocation(line: 304, column: 44, scope: !2056)
!2120 = !DILocation(line: 304, column: 25, scope: !2056)
!2121 = !DILocation(line: 304, column: 30, scope: !2056)
!2122 = !DILocation(line: 304, column: 42, scope: !2056)
!2123 = !DILocation(line: 305, column: 17, scope: !2056)
!2124 = !DILocation(line: 305, column: 4, scope: !2056)
!2125 = !DILocation(line: 305, column: 9, scope: !2056)
!2126 = !DILocation(line: 305, column: 15, scope: !2056)
!2127 = !DILocation(line: 310, column: 27, scope: !2056)
!2128 = !DILocation(line: 310, column: 34, scope: !2056)
!2129 = !DILocation(line: 310, column: 12, scope: !2056)
!2130 = !DILocation(line: 310, column: 10, scope: !2056)
!2131 = !DILocation(line: 311, column: 13, scope: !2056)
!2132 = !DILocation(line: 313, column: 15, scope: !2056)
!2133 = !DILocation(line: 314, column: 4, scope: !2056)
!2134 = !DILocation(line: 317, column: 7, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !1885, file: !175, line: 317, column: 7)
!2136 = !DILocation(line: 317, column: 13, scope: !2135)
!2137 = !DILocation(line: 317, column: 24, scope: !2135)
!2138 = !DILocation(line: 317, column: 27, scope: !2139)
!2139 = !DILexicalBlockFile(scope: !2135, file: !175, discriminator: 1)
!2140 = !DILocation(line: 317, column: 38, scope: !2139)
!2141 = !DILocation(line: 317, column: 7, scope: !2139)
!2142 = !DILocation(line: 318, column: 17, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2135, file: !175, line: 317, column: 43)
!2144 = !DILocation(line: 318, column: 15, scope: !2143)
!2145 = !DILocation(line: 319, column: 21, scope: !2143)
!2146 = !DILocation(line: 319, column: 19, scope: !2143)
!2147 = !DILocation(line: 320, column: 17, scope: !2143)
!2148 = !DILocation(line: 320, column: 15, scope: !2143)
!2149 = !DILocation(line: 320, column: 36, scope: !2143)
!2150 = !DILocation(line: 320, column: 34, scope: !2143)
!2151 = !DILocation(line: 320, column: 54, scope: !2143)
!2152 = !DILocation(line: 320, column: 52, scope: !2143)
!2153 = !DILocation(line: 321, column: 3, scope: !2143)
!2154 = !DILocation(line: 321, column: 15, scope: !2155)
!2155 = !DILexicalBlockFile(scope: !2156, file: !175, discriminator: 1)
!2156 = distinct !DILexicalBlock(scope: !2135, file: !175, line: 321, column: 14)
!2157 = !DILocation(line: 321, column: 14, scope: !2155)
!2158 = !DILocation(line: 321, column: 19, scope: !2155)
!2159 = !DILocation(line: 322, column: 17, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2156, file: !175, line: 321, column: 27)
!2161 = !DILocation(line: 322, column: 15, scope: !2160)
!2162 = !DILocation(line: 323, column: 21, scope: !2160)
!2163 = !DILocation(line: 323, column: 19, scope: !2160)
!2164 = !DILocation(line: 324, column: 17, scope: !2160)
!2165 = !DILocation(line: 324, column: 15, scope: !2160)
!2166 = !DILocation(line: 324, column: 36, scope: !2160)
!2167 = !DILocation(line: 324, column: 34, scope: !2160)
!2168 = !DILocation(line: 324, column: 54, scope: !2160)
!2169 = !DILocation(line: 324, column: 52, scope: !2160)
!2170 = !DILocation(line: 325, column: 3, scope: !2160)
!2171 = !DILocation(line: 327, column: 11, scope: !1885)
!2172 = !DILocation(line: 327, column: 8, scope: !1885)
!2173 = !DILocation(line: 328, column: 9, scope: !1885)
!2174 = !DILocation(line: 328, column: 7, scope: !1885)
!2175 = !DILocation(line: 228, column: 2, scope: !2176)
!2176 = !DILexicalBlockFile(scope: !1886, file: !175, discriminator: 1)
!2177 = !DILocation(line: 332, column: 40, scope: !1798)
!2178 = !DILocation(line: 332, column: 49, scope: !1798)
!2179 = !DILocation(line: 332, column: 39, scope: !1798)
!2180 = !DILocation(line: 332, column: 37, scope: !1798)
!2181 = !DILocation(line: 331, column: 67, scope: !1798)
!2182 = !DILocation(line: 331, column: 8, scope: !1798)
!2183 = !DILocation(line: 331, column: 6, scope: !1798)
!2184 = !DILocation(line: 333, column: 21, scope: !1798)
!2185 = !DILocation(line: 333, column: 2, scope: !1798)
!2186 = !DILocation(line: 333, column: 7, scope: !1798)
!2187 = !DILocation(line: 333, column: 19, scope: !1798)
!2188 = !DILocation(line: 334, column: 15, scope: !1798)
!2189 = !DILocation(line: 334, column: 2, scope: !1798)
!2190 = !DILocation(line: 334, column: 7, scope: !1798)
!2191 = !DILocation(line: 334, column: 13, scope: !1798)
!2192 = !DILocation(line: 336, column: 6, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !1798, file: !175, line: 336, column: 6)
!2194 = !DILocation(line: 336, column: 11, scope: !2193)
!2195 = !DILocation(line: 336, column: 17, scope: !2193)
!2196 = !DILocation(line: 336, column: 6, scope: !1798)
!2197 = !DILocation(line: 337, column: 12, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !175, line: 337, column: 3)
!2199 = distinct !DILexicalBlock(scope: !2193, file: !175, line: 336, column: 22)
!2200 = !DILocation(line: 337, column: 8, scope: !2198)
!2201 = !DILocation(line: 337, column: 17, scope: !2202)
!2202 = !DILexicalBlockFile(scope: !2203, file: !175, discriminator: 1)
!2203 = distinct !DILexicalBlock(scope: !2198, file: !175, line: 337, column: 3)
!2204 = !DILocation(line: 337, column: 23, scope: !2202)
!2205 = !DILocation(line: 337, column: 3, scope: !2202)
!2206 = !DILocalVariable(name: "data", scope: !2207, file: !175, line: 338, type: !25)
!2207 = distinct !DILexicalBlock(scope: !2203, file: !175, line: 337, column: 38)
!2208 = !DILocation(line: 338, column: 10, scope: !2207)
!2209 = !DILocation(line: 338, column: 17, scope: !2207)
!2210 = !DILocation(line: 338, column: 24, scope: !2207)
!2211 = !DILocation(line: 340, column: 23, scope: !2207)
!2212 = !DILocation(line: 340, column: 12, scope: !2207)
!2213 = !DILocation(line: 340, column: 17, scope: !2207)
!2214 = !DILocation(line: 340, column: 4, scope: !2207)
!2215 = !DILocation(line: 340, column: 29, scope: !2207)
!2216 = !DILocation(line: 343, column: 27, scope: !2207)
!2217 = !DILocation(line: 343, column: 34, scope: !2207)
!2218 = !DILocation(line: 343, column: 12, scope: !2207)
!2219 = !DILocation(line: 343, column: 10, scope: !2207)
!2220 = !DILocation(line: 344, column: 11, scope: !2207)
!2221 = !DILocation(line: 344, column: 4, scope: !2207)
!2222 = !DILocation(line: 345, column: 3, scope: !2207)
!2223 = !DILocation(line: 337, column: 34, scope: !2224)
!2224 = !DILexicalBlockFile(scope: !2203, file: !175, discriminator: 2)
!2225 = !DILocation(line: 337, column: 3, scope: !2224)
!2226 = distinct !{!2226, !2227}
!2227 = !DILocation(line: 337, column: 3, scope: !2199)
!2228 = !DILocation(line: 346, column: 2, scope: !2199)
!2229 = !DILocation(line: 348, column: 22, scope: !1798)
!2230 = !DILocation(line: 348, column: 28, scope: !1798)
!2231 = !DILocation(line: 348, column: 35, scope: !1798)
!2232 = !DILocation(line: 348, column: 47, scope: !1798)
!2233 = !DILocation(line: 348, column: 53, scope: !1798)
!2234 = !DILocation(line: 348, column: 2, scope: !1798)
!2235 = !DILocation(line: 349, column: 9, scope: !1798)
!2236 = !DILocation(line: 349, column: 2, scope: !1798)
!2237 = !DILocation(line: 350, column: 1, scope: !1798)
!2238 = distinct !DISubprogram(name: "textbuffer_view_insert_line", scope: !175, file: !175, line: 1089, type: !1720, isLocal: false, isDefinition: true, scopeLine: 1090, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !183)
!2239 = !DILocalVariable(name: "view", arg: 1, scope: !2238, file: !175, line: 1089, type: !29)
!2240 = !DILocation(line: 1089, column: 56, scope: !2238)
!2241 = !DILocalVariable(name: "line", arg: 2, scope: !2238, file: !175, line: 1089, type: !48)
!2242 = !DILocation(line: 1089, column: 72, scope: !2238)
!2243 = !DILocalVariable(name: "tmp", scope: !2238, file: !175, line: 1091, type: !40)
!2244 = !DILocation(line: 1091, column: 17, scope: !2238)
!2245 = !DILocalVariable(name: "update_counter", scope: !2238, file: !175, line: 1092, type: !57)
!2246 = !DILocation(line: 1092, column: 16, scope: !2238)
!2247 = !DILocation(line: 1094, column: 2, scope: !2238)
!2248 = distinct !{!2248, !2247}
!2249 = !DILocation(line: 1094, column: 10, scope: !2250)
!2250 = !DILexicalBlockFile(scope: !2251, file: !175, discriminator: 1)
!2251 = distinct !DILexicalBlock(scope: !2252, file: !175, line: 1094, column: 10)
!2252 = distinct !DILexicalBlock(scope: !2238, file: !175, line: 1094, column: 4)
!2253 = !DILocation(line: 1094, column: 15, scope: !2250)
!2254 = !DILocation(line: 1094, column: 5, scope: !2255)
!2255 = !DILexicalBlockFile(scope: !2256, file: !175, discriminator: 2)
!2256 = distinct !DILexicalBlock(scope: !2251, file: !175, line: 1094, column: 3)
!2257 = !DILocation(line: 1094, column: 14, scope: !2258)
!2258 = !DILexicalBlockFile(scope: !2259, file: !175, discriminator: 3)
!2259 = distinct !DILexicalBlock(scope: !2251, file: !175, line: 1094, column: 12)
!2260 = !DILocation(line: 1094, column: 103, scope: !2258)
!2261 = !DILocation(line: 1094, column: 114, scope: !2262)
!2262 = !DILexicalBlockFile(scope: !2252, file: !175, discriminator: 4)
!2263 = !DILocation(line: 1095, column: 2, scope: !2238)
!2264 = distinct !{!2264, !2263}
!2265 = !DILocation(line: 1095, column: 10, scope: !2266)
!2266 = !DILexicalBlockFile(scope: !2267, file: !175, discriminator: 1)
!2267 = distinct !DILexicalBlock(scope: !2268, file: !175, line: 1095, column: 10)
!2268 = distinct !DILexicalBlock(scope: !2238, file: !175, line: 1095, column: 4)
!2269 = !DILocation(line: 1095, column: 15, scope: !2266)
!2270 = !DILocation(line: 1095, column: 5, scope: !2271)
!2271 = !DILexicalBlockFile(scope: !2272, file: !175, discriminator: 2)
!2272 = distinct !DILexicalBlock(scope: !2267, file: !175, line: 1095, column: 3)
!2273 = !DILocation(line: 1095, column: 14, scope: !2274)
!2274 = !DILexicalBlockFile(scope: !2275, file: !175, discriminator: 3)
!2275 = distinct !DILexicalBlock(scope: !2267, file: !175, line: 1095, column: 12)
!2276 = !DILocation(line: 1095, column: 103, scope: !2274)
!2277 = !DILocation(line: 1095, column: 114, scope: !2278)
!2278 = !DILexicalBlockFile(scope: !2268, file: !175, discriminator: 4)
!2279 = !DILocation(line: 1097, column: 7, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2238, file: !175, line: 1097, column: 6)
!2281 = !DILocation(line: 1097, column: 13, scope: !2280)
!2282 = !DILocation(line: 1097, column: 21, scope: !2280)
!2283 = !DILocation(line: 1097, column: 6, scope: !2238)
!2284 = !DILocation(line: 1098, column: 17, scope: !2280)
!2285 = !DILocation(line: 1100, column: 26, scope: !2238)
!2286 = !DILocation(line: 1100, column: 32, scope: !2238)
!2287 = !DILocation(line: 1100, column: 39, scope: !2238)
!2288 = !DILocation(line: 1100, column: 53, scope: !2238)
!2289 = !DILocation(line: 1100, column: 24, scope: !2238)
!2290 = !DILocation(line: 1101, column: 20, scope: !2238)
!2291 = !DILocation(line: 1101, column: 26, scope: !2238)
!2292 = !DILocation(line: 1101, column: 32, scope: !2238)
!2293 = !DILocation(line: 1101, column: 2, scope: !2238)
!2294 = !DILocation(line: 1102, column: 26, scope: !2238)
!2295 = !DILocation(line: 1102, column: 32, scope: !2238)
!2296 = !DILocation(line: 1102, column: 9, scope: !2238)
!2297 = !DILocation(line: 1104, column: 13, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2238, file: !175, line: 1104, column: 2)
!2299 = !DILocation(line: 1104, column: 19, scope: !2298)
!2300 = !DILocation(line: 1104, column: 11, scope: !2298)
!2301 = !DILocation(line: 1104, column: 7, scope: !2298)
!2302 = !DILocation(line: 1104, column: 29, scope: !2303)
!2303 = !DILexicalBlockFile(scope: !2304, file: !175, discriminator: 1)
!2304 = distinct !DILexicalBlock(scope: !2298, file: !175, line: 1104, column: 2)
!2305 = !DILocation(line: 1104, column: 33, scope: !2303)
!2306 = !DILocation(line: 1104, column: 2, scope: !2303)
!2307 = !DILocalVariable(name: "rec", scope: !2308, file: !175, line: 1105, type: !29)
!2308 = distinct !DILexicalBlock(scope: !2304, file: !175, line: 1104, column: 58)
!2309 = !DILocation(line: 1105, column: 25, scope: !2308)
!2310 = !DILocation(line: 1105, column: 31, scope: !2308)
!2311 = !DILocation(line: 1105, column: 36, scope: !2308)
!2312 = !DILocation(line: 1107, column: 35, scope: !2308)
!2313 = !DILocation(line: 1107, column: 40, scope: !2308)
!2314 = !DILocation(line: 1107, column: 46, scope: !2308)
!2315 = !DILocation(line: 1107, column: 17, scope: !2308)
!2316 = !DILocation(line: 1108, column: 20, scope: !2308)
!2317 = !DILocation(line: 1108, column: 25, scope: !2308)
!2318 = !DILocation(line: 1108, column: 3, scope: !2308)
!2319 = !DILocation(line: 1109, column: 2, scope: !2308)
!2320 = !DILocation(line: 1104, column: 47, scope: !2321)
!2321 = !DILexicalBlockFile(scope: !2304, file: !175, discriminator: 2)
!2322 = !DILocation(line: 1104, column: 52, scope: !2321)
!2323 = !DILocation(line: 1104, column: 45, scope: !2321)
!2324 = !DILocation(line: 1104, column: 2, scope: !2321)
!2325 = distinct !{!2325, !2326}
!2326 = !DILocation(line: 1104, column: 2, scope: !2238)
!2327 = !DILocation(line: 1110, column: 1, scope: !2238)
!2328 = distinct !DISubprogram(name: "view_update_cache", scope: !175, file: !175, line: 368, type: !2329, isLocal: true, isDefinition: true, scopeLine: 370, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !183)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{null, !29, !48, !57}
!2331 = !DILocalVariable(name: "view", arg: 1, scope: !2328, file: !175, line: 368, type: !29)
!2332 = !DILocation(line: 368, column: 53, scope: !2328)
!2333 = !DILocalVariable(name: "line", arg: 2, scope: !2328, file: !175, line: 368, type: !48)
!2334 = !DILocation(line: 368, column: 69, scope: !2328)
!2335 = !DILocalVariable(name: "update_counter", arg: 3, scope: !2328, file: !175, line: 369, type: !57)
!2336 = !DILocation(line: 369, column: 24, scope: !2328)
!2337 = !DILocation(line: 371, column: 20, scope: !2328)
!2338 = !DILocation(line: 371, column: 26, scope: !2328)
!2339 = !DILocation(line: 371, column: 32, scope: !2328)
!2340 = !DILocation(line: 371, column: 2, scope: !2328)
!2341 = !DILocation(line: 373, column: 6, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2328, file: !175, line: 373, column: 6)
!2343 = !DILocation(line: 373, column: 12, scope: !2342)
!2344 = !DILocation(line: 373, column: 20, scope: !2342)
!2345 = !DILocation(line: 373, column: 32, scope: !2342)
!2346 = !DILocation(line: 373, column: 29, scope: !2342)
!2347 = !DILocation(line: 373, column: 6, scope: !2328)
!2348 = !DILocation(line: 374, column: 37, scope: !2342)
!2349 = !DILocation(line: 374, column: 44, scope: !2342)
!2350 = !DILocation(line: 374, column: 49, scope: !2342)
!2351 = !DILocation(line: 374, column: 58, scope: !2342)
!2352 = !DILocation(line: 374, column: 65, scope: !2342)
!2353 = !DILocation(line: 374, column: 55, scope: !2342)
!2354 = !DILocation(line: 374, column: 79, scope: !2342)
!2355 = !DILocation(line: 374, column: 34, scope: !2342)
!2356 = !DILocation(line: 374, column: 34, scope: !2357)
!2357 = !DILexicalBlockFile(scope: !2342, file: !175, discriminator: 1)
!2358 = !DILocation(line: 374, column: 122, scope: !2359)
!2359 = !DILexicalBlockFile(scope: !2342, file: !175, discriminator: 2)
!2360 = !DILocation(line: 374, column: 128, scope: !2359)
!2361 = !DILocation(line: 374, column: 91, scope: !2359)
!2362 = !DILocation(line: 374, column: 135, scope: !2359)
!2363 = !DILocation(line: 374, column: 34, scope: !2359)
!2364 = !DILocation(line: 374, column: 34, scope: !2365)
!2365 = !DILexicalBlockFile(scope: !2342, file: !175, discriminator: 3)
!2366 = !DILocation(line: 374, column: 3, scope: !2365)
!2367 = !DILocation(line: 374, column: 9, scope: !2365)
!2368 = !DILocation(line: 374, column: 16, scope: !2365)
!2369 = !DILocation(line: 374, column: 31, scope: !2365)
!2370 = !DILocation(line: 375, column: 1, scope: !2328)
!2371 = distinct !DISubprogram(name: "view_insert_line", scope: !175, file: !175, line: 1025, type: !1720, isLocal: true, isDefinition: true, scopeLine: 1026, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !183)
!2372 = !DILocalVariable(name: "view", arg: 1, scope: !2371, file: !175, line: 1025, type: !29)
!2373 = !DILocation(line: 1025, column: 52, scope: !2371)
!2374 = !DILocalVariable(name: "line", arg: 2, scope: !2371, file: !175, line: 1025, type: !48)
!2375 = !DILocation(line: 1025, column: 68, scope: !2371)
!2376 = !DILocalVariable(name: "linecount", scope: !2371, file: !175, line: 1027, type: !63)
!2377 = !DILocation(line: 1027, column: 6, scope: !2371)
!2378 = !DILocalVariable(name: "ypos", scope: !2371, file: !175, line: 1027, type: !63)
!2379 = !DILocation(line: 1027, column: 17, scope: !2371)
!2380 = !DILocalVariable(name: "subline", scope: !2371, file: !175, line: 1027, type: !63)
!2381 = !DILocation(line: 1027, column: 23, scope: !2371)
!2382 = !DILocation(line: 1029, column: 14, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2371, file: !175, line: 1029, column: 13)
!2384 = !DILocation(line: 1029, column: 20, scope: !2383)
!2385 = !DILocation(line: 1029, column: 13, scope: !2371)
!2386 = !DILocation(line: 1030, column: 3, scope: !2383)
!2387 = !DILocation(line: 1030, column: 9, scope: !2383)
!2388 = !DILocation(line: 1030, column: 19, scope: !2383)
!2389 = !DILocation(line: 1032, column: 6, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2371, file: !175, line: 1032, column: 6)
!2391 = !DILocation(line: 1032, column: 12, scope: !2390)
!2392 = !DILocation(line: 1032, column: 29, scope: !2390)
!2393 = !DILocation(line: 1032, column: 6, scope: !2371)
!2394 = !DILocation(line: 1034, column: 4, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2390, file: !175, line: 1032, column: 37)
!2396 = !DILocation(line: 1034, column: 10, scope: !2395)
!2397 = !DILocation(line: 1034, column: 18, scope: !2395)
!2398 = !DILocation(line: 1033, column: 21, scope: !2395)
!2399 = !DILocation(line: 1033, column: 27, scope: !2395)
!2400 = !DILocation(line: 1033, column: 44, scope: !2395)
!2401 = !DILocation(line: 1033, column: 3, scope: !2395)
!2402 = !DILocation(line: 1033, column: 9, scope: !2395)
!2403 = !DILocation(line: 1033, column: 19, scope: !2395)
!2404 = !DILocation(line: 1035, column: 2, scope: !2395)
!2405 = !DILocation(line: 1037, column: 6, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2371, file: !175, line: 1037, column: 6)
!2407 = !DILocation(line: 1037, column: 12, scope: !2406)
!2408 = !DILocation(line: 1037, column: 20, scope: !2406)
!2409 = !DILocation(line: 1037, column: 32, scope: !2406)
!2410 = !DILocation(line: 1037, column: 29, scope: !2406)
!2411 = !DILocation(line: 1037, column: 37, scope: !2406)
!2412 = !DILocation(line: 1038, column: 36, scope: !2406)
!2413 = !DILocation(line: 1038, column: 42, scope: !2406)
!2414 = !DILocation(line: 1038, column: 60, scope: !2406)
!2415 = !DILocation(line: 1038, column: 7, scope: !2406)
!2416 = !DILocation(line: 1037, column: 6, scope: !2417)
!2417 = !DILexicalBlockFile(scope: !2371, file: !175, discriminator: 1)
!2418 = !DILocation(line: 1039, column: 3, scope: !2406)
!2419 = !DILocation(line: 1041, column: 18, scope: !2371)
!2420 = !DILocation(line: 1041, column: 25, scope: !2371)
!2421 = !DILocation(line: 1041, column: 30, scope: !2371)
!2422 = !DILocation(line: 1041, column: 39, scope: !2371)
!2423 = !DILocation(line: 1041, column: 46, scope: !2371)
!2424 = !DILocation(line: 1041, column: 36, scope: !2371)
!2425 = !DILocation(line: 1041, column: 60, scope: !2371)
!2426 = !DILocation(line: 1041, column: 15, scope: !2371)
!2427 = !DILocation(line: 1041, column: 15, scope: !2417)
!2428 = !DILocation(line: 1041, column: 103, scope: !2429)
!2429 = !DILexicalBlockFile(scope: !2371, file: !175, discriminator: 2)
!2430 = !DILocation(line: 1041, column: 109, scope: !2429)
!2431 = !DILocation(line: 1041, column: 72, scope: !2429)
!2432 = !DILocation(line: 1041, column: 116, scope: !2429)
!2433 = !DILocation(line: 1041, column: 15, scope: !2429)
!2434 = !DILocation(line: 1041, column: 15, scope: !2435)
!2435 = !DILexicalBlockFile(scope: !2371, file: !175, discriminator: 3)
!2436 = !DILocation(line: 1041, column: 12, scope: !2435)
!2437 = !DILocation(line: 1042, column: 16, scope: !2371)
!2438 = !DILocation(line: 1042, column: 2, scope: !2371)
!2439 = !DILocation(line: 1042, column: 8, scope: !2371)
!2440 = !DILocation(line: 1042, column: 13, scope: !2371)
!2441 = !DILocation(line: 1043, column: 6, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2371, file: !175, line: 1043, column: 6)
!2443 = !DILocation(line: 1043, column: 12, scope: !2442)
!2444 = !DILocation(line: 1043, column: 28, scope: !2442)
!2445 = !DILocation(line: 1043, column: 6, scope: !2371)
!2446 = !DILocation(line: 1044, column: 28, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2442, file: !175, line: 1043, column: 33)
!2448 = !DILocation(line: 1044, column: 3, scope: !2447)
!2449 = !DILocation(line: 1044, column: 9, scope: !2447)
!2450 = !DILocation(line: 1044, column: 25, scope: !2447)
!2451 = !DILocation(line: 1045, column: 7, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2447, file: !175, line: 1045, column: 7)
!2453 = !DILocation(line: 1045, column: 13, scope: !2452)
!2454 = !DILocation(line: 1045, column: 29, scope: !2452)
!2455 = !DILocation(line: 1045, column: 7, scope: !2447)
!2456 = !DILocation(line: 1046, column: 14, scope: !2452)
!2457 = !DILocation(line: 1046, column: 4, scope: !2452)
!2458 = !DILocation(line: 1048, column: 17, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2452, file: !175, line: 1047, column: 8)
!2460 = !DILocation(line: 1048, column: 23, scope: !2459)
!2461 = !DILocation(line: 1048, column: 16, scope: !2459)
!2462 = !DILocation(line: 1048, column: 14, scope: !2459)
!2463 = !DILocation(line: 1049, column: 4, scope: !2459)
!2464 = !DILocation(line: 1049, column: 10, scope: !2459)
!2465 = !DILocation(line: 1049, column: 26, scope: !2459)
!2466 = !DILocation(line: 1051, column: 2, scope: !2447)
!2467 = !DILocation(line: 1053, column: 6, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2371, file: !175, line: 1053, column: 6)
!2469 = !DILocation(line: 1053, column: 16, scope: !2468)
!2470 = !DILocation(line: 1053, column: 6, scope: !2371)
!2471 = !DILocation(line: 1054, column: 15, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2468, file: !175, line: 1053, column: 21)
!2473 = !DILocation(line: 1054, column: 22, scope: !2472)
!2474 = !DILocation(line: 1054, column: 28, scope: !2472)
!2475 = !DILocation(line: 1055, column: 9, scope: !2472)
!2476 = !DILocation(line: 1055, column: 15, scope: !2472)
!2477 = !DILocation(line: 1055, column: 31, scope: !2472)
!2478 = !DILocation(line: 1054, column: 3, scope: !2472)
!2479 = !DILocation(line: 1056, column: 2, scope: !2472)
!2480 = !DILocation(line: 1058, column: 6, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2371, file: !175, line: 1058, column: 6)
!2482 = !DILocation(line: 1058, column: 12, scope: !2481)
!2483 = !DILocation(line: 1058, column: 6, scope: !2371)
!2484 = !DILocation(line: 1059, column: 7, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !175, line: 1059, column: 7)
!2486 = distinct !DILexicalBlock(scope: !2481, file: !175, line: 1058, column: 20)
!2487 = !DILocation(line: 1059, column: 13, scope: !2485)
!2488 = !DILocation(line: 1059, column: 20, scope: !2485)
!2489 = !DILocation(line: 1059, column: 23, scope: !2490)
!2490 = !DILexicalBlockFile(scope: !2485, file: !175, discriminator: 1)
!2491 = !DILocation(line: 1059, column: 29, scope: !2490)
!2492 = !DILocation(line: 1059, column: 37, scope: !2490)
!2493 = !DILocation(line: 1059, column: 43, scope: !2490)
!2494 = !DILocation(line: 1059, column: 34, scope: !2490)
!2495 = !DILocation(line: 1059, column: 7, scope: !2490)
!2496 = !DILocation(line: 1060, column: 16, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2485, file: !175, line: 1059, column: 51)
!2498 = !DILocation(line: 1060, column: 22, scope: !2497)
!2499 = !DILocation(line: 1060, column: 27, scope: !2497)
!2500 = !DILocation(line: 1060, column: 33, scope: !2497)
!2501 = !DILocation(line: 1060, column: 26, scope: !2497)
!2502 = !DILocation(line: 1060, column: 39, scope: !2497)
!2503 = !DILocation(line: 1060, column: 14, scope: !2497)
!2504 = !DILocation(line: 1061, column: 16, scope: !2497)
!2505 = !DILocation(line: 1061, column: 23, scope: !2497)
!2506 = !DILocation(line: 1061, column: 29, scope: !2497)
!2507 = !DILocation(line: 1062, column: 10, scope: !2497)
!2508 = !DILocation(line: 1062, column: 16, scope: !2497)
!2509 = !DILocation(line: 1062, column: 25, scope: !2497)
!2510 = !DILocation(line: 1061, column: 4, scope: !2497)
!2511 = !DILocation(line: 1063, column: 18, scope: !2497)
!2512 = !DILocation(line: 1063, column: 4, scope: !2497)
!2513 = !DILocation(line: 1063, column: 10, scope: !2497)
!2514 = !DILocation(line: 1063, column: 15, scope: !2497)
!2515 = !DILocation(line: 1064, column: 3, scope: !2497)
!2516 = !DILocation(line: 1065, column: 21, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2485, file: !175, line: 1064, column: 10)
!2518 = !DILocation(line: 1065, column: 28, scope: !2517)
!2519 = !DILocation(line: 1065, column: 33, scope: !2517)
!2520 = !DILocation(line: 1065, column: 39, scope: !2517)
!2521 = !DILocation(line: 1065, column: 43, scope: !2522)
!2522 = !DILexicalBlockFile(scope: !2517, file: !175, discriminator: 1)
!2523 = !DILocation(line: 1065, column: 50, scope: !2522)
!2524 = !DILocation(line: 1065, column: 58, scope: !2522)
!2525 = !DILocation(line: 1065, column: 65, scope: !2522)
!2526 = !DILocation(line: 1065, column: 55, scope: !2522)
!2527 = !DILocation(line: 1065, column: 39, scope: !2528)
!2528 = !DILexicalBlockFile(scope: !2517, file: !175, discriminator: 2)
!2529 = !DILocation(line: 1065, column: 4, scope: !2528)
!2530 = !DILocation(line: 1065, column: 10, scope: !2528)
!2531 = !DILocation(line: 1065, column: 17, scope: !2528)
!2532 = !DILocation(line: 1068, column: 7, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2486, file: !175, line: 1068, column: 7)
!2534 = !DILocation(line: 1068, column: 13, scope: !2533)
!2535 = !DILocation(line: 1068, column: 20, scope: !2533)
!2536 = !DILocation(line: 1068, column: 27, scope: !2533)
!2537 = !DILocation(line: 1068, column: 34, scope: !2538)
!2538 = !DILexicalBlockFile(scope: !2533, file: !175, discriminator: 1)
!2539 = !DILocation(line: 1068, column: 41, scope: !2538)
!2540 = !DILocation(line: 1068, column: 46, scope: !2538)
!2541 = !DILocation(line: 1068, column: 55, scope: !2538)
!2542 = !DILocation(line: 1068, column: 62, scope: !2538)
!2543 = !DILocation(line: 1068, column: 52, scope: !2538)
!2544 = !DILocation(line: 1068, column: 76, scope: !2538)
!2545 = !DILocation(line: 1068, column: 7, scope: !2538)
!2546 = !DILocation(line: 1069, column: 11, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2533, file: !175, line: 1068, column: 83)
!2548 = !DILocation(line: 1069, column: 17, scope: !2547)
!2549 = !DILocation(line: 1069, column: 21, scope: !2547)
!2550 = !DILocation(line: 1069, column: 30, scope: !2547)
!2551 = !DILocation(line: 1069, column: 37, scope: !2547)
!2552 = !DILocation(line: 1069, column: 42, scope: !2547)
!2553 = !DILocation(line: 1069, column: 51, scope: !2547)
!2554 = !DILocation(line: 1069, column: 58, scope: !2547)
!2555 = !DILocation(line: 1069, column: 48, scope: !2547)
!2556 = !DILocation(line: 1069, column: 72, scope: !2547)
!2557 = !DILocation(line: 1069, column: 27, scope: !2547)
!2558 = !DILocation(line: 1069, column: 27, scope: !2559)
!2559 = !DILexicalBlockFile(scope: !2547, file: !175, discriminator: 1)
!2560 = !DILocation(line: 1069, column: 115, scope: !2561)
!2561 = !DILexicalBlockFile(scope: !2547, file: !175, discriminator: 2)
!2562 = !DILocation(line: 1069, column: 121, scope: !2561)
!2563 = !DILocation(line: 1069, column: 84, scope: !2561)
!2564 = !DILocation(line: 1069, column: 128, scope: !2561)
!2565 = !DILocation(line: 1069, column: 27, scope: !2561)
!2566 = !DILocation(line: 1069, column: 27, scope: !2567)
!2567 = !DILexicalBlockFile(scope: !2547, file: !175, discriminator: 3)
!2568 = !DILocation(line: 1069, column: 24, scope: !2567)
!2569 = !DILocation(line: 1069, column: 9, scope: !2567)
!2570 = !DILocation(line: 1070, column: 8, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2547, file: !175, line: 1070, column: 8)
!2572 = !DILocation(line: 1070, column: 13, scope: !2571)
!2573 = !DILocation(line: 1070, column: 8, scope: !2547)
!2574 = !DILocation(line: 1071, column: 13, scope: !2571)
!2575 = !DILocation(line: 1071, column: 5, scope: !2571)
!2576 = !DILocation(line: 1073, column: 16, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2571, file: !175, line: 1072, column: 9)
!2578 = !DILocation(line: 1073, column: 15, scope: !2577)
!2579 = !DILocation(line: 1073, column: 13, scope: !2577)
!2580 = !DILocation(line: 1074, column: 10, scope: !2577)
!2581 = !DILocation(line: 1076, column: 8, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2547, file: !175, line: 1076, column: 8)
!2583 = !DILocation(line: 1076, column: 15, scope: !2582)
!2584 = !DILocation(line: 1076, column: 21, scope: !2582)
!2585 = !DILocation(line: 1076, column: 13, scope: !2582)
!2586 = !DILocation(line: 1076, column: 8, scope: !2547)
!2587 = !DILocation(line: 1077, column: 20, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2582, file: !175, line: 1076, column: 29)
!2589 = !DILocation(line: 1077, column: 26, scope: !2588)
!2590 = !DILocation(line: 1077, column: 32, scope: !2588)
!2591 = !DILocation(line: 1077, column: 41, scope: !2588)
!2592 = !DILocation(line: 1078, column: 13, scope: !2588)
!2593 = !DILocation(line: 1078, column: 19, scope: !2588)
!2594 = !DILocation(line: 1078, column: 28, scope: !2588)
!2595 = !DILocation(line: 1078, column: 26, scope: !2588)
!2596 = !DILocation(line: 1077, column: 5, scope: !2588)
!2597 = !DILocation(line: 1079, column: 4, scope: !2588)
!2598 = !DILocation(line: 1080, column: 3, scope: !2547)
!2599 = !DILocation(line: 1081, column: 2, scope: !2486)
!2600 = !DILocation(line: 1083, column: 13, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2371, file: !175, line: 1083, column: 13)
!2602 = !DILocation(line: 1083, column: 19, scope: !2601)
!2603 = !DILocation(line: 1083, column: 26, scope: !2601)
!2604 = !DILocation(line: 1083, column: 33, scope: !2601)
!2605 = !DILocation(line: 1083, column: 40, scope: !2606)
!2606 = !DILexicalBlockFile(scope: !2601, file: !175, discriminator: 1)
!2607 = !DILocation(line: 1083, column: 47, scope: !2606)
!2608 = !DILocation(line: 1083, column: 52, scope: !2606)
!2609 = !DILocation(line: 1083, column: 61, scope: !2606)
!2610 = !DILocation(line: 1083, column: 68, scope: !2606)
!2611 = !DILocation(line: 1083, column: 58, scope: !2606)
!2612 = !DILocation(line: 1083, column: 82, scope: !2606)
!2613 = !DILocation(line: 1083, column: 13, scope: !2606)
!2614 = !DILocation(line: 1084, column: 16, scope: !2601)
!2615 = !DILocation(line: 1084, column: 22, scope: !2601)
!2616 = !DILocation(line: 1084, column: 3, scope: !2601)
!2617 = !DILocation(line: 1085, column: 1, scope: !2371)
!2618 = distinct !DISubprogram(name: "textbuffer_view_remove_line", scope: !175, file: !175, line: 1256, type: !1720, isLocal: false, isDefinition: true, scopeLine: 1257, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !183)
!2619 = !DILocalVariable(name: "view", arg: 1, scope: !2618, file: !175, line: 1256, type: !29)
!2620 = !DILocation(line: 1256, column: 56, scope: !2618)
!2621 = !DILocalVariable(name: "line", arg: 2, scope: !2618, file: !175, line: 1256, type: !48)
!2622 = !DILocation(line: 1256, column: 72, scope: !2618)
!2623 = !DILocalVariable(name: "tmp", scope: !2618, file: !175, line: 1258, type: !40)
!2624 = !DILocation(line: 1258, column: 17, scope: !2618)
!2625 = !DILocalVariable(name: "update_counter", scope: !2618, file: !175, line: 1259, type: !57)
!2626 = !DILocation(line: 1259, column: 16, scope: !2618)
!2627 = !DILocalVariable(name: "linecount", scope: !2618, file: !175, line: 1260, type: !63)
!2628 = !DILocation(line: 1260, column: 13, scope: !2618)
!2629 = !DILocation(line: 1262, column: 2, scope: !2618)
!2630 = distinct !{!2630, !2629}
!2631 = !DILocation(line: 1262, column: 10, scope: !2632)
!2632 = !DILexicalBlockFile(scope: !2633, file: !175, discriminator: 1)
!2633 = distinct !DILexicalBlock(scope: !2634, file: !175, line: 1262, column: 10)
!2634 = distinct !DILexicalBlock(scope: !2618, file: !175, line: 1262, column: 4)
!2635 = !DILocation(line: 1262, column: 15, scope: !2632)
!2636 = !DILocation(line: 1262, column: 5, scope: !2637)
!2637 = !DILexicalBlockFile(scope: !2638, file: !175, discriminator: 2)
!2638 = distinct !DILexicalBlock(scope: !2633, file: !175, line: 1262, column: 3)
!2639 = !DILocation(line: 1262, column: 14, scope: !2640)
!2640 = !DILexicalBlockFile(scope: !2641, file: !175, discriminator: 3)
!2641 = distinct !DILexicalBlock(scope: !2633, file: !175, line: 1262, column: 12)
!2642 = !DILocation(line: 1262, column: 103, scope: !2640)
!2643 = !DILocation(line: 1262, column: 114, scope: !2644)
!2644 = !DILexicalBlockFile(scope: !2634, file: !175, discriminator: 4)
!2645 = !DILocation(line: 1263, column: 2, scope: !2618)
!2646 = distinct !{!2646, !2645}
!2647 = !DILocation(line: 1263, column: 10, scope: !2648)
!2648 = !DILexicalBlockFile(scope: !2649, file: !175, discriminator: 1)
!2649 = distinct !DILexicalBlock(scope: !2650, file: !175, line: 1263, column: 10)
!2650 = distinct !DILexicalBlock(scope: !2618, file: !175, line: 1263, column: 4)
!2651 = !DILocation(line: 1263, column: 15, scope: !2648)
!2652 = !DILocation(line: 1263, column: 5, scope: !2653)
!2653 = !DILexicalBlockFile(scope: !2654, file: !175, discriminator: 2)
!2654 = distinct !DILexicalBlock(scope: !2649, file: !175, line: 1263, column: 3)
!2655 = !DILocation(line: 1263, column: 14, scope: !2656)
!2656 = !DILexicalBlockFile(scope: !2657, file: !175, discriminator: 3)
!2657 = distinct !DILexicalBlock(scope: !2649, file: !175, line: 1263, column: 12)
!2658 = !DILocation(line: 1263, column: 103, scope: !2656)
!2659 = !DILocation(line: 1263, column: 114, scope: !2660)
!2660 = !DILexicalBlockFile(scope: !2650, file: !175, discriminator: 4)
!2661 = !DILocation(line: 1265, column: 48, scope: !2618)
!2662 = !DILocation(line: 1265, column: 54, scope: !2618)
!2663 = !DILocation(line: 1265, column: 60, scope: !2618)
!2664 = !DILocation(line: 1265, column: 66, scope: !2618)
!2665 = !DILocation(line: 1265, column: 2, scope: !2618)
!2666 = !DILocation(line: 1267, column: 25, scope: !2618)
!2667 = !DILocation(line: 1267, column: 32, scope: !2618)
!2668 = !DILocation(line: 1267, column: 37, scope: !2618)
!2669 = !DILocation(line: 1267, column: 46, scope: !2618)
!2670 = !DILocation(line: 1267, column: 53, scope: !2618)
!2671 = !DILocation(line: 1267, column: 43, scope: !2618)
!2672 = !DILocation(line: 1267, column: 67, scope: !2618)
!2673 = !DILocation(line: 1267, column: 22, scope: !2618)
!2674 = !DILocation(line: 1267, column: 22, scope: !2675)
!2675 = !DILexicalBlockFile(scope: !2618, file: !175, discriminator: 1)
!2676 = !DILocation(line: 1267, column: 110, scope: !2677)
!2677 = !DILexicalBlockFile(scope: !2618, file: !175, discriminator: 2)
!2678 = !DILocation(line: 1267, column: 116, scope: !2677)
!2679 = !DILocation(line: 1267, column: 79, scope: !2677)
!2680 = !DILocation(line: 1267, column: 123, scope: !2677)
!2681 = !DILocation(line: 1267, column: 22, scope: !2677)
!2682 = !DILocation(line: 1267, column: 22, scope: !2683)
!2683 = !DILexicalBlockFile(scope: !2618, file: !175, discriminator: 3)
!2684 = !DILocation(line: 1267, column: 19, scope: !2683)
!2685 = !DILocation(line: 1268, column: 26, scope: !2618)
!2686 = !DILocation(line: 1268, column: 32, scope: !2618)
!2687 = !DILocation(line: 1268, column: 39, scope: !2618)
!2688 = !DILocation(line: 1268, column: 53, scope: !2618)
!2689 = !DILocation(line: 1268, column: 24, scope: !2618)
!2690 = !DILocation(line: 1270, column: 26, scope: !2618)
!2691 = !DILocation(line: 1270, column: 32, scope: !2618)
!2692 = !DILocation(line: 1270, column: 38, scope: !2618)
!2693 = !DILocation(line: 1270, column: 9, scope: !2618)
!2694 = !DILocation(line: 1271, column: 20, scope: !2618)
!2695 = !DILocation(line: 1271, column: 26, scope: !2618)
!2696 = !DILocation(line: 1271, column: 32, scope: !2618)
!2697 = !DILocation(line: 1271, column: 2, scope: !2618)
!2698 = !DILocation(line: 1273, column: 13, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2618, file: !175, line: 1273, column: 2)
!2700 = !DILocation(line: 1273, column: 19, scope: !2699)
!2701 = !DILocation(line: 1273, column: 11, scope: !2699)
!2702 = !DILocation(line: 1273, column: 7, scope: !2699)
!2703 = !DILocation(line: 1273, column: 29, scope: !2704)
!2704 = !DILexicalBlockFile(scope: !2705, file: !175, discriminator: 1)
!2705 = distinct !DILexicalBlock(scope: !2699, file: !175, line: 1273, column: 2)
!2706 = !DILocation(line: 1273, column: 33, scope: !2704)
!2707 = !DILocation(line: 1273, column: 2, scope: !2704)
!2708 = !DILocalVariable(name: "rec", scope: !2709, file: !175, line: 1274, type: !29)
!2709 = distinct !DILexicalBlock(scope: !2705, file: !175, line: 1273, column: 58)
!2710 = !DILocation(line: 1274, column: 25, scope: !2709)
!2711 = !DILocation(line: 1274, column: 31, scope: !2709)
!2712 = !DILocation(line: 1274, column: 36, scope: !2709)
!2713 = !DILocation(line: 1276, column: 20, scope: !2709)
!2714 = !DILocation(line: 1276, column: 25, scope: !2709)
!2715 = !DILocation(line: 1276, column: 31, scope: !2709)
!2716 = !DILocation(line: 1276, column: 3, scope: !2709)
!2717 = !DILocation(line: 1277, column: 21, scope: !2709)
!2718 = !DILocation(line: 1277, column: 26, scope: !2709)
!2719 = !DILocation(line: 1277, column: 32, scope: !2709)
!2720 = !DILocation(line: 1277, column: 3, scope: !2709)
!2721 = !DILocation(line: 1278, column: 2, scope: !2709)
!2722 = !DILocation(line: 1273, column: 47, scope: !2723)
!2723 = !DILexicalBlockFile(scope: !2705, file: !175, discriminator: 2)
!2724 = !DILocation(line: 1273, column: 52, scope: !2723)
!2725 = !DILocation(line: 1273, column: 45, scope: !2723)
!2726 = !DILocation(line: 1273, column: 2, scope: !2723)
!2727 = distinct !{!2727, !2728}
!2728 = !DILocation(line: 1273, column: 2, scope: !2618)
!2729 = !DILocation(line: 1280, column: 20, scope: !2618)
!2730 = !DILocation(line: 1280, column: 26, scope: !2618)
!2731 = !DILocation(line: 1280, column: 34, scope: !2618)
!2732 = !DILocation(line: 1280, column: 2, scope: !2618)
!2733 = !DILocation(line: 1281, column: 1, scope: !2618)
!2734 = !DILocation(line: 1281, column: 1, scope: !2675)
!2735 = distinct !DISubprogram(name: "view_remove_line", scope: !175, file: !175, line: 1195, type: !2736, isLocal: true, isDefinition: true, scopeLine: 1197, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !183)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{null, !29, !48, !63}
!2738 = !DILocalVariable(name: "view", arg: 1, scope: !2735, file: !175, line: 1195, type: !29)
!2739 = !DILocation(line: 1195, column: 52, scope: !2735)
!2740 = !DILocalVariable(name: "line", arg: 2, scope: !2735, file: !175, line: 1195, type: !48)
!2741 = !DILocation(line: 1195, column: 68, scope: !2735)
!2742 = !DILocalVariable(name: "linecount", arg: 3, scope: !2735, file: !175, line: 1196, type: !63)
!2743 = !DILocation(line: 1196, column: 13, scope: !2735)
!2744 = !DILocalVariable(name: "realcount", scope: !2735, file: !175, line: 1198, type: !63)
!2745 = !DILocation(line: 1198, column: 6, scope: !2735)
!2746 = !DILocation(line: 1200, column: 23, scope: !2735)
!2747 = !DILocation(line: 1200, column: 29, scope: !2735)
!2748 = !DILocation(line: 1200, column: 2, scope: !2735)
!2749 = !DILocation(line: 1202, column: 6, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2735, file: !175, line: 1202, column: 6)
!2751 = !DILocation(line: 1202, column: 12, scope: !2750)
!2752 = !DILocation(line: 1202, column: 20, scope: !2750)
!2753 = !DILocation(line: 1202, column: 32, scope: !2750)
!2754 = !DILocation(line: 1202, column: 29, scope: !2750)
!2755 = !DILocation(line: 1202, column: 6, scope: !2735)
!2756 = !DILocalVariable(name: "prevline", scope: !2757, file: !175, line: 1204, type: !48)
!2757 = distinct !DILexicalBlock(scope: !2750, file: !175, line: 1202, column: 38)
!2758 = !DILocation(line: 1204, column: 13, scope: !2757)
!2759 = !DILocation(line: 1206, column: 14, scope: !2757)
!2760 = !DILocation(line: 1206, column: 20, scope: !2757)
!2761 = !DILocation(line: 1206, column: 28, scope: !2757)
!2762 = !DILocation(line: 1206, column: 42, scope: !2757)
!2763 = !DILocation(line: 1206, column: 39, scope: !2757)
!2764 = !DILocation(line: 1206, column: 14, scope: !2765)
!2765 = !DILexicalBlockFile(scope: !2757, file: !175, discriminator: 1)
!2766 = !DILocation(line: 1207, column: 25, scope: !2757)
!2767 = !DILocation(line: 1207, column: 31, scope: !2757)
!2768 = !DILocation(line: 1207, column: 4, scope: !2757)
!2769 = !DILocation(line: 1206, column: 14, scope: !2770)
!2770 = !DILexicalBlockFile(scope: !2757, file: !175, discriminator: 2)
!2771 = !DILocation(line: 1206, column: 14, scope: !2772)
!2772 = !DILexicalBlockFile(scope: !2757, file: !175, discriminator: 3)
!2773 = !DILocation(line: 1206, column: 12, scope: !2772)
!2774 = !DILocation(line: 1208, column: 33, scope: !2757)
!2775 = !DILocation(line: 1208, column: 42, scope: !2757)
!2776 = !DILocation(line: 1208, column: 33, scope: !2765)
!2777 = !DILocation(line: 1209, column: 8, scope: !2757)
!2778 = !DILocation(line: 1209, column: 19, scope: !2757)
!2779 = !DILocation(line: 1209, column: 24, scope: !2757)
!2780 = !DILocation(line: 1209, column: 33, scope: !2757)
!2781 = !DILocation(line: 1209, column: 40, scope: !2757)
!2782 = !DILocation(line: 1209, column: 30, scope: !2757)
!2783 = !DILocation(line: 1209, column: 54, scope: !2757)
!2784 = !DILocation(line: 1209, column: 5, scope: !2757)
!2785 = !DILocation(line: 1209, column: 5, scope: !2765)
!2786 = !DILocation(line: 1209, column: 97, scope: !2770)
!2787 = !DILocation(line: 1209, column: 103, scope: !2770)
!2788 = !DILocation(line: 1209, column: 66, scope: !2770)
!2789 = !DILocation(line: 1209, column: 114, scope: !2770)
!2790 = !DILocation(line: 1209, column: 5, scope: !2770)
!2791 = !DILocation(line: 1209, column: 5, scope: !2772)
!2792 = !DILocation(line: 1208, column: 33, scope: !2770)
!2793 = !DILocation(line: 1208, column: 33, scope: !2772)
!2794 = !DILocation(line: 1208, column: 3, scope: !2772)
!2795 = !DILocation(line: 1208, column: 9, scope: !2772)
!2796 = !DILocation(line: 1208, column: 16, scope: !2772)
!2797 = !DILocation(line: 1208, column: 31, scope: !2772)
!2798 = !DILocation(line: 1210, column: 2, scope: !2757)
!2799 = !DILocation(line: 1212, column: 6, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2735, file: !175, line: 1212, column: 6)
!2801 = !DILocation(line: 1212, column: 12, scope: !2800)
!2802 = !DILocation(line: 1212, column: 20, scope: !2800)
!2803 = !DILocation(line: 1212, column: 34, scope: !2800)
!2804 = !DILocation(line: 1212, column: 31, scope: !2800)
!2805 = !DILocation(line: 1212, column: 6, scope: !2735)
!2806 = !DILocation(line: 1215, column: 7, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2808, file: !175, line: 1215, column: 7)
!2808 = distinct !DILexicalBlock(scope: !2800, file: !175, line: 1212, column: 40)
!2809 = !DILocation(line: 1215, column: 13, scope: !2807)
!2810 = !DILocation(line: 1215, column: 33, scope: !2807)
!2811 = !DILocation(line: 1215, column: 30, scope: !2807)
!2812 = !DILocation(line: 1215, column: 7, scope: !2808)
!2813 = !DILocation(line: 1217, column: 50, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2807, file: !175, line: 1215, column: 39)
!2815 = !DILocation(line: 1217, column: 56, scope: !2814)
!2816 = !DILocation(line: 1217, column: 74, scope: !2814)
!2817 = !DILocation(line: 1217, column: 25, scope: !2814)
!2818 = !DILocation(line: 1217, column: 31, scope: !2814)
!2819 = !DILocation(line: 1217, column: 48, scope: !2814)
!2820 = !DILocation(line: 1218, column: 4, scope: !2814)
!2821 = !DILocation(line: 1218, column: 10, scope: !2814)
!2822 = !DILocation(line: 1218, column: 25, scope: !2814)
!2823 = !DILocation(line: 1219, column: 3, scope: !2814)
!2824 = !DILocation(line: 1221, column: 7, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2808, file: !175, line: 1221, column: 7)
!2826 = !DILocation(line: 1221, column: 13, scope: !2825)
!2827 = !DILocation(line: 1221, column: 26, scope: !2825)
!2828 = !DILocation(line: 1221, column: 23, scope: !2825)
!2829 = !DILocation(line: 1221, column: 7, scope: !2808)
!2830 = !DILocalVariable(name: "is_last", scope: !2831, file: !175, line: 1223, type: !63)
!2831 = distinct !DILexicalBlock(scope: !2825, file: !175, line: 1221, column: 32)
!2832 = !DILocation(line: 1223, column: 8, scope: !2831)
!2833 = !DILocation(line: 1223, column: 18, scope: !2831)
!2834 = !DILocation(line: 1223, column: 24, scope: !2831)
!2835 = !DILocation(line: 1223, column: 35, scope: !2831)
!2836 = !DILocation(line: 1223, column: 40, scope: !2831)
!2837 = !DILocation(line: 1225, column: 28, scope: !2831)
!2838 = !DILocation(line: 1225, column: 35, scope: !2831)
!2839 = !DILocation(line: 1225, column: 41, scope: !2831)
!2840 = !DILocation(line: 1226, column: 8, scope: !2831)
!2841 = !DILocation(line: 1226, column: 14, scope: !2831)
!2842 = !DILocation(line: 1227, column: 7, scope: !2831)
!2843 = !DILocation(line: 1225, column: 16, scope: !2831)
!2844 = !DILocation(line: 1225, column: 14, scope: !2831)
!2845 = !DILocation(line: 1228, column: 18, scope: !2831)
!2846 = !DILocation(line: 1228, column: 4, scope: !2831)
!2847 = !DILocation(line: 1228, column: 10, scope: !2831)
!2848 = !DILocation(line: 1228, column: 15, scope: !2831)
!2849 = !DILocation(line: 1229, column: 29, scope: !2831)
!2850 = !DILocation(line: 1229, column: 39, scope: !2831)
!2851 = !DILocation(line: 1229, column: 38, scope: !2831)
!2852 = !DILocation(line: 1229, column: 4, scope: !2831)
!2853 = !DILocation(line: 1229, column: 10, scope: !2831)
!2854 = !DILocation(line: 1229, column: 26, scope: !2831)
!2855 = !DILocation(line: 1230, column: 8, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2831, file: !175, line: 1230, column: 8)
!2857 = !DILocation(line: 1230, column: 16, scope: !2856)
!2858 = !DILocation(line: 1230, column: 8, scope: !2831)
!2859 = !DILocation(line: 1231, column: 5, scope: !2856)
!2860 = !DILocation(line: 1231, column: 11, scope: !2856)
!2861 = !DILocation(line: 1231, column: 21, scope: !2856)
!2862 = !DILocation(line: 1232, column: 3, scope: !2831)
!2863 = !DILocation(line: 1233, column: 2, scope: !2808)
!2864 = !DILocation(line: 1234, column: 36, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2866, file: !175, line: 1234, column: 7)
!2866 = distinct !DILexicalBlock(scope: !2800, file: !175, line: 1233, column: 9)
!2867 = !DILocation(line: 1234, column: 42, scope: !2865)
!2868 = !DILocation(line: 1235, column: 8, scope: !2865)
!2869 = !DILocation(line: 1234, column: 7, scope: !2865)
!2870 = !DILocation(line: 1234, column: 7, scope: !2866)
!2871 = !DILocation(line: 1236, column: 28, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2865, file: !175, line: 1235, column: 15)
!2873 = !DILocation(line: 1236, column: 35, scope: !2872)
!2874 = !DILocation(line: 1236, column: 41, scope: !2872)
!2875 = !DILocation(line: 1237, column: 8, scope: !2872)
!2876 = !DILocation(line: 1237, column: 14, scope: !2872)
!2877 = !DILocation(line: 1238, column: 8, scope: !2872)
!2878 = !DILocation(line: 1238, column: 7, scope: !2872)
!2879 = !DILocation(line: 1236, column: 16, scope: !2872)
!2880 = !DILocation(line: 1236, column: 14, scope: !2872)
!2881 = !DILocation(line: 1239, column: 29, scope: !2872)
!2882 = !DILocation(line: 1239, column: 39, scope: !2872)
!2883 = !DILocation(line: 1239, column: 38, scope: !2872)
!2884 = !DILocation(line: 1239, column: 4, scope: !2872)
!2885 = !DILocation(line: 1239, column: 10, scope: !2872)
!2886 = !DILocation(line: 1239, column: 26, scope: !2872)
!2887 = !DILocation(line: 1240, column: 3, scope: !2872)
!2888 = !DILocation(line: 1242, column: 36, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2866, file: !175, line: 1242, column: 7)
!2890 = !DILocation(line: 1242, column: 42, scope: !2889)
!2891 = !DILocation(line: 1243, column: 8, scope: !2889)
!2892 = !DILocation(line: 1242, column: 7, scope: !2889)
!2893 = !DILocation(line: 1242, column: 7, scope: !2866)
!2894 = !DILocation(line: 1244, column: 38, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2889, file: !175, line: 1243, column: 15)
!2896 = !DILocation(line: 1244, column: 44, scope: !2895)
!2897 = !DILocation(line: 1245, column: 10, scope: !2895)
!2898 = !DILocation(line: 1244, column: 4, scope: !2895)
!2899 = !DILocation(line: 1246, column: 3, scope: !2895)
!2900 = !DILocation(line: 1249, column: 19, scope: !2735)
!2901 = !DILocation(line: 1249, column: 26, scope: !2735)
!2902 = !DILocation(line: 1249, column: 31, scope: !2735)
!2903 = !DILocation(line: 1249, column: 37, scope: !2735)
!2904 = !DILocation(line: 1249, column: 41, scope: !2905)
!2905 = !DILexicalBlockFile(scope: !2735, file: !175, discriminator: 1)
!2906 = !DILocation(line: 1249, column: 48, scope: !2905)
!2907 = !DILocation(line: 1249, column: 56, scope: !2905)
!2908 = !DILocation(line: 1249, column: 63, scope: !2905)
!2909 = !DILocation(line: 1249, column: 53, scope: !2905)
!2910 = !DILocation(line: 1249, column: 37, scope: !2911)
!2911 = !DILexicalBlockFile(scope: !2735, file: !175, discriminator: 2)
!2912 = !DILocation(line: 1249, column: 2, scope: !2911)
!2913 = !DILocation(line: 1249, column: 8, scope: !2911)
!2914 = !DILocation(line: 1249, column: 15, scope: !2911)
!2915 = !DILocation(line: 1250, column: 13, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2735, file: !175, line: 1250, column: 13)
!2917 = !DILocation(line: 1250, column: 19, scope: !2916)
!2918 = !DILocation(line: 1250, column: 13, scope: !2735)
!2919 = !DILocation(line: 1250, column: 27, scope: !2920)
!2920 = !DILexicalBlockFile(scope: !2916, file: !175, discriminator: 1)
!2921 = !DILocation(line: 1250, column: 33, scope: !2920)
!2922 = !DILocation(line: 1250, column: 43, scope: !2920)
!2923 = !DILocation(line: 1251, column: 13, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2735, file: !175, line: 1251, column: 13)
!2925 = !DILocation(line: 1251, column: 19, scope: !2924)
!2926 = !DILocation(line: 1251, column: 26, scope: !2924)
!2927 = !DILocation(line: 1251, column: 13, scope: !2735)
!2928 = !DILocation(line: 1252, column: 16, scope: !2924)
!2929 = !DILocation(line: 1252, column: 22, scope: !2924)
!2930 = !DILocation(line: 1252, column: 3, scope: !2924)
!2931 = !DILocation(line: 1253, column: 1, scope: !2735)
!2932 = distinct !DISubprogram(name: "view_remove_cache", scope: !175, file: !175, line: 352, type: !2329, isLocal: true, isDefinition: true, scopeLine: 354, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !183)
!2933 = !DILocalVariable(name: "view", arg: 1, scope: !2932, file: !175, line: 352, type: !29)
!2934 = !DILocation(line: 352, column: 53, scope: !2932)
!2935 = !DILocalVariable(name: "line", arg: 2, scope: !2932, file: !175, line: 352, type: !48)
!2936 = !DILocation(line: 352, column: 69, scope: !2932)
!2937 = !DILocalVariable(name: "update_counter", arg: 3, scope: !2932, file: !175, line: 353, type: !57)
!2938 = !DILocation(line: 353, column: 24, scope: !2932)
!2939 = !DILocalVariable(name: "cache", scope: !2932, file: !175, line: 355, type: !1150)
!2940 = !DILocation(line: 355, column: 18, scope: !2932)
!2941 = !DILocation(line: 357, column: 6, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2932, file: !175, line: 357, column: 6)
!2943 = !DILocation(line: 357, column: 12, scope: !2942)
!2944 = !DILocation(line: 357, column: 19, scope: !2942)
!2945 = !DILocation(line: 357, column: 37, scope: !2942)
!2946 = !DILocation(line: 357, column: 34, scope: !2942)
!2947 = !DILocation(line: 357, column: 6, scope: !2932)
!2948 = !DILocation(line: 358, column: 3, scope: !2942)
!2949 = !DILocation(line: 359, column: 32, scope: !2932)
!2950 = !DILocation(line: 359, column: 2, scope: !2932)
!2951 = !DILocation(line: 359, column: 8, scope: !2932)
!2952 = !DILocation(line: 359, column: 15, scope: !2932)
!2953 = !DILocation(line: 359, column: 30, scope: !2932)
!2954 = !DILocation(line: 361, column: 30, scope: !2932)
!2955 = !DILocation(line: 361, column: 36, scope: !2932)
!2956 = !DILocation(line: 361, column: 43, scope: !2932)
!2957 = !DILocation(line: 361, column: 55, scope: !2932)
!2958 = !DILocation(line: 361, column: 10, scope: !2932)
!2959 = !DILocation(line: 361, column: 8, scope: !2932)
!2960 = !DILocation(line: 362, column: 6, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2932, file: !175, line: 362, column: 6)
!2962 = !DILocation(line: 362, column: 12, scope: !2961)
!2963 = !DILocation(line: 362, column: 6, scope: !2932)
!2964 = !DILocation(line: 363, column: 24, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2961, file: !175, line: 362, column: 20)
!2966 = !DILocation(line: 363, column: 17, scope: !2965)
!2967 = !DILocation(line: 364, column: 23, scope: !2965)
!2968 = !DILocation(line: 364, column: 29, scope: !2965)
!2969 = !DILocation(line: 364, column: 36, scope: !2965)
!2970 = !DILocation(line: 364, column: 48, scope: !2965)
!2971 = !DILocation(line: 364, column: 3, scope: !2965)
!2972 = !DILocation(line: 365, column: 2, scope: !2965)
!2973 = !DILocation(line: 366, column: 1, scope: !2932)
!2974 = distinct !DISubprogram(name: "textbuffer_view_remove_lines_by_level", scope: !175, file: !175, line: 1283, type: !847, isLocal: false, isDefinition: true, scopeLine: 1284, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !183)
!2975 = !DILocalVariable(name: "view", arg: 1, scope: !2974, file: !175, line: 1283, type: !29)
!2976 = !DILocation(line: 1283, column: 66, scope: !2974)
!2977 = !DILocalVariable(name: "level", arg: 2, scope: !2974, file: !175, line: 1283, type: !63)
!2978 = !DILocation(line: 1283, column: 76, scope: !2974)
!2979 = !DILocalVariable(name: "line", scope: !2974, file: !175, line: 1285, type: !48)
!2980 = !DILocation(line: 1285, column: 12, scope: !2974)
!2981 = !DILocalVariable(name: "next", scope: !2974, file: !175, line: 1285, type: !48)
!2982 = !DILocation(line: 1285, column: 19, scope: !2974)
!2983 = !DILocation(line: 1287, column: 2, scope: !2974)
!2984 = !DILocation(line: 1288, column: 11, scope: !2974)
!2985 = !DILocation(line: 1288, column: 18, scope: !2974)
!2986 = !DILocation(line: 1288, column: 26, scope: !2974)
!2987 = !DILocation(line: 1288, column: 7, scope: !2974)
!2988 = !DILocation(line: 1290, column: 2, scope: !2974)
!2989 = !DILocation(line: 1290, column: 9, scope: !2990)
!2990 = !DILexicalBlockFile(scope: !2974, file: !175, discriminator: 1)
!2991 = !DILocation(line: 1290, column: 14, scope: !2990)
!2992 = !DILocation(line: 1290, column: 2, scope: !2990)
!2993 = !DILocation(line: 1291, column: 10, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2974, file: !175, line: 1290, column: 22)
!2995 = !DILocation(line: 1291, column: 16, scope: !2994)
!2996 = !DILocation(line: 1291, column: 8, scope: !2994)
!2997 = !DILocation(line: 1293, column: 7, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2994, file: !175, line: 1293, column: 7)
!2999 = !DILocation(line: 1293, column: 13, scope: !2998)
!3000 = !DILocation(line: 1293, column: 18, scope: !2998)
!3001 = !DILocation(line: 1293, column: 26, scope: !2998)
!3002 = !DILocation(line: 1293, column: 24, scope: !2998)
!3003 = !DILocation(line: 1293, column: 7, scope: !2994)
!3004 = !DILocation(line: 1294, column: 32, scope: !2998)
!3005 = !DILocation(line: 1294, column: 38, scope: !2998)
!3006 = !DILocation(line: 1294, column: 4, scope: !2998)
!3007 = !DILocation(line: 1295, column: 10, scope: !2994)
!3008 = !DILocation(line: 1295, column: 8, scope: !2994)
!3009 = !DILocation(line: 1290, column: 2, scope: !3010)
!3010 = !DILexicalBlockFile(scope: !2974, file: !175, discriminator: 2)
!3011 = distinct !{!3011, !2988}
!3012 = !DILocation(line: 1297, column: 25, scope: !2974)
!3013 = !DILocation(line: 1297, column: 2, scope: !2974)
!3014 = !DILocation(line: 1298, column: 2, scope: !2974)
!3015 = !DILocation(line: 1299, column: 1, scope: !2974)
!3016 = distinct !DISubprogram(name: "textbuffer_view_remove_all_lines", scope: !175, file: !175, line: 1308, type: !181, isLocal: false, isDefinition: true, scopeLine: 1309, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !183)
!3017 = !DILocalVariable(name: "view", arg: 1, scope: !3016, file: !175, line: 1308, type: !29)
!3018 = !DILocation(line: 1308, column: 61, scope: !3016)
!3019 = !DILocation(line: 1310, column: 2, scope: !3016)
!3020 = distinct !{!3020, !3019}
!3021 = !DILocation(line: 1310, column: 10, scope: !3022)
!3022 = !DILexicalBlockFile(scope: !3023, file: !175, discriminator: 1)
!3023 = distinct !DILexicalBlock(scope: !3024, file: !175, line: 1310, column: 10)
!3024 = distinct !DILexicalBlock(scope: !3016, file: !175, line: 1310, column: 4)
!3025 = !DILocation(line: 1310, column: 15, scope: !3022)
!3026 = !DILocation(line: 1310, column: 5, scope: !3027)
!3027 = !DILexicalBlockFile(scope: !3028, file: !175, discriminator: 2)
!3028 = distinct !DILexicalBlock(scope: !3023, file: !175, line: 1310, column: 3)
!3029 = !DILocation(line: 1310, column: 14, scope: !3030)
!3030 = !DILexicalBlockFile(scope: !3031, file: !175, discriminator: 3)
!3031 = distinct !DILexicalBlock(scope: !3023, file: !175, line: 1310, column: 12)
!3032 = !DILocation(line: 1310, column: 103, scope: !3030)
!3033 = !DILocation(line: 1310, column: 114, scope: !3034)
!3034 = !DILexicalBlockFile(scope: !3024, file: !175, discriminator: 4)
!3035 = !DILocation(line: 1312, column: 30, scope: !3016)
!3036 = !DILocation(line: 1312, column: 36, scope: !3016)
!3037 = !DILocation(line: 1312, column: 2, scope: !3016)
!3038 = !DILocation(line: 1314, column: 30, scope: !3016)
!3039 = !DILocation(line: 1314, column: 36, scope: !3016)
!3040 = !DILocation(line: 1314, column: 2, scope: !3016)
!3041 = !DILocation(line: 1317, column: 30, scope: !3016)
!3042 = !DILocation(line: 1317, column: 2, scope: !3016)
!3043 = !DILocation(line: 1318, column: 24, scope: !3016)
!3044 = !DILocation(line: 1318, column: 2, scope: !3016)
!3045 = !DILocation(line: 1319, column: 18, scope: !3016)
!3046 = !DILocation(line: 1319, column: 24, scope: !3016)
!3047 = !DILocation(line: 1319, column: 2, scope: !3016)
!3048 = !DILocation(line: 1320, column: 1, scope: !3016)
!3049 = !DILocation(line: 1320, column: 1, scope: !3050)
!3050 = !DILexicalBlockFile(scope: !3016, file: !175, discriminator: 1)
!3051 = distinct !DISubprogram(name: "g_free_true", scope: !175, file: !175, line: 1301, type: !3052, isLocal: true, isDefinition: true, scopeLine: 1302, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !183)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{!63, !25}
!3054 = !DILocalVariable(name: "data", arg: 1, scope: !3051, file: !175, line: 1301, type: !25)
!3055 = !DILocation(line: 1301, column: 30, scope: !3051)
!3056 = !DILocation(line: 1303, column: 9, scope: !3051)
!3057 = !DILocation(line: 1303, column: 2, scope: !3051)
!3058 = !DILocation(line: 1304, column: 9, scope: !3051)
!3059 = distinct !DISubprogram(name: "textbuffer_view_set_bookmark", scope: !175, file: !175, line: 1323, type: !3060, isLocal: false, isDefinition: true, scopeLine: 1325, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !183)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{null, !29, !26, !48}
!3062 = !DILocalVariable(name: "view", arg: 1, scope: !3059, file: !175, line: 1323, type: !29)
!3063 = !DILocation(line: 1323, column: 57, scope: !3059)
!3064 = !DILocalVariable(name: "name", arg: 2, scope: !3059, file: !175, line: 1324, type: !26)
!3065 = !DILocation(line: 1324, column: 19, scope: !3059)
!3066 = !DILocalVariable(name: "line", arg: 3, scope: !3059, file: !175, line: 1324, type: !48)
!3067 = !DILocation(line: 1324, column: 35, scope: !3059)
!3068 = !DILocalVariable(name: "key", scope: !3059, file: !175, line: 1326, type: !24)
!3069 = !DILocation(line: 1326, column: 11, scope: !3059)
!3070 = !DILocalVariable(name: "value", scope: !3059, file: !175, line: 1326, type: !24)
!3071 = !DILocation(line: 1326, column: 16, scope: !3059)
!3072 = !DILocation(line: 1328, column: 2, scope: !3059)
!3073 = distinct !{!3073, !3072}
!3074 = !DILocation(line: 1328, column: 10, scope: !3075)
!3075 = !DILexicalBlockFile(scope: !3076, file: !175, discriminator: 1)
!3076 = distinct !DILexicalBlock(scope: !3077, file: !175, line: 1328, column: 10)
!3077 = distinct !DILexicalBlock(scope: !3059, file: !175, line: 1328, column: 4)
!3078 = !DILocation(line: 1328, column: 15, scope: !3075)
!3079 = !DILocation(line: 1328, column: 5, scope: !3080)
!3080 = !DILexicalBlockFile(scope: !3081, file: !175, discriminator: 2)
!3081 = distinct !DILexicalBlock(scope: !3076, file: !175, line: 1328, column: 3)
!3082 = !DILocation(line: 1328, column: 14, scope: !3083)
!3083 = !DILexicalBlockFile(scope: !3084, file: !175, discriminator: 3)
!3084 = distinct !DILexicalBlock(scope: !3076, file: !175, line: 1328, column: 12)
!3085 = !DILocation(line: 1328, column: 103, scope: !3083)
!3086 = !DILocation(line: 1328, column: 114, scope: !3087)
!3087 = !DILexicalBlockFile(scope: !3077, file: !175, discriminator: 4)
!3088 = !DILocation(line: 1329, column: 2, scope: !3059)
!3089 = distinct !{!3089, !3088}
!3090 = !DILocation(line: 1329, column: 10, scope: !3091)
!3091 = !DILexicalBlockFile(scope: !3092, file: !175, discriminator: 1)
!3092 = distinct !DILexicalBlock(scope: !3093, file: !175, line: 1329, column: 10)
!3093 = distinct !DILexicalBlock(scope: !3059, file: !175, line: 1329, column: 4)
!3094 = !DILocation(line: 1329, column: 15, scope: !3091)
!3095 = !DILocation(line: 1329, column: 5, scope: !3096)
!3096 = !DILexicalBlockFile(scope: !3097, file: !175, discriminator: 2)
!3097 = distinct !DILexicalBlock(scope: !3092, file: !175, line: 1329, column: 3)
!3098 = !DILocation(line: 1329, column: 14, scope: !3099)
!3099 = !DILexicalBlockFile(scope: !3100, file: !175, discriminator: 3)
!3100 = distinct !DILexicalBlock(scope: !3092, file: !175, line: 1329, column: 12)
!3101 = !DILocation(line: 1329, column: 103, scope: !3099)
!3102 = !DILocation(line: 1329, column: 114, scope: !3103)
!3103 = !DILexicalBlockFile(scope: !3093, file: !175, discriminator: 4)
!3104 = !DILocation(line: 1331, column: 35, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3059, file: !175, line: 1331, column: 6)
!3106 = !DILocation(line: 1331, column: 41, scope: !3105)
!3107 = !DILocation(line: 1331, column: 52, scope: !3105)
!3108 = !DILocation(line: 1331, column: 6, scope: !3105)
!3109 = !DILocation(line: 1331, column: 6, scope: !3059)
!3110 = !DILocation(line: 1333, column: 23, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3105, file: !175, line: 1332, column: 22)
!3112 = !DILocation(line: 1333, column: 29, scope: !3111)
!3113 = !DILocation(line: 1333, column: 40, scope: !3111)
!3114 = !DILocation(line: 1333, column: 3, scope: !3111)
!3115 = !DILocation(line: 1334, column: 24, scope: !3111)
!3116 = !DILocation(line: 1334, column: 17, scope: !3111)
!3117 = !DILocation(line: 1335, column: 2, scope: !3111)
!3118 = !DILocation(line: 1337, column: 22, scope: !3059)
!3119 = !DILocation(line: 1337, column: 28, scope: !3059)
!3120 = !DILocation(line: 1337, column: 48, scope: !3059)
!3121 = !DILocation(line: 1337, column: 39, scope: !3059)
!3122 = !DILocation(line: 1337, column: 55, scope: !3059)
!3123 = !DILocation(line: 1337, column: 2, scope: !3124)
!3124 = !DILexicalBlockFile(scope: !3059, file: !175, discriminator: 1)
!3125 = !DILocation(line: 1338, column: 1, scope: !3059)
!3126 = !DILocation(line: 1338, column: 1, scope: !3124)
!3127 = distinct !DISubprogram(name: "textbuffer_view_set_bookmark_bottom", scope: !175, file: !175, line: 1341, type: !3128, isLocal: false, isDefinition: true, scopeLine: 1343, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !183)
!3128 = !DISubroutineType(types: !3129)
!3129 = !{null, !29, !26}
!3130 = !DILocalVariable(name: "view", arg: 1, scope: !3127, file: !175, line: 1341, type: !29)
!3131 = !DILocation(line: 1341, column: 64, scope: !3127)
!3132 = !DILocalVariable(name: "name", arg: 2, scope: !3127, file: !175, line: 1342, type: !26)
!3133 = !DILocation(line: 1342, column: 19, scope: !3127)
!3134 = !DILocalVariable(name: "line", scope: !3127, file: !175, line: 1344, type: !48)
!3135 = !DILocation(line: 1344, column: 12, scope: !3127)
!3136 = !DILocation(line: 1346, column: 2, scope: !3127)
!3137 = distinct !{!3137, !3136}
!3138 = !DILocation(line: 1346, column: 10, scope: !3139)
!3139 = !DILexicalBlockFile(scope: !3140, file: !175, discriminator: 1)
!3140 = distinct !DILexicalBlock(scope: !3141, file: !175, line: 1346, column: 10)
!3141 = distinct !DILexicalBlock(scope: !3127, file: !175, line: 1346, column: 4)
!3142 = !DILocation(line: 1346, column: 15, scope: !3139)
!3143 = !DILocation(line: 1346, column: 5, scope: !3144)
!3144 = !DILexicalBlockFile(scope: !3145, file: !175, discriminator: 2)
!3145 = distinct !DILexicalBlock(scope: !3140, file: !175, line: 1346, column: 3)
!3146 = !DILocation(line: 1346, column: 14, scope: !3147)
!3147 = !DILexicalBlockFile(scope: !3148, file: !175, discriminator: 3)
!3148 = distinct !DILexicalBlock(scope: !3140, file: !175, line: 1346, column: 12)
!3149 = !DILocation(line: 1346, column: 103, scope: !3147)
!3150 = !DILocation(line: 1346, column: 114, scope: !3151)
!3151 = !DILexicalBlockFile(scope: !3141, file: !175, discriminator: 4)
!3152 = !DILocation(line: 1347, column: 2, scope: !3127)
!3153 = distinct !{!3153, !3152}
!3154 = !DILocation(line: 1347, column: 10, scope: !3155)
!3155 = !DILexicalBlockFile(scope: !3156, file: !175, discriminator: 1)
!3156 = distinct !DILexicalBlock(scope: !3157, file: !175, line: 1347, column: 10)
!3157 = distinct !DILexicalBlock(scope: !3127, file: !175, line: 1347, column: 4)
!3158 = !DILocation(line: 1347, column: 15, scope: !3155)
!3159 = !DILocation(line: 1347, column: 5, scope: !3160)
!3160 = !DILexicalBlockFile(scope: !3161, file: !175, discriminator: 2)
!3161 = distinct !DILexicalBlock(scope: !3156, file: !175, line: 1347, column: 3)
!3162 = !DILocation(line: 1347, column: 14, scope: !3163)
!3163 = !DILexicalBlockFile(scope: !3164, file: !175, discriminator: 3)
!3164 = distinct !DILexicalBlock(scope: !3156, file: !175, line: 1347, column: 12)
!3165 = !DILocation(line: 1347, column: 103, scope: !3163)
!3166 = !DILocation(line: 1347, column: 114, scope: !3167)
!3167 = !DILexicalBlockFile(scope: !3157, file: !175, discriminator: 4)
!3168 = !DILocation(line: 1349, column: 6, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !3127, file: !175, line: 1349, column: 6)
!3170 = !DILocation(line: 1349, column: 12, scope: !3169)
!3171 = !DILocation(line: 1349, column: 29, scope: !3169)
!3172 = !DILocation(line: 1349, column: 6, scope: !3127)
!3173 = !DILocation(line: 1350, column: 45, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3169, file: !175, line: 1349, column: 37)
!3175 = !DILocation(line: 1350, column: 51, scope: !3174)
!3176 = !DILocation(line: 1350, column: 24, scope: !3174)
!3177 = !DILocation(line: 1350, column: 22, scope: !3174)
!3178 = !DILocation(line: 1351, column: 32, scope: !3174)
!3179 = !DILocation(line: 1351, column: 38, scope: !3174)
!3180 = !DILocation(line: 1351, column: 44, scope: !3174)
!3181 = !DILocation(line: 1351, column: 3, scope: !3174)
!3182 = !DILocation(line: 1352, column: 2, scope: !3174)
!3183 = !DILocation(line: 1353, column: 1, scope: !3127)
!3184 = distinct !DISubprogram(name: "textbuffer_view_get_bookmark", scope: !175, file: !175, line: 1356, type: !3185, isLocal: false, isDefinition: true, scopeLine: 1358, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !183)
!3185 = !DISubroutineType(types: !3186)
!3186 = !{!48, !29, !26}
!3187 = !DILocalVariable(name: "view", arg: 1, scope: !3184, file: !175, line: 1356, type: !29)
!3188 = !DILocation(line: 1356, column: 62, scope: !3184)
!3189 = !DILocalVariable(name: "name", arg: 2, scope: !3184, file: !175, line: 1357, type: !26)
!3190 = !DILocation(line: 1357, column: 24, scope: !3184)
!3191 = !DILocation(line: 1359, column: 2, scope: !3184)
!3192 = distinct !{!3192, !3191}
!3193 = !DILocation(line: 1359, column: 10, scope: !3194)
!3194 = !DILexicalBlockFile(scope: !3195, file: !175, discriminator: 1)
!3195 = distinct !DILexicalBlock(scope: !3196, file: !175, line: 1359, column: 10)
!3196 = distinct !DILexicalBlock(scope: !3184, file: !175, line: 1359, column: 4)
!3197 = !DILocation(line: 1359, column: 15, scope: !3194)
!3198 = !DILocation(line: 1359, column: 5, scope: !3199)
!3199 = !DILexicalBlockFile(scope: !3200, file: !175, discriminator: 2)
!3200 = distinct !DILexicalBlock(scope: !3195, file: !175, line: 1359, column: 3)
!3201 = !DILocation(line: 1359, column: 14, scope: !3202)
!3202 = !DILexicalBlockFile(scope: !3203, file: !175, discriminator: 3)
!3203 = distinct !DILexicalBlock(scope: !3195, file: !175, line: 1359, column: 12)
!3204 = !DILocation(line: 1359, column: 103, scope: !3202)
!3205 = !DILocation(line: 1359, column: 7, scope: !3206)
!3206 = !DILexicalBlockFile(scope: !3196, file: !175, discriminator: 4)
!3207 = !DILocation(line: 1360, column: 2, scope: !3184)
!3208 = distinct !{!3208, !3207}
!3209 = !DILocation(line: 1360, column: 10, scope: !3210)
!3210 = !DILexicalBlockFile(scope: !3211, file: !175, discriminator: 1)
!3211 = distinct !DILexicalBlock(scope: !3212, file: !175, line: 1360, column: 10)
!3212 = distinct !DILexicalBlock(scope: !3184, file: !175, line: 1360, column: 4)
!3213 = !DILocation(line: 1360, column: 15, scope: !3210)
!3214 = !DILocation(line: 1360, column: 5, scope: !3215)
!3215 = !DILexicalBlockFile(scope: !3216, file: !175, discriminator: 2)
!3216 = distinct !DILexicalBlock(scope: !3211, file: !175, line: 1360, column: 3)
!3217 = !DILocation(line: 1360, column: 14, scope: !3218)
!3218 = !DILexicalBlockFile(scope: !3219, file: !175, discriminator: 3)
!3219 = distinct !DILexicalBlock(scope: !3211, file: !175, line: 1360, column: 12)
!3220 = !DILocation(line: 1360, column: 103, scope: !3218)
!3221 = !DILocation(line: 1360, column: 7, scope: !3222)
!3222 = !DILexicalBlockFile(scope: !3212, file: !175, discriminator: 4)
!3223 = !DILocation(line: 1362, column: 36, scope: !3184)
!3224 = !DILocation(line: 1362, column: 42, scope: !3184)
!3225 = !DILocation(line: 1362, column: 53, scope: !3184)
!3226 = !DILocation(line: 1362, column: 16, scope: !3184)
!3227 = !DILocation(line: 1362, column: 9, scope: !3184)
!3228 = !DILocation(line: 1363, column: 1, scope: !3184)
!3229 = distinct !DISubprogram(name: "textbuffer_view_set_hidden_level", scope: !175, file: !175, line: 1365, type: !847, isLocal: false, isDefinition: true, scopeLine: 1366, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !183)
!3230 = !DILocalVariable(name: "view", arg: 1, scope: !3229, file: !175, line: 1365, type: !29)
!3231 = !DILocation(line: 1365, column: 61, scope: !3229)
!3232 = !DILocalVariable(name: "level", arg: 2, scope: !3229, file: !175, line: 1365, type: !63)
!3233 = !DILocation(line: 1365, column: 71, scope: !3229)
!3234 = !DILocation(line: 1367, column: 2, scope: !3229)
!3235 = distinct !{!3235, !3234}
!3236 = !DILocation(line: 1367, column: 10, scope: !3237)
!3237 = !DILexicalBlockFile(scope: !3238, file: !175, discriminator: 1)
!3238 = distinct !DILexicalBlock(scope: !3239, file: !175, line: 1367, column: 10)
!3239 = distinct !DILexicalBlock(scope: !3229, file: !175, line: 1367, column: 4)
!3240 = !DILocation(line: 1367, column: 15, scope: !3237)
!3241 = !DILocation(line: 1367, column: 5, scope: !3242)
!3242 = !DILexicalBlockFile(scope: !3243, file: !175, discriminator: 2)
!3243 = distinct !DILexicalBlock(scope: !3238, file: !175, line: 1367, column: 3)
!3244 = !DILocation(line: 1367, column: 14, scope: !3245)
!3245 = !DILexicalBlockFile(scope: !3246, file: !175, discriminator: 3)
!3246 = distinct !DILexicalBlock(scope: !3238, file: !175, line: 1367, column: 12)
!3247 = !DILocation(line: 1367, column: 103, scope: !3245)
!3248 = !DILocation(line: 1367, column: 114, scope: !3249)
!3249 = !DILexicalBlockFile(scope: !3239, file: !175, discriminator: 4)
!3250 = !DILocation(line: 1369, column: 6, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3229, file: !175, line: 1369, column: 6)
!3252 = !DILocation(line: 1369, column: 12, scope: !3251)
!3253 = !DILocation(line: 1369, column: 28, scope: !3251)
!3254 = !DILocation(line: 1369, column: 25, scope: !3251)
!3255 = !DILocation(line: 1369, column: 6, scope: !3229)
!3256 = !DILocation(line: 1370, column: 7, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3258, file: !175, line: 1370, column: 7)
!3258 = distinct !DILexicalBlock(scope: !3251, file: !175, line: 1369, column: 35)
!3259 = !DILocation(line: 1370, column: 13, scope: !3257)
!3260 = !DILocation(line: 1370, column: 29, scope: !3257)
!3261 = !DILocation(line: 1370, column: 33, scope: !3257)
!3262 = !DILocation(line: 1370, column: 36, scope: !3263)
!3263 = !DILexicalBlockFile(scope: !3257, file: !175, discriminator: 1)
!3264 = !DILocation(line: 1370, column: 42, scope: !3263)
!3265 = !DILocation(line: 1370, column: 52, scope: !3263)
!3266 = !DILocation(line: 1370, column: 7, scope: !3263)
!3267 = !DILocalVariable(name: "old_height", scope: !3268, file: !175, line: 1371, type: !63)
!3268 = distinct !DILexicalBlock(scope: !3257, file: !175, line: 1370, column: 60)
!3269 = !DILocation(line: 1371, column: 8, scope: !3268)
!3270 = !DILocalVariable(name: "new_height", scope: !3268, file: !175, line: 1371, type: !63)
!3271 = !DILocation(line: 1371, column: 20, scope: !3268)
!3272 = !DILocalVariable(name: "hidden_start", scope: !3268, file: !175, line: 1372, type: !48)
!3273 = !DILocation(line: 1372, column: 14, scope: !3268)
!3274 = !DILocation(line: 1374, column: 19, scope: !3268)
!3275 = !DILocation(line: 1374, column: 25, scope: !3268)
!3276 = !DILocation(line: 1374, column: 17, scope: !3268)
!3277 = !DILocation(line: 1375, column: 4, scope: !3268)
!3278 = !DILocation(line: 1375, column: 11, scope: !3279)
!3279 = !DILexicalBlockFile(scope: !3268, file: !175, discriminator: 1)
!3280 = !DILocation(line: 1375, column: 25, scope: !3279)
!3281 = !DILocation(line: 1375, column: 30, scope: !3279)
!3282 = !DILocation(line: 1375, column: 37, scope: !3279)
!3283 = !DILocation(line: 1375, column: 43, scope: !3284)
!3284 = !DILexicalBlockFile(scope: !3268, file: !175, discriminator: 2)
!3285 = !DILocation(line: 1375, column: 57, scope: !3284)
!3286 = !DILocation(line: 1375, column: 64, scope: !3284)
!3287 = !DILocation(line: 1375, column: 69, scope: !3284)
!3288 = !DILocation(line: 1375, column: 78, scope: !3284)
!3289 = !DILocation(line: 1375, column: 85, scope: !3284)
!3290 = !DILocation(line: 1375, column: 75, scope: !3284)
!3291 = !DILocation(line: 1375, column: 99, scope: !3284)
!3292 = !DILocation(line: 1375, column: 4, scope: !3293)
!3293 = !DILexicalBlockFile(scope: !3268, file: !175, discriminator: 3)
!3294 = !DILocation(line: 1376, column: 20, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3268, file: !175, line: 1375, column: 106)
!3296 = !DILocation(line: 1376, column: 34, scope: !3295)
!3297 = !DILocation(line: 1376, column: 18, scope: !3295)
!3298 = !DILocation(line: 1375, column: 4, scope: !3299)
!3299 = !DILexicalBlockFile(scope: !3268, file: !175, discriminator: 4)
!3300 = distinct !{!3300, !3277}
!3301 = !DILocation(line: 1379, column: 39, scope: !3268)
!3302 = !DILocation(line: 1379, column: 45, scope: !3268)
!3303 = !DILocation(line: 1379, column: 59, scope: !3268)
!3304 = !DILocation(line: 1379, column: 65, scope: !3268)
!3305 = !DILocation(line: 1379, column: 17, scope: !3268)
!3306 = !DILocation(line: 1379, column: 15, scope: !3268)
!3307 = !DILocation(line: 1380, column: 25, scope: !3268)
!3308 = !DILocation(line: 1380, column: 4, scope: !3268)
!3309 = !DILocation(line: 1380, column: 10, scope: !3268)
!3310 = !DILocation(line: 1380, column: 23, scope: !3268)
!3311 = !DILocation(line: 1381, column: 39, scope: !3268)
!3312 = !DILocation(line: 1381, column: 45, scope: !3268)
!3313 = !DILocation(line: 1381, column: 59, scope: !3268)
!3314 = !DILocation(line: 1381, column: 65, scope: !3268)
!3315 = !DILocation(line: 1381, column: 17, scope: !3268)
!3316 = !DILocation(line: 1381, column: 15, scope: !3268)
!3317 = !DILocation(line: 1383, column: 29, scope: !3268)
!3318 = !DILocation(line: 1383, column: 42, scope: !3268)
!3319 = !DILocation(line: 1383, column: 40, scope: !3268)
!3320 = !DILocation(line: 1383, column: 4, scope: !3268)
!3321 = !DILocation(line: 1383, column: 10, scope: !3268)
!3322 = !DILocation(line: 1383, column: 26, scope: !3268)
!3323 = !DILocation(line: 1385, column: 8, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3268, file: !175, line: 1385, column: 8)
!3325 = !DILocation(line: 1385, column: 14, scope: !3324)
!3326 = !DILocation(line: 1385, column: 30, scope: !3324)
!3327 = !DILocation(line: 1385, column: 8, scope: !3268)
!3328 = !DILocation(line: 1386, column: 5, scope: !3324)
!3329 = !DILocation(line: 1386, column: 11, scope: !3324)
!3330 = !DILocation(line: 1386, column: 27, scope: !3324)
!3331 = !DILocation(line: 1387, column: 13, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3324, file: !175, line: 1387, column: 13)
!3333 = !DILocation(line: 1387, column: 19, scope: !3332)
!3334 = !DILocation(line: 1387, column: 37, scope: !3332)
!3335 = !DILocation(line: 1387, column: 43, scope: !3332)
!3336 = !DILocation(line: 1387, column: 35, scope: !3332)
!3337 = !DILocation(line: 1387, column: 13, scope: !3324)
!3338 = !DILocation(line: 1388, column: 29, scope: !3332)
!3339 = !DILocation(line: 1388, column: 35, scope: !3332)
!3340 = !DILocation(line: 1388, column: 5, scope: !3332)
!3341 = !DILocation(line: 1388, column: 11, scope: !3332)
!3342 = !DILocation(line: 1388, column: 27, scope: !3332)
!3343 = !DILocation(line: 1389, column: 3, scope: !3268)
!3344 = !DILocation(line: 1390, column: 25, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3257, file: !175, line: 1389, column: 10)
!3346 = !DILocation(line: 1390, column: 4, scope: !3345)
!3347 = !DILocation(line: 1390, column: 10, scope: !3345)
!3348 = !DILocation(line: 1390, column: 23, scope: !3345)
!3349 = !DILocation(line: 1392, column: 26, scope: !3258)
!3350 = !DILocation(line: 1392, column: 32, scope: !3258)
!3351 = !DILocation(line: 1392, column: 38, scope: !3258)
!3352 = !DILocation(line: 1392, column: 45, scope: !3258)
!3353 = !DILocation(line: 1392, column: 51, scope: !3258)
!3354 = !DILocation(line: 1392, column: 3, scope: !3258)
!3355 = !DILocation(line: 1393, column: 2, scope: !3258)
!3356 = !DILocation(line: 1394, column: 1, scope: !3229)
!3357 = distinct !DISubprogram(name: "view_get_lines_height", scope: !175, file: !175, line: 1145, type: !3358, isLocal: true, isDefinition: true, scopeLine: 1148, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !183)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{!63, !29, !48, !63, !48}
!3360 = !DILocalVariable(name: "view", arg: 1, scope: !3357, file: !175, line: 1145, type: !29)
!3361 = !DILocation(line: 1145, column: 56, scope: !3357)
!3362 = !DILocalVariable(name: "line", arg: 2, scope: !3357, file: !175, line: 1146, type: !48)
!3363 = !DILocation(line: 1146, column: 16, scope: !3357)
!3364 = !DILocalVariable(name: "subline", arg: 3, scope: !3357, file: !175, line: 1146, type: !63)
!3365 = !DILocation(line: 1146, column: 26, scope: !3357)
!3366 = !DILocalVariable(name: "skip_line", arg: 4, scope: !3357, file: !175, line: 1147, type: !48)
!3367 = !DILocation(line: 1147, column: 16, scope: !3357)
!3368 = !DILocalVariable(name: "height", scope: !3357, file: !175, line: 1149, type: !63)
!3369 = !DILocation(line: 1149, column: 6, scope: !3357)
!3370 = !DILocalVariable(name: "linecount", scope: !3357, file: !175, line: 1149, type: !63)
!3371 = !DILocation(line: 1149, column: 14, scope: !3357)
!3372 = !DILocation(line: 1151, column: 19, scope: !3357)
!3373 = !DILocation(line: 1151, column: 18, scope: !3357)
!3374 = !DILocation(line: 1151, column: 16, scope: !3357)
!3375 = !DILocation(line: 1152, column: 2, scope: !3357)
!3376 = !DILocation(line: 1152, column: 9, scope: !3377)
!3377 = !DILexicalBlockFile(scope: !3357, file: !175, discriminator: 1)
!3378 = !DILocation(line: 1152, column: 14, scope: !3377)
!3379 = !DILocation(line: 1152, column: 21, scope: !3377)
!3380 = !DILocation(line: 1152, column: 24, scope: !3381)
!3381 = !DILexicalBlockFile(scope: !3357, file: !175, discriminator: 2)
!3382 = !DILocation(line: 1152, column: 33, scope: !3381)
!3383 = !DILocation(line: 1152, column: 39, scope: !3381)
!3384 = !DILocation(line: 1152, column: 31, scope: !3381)
!3385 = !DILocation(line: 1152, column: 2, scope: !3386)
!3386 = !DILexicalBlockFile(scope: !3357, file: !175, discriminator: 3)
!3387 = !DILocation(line: 1153, column: 7, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3389, file: !175, line: 1153, column: 7)
!3389 = distinct !DILexicalBlock(scope: !3357, file: !175, line: 1152, column: 47)
!3390 = !DILocation(line: 1153, column: 15, scope: !3388)
!3391 = !DILocation(line: 1153, column: 12, scope: !3388)
!3392 = !DILocation(line: 1153, column: 7, scope: !3389)
!3393 = !DILocation(line: 1154, column: 41, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3388, file: !175, line: 1153, column: 26)
!3395 = !DILocation(line: 1154, column: 48, scope: !3394)
!3396 = !DILocation(line: 1154, column: 53, scope: !3394)
!3397 = !DILocation(line: 1154, column: 62, scope: !3394)
!3398 = !DILocation(line: 1154, column: 69, scope: !3394)
!3399 = !DILocation(line: 1154, column: 59, scope: !3394)
!3400 = !DILocation(line: 1154, column: 83, scope: !3394)
!3401 = !DILocation(line: 1154, column: 38, scope: !3394)
!3402 = !DILocation(line: 1154, column: 38, scope: !3403)
!3403 = !DILexicalBlockFile(scope: !3394, file: !175, discriminator: 1)
!3404 = !DILocation(line: 1154, column: 126, scope: !3405)
!3405 = !DILexicalBlockFile(scope: !3394, file: !175, discriminator: 2)
!3406 = !DILocation(line: 1154, column: 132, scope: !3405)
!3407 = !DILocation(line: 1154, column: 95, scope: !3405)
!3408 = !DILocation(line: 1154, column: 139, scope: !3405)
!3409 = !DILocation(line: 1154, column: 38, scope: !3405)
!3410 = !DILocation(line: 1154, column: 38, scope: !3411)
!3411 = !DILexicalBlockFile(scope: !3394, file: !175, discriminator: 3)
!3412 = !DILocation(line: 1154, column: 35, scope: !3411)
!3413 = !DILocation(line: 1155, column: 14, scope: !3394)
!3414 = !DILocation(line: 1155, column: 11, scope: !3394)
!3415 = !DILocation(line: 1156, column: 3, scope: !3394)
!3416 = !DILocation(line: 1157, column: 24, scope: !3389)
!3417 = !DILocation(line: 1157, column: 30, scope: !3389)
!3418 = !DILocation(line: 1157, column: 22, scope: !3389)
!3419 = !DILocation(line: 1152, column: 2, scope: !3420)
!3420 = !DILexicalBlockFile(scope: !3357, file: !175, discriminator: 4)
!3421 = distinct !{!3421, !3375}
!3422 = !DILocation(line: 1160, column: 9, scope: !3357)
!3423 = !DILocation(line: 1160, column: 18, scope: !3357)
!3424 = !DILocation(line: 1160, column: 24, scope: !3357)
!3425 = !DILocation(line: 1160, column: 16, scope: !3357)
!3426 = !DILocation(line: 1160, column: 33, scope: !3377)
!3427 = !DILocation(line: 1160, column: 9, scope: !3377)
!3428 = !DILocation(line: 1160, column: 42, scope: !3381)
!3429 = !DILocation(line: 1160, column: 48, scope: !3381)
!3430 = !DILocation(line: 1160, column: 9, scope: !3381)
!3431 = !DILocation(line: 1160, column: 9, scope: !3386)
!3432 = !DILocation(line: 1160, column: 2, scope: !3386)
!3433 = distinct !DISubprogram(name: "textbuffer_view_set_window", scope: !175, file: !175, line: 1398, type: !3434, isLocal: false, isDefinition: true, scopeLine: 1400, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !183)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{null, !29, !90}
!3436 = !DILocalVariable(name: "view", arg: 1, scope: !3433, file: !175, line: 1398, type: !29)
!3437 = !DILocation(line: 1398, column: 55, scope: !3433)
!3438 = !DILocalVariable(name: "window", arg: 2, scope: !3433, file: !175, line: 1399, type: !90)
!3439 = !DILocation(line: 1399, column: 18, scope: !3433)
!3440 = !DILocation(line: 1401, column: 2, scope: !3433)
!3441 = distinct !{!3441, !3440}
!3442 = !DILocation(line: 1401, column: 10, scope: !3443)
!3443 = !DILexicalBlockFile(scope: !3444, file: !175, discriminator: 1)
!3444 = distinct !DILexicalBlock(scope: !3445, file: !175, line: 1401, column: 10)
!3445 = distinct !DILexicalBlock(scope: !3433, file: !175, line: 1401, column: 4)
!3446 = !DILocation(line: 1401, column: 15, scope: !3443)
!3447 = !DILocation(line: 1401, column: 5, scope: !3448)
!3448 = !DILexicalBlockFile(scope: !3449, file: !175, discriminator: 2)
!3449 = distinct !DILexicalBlock(scope: !3444, file: !175, line: 1401, column: 3)
!3450 = !DILocation(line: 1401, column: 14, scope: !3451)
!3451 = !DILexicalBlockFile(scope: !3452, file: !175, discriminator: 3)
!3452 = distinct !DILexicalBlock(scope: !3444, file: !175, line: 1401, column: 12)
!3453 = !DILocation(line: 1401, column: 103, scope: !3451)
!3454 = !DILocation(line: 1401, column: 114, scope: !3455)
!3455 = !DILexicalBlockFile(scope: !3445, file: !175, discriminator: 4)
!3456 = !DILocation(line: 1403, column: 6, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3433, file: !175, line: 1403, column: 6)
!3458 = !DILocation(line: 1403, column: 12, scope: !3457)
!3459 = !DILocation(line: 1403, column: 22, scope: !3457)
!3460 = !DILocation(line: 1403, column: 19, scope: !3457)
!3461 = !DILocation(line: 1403, column: 6, scope: !3433)
!3462 = !DILocation(line: 1404, column: 18, scope: !3463)
!3463 = distinct !DILexicalBlock(scope: !3457, file: !175, line: 1403, column: 30)
!3464 = !DILocation(line: 1404, column: 3, scope: !3463)
!3465 = !DILocation(line: 1404, column: 9, scope: !3463)
!3466 = !DILocation(line: 1404, column: 16, scope: !3463)
!3467 = !DILocation(line: 1405, column: 21, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3463, file: !175, line: 1405, column: 21)
!3469 = !DILocation(line: 1405, column: 28, scope: !3468)
!3470 = !DILocation(line: 1405, column: 21, scope: !3463)
!3471 = !DILocation(line: 1406, column: 4, scope: !3468)
!3472 = !DILocation(line: 1406, column: 10, scope: !3468)
!3473 = !DILocation(line: 1406, column: 16, scope: !3468)
!3474 = !DILocation(line: 1407, column: 2, scope: !3463)
!3475 = !DILocation(line: 1408, column: 1, scope: !3433)
!3476 = distinct !DISubprogram(name: "view_draw", scope: !175, file: !175, line: 739, type: !3477, isLocal: true, isDefinition: true, scopeLine: 741, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !183)
!3477 = !DISubroutineType(types: !3478)
!3478 = !{null, !29, !48, !63, !63, !63, !63}
!3479 = !DILocalVariable(name: "view", arg: 1, scope: !3476, file: !175, line: 739, type: !29)
!3480 = !DILocation(line: 739, column: 45, scope: !3476)
!3481 = !DILocalVariable(name: "line", arg: 2, scope: !3476, file: !175, line: 739, type: !48)
!3482 = !DILocation(line: 739, column: 61, scope: !3476)
!3483 = !DILocalVariable(name: "subline", arg: 3, scope: !3476, file: !175, line: 740, type: !63)
!3484 = !DILocation(line: 740, column: 13, scope: !3476)
!3485 = !DILocalVariable(name: "ypos", arg: 4, scope: !3476, file: !175, line: 740, type: !63)
!3486 = !DILocation(line: 740, column: 26, scope: !3476)
!3487 = !DILocalVariable(name: "lines", arg: 5, scope: !3476, file: !175, line: 740, type: !63)
!3488 = !DILocation(line: 740, column: 36, scope: !3476)
!3489 = !DILocalVariable(name: "fill_bottom", arg: 6, scope: !3476, file: !175, line: 740, type: !63)
!3490 = !DILocation(line: 740, column: 47, scope: !3476)
!3491 = !DILocalVariable(name: "linecount", scope: !3476, file: !175, line: 742, type: !63)
!3492 = !DILocation(line: 742, column: 6, scope: !3476)
!3493 = !DILocation(line: 744, column: 6, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3476, file: !175, line: 744, column: 6)
!3495 = !DILocation(line: 744, column: 12, scope: !3494)
!3496 = !DILocation(line: 744, column: 6, scope: !3476)
!3497 = !DILocation(line: 745, column: 17, scope: !3494)
!3498 = !DILocation(line: 747, column: 2, scope: !3476)
!3499 = !DILocation(line: 747, column: 9, scope: !3500)
!3500 = !DILexicalBlockFile(scope: !3476, file: !175, discriminator: 1)
!3501 = !DILocation(line: 747, column: 14, scope: !3500)
!3502 = !DILocation(line: 747, column: 21, scope: !3500)
!3503 = !DILocation(line: 747, column: 24, scope: !3504)
!3504 = !DILexicalBlockFile(scope: !3476, file: !175, discriminator: 2)
!3505 = !DILocation(line: 747, column: 30, scope: !3504)
!3506 = !DILocation(line: 747, column: 2, scope: !3507)
!3507 = !DILexicalBlockFile(scope: !3476, file: !175, discriminator: 3)
!3508 = !DILocation(line: 748, column: 11, scope: !3509)
!3509 = distinct !DILexicalBlock(scope: !3510, file: !175, line: 748, column: 7)
!3510 = distinct !DILexicalBlock(scope: !3476, file: !175, line: 747, column: 35)
!3511 = !DILocation(line: 748, column: 18, scope: !3509)
!3512 = !DILocation(line: 748, column: 23, scope: !3509)
!3513 = !DILocation(line: 748, column: 32, scope: !3509)
!3514 = !DILocation(line: 748, column: 39, scope: !3509)
!3515 = !DILocation(line: 748, column: 29, scope: !3509)
!3516 = !DILocation(line: 748, column: 53, scope: !3509)
!3517 = !DILocation(line: 748, column: 7, scope: !3510)
!3518 = !DILocation(line: 749, column: 31, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3509, file: !175, line: 748, column: 60)
!3520 = !DILocation(line: 749, column: 37, scope: !3519)
!3521 = !DILocation(line: 749, column: 43, scope: !3519)
!3522 = !DILocation(line: 749, column: 52, scope: !3519)
!3523 = !DILocation(line: 749, column: 58, scope: !3519)
!3524 = !DILocation(line: 749, column: 16, scope: !3519)
!3525 = !DILocation(line: 749, column: 14, scope: !3519)
!3526 = !DILocation(line: 750, column: 12, scope: !3519)
!3527 = !DILocation(line: 750, column: 9, scope: !3519)
!3528 = !DILocation(line: 750, column: 32, scope: !3519)
!3529 = !DILocation(line: 750, column: 29, scope: !3519)
!3530 = !DILocation(line: 751, column: 3, scope: !3519)
!3531 = !DILocation(line: 753, column: 11, scope: !3510)
!3532 = !DILocation(line: 754, column: 24, scope: !3510)
!3533 = !DILocation(line: 754, column: 30, scope: !3510)
!3534 = !DILocation(line: 754, column: 22, scope: !3510)
!3535 = !DILocation(line: 747, column: 2, scope: !3536)
!3536 = !DILexicalBlockFile(scope: !3476, file: !175, discriminator: 4)
!3537 = distinct !{!3537, !3498}
!3538 = !DILocation(line: 757, column: 6, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !3476, file: !175, line: 757, column: 6)
!3540 = !DILocation(line: 757, column: 6, scope: !3476)
!3541 = !DILocation(line: 759, column: 18, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !3539, file: !175, line: 757, column: 19)
!3543 = !DILocation(line: 759, column: 24, scope: !3542)
!3544 = !DILocation(line: 759, column: 3, scope: !3542)
!3545 = !DILocation(line: 760, column: 3, scope: !3542)
!3546 = !DILocation(line: 760, column: 10, scope: !3547)
!3547 = !DILexicalBlockFile(scope: !3542, file: !175, discriminator: 1)
!3548 = !DILocation(line: 760, column: 16, scope: !3547)
!3549 = !DILocation(line: 760, column: 3, scope: !3547)
!3550 = !DILocation(line: 761, column: 14, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3542, file: !175, line: 760, column: 21)
!3552 = !DILocation(line: 761, column: 20, scope: !3551)
!3553 = !DILocation(line: 761, column: 31, scope: !3551)
!3554 = !DILocation(line: 761, column: 4, scope: !3551)
!3555 = !DILocation(line: 762, column: 25, scope: !3551)
!3556 = !DILocation(line: 762, column: 31, scope: !3551)
!3557 = !DILocation(line: 762, column: 39, scope: !3551)
!3558 = !DILocation(line: 762, column: 4, scope: !3551)
!3559 = !DILocation(line: 763, column: 8, scope: !3551)
!3560 = !DILocation(line: 763, column: 17, scope: !3551)
!3561 = !DILocation(line: 760, column: 3, scope: !3562)
!3562 = !DILexicalBlockFile(scope: !3542, file: !175, discriminator: 2)
!3563 = distinct !{!3563, !3545}
!3564 = !DILocation(line: 765, column: 2, scope: !3542)
!3565 = !DILocation(line: 766, column: 1, scope: !3476)
!3566 = distinct !DISubprogram(name: "textbuffer_view_init", scope: !175, file: !175, line: 1454, type: !3567, isLocal: false, isDefinition: true, scopeLine: 1455, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !183)
!3567 = !DISubroutineType(types: !3568)
!3568 = !{null}
!3569 = !DILocation(line: 1456, column: 18, scope: !3566)
!3570 = !DILocation(line: 1456, column: 16, scope: !3566)
!3571 = !DILocation(line: 1457, column: 1, scope: !3566)
!3572 = distinct !DISubprogram(name: "sig_check_linecache", scope: !175, file: !175, line: 1432, type: !3573, isLocal: true, isDefinition: true, scopeLine: 1433, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !183)
!3573 = !DISubroutineType(types: !3574)
!3574 = !{!63}
!3575 = !DILocalVariable(name: "tmp", scope: !3572, file: !175, line: 1434, type: !40)
!3576 = !DILocation(line: 1434, column: 10, scope: !3572)
!3577 = !DILocalVariable(name: "caches", scope: !3572, file: !175, line: 1434, type: !40)
!3578 = !DILocation(line: 1434, column: 16, scope: !3572)
!3579 = !DILocalVariable(name: "now", scope: !3572, file: !175, line: 1435, type: !65)
!3580 = !DILocation(line: 1435, column: 16, scope: !3572)
!3581 = !DILocation(line: 1437, column: 15, scope: !3572)
!3582 = !DILocation(line: 1437, column: 13, scope: !3572)
!3583 = !DILocation(line: 1437, column: 33, scope: !3572)
!3584 = !DILocation(line: 1438, column: 13, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3572, file: !175, line: 1438, column: 2)
!3586 = !DILocation(line: 1438, column: 11, scope: !3585)
!3587 = !DILocation(line: 1438, column: 7, scope: !3585)
!3588 = !DILocation(line: 1438, column: 20, scope: !3589)
!3589 = !DILexicalBlockFile(scope: !3590, file: !175, discriminator: 1)
!3590 = distinct !DILexicalBlock(scope: !3585, file: !175, line: 1438, column: 2)
!3591 = !DILocation(line: 1438, column: 24, scope: !3589)
!3592 = !DILocation(line: 1438, column: 2, scope: !3589)
!3593 = !DILocalVariable(name: "rec", scope: !3594, file: !175, line: 1439, type: !29)
!3594 = distinct !DILexicalBlock(scope: !3590, file: !175, line: 1438, column: 49)
!3595 = !DILocation(line: 1439, column: 25, scope: !3594)
!3596 = !DILocation(line: 1439, column: 31, scope: !3594)
!3597 = !DILocation(line: 1439, column: 36, scope: !3594)
!3598 = !DILocation(line: 1441, column: 20, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3594, file: !175, line: 1441, column: 7)
!3600 = !DILocation(line: 1441, column: 28, scope: !3599)
!3601 = !DILocation(line: 1441, column: 33, scope: !3599)
!3602 = !DILocation(line: 1441, column: 7, scope: !3599)
!3603 = !DILocation(line: 1441, column: 40, scope: !3599)
!3604 = !DILocation(line: 1441, column: 7, scope: !3594)
!3605 = !DILocation(line: 1442, column: 4, scope: !3599)
!3606 = !DILocation(line: 1444, column: 27, scope: !3594)
!3607 = !DILocation(line: 1444, column: 35, scope: !3594)
!3608 = !DILocation(line: 1444, column: 40, scope: !3594)
!3609 = !DILocation(line: 1444, column: 12, scope: !3594)
!3610 = !DILocation(line: 1444, column: 10, scope: !3594)
!3611 = !DILocation(line: 1445, column: 31, scope: !3594)
!3612 = !DILocation(line: 1445, column: 36, scope: !3594)
!3613 = !DILocation(line: 1445, column: 43, scope: !3594)
!3614 = !DILocation(line: 1447, column: 10, scope: !3594)
!3615 = !DILocation(line: 1445, column: 3, scope: !3594)
!3616 = !DILocation(line: 1448, column: 2, scope: !3594)
!3617 = !DILocation(line: 1438, column: 38, scope: !3618)
!3618 = !DILexicalBlockFile(scope: !3590, file: !175, discriminator: 2)
!3619 = !DILocation(line: 1438, column: 43, scope: !3618)
!3620 = !DILocation(line: 1438, column: 36, scope: !3618)
!3621 = !DILocation(line: 1438, column: 2, scope: !3618)
!3622 = distinct !{!3622, !3623}
!3623 = !DILocation(line: 1438, column: 2, scope: !3572)
!3624 = !DILocation(line: 1450, column: 22, scope: !3572)
!3625 = !DILocation(line: 1450, column: 9, scope: !3572)
!3626 = !DILocation(line: 1451, column: 2, scope: !3572)
!3627 = distinct !DISubprogram(name: "textbuffer_view_deinit", scope: !175, file: !175, line: 1459, type: !3567, isLocal: false, isDefinition: true, scopeLine: 1460, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !183)
!3628 = !DILocation(line: 1461, column: 18, scope: !3627)
!3629 = !DILocation(line: 1461, column: 2, scope: !3627)
!3630 = !DILocation(line: 1462, column: 1, scope: !3627)
!3631 = distinct !DISubprogram(name: "textbuffer_cache_destroy", scope: !175, file: !175, line: 100, type: !236, isLocal: true, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !183)
!3632 = !DILocalVariable(name: "cache", arg: 1, scope: !3631, file: !175, line: 100, type: !103)
!3633 = !DILocation(line: 100, column: 61, scope: !3631)
!3634 = !DILocation(line: 102, column: 23, scope: !3631)
!3635 = !DILocation(line: 102, column: 30, scope: !3631)
!3636 = !DILocation(line: 102, column: 2, scope: !3631)
!3637 = !DILocation(line: 104, column: 23, scope: !3631)
!3638 = !DILocation(line: 104, column: 30, scope: !3631)
!3639 = !DILocation(line: 104, column: 2, scope: !3631)
!3640 = !DILocation(line: 105, column: 16, scope: !3631)
!3641 = !DILocation(line: 105, column: 9, scope: !3631)
!3642 = !DILocation(line: 106, column: 1, scope: !3631)
!3643 = distinct !DISubprogram(name: "line_cache_destroy", scope: !175, file: !175, line: 94, type: !3644, isLocal: true, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !183)
!3644 = !DISubroutineType(types: !3645)
!3645 = !{!63, !25, !1150}
!3646 = !DILocalVariable(name: "key", arg: 1, scope: !3643, file: !175, line: 94, type: !25)
!3647 = !DILocation(line: 94, column: 37, scope: !3643)
!3648 = !DILocalVariable(name: "cache", arg: 2, scope: !3643, file: !175, line: 94, type: !1150)
!3649 = !DILocation(line: 94, column: 58, scope: !3643)
!3650 = !DILocation(line: 96, column: 9, scope: !3643)
!3651 = !DILocation(line: 96, column: 2, scope: !3643)
!3652 = !DILocation(line: 97, column: 2, scope: !3643)
!3653 = distinct !DISubprogram(name: "view_draw_bottom", scope: !175, file: !175, line: 772, type: !847, isLocal: true, isDefinition: true, scopeLine: 773, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !183)
!3654 = !DILocalVariable(name: "view", arg: 1, scope: !3653, file: !175, line: 772, type: !29)
!3655 = !DILocation(line: 772, column: 52, scope: !3653)
!3656 = !DILocalVariable(name: "lines", arg: 2, scope: !3653, file: !175, line: 772, type: !63)
!3657 = !DILocation(line: 772, column: 62, scope: !3653)
!3658 = !DILocalVariable(name: "line", scope: !3653, file: !175, line: 774, type: !48)
!3659 = !DILocation(line: 774, column: 12, scope: !3653)
!3660 = !DILocalVariable(name: "ypos", scope: !3653, file: !175, line: 775, type: !63)
!3661 = !DILocation(line: 775, column: 6, scope: !3653)
!3662 = !DILocalVariable(name: "maxline", scope: !3653, file: !175, line: 775, type: !63)
!3663 = !DILocation(line: 775, column: 12, scope: !3653)
!3664 = !DILocalVariable(name: "subline", scope: !3653, file: !175, line: 775, type: !63)
!3665 = !DILocation(line: 775, column: 21, scope: !3653)
!3666 = !DILocalVariable(name: "linecount", scope: !3653, file: !175, line: 775, type: !63)
!3667 = !DILocation(line: 775, column: 30, scope: !3653)
!3668 = !DILocation(line: 777, column: 12, scope: !3653)
!3669 = !DILocation(line: 777, column: 18, scope: !3653)
!3670 = !DILocation(line: 777, column: 25, scope: !3653)
!3671 = !DILocation(line: 777, column: 24, scope: !3653)
!3672 = !DILocation(line: 777, column: 10, scope: !3653)
!3673 = !DILocation(line: 778, column: 9, scope: !3653)
!3674 = !DILocation(line: 778, column: 15, scope: !3653)
!3675 = !DILocation(line: 778, column: 7, scope: !3653)
!3676 = !DILocation(line: 778, column: 34, scope: !3653)
!3677 = !DILocation(line: 778, column: 40, scope: !3653)
!3678 = !DILocation(line: 778, column: 33, scope: !3653)
!3679 = !DILocation(line: 778, column: 31, scope: !3653)
!3680 = !DILocation(line: 778, column: 57, scope: !3653)
!3681 = !DILocation(line: 779, column: 2, scope: !3653)
!3682 = !DILocation(line: 779, column: 9, scope: !3683)
!3683 = !DILexicalBlockFile(scope: !3653, file: !175, discriminator: 1)
!3684 = !DILocation(line: 779, column: 14, scope: !3683)
!3685 = !DILocation(line: 779, column: 21, scope: !3683)
!3686 = !DILocation(line: 779, column: 24, scope: !3687)
!3687 = !DILexicalBlockFile(scope: !3653, file: !175, discriminator: 2)
!3688 = !DILocation(line: 779, column: 31, scope: !3687)
!3689 = !DILocation(line: 779, column: 29, scope: !3687)
!3690 = !DILocation(line: 779, column: 2, scope: !3691)
!3691 = !DILexicalBlockFile(scope: !3653, file: !175, discriminator: 3)
!3692 = !DILocation(line: 780, column: 33, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3653, file: !175, line: 779, column: 40)
!3694 = !DILocation(line: 780, column: 40, scope: !3693)
!3695 = !DILocation(line: 780, column: 45, scope: !3693)
!3696 = !DILocation(line: 780, column: 54, scope: !3693)
!3697 = !DILocation(line: 780, column: 61, scope: !3693)
!3698 = !DILocation(line: 780, column: 51, scope: !3693)
!3699 = !DILocation(line: 780, column: 75, scope: !3693)
!3700 = !DILocation(line: 780, column: 30, scope: !3693)
!3701 = !DILocation(line: 780, column: 30, scope: !3702)
!3702 = !DILexicalBlockFile(scope: !3693, file: !175, discriminator: 1)
!3703 = !DILocation(line: 780, column: 118, scope: !3704)
!3704 = !DILexicalBlockFile(scope: !3693, file: !175, discriminator: 2)
!3705 = !DILocation(line: 780, column: 124, scope: !3704)
!3706 = !DILocation(line: 780, column: 87, scope: !3704)
!3707 = !DILocation(line: 780, column: 131, scope: !3704)
!3708 = !DILocation(line: 780, column: 30, scope: !3704)
!3709 = !DILocation(line: 780, column: 30, scope: !3710)
!3710 = !DILexicalBlockFile(scope: !3693, file: !175, discriminator: 3)
!3711 = !DILocation(line: 780, column: 27, scope: !3710)
!3712 = !DILocation(line: 781, column: 11, scope: !3693)
!3713 = !DILocation(line: 781, column: 8, scope: !3693)
!3714 = !DILocation(line: 782, column: 7, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !3693, file: !175, line: 782, column: 7)
!3716 = !DILocation(line: 782, column: 14, scope: !3715)
!3717 = !DILocation(line: 782, column: 12, scope: !3715)
!3718 = !DILocation(line: 782, column: 7, scope: !3693)
!3719 = !DILocation(line: 783, column: 14, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !3715, file: !175, line: 782, column: 23)
!3721 = !DILocation(line: 783, column: 23, scope: !3720)
!3722 = !DILocation(line: 783, column: 28, scope: !3720)
!3723 = !DILocation(line: 783, column: 27, scope: !3720)
!3724 = !DILocation(line: 783, column: 21, scope: !3720)
!3725 = !DILocation(line: 783, column: 12, scope: !3720)
!3726 = !DILocation(line: 784, column: 4, scope: !3720)
!3727 = !DILocation(line: 786, column: 24, scope: !3693)
!3728 = !DILocation(line: 786, column: 30, scope: !3693)
!3729 = !DILocation(line: 786, column: 22, scope: !3693)
!3730 = !DILocation(line: 779, column: 2, scope: !3731)
!3731 = !DILexicalBlockFile(scope: !3653, file: !175, discriminator: 4)
!3732 = distinct !{!3732, !3681}
!3733 = !DILocation(line: 789, column: 19, scope: !3653)
!3734 = !DILocation(line: 789, column: 25, scope: !3653)
!3735 = !DILocation(line: 789, column: 31, scope: !3653)
!3736 = !DILocation(line: 789, column: 40, scope: !3653)
!3737 = !DILocation(line: 789, column: 49, scope: !3653)
!3738 = !DILocation(line: 789, column: 9, scope: !3653)
!3739 = !DILocation(line: 790, column: 1, scope: !3653)
!3740 = distinct !DISubprogram(name: "update_cmd_color", scope: !175, file: !175, line: 117, type: !3741, isLocal: true, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !183)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{null, !57, !1217}
!3743 = !DILocalVariable(name: "cmd", arg: 1, scope: !3740, file: !175, line: 117, type: !57)
!3744 = !DILocation(line: 117, column: 44, scope: !3740)
!3745 = !DILocalVariable(name: "color", arg: 2, scope: !3740, file: !175, line: 117, type: !1217)
!3746 = !DILocation(line: 117, column: 54, scope: !3740)
!3747 = !DILocation(line: 119, column: 7, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3740, file: !175, line: 119, column: 6)
!3749 = !DILocation(line: 119, column: 11, scope: !3748)
!3750 = !DILocation(line: 119, column: 19, scope: !3748)
!3751 = !DILocation(line: 119, column: 6, scope: !3740)
!3752 = !DILocation(line: 120, column: 7, scope: !3753)
!3753 = distinct !DILexicalBlock(scope: !3754, file: !175, line: 120, column: 7)
!3754 = distinct !DILexicalBlock(scope: !3748, file: !175, line: 119, column: 25)
!3755 = !DILocation(line: 120, column: 11, scope: !3753)
!3756 = !DILocation(line: 120, column: 7, scope: !3754)
!3757 = !DILocation(line: 122, column: 5, scope: !3758)
!3758 = distinct !DILexicalBlock(scope: !3753, file: !175, line: 120, column: 19)
!3759 = !DILocation(line: 122, column: 11, scope: !3758)
!3760 = !DILocation(line: 123, column: 9, scope: !3761)
!3761 = distinct !DILexicalBlock(scope: !3758, file: !175, line: 123, column: 8)
!3762 = !DILocation(line: 123, column: 13, scope: !3761)
!3763 = !DILocation(line: 123, column: 21, scope: !3761)
!3764 = !DILocation(line: 123, column: 8, scope: !3758)
!3765 = !DILocation(line: 124, column: 16, scope: !3761)
!3766 = !DILocation(line: 124, column: 20, scope: !3761)
!3767 = !DILocation(line: 124, column: 28, scope: !3761)
!3768 = !DILocation(line: 124, column: 6, scope: !3761)
!3769 = !DILocation(line: 124, column: 12, scope: !3761)
!3770 = !DILocation(line: 124, column: 5, scope: !3761)
!3771 = !DILocation(line: 126, column: 16, scope: !3772)
!3772 = distinct !DILexicalBlock(scope: !3761, file: !175, line: 125, column: 9)
!3773 = !DILocation(line: 126, column: 15, scope: !3772)
!3774 = !DILocation(line: 126, column: 22, scope: !3772)
!3775 = !DILocation(line: 126, column: 138, scope: !3772)
!3776 = !DILocation(line: 126, column: 6, scope: !3772)
!3777 = !DILocation(line: 126, column: 12, scope: !3772)
!3778 = !DILocation(line: 128, column: 3, scope: !3758)
!3779 = !DILocation(line: 130, column: 5, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3753, file: !175, line: 128, column: 10)
!3781 = !DILocation(line: 130, column: 11, scope: !3780)
!3782 = !DILocation(line: 131, column: 9, scope: !3783)
!3783 = distinct !DILexicalBlock(scope: !3780, file: !175, line: 131, column: 8)
!3784 = !DILocation(line: 131, column: 13, scope: !3783)
!3785 = !DILocation(line: 131, column: 21, scope: !3783)
!3786 = !DILocation(line: 131, column: 8, scope: !3780)
!3787 = !DILocation(line: 132, column: 15, scope: !3783)
!3788 = !DILocation(line: 132, column: 19, scope: !3783)
!3789 = !DILocation(line: 132, column: 6, scope: !3783)
!3790 = !DILocation(line: 132, column: 12, scope: !3783)
!3791 = !DILocation(line: 132, column: 5, scope: !3783)
!3792 = !DILocation(line: 134, column: 16, scope: !3793)
!3793 = distinct !DILexicalBlock(scope: !3783, file: !175, line: 133, column: 9)
!3794 = !DILocation(line: 134, column: 15, scope: !3793)
!3795 = !DILocation(line: 134, column: 22, scope: !3793)
!3796 = !DILocation(line: 134, column: 138, scope: !3793)
!3797 = !DILocation(line: 134, column: 6, scope: !3793)
!3798 = !DILocation(line: 134, column: 12, scope: !3793)
!3799 = !DILocation(line: 137, column: 2, scope: !3754)
!3800 = !DILocation(line: 137, column: 17, scope: !3801)
!3801 = !DILexicalBlockFile(scope: !3748, file: !175, discriminator: 1)
!3802 = !DILocation(line: 137, column: 9, scope: !3801)
!3803 = !DILocation(line: 139, column: 4, scope: !3804)
!3804 = distinct !DILexicalBlock(scope: !3748, file: !175, line: 137, column: 22)
!3805 = !DILocation(line: 139, column: 10, scope: !3804)
!3806 = !DILocation(line: 140, column: 3, scope: !3804)
!3807 = !DILocation(line: 142, column: 4, scope: !3804)
!3808 = !DILocation(line: 142, column: 10, scope: !3804)
!3809 = !DILocation(line: 143, column: 3, scope: !3804)
!3810 = !DILocation(line: 145, column: 4, scope: !3804)
!3811 = !DILocation(line: 145, column: 10, scope: !3804)
!3812 = !DILocation(line: 146, column: 3, scope: !3804)
!3813 = !DILocation(line: 148, column: 4, scope: !3804)
!3814 = !DILocation(line: 148, column: 10, scope: !3804)
!3815 = !DILocation(line: 149, column: 3, scope: !3804)
!3816 = !DILocation(line: 151, column: 4, scope: !3804)
!3817 = !DILocation(line: 151, column: 10, scope: !3804)
!3818 = !DILocation(line: 152, column: 3, scope: !3804)
!3819 = !DILocation(line: 155, column: 3, scope: !3804)
!3820 = !DILocation(line: 157, column: 4, scope: !3804)
!3821 = !DILocation(line: 157, column: 10, scope: !3804)
!3822 = !DILocation(line: 158, column: 4, scope: !3804)
!3823 = !DILocation(line: 158, column: 10, scope: !3804)
!3824 = !DILocation(line: 159, column: 3, scope: !3804)
!3825 = !DILocation(line: 161, column: 1, scope: !3740)
!3826 = distinct !DISubprogram(name: "read_unichar", scope: !175, file: !175, line: 190, type: !3827, isLocal: true, isDefinition: true, scopeLine: 191, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !183)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{!3829, !163, !3833, !1217}
!3829 = !DIDerivedType(tag: DW_TAG_typedef, name: "unichar", file: !3830, line: 12, baseType: !3831)
!3830 = !DIFile(filename: "../../src/core/utf8.h", directory: "/home/lichi/Desktop/irssi/task1")
!3831 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !3832, line: 45, baseType: !87)
!3832 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64, align: 64)
!3834 = !DILocalVariable(name: "data", arg: 1, scope: !3826, file: !175, line: 190, type: !163)
!3835 = !DILocation(line: 190, column: 57, scope: !3826)
!3836 = !DILocalVariable(name: "next", arg: 2, scope: !3826, file: !175, line: 190, type: !3833)
!3837 = !DILocation(line: 190, column: 85, scope: !3826)
!3838 = !DILocalVariable(name: "width", arg: 3, scope: !3826, file: !175, line: 190, type: !1217)
!3839 = !DILocation(line: 190, column: 96, scope: !3826)
!3840 = !DILocalVariable(name: "chr", scope: !3826, file: !175, line: 192, type: !3829)
!3841 = !DILocation(line: 192, column: 10, scope: !3826)
!3842 = !DILocation(line: 192, column: 57, scope: !3826)
!3843 = !DILocation(line: 192, column: 16, scope: !3826)
!3844 = !DILocation(line: 194, column: 6, scope: !3845)
!3845 = distinct !DILexicalBlock(scope: !3826, file: !175, line: 194, column: 6)
!3846 = !DILocation(line: 194, column: 10, scope: !3845)
!3847 = !DILocation(line: 194, column: 6, scope: !3826)
!3848 = !DILocation(line: 195, column: 7, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3845, file: !175, line: 194, column: 24)
!3850 = !DILocation(line: 196, column: 11, scope: !3849)
!3851 = !DILocation(line: 196, column: 16, scope: !3849)
!3852 = !DILocation(line: 196, column: 4, scope: !3849)
!3853 = !DILocation(line: 196, column: 9, scope: !3849)
!3854 = !DILocation(line: 197, column: 4, scope: !3849)
!3855 = !DILocation(line: 197, column: 10, scope: !3849)
!3856 = !DILocation(line: 198, column: 2, scope: !3849)
!3857 = !DILocation(line: 199, column: 38, scope: !3858)
!3858 = distinct !DILexicalBlock(scope: !3845, file: !175, line: 198, column: 9)
!3859 = !DILocation(line: 199, column: 76, scope: !3858)
!3860 = !DILocation(line: 199, column: 58, scope: !3858)
!3861 = !DILocation(line: 199, column: 46, scope: !3858)
!3862 = !DILocation(line: 199, column: 44, scope: !3858)
!3863 = !DILocation(line: 199, column: 4, scope: !3858)
!3864 = !DILocation(line: 199, column: 9, scope: !3858)
!3865 = !DILocation(line: 200, column: 15, scope: !3858)
!3866 = !DILocation(line: 200, column: 20, scope: !3858)
!3867 = !DILocation(line: 200, column: 29, scope: !3858)
!3868 = !DILocation(line: 200, column: 12, scope: !3858)
!3869 = !DILocation(line: 200, column: 48, scope: !3870)
!3870 = !DILexicalBlockFile(scope: !3858, file: !175, discriminator: 1)
!3871 = !DILocation(line: 200, column: 38, scope: !3870)
!3872 = !DILocation(line: 200, column: 12, scope: !3870)
!3873 = !DILocation(line: 200, column: 12, scope: !3874)
!3874 = !DILexicalBlockFile(scope: !3858, file: !175, discriminator: 2)
!3875 = !DILocation(line: 200, column: 12, scope: !3876)
!3876 = !DILexicalBlockFile(scope: !3858, file: !175, discriminator: 3)
!3877 = !DILocation(line: 200, column: 4, scope: !3876)
!3878 = !DILocation(line: 200, column: 10, scope: !3876)
!3879 = !DILocation(line: 202, column: 9, scope: !3826)
!3880 = !DILocation(line: 202, column: 2, scope: !3826)
!3881 = distinct !DISubprogram(name: "view_line_draw", scope: !175, file: !175, line: 394, type: !3882, isLocal: true, isDefinition: true, scopeLine: 396, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !183)
!3882 = !DISubroutineType(types: !3883)
!3883 = !{!63, !29, !48, !63, !63, !63}
!3884 = !DILocalVariable(name: "view", arg: 1, scope: !3881, file: !175, line: 394, type: !29)
!3885 = !DILocation(line: 394, column: 49, scope: !3881)
!3886 = !DILocalVariable(name: "line", arg: 2, scope: !3881, file: !175, line: 394, type: !48)
!3887 = !DILocation(line: 394, column: 65, scope: !3881)
!3888 = !DILocalVariable(name: "subline", arg: 3, scope: !3881, file: !175, line: 395, type: !63)
!3889 = !DILocation(line: 395, column: 10, scope: !3881)
!3890 = !DILocalVariable(name: "ypos", arg: 4, scope: !3881, file: !175, line: 395, type: !63)
!3891 = !DILocation(line: 395, column: 23, scope: !3881)
!3892 = !DILocalVariable(name: "max", arg: 5, scope: !3881, file: !175, line: 395, type: !63)
!3893 = !DILocation(line: 395, column: 33, scope: !3881)
!3894 = !DILocalVariable(name: "indent_func", scope: !3881, file: !175, line: 397, type: !98)
!3895 = !DILocation(line: 397, column: 14, scope: !3881)
!3896 = !DILocalVariable(name: "cache", scope: !3881, file: !175, line: 398, type: !1150)
!3897 = !DILocation(line: 398, column: 18, scope: !3881)
!3898 = !DILocalVariable(name: "text", scope: !3881, file: !175, line: 399, type: !163)
!3899 = !DILocation(line: 399, column: 23, scope: !3881)
!3900 = !DILocalVariable(name: "end", scope: !3881, file: !175, line: 399, type: !163)
!3901 = !DILocation(line: 399, column: 30, scope: !3881)
!3902 = !DILocalVariable(name: "text_newline", scope: !3881, file: !175, line: 399, type: !163)
!3903 = !DILocation(line: 399, column: 36, scope: !3881)
!3904 = !DILocalVariable(name: "tmp", scope: !3881, file: !175, line: 400, type: !56)
!3905 = !DILocation(line: 400, column: 17, scope: !3881)
!3906 = !DILocalVariable(name: "chr", scope: !3881, file: !175, line: 401, type: !3829)
!3907 = !DILocation(line: 401, column: 10, scope: !3881)
!3908 = !DILocalVariable(name: "xpos", scope: !3881, file: !175, line: 402, type: !63)
!3909 = !DILocation(line: 402, column: 6, scope: !3881)
!3910 = !DILocalVariable(name: "color", scope: !3881, file: !175, line: 402, type: !63)
!3911 = !DILocation(line: 402, column: 12, scope: !3881)
!3912 = !DILocalVariable(name: "drawcount", scope: !3881, file: !175, line: 402, type: !63)
!3913 = !DILocation(line: 402, column: 19, scope: !3881)
!3914 = !DILocalVariable(name: "first", scope: !3881, file: !175, line: 402, type: !63)
!3915 = !DILocation(line: 402, column: 30, scope: !3881)
!3916 = !DILocalVariable(name: "need_move", scope: !3881, file: !175, line: 402, type: !63)
!3917 = !DILocation(line: 402, column: 37, scope: !3881)
!3918 = !DILocalVariable(name: "need_clrtoeol", scope: !3881, file: !175, line: 402, type: !63)
!3919 = !DILocation(line: 402, column: 48, scope: !3881)
!3920 = !DILocalVariable(name: "char_width", scope: !3881, file: !175, line: 402, type: !63)
!3921 = !DILocation(line: 402, column: 63, scope: !3881)
!3922 = !DILocation(line: 407, column: 6, scope: !3923)
!3923 = distinct !DILexicalBlock(scope: !3881, file: !175, line: 407, column: 6)
!3924 = !DILocation(line: 407, column: 12, scope: !3923)
!3925 = !DILocation(line: 407, column: 6, scope: !3881)
!3926 = !DILocation(line: 408, column: 3, scope: !3923)
!3927 = !DILocation(line: 410, column: 41, scope: !3881)
!3928 = !DILocation(line: 410, column: 47, scope: !3881)
!3929 = !DILocation(line: 410, column: 10, scope: !3881)
!3930 = !DILocation(line: 410, column: 8, scope: !3881)
!3931 = !DILocation(line: 411, column: 6, scope: !3932)
!3932 = distinct !DILexicalBlock(scope: !3881, file: !175, line: 411, column: 6)
!3933 = !DILocation(line: 411, column: 17, scope: !3932)
!3934 = !DILocation(line: 411, column: 24, scope: !3932)
!3935 = !DILocation(line: 411, column: 14, scope: !3932)
!3936 = !DILocation(line: 411, column: 6, scope: !3881)
!3937 = !DILocation(line: 412, column: 3, scope: !3932)
!3938 = !DILocation(line: 414, column: 8, scope: !3881)
!3939 = !DILocation(line: 415, column: 12, scope: !3881)
!3940 = !DILocation(line: 415, column: 36, scope: !3881)
!3941 = !DILocation(line: 416, column: 19, scope: !3881)
!3942 = !DILocation(line: 416, column: 7, scope: !3881)
!3943 = !DILocation(line: 416, column: 30, scope: !3881)
!3944 = !DILocation(line: 418, column: 3, scope: !3881)
!3945 = !DILocation(line: 418, column: 11, scope: !3881)
!3946 = !DILocation(line: 418, column: 18, scope: !3947)
!3947 = !DILexicalBlockFile(scope: !3881, file: !175, discriminator: 1)
!3948 = !DILocation(line: 418, column: 24, scope: !3947)
!3949 = !DILocation(line: 418, column: 3, scope: !3947)
!3950 = !DILocation(line: 418, column: 44, scope: !3951)
!3951 = !DILexicalBlockFile(scope: !3881, file: !175, discriminator: 2)
!3952 = !DILocation(line: 418, column: 51, scope: !3951)
!3953 = !DILocation(line: 418, column: 31, scope: !3951)
!3954 = !DILocation(line: 418, column: 38, scope: !3951)
!3955 = !DILocation(line: 418, column: 55, scope: !3951)
!3956 = !DILocation(line: 418, column: 3, scope: !3951)
!3957 = !DILocation(line: 418, column: 3, scope: !3958)
!3958 = !DILexicalBlockFile(scope: !3881, file: !175, discriminator: 3)
!3959 = !DILocation(line: 417, column: 22, scope: !3881)
!3960 = !DILocation(line: 417, column: 15, scope: !3881)
!3961 = !DILocation(line: 419, column: 2, scope: !3881)
!3962 = !DILocation(line: 420, column: 7, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3964, file: !175, line: 420, column: 7)
!3964 = distinct !DILexicalBlock(scope: !3965, file: !175, line: 419, column: 11)
!3965 = distinct !DILexicalBlock(scope: !3966, file: !175, line: 419, column: 2)
!3966 = distinct !DILexicalBlock(scope: !3881, file: !175, line: 419, column: 2)
!3967 = !DILocation(line: 420, column: 15, scope: !3963)
!3968 = !DILocation(line: 420, column: 12, scope: !3963)
!3969 = !DILocation(line: 420, column: 7, scope: !3964)
!3970 = !DILocation(line: 421, column: 8, scope: !3971)
!3971 = distinct !DILexicalBlock(scope: !3972, file: !175, line: 421, column: 8)
!3972 = distinct !DILexicalBlock(scope: !3963, file: !175, line: 420, column: 29)
!3973 = !DILocation(line: 421, column: 22, scope: !3971)
!3974 = !DILocation(line: 421, column: 25, scope: !3975)
!3975 = !DILexicalBlockFile(scope: !3971, file: !175, discriminator: 1)
!3976 = !DILocation(line: 421, column: 32, scope: !3975)
!3977 = !DILocation(line: 421, column: 38, scope: !3975)
!3978 = !DILocation(line: 421, column: 47, scope: !3975)
!3979 = !DILocation(line: 421, column: 53, scope: !3975)
!3980 = !DILocation(line: 421, column: 62, scope: !3975)
!3981 = !DILocation(line: 421, column: 59, scope: !3975)
!3982 = !DILocation(line: 421, column: 44, scope: !3975)
!3983 = !DILocation(line: 421, column: 30, scope: !3975)
!3984 = !DILocation(line: 421, column: 8, scope: !3975)
!3985 = !DILocation(line: 422, column: 20, scope: !3986)
!3986 = distinct !DILexicalBlock(scope: !3971, file: !175, line: 421, column: 83)
!3987 = !DILocation(line: 422, column: 26, scope: !3986)
!3988 = !DILocation(line: 422, column: 5, scope: !3986)
!3989 = !DILocation(line: 423, column: 26, scope: !3986)
!3990 = !DILocation(line: 423, column: 32, scope: !3986)
!3991 = !DILocation(line: 423, column: 40, scope: !3986)
!3992 = !DILocation(line: 423, column: 5, scope: !3986)
!3993 = !DILocation(line: 424, column: 4, scope: !3986)
!3994 = !DILocation(line: 426, column: 8, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !3972, file: !175, line: 426, column: 8)
!3996 = !DILocation(line: 426, column: 8, scope: !3972)
!3997 = !DILocation(line: 427, column: 11, scope: !3995)
!3998 = !DILocation(line: 427, column: 5, scope: !3995)
!3999 = !DILocation(line: 429, column: 9, scope: !4000)
!4000 = distinct !DILexicalBlock(scope: !3995, file: !175, line: 428, column: 9)
!4001 = !DILocation(line: 430, column: 9, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !4000, file: !175, line: 430, column: 9)
!4003 = !DILocation(line: 430, column: 15, scope: !4002)
!4004 = !DILocation(line: 430, column: 9, scope: !4000)
!4005 = !DILocation(line: 431, column: 6, scope: !4002)
!4006 = !DILocation(line: 434, column: 8, scope: !4007)
!4007 = distinct !DILexicalBlock(scope: !3972, file: !175, line: 434, column: 8)
!4008 = !DILocation(line: 434, column: 16, scope: !4007)
!4009 = !DILocation(line: 434, column: 8, scope: !3972)
!4010 = !DILocation(line: 436, column: 32, scope: !4011)
!4011 = distinct !DILexicalBlock(scope: !4007, file: !175, line: 434, column: 21)
!4012 = !DILocation(line: 436, column: 39, scope: !4011)
!4013 = !DILocation(line: 436, column: 19, scope: !4011)
!4014 = !DILocation(line: 436, column: 26, scope: !4011)
!4015 = !DILocation(line: 436, column: 43, scope: !4011)
!4016 = !DILocation(line: 436, column: 17, scope: !4011)
!4017 = !DILocation(line: 437, column: 9, scope: !4018)
!4018 = distinct !DILexicalBlock(scope: !4011, file: !175, line: 437, column: 9)
!4019 = !DILocation(line: 437, column: 21, scope: !4018)
!4020 = !DILocation(line: 437, column: 9, scope: !4011)
!4021 = !DILocation(line: 438, column: 26, scope: !4018)
!4022 = !DILocation(line: 438, column: 33, scope: !4018)
!4023 = !DILocation(line: 438, column: 13, scope: !4018)
!4024 = !DILocation(line: 438, column: 20, scope: !4018)
!4025 = !DILocation(line: 438, column: 37, scope: !4018)
!4026 = !DILocation(line: 438, column: 11, scope: !4018)
!4027 = !DILocation(line: 438, column: 6, scope: !4018)
!4028 = !DILocation(line: 439, column: 26, scope: !4011)
!4029 = !DILocation(line: 439, column: 33, scope: !4011)
!4030 = !DILocation(line: 439, column: 13, scope: !4011)
!4031 = !DILocation(line: 439, column: 20, scope: !4011)
!4032 = !DILocation(line: 439, column: 37, scope: !4011)
!4033 = !DILocation(line: 439, column: 11, scope: !4011)
!4034 = !DILocation(line: 444, column: 4, scope: !4011)
!4035 = !DILocation(line: 445, column: 17, scope: !4036)
!4036 = distinct !DILexicalBlock(scope: !4007, file: !175, line: 444, column: 11)
!4037 = !DILocation(line: 448, column: 8, scope: !4038)
!4038 = distinct !DILexicalBlock(scope: !3972, file: !175, line: 448, column: 8)
!4039 = !DILocation(line: 448, column: 13, scope: !4038)
!4040 = !DILocation(line: 448, column: 18, scope: !4038)
!4041 = !DILocation(line: 448, column: 21, scope: !4042)
!4042 = !DILexicalBlockFile(scope: !4038, file: !175, discriminator: 1)
!4043 = !DILocation(line: 448, column: 33, scope: !4042)
!4044 = !DILocation(line: 448, column: 8, scope: !4042)
!4045 = !DILocation(line: 449, column: 19, scope: !4038)
!4046 = !DILocation(line: 449, column: 5, scope: !4038)
!4047 = !DILocation(line: 453, column: 20, scope: !4048)
!4048 = distinct !DILexicalBlock(scope: !4038, file: !175, line: 450, column: 9)
!4049 = !DILocation(line: 453, column: 26, scope: !4048)
!4050 = !DILocation(line: 453, column: 5, scope: !4048)
!4051 = !DILocation(line: 454, column: 15, scope: !4048)
!4052 = !DILocation(line: 454, column: 21, scope: !4048)
!4053 = !DILocation(line: 454, column: 32, scope: !4048)
!4054 = !DILocation(line: 454, column: 5, scope: !4048)
!4055 = !DILocation(line: 455, column: 26, scope: !4048)
!4056 = !DILocation(line: 455, column: 32, scope: !4048)
!4057 = !DILocation(line: 455, column: 40, scope: !4048)
!4058 = !DILocation(line: 455, column: 5, scope: !4048)
!4059 = !DILocation(line: 457, column: 9, scope: !4060)
!4060 = distinct !DILexicalBlock(scope: !4048, file: !175, line: 457, column: 9)
!4061 = !DILocation(line: 457, column: 21, scope: !4060)
!4062 = !DILocation(line: 457, column: 9, scope: !4048)
!4063 = !DILocation(line: 458, column: 13, scope: !4060)
!4064 = !DILocation(line: 458, column: 25, scope: !4060)
!4065 = !DILocation(line: 458, column: 31, scope: !4060)
!4066 = !DILocation(line: 458, column: 37, scope: !4060)
!4067 = !DILocation(line: 458, column: 11, scope: !4060)
!4068 = !DILocation(line: 458, column: 6, scope: !4060)
!4069 = !DILocation(line: 461, column: 8, scope: !4070)
!4070 = distinct !DILexicalBlock(scope: !3972, file: !175, line: 461, column: 8)
!4071 = !DILocation(line: 461, column: 18, scope: !4070)
!4072 = !DILocation(line: 461, column: 21, scope: !4073)
!4073 = !DILexicalBlockFile(scope: !4070, file: !175, discriminator: 1)
!4074 = !DILocation(line: 461, column: 26, scope: !4073)
!4075 = !DILocation(line: 461, column: 8, scope: !4073)
!4076 = !DILocation(line: 462, column: 15, scope: !4070)
!4077 = !DILocation(line: 462, column: 21, scope: !4070)
!4078 = !DILocation(line: 462, column: 29, scope: !4070)
!4079 = !DILocation(line: 462, column: 35, scope: !4070)
!4080 = !DILocation(line: 462, column: 5, scope: !4070)
!4081 = !DILocation(line: 464, column: 19, scope: !3972)
!4082 = !DILocation(line: 464, column: 25, scope: !3972)
!4083 = !DILocation(line: 464, column: 33, scope: !3972)
!4084 = !DILocation(line: 464, column: 4, scope: !3972)
!4085 = !DILocation(line: 466, column: 8, scope: !4086)
!4086 = distinct !DILexicalBlock(scope: !3972, file: !175, line: 466, column: 8)
!4087 = !DILocation(line: 466, column: 19, scope: !4086)
!4088 = !DILocation(line: 466, column: 26, scope: !4086)
!4089 = !DILocation(line: 466, column: 31, scope: !4086)
!4090 = !DILocation(line: 466, column: 16, scope: !4086)
!4091 = !DILocation(line: 466, column: 8, scope: !3972)
!4092 = !DILocation(line: 467, column: 18, scope: !4093)
!4093 = distinct !DILexicalBlock(scope: !4086, file: !175, line: 466, column: 35)
!4094 = !DILocation(line: 468, column: 15, scope: !4093)
!4095 = !DILocation(line: 469, column: 4, scope: !4093)
!4096 = !DILocation(line: 471, column: 33, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !4086, file: !175, line: 469, column: 11)
!4098 = !DILocation(line: 471, column: 20, scope: !4097)
!4099 = !DILocation(line: 471, column: 27, scope: !4097)
!4100 = !DILocation(line: 471, column: 42, scope: !4097)
!4101 = !DILocation(line: 471, column: 18, scope: !4097)
!4102 = !DILocation(line: 472, column: 9, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !4097, file: !175, line: 472, column: 9)
!4104 = !DILocation(line: 472, column: 15, scope: !4103)
!4105 = !DILocation(line: 472, column: 24, scope: !4103)
!4106 = !DILocation(line: 472, column: 21, scope: !4103)
!4107 = !DILocation(line: 472, column: 9, scope: !4097)
!4108 = !DILocation(line: 474, column: 32, scope: !4109)
!4109 = distinct !DILexicalBlock(scope: !4103, file: !175, line: 472, column: 36)
!4110 = !DILocation(line: 474, column: 19, scope: !4109)
!4111 = !DILocation(line: 474, column: 26, scope: !4109)
!4112 = !DILocation(line: 474, column: 41, scope: !4109)
!4113 = !DILocation(line: 474, column: 18, scope: !4109)
!4114 = !DILocation(line: 474, column: 16, scope: !4109)
!4115 = !DILocation(line: 475, column: 5, scope: !4109)
!4116 = !DILocation(line: 479, column: 16, scope: !4117)
!4117 = distinct !DILexicalBlock(scope: !4103, file: !175, line: 475, column: 12)
!4118 = !DILocation(line: 482, column: 13, scope: !3972)
!4119 = !DILocation(line: 483, column: 11, scope: !3972)
!4120 = !DILocation(line: 484, column: 3, scope: !3972)
!4121 = !DILocation(line: 486, column: 8, scope: !4122)
!4122 = distinct !DILexicalBlock(scope: !3964, file: !175, line: 486, column: 7)
!4123 = !DILocation(line: 486, column: 7, scope: !4122)
!4124 = !DILocation(line: 486, column: 13, scope: !4122)
!4125 = !DILocation(line: 486, column: 7, scope: !3964)
!4126 = !DILocation(line: 488, column: 8, scope: !4127)
!4127 = distinct !DILexicalBlock(scope: !4122, file: !175, line: 486, column: 22)
!4128 = !DILocation(line: 489, column: 9, scope: !4129)
!4129 = distinct !DILexicalBlock(scope: !4127, file: !175, line: 489, column: 8)
!4130 = !DILocation(line: 489, column: 8, scope: !4129)
!4131 = !DILocation(line: 489, column: 14, scope: !4129)
!4132 = !DILocation(line: 489, column: 8, scope: !4127)
!4133 = !DILocation(line: 490, column: 5, scope: !4129)
!4134 = !DILocation(line: 492, column: 9, scope: !4135)
!4135 = distinct !DILexicalBlock(scope: !4127, file: !175, line: 492, column: 8)
!4136 = !DILocation(line: 492, column: 8, scope: !4135)
!4137 = !DILocation(line: 492, column: 14, scope: !4135)
!4138 = !DILocation(line: 492, column: 8, scope: !4127)
!4139 = !DILocation(line: 494, column: 5, scope: !4140)
!4140 = distinct !DILexicalBlock(scope: !4135, file: !175, line: 492, column: 36)
!4141 = !DILocation(line: 494, column: 18, scope: !4140)
!4142 = !DILocation(line: 494, column: 22, scope: !4140)
!4143 = !DILocation(line: 495, column: 12, scope: !4140)
!4144 = !DILocation(line: 495, column: 10, scope: !4140)
!4145 = !DILocation(line: 496, column: 5, scope: !4140)
!4146 = distinct !{!4146, !3961}
!4147 = !DILocation(line: 498, column: 10, scope: !4148)
!4148 = distinct !DILexicalBlock(scope: !4149, file: !175, line: 498, column: 9)
!4149 = distinct !DILexicalBlock(scope: !4135, file: !175, line: 497, column: 11)
!4150 = !DILocation(line: 498, column: 9, scope: !4148)
!4151 = !DILocation(line: 498, column: 15, scope: !4148)
!4152 = !DILocation(line: 498, column: 9, scope: !4149)
!4153 = !DILocation(line: 499, column: 15, scope: !4148)
!4154 = !DILocation(line: 499, column: 21, scope: !4148)
!4155 = !DILocation(line: 499, column: 136, scope: !4148)
!4156 = !DILocation(line: 499, column: 157, scope: !4148)
!4157 = !DILocation(line: 499, column: 156, scope: !4148)
!4158 = !DILocation(line: 499, column: 154, scope: !4148)
!4159 = !DILocation(line: 499, column: 12, scope: !4148)
!4160 = !DILocation(line: 499, column: 6, scope: !4148)
!4161 = !DILocation(line: 500, column: 15, scope: !4162)
!4162 = distinct !DILexicalBlock(scope: !4148, file: !175, line: 500, column: 14)
!4163 = !DILocation(line: 500, column: 14, scope: !4162)
!4164 = !DILocation(line: 500, column: 20, scope: !4162)
!4165 = !DILocation(line: 500, column: 14, scope: !4148)
!4166 = !DILocation(line: 501, column: 15, scope: !4162)
!4167 = !DILocation(line: 501, column: 21, scope: !4162)
!4168 = !DILocation(line: 501, column: 136, scope: !4162)
!4169 = !DILocation(line: 501, column: 158, scope: !4162)
!4170 = !DILocation(line: 501, column: 157, scope: !4162)
!4171 = !DILocation(line: 501, column: 165, scope: !4162)
!4172 = !DILocation(line: 501, column: 154, scope: !4162)
!4173 = !DILocation(line: 501, column: 12, scope: !4162)
!4174 = !DILocation(line: 501, column: 6, scope: !4162)
!4175 = !DILocation(line: 507, column: 24, scope: !4162)
!4176 = !DILocation(line: 507, column: 23, scope: !4162)
!4177 = !DILocation(line: 507, column: 6, scope: !4162)
!4178 = !DILocation(line: 508, column: 20, scope: !4149)
!4179 = !DILocation(line: 508, column: 26, scope: !4149)
!4180 = !DILocation(line: 508, column: 34, scope: !4149)
!4181 = !DILocation(line: 508, column: 5, scope: !4149)
!4182 = !DILocation(line: 510, column: 8, scope: !4127)
!4183 = !DILocation(line: 511, column: 4, scope: !4127)
!4184 = !DILocation(line: 514, column: 7, scope: !4185)
!4185 = distinct !DILexicalBlock(scope: !3964, file: !175, line: 514, column: 7)
!4186 = !DILocation(line: 514, column: 13, scope: !4185)
!4187 = !DILocation(line: 514, column: 7, scope: !3964)
!4188 = !DILocation(line: 515, column: 23, scope: !4189)
!4189 = distinct !DILexicalBlock(scope: !4185, file: !175, line: 514, column: 19)
!4190 = !DILocation(line: 515, column: 10, scope: !4189)
!4191 = !DILocation(line: 515, column: 8, scope: !4189)
!4192 = !DILocation(line: 516, column: 3, scope: !4189)
!4193 = !DILocation(line: 517, column: 11, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !4185, file: !175, line: 516, column: 10)
!4195 = !DILocation(line: 517, column: 10, scope: !4194)
!4196 = !DILocation(line: 517, column: 8, scope: !4194)
!4197 = !DILocation(line: 518, column: 10, scope: !4194)
!4198 = !DILocation(line: 518, column: 8, scope: !4194)
!4199 = !DILocation(line: 519, column: 8, scope: !4200)
!4200 = distinct !DILexicalBlock(scope: !4194, file: !175, line: 519, column: 8)
!4201 = !DILocation(line: 519, column: 18, scope: !4200)
!4202 = !DILocation(line: 519, column: 23, scope: !4200)
!4203 = !DILocation(line: 520, column: 19, scope: !4200)
!4204 = !DILocation(line: 520, column: 18, scope: !4200)
!4205 = !DILocation(line: 520, column: 15, scope: !4200)
!4206 = !DILocation(line: 520, column: 27, scope: !4200)
!4207 = !DILocation(line: 520, column: 31, scope: !4208)
!4208 = !DILexicalBlockFile(scope: !4200, file: !175, discriminator: 1)
!4209 = !DILocation(line: 520, column: 30, scope: !4208)
!4210 = !DILocation(line: 520, column: 39, scope: !4208)
!4211 = !DILocation(line: 520, column: 48, scope: !4208)
!4212 = !DILocation(line: 520, column: 63, scope: !4213)
!4213 = !DILexicalBlockFile(scope: !4200, file: !175, discriminator: 2)
!4214 = !DILocation(line: 520, column: 62, scope: !4213)
!4215 = !DILocation(line: 520, column: 59, scope: !4213)
!4216 = !DILocation(line: 520, column: 71, scope: !4213)
!4217 = !DILocation(line: 520, column: 75, scope: !4218)
!4218 = !DILexicalBlockFile(scope: !4200, file: !175, discriminator: 3)
!4219 = !DILocation(line: 520, column: 74, scope: !4218)
!4220 = !DILocation(line: 520, column: 83, scope: !4218)
!4221 = !DILocation(line: 520, column: 92, scope: !4218)
!4222 = !DILocation(line: 520, column: 105, scope: !4223)
!4223 = !DILexicalBlockFile(scope: !4200, file: !175, discriminator: 4)
!4224 = !DILocation(line: 520, column: 104, scope: !4223)
!4225 = !DILocation(line: 520, column: 101, scope: !4223)
!4226 = !DILocation(line: 520, column: 113, scope: !4223)
!4227 = !DILocation(line: 520, column: 117, scope: !4228)
!4228 = !DILexicalBlockFile(scope: !4200, file: !175, discriminator: 5)
!4229 = !DILocation(line: 520, column: 116, scope: !4228)
!4230 = !DILocation(line: 520, column: 125, scope: !4228)
!4231 = !DILocation(line: 519, column: 8, scope: !4232)
!4232 = !DILexicalBlockFile(scope: !4194, file: !175, discriminator: 1)
!4233 = !DILocation(line: 521, column: 16, scope: !4200)
!4234 = !DILocation(line: 521, column: 5, scope: !4200)
!4235 = !DILocation(line: 523, column: 16, scope: !4200)
!4236 = !DILocation(line: 524, column: 11, scope: !4194)
!4237 = !DILocation(line: 524, column: 8, scope: !4194)
!4238 = !DILocation(line: 527, column: 11, scope: !3964)
!4239 = !DILocation(line: 527, column: 8, scope: !3964)
!4240 = !DILocation(line: 528, column: 7, scope: !4241)
!4241 = distinct !DILexicalBlock(scope: !3964, file: !175, line: 528, column: 7)
!4242 = !DILocation(line: 528, column: 15, scope: !4241)
!4243 = !DILocation(line: 528, column: 21, scope: !4241)
!4244 = !DILocation(line: 528, column: 12, scope: !4241)
!4245 = !DILocation(line: 528, column: 7, scope: !3964)
!4246 = !DILocation(line: 529, column: 11, scope: !4247)
!4247 = distinct !DILexicalBlock(scope: !4248, file: !175, line: 529, column: 8)
!4248 = distinct !DILexicalBlock(scope: !4241, file: !175, line: 528, column: 28)
!4249 = !DILocation(line: 529, column: 16, scope: !4247)
!4250 = !DILocation(line: 529, column: 25, scope: !4247)
!4251 = !DILocation(line: 529, column: 8, scope: !4248)
!4252 = !DILocation(line: 530, column: 9, scope: !4253)
!4253 = distinct !DILexicalBlock(scope: !4254, file: !175, line: 530, column: 9)
!4254 = distinct !DILexicalBlock(scope: !4247, file: !175, line: 529, column: 33)
!4255 = !DILocation(line: 530, column: 15, scope: !4253)
!4256 = !DILocation(line: 530, column: 9, scope: !4254)
!4257 = !DILocation(line: 531, column: 23, scope: !4253)
!4258 = !DILocation(line: 531, column: 29, scope: !4253)
!4259 = !DILocation(line: 531, column: 37, scope: !4253)
!4260 = !DILocation(line: 531, column: 6, scope: !4253)
!4261 = !DILocation(line: 533, column: 6, scope: !4253)
!4262 = !DILocation(line: 533, column: 13, scope: !4263)
!4263 = !DILexicalBlockFile(scope: !4264, file: !175, discriminator: 1)
!4264 = distinct !DILexicalBlock(scope: !4265, file: !175, line: 533, column: 6)
!4265 = distinct !DILexicalBlock(scope: !4253, file: !175, line: 533, column: 6)
!4266 = !DILocation(line: 533, column: 20, scope: !4263)
!4267 = !DILocation(line: 533, column: 18, scope: !4263)
!4268 = !DILocation(line: 533, column: 6, scope: !4263)
!4269 = !DILocation(line: 534, column: 18, scope: !4264)
!4270 = !DILocation(line: 534, column: 24, scope: !4264)
!4271 = !DILocation(line: 534, column: 33, scope: !4264)
!4272 = !DILocation(line: 534, column: 32, scope: !4264)
!4273 = !DILocation(line: 534, column: 7, scope: !4264)
!4274 = !DILocation(line: 533, column: 29, scope: !4275)
!4275 = !DILexicalBlockFile(scope: !4264, file: !175, discriminator: 2)
!4276 = !DILocation(line: 533, column: 6, scope: !4275)
!4277 = distinct !{!4277, !4261}
!4278 = !DILocation(line: 535, column: 4, scope: !4254)
!4279 = !DILocation(line: 537, column: 20, scope: !4280)
!4280 = distinct !DILexicalBlock(scope: !4247, file: !175, line: 535, column: 11)
!4281 = !DILocation(line: 537, column: 26, scope: !4280)
!4282 = !DILocation(line: 537, column: 5, scope: !4280)
!4283 = !DILocation(line: 538, column: 16, scope: !4280)
!4284 = !DILocation(line: 538, column: 22, scope: !4280)
!4285 = !DILocation(line: 538, column: 31, scope: !4280)
!4286 = !DILocation(line: 538, column: 35, scope: !4280)
!4287 = !DILocation(line: 538, column: 41, scope: !4280)
!4288 = !DILocation(line: 538, column: 45, scope: !4280)
!4289 = !DILocation(line: 538, column: 30, scope: !4280)
!4290 = !DILocation(line: 538, column: 5, scope: !4280)
!4291 = !DILocation(line: 539, column: 20, scope: !4280)
!4292 = !DILocation(line: 539, column: 26, scope: !4280)
!4293 = !DILocation(line: 539, column: 34, scope: !4280)
!4294 = !DILocation(line: 539, column: 5, scope: !4280)
!4295 = !DILocation(line: 541, column: 3, scope: !4248)
!4296 = !DILocation(line: 542, column: 10, scope: !3964)
!4297 = !DILocation(line: 542, column: 8, scope: !3964)
!4298 = !DILocation(line: 419, column: 2, scope: !4299)
!4299 = !DILexicalBlockFile(scope: !3965, file: !175, discriminator: 1)
!4300 = !DILocation(line: 545, column: 6, scope: !4301)
!4301 = distinct !DILexicalBlock(scope: !3881, file: !175, line: 545, column: 6)
!4302 = !DILocation(line: 545, column: 20, scope: !4301)
!4303 = !DILocation(line: 545, column: 23, scope: !4304)
!4304 = !DILexicalBlockFile(scope: !4301, file: !175, discriminator: 1)
!4305 = !DILocation(line: 545, column: 30, scope: !4304)
!4306 = !DILocation(line: 545, column: 36, scope: !4304)
!4307 = !DILocation(line: 545, column: 45, scope: !4304)
!4308 = !DILocation(line: 545, column: 51, scope: !4304)
!4309 = !DILocation(line: 545, column: 60, scope: !4304)
!4310 = !DILocation(line: 545, column: 57, scope: !4304)
!4311 = !DILocation(line: 545, column: 42, scope: !4304)
!4312 = !DILocation(line: 545, column: 28, scope: !4304)
!4313 = !DILocation(line: 545, column: 6, scope: !4304)
!4314 = !DILocation(line: 546, column: 18, scope: !4315)
!4315 = distinct !DILexicalBlock(scope: !4301, file: !175, line: 545, column: 81)
!4316 = !DILocation(line: 546, column: 24, scope: !4315)
!4317 = !DILocation(line: 546, column: 3, scope: !4315)
!4318 = !DILocation(line: 547, column: 24, scope: !4315)
!4319 = !DILocation(line: 547, column: 30, scope: !4315)
!4320 = !DILocation(line: 547, column: 38, scope: !4315)
!4321 = !DILocation(line: 547, column: 3, scope: !4315)
!4322 = !DILocation(line: 548, column: 2, scope: !4315)
!4323 = !DILocation(line: 550, column: 9, scope: !3881)
!4324 = !DILocation(line: 550, column: 2, scope: !3881)
!4325 = !DILocation(line: 551, column: 1, scope: !3881)
!4326 = distinct !DISubprogram(name: "view_bookmarks_check", scope: !175, file: !175, line: 1124, type: !1720, isLocal: true, isDefinition: true, scopeLine: 1125, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !183)
!4327 = !DILocalVariable(name: "view", arg: 1, scope: !4326, file: !175, line: 1124, type: !29)
!4328 = !DILocation(line: 1124, column: 56, scope: !4326)
!4329 = !DILocalVariable(name: "line", arg: 2, scope: !4326, file: !175, line: 1124, type: !48)
!4330 = !DILocation(line: 1124, column: 72, scope: !4326)
!4331 = !DILocalVariable(name: "rec", scope: !4326, file: !175, line: 1126, type: !4332)
!4332 = !DIDerivedType(tag: DW_TAG_typedef, name: "BOOKMARK_FIND_REC", file: !175, line: 1115, baseType: !4333)
!4333 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !175, line: 1112, size: 128, align: 64, elements: !4334)
!4334 = !{!4335, !4336}
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "remove_line", scope: !4333, file: !175, line: 1113, baseType: !48, size: 64, align: 64)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "remove_list", scope: !4333, file: !175, line: 1114, baseType: !40, size: 64, align: 64, offset: 64)
!4337 = !DILocation(line: 1126, column: 27, scope: !4326)
!4338 = !DILocalVariable(name: "tmp", scope: !4326, file: !175, line: 1127, type: !40)
!4339 = !DILocation(line: 1127, column: 10, scope: !4326)
!4340 = !DILocation(line: 1129, column: 27, scope: !4326)
!4341 = !DILocation(line: 1129, column: 13, scope: !4326)
!4342 = !DILocation(line: 1129, column: 25, scope: !4326)
!4343 = !DILocation(line: 1130, column: 13, scope: !4326)
!4344 = !DILocation(line: 1130, column: 25, scope: !4326)
!4345 = !DILocation(line: 1131, column: 23, scope: !4326)
!4346 = !DILocation(line: 1131, column: 29, scope: !4326)
!4347 = !DILocation(line: 1132, column: 41, scope: !4326)
!4348 = !DILocation(line: 1131, column: 2, scope: !4326)
!4349 = !DILocation(line: 1134, column: 10, scope: !4350)
!4350 = distinct !DILexicalBlock(scope: !4326, file: !175, line: 1134, column: 6)
!4351 = !DILocation(line: 1134, column: 22, scope: !4350)
!4352 = !DILocation(line: 1134, column: 6, scope: !4326)
!4353 = !DILocation(line: 1135, column: 18, scope: !4354)
!4354 = distinct !DILexicalBlock(scope: !4355, file: !175, line: 1135, column: 3)
!4355 = distinct !DILexicalBlock(scope: !4350, file: !175, line: 1134, column: 30)
!4356 = !DILocation(line: 1135, column: 12, scope: !4354)
!4357 = !DILocation(line: 1135, column: 8, scope: !4354)
!4358 = !DILocation(line: 1135, column: 31, scope: !4359)
!4359 = !DILexicalBlockFile(scope: !4360, file: !175, discriminator: 1)
!4360 = distinct !DILexicalBlock(scope: !4354, file: !175, line: 1135, column: 3)
!4361 = !DILocation(line: 1135, column: 35, scope: !4359)
!4362 = !DILocation(line: 1135, column: 3, scope: !4359)
!4363 = !DILocation(line: 1136, column: 24, scope: !4364)
!4364 = distinct !DILexicalBlock(scope: !4360, file: !175, line: 1135, column: 60)
!4365 = !DILocation(line: 1136, column: 30, scope: !4364)
!4366 = !DILocation(line: 1136, column: 41, scope: !4364)
!4367 = !DILocation(line: 1136, column: 46, scope: !4364)
!4368 = !DILocation(line: 1136, column: 4, scope: !4364)
!4369 = !DILocation(line: 1137, column: 11, scope: !4364)
!4370 = !DILocation(line: 1137, column: 16, scope: !4364)
!4371 = !DILocation(line: 1137, column: 4, scope: !4364)
!4372 = !DILocation(line: 1138, column: 3, scope: !4364)
!4373 = !DILocation(line: 1135, column: 49, scope: !4374)
!4374 = !DILexicalBlockFile(scope: !4360, file: !175, discriminator: 2)
!4375 = !DILocation(line: 1135, column: 54, scope: !4374)
!4376 = !DILocation(line: 1135, column: 47, scope: !4374)
!4377 = !DILocation(line: 1135, column: 3, scope: !4374)
!4378 = distinct !{!4378, !4379}
!4379 = !DILocation(line: 1135, column: 3, scope: !4355)
!4380 = !DILocation(line: 1139, column: 20, scope: !4355)
!4381 = !DILocation(line: 1139, column: 3, scope: !4355)
!4382 = !DILocation(line: 1140, column: 2, scope: !4355)
!4383 = !DILocation(line: 1141, column: 1, scope: !4326)
!4384 = distinct !DISubprogram(name: "view_remove_line_update_startline", scope: !175, file: !175, line: 1169, type: !2736, isLocal: true, isDefinition: true, scopeLine: 1171, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !183)
!4385 = !DILocalVariable(name: "view", arg: 1, scope: !4384, file: !175, line: 1169, type: !29)
!4386 = !DILocation(line: 1169, column: 69, scope: !4384)
!4387 = !DILocalVariable(name: "line", arg: 2, scope: !4384, file: !175, line: 1170, type: !48)
!4388 = !DILocation(line: 1170, column: 22, scope: !4384)
!4389 = !DILocalVariable(name: "linecount", arg: 3, scope: !4384, file: !175, line: 1170, type: !63)
!4390 = !DILocation(line: 1170, column: 32, scope: !4384)
!4391 = !DILocalVariable(name: "scroll", scope: !4384, file: !175, line: 1172, type: !63)
!4392 = !DILocation(line: 1172, column: 6, scope: !4384)
!4393 = !DILocation(line: 1174, column: 6, scope: !4394)
!4394 = distinct !DILexicalBlock(scope: !4384, file: !175, line: 1174, column: 6)
!4395 = !DILocation(line: 1174, column: 12, scope: !4394)
!4396 = !DILocation(line: 1174, column: 25, scope: !4394)
!4397 = !DILocation(line: 1174, column: 22, scope: !4394)
!4398 = !DILocation(line: 1174, column: 6, scope: !4384)
!4399 = !DILocation(line: 1175, column: 21, scope: !4400)
!4400 = distinct !DILexicalBlock(scope: !4394, file: !175, line: 1174, column: 31)
!4401 = !DILocation(line: 1175, column: 27, scope: !4400)
!4402 = !DILocation(line: 1175, column: 38, scope: !4400)
!4403 = !DILocation(line: 1175, column: 43, scope: !4400)
!4404 = !DILocation(line: 1176, column: 4, scope: !4400)
!4405 = !DILocation(line: 1176, column: 10, scope: !4400)
!4406 = !DILocation(line: 1176, column: 21, scope: !4400)
!4407 = !DILocation(line: 1175, column: 21, scope: !4408)
!4408 = !DILexicalBlockFile(scope: !4400, file: !175, discriminator: 1)
!4409 = !DILocation(line: 1176, column: 28, scope: !4408)
!4410 = !DILocation(line: 1176, column: 34, scope: !4408)
!4411 = !DILocation(line: 1176, column: 45, scope: !4408)
!4412 = !DILocation(line: 1175, column: 21, scope: !4413)
!4413 = !DILexicalBlockFile(scope: !4400, file: !175, discriminator: 2)
!4414 = !DILocation(line: 1175, column: 21, scope: !4415)
!4415 = !DILexicalBlockFile(scope: !4400, file: !175, discriminator: 3)
!4416 = !DILocation(line: 1175, column: 3, scope: !4415)
!4417 = !DILocation(line: 1175, column: 9, scope: !4415)
!4418 = !DILocation(line: 1175, column: 19, scope: !4415)
!4419 = !DILocation(line: 1177, column: 3, scope: !4400)
!4420 = !DILocation(line: 1177, column: 9, scope: !4400)
!4421 = !DILocation(line: 1177, column: 17, scope: !4400)
!4422 = !DILocation(line: 1178, column: 2, scope: !4400)
!4423 = !DILocation(line: 1179, column: 12, scope: !4424)
!4424 = distinct !DILexicalBlock(scope: !4394, file: !175, line: 1178, column: 9)
!4425 = !DILocation(line: 1179, column: 18, scope: !4424)
!4426 = !DILocation(line: 1180, column: 26, scope: !4424)
!4427 = !DILocation(line: 1180, column: 32, scope: !4424)
!4428 = !DILocation(line: 1180, column: 38, scope: !4424)
!4429 = !DILocation(line: 1181, column: 12, scope: !4424)
!4430 = !DILocation(line: 1181, column: 18, scope: !4424)
!4431 = !DILocation(line: 1181, column: 27, scope: !4424)
!4432 = !DILocation(line: 1180, column: 4, scope: !4424)
!4433 = !DILocation(line: 1179, column: 25, scope: !4424)
!4434 = !DILocation(line: 1179, column: 10, scope: !4424)
!4435 = !DILocation(line: 1182, column: 7, scope: !4436)
!4436 = distinct !DILexicalBlock(scope: !4424, file: !175, line: 1182, column: 7)
!4437 = !DILocation(line: 1182, column: 14, scope: !4436)
!4438 = !DILocation(line: 1182, column: 7, scope: !4424)
!4439 = !DILocation(line: 1183, column: 16, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4436, file: !175, line: 1182, column: 19)
!4441 = !DILocation(line: 1183, column: 23, scope: !4440)
!4442 = !DILocation(line: 1183, column: 29, scope: !4440)
!4443 = !DILocation(line: 1184, column: 10, scope: !4440)
!4444 = !DILocation(line: 1184, column: 16, scope: !4440)
!4445 = !DILocation(line: 1184, column: 26, scope: !4440)
!4446 = !DILocation(line: 1184, column: 25, scope: !4440)
!4447 = !DILocation(line: 1183, column: 4, scope: !4440)
!4448 = !DILocation(line: 1185, column: 3, scope: !4440)
!4449 = !DILocation(line: 1190, column: 28, scope: !4384)
!4450 = !DILocation(line: 1190, column: 2, scope: !4384)
!4451 = !DILocation(line: 1191, column: 35, scope: !4452)
!4452 = distinct !DILexicalBlock(scope: !4384, file: !175, line: 1191, column: 6)
!4453 = !DILocation(line: 1191, column: 41, scope: !4452)
!4454 = !DILocation(line: 1191, column: 52, scope: !4452)
!4455 = !DILocation(line: 1191, column: 6, scope: !4452)
!4456 = !DILocation(line: 1191, column: 6, scope: !4384)
!4457 = !DILocation(line: 1192, column: 17, scope: !4452)
!4458 = !DILocation(line: 1192, column: 3, scope: !4452)
!4459 = !DILocation(line: 1192, column: 9, scope: !4452)
!4460 = !DILocation(line: 1192, column: 14, scope: !4452)
!4461 = !DILocation(line: 1193, column: 1, scope: !4384)
!4462 = distinct !DISubprogram(name: "bookmark_check_remove", scope: !175, file: !175, line: 1117, type: !4463, isLocal: true, isDefinition: true, scopeLine: 1119, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !183)
!4463 = !DISubroutineType(types: !4464)
!4464 = !{null, !169, !48, !4465}
!4465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4332, size: 64, align: 64)
!4466 = !DILocalVariable(name: "key", arg: 1, scope: !4462, file: !175, line: 1117, type: !169)
!4467 = !DILocation(line: 1117, column: 41, scope: !4462)
!4468 = !DILocalVariable(name: "line", arg: 2, scope: !4462, file: !175, line: 1117, type: !48)
!4469 = !DILocation(line: 1117, column: 56, scope: !4462)
!4470 = !DILocalVariable(name: "rec", arg: 3, scope: !4462, file: !175, line: 1118, type: !4465)
!4471 = !DILocation(line: 1118, column: 26, scope: !4462)
!4472 = !DILocation(line: 1120, column: 6, scope: !4473)
!4473 = distinct !DILexicalBlock(scope: !4462, file: !175, line: 1120, column: 6)
!4474 = !DILocation(line: 1120, column: 14, scope: !4473)
!4475 = !DILocation(line: 1120, column: 19, scope: !4473)
!4476 = !DILocation(line: 1120, column: 11, scope: !4473)
!4477 = !DILocation(line: 1120, column: 6, scope: !4462)
!4478 = !DILocation(line: 1121, column: 51, scope: !4473)
!4479 = !DILocation(line: 1121, column: 56, scope: !4473)
!4480 = !DILocation(line: 1121, column: 69, scope: !4473)
!4481 = !DILocation(line: 1121, column: 36, scope: !4473)
!4482 = !DILocation(line: 1121, column: 17, scope: !4473)
!4483 = !DILocation(line: 1121, column: 22, scope: !4473)
!4484 = !DILocation(line: 1121, column: 34, scope: !4473)
!4485 = !DILocation(line: 1122, column: 1, scope: !4462)
!4486 = distinct !DISubprogram(name: "line_cache_check_remove", scope: !175, file: !175, line: 1422, type: !4487, isLocal: true, isDefinition: true, scopeLine: 1424, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !183)
!4487 = !DISubroutineType(types: !4488)
!4488 = !{!63, !25, !1150, !4489}
!4489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!4490 = !DILocalVariable(name: "key", arg: 1, scope: !4486, file: !175, line: 1422, type: !25)
!4491 = !DILocation(line: 1422, column: 42, scope: !4486)
!4492 = !DILocalVariable(name: "cache", arg: 2, scope: !4486, file: !175, line: 1422, type: !1150)
!4493 = !DILocation(line: 1422, column: 63, scope: !4486)
!4494 = !DILocalVariable(name: "now", arg: 3, scope: !4486, file: !175, line: 1423, type: !4489)
!4495 = !DILocation(line: 1423, column: 16, scope: !4486)
!4496 = !DILocation(line: 1425, column: 6, scope: !4497)
!4497 = distinct !DILexicalBlock(scope: !4486, file: !175, line: 1425, column: 6)
!4498 = !DILocation(line: 1425, column: 13, scope: !4497)
!4499 = !DILocation(line: 1425, column: 24, scope: !4497)
!4500 = !DILocation(line: 1425, column: 36, scope: !4497)
!4501 = !DILocation(line: 1425, column: 35, scope: !4497)
!4502 = !DILocation(line: 1425, column: 33, scope: !4497)
!4503 = !DILocation(line: 1425, column: 6, scope: !4486)
!4504 = !DILocation(line: 1426, column: 3, scope: !4497)
!4505 = !DILocation(line: 1428, column: 26, scope: !4486)
!4506 = !DILocation(line: 1428, column: 2, scope: !4486)
!4507 = !DILocation(line: 1429, column: 2, scope: !4486)
!4508 = !DILocation(line: 1430, column: 1, scope: !4486)
