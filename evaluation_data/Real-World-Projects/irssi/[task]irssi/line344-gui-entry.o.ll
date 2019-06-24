; ModuleID = './line344-gui-entry.o.i'
source_filename = "./line344-gui-entry.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.GUI_ENTRY_REC = type { i32, i32, i32*, i8**, %struct._GSList*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i8 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._TERM_WINDOW = type opaque
%struct.GUI_ENTRY_CUTBUFFER_REC = type { i32, i32* }
%struct._GError = type { i32, i32, i8* }
%struct._GString = type { i8*, i64, i64 }

@__func__.gui_entry_destroy = private unnamed_addr constant [18 x i8] c"gui_entry_destroy\00", align 1
@.str = private unnamed_addr constant [14 x i8] c"entry != NULL\00", align 1
@active_entry = common global %struct.GUI_ENTRY_REC* null, align 8
@__func__.gui_entry_move = private unnamed_addr constant [15 x i8] c"gui_entry_move\00", align 1
@__func__.gui_entry_set_prompt = private unnamed_addr constant [21 x i8] c"gui_entry_set_prompt\00", align 1
@__func__.gui_entry_set_hidden = private unnamed_addr constant [21 x i8] c"gui_entry_set_hidden\00", align 1
@__func__.gui_entry_set_utf8 = private unnamed_addr constant [19 x i8] c"gui_entry_set_utf8\00", align 1
@__func__.gui_entry_set_text = private unnamed_addr constant [19 x i8] c"gui_entry_set_text\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"str != NULL\00", align 1
@__func__.gui_entry_get_text = private unnamed_addr constant [19 x i8] c"gui_entry_get_text\00", align 1
@term_type = external global i32, align 4
@__func__.gui_entry_get_text_and_pos = private unnamed_addr constant [27 x i8] c"gui_entry_get_text_and_pos\00", align 1
@__func__.gui_entry_insert_text = private unnamed_addr constant [22 x i8] c"gui_entry_insert_text\00", align 1
@g_utf8_skip = external constant i8*, align 8
@__func__.gui_entry_insert_char = private unnamed_addr constant [22 x i8] c"gui_entry_insert_char\00", align 1
@__func__.gui_entry_get_cutbuffer = private unnamed_addr constant [24 x i8] c"gui_entry_get_cutbuffer\00", align 1
@__func__.gui_entry_get_next_cutbuffer = private unnamed_addr constant [29 x i8] c"gui_entry_get_next_cutbuffer\00", align 1
@__func__.gui_entry_erase_to = private unnamed_addr constant [19 x i8] c"gui_entry_erase_to\00", align 1
@__func__.gui_entry_erase = private unnamed_addr constant [16 x i8] c"gui_entry_erase\00", align 1
@__func__.gui_entry_erase_cell = private unnamed_addr constant [21 x i8] c"gui_entry_erase_cell\00", align 1
@__func__.gui_entry_erase_word = private unnamed_addr constant [21 x i8] c"gui_entry_erase_word\00", align 1
@__func__.gui_entry_erase_next_word = private unnamed_addr constant [26 x i8] c"gui_entry_erase_next_word\00", align 1
@__func__.gui_entry_get_pos = private unnamed_addr constant [18 x i8] c"gui_entry_get_pos\00", align 1
@__func__.gui_entry_set_pos = private unnamed_addr constant [18 x i8] c"gui_entry_set_pos\00", align 1
@__func__.gui_entry_set_text_and_pos_bytes = private unnamed_addr constant [33 x i8] c"gui_entry_set_text_and_pos_bytes\00", align 1
@__func__.gui_entry_move_pos = private unnamed_addr constant [19 x i8] c"gui_entry_move_pos\00", align 1
@__func__.gui_entry_move_words = private unnamed_addr constant [21 x i8] c"gui_entry_move_words\00", align 1
@__func__.gui_entry_redraw = private unnamed_addr constant [17 x i8] c"gui_entry_redraw\00", align 1
@__func__.gui_entry_set_extent = private unnamed_addr constant [21 x i8] c"gui_entry_set_extent\00", align 1
@__func__.gui_entry_set_extents = private unnamed_addr constant [22 x i8] c"gui_entry_set_extents\00", align 1
@__func__.gui_entry_clear_extents = private unnamed_addr constant [24 x i8] c"gui_entry_clear_extents\00", align 1
@__func__.gui_entry_get_extent = private unnamed_addr constant [21 x i8] c"gui_entry_get_extent\00", align 1
@__func__.gui_entry_get_text_and_extents = private unnamed_addr constant [31 x i8] c"gui_entry_get_text_and_extents\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%|\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@root_window = external global %struct._TERM_WINDOW*, align 8
@term_width = external global i32, align 4
@__func__.scrlen_str = private unnamed_addr constant [11 x i8] c"scrlen_str\00", align 1
@__func__.get_cutbuffer_rec = private unnamed_addr constant [18 x i8] c"get_cutbuffer_rec\00", align 1

; Function Attrs: nounwind uwtable
define %struct.GUI_ENTRY_REC* @gui_entry_create(i32, i32, i32, i32) #0 !dbg !97 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.GUI_ENTRY_REC*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !101, metadata !102), !dbg !103
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !104, metadata !102), !dbg !105
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !106, metadata !102), !dbg !107
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !108, metadata !102), !dbg !109
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_REC** %9, metadata !110, metadata !102), !dbg !111
  %10 = call noalias i8* @g_malloc0_n(i64 1, i64 80), !dbg !112
  %11 = bitcast i8* %10 to %struct.GUI_ENTRY_REC*, !dbg !113
  store %struct.GUI_ENTRY_REC* %11, %struct.GUI_ENTRY_REC** %9, align 8, !dbg !114
  %12 = load i32, i32* %5, align 4, !dbg !115
  %13 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %9, align 8, !dbg !116
  %14 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %13, i32 0, i32 5, !dbg !117
  store i32 %12, i32* %14, align 8, !dbg !118
  %15 = load i32, i32* %6, align 4, !dbg !119
  %16 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %9, align 8, !dbg !120
  %17 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %16, i32 0, i32 6, !dbg !121
  store i32 %15, i32* %17, align 4, !dbg !122
  %18 = load i32, i32* %7, align 4, !dbg !123
  %19 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %9, align 8, !dbg !124
  %20 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %19, i32 0, i32 7, !dbg !125
  store i32 %18, i32* %20, align 8, !dbg !126
  %21 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %9, align 8, !dbg !127
  %22 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %21, i32 0, i32 1, !dbg !128
  store i32 1024, i32* %22, align 4, !dbg !129
  %23 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %9, align 8, !dbg !130
  %24 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %23, i32 0, i32 1, !dbg !131
  %25 = load i32, i32* %24, align 4, !dbg !131
  %26 = sext i32 %25 to i64, !dbg !132
  %27 = call noalias i8* @g_malloc_n(i64 %26, i64 4), !dbg !133
  %28 = bitcast i8* %27 to i32*, !dbg !134
  %29 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %9, align 8, !dbg !135
  %30 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %29, i32 0, i32 2, !dbg !136
  store i32* %28, i32** %30, align 8, !dbg !137
  %31 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %9, align 8, !dbg !138
  %32 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %31, i32 0, i32 3, !dbg !139
  store i8** null, i8*** %32, align 8, !dbg !140
  %33 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %9, align 8, !dbg !141
  %34 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %33, i32 0, i32 2, !dbg !142
  %35 = load i32*, i32** %34, align 8, !dbg !142
  %36 = getelementptr inbounds i32, i32* %35, i64 0, !dbg !141
  store i32 0, i32* %36, align 4, !dbg !143
  %37 = load i32, i32* %8, align 4, !dbg !144
  %38 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %9, align 8, !dbg !145
  %39 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %38, i32 0, i32 15, !dbg !146
  %40 = trunc i32 %37 to i8, !dbg !147
  %41 = load i8, i8* %39, align 4, !dbg !147
  %42 = and i8 %40, 1, !dbg !147
  %43 = and i8 %41, -2, !dbg !147
  %44 = or i8 %43, %42, !dbg !147
  store i8 %44, i8* %39, align 4, !dbg !147
  %45 = zext i8 %42 to i32, !dbg !147
  %46 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %9, align 8, !dbg !148
  ret %struct.GUI_ENTRY_REC* %46, !dbg !149
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare noalias i8* @g_malloc0_n(i64, i64) #2

declare noalias i8* @g_malloc_n(i64, i64) #2

; Function Attrs: nounwind uwtable
define void @gui_entry_destroy(%struct.GUI_ENTRY_REC*) #0 !dbg !150 {
  %2 = alloca %struct.GUI_ENTRY_REC*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct.GUI_ENTRY_CUTBUFFER_REC*, align 8
  store %struct.GUI_ENTRY_REC* %0, %struct.GUI_ENTRY_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_REC** %2, metadata !153, metadata !102), !dbg !154
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !155, metadata !102), !dbg !156
  br label %5, !dbg !157, !llvm.loop !158

; <label>:5:                                      ; preds = %1
  %6 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !159
  %7 = icmp ne %struct.GUI_ENTRY_REC* %6, null, !dbg !163
  br i1 %7, label %8, label %9, !dbg !159

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !164

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gui_entry_destroy, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0)), !dbg !167
  br label %56, !dbg !170

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !171

; <label>:11:                                     ; preds = %10
  %12 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !173
  %13 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !175
  %14 = icmp eq %struct.GUI_ENTRY_REC* %12, %13, !dbg !176
  br i1 %14, label %15, label %16, !dbg !177

; <label>:15:                                     ; preds = %11
  call void @gui_entry_set_active(%struct.GUI_ENTRY_REC* null), !dbg !178
  br label %16, !dbg !178

; <label>:16:                                     ; preds = %15, %11
  %17 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !179
  %18 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %17, i32 0, i32 4, !dbg !181
  %19 = load %struct._GSList*, %struct._GSList** %18, align 8, !dbg !181
  store %struct._GSList* %19, %struct._GSList** %3, align 8, !dbg !182
  br label %20, !dbg !183

; <label>:20:                                     ; preds = %38, %16
  %21 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !184
  %22 = icmp ne %struct._GSList* %21, null, !dbg !187
  br i1 %22, label %23, label %42, !dbg !188

; <label>:23:                                     ; preds = %20
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_CUTBUFFER_REC** %4, metadata !189, metadata !102), !dbg !191
  %24 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !192
  %25 = getelementptr inbounds %struct._GSList, %struct._GSList* %24, i32 0, i32 0, !dbg !193
  %26 = load i8*, i8** %25, align 8, !dbg !193
  %27 = bitcast i8* %26 to %struct.GUI_ENTRY_CUTBUFFER_REC*, !dbg !192
  store %struct.GUI_ENTRY_CUTBUFFER_REC* %27, %struct.GUI_ENTRY_CUTBUFFER_REC** %4, align 8, !dbg !191
  %28 = load %struct.GUI_ENTRY_CUTBUFFER_REC*, %struct.GUI_ENTRY_CUTBUFFER_REC** %4, align 8, !dbg !194
  %29 = icmp ne %struct.GUI_ENTRY_CUTBUFFER_REC* %28, null, !dbg !196
  br i1 %29, label %30, label %37, !dbg !197

; <label>:30:                                     ; preds = %23
  %31 = load %struct.GUI_ENTRY_CUTBUFFER_REC*, %struct.GUI_ENTRY_CUTBUFFER_REC** %4, align 8, !dbg !198
  %32 = getelementptr inbounds %struct.GUI_ENTRY_CUTBUFFER_REC, %struct.GUI_ENTRY_CUTBUFFER_REC* %31, i32 0, i32 1, !dbg !200
  %33 = load i32*, i32** %32, align 8, !dbg !200
  %34 = bitcast i32* %33 to i8*, !dbg !198
  call void @g_free(i8* %34), !dbg !201
  %35 = load %struct.GUI_ENTRY_CUTBUFFER_REC*, %struct.GUI_ENTRY_CUTBUFFER_REC** %4, align 8, !dbg !202
  %36 = bitcast %struct.GUI_ENTRY_CUTBUFFER_REC* %35 to i8*, !dbg !202
  call void @g_free(i8* %36), !dbg !203
  br label %37, !dbg !204

; <label>:37:                                     ; preds = %30, %23
  br label %38, !dbg !205

; <label>:38:                                     ; preds = %37
  %39 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !206
  %40 = getelementptr inbounds %struct._GSList, %struct._GSList* %39, i32 0, i32 1, !dbg !208
  %41 = load %struct._GSList*, %struct._GSList** %40, align 8, !dbg !208
  store %struct._GSList* %41, %struct._GSList** %3, align 8, !dbg !209
  br label %20, !dbg !210, !llvm.loop !211

; <label>:42:                                     ; preds = %20
  %43 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !213
  %44 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %43, i32 0, i32 4, !dbg !214
  %45 = load %struct._GSList*, %struct._GSList** %44, align 8, !dbg !214
  call void @g_slist_free(%struct._GSList* %45), !dbg !215
  %46 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !216
  call void @destroy_extents(%struct.GUI_ENTRY_REC* %46), !dbg !217
  %47 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !218
  %48 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %47, i32 0, i32 2, !dbg !219
  %49 = load i32*, i32** %48, align 8, !dbg !219
  %50 = bitcast i32* %49 to i8*, !dbg !218
  call void @g_free(i8* %50), !dbg !220
  %51 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !221
  %52 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %51, i32 0, i32 13, !dbg !222
  %53 = load i8*, i8** %52, align 8, !dbg !222
  call void @g_free(i8* %53), !dbg !223
  %54 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !224
  %55 = bitcast %struct.GUI_ENTRY_REC* %54 to i8*, !dbg !224
  call void @g_free(i8* %55), !dbg !225
  br label %56, !dbg !226

; <label>:56:                                     ; preds = %42, %9
  ret void, !dbg !227
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @gui_entry_set_active(%struct.GUI_ENTRY_REC*) #0 !dbg !229 {
  %2 = alloca %struct.GUI_ENTRY_REC*, align 8
  store %struct.GUI_ENTRY_REC* %0, %struct.GUI_ENTRY_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_REC** %2, metadata !230, metadata !102), !dbg !231
  %3 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !232
  store %struct.GUI_ENTRY_REC* %3, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !233
  %4 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !234
  %5 = icmp ne %struct.GUI_ENTRY_REC* %4, null, !dbg !236
  br i1 %5, label %6, label %21, !dbg !237

; <label>:6:                                      ; preds = %1
  %7 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !238
  %8 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %7, i32 0, i32 5, !dbg !240
  %9 = load i32, i32* %8, align 8, !dbg !240
  %10 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !241
  %11 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %10, i32 0, i32 10, !dbg !242
  %12 = load i32, i32* %11, align 4, !dbg !242
  %13 = add nsw i32 %9, %12, !dbg !243
  %14 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !244
  %15 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %14, i32 0, i32 12, !dbg !245
  %16 = load i32, i32* %15, align 4, !dbg !245
  %17 = add nsw i32 %13, %16, !dbg !246
  %18 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !247
  %19 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %18, i32 0, i32 6, !dbg !248
  %20 = load i32, i32* %19, align 4, !dbg !248
  call void @term_move_cursor(i32 %17, i32 %20), !dbg !249
  call void @term_refresh(%struct._TERM_WINDOW* null), !dbg !250
  br label %21, !dbg !251

; <label>:21:                                     ; preds = %6, %1
  ret void, !dbg !252
}

declare void @g_free(i8*) #2

declare void @g_slist_free(%struct._GSList*) #2

; Function Attrs: nounwind uwtable
define internal void @destroy_extents(%struct.GUI_ENTRY_REC*) #0 !dbg !253 {
  %2 = alloca %struct.GUI_ENTRY_REC*, align 8
  %3 = alloca i32, align 4
  store %struct.GUI_ENTRY_REC* %0, %struct.GUI_ENTRY_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_REC** %2, metadata !254, metadata !102), !dbg !255
  %4 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !256
  %5 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %4, i32 0, i32 15, !dbg !258
  %6 = load i8, i8* %5, align 4, !dbg !258
  %7 = lshr i8 %6, 4, !dbg !258
  %8 = and i8 %7, 1, !dbg !258
  %9 = zext i8 %8 to i32, !dbg !258
  %10 = icmp ne i32 %9, 0, !dbg !256
  br i1 %10, label %11, label %40, !dbg !259

; <label>:11:                                     ; preds = %1
  call void @llvm.dbg.declare(metadata i32* %3, metadata !260, metadata !102), !dbg !262
  store i32 0, i32* %3, align 4, !dbg !263
  br label %12, !dbg !265

; <label>:12:                                     ; preds = %36, %11
  %13 = load i32, i32* %3, align 4, !dbg !266
  %14 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !269
  %15 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %14, i32 0, i32 1, !dbg !270
  %16 = load i32, i32* %15, align 4, !dbg !270
  %17 = icmp slt i32 %13, %16, !dbg !271
  br i1 %17, label %18, label %39, !dbg !272

; <label>:18:                                     ; preds = %12
  %19 = load i32, i32* %3, align 4, !dbg !273
  %20 = sext i32 %19 to i64, !dbg !276
  %21 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !276
  %22 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %21, i32 0, i32 3, !dbg !277
  %23 = load i8**, i8*** %22, align 8, !dbg !277
  %24 = getelementptr inbounds i8*, i8** %23, i64 %20, !dbg !276
  %25 = load i8*, i8** %24, align 8, !dbg !276
  %26 = icmp ne i8* %25, null, !dbg !278
  br i1 %26, label %27, label %35, !dbg !279

; <label>:27:                                     ; preds = %18
  %28 = load i32, i32* %3, align 4, !dbg !280
  %29 = sext i32 %28 to i64, !dbg !282
  %30 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !282
  %31 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %30, i32 0, i32 3, !dbg !283
  %32 = load i8**, i8*** %31, align 8, !dbg !283
  %33 = getelementptr inbounds i8*, i8** %32, i64 %29, !dbg !282
  %34 = load i8*, i8** %33, align 8, !dbg !282
  call void @g_free(i8* %34), !dbg !284
  br label %35, !dbg !285

; <label>:35:                                     ; preds = %27, %18
  br label %36, !dbg !286

; <label>:36:                                     ; preds = %35
  %37 = load i32, i32* %3, align 4, !dbg !287
  %38 = add nsw i32 %37, 1, !dbg !287
  store i32 %38, i32* %3, align 4, !dbg !287
  br label %12, !dbg !289, !llvm.loop !290

; <label>:39:                                     ; preds = %12
  br label %40, !dbg !292

; <label>:40:                                     ; preds = %39, %1
  %41 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !293
  %42 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %41, i32 0, i32 3, !dbg !294
  %43 = load i8**, i8*** %42, align 8, !dbg !294
  %44 = bitcast i8** %43 to i8*, !dbg !293
  call void @g_free(i8* %44), !dbg !295
  %45 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !296
  %46 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %45, i32 0, i32 3, !dbg !297
  store i8** null, i8*** %46, align 8, !dbg !298
  %47 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !299
  %48 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %47, i32 0, i32 15, !dbg !300
  %49 = load i8, i8* %48, align 4, !dbg !301
  %50 = and i8 %49, -17, !dbg !301
  store i8 %50, i8* %48, align 4, !dbg !301
  ret void, !dbg !302
}

; Function Attrs: nounwind uwtable
define void @unichars_to_big5(i32*, i8*) #0 !dbg !303 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  call void @llvm.dbg.declare(metadata i32** %3, metadata !308, metadata !102), !dbg !309
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !310, metadata !102), !dbg !311
  br label %5, !dbg !312

; <label>:5:                                      ; preds = %28, %2
  %6 = load i32*, i32** %3, align 8, !dbg !313
  %7 = load i32, i32* %6, align 4, !dbg !317
  %8 = icmp ne i32 %7, 0, !dbg !318
  br i1 %8, label %9, label %31, !dbg !319

; <label>:9:                                      ; preds = %5
  %10 = load i32*, i32** %3, align 8, !dbg !320
  %11 = load i32, i32* %10, align 4, !dbg !323
  %12 = icmp ugt i32 %11, 255, !dbg !324
  br i1 %12, label %13, label %21, !dbg !325

; <label>:13:                                     ; preds = %9
  %14 = load i32*, i32** %3, align 8, !dbg !326
  %15 = load i32, i32* %14, align 4, !dbg !327
  %16 = lshr i32 %15, 8, !dbg !328
  %17 = and i32 %16, 255, !dbg !329
  %18 = trunc i32 %17 to i8, !dbg !330
  %19 = load i8*, i8** %4, align 8, !dbg !331
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !331
  store i8* %20, i8** %4, align 8, !dbg !331
  store i8 %18, i8* %19, align 1, !dbg !332
  br label %21, !dbg !333

; <label>:21:                                     ; preds = %13, %9
  %22 = load i32*, i32** %3, align 8, !dbg !334
  %23 = load i32, i32* %22, align 4, !dbg !335
  %24 = and i32 %23, 255, !dbg !336
  %25 = trunc i32 %24 to i8, !dbg !335
  %26 = load i8*, i8** %4, align 8, !dbg !337
  %27 = getelementptr inbounds i8, i8* %26, i32 1, !dbg !337
  store i8* %27, i8** %4, align 8, !dbg !337
  store i8 %25, i8* %26, align 1, !dbg !338
  br label %28, !dbg !339

; <label>:28:                                     ; preds = %21
  %29 = load i32*, i32** %3, align 8, !dbg !340
  %30 = getelementptr inbounds i32, i32* %29, i32 1, !dbg !340
  store i32* %30, i32** %3, align 8, !dbg !340
  br label %5, !dbg !342, !llvm.loop !343

; <label>:31:                                     ; preds = %5
  %32 = load i8*, i8** %4, align 8, !dbg !344
  store i8 0, i8* %32, align 1, !dbg !345
  ret void, !dbg !346
}

; Function Attrs: nounwind uwtable
define i32 @strlen_big5(i8*) #0 !dbg !347 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !350, metadata !102), !dbg !351
  call void @llvm.dbg.declare(metadata i32* %3, metadata !352, metadata !102), !dbg !353
  store i32 0, i32* %3, align 4, !dbg !353
  br label %4, !dbg !354

; <label>:4:                                      ; preds = %48, %1
  %5 = load i8*, i8** %2, align 8, !dbg !355
  %6 = load i8, i8* %5, align 1, !dbg !357
  %7 = zext i8 %6 to i32, !dbg !357
  %8 = icmp ne i32 %7, 0, !dbg !358
  br i1 %8, label %9, label %53, !dbg !359

; <label>:9:                                      ; preds = %4
  %10 = load i8*, i8** %2, align 8, !dbg !360
  %11 = getelementptr inbounds i8, i8* %10, i64 0, !dbg !360
  %12 = load i8, i8* %11, align 1, !dbg !360
  %13 = zext i8 %12 to i32, !dbg !363
  %14 = icmp sle i32 129, %13, !dbg !364
  br i1 %14, label %15, label %48, !dbg !365

; <label>:15:                                     ; preds = %9
  %16 = load i8*, i8** %2, align 8, !dbg !366
  %17 = getelementptr inbounds i8, i8* %16, i64 0, !dbg !366
  %18 = load i8, i8* %17, align 1, !dbg !366
  %19 = zext i8 %18 to i32, !dbg !368
  %20 = icmp sle i32 %19, 254, !dbg !369
  br i1 %20, label %21, label %48, !dbg !370

; <label>:21:                                     ; preds = %15
  %22 = load i8*, i8** %2, align 8, !dbg !371
  %23 = getelementptr inbounds i8, i8* %22, i64 1, !dbg !371
  %24 = load i8, i8* %23, align 1, !dbg !371
  %25 = zext i8 %24 to i32, !dbg !373
  %26 = icmp sle i32 64, %25, !dbg !374
  br i1 %26, label %27, label %33, !dbg !375

; <label>:27:                                     ; preds = %21
  %28 = load i8*, i8** %2, align 8, !dbg !376
  %29 = getelementptr inbounds i8, i8* %28, i64 1, !dbg !376
  %30 = load i8, i8* %29, align 1, !dbg !376
  %31 = zext i8 %30 to i32, !dbg !378
  %32 = icmp sle i32 %31, 126, !dbg !379
  br i1 %32, label %45, label %33, !dbg !380

; <label>:33:                                     ; preds = %27, %21
  %34 = load i8*, i8** %2, align 8, !dbg !381
  %35 = getelementptr inbounds i8, i8* %34, i64 1, !dbg !381
  %36 = load i8, i8* %35, align 1, !dbg !381
  %37 = zext i8 %36 to i32, !dbg !383
  %38 = icmp sle i32 128, %37, !dbg !384
  br i1 %38, label %39, label %48, !dbg !385

; <label>:39:                                     ; preds = %33
  %40 = load i8*, i8** %2, align 8, !dbg !386
  %41 = getelementptr inbounds i8, i8* %40, i64 1, !dbg !386
  %42 = load i8, i8* %41, align 1, !dbg !386
  %43 = zext i8 %42 to i32, !dbg !388
  %44 = icmp sle i32 %43, 254, !dbg !389
  br i1 %44, label %45, label %48, !dbg !390

; <label>:45:                                     ; preds = %39, %27
  %46 = load i8*, i8** %2, align 8, !dbg !391
  %47 = getelementptr inbounds i8, i8* %46, i32 1, !dbg !391
  store i8* %47, i8** %2, align 8, !dbg !391
  br label %48, !dbg !392

; <label>:48:                                     ; preds = %45, %39, %33, %15, %9
  %49 = load i32, i32* %3, align 4, !dbg !393
  %50 = add nsw i32 %49, 1, !dbg !393
  store i32 %50, i32* %3, align 4, !dbg !393
  %51 = load i8*, i8** %2, align 8, !dbg !394
  %52 = getelementptr inbounds i8, i8* %51, i32 1, !dbg !394
  store i8* %52, i8** %2, align 8, !dbg !394
  br label %4, !dbg !395, !llvm.loop !397

; <label>:53:                                     ; preds = %4
  %54 = load i32, i32* %3, align 4, !dbg !398
  ret i32 %54, !dbg !399
}

; Function Attrs: nounwind uwtable
define void @unichars_to_big5_with_pos(i32*, i32, i8*, i32*) #0 !dbg !400 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !404, metadata !102), !dbg !405
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !406, metadata !102), !dbg !407
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !408, metadata !102), !dbg !409
  store i32* %3, i32** %8, align 8
  call void @llvm.dbg.declare(metadata i32** %8, metadata !410, metadata !102), !dbg !411
  call void @llvm.dbg.declare(metadata i32** %9, metadata !412, metadata !102), !dbg !413
  %11 = load i32*, i32** %5, align 8, !dbg !414
  store i32* %11, i32** %9, align 8, !dbg !413
  call void @llvm.dbg.declare(metadata i8** %10, metadata !415, metadata !102), !dbg !416
  %12 = load i8*, i8** %7, align 8, !dbg !417
  store i8* %12, i8** %10, align 8, !dbg !416
  %13 = load i32*, i32** %8, align 8, !dbg !418
  store i32 0, i32* %13, align 4, !dbg !419
  br label %14, !dbg !420

; <label>:14:                                     ; preds = %56, %4
  %15 = load i32*, i32** %5, align 8, !dbg !421
  %16 = load i32, i32* %15, align 4, !dbg !423
  %17 = icmp ne i32 %16, 0, !dbg !424
  br i1 %17, label %18, label %57, !dbg !425

; <label>:18:                                     ; preds = %14
  %19 = load i32*, i32** %5, align 8, !dbg !426
  %20 = load i32, i32* %19, align 4, !dbg !429
  %21 = icmp ugt i32 %20, 255, !dbg !430
  br i1 %21, label %22, label %30, !dbg !431

; <label>:22:                                     ; preds = %18
  %23 = load i32*, i32** %5, align 8, !dbg !432
  %24 = load i32, i32* %23, align 4, !dbg !433
  %25 = lshr i32 %24, 8, !dbg !434
  %26 = and i32 %25, 255, !dbg !435
  %27 = trunc i32 %26 to i8, !dbg !436
  %28 = load i8*, i8** %7, align 8, !dbg !437
  %29 = getelementptr inbounds i8, i8* %28, i32 1, !dbg !437
  store i8* %29, i8** %7, align 8, !dbg !437
  store i8 %27, i8* %28, align 1, !dbg !438
  br label %30, !dbg !439

; <label>:30:                                     ; preds = %22, %18
  %31 = load i32*, i32** %5, align 8, !dbg !440
  %32 = load i32, i32* %31, align 4, !dbg !441
  %33 = and i32 %32, 255, !dbg !442
  %34 = trunc i32 %33 to i8, !dbg !441
  %35 = load i8*, i8** %7, align 8, !dbg !443
  %36 = getelementptr inbounds i8, i8* %35, i32 1, !dbg !443
  store i8* %36, i8** %7, align 8, !dbg !443
  store i8 %34, i8* %35, align 1, !dbg !444
  %37 = load i32*, i32** %5, align 8, !dbg !445
  %38 = getelementptr inbounds i32, i32* %37, i32 1, !dbg !445
  store i32* %38, i32** %5, align 8, !dbg !445
  %39 = load i32*, i32** %5, align 8, !dbg !446
  %40 = load i32*, i32** %9, align 8, !dbg !448
  %41 = ptrtoint i32* %39 to i64, !dbg !449
  %42 = ptrtoint i32* %40 to i64, !dbg !449
  %43 = sub i64 %41, %42, !dbg !449
  %44 = sdiv exact i64 %43, 4, !dbg !449
  %45 = load i32, i32* %6, align 4, !dbg !450
  %46 = sext i32 %45 to i64, !dbg !450
  %47 = icmp eq i64 %44, %46, !dbg !451
  br i1 %47, label %48, label %56, !dbg !452

; <label>:48:                                     ; preds = %30
  %49 = load i8*, i8** %7, align 8, !dbg !453
  %50 = load i8*, i8** %10, align 8, !dbg !454
  %51 = ptrtoint i8* %49 to i64, !dbg !455
  %52 = ptrtoint i8* %50 to i64, !dbg !455
  %53 = sub i64 %51, %52, !dbg !455
  %54 = trunc i64 %53 to i32, !dbg !453
  %55 = load i32*, i32** %8, align 8, !dbg !456
  store i32 %54, i32* %55, align 4, !dbg !457
  br label %56, !dbg !458

; <label>:56:                                     ; preds = %48, %30
  br label %14, !dbg !459, !llvm.loop !461

; <label>:57:                                     ; preds = %14
  %58 = load i8*, i8** %7, align 8, !dbg !462
  store i8 0, i8* %58, align 1, !dbg !463
  ret void, !dbg !464
}

; Function Attrs: nounwind uwtable
define void @big5_to_unichars(i8*, i32*) #0 !dbg !465 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !468, metadata !102), !dbg !469
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !470, metadata !102), !dbg !471
  call void @llvm.dbg.declare(metadata i8** %5, metadata !472, metadata !102), !dbg !473
  %6 = load i8*, i8** %3, align 8, !dbg !474
  store i8* %6, i8** %5, align 8, !dbg !473
  br label %7, !dbg !475

; <label>:7:                                      ; preds = %70, %2
  %8 = load i8*, i8** %5, align 8, !dbg !476
  %9 = load i8, i8* %8, align 1, !dbg !478
  %10 = zext i8 %9 to i32, !dbg !478
  %11 = icmp ne i32 %10, 0, !dbg !479
  br i1 %11, label %12, label %71, !dbg !480

; <label>:12:                                     ; preds = %7
  %13 = load i8*, i8** %5, align 8, !dbg !481
  %14 = getelementptr inbounds i8, i8* %13, i64 0, !dbg !481
  %15 = load i8, i8* %14, align 1, !dbg !481
  %16 = zext i8 %15 to i32, !dbg !484
  %17 = icmp sle i32 129, %16, !dbg !485
  br i1 %17, label %18, label %63, !dbg !486

; <label>:18:                                     ; preds = %12
  %19 = load i8*, i8** %5, align 8, !dbg !487
  %20 = getelementptr inbounds i8, i8* %19, i64 0, !dbg !487
  %21 = load i8, i8* %20, align 1, !dbg !487
  %22 = zext i8 %21 to i32, !dbg !489
  %23 = icmp sle i32 %22, 254, !dbg !490
  br i1 %23, label %24, label %63, !dbg !491

; <label>:24:                                     ; preds = %18
  %25 = load i8*, i8** %5, align 8, !dbg !492
  %26 = getelementptr inbounds i8, i8* %25, i64 1, !dbg !492
  %27 = load i8, i8* %26, align 1, !dbg !492
  %28 = zext i8 %27 to i32, !dbg !494
  %29 = icmp sle i32 64, %28, !dbg !495
  br i1 %29, label %30, label %36, !dbg !496

; <label>:30:                                     ; preds = %24
  %31 = load i8*, i8** %5, align 8, !dbg !497
  %32 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !497
  %33 = load i8, i8* %32, align 1, !dbg !497
  %34 = zext i8 %33 to i32, !dbg !499
  %35 = icmp sle i32 %34, 126, !dbg !500
  br i1 %35, label %48, label %36, !dbg !501

; <label>:36:                                     ; preds = %30, %24
  %37 = load i8*, i8** %5, align 8, !dbg !502
  %38 = getelementptr inbounds i8, i8* %37, i64 1, !dbg !502
  %39 = load i8, i8* %38, align 1, !dbg !502
  %40 = zext i8 %39 to i32, !dbg !504
  %41 = icmp sle i32 128, %40, !dbg !505
  br i1 %41, label %42, label %63, !dbg !506

; <label>:42:                                     ; preds = %36
  %43 = load i8*, i8** %5, align 8, !dbg !507
  %44 = getelementptr inbounds i8, i8* %43, i64 1, !dbg !507
  %45 = load i8, i8* %44, align 1, !dbg !507
  %46 = zext i8 %45 to i32, !dbg !509
  %47 = icmp sle i32 %46, 254, !dbg !510
  br i1 %47, label %48, label %63, !dbg !511

; <label>:48:                                     ; preds = %42, %30
  %49 = load i8*, i8** %5, align 8, !dbg !512
  %50 = getelementptr inbounds i8, i8* %49, i64 0, !dbg !512
  %51 = load i8, i8* %50, align 1, !dbg !512
  %52 = zext i8 %51 to i32, !dbg !512
  %53 = shl i32 %52, 8, !dbg !514
  %54 = load i8*, i8** %5, align 8, !dbg !515
  %55 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !515
  %56 = load i8, i8* %55, align 1, !dbg !515
  %57 = zext i8 %56 to i32, !dbg !515
  %58 = or i32 %53, %57, !dbg !516
  %59 = load i32*, i32** %4, align 8, !dbg !517
  %60 = getelementptr inbounds i32, i32* %59, i32 1, !dbg !517
  store i32* %60, i32** %4, align 8, !dbg !517
  store i32 %58, i32* %59, align 4, !dbg !518
  %61 = load i8*, i8** %5, align 8, !dbg !519
  %62 = getelementptr inbounds i8, i8* %61, i64 2, !dbg !519
  store i8* %62, i8** %5, align 8, !dbg !519
  br label %70, !dbg !520

; <label>:63:                                     ; preds = %42, %36, %18, %12
  %64 = load i8*, i8** %5, align 8, !dbg !521
  %65 = getelementptr inbounds i8, i8* %64, i32 1, !dbg !521
  store i8* %65, i8** %5, align 8, !dbg !521
  %66 = load i8, i8* %64, align 1, !dbg !523
  %67 = zext i8 %66 to i32, !dbg !523
  %68 = load i32*, i32** %4, align 8, !dbg !524
  %69 = getelementptr inbounds i32, i32* %68, i32 1, !dbg !524
  store i32* %69, i32** %4, align 8, !dbg !524
  store i32 %67, i32* %68, align 4, !dbg !525
  br label %70

; <label>:70:                                     ; preds = %63, %48
  br label %7, !dbg !526, !llvm.loop !528

; <label>:71:                                     ; preds = %7
  %72 = load i32*, i32** %4, align 8, !dbg !529
  store i32 0, i32* %72, align 4, !dbg !530
  ret void, !dbg !531
}

; Function Attrs: nounwind uwtable
define void @gui_entry_move(%struct.GUI_ENTRY_REC*, i32, i32, i32) #0 !dbg !532 {
  %5 = alloca %struct.GUI_ENTRY_REC*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.GUI_ENTRY_REC* %0, %struct.GUI_ENTRY_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_REC** %5, metadata !535, metadata !102), !dbg !536
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !537, metadata !102), !dbg !538
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !539, metadata !102), !dbg !540
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !541, metadata !102), !dbg !542
  call void @llvm.dbg.declare(metadata i32* %9, metadata !543, metadata !102), !dbg !544
  br label %10, !dbg !545, !llvm.loop !546

; <label>:10:                                     ; preds = %4
  %11 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %5, align 8, !dbg !547
  %12 = icmp ne %struct.GUI_ENTRY_REC* %11, null, !dbg !551
  br i1 %12, label %13, label %14, !dbg !547

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !552

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gui_entry_move, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0)), !dbg !555
  br label %84, !dbg !558

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !559

; <label>:16:                                     ; preds = %15
  %17 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %5, align 8, !dbg !561
  %18 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %17, i32 0, i32 5, !dbg !563
  %19 = load i32, i32* %18, align 8, !dbg !563
  %20 = load i32, i32* %6, align 4, !dbg !564
  %21 = icmp ne i32 %19, %20, !dbg !565
  br i1 %21, label %28, label %22, !dbg !566

; <label>:22:                                     ; preds = %16
  %23 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %5, align 8, !dbg !567
  %24 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %23, i32 0, i32 6, !dbg !569
  %25 = load i32, i32* %24, align 4, !dbg !569
  %26 = load i32, i32* %7, align 4, !dbg !570
  %27 = icmp ne i32 %25, %26, !dbg !571
  br i1 %27, label %28, label %39, !dbg !572

; <label>:28:                                     ; preds = %22, %16
  %29 = load i32, i32* %6, align 4, !dbg !573
  %30 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %5, align 8, !dbg !575
  %31 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %30, i32 0, i32 5, !dbg !576
  store i32 %29, i32* %31, align 8, !dbg !577
  %32 = load i32, i32* %7, align 4, !dbg !578
  %33 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %5, align 8, !dbg !579
  %34 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %33, i32 0, i32 6, !dbg !580
  store i32 %32, i32* %34, align 4, !dbg !581
  %35 = load i32, i32* %8, align 4, !dbg !582
  %36 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %5, align 8, !dbg !583
  %37 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %36, i32 0, i32 7, !dbg !584
  store i32 %35, i32* %37, align 8, !dbg !585
  %38 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %5, align 8, !dbg !586
  call void @gui_entry_redraw(%struct.GUI_ENTRY_REC* %38), !dbg !587
  br label %84, !dbg !588

; <label>:39:                                     ; preds = %22
  %40 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %5, align 8, !dbg !589
  %41 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %40, i32 0, i32 7, !dbg !591
  %42 = load i32, i32* %41, align 8, !dbg !591
  %43 = load i32, i32* %8, align 4, !dbg !592
  %44 = icmp eq i32 %42, %43, !dbg !593
  br i1 %44, label %45, label %46, !dbg !594

; <label>:45:                                     ; preds = %39
  br label %84, !dbg !595

; <label>:46:                                     ; preds = %39
  %47 = load i32, i32* %8, align 4, !dbg !596
  %48 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %5, align 8, !dbg !598
  %49 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %48, i32 0, i32 7, !dbg !599
  %50 = load i32, i32* %49, align 8, !dbg !599
  %51 = icmp sgt i32 %47, %50, !dbg !600
  br i1 %51, label %52, label %59, !dbg !601

; <label>:52:                                     ; preds = %46
  %53 = load i32, i32* %8, align 4, !dbg !602
  store i32 %53, i32* %9, align 4, !dbg !604
  %54 = load i32, i32* %8, align 4, !dbg !605
  %55 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %5, align 8, !dbg !606
  %56 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %55, i32 0, i32 7, !dbg !607
  store i32 %54, i32* %56, align 8, !dbg !608
  %57 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %5, align 8, !dbg !609
  %58 = load i32, i32* %9, align 4, !dbg !610
  call void @gui_entry_redraw_from(%struct.GUI_ENTRY_REC* %57, i32 %58), !dbg !611
  br label %82, !dbg !612

; <label>:59:                                     ; preds = %46
  %60 = load i32, i32* %8, align 4, !dbg !613
  %61 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %5, align 8, !dbg !615
  %62 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %61, i32 0, i32 7, !dbg !616
  store i32 %60, i32* %62, align 8, !dbg !617
  %63 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %5, align 8, !dbg !618
  %64 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %63, i32 0, i32 8, !dbg !620
  %65 = load i32, i32* %64, align 4, !dbg !620
  %66 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %5, align 8, !dbg !621
  %67 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %66, i32 0, i32 9, !dbg !622
  %68 = load i32, i32* %67, align 8, !dbg !622
  %69 = sub nsw i32 %65, %68, !dbg !623
  %70 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %5, align 8, !dbg !624
  %71 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %70, i32 0, i32 7, !dbg !625
  %72 = load i32, i32* %71, align 8, !dbg !625
  %73 = sub nsw i32 %72, 2, !dbg !626
  %74 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %5, align 8, !dbg !627
  %75 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %74, i32 0, i32 12, !dbg !628
  %76 = load i32, i32* %75, align 4, !dbg !628
  %77 = sub nsw i32 %73, %76, !dbg !629
  %78 = icmp sgt i32 %69, %77, !dbg !630
  br i1 %78, label %79, label %81, !dbg !631

; <label>:79:                                     ; preds = %59
  %80 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %5, align 8, !dbg !632
  call void @gui_entry_fix_cursor(%struct.GUI_ENTRY_REC* %80), !dbg !634
  br label %81, !dbg !635

; <label>:81:                                     ; preds = %79, %59
  br label %82

; <label>:82:                                     ; preds = %81, %52
  %83 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %5, align 8, !dbg !636
  call void @gui_entry_draw(%struct.GUI_ENTRY_REC* %83), !dbg !637
  br label %84, !dbg !638

; <label>:84:                                     ; preds = %82, %45, %28, %14
  ret void, !dbg !639
}

; Function Attrs: nounwind uwtable
define void @gui_entry_redraw(%struct.GUI_ENTRY_REC*) #0 !dbg !641 {
  %2 = alloca %struct.GUI_ENTRY_REC*, align 8
  store %struct.GUI_ENTRY_REC* %0, %struct.GUI_ENTRY_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_REC** %2, metadata !642, metadata !102), !dbg !643
  br label %3, !dbg !644, !llvm.loop !645

; <label>:3:                                      ; preds = %1
  %4 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !646
  %5 = icmp ne %struct.GUI_ENTRY_REC* %4, null, !dbg !650
  br i1 %5, label %6, label %7, !dbg !646

; <label>:6:                                      ; preds = %3
  br label %8, !dbg !651

; <label>:7:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gui_entry_redraw, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0)), !dbg !654
  br label %14, !dbg !657

; <label>:8:                                      ; preds = %6
  br label %9, !dbg !658

; <label>:9:                                      ; preds = %8
  %10 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !660
  call void @gui_entry_set_prompt(%struct.GUI_ENTRY_REC* %10, i8* null), !dbg !661
  %11 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !662
  call void @gui_entry_redraw_from(%struct.GUI_ENTRY_REC* %11, i32 0), !dbg !663
  %12 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !664
  call void @gui_entry_fix_cursor(%struct.GUI_ENTRY_REC* %12), !dbg !665
  %13 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !666
  call void @gui_entry_draw(%struct.GUI_ENTRY_REC* %13), !dbg !667
  br label %14, !dbg !668

; <label>:14:                                     ; preds = %9, %7
  ret void, !dbg !669
}

; Function Attrs: nounwind uwtable
define internal void @gui_entry_redraw_from(%struct.GUI_ENTRY_REC*, i32) #0 !dbg !671 {
  %3 = alloca %struct.GUI_ENTRY_REC*, align 8
  %4 = alloca i32, align 4
  store %struct.GUI_ENTRY_REC* %0, %struct.GUI_ENTRY_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_REC** %3, metadata !674, metadata !102), !dbg !675
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !676, metadata !102), !dbg !677
  %5 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !678
  %6 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %5, i32 0, i32 9, !dbg !679
  %7 = load i32, i32* %6, align 8, !dbg !679
  %8 = load i32, i32* %4, align 4, !dbg !680
  %9 = sub nsw i32 %8, %7, !dbg !680
  store i32 %9, i32* %4, align 4, !dbg !680
  %10 = load i32, i32* %4, align 4, !dbg !681
  %11 = icmp slt i32 %10, 0, !dbg !683
  br i1 %11, label %12, label %13, !dbg !684

; <label>:12:                                     ; preds = %2
  store i32 0, i32* %4, align 4, !dbg !685
  br label %13, !dbg !687

; <label>:13:                                     ; preds = %12, %2
  %14 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !688
  %15 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %14, i32 0, i32 14, !dbg !690
  %16 = load i32, i32* %15, align 8, !dbg !690
  %17 = icmp eq i32 %16, -1, !dbg !691
  br i1 %17, label %24, label %18, !dbg !692

; <label>:18:                                     ; preds = %13
  %19 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !693
  %20 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %19, i32 0, i32 14, !dbg !694
  %21 = load i32, i32* %20, align 8, !dbg !694
  %22 = load i32, i32* %4, align 4, !dbg !695
  %23 = icmp sgt i32 %21, %22, !dbg !696
  br i1 %23, label %24, label %28, !dbg !697

; <label>:24:                                     ; preds = %18, %13
  %25 = load i32, i32* %4, align 4, !dbg !699
  %26 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !700
  %27 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %26, i32 0, i32 14, !dbg !701
  store i32 %25, i32* %27, align 8, !dbg !702
  br label %28, !dbg !700

; <label>:28:                                     ; preds = %24, %18
  ret void, !dbg !703
}

; Function Attrs: nounwind uwtable
define internal void @gui_entry_fix_cursor(%struct.GUI_ENTRY_REC*) #0 !dbg !704 {
  %2 = alloca %struct.GUI_ENTRY_REC*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.GUI_ENTRY_REC* %0, %struct.GUI_ENTRY_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_REC** %2, metadata !705, metadata !102), !dbg !706
  call void @llvm.dbg.declare(metadata i32* %3, metadata !707, metadata !102), !dbg !708
  call void @llvm.dbg.declare(metadata i32* %4, metadata !709, metadata !102), !dbg !710
  %6 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !711
  %7 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !712
  %8 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %7, i32 0, i32 9, !dbg !713
  %9 = load i32, i32* %8, align 8, !dbg !713
  %10 = call i32 @pos2scrpos(%struct.GUI_ENTRY_REC* %6, i32 %9, i32 0), !dbg !714
  store i32 %10, i32* %4, align 4, !dbg !710
  call void @llvm.dbg.declare(metadata i32* %5, metadata !715, metadata !102), !dbg !716
  %11 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !717
  %12 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !718
  %13 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %12, i32 0, i32 8, !dbg !719
  %14 = load i32, i32* %13, align 4, !dbg !719
  %15 = call i32 @pos2scrpos(%struct.GUI_ENTRY_REC* %11, i32 %14, i32 1), !dbg !720
  store i32 %15, i32* %5, align 4, !dbg !716
  %16 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !721
  %17 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %16, i32 0, i32 9, !dbg !722
  %18 = load i32, i32* %17, align 8, !dbg !722
  store i32 %18, i32* %3, align 4, !dbg !723
  %19 = load i32, i32* %5, align 4, !dbg !724
  %20 = load i32, i32* %4, align 4, !dbg !726
  %21 = sub nsw i32 %19, %20, !dbg !727
  %22 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !728
  %23 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %22, i32 0, i32 7, !dbg !729
  %24 = load i32, i32* %23, align 8, !dbg !729
  %25 = sub nsw i32 %24, 2, !dbg !730
  %26 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !731
  %27 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %26, i32 0, i32 12, !dbg !732
  %28 = load i32, i32* %27, align 4, !dbg !732
  %29 = sub nsw i32 %25, %28, !dbg !733
  %30 = icmp slt i32 %21, %29, !dbg !734
  br i1 %30, label %31, label %42, !dbg !735

; <label>:31:                                     ; preds = %1
  %32 = load i32, i32* %5, align 4, !dbg !736
  %33 = load i32, i32* %4, align 4, !dbg !738
  %34 = sub nsw i32 %32, %33, !dbg !739
  %35 = icmp sgt i32 %34, 0, !dbg !740
  br i1 %35, label %36, label %42, !dbg !741

; <label>:36:                                     ; preds = %31
  %37 = load i32, i32* %5, align 4, !dbg !742
  %38 = load i32, i32* %4, align 4, !dbg !744
  %39 = sub nsw i32 %37, %38, !dbg !745
  %40 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !746
  %41 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %40, i32 0, i32 10, !dbg !747
  store i32 %39, i32* %41, align 4, !dbg !748
  br label %86, !dbg !749

; <label>:42:                                     ; preds = %31, %1
  %43 = load i32, i32* %5, align 4, !dbg !750
  %44 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !753
  %45 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %44, i32 0, i32 7, !dbg !754
  %46 = load i32, i32* %45, align 8, !dbg !754
  %47 = sub nsw i32 %46, 1, !dbg !755
  %48 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !756
  %49 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %48, i32 0, i32 12, !dbg !757
  %50 = load i32, i32* %49, align 4, !dbg !757
  %51 = sub nsw i32 %47, %50, !dbg !758
  %52 = icmp slt i32 %43, %51, !dbg !759
  br i1 %52, label %53, label %59, !dbg !750

; <label>:53:                                     ; preds = %42
  %54 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !760
  %55 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %54, i32 0, i32 9, !dbg !762
  store i32 0, i32* %55, align 8, !dbg !763
  %56 = load i32, i32* %5, align 4, !dbg !764
  %57 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !765
  %58 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %57, i32 0, i32 10, !dbg !766
  store i32 %56, i32* %58, align 4, !dbg !767
  br label %85, !dbg !768

; <label>:59:                                     ; preds = %42
  %60 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !769
  %61 = load i32, i32* %5, align 4, !dbg !771
  %62 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !772
  %63 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %62, i32 0, i32 7, !dbg !773
  %64 = load i32, i32* %63, align 8, !dbg !773
  %65 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !774
  %66 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %65, i32 0, i32 12, !dbg !775
  %67 = load i32, i32* %66, align 4, !dbg !775
  %68 = sub nsw i32 %64, %67, !dbg !776
  %69 = mul nsw i32 %68, 2, !dbg !777
  %70 = sdiv i32 %69, 3, !dbg !778
  %71 = sub nsw i32 %61, %70, !dbg !779
  %72 = call i32 @scrpos2pos(%struct.GUI_ENTRY_REC* %60, i32 %71), !dbg !780
  %73 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !781
  %74 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %73, i32 0, i32 9, !dbg !782
  store i32 %72, i32* %74, align 8, !dbg !783
  %75 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !784
  %76 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !785
  %77 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %76, i32 0, i32 9, !dbg !786
  %78 = load i32, i32* %77, align 8, !dbg !786
  %79 = call i32 @pos2scrpos(%struct.GUI_ENTRY_REC* %75, i32 %78, i32 0), !dbg !787
  store i32 %79, i32* %4, align 4, !dbg !788
  %80 = load i32, i32* %5, align 4, !dbg !789
  %81 = load i32, i32* %4, align 4, !dbg !790
  %82 = sub nsw i32 %80, %81, !dbg !791
  %83 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !792
  %84 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %83, i32 0, i32 10, !dbg !793
  store i32 %82, i32* %84, align 4, !dbg !794
  br label %85

; <label>:85:                                     ; preds = %59, %53
  br label %86

; <label>:86:                                     ; preds = %85, %36
  %87 = load i32, i32* %3, align 4, !dbg !795
  %88 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !797
  %89 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %88, i32 0, i32 9, !dbg !798
  %90 = load i32, i32* %89, align 8, !dbg !798
  %91 = icmp ne i32 %87, %90, !dbg !799
  br i1 %91, label %92, label %95, !dbg !800

; <label>:92:                                     ; preds = %86
  %93 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !801
  %94 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %93, i32 0, i32 14, !dbg !802
  store i32 0, i32* %94, align 8, !dbg !803
  br label %95, !dbg !801

; <label>:95:                                     ; preds = %92, %86
  ret void, !dbg !804
}

; Function Attrs: nounwind uwtable
define internal void @gui_entry_draw(%struct.GUI_ENTRY_REC*) #0 !dbg !805 {
  %2 = alloca %struct.GUI_ENTRY_REC*, align 8
  store %struct.GUI_ENTRY_REC* %0, %struct.GUI_ENTRY_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_REC** %2, metadata !806, metadata !102), !dbg !807
  %3 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !808
  %4 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %3, i32 0, i32 14, !dbg !810
  %5 = load i32, i32* %4, align 8, !dbg !810
  %6 = icmp sge i32 %5, 0, !dbg !811
  br i1 %6, label %7, label %14, !dbg !812

; <label>:7:                                      ; preds = %1
  %8 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !813
  %9 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !815
  %10 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %9, i32 0, i32 14, !dbg !816
  %11 = load i32, i32* %10, align 8, !dbg !816
  call void @gui_entry_draw_from(%struct.GUI_ENTRY_REC* %8, i32 %11), !dbg !817
  %12 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !818
  %13 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %12, i32 0, i32 14, !dbg !819
  store i32 -1, i32* %13, align 8, !dbg !820
  br label %14, !dbg !821

; <label>:14:                                     ; preds = %7, %1
  %15 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !822
  %16 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %15, i32 0, i32 5, !dbg !823
  %17 = load i32, i32* %16, align 8, !dbg !823
  %18 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !824
  %19 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %18, i32 0, i32 10, !dbg !825
  %20 = load i32, i32* %19, align 4, !dbg !825
  %21 = add nsw i32 %17, %20, !dbg !826
  %22 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !827
  %23 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %22, i32 0, i32 12, !dbg !828
  %24 = load i32, i32* %23, align 4, !dbg !828
  %25 = add nsw i32 %21, %24, !dbg !829
  %26 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !830
  %27 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %26, i32 0, i32 6, !dbg !831
  %28 = load i32, i32* %27, align 4, !dbg !831
  call void @term_move_cursor(i32 %25, i32 %28), !dbg !832
  call void @term_refresh(%struct._TERM_WINDOW* null), !dbg !833
  ret void, !dbg !834
}

declare void @term_move_cursor(i32, i32) #2

declare void @term_refresh(%struct._TERM_WINDOW*) #2

; Function Attrs: nounwind uwtable
define void @gui_entry_set_prompt(%struct.GUI_ENTRY_REC*, i8*) #0 !dbg !835 {
  %3 = alloca %struct.GUI_ENTRY_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.GUI_ENTRY_REC* %0, %struct.GUI_ENTRY_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_REC** %3, metadata !838, metadata !102), !dbg !839
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !840, metadata !102), !dbg !841
  call void @llvm.dbg.declare(metadata i32* %5, metadata !842, metadata !102), !dbg !843
  br label %6, !dbg !844, !llvm.loop !845

; <label>:6:                                      ; preds = %2
  %7 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !846
  %8 = icmp ne %struct.GUI_ENTRY_REC* %7, null, !dbg !850
  br i1 %8, label %9, label %10, !dbg !846

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !851

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gui_entry_set_prompt, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0)), !dbg !854
  br label %59, !dbg !857

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !858

; <label>:12:                                     ; preds = %11
  %13 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !860
  %14 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %13, i32 0, i32 12, !dbg !861
  %15 = load i32, i32* %14, align 4, !dbg !861
  store i32 %15, i32* %5, align 4, !dbg !862
  %16 = load i8*, i8** %4, align 8, !dbg !863
  %17 = icmp ne i8* %16, null, !dbg !865
  br i1 %17, label %18, label %35, !dbg !866

; <label>:18:                                     ; preds = %12
  %19 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !867
  %20 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %19, i32 0, i32 13, !dbg !869
  %21 = load i8*, i8** %20, align 8, !dbg !869
  call void @g_free(i8* %21), !dbg !870
  %22 = load i8*, i8** %4, align 8, !dbg !871
  %23 = call noalias i8* @g_strdup(i8* %22), !dbg !872
  %24 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !873
  %25 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %24, i32 0, i32 13, !dbg !874
  store i8* %23, i8** %25, align 8, !dbg !875
  %26 = load i8*, i8** %4, align 8, !dbg !876
  %27 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !877
  %28 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %27, i32 0, i32 15, !dbg !878
  %29 = load i8, i8* %28, align 4, !dbg !878
  %30 = and i8 %29, 1, !dbg !878
  %31 = zext i8 %30 to i32, !dbg !878
  %32 = call i32 @scrlen_str(i8* %26, i32 %31), !dbg !879
  %33 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !880
  %34 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %33, i32 0, i32 12, !dbg !881
  store i32 %32, i32* %34, align 4, !dbg !882
  br label %35, !dbg !883

; <label>:35:                                     ; preds = %18, %12
  %36 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !884
  %37 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %36, i32 0, i32 13, !dbg !886
  %38 = load i8*, i8** %37, align 8, !dbg !886
  %39 = icmp ne i8* %38, null, !dbg !887
  br i1 %39, label %40, label %50, !dbg !888

; <label>:40:                                     ; preds = %35
  %41 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !889
  %42 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %41, i32 0, i32 5, !dbg !890
  %43 = load i32, i32* %42, align 8, !dbg !890
  %44 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !891
  %45 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %44, i32 0, i32 6, !dbg !892
  %46 = load i32, i32* %45, align 4, !dbg !892
  %47 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !893
  %48 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %47, i32 0, i32 13, !dbg !894
  %49 = load i8*, i8** %48, align 8, !dbg !894
  call void @gui_printtext_internal(i32 %43, i32 %46, i8* %49), !dbg !895
  br label %50, !dbg !895

; <label>:50:                                     ; preds = %40, %35
  %51 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !896
  %52 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %51, i32 0, i32 12, !dbg !898
  %53 = load i32, i32* %52, align 4, !dbg !898
  %54 = load i32, i32* %5, align 4, !dbg !899
  %55 = icmp ne i32 %53, %54, !dbg !900
  br i1 %55, label %56, label %59, !dbg !901

; <label>:56:                                     ; preds = %50
  %57 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !902
  call void @gui_entry_fix_cursor(%struct.GUI_ENTRY_REC* %57), !dbg !904
  %58 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !905
  call void @gui_entry_draw(%struct.GUI_ENTRY_REC* %58), !dbg !906
  br label %59, !dbg !907

; <label>:59:                                     ; preds = %10, %56, %50
  ret void, !dbg !908
}

declare noalias i8* @g_strdup(i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @scrlen_str(i8*, i32) #0 !dbg !909 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !912, metadata !102), !dbg !913
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !914, metadata !102), !dbg !915
  call void @llvm.dbg.declare(metadata i32* %6, metadata !916, metadata !102), !dbg !917
  store i32 0, i32* %6, align 4, !dbg !917
  call void @llvm.dbg.declare(metadata i8** %7, metadata !918, metadata !102), !dbg !919
  br label %8, !dbg !920, !llvm.loop !921

; <label>:8:                                      ; preds = %2
  %9 = load i8*, i8** %4, align 8, !dbg !922
  %10 = icmp ne i8* %9, null, !dbg !926
  br i1 %10, label %11, label %12, !dbg !922

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !927

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.scrlen_str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0)), !dbg !930
  store i32 0, i32* %3, align 4, !dbg !933
  br label %24, !dbg !933

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !934

; <label>:14:                                     ; preds = %13
  %15 = load i8*, i8** %4, align 8, !dbg !936
  %16 = call i8* @strip_codes(i8* %15), !dbg !937
  store i8* %16, i8** %7, align 8, !dbg !938
  %17 = load i8*, i8** %7, align 8, !dbg !939
  %18 = load i32, i32* %5, align 4, !dbg !940
  %19 = icmp ne i32 %18, 0, !dbg !940
  %20 = select i1 %19, i32 1, i32 0, !dbg !940
  %21 = call i32 @string_width(i8* %17, i32 %20), !dbg !941
  store i32 %21, i32* %6, align 4, !dbg !942
  %22 = load i8*, i8** %7, align 8, !dbg !943
  call void @g_free(i8* %22), !dbg !944
  %23 = load i32, i32* %6, align 4, !dbg !945
  store i32 %23, i32* %3, align 4, !dbg !946
  br label %24, !dbg !946

; <label>:24:                                     ; preds = %14, %12
  %25 = load i32, i32* %3, align 4, !dbg !947
  ret i32 %25, !dbg !947
}

declare void @gui_printtext_internal(i32, i32, i8*) #2

; Function Attrs: nounwind uwtable
define void @gui_entry_set_hidden(%struct.GUI_ENTRY_REC*, i32) #0 !dbg !948 {
  %3 = alloca %struct.GUI_ENTRY_REC*, align 8
  %4 = alloca i32, align 4
  store %struct.GUI_ENTRY_REC* %0, %struct.GUI_ENTRY_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_REC** %3, metadata !949, metadata !102), !dbg !950
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !951, metadata !102), !dbg !952
  br label %5, !dbg !953, !llvm.loop !954

; <label>:5:                                      ; preds = %2
  %6 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !955
  %7 = icmp ne %struct.GUI_ENTRY_REC* %6, null, !dbg !959
  br i1 %7, label %8, label %9, !dbg !955

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !960

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gui_entry_set_hidden, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0)), !dbg !963
  br label %15, !dbg !966

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !967

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %4, align 4, !dbg !969
  %13 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !970
  %14 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %13, i32 0, i32 11, !dbg !971
  store i32 %12, i32* %14, align 8, !dbg !972
  br label %15, !dbg !973

; <label>:15:                                     ; preds = %11, %9
  ret void, !dbg !974
}

; Function Attrs: nounwind uwtable
define void @gui_entry_set_utf8(%struct.GUI_ENTRY_REC*, i32) #0 !dbg !976 {
  %3 = alloca %struct.GUI_ENTRY_REC*, align 8
  %4 = alloca i32, align 4
  store %struct.GUI_ENTRY_REC* %0, %struct.GUI_ENTRY_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_REC** %3, metadata !977, metadata !102), !dbg !978
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !979, metadata !102), !dbg !980
  br label %5, !dbg !981, !llvm.loop !982

; <label>:5:                                      ; preds = %2
  %6 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !983
  %7 = icmp ne %struct.GUI_ENTRY_REC* %6, null, !dbg !987
  br i1 %7, label %8, label %9, !dbg !983

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !988

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gui_entry_set_utf8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0)), !dbg !991
  br label %21, !dbg !994

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !995

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %4, align 4, !dbg !997
  %13 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !998
  %14 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %13, i32 0, i32 15, !dbg !999
  %15 = trunc i32 %12 to i8, !dbg !1000
  %16 = load i8, i8* %14, align 4, !dbg !1000
  %17 = and i8 %15, 1, !dbg !1000
  %18 = and i8 %16, -2, !dbg !1000
  %19 = or i8 %18, %17, !dbg !1000
  store i8 %19, i8* %14, align 4, !dbg !1000
  %20 = zext i8 %17 to i32, !dbg !1000
  br label %21, !dbg !1001

; <label>:21:                                     ; preds = %11, %9
  ret void, !dbg !1002
}

; Function Attrs: nounwind uwtable
define void @gui_entry_set_text(%struct.GUI_ENTRY_REC*, i8*) #0 !dbg !1004 {
  %3 = alloca %struct.GUI_ENTRY_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct.GUI_ENTRY_REC* %0, %struct.GUI_ENTRY_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_REC** %3, metadata !1005, metadata !102), !dbg !1006
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1007, metadata !102), !dbg !1008
  br label %5, !dbg !1009, !llvm.loop !1010

; <label>:5:                                      ; preds = %2
  %6 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1011
  %7 = icmp ne %struct.GUI_ENTRY_REC* %6, null, !dbg !1015
  br i1 %7, label %8, label %9, !dbg !1011

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !1016

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gui_entry_set_text, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0)), !dbg !1019
  br label %30, !dbg !1022

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !1023

; <label>:11:                                     ; preds = %10
  br label %12, !dbg !1025, !llvm.loop !1026

; <label>:12:                                     ; preds = %11
  %13 = load i8*, i8** %4, align 8, !dbg !1027
  %14 = icmp ne i8* %13, null, !dbg !1031
  br i1 %14, label %15, label %16, !dbg !1027

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !1032

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gui_entry_set_text, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0)), !dbg !1035
  br label %30, !dbg !1038

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !1039

; <label>:18:                                     ; preds = %17
  %19 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1041
  %20 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %19, i32 0, i32 0, !dbg !1042
  store i32 0, i32* %20, align 8, !dbg !1043
  %21 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1044
  %22 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %21, i32 0, i32 8, !dbg !1045
  store i32 0, i32* %22, align 4, !dbg !1046
  %23 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1047
  %24 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %23, i32 0, i32 2, !dbg !1048
  %25 = load i32*, i32** %24, align 8, !dbg !1048
  %26 = getelementptr inbounds i32, i32* %25, i64 0, !dbg !1047
  store i32 0, i32* %26, align 4, !dbg !1049
  %27 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1050
  call void @destroy_extents(%struct.GUI_ENTRY_REC* %27), !dbg !1051
  %28 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1052
  %29 = load i8*, i8** %4, align 8, !dbg !1053
  call void @gui_entry_insert_text(%struct.GUI_ENTRY_REC* %28, i8* %29), !dbg !1054
  br label %30, !dbg !1055

; <label>:30:                                     ; preds = %18, %16, %9
  ret void, !dbg !1056
}

; Function Attrs: nounwind uwtable
define void @gui_entry_insert_text(%struct.GUI_ENTRY_REC*, i8*) #0 !dbg !1058 {
  %3 = alloca %struct.GUI_ENTRY_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.GUI_ENTRY_REC* %0, %struct.GUI_ENTRY_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_REC** %3, metadata !1059, metadata !102), !dbg !1060
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1061, metadata !102), !dbg !1062
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1063, metadata !102), !dbg !1064
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1065, metadata !102), !dbg !1066
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1067, metadata !102), !dbg !1068
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1069, metadata !102), !dbg !1070
  br label %9, !dbg !1071, !llvm.loop !1072

; <label>:9:                                      ; preds = %2
  %10 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1073
  %11 = icmp ne %struct.GUI_ENTRY_REC* %10, null, !dbg !1077
  br i1 %11, label %12, label %13, !dbg !1073

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !1078

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gui_entry_insert_text, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0)), !dbg !1081
  br label %264, !dbg !1084

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !1085

; <label>:15:                                     ; preds = %14
  br label %16, !dbg !1087, !llvm.loop !1088

; <label>:16:                                     ; preds = %15
  %17 = load i8*, i8** %4, align 8, !dbg !1089
  %18 = icmp ne i8* %17, null, !dbg !1093
  br i1 %18, label %19, label %20, !dbg !1089

; <label>:19:                                     ; preds = %16
  br label %21, !dbg !1094

; <label>:20:                                     ; preds = %16
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gui_entry_insert_text, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0)), !dbg !1097
  br label %264, !dbg !1100

; <label>:21:                                     ; preds = %19
  br label %22, !dbg !1101

; <label>:22:                                     ; preds = %21
  %23 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1103
  %24 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1104
  %25 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %24, i32 0, i32 8, !dbg !1105
  %26 = load i32, i32* %25, align 4, !dbg !1105
  call void @gui_entry_redraw_from(%struct.GUI_ENTRY_REC* %23, i32 %26), !dbg !1106
  %27 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1107
  %28 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %27, i32 0, i32 15, !dbg !1109
  %29 = load i8, i8* %28, align 4, !dbg !1109
  %30 = and i8 %29, 1, !dbg !1109
  %31 = zext i8 %30 to i32, !dbg !1109
  %32 = icmp ne i32 %31, 0, !dbg !1107
  br i1 %32, label %33, label %40, !dbg !1110

; <label>:33:                                     ; preds = %22
  %34 = load i8*, i8** %4, align 8, !dbg !1111
  %35 = call i32 @g_utf8_validate(i8* %34, i64 -1, i8** %8), !dbg !1113
  %36 = load i8*, i8** %4, align 8, !dbg !1114
  %37 = load i8*, i8** %8, align 8, !dbg !1115
  %38 = call i64 @g_utf8_pointer_to_offset(i8* %36, i8* %37) #7, !dbg !1116
  %39 = trunc i64 %38 to i32, !dbg !1116
  store i32 %39, i32* %7, align 4, !dbg !1117
  br label %51, !dbg !1118

; <label>:40:                                     ; preds = %22
  %41 = load i32, i32* @term_type, align 4, !dbg !1119
  %42 = icmp eq i32 %41, 2, !dbg !1122
  br i1 %42, label %43, label %46, !dbg !1119

; <label>:43:                                     ; preds = %40
  %44 = load i8*, i8** %4, align 8, !dbg !1123
  %45 = call i32 @strlen_big5(i8* %44), !dbg !1124
  store i32 %45, i32* %7, align 4, !dbg !1125
  br label %50, !dbg !1126

; <label>:46:                                     ; preds = %40
  %47 = load i8*, i8** %4, align 8, !dbg !1127
  %48 = call i64 @strlen(i8* %47) #7, !dbg !1128
  %49 = trunc i64 %48 to i32, !dbg !1128
  store i32 %49, i32* %7, align 4, !dbg !1129
  br label %50

; <label>:50:                                     ; preds = %46, %43
  br label %51

; <label>:51:                                     ; preds = %50, %33
  %52 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1130
  %53 = load i32, i32* %7, align 4, !dbg !1131
  call void @entry_text_grow(%struct.GUI_ENTRY_REC* %52, i32 %53), !dbg !1132
  br label %54, !dbg !1133, !llvm.loop !1134

; <label>:54:                                     ; preds = %51
  %55 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1135
  %56 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %55, i32 0, i32 2, !dbg !1138
  %57 = load i32*, i32** %56, align 8, !dbg !1138
  %58 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1139
  %59 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %58, i32 0, i32 8, !dbg !1140
  %60 = load i32, i32* %59, align 4, !dbg !1140
  %61 = sext i32 %60 to i64, !dbg !1141
  %62 = getelementptr inbounds i32, i32* %57, i64 %61, !dbg !1141
  %63 = load i32, i32* %7, align 4, !dbg !1142
  %64 = sext i32 %63 to i64, !dbg !1143
  %65 = getelementptr inbounds i32, i32* %62, i64 %64, !dbg !1143
  %66 = bitcast i32* %65 to i8*, !dbg !1144
  %67 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1145
  %68 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %67, i32 0, i32 2, !dbg !1146
  %69 = load i32*, i32** %68, align 8, !dbg !1146
  %70 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1147
  %71 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %70, i32 0, i32 8, !dbg !1148
  %72 = load i32, i32* %71, align 4, !dbg !1148
  %73 = sext i32 %72 to i64, !dbg !1149
  %74 = getelementptr inbounds i32, i32* %69, i64 %73, !dbg !1149
  %75 = bitcast i32* %74 to i8*, !dbg !1144
  %76 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1150
  %77 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %76, i32 0, i32 0, !dbg !1151
  %78 = load i32, i32* %77, align 8, !dbg !1151
  %79 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1152
  %80 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %79, i32 0, i32 8, !dbg !1153
  %81 = load i32, i32* %80, align 4, !dbg !1153
  %82 = sub nsw i32 %78, %81, !dbg !1154
  %83 = add nsw i32 %82, 1, !dbg !1155
  %84 = sext i32 %83 to i64, !dbg !1156
  %85 = mul i64 %84, 4, !dbg !1157
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %66, i8* %75, i64 %85, i32 4, i1 false), !dbg !1144
  br label %86, !dbg !1158

; <label>:86:                                     ; preds = %54
  %87 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1159
  %88 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %87, i32 0, i32 15, !dbg !1161
  %89 = load i8, i8* %88, align 4, !dbg !1161
  %90 = lshr i8 %89, 4, !dbg !1161
  %91 = and i8 %90, 1, !dbg !1161
  %92 = zext i8 %91 to i32, !dbg !1161
  %93 = icmp ne i32 %92, 0, !dbg !1159
  br i1 %93, label %94, label %149, !dbg !1162

; <label>:94:                                     ; preds = %86
  br label %95, !dbg !1163, !llvm.loop !1165

; <label>:95:                                     ; preds = %94
  %96 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1166
  %97 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %96, i32 0, i32 3, !dbg !1169
  %98 = load i8**, i8*** %97, align 8, !dbg !1169
  %99 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1170
  %100 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %99, i32 0, i32 8, !dbg !1171
  %101 = load i32, i32* %100, align 4, !dbg !1171
  %102 = sext i32 %101 to i64, !dbg !1172
  %103 = getelementptr inbounds i8*, i8** %98, i64 %102, !dbg !1172
  %104 = load i32, i32* %7, align 4, !dbg !1173
  %105 = sext i32 %104 to i64, !dbg !1174
  %106 = getelementptr inbounds i8*, i8** %103, i64 %105, !dbg !1174
  %107 = getelementptr inbounds i8*, i8** %106, i64 1, !dbg !1175
  %108 = bitcast i8** %107 to i8*, !dbg !1176
  %109 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1177
  %110 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %109, i32 0, i32 3, !dbg !1178
  %111 = load i8**, i8*** %110, align 8, !dbg !1178
  %112 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1179
  %113 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %112, i32 0, i32 8, !dbg !1180
  %114 = load i32, i32* %113, align 4, !dbg !1180
  %115 = sext i32 %114 to i64, !dbg !1181
  %116 = getelementptr inbounds i8*, i8** %111, i64 %115, !dbg !1181
  %117 = getelementptr inbounds i8*, i8** %116, i64 1, !dbg !1182
  %118 = bitcast i8** %117 to i8*, !dbg !1176
  %119 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1183
  %120 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %119, i32 0, i32 0, !dbg !1184
  %121 = load i32, i32* %120, align 8, !dbg !1184
  %122 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1185
  %123 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %122, i32 0, i32 8, !dbg !1186
  %124 = load i32, i32* %123, align 4, !dbg !1186
  %125 = sub nsw i32 %121, %124, !dbg !1187
  %126 = sext i32 %125 to i64, !dbg !1188
  %127 = mul i64 %126, 8, !dbg !1189
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %108, i8* %118, i64 %127, i32 8, i1 false), !dbg !1176
  br label %128, !dbg !1190

; <label>:128:                                    ; preds = %95
  store i32 0, i32* %6, align 4, !dbg !1191
  br label %129, !dbg !1193

; <label>:129:                                    ; preds = %145, %128
  %130 = load i32, i32* %6, align 4, !dbg !1194
  %131 = load i32, i32* %7, align 4, !dbg !1197
  %132 = icmp slt i32 %130, %131, !dbg !1198
  br i1 %132, label %133, label %148, !dbg !1199

; <label>:133:                                    ; preds = %129
  %134 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1200
  %135 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %134, i32 0, i32 8, !dbg !1202
  %136 = load i32, i32* %135, align 4, !dbg !1202
  %137 = load i32, i32* %6, align 4, !dbg !1203
  %138 = add nsw i32 %136, %137, !dbg !1204
  %139 = add nsw i32 %138, 1, !dbg !1205
  %140 = sext i32 %139 to i64, !dbg !1206
  %141 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1206
  %142 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %141, i32 0, i32 3, !dbg !1207
  %143 = load i8**, i8*** %142, align 8, !dbg !1207
  %144 = getelementptr inbounds i8*, i8** %143, i64 %140, !dbg !1206
  store i8* null, i8** %144, align 8, !dbg !1208
  br label %145, !dbg !1209

; <label>:145:                                    ; preds = %133
  %146 = load i32, i32* %6, align 4, !dbg !1210
  %147 = add nsw i32 %146, 1, !dbg !1210
  store i32 %147, i32* %6, align 4, !dbg !1210
  br label %129, !dbg !1212, !llvm.loop !1213

; <label>:148:                                    ; preds = %129
  br label %149, !dbg !1215

; <label>:149:                                    ; preds = %148, %86
  %150 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1216
  %151 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %150, i32 0, i32 15, !dbg !1218
  %152 = load i8, i8* %151, align 4, !dbg !1218
  %153 = and i8 %152, 1, !dbg !1218
  %154 = zext i8 %153 to i32, !dbg !1218
  %155 = icmp ne i32 %154, 0, !dbg !1216
  br i1 %155, label %218, label %156, !dbg !1219

; <label>:156:                                    ; preds = %149
  %157 = load i32, i32* @term_type, align 4, !dbg !1220
  %158 = icmp eq i32 %157, 2, !dbg !1223
  br i1 %158, label %159, label %191, !dbg !1224

; <label>:159:                                    ; preds = %156
  %160 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1225
  %161 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %160, i32 0, i32 8, !dbg !1227
  %162 = load i32, i32* %161, align 4, !dbg !1227
  %163 = load i32, i32* %7, align 4, !dbg !1228
  %164 = add nsw i32 %162, %163, !dbg !1229
  %165 = sext i32 %164 to i64, !dbg !1230
  %166 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1230
  %167 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %166, i32 0, i32 2, !dbg !1231
  %168 = load i32*, i32** %167, align 8, !dbg !1231
  %169 = getelementptr inbounds i32, i32* %168, i64 %165, !dbg !1230
  %170 = load i32, i32* %169, align 4, !dbg !1230
  store i32 %170, i32* %5, align 4, !dbg !1232
  %171 = load i8*, i8** %4, align 8, !dbg !1233
  %172 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1234
  %173 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %172, i32 0, i32 2, !dbg !1235
  %174 = load i32*, i32** %173, align 8, !dbg !1235
  %175 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1236
  %176 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %175, i32 0, i32 8, !dbg !1237
  %177 = load i32, i32* %176, align 4, !dbg !1237
  %178 = sext i32 %177 to i64, !dbg !1238
  %179 = getelementptr inbounds i32, i32* %174, i64 %178, !dbg !1238
  call void @big5_to_unichars(i8* %171, i32* %179), !dbg !1239
  %180 = load i32, i32* %5, align 4, !dbg !1240
  %181 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1241
  %182 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %181, i32 0, i32 8, !dbg !1242
  %183 = load i32, i32* %182, align 4, !dbg !1242
  %184 = load i32, i32* %7, align 4, !dbg !1243
  %185 = add nsw i32 %183, %184, !dbg !1244
  %186 = sext i32 %185 to i64, !dbg !1245
  %187 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1245
  %188 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %187, i32 0, i32 2, !dbg !1246
  %189 = load i32*, i32** %188, align 8, !dbg !1246
  %190 = getelementptr inbounds i32, i32* %189, i64 %186, !dbg !1245
  store i32 %180, i32* %190, align 4, !dbg !1247
  br label %217, !dbg !1248

; <label>:191:                                    ; preds = %156
  store i32 0, i32* %6, align 4, !dbg !1249
  br label %192, !dbg !1252

; <label>:192:                                    ; preds = %213, %191
  %193 = load i32, i32* %6, align 4, !dbg !1253
  %194 = load i32, i32* %7, align 4, !dbg !1256
  %195 = icmp slt i32 %193, %194, !dbg !1257
  br i1 %195, label %196, label %216, !dbg !1258

; <label>:196:                                    ; preds = %192
  %197 = load i32, i32* %6, align 4, !dbg !1259
  %198 = sext i32 %197 to i64, !dbg !1260
  %199 = load i8*, i8** %4, align 8, !dbg !1260
  %200 = getelementptr inbounds i8, i8* %199, i64 %198, !dbg !1260
  %201 = load i8, i8* %200, align 1, !dbg !1260
  %202 = sext i8 %201 to i32, !dbg !1260
  %203 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1261
  %204 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %203, i32 0, i32 8, !dbg !1262
  %205 = load i32, i32* %204, align 4, !dbg !1262
  %206 = load i32, i32* %6, align 4, !dbg !1263
  %207 = add nsw i32 %205, %206, !dbg !1264
  %208 = sext i32 %207 to i64, !dbg !1265
  %209 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1265
  %210 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %209, i32 0, i32 2, !dbg !1266
  %211 = load i32*, i32** %210, align 8, !dbg !1266
  %212 = getelementptr inbounds i32, i32* %211, i64 %208, !dbg !1265
  store i32 %202, i32* %212, align 4, !dbg !1267
  br label %213, !dbg !1265

; <label>:213:                                    ; preds = %196
  %214 = load i32, i32* %6, align 4, !dbg !1268
  %215 = add nsw i32 %214, 1, !dbg !1268
  store i32 %215, i32* %6, align 4, !dbg !1268
  br label %192, !dbg !1270, !llvm.loop !1271

; <label>:216:                                    ; preds = %192
  br label %217

; <label>:217:                                    ; preds = %216, %159
  br label %251, !dbg !1273

; <label>:218:                                    ; preds = %149
  %219 = load i8*, i8** %4, align 8, !dbg !1274
  store i8* %219, i8** %8, align 8, !dbg !1276
  store i32 0, i32* %6, align 4, !dbg !1277
  br label %220, !dbg !1279

; <label>:220:                                    ; preds = %247, %218
  %221 = load i32, i32* %6, align 4, !dbg !1280
  %222 = load i32, i32* %7, align 4, !dbg !1283
  %223 = icmp slt i32 %221, %222, !dbg !1284
  br i1 %223, label %224, label %250, !dbg !1285

; <label>:224:                                    ; preds = %220
  %225 = load i8*, i8** %8, align 8, !dbg !1286
  %226 = call i32 @g_utf8_get_char(i8* %225) #7, !dbg !1288
  %227 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1289
  %228 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %227, i32 0, i32 8, !dbg !1290
  %229 = load i32, i32* %228, align 4, !dbg !1290
  %230 = load i32, i32* %6, align 4, !dbg !1291
  %231 = add nsw i32 %229, %230, !dbg !1292
  %232 = sext i32 %231 to i64, !dbg !1293
  %233 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1293
  %234 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %233, i32 0, i32 2, !dbg !1294
  %235 = load i32*, i32** %234, align 8, !dbg !1294
  %236 = getelementptr inbounds i32, i32* %235, i64 %232, !dbg !1293
  store i32 %226, i32* %236, align 4, !dbg !1295
  %237 = load i8*, i8** %8, align 8, !dbg !1296
  %238 = load i8*, i8** %8, align 8, !dbg !1297
  %239 = load i8, i8* %238, align 1, !dbg !1298
  %240 = zext i8 %239 to i64, !dbg !1299
  %241 = load i8*, i8** @g_utf8_skip, align 8, !dbg !1299
  %242 = getelementptr inbounds i8, i8* %241, i64 %240, !dbg !1299
  %243 = load i8, i8* %242, align 1, !dbg !1299
  %244 = sext i8 %243 to i32, !dbg !1299
  %245 = sext i32 %244 to i64, !dbg !1300
  %246 = getelementptr inbounds i8, i8* %237, i64 %245, !dbg !1300
  store i8* %246, i8** %8, align 8, !dbg !1301
  br label %247, !dbg !1302

; <label>:247:                                    ; preds = %224
  %248 = load i32, i32* %6, align 4, !dbg !1303
  %249 = add nsw i32 %248, 1, !dbg !1303
  store i32 %249, i32* %6, align 4, !dbg !1303
  br label %220, !dbg !1305, !llvm.loop !1306

; <label>:250:                                    ; preds = %220
  br label %251

; <label>:251:                                    ; preds = %250, %217
  %252 = load i32, i32* %7, align 4, !dbg !1308
  %253 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1309
  %254 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %253, i32 0, i32 0, !dbg !1310
  %255 = load i32, i32* %254, align 8, !dbg !1311
  %256 = add nsw i32 %255, %252, !dbg !1311
  store i32 %256, i32* %254, align 8, !dbg !1311
  %257 = load i32, i32* %7, align 4, !dbg !1312
  %258 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1313
  %259 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %258, i32 0, i32 8, !dbg !1314
  %260 = load i32, i32* %259, align 4, !dbg !1315
  %261 = add nsw i32 %260, %257, !dbg !1315
  store i32 %261, i32* %259, align 4, !dbg !1315
  %262 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1316
  call void @gui_entry_fix_cursor(%struct.GUI_ENTRY_REC* %262), !dbg !1317
  %263 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1318
  call void @gui_entry_draw(%struct.GUI_ENTRY_REC* %263), !dbg !1319
  br label %264, !dbg !1320

; <label>:264:                                    ; preds = %251, %20, %13
  ret void, !dbg !1321
}

; Function Attrs: nounwind uwtable
define i8* @gui_entry_get_text(%struct.GUI_ENTRY_REC*) #0 !dbg !1323 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.GUI_ENTRY_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.GUI_ENTRY_REC* %0, %struct.GUI_ENTRY_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_REC** %3, metadata !1326, metadata !102), !dbg !1327
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1328, metadata !102), !dbg !1329
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1330, metadata !102), !dbg !1331
  br label %6, !dbg !1332, !llvm.loop !1333

; <label>:6:                                      ; preds = %1
  %7 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1334
  %8 = icmp ne %struct.GUI_ENTRY_REC* %7, null, !dbg !1338
  br i1 %8, label %9, label %10, !dbg !1334

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !1339

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gui_entry_get_text, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0)), !dbg !1342
  store i8* null, i8** %2, align 8, !dbg !1345
  br label %66, !dbg !1345

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !1346

; <label>:12:                                     ; preds = %11
  %13 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1348
  %14 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %13, i32 0, i32 15, !dbg !1350
  %15 = load i8, i8* %14, align 4, !dbg !1350
  %16 = and i8 %15, 1, !dbg !1350
  %17 = zext i8 %16 to i32, !dbg !1350
  %18 = icmp ne i32 %17, 0, !dbg !1348
  br i1 %18, label %19, label %24, !dbg !1351

; <label>:19:                                     ; preds = %12
  %20 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1352
  %21 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %20, i32 0, i32 2, !dbg !1353
  %22 = load i32*, i32** %21, align 8, !dbg !1353
  %23 = call noalias i8* @g_ucs4_to_utf8(i32* %22, i64 -1, i64* null, i64* null, %struct._GError** null), !dbg !1354
  store i8* %23, i8** %4, align 8, !dbg !1355
  br label %64, !dbg !1356

; <label>:24:                                     ; preds = %12
  %25 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1357
  %26 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %25, i32 0, i32 0, !dbg !1359
  %27 = load i32, i32* %26, align 8, !dbg !1359
  %28 = mul nsw i32 %27, 6, !dbg !1360
  %29 = add nsw i32 %28, 1, !dbg !1361
  %30 = sext i32 %29 to i64, !dbg !1357
  %31 = call noalias i8* @g_malloc(i64 %30), !dbg !1362
  store i8* %31, i8** %4, align 8, !dbg !1363
  %32 = load i32, i32* @term_type, align 4, !dbg !1364
  %33 = icmp eq i32 %32, 2, !dbg !1366
  br i1 %33, label %34, label %39, !dbg !1367

; <label>:34:                                     ; preds = %24
  %35 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1368
  %36 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %35, i32 0, i32 2, !dbg !1369
  %37 = load i32*, i32** %36, align 8, !dbg !1369
  %38 = load i8*, i8** %4, align 8, !dbg !1370
  call void @unichars_to_big5(i32* %37, i8* %38), !dbg !1371
  br label %63, !dbg !1371

; <label>:39:                                     ; preds = %24
  store i32 0, i32* %5, align 4, !dbg !1372
  br label %40, !dbg !1374

; <label>:40:                                     ; preds = %59, %39
  %41 = load i32, i32* %5, align 4, !dbg !1375
  %42 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1378
  %43 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %42, i32 0, i32 0, !dbg !1379
  %44 = load i32, i32* %43, align 8, !dbg !1379
  %45 = icmp sle i32 %41, %44, !dbg !1380
  br i1 %45, label %46, label %62, !dbg !1381

; <label>:46:                                     ; preds = %40
  %47 = load i32, i32* %5, align 4, !dbg !1382
  %48 = sext i32 %47 to i64, !dbg !1383
  %49 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1383
  %50 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %49, i32 0, i32 2, !dbg !1384
  %51 = load i32*, i32** %50, align 8, !dbg !1384
  %52 = getelementptr inbounds i32, i32* %51, i64 %48, !dbg !1383
  %53 = load i32, i32* %52, align 4, !dbg !1383
  %54 = trunc i32 %53 to i8, !dbg !1383
  %55 = load i32, i32* %5, align 4, !dbg !1385
  %56 = sext i32 %55 to i64, !dbg !1386
  %57 = load i8*, i8** %4, align 8, !dbg !1386
  %58 = getelementptr inbounds i8, i8* %57, i64 %56, !dbg !1386
  store i8 %54, i8* %58, align 1, !dbg !1387
  br label %59, !dbg !1386

; <label>:59:                                     ; preds = %46
  %60 = load i32, i32* %5, align 4, !dbg !1388
  %61 = add nsw i32 %60, 1, !dbg !1388
  store i32 %61, i32* %5, align 4, !dbg !1388
  br label %40, !dbg !1390, !llvm.loop !1391

; <label>:62:                                     ; preds = %40
  br label %63

; <label>:63:                                     ; preds = %62, %34
  br label %64

; <label>:64:                                     ; preds = %63, %19
  %65 = load i8*, i8** %4, align 8, !dbg !1393
  store i8* %65, i8** %2, align 8, !dbg !1394
  br label %66, !dbg !1394

; <label>:66:                                     ; preds = %64, %10
  %67 = load i8*, i8** %2, align 8, !dbg !1395
  ret i8* %67, !dbg !1395
}

declare noalias i8* @g_ucs4_to_utf8(i32*, i64, i64*, i64*, %struct._GError**) #2

declare noalias i8* @g_malloc(i64) #2

; Function Attrs: nounwind uwtable
define i8* @gui_entry_get_text_and_pos(%struct.GUI_ENTRY_REC*, i32*) #0 !dbg !1396 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.GUI_ENTRY_REC*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.GUI_ENTRY_REC* %0, %struct.GUI_ENTRY_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_REC** %4, metadata !1399, metadata !102), !dbg !1400
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !1401, metadata !102), !dbg !1402
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1403, metadata !102), !dbg !1404
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1405, metadata !102), !dbg !1406
  br label %8, !dbg !1407, !llvm.loop !1408

; <label>:8:                                      ; preds = %2
  %9 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !1409
  %10 = icmp ne %struct.GUI_ENTRY_REC* %9, null, !dbg !1413
  br i1 %10, label %11, label %12, !dbg !1409

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !1414

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gui_entry_get_text_and_pos, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0)), !dbg !1417
  store i8* null, i8** %3, align 8, !dbg !1420
  br label %88, !dbg !1420

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !1421

; <label>:14:                                     ; preds = %13
  %15 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !1423
  %16 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %15, i32 0, i32 15, !dbg !1425
  %17 = load i8, i8* %16, align 4, !dbg !1425
  %18 = and i8 %17, 1, !dbg !1425
  %19 = zext i8 %18 to i32, !dbg !1425
  %20 = icmp ne i32 %19, 0, !dbg !1423
  br i1 %20, label %21, label %38, !dbg !1426

; <label>:21:                                     ; preds = %14
  %22 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !1427
  %23 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %22, i32 0, i32 2, !dbg !1429
  %24 = load i32*, i32** %23, align 8, !dbg !1429
  %25 = call noalias i8* @g_ucs4_to_utf8(i32* %24, i64 -1, i64* null, i64* null, %struct._GError** null), !dbg !1430
  store i8* %25, i8** %6, align 8, !dbg !1431
  %26 = load i8*, i8** %6, align 8, !dbg !1432
  %27 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !1433
  %28 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %27, i32 0, i32 8, !dbg !1434
  %29 = load i32, i32* %28, align 4, !dbg !1434
  %30 = sext i32 %29 to i64, !dbg !1433
  %31 = call i8* @g_utf8_offset_to_pointer(i8* %26, i64 %30) #7, !dbg !1435
  %32 = load i8*, i8** %6, align 8, !dbg !1436
  %33 = ptrtoint i8* %31 to i64, !dbg !1437
  %34 = ptrtoint i8* %32 to i64, !dbg !1437
  %35 = sub i64 %33, %34, !dbg !1437
  %36 = trunc i64 %35 to i32, !dbg !1435
  %37 = load i32*, i32** %5, align 8, !dbg !1438
  store i32 %36, i32* %37, align 4, !dbg !1439
  br label %86, !dbg !1440

; <label>:38:                                     ; preds = %14
  %39 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !1441
  %40 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %39, i32 0, i32 0, !dbg !1443
  %41 = load i32, i32* %40, align 8, !dbg !1443
  %42 = mul nsw i32 %41, 6, !dbg !1444
  %43 = add nsw i32 %42, 1, !dbg !1445
  %44 = sext i32 %43 to i64, !dbg !1441
  %45 = call noalias i8* @g_malloc(i64 %44), !dbg !1446
  store i8* %45, i8** %6, align 8, !dbg !1447
  %46 = load i32, i32* @term_type, align 4, !dbg !1448
  %47 = icmp eq i32 %46, 2, !dbg !1450
  br i1 %47, label %48, label %57, !dbg !1451

; <label>:48:                                     ; preds = %38
  %49 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !1452
  %50 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %49, i32 0, i32 2, !dbg !1453
  %51 = load i32*, i32** %50, align 8, !dbg !1453
  %52 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !1454
  %53 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %52, i32 0, i32 8, !dbg !1455
  %54 = load i32, i32* %53, align 4, !dbg !1455
  %55 = load i8*, i8** %6, align 8, !dbg !1456
  %56 = load i32*, i32** %5, align 8, !dbg !1457
  call void @unichars_to_big5_with_pos(i32* %51, i32 %54, i8* %55, i32* %56), !dbg !1458
  br label %85, !dbg !1458

; <label>:57:                                     ; preds = %38
  store i32 0, i32* %7, align 4, !dbg !1459
  br label %58, !dbg !1462

; <label>:58:                                     ; preds = %77, %57
  %59 = load i32, i32* %7, align 4, !dbg !1463
  %60 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !1466
  %61 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %60, i32 0, i32 0, !dbg !1467
  %62 = load i32, i32* %61, align 8, !dbg !1467
  %63 = icmp sle i32 %59, %62, !dbg !1468
  br i1 %63, label %64, label %80, !dbg !1469

; <label>:64:                                     ; preds = %58
  %65 = load i32, i32* %7, align 4, !dbg !1470
  %66 = sext i32 %65 to i64, !dbg !1471
  %67 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !1471
  %68 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %67, i32 0, i32 2, !dbg !1472
  %69 = load i32*, i32** %68, align 8, !dbg !1472
  %70 = getelementptr inbounds i32, i32* %69, i64 %66, !dbg !1471
  %71 = load i32, i32* %70, align 4, !dbg !1471
  %72 = trunc i32 %71 to i8, !dbg !1471
  %73 = load i32, i32* %7, align 4, !dbg !1473
  %74 = sext i32 %73 to i64, !dbg !1474
  %75 = load i8*, i8** %6, align 8, !dbg !1474
  %76 = getelementptr inbounds i8, i8* %75, i64 %74, !dbg !1474
  store i8 %72, i8* %76, align 1, !dbg !1475
  br label %77, !dbg !1474

; <label>:77:                                     ; preds = %64
  %78 = load i32, i32* %7, align 4, !dbg !1476
  %79 = add nsw i32 %78, 1, !dbg !1476
  store i32 %79, i32* %7, align 4, !dbg !1476
  br label %58, !dbg !1478, !llvm.loop !1479

; <label>:80:                                     ; preds = %58
  %81 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !1481
  %82 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %81, i32 0, i32 8, !dbg !1482
  %83 = load i32, i32* %82, align 4, !dbg !1482
  %84 = load i32*, i32** %5, align 8, !dbg !1483
  store i32 %83, i32* %84, align 4, !dbg !1484
  br label %85

; <label>:85:                                     ; preds = %80, %48
  br label %86

; <label>:86:                                     ; preds = %85, %21
  %87 = load i8*, i8** %6, align 8, !dbg !1485
  store i8* %87, i8** %3, align 8, !dbg !1486
  br label %88, !dbg !1486

; <label>:88:                                     ; preds = %86, %12
  %89 = load i8*, i8** %3, align 8, !dbg !1487
  ret i8* %89, !dbg !1487
}

; Function Attrs: nounwind readonly
declare i8* @g_utf8_offset_to_pointer(i8*, i64) #3

declare i32 @g_utf8_validate(i8*, i64, i8**) #2

; Function Attrs: nounwind readonly
declare i64 @g_utf8_pointer_to_offset(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @entry_text_grow(%struct.GUI_ENTRY_REC*, i32) #0 !dbg !1488 {
  %3 = alloca %struct.GUI_ENTRY_REC*, align 8
  %4 = alloca i32, align 4
  store %struct.GUI_ENTRY_REC* %0, %struct.GUI_ENTRY_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_REC** %3, metadata !1489, metadata !102), !dbg !1490
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1491, metadata !102), !dbg !1492
  %5 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1493
  %6 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %5, i32 0, i32 0, !dbg !1495
  %7 = load i32, i32* %6, align 8, !dbg !1495
  %8 = load i32, i32* %4, align 4, !dbg !1496
  %9 = add nsw i32 %7, %8, !dbg !1497
  %10 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1498
  %11 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %10, i32 0, i32 1, !dbg !1499
  %12 = load i32, i32* %11, align 4, !dbg !1499
  %13 = icmp slt i32 %9, %12, !dbg !1500
  br i1 %13, label %14, label %15, !dbg !1501

; <label>:14:                                     ; preds = %2
  br label %58, !dbg !1502

; <label>:15:                                     ; preds = %2
  %16 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1503
  %17 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %16, i32 0, i32 1, !dbg !1504
  %18 = load i32, i32* %17, align 4, !dbg !1504
  %19 = load i32, i32* %4, align 4, !dbg !1505
  %20 = add nsw i32 %18, %19, !dbg !1506
  %21 = call i32 @nearest_power(i32 %20), !dbg !1507
  %22 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1508
  %23 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %22, i32 0, i32 1, !dbg !1509
  store i32 %21, i32* %23, align 4, !dbg !1510
  %24 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1511
  %25 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %24, i32 0, i32 2, !dbg !1512
  %26 = load i32*, i32** %25, align 8, !dbg !1512
  %27 = bitcast i32* %26 to i8*, !dbg !1511
  %28 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1513
  %29 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %28, i32 0, i32 1, !dbg !1514
  %30 = load i32, i32* %29, align 4, !dbg !1514
  %31 = sext i32 %30 to i64, !dbg !1513
  %32 = mul i64 4, %31, !dbg !1515
  %33 = call i8* @g_realloc(i8* %27, i64 %32), !dbg !1516
  %34 = bitcast i8* %33 to i32*, !dbg !1516
  %35 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1517
  %36 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %35, i32 0, i32 2, !dbg !1518
  store i32* %34, i32** %36, align 8, !dbg !1519
  %37 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1520
  %38 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %37, i32 0, i32 15, !dbg !1522
  %39 = load i8, i8* %38, align 4, !dbg !1522
  %40 = lshr i8 %39, 4, !dbg !1522
  %41 = and i8 %40, 1, !dbg !1522
  %42 = zext i8 %41 to i32, !dbg !1522
  %43 = icmp ne i32 %42, 0, !dbg !1520
  br i1 %43, label %44, label %58, !dbg !1523

; <label>:44:                                     ; preds = %15
  %45 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1524
  %46 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %45, i32 0, i32 3, !dbg !1525
  %47 = load i8**, i8*** %46, align 8, !dbg !1525
  %48 = bitcast i8** %47 to i8*, !dbg !1524
  %49 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1526
  %50 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %49, i32 0, i32 1, !dbg !1527
  %51 = load i32, i32* %50, align 4, !dbg !1527
  %52 = sext i32 %51 to i64, !dbg !1526
  %53 = mul i64 8, %52, !dbg !1528
  %54 = call i8* @g_realloc(i8* %48, i64 %53), !dbg !1529
  %55 = bitcast i8* %54 to i8**, !dbg !1529
  %56 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1530
  %57 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %56, i32 0, i32 3, !dbg !1531
  store i8** %55, i8*** %57, align 8, !dbg !1532
  br label %58, !dbg !1530

; <label>:58:                                     ; preds = %14, %44, %15
  ret void, !dbg !1533
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind readonly
declare i32 @g_utf8_get_char(i8*) #3

; Function Attrs: nounwind uwtable
define void @gui_entry_insert_char(%struct.GUI_ENTRY_REC*, i32) #0 !dbg !1534 {
  %3 = alloca %struct.GUI_ENTRY_REC*, align 8
  %4 = alloca i32, align 4
  store %struct.GUI_ENTRY_REC* %0, %struct.GUI_ENTRY_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_REC** %3, metadata !1537, metadata !102), !dbg !1538
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1539, metadata !102), !dbg !1540
  br label %5, !dbg !1541, !llvm.loop !1542

; <label>:5:                                      ; preds = %2
  %6 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1543
  %7 = icmp ne %struct.GUI_ENTRY_REC* %6, null, !dbg !1547
  br i1 %7, label %8, label %9, !dbg !1543

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !1548

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gui_entry_insert_char, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0)), !dbg !1551
  br label %144, !dbg !1554

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !1555

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %4, align 4, !dbg !1557
  %13 = icmp eq i32 %12, 0, !dbg !1559
  br i1 %13, label %20, label %14, !dbg !1560

; <label>:14:                                     ; preds = %11
  %15 = load i32, i32* %4, align 4, !dbg !1561
  %16 = icmp eq i32 %15, 13, !dbg !1563
  br i1 %16, label %20, label %17, !dbg !1564

; <label>:17:                                     ; preds = %14
  %18 = load i32, i32* %4, align 4, !dbg !1565
  %19 = icmp eq i32 %18, 10, !dbg !1567
  br i1 %19, label %20, label %21, !dbg !1568

; <label>:20:                                     ; preds = %17, %14, %11
  br label %144, !dbg !1569

; <label>:21:                                     ; preds = %17
  %22 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1570
  %23 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %22, i32 0, i32 15, !dbg !1572
  %24 = load i8, i8* %23, align 4, !dbg !1572
  %25 = and i8 %24, 1, !dbg !1572
  %26 = zext i8 %25 to i32, !dbg !1572
  %27 = icmp ne i32 %26, 0, !dbg !1570
  br i1 %27, label %28, label %38, !dbg !1573

; <label>:28:                                     ; preds = %21
  %29 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1574
  %30 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %29, i32 0, i32 8, !dbg !1576
  %31 = load i32, i32* %30, align 4, !dbg !1576
  %32 = icmp eq i32 %31, 0, !dbg !1577
  br i1 %32, label %33, label %38, !dbg !1578

; <label>:33:                                     ; preds = %28
  %34 = load i32, i32* %4, align 4, !dbg !1579
  %35 = call i32 @i_wcwidth(i32 %34), !dbg !1581
  %36 = icmp eq i32 %35, 0, !dbg !1582
  br i1 %36, label %37, label %38, !dbg !1583

; <label>:37:                                     ; preds = %33
  br label %144, !dbg !1584

; <label>:38:                                     ; preds = %33, %28, %21
  %39 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1585
  %40 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1586
  %41 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %40, i32 0, i32 8, !dbg !1587
  %42 = load i32, i32* %41, align 4, !dbg !1587
  call void @gui_entry_redraw_from(%struct.GUI_ENTRY_REC* %39, i32 %42), !dbg !1588
  %43 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1589
  call void @entry_text_grow(%struct.GUI_ENTRY_REC* %43, i32 1), !dbg !1590
  br label %44, !dbg !1591, !llvm.loop !1592

; <label>:44:                                     ; preds = %38
  %45 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1593
  %46 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %45, i32 0, i32 2, !dbg !1596
  %47 = load i32*, i32** %46, align 8, !dbg !1596
  %48 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1597
  %49 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %48, i32 0, i32 8, !dbg !1598
  %50 = load i32, i32* %49, align 4, !dbg !1598
  %51 = sext i32 %50 to i64, !dbg !1599
  %52 = getelementptr inbounds i32, i32* %47, i64 %51, !dbg !1599
  %53 = getelementptr inbounds i32, i32* %52, i64 1, !dbg !1600
  %54 = bitcast i32* %53 to i8*, !dbg !1601
  %55 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1602
  %56 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %55, i32 0, i32 2, !dbg !1603
  %57 = load i32*, i32** %56, align 8, !dbg !1603
  %58 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1604
  %59 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %58, i32 0, i32 8, !dbg !1605
  %60 = load i32, i32* %59, align 4, !dbg !1605
  %61 = sext i32 %60 to i64, !dbg !1606
  %62 = getelementptr inbounds i32, i32* %57, i64 %61, !dbg !1606
  %63 = bitcast i32* %62 to i8*, !dbg !1601
  %64 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1607
  %65 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %64, i32 0, i32 0, !dbg !1608
  %66 = load i32, i32* %65, align 8, !dbg !1608
  %67 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1609
  %68 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %67, i32 0, i32 8, !dbg !1610
  %69 = load i32, i32* %68, align 4, !dbg !1610
  %70 = sub nsw i32 %66, %69, !dbg !1611
  %71 = add nsw i32 %70, 1, !dbg !1612
  %72 = sext i32 %71 to i64, !dbg !1613
  %73 = mul i64 %72, 4, !dbg !1614
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %54, i8* %63, i64 %73, i32 4, i1 false), !dbg !1601
  br label %74, !dbg !1615

; <label>:74:                                     ; preds = %44
  %75 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1616
  %76 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %75, i32 0, i32 15, !dbg !1618
  %77 = load i8, i8* %76, align 4, !dbg !1618
  %78 = lshr i8 %77, 4, !dbg !1618
  %79 = and i8 %78, 1, !dbg !1618
  %80 = zext i8 %79 to i32, !dbg !1618
  %81 = icmp ne i32 %80, 0, !dbg !1616
  br i1 %81, label %82, label %124, !dbg !1619

; <label>:82:                                     ; preds = %74
  br label %83, !dbg !1620, !llvm.loop !1622

; <label>:83:                                     ; preds = %82
  %84 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1623
  %85 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %84, i32 0, i32 3, !dbg !1626
  %86 = load i8**, i8*** %85, align 8, !dbg !1626
  %87 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1627
  %88 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %87, i32 0, i32 8, !dbg !1628
  %89 = load i32, i32* %88, align 4, !dbg !1628
  %90 = sext i32 %89 to i64, !dbg !1629
  %91 = getelementptr inbounds i8*, i8** %86, i64 %90, !dbg !1629
  %92 = getelementptr inbounds i8*, i8** %91, i64 1, !dbg !1630
  %93 = getelementptr inbounds i8*, i8** %92, i64 1, !dbg !1631
  %94 = bitcast i8** %93 to i8*, !dbg !1632
  %95 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1633
  %96 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %95, i32 0, i32 3, !dbg !1634
  %97 = load i8**, i8*** %96, align 8, !dbg !1634
  %98 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1635
  %99 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %98, i32 0, i32 8, !dbg !1636
  %100 = load i32, i32* %99, align 4, !dbg !1636
  %101 = sext i32 %100 to i64, !dbg !1637
  %102 = getelementptr inbounds i8*, i8** %97, i64 %101, !dbg !1637
  %103 = getelementptr inbounds i8*, i8** %102, i64 1, !dbg !1638
  %104 = bitcast i8** %103 to i8*, !dbg !1632
  %105 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1639
  %106 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %105, i32 0, i32 0, !dbg !1640
  %107 = load i32, i32* %106, align 8, !dbg !1640
  %108 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1641
  %109 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %108, i32 0, i32 8, !dbg !1642
  %110 = load i32, i32* %109, align 4, !dbg !1642
  %111 = sub nsw i32 %107, %110, !dbg !1643
  %112 = sext i32 %111 to i64, !dbg !1644
  %113 = mul i64 %112, 8, !dbg !1645
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %94, i8* %104, i64 %113, i32 8, i1 false), !dbg !1632
  br label %114, !dbg !1646

; <label>:114:                                    ; preds = %83
  %115 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1647
  %116 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %115, i32 0, i32 8, !dbg !1648
  %117 = load i32, i32* %116, align 4, !dbg !1648
  %118 = add nsw i32 %117, 1, !dbg !1649
  %119 = sext i32 %118 to i64, !dbg !1650
  %120 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1650
  %121 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %120, i32 0, i32 3, !dbg !1651
  %122 = load i8**, i8*** %121, align 8, !dbg !1651
  %123 = getelementptr inbounds i8*, i8** %122, i64 %119, !dbg !1650
  store i8* null, i8** %123, align 8, !dbg !1652
  br label %124, !dbg !1653

; <label>:124:                                    ; preds = %114, %74
  %125 = load i32, i32* %4, align 4, !dbg !1654
  %126 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1655
  %127 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %126, i32 0, i32 8, !dbg !1656
  %128 = load i32, i32* %127, align 4, !dbg !1656
  %129 = sext i32 %128 to i64, !dbg !1657
  %130 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1657
  %131 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %130, i32 0, i32 2, !dbg !1658
  %132 = load i32*, i32** %131, align 8, !dbg !1658
  %133 = getelementptr inbounds i32, i32* %132, i64 %129, !dbg !1657
  store i32 %125, i32* %133, align 4, !dbg !1659
  %134 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1660
  %135 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %134, i32 0, i32 0, !dbg !1661
  %136 = load i32, i32* %135, align 8, !dbg !1662
  %137 = add nsw i32 %136, 1, !dbg !1662
  store i32 %137, i32* %135, align 8, !dbg !1662
  %138 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1663
  %139 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %138, i32 0, i32 8, !dbg !1664
  %140 = load i32, i32* %139, align 4, !dbg !1665
  %141 = add nsw i32 %140, 1, !dbg !1665
  store i32 %141, i32* %139, align 4, !dbg !1665
  %142 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1666
  call void @gui_entry_fix_cursor(%struct.GUI_ENTRY_REC* %142), !dbg !1667
  %143 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1668
  call void @gui_entry_draw(%struct.GUI_ENTRY_REC* %143), !dbg !1669
  br label %144, !dbg !1670

; <label>:144:                                    ; preds = %124, %37, %20, %9
  ret void, !dbg !1671
}

declare i32 @i_wcwidth(i32) #2

; Function Attrs: nounwind uwtable
define i8* @gui_entry_get_cutbuffer(%struct.GUI_ENTRY_REC*) #0 !dbg !1673 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.GUI_ENTRY_REC*, align 8
  %4 = alloca %struct.GUI_ENTRY_CUTBUFFER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.GUI_ENTRY_REC* %0, %struct.GUI_ENTRY_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_REC** %3, metadata !1674, metadata !102), !dbg !1675
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_CUTBUFFER_REC** %4, metadata !1676, metadata !102), !dbg !1677
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1678, metadata !102), !dbg !1679
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1680, metadata !102), !dbg !1681
  br label %7, !dbg !1682, !llvm.loop !1683

; <label>:7:                                      ; preds = %1
  %8 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1684
  %9 = icmp ne %struct.GUI_ENTRY_REC* %8, null, !dbg !1688
  br i1 %9, label %10, label %11, !dbg !1684

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !1689

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gui_entry_get_cutbuffer, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0)), !dbg !1692
  store i8* null, i8** %2, align 8, !dbg !1695
  br label %92, !dbg !1695

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !1696

; <label>:13:                                     ; preds = %12
  %14 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1698
  %15 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %14, i32 0, i32 4, !dbg !1700
  %16 = load %struct._GSList*, %struct._GSList** %15, align 8, !dbg !1700
  %17 = icmp eq %struct._GSList* %16, null, !dbg !1701
  br i1 %17, label %25, label %18, !dbg !1702

; <label>:18:                                     ; preds = %13
  %19 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1703
  %20 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %19, i32 0, i32 4, !dbg !1705
  %21 = load %struct._GSList*, %struct._GSList** %20, align 8, !dbg !1705
  %22 = getelementptr inbounds %struct._GSList, %struct._GSList* %21, i32 0, i32 0, !dbg !1706
  %23 = load i8*, i8** %22, align 8, !dbg !1706
  %24 = icmp eq i8* %23, null, !dbg !1707
  br i1 %24, label %25, label %26, !dbg !1708

; <label>:25:                                     ; preds = %18, %13
  store i8* null, i8** %2, align 8, !dbg !1709
  br label %92, !dbg !1709

; <label>:26:                                     ; preds = %18
  %27 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1710
  %28 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %27, i32 0, i32 4, !dbg !1711
  %29 = load %struct._GSList*, %struct._GSList** %28, align 8, !dbg !1711
  %30 = getelementptr inbounds %struct._GSList, %struct._GSList* %29, i32 0, i32 0, !dbg !1712
  %31 = load i8*, i8** %30, align 8, !dbg !1712
  %32 = bitcast i8* %31 to %struct.GUI_ENTRY_CUTBUFFER_REC*, !dbg !1710
  store %struct.GUI_ENTRY_CUTBUFFER_REC* %32, %struct.GUI_ENTRY_CUTBUFFER_REC** %4, align 8, !dbg !1713
  %33 = load %struct.GUI_ENTRY_CUTBUFFER_REC*, %struct.GUI_ENTRY_CUTBUFFER_REC** %4, align 8, !dbg !1714
  %34 = getelementptr inbounds %struct.GUI_ENTRY_CUTBUFFER_REC, %struct.GUI_ENTRY_CUTBUFFER_REC* %33, i32 0, i32 1, !dbg !1716
  %35 = load i32*, i32** %34, align 8, !dbg !1716
  %36 = icmp eq i32* %35, null, !dbg !1717
  br i1 %36, label %37, label %38, !dbg !1718

; <label>:37:                                     ; preds = %26
  store i8* null, i8** %2, align 8, !dbg !1719
  br label %92, !dbg !1719

; <label>:38:                                     ; preds = %26
  %39 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1720
  %40 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %39, i32 0, i32 15, !dbg !1722
  %41 = load i8, i8* %40, align 4, !dbg !1722
  %42 = and i8 %41, 1, !dbg !1722
  %43 = zext i8 %42 to i32, !dbg !1722
  %44 = icmp ne i32 %43, 0, !dbg !1720
  br i1 %44, label %45, label %50, !dbg !1723

; <label>:45:                                     ; preds = %38
  %46 = load %struct.GUI_ENTRY_CUTBUFFER_REC*, %struct.GUI_ENTRY_CUTBUFFER_REC** %4, align 8, !dbg !1724
  %47 = getelementptr inbounds %struct.GUI_ENTRY_CUTBUFFER_REC, %struct.GUI_ENTRY_CUTBUFFER_REC* %46, i32 0, i32 1, !dbg !1725
  %48 = load i32*, i32** %47, align 8, !dbg !1725
  %49 = call noalias i8* @g_ucs4_to_utf8(i32* %48, i64 -1, i64* null, i64* null, %struct._GError** null), !dbg !1726
  store i8* %49, i8** %5, align 8, !dbg !1727
  br label %90, !dbg !1728

; <label>:50:                                     ; preds = %38
  %51 = load %struct.GUI_ENTRY_CUTBUFFER_REC*, %struct.GUI_ENTRY_CUTBUFFER_REC** %4, align 8, !dbg !1729
  %52 = getelementptr inbounds %struct.GUI_ENTRY_CUTBUFFER_REC, %struct.GUI_ENTRY_CUTBUFFER_REC* %51, i32 0, i32 0, !dbg !1731
  %53 = load i32, i32* %52, align 8, !dbg !1731
  %54 = mul nsw i32 %53, 6, !dbg !1732
  %55 = add nsw i32 %54, 1, !dbg !1733
  %56 = sext i32 %55 to i64, !dbg !1729
  %57 = call noalias i8* @g_malloc(i64 %56), !dbg !1734
  store i8* %57, i8** %5, align 8, !dbg !1735
  %58 = load i32, i32* @term_type, align 4, !dbg !1736
  %59 = icmp eq i32 %58, 2, !dbg !1738
  br i1 %59, label %60, label %65, !dbg !1739

; <label>:60:                                     ; preds = %50
  %61 = load %struct.GUI_ENTRY_CUTBUFFER_REC*, %struct.GUI_ENTRY_CUTBUFFER_REC** %4, align 8, !dbg !1740
  %62 = getelementptr inbounds %struct.GUI_ENTRY_CUTBUFFER_REC, %struct.GUI_ENTRY_CUTBUFFER_REC* %61, i32 0, i32 1, !dbg !1741
  %63 = load i32*, i32** %62, align 8, !dbg !1741
  %64 = load i8*, i8** %5, align 8, !dbg !1742
  call void @unichars_to_big5(i32* %63, i8* %64), !dbg !1743
  br label %89, !dbg !1743

; <label>:65:                                     ; preds = %50
  store i32 0, i32* %6, align 4, !dbg !1744
  br label %66, !dbg !1746

; <label>:66:                                     ; preds = %85, %65
  %67 = load i32, i32* %6, align 4, !dbg !1747
  %68 = load %struct.GUI_ENTRY_CUTBUFFER_REC*, %struct.GUI_ENTRY_CUTBUFFER_REC** %4, align 8, !dbg !1750
  %69 = getelementptr inbounds %struct.GUI_ENTRY_CUTBUFFER_REC, %struct.GUI_ENTRY_CUTBUFFER_REC* %68, i32 0, i32 0, !dbg !1751
  %70 = load i32, i32* %69, align 8, !dbg !1751
  %71 = icmp sle i32 %67, %70, !dbg !1752
  br i1 %71, label %72, label %88, !dbg !1753

; <label>:72:                                     ; preds = %66
  %73 = load i32, i32* %6, align 4, !dbg !1754
  %74 = sext i32 %73 to i64, !dbg !1755
  %75 = load %struct.GUI_ENTRY_CUTBUFFER_REC*, %struct.GUI_ENTRY_CUTBUFFER_REC** %4, align 8, !dbg !1755
  %76 = getelementptr inbounds %struct.GUI_ENTRY_CUTBUFFER_REC, %struct.GUI_ENTRY_CUTBUFFER_REC* %75, i32 0, i32 1, !dbg !1756
  %77 = load i32*, i32** %76, align 8, !dbg !1756
  %78 = getelementptr inbounds i32, i32* %77, i64 %74, !dbg !1755
  %79 = load i32, i32* %78, align 4, !dbg !1755
  %80 = trunc i32 %79 to i8, !dbg !1755
  %81 = load i32, i32* %6, align 4, !dbg !1757
  %82 = sext i32 %81 to i64, !dbg !1758
  %83 = load i8*, i8** %5, align 8, !dbg !1758
  %84 = getelementptr inbounds i8, i8* %83, i64 %82, !dbg !1758
  store i8 %80, i8* %84, align 1, !dbg !1759
  br label %85, !dbg !1758

; <label>:85:                                     ; preds = %72
  %86 = load i32, i32* %6, align 4, !dbg !1760
  %87 = add nsw i32 %86, 1, !dbg !1760
  store i32 %87, i32* %6, align 4, !dbg !1760
  br label %66, !dbg !1762, !llvm.loop !1763

; <label>:88:                                     ; preds = %66
  br label %89

; <label>:89:                                     ; preds = %88, %60
  br label %90

; <label>:90:                                     ; preds = %89, %45
  %91 = load i8*, i8** %5, align 8, !dbg !1765
  store i8* %91, i8** %2, align 8, !dbg !1766
  br label %92, !dbg !1766

; <label>:92:                                     ; preds = %90, %37, %25, %11
  %93 = load i8*, i8** %2, align 8, !dbg !1767
  ret i8* %93, !dbg !1767
}

; Function Attrs: nounwind uwtable
define i8* @gui_entry_get_next_cutbuffer(%struct.GUI_ENTRY_REC*) #0 !dbg !1768 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.GUI_ENTRY_REC*, align 8
  %4 = alloca %struct.GUI_ENTRY_CUTBUFFER_REC*, align 8
  store %struct.GUI_ENTRY_REC* %0, %struct.GUI_ENTRY_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_REC** %3, metadata !1769, metadata !102), !dbg !1770
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_CUTBUFFER_REC** %4, metadata !1771, metadata !102), !dbg !1772
  br label %5, !dbg !1773, !llvm.loop !1774

; <label>:5:                                      ; preds = %1
  %6 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1775
  %7 = icmp ne %struct.GUI_ENTRY_REC* %6, null, !dbg !1779
  br i1 %7, label %8, label %9, !dbg !1775

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !1780

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gui_entry_get_next_cutbuffer, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0)), !dbg !1783
  store i8* null, i8** %2, align 8, !dbg !1786
  br label %42, !dbg !1786

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !1787

; <label>:11:                                     ; preds = %10
  %12 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1789
  %13 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %12, i32 0, i32 4, !dbg !1791
  %14 = load %struct._GSList*, %struct._GSList** %13, align 8, !dbg !1791
  %15 = icmp eq %struct._GSList* %14, null, !dbg !1792
  br i1 %15, label %16, label %17, !dbg !1793

; <label>:16:                                     ; preds = %11
  store i8* null, i8** %2, align 8, !dbg !1794
  br label %42, !dbg !1794

; <label>:17:                                     ; preds = %11
  %18 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1795
  %19 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %18, i32 0, i32 4, !dbg !1796
  %20 = load %struct._GSList*, %struct._GSList** %19, align 8, !dbg !1796
  %21 = getelementptr inbounds %struct._GSList, %struct._GSList* %20, i32 0, i32 0, !dbg !1797
  %22 = load i8*, i8** %21, align 8, !dbg !1797
  %23 = bitcast i8* %22 to %struct.GUI_ENTRY_CUTBUFFER_REC*, !dbg !1795
  store %struct.GUI_ENTRY_CUTBUFFER_REC* %23, %struct.GUI_ENTRY_CUTBUFFER_REC** %4, align 8, !dbg !1798
  %24 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1799
  %25 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %24, i32 0, i32 4, !dbg !1800
  %26 = load %struct._GSList*, %struct._GSList** %25, align 8, !dbg !1800
  %27 = load %struct.GUI_ENTRY_CUTBUFFER_REC*, %struct.GUI_ENTRY_CUTBUFFER_REC** %4, align 8, !dbg !1801
  %28 = bitcast %struct.GUI_ENTRY_CUTBUFFER_REC* %27 to i8*, !dbg !1801
  %29 = call %struct._GSList* @g_slist_remove(%struct._GSList* %26, i8* %28), !dbg !1802
  %30 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1803
  %31 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %30, i32 0, i32 4, !dbg !1804
  store %struct._GSList* %29, %struct._GSList** %31, align 8, !dbg !1805
  %32 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1806
  %33 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %32, i32 0, i32 4, !dbg !1807
  %34 = load %struct._GSList*, %struct._GSList** %33, align 8, !dbg !1807
  %35 = load %struct.GUI_ENTRY_CUTBUFFER_REC*, %struct.GUI_ENTRY_CUTBUFFER_REC** %4, align 8, !dbg !1808
  %36 = bitcast %struct.GUI_ENTRY_CUTBUFFER_REC* %35 to i8*, !dbg !1808
  %37 = call %struct._GSList* @g_slist_append(%struct._GSList* %34, i8* %36), !dbg !1809
  %38 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1810
  %39 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %38, i32 0, i32 4, !dbg !1811
  store %struct._GSList* %37, %struct._GSList** %39, align 8, !dbg !1812
  %40 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1813
  %41 = call i8* @gui_entry_get_cutbuffer(%struct.GUI_ENTRY_REC* %40), !dbg !1814
  store i8* %41, i8** %2, align 8, !dbg !1815
  br label %42, !dbg !1815

; <label>:42:                                     ; preds = %17, %16, %9
  %43 = load i8*, i8** %2, align 8, !dbg !1816
  ret i8* %43, !dbg !1816
}

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #2

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #2

; Function Attrs: nounwind uwtable
define void @gui_entry_erase_to(%struct.GUI_ENTRY_REC*, i32, i32) #0 !dbg !1817 {
  %4 = alloca %struct.GUI_ENTRY_REC*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.GUI_ENTRY_REC* %0, %struct.GUI_ENTRY_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_REC** %4, metadata !1821, metadata !102), !dbg !1822
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1823, metadata !102), !dbg !1824
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1825, metadata !102), !dbg !1826
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1827, metadata !102), !dbg !1828
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1829, metadata !102), !dbg !1830
  store i32 0, i32* %8, align 4, !dbg !1830
  br label %9, !dbg !1831, !llvm.loop !1832

; <label>:9:                                      ; preds = %3
  %10 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !1833
  %11 = icmp ne %struct.GUI_ENTRY_REC* %10, null, !dbg !1837
  br i1 %11, label %12, label %13, !dbg !1833

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !1838

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gui_entry_erase_to, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0)), !dbg !1841
  br label %32, !dbg !1844

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !1845

; <label>:15:                                     ; preds = %14
  %16 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !1847
  %17 = call i32 @gui_entry_get_pos(%struct.GUI_ENTRY_REC* %16), !dbg !1849
  store i32 %17, i32* %7, align 4, !dbg !1850
  br label %18, !dbg !1851

; <label>:18:                                     ; preds = %25, %15
  %19 = load i32, i32* %7, align 4, !dbg !1852
  %20 = load i32, i32* %5, align 4, !dbg !1855
  %21 = icmp sgt i32 %19, %20, !dbg !1856
  br i1 %21, label %22, label %28, !dbg !1857

; <label>:22:                                     ; preds = %18
  %23 = load i32, i32* %7, align 4, !dbg !1858
  %24 = sub nsw i32 %23, 1, !dbg !1859
  store i32 %24, i32* %7, align 4, !dbg !1860
  br label %25, !dbg !1861

; <label>:25:                                     ; preds = %22
  %26 = load i32, i32* %8, align 4, !dbg !1862
  %27 = add nsw i32 %26, 1, !dbg !1862
  store i32 %27, i32* %8, align 4, !dbg !1862
  br label %18, !dbg !1864, !llvm.loop !1865

; <label>:28:                                     ; preds = %18
  %29 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !1867
  %30 = load i32, i32* %8, align 4, !dbg !1868
  %31 = load i32, i32* %6, align 4, !dbg !1869
  call void @gui_entry_erase(%struct.GUI_ENTRY_REC* %29, i32 %30, i32 %31), !dbg !1870
  br label %32, !dbg !1871

; <label>:32:                                     ; preds = %28, %13
  ret void, !dbg !1872
}

; Function Attrs: nounwind uwtable
define i32 @gui_entry_get_pos(%struct.GUI_ENTRY_REC*) #0 !dbg !1874 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.GUI_ENTRY_REC*, align 8
  store %struct.GUI_ENTRY_REC* %0, %struct.GUI_ENTRY_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_REC** %3, metadata !1877, metadata !102), !dbg !1878
  br label %4, !dbg !1879, !llvm.loop !1880

; <label>:4:                                      ; preds = %1
  %5 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1881
  %6 = icmp ne %struct.GUI_ENTRY_REC* %5, null, !dbg !1885
  br i1 %6, label %7, label %8, !dbg !1881

; <label>:7:                                      ; preds = %4
  br label %9, !dbg !1886

; <label>:8:                                      ; preds = %4
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gui_entry_get_pos, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0)), !dbg !1889
  store i32 0, i32* %2, align 4, !dbg !1892
  br label %14, !dbg !1892

; <label>:9:                                      ; preds = %7
  br label %10, !dbg !1893

; <label>:10:                                     ; preds = %9
  %11 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !1895
  %12 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %11, i32 0, i32 8, !dbg !1896
  %13 = load i32, i32* %12, align 4, !dbg !1896
  store i32 %13, i32* %2, align 4, !dbg !1897
  br label %14, !dbg !1897

; <label>:14:                                     ; preds = %10, %8
  %15 = load i32, i32* %2, align 4, !dbg !1898
  ret i32 %15, !dbg !1898
}

; Function Attrs: nounwind uwtable
define void @gui_entry_erase(%struct.GUI_ENTRY_REC*, i32, i32) #0 !dbg !1899 {
  %4 = alloca %struct.GUI_ENTRY_REC*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.GUI_ENTRY_CUTBUFFER_REC*, align 8
  store %struct.GUI_ENTRY_REC* %0, %struct.GUI_ENTRY_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_REC** %4, metadata !1900, metadata !102), !dbg !1901
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1902, metadata !102), !dbg !1903
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1904, metadata !102), !dbg !1905
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1906, metadata !102), !dbg !1910
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1911, metadata !102), !dbg !1912
  store i64 0, i64* %8, align 8, !dbg !1912
  br label %12, !dbg !1913, !llvm.loop !1914

; <label>:12:                                     ; preds = %3
  %13 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !1915
  %14 = icmp ne %struct.GUI_ENTRY_REC* %13, null, !dbg !1919
  br i1 %14, label %15, label %16, !dbg !1915

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !1920

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gui_entry_erase, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0)), !dbg !1923
  br label %430, !dbg !1926

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !1927

; <label>:18:                                     ; preds = %17
  %19 = load i32, i32* %5, align 4, !dbg !1929
  %20 = icmp eq i32 %19, 0, !dbg !1931
  br i1 %20, label %27, label %21, !dbg !1932

; <label>:21:                                     ; preds = %18
  %22 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !1933
  %23 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %22, i32 0, i32 8, !dbg !1935
  %24 = load i32, i32* %23, align 4, !dbg !1935
  %25 = load i32, i32* %5, align 4, !dbg !1936
  %26 = icmp slt i32 %24, %25, !dbg !1937
  br i1 %26, label %27, label %28, !dbg !1938

; <label>:27:                                     ; preds = %21, %18
  br label %430, !dbg !1939

; <label>:28:                                     ; preds = %21
  %29 = load i32, i32* %6, align 4, !dbg !1940
  %30 = icmp ne i32 %29, 0, !dbg !1942
  br i1 %30, label %31, label %213, !dbg !1943

; <label>:31:                                     ; preds = %28
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1944, metadata !102), !dbg !1946
  call void @llvm.dbg.declare(metadata i32** %10, metadata !1947, metadata !102), !dbg !1948
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_CUTBUFFER_REC** %11, metadata !1949, metadata !102), !dbg !1950
  %32 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !1951
  %33 = load i32, i32* %6, align 4, !dbg !1952
  %34 = call %struct.GUI_ENTRY_CUTBUFFER_REC* @get_cutbuffer_rec(%struct.GUI_ENTRY_REC* %32, i32 %33), !dbg !1953
  store %struct.GUI_ENTRY_CUTBUFFER_REC* %34, %struct.GUI_ENTRY_CUTBUFFER_REC** %11, align 8, !dbg !1950
  %35 = load %struct.GUI_ENTRY_CUTBUFFER_REC*, %struct.GUI_ENTRY_CUTBUFFER_REC** %11, align 8, !dbg !1954
  %36 = getelementptr inbounds %struct.GUI_ENTRY_CUTBUFFER_REC, %struct.GUI_ENTRY_CUTBUFFER_REC* %35, i32 0, i32 0, !dbg !1956
  %37 = load i32, i32* %36, align 8, !dbg !1956
  %38 = icmp eq i32 %37, 0, !dbg !1957
  br i1 %38, label %39, label %40, !dbg !1958

; <label>:39:                                     ; preds = %31
  store i32 1, i32* %6, align 4, !dbg !1959
  br label %40, !dbg !1961

; <label>:40:                                     ; preds = %39, %31
  %41 = load %struct.GUI_ENTRY_CUTBUFFER_REC*, %struct.GUI_ENTRY_CUTBUFFER_REC** %11, align 8, !dbg !1962
  %42 = getelementptr inbounds %struct.GUI_ENTRY_CUTBUFFER_REC, %struct.GUI_ENTRY_CUTBUFFER_REC* %41, i32 0, i32 0, !dbg !1963
  %43 = load i32, i32* %42, align 8, !dbg !1963
  %44 = load i32, i32* %5, align 4, !dbg !1964
  %45 = add nsw i32 %43, %44, !dbg !1965
  store i32 %45, i32* %9, align 4, !dbg !1966
  %46 = load %struct.GUI_ENTRY_CUTBUFFER_REC*, %struct.GUI_ENTRY_CUTBUFFER_REC** %11, align 8, !dbg !1967
  %47 = getelementptr inbounds %struct.GUI_ENTRY_CUTBUFFER_REC, %struct.GUI_ENTRY_CUTBUFFER_REC* %46, i32 0, i32 1, !dbg !1968
  %48 = load i32*, i32** %47, align 8, !dbg !1968
  store i32* %48, i32** %10, align 8, !dbg !1969
  %49 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !1970
  %50 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %49, i32 0, i32 15, !dbg !1971
  %51 = load i8, i8* %50, align 4, !dbg !1972
  %52 = and i8 %51, -5, !dbg !1972
  %53 = or i8 %52, 4, !dbg !1972
  store i8 %53, i8* %50, align 4, !dbg !1972
  %54 = load i32, i32* %6, align 4, !dbg !1973
  switch i32 %54, label %212 [
    i32 2, label %55
    i32 3, label %110
    i32 1, label %163
    i32 0, label %211
  ], !dbg !1974

; <label>:55:                                     ; preds = %40
  %56 = load i32, i32* %9, align 4, !dbg !1975
  %57 = add nsw i32 %56, 1, !dbg !1977
  %58 = sext i32 %57 to i64, !dbg !1978
  %59 = call noalias i8* @g_malloc_n(i64 %58, i64 4), !dbg !1979
  %60 = bitcast i8* %59 to i32*, !dbg !1980
  %61 = load %struct.GUI_ENTRY_CUTBUFFER_REC*, %struct.GUI_ENTRY_CUTBUFFER_REC** %11, align 8, !dbg !1981
  %62 = getelementptr inbounds %struct.GUI_ENTRY_CUTBUFFER_REC, %struct.GUI_ENTRY_CUTBUFFER_REC* %61, i32 0, i32 1, !dbg !1982
  store i32* %60, i32** %62, align 8, !dbg !1983
  %63 = load %struct.GUI_ENTRY_CUTBUFFER_REC*, %struct.GUI_ENTRY_CUTBUFFER_REC** %11, align 8, !dbg !1984
  %64 = getelementptr inbounds %struct.GUI_ENTRY_CUTBUFFER_REC, %struct.GUI_ENTRY_CUTBUFFER_REC* %63, i32 0, i32 1, !dbg !1985
  %65 = load i32*, i32** %64, align 8, !dbg !1985
  %66 = bitcast i32* %65 to i8*, !dbg !1986
  %67 = load i32*, i32** %10, align 8, !dbg !1987
  %68 = bitcast i32* %67 to i8*, !dbg !1986
  %69 = load %struct.GUI_ENTRY_CUTBUFFER_REC*, %struct.GUI_ENTRY_CUTBUFFER_REC** %11, align 8, !dbg !1988
  %70 = getelementptr inbounds %struct.GUI_ENTRY_CUTBUFFER_REC, %struct.GUI_ENTRY_CUTBUFFER_REC* %69, i32 0, i32 0, !dbg !1989
  %71 = load i32, i32* %70, align 8, !dbg !1989
  %72 = sext i32 %71 to i64, !dbg !1988
  %73 = mul i64 %72, 4, !dbg !1990
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* %68, i64 %73, i32 4, i1 false), !dbg !1986
  %74 = load %struct.GUI_ENTRY_CUTBUFFER_REC*, %struct.GUI_ENTRY_CUTBUFFER_REC** %11, align 8, !dbg !1991
  %75 = getelementptr inbounds %struct.GUI_ENTRY_CUTBUFFER_REC, %struct.GUI_ENTRY_CUTBUFFER_REC* %74, i32 0, i32 1, !dbg !1992
  %76 = load i32*, i32** %75, align 8, !dbg !1992
  %77 = load %struct.GUI_ENTRY_CUTBUFFER_REC*, %struct.GUI_ENTRY_CUTBUFFER_REC** %11, align 8, !dbg !1993
  %78 = getelementptr inbounds %struct.GUI_ENTRY_CUTBUFFER_REC, %struct.GUI_ENTRY_CUTBUFFER_REC* %77, i32 0, i32 0, !dbg !1994
  %79 = load i32, i32* %78, align 8, !dbg !1994
  %80 = sext i32 %79 to i64, !dbg !1995
  %81 = getelementptr inbounds i32, i32* %76, i64 %80, !dbg !1995
  %82 = bitcast i32* %81 to i8*, !dbg !1996
  %83 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !1997
  %84 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %83, i32 0, i32 2, !dbg !1998
  %85 = load i32*, i32** %84, align 8, !dbg !1998
  %86 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !1999
  %87 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %86, i32 0, i32 8, !dbg !2000
  %88 = load i32, i32* %87, align 4, !dbg !2000
  %89 = sext i32 %88 to i64, !dbg !2001
  %90 = getelementptr inbounds i32, i32* %85, i64 %89, !dbg !2001
  %91 = load i32, i32* %5, align 4, !dbg !2002
  %92 = sext i32 %91 to i64, !dbg !2003
  %93 = sub i64 0, %92, !dbg !2003
  %94 = getelementptr inbounds i32, i32* %90, i64 %93, !dbg !2003
  %95 = bitcast i32* %94 to i8*, !dbg !1996
  %96 = load i32, i32* %5, align 4, !dbg !2004
  %97 = sext i32 %96 to i64, !dbg !2004
  %98 = mul i64 %97, 4, !dbg !2005
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %82, i8* %95, i64 %98, i32 4, i1 false), !dbg !1996
  %99 = load i32, i32* %9, align 4, !dbg !2006
  %100 = load %struct.GUI_ENTRY_CUTBUFFER_REC*, %struct.GUI_ENTRY_CUTBUFFER_REC** %11, align 8, !dbg !2007
  %101 = getelementptr inbounds %struct.GUI_ENTRY_CUTBUFFER_REC, %struct.GUI_ENTRY_CUTBUFFER_REC* %100, i32 0, i32 0, !dbg !2008
  store i32 %99, i32* %101, align 8, !dbg !2009
  %102 = load i32, i32* %9, align 4, !dbg !2010
  %103 = sext i32 %102 to i64, !dbg !2011
  %104 = load %struct.GUI_ENTRY_CUTBUFFER_REC*, %struct.GUI_ENTRY_CUTBUFFER_REC** %11, align 8, !dbg !2011
  %105 = getelementptr inbounds %struct.GUI_ENTRY_CUTBUFFER_REC, %struct.GUI_ENTRY_CUTBUFFER_REC* %104, i32 0, i32 1, !dbg !2012
  %106 = load i32*, i32** %105, align 8, !dbg !2012
  %107 = getelementptr inbounds i32, i32* %106, i64 %103, !dbg !2011
  store i32 0, i32* %107, align 4, !dbg !2013
  %108 = load i32*, i32** %10, align 8, !dbg !2014
  %109 = bitcast i32* %108 to i8*, !dbg !2014
  call void @g_free(i8* %109), !dbg !2015
  br label %212, !dbg !2016

; <label>:110:                                    ; preds = %40
  %111 = load i32, i32* %9, align 4, !dbg !2017
  %112 = add nsw i32 %111, 1, !dbg !2018
  %113 = sext i32 %112 to i64, !dbg !2019
  %114 = call noalias i8* @g_malloc_n(i64 %113, i64 4), !dbg !2020
  %115 = bitcast i8* %114 to i32*, !dbg !2021
  %116 = load %struct.GUI_ENTRY_CUTBUFFER_REC*, %struct.GUI_ENTRY_CUTBUFFER_REC** %11, align 8, !dbg !2022
  %117 = getelementptr inbounds %struct.GUI_ENTRY_CUTBUFFER_REC, %struct.GUI_ENTRY_CUTBUFFER_REC* %116, i32 0, i32 1, !dbg !2023
  store i32* %115, i32** %117, align 8, !dbg !2024
  %118 = load %struct.GUI_ENTRY_CUTBUFFER_REC*, %struct.GUI_ENTRY_CUTBUFFER_REC** %11, align 8, !dbg !2025
  %119 = getelementptr inbounds %struct.GUI_ENTRY_CUTBUFFER_REC, %struct.GUI_ENTRY_CUTBUFFER_REC* %118, i32 0, i32 1, !dbg !2026
  %120 = load i32*, i32** %119, align 8, !dbg !2026
  %121 = bitcast i32* %120 to i8*, !dbg !2027
  %122 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2028
  %123 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %122, i32 0, i32 2, !dbg !2029
  %124 = load i32*, i32** %123, align 8, !dbg !2029
  %125 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2030
  %126 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %125, i32 0, i32 8, !dbg !2031
  %127 = load i32, i32* %126, align 4, !dbg !2031
  %128 = sext i32 %127 to i64, !dbg !2032
  %129 = getelementptr inbounds i32, i32* %124, i64 %128, !dbg !2032
  %130 = load i32, i32* %5, align 4, !dbg !2033
  %131 = sext i32 %130 to i64, !dbg !2034
  %132 = sub i64 0, %131, !dbg !2034
  %133 = getelementptr inbounds i32, i32* %129, i64 %132, !dbg !2034
  %134 = bitcast i32* %133 to i8*, !dbg !2027
  %135 = load i32, i32* %5, align 4, !dbg !2035
  %136 = sext i32 %135 to i64, !dbg !2035
  %137 = mul i64 %136, 4, !dbg !2036
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %121, i8* %134, i64 %137, i32 4, i1 false), !dbg !2027
  %138 = load %struct.GUI_ENTRY_CUTBUFFER_REC*, %struct.GUI_ENTRY_CUTBUFFER_REC** %11, align 8, !dbg !2037
  %139 = getelementptr inbounds %struct.GUI_ENTRY_CUTBUFFER_REC, %struct.GUI_ENTRY_CUTBUFFER_REC* %138, i32 0, i32 1, !dbg !2038
  %140 = load i32*, i32** %139, align 8, !dbg !2038
  %141 = load i32, i32* %5, align 4, !dbg !2039
  %142 = sext i32 %141 to i64, !dbg !2040
  %143 = getelementptr inbounds i32, i32* %140, i64 %142, !dbg !2040
  %144 = bitcast i32* %143 to i8*, !dbg !2041
  %145 = load i32*, i32** %10, align 8, !dbg !2042
  %146 = bitcast i32* %145 to i8*, !dbg !2041
  %147 = load %struct.GUI_ENTRY_CUTBUFFER_REC*, %struct.GUI_ENTRY_CUTBUFFER_REC** %11, align 8, !dbg !2043
  %148 = getelementptr inbounds %struct.GUI_ENTRY_CUTBUFFER_REC, %struct.GUI_ENTRY_CUTBUFFER_REC* %147, i32 0, i32 0, !dbg !2044
  %149 = load i32, i32* %148, align 8, !dbg !2044
  %150 = sext i32 %149 to i64, !dbg !2043
  %151 = mul i64 %150, 4, !dbg !2045
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %144, i8* %146, i64 %151, i32 4, i1 false), !dbg !2041
  %152 = load i32, i32* %9, align 4, !dbg !2046
  %153 = load %struct.GUI_ENTRY_CUTBUFFER_REC*, %struct.GUI_ENTRY_CUTBUFFER_REC** %11, align 8, !dbg !2047
  %154 = getelementptr inbounds %struct.GUI_ENTRY_CUTBUFFER_REC, %struct.GUI_ENTRY_CUTBUFFER_REC* %153, i32 0, i32 0, !dbg !2048
  store i32 %152, i32* %154, align 8, !dbg !2049
  %155 = load i32, i32* %9, align 4, !dbg !2050
  %156 = sext i32 %155 to i64, !dbg !2051
  %157 = load %struct.GUI_ENTRY_CUTBUFFER_REC*, %struct.GUI_ENTRY_CUTBUFFER_REC** %11, align 8, !dbg !2051
  %158 = getelementptr inbounds %struct.GUI_ENTRY_CUTBUFFER_REC, %struct.GUI_ENTRY_CUTBUFFER_REC* %157, i32 0, i32 1, !dbg !2052
  %159 = load i32*, i32** %158, align 8, !dbg !2052
  %160 = getelementptr inbounds i32, i32* %159, i64 %156, !dbg !2051
  store i32 0, i32* %160, align 4, !dbg !2053
  %161 = load i32*, i32** %10, align 8, !dbg !2054
  %162 = bitcast i32* %161 to i8*, !dbg !2054
  call void @g_free(i8* %162), !dbg !2055
  br label %212, !dbg !2056

; <label>:163:                                    ; preds = %40
  %164 = load %struct.GUI_ENTRY_CUTBUFFER_REC*, %struct.GUI_ENTRY_CUTBUFFER_REC** %11, align 8, !dbg !2057
  %165 = getelementptr inbounds %struct.GUI_ENTRY_CUTBUFFER_REC, %struct.GUI_ENTRY_CUTBUFFER_REC* %164, i32 0, i32 0, !dbg !2059
  %166 = load i32, i32* %165, align 8, !dbg !2059
  %167 = load i32, i32* %5, align 4, !dbg !2060
  %168 = icmp slt i32 %166, %167, !dbg !2061
  br i1 %168, label %169, label %181, !dbg !2062

; <label>:169:                                    ; preds = %163
  %170 = load %struct.GUI_ENTRY_CUTBUFFER_REC*, %struct.GUI_ENTRY_CUTBUFFER_REC** %11, align 8, !dbg !2063
  %171 = getelementptr inbounds %struct.GUI_ENTRY_CUTBUFFER_REC, %struct.GUI_ENTRY_CUTBUFFER_REC* %170, i32 0, i32 1, !dbg !2065
  %172 = load i32*, i32** %171, align 8, !dbg !2065
  %173 = bitcast i32* %172 to i8*, !dbg !2063
  call void @g_free(i8* %173), !dbg !2066
  %174 = load i32, i32* %5, align 4, !dbg !2067
  %175 = add nsw i32 %174, 1, !dbg !2068
  %176 = sext i32 %175 to i64, !dbg !2069
  %177 = call noalias i8* @g_malloc_n(i64 %176, i64 4), !dbg !2070
  %178 = bitcast i8* %177 to i32*, !dbg !2071
  %179 = load %struct.GUI_ENTRY_CUTBUFFER_REC*, %struct.GUI_ENTRY_CUTBUFFER_REC** %11, align 8, !dbg !2072
  %180 = getelementptr inbounds %struct.GUI_ENTRY_CUTBUFFER_REC, %struct.GUI_ENTRY_CUTBUFFER_REC* %179, i32 0, i32 1, !dbg !2073
  store i32* %178, i32** %180, align 8, !dbg !2074
  br label %181, !dbg !2075

; <label>:181:                                    ; preds = %169, %163
  %182 = load i32, i32* %5, align 4, !dbg !2076
  %183 = load %struct.GUI_ENTRY_CUTBUFFER_REC*, %struct.GUI_ENTRY_CUTBUFFER_REC** %11, align 8, !dbg !2077
  %184 = getelementptr inbounds %struct.GUI_ENTRY_CUTBUFFER_REC, %struct.GUI_ENTRY_CUTBUFFER_REC* %183, i32 0, i32 0, !dbg !2078
  store i32 %182, i32* %184, align 8, !dbg !2079
  %185 = load i32, i32* %5, align 4, !dbg !2080
  %186 = sext i32 %185 to i64, !dbg !2081
  %187 = load %struct.GUI_ENTRY_CUTBUFFER_REC*, %struct.GUI_ENTRY_CUTBUFFER_REC** %11, align 8, !dbg !2081
  %188 = getelementptr inbounds %struct.GUI_ENTRY_CUTBUFFER_REC, %struct.GUI_ENTRY_CUTBUFFER_REC* %187, i32 0, i32 1, !dbg !2082
  %189 = load i32*, i32** %188, align 8, !dbg !2082
  %190 = getelementptr inbounds i32, i32* %189, i64 %186, !dbg !2081
  store i32 0, i32* %190, align 4, !dbg !2083
  %191 = load %struct.GUI_ENTRY_CUTBUFFER_REC*, %struct.GUI_ENTRY_CUTBUFFER_REC** %11, align 8, !dbg !2084
  %192 = getelementptr inbounds %struct.GUI_ENTRY_CUTBUFFER_REC, %struct.GUI_ENTRY_CUTBUFFER_REC* %191, i32 0, i32 1, !dbg !2085
  %193 = load i32*, i32** %192, align 8, !dbg !2085
  %194 = bitcast i32* %193 to i8*, !dbg !2086
  %195 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2087
  %196 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %195, i32 0, i32 2, !dbg !2088
  %197 = load i32*, i32** %196, align 8, !dbg !2088
  %198 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2089
  %199 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %198, i32 0, i32 8, !dbg !2090
  %200 = load i32, i32* %199, align 4, !dbg !2090
  %201 = sext i32 %200 to i64, !dbg !2091
  %202 = getelementptr inbounds i32, i32* %197, i64 %201, !dbg !2091
  %203 = load i32, i32* %5, align 4, !dbg !2092
  %204 = sext i32 %203 to i64, !dbg !2093
  %205 = sub i64 0, %204, !dbg !2093
  %206 = getelementptr inbounds i32, i32* %202, i64 %205, !dbg !2093
  %207 = bitcast i32* %206 to i8*, !dbg !2086
  %208 = load i32, i32* %5, align 4, !dbg !2094
  %209 = sext i32 %208 to i64, !dbg !2094
  %210 = mul i64 %209, 4, !dbg !2095
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %194, i8* %207, i64 %210, i32 4, i1 false), !dbg !2086
  br label %212, !dbg !2096

; <label>:211:                                    ; preds = %40
  br label %212, !dbg !2097

; <label>:212:                                    ; preds = %40, %211, %181, %110, %55
  br label %213, !dbg !2098

; <label>:213:                                    ; preds = %212, %28
  %214 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2099
  %215 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %214, i32 0, i32 15, !dbg !2101
  %216 = load i8, i8* %215, align 4, !dbg !2101
  %217 = and i8 %216, 1, !dbg !2101
  %218 = zext i8 %217 to i32, !dbg !2101
  %219 = icmp ne i32 %218, 0, !dbg !2099
  br i1 %219, label %220, label %253, !dbg !2102

; <label>:220:                                    ; preds = %213
  br label %221, !dbg !2103

; <label>:221:                                    ; preds = %249, %220
  %222 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2104
  %223 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %222, i32 0, i32 8, !dbg !2106
  %224 = load i32, i32* %223, align 4, !dbg !2106
  %225 = load i32, i32* %5, align 4, !dbg !2107
  %226 = sub nsw i32 %224, %225, !dbg !2108
  %227 = sext i32 %226 to i64, !dbg !2104
  %228 = load i64, i64* %8, align 8, !dbg !2109
  %229 = sub i64 %227, %228, !dbg !2110
  %230 = icmp ugt i64 %229, 0, !dbg !2111
  br i1 %230, label %231, label %247, !dbg !2112

; <label>:231:                                    ; preds = %221
  %232 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2113
  %233 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %232, i32 0, i32 8, !dbg !2114
  %234 = load i32, i32* %233, align 4, !dbg !2114
  %235 = load i32, i32* %5, align 4, !dbg !2115
  %236 = sub nsw i32 %234, %235, !dbg !2116
  %237 = sext i32 %236 to i64, !dbg !2113
  %238 = load i64, i64* %8, align 8, !dbg !2117
  %239 = sub i64 %237, %238, !dbg !2118
  %240 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2119
  %241 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %240, i32 0, i32 2, !dbg !2120
  %242 = load i32*, i32** %241, align 8, !dbg !2120
  %243 = getelementptr inbounds i32, i32* %242, i64 %239, !dbg !2119
  %244 = load i32, i32* %243, align 4, !dbg !2119
  %245 = call i32 @i_wcwidth(i32 %244), !dbg !2121
  %246 = icmp eq i32 %245, 0, !dbg !2122
  br label %247

; <label>:247:                                    ; preds = %231, %221
  %248 = phi i1 [ false, %221 ], [ %246, %231 ]
  br i1 %248, label %249, label %252, !dbg !2123

; <label>:249:                                    ; preds = %247
  %250 = load i64, i64* %8, align 8, !dbg !2125
  %251 = add i64 %250, 1, !dbg !2125
  store i64 %251, i64* %8, align 8, !dbg !2125
  br label %221, !dbg !2126, !llvm.loop !2128

; <label>:252:                                    ; preds = %247
  br label %253, !dbg !2129

; <label>:253:                                    ; preds = %252, %213
  br label %254, !dbg !2131, !llvm.loop !2132

; <label>:254:                                    ; preds = %253
  %255 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2133
  %256 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %255, i32 0, i32 2, !dbg !2136
  %257 = load i32*, i32** %256, align 8, !dbg !2136
  %258 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2137
  %259 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %258, i32 0, i32 8, !dbg !2138
  %260 = load i32, i32* %259, align 4, !dbg !2138
  %261 = sext i32 %260 to i64, !dbg !2139
  %262 = getelementptr inbounds i32, i32* %257, i64 %261, !dbg !2139
  %263 = load i32, i32* %5, align 4, !dbg !2140
  %264 = sext i32 %263 to i64, !dbg !2141
  %265 = sub i64 0, %264, !dbg !2141
  %266 = getelementptr inbounds i32, i32* %262, i64 %265, !dbg !2141
  %267 = bitcast i32* %266 to i8*, !dbg !2142
  %268 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2143
  %269 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %268, i32 0, i32 2, !dbg !2144
  %270 = load i32*, i32** %269, align 8, !dbg !2144
  %271 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2145
  %272 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %271, i32 0, i32 8, !dbg !2146
  %273 = load i32, i32* %272, align 4, !dbg !2146
  %274 = sext i32 %273 to i64, !dbg !2147
  %275 = getelementptr inbounds i32, i32* %270, i64 %274, !dbg !2147
  %276 = bitcast i32* %275 to i8*, !dbg !2142
  %277 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2148
  %278 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %277, i32 0, i32 0, !dbg !2149
  %279 = load i32, i32* %278, align 8, !dbg !2149
  %280 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2150
  %281 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %280, i32 0, i32 8, !dbg !2151
  %282 = load i32, i32* %281, align 4, !dbg !2151
  %283 = sub nsw i32 %279, %282, !dbg !2152
  %284 = add nsw i32 %283, 1, !dbg !2153
  %285 = sext i32 %284 to i64, !dbg !2154
  %286 = mul i64 %285, 4, !dbg !2155
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %267, i8* %276, i64 %286, i32 4, i1 false), !dbg !2142
  br label %287, !dbg !2156

; <label>:287:                                    ; preds = %254
  %288 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2157
  %289 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %288, i32 0, i32 15, !dbg !2159
  %290 = load i8, i8* %289, align 4, !dbg !2159
  %291 = lshr i8 %290, 4, !dbg !2159
  %292 = and i8 %291, 1, !dbg !2159
  %293 = zext i8 %292 to i32, !dbg !2159
  %294 = icmp ne i32 %293, 0, !dbg !2157
  br i1 %294, label %295, label %409, !dbg !2160

; <label>:295:                                    ; preds = %287
  %296 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2161
  %297 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %296, i32 0, i32 8, !dbg !2164
  %298 = load i32, i32* %297, align 4, !dbg !2164
  %299 = load i32, i32* %5, align 4, !dbg !2165
  %300 = sub nsw i32 %298, %299, !dbg !2166
  %301 = sext i32 %300 to i64, !dbg !2161
  store i64 %301, i64* %7, align 8, !dbg !2167
  br label %302, !dbg !2168

; <label>:302:                                    ; preds = %327, %295
  %303 = load i64, i64* %7, align 8, !dbg !2169
  %304 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2172
  %305 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %304, i32 0, i32 8, !dbg !2173
  %306 = load i32, i32* %305, align 4, !dbg !2173
  %307 = sext i32 %306 to i64, !dbg !2172
  %308 = icmp ult i64 %303, %307, !dbg !2174
  br i1 %308, label %309, label %330, !dbg !2175

; <label>:309:                                    ; preds = %302
  %310 = load i64, i64* %7, align 8, !dbg !2176
  %311 = add i64 %310, 1, !dbg !2179
  %312 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2180
  %313 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %312, i32 0, i32 3, !dbg !2181
  %314 = load i8**, i8*** %313, align 8, !dbg !2181
  %315 = getelementptr inbounds i8*, i8** %314, i64 %311, !dbg !2180
  %316 = load i8*, i8** %315, align 8, !dbg !2180
  %317 = icmp ne i8* %316, null, !dbg !2182
  br i1 %317, label %318, label %326, !dbg !2183

; <label>:318:                                    ; preds = %309
  %319 = load i64, i64* %7, align 8, !dbg !2184
  %320 = add i64 %319, 1, !dbg !2186
  %321 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2187
  %322 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %321, i32 0, i32 3, !dbg !2188
  %323 = load i8**, i8*** %322, align 8, !dbg !2188
  %324 = getelementptr inbounds i8*, i8** %323, i64 %320, !dbg !2187
  %325 = load i8*, i8** %324, align 8, !dbg !2187
  call void @g_free(i8* %325), !dbg !2189
  br label %326, !dbg !2190

; <label>:326:                                    ; preds = %318, %309
  br label %327, !dbg !2191

; <label>:327:                                    ; preds = %326
  %328 = load i64, i64* %7, align 8, !dbg !2192
  %329 = add i64 %328, 1, !dbg !2192
  store i64 %329, i64* %7, align 8, !dbg !2192
  br label %302, !dbg !2194, !llvm.loop !2195

; <label>:330:                                    ; preds = %302
  br label %331, !dbg !2197, !llvm.loop !2198

; <label>:331:                                    ; preds = %330
  %332 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2199
  %333 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %332, i32 0, i32 3, !dbg !2202
  %334 = load i8**, i8*** %333, align 8, !dbg !2202
  %335 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2203
  %336 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %335, i32 0, i32 8, !dbg !2204
  %337 = load i32, i32* %336, align 4, !dbg !2204
  %338 = sext i32 %337 to i64, !dbg !2205
  %339 = getelementptr inbounds i8*, i8** %334, i64 %338, !dbg !2205
  %340 = load i32, i32* %5, align 4, !dbg !2206
  %341 = sext i32 %340 to i64, !dbg !2207
  %342 = sub i64 0, %341, !dbg !2207
  %343 = getelementptr inbounds i8*, i8** %339, i64 %342, !dbg !2207
  %344 = getelementptr inbounds i8*, i8** %343, i64 1, !dbg !2208
  %345 = bitcast i8** %344 to i8*, !dbg !2209
  %346 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2210
  %347 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %346, i32 0, i32 3, !dbg !2211
  %348 = load i8**, i8*** %347, align 8, !dbg !2211
  %349 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2212
  %350 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %349, i32 0, i32 8, !dbg !2213
  %351 = load i32, i32* %350, align 4, !dbg !2213
  %352 = sext i32 %351 to i64, !dbg !2214
  %353 = getelementptr inbounds i8*, i8** %348, i64 %352, !dbg !2214
  %354 = getelementptr inbounds i8*, i8** %353, i64 1, !dbg !2215
  %355 = bitcast i8** %354 to i8*, !dbg !2209
  %356 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2216
  %357 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %356, i32 0, i32 0, !dbg !2217
  %358 = load i32, i32* %357, align 8, !dbg !2217
  %359 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2218
  %360 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %359, i32 0, i32 8, !dbg !2219
  %361 = load i32, i32* %360, align 4, !dbg !2219
  %362 = sub nsw i32 %358, %361, !dbg !2220
  %363 = sext i32 %362 to i64, !dbg !2221
  %364 = mul i64 %363, 8, !dbg !2222
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %345, i8* %355, i64 %364, i32 8, i1 false), !dbg !2209
  br label %365, !dbg !2223

; <label>:365:                                    ; preds = %331
  store i64 0, i64* %7, align 8, !dbg !2224
  br label %366, !dbg !2226

; <label>:366:                                    ; preds = %382, %365
  %367 = load i64, i64* %7, align 8, !dbg !2227
  %368 = load i32, i32* %5, align 4, !dbg !2230
  %369 = sext i32 %368 to i64, !dbg !2230
  %370 = icmp ult i64 %367, %369, !dbg !2231
  br i1 %370, label %371, label %385, !dbg !2232

; <label>:371:                                    ; preds = %366
  %372 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2233
  %373 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %372, i32 0, i32 0, !dbg !2235
  %374 = load i32, i32* %373, align 8, !dbg !2235
  %375 = sext i32 %374 to i64, !dbg !2233
  %376 = load i64, i64* %7, align 8, !dbg !2236
  %377 = sub i64 %375, %376, !dbg !2237
  %378 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2238
  %379 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %378, i32 0, i32 3, !dbg !2239
  %380 = load i8**, i8*** %379, align 8, !dbg !2239
  %381 = getelementptr inbounds i8*, i8** %380, i64 %377, !dbg !2238
  store i8* null, i8** %381, align 8, !dbg !2240
  br label %382, !dbg !2241

; <label>:382:                                    ; preds = %371
  %383 = load i64, i64* %7, align 8, !dbg !2242
  %384 = add i64 %383, 1, !dbg !2242
  store i64 %384, i64* %7, align 8, !dbg !2242
  br label %366, !dbg !2244, !llvm.loop !2245

; <label>:385:                                    ; preds = %366
  %386 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2247
  %387 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %386, i32 0, i32 0, !dbg !2249
  %388 = load i32, i32* %387, align 8, !dbg !2249
  %389 = load i32, i32* %5, align 4, !dbg !2250
  %390 = icmp eq i32 %388, %389, !dbg !2251
  br i1 %390, label %391, label %408, !dbg !2252

; <label>:391:                                    ; preds = %385
  %392 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2253
  %393 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %392, i32 0, i32 3, !dbg !2255
  %394 = load i8**, i8*** %393, align 8, !dbg !2255
  %395 = getelementptr inbounds i8*, i8** %394, i64 0, !dbg !2253
  %396 = load i8*, i8** %395, align 8, !dbg !2253
  %397 = icmp ne i8* %396, null, !dbg !2256
  br i1 %397, label %398, label %408, !dbg !2257

; <label>:398:                                    ; preds = %391
  %399 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2258
  %400 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %399, i32 0, i32 3, !dbg !2260
  %401 = load i8**, i8*** %400, align 8, !dbg !2260
  %402 = getelementptr inbounds i8*, i8** %401, i64 0, !dbg !2258
  %403 = load i8*, i8** %402, align 8, !dbg !2258
  call void @g_free(i8* %403), !dbg !2261
  %404 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2262
  %405 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %404, i32 0, i32 3, !dbg !2263
  %406 = load i8**, i8*** %405, align 8, !dbg !2263
  %407 = getelementptr inbounds i8*, i8** %406, i64 0, !dbg !2262
  store i8* null, i8** %407, align 8, !dbg !2264
  br label %408, !dbg !2265

; <label>:408:                                    ; preds = %398, %391, %385
  br label %409, !dbg !2266

; <label>:409:                                    ; preds = %408, %287
  %410 = load i32, i32* %5, align 4, !dbg !2267
  %411 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2268
  %412 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %411, i32 0, i32 8, !dbg !2269
  %413 = load i32, i32* %412, align 4, !dbg !2270
  %414 = sub nsw i32 %413, %410, !dbg !2270
  store i32 %414, i32* %412, align 4, !dbg !2270
  %415 = load i32, i32* %5, align 4, !dbg !2271
  %416 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2272
  %417 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %416, i32 0, i32 0, !dbg !2273
  %418 = load i32, i32* %417, align 8, !dbg !2274
  %419 = sub nsw i32 %418, %415, !dbg !2274
  store i32 %419, i32* %417, align 8, !dbg !2274
  %420 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2275
  %421 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2276
  %422 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %421, i32 0, i32 8, !dbg !2277
  %423 = load i32, i32* %422, align 4, !dbg !2277
  %424 = sext i32 %423 to i64, !dbg !2276
  %425 = load i64, i64* %8, align 8, !dbg !2278
  %426 = sub i64 %424, %425, !dbg !2279
  %427 = trunc i64 %426 to i32, !dbg !2276
  call void @gui_entry_redraw_from(%struct.GUI_ENTRY_REC* %420, i32 %427), !dbg !2280
  %428 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2281
  call void @gui_entry_fix_cursor(%struct.GUI_ENTRY_REC* %428), !dbg !2282
  %429 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2283
  call void @gui_entry_draw(%struct.GUI_ENTRY_REC* %429), !dbg !2284
  br label %430, !dbg !2285

; <label>:430:                                    ; preds = %409, %27, %16
  ret void, !dbg !2286
}

; Function Attrs: nounwind uwtable
define internal %struct.GUI_ENTRY_CUTBUFFER_REC* @get_cutbuffer_rec(%struct.GUI_ENTRY_REC*, i32) #0 !dbg !2288 {
  %3 = alloca %struct.GUI_ENTRY_CUTBUFFER_REC*, align 8
  %4 = alloca %struct.GUI_ENTRY_REC*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.GUI_ENTRY_CUTBUFFER_REC*, align 8
  %7 = alloca %struct.GUI_ENTRY_CUTBUFFER_REC*, align 8
  store %struct.GUI_ENTRY_REC* %0, %struct.GUI_ENTRY_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_REC** %4, metadata !2291, metadata !102), !dbg !2292
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2293, metadata !102), !dbg !2294
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_CUTBUFFER_REC** %6, metadata !2295, metadata !102), !dbg !2296
  br label %8, !dbg !2297, !llvm.loop !2298

; <label>:8:                                      ; preds = %2
  %9 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2299
  %10 = icmp ne %struct.GUI_ENTRY_REC* %9, null, !dbg !2303
  br i1 %10, label %11, label %12, !dbg !2299

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !2304

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.get_cutbuffer_rec, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0)), !dbg !2307
  store %struct.GUI_ENTRY_CUTBUFFER_REC* null, %struct.GUI_ENTRY_CUTBUFFER_REC** %3, align 8, !dbg !2310
  br label %113, !dbg !2310

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !2311

; <label>:14:                                     ; preds = %13
  %15 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2313
  %16 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %15, i32 0, i32 4, !dbg !2315
  %17 = load %struct._GSList*, %struct._GSList** %16, align 8, !dbg !2315
  %18 = icmp eq %struct._GSList* %17, null, !dbg !2316
  br i1 %18, label %19, label %26, !dbg !2317

; <label>:19:                                     ; preds = %14
  %20 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2318
  %21 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %20, i32 0, i32 4, !dbg !2320
  %22 = load %struct._GSList*, %struct._GSList** %21, align 8, !dbg !2320
  %23 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %22, i8* null), !dbg !2321
  %24 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2322
  %25 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %24, i32 0, i32 4, !dbg !2323
  store %struct._GSList* %23, %struct._GSList** %25, align 8, !dbg !2324
  br label %59, !dbg !2325

; <label>:26:                                     ; preds = %14
  %27 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2326
  %28 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %27, i32 0, i32 4, !dbg !2328
  %29 = load %struct._GSList*, %struct._GSList** %28, align 8, !dbg !2328
  %30 = getelementptr inbounds %struct._GSList, %struct._GSList* %29, i32 0, i32 0, !dbg !2329
  %31 = load i8*, i8** %30, align 8, !dbg !2329
  %32 = bitcast i8* %31 to %struct.GUI_ENTRY_CUTBUFFER_REC*, !dbg !2326
  store %struct.GUI_ENTRY_CUTBUFFER_REC* %32, %struct.GUI_ENTRY_CUTBUFFER_REC** %6, align 8, !dbg !2330
  %33 = load %struct.GUI_ENTRY_CUTBUFFER_REC*, %struct.GUI_ENTRY_CUTBUFFER_REC** %6, align 8, !dbg !2331
  %34 = icmp ne %struct.GUI_ENTRY_CUTBUFFER_REC* %33, null, !dbg !2333
  br i1 %34, label %35, label %58, !dbg !2334

; <label>:35:                                     ; preds = %26
  %36 = load %struct.GUI_ENTRY_CUTBUFFER_REC*, %struct.GUI_ENTRY_CUTBUFFER_REC** %6, align 8, !dbg !2335
  %37 = getelementptr inbounds %struct.GUI_ENTRY_CUTBUFFER_REC, %struct.GUI_ENTRY_CUTBUFFER_REC* %36, i32 0, i32 0, !dbg !2337
  %38 = load i32, i32* %37, align 8, !dbg !2337
  %39 = icmp sgt i32 %38, 0, !dbg !2338
  br i1 %39, label %40, label %58, !dbg !2339

; <label>:40:                                     ; preds = %35
  %41 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2340
  %42 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %41, i32 0, i32 15, !dbg !2341
  %43 = load i8, i8* %42, align 4, !dbg !2341
  %44 = lshr i8 %43, 1, !dbg !2341
  %45 = and i8 %44, 1, !dbg !2341
  %46 = zext i8 %45 to i32, !dbg !2341
  %47 = icmp ne i32 %46, 0, !dbg !2340
  br i1 %47, label %48, label %51, !dbg !2342

; <label>:48:                                     ; preds = %40
  %49 = load i32, i32* %5, align 4, !dbg !2343
  %50 = icmp eq i32 %49, 1, !dbg !2344
  br i1 %50, label %51, label %58, !dbg !2345

; <label>:51:                                     ; preds = %48, %40
  %52 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2347
  %53 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %52, i32 0, i32 4, !dbg !2349
  %54 = load %struct._GSList*, %struct._GSList** %53, align 8, !dbg !2349
  %55 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %54, i8* null), !dbg !2350
  %56 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2351
  %57 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %56, i32 0, i32 4, !dbg !2352
  store %struct._GSList* %55, %struct._GSList** %57, align 8, !dbg !2353
  br label %58, !dbg !2354

; <label>:58:                                     ; preds = %51, %48, %35, %26
  br label %59

; <label>:59:                                     ; preds = %58, %19
  %60 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2355
  %61 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %60, i32 0, i32 4, !dbg !2357
  %62 = load %struct._GSList*, %struct._GSList** %61, align 8, !dbg !2357
  %63 = call i32 @g_slist_length(%struct._GSList* %62), !dbg !2358
  %64 = icmp ugt i32 %63, 10, !dbg !2359
  br i1 %64, label %65, label %91, !dbg !2360

; <label>:65:                                     ; preds = %59
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_CUTBUFFER_REC** %7, metadata !2361, metadata !102), !dbg !2363
  %66 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2364
  %67 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %66, i32 0, i32 4, !dbg !2365
  %68 = load %struct._GSList*, %struct._GSList** %67, align 8, !dbg !2365
  %69 = call %struct._GSList* @g_slist_last(%struct._GSList* %68), !dbg !2366
  %70 = getelementptr inbounds %struct._GSList, %struct._GSList* %69, i32 0, i32 0, !dbg !2367
  %71 = load i8*, i8** %70, align 8, !dbg !2367
  %72 = bitcast i8* %71 to %struct.GUI_ENTRY_CUTBUFFER_REC*, !dbg !2366
  store %struct.GUI_ENTRY_CUTBUFFER_REC* %72, %struct.GUI_ENTRY_CUTBUFFER_REC** %7, align 8, !dbg !2363
  %73 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2368
  %74 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %73, i32 0, i32 4, !dbg !2369
  %75 = load %struct._GSList*, %struct._GSList** %74, align 8, !dbg !2369
  %76 = load %struct.GUI_ENTRY_CUTBUFFER_REC*, %struct.GUI_ENTRY_CUTBUFFER_REC** %7, align 8, !dbg !2370
  %77 = bitcast %struct.GUI_ENTRY_CUTBUFFER_REC* %76 to i8*, !dbg !2370
  %78 = call %struct._GSList* @g_slist_remove(%struct._GSList* %75, i8* %77), !dbg !2371
  %79 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2372
  %80 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %79, i32 0, i32 4, !dbg !2373
  store %struct._GSList* %78, %struct._GSList** %80, align 8, !dbg !2374
  %81 = load %struct.GUI_ENTRY_CUTBUFFER_REC*, %struct.GUI_ENTRY_CUTBUFFER_REC** %7, align 8, !dbg !2375
  %82 = icmp ne %struct.GUI_ENTRY_CUTBUFFER_REC* %81, null, !dbg !2377
  br i1 %82, label %83, label %88, !dbg !2378

; <label>:83:                                     ; preds = %65
  %84 = load %struct.GUI_ENTRY_CUTBUFFER_REC*, %struct.GUI_ENTRY_CUTBUFFER_REC** %7, align 8, !dbg !2379
  %85 = getelementptr inbounds %struct.GUI_ENTRY_CUTBUFFER_REC, %struct.GUI_ENTRY_CUTBUFFER_REC* %84, i32 0, i32 1, !dbg !2381
  %86 = load i32*, i32** %85, align 8, !dbg !2381
  %87 = bitcast i32* %86 to i8*, !dbg !2379
  call void @g_free(i8* %87), !dbg !2382
  br label %88, !dbg !2382

; <label>:88:                                     ; preds = %83, %65
  %89 = load %struct.GUI_ENTRY_CUTBUFFER_REC*, %struct.GUI_ENTRY_CUTBUFFER_REC** %7, align 8, !dbg !2383
  %90 = bitcast %struct.GUI_ENTRY_CUTBUFFER_REC* %89 to i8*, !dbg !2383
  call void @g_free(i8* %90), !dbg !2384
  br label %91, !dbg !2385

; <label>:91:                                     ; preds = %88, %59
  %92 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2386
  %93 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %92, i32 0, i32 4, !dbg !2388
  %94 = load %struct._GSList*, %struct._GSList** %93, align 8, !dbg !2388
  %95 = getelementptr inbounds %struct._GSList, %struct._GSList* %94, i32 0, i32 0, !dbg !2389
  %96 = load i8*, i8** %95, align 8, !dbg !2389
  %97 = icmp eq i8* %96, null, !dbg !2390
  br i1 %97, label %98, label %106, !dbg !2391

; <label>:98:                                     ; preds = %91
  %99 = call noalias i8* @g_malloc0_n(i64 1, i64 16), !dbg !2392
  %100 = bitcast i8* %99 to %struct.GUI_ENTRY_CUTBUFFER_REC*, !dbg !2394
  %101 = bitcast %struct.GUI_ENTRY_CUTBUFFER_REC* %100 to i8*, !dbg !2395
  %102 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2396
  %103 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %102, i32 0, i32 4, !dbg !2397
  %104 = load %struct._GSList*, %struct._GSList** %103, align 8, !dbg !2397
  %105 = getelementptr inbounds %struct._GSList, %struct._GSList* %104, i32 0, i32 0, !dbg !2398
  store i8* %101, i8** %105, align 8, !dbg !2399
  br label %106, !dbg !2400

; <label>:106:                                    ; preds = %98, %91
  %107 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2401
  %108 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %107, i32 0, i32 4, !dbg !2402
  %109 = load %struct._GSList*, %struct._GSList** %108, align 8, !dbg !2402
  %110 = getelementptr inbounds %struct._GSList, %struct._GSList* %109, i32 0, i32 0, !dbg !2403
  %111 = load i8*, i8** %110, align 8, !dbg !2403
  %112 = bitcast i8* %111 to %struct.GUI_ENTRY_CUTBUFFER_REC*, !dbg !2401
  store %struct.GUI_ENTRY_CUTBUFFER_REC* %112, %struct.GUI_ENTRY_CUTBUFFER_REC** %3, align 8, !dbg !2404
  br label %113, !dbg !2404

; <label>:113:                                    ; preds = %106, %12
  %114 = load %struct.GUI_ENTRY_CUTBUFFER_REC*, %struct.GUI_ENTRY_CUTBUFFER_REC** %3, align 8, !dbg !2405
  ret %struct.GUI_ENTRY_CUTBUFFER_REC* %114, !dbg !2405
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define void @gui_entry_erase_cell(%struct.GUI_ENTRY_REC*) #0 !dbg !2406 {
  %2 = alloca %struct.GUI_ENTRY_REC*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.GUI_ENTRY_REC* %0, %struct.GUI_ENTRY_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_REC** %2, metadata !2407, metadata !102), !dbg !2408
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2409, metadata !102), !dbg !2410
  store i32 1, i32* %3, align 4, !dbg !2410
  br label %5, !dbg !2411, !llvm.loop !2412

; <label>:5:                                      ; preds = %1
  %6 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2413
  %7 = icmp ne %struct.GUI_ENTRY_REC* %6, null, !dbg !2417
  br i1 %7, label %8, label %9, !dbg !2413

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !2418

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gui_entry_erase_cell, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0)), !dbg !2421
  br label %204, !dbg !2424

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !2425

; <label>:11:                                     ; preds = %10
  %12 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2427
  %13 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %12, i32 0, i32 15, !dbg !2429
  %14 = load i8, i8* %13, align 4, !dbg !2429
  %15 = and i8 %14, 1, !dbg !2429
  %16 = zext i8 %15 to i32, !dbg !2429
  %17 = icmp ne i32 %16, 0, !dbg !2427
  br i1 %17, label %18, label %49, !dbg !2430

; <label>:18:                                     ; preds = %11
  br label %19, !dbg !2431

; <label>:19:                                     ; preds = %45, %18
  %20 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2432
  %21 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %20, i32 0, i32 8, !dbg !2434
  %22 = load i32, i32* %21, align 4, !dbg !2434
  %23 = load i32, i32* %3, align 4, !dbg !2435
  %24 = add nsw i32 %22, %23, !dbg !2436
  %25 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2437
  %26 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %25, i32 0, i32 0, !dbg !2438
  %27 = load i32, i32* %26, align 8, !dbg !2438
  %28 = icmp slt i32 %24, %27, !dbg !2439
  br i1 %28, label %29, label %43, !dbg !2440

; <label>:29:                                     ; preds = %19
  %30 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2441
  %31 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %30, i32 0, i32 8, !dbg !2442
  %32 = load i32, i32* %31, align 4, !dbg !2442
  %33 = load i32, i32* %3, align 4, !dbg !2443
  %34 = add nsw i32 %32, %33, !dbg !2444
  %35 = sext i32 %34 to i64, !dbg !2445
  %36 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2445
  %37 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %36, i32 0, i32 2, !dbg !2446
  %38 = load i32*, i32** %37, align 8, !dbg !2446
  %39 = getelementptr inbounds i32, i32* %38, i64 %35, !dbg !2445
  %40 = load i32, i32* %39, align 4, !dbg !2445
  %41 = call i32 @i_wcwidth(i32 %40), !dbg !2447
  %42 = icmp eq i32 %41, 0, !dbg !2448
  br label %43

; <label>:43:                                     ; preds = %29, %19
  %44 = phi i1 [ false, %19 ], [ %42, %29 ]
  br i1 %44, label %45, label %48, !dbg !2449

; <label>:45:                                     ; preds = %43
  %46 = load i32, i32* %3, align 4, !dbg !2451
  %47 = add nsw i32 %46, 1, !dbg !2451
  store i32 %47, i32* %3, align 4, !dbg !2451
  br label %19, !dbg !2452, !llvm.loop !2454

; <label>:48:                                     ; preds = %43
  br label %49, !dbg !2455

; <label>:49:                                     ; preds = %48, %11
  br label %50, !dbg !2457, !llvm.loop !2458

; <label>:50:                                     ; preds = %49
  %51 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2459
  %52 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %51, i32 0, i32 2, !dbg !2462
  %53 = load i32*, i32** %52, align 8, !dbg !2462
  %54 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2463
  %55 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %54, i32 0, i32 8, !dbg !2464
  %56 = load i32, i32* %55, align 4, !dbg !2464
  %57 = sext i32 %56 to i64, !dbg !2465
  %58 = getelementptr inbounds i32, i32* %53, i64 %57, !dbg !2465
  %59 = bitcast i32* %58 to i8*, !dbg !2466
  %60 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2467
  %61 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %60, i32 0, i32 2, !dbg !2468
  %62 = load i32*, i32** %61, align 8, !dbg !2468
  %63 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2469
  %64 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %63, i32 0, i32 8, !dbg !2470
  %65 = load i32, i32* %64, align 4, !dbg !2470
  %66 = sext i32 %65 to i64, !dbg !2471
  %67 = getelementptr inbounds i32, i32* %62, i64 %66, !dbg !2471
  %68 = load i32, i32* %3, align 4, !dbg !2472
  %69 = sext i32 %68 to i64, !dbg !2473
  %70 = getelementptr inbounds i32, i32* %67, i64 %69, !dbg !2473
  %71 = bitcast i32* %70 to i8*, !dbg !2466
  %72 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2474
  %73 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %72, i32 0, i32 0, !dbg !2475
  %74 = load i32, i32* %73, align 8, !dbg !2475
  %75 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2476
  %76 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %75, i32 0, i32 8, !dbg !2477
  %77 = load i32, i32* %76, align 4, !dbg !2477
  %78 = sub nsw i32 %74, %77, !dbg !2478
  %79 = load i32, i32* %3, align 4, !dbg !2479
  %80 = sub nsw i32 %78, %79, !dbg !2480
  %81 = add nsw i32 %80, 1, !dbg !2481
  %82 = sext i32 %81 to i64, !dbg !2482
  %83 = mul i64 %82, 4, !dbg !2483
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %59, i8* %71, i64 %83, i32 4, i1 false), !dbg !2466
  br label %84, !dbg !2484

; <label>:84:                                     ; preds = %50
  %85 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2485
  %86 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %85, i32 0, i32 15, !dbg !2487
  %87 = load i8, i8* %86, align 4, !dbg !2487
  %88 = lshr i8 %87, 4, !dbg !2487
  %89 = and i8 %88, 1, !dbg !2487
  %90 = zext i8 %89 to i32, !dbg !2487
  %91 = icmp ne i32 %90, 0, !dbg !2485
  br i1 %91, label %92, label %192, !dbg !2488

; <label>:92:                                     ; preds = %84
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2489, metadata !102), !dbg !2491
  store i32 0, i32* %4, align 4, !dbg !2492
  br label %93, !dbg !2494

; <label>:93:                                     ; preds = %110, %92
  %94 = load i32, i32* %4, align 4, !dbg !2495
  %95 = load i32, i32* %3, align 4, !dbg !2498
  %96 = icmp slt i32 %94, %95, !dbg !2499
  br i1 %96, label %97, label %113, !dbg !2500

; <label>:97:                                     ; preds = %93
  %98 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2501
  %99 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %98, i32 0, i32 8, !dbg !2503
  %100 = load i32, i32* %99, align 4, !dbg !2503
  %101 = load i32, i32* %4, align 4, !dbg !2504
  %102 = add nsw i32 %100, %101, !dbg !2505
  %103 = add nsw i32 %102, 1, !dbg !2506
  %104 = sext i32 %103 to i64, !dbg !2507
  %105 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2507
  %106 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %105, i32 0, i32 3, !dbg !2508
  %107 = load i8**, i8*** %106, align 8, !dbg !2508
  %108 = getelementptr inbounds i8*, i8** %107, i64 %104, !dbg !2507
  %109 = load i8*, i8** %108, align 8, !dbg !2507
  call void @g_free(i8* %109), !dbg !2509
  br label %110, !dbg !2510

; <label>:110:                                    ; preds = %97
  %111 = load i32, i32* %4, align 4, !dbg !2511
  %112 = add nsw i32 %111, 1, !dbg !2511
  store i32 %112, i32* %4, align 4, !dbg !2511
  br label %93, !dbg !2513, !llvm.loop !2514

; <label>:113:                                    ; preds = %93
  br label %114, !dbg !2516, !llvm.loop !2517

; <label>:114:                                    ; preds = %113
  %115 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2518
  %116 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %115, i32 0, i32 3, !dbg !2521
  %117 = load i8**, i8*** %116, align 8, !dbg !2521
  %118 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2522
  %119 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %118, i32 0, i32 8, !dbg !2523
  %120 = load i32, i32* %119, align 4, !dbg !2523
  %121 = sext i32 %120 to i64, !dbg !2524
  %122 = getelementptr inbounds i8*, i8** %117, i64 %121, !dbg !2524
  %123 = getelementptr inbounds i8*, i8** %122, i64 1, !dbg !2525
  %124 = bitcast i8** %123 to i8*, !dbg !2526
  %125 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2527
  %126 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %125, i32 0, i32 3, !dbg !2528
  %127 = load i8**, i8*** %126, align 8, !dbg !2528
  %128 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2529
  %129 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %128, i32 0, i32 8, !dbg !2530
  %130 = load i32, i32* %129, align 4, !dbg !2530
  %131 = sext i32 %130 to i64, !dbg !2531
  %132 = getelementptr inbounds i8*, i8** %127, i64 %131, !dbg !2531
  %133 = load i32, i32* %3, align 4, !dbg !2532
  %134 = sext i32 %133 to i64, !dbg !2533
  %135 = getelementptr inbounds i8*, i8** %132, i64 %134, !dbg !2533
  %136 = getelementptr inbounds i8*, i8** %135, i64 1, !dbg !2534
  %137 = bitcast i8** %136 to i8*, !dbg !2526
  %138 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2535
  %139 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %138, i32 0, i32 0, !dbg !2536
  %140 = load i32, i32* %139, align 8, !dbg !2536
  %141 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2537
  %142 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %141, i32 0, i32 8, !dbg !2538
  %143 = load i32, i32* %142, align 4, !dbg !2538
  %144 = sub nsw i32 %140, %143, !dbg !2539
  %145 = load i32, i32* %3, align 4, !dbg !2540
  %146 = sub nsw i32 %144, %145, !dbg !2541
  %147 = sext i32 %146 to i64, !dbg !2542
  %148 = mul i64 %147, 8, !dbg !2543
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %124, i8* %137, i64 %148, i32 8, i1 false), !dbg !2526
  br label %149, !dbg !2544

; <label>:149:                                    ; preds = %114
  store i32 0, i32* %4, align 4, !dbg !2545
  br label %150, !dbg !2547

; <label>:150:                                    ; preds = %165, %149
  %151 = load i32, i32* %4, align 4, !dbg !2548
  %152 = load i32, i32* %3, align 4, !dbg !2551
  %153 = icmp slt i32 %151, %152, !dbg !2552
  br i1 %153, label %154, label %168, !dbg !2553

; <label>:154:                                    ; preds = %150
  %155 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2554
  %156 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %155, i32 0, i32 0, !dbg !2556
  %157 = load i32, i32* %156, align 8, !dbg !2556
  %158 = load i32, i32* %4, align 4, !dbg !2557
  %159 = sub nsw i32 %157, %158, !dbg !2558
  %160 = sext i32 %159 to i64, !dbg !2559
  %161 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2559
  %162 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %161, i32 0, i32 3, !dbg !2560
  %163 = load i8**, i8*** %162, align 8, !dbg !2560
  %164 = getelementptr inbounds i8*, i8** %163, i64 %160, !dbg !2559
  store i8* null, i8** %164, align 8, !dbg !2561
  br label %165, !dbg !2562

; <label>:165:                                    ; preds = %154
  %166 = load i32, i32* %4, align 4, !dbg !2563
  %167 = add nsw i32 %166, 1, !dbg !2563
  store i32 %167, i32* %4, align 4, !dbg !2563
  br label %150, !dbg !2565, !llvm.loop !2566

; <label>:168:                                    ; preds = %150
  %169 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2568
  %170 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %169, i32 0, i32 0, !dbg !2570
  %171 = load i32, i32* %170, align 8, !dbg !2570
  %172 = load i32, i32* %3, align 4, !dbg !2571
  %173 = icmp eq i32 %171, %172, !dbg !2572
  br i1 %173, label %174, label %191, !dbg !2573

; <label>:174:                                    ; preds = %168
  %175 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2574
  %176 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %175, i32 0, i32 3, !dbg !2576
  %177 = load i8**, i8*** %176, align 8, !dbg !2576
  %178 = getelementptr inbounds i8*, i8** %177, i64 0, !dbg !2574
  %179 = load i8*, i8** %178, align 8, !dbg !2574
  %180 = icmp ne i8* %179, null, !dbg !2577
  br i1 %180, label %181, label %191, !dbg !2578

; <label>:181:                                    ; preds = %174
  %182 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2579
  %183 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %182, i32 0, i32 3, !dbg !2581
  %184 = load i8**, i8*** %183, align 8, !dbg !2581
  %185 = getelementptr inbounds i8*, i8** %184, i64 0, !dbg !2579
  %186 = load i8*, i8** %185, align 8, !dbg !2579
  call void @g_free(i8* %186), !dbg !2582
  %187 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2583
  %188 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %187, i32 0, i32 3, !dbg !2584
  %189 = load i8**, i8*** %188, align 8, !dbg !2584
  %190 = getelementptr inbounds i8*, i8** %189, i64 0, !dbg !2583
  store i8* null, i8** %190, align 8, !dbg !2585
  br label %191, !dbg !2586

; <label>:191:                                    ; preds = %181, %174, %168
  br label %192, !dbg !2587

; <label>:192:                                    ; preds = %191, %84
  %193 = load i32, i32* %3, align 4, !dbg !2588
  %194 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2589
  %195 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %194, i32 0, i32 0, !dbg !2590
  %196 = load i32, i32* %195, align 8, !dbg !2591
  %197 = sub nsw i32 %196, %193, !dbg !2591
  store i32 %197, i32* %195, align 8, !dbg !2591
  %198 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2592
  %199 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2593
  %200 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %199, i32 0, i32 8, !dbg !2594
  %201 = load i32, i32* %200, align 4, !dbg !2594
  call void @gui_entry_redraw_from(%struct.GUI_ENTRY_REC* %198, i32 %201), !dbg !2595
  %202 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2596
  call void @gui_entry_fix_cursor(%struct.GUI_ENTRY_REC* %202), !dbg !2597
  %203 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2598
  call void @gui_entry_draw(%struct.GUI_ENTRY_REC* %203), !dbg !2599
  br label %204, !dbg !2600

; <label>:204:                                    ; preds = %192, %9
  ret void, !dbg !2601
}

; Function Attrs: nounwind uwtable
define void @gui_entry_erase_word(%struct.GUI_ENTRY_REC*, i32, i32) #0 !dbg !2603 {
  %4 = alloca %struct.GUI_ENTRY_REC*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.GUI_ENTRY_REC* %0, %struct.GUI_ENTRY_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_REC** %4, metadata !2604, metadata !102), !dbg !2605
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2606, metadata !102), !dbg !2607
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2608, metadata !102), !dbg !2609
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2610, metadata !102), !dbg !2611
  br label %8, !dbg !2612, !llvm.loop !2613

; <label>:8:                                      ; preds = %3
  %9 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2614
  %10 = icmp ne %struct.GUI_ENTRY_REC* %9, null, !dbg !2618
  br i1 %10, label %11, label %12, !dbg !2614

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !2619

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gui_entry_erase_word, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0)), !dbg !2622
  br label %117, !dbg !2625

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !2626

; <label>:14:                                     ; preds = %13
  %15 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2628
  %16 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %15, i32 0, i32 8, !dbg !2630
  %17 = load i32, i32* %16, align 4, !dbg !2630
  %18 = icmp eq i32 %17, 0, !dbg !2631
  br i1 %18, label %19, label %20, !dbg !2632

; <label>:19:                                     ; preds = %14
  br label %117, !dbg !2633

; <label>:20:                                     ; preds = %14
  %21 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2634
  %22 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %21, i32 0, i32 8, !dbg !2635
  %23 = load i32, i32* %22, align 4, !dbg !2635
  %24 = sub nsw i32 %23, 1, !dbg !2636
  store i32 %24, i32* %7, align 4, !dbg !2637
  %25 = load i32, i32* %5, align 4, !dbg !2638
  %26 = icmp ne i32 %25, 0, !dbg !2638
  br i1 %26, label %27, label %64, !dbg !2640

; <label>:27:                                     ; preds = %20
  br label %28, !dbg !2641

; <label>:28:                                     ; preds = %42, %27
  %29 = load i32, i32* %7, align 4, !dbg !2643
  %30 = sext i32 %29 to i64, !dbg !2645
  %31 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2645
  %32 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %31, i32 0, i32 2, !dbg !2646
  %33 = load i32*, i32** %32, align 8, !dbg !2646
  %34 = getelementptr inbounds i32, i32* %33, i64 %30, !dbg !2645
  %35 = load i32, i32* %34, align 4, !dbg !2645
  %36 = icmp eq i32 %35, 32, !dbg !2647
  br i1 %36, label %37, label %40, !dbg !2648

; <label>:37:                                     ; preds = %28
  %38 = load i32, i32* %7, align 4, !dbg !2649
  %39 = icmp sgt i32 %38, 0, !dbg !2651
  br label %40

; <label>:40:                                     ; preds = %37, %28
  %41 = phi i1 [ false, %28 ], [ %39, %37 ]
  br i1 %41, label %42, label %45, !dbg !2652

; <label>:42:                                     ; preds = %40
  %43 = load i32, i32* %7, align 4, !dbg !2654
  %44 = add nsw i32 %43, -1, !dbg !2654
  store i32 %44, i32* %7, align 4, !dbg !2654
  br label %28, !dbg !2655, !llvm.loop !2657

; <label>:45:                                     ; preds = %40
  br label %46, !dbg !2658

; <label>:46:                                     ; preds = %60, %45
  %47 = load i32, i32* %7, align 4, !dbg !2659
  %48 = sext i32 %47 to i64, !dbg !2660
  %49 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2660
  %50 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %49, i32 0, i32 2, !dbg !2661
  %51 = load i32*, i32** %50, align 8, !dbg !2661
  %52 = getelementptr inbounds i32, i32* %51, i64 %48, !dbg !2660
  %53 = load i32, i32* %52, align 4, !dbg !2660
  %54 = icmp ne i32 %53, 32, !dbg !2662
  br i1 %54, label %55, label %58, !dbg !2663

; <label>:55:                                     ; preds = %46
  %56 = load i32, i32* %7, align 4, !dbg !2664
  %57 = icmp sgt i32 %56, 0, !dbg !2665
  br label %58

; <label>:58:                                     ; preds = %55, %46
  %59 = phi i1 [ false, %46 ], [ %57, %55 ]
  br i1 %59, label %60, label %63, !dbg !2666

; <label>:60:                                     ; preds = %58
  %61 = load i32, i32* %7, align 4, !dbg !2667
  %62 = add nsw i32 %61, -1, !dbg !2667
  store i32 %62, i32* %7, align 4, !dbg !2667
  br label %46, !dbg !2668, !llvm.loop !2669

; <label>:63:                                     ; preds = %58
  br label %103, !dbg !2670

; <label>:64:                                     ; preds = %20
  br label %65, !dbg !2671

; <label>:65:                                     ; preds = %80, %64
  %66 = load i32, i32* %7, align 4, !dbg !2673
  %67 = sext i32 %66 to i64, !dbg !2675
  %68 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2675
  %69 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %68, i32 0, i32 2, !dbg !2676
  %70 = load i32*, i32** %69, align 8, !dbg !2676
  %71 = getelementptr inbounds i32, i32* %70, i64 %67, !dbg !2675
  %72 = load i32, i32* %71, align 4, !dbg !2675
  %73 = call i32 @i_isalnum(i32 %72), !dbg !2677
  %74 = icmp ne i32 %73, 0, !dbg !2677
  br i1 %74, label %78, label %75, !dbg !2678

; <label>:75:                                     ; preds = %65
  %76 = load i32, i32* %7, align 4, !dbg !2679
  %77 = icmp sgt i32 %76, 0, !dbg !2681
  br label %78

; <label>:78:                                     ; preds = %75, %65
  %79 = phi i1 [ false, %65 ], [ %77, %75 ]
  br i1 %79, label %80, label %83, !dbg !2682

; <label>:80:                                     ; preds = %78
  %81 = load i32, i32* %7, align 4, !dbg !2684
  %82 = add nsw i32 %81, -1, !dbg !2684
  store i32 %82, i32* %7, align 4, !dbg !2684
  br label %65, !dbg !2685, !llvm.loop !2687

; <label>:83:                                     ; preds = %78
  br label %84, !dbg !2688

; <label>:84:                                     ; preds = %99, %83
  %85 = load i32, i32* %7, align 4, !dbg !2689
  %86 = sext i32 %85 to i64, !dbg !2690
  %87 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2690
  %88 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %87, i32 0, i32 2, !dbg !2691
  %89 = load i32*, i32** %88, align 8, !dbg !2691
  %90 = getelementptr inbounds i32, i32* %89, i64 %86, !dbg !2690
  %91 = load i32, i32* %90, align 4, !dbg !2690
  %92 = call i32 @i_isalnum(i32 %91), !dbg !2692
  %93 = icmp ne i32 %92, 0, !dbg !2692
  br i1 %93, label %94, label %97, !dbg !2693

; <label>:94:                                     ; preds = %84
  %95 = load i32, i32* %7, align 4, !dbg !2694
  %96 = icmp sgt i32 %95, 0, !dbg !2695
  br label %97

; <label>:97:                                     ; preds = %94, %84
  %98 = phi i1 [ false, %84 ], [ %96, %94 ]
  br i1 %98, label %99, label %102, !dbg !2696

; <label>:99:                                     ; preds = %97
  %100 = load i32, i32* %7, align 4, !dbg !2697
  %101 = add nsw i32 %100, -1, !dbg !2697
  store i32 %101, i32* %7, align 4, !dbg !2697
  br label %84, !dbg !2698, !llvm.loop !2699

; <label>:102:                                    ; preds = %97
  br label %103

; <label>:103:                                    ; preds = %102, %63
  %104 = load i32, i32* %7, align 4, !dbg !2700
  %105 = icmp sgt i32 %104, 0, !dbg !2702
  br i1 %105, label %106, label %109, !dbg !2703

; <label>:106:                                    ; preds = %103
  %107 = load i32, i32* %7, align 4, !dbg !2704
  %108 = add nsw i32 %107, 1, !dbg !2704
  store i32 %108, i32* %7, align 4, !dbg !2704
  br label %109, !dbg !2706

; <label>:109:                                    ; preds = %106, %103
  %110 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2707
  %111 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2708
  %112 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %111, i32 0, i32 8, !dbg !2709
  %113 = load i32, i32* %112, align 4, !dbg !2709
  %114 = load i32, i32* %7, align 4, !dbg !2710
  %115 = sub nsw i32 %113, %114, !dbg !2711
  %116 = load i32, i32* %6, align 4, !dbg !2712
  call void @gui_entry_erase(%struct.GUI_ENTRY_REC* %110, i32 %115, i32 %116), !dbg !2713
  br label %117, !dbg !2714

; <label>:117:                                    ; preds = %109, %19, %12
  ret void, !dbg !2715
}

; Function Attrs: nounwind uwtable
define internal i32 @i_isalnum(i32) #0 !dbg !2717 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2720, metadata !102), !dbg !2721
  %4 = load i32, i32* @term_type, align 4, !dbg !2722
  %5 = icmp eq i32 %4, 1, !dbg !2724
  br i1 %5, label %6, label %17, !dbg !2725

; <label>:6:                                      ; preds = %1
  %7 = load i32, i32* %3, align 4, !dbg !2726
  %8 = call i32 @g_unichar_isalnum(i32 %7) #1, !dbg !2727
  %9 = icmp ne i32 %8, 0, !dbg !2727
  br i1 %9, label %14, label %10, !dbg !2728

; <label>:10:                                     ; preds = %6
  %11 = load i32, i32* %3, align 4, !dbg !2729
  %12 = call i32 @i_wcwidth(i32 %11), !dbg !2731
  %13 = icmp eq i32 %12, 0, !dbg !2732
  br label %14, !dbg !2733

; <label>:14:                                     ; preds = %10, %6
  %15 = phi i1 [ true, %6 ], [ %13, %10 ]
  %16 = zext i1 %15 to i32, !dbg !2734
  store i32 %16, i32* %2, align 4, !dbg !2736
  br label %32, !dbg !2736

; <label>:17:                                     ; preds = %1
  %18 = load i32, i32* %3, align 4, !dbg !2737
  %19 = icmp ule i32 %18, 255, !dbg !2738
  br i1 %19, label %20, label %29, !dbg !2737

; <label>:20:                                     ; preds = %17
  %21 = load i32, i32* %3, align 4, !dbg !2739
  %22 = sext i32 %21 to i64, !dbg !2741
  %23 = call i16** @__ctype_b_loc() #1, !dbg !2742
  %24 = load i16*, i16** %23, align 8, !dbg !2743
  %25 = getelementptr inbounds i16, i16* %24, i64 %22, !dbg !2741
  %26 = load i16, i16* %25, align 2, !dbg !2741
  %27 = zext i16 %26 to i32, !dbg !2741
  %28 = and i32 %27, 8, !dbg !2744
  br label %30, !dbg !2745

; <label>:29:                                     ; preds = %17
  br label %30, !dbg !2746

; <label>:30:                                     ; preds = %29, %20
  %31 = phi i32 [ %28, %20 ], [ 0, %29 ], !dbg !2748
  store i32 %31, i32* %2, align 4, !dbg !2750
  br label %32, !dbg !2750

; <label>:32:                                     ; preds = %30, %14
  %33 = load i32, i32* %2, align 4, !dbg !2751
  ret i32 %33, !dbg !2751
}

; Function Attrs: nounwind uwtable
define void @gui_entry_erase_next_word(%struct.GUI_ENTRY_REC*, i32, i32) #0 !dbg !2752 {
  %4 = alloca %struct.GUI_ENTRY_REC*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.GUI_ENTRY_REC* %0, %struct.GUI_ENTRY_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_REC** %4, metadata !2753, metadata !102), !dbg !2754
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2755, metadata !102), !dbg !2756
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2757, metadata !102), !dbg !2758
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2759, metadata !102), !dbg !2760
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2761, metadata !102), !dbg !2762
  br label %9, !dbg !2763, !llvm.loop !2764

; <label>:9:                                      ; preds = %3
  %10 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2765
  %11 = icmp ne %struct.GUI_ENTRY_REC* %10, null, !dbg !2769
  br i1 %11, label %12, label %13, !dbg !2765

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !2770

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gui_entry_erase_next_word, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0)), !dbg !2773
  br label %130, !dbg !2776

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !2777

; <label>:15:                                     ; preds = %14
  %16 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2779
  %17 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %16, i32 0, i32 8, !dbg !2781
  %18 = load i32, i32* %17, align 4, !dbg !2781
  %19 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2782
  %20 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %19, i32 0, i32 0, !dbg !2783
  %21 = load i32, i32* %20, align 8, !dbg !2783
  %22 = icmp eq i32 %18, %21, !dbg !2784
  br i1 %22, label %23, label %24, !dbg !2785

; <label>:23:                                     ; preds = %15
  br label %130, !dbg !2786

; <label>:24:                                     ; preds = %15
  %25 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2787
  %26 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %25, i32 0, i32 8, !dbg !2788
  %27 = load i32, i32* %26, align 4, !dbg !2788
  store i32 %27, i32* %7, align 4, !dbg !2789
  %28 = load i32, i32* %5, align 4, !dbg !2790
  %29 = icmp ne i32 %28, 0, !dbg !2790
  br i1 %29, label %30, label %73, !dbg !2792

; <label>:30:                                     ; preds = %24
  br label %31, !dbg !2793

; <label>:31:                                     ; preds = %48, %30
  %32 = load i32, i32* %7, align 4, !dbg !2795
  %33 = sext i32 %32 to i64, !dbg !2797
  %34 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2797
  %35 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %34, i32 0, i32 2, !dbg !2798
  %36 = load i32*, i32** %35, align 8, !dbg !2798
  %37 = getelementptr inbounds i32, i32* %36, i64 %33, !dbg !2797
  %38 = load i32, i32* %37, align 4, !dbg !2797
  %39 = icmp eq i32 %38, 32, !dbg !2799
  br i1 %39, label %40, label %46, !dbg !2800

; <label>:40:                                     ; preds = %31
  %41 = load i32, i32* %7, align 4, !dbg !2801
  %42 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2803
  %43 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %42, i32 0, i32 0, !dbg !2804
  %44 = load i32, i32* %43, align 8, !dbg !2804
  %45 = icmp slt i32 %41, %44, !dbg !2805
  br label %46

; <label>:46:                                     ; preds = %40, %31
  %47 = phi i1 [ false, %31 ], [ %45, %40 ]
  br i1 %47, label %48, label %51, !dbg !2806

; <label>:48:                                     ; preds = %46
  %49 = load i32, i32* %7, align 4, !dbg !2808
  %50 = add nsw i32 %49, 1, !dbg !2808
  store i32 %50, i32* %7, align 4, !dbg !2808
  br label %31, !dbg !2809, !llvm.loop !2811

; <label>:51:                                     ; preds = %46
  br label %52, !dbg !2812

; <label>:52:                                     ; preds = %69, %51
  %53 = load i32, i32* %7, align 4, !dbg !2813
  %54 = sext i32 %53 to i64, !dbg !2814
  %55 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2814
  %56 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %55, i32 0, i32 2, !dbg !2815
  %57 = load i32*, i32** %56, align 8, !dbg !2815
  %58 = getelementptr inbounds i32, i32* %57, i64 %54, !dbg !2814
  %59 = load i32, i32* %58, align 4, !dbg !2814
  %60 = icmp ne i32 %59, 32, !dbg !2816
  br i1 %60, label %61, label %67, !dbg !2817

; <label>:61:                                     ; preds = %52
  %62 = load i32, i32* %7, align 4, !dbg !2818
  %63 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2819
  %64 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %63, i32 0, i32 0, !dbg !2820
  %65 = load i32, i32* %64, align 8, !dbg !2820
  %66 = icmp slt i32 %62, %65, !dbg !2821
  br label %67

; <label>:67:                                     ; preds = %61, %52
  %68 = phi i1 [ false, %52 ], [ %66, %61 ]
  br i1 %68, label %69, label %72, !dbg !2822

; <label>:69:                                     ; preds = %67
  %70 = load i32, i32* %7, align 4, !dbg !2823
  %71 = add nsw i32 %70, 1, !dbg !2823
  store i32 %71, i32* %7, align 4, !dbg !2823
  br label %52, !dbg !2824, !llvm.loop !2825

; <label>:72:                                     ; preds = %67
  br label %118, !dbg !2826

; <label>:73:                                     ; preds = %24
  br label %74, !dbg !2827

; <label>:74:                                     ; preds = %92, %73
  %75 = load i32, i32* %7, align 4, !dbg !2829
  %76 = sext i32 %75 to i64, !dbg !2831
  %77 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2831
  %78 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %77, i32 0, i32 2, !dbg !2832
  %79 = load i32*, i32** %78, align 8, !dbg !2832
  %80 = getelementptr inbounds i32, i32* %79, i64 %76, !dbg !2831
  %81 = load i32, i32* %80, align 4, !dbg !2831
  %82 = call i32 @i_isalnum(i32 %81), !dbg !2833
  %83 = icmp ne i32 %82, 0, !dbg !2833
  br i1 %83, label %90, label %84, !dbg !2834

; <label>:84:                                     ; preds = %74
  %85 = load i32, i32* %7, align 4, !dbg !2835
  %86 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2837
  %87 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %86, i32 0, i32 0, !dbg !2838
  %88 = load i32, i32* %87, align 8, !dbg !2838
  %89 = icmp slt i32 %85, %88, !dbg !2839
  br label %90

; <label>:90:                                     ; preds = %84, %74
  %91 = phi i1 [ false, %74 ], [ %89, %84 ]
  br i1 %91, label %92, label %95, !dbg !2840

; <label>:92:                                     ; preds = %90
  %93 = load i32, i32* %7, align 4, !dbg !2842
  %94 = add nsw i32 %93, 1, !dbg !2842
  store i32 %94, i32* %7, align 4, !dbg !2842
  br label %74, !dbg !2843, !llvm.loop !2845

; <label>:95:                                     ; preds = %90
  br label %96, !dbg !2846

; <label>:96:                                     ; preds = %114, %95
  %97 = load i32, i32* %7, align 4, !dbg !2847
  %98 = sext i32 %97 to i64, !dbg !2848
  %99 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2848
  %100 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %99, i32 0, i32 2, !dbg !2849
  %101 = load i32*, i32** %100, align 8, !dbg !2849
  %102 = getelementptr inbounds i32, i32* %101, i64 %98, !dbg !2848
  %103 = load i32, i32* %102, align 4, !dbg !2848
  %104 = call i32 @i_isalnum(i32 %103), !dbg !2850
  %105 = icmp ne i32 %104, 0, !dbg !2850
  br i1 %105, label %106, label %112, !dbg !2851

; <label>:106:                                    ; preds = %96
  %107 = load i32, i32* %7, align 4, !dbg !2852
  %108 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2853
  %109 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %108, i32 0, i32 0, !dbg !2854
  %110 = load i32, i32* %109, align 8, !dbg !2854
  %111 = icmp slt i32 %107, %110, !dbg !2855
  br label %112

; <label>:112:                                    ; preds = %106, %96
  %113 = phi i1 [ false, %96 ], [ %111, %106 ]
  br i1 %113, label %114, label %117, !dbg !2856

; <label>:114:                                    ; preds = %112
  %115 = load i32, i32* %7, align 4, !dbg !2857
  %116 = add nsw i32 %115, 1, !dbg !2857
  store i32 %116, i32* %7, align 4, !dbg !2857
  br label %96, !dbg !2858, !llvm.loop !2859

; <label>:117:                                    ; preds = %112
  br label %118

; <label>:118:                                    ; preds = %117, %72
  %119 = load i32, i32* %7, align 4, !dbg !2860
  %120 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2861
  %121 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %120, i32 0, i32 8, !dbg !2862
  %122 = load i32, i32* %121, align 4, !dbg !2862
  %123 = sub nsw i32 %119, %122, !dbg !2863
  store i32 %123, i32* %8, align 4, !dbg !2864
  %124 = load i32, i32* %7, align 4, !dbg !2865
  %125 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2866
  %126 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %125, i32 0, i32 8, !dbg !2867
  store i32 %124, i32* %126, align 4, !dbg !2868
  %127 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !2869
  %128 = load i32, i32* %8, align 4, !dbg !2870
  %129 = load i32, i32* %6, align 4, !dbg !2871
  call void @gui_entry_erase(%struct.GUI_ENTRY_REC* %127, i32 %128, i32 %129), !dbg !2872
  br label %130, !dbg !2873

; <label>:130:                                    ; preds = %118, %23, %13
  ret void, !dbg !2874
}

; Function Attrs: nounwind uwtable
define void @gui_entry_transpose_chars(%struct.GUI_ENTRY_REC*) #0 !dbg !2876 {
  %2 = alloca %struct.GUI_ENTRY_REC*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store %struct.GUI_ENTRY_REC* %0, %struct.GUI_ENTRY_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_REC** %2, metadata !2877, metadata !102), !dbg !2878
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2879, metadata !102), !dbg !2880
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2881, metadata !102), !dbg !2882
  %5 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2883
  %6 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %5, i32 0, i32 8, !dbg !2885
  %7 = load i32, i32* %6, align 4, !dbg !2885
  %8 = icmp eq i32 %7, 0, !dbg !2886
  br i1 %8, label %14, label %9, !dbg !2887

; <label>:9:                                      ; preds = %1
  %10 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2888
  %11 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %10, i32 0, i32 0, !dbg !2890
  %12 = load i32, i32* %11, align 8, !dbg !2890
  %13 = icmp slt i32 %12, 2, !dbg !2891
  br i1 %13, label %14, label %15, !dbg !2892

; <label>:14:                                     ; preds = %9, %1
  br label %123, !dbg !2893

; <label>:15:                                     ; preds = %9
  %16 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2894
  %17 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %16, i32 0, i32 8, !dbg !2896
  %18 = load i32, i32* %17, align 4, !dbg !2896
  %19 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2897
  %20 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %19, i32 0, i32 0, !dbg !2898
  %21 = load i32, i32* %20, align 8, !dbg !2898
  %22 = icmp eq i32 %18, %21, !dbg !2899
  br i1 %22, label %23, label %28, !dbg !2900

; <label>:23:                                     ; preds = %15
  %24 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2901
  %25 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %24, i32 0, i32 8, !dbg !2902
  %26 = load i32, i32* %25, align 4, !dbg !2903
  %27 = add nsw i32 %26, -1, !dbg !2903
  store i32 %27, i32* %25, align 4, !dbg !2903
  br label %28, !dbg !2901

; <label>:28:                                     ; preds = %23, %15
  %29 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2904
  %30 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %29, i32 0, i32 8, !dbg !2905
  %31 = load i32, i32* %30, align 4, !dbg !2905
  %32 = sext i32 %31 to i64, !dbg !2906
  %33 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2906
  %34 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %33, i32 0, i32 2, !dbg !2907
  %35 = load i32*, i32** %34, align 8, !dbg !2907
  %36 = getelementptr inbounds i32, i32* %35, i64 %32, !dbg !2906
  %37 = load i32, i32* %36, align 4, !dbg !2906
  store i32 %37, i32* %3, align 4, !dbg !2908
  %38 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2909
  %39 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %38, i32 0, i32 8, !dbg !2910
  %40 = load i32, i32* %39, align 4, !dbg !2910
  %41 = sub nsw i32 %40, 1, !dbg !2911
  %42 = sext i32 %41 to i64, !dbg !2912
  %43 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2912
  %44 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %43, i32 0, i32 2, !dbg !2913
  %45 = load i32*, i32** %44, align 8, !dbg !2913
  %46 = getelementptr inbounds i32, i32* %45, i64 %42, !dbg !2912
  %47 = load i32, i32* %46, align 4, !dbg !2912
  %48 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2914
  %49 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %48, i32 0, i32 8, !dbg !2915
  %50 = load i32, i32* %49, align 4, !dbg !2915
  %51 = sext i32 %50 to i64, !dbg !2916
  %52 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2916
  %53 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %52, i32 0, i32 2, !dbg !2917
  %54 = load i32*, i32** %53, align 8, !dbg !2917
  %55 = getelementptr inbounds i32, i32* %54, i64 %51, !dbg !2916
  store i32 %47, i32* %55, align 4, !dbg !2918
  %56 = load i32, i32* %3, align 4, !dbg !2919
  %57 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2920
  %58 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %57, i32 0, i32 8, !dbg !2921
  %59 = load i32, i32* %58, align 4, !dbg !2921
  %60 = sub nsw i32 %59, 1, !dbg !2922
  %61 = sext i32 %60 to i64, !dbg !2923
  %62 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2923
  %63 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %62, i32 0, i32 2, !dbg !2924
  %64 = load i32*, i32** %63, align 8, !dbg !2924
  %65 = getelementptr inbounds i32, i32* %64, i64 %61, !dbg !2923
  store i32 %56, i32* %65, align 4, !dbg !2925
  %66 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2926
  %67 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %66, i32 0, i32 15, !dbg !2928
  %68 = load i8, i8* %67, align 4, !dbg !2928
  %69 = lshr i8 %68, 4, !dbg !2928
  %70 = and i8 %69, 1, !dbg !2928
  %71 = zext i8 %70 to i32, !dbg !2928
  %72 = icmp ne i32 %71, 0, !dbg !2926
  br i1 %72, label %73, label %111, !dbg !2929

; <label>:73:                                     ; preds = %28
  %74 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2930
  %75 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %74, i32 0, i32 8, !dbg !2932
  %76 = load i32, i32* %75, align 4, !dbg !2932
  %77 = add nsw i32 %76, 1, !dbg !2933
  %78 = sext i32 %77 to i64, !dbg !2934
  %79 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2934
  %80 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %79, i32 0, i32 3, !dbg !2935
  %81 = load i8**, i8*** %80, align 8, !dbg !2935
  %82 = getelementptr inbounds i8*, i8** %81, i64 %78, !dbg !2934
  %83 = load i8*, i8** %82, align 8, !dbg !2934
  store i8* %83, i8** %4, align 8, !dbg !2936
  %84 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2937
  %85 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %84, i32 0, i32 8, !dbg !2938
  %86 = load i32, i32* %85, align 4, !dbg !2938
  %87 = sext i32 %86 to i64, !dbg !2939
  %88 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2939
  %89 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %88, i32 0, i32 3, !dbg !2940
  %90 = load i8**, i8*** %89, align 8, !dbg !2940
  %91 = getelementptr inbounds i8*, i8** %90, i64 %87, !dbg !2939
  %92 = load i8*, i8** %91, align 8, !dbg !2939
  %93 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2941
  %94 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %93, i32 0, i32 8, !dbg !2942
  %95 = load i32, i32* %94, align 4, !dbg !2942
  %96 = add nsw i32 %95, 1, !dbg !2943
  %97 = sext i32 %96 to i64, !dbg !2944
  %98 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2944
  %99 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %98, i32 0, i32 3, !dbg !2945
  %100 = load i8**, i8*** %99, align 8, !dbg !2945
  %101 = getelementptr inbounds i8*, i8** %100, i64 %97, !dbg !2944
  store i8* %92, i8** %101, align 8, !dbg !2946
  %102 = load i8*, i8** %4, align 8, !dbg !2947
  %103 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2948
  %104 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %103, i32 0, i32 8, !dbg !2949
  %105 = load i32, i32* %104, align 4, !dbg !2949
  %106 = sext i32 %105 to i64, !dbg !2950
  %107 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2950
  %108 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %107, i32 0, i32 3, !dbg !2951
  %109 = load i8**, i8*** %108, align 8, !dbg !2951
  %110 = getelementptr inbounds i8*, i8** %109, i64 %106, !dbg !2950
  store i8* %102, i8** %110, align 8, !dbg !2952
  br label %111, !dbg !2953

; <label>:111:                                    ; preds = %73, %28
  %112 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2954
  %113 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %112, i32 0, i32 8, !dbg !2955
  %114 = load i32, i32* %113, align 4, !dbg !2956
  %115 = add nsw i32 %114, 1, !dbg !2956
  store i32 %115, i32* %113, align 4, !dbg !2956
  %116 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2957
  %117 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2958
  %118 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %117, i32 0, i32 8, !dbg !2959
  %119 = load i32, i32* %118, align 4, !dbg !2959
  %120 = sub nsw i32 %119, 2, !dbg !2960
  call void @gui_entry_redraw_from(%struct.GUI_ENTRY_REC* %116, i32 %120), !dbg !2961
  %121 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2962
  call void @gui_entry_fix_cursor(%struct.GUI_ENTRY_REC* %121), !dbg !2963
  %122 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2964
  call void @gui_entry_draw(%struct.GUI_ENTRY_REC* %122), !dbg !2965
  br label %123, !dbg !2966

; <label>:123:                                    ; preds = %111, %14
  ret void, !dbg !2967
}

; Function Attrs: nounwind uwtable
define void @gui_entry_transpose_words(%struct.GUI_ENTRY_REC*) #0 !dbg !2969 {
  %2 = alloca %struct.GUI_ENTRY_REC*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  store %struct.GUI_ENTRY_REC* %0, %struct.GUI_ENTRY_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_REC** %2, metadata !2970, metadata !102), !dbg !2971
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2972, metadata !102), !dbg !2973
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2974, metadata !102), !dbg !2975
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2976, metadata !102), !dbg !2977
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2978, metadata !102), !dbg !2979
  %14 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2980
  %15 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %14, i32 0, i32 8, !dbg !2981
  %16 = load i32, i32* %15, align 4, !dbg !2981
  store i32 %16, i32* %6, align 4, !dbg !2982
  br label %17, !dbg !2983

; <label>:17:                                     ; preds = %36, %1
  %18 = load i32, i32* %6, align 4, !dbg !2984
  %19 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2986
  %20 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %19, i32 0, i32 0, !dbg !2987
  %21 = load i32, i32* %20, align 8, !dbg !2987
  %22 = icmp slt i32 %18, %21, !dbg !2988
  br i1 %22, label %23, label %34, !dbg !2989

; <label>:23:                                     ; preds = %17
  %24 = load i32, i32* %6, align 4, !dbg !2990
  %25 = sext i32 %24 to i64, !dbg !2992
  %26 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !2992
  %27 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %26, i32 0, i32 2, !dbg !2993
  %28 = load i32*, i32** %27, align 8, !dbg !2993
  %29 = getelementptr inbounds i32, i32* %28, i64 %25, !dbg !2992
  %30 = load i32, i32* %29, align 4, !dbg !2992
  %31 = call i32 @i_isalnum(i32 %30), !dbg !2994
  %32 = icmp ne i32 %31, 0, !dbg !2995
  %33 = xor i1 %32, true, !dbg !2995
  br label %34

; <label>:34:                                     ; preds = %23, %17
  %35 = phi i1 [ false, %17 ], [ %33, %23 ]
  br i1 %35, label %36, label %39, !dbg !2996

; <label>:36:                                     ; preds = %34
  %37 = load i32, i32* %6, align 4, !dbg !2998
  %38 = add nsw i32 %37, 1, !dbg !2998
  store i32 %38, i32* %6, align 4, !dbg !2998
  br label %17, !dbg !2999, !llvm.loop !3001

; <label>:39:                                     ; preds = %34
  br label %40, !dbg !3002

; <label>:40:                                     ; preds = %58, %39
  %41 = load i32, i32* %6, align 4, !dbg !3003
  %42 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3004
  %43 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %42, i32 0, i32 0, !dbg !3005
  %44 = load i32, i32* %43, align 8, !dbg !3005
  %45 = icmp slt i32 %41, %44, !dbg !3006
  br i1 %45, label %46, label %56, !dbg !3007

; <label>:46:                                     ; preds = %40
  %47 = load i32, i32* %6, align 4, !dbg !3008
  %48 = sext i32 %47 to i64, !dbg !3009
  %49 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3009
  %50 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %49, i32 0, i32 2, !dbg !3010
  %51 = load i32*, i32** %50, align 8, !dbg !3010
  %52 = getelementptr inbounds i32, i32* %51, i64 %48, !dbg !3009
  %53 = load i32, i32* %52, align 4, !dbg !3009
  %54 = call i32 @i_isalnum(i32 %53), !dbg !3011
  %55 = icmp ne i32 %54, 0, !dbg !3012
  br label %56

; <label>:56:                                     ; preds = %46, %40
  %57 = phi i1 [ false, %40 ], [ %55, %46 ]
  br i1 %57, label %58, label %61, !dbg !3013

; <label>:58:                                     ; preds = %56
  %59 = load i32, i32* %6, align 4, !dbg !3014
  %60 = add nsw i32 %59, 1, !dbg !3014
  store i32 %60, i32* %6, align 4, !dbg !3014
  br label %40, !dbg !3015, !llvm.loop !3016

; <label>:61:                                     ; preds = %56
  %62 = load i32, i32* %6, align 4, !dbg !3017
  store i32 %62, i32* %5, align 4, !dbg !3018
  br label %63, !dbg !3019

; <label>:63:                                     ; preds = %80, %61
  %64 = load i32, i32* %5, align 4, !dbg !3020
  %65 = icmp sgt i32 %64, 0, !dbg !3021
  br i1 %65, label %66, label %78, !dbg !3022

; <label>:66:                                     ; preds = %63
  %67 = load i32, i32* %5, align 4, !dbg !3023
  %68 = sub nsw i32 %67, 1, !dbg !3024
  %69 = sext i32 %68 to i64, !dbg !3025
  %70 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3025
  %71 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %70, i32 0, i32 2, !dbg !3026
  %72 = load i32*, i32** %71, align 8, !dbg !3026
  %73 = getelementptr inbounds i32, i32* %72, i64 %69, !dbg !3025
  %74 = load i32, i32* %73, align 4, !dbg !3025
  %75 = call i32 @i_isalnum(i32 %74), !dbg !3027
  %76 = icmp ne i32 %75, 0, !dbg !3028
  %77 = xor i1 %76, true, !dbg !3028
  br label %78

; <label>:78:                                     ; preds = %66, %63
  %79 = phi i1 [ false, %63 ], [ %77, %66 ]
  br i1 %79, label %80, label %83, !dbg !3029

; <label>:80:                                     ; preds = %78
  %81 = load i32, i32* %5, align 4, !dbg !3030
  %82 = add nsw i32 %81, -1, !dbg !3030
  store i32 %82, i32* %5, align 4, !dbg !3030
  br label %63, !dbg !3031, !llvm.loop !3032

; <label>:83:                                     ; preds = %78
  br label %84, !dbg !3033

; <label>:84:                                     ; preds = %100, %83
  %85 = load i32, i32* %5, align 4, !dbg !3034
  %86 = icmp sgt i32 %85, 0, !dbg !3035
  br i1 %86, label %87, label %98, !dbg !3036

; <label>:87:                                     ; preds = %84
  %88 = load i32, i32* %5, align 4, !dbg !3037
  %89 = sub nsw i32 %88, 1, !dbg !3038
  %90 = sext i32 %89 to i64, !dbg !3039
  %91 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3039
  %92 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %91, i32 0, i32 2, !dbg !3040
  %93 = load i32*, i32** %92, align 8, !dbg !3040
  %94 = getelementptr inbounds i32, i32* %93, i64 %90, !dbg !3039
  %95 = load i32, i32* %94, align 4, !dbg !3039
  %96 = call i32 @i_isalnum(i32 %95), !dbg !3041
  %97 = icmp ne i32 %96, 0, !dbg !3042
  br label %98

; <label>:98:                                     ; preds = %87, %84
  %99 = phi i1 [ false, %84 ], [ %97, %87 ]
  br i1 %99, label %100, label %103, !dbg !3043

; <label>:100:                                    ; preds = %98
  %101 = load i32, i32* %5, align 4, !dbg !3044
  %102 = add nsw i32 %101, -1, !dbg !3044
  store i32 %102, i32* %5, align 4, !dbg !3044
  br label %84, !dbg !3045, !llvm.loop !3046

; <label>:103:                                    ; preds = %98
  %104 = load i32, i32* %5, align 4, !dbg !3047
  store i32 %104, i32* %4, align 4, !dbg !3048
  br label %105, !dbg !3049

; <label>:105:                                    ; preds = %122, %103
  %106 = load i32, i32* %4, align 4, !dbg !3050
  %107 = icmp sgt i32 %106, 0, !dbg !3051
  br i1 %107, label %108, label %120, !dbg !3052

; <label>:108:                                    ; preds = %105
  %109 = load i32, i32* %4, align 4, !dbg !3053
  %110 = sub nsw i32 %109, 1, !dbg !3054
  %111 = sext i32 %110 to i64, !dbg !3055
  %112 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3055
  %113 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %112, i32 0, i32 2, !dbg !3056
  %114 = load i32*, i32** %113, align 8, !dbg !3056
  %115 = getelementptr inbounds i32, i32* %114, i64 %111, !dbg !3055
  %116 = load i32, i32* %115, align 4, !dbg !3055
  %117 = call i32 @i_isalnum(i32 %116), !dbg !3057
  %118 = icmp ne i32 %117, 0, !dbg !3058
  %119 = xor i1 %118, true, !dbg !3058
  br label %120

; <label>:120:                                    ; preds = %108, %105
  %121 = phi i1 [ false, %105 ], [ %119, %108 ]
  br i1 %121, label %122, label %125, !dbg !3059

; <label>:122:                                    ; preds = %120
  %123 = load i32, i32* %4, align 4, !dbg !3060
  %124 = add nsw i32 %123, -1, !dbg !3060
  store i32 %124, i32* %4, align 4, !dbg !3060
  br label %105, !dbg !3061, !llvm.loop !3062

; <label>:125:                                    ; preds = %120
  %126 = load i32, i32* %4, align 4, !dbg !3063
  store i32 %126, i32* %3, align 4, !dbg !3064
  br label %127, !dbg !3065

; <label>:127:                                    ; preds = %143, %125
  %128 = load i32, i32* %3, align 4, !dbg !3066
  %129 = icmp sgt i32 %128, 0, !dbg !3067
  br i1 %129, label %130, label %141, !dbg !3068

; <label>:130:                                    ; preds = %127
  %131 = load i32, i32* %3, align 4, !dbg !3069
  %132 = sub nsw i32 %131, 1, !dbg !3070
  %133 = sext i32 %132 to i64, !dbg !3071
  %134 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3071
  %135 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %134, i32 0, i32 2, !dbg !3072
  %136 = load i32*, i32** %135, align 8, !dbg !3072
  %137 = getelementptr inbounds i32, i32* %136, i64 %133, !dbg !3071
  %138 = load i32, i32* %137, align 4, !dbg !3071
  %139 = call i32 @i_isalnum(i32 %138), !dbg !3073
  %140 = icmp ne i32 %139, 0, !dbg !3074
  br label %141

; <label>:141:                                    ; preds = %130, %127
  %142 = phi i1 [ false, %127 ], [ %140, %130 ]
  br i1 %142, label %143, label %146, !dbg !3075

; <label>:143:                                    ; preds = %141
  %144 = load i32, i32* %3, align 4, !dbg !3076
  %145 = add nsw i32 %144, -1, !dbg !3076
  store i32 %145, i32* %3, align 4, !dbg !3076
  br label %127, !dbg !3077, !llvm.loop !3078

; <label>:146:                                    ; preds = %141
  %147 = load i32, i32* %3, align 4, !dbg !3079
  %148 = load i32, i32* %4, align 4, !dbg !3081
  %149 = icmp slt i32 %147, %148, !dbg !3082
  br i1 %149, label %150, label %507, !dbg !3083

; <label>:150:                                    ; preds = %146
  %151 = load i32, i32* %4, align 4, !dbg !3084
  %152 = load i32, i32* %5, align 4, !dbg !3086
  %153 = icmp slt i32 %151, %152, !dbg !3087
  br i1 %153, label %154, label %507, !dbg !3088

; <label>:154:                                    ; preds = %150
  %155 = load i32, i32* %5, align 4, !dbg !3089
  %156 = load i32, i32* %6, align 4, !dbg !3091
  %157 = icmp slt i32 %155, %156, !dbg !3092
  br i1 %157, label %158, label %507, !dbg !3093

; <label>:158:                                    ; preds = %154
  call void @llvm.dbg.declare(metadata i32** %7, metadata !3094, metadata !102), !dbg !3096
  call void @llvm.dbg.declare(metadata i32** %8, metadata !3097, metadata !102), !dbg !3098
  call void @llvm.dbg.declare(metadata i32** %9, metadata !3099, metadata !102), !dbg !3100
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !3101, metadata !102), !dbg !3102
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !3103, metadata !102), !dbg !3104
  call void @llvm.dbg.declare(metadata i8*** %12, metadata !3105, metadata !102), !dbg !3106
  call void @llvm.dbg.declare(metadata i32* %13, metadata !3107, metadata !102), !dbg !3108
  %159 = load i32, i32* %4, align 4, !dbg !3109
  %160 = load i32, i32* %3, align 4, !dbg !3110
  %161 = sub nsw i32 %159, %160, !dbg !3111
  %162 = sext i32 %161 to i64, !dbg !3112
  %163 = mul i64 %162, 4, !dbg !3113
  %164 = call noalias i8* @g_malloc(i64 %163), !dbg !3114
  %165 = bitcast i8* %164 to i32*, !dbg !3115
  store i32* %165, i32** %7, align 8, !dbg !3116
  %166 = load i32, i32* %5, align 4, !dbg !3117
  %167 = load i32, i32* %4, align 4, !dbg !3118
  %168 = sub nsw i32 %166, %167, !dbg !3119
  %169 = sext i32 %168 to i64, !dbg !3120
  %170 = mul i64 %169, 4, !dbg !3121
  %171 = call noalias i8* @g_malloc(i64 %170), !dbg !3122
  %172 = bitcast i8* %171 to i32*, !dbg !3123
  store i32* %172, i32** %8, align 8, !dbg !3124
  %173 = load i32, i32* %6, align 4, !dbg !3125
  %174 = load i32, i32* %5, align 4, !dbg !3126
  %175 = sub nsw i32 %173, %174, !dbg !3127
  %176 = sext i32 %175 to i64, !dbg !3128
  %177 = mul i64 %176, 4, !dbg !3129
  %178 = call noalias i8* @g_malloc(i64 %177), !dbg !3130
  %179 = bitcast i8* %178 to i32*, !dbg !3131
  store i32* %179, i32** %9, align 8, !dbg !3132
  %180 = load i32, i32* %4, align 4, !dbg !3133
  %181 = load i32, i32* %3, align 4, !dbg !3134
  %182 = sub nsw i32 %180, %181, !dbg !3135
  %183 = sext i32 %182 to i64, !dbg !3136
  %184 = mul i64 %183, 8, !dbg !3137
  %185 = call noalias i8* @g_malloc(i64 %184), !dbg !3138
  %186 = bitcast i8* %185 to i8**, !dbg !3139
  store i8** %186, i8*** %10, align 8, !dbg !3140
  %187 = load i32, i32* %5, align 4, !dbg !3141
  %188 = load i32, i32* %4, align 4, !dbg !3142
  %189 = sub nsw i32 %187, %188, !dbg !3143
  %190 = sext i32 %189 to i64, !dbg !3144
  %191 = mul i64 %190, 8, !dbg !3145
  %192 = call noalias i8* @g_malloc(i64 %191), !dbg !3146
  %193 = bitcast i8* %192 to i8**, !dbg !3147
  store i8** %193, i8*** %11, align 8, !dbg !3148
  %194 = load i32, i32* %6, align 4, !dbg !3149
  %195 = load i32, i32* %5, align 4, !dbg !3150
  %196 = sub nsw i32 %194, %195, !dbg !3151
  %197 = sext i32 %196 to i64, !dbg !3152
  %198 = mul i64 %197, 8, !dbg !3153
  %199 = call noalias i8* @g_malloc(i64 %198), !dbg !3154
  %200 = bitcast i8* %199 to i8**, !dbg !3155
  store i8** %200, i8*** %12, align 8, !dbg !3156
  %201 = load i32, i32* %3, align 4, !dbg !3157
  store i32 %201, i32* %13, align 4, !dbg !3159
  br label %202, !dbg !3160

; <label>:202:                                    ; preds = %243, %158
  %203 = load i32, i32* %13, align 4, !dbg !3161
  %204 = load i32, i32* %4, align 4, !dbg !3164
  %205 = icmp slt i32 %203, %204, !dbg !3165
  br i1 %205, label %206, label %246, !dbg !3166

; <label>:206:                                    ; preds = %202
  %207 = load i32, i32* %13, align 4, !dbg !3167
  %208 = sext i32 %207 to i64, !dbg !3169
  %209 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3169
  %210 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %209, i32 0, i32 2, !dbg !3170
  %211 = load i32*, i32** %210, align 8, !dbg !3170
  %212 = getelementptr inbounds i32, i32* %211, i64 %208, !dbg !3169
  %213 = load i32, i32* %212, align 4, !dbg !3169
  %214 = load i32, i32* %13, align 4, !dbg !3171
  %215 = load i32, i32* %3, align 4, !dbg !3172
  %216 = sub nsw i32 %214, %215, !dbg !3173
  %217 = sext i32 %216 to i64, !dbg !3174
  %218 = load i32*, i32** %7, align 8, !dbg !3174
  %219 = getelementptr inbounds i32, i32* %218, i64 %217, !dbg !3174
  store i32 %213, i32* %219, align 4, !dbg !3175
  %220 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3176
  %221 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %220, i32 0, i32 15, !dbg !3178
  %222 = load i8, i8* %221, align 4, !dbg !3178
  %223 = lshr i8 %222, 4, !dbg !3178
  %224 = and i8 %223, 1, !dbg !3178
  %225 = zext i8 %224 to i32, !dbg !3178
  %226 = icmp ne i32 %225, 0, !dbg !3176
  br i1 %226, label %227, label %242, !dbg !3179

; <label>:227:                                    ; preds = %206
  %228 = load i32, i32* %13, align 4, !dbg !3180
  %229 = add nsw i32 %228, 1, !dbg !3181
  %230 = sext i32 %229 to i64, !dbg !3182
  %231 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3182
  %232 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %231, i32 0, i32 3, !dbg !3183
  %233 = load i8**, i8*** %232, align 8, !dbg !3183
  %234 = getelementptr inbounds i8*, i8** %233, i64 %230, !dbg !3182
  %235 = load i8*, i8** %234, align 8, !dbg !3182
  %236 = load i32, i32* %13, align 4, !dbg !3184
  %237 = load i32, i32* %3, align 4, !dbg !3185
  %238 = sub nsw i32 %236, %237, !dbg !3186
  %239 = sext i32 %238 to i64, !dbg !3187
  %240 = load i8**, i8*** %10, align 8, !dbg !3187
  %241 = getelementptr inbounds i8*, i8** %240, i64 %239, !dbg !3187
  store i8* %235, i8** %241, align 8, !dbg !3188
  br label %242, !dbg !3187

; <label>:242:                                    ; preds = %227, %206
  br label %243, !dbg !3189

; <label>:243:                                    ; preds = %242
  %244 = load i32, i32* %13, align 4, !dbg !3190
  %245 = add nsw i32 %244, 1, !dbg !3190
  store i32 %245, i32* %13, align 4, !dbg !3190
  br label %202, !dbg !3192, !llvm.loop !3193

; <label>:246:                                    ; preds = %202
  %247 = load i32, i32* %4, align 4, !dbg !3195
  store i32 %247, i32* %13, align 4, !dbg !3197
  br label %248, !dbg !3198

; <label>:248:                                    ; preds = %289, %246
  %249 = load i32, i32* %13, align 4, !dbg !3199
  %250 = load i32, i32* %5, align 4, !dbg !3202
  %251 = icmp slt i32 %249, %250, !dbg !3203
  br i1 %251, label %252, label %292, !dbg !3204

; <label>:252:                                    ; preds = %248
  %253 = load i32, i32* %13, align 4, !dbg !3205
  %254 = sext i32 %253 to i64, !dbg !3207
  %255 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3207
  %256 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %255, i32 0, i32 2, !dbg !3208
  %257 = load i32*, i32** %256, align 8, !dbg !3208
  %258 = getelementptr inbounds i32, i32* %257, i64 %254, !dbg !3207
  %259 = load i32, i32* %258, align 4, !dbg !3207
  %260 = load i32, i32* %13, align 4, !dbg !3209
  %261 = load i32, i32* %4, align 4, !dbg !3210
  %262 = sub nsw i32 %260, %261, !dbg !3211
  %263 = sext i32 %262 to i64, !dbg !3212
  %264 = load i32*, i32** %8, align 8, !dbg !3212
  %265 = getelementptr inbounds i32, i32* %264, i64 %263, !dbg !3212
  store i32 %259, i32* %265, align 4, !dbg !3213
  %266 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3214
  %267 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %266, i32 0, i32 15, !dbg !3216
  %268 = load i8, i8* %267, align 4, !dbg !3216
  %269 = lshr i8 %268, 4, !dbg !3216
  %270 = and i8 %269, 1, !dbg !3216
  %271 = zext i8 %270 to i32, !dbg !3216
  %272 = icmp ne i32 %271, 0, !dbg !3214
  br i1 %272, label %273, label %288, !dbg !3217

; <label>:273:                                    ; preds = %252
  %274 = load i32, i32* %13, align 4, !dbg !3218
  %275 = add nsw i32 %274, 1, !dbg !3219
  %276 = sext i32 %275 to i64, !dbg !3220
  %277 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3220
  %278 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %277, i32 0, i32 3, !dbg !3221
  %279 = load i8**, i8*** %278, align 8, !dbg !3221
  %280 = getelementptr inbounds i8*, i8** %279, i64 %276, !dbg !3220
  %281 = load i8*, i8** %280, align 8, !dbg !3220
  %282 = load i32, i32* %13, align 4, !dbg !3222
  %283 = load i32, i32* %4, align 4, !dbg !3223
  %284 = sub nsw i32 %282, %283, !dbg !3224
  %285 = sext i32 %284 to i64, !dbg !3225
  %286 = load i8**, i8*** %11, align 8, !dbg !3225
  %287 = getelementptr inbounds i8*, i8** %286, i64 %285, !dbg !3225
  store i8* %281, i8** %287, align 8, !dbg !3226
  br label %288, !dbg !3225

; <label>:288:                                    ; preds = %273, %252
  br label %289, !dbg !3227

; <label>:289:                                    ; preds = %288
  %290 = load i32, i32* %13, align 4, !dbg !3228
  %291 = add nsw i32 %290, 1, !dbg !3228
  store i32 %291, i32* %13, align 4, !dbg !3228
  br label %248, !dbg !3230, !llvm.loop !3231

; <label>:292:                                    ; preds = %248
  %293 = load i32, i32* %5, align 4, !dbg !3233
  store i32 %293, i32* %13, align 4, !dbg !3235
  br label %294, !dbg !3236

; <label>:294:                                    ; preds = %335, %292
  %295 = load i32, i32* %13, align 4, !dbg !3237
  %296 = load i32, i32* %6, align 4, !dbg !3240
  %297 = icmp slt i32 %295, %296, !dbg !3241
  br i1 %297, label %298, label %338, !dbg !3242

; <label>:298:                                    ; preds = %294
  %299 = load i32, i32* %13, align 4, !dbg !3243
  %300 = sext i32 %299 to i64, !dbg !3245
  %301 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3245
  %302 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %301, i32 0, i32 2, !dbg !3246
  %303 = load i32*, i32** %302, align 8, !dbg !3246
  %304 = getelementptr inbounds i32, i32* %303, i64 %300, !dbg !3245
  %305 = load i32, i32* %304, align 4, !dbg !3245
  %306 = load i32, i32* %13, align 4, !dbg !3247
  %307 = load i32, i32* %5, align 4, !dbg !3248
  %308 = sub nsw i32 %306, %307, !dbg !3249
  %309 = sext i32 %308 to i64, !dbg !3250
  %310 = load i32*, i32** %9, align 8, !dbg !3250
  %311 = getelementptr inbounds i32, i32* %310, i64 %309, !dbg !3250
  store i32 %305, i32* %311, align 4, !dbg !3251
  %312 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3252
  %313 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %312, i32 0, i32 15, !dbg !3254
  %314 = load i8, i8* %313, align 4, !dbg !3254
  %315 = lshr i8 %314, 4, !dbg !3254
  %316 = and i8 %315, 1, !dbg !3254
  %317 = zext i8 %316 to i32, !dbg !3254
  %318 = icmp ne i32 %317, 0, !dbg !3252
  br i1 %318, label %319, label %334, !dbg !3255

; <label>:319:                                    ; preds = %298
  %320 = load i32, i32* %13, align 4, !dbg !3256
  %321 = add nsw i32 %320, 1, !dbg !3257
  %322 = sext i32 %321 to i64, !dbg !3258
  %323 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3258
  %324 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %323, i32 0, i32 3, !dbg !3259
  %325 = load i8**, i8*** %324, align 8, !dbg !3259
  %326 = getelementptr inbounds i8*, i8** %325, i64 %322, !dbg !3258
  %327 = load i8*, i8** %326, align 8, !dbg !3258
  %328 = load i32, i32* %13, align 4, !dbg !3260
  %329 = load i32, i32* %5, align 4, !dbg !3261
  %330 = sub nsw i32 %328, %329, !dbg !3262
  %331 = sext i32 %330 to i64, !dbg !3263
  %332 = load i8**, i8*** %12, align 8, !dbg !3263
  %333 = getelementptr inbounds i8*, i8** %332, i64 %331, !dbg !3263
  store i8* %327, i8** %333, align 8, !dbg !3264
  br label %334, !dbg !3263

; <label>:334:                                    ; preds = %319, %298
  br label %335, !dbg !3265

; <label>:335:                                    ; preds = %334
  %336 = load i32, i32* %13, align 4, !dbg !3266
  %337 = add nsw i32 %336, 1, !dbg !3266
  store i32 %337, i32* %13, align 4, !dbg !3266
  br label %294, !dbg !3268, !llvm.loop !3269

; <label>:338:                                    ; preds = %294
  %339 = load i32, i32* %3, align 4, !dbg !3271
  %340 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3272
  %341 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %340, i32 0, i32 8, !dbg !3273
  store i32 %339, i32* %341, align 4, !dbg !3274
  store i32 0, i32* %13, align 4, !dbg !3275
  br label %342, !dbg !3277

; <label>:342:                                    ; preds = %389, %338
  %343 = load i32, i32* %13, align 4, !dbg !3278
  %344 = load i32, i32* %6, align 4, !dbg !3281
  %345 = load i32, i32* %5, align 4, !dbg !3282
  %346 = sub nsw i32 %344, %345, !dbg !3283
  %347 = icmp slt i32 %343, %346, !dbg !3284
  br i1 %347, label %348, label %392, !dbg !3285

; <label>:348:                                    ; preds = %342
  %349 = load i32, i32* %13, align 4, !dbg !3286
  %350 = sext i32 %349 to i64, !dbg !3288
  %351 = load i32*, i32** %9, align 8, !dbg !3288
  %352 = getelementptr inbounds i32, i32* %351, i64 %350, !dbg !3288
  %353 = load i32, i32* %352, align 4, !dbg !3288
  %354 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3289
  %355 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %354, i32 0, i32 8, !dbg !3290
  %356 = load i32, i32* %355, align 4, !dbg !3290
  %357 = sext i32 %356 to i64, !dbg !3291
  %358 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3291
  %359 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %358, i32 0, i32 2, !dbg !3292
  %360 = load i32*, i32** %359, align 8, !dbg !3292
  %361 = getelementptr inbounds i32, i32* %360, i64 %357, !dbg !3291
  store i32 %353, i32* %361, align 4, !dbg !3293
  %362 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3294
  %363 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %362, i32 0, i32 15, !dbg !3296
  %364 = load i8, i8* %363, align 4, !dbg !3296
  %365 = lshr i8 %364, 4, !dbg !3296
  %366 = and i8 %365, 1, !dbg !3296
  %367 = zext i8 %366 to i32, !dbg !3296
  %368 = icmp ne i32 %367, 0, !dbg !3294
  br i1 %368, label %369, label %384, !dbg !3297

; <label>:369:                                    ; preds = %348
  %370 = load i32, i32* %13, align 4, !dbg !3298
  %371 = sext i32 %370 to i64, !dbg !3299
  %372 = load i8**, i8*** %12, align 8, !dbg !3299
  %373 = getelementptr inbounds i8*, i8** %372, i64 %371, !dbg !3299
  %374 = load i8*, i8** %373, align 8, !dbg !3299
  %375 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3300
  %376 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %375, i32 0, i32 8, !dbg !3301
  %377 = load i32, i32* %376, align 4, !dbg !3301
  %378 = add nsw i32 %377, 1, !dbg !3302
  %379 = sext i32 %378 to i64, !dbg !3303
  %380 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3303
  %381 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %380, i32 0, i32 3, !dbg !3304
  %382 = load i8**, i8*** %381, align 8, !dbg !3304
  %383 = getelementptr inbounds i8*, i8** %382, i64 %379, !dbg !3303
  store i8* %374, i8** %383, align 8, !dbg !3305
  br label %384, !dbg !3303

; <label>:384:                                    ; preds = %369, %348
  %385 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3306
  %386 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %385, i32 0, i32 8, !dbg !3307
  %387 = load i32, i32* %386, align 4, !dbg !3308
  %388 = add nsw i32 %387, 1, !dbg !3308
  store i32 %388, i32* %386, align 4, !dbg !3308
  br label %389, !dbg !3309

; <label>:389:                                    ; preds = %384
  %390 = load i32, i32* %13, align 4, !dbg !3310
  %391 = add nsw i32 %390, 1, !dbg !3310
  store i32 %391, i32* %13, align 4, !dbg !3310
  br label %342, !dbg !3312, !llvm.loop !3313

; <label>:392:                                    ; preds = %342
  store i32 0, i32* %13, align 4, !dbg !3315
  br label %393, !dbg !3317

; <label>:393:                                    ; preds = %440, %392
  %394 = load i32, i32* %13, align 4, !dbg !3318
  %395 = load i32, i32* %5, align 4, !dbg !3321
  %396 = load i32, i32* %4, align 4, !dbg !3322
  %397 = sub nsw i32 %395, %396, !dbg !3323
  %398 = icmp slt i32 %394, %397, !dbg !3324
  br i1 %398, label %399, label %443, !dbg !3325

; <label>:399:                                    ; preds = %393
  %400 = load i32, i32* %13, align 4, !dbg !3326
  %401 = sext i32 %400 to i64, !dbg !3328
  %402 = load i32*, i32** %8, align 8, !dbg !3328
  %403 = getelementptr inbounds i32, i32* %402, i64 %401, !dbg !3328
  %404 = load i32, i32* %403, align 4, !dbg !3328
  %405 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3329
  %406 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %405, i32 0, i32 8, !dbg !3330
  %407 = load i32, i32* %406, align 4, !dbg !3330
  %408 = sext i32 %407 to i64, !dbg !3331
  %409 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3331
  %410 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %409, i32 0, i32 2, !dbg !3332
  %411 = load i32*, i32** %410, align 8, !dbg !3332
  %412 = getelementptr inbounds i32, i32* %411, i64 %408, !dbg !3331
  store i32 %404, i32* %412, align 4, !dbg !3333
  %413 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3334
  %414 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %413, i32 0, i32 15, !dbg !3336
  %415 = load i8, i8* %414, align 4, !dbg !3336
  %416 = lshr i8 %415, 4, !dbg !3336
  %417 = and i8 %416, 1, !dbg !3336
  %418 = zext i8 %417 to i32, !dbg !3336
  %419 = icmp ne i32 %418, 0, !dbg !3334
  br i1 %419, label %420, label %435, !dbg !3337

; <label>:420:                                    ; preds = %399
  %421 = load i32, i32* %13, align 4, !dbg !3338
  %422 = sext i32 %421 to i64, !dbg !3339
  %423 = load i8**, i8*** %11, align 8, !dbg !3339
  %424 = getelementptr inbounds i8*, i8** %423, i64 %422, !dbg !3339
  %425 = load i8*, i8** %424, align 8, !dbg !3339
  %426 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3340
  %427 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %426, i32 0, i32 8, !dbg !3341
  %428 = load i32, i32* %427, align 4, !dbg !3341
  %429 = add nsw i32 %428, 1, !dbg !3342
  %430 = sext i32 %429 to i64, !dbg !3343
  %431 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3343
  %432 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %431, i32 0, i32 3, !dbg !3344
  %433 = load i8**, i8*** %432, align 8, !dbg !3344
  %434 = getelementptr inbounds i8*, i8** %433, i64 %430, !dbg !3343
  store i8* %425, i8** %434, align 8, !dbg !3345
  br label %435, !dbg !3343

; <label>:435:                                    ; preds = %420, %399
  %436 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3346
  %437 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %436, i32 0, i32 8, !dbg !3347
  %438 = load i32, i32* %437, align 4, !dbg !3348
  %439 = add nsw i32 %438, 1, !dbg !3348
  store i32 %439, i32* %437, align 4, !dbg !3348
  br label %440, !dbg !3349

; <label>:440:                                    ; preds = %435
  %441 = load i32, i32* %13, align 4, !dbg !3350
  %442 = add nsw i32 %441, 1, !dbg !3350
  store i32 %442, i32* %13, align 4, !dbg !3350
  br label %393, !dbg !3352, !llvm.loop !3353

; <label>:443:                                    ; preds = %393
  store i32 0, i32* %13, align 4, !dbg !3355
  br label %444, !dbg !3357

; <label>:444:                                    ; preds = %491, %443
  %445 = load i32, i32* %13, align 4, !dbg !3358
  %446 = load i32, i32* %4, align 4, !dbg !3361
  %447 = load i32, i32* %3, align 4, !dbg !3362
  %448 = sub nsw i32 %446, %447, !dbg !3363
  %449 = icmp slt i32 %445, %448, !dbg !3364
  br i1 %449, label %450, label %494, !dbg !3365

; <label>:450:                                    ; preds = %444
  %451 = load i32, i32* %13, align 4, !dbg !3366
  %452 = sext i32 %451 to i64, !dbg !3368
  %453 = load i32*, i32** %7, align 8, !dbg !3368
  %454 = getelementptr inbounds i32, i32* %453, i64 %452, !dbg !3368
  %455 = load i32, i32* %454, align 4, !dbg !3368
  %456 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3369
  %457 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %456, i32 0, i32 8, !dbg !3370
  %458 = load i32, i32* %457, align 4, !dbg !3370
  %459 = sext i32 %458 to i64, !dbg !3371
  %460 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3371
  %461 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %460, i32 0, i32 2, !dbg !3372
  %462 = load i32*, i32** %461, align 8, !dbg !3372
  %463 = getelementptr inbounds i32, i32* %462, i64 %459, !dbg !3371
  store i32 %455, i32* %463, align 4, !dbg !3373
  %464 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3374
  %465 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %464, i32 0, i32 15, !dbg !3376
  %466 = load i8, i8* %465, align 4, !dbg !3376
  %467 = lshr i8 %466, 4, !dbg !3376
  %468 = and i8 %467, 1, !dbg !3376
  %469 = zext i8 %468 to i32, !dbg !3376
  %470 = icmp ne i32 %469, 0, !dbg !3374
  br i1 %470, label %471, label %486, !dbg !3377

; <label>:471:                                    ; preds = %450
  %472 = load i32, i32* %13, align 4, !dbg !3378
  %473 = sext i32 %472 to i64, !dbg !3379
  %474 = load i8**, i8*** %10, align 8, !dbg !3379
  %475 = getelementptr inbounds i8*, i8** %474, i64 %473, !dbg !3379
  %476 = load i8*, i8** %475, align 8, !dbg !3379
  %477 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3380
  %478 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %477, i32 0, i32 8, !dbg !3381
  %479 = load i32, i32* %478, align 4, !dbg !3381
  %480 = add nsw i32 %479, 1, !dbg !3382
  %481 = sext i32 %480 to i64, !dbg !3383
  %482 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3383
  %483 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %482, i32 0, i32 3, !dbg !3384
  %484 = load i8**, i8*** %483, align 8, !dbg !3384
  %485 = getelementptr inbounds i8*, i8** %484, i64 %481, !dbg !3383
  store i8* %476, i8** %485, align 8, !dbg !3385
  br label %486, !dbg !3383

; <label>:486:                                    ; preds = %471, %450
  %487 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3386
  %488 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %487, i32 0, i32 8, !dbg !3387
  %489 = load i32, i32* %488, align 4, !dbg !3388
  %490 = add nsw i32 %489, 1, !dbg !3388
  store i32 %490, i32* %488, align 4, !dbg !3388
  br label %491, !dbg !3389

; <label>:491:                                    ; preds = %486
  %492 = load i32, i32* %13, align 4, !dbg !3390
  %493 = add nsw i32 %492, 1, !dbg !3390
  store i32 %493, i32* %13, align 4, !dbg !3390
  br label %444, !dbg !3392, !llvm.loop !3393

; <label>:494:                                    ; preds = %444
  %495 = load i32*, i32** %7, align 8, !dbg !3395
  %496 = bitcast i32* %495 to i8*, !dbg !3395
  call void @g_free(i8* %496), !dbg !3396
  %497 = load i32*, i32** %8, align 8, !dbg !3397
  %498 = bitcast i32* %497 to i8*, !dbg !3397
  call void @g_free(i8* %498), !dbg !3398
  %499 = load i32*, i32** %9, align 8, !dbg !3399
  %500 = bitcast i32* %499 to i8*, !dbg !3399
  call void @g_free(i8* %500), !dbg !3400
  %501 = load i8**, i8*** %10, align 8, !dbg !3401
  %502 = bitcast i8** %501 to i8*, !dbg !3401
  call void @g_free(i8* %502), !dbg !3402
  %503 = load i8**, i8*** %11, align 8, !dbg !3403
  %504 = bitcast i8** %503 to i8*, !dbg !3403
  call void @g_free(i8* %504), !dbg !3404
  %505 = load i8**, i8*** %12, align 8, !dbg !3405
  %506 = bitcast i8** %505 to i8*, !dbg !3405
  call void @g_free(i8* %506), !dbg !3406
  br label %507, !dbg !3407

; <label>:507:                                    ; preds = %494, %154, %150, %146
  %508 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3408
  %509 = load i32, i32* %3, align 4, !dbg !3409
  call void @gui_entry_redraw_from(%struct.GUI_ENTRY_REC* %508, i32 %509), !dbg !3410
  %510 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3411
  call void @gui_entry_fix_cursor(%struct.GUI_ENTRY_REC* %510), !dbg !3412
  %511 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3413
  call void @gui_entry_draw(%struct.GUI_ENTRY_REC* %511), !dbg !3414
  ret void, !dbg !3415
}

; Function Attrs: nounwind uwtable
define void @gui_entry_capitalize_word(%struct.GUI_ENTRY_REC*) #0 !dbg !3416 {
  %2 = alloca %struct.GUI_ENTRY_REC*, align 8
  %3 = alloca i32, align 4
  store %struct.GUI_ENTRY_REC* %0, %struct.GUI_ENTRY_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_REC** %2, metadata !3417, metadata !102), !dbg !3418
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3419, metadata !102), !dbg !3420
  %4 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3421
  %5 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %4, i32 0, i32 8, !dbg !3422
  %6 = load i32, i32* %5, align 4, !dbg !3422
  store i32 %6, i32* %3, align 4, !dbg !3420
  br label %7, !dbg !3423

; <label>:7:                                      ; preds = %26, %1
  %8 = load i32, i32* %3, align 4, !dbg !3424
  %9 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3426
  %10 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %9, i32 0, i32 0, !dbg !3427
  %11 = load i32, i32* %10, align 8, !dbg !3427
  %12 = icmp slt i32 %8, %11, !dbg !3428
  br i1 %12, label %13, label %24, !dbg !3429

; <label>:13:                                     ; preds = %7
  %14 = load i32, i32* %3, align 4, !dbg !3430
  %15 = sext i32 %14 to i64, !dbg !3432
  %16 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3432
  %17 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %16, i32 0, i32 2, !dbg !3433
  %18 = load i32*, i32** %17, align 8, !dbg !3433
  %19 = getelementptr inbounds i32, i32* %18, i64 %15, !dbg !3432
  %20 = load i32, i32* %19, align 4, !dbg !3432
  %21 = call i32 @i_isalnum(i32 %20), !dbg !3434
  %22 = icmp ne i32 %21, 0, !dbg !3435
  %23 = xor i1 %22, true, !dbg !3435
  br label %24

; <label>:24:                                     ; preds = %13, %7
  %25 = phi i1 [ false, %7 ], [ %23, %13 ]
  br i1 %25, label %26, label %29, !dbg !3436

; <label>:26:                                     ; preds = %24
  %27 = load i32, i32* %3, align 4, !dbg !3438
  %28 = add nsw i32 %27, 1, !dbg !3438
  store i32 %28, i32* %3, align 4, !dbg !3438
  br label %7, !dbg !3439, !llvm.loop !3441

; <label>:29:                                     ; preds = %24
  %30 = load i32, i32* %3, align 4, !dbg !3442
  %31 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3444
  %32 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %31, i32 0, i32 0, !dbg !3445
  %33 = load i32, i32* %32, align 8, !dbg !3445
  %34 = icmp slt i32 %30, %33, !dbg !3446
  br i1 %34, label %35, label %52, !dbg !3447

; <label>:35:                                     ; preds = %29
  %36 = load i32, i32* %3, align 4, !dbg !3448
  %37 = sext i32 %36 to i64, !dbg !3450
  %38 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3450
  %39 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %38, i32 0, i32 2, !dbg !3451
  %40 = load i32*, i32** %39, align 8, !dbg !3451
  %41 = getelementptr inbounds i32, i32* %40, i64 %37, !dbg !3450
  %42 = load i32, i32* %41, align 4, !dbg !3450
  %43 = call i32 @i_toupper(i32 %42), !dbg !3452
  %44 = load i32, i32* %3, align 4, !dbg !3453
  %45 = sext i32 %44 to i64, !dbg !3454
  %46 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3454
  %47 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %46, i32 0, i32 2, !dbg !3455
  %48 = load i32*, i32** %47, align 8, !dbg !3455
  %49 = getelementptr inbounds i32, i32* %48, i64 %45, !dbg !3454
  store i32 %43, i32* %49, align 4, !dbg !3456
  %50 = load i32, i32* %3, align 4, !dbg !3457
  %51 = add nsw i32 %50, 1, !dbg !3457
  store i32 %51, i32* %3, align 4, !dbg !3457
  br label %52, !dbg !3458

; <label>:52:                                     ; preds = %35, %29
  br label %53, !dbg !3459

; <label>:53:                                     ; preds = %71, %52
  %54 = load i32, i32* %3, align 4, !dbg !3460
  %55 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3461
  %56 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %55, i32 0, i32 0, !dbg !3462
  %57 = load i32, i32* %56, align 8, !dbg !3462
  %58 = icmp slt i32 %54, %57, !dbg !3463
  br i1 %58, label %59, label %69, !dbg !3464

; <label>:59:                                     ; preds = %53
  %60 = load i32, i32* %3, align 4, !dbg !3465
  %61 = sext i32 %60 to i64, !dbg !3466
  %62 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3466
  %63 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %62, i32 0, i32 2, !dbg !3467
  %64 = load i32*, i32** %63, align 8, !dbg !3467
  %65 = getelementptr inbounds i32, i32* %64, i64 %61, !dbg !3466
  %66 = load i32, i32* %65, align 4, !dbg !3466
  %67 = call i32 @i_isalnum(i32 %66), !dbg !3468
  %68 = icmp ne i32 %67, 0, !dbg !3469
  br label %69

; <label>:69:                                     ; preds = %59, %53
  %70 = phi i1 [ false, %53 ], [ %68, %59 ]
  br i1 %70, label %71, label %88, !dbg !3470

; <label>:71:                                     ; preds = %69
  %72 = load i32, i32* %3, align 4, !dbg !3471
  %73 = sext i32 %72 to i64, !dbg !3473
  %74 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3473
  %75 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %74, i32 0, i32 2, !dbg !3474
  %76 = load i32*, i32** %75, align 8, !dbg !3474
  %77 = getelementptr inbounds i32, i32* %76, i64 %73, !dbg !3473
  %78 = load i32, i32* %77, align 4, !dbg !3473
  %79 = call i32 @i_tolower(i32 %78), !dbg !3475
  %80 = load i32, i32* %3, align 4, !dbg !3476
  %81 = sext i32 %80 to i64, !dbg !3477
  %82 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3477
  %83 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %82, i32 0, i32 2, !dbg !3478
  %84 = load i32*, i32** %83, align 8, !dbg !3478
  %85 = getelementptr inbounds i32, i32* %84, i64 %81, !dbg !3477
  store i32 %79, i32* %85, align 4, !dbg !3479
  %86 = load i32, i32* %3, align 4, !dbg !3480
  %87 = add nsw i32 %86, 1, !dbg !3480
  store i32 %87, i32* %3, align 4, !dbg !3480
  br label %53, !dbg !3481, !llvm.loop !3482

; <label>:88:                                     ; preds = %69
  %89 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3483
  %90 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3484
  %91 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %90, i32 0, i32 8, !dbg !3485
  %92 = load i32, i32* %91, align 4, !dbg !3485
  call void @gui_entry_redraw_from(%struct.GUI_ENTRY_REC* %89, i32 %92), !dbg !3486
  %93 = load i32, i32* %3, align 4, !dbg !3487
  %94 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3488
  %95 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %94, i32 0, i32 8, !dbg !3489
  store i32 %93, i32* %95, align 4, !dbg !3490
  %96 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3491
  call void @gui_entry_fix_cursor(%struct.GUI_ENTRY_REC* %96), !dbg !3492
  %97 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3493
  call void @gui_entry_draw(%struct.GUI_ENTRY_REC* %97), !dbg !3494
  ret void, !dbg !3495
}

; Function Attrs: nounwind uwtable
define internal i32 @i_toupper(i32) #0 !dbg !3496 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3499, metadata !102), !dbg !3500
  %4 = load i32, i32* @term_type, align 4, !dbg !3501
  %5 = icmp eq i32 %4, 1, !dbg !3503
  br i1 %5, label %6, label %9, !dbg !3504

; <label>:6:                                      ; preds = %1
  %7 = load i32, i32* %3, align 4, !dbg !3505
  %8 = call i32 @g_unichar_toupper(i32 %7) #1, !dbg !3506
  store i32 %8, i32* %2, align 4, !dbg !3507
  br label %19, !dbg !3507

; <label>:9:                                      ; preds = %1
  %10 = load i32, i32* %3, align 4, !dbg !3508
  %11 = icmp ule i32 %10, 255, !dbg !3509
  br i1 %11, label %12, label %15, !dbg !3508

; <label>:12:                                     ; preds = %9
  %13 = load i32, i32* %3, align 4, !dbg !3510
  %14 = call i32 @toupper(i32 %13) #7, !dbg !3512
  br label %17, !dbg !3513

; <label>:15:                                     ; preds = %9
  %16 = load i32, i32* %3, align 4, !dbg !3514
  br label %17, !dbg !3516

; <label>:17:                                     ; preds = %15, %12
  %18 = phi i32 [ %14, %12 ], [ %16, %15 ], !dbg !3517
  store i32 %18, i32* %2, align 4, !dbg !3519
  br label %19, !dbg !3519

; <label>:19:                                     ; preds = %17, %6
  %20 = load i32, i32* %2, align 4, !dbg !3520
  ret i32 %20, !dbg !3520
}

; Function Attrs: nounwind uwtable
define internal i32 @i_tolower(i32) #0 !dbg !3521 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3522, metadata !102), !dbg !3523
  %4 = load i32, i32* @term_type, align 4, !dbg !3524
  %5 = icmp eq i32 %4, 1, !dbg !3526
  br i1 %5, label %6, label %9, !dbg !3527

; <label>:6:                                      ; preds = %1
  %7 = load i32, i32* %3, align 4, !dbg !3528
  %8 = call i32 @g_unichar_tolower(i32 %7) #1, !dbg !3529
  store i32 %8, i32* %2, align 4, !dbg !3530
  br label %19, !dbg !3530

; <label>:9:                                      ; preds = %1
  %10 = load i32, i32* %3, align 4, !dbg !3531
  %11 = icmp ule i32 %10, 255, !dbg !3532
  br i1 %11, label %12, label %15, !dbg !3531

; <label>:12:                                     ; preds = %9
  %13 = load i32, i32* %3, align 4, !dbg !3533
  %14 = call i32 @tolower(i32 %13) #7, !dbg !3535
  br label %17, !dbg !3536

; <label>:15:                                     ; preds = %9
  %16 = load i32, i32* %3, align 4, !dbg !3537
  br label %17, !dbg !3539

; <label>:17:                                     ; preds = %15, %12
  %18 = phi i32 [ %14, %12 ], [ %16, %15 ], !dbg !3540
  store i32 %18, i32* %2, align 4, !dbg !3542
  br label %19, !dbg !3542

; <label>:19:                                     ; preds = %17, %6
  %20 = load i32, i32* %2, align 4, !dbg !3543
  ret i32 %20, !dbg !3543
}

; Function Attrs: nounwind uwtable
define void @gui_entry_downcase_word(%struct.GUI_ENTRY_REC*) #0 !dbg !3544 {
  %2 = alloca %struct.GUI_ENTRY_REC*, align 8
  %3 = alloca i32, align 4
  store %struct.GUI_ENTRY_REC* %0, %struct.GUI_ENTRY_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_REC** %2, metadata !3545, metadata !102), !dbg !3546
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3547, metadata !102), !dbg !3548
  %4 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3549
  %5 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %4, i32 0, i32 8, !dbg !3550
  %6 = load i32, i32* %5, align 4, !dbg !3550
  store i32 %6, i32* %3, align 4, !dbg !3548
  br label %7, !dbg !3551

; <label>:7:                                      ; preds = %26, %1
  %8 = load i32, i32* %3, align 4, !dbg !3552
  %9 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3554
  %10 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %9, i32 0, i32 0, !dbg !3555
  %11 = load i32, i32* %10, align 8, !dbg !3555
  %12 = icmp slt i32 %8, %11, !dbg !3556
  br i1 %12, label %13, label %24, !dbg !3557

; <label>:13:                                     ; preds = %7
  %14 = load i32, i32* %3, align 4, !dbg !3558
  %15 = sext i32 %14 to i64, !dbg !3560
  %16 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3560
  %17 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %16, i32 0, i32 2, !dbg !3561
  %18 = load i32*, i32** %17, align 8, !dbg !3561
  %19 = getelementptr inbounds i32, i32* %18, i64 %15, !dbg !3560
  %20 = load i32, i32* %19, align 4, !dbg !3560
  %21 = call i32 @i_isalnum(i32 %20), !dbg !3562
  %22 = icmp ne i32 %21, 0, !dbg !3563
  %23 = xor i1 %22, true, !dbg !3563
  br label %24

; <label>:24:                                     ; preds = %13, %7
  %25 = phi i1 [ false, %7 ], [ %23, %13 ]
  br i1 %25, label %26, label %29, !dbg !3564

; <label>:26:                                     ; preds = %24
  %27 = load i32, i32* %3, align 4, !dbg !3566
  %28 = add nsw i32 %27, 1, !dbg !3566
  store i32 %28, i32* %3, align 4, !dbg !3566
  br label %7, !dbg !3567, !llvm.loop !3569

; <label>:29:                                     ; preds = %24
  br label %30, !dbg !3570

; <label>:30:                                     ; preds = %48, %29
  %31 = load i32, i32* %3, align 4, !dbg !3571
  %32 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3572
  %33 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %32, i32 0, i32 0, !dbg !3573
  %34 = load i32, i32* %33, align 8, !dbg !3573
  %35 = icmp slt i32 %31, %34, !dbg !3574
  br i1 %35, label %36, label %46, !dbg !3575

; <label>:36:                                     ; preds = %30
  %37 = load i32, i32* %3, align 4, !dbg !3576
  %38 = sext i32 %37 to i64, !dbg !3577
  %39 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3577
  %40 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %39, i32 0, i32 2, !dbg !3578
  %41 = load i32*, i32** %40, align 8, !dbg !3578
  %42 = getelementptr inbounds i32, i32* %41, i64 %38, !dbg !3577
  %43 = load i32, i32* %42, align 4, !dbg !3577
  %44 = call i32 @i_isalnum(i32 %43), !dbg !3579
  %45 = icmp ne i32 %44, 0, !dbg !3580
  br label %46

; <label>:46:                                     ; preds = %36, %30
  %47 = phi i1 [ false, %30 ], [ %45, %36 ]
  br i1 %47, label %48, label %65, !dbg !3581

; <label>:48:                                     ; preds = %46
  %49 = load i32, i32* %3, align 4, !dbg !3582
  %50 = sext i32 %49 to i64, !dbg !3584
  %51 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3584
  %52 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %51, i32 0, i32 2, !dbg !3585
  %53 = load i32*, i32** %52, align 8, !dbg !3585
  %54 = getelementptr inbounds i32, i32* %53, i64 %50, !dbg !3584
  %55 = load i32, i32* %54, align 4, !dbg !3584
  %56 = call i32 @i_tolower(i32 %55), !dbg !3586
  %57 = load i32, i32* %3, align 4, !dbg !3587
  %58 = sext i32 %57 to i64, !dbg !3588
  %59 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3588
  %60 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %59, i32 0, i32 2, !dbg !3589
  %61 = load i32*, i32** %60, align 8, !dbg !3589
  %62 = getelementptr inbounds i32, i32* %61, i64 %58, !dbg !3588
  store i32 %56, i32* %62, align 4, !dbg !3590
  %63 = load i32, i32* %3, align 4, !dbg !3591
  %64 = add nsw i32 %63, 1, !dbg !3591
  store i32 %64, i32* %3, align 4, !dbg !3591
  br label %30, !dbg !3592, !llvm.loop !3593

; <label>:65:                                     ; preds = %46
  %66 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3594
  %67 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3595
  %68 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %67, i32 0, i32 8, !dbg !3596
  %69 = load i32, i32* %68, align 4, !dbg !3596
  call void @gui_entry_redraw_from(%struct.GUI_ENTRY_REC* %66, i32 %69), !dbg !3597
  %70 = load i32, i32* %3, align 4, !dbg !3598
  %71 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3599
  %72 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %71, i32 0, i32 8, !dbg !3600
  store i32 %70, i32* %72, align 4, !dbg !3601
  %73 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3602
  call void @gui_entry_fix_cursor(%struct.GUI_ENTRY_REC* %73), !dbg !3603
  %74 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3604
  call void @gui_entry_draw(%struct.GUI_ENTRY_REC* %74), !dbg !3605
  ret void, !dbg !3606
}

; Function Attrs: nounwind uwtable
define void @gui_entry_upcase_word(%struct.GUI_ENTRY_REC*) #0 !dbg !3607 {
  %2 = alloca %struct.GUI_ENTRY_REC*, align 8
  %3 = alloca i32, align 4
  store %struct.GUI_ENTRY_REC* %0, %struct.GUI_ENTRY_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_REC** %2, metadata !3608, metadata !102), !dbg !3609
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3610, metadata !102), !dbg !3611
  %4 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3612
  %5 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %4, i32 0, i32 8, !dbg !3613
  %6 = load i32, i32* %5, align 4, !dbg !3613
  store i32 %6, i32* %3, align 4, !dbg !3611
  br label %7, !dbg !3614

; <label>:7:                                      ; preds = %26, %1
  %8 = load i32, i32* %3, align 4, !dbg !3615
  %9 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3617
  %10 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %9, i32 0, i32 0, !dbg !3618
  %11 = load i32, i32* %10, align 8, !dbg !3618
  %12 = icmp slt i32 %8, %11, !dbg !3619
  br i1 %12, label %13, label %24, !dbg !3620

; <label>:13:                                     ; preds = %7
  %14 = load i32, i32* %3, align 4, !dbg !3621
  %15 = sext i32 %14 to i64, !dbg !3623
  %16 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3623
  %17 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %16, i32 0, i32 2, !dbg !3624
  %18 = load i32*, i32** %17, align 8, !dbg !3624
  %19 = getelementptr inbounds i32, i32* %18, i64 %15, !dbg !3623
  %20 = load i32, i32* %19, align 4, !dbg !3623
  %21 = call i32 @i_isalnum(i32 %20), !dbg !3625
  %22 = icmp ne i32 %21, 0, !dbg !3626
  %23 = xor i1 %22, true, !dbg !3626
  br label %24

; <label>:24:                                     ; preds = %13, %7
  %25 = phi i1 [ false, %7 ], [ %23, %13 ]
  br i1 %25, label %26, label %29, !dbg !3627

; <label>:26:                                     ; preds = %24
  %27 = load i32, i32* %3, align 4, !dbg !3629
  %28 = add nsw i32 %27, 1, !dbg !3629
  store i32 %28, i32* %3, align 4, !dbg !3629
  br label %7, !dbg !3630, !llvm.loop !3632

; <label>:29:                                     ; preds = %24
  br label %30, !dbg !3633

; <label>:30:                                     ; preds = %48, %29
  %31 = load i32, i32* %3, align 4, !dbg !3634
  %32 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3635
  %33 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %32, i32 0, i32 0, !dbg !3636
  %34 = load i32, i32* %33, align 8, !dbg !3636
  %35 = icmp slt i32 %31, %34, !dbg !3637
  br i1 %35, label %36, label %46, !dbg !3638

; <label>:36:                                     ; preds = %30
  %37 = load i32, i32* %3, align 4, !dbg !3639
  %38 = sext i32 %37 to i64, !dbg !3640
  %39 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3640
  %40 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %39, i32 0, i32 2, !dbg !3641
  %41 = load i32*, i32** %40, align 8, !dbg !3641
  %42 = getelementptr inbounds i32, i32* %41, i64 %38, !dbg !3640
  %43 = load i32, i32* %42, align 4, !dbg !3640
  %44 = call i32 @i_isalnum(i32 %43), !dbg !3642
  %45 = icmp ne i32 %44, 0, !dbg !3643
  br label %46

; <label>:46:                                     ; preds = %36, %30
  %47 = phi i1 [ false, %30 ], [ %45, %36 ]
  br i1 %47, label %48, label %65, !dbg !3644

; <label>:48:                                     ; preds = %46
  %49 = load i32, i32* %3, align 4, !dbg !3645
  %50 = sext i32 %49 to i64, !dbg !3647
  %51 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3647
  %52 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %51, i32 0, i32 2, !dbg !3648
  %53 = load i32*, i32** %52, align 8, !dbg !3648
  %54 = getelementptr inbounds i32, i32* %53, i64 %50, !dbg !3647
  %55 = load i32, i32* %54, align 4, !dbg !3647
  %56 = call i32 @i_toupper(i32 %55), !dbg !3649
  %57 = load i32, i32* %3, align 4, !dbg !3650
  %58 = sext i32 %57 to i64, !dbg !3651
  %59 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3651
  %60 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %59, i32 0, i32 2, !dbg !3652
  %61 = load i32*, i32** %60, align 8, !dbg !3652
  %62 = getelementptr inbounds i32, i32* %61, i64 %58, !dbg !3651
  store i32 %56, i32* %62, align 4, !dbg !3653
  %63 = load i32, i32* %3, align 4, !dbg !3654
  %64 = add nsw i32 %63, 1, !dbg !3654
  store i32 %64, i32* %3, align 4, !dbg !3654
  br label %30, !dbg !3655, !llvm.loop !3656

; <label>:65:                                     ; preds = %46
  %66 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3657
  %67 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3658
  %68 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %67, i32 0, i32 8, !dbg !3659
  %69 = load i32, i32* %68, align 4, !dbg !3659
  call void @gui_entry_redraw_from(%struct.GUI_ENTRY_REC* %66, i32 %69), !dbg !3660
  %70 = load i32, i32* %3, align 4, !dbg !3661
  %71 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3662
  %72 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %71, i32 0, i32 8, !dbg !3663
  store i32 %70, i32* %72, align 4, !dbg !3664
  %73 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3665
  call void @gui_entry_fix_cursor(%struct.GUI_ENTRY_REC* %73), !dbg !3666
  %74 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !3667
  call void @gui_entry_draw(%struct.GUI_ENTRY_REC* %74), !dbg !3668
  ret void, !dbg !3669
}

; Function Attrs: nounwind uwtable
define void @gui_entry_set_pos(%struct.GUI_ENTRY_REC*, i32) #0 !dbg !3670 {
  %3 = alloca %struct.GUI_ENTRY_REC*, align 8
  %4 = alloca i32, align 4
  store %struct.GUI_ENTRY_REC* %0, %struct.GUI_ENTRY_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_REC** %3, metadata !3671, metadata !102), !dbg !3672
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3673, metadata !102), !dbg !3674
  br label %5, !dbg !3675, !llvm.loop !3676

; <label>:5:                                      ; preds = %2
  %6 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !3677
  %7 = icmp ne %struct.GUI_ENTRY_REC* %6, null, !dbg !3681
  br i1 %7, label %8, label %9, !dbg !3677

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !3682

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gui_entry_set_pos, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0)), !dbg !3685
  br label %27, !dbg !3688

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !3689

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %4, align 4, !dbg !3691
  %13 = icmp sge i32 %12, 0, !dbg !3693
  br i1 %13, label %14, label %24, !dbg !3694

; <label>:14:                                     ; preds = %11
  %15 = load i32, i32* %4, align 4, !dbg !3695
  %16 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !3697
  %17 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %16, i32 0, i32 0, !dbg !3698
  %18 = load i32, i32* %17, align 8, !dbg !3698
  %19 = icmp sle i32 %15, %18, !dbg !3699
  br i1 %19, label %20, label %24, !dbg !3700

; <label>:20:                                     ; preds = %14
  %21 = load i32, i32* %4, align 4, !dbg !3701
  %22 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !3702
  %23 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %22, i32 0, i32 8, !dbg !3703
  store i32 %21, i32* %23, align 4, !dbg !3704
  br label %24, !dbg !3702

; <label>:24:                                     ; preds = %20, %14, %11
  %25 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !3705
  call void @gui_entry_fix_cursor(%struct.GUI_ENTRY_REC* %25), !dbg !3706
  %26 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !3707
  call void @gui_entry_draw(%struct.GUI_ENTRY_REC* %26), !dbg !3708
  br label %27, !dbg !3709

; <label>:27:                                     ; preds = %24, %9
  ret void, !dbg !3710
}

; Function Attrs: nounwind uwtable
define void @gui_entry_set_text_and_pos_bytes(%struct.GUI_ENTRY_REC*, i8*, i32) #0 !dbg !3712 {
  %4 = alloca %struct.GUI_ENTRY_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.GUI_ENTRY_REC* %0, %struct.GUI_ENTRY_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_REC** %4, metadata !3715, metadata !102), !dbg !3716
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3717, metadata !102), !dbg !3718
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3719, metadata !102), !dbg !3720
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3721, metadata !102), !dbg !3722
  call void @llvm.dbg.declare(metadata i32* %8, metadata !3723, metadata !102), !dbg !3724
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !3725, metadata !102), !dbg !3726
  call void @llvm.dbg.declare(metadata i8** %10, metadata !3727, metadata !102), !dbg !3728
  br label %12, !dbg !3729, !llvm.loop !3730

; <label>:12:                                     ; preds = %3
  %13 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !3731
  %14 = icmp ne %struct.GUI_ENTRY_REC* %13, null, !dbg !3735
  br i1 %14, label %15, label %16, !dbg !3731

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !3736

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gui_entry_set_text_and_pos_bytes, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0)), !dbg !3739
  br label %117, !dbg !3742

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !3743

; <label>:18:                                     ; preds = %17
  %19 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !3745
  %20 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %19, i32 0, i32 3, !dbg !3746
  %21 = load i8**, i8*** %20, align 8, !dbg !3746
  store i8** %21, i8*** %9, align 8, !dbg !3747
  %22 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !3748
  %23 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %22, i32 0, i32 1, !dbg !3749
  %24 = load i32, i32* %23, align 4, !dbg !3749
  store i32 %24, i32* %8, align 4, !dbg !3750
  %25 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !3751
  %26 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %25, i32 0, i32 3, !dbg !3752
  store i8** null, i8*** %26, align 8, !dbg !3753
  %27 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !3754
  %28 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %27, i32 0, i32 15, !dbg !3755
  %29 = load i8, i8* %28, align 4, !dbg !3756
  %30 = and i8 %29, -17, !dbg !3756
  store i8 %30, i8* %28, align 4, !dbg !3756
  %31 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !3757
  %32 = load i8*, i8** %5, align 8, !dbg !3758
  call void @gui_entry_set_text(%struct.GUI_ENTRY_REC* %31, i8* %32), !dbg !3759
  %33 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !3760
  %34 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %33, i32 0, i32 15, !dbg !3762
  %35 = load i8, i8* %34, align 4, !dbg !3762
  %36 = and i8 %35, 1, !dbg !3762
  %37 = zext i8 %36 to i32, !dbg !3762
  %38 = icmp ne i32 %37, 0, !dbg !3760
  br i1 %38, label %39, label %48, !dbg !3763

; <label>:39:                                     ; preds = %18
  %40 = load i8*, i8** %5, align 8, !dbg !3764
  %41 = load i32, i32* %6, align 4, !dbg !3766
  %42 = sext i32 %41 to i64, !dbg !3766
  %43 = call i32 @g_utf8_validate(i8* %40, i64 %42, i8** %10), !dbg !3767
  %44 = load i8*, i8** %5, align 8, !dbg !3768
  %45 = load i8*, i8** %10, align 8, !dbg !3769
  %46 = call i64 @g_utf8_pointer_to_offset(i8* %44, i8* %45) #7, !dbg !3770
  %47 = trunc i64 %46 to i32, !dbg !3770
  store i32 %47, i32* %7, align 4, !dbg !3771
  br label %63, !dbg !3772

; <label>:48:                                     ; preds = %18
  %49 = load i32, i32* @term_type, align 4, !dbg !3773
  %50 = icmp eq i32 %49, 2, !dbg !3776
  br i1 %50, label %51, label %60, !dbg !3773

; <label>:51:                                     ; preds = %48
  %52 = load i8*, i8** %5, align 8, !dbg !3777
  %53 = call i32 @strlen_big5(i8* %52), !dbg !3778
  %54 = load i8*, i8** %5, align 8, !dbg !3779
  %55 = load i32, i32* %6, align 4, !dbg !3780
  %56 = sext i32 %55 to i64, !dbg !3781
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !3781
  %58 = call i32 @strlen_big5(i8* %57), !dbg !3782
  %59 = sub nsw i32 %53, %58, !dbg !3783
  store i32 %59, i32* %7, align 4, !dbg !3784
  br label %62, !dbg !3785

; <label>:60:                                     ; preds = %48
  %61 = load i32, i32* %6, align 4, !dbg !3786
  store i32 %61, i32* %7, align 4, !dbg !3787
  br label %62

; <label>:62:                                     ; preds = %60, %51
  br label %63

; <label>:63:                                     ; preds = %62, %39
  %64 = load i8**, i8*** %9, align 8, !dbg !3788
  %65 = icmp ne i8** %64, null, !dbg !3790
  br i1 %65, label %66, label %113, !dbg !3791

; <label>:66:                                     ; preds = %63
  %67 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !3792
  %68 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %67, i32 0, i32 15, !dbg !3794
  %69 = load i8, i8* %68, align 4, !dbg !3795
  %70 = and i8 %69, -17, !dbg !3795
  %71 = or i8 %70, 16, !dbg !3795
  store i8 %71, i8* %68, align 4, !dbg !3795
  %72 = load i8**, i8*** %9, align 8, !dbg !3796
  %73 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !3797
  %74 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %73, i32 0, i32 3, !dbg !3798
  store i8** %72, i8*** %74, align 8, !dbg !3799
  %75 = load i32, i32* %8, align 4, !dbg !3800
  %76 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !3802
  %77 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %76, i32 0, i32 1, !dbg !3803
  %78 = load i32, i32* %77, align 4, !dbg !3803
  %79 = icmp slt i32 %75, %78, !dbg !3804
  br i1 %79, label %80, label %112, !dbg !3805

; <label>:80:                                     ; preds = %66
  call void @llvm.dbg.declare(metadata i32* %11, metadata !3806, metadata !102), !dbg !3808
  %81 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !3809
  %82 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %81, i32 0, i32 3, !dbg !3810
  %83 = load i8**, i8*** %82, align 8, !dbg !3810
  %84 = bitcast i8** %83 to i8*, !dbg !3809
  %85 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !3811
  %86 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %85, i32 0, i32 1, !dbg !3812
  %87 = load i32, i32* %86, align 4, !dbg !3812
  %88 = sext i32 %87 to i64, !dbg !3811
  %89 = mul i64 8, %88, !dbg !3813
  %90 = call i8* @g_realloc(i8* %84, i64 %89), !dbg !3814
  %91 = bitcast i8* %90 to i8**, !dbg !3814
  %92 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !3815
  %93 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %92, i32 0, i32 3, !dbg !3816
  store i8** %91, i8*** %93, align 8, !dbg !3817
  %94 = load i32, i32* %8, align 4, !dbg !3818
  store i32 %94, i32* %11, align 4, !dbg !3820
  br label %95, !dbg !3821

; <label>:95:                                     ; preds = %108, %80
  %96 = load i32, i32* %11, align 4, !dbg !3822
  %97 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !3825
  %98 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %97, i32 0, i32 1, !dbg !3826
  %99 = load i32, i32* %98, align 4, !dbg !3826
  %100 = icmp slt i32 %96, %99, !dbg !3827
  br i1 %100, label %101, label %111, !dbg !3828

; <label>:101:                                    ; preds = %95
  %102 = load i32, i32* %11, align 4, !dbg !3829
  %103 = sext i32 %102 to i64, !dbg !3831
  %104 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !3831
  %105 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %104, i32 0, i32 3, !dbg !3832
  %106 = load i8**, i8*** %105, align 8, !dbg !3832
  %107 = getelementptr inbounds i8*, i8** %106, i64 %103, !dbg !3831
  store i8* null, i8** %107, align 8, !dbg !3833
  br label %108, !dbg !3834

; <label>:108:                                    ; preds = %101
  %109 = load i32, i32* %11, align 4, !dbg !3835
  %110 = add nsw i32 %109, 1, !dbg !3835
  store i32 %110, i32* %11, align 4, !dbg !3835
  br label %95, !dbg !3837, !llvm.loop !3838

; <label>:111:                                    ; preds = %95
  br label %112, !dbg !3840

; <label>:112:                                    ; preds = %111, %66
  br label %113, !dbg !3841

; <label>:113:                                    ; preds = %112, %63
  %114 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !3842
  call void @gui_entry_redraw_from(%struct.GUI_ENTRY_REC* %114, i32 0), !dbg !3843
  %115 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !3844
  %116 = load i32, i32* %7, align 4, !dbg !3845
  call void @gui_entry_set_pos(%struct.GUI_ENTRY_REC* %115, i32 %116), !dbg !3846
  br label %117, !dbg !3847

; <label>:117:                                    ; preds = %113, %16
  ret void, !dbg !3848
}

declare i8* @g_realloc(i8*, i64) #2

; Function Attrs: nounwind uwtable
define void @gui_entry_move_pos(%struct.GUI_ENTRY_REC*, i32) #0 !dbg !3850 {
  %3 = alloca %struct.GUI_ENTRY_REC*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.GUI_ENTRY_REC* %0, %struct.GUI_ENTRY_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_REC** %3, metadata !3851, metadata !102), !dbg !3852
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3853, metadata !102), !dbg !3854
  br label %6, !dbg !3855, !llvm.loop !3856

; <label>:6:                                      ; preds = %2
  %7 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !3857
  %8 = icmp ne %struct.GUI_ENTRY_REC* %7, null, !dbg !3861
  br i1 %8, label %9, label %10, !dbg !3857

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !3862

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gui_entry_move_pos, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0)), !dbg !3865
  br label %87, !dbg !3868

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !3869

; <label>:12:                                     ; preds = %11
  %13 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !3871
  %14 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %13, i32 0, i32 8, !dbg !3873
  %15 = load i32, i32* %14, align 4, !dbg !3873
  %16 = load i32, i32* %4, align 4, !dbg !3874
  %17 = add nsw i32 %15, %16, !dbg !3875
  %18 = icmp sge i32 %17, 0, !dbg !3876
  br i1 %18, label %19, label %35, !dbg !3877

; <label>:19:                                     ; preds = %12
  %20 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !3878
  %21 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %20, i32 0, i32 8, !dbg !3880
  %22 = load i32, i32* %21, align 4, !dbg !3880
  %23 = load i32, i32* %4, align 4, !dbg !3881
  %24 = add nsw i32 %22, %23, !dbg !3882
  %25 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !3883
  %26 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %25, i32 0, i32 0, !dbg !3884
  %27 = load i32, i32* %26, align 8, !dbg !3884
  %28 = icmp sle i32 %24, %27, !dbg !3885
  br i1 %28, label %29, label %35, !dbg !3886

; <label>:29:                                     ; preds = %19
  %30 = load i32, i32* %4, align 4, !dbg !3887
  %31 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !3888
  %32 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %31, i32 0, i32 8, !dbg !3889
  %33 = load i32, i32* %32, align 4, !dbg !3890
  %34 = add nsw i32 %33, %30, !dbg !3890
  store i32 %34, i32* %32, align 4, !dbg !3890
  br label %35, !dbg !3888

; <label>:35:                                     ; preds = %29, %19, %12
  %36 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !3891
  %37 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %36, i32 0, i32 15, !dbg !3893
  %38 = load i8, i8* %37, align 4, !dbg !3893
  %39 = and i8 %38, 1, !dbg !3893
  %40 = zext i8 %39 to i32, !dbg !3893
  %41 = icmp ne i32 %40, 0, !dbg !3891
  br i1 %41, label %42, label %84, !dbg !3894

; <label>:42:                                     ; preds = %35
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3895, metadata !102), !dbg !3897
  %43 = load i32, i32* %4, align 4, !dbg !3898
  %44 = icmp slt i32 %43, 0, !dbg !3899
  %45 = select i1 %44, i32 -1, i32 1, !dbg !3898
  store i32 %45, i32* %5, align 4, !dbg !3897
  br label %46, !dbg !3900

; <label>:46:                                     ; preds = %77, %42
  %47 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !3901
  %48 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %47, i32 0, i32 8, !dbg !3903
  %49 = load i32, i32* %48, align 4, !dbg !3903
  %50 = sext i32 %49 to i64, !dbg !3904
  %51 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !3904
  %52 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %51, i32 0, i32 2, !dbg !3905
  %53 = load i32*, i32** %52, align 8, !dbg !3905
  %54 = getelementptr inbounds i32, i32* %53, i64 %50, !dbg !3904
  %55 = load i32, i32* %54, align 4, !dbg !3904
  %56 = call i32 @i_wcwidth(i32 %55), !dbg !3906
  %57 = icmp eq i32 %56, 0, !dbg !3907
  br i1 %57, label %58, label %75, !dbg !3908

; <label>:58:                                     ; preds = %46
  %59 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !3909
  %60 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %59, i32 0, i32 8, !dbg !3910
  %61 = load i32, i32* %60, align 4, !dbg !3910
  %62 = load i32, i32* %5, align 4, !dbg !3911
  %63 = add nsw i32 %61, %62, !dbg !3912
  %64 = icmp sge i32 %63, 0, !dbg !3913
  br i1 %64, label %65, label %75, !dbg !3914

; <label>:65:                                     ; preds = %58
  %66 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !3915
  %67 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %66, i32 0, i32 8, !dbg !3916
  %68 = load i32, i32* %67, align 4, !dbg !3916
  %69 = load i32, i32* %5, align 4, !dbg !3917
  %70 = add nsw i32 %68, %69, !dbg !3918
  %71 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !3919
  %72 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %71, i32 0, i32 0, !dbg !3920
  %73 = load i32, i32* %72, align 8, !dbg !3920
  %74 = icmp sle i32 %70, %73, !dbg !3921
  br label %75

; <label>:75:                                     ; preds = %65, %58, %46
  %76 = phi i1 [ false, %58 ], [ false, %46 ], [ %74, %65 ]
  br i1 %76, label %77, label %83, !dbg !3922

; <label>:77:                                     ; preds = %75
  %78 = load i32, i32* %5, align 4, !dbg !3924
  %79 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !3925
  %80 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %79, i32 0, i32 8, !dbg !3926
  %81 = load i32, i32* %80, align 4, !dbg !3927
  %82 = add nsw i32 %81, %78, !dbg !3927
  store i32 %82, i32* %80, align 4, !dbg !3927
  br label %46, !dbg !3928, !llvm.loop !3930

; <label>:83:                                     ; preds = %75
  br label %84, !dbg !3931

; <label>:84:                                     ; preds = %83, %35
  %85 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !3932
  call void @gui_entry_fix_cursor(%struct.GUI_ENTRY_REC* %85), !dbg !3933
  %86 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !3934
  call void @gui_entry_draw(%struct.GUI_ENTRY_REC* %86), !dbg !3935
  br label %87, !dbg !3936

; <label>:87:                                     ; preds = %84, %10
  ret void, !dbg !3937
}

; Function Attrs: nounwind uwtable
define void @gui_entry_move_words(%struct.GUI_ENTRY_REC*, i32, i32) #0 !dbg !3939 {
  %4 = alloca %struct.GUI_ENTRY_REC*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.GUI_ENTRY_REC* %0, %struct.GUI_ENTRY_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_REC** %4, metadata !3942, metadata !102), !dbg !3943
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3944, metadata !102), !dbg !3945
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3946, metadata !102), !dbg !3947
  br label %7, !dbg !3948, !llvm.loop !3949

; <label>:7:                                      ; preds = %3
  %8 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !3950
  %9 = icmp ne %struct.GUI_ENTRY_REC* %8, null, !dbg !3954
  br i1 %9, label %10, label %11, !dbg !3950

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !3955

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gui_entry_move_words, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0)), !dbg !3958
  br label %32, !dbg !3961

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !3962

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !3964
  %15 = icmp slt i32 %14, 0, !dbg !3966
  br i1 %15, label %16, label %21, !dbg !3967

; <label>:16:                                     ; preds = %13
  %17 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !3968
  %18 = load i32, i32* %5, align 4, !dbg !3969
  %19 = sub nsw i32 0, %18, !dbg !3970
  %20 = load i32, i32* %6, align 4, !dbg !3971
  call void @gui_entry_move_words_left(%struct.GUI_ENTRY_REC* %17, i32 %19, i32 %20), !dbg !3972
  br label %29, !dbg !3972

; <label>:21:                                     ; preds = %13
  %22 = load i32, i32* %5, align 4, !dbg !3973
  %23 = icmp sgt i32 %22, 0, !dbg !3975
  br i1 %23, label %24, label %28, !dbg !3976

; <label>:24:                                     ; preds = %21
  %25 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !3977
  %26 = load i32, i32* %5, align 4, !dbg !3978
  %27 = load i32, i32* %6, align 4, !dbg !3979
  call void @gui_entry_move_words_right(%struct.GUI_ENTRY_REC* %25, i32 %26, i32 %27), !dbg !3980
  br label %28, !dbg !3980

; <label>:28:                                     ; preds = %24, %21
  br label %29

; <label>:29:                                     ; preds = %28, %16
  %30 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !3981
  call void @gui_entry_fix_cursor(%struct.GUI_ENTRY_REC* %30), !dbg !3982
  %31 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !3983
  call void @gui_entry_draw(%struct.GUI_ENTRY_REC* %31), !dbg !3984
  br label %32, !dbg !3985

; <label>:32:                                     ; preds = %29, %11
  ret void, !dbg !3986
}

; Function Attrs: nounwind uwtable
define internal void @gui_entry_move_words_left(%struct.GUI_ENTRY_REC*, i32, i32) #0 !dbg !3988 {
  %4 = alloca %struct.GUI_ENTRY_REC*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.GUI_ENTRY_REC* %0, %struct.GUI_ENTRY_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_REC** %4, metadata !3989, metadata !102), !dbg !3990
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3991, metadata !102), !dbg !3992
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3993, metadata !102), !dbg !3994
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3995, metadata !102), !dbg !3996
  %8 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !3997
  %9 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %8, i32 0, i32 8, !dbg !3998
  %10 = load i32, i32* %9, align 4, !dbg !3998
  store i32 %10, i32* %7, align 4, !dbg !3999
  br label %11, !dbg !4000

; <label>:11:                                     ; preds = %103, %3
  %12 = load i32, i32* %5, align 4, !dbg !4001
  %13 = icmp sgt i32 %12, 0, !dbg !4003
  br i1 %13, label %14, label %17, !dbg !4004

; <label>:14:                                     ; preds = %11
  %15 = load i32, i32* %7, align 4, !dbg !4005
  %16 = icmp sgt i32 %15, 0, !dbg !4007
  br label %17

; <label>:17:                                     ; preds = %14, %11
  %18 = phi i1 [ false, %11 ], [ %16, %14 ]
  br i1 %18, label %19, label %106, !dbg !4008

; <label>:19:                                     ; preds = %17
  %20 = load i32, i32* %6, align 4, !dbg !4010
  %21 = icmp ne i32 %20, 0, !dbg !4010
  br i1 %21, label %22, label %61, !dbg !4013

; <label>:22:                                     ; preds = %19
  br label %23, !dbg !4014

; <label>:23:                                     ; preds = %38, %22
  %24 = load i32, i32* %7, align 4, !dbg !4016
  %25 = icmp sgt i32 %24, 0, !dbg !4018
  br i1 %25, label %26, label %36, !dbg !4019

; <label>:26:                                     ; preds = %23
  %27 = load i32, i32* %7, align 4, !dbg !4020
  %28 = sub nsw i32 %27, 1, !dbg !4022
  %29 = sext i32 %28 to i64, !dbg !4023
  %30 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !4023
  %31 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %30, i32 0, i32 2, !dbg !4024
  %32 = load i32*, i32** %31, align 8, !dbg !4024
  %33 = getelementptr inbounds i32, i32* %32, i64 %29, !dbg !4023
  %34 = load i32, i32* %33, align 4, !dbg !4023
  %35 = icmp eq i32 %34, 32, !dbg !4025
  br label %36

; <label>:36:                                     ; preds = %26, %23
  %37 = phi i1 [ false, %23 ], [ %35, %26 ]
  br i1 %37, label %38, label %41, !dbg !4026

; <label>:38:                                     ; preds = %36
  %39 = load i32, i32* %7, align 4, !dbg !4028
  %40 = add nsw i32 %39, -1, !dbg !4028
  store i32 %40, i32* %7, align 4, !dbg !4028
  br label %23, !dbg !4029, !llvm.loop !4031

; <label>:41:                                     ; preds = %36
  br label %42, !dbg !4032

; <label>:42:                                     ; preds = %57, %41
  %43 = load i32, i32* %7, align 4, !dbg !4033
  %44 = icmp sgt i32 %43, 0, !dbg !4034
  br i1 %44, label %45, label %55, !dbg !4035

; <label>:45:                                     ; preds = %42
  %46 = load i32, i32* %7, align 4, !dbg !4036
  %47 = sub nsw i32 %46, 1, !dbg !4037
  %48 = sext i32 %47 to i64, !dbg !4038
  %49 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !4038
  %50 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %49, i32 0, i32 2, !dbg !4039
  %51 = load i32*, i32** %50, align 8, !dbg !4039
  %52 = getelementptr inbounds i32, i32* %51, i64 %48, !dbg !4038
  %53 = load i32, i32* %52, align 4, !dbg !4038
  %54 = icmp ne i32 %53, 32, !dbg !4040
  br label %55

; <label>:55:                                     ; preds = %45, %42
  %56 = phi i1 [ false, %42 ], [ %54, %45 ]
  br i1 %56, label %57, label %60, !dbg !4041

; <label>:57:                                     ; preds = %55
  %58 = load i32, i32* %7, align 4, !dbg !4042
  %59 = add nsw i32 %58, -1, !dbg !4042
  store i32 %59, i32* %7, align 4, !dbg !4042
  br label %42, !dbg !4043, !llvm.loop !4044

; <label>:60:                                     ; preds = %55
  br label %103, !dbg !4045

; <label>:61:                                     ; preds = %19
  br label %62, !dbg !4046

; <label>:62:                                     ; preds = %79, %61
  %63 = load i32, i32* %7, align 4, !dbg !4048
  %64 = icmp sgt i32 %63, 0, !dbg !4050
  br i1 %64, label %65, label %77, !dbg !4051

; <label>:65:                                     ; preds = %62
  %66 = load i32, i32* %7, align 4, !dbg !4052
  %67 = sub nsw i32 %66, 1, !dbg !4054
  %68 = sext i32 %67 to i64, !dbg !4055
  %69 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !4055
  %70 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %69, i32 0, i32 2, !dbg !4056
  %71 = load i32*, i32** %70, align 8, !dbg !4056
  %72 = getelementptr inbounds i32, i32* %71, i64 %68, !dbg !4055
  %73 = load i32, i32* %72, align 4, !dbg !4055
  %74 = call i32 @i_isalnum(i32 %73), !dbg !4057
  %75 = icmp ne i32 %74, 0, !dbg !4058
  %76 = xor i1 %75, true, !dbg !4058
  br label %77

; <label>:77:                                     ; preds = %65, %62
  %78 = phi i1 [ false, %62 ], [ %76, %65 ]
  br i1 %78, label %79, label %82, !dbg !4059

; <label>:79:                                     ; preds = %77
  %80 = load i32, i32* %7, align 4, !dbg !4061
  %81 = add nsw i32 %80, -1, !dbg !4061
  store i32 %81, i32* %7, align 4, !dbg !4061
  br label %62, !dbg !4062, !llvm.loop !4064

; <label>:82:                                     ; preds = %77
  br label %83, !dbg !4065

; <label>:83:                                     ; preds = %99, %82
  %84 = load i32, i32* %7, align 4, !dbg !4066
  %85 = icmp sgt i32 %84, 0, !dbg !4067
  br i1 %85, label %86, label %97, !dbg !4068

; <label>:86:                                     ; preds = %83
  %87 = load i32, i32* %7, align 4, !dbg !4069
  %88 = sub nsw i32 %87, 1, !dbg !4070
  %89 = sext i32 %88 to i64, !dbg !4071
  %90 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !4071
  %91 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %90, i32 0, i32 2, !dbg !4072
  %92 = load i32*, i32** %91, align 8, !dbg !4072
  %93 = getelementptr inbounds i32, i32* %92, i64 %89, !dbg !4071
  %94 = load i32, i32* %93, align 4, !dbg !4071
  %95 = call i32 @i_isalnum(i32 %94), !dbg !4073
  %96 = icmp ne i32 %95, 0, !dbg !4074
  br label %97

; <label>:97:                                     ; preds = %86, %83
  %98 = phi i1 [ false, %83 ], [ %96, %86 ]
  br i1 %98, label %99, label %102, !dbg !4075

; <label>:99:                                     ; preds = %97
  %100 = load i32, i32* %7, align 4, !dbg !4076
  %101 = add nsw i32 %100, -1, !dbg !4076
  store i32 %101, i32* %7, align 4, !dbg !4076
  br label %83, !dbg !4077, !llvm.loop !4078

; <label>:102:                                    ; preds = %97
  br label %103

; <label>:103:                                    ; preds = %102, %60
  %104 = load i32, i32* %5, align 4, !dbg !4079
  %105 = add nsw i32 %104, -1, !dbg !4079
  store i32 %105, i32* %5, align 4, !dbg !4079
  br label %11, !dbg !4080, !llvm.loop !4082

; <label>:106:                                    ; preds = %17
  %107 = load i32, i32* %7, align 4, !dbg !4083
  %108 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !4084
  %109 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %108, i32 0, i32 8, !dbg !4085
  store i32 %107, i32* %109, align 4, !dbg !4086
  ret void, !dbg !4087
}

; Function Attrs: nounwind uwtable
define internal void @gui_entry_move_words_right(%struct.GUI_ENTRY_REC*, i32, i32) #0 !dbg !4088 {
  %4 = alloca %struct.GUI_ENTRY_REC*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.GUI_ENTRY_REC* %0, %struct.GUI_ENTRY_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_REC** %4, metadata !4089, metadata !102), !dbg !4090
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4091, metadata !102), !dbg !4092
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4093, metadata !102), !dbg !4094
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4095, metadata !102), !dbg !4096
  %8 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !4097
  %9 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %8, i32 0, i32 8, !dbg !4098
  %10 = load i32, i32* %9, align 4, !dbg !4098
  store i32 %10, i32* %7, align 4, !dbg !4099
  br label %11, !dbg !4100

; <label>:11:                                     ; preds = %114, %3
  %12 = load i32, i32* %5, align 4, !dbg !4101
  %13 = icmp sgt i32 %12, 0, !dbg !4103
  br i1 %13, label %14, label %20, !dbg !4104

; <label>:14:                                     ; preds = %11
  %15 = load i32, i32* %7, align 4, !dbg !4105
  %16 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !4107
  %17 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %16, i32 0, i32 0, !dbg !4108
  %18 = load i32, i32* %17, align 8, !dbg !4108
  %19 = icmp slt i32 %15, %18, !dbg !4109
  br label %20

; <label>:20:                                     ; preds = %14, %11
  %21 = phi i1 [ false, %11 ], [ %19, %14 ]
  br i1 %21, label %22, label %117, !dbg !4110

; <label>:22:                                     ; preds = %20
  %23 = load i32, i32* %6, align 4, !dbg !4112
  %24 = icmp ne i32 %23, 0, !dbg !4112
  br i1 %24, label %25, label %68, !dbg !4115

; <label>:25:                                     ; preds = %22
  br label %26, !dbg !4116

; <label>:26:                                     ; preds = %43, %25
  %27 = load i32, i32* %7, align 4, !dbg !4118
  %28 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !4120
  %29 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %28, i32 0, i32 0, !dbg !4121
  %30 = load i32, i32* %29, align 8, !dbg !4121
  %31 = icmp slt i32 %27, %30, !dbg !4122
  br i1 %31, label %32, label %41, !dbg !4123

; <label>:32:                                     ; preds = %26
  %33 = load i32, i32* %7, align 4, !dbg !4124
  %34 = sext i32 %33 to i64, !dbg !4126
  %35 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !4126
  %36 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %35, i32 0, i32 2, !dbg !4127
  %37 = load i32*, i32** %36, align 8, !dbg !4127
  %38 = getelementptr inbounds i32, i32* %37, i64 %34, !dbg !4126
  %39 = load i32, i32* %38, align 4, !dbg !4126
  %40 = icmp eq i32 %39, 32, !dbg !4128
  br label %41

; <label>:41:                                     ; preds = %32, %26
  %42 = phi i1 [ false, %26 ], [ %40, %32 ]
  br i1 %42, label %43, label %46, !dbg !4129

; <label>:43:                                     ; preds = %41
  %44 = load i32, i32* %7, align 4, !dbg !4131
  %45 = add nsw i32 %44, 1, !dbg !4131
  store i32 %45, i32* %7, align 4, !dbg !4131
  br label %26, !dbg !4132, !llvm.loop !4134

; <label>:46:                                     ; preds = %41
  br label %47, !dbg !4135

; <label>:47:                                     ; preds = %64, %46
  %48 = load i32, i32* %7, align 4, !dbg !4136
  %49 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !4137
  %50 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %49, i32 0, i32 0, !dbg !4138
  %51 = load i32, i32* %50, align 8, !dbg !4138
  %52 = icmp slt i32 %48, %51, !dbg !4139
  br i1 %52, label %53, label %62, !dbg !4140

; <label>:53:                                     ; preds = %47
  %54 = load i32, i32* %7, align 4, !dbg !4141
  %55 = sext i32 %54 to i64, !dbg !4142
  %56 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !4142
  %57 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %56, i32 0, i32 2, !dbg !4143
  %58 = load i32*, i32** %57, align 8, !dbg !4143
  %59 = getelementptr inbounds i32, i32* %58, i64 %55, !dbg !4142
  %60 = load i32, i32* %59, align 4, !dbg !4142
  %61 = icmp ne i32 %60, 32, !dbg !4144
  br label %62

; <label>:62:                                     ; preds = %53, %47
  %63 = phi i1 [ false, %47 ], [ %61, %53 ]
  br i1 %63, label %64, label %67, !dbg !4145

; <label>:64:                                     ; preds = %62
  %65 = load i32, i32* %7, align 4, !dbg !4146
  %66 = add nsw i32 %65, 1, !dbg !4146
  store i32 %66, i32* %7, align 4, !dbg !4146
  br label %47, !dbg !4147, !llvm.loop !4148

; <label>:67:                                     ; preds = %62
  br label %114, !dbg !4149

; <label>:68:                                     ; preds = %22
  br label %69, !dbg !4150

; <label>:69:                                     ; preds = %88, %68
  %70 = load i32, i32* %7, align 4, !dbg !4152
  %71 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !4154
  %72 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %71, i32 0, i32 0, !dbg !4155
  %73 = load i32, i32* %72, align 8, !dbg !4155
  %74 = icmp slt i32 %70, %73, !dbg !4156
  br i1 %74, label %75, label %86, !dbg !4157

; <label>:75:                                     ; preds = %69
  %76 = load i32, i32* %7, align 4, !dbg !4158
  %77 = sext i32 %76 to i64, !dbg !4160
  %78 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !4160
  %79 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %78, i32 0, i32 2, !dbg !4161
  %80 = load i32*, i32** %79, align 8, !dbg !4161
  %81 = getelementptr inbounds i32, i32* %80, i64 %77, !dbg !4160
  %82 = load i32, i32* %81, align 4, !dbg !4160
  %83 = call i32 @i_isalnum(i32 %82), !dbg !4162
  %84 = icmp ne i32 %83, 0, !dbg !4163
  %85 = xor i1 %84, true, !dbg !4163
  br label %86

; <label>:86:                                     ; preds = %75, %69
  %87 = phi i1 [ false, %69 ], [ %85, %75 ]
  br i1 %87, label %88, label %91, !dbg !4164

; <label>:88:                                     ; preds = %86
  %89 = load i32, i32* %7, align 4, !dbg !4166
  %90 = add nsw i32 %89, 1, !dbg !4166
  store i32 %90, i32* %7, align 4, !dbg !4166
  br label %69, !dbg !4167, !llvm.loop !4169

; <label>:91:                                     ; preds = %86
  br label %92, !dbg !4170

; <label>:92:                                     ; preds = %110, %91
  %93 = load i32, i32* %7, align 4, !dbg !4171
  %94 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !4172
  %95 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %94, i32 0, i32 0, !dbg !4173
  %96 = load i32, i32* %95, align 8, !dbg !4173
  %97 = icmp slt i32 %93, %96, !dbg !4174
  br i1 %97, label %98, label %108, !dbg !4175

; <label>:98:                                     ; preds = %92
  %99 = load i32, i32* %7, align 4, !dbg !4176
  %100 = sext i32 %99 to i64, !dbg !4177
  %101 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !4177
  %102 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %101, i32 0, i32 2, !dbg !4178
  %103 = load i32*, i32** %102, align 8, !dbg !4178
  %104 = getelementptr inbounds i32, i32* %103, i64 %100, !dbg !4177
  %105 = load i32, i32* %104, align 4, !dbg !4177
  %106 = call i32 @i_isalnum(i32 %105), !dbg !4179
  %107 = icmp ne i32 %106, 0, !dbg !4180
  br label %108

; <label>:108:                                    ; preds = %98, %92
  %109 = phi i1 [ false, %92 ], [ %107, %98 ]
  br i1 %109, label %110, label %113, !dbg !4181

; <label>:110:                                    ; preds = %108
  %111 = load i32, i32* %7, align 4, !dbg !4182
  %112 = add nsw i32 %111, 1, !dbg !4182
  store i32 %112, i32* %7, align 4, !dbg !4182
  br label %92, !dbg !4183, !llvm.loop !4184

; <label>:113:                                    ; preds = %108
  br label %114

; <label>:114:                                    ; preds = %113, %67
  %115 = load i32, i32* %5, align 4, !dbg !4185
  %116 = add nsw i32 %115, -1, !dbg !4185
  store i32 %116, i32* %5, align 4, !dbg !4185
  br label %11, !dbg !4186, !llvm.loop !4188

; <label>:117:                                    ; preds = %20
  %118 = load i32, i32* %7, align 4, !dbg !4189
  %119 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !4190
  %120 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %119, i32 0, i32 8, !dbg !4191
  store i32 %118, i32* %120, align 4, !dbg !4192
  ret void, !dbg !4193
}

; Function Attrs: nounwind uwtable
define void @gui_entry_set_extent(%struct.GUI_ENTRY_REC*, i32, i8*) #0 !dbg !4194 {
  %4 = alloca %struct.GUI_ENTRY_REC*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.GUI_ENTRY_REC* %0, %struct.GUI_ENTRY_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_REC** %4, metadata !4197, metadata !102), !dbg !4198
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4199, metadata !102), !dbg !4200
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4201, metadata !102), !dbg !4202
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4203, metadata !102), !dbg !4204
  store i32 0, i32* %7, align 4, !dbg !4204
  br label %8, !dbg !4205, !llvm.loop !4206

; <label>:8:                                      ; preds = %3
  %9 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !4207
  %10 = icmp ne %struct.GUI_ENTRY_REC* %9, null, !dbg !4211
  br i1 %10, label %11, label %12, !dbg !4207

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !4212

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gui_entry_set_extent, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0)), !dbg !4215
  br label %87, !dbg !4218

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !4219

; <label>:14:                                     ; preds = %13
  %15 = load i32, i32* %5, align 4, !dbg !4221
  %16 = icmp slt i32 %15, 0, !dbg !4223
  br i1 %16, label %23, label %17, !dbg !4224

; <label>:17:                                     ; preds = %14
  %18 = load i32, i32* %5, align 4, !dbg !4225
  %19 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !4227
  %20 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %19, i32 0, i32 0, !dbg !4228
  %21 = load i32, i32* %20, align 8, !dbg !4228
  %22 = icmp sgt i32 %18, %21, !dbg !4229
  br i1 %22, label %23, label %24, !dbg !4230

; <label>:23:                                     ; preds = %17, %14
  br label %87, !dbg !4231

; <label>:24:                                     ; preds = %17
  %25 = load i8*, i8** %6, align 8, !dbg !4232
  %26 = icmp eq i8* %25, null, !dbg !4234
  br i1 %26, label %27, label %28, !dbg !4235

; <label>:27:                                     ; preds = %24
  br label %87, !dbg !4236

; <label>:28:                                     ; preds = %24
  %29 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !4237
  %30 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %29, i32 0, i32 15, !dbg !4239
  %31 = load i8, i8* %30, align 4, !dbg !4239
  %32 = lshr i8 %31, 4, !dbg !4239
  %33 = and i8 %32, 1, !dbg !4239
  %34 = zext i8 %33 to i32, !dbg !4239
  %35 = icmp ne i32 %34, 0, !dbg !4237
  br i1 %35, label %38, label %36, !dbg !4240

; <label>:36:                                     ; preds = %28
  %37 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !4241
  call void @gui_entry_alloc_extents(%struct.GUI_ENTRY_REC* %37), !dbg !4243
  br label %38, !dbg !4244

; <label>:38:                                     ; preds = %36, %28
  %39 = load i32, i32* %5, align 4, !dbg !4245
  %40 = sext i32 %39 to i64, !dbg !4247
  %41 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !4247
  %42 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %41, i32 0, i32 3, !dbg !4248
  %43 = load i8**, i8*** %42, align 8, !dbg !4248
  %44 = getelementptr inbounds i8*, i8** %43, i64 %40, !dbg !4247
  %45 = load i8*, i8** %44, align 8, !dbg !4247
  %46 = load i8*, i8** %6, align 8, !dbg !4249
  %47 = call i32 @g_strcmp0(i8* %45, i8* %46), !dbg !4250
  %48 = icmp ne i32 %47, 0, !dbg !4251
  br i1 %48, label %49, label %78, !dbg !4252

; <label>:49:                                     ; preds = %38
  %50 = load i32, i32* %5, align 4, !dbg !4253
  %51 = sext i32 %50 to i64, !dbg !4255
  %52 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !4255
  %53 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %52, i32 0, i32 3, !dbg !4256
  %54 = load i8**, i8*** %53, align 8, !dbg !4256
  %55 = getelementptr inbounds i8*, i8** %54, i64 %51, !dbg !4255
  %56 = load i8*, i8** %55, align 8, !dbg !4255
  call void @g_free(i8* %56), !dbg !4257
  %57 = load i8*, i8** %6, align 8, !dbg !4258
  %58 = load i8, i8* %57, align 1, !dbg !4260
  %59 = sext i8 %58 to i32, !dbg !4260
  %60 = icmp eq i32 %59, 0, !dbg !4261
  br i1 %60, label %61, label %68, !dbg !4262

; <label>:61:                                     ; preds = %49
  %62 = load i32, i32* %5, align 4, !dbg !4263
  %63 = sext i32 %62 to i64, !dbg !4265
  %64 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !4265
  %65 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %64, i32 0, i32 3, !dbg !4266
  %66 = load i8**, i8*** %65, align 8, !dbg !4266
  %67 = getelementptr inbounds i8*, i8** %66, i64 %63, !dbg !4265
  store i8* null, i8** %67, align 8, !dbg !4267
  br label %77, !dbg !4268

; <label>:68:                                     ; preds = %49
  %69 = load i8*, i8** %6, align 8, !dbg !4269
  %70 = call noalias i8* @g_strdup(i8* %69), !dbg !4271
  %71 = load i32, i32* %5, align 4, !dbg !4272
  %72 = sext i32 %71 to i64, !dbg !4273
  %73 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !4273
  %74 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %73, i32 0, i32 3, !dbg !4274
  %75 = load i8**, i8*** %74, align 8, !dbg !4274
  %76 = getelementptr inbounds i8*, i8** %75, i64 %72, !dbg !4273
  store i8* %70, i8** %76, align 8, !dbg !4275
  br label %77

; <label>:77:                                     ; preds = %68, %61
  store i32 1, i32* %7, align 4, !dbg !4276
  br label %78, !dbg !4277

; <label>:78:                                     ; preds = %77, %38
  %79 = load i32, i32* %7, align 4, !dbg !4278
  %80 = icmp ne i32 %79, 0, !dbg !4278
  br i1 %80, label %81, label %87, !dbg !4280

; <label>:81:                                     ; preds = %78
  %82 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !4281
  %83 = load i32, i32* %5, align 4, !dbg !4283
  %84 = sub nsw i32 %83, 1, !dbg !4284
  call void @gui_entry_redraw_from(%struct.GUI_ENTRY_REC* %82, i32 %84), !dbg !4285
  %85 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !4286
  call void @gui_entry_fix_cursor(%struct.GUI_ENTRY_REC* %85), !dbg !4287
  %86 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !4288
  call void @gui_entry_draw(%struct.GUI_ENTRY_REC* %86), !dbg !4289
  br label %87, !dbg !4290

; <label>:87:                                     ; preds = %12, %23, %27, %81, %78
  ret void, !dbg !4291
}

; Function Attrs: nounwind uwtable
define internal void @gui_entry_alloc_extents(%struct.GUI_ENTRY_REC*) #0 !dbg !4292 {
  %2 = alloca %struct.GUI_ENTRY_REC*, align 8
  store %struct.GUI_ENTRY_REC* %0, %struct.GUI_ENTRY_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_REC** %2, metadata !4293, metadata !102), !dbg !4294
  %3 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !4295
  %4 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %3, i32 0, i32 15, !dbg !4296
  %5 = load i8, i8* %4, align 4, !dbg !4297
  %6 = and i8 %5, -17, !dbg !4297
  %7 = or i8 %6, 16, !dbg !4297
  store i8 %7, i8* %4, align 4, !dbg !4297
  %8 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !4298
  %9 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %8, i32 0, i32 1, !dbg !4299
  %10 = load i32, i32* %9, align 4, !dbg !4299
  %11 = sext i32 %10 to i64, !dbg !4300
  %12 = call noalias i8* @g_malloc0_n(i64 %11, i64 8), !dbg !4301
  %13 = bitcast i8* %12 to i8**, !dbg !4302
  %14 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %2, align 8, !dbg !4303
  %15 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %14, i32 0, i32 3, !dbg !4304
  store i8** %13, i8*** %15, align 8, !dbg !4305
  ret void, !dbg !4306
}

declare i32 @g_strcmp0(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @gui_entry_set_extents(%struct.GUI_ENTRY_REC*, i32, i32, i8*, i8*) #0 !dbg !4307 {
  %6 = alloca %struct.GUI_ENTRY_REC*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.GUI_ENTRY_REC* %0, %struct.GUI_ENTRY_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_REC** %6, metadata !4310, metadata !102), !dbg !4311
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4312, metadata !102), !dbg !4313
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !4314, metadata !102), !dbg !4315
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !4316, metadata !102), !dbg !4317
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !4318, metadata !102), !dbg !4319
  call void @llvm.dbg.declare(metadata i32* %11, metadata !4320, metadata !102), !dbg !4321
  call void @llvm.dbg.declare(metadata i32* %12, metadata !4322, metadata !102), !dbg !4323
  store i32 0, i32* %12, align 4, !dbg !4323
  br label %13, !dbg !4324, !llvm.loop !4325

; <label>:13:                                     ; preds = %5
  %14 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %6, align 8, !dbg !4326
  %15 = icmp ne %struct.GUI_ENTRY_REC* %14, null, !dbg !4330
  br i1 %15, label %16, label %17, !dbg !4326

; <label>:16:                                     ; preds = %13
  br label %18, !dbg !4331

; <label>:17:                                     ; preds = %13
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gui_entry_set_extents, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0)), !dbg !4334
  br label %148, !dbg !4337

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !4338

; <label>:19:                                     ; preds = %18
  %20 = load i32, i32* %7, align 4, !dbg !4340
  %21 = icmp slt i32 %20, 0, !dbg !4342
  br i1 %21, label %31, label %22, !dbg !4343

; <label>:22:                                     ; preds = %19
  %23 = load i32, i32* %8, align 4, !dbg !4344
  %24 = icmp slt i32 %23, 0, !dbg !4346
  br i1 %24, label %31, label %25, !dbg !4347

; <label>:25:                                     ; preds = %22
  %26 = load i32, i32* %7, align 4, !dbg !4348
  %27 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %6, align 8, !dbg !4350
  %28 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %27, i32 0, i32 0, !dbg !4351
  %29 = load i32, i32* %28, align 8, !dbg !4351
  %30 = icmp sgt i32 %26, %29, !dbg !4352
  br i1 %30, label %31, label %32, !dbg !4353

; <label>:31:                                     ; preds = %25, %22, %19
  br label %148, !dbg !4354

; <label>:32:                                     ; preds = %25
  %33 = load i32, i32* %7, align 4, !dbg !4355
  %34 = load i32, i32* %8, align 4, !dbg !4356
  %35 = add nsw i32 %33, %34, !dbg !4357
  store i32 %35, i32* %11, align 4, !dbg !4358
  %36 = load i32, i32* %11, align 4, !dbg !4359
  %37 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %6, align 8, !dbg !4361
  %38 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %37, i32 0, i32 0, !dbg !4362
  %39 = load i32, i32* %38, align 8, !dbg !4362
  %40 = icmp sgt i32 %36, %39, !dbg !4363
  br i1 %40, label %41, label %45, !dbg !4364

; <label>:41:                                     ; preds = %32
  %42 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %6, align 8, !dbg !4365
  %43 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %42, i32 0, i32 0, !dbg !4366
  %44 = load i32, i32* %43, align 8, !dbg !4366
  store i32 %44, i32* %11, align 4, !dbg !4367
  br label %45, !dbg !4368

; <label>:45:                                     ; preds = %41, %32
  %46 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %6, align 8, !dbg !4369
  %47 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %46, i32 0, i32 15, !dbg !4371
  %48 = load i8, i8* %47, align 4, !dbg !4371
  %49 = lshr i8 %48, 4, !dbg !4371
  %50 = and i8 %49, 1, !dbg !4371
  %51 = zext i8 %50 to i32, !dbg !4371
  %52 = icmp ne i32 %51, 0, !dbg !4369
  br i1 %52, label %55, label %53, !dbg !4372

; <label>:53:                                     ; preds = %45
  %54 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %6, align 8, !dbg !4373
  call void @gui_entry_alloc_extents(%struct.GUI_ENTRY_REC* %54), !dbg !4375
  br label %55, !dbg !4376

; <label>:55:                                     ; preds = %53, %45
  %56 = load i32, i32* %7, align 4, !dbg !4377
  %57 = sext i32 %56 to i64, !dbg !4379
  %58 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %6, align 8, !dbg !4379
  %59 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %58, i32 0, i32 3, !dbg !4380
  %60 = load i8**, i8*** %59, align 8, !dbg !4380
  %61 = getelementptr inbounds i8*, i8** %60, i64 %57, !dbg !4379
  %62 = load i8*, i8** %61, align 8, !dbg !4379
  %63 = load i8*, i8** %9, align 8, !dbg !4381
  %64 = call i32 @g_strcmp0(i8* %62, i8* %63), !dbg !4382
  %65 = icmp ne i32 %64, 0, !dbg !4383
  br i1 %65, label %66, label %95, !dbg !4384

; <label>:66:                                     ; preds = %55
  %67 = load i32, i32* %7, align 4, !dbg !4385
  %68 = sext i32 %67 to i64, !dbg !4387
  %69 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %6, align 8, !dbg !4387
  %70 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %69, i32 0, i32 3, !dbg !4388
  %71 = load i8**, i8*** %70, align 8, !dbg !4388
  %72 = getelementptr inbounds i8*, i8** %71, i64 %68, !dbg !4387
  %73 = load i8*, i8** %72, align 8, !dbg !4387
  call void @g_free(i8* %73), !dbg !4389
  %74 = load i8*, i8** %9, align 8, !dbg !4390
  %75 = load i8, i8* %74, align 1, !dbg !4392
  %76 = sext i8 %75 to i32, !dbg !4392
  %77 = icmp eq i32 %76, 0, !dbg !4393
  br i1 %77, label %78, label %85, !dbg !4394

; <label>:78:                                     ; preds = %66
  %79 = load i32, i32* %7, align 4, !dbg !4395
  %80 = sext i32 %79 to i64, !dbg !4397
  %81 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %6, align 8, !dbg !4397
  %82 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %81, i32 0, i32 3, !dbg !4398
  %83 = load i8**, i8*** %82, align 8, !dbg !4398
  %84 = getelementptr inbounds i8*, i8** %83, i64 %80, !dbg !4397
  store i8* null, i8** %84, align 8, !dbg !4399
  br label %94, !dbg !4400

; <label>:85:                                     ; preds = %66
  %86 = load i8*, i8** %9, align 8, !dbg !4401
  %87 = call noalias i8* @g_strdup(i8* %86), !dbg !4403
  %88 = load i32, i32* %7, align 4, !dbg !4404
  %89 = sext i32 %88 to i64, !dbg !4405
  %90 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %6, align 8, !dbg !4405
  %91 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %90, i32 0, i32 3, !dbg !4406
  %92 = load i8**, i8*** %91, align 8, !dbg !4406
  %93 = getelementptr inbounds i8*, i8** %92, i64 %89, !dbg !4405
  store i8* %87, i8** %93, align 8, !dbg !4407
  br label %94

; <label>:94:                                     ; preds = %85, %78
  store i32 1, i32* %12, align 4, !dbg !4408
  br label %95, !dbg !4409

; <label>:95:                                     ; preds = %94, %55
  %96 = load i32, i32* %7, align 4, !dbg !4410
  %97 = load i32, i32* %11, align 4, !dbg !4412
  %98 = icmp ne i32 %96, %97, !dbg !4413
  br i1 %98, label %99, label %139, !dbg !4414

; <label>:99:                                     ; preds = %95
  %100 = load i32, i32* %11, align 4, !dbg !4415
  %101 = sext i32 %100 to i64, !dbg !4417
  %102 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %6, align 8, !dbg !4417
  %103 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %102, i32 0, i32 3, !dbg !4418
  %104 = load i8**, i8*** %103, align 8, !dbg !4418
  %105 = getelementptr inbounds i8*, i8** %104, i64 %101, !dbg !4417
  %106 = load i8*, i8** %105, align 8, !dbg !4417
  %107 = load i8*, i8** %10, align 8, !dbg !4419
  %108 = call i32 @g_strcmp0(i8* %106, i8* %107), !dbg !4420
  %109 = icmp ne i32 %108, 0, !dbg !4421
  br i1 %109, label %110, label %139, !dbg !4422

; <label>:110:                                    ; preds = %99
  %111 = load i32, i32* %11, align 4, !dbg !4423
  %112 = sext i32 %111 to i64, !dbg !4425
  %113 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %6, align 8, !dbg !4425
  %114 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %113, i32 0, i32 3, !dbg !4426
  %115 = load i8**, i8*** %114, align 8, !dbg !4426
  %116 = getelementptr inbounds i8*, i8** %115, i64 %112, !dbg !4425
  %117 = load i8*, i8** %116, align 8, !dbg !4425
  call void @g_free(i8* %117), !dbg !4427
  %118 = load i8*, i8** %10, align 8, !dbg !4428
  %119 = load i8, i8* %118, align 1, !dbg !4430
  %120 = sext i8 %119 to i32, !dbg !4430
  %121 = icmp eq i32 %120, 0, !dbg !4431
  br i1 %121, label %122, label %129, !dbg !4432

; <label>:122:                                    ; preds = %110
  %123 = load i32, i32* %11, align 4, !dbg !4433
  %124 = sext i32 %123 to i64, !dbg !4435
  %125 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %6, align 8, !dbg !4435
  %126 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %125, i32 0, i32 3, !dbg !4436
  %127 = load i8**, i8*** %126, align 8, !dbg !4436
  %128 = getelementptr inbounds i8*, i8** %127, i64 %124, !dbg !4435
  store i8* null, i8** %128, align 8, !dbg !4437
  br label %138, !dbg !4438

; <label>:129:                                    ; preds = %110
  %130 = load i8*, i8** %10, align 8, !dbg !4439
  %131 = call noalias i8* @g_strdup(i8* %130), !dbg !4441
  %132 = load i32, i32* %11, align 4, !dbg !4442
  %133 = sext i32 %132 to i64, !dbg !4443
  %134 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %6, align 8, !dbg !4443
  %135 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %134, i32 0, i32 3, !dbg !4444
  %136 = load i8**, i8*** %135, align 8, !dbg !4444
  %137 = getelementptr inbounds i8*, i8** %136, i64 %133, !dbg !4443
  store i8* %131, i8** %137, align 8, !dbg !4445
  br label %138

; <label>:138:                                    ; preds = %129, %122
  store i32 1, i32* %12, align 4, !dbg !4446
  br label %139, !dbg !4447

; <label>:139:                                    ; preds = %138, %99, %95
  %140 = load i32, i32* %12, align 4, !dbg !4448
  %141 = icmp ne i32 %140, 0, !dbg !4448
  br i1 %141, label %142, label %148, !dbg !4450

; <label>:142:                                    ; preds = %139
  %143 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %6, align 8, !dbg !4451
  %144 = load i32, i32* %7, align 4, !dbg !4453
  %145 = sub nsw i32 %144, 1, !dbg !4454
  call void @gui_entry_redraw_from(%struct.GUI_ENTRY_REC* %143, i32 %145), !dbg !4455
  %146 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %6, align 8, !dbg !4456
  call void @gui_entry_fix_cursor(%struct.GUI_ENTRY_REC* %146), !dbg !4457
  %147 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %6, align 8, !dbg !4458
  call void @gui_entry_draw(%struct.GUI_ENTRY_REC* %147), !dbg !4459
  br label %148, !dbg !4460

; <label>:148:                                    ; preds = %17, %31, %142, %139
  ret void, !dbg !4461
}

; Function Attrs: nounwind uwtable
define void @gui_entry_clear_extents(%struct.GUI_ENTRY_REC*, i32, i32) #0 !dbg !4462 {
  %4 = alloca %struct.GUI_ENTRY_REC*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.GUI_ENTRY_REC* %0, %struct.GUI_ENTRY_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_REC** %4, metadata !4463, metadata !102), !dbg !4464
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4465, metadata !102), !dbg !4466
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4467, metadata !102), !dbg !4468
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4469, metadata !102), !dbg !4470
  call void @llvm.dbg.declare(metadata i32* %8, metadata !4471, metadata !102), !dbg !4472
  call void @llvm.dbg.declare(metadata i32* %9, metadata !4473, metadata !102), !dbg !4474
  store i32 0, i32* %9, align 4, !dbg !4474
  br label %10, !dbg !4475, !llvm.loop !4476

; <label>:10:                                     ; preds = %3
  %11 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !4477
  %12 = icmp ne %struct.GUI_ENTRY_REC* %11, null, !dbg !4481
  br i1 %12, label %13, label %14, !dbg !4477

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !4482

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gui_entry_clear_extents, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0)), !dbg !4485
  br label %92, !dbg !4488

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !4489

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %5, align 4, !dbg !4491
  %18 = icmp slt i32 %17, 0, !dbg !4493
  br i1 %18, label %28, label %19, !dbg !4494

; <label>:19:                                     ; preds = %16
  %20 = load i32, i32* %6, align 4, !dbg !4495
  %21 = icmp slt i32 %20, 0, !dbg !4497
  br i1 %21, label %28, label %22, !dbg !4498

; <label>:22:                                     ; preds = %19
  %23 = load i32, i32* %5, align 4, !dbg !4499
  %24 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !4501
  %25 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %24, i32 0, i32 0, !dbg !4502
  %26 = load i32, i32* %25, align 8, !dbg !4502
  %27 = icmp sgt i32 %23, %26, !dbg !4503
  br i1 %27, label %28, label %29, !dbg !4504

; <label>:28:                                     ; preds = %22, %19, %16
  br label %92, !dbg !4505

; <label>:29:                                     ; preds = %22
  %30 = load i32, i32* %5, align 4, !dbg !4506
  %31 = load i32, i32* %6, align 4, !dbg !4507
  %32 = add nsw i32 %30, %31, !dbg !4508
  store i32 %32, i32* %8, align 4, !dbg !4509
  %33 = load i32, i32* %8, align 4, !dbg !4510
  %34 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !4512
  %35 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %34, i32 0, i32 0, !dbg !4513
  %36 = load i32, i32* %35, align 8, !dbg !4513
  %37 = icmp sgt i32 %33, %36, !dbg !4514
  br i1 %37, label %38, label %42, !dbg !4515

; <label>:38:                                     ; preds = %29
  %39 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !4516
  %40 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %39, i32 0, i32 0, !dbg !4517
  %41 = load i32, i32* %40, align 8, !dbg !4517
  store i32 %41, i32* %8, align 4, !dbg !4518
  br label %42, !dbg !4519

; <label>:42:                                     ; preds = %38, %29
  %43 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !4520
  %44 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %43, i32 0, i32 15, !dbg !4522
  %45 = load i8, i8* %44, align 4, !dbg !4522
  %46 = lshr i8 %45, 4, !dbg !4522
  %47 = and i8 %46, 1, !dbg !4522
  %48 = zext i8 %47 to i32, !dbg !4522
  %49 = icmp ne i32 %48, 0, !dbg !4520
  br i1 %49, label %51, label %50, !dbg !4523

; <label>:50:                                     ; preds = %42
  br label %92, !dbg !4524

; <label>:51:                                     ; preds = %42
  %52 = load i32, i32* %5, align 4, !dbg !4526
  store i32 %52, i32* %7, align 4, !dbg !4528
  br label %53, !dbg !4529

; <label>:53:                                     ; preds = %81, %51
  %54 = load i32, i32* %7, align 4, !dbg !4530
  %55 = load i32, i32* %8, align 4, !dbg !4533
  %56 = icmp sle i32 %54, %55, !dbg !4534
  br i1 %56, label %57, label %84, !dbg !4535

; <label>:57:                                     ; preds = %53
  %58 = load i32, i32* %7, align 4, !dbg !4536
  %59 = sext i32 %58 to i64, !dbg !4539
  %60 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !4539
  %61 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %60, i32 0, i32 3, !dbg !4540
  %62 = load i8**, i8*** %61, align 8, !dbg !4540
  %63 = getelementptr inbounds i8*, i8** %62, i64 %59, !dbg !4539
  %64 = load i8*, i8** %63, align 8, !dbg !4539
  %65 = icmp ne i8* %64, null, !dbg !4541
  br i1 %65, label %66, label %80, !dbg !4542

; <label>:66:                                     ; preds = %57
  %67 = load i32, i32* %7, align 4, !dbg !4543
  %68 = sext i32 %67 to i64, !dbg !4545
  %69 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !4545
  %70 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %69, i32 0, i32 3, !dbg !4546
  %71 = load i8**, i8*** %70, align 8, !dbg !4546
  %72 = getelementptr inbounds i8*, i8** %71, i64 %68, !dbg !4545
  %73 = load i8*, i8** %72, align 8, !dbg !4545
  call void @g_free(i8* %73), !dbg !4547
  %74 = load i32, i32* %7, align 4, !dbg !4548
  %75 = sext i32 %74 to i64, !dbg !4549
  %76 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !4549
  %77 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %76, i32 0, i32 3, !dbg !4550
  %78 = load i8**, i8*** %77, align 8, !dbg !4550
  %79 = getelementptr inbounds i8*, i8** %78, i64 %75, !dbg !4549
  store i8* null, i8** %79, align 8, !dbg !4551
  store i32 1, i32* %9, align 4, !dbg !4552
  br label %80, !dbg !4553

; <label>:80:                                     ; preds = %66, %57
  br label %81, !dbg !4554

; <label>:81:                                     ; preds = %80
  %82 = load i32, i32* %7, align 4, !dbg !4555
  %83 = add nsw i32 %82, 1, !dbg !4555
  store i32 %83, i32* %7, align 4, !dbg !4555
  br label %53, !dbg !4557, !llvm.loop !4558

; <label>:84:                                     ; preds = %53
  %85 = load i32, i32* %9, align 4, !dbg !4560
  %86 = icmp ne i32 %85, 0, !dbg !4560
  br i1 %86, label %87, label %92, !dbg !4562

; <label>:87:                                     ; preds = %84
  %88 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !4563
  %89 = load i32, i32* %5, align 4, !dbg !4565
  call void @gui_entry_redraw_from(%struct.GUI_ENTRY_REC* %88, i32 %89), !dbg !4566
  %90 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !4567
  call void @gui_entry_fix_cursor(%struct.GUI_ENTRY_REC* %90), !dbg !4568
  %91 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !4569
  call void @gui_entry_draw(%struct.GUI_ENTRY_REC* %91), !dbg !4570
  br label %92, !dbg !4571

; <label>:92:                                     ; preds = %14, %28, %50, %87, %84
  ret void, !dbg !4572
}

; Function Attrs: nounwind uwtable
define i8* @gui_entry_get_extent(%struct.GUI_ENTRY_REC*, i32) #0 !dbg !4573 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.GUI_ENTRY_REC*, align 8
  %5 = alloca i32, align 4
  store %struct.GUI_ENTRY_REC* %0, %struct.GUI_ENTRY_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_REC** %4, metadata !4576, metadata !102), !dbg !4577
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4578, metadata !102), !dbg !4579
  br label %6, !dbg !4580, !llvm.loop !4581

; <label>:6:                                      ; preds = %2
  %7 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !4582
  %8 = icmp ne %struct.GUI_ENTRY_REC* %7, null, !dbg !4586
  br i1 %8, label %9, label %10, !dbg !4582

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !4587

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gui_entry_get_extent, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0)), !dbg !4590
  store i8* null, i8** %3, align 8, !dbg !4593
  br label %39, !dbg !4593

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !4594

; <label>:12:                                     ; preds = %11
  %13 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !4596
  %14 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %13, i32 0, i32 15, !dbg !4598
  %15 = load i8, i8* %14, align 4, !dbg !4598
  %16 = lshr i8 %15, 4, !dbg !4598
  %17 = and i8 %16, 1, !dbg !4598
  %18 = zext i8 %17 to i32, !dbg !4598
  %19 = icmp ne i32 %18, 0, !dbg !4596
  br i1 %19, label %21, label %20, !dbg !4599

; <label>:20:                                     ; preds = %12
  store i8* null, i8** %3, align 8, !dbg !4600
  br label %39, !dbg !4600

; <label>:21:                                     ; preds = %12
  %22 = load i32, i32* %5, align 4, !dbg !4601
  %23 = icmp slt i32 %22, 0, !dbg !4603
  br i1 %23, label %30, label %24, !dbg !4604

; <label>:24:                                     ; preds = %21
  %25 = load i32, i32* %5, align 4, !dbg !4605
  %26 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !4607
  %27 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %26, i32 0, i32 0, !dbg !4608
  %28 = load i32, i32* %27, align 8, !dbg !4608
  %29 = icmp sge i32 %25, %28, !dbg !4609
  br i1 %29, label %30, label %31, !dbg !4610

; <label>:30:                                     ; preds = %24, %21
  store i8* null, i8** %3, align 8, !dbg !4611
  br label %39, !dbg !4611

; <label>:31:                                     ; preds = %24
  %32 = load i32, i32* %5, align 4, !dbg !4612
  %33 = sext i32 %32 to i64, !dbg !4613
  %34 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %4, align 8, !dbg !4613
  %35 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %34, i32 0, i32 3, !dbg !4614
  %36 = load i8**, i8*** %35, align 8, !dbg !4614
  %37 = getelementptr inbounds i8*, i8** %36, i64 %33, !dbg !4613
  %38 = load i8*, i8** %37, align 8, !dbg !4613
  store i8* %38, i8** %3, align 8, !dbg !4615
  br label %39, !dbg !4615

; <label>:39:                                     ; preds = %31, %30, %20, %10
  %40 = load i8*, i8** %3, align 8, !dbg !4616
  ret i8* %40, !dbg !4616
}

; Function Attrs: nounwind uwtable
define %struct._GSList* @gui_entry_get_text_and_extents(%struct.GUI_ENTRY_REC*) #0 !dbg !4617 {
  %2 = alloca %struct._GSList*, align 8
  %3 = alloca %struct.GUI_ENTRY_REC*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct._GString*, align 8
  %6 = alloca i32, align 4
  store %struct.GUI_ENTRY_REC* %0, %struct.GUI_ENTRY_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_REC** %3, metadata !4620, metadata !102), !dbg !4621
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !4622, metadata !102), !dbg !4623
  store %struct._GSList* null, %struct._GSList** %4, align 8, !dbg !4623
  call void @llvm.dbg.declare(metadata %struct._GString** %5, metadata !4624, metadata !102), !dbg !4634
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4635, metadata !102), !dbg !4636
  br label %7, !dbg !4637, !llvm.loop !4638

; <label>:7:                                      ; preds = %1
  %8 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !4639
  %9 = icmp ne %struct.GUI_ENTRY_REC* %8, null, !dbg !4643
  br i1 %9, label %10, label %11, !dbg !4639

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !4644

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gui_entry_get_text_and_extents, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0)), !dbg !4647
  store %struct._GSList* null, %struct._GSList** %2, align 8, !dbg !4650
  br label %261, !dbg !4650

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !4651

; <label>:13:                                     ; preds = %12
  %14 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !4653
  %15 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %14, i32 0, i32 15, !dbg !4655
  %16 = load i8, i8* %15, align 4, !dbg !4655
  %17 = lshr i8 %16, 4, !dbg !4655
  %18 = and i8 %17, 1, !dbg !4655
  %19 = zext i8 %18 to i32, !dbg !4655
  %20 = icmp ne i32 %19, 0, !dbg !4653
  br i1 %20, label %21, label %52, !dbg !4656

; <label>:21:                                     ; preds = %13
  %22 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !4657
  %23 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %22, i32 0, i32 3, !dbg !4659
  %24 = load i8**, i8*** %23, align 8, !dbg !4659
  %25 = getelementptr inbounds i8*, i8** %24, i64 0, !dbg !4657
  %26 = load i8*, i8** %25, align 8, !dbg !4657
  %27 = icmp ne i8* %26, null, !dbg !4660
  br i1 %27, label %28, label %52, !dbg !4661

; <label>:28:                                     ; preds = %21
  %29 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !4662
  %30 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %29, i32 0, i32 8, !dbg !4665
  %31 = load i32, i32* %30, align 4, !dbg !4665
  %32 = icmp eq i32 %31, 0, !dbg !4666
  br i1 %32, label %33, label %42, !dbg !4667

; <label>:33:                                     ; preds = %28
  %34 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !4668
  %35 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !4670
  %36 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %35, i32 0, i32 3, !dbg !4671
  %37 = load i8**, i8*** %36, align 8, !dbg !4671
  %38 = getelementptr inbounds i8*, i8** %37, i64 0, !dbg !4670
  %39 = load i8*, i8** %38, align 8, !dbg !4670
  %40 = call noalias i8* (i8*, ...) @g_strconcat(i8* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* null), !dbg !4672
  %41 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %34, i8* %40), !dbg !4673
  store %struct._GSList* %41, %struct._GSList** %4, align 8, !dbg !4675
  br label %51, !dbg !4676

; <label>:42:                                     ; preds = %28
  %43 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !4677
  %44 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !4679
  %45 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %44, i32 0, i32 3, !dbg !4680
  %46 = load i8**, i8*** %45, align 8, !dbg !4680
  %47 = getelementptr inbounds i8*, i8** %46, i64 0, !dbg !4679
  %48 = load i8*, i8** %47, align 8, !dbg !4679
  %49 = call noalias i8* @g_strdup(i8* %48), !dbg !4681
  %50 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %43, i8* %49), !dbg !4682
  store %struct._GSList* %50, %struct._GSList** %4, align 8, !dbg !4684
  br label %51

; <label>:51:                                     ; preds = %42, %33
  br label %65, !dbg !4685

; <label>:52:                                     ; preds = %21, %13
  %53 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !4686
  %54 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %53, i32 0, i32 8, !dbg !4689
  %55 = load i32, i32* %54, align 4, !dbg !4689
  %56 = icmp eq i32 %55, 0, !dbg !4690
  br i1 %56, label %57, label %61, !dbg !4691

; <label>:57:                                     ; preds = %52
  %58 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !4692
  %59 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0)), !dbg !4694
  %60 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %58, i8* %59), !dbg !4695
  store %struct._GSList* %60, %struct._GSList** %4, align 8, !dbg !4697
  br label %64, !dbg !4698

; <label>:61:                                     ; preds = %52
  %62 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !4699
  %63 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %62, i8* null), !dbg !4701
  store %struct._GSList* %63, %struct._GSList** %4, align 8, !dbg !4702
  br label %64

; <label>:64:                                     ; preds = %61, %57
  br label %65

; <label>:65:                                     ; preds = %64, %51
  %66 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !4703
  %67 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %66, i32 0, i32 1, !dbg !4704
  %68 = load i32, i32* %67, align 4, !dbg !4704
  %69 = sext i32 %68 to i64, !dbg !4703
  %70 = call %struct._GString* @g_string_sized_new(i64 %69), !dbg !4705
  store %struct._GString* %70, %struct._GString** %5, align 8, !dbg !4706
  store i32 0, i32* %6, align 4, !dbg !4707
  br label %71, !dbg !4709

; <label>:71:                                     ; preds = %240, %65
  %72 = load i32, i32* %6, align 4, !dbg !4710
  %73 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !4713
  %74 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %73, i32 0, i32 0, !dbg !4714
  %75 = load i32, i32* %74, align 8, !dbg !4714
  %76 = icmp slt i32 %72, %75, !dbg !4715
  br i1 %76, label %77, label %243, !dbg !4716

; <label>:77:                                     ; preds = %71
  %78 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !4717
  %79 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %78, i32 0, i32 15, !dbg !4720
  %80 = load i8, i8* %79, align 4, !dbg !4720
  %81 = and i8 %80, 1, !dbg !4720
  %82 = zext i8 %81 to i32, !dbg !4720
  %83 = icmp ne i32 %82, 0, !dbg !4717
  br i1 %83, label %84, label %94, !dbg !4721

; <label>:84:                                     ; preds = %77
  %85 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !4722
  %86 = load i32, i32* %6, align 4, !dbg !4724
  %87 = sext i32 %86 to i64, !dbg !4725
  %88 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !4725
  %89 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %88, i32 0, i32 2, !dbg !4726
  %90 = load i32*, i32** %89, align 8, !dbg !4726
  %91 = getelementptr inbounds i32, i32* %90, i64 %87, !dbg !4725
  %92 = load i32, i32* %91, align 4, !dbg !4725
  %93 = call %struct._GString* @g_string_append_unichar(%struct._GString* %85, i32 %92), !dbg !4727
  br label %143, !dbg !4728

; <label>:94:                                     ; preds = %77
  %95 = load i32, i32* @term_type, align 4, !dbg !4729
  %96 = icmp eq i32 %95, 2, !dbg !4732
  br i1 %96, label %97, label %131, !dbg !4729

; <label>:97:                                     ; preds = %94
  %98 = load i32, i32* %6, align 4, !dbg !4733
  %99 = sext i32 %98 to i64, !dbg !4736
  %100 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !4736
  %101 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %100, i32 0, i32 2, !dbg !4737
  %102 = load i32*, i32** %101, align 8, !dbg !4737
  %103 = getelementptr inbounds i32, i32* %102, i64 %99, !dbg !4736
  %104 = load i32, i32* %103, align 4, !dbg !4736
  %105 = icmp ugt i32 %104, 255, !dbg !4738
  br i1 %105, label %106, label %119, !dbg !4739

; <label>:106:                                    ; preds = %97
  %107 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !4740
  %108 = load i32, i32* %6, align 4, !dbg !4741
  %109 = sext i32 %108 to i64, !dbg !4742
  %110 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !4742
  %111 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %110, i32 0, i32 2, !dbg !4743
  %112 = load i32*, i32** %111, align 8, !dbg !4743
  %113 = getelementptr inbounds i32, i32* %112, i64 %109, !dbg !4742
  %114 = load i32, i32* %113, align 4, !dbg !4742
  %115 = lshr i32 %114, 8, !dbg !4744
  %116 = and i32 %115, 255, !dbg !4745
  %117 = trunc i32 %116 to i8, !dbg !4746
  %118 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %107, i8 signext %117), !dbg !4747
  br label %119, !dbg !4747

; <label>:119:                                    ; preds = %106, %97
  %120 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !4748
  %121 = load i32, i32* %6, align 4, !dbg !4749
  %122 = sext i32 %121 to i64, !dbg !4750
  %123 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !4750
  %124 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %123, i32 0, i32 2, !dbg !4751
  %125 = load i32*, i32** %124, align 8, !dbg !4751
  %126 = getelementptr inbounds i32, i32* %125, i64 %122, !dbg !4750
  %127 = load i32, i32* %126, align 4, !dbg !4750
  %128 = and i32 %127, 255, !dbg !4752
  %129 = trunc i32 %128 to i8, !dbg !4750
  %130 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %120, i8 signext %129), !dbg !4753
  br label %142, !dbg !4754

; <label>:131:                                    ; preds = %94
  %132 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !4755
  %133 = load i32, i32* %6, align 4, !dbg !4757
  %134 = sext i32 %133 to i64, !dbg !4758
  %135 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !4758
  %136 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %135, i32 0, i32 2, !dbg !4759
  %137 = load i32*, i32** %136, align 8, !dbg !4759
  %138 = getelementptr inbounds i32, i32* %137, i64 %134, !dbg !4758
  %139 = load i32, i32* %138, align 4, !dbg !4758
  %140 = trunc i32 %139 to i8, !dbg !4758
  %141 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %132, i8 signext %140), !dbg !4760
  br label %142

; <label>:142:                                    ; preds = %131, %119
  br label %143

; <label>:143:                                    ; preds = %142, %84
  %144 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !4761
  %145 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %144, i32 0, i32 8, !dbg !4763
  %146 = load i32, i32* %145, align 4, !dbg !4763
  %147 = load i32, i32* %6, align 4, !dbg !4764
  %148 = add nsw i32 %147, 1, !dbg !4765
  %149 = icmp eq i32 %146, %148, !dbg !4766
  br i1 %149, label %168, label %150, !dbg !4767

; <label>:150:                                    ; preds = %143
  %151 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !4768
  %152 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %151, i32 0, i32 15, !dbg !4770
  %153 = load i8, i8* %152, align 4, !dbg !4770
  %154 = lshr i8 %153, 4, !dbg !4770
  %155 = and i8 %154, 1, !dbg !4770
  %156 = zext i8 %155 to i32, !dbg !4770
  %157 = icmp ne i32 %156, 0, !dbg !4768
  br i1 %157, label %158, label %239, !dbg !4771

; <label>:158:                                    ; preds = %150
  %159 = load i32, i32* %6, align 4, !dbg !4772
  %160 = add nsw i32 %159, 1, !dbg !4774
  %161 = sext i32 %160 to i64, !dbg !4775
  %162 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !4775
  %163 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %162, i32 0, i32 3, !dbg !4776
  %164 = load i8**, i8*** %163, align 8, !dbg !4776
  %165 = getelementptr inbounds i8*, i8** %164, i64 %161, !dbg !4775
  %166 = load i8*, i8** %165, align 8, !dbg !4775
  %167 = icmp ne i8* %166, null, !dbg !4777
  br i1 %167, label %168, label %239, !dbg !4778

; <label>:168:                                    ; preds = %158, %143
  %169 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !4779
  %170 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !4781
  %171 = getelementptr inbounds %struct._GString, %struct._GString* %170, i32 0, i32 0, !dbg !4782
  %172 = load i8*, i8** %171, align 8, !dbg !4782
  %173 = call noalias i8* @g_strdup(i8* %172), !dbg !4783
  %174 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %169, i8* %173), !dbg !4784
  store %struct._GSList* %174, %struct._GSList** %4, align 8, !dbg !4786
  %175 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !4787
  %176 = call %struct._GString* @g_string_truncate(%struct._GString* %175, i64 0), !dbg !4788
  %177 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !4789
  %178 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %177, i32 0, i32 15, !dbg !4791
  %179 = load i8, i8* %178, align 4, !dbg !4791
  %180 = lshr i8 %179, 4, !dbg !4791
  %181 = and i8 %180, 1, !dbg !4791
  %182 = zext i8 %181 to i32, !dbg !4791
  %183 = icmp ne i32 %182, 0, !dbg !4789
  br i1 %183, label %184, label %226, !dbg !4792

; <label>:184:                                    ; preds = %168
  %185 = load i32, i32* %6, align 4, !dbg !4793
  %186 = add nsw i32 %185, 1, !dbg !4795
  %187 = sext i32 %186 to i64, !dbg !4796
  %188 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !4796
  %189 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %188, i32 0, i32 3, !dbg !4797
  %190 = load i8**, i8*** %189, align 8, !dbg !4797
  %191 = getelementptr inbounds i8*, i8** %190, i64 %187, !dbg !4796
  %192 = load i8*, i8** %191, align 8, !dbg !4796
  %193 = icmp ne i8* %192, null, !dbg !4798
  br i1 %193, label %194, label %226, !dbg !4799

; <label>:194:                                    ; preds = %184
  %195 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !4800
  %196 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %195, i32 0, i32 8, !dbg !4803
  %197 = load i32, i32* %196, align 4, !dbg !4803
  %198 = load i32, i32* %6, align 4, !dbg !4804
  %199 = add nsw i32 %198, 1, !dbg !4805
  %200 = icmp eq i32 %197, %199, !dbg !4806
  br i1 %200, label %201, label %213, !dbg !4807

; <label>:201:                                    ; preds = %194
  %202 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !4808
  %203 = load i32, i32* %6, align 4, !dbg !4810
  %204 = add nsw i32 %203, 1, !dbg !4811
  %205 = sext i32 %204 to i64, !dbg !4812
  %206 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !4812
  %207 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %206, i32 0, i32 3, !dbg !4813
  %208 = load i8**, i8*** %207, align 8, !dbg !4813
  %209 = getelementptr inbounds i8*, i8** %208, i64 %205, !dbg !4812
  %210 = load i8*, i8** %209, align 8, !dbg !4812
  %211 = call noalias i8* (i8*, ...) @g_strconcat(i8* %210, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* null), !dbg !4814
  %212 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %202, i8* %211), !dbg !4815
  store %struct._GSList* %212, %struct._GSList** %4, align 8, !dbg !4817
  br label %225, !dbg !4818

; <label>:213:                                    ; preds = %194
  %214 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !4819
  %215 = load i32, i32* %6, align 4, !dbg !4821
  %216 = add nsw i32 %215, 1, !dbg !4822
  %217 = sext i32 %216 to i64, !dbg !4823
  %218 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !4823
  %219 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %218, i32 0, i32 3, !dbg !4824
  %220 = load i8**, i8*** %219, align 8, !dbg !4824
  %221 = getelementptr inbounds i8*, i8** %220, i64 %217, !dbg !4823
  %222 = load i8*, i8** %221, align 8, !dbg !4823
  %223 = call noalias i8* @g_strdup(i8* %222), !dbg !4825
  %224 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %214, i8* %223), !dbg !4826
  store %struct._GSList* %224, %struct._GSList** %4, align 8, !dbg !4828
  br label %225

; <label>:225:                                    ; preds = %213, %201
  br label %238, !dbg !4829

; <label>:226:                                    ; preds = %184, %168
  %227 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !4830
  %228 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %227, i32 0, i32 8, !dbg !4833
  %229 = load i32, i32* %228, align 4, !dbg !4833
  %230 = load i32, i32* %6, align 4, !dbg !4834
  %231 = add nsw i32 %230, 1, !dbg !4835
  %232 = icmp eq i32 %229, %231, !dbg !4836
  br i1 %232, label %233, label %237, !dbg !4830

; <label>:233:                                    ; preds = %226
  %234 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !4837
  %235 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0)), !dbg !4839
  %236 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %234, i8* %235), !dbg !4840
  store %struct._GSList* %236, %struct._GSList** %4, align 8, !dbg !4842
  br label %237, !dbg !4843

; <label>:237:                                    ; preds = %233, %226
  br label %238

; <label>:238:                                    ; preds = %237, %225
  br label %239, !dbg !4844

; <label>:239:                                    ; preds = %238, %158, %150
  br label %240, !dbg !4845

; <label>:240:                                    ; preds = %239
  %241 = load i32, i32* %6, align 4, !dbg !4846
  %242 = add nsw i32 %241, 1, !dbg !4846
  store i32 %242, i32* %6, align 4, !dbg !4846
  br label %71, !dbg !4848, !llvm.loop !4849

; <label>:243:                                    ; preds = %71
  %244 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !4851
  %245 = getelementptr inbounds %struct._GString, %struct._GString* %244, i32 0, i32 1, !dbg !4853
  %246 = load i64, i64* %245, align 8, !dbg !4853
  %247 = icmp ugt i64 %246, 0, !dbg !4854
  br i1 %247, label %248, label %255, !dbg !4855

; <label>:248:                                    ; preds = %243
  %249 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !4856
  %250 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !4858
  %251 = getelementptr inbounds %struct._GString, %struct._GString* %250, i32 0, i32 0, !dbg !4859
  %252 = load i8*, i8** %251, align 8, !dbg !4859
  %253 = call noalias i8* @g_strdup(i8* %252), !dbg !4860
  %254 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %249, i8* %253), !dbg !4861
  store %struct._GSList* %254, %struct._GSList** %4, align 8, !dbg !4863
  br label %255, !dbg !4864

; <label>:255:                                    ; preds = %248, %243
  %256 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !4865
  %257 = call %struct._GSList* @g_slist_reverse(%struct._GSList* %256), !dbg !4866
  store %struct._GSList* %257, %struct._GSList** %4, align 8, !dbg !4867
  %258 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !4868
  %259 = call i8* @g_string_free(%struct._GString* %258, i32 1), !dbg !4869
  %260 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !4870
  store %struct._GSList* %260, %struct._GSList** %2, align 8, !dbg !4871
  br label %261, !dbg !4871

; <label>:261:                                    ; preds = %255, %11
  %262 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !4872
  ret %struct._GSList* %262, !dbg !4872
}

declare %struct._GSList* @g_slist_prepend(%struct._GSList*, i8*) #2

declare noalias i8* @g_strconcat(i8*, ...) #2

declare %struct._GString* @g_string_sized_new(i64) #2

declare %struct._GString* @g_string_append_unichar(%struct._GString*, i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._GString* @g_string_append_c_inline(%struct._GString*, i8 signext) #5 !dbg !4873 {
  %3 = alloca %struct._GString*, align 8
  %4 = alloca i8, align 1
  store %struct._GString* %0, %struct._GString** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._GString** %3, metadata !4876, metadata !102), !dbg !4877
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !4878, metadata !102), !dbg !4879
  %5 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !4880
  %6 = getelementptr inbounds %struct._GString, %struct._GString* %5, i32 0, i32 1, !dbg !4882
  %7 = load i64, i64* %6, align 8, !dbg !4882
  %8 = add i64 %7, 1, !dbg !4883
  %9 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !4884
  %10 = getelementptr inbounds %struct._GString, %struct._GString* %9, i32 0, i32 2, !dbg !4885
  %11 = load i64, i64* %10, align 8, !dbg !4885
  %12 = icmp ult i64 %8, %11, !dbg !4886
  br i1 %12, label %13, label %30, !dbg !4887

; <label>:13:                                     ; preds = %2
  %14 = load i8, i8* %4, align 1, !dbg !4888
  %15 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !4890
  %16 = getelementptr inbounds %struct._GString, %struct._GString* %15, i32 0, i32 1, !dbg !4891
  %17 = load i64, i64* %16, align 8, !dbg !4892
  %18 = add i64 %17, 1, !dbg !4892
  store i64 %18, i64* %16, align 8, !dbg !4892
  %19 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !4893
  %20 = getelementptr inbounds %struct._GString, %struct._GString* %19, i32 0, i32 0, !dbg !4894
  %21 = load i8*, i8** %20, align 8, !dbg !4894
  %22 = getelementptr inbounds i8, i8* %21, i64 %17, !dbg !4893
  store i8 %14, i8* %22, align 1, !dbg !4895
  %23 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !4896
  %24 = getelementptr inbounds %struct._GString, %struct._GString* %23, i32 0, i32 1, !dbg !4897
  %25 = load i64, i64* %24, align 8, !dbg !4897
  %26 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !4898
  %27 = getelementptr inbounds %struct._GString, %struct._GString* %26, i32 0, i32 0, !dbg !4899
  %28 = load i8*, i8** %27, align 8, !dbg !4899
  %29 = getelementptr inbounds i8, i8* %28, i64 %25, !dbg !4898
  store i8 0, i8* %29, align 1, !dbg !4900
  br label %34, !dbg !4901

; <label>:30:                                     ; preds = %2
  %31 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !4902
  %32 = load i8, i8* %4, align 1, !dbg !4903
  %33 = call %struct._GString* @g_string_insert_c(%struct._GString* %31, i64 -1, i8 signext %32), !dbg !4904
  br label %34

; <label>:34:                                     ; preds = %30, %13
  %35 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !4905
  ret %struct._GString* %35, !dbg !4906
}

declare %struct._GString* @g_string_truncate(%struct._GString*, i64) #2

declare %struct._GSList* @g_slist_reverse(%struct._GSList*) #2

declare i8* @g_string_free(%struct._GString*, i32) #2

; Function Attrs: nounwind uwtable
define void @gui_entry_set_text_and_extents(%struct.GUI_ENTRY_REC*, %struct._GSList*) #0 !dbg !4907 {
  %3 = alloca %struct.GUI_ENTRY_REC*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.GUI_ENTRY_REC* %0, %struct.GUI_ENTRY_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_REC** %3, metadata !4910, metadata !102), !dbg !4911
  store %struct._GSList* %1, %struct._GSList** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !4912, metadata !102), !dbg !4913
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !4914, metadata !102), !dbg !4915
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4916, metadata !102), !dbg !4917
  store i32 -1, i32* %6, align 4, !dbg !4917
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4918, metadata !102), !dbg !4919
  store i32 1, i32* %7, align 4, !dbg !4919
  %11 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !4920
  call void @gui_entry_set_text(%struct.GUI_ENTRY_REC* %11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0)), !dbg !4921
  %12 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !4922
  store %struct._GSList* %12, %struct._GSList** %5, align 8, !dbg !4924
  store i32 1, i32* %7, align 4, !dbg !4925
  br label %13, !dbg !4926

; <label>:13:                                     ; preds = %73, %2
  %14 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !4927
  %15 = icmp ne %struct._GSList* %14, null, !dbg !4930
  br i1 %15, label %16, label %79, !dbg !4931

; <label>:16:                                     ; preds = %13
  %17 = load i32, i32* %7, align 4, !dbg !4932
  %18 = icmp ne i32 %17, 0, !dbg !4932
  br i1 %18, label %19, label %67, !dbg !4935

; <label>:19:                                     ; preds = %16
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4936, metadata !102), !dbg !4938
  call void @llvm.dbg.declare(metadata i32* %9, metadata !4939, metadata !102), !dbg !4940
  %20 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !4941
  %21 = getelementptr inbounds %struct._GSList, %struct._GSList* %20, i32 0, i32 0, !dbg !4943
  %22 = load i8*, i8** %21, align 8, !dbg !4943
  %23 = icmp eq i8* %22, null, !dbg !4944
  br i1 %23, label %24, label %25, !dbg !4945

; <label>:24:                                     ; preds = %19
  br label %73, !dbg !4946

; <label>:25:                                     ; preds = %19
  %26 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !4947
  %27 = getelementptr inbounds %struct._GSList, %struct._GSList* %26, i32 0, i32 0, !dbg !4948
  %28 = load i8*, i8** %27, align 8, !dbg !4948
  %29 = call noalias i8* @g_strdup(i8* %28), !dbg !4949
  store i8* %29, i8** %8, align 8, !dbg !4950
  %30 = load i8*, i8** %8, align 8, !dbg !4951
  %31 = call i64 @strlen(i8* %30) #7, !dbg !4952
  %32 = trunc i64 %31 to i32, !dbg !4952
  store i32 %32, i32* %9, align 4, !dbg !4953
  %33 = load i32, i32* %9, align 4, !dbg !4954
  %34 = sext i32 %33 to i64, !dbg !4954
  %35 = icmp uge i64 %34, 2, !dbg !4956
  br i1 %35, label %36, label %55, !dbg !4957

; <label>:36:                                     ; preds = %25
  %37 = load i32, i32* %9, align 4, !dbg !4958
  %38 = sext i32 %37 to i64, !dbg !4958
  %39 = sub i64 %38, 2, !dbg !4960
  %40 = load i8*, i8** %8, align 8, !dbg !4961
  %41 = getelementptr inbounds i8, i8* %40, i64 %39, !dbg !4961
  %42 = call i32 @g_strcmp0(i8* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0)), !dbg !4962
  %43 = icmp eq i32 %42, 0, !dbg !4963
  br i1 %43, label %44, label %55, !dbg !4964

; <label>:44:                                     ; preds = %36
  call void @llvm.dbg.declare(metadata i8** %10, metadata !4965, metadata !102), !dbg !4967
  %45 = load i8*, i8** %8, align 8, !dbg !4968
  store i8* %45, i8** %10, align 8, !dbg !4969
  %46 = load i8*, i8** %10, align 8, !dbg !4970
  %47 = load i32, i32* %9, align 4, !dbg !4971
  %48 = sext i32 %47 to i64, !dbg !4971
  %49 = sub i64 %48, 2, !dbg !4972
  %50 = call noalias i8* @g_strndup(i8* %46, i64 %49), !dbg !4973
  store i8* %50, i8** %8, align 8, !dbg !4974
  %51 = load i8*, i8** %10, align 8, !dbg !4975
  call void @g_free(i8* %51), !dbg !4976
  %52 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !4977
  %53 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %52, i32 0, i32 8, !dbg !4978
  %54 = load i32, i32* %53, align 4, !dbg !4978
  store i32 %54, i32* %6, align 4, !dbg !4979
  br label %55, !dbg !4980

; <label>:55:                                     ; preds = %44, %36, %25
  %56 = load i8*, i8** %8, align 8, !dbg !4981
  %57 = call i64 @strlen(i8* %56) #7, !dbg !4983
  %58 = icmp ugt i64 %57, 0, !dbg !4984
  br i1 %58, label %59, label %65, !dbg !4985

; <label>:59:                                     ; preds = %55
  %60 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !4986
  %61 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !4988
  %62 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %61, i32 0, i32 8, !dbg !4989
  %63 = load i32, i32* %62, align 4, !dbg !4989
  %64 = load i8*, i8** %8, align 8, !dbg !4990
  call void @gui_entry_set_extent(%struct.GUI_ENTRY_REC* %60, i32 %63, i8* %64), !dbg !4991
  br label %65, !dbg !4992

; <label>:65:                                     ; preds = %59, %55
  %66 = load i8*, i8** %8, align 8, !dbg !4993
  call void @g_free(i8* %66), !dbg !4994
  br label %72, !dbg !4995

; <label>:67:                                     ; preds = %16
  %68 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !4996
  %69 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !4998
  %70 = getelementptr inbounds %struct._GSList, %struct._GSList* %69, i32 0, i32 0, !dbg !4999
  %71 = load i8*, i8** %70, align 8, !dbg !4999
  call void @gui_entry_insert_text(%struct.GUI_ENTRY_REC* %68, i8* %71), !dbg !5000
  br label %72

; <label>:72:                                     ; preds = %67, %65
  br label %73, !dbg !5001

; <label>:73:                                     ; preds = %72, %24
  %74 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !5002
  %75 = getelementptr inbounds %struct._GSList, %struct._GSList* %74, i32 0, i32 1, !dbg !5004
  %76 = load %struct._GSList*, %struct._GSList** %75, align 8, !dbg !5004
  store %struct._GSList* %76, %struct._GSList** %5, align 8, !dbg !5005
  %77 = load i32, i32* %7, align 4, !dbg !5006
  %78 = xor i32 %77, 1, !dbg !5006
  store i32 %78, i32* %7, align 4, !dbg !5006
  br label %13, !dbg !5007, !llvm.loop !5008

; <label>:79:                                     ; preds = %13
  %80 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !5010
  %81 = load i32, i32* %6, align 4, !dbg !5011
  call void @gui_entry_set_pos(%struct.GUI_ENTRY_REC* %80, i32 %81), !dbg !5012
  ret void, !dbg !5013
}

declare noalias i8* @g_strndup(i8*, i64) #2

; Function Attrs: nounwind uwtable
define void @gui_entry_init() #0 !dbg !5014 {
  ret void, !dbg !5017
}

; Function Attrs: nounwind uwtable
define void @gui_entry_deinit() #0 !dbg !5018 {
  ret void, !dbg !5019
}

; Function Attrs: nounwind uwtable
define internal i32 @pos2scrpos(%struct.GUI_ENTRY_REC*, i32, i32) #0 !dbg !5020 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.GUI_ENTRY_REC*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.GUI_ENTRY_REC* %0, %struct.GUI_ENTRY_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_REC** %5, metadata !5023, metadata !102), !dbg !5024
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !5025, metadata !102), !dbg !5026
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !5027, metadata !102), !dbg !5028
  call void @llvm.dbg.declare(metadata i32* %8, metadata !5029, metadata !102), !dbg !5030
  call void @llvm.dbg.declare(metadata i32* %9, metadata !5031, metadata !102), !dbg !5032
  store i32 0, i32* %9, align 4, !dbg !5032
  %12 = load i32, i32* %7, align 4, !dbg !5033
  %13 = icmp ne i32 %12, 0, !dbg !5033
  br i1 %13, label %18, label %14, !dbg !5035

; <label>:14:                                     ; preds = %3
  %15 = load i32, i32* %6, align 4, !dbg !5036
  %16 = icmp sle i32 %15, 0, !dbg !5038
  br i1 %16, label %17, label %18, !dbg !5039

; <label>:17:                                     ; preds = %14
  store i32 0, i32* %4, align 4, !dbg !5040
  br label %129, !dbg !5040

; <label>:18:                                     ; preds = %14, %3
  %19 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %5, align 8, !dbg !5041
  %20 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %19, i32 0, i32 15, !dbg !5043
  %21 = load i8, i8* %20, align 4, !dbg !5043
  %22 = lshr i8 %21, 4, !dbg !5043
  %23 = and i8 %22, 1, !dbg !5043
  %24 = zext i8 %23 to i32, !dbg !5043
  %25 = icmp ne i32 %24, 0, !dbg !5041
  br i1 %25, label %26, label %47, !dbg !5044

; <label>:26:                                     ; preds = %18
  %27 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %5, align 8, !dbg !5045
  %28 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %27, i32 0, i32 3, !dbg !5047
  %29 = load i8**, i8*** %28, align 8, !dbg !5047
  %30 = getelementptr inbounds i8*, i8** %29, i64 0, !dbg !5045
  %31 = load i8*, i8** %30, align 8, !dbg !5045
  %32 = icmp ne i8* %31, null, !dbg !5048
  br i1 %32, label %33, label %47, !dbg !5049

; <label>:33:                                     ; preds = %26
  %34 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %5, align 8, !dbg !5050
  %35 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %34, i32 0, i32 3, !dbg !5052
  %36 = load i8**, i8*** %35, align 8, !dbg !5052
  %37 = getelementptr inbounds i8*, i8** %36, i64 0, !dbg !5050
  %38 = load i8*, i8** %37, align 8, !dbg !5050
  %39 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %5, align 8, !dbg !5053
  %40 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %39, i32 0, i32 15, !dbg !5054
  %41 = load i8, i8* %40, align 4, !dbg !5054
  %42 = and i8 %41, 1, !dbg !5054
  %43 = zext i8 %42 to i32, !dbg !5054
  %44 = call i32 @scrlen_str(i8* %38, i32 %43), !dbg !5055
  %45 = load i32, i32* %9, align 4, !dbg !5056
  %46 = add nsw i32 %45, %44, !dbg !5056
  store i32 %46, i32* %9, align 4, !dbg !5056
  br label %47, !dbg !5057

; <label>:47:                                     ; preds = %33, %26, %18
  store i32 0, i32* %8, align 4, !dbg !5058
  br label %48, !dbg !5060

; <label>:48:                                     ; preds = %124, %47
  %49 = load i32, i32* %8, align 4, !dbg !5061
  %50 = load i32, i32* %6, align 4, !dbg !5064
  %51 = icmp slt i32 %49, %50, !dbg !5065
  br i1 %51, label %52, label %127, !dbg !5066

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.declare(metadata i32* %10, metadata !5067, metadata !102), !dbg !5069
  %53 = load i32, i32* %8, align 4, !dbg !5070
  %54 = sext i32 %53 to i64, !dbg !5071
  %55 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %5, align 8, !dbg !5071
  %56 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %55, i32 0, i32 2, !dbg !5072
  %57 = load i32*, i32** %56, align 8, !dbg !5072
  %58 = getelementptr inbounds i32, i32* %57, i64 %54, !dbg !5071
  %59 = load i32, i32* %58, align 4, !dbg !5071
  store i32 %59, i32* %10, align 4, !dbg !5069
  call void @llvm.dbg.declare(metadata i8** %11, metadata !5073, metadata !102), !dbg !5074
  %60 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %5, align 8, !dbg !5075
  %61 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %60, i32 0, i32 15, !dbg !5076
  %62 = load i8, i8* %61, align 4, !dbg !5076
  %63 = lshr i8 %62, 4, !dbg !5076
  %64 = and i8 %63, 1, !dbg !5076
  %65 = zext i8 %64 to i32, !dbg !5076
  %66 = icmp ne i32 %65, 0, !dbg !5075
  br i1 %66, label %67, label %76, !dbg !5075

; <label>:67:                                     ; preds = %52
  %68 = load i32, i32* %8, align 4, !dbg !5077
  %69 = add nsw i32 %68, 1, !dbg !5079
  %70 = sext i32 %69 to i64, !dbg !5080
  %71 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %5, align 8, !dbg !5080
  %72 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %71, i32 0, i32 3, !dbg !5081
  %73 = load i8**, i8*** %72, align 8, !dbg !5081
  %74 = getelementptr inbounds i8*, i8** %73, i64 %70, !dbg !5080
  %75 = load i8*, i8** %74, align 8, !dbg !5080
  br label %77, !dbg !5082

; <label>:76:                                     ; preds = %52
  br label %77, !dbg !5083

; <label>:77:                                     ; preds = %76, %67
  %78 = phi i8* [ %75, %67 ], [ null, %76 ], !dbg !5085
  store i8* %78, i8** %11, align 8, !dbg !5087
  %79 = load i32, i32* @term_type, align 4, !dbg !5088
  %80 = icmp eq i32 %79, 2, !dbg !5090
  br i1 %80, label %81, label %87, !dbg !5091

; <label>:81:                                     ; preds = %77
  %82 = load i32, i32* %10, align 4, !dbg !5092
  %83 = icmp ugt i32 %82, 255, !dbg !5093
  %84 = select i1 %83, i32 2, i32 1, !dbg !5094
  %85 = load i32, i32* %9, align 4, !dbg !5095
  %86 = add nsw i32 %85, %84, !dbg !5095
  store i32 %86, i32* %9, align 4, !dbg !5095
  br label %110, !dbg !5096

; <label>:87:                                     ; preds = %77
  %88 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %5, align 8, !dbg !5097
  %89 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %88, i32 0, i32 15, !dbg !5099
  %90 = load i8, i8* %89, align 4, !dbg !5099
  %91 = and i8 %90, 1, !dbg !5099
  %92 = zext i8 %91 to i32, !dbg !5099
  %93 = icmp ne i32 %92, 0, !dbg !5097
  br i1 %93, label %94, label %106, !dbg !5100

; <label>:94:                                     ; preds = %87
  %95 = load i32, i32* %10, align 4, !dbg !5101
  %96 = and i32 %95, -129, !dbg !5102
  %97 = icmp uge i32 %96, 32, !dbg !5103
  br i1 %97, label %98, label %101, !dbg !5104

; <label>:98:                                     ; preds = %94
  %99 = load i32, i32* %10, align 4, !dbg !5105
  %100 = call i32 @i_wcwidth(i32 %99), !dbg !5107
  br label %102, !dbg !5108

; <label>:101:                                    ; preds = %94
  br label %102, !dbg !5109

; <label>:102:                                    ; preds = %101, %98
  %103 = phi i32 [ %100, %98 ], [ 1, %101 ], !dbg !5111
  %104 = load i32, i32* %9, align 4, !dbg !5113
  %105 = add nsw i32 %104, %103, !dbg !5113
  store i32 %105, i32* %9, align 4, !dbg !5113
  br label %109, !dbg !5114

; <label>:106:                                    ; preds = %87
  %107 = load i32, i32* %9, align 4, !dbg !5115
  %108 = add nsw i32 %107, 1, !dbg !5115
  store i32 %108, i32* %9, align 4, !dbg !5115
  br label %109

; <label>:109:                                    ; preds = %106, %102
  br label %110

; <label>:110:                                    ; preds = %109, %81
  %111 = load i8*, i8** %11, align 8, !dbg !5116
  %112 = icmp ne i8* %111, null, !dbg !5118
  br i1 %112, label %113, label %123, !dbg !5119

; <label>:113:                                    ; preds = %110
  %114 = load i8*, i8** %11, align 8, !dbg !5120
  %115 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %5, align 8, !dbg !5122
  %116 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %115, i32 0, i32 15, !dbg !5123
  %117 = load i8, i8* %116, align 4, !dbg !5123
  %118 = and i8 %117, 1, !dbg !5123
  %119 = zext i8 %118 to i32, !dbg !5123
  %120 = call i32 @scrlen_str(i8* %114, i32 %119), !dbg !5124
  %121 = load i32, i32* %9, align 4, !dbg !5125
  %122 = add nsw i32 %121, %120, !dbg !5125
  store i32 %122, i32* %9, align 4, !dbg !5125
  br label %123, !dbg !5126

; <label>:123:                                    ; preds = %113, %110
  br label %124, !dbg !5127

; <label>:124:                                    ; preds = %123
  %125 = load i32, i32* %8, align 4, !dbg !5128
  %126 = add nsw i32 %125, 1, !dbg !5128
  store i32 %126, i32* %8, align 4, !dbg !5128
  br label %48, !dbg !5130, !llvm.loop !5131

; <label>:127:                                    ; preds = %48
  %128 = load i32, i32* %9, align 4, !dbg !5133
  store i32 %128, i32* %4, align 4, !dbg !5134
  br label %129, !dbg !5134

; <label>:129:                                    ; preds = %127, %17
  %130 = load i32, i32* %4, align 4, !dbg !5135
  ret i32 %130, !dbg !5135
}

; Function Attrs: nounwind uwtable
define internal i32 @scrpos2pos(%struct.GUI_ENTRY_REC*, i32) #0 !dbg !5136 {
  %3 = alloca %struct.GUI_ENTRY_REC*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.GUI_ENTRY_REC* %0, %struct.GUI_ENTRY_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_REC** %3, metadata !5139, metadata !102), !dbg !5140
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !5141, metadata !102), !dbg !5142
  call void @llvm.dbg.declare(metadata i32* %5, metadata !5143, metadata !102), !dbg !5144
  call void @llvm.dbg.declare(metadata i32* %6, metadata !5145, metadata !102), !dbg !5146
  call void @llvm.dbg.declare(metadata i32* %7, metadata !5147, metadata !102), !dbg !5148
  store i32 0, i32* %7, align 4, !dbg !5148
  %10 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !5149
  %11 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %10, i32 0, i32 15, !dbg !5151
  %12 = load i8, i8* %11, align 4, !dbg !5151
  %13 = lshr i8 %12, 4, !dbg !5151
  %14 = and i8 %13, 1, !dbg !5151
  %15 = zext i8 %14 to i32, !dbg !5151
  %16 = icmp ne i32 %15, 0, !dbg !5149
  br i1 %16, label %17, label %38, !dbg !5152

; <label>:17:                                     ; preds = %2
  %18 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !5153
  %19 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %18, i32 0, i32 3, !dbg !5155
  %20 = load i8**, i8*** %19, align 8, !dbg !5155
  %21 = getelementptr inbounds i8*, i8** %20, i64 0, !dbg !5153
  %22 = load i8*, i8** %21, align 8, !dbg !5153
  %23 = icmp ne i8* %22, null, !dbg !5156
  br i1 %23, label %24, label %38, !dbg !5157

; <label>:24:                                     ; preds = %17
  %25 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !5158
  %26 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %25, i32 0, i32 3, !dbg !5160
  %27 = load i8**, i8*** %26, align 8, !dbg !5160
  %28 = getelementptr inbounds i8*, i8** %27, i64 0, !dbg !5158
  %29 = load i8*, i8** %28, align 8, !dbg !5158
  %30 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !5161
  %31 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %30, i32 0, i32 15, !dbg !5162
  %32 = load i8, i8* %31, align 4, !dbg !5162
  %33 = and i8 %32, 1, !dbg !5162
  %34 = zext i8 %33 to i32, !dbg !5162
  %35 = call i32 @scrlen_str(i8* %29, i32 %34), !dbg !5163
  %36 = load i32, i32* %7, align 4, !dbg !5164
  %37 = add nsw i32 %36, %35, !dbg !5164
  store i32 %37, i32* %7, align 4, !dbg !5164
  br label %38, !dbg !5165

; <label>:38:                                     ; preds = %24, %17, %2
  store i32 0, i32* %5, align 4, !dbg !5166
  br label %39, !dbg !5168

; <label>:39:                                     ; preds = %120, %38
  %40 = load i32, i32* %5, align 4, !dbg !5169
  %41 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !5172
  %42 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %41, i32 0, i32 0, !dbg !5173
  %43 = load i32, i32* %42, align 8, !dbg !5173
  %44 = icmp slt i32 %40, %43, !dbg !5174
  br i1 %44, label %45, label %49, !dbg !5175

; <label>:45:                                     ; preds = %39
  %46 = load i32, i32* %7, align 4, !dbg !5176
  %47 = load i32, i32* %4, align 4, !dbg !5178
  %48 = icmp slt i32 %46, %47, !dbg !5179
  br label %49

; <label>:49:                                     ; preds = %45, %39
  %50 = phi i1 [ false, %39 ], [ %48, %45 ]
  br i1 %50, label %51, label %123, !dbg !5180

; <label>:51:                                     ; preds = %49
  call void @llvm.dbg.declare(metadata i32* %8, metadata !5182, metadata !102), !dbg !5184
  %52 = load i32, i32* %5, align 4, !dbg !5185
  %53 = sext i32 %52 to i64, !dbg !5186
  %54 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !5186
  %55 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %54, i32 0, i32 2, !dbg !5187
  %56 = load i32*, i32** %55, align 8, !dbg !5187
  %57 = getelementptr inbounds i32, i32* %56, i64 %53, !dbg !5186
  %58 = load i32, i32* %57, align 4, !dbg !5186
  store i32 %58, i32* %8, align 4, !dbg !5184
  call void @llvm.dbg.declare(metadata i8** %9, metadata !5188, metadata !102), !dbg !5189
  %59 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !5190
  %60 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %59, i32 0, i32 15, !dbg !5191
  %61 = load i8, i8* %60, align 4, !dbg !5191
  %62 = lshr i8 %61, 4, !dbg !5191
  %63 = and i8 %62, 1, !dbg !5191
  %64 = zext i8 %63 to i32, !dbg !5191
  %65 = icmp ne i32 %64, 0, !dbg !5190
  br i1 %65, label %66, label %75, !dbg !5190

; <label>:66:                                     ; preds = %51
  %67 = load i32, i32* %5, align 4, !dbg !5192
  %68 = add nsw i32 %67, 1, !dbg !5194
  %69 = sext i32 %68 to i64, !dbg !5195
  %70 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !5195
  %71 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %70, i32 0, i32 3, !dbg !5196
  %72 = load i8**, i8*** %71, align 8, !dbg !5196
  %73 = getelementptr inbounds i8*, i8** %72, i64 %69, !dbg !5195
  %74 = load i8*, i8** %73, align 8, !dbg !5195
  br label %76, !dbg !5197

; <label>:75:                                     ; preds = %51
  br label %76, !dbg !5198

; <label>:76:                                     ; preds = %75, %66
  %77 = phi i8* [ %74, %66 ], [ null, %75 ], !dbg !5200
  store i8* %77, i8** %9, align 8, !dbg !5202
  %78 = load i32, i32* @term_type, align 4, !dbg !5203
  %79 = icmp eq i32 %78, 2, !dbg !5205
  br i1 %79, label %80, label %84, !dbg !5206

; <label>:80:                                     ; preds = %76
  %81 = load i32, i32* %8, align 4, !dbg !5207
  %82 = icmp ugt i32 %81, 255, !dbg !5208
  %83 = select i1 %82, i32 2, i32 1, !dbg !5209
  store i32 %83, i32* %6, align 4, !dbg !5210
  br label %103, !dbg !5211

; <label>:84:                                     ; preds = %76
  %85 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !5212
  %86 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %85, i32 0, i32 15, !dbg !5214
  %87 = load i8, i8* %86, align 4, !dbg !5214
  %88 = and i8 %87, 1, !dbg !5214
  %89 = zext i8 %88 to i32, !dbg !5214
  %90 = icmp ne i32 %89, 0, !dbg !5212
  br i1 %90, label %91, label %101, !dbg !5215

; <label>:91:                                     ; preds = %84
  %92 = load i32, i32* %8, align 4, !dbg !5216
  %93 = and i32 %92, -129, !dbg !5217
  %94 = icmp uge i32 %93, 32, !dbg !5218
  br i1 %94, label %95, label %98, !dbg !5219

; <label>:95:                                     ; preds = %91
  %96 = load i32, i32* %8, align 4, !dbg !5220
  %97 = call i32 @i_wcwidth(i32 %96), !dbg !5222
  br label %99, !dbg !5223

; <label>:98:                                     ; preds = %91
  br label %99, !dbg !5224

; <label>:99:                                     ; preds = %98, %95
  %100 = phi i32 [ %97, %95 ], [ 1, %98 ], !dbg !5226
  store i32 %100, i32* %6, align 4, !dbg !5228
  br label %102, !dbg !5229

; <label>:101:                                    ; preds = %84
  store i32 1, i32* %6, align 4, !dbg !5230
  br label %102

; <label>:102:                                    ; preds = %101, %99
  br label %103

; <label>:103:                                    ; preds = %102, %80
  %104 = load i32, i32* %6, align 4, !dbg !5231
  %105 = load i32, i32* %7, align 4, !dbg !5232
  %106 = add nsw i32 %105, %104, !dbg !5232
  store i32 %106, i32* %7, align 4, !dbg !5232
  %107 = load i8*, i8** %9, align 8, !dbg !5233
  %108 = icmp ne i8* %107, null, !dbg !5235
  br i1 %108, label %109, label %119, !dbg !5236

; <label>:109:                                    ; preds = %103
  %110 = load i8*, i8** %9, align 8, !dbg !5237
  %111 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !5239
  %112 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %111, i32 0, i32 15, !dbg !5240
  %113 = load i8, i8* %112, align 4, !dbg !5240
  %114 = and i8 %113, 1, !dbg !5240
  %115 = zext i8 %114 to i32, !dbg !5240
  %116 = call i32 @scrlen_str(i8* %110, i32 %115), !dbg !5241
  %117 = load i32, i32* %7, align 4, !dbg !5242
  %118 = add nsw i32 %117, %116, !dbg !5242
  store i32 %118, i32* %7, align 4, !dbg !5242
  br label %119, !dbg !5243

; <label>:119:                                    ; preds = %109, %103
  br label %120, !dbg !5244

; <label>:120:                                    ; preds = %119
  %121 = load i32, i32* %5, align 4, !dbg !5245
  %122 = add nsw i32 %121, 1, !dbg !5245
  store i32 %122, i32* %5, align 4, !dbg !5245
  br label %39, !dbg !5247, !llvm.loop !5248

; <label>:123:                                    ; preds = %49
  %124 = load i32, i32* %5, align 4, !dbg !5250
  ret i32 %124, !dbg !5251
}

; Function Attrs: nounwind uwtable
define internal void @gui_entry_draw_from(%struct.GUI_ENTRY_REC*, i32) #0 !dbg !5252 {
  %3 = alloca %struct.GUI_ENTRY_REC*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct._GString*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.GUI_ENTRY_REC* %0, %struct.GUI_ENTRY_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_REC** %3, metadata !5253, metadata !102), !dbg !5254
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !5255, metadata !102), !dbg !5256
  call void @llvm.dbg.declare(metadata i32* %5, metadata !5257, metadata !102), !dbg !5258
  call void @llvm.dbg.declare(metadata i32* %6, metadata !5259, metadata !102), !dbg !5260
  call void @llvm.dbg.declare(metadata i32* %7, metadata !5261, metadata !102), !dbg !5262
  call void @llvm.dbg.declare(metadata i32* %8, metadata !5263, metadata !102), !dbg !5264
  call void @llvm.dbg.declare(metadata i32* %9, metadata !5265, metadata !102), !dbg !5266
  call void @llvm.dbg.declare(metadata i32* %10, metadata !5267, metadata !102), !dbg !5268
  call void @llvm.dbg.declare(metadata i8** %11, metadata !5269, metadata !102), !dbg !5270
  call void @llvm.dbg.declare(metadata %struct._GString** %12, metadata !5271, metadata !102), !dbg !5272
  %16 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !5273
  %17 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %16, i32 0, i32 9, !dbg !5274
  %18 = load i32, i32* %17, align 8, !dbg !5274
  %19 = load i32, i32* %4, align 4, !dbg !5275
  %20 = add nsw i32 %18, %19, !dbg !5276
  store i32 %20, i32* %6, align 4, !dbg !5277
  %21 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !5278
  %22 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %21, i32 0, i32 5, !dbg !5279
  %23 = load i32, i32* %22, align 8, !dbg !5279
  %24 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !5280
  %25 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %24, i32 0, i32 12, !dbg !5281
  %26 = load i32, i32* %25, align 4, !dbg !5281
  %27 = add nsw i32 %23, %26, !dbg !5282
  %28 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !5283
  %29 = load i32, i32* %6, align 4, !dbg !5284
  %30 = call i32 @pos2scrpos(%struct.GUI_ENTRY_REC* %28, i32 %29, i32 0), !dbg !5285
  %31 = add nsw i32 %27, %30, !dbg !5286
  %32 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !5287
  %33 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !5288
  %34 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %33, i32 0, i32 9, !dbg !5289
  %35 = load i32, i32* %34, align 8, !dbg !5289
  %36 = call i32 @pos2scrpos(%struct.GUI_ENTRY_REC* %32, i32 %35, i32 0), !dbg !5290
  %37 = sub nsw i32 %31, %36, !dbg !5291
  store i32 %37, i32* %8, align 4, !dbg !5292
  store i32 %37, i32* %7, align 4, !dbg !5293
  %38 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !5294
  %39 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %38, i32 0, i32 5, !dbg !5295
  %40 = load i32, i32* %39, align 8, !dbg !5295
  %41 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !5296
  %42 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %41, i32 0, i32 7, !dbg !5297
  %43 = load i32, i32* %42, align 8, !dbg !5297
  %44 = add nsw i32 %40, %43, !dbg !5298
  store i32 %44, i32* %10, align 4, !dbg !5299
  %45 = load i32, i32* %8, align 4, !dbg !5300
  %46 = load i32, i32* %10, align 4, !dbg !5302
  %47 = icmp sgt i32 %45, %46, !dbg !5303
  br i1 %47, label %48, label %49, !dbg !5304

; <label>:48:                                     ; preds = %2
  br label %320, !dbg !5305

; <label>:49:                                     ; preds = %2
  %50 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !5306
  %51 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %50, i32 0, i32 1, !dbg !5307
  %52 = load i32, i32* %51, align 4, !dbg !5307
  %53 = sext i32 %52 to i64, !dbg !5306
  %54 = call %struct._GString* @g_string_sized_new(i64 %53), !dbg !5308
  store %struct._GString* %54, %struct._GString** %12, align 8, !dbg !5309
  %55 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** @root_window, align 8, !dbg !5310
  call void @term_set_color(%struct._TERM_WINDOW* %55, i32 196608), !dbg !5311
  %56 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !5312
  %57 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %56, i32 0, i32 15, !dbg !5314
  %58 = load i8, i8* %57, align 4, !dbg !5314
  %59 = lshr i8 %58, 4, !dbg !5314
  %60 = and i8 %59, 1, !dbg !5314
  %61 = zext i8 %60 to i32, !dbg !5314
  %62 = icmp ne i32 %61, 0, !dbg !5312
  br i1 %62, label %63, label %78, !dbg !5315

; <label>:63:                                     ; preds = %49
  %64 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !5316
  %65 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %64, i32 0, i32 3, !dbg !5318
  %66 = load i8**, i8*** %65, align 8, !dbg !5318
  %67 = getelementptr inbounds i8*, i8** %66, i64 0, !dbg !5316
  %68 = load i8*, i8** %67, align 8, !dbg !5316
  %69 = icmp ne i8* %68, null, !dbg !5319
  br i1 %69, label %70, label %78, !dbg !5320

; <label>:70:                                     ; preds = %63
  %71 = load %struct._GString*, %struct._GString** %12, align 8, !dbg !5321
  %72 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !5323
  %73 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %72, i32 0, i32 3, !dbg !5324
  %74 = load i8**, i8*** %73, align 8, !dbg !5324
  %75 = getelementptr inbounds i8*, i8** %74, i64 0, !dbg !5323
  %76 = load i8*, i8** %75, align 8, !dbg !5323
  %77 = call %struct._GString* @g_string_append(%struct._GString* %71, i8* %76), !dbg !5325
  br label %78, !dbg !5326

; <label>:78:                                     ; preds = %70, %63, %49
  store i32 0, i32* %5, align 4, !dbg !5327
  br label %79, !dbg !5329

; <label>:79:                                     ; preds = %118, %78
  %80 = load i32, i32* %5, align 4, !dbg !5330
  %81 = load i32, i32* %6, align 4, !dbg !5333
  %82 = icmp slt i32 %80, %81, !dbg !5334
  br i1 %82, label %83, label %89, !dbg !5335

; <label>:83:                                     ; preds = %79
  %84 = load i32, i32* %5, align 4, !dbg !5336
  %85 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !5338
  %86 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %85, i32 0, i32 0, !dbg !5339
  %87 = load i32, i32* %86, align 8, !dbg !5339
  %88 = icmp slt i32 %84, %87, !dbg !5340
  br label %89

; <label>:89:                                     ; preds = %83, %79
  %90 = phi i1 [ false, %79 ], [ %88, %83 ]
  br i1 %90, label %91, label %121, !dbg !5341

; <label>:91:                                     ; preds = %89
  call void @llvm.dbg.declare(metadata i8** %13, metadata !5343, metadata !102), !dbg !5345
  %92 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !5346
  %93 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %92, i32 0, i32 15, !dbg !5347
  %94 = load i8, i8* %93, align 4, !dbg !5347
  %95 = lshr i8 %94, 4, !dbg !5347
  %96 = and i8 %95, 1, !dbg !5347
  %97 = zext i8 %96 to i32, !dbg !5347
  %98 = icmp ne i32 %97, 0, !dbg !5346
  br i1 %98, label %99, label %108, !dbg !5346

; <label>:99:                                     ; preds = %91
  %100 = load i32, i32* %5, align 4, !dbg !5348
  %101 = add nsw i32 %100, 1, !dbg !5350
  %102 = sext i32 %101 to i64, !dbg !5351
  %103 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !5351
  %104 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %103, i32 0, i32 3, !dbg !5352
  %105 = load i8**, i8*** %104, align 8, !dbg !5352
  %106 = getelementptr inbounds i8*, i8** %105, i64 %102, !dbg !5351
  %107 = load i8*, i8** %106, align 8, !dbg !5351
  br label %109, !dbg !5353

; <label>:108:                                    ; preds = %91
  br label %109, !dbg !5354

; <label>:109:                                    ; preds = %108, %99
  %110 = phi i8* [ %107, %99 ], [ null, %108 ], !dbg !5356
  store i8* %110, i8** %13, align 8, !dbg !5358
  %111 = load i8*, i8** %13, align 8, !dbg !5359
  %112 = icmp ne i8* %111, null, !dbg !5361
  br i1 %112, label %113, label %117, !dbg !5362

; <label>:113:                                    ; preds = %109
  %114 = load %struct._GString*, %struct._GString** %12, align 8, !dbg !5363
  %115 = load i8*, i8** %13, align 8, !dbg !5365
  %116 = call %struct._GString* @g_string_append(%struct._GString* %114, i8* %115), !dbg !5366
  br label %117, !dbg !5367

; <label>:117:                                    ; preds = %113, %109
  br label %118, !dbg !5368

; <label>:118:                                    ; preds = %117
  %119 = load i32, i32* %5, align 4, !dbg !5369
  %120 = add nsw i32 %119, 1, !dbg !5369
  store i32 %120, i32* %5, align 4, !dbg !5369
  br label %79, !dbg !5371, !llvm.loop !5372

; <label>:121:                                    ; preds = %89
  %122 = load i32, i32* %5, align 4, !dbg !5374
  %123 = icmp eq i32 %122, 0, !dbg !5376
  br i1 %123, label %124, label %136, !dbg !5377

; <label>:124:                                    ; preds = %121
  %125 = load %struct._GString*, %struct._GString** %12, align 8, !dbg !5378
  %126 = getelementptr inbounds %struct._GString, %struct._GString* %125, i32 0, i32 0, !dbg !5380
  %127 = load i8*, i8** %126, align 8, !dbg !5380
  %128 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !5381
  %129 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %128, i32 0, i32 15, !dbg !5382
  %130 = load i8, i8* %129, align 4, !dbg !5382
  %131 = and i8 %130, 1, !dbg !5382
  %132 = zext i8 %131 to i32, !dbg !5382
  %133 = call i32 @scrlen_str(i8* %127, i32 %132), !dbg !5383
  %134 = load i32, i32* %8, align 4, !dbg !5384
  %135 = add nsw i32 %134, %133, !dbg !5384
  store i32 %135, i32* %8, align 4, !dbg !5384
  br label %145, !dbg !5385

; <label>:136:                                    ; preds = %121
  %137 = load %struct._GString*, %struct._GString** %12, align 8, !dbg !5386
  %138 = getelementptr inbounds %struct._GString, %struct._GString* %137, i32 0, i32 0, !dbg !5388
  %139 = load i8*, i8** %138, align 8, !dbg !5388
  %140 = call i8* @text_effects_only(i8* %139), !dbg !5389
  store i8* %140, i8** %11, align 8, !dbg !5390
  %141 = load %struct._GString*, %struct._GString** %12, align 8, !dbg !5391
  %142 = load i8*, i8** %11, align 8, !dbg !5392
  %143 = call %struct._GString* @g_string_assign(%struct._GString* %141, i8* %142), !dbg !5393
  %144 = load i8*, i8** %11, align 8, !dbg !5394
  call void @g_free(i8* %144), !dbg !5395
  br label %145

; <label>:145:                                    ; preds = %136, %124
  br label %146, !dbg !5396

; <label>:146:                                    ; preds = %282, %145
  %147 = load i32, i32* %5, align 4, !dbg !5397
  %148 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !5401
  %149 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %148, i32 0, i32 0, !dbg !5402
  %150 = load i32, i32* %149, align 8, !dbg !5402
  %151 = icmp slt i32 %147, %150, !dbg !5403
  br i1 %151, label %152, label %285, !dbg !5404

; <label>:152:                                    ; preds = %146
  call void @llvm.dbg.declare(metadata i32* %14, metadata !5405, metadata !102), !dbg !5407
  %153 = load i32, i32* %5, align 4, !dbg !5408
  %154 = sext i32 %153 to i64, !dbg !5409
  %155 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !5409
  %156 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %155, i32 0, i32 2, !dbg !5410
  %157 = load i32*, i32** %156, align 8, !dbg !5410
  %158 = getelementptr inbounds i32, i32* %157, i64 %154, !dbg !5409
  %159 = load i32, i32* %158, align 4, !dbg !5409
  store i32 %159, i32* %14, align 4, !dbg !5407
  call void @llvm.dbg.declare(metadata i8** %15, metadata !5411, metadata !102), !dbg !5412
  %160 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !5413
  %161 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %160, i32 0, i32 15, !dbg !5414
  %162 = load i8, i8* %161, align 4, !dbg !5414
  %163 = lshr i8 %162, 4, !dbg !5414
  %164 = and i8 %163, 1, !dbg !5414
  %165 = zext i8 %164 to i32, !dbg !5414
  %166 = icmp ne i32 %165, 0, !dbg !5413
  br i1 %166, label %167, label %176, !dbg !5413

; <label>:167:                                    ; preds = %152
  %168 = load i32, i32* %5, align 4, !dbg !5415
  %169 = add nsw i32 %168, 1, !dbg !5417
  %170 = sext i32 %169 to i64, !dbg !5418
  %171 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !5418
  %172 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %171, i32 0, i32 3, !dbg !5419
  %173 = load i8**, i8*** %172, align 8, !dbg !5419
  %174 = getelementptr inbounds i8*, i8** %173, i64 %170, !dbg !5418
  %175 = load i8*, i8** %174, align 8, !dbg !5418
  br label %177, !dbg !5420

; <label>:176:                                    ; preds = %152
  br label %177, !dbg !5421

; <label>:177:                                    ; preds = %176, %167
  %178 = phi i8* [ %175, %167 ], [ null, %176 ], !dbg !5423
  store i8* %178, i8** %15, align 8, !dbg !5425
  %179 = load i32, i32* %8, align 4, !dbg !5426
  store i32 %179, i32* %9, align 4, !dbg !5427
  %180 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !5428
  %181 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %180, i32 0, i32 11, !dbg !5430
  %182 = load i32, i32* %181, align 8, !dbg !5430
  %183 = icmp ne i32 %182, 0, !dbg !5428
  br i1 %183, label %184, label %187, !dbg !5431

; <label>:184:                                    ; preds = %177
  %185 = load i32, i32* %9, align 4, !dbg !5432
  %186 = add nsw i32 %185, 1, !dbg !5432
  store i32 %186, i32* %9, align 4, !dbg !5432
  br label %220, !dbg !5433

; <label>:187:                                    ; preds = %177
  %188 = load i32, i32* @term_type, align 4, !dbg !5434
  %189 = icmp eq i32 %188, 2, !dbg !5436
  br i1 %189, label %190, label %196, !dbg !5437

; <label>:190:                                    ; preds = %187
  %191 = load i32, i32* %14, align 4, !dbg !5438
  %192 = icmp ugt i32 %191, 255, !dbg !5439
  %193 = select i1 %192, i32 2, i32 1, !dbg !5440
  %194 = load i32, i32* %9, align 4, !dbg !5441
  %195 = add nsw i32 %194, %193, !dbg !5441
  store i32 %195, i32* %9, align 4, !dbg !5441
  br label %219, !dbg !5442

; <label>:196:                                    ; preds = %187
  %197 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !5443
  %198 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %197, i32 0, i32 15, !dbg !5445
  %199 = load i8, i8* %198, align 4, !dbg !5445
  %200 = and i8 %199, 1, !dbg !5445
  %201 = zext i8 %200 to i32, !dbg !5445
  %202 = icmp ne i32 %201, 0, !dbg !5443
  br i1 %202, label %203, label %215, !dbg !5446

; <label>:203:                                    ; preds = %196
  %204 = load i32, i32* %14, align 4, !dbg !5447
  %205 = and i32 %204, -129, !dbg !5448
  %206 = icmp uge i32 %205, 32, !dbg !5449
  br i1 %206, label %207, label %210, !dbg !5450

; <label>:207:                                    ; preds = %203
  %208 = load i32, i32* %14, align 4, !dbg !5451
  %209 = call i32 @i_wcwidth(i32 %208), !dbg !5453
  br label %211, !dbg !5454

; <label>:210:                                    ; preds = %203
  br label %211, !dbg !5455

; <label>:211:                                    ; preds = %210, %207
  %212 = phi i32 [ %209, %207 ], [ 1, %210 ], !dbg !5457
  %213 = load i32, i32* %9, align 4, !dbg !5459
  %214 = add nsw i32 %213, %212, !dbg !5459
  store i32 %214, i32* %9, align 4, !dbg !5459
  br label %218, !dbg !5460

; <label>:215:                                    ; preds = %196
  %216 = load i32, i32* %9, align 4, !dbg !5461
  %217 = add nsw i32 %216, 1, !dbg !5461
  store i32 %217, i32* %9, align 4, !dbg !5461
  br label %218

; <label>:218:                                    ; preds = %215, %211
  br label %219

; <label>:219:                                    ; preds = %218, %190
  br label %220

; <label>:220:                                    ; preds = %219, %184
  %221 = load i32, i32* %9, align 4, !dbg !5462
  %222 = load i32, i32* %10, align 4, !dbg !5464
  %223 = icmp sgt i32 %221, %222, !dbg !5465
  br i1 %223, label %224, label %225, !dbg !5466

; <label>:224:                                    ; preds = %220
  br label %285, !dbg !5467

; <label>:225:                                    ; preds = %220
  %226 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !5468
  %227 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %226, i32 0, i32 11, !dbg !5470
  %228 = load i32, i32* %227, align 8, !dbg !5470
  %229 = icmp ne i32 %228, 0, !dbg !5468
  br i1 %229, label %230, label %233, !dbg !5471

; <label>:230:                                    ; preds = %225
  %231 = load %struct._GString*, %struct._GString** %12, align 8, !dbg !5472
  %232 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %231, i8 signext 32), !dbg !5473
  br label %258, !dbg !5473

; <label>:233:                                    ; preds = %225
  %234 = load i32, i32* %14, align 4, !dbg !5474
  %235 = and i32 %234, -129, !dbg !5476
  %236 = icmp uge i32 %235, 32, !dbg !5477
  br i1 %236, label %237, label %241, !dbg !5478

; <label>:237:                                    ; preds = %233
  %238 = load %struct._GString*, %struct._GString** %12, align 8, !dbg !5479
  %239 = load i32, i32* %14, align 4, !dbg !5480
  %240 = call %struct._GString* @g_string_append_unichar(%struct._GString* %238, i32 %239), !dbg !5481
  br label %257, !dbg !5481

; <label>:241:                                    ; preds = %233
  %242 = load %struct._GString*, %struct._GString** %12, align 8, !dbg !5482
  %243 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %242, i8 signext 4), !dbg !5484
  %244 = load %struct._GString*, %struct._GString** %12, align 8, !dbg !5485
  %245 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %244, i8 signext 100), !dbg !5486
  %246 = load %struct._GString*, %struct._GString** %12, align 8, !dbg !5487
  %247 = load i32, i32* %14, align 4, !dbg !5488
  %248 = and i32 %247, 127, !dbg !5489
  %249 = add i32 %248, 65, !dbg !5490
  %250 = sub i32 %249, 1, !dbg !5491
  %251 = trunc i32 %250 to i8, !dbg !5492
  %252 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %246, i8 signext %251), !dbg !5493
  %253 = load %struct._GString*, %struct._GString** %12, align 8, !dbg !5494
  %254 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %253, i8 signext 4), !dbg !5495
  %255 = load %struct._GString*, %struct._GString** %12, align 8, !dbg !5496
  %256 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %255, i8 signext 100), !dbg !5497
  br label %257

; <label>:257:                                    ; preds = %241, %237
  br label %258

; <label>:258:                                    ; preds = %257, %230
  %259 = load i32, i32* %9, align 4, !dbg !5498
  store i32 %259, i32* %8, align 4, !dbg !5499
  %260 = load i8*, i8** %15, align 8, !dbg !5500
  %261 = icmp ne i8* %260, null, !dbg !5502
  br i1 %261, label %262, label %281, !dbg !5503

; <label>:262:                                    ; preds = %258
  %263 = load i8*, i8** %15, align 8, !dbg !5504
  %264 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !5506
  %265 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %264, i32 0, i32 15, !dbg !5507
  %266 = load i8, i8* %265, align 4, !dbg !5507
  %267 = and i8 %266, 1, !dbg !5507
  %268 = zext i8 %267 to i32, !dbg !5507
  %269 = call i32 @scrlen_str(i8* %263, i32 %268), !dbg !5508
  %270 = load i32, i32* %9, align 4, !dbg !5509
  %271 = add nsw i32 %270, %269, !dbg !5509
  store i32 %271, i32* %9, align 4, !dbg !5509
  %272 = load i32, i32* %9, align 4, !dbg !5510
  %273 = load i32, i32* %10, align 4, !dbg !5512
  %274 = icmp sgt i32 %272, %273, !dbg !5513
  br i1 %274, label %275, label %276, !dbg !5514

; <label>:275:                                    ; preds = %262
  br label %285, !dbg !5515

; <label>:276:                                    ; preds = %262
  %277 = load %struct._GString*, %struct._GString** %12, align 8, !dbg !5516
  %278 = load i8*, i8** %15, align 8, !dbg !5517
  %279 = call %struct._GString* @g_string_append(%struct._GString* %277, i8* %278), !dbg !5518
  %280 = load i32, i32* %9, align 4, !dbg !5519
  store i32 %280, i32* %8, align 4, !dbg !5520
  br label %281, !dbg !5521

; <label>:281:                                    ; preds = %276, %258
  br label %282, !dbg !5522

; <label>:282:                                    ; preds = %281
  %283 = load i32, i32* %5, align 4, !dbg !5523
  %284 = add nsw i32 %283, 1, !dbg !5523
  store i32 %284, i32* %5, align 4, !dbg !5523
  br label %146, !dbg !5525, !llvm.loop !5526

; <label>:285:                                    ; preds = %275, %224, %146
  %286 = load i32, i32* %8, align 4, !dbg !5527
  %287 = load i32, i32* %10, align 4, !dbg !5529
  %288 = icmp slt i32 %286, %287, !dbg !5530
  br i1 %288, label %289, label %310, !dbg !5531

; <label>:289:                                    ; preds = %285
  %290 = load i32, i32* %10, align 4, !dbg !5532
  %291 = load i32, i32* @term_width, align 4, !dbg !5535
  %292 = icmp eq i32 %290, %291, !dbg !5536
  br i1 %292, label %293, label %298, !dbg !5537

; <label>:293:                                    ; preds = %289
  %294 = load %struct._GString*, %struct._GString** %12, align 8, !dbg !5538
  %295 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %294, i8 signext 4), !dbg !5540
  %296 = load %struct._GString*, %struct._GString** %12, align 8, !dbg !5541
  %297 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %296, i8 signext 104), !dbg !5542
  br label %309, !dbg !5543

; <label>:298:                                    ; preds = %289
  br label %299, !dbg !5544

; <label>:299:                                    ; preds = %303, %298
  %300 = load i32, i32* %8, align 4, !dbg !5546
  %301 = load i32, i32* %10, align 4, !dbg !5548
  %302 = icmp slt i32 %300, %301, !dbg !5549
  br i1 %302, label %303, label %308, !dbg !5550

; <label>:303:                                    ; preds = %299
  %304 = load %struct._GString*, %struct._GString** %12, align 8, !dbg !5551
  %305 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %304, i8 signext 32), !dbg !5553
  %306 = load i32, i32* %8, align 4, !dbg !5554
  %307 = add nsw i32 %306, 1, !dbg !5554
  store i32 %307, i32* %8, align 4, !dbg !5554
  br label %299, !dbg !5555, !llvm.loop !5557

; <label>:308:                                    ; preds = %299
  br label %309

; <label>:309:                                    ; preds = %308, %293
  br label %310, !dbg !5558

; <label>:310:                                    ; preds = %309, %285
  %311 = load i32, i32* %7, align 4, !dbg !5559
  %312 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %3, align 8, !dbg !5560
  %313 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %312, i32 0, i32 6, !dbg !5561
  %314 = load i32, i32* %313, align 4, !dbg !5561
  %315 = load %struct._GString*, %struct._GString** %12, align 8, !dbg !5562
  %316 = getelementptr inbounds %struct._GString, %struct._GString* %315, i32 0, i32 0, !dbg !5563
  %317 = load i8*, i8** %316, align 8, !dbg !5563
  call void @gui_printtext_internal(i32 %311, i32 %314, i8* %317), !dbg !5564
  %318 = load %struct._GString*, %struct._GString** %12, align 8, !dbg !5565
  %319 = call i8* @g_string_free(%struct._GString* %318, i32 1), !dbg !5566
  br label %320, !dbg !5567

; <label>:320:                                    ; preds = %310, %48
  ret void, !dbg !5568
}

declare void @term_set_color(%struct._TERM_WINDOW*, i32) #2

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i8* @text_effects_only(i8*) #0 !dbg !5570 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._GString*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !5573, metadata !102), !dbg !5574
  call void @llvm.dbg.declare(metadata %struct._GString** %3, metadata !5575, metadata !102), !dbg !5576
  %4 = load i8*, i8** %2, align 8, !dbg !5577
  %5 = call i64 @strlen(i8* %4) #7, !dbg !5578
  %6 = call %struct._GString* @g_string_sized_new(i64 %5), !dbg !5579
  store %struct._GString* %6, %struct._GString** %3, align 8, !dbg !5581
  br label %7, !dbg !5582

; <label>:7:                                      ; preds = %49, %1
  %8 = load i8*, i8** %2, align 8, !dbg !5583
  %9 = load i8, i8* %8, align 1, !dbg !5587
  %10 = sext i8 %9 to i32, !dbg !5587
  %11 = icmp ne i32 %10, 0, !dbg !5588
  br i1 %11, label %12, label %52, !dbg !5589

; <label>:12:                                     ; preds = %7
  %13 = load i8*, i8** %2, align 8, !dbg !5590
  %14 = load i8, i8* %13, align 1, !dbg !5593
  %15 = sext i8 %14 to i32, !dbg !5593
  %16 = icmp eq i32 %15, 4, !dbg !5594
  br i1 %16, label %17, label %48, !dbg !5595

; <label>:17:                                     ; preds = %12
  %18 = load i8*, i8** %2, align 8, !dbg !5596
  %19 = getelementptr inbounds i8, i8* %18, i64 1, !dbg !5596
  %20 = load i8, i8* %19, align 1, !dbg !5596
  %21 = sext i8 %20 to i32, !dbg !5596
  %22 = icmp ne i32 %21, 0, !dbg !5598
  br i1 %22, label %23, label %48, !dbg !5599

; <label>:23:                                     ; preds = %17
  %24 = load i8*, i8** %2, align 8, !dbg !5600
  %25 = getelementptr inbounds i8, i8* %24, i64 1, !dbg !5600
  %26 = load i8, i8* %25, align 1, !dbg !5600
  %27 = sext i8 %26 to i32, !dbg !5600
  %28 = icmp sge i32 %27, 96, !dbg !5603
  br i1 %28, label %29, label %35, !dbg !5604

; <label>:29:                                     ; preds = %23
  %30 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !5605
  %31 = load i8*, i8** %2, align 8, !dbg !5607
  %32 = call %struct._GString* @g_string_append_len(%struct._GString* %30, i8* %31, i64 2), !dbg !5608
  %33 = load i8*, i8** %2, align 8, !dbg !5609
  %34 = getelementptr inbounds i8, i8* %33, i32 1, !dbg !5609
  store i8* %34, i8** %2, align 8, !dbg !5609
  br label %49, !dbg !5610

; <label>:35:                                     ; preds = %23
  %36 = load i8*, i8** %2, align 8, !dbg !5611
  %37 = getelementptr inbounds i8, i8* %36, i64 2, !dbg !5611
  %38 = load i8, i8* %37, align 1, !dbg !5611
  %39 = sext i8 %38 to i32, !dbg !5611
  %40 = icmp ne i32 %39, 0, !dbg !5613
  br i1 %40, label %41, label %47, !dbg !5614

; <label>:41:                                     ; preds = %35
  %42 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !5615
  %43 = load i8*, i8** %2, align 8, !dbg !5617
  %44 = call %struct._GString* @g_string_append_len(%struct._GString* %42, i8* %43, i64 3), !dbg !5618
  %45 = load i8*, i8** %2, align 8, !dbg !5619
  %46 = getelementptr inbounds i8, i8* %45, i64 2, !dbg !5619
  store i8* %46, i8** %2, align 8, !dbg !5619
  br label %49, !dbg !5620

; <label>:47:                                     ; preds = %35
  br label %48, !dbg !5621

; <label>:48:                                     ; preds = %47, %17, %12
  br label %49, !dbg !5622

; <label>:49:                                     ; preds = %48, %41, %29
  %50 = load i8*, i8** %2, align 8, !dbg !5623
  %51 = getelementptr inbounds i8, i8* %50, i32 1, !dbg !5623
  store i8* %51, i8** %2, align 8, !dbg !5623
  br label %7, !dbg !5625, !llvm.loop !5626

; <label>:52:                                     ; preds = %7
  %53 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !5627
  %54 = call i8* @g_string_free(%struct._GString* %53, i32 0), !dbg !5628
  ret i8* %54, !dbg !5629
}

declare %struct._GString* @g_string_assign(%struct._GString*, i8*) #2

declare %struct._GString* @g_string_append_len(%struct._GString*, i8*, i64) #2

declare i8* @strip_codes(i8*) #2

declare i32 @string_width(i8*, i32) #2

declare i32 @nearest_power(i32) #2

declare i32 @g_slist_length(%struct._GSList*) #2

declare %struct._GSList* @g_slist_last(%struct._GSList*) #2

; Function Attrs: nounwind readnone
declare i32 @g_unichar_isalnum(i32) #6

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #6

; Function Attrs: nounwind readnone
declare i32 @g_unichar_toupper(i32) #6

; Function Attrs: nounwind readonly
declare i32 @toupper(i32) #3

; Function Attrs: nounwind readnone
declare i32 @g_unichar_tolower(i32) #6

; Function Attrs: nounwind readonly
declare i32 @tolower(i32) #3

declare %struct._GString* @g_string_insert_c(%struct._GString*, i64, i8 signext) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!94, !95}
!llvm.ident = !{!96}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !30, globals: !91)
!1 = !DIFile(filename: "line344-gui-entry.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !10, !15}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 33, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "gui-entry.h", directory: "/home/lichi/Desktop/irssi/task1")
!5 = !{!6, !7, !8, !9}
!6 = !DIEnumerator(name: "CUTBUFFER_UPDATE_NOOP", value: 0)
!7 = !DIEnumerator(name: "CUTBUFFER_UPDATE_REPLACE", value: 1)
!8 = !DIEnumerator(name: "CUTBUFFER_UPDATE_APPEND", value: 2)
!9 = !DIEnumerator(name: "CUTBUFFER_UPDATE_PREPEND", value: 3)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "str_policy", file: !11, line: 33, size: 32, align: 32, elements: !12)
!11 = !DIFile(filename: "../../src/core/utf8.h", directory: "/home/lichi/Desktop/irssi/task1")
!12 = !{!13, !14}
!13 = !DIEnumerator(name: "TREAT_STRING_AS_BYTES", value: 0)
!14 = !DIEnumerator(name: "TREAT_STRING_AS_UTF8", value: 1)
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
!30 = !{!31, !39, !57, !74, !76, !78, !46, !81, !45, !84, !36, !90}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "GUI_ENTRY_REC", file: !4, line: 31, baseType: !33)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 9, size: 640, align: 64, elements: !34)
!34 = !{!35, !37, !38, !44, !48, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "text_len", scope: !33, file: !4, line: 10, baseType: !36, size: 32, align: 32)
!36 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "text_alloc", scope: !33, file: !4, line: 10, baseType: !36, size: 32, align: 32, offset: 32)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !33, file: !4, line: 11, baseType: !39, size: 64, align: 64, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "unichar", file: !11, line: 12, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !42, line: 45, baseType: !43)
!42 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!43 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "extents", scope: !33, file: !4, line: 12, baseType: !45, size: 64, align: 64, offset: 128)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "kill_ring", scope: !33, file: !4, line: 14, baseType: !49, size: 64, align: 64, offset: 192)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !51, line: 37, baseType: !52)
!51 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !51, line: 39, size: 128, align: 64, elements: !53)
!53 = !{!54, !58}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !52, file: !51, line: 41, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !56, line: 77, baseType: !57)
!56 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !52, file: !51, line: 42, baseType: !49, size: 64, align: 64, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "xpos", scope: !33, file: !4, line: 17, baseType: !36, size: 32, align: 32, offset: 256)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "ypos", scope: !33, file: !4, line: 17, baseType: !36, size: 32, align: 32, offset: 288)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !33, file: !4, line: 17, baseType: !36, size: 32, align: 32, offset: 320)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !33, file: !4, line: 18, baseType: !36, size: 32, align: 32, offset: 352)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "scrstart", scope: !33, file: !4, line: 18, baseType: !36, size: 32, align: 32, offset: 384)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "scrpos", scope: !33, file: !4, line: 18, baseType: !36, size: 32, align: 32, offset: 416)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "hidden", scope: !33, file: !4, line: 19, baseType: !36, size: 32, align: 32, offset: 448)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "promptlen", scope: !33, file: !4, line: 21, baseType: !36, size: 32, align: 32, offset: 480)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "prompt", scope: !33, file: !4, line: 22, baseType: !46, size: 64, align: 64, offset: 512)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "redraw_needed_from", scope: !33, file: !4, line: 24, baseType: !36, size: 32, align: 32, offset: 576)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "utf8", scope: !33, file: !4, line: 25, baseType: !43, size: 1, align: 32, offset: 608, flags: DIFlagBitField, extraData: i64 608)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "previous_append_next_kill", scope: !33, file: !4, line: 27, baseType: !43, size: 1, align: 32, offset: 609, flags: DIFlagBitField, extraData: i64 608)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "append_next_kill", scope: !33, file: !4, line: 28, baseType: !43, size: 1, align: 32, offset: 610, flags: DIFlagBitField, extraData: i64 608)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "yank_preceded", scope: !33, file: !4, line: 29, baseType: !43, size: 1, align: 32, offset: 611, flags: DIFlagBitField, extraData: i64 608)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "uses_extents", scope: !33, file: !4, line: 30, baseType: !43, size: 1, align: 32, offset: 612, flags: DIFlagBitField, extraData: i64 608)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !56, line: 46, baseType: !47)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, align: 64)
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!80 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64, align: 64)
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "guchar", file: !56, line: 52, baseType: !80)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "GUI_ENTRY_CUTBUFFER_REC", file: !4, line: 7, baseType: !86)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 4, size: 128, align: 64, elements: !87)
!87 = !{!88, !89}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "cutbuffer_len", scope: !86, file: !4, line: 5, baseType: !36, size: 32, align: 32)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "cutbuffer", scope: !86, file: !4, line: 6, baseType: !39, size: 64, align: 64, offset: 64)
!90 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!91 = !{!92}
!92 = distinct !DIGlobalVariable(name: "active_entry", scope: !0, file: !93, line: 58, type: !31, isLocal: false, isDefinition: true, variable: %struct.GUI_ENTRY_REC** @active_entry)
!93 = !DIFile(filename: "gui-entry.c", directory: "/home/lichi/Desktop/irssi/task1")
!94 = !{i32 2, !"Dwarf Version", i32 4}
!95 = !{i32 2, !"Debug Info Version", i32 3}
!96 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!97 = distinct !DISubprogram(name: "gui_entry_create", scope: !93, file: !93, line: 74, type: !98, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!98 = !DISubroutineType(types: !99)
!99 = !{!31, !36, !36, !36, !36}
!100 = !{}
!101 = !DILocalVariable(name: "xpos", arg: 1, scope: !97, file: !93, line: 74, type: !36)
!102 = !DIExpression()
!103 = !DILocation(line: 74, column: 37, scope: !97)
!104 = !DILocalVariable(name: "ypos", arg: 2, scope: !97, file: !93, line: 74, type: !36)
!105 = !DILocation(line: 74, column: 47, scope: !97)
!106 = !DILocalVariable(name: "width", arg: 3, scope: !97, file: !93, line: 74, type: !36)
!107 = !DILocation(line: 74, column: 57, scope: !97)
!108 = !DILocalVariable(name: "utf8", arg: 4, scope: !97, file: !93, line: 74, type: !36)
!109 = !DILocation(line: 74, column: 68, scope: !97)
!110 = !DILocalVariable(name: "rec", scope: !97, file: !93, line: 76, type: !31)
!111 = !DILocation(line: 76, column: 17, scope: !97)
!112 = !DILocation(line: 78, column: 27, scope: !97)
!113 = !DILocation(line: 78, column: 9, scope: !97)
!114 = !DILocation(line: 78, column: 6, scope: !97)
!115 = !DILocation(line: 79, column: 14, scope: !97)
!116 = !DILocation(line: 79, column: 2, scope: !97)
!117 = !DILocation(line: 79, column: 7, scope: !97)
!118 = !DILocation(line: 79, column: 12, scope: !97)
!119 = !DILocation(line: 80, column: 14, scope: !97)
!120 = !DILocation(line: 80, column: 2, scope: !97)
!121 = !DILocation(line: 80, column: 7, scope: !97)
!122 = !DILocation(line: 80, column: 12, scope: !97)
!123 = !DILocation(line: 81, column: 15, scope: !97)
!124 = !DILocation(line: 81, column: 2, scope: !97)
!125 = !DILocation(line: 81, column: 7, scope: !97)
!126 = !DILocation(line: 81, column: 13, scope: !97)
!127 = !DILocation(line: 82, column: 2, scope: !97)
!128 = !DILocation(line: 82, column: 7, scope: !97)
!129 = !DILocation(line: 82, column: 18, scope: !97)
!130 = !DILocation(line: 83, column: 40, scope: !97)
!131 = !DILocation(line: 83, column: 45, scope: !97)
!132 = !DILocation(line: 83, column: 39, scope: !97)
!133 = !DILocation(line: 83, column: 27, scope: !97)
!134 = !DILocation(line: 83, column: 15, scope: !97)
!135 = !DILocation(line: 83, column: 2, scope: !97)
!136 = !DILocation(line: 83, column: 7, scope: !97)
!137 = !DILocation(line: 83, column: 12, scope: !97)
!138 = !DILocation(line: 84, column: 2, scope: !97)
!139 = !DILocation(line: 84, column: 7, scope: !97)
!140 = !DILocation(line: 84, column: 15, scope: !97)
!141 = !DILocation(line: 85, column: 2, scope: !97)
!142 = !DILocation(line: 85, column: 7, scope: !97)
!143 = !DILocation(line: 85, column: 15, scope: !97)
!144 = !DILocation(line: 86, column: 14, scope: !97)
!145 = !DILocation(line: 86, column: 2, scope: !97)
!146 = !DILocation(line: 86, column: 7, scope: !97)
!147 = !DILocation(line: 86, column: 12, scope: !97)
!148 = !DILocation(line: 87, column: 9, scope: !97)
!149 = !DILocation(line: 87, column: 2, scope: !97)
!150 = distinct !DISubprogram(name: "gui_entry_destroy", scope: !93, file: !93, line: 105, type: !151, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!151 = !DISubroutineType(types: !152)
!152 = !{null, !31}
!153 = !DILocalVariable(name: "entry", arg: 1, scope: !150, file: !93, line: 105, type: !31)
!154 = !DILocation(line: 105, column: 39, scope: !150)
!155 = !DILocalVariable(name: "tmp", scope: !150, file: !93, line: 107, type: !49)
!156 = !DILocation(line: 107, column: 10, scope: !150)
!157 = !DILocation(line: 109, column: 9, scope: !150)
!158 = distinct !{!158, !157}
!159 = !DILocation(line: 109, column: 17, scope: !160)
!160 = !DILexicalBlockFile(scope: !161, file: !93, discriminator: 1)
!161 = distinct !DILexicalBlock(scope: !162, file: !93, line: 109, column: 17)
!162 = distinct !DILexicalBlock(scope: !150, file: !93, line: 109, column: 11)
!163 = !DILocation(line: 109, column: 23, scope: !160)
!164 = !DILocation(line: 109, column: 12, scope: !165)
!165 = !DILexicalBlockFile(scope: !166, file: !93, discriminator: 2)
!166 = distinct !DILexicalBlock(scope: !161, file: !93, line: 109, column: 10)
!167 = !DILocation(line: 109, column: 21, scope: !168)
!168 = !DILexicalBlockFile(scope: !169, file: !93, discriminator: 3)
!169 = distinct !DILexicalBlock(scope: !161, file: !93, line: 109, column: 19)
!170 = !DILocation(line: 109, column: 107, scope: !168)
!171 = !DILocation(line: 109, column: 118, scope: !172)
!172 = !DILexicalBlockFile(scope: !162, file: !93, discriminator: 4)
!173 = !DILocation(line: 111, column: 6, scope: !174)
!174 = distinct !DILexicalBlock(scope: !150, file: !93, line: 111, column: 6)
!175 = !DILocation(line: 111, column: 22, scope: !174)
!176 = !DILocation(line: 111, column: 19, scope: !174)
!177 = !DILocation(line: 111, column: 6, scope: !150)
!178 = !DILocation(line: 112, column: 3, scope: !174)
!179 = !DILocation(line: 114, column: 13, scope: !180)
!180 = distinct !DILexicalBlock(scope: !150, file: !93, line: 114, column: 2)
!181 = !DILocation(line: 114, column: 20, scope: !180)
!182 = !DILocation(line: 114, column: 11, scope: !180)
!183 = !DILocation(line: 114, column: 7, scope: !180)
!184 = !DILocation(line: 114, column: 31, scope: !185)
!185 = !DILexicalBlockFile(scope: !186, file: !93, discriminator: 1)
!186 = distinct !DILexicalBlock(scope: !180, file: !93, line: 114, column: 2)
!187 = !DILocation(line: 114, column: 35, scope: !185)
!188 = !DILocation(line: 114, column: 2, scope: !185)
!189 = !DILocalVariable(name: "rec", scope: !190, file: !93, line: 115, type: !84)
!190 = distinct !DILexicalBlock(scope: !186, file: !93, line: 114, column: 60)
!191 = !DILocation(line: 115, column: 28, scope: !190)
!192 = !DILocation(line: 115, column: 34, scope: !190)
!193 = !DILocation(line: 115, column: 39, scope: !190)
!194 = !DILocation(line: 116, column: 7, scope: !195)
!195 = distinct !DILexicalBlock(scope: !190, file: !93, line: 116, column: 7)
!196 = !DILocation(line: 116, column: 11, scope: !195)
!197 = !DILocation(line: 116, column: 7, scope: !190)
!198 = !DILocation(line: 117, column: 11, scope: !199)
!199 = distinct !DILexicalBlock(scope: !195, file: !93, line: 116, column: 19)
!200 = !DILocation(line: 117, column: 16, scope: !199)
!201 = !DILocation(line: 117, column: 4, scope: !199)
!202 = !DILocation(line: 118, column: 11, scope: !199)
!203 = !DILocation(line: 118, column: 4, scope: !199)
!204 = !DILocation(line: 119, column: 3, scope: !199)
!205 = !DILocation(line: 120, column: 2, scope: !190)
!206 = !DILocation(line: 114, column: 49, scope: !207)
!207 = !DILexicalBlockFile(scope: !186, file: !93, discriminator: 2)
!208 = !DILocation(line: 114, column: 54, scope: !207)
!209 = !DILocation(line: 114, column: 47, scope: !207)
!210 = !DILocation(line: 114, column: 2, scope: !207)
!211 = distinct !{!211, !212}
!212 = !DILocation(line: 114, column: 2, scope: !150)
!213 = !DILocation(line: 121, column: 15, scope: !150)
!214 = !DILocation(line: 121, column: 22, scope: !150)
!215 = !DILocation(line: 121, column: 2, scope: !150)
!216 = !DILocation(line: 123, column: 18, scope: !150)
!217 = !DILocation(line: 123, column: 2, scope: !150)
!218 = !DILocation(line: 124, column: 9, scope: !150)
!219 = !DILocation(line: 124, column: 16, scope: !150)
!220 = !DILocation(line: 124, column: 2, scope: !150)
!221 = !DILocation(line: 125, column: 9, scope: !150)
!222 = !DILocation(line: 125, column: 16, scope: !150)
!223 = !DILocation(line: 125, column: 2, scope: !150)
!224 = !DILocation(line: 126, column: 9, scope: !150)
!225 = !DILocation(line: 126, column: 2, scope: !150)
!226 = !DILocation(line: 127, column: 1, scope: !150)
!227 = !DILocation(line: 127, column: 1, scope: !228)
!228 = !DILexicalBlockFile(scope: !150, file: !93, discriminator: 1)
!229 = distinct !DISubprogram(name: "gui_entry_set_active", scope: !93, file: !93, line: 482, type: !151, isLocal: false, isDefinition: true, scopeLine: 483, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!230 = !DILocalVariable(name: "entry", arg: 1, scope: !229, file: !93, line: 482, type: !31)
!231 = !DILocation(line: 482, column: 42, scope: !229)
!232 = !DILocation(line: 484, column: 17, scope: !229)
!233 = !DILocation(line: 484, column: 15, scope: !229)
!234 = !DILocation(line: 486, column: 6, scope: !235)
!235 = distinct !DILexicalBlock(scope: !229, file: !93, line: 486, column: 6)
!236 = !DILocation(line: 486, column: 12, scope: !235)
!237 = !DILocation(line: 486, column: 6, scope: !229)
!238 = !DILocation(line: 487, column: 20, scope: !239)
!239 = distinct !DILexicalBlock(scope: !235, file: !93, line: 486, column: 20)
!240 = !DILocation(line: 487, column: 27, scope: !239)
!241 = !DILocation(line: 487, column: 34, scope: !239)
!242 = !DILocation(line: 487, column: 41, scope: !239)
!243 = !DILocation(line: 487, column: 32, scope: !239)
!244 = !DILocation(line: 488, column: 6, scope: !239)
!245 = !DILocation(line: 488, column: 13, scope: !239)
!246 = !DILocation(line: 487, column: 48, scope: !239)
!247 = !DILocation(line: 488, column: 24, scope: !239)
!248 = !DILocation(line: 488, column: 31, scope: !239)
!249 = !DILocation(line: 487, column: 3, scope: !239)
!250 = !DILocation(line: 489, column: 3, scope: !239)
!251 = !DILocation(line: 490, column: 2, scope: !239)
!252 = !DILocation(line: 491, column: 1, scope: !229)
!253 = distinct !DISubprogram(name: "destroy_extents", scope: !93, file: !93, line: 90, type: !151, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!254 = !DILocalVariable(name: "entry", arg: 1, scope: !253, file: !93, line: 90, type: !31)
!255 = !DILocation(line: 90, column: 44, scope: !253)
!256 = !DILocation(line: 92, column: 6, scope: !257)
!257 = distinct !DILexicalBlock(scope: !253, file: !93, line: 92, column: 6)
!258 = !DILocation(line: 92, column: 13, scope: !257)
!259 = !DILocation(line: 92, column: 6, scope: !253)
!260 = !DILocalVariable(name: "i", scope: !261, file: !93, line: 93, type: !36)
!261 = distinct !DILexicalBlock(scope: !257, file: !93, line: 92, column: 27)
!262 = !DILocation(line: 93, column: 7, scope: !261)
!263 = !DILocation(line: 94, column: 10, scope: !264)
!264 = distinct !DILexicalBlock(scope: !261, file: !93, line: 94, column: 3)
!265 = !DILocation(line: 94, column: 8, scope: !264)
!266 = !DILocation(line: 94, column: 15, scope: !267)
!267 = !DILexicalBlockFile(scope: !268, file: !93, discriminator: 1)
!268 = distinct !DILexicalBlock(scope: !264, file: !93, line: 94, column: 3)
!269 = !DILocation(line: 94, column: 19, scope: !267)
!270 = !DILocation(line: 94, column: 26, scope: !267)
!271 = !DILocation(line: 94, column: 17, scope: !267)
!272 = !DILocation(line: 94, column: 3, scope: !267)
!273 = !DILocation(line: 95, column: 23, scope: !274)
!274 = distinct !DILexicalBlock(scope: !275, file: !93, line: 95, column: 8)
!275 = distinct !DILexicalBlock(scope: !268, file: !93, line: 94, column: 43)
!276 = !DILocation(line: 95, column: 8, scope: !274)
!277 = !DILocation(line: 95, column: 15, scope: !274)
!278 = !DILocation(line: 95, column: 26, scope: !274)
!279 = !DILocation(line: 95, column: 8, scope: !275)
!280 = !DILocation(line: 96, column: 27, scope: !281)
!281 = distinct !DILexicalBlock(scope: !274, file: !93, line: 95, column: 34)
!282 = !DILocation(line: 96, column: 12, scope: !281)
!283 = !DILocation(line: 96, column: 19, scope: !281)
!284 = !DILocation(line: 96, column: 5, scope: !281)
!285 = !DILocation(line: 97, column: 4, scope: !281)
!286 = !DILocation(line: 98, column: 3, scope: !275)
!287 = !DILocation(line: 94, column: 39, scope: !288)
!288 = !DILexicalBlockFile(scope: !268, file: !93, discriminator: 2)
!289 = !DILocation(line: 94, column: 3, scope: !288)
!290 = distinct !{!290, !291}
!291 = !DILocation(line: 94, column: 3, scope: !261)
!292 = !DILocation(line: 99, column: 2, scope: !261)
!293 = !DILocation(line: 100, column: 9, scope: !253)
!294 = !DILocation(line: 100, column: 16, scope: !253)
!295 = !DILocation(line: 100, column: 2, scope: !253)
!296 = !DILocation(line: 101, column: 2, scope: !253)
!297 = !DILocation(line: 101, column: 9, scope: !253)
!298 = !DILocation(line: 101, column: 17, scope: !253)
!299 = !DILocation(line: 102, column: 2, scope: !253)
!300 = !DILocation(line: 102, column: 9, scope: !253)
!301 = !DILocation(line: 102, column: 22, scope: !253)
!302 = !DILocation(line: 103, column: 1, scope: !253)
!303 = distinct !DISubprogram(name: "unichars_to_big5", scope: !93, file: !93, line: 132, type: !304, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!304 = !DISubroutineType(types: !305)
!305 = !{null, !306, !46}
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!308 = !DILocalVariable(name: "str", arg: 1, scope: !303, file: !93, line: 132, type: !306)
!309 = !DILocation(line: 132, column: 38, scope: !303)
!310 = !DILocalVariable(name: "out", arg: 2, scope: !303, file: !93, line: 132, type: !46)
!311 = !DILocation(line: 132, column: 49, scope: !303)
!312 = !DILocation(line: 134, column: 2, scope: !303)
!313 = !DILocation(line: 134, column: 10, scope: !314)
!314 = !DILexicalBlockFile(scope: !315, file: !93, discriminator: 1)
!315 = distinct !DILexicalBlock(scope: !316, file: !93, line: 134, column: 2)
!316 = distinct !DILexicalBlock(scope: !303, file: !93, line: 134, column: 2)
!317 = !DILocation(line: 134, column: 9, scope: !314)
!318 = !DILocation(line: 134, column: 14, scope: !314)
!319 = !DILocation(line: 134, column: 2, scope: !314)
!320 = !DILocation(line: 135, column: 8, scope: !321)
!321 = distinct !DILexicalBlock(scope: !322, file: !93, line: 135, column: 7)
!322 = distinct !DILexicalBlock(scope: !315, file: !93, line: 134, column: 30)
!323 = !DILocation(line: 135, column: 7, scope: !321)
!324 = !DILocation(line: 135, column: 12, scope: !321)
!325 = !DILocation(line: 135, column: 7, scope: !322)
!326 = !DILocation(line: 136, column: 15, scope: !321)
!327 = !DILocation(line: 136, column: 14, scope: !321)
!328 = !DILocation(line: 136, column: 19, scope: !321)
!329 = !DILocation(line: 136, column: 25, scope: !321)
!330 = !DILocation(line: 136, column: 13, scope: !321)
!331 = !DILocation(line: 136, column: 8, scope: !321)
!332 = !DILocation(line: 136, column: 11, scope: !321)
!333 = !DILocation(line: 136, column: 4, scope: !321)
!334 = !DILocation(line: 137, column: 13, scope: !322)
!335 = !DILocation(line: 137, column: 12, scope: !322)
!336 = !DILocation(line: 137, column: 17, scope: !322)
!337 = !DILocation(line: 137, column: 7, scope: !322)
!338 = !DILocation(line: 137, column: 10, scope: !322)
!339 = !DILocation(line: 138, column: 2, scope: !322)
!340 = !DILocation(line: 134, column: 26, scope: !341)
!341 = !DILexicalBlockFile(scope: !315, file: !93, discriminator: 2)
!342 = !DILocation(line: 134, column: 2, scope: !341)
!343 = distinct !{!343, !312}
!344 = !DILocation(line: 139, column: 3, scope: !303)
!345 = !DILocation(line: 139, column: 7, scope: !303)
!346 = !DILocation(line: 140, column: 1, scope: !303)
!347 = distinct !DISubprogram(name: "strlen_big5", scope: !93, file: !93, line: 142, type: !348, isLocal: false, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!348 = !DISubroutineType(types: !349)
!349 = !{!36, !78}
!350 = !DILocalVariable(name: "str", arg: 1, scope: !347, file: !93, line: 142, type: !78)
!351 = !DILocation(line: 142, column: 38, scope: !347)
!352 = !DILocalVariable(name: "len", scope: !347, file: !93, line: 144, type: !36)
!353 = !DILocation(line: 144, column: 6, scope: !347)
!354 = !DILocation(line: 146, column: 2, scope: !347)
!355 = !DILocation(line: 146, column: 10, scope: !356)
!356 = !DILexicalBlockFile(scope: !347, file: !93, discriminator: 1)
!357 = !DILocation(line: 146, column: 9, scope: !356)
!358 = !DILocation(line: 146, column: 14, scope: !356)
!359 = !DILocation(line: 146, column: 2, scope: !356)
!360 = !DILocation(line: 147, column: 18, scope: !361)
!361 = distinct !DILexicalBlock(scope: !362, file: !93, line: 147, column: 7)
!362 = distinct !DILexicalBlock(scope: !347, file: !93, line: 146, column: 23)
!363 = !DILocation(line: 147, column: 17, scope: !361)
!364 = !DILocation(line: 147, column: 14, scope: !361)
!365 = !DILocation(line: 147, column: 26, scope: !361)
!366 = !DILocation(line: 147, column: 30, scope: !367)
!367 = !DILexicalBlockFile(scope: !361, file: !93, discriminator: 1)
!368 = !DILocation(line: 147, column: 29, scope: !367)
!369 = !DILocation(line: 147, column: 38, scope: !367)
!370 = !DILocation(line: 147, column: 47, scope: !367)
!371 = !DILocation(line: 147, column: 62, scope: !372)
!372 = !DILexicalBlockFile(scope: !361, file: !93, discriminator: 2)
!373 = !DILocation(line: 147, column: 61, scope: !372)
!374 = !DILocation(line: 147, column: 58, scope: !372)
!375 = !DILocation(line: 147, column: 70, scope: !372)
!376 = !DILocation(line: 147, column: 74, scope: !377)
!377 = !DILexicalBlockFile(scope: !361, file: !93, discriminator: 3)
!378 = !DILocation(line: 147, column: 73, scope: !377)
!379 = !DILocation(line: 147, column: 82, scope: !377)
!380 = !DILocation(line: 147, column: 91, scope: !377)
!381 = !DILocation(line: 147, column: 104, scope: !382)
!382 = !DILexicalBlockFile(scope: !361, file: !93, discriminator: 4)
!383 = !DILocation(line: 147, column: 103, scope: !382)
!384 = !DILocation(line: 147, column: 100, scope: !382)
!385 = !DILocation(line: 147, column: 112, scope: !382)
!386 = !DILocation(line: 147, column: 116, scope: !387)
!387 = !DILexicalBlockFile(scope: !361, file: !93, discriminator: 5)
!388 = !DILocation(line: 147, column: 115, scope: !387)
!389 = !DILocation(line: 147, column: 124, scope: !387)
!390 = !DILocation(line: 147, column: 7, scope: !387)
!391 = !DILocation(line: 148, column: 7, scope: !361)
!392 = !DILocation(line: 148, column: 4, scope: !361)
!393 = !DILocation(line: 149, column: 6, scope: !362)
!394 = !DILocation(line: 150, column: 6, scope: !362)
!395 = !DILocation(line: 146, column: 2, scope: !396)
!396 = !DILexicalBlockFile(scope: !347, file: !93, discriminator: 2)
!397 = distinct !{!397, !354}
!398 = !DILocation(line: 152, column: 9, scope: !347)
!399 = !DILocation(line: 152, column: 2, scope: !347)
!400 = distinct !DISubprogram(name: "unichars_to_big5_with_pos", scope: !93, file: !93, line: 155, type: !401, isLocal: false, isDefinition: true, scopeLine: 156, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !306, !36, !46, !403}
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!404 = !DILocalVariable(name: "str", arg: 1, scope: !400, file: !93, line: 155, type: !306)
!405 = !DILocation(line: 155, column: 47, scope: !400)
!406 = !DILocalVariable(name: "spos", arg: 2, scope: !400, file: !93, line: 155, type: !36)
!407 = !DILocation(line: 155, column: 56, scope: !400)
!408 = !DILocalVariable(name: "out", arg: 3, scope: !400, file: !93, line: 155, type: !46)
!409 = !DILocation(line: 155, column: 68, scope: !400)
!410 = !DILocalVariable(name: "opos", arg: 4, scope: !400, file: !93, line: 155, type: !403)
!411 = !DILocation(line: 155, column: 78, scope: !400)
!412 = !DILocalVariable(name: "sstart", scope: !400, file: !93, line: 157, type: !306)
!413 = !DILocation(line: 157, column: 17, scope: !400)
!414 = !DILocation(line: 157, column: 26, scope: !400)
!415 = !DILocalVariable(name: "ostart", scope: !400, file: !93, line: 158, type: !46)
!416 = !DILocation(line: 158, column: 8, scope: !400)
!417 = !DILocation(line: 158, column: 17, scope: !400)
!418 = !DILocation(line: 160, column: 3, scope: !400)
!419 = !DILocation(line: 160, column: 8, scope: !400)
!420 = !DILocation(line: 161, column: 2, scope: !400)
!421 = !DILocation(line: 161, column: 9, scope: !422)
!422 = !DILexicalBlockFile(scope: !400, file: !93, discriminator: 1)
!423 = !DILocation(line: 161, column: 8, scope: !422)
!424 = !DILocation(line: 161, column: 13, scope: !422)
!425 = !DILocation(line: 161, column: 2, scope: !422)
!426 = !DILocation(line: 163, column: 7, scope: !427)
!427 = distinct !DILexicalBlock(scope: !428, file: !93, line: 163, column: 6)
!428 = distinct !DILexicalBlock(scope: !400, file: !93, line: 162, column: 2)
!429 = !DILocation(line: 163, column: 6, scope: !427)
!430 = !DILocation(line: 163, column: 11, scope: !427)
!431 = !DILocation(line: 163, column: 6, scope: !428)
!432 = !DILocation(line: 164, column: 16, scope: !427)
!433 = !DILocation(line: 164, column: 15, scope: !427)
!434 = !DILocation(line: 164, column: 20, scope: !427)
!435 = !DILocation(line: 164, column: 26, scope: !427)
!436 = !DILocation(line: 164, column: 14, scope: !427)
!437 = !DILocation(line: 164, column: 9, scope: !427)
!438 = !DILocation(line: 164, column: 12, scope: !427)
!439 = !DILocation(line: 164, column: 4, scope: !427)
!440 = !DILocation(line: 165, column: 14, scope: !428)
!441 = !DILocation(line: 165, column: 13, scope: !428)
!442 = !DILocation(line: 165, column: 18, scope: !428)
!443 = !DILocation(line: 165, column: 8, scope: !428)
!444 = !DILocation(line: 165, column: 11, scope: !428)
!445 = !DILocation(line: 166, column: 7, scope: !428)
!446 = !DILocation(line: 167, column: 6, scope: !447)
!447 = distinct !DILexicalBlock(scope: !428, file: !93, line: 167, column: 6)
!448 = !DILocation(line: 167, column: 12, scope: !447)
!449 = !DILocation(line: 167, column: 10, scope: !447)
!450 = !DILocation(line: 167, column: 22, scope: !447)
!451 = !DILocation(line: 167, column: 19, scope: !447)
!452 = !DILocation(line: 167, column: 6, scope: !428)
!453 = !DILocation(line: 168, column: 12, scope: !447)
!454 = !DILocation(line: 168, column: 18, scope: !447)
!455 = !DILocation(line: 168, column: 16, scope: !447)
!456 = !DILocation(line: 168, column: 5, scope: !447)
!457 = !DILocation(line: 168, column: 10, scope: !447)
!458 = !DILocation(line: 168, column: 4, scope: !447)
!459 = !DILocation(line: 161, column: 2, scope: !460)
!460 = !DILexicalBlockFile(scope: !400, file: !93, discriminator: 2)
!461 = distinct !{!461, !420}
!462 = !DILocation(line: 170, column: 3, scope: !400)
!463 = !DILocation(line: 170, column: 7, scope: !400)
!464 = !DILocation(line: 171, column: 1, scope: !400)
!465 = distinct !DISubprogram(name: "big5_to_unichars", scope: !93, file: !93, line: 173, type: !466, isLocal: false, isDefinition: true, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!466 = !DISubroutineType(types: !467)
!467 = !{null, !76, !39}
!468 = !DILocalVariable(name: "str", arg: 1, scope: !465, file: !93, line: 173, type: !76)
!469 = !DILocation(line: 173, column: 35, scope: !465)
!470 = !DILocalVariable(name: "out", arg: 2, scope: !465, file: !93, line: 173, type: !39)
!471 = !DILocation(line: 173, column: 49, scope: !465)
!472 = !DILocalVariable(name: "p", scope: !465, file: !93, line: 175, type: !78)
!473 = !DILocation(line: 175, column: 23, scope: !465)
!474 = !DILocation(line: 175, column: 51, scope: !465)
!475 = !DILocation(line: 177, column: 2, scope: !465)
!476 = !DILocation(line: 177, column: 10, scope: !477)
!477 = !DILexicalBlockFile(scope: !465, file: !93, discriminator: 1)
!478 = !DILocation(line: 177, column: 9, scope: !477)
!479 = !DILocation(line: 177, column: 12, scope: !477)
!480 = !DILocation(line: 177, column: 2, scope: !477)
!481 = !DILocation(line: 178, column: 18, scope: !482)
!482 = distinct !DILexicalBlock(scope: !483, file: !93, line: 178, column: 7)
!483 = distinct !DILexicalBlock(scope: !465, file: !93, line: 177, column: 21)
!484 = !DILocation(line: 178, column: 17, scope: !482)
!485 = !DILocation(line: 178, column: 14, scope: !482)
!486 = !DILocation(line: 178, column: 24, scope: !482)
!487 = !DILocation(line: 178, column: 28, scope: !488)
!488 = !DILexicalBlockFile(scope: !482, file: !93, discriminator: 1)
!489 = !DILocation(line: 178, column: 27, scope: !488)
!490 = !DILocation(line: 178, column: 34, scope: !488)
!491 = !DILocation(line: 178, column: 43, scope: !488)
!492 = !DILocation(line: 178, column: 58, scope: !493)
!493 = !DILexicalBlockFile(scope: !482, file: !93, discriminator: 2)
!494 = !DILocation(line: 178, column: 57, scope: !493)
!495 = !DILocation(line: 178, column: 54, scope: !493)
!496 = !DILocation(line: 178, column: 64, scope: !493)
!497 = !DILocation(line: 178, column: 68, scope: !498)
!498 = !DILexicalBlockFile(scope: !482, file: !93, discriminator: 3)
!499 = !DILocation(line: 178, column: 67, scope: !498)
!500 = !DILocation(line: 178, column: 74, scope: !498)
!501 = !DILocation(line: 178, column: 83, scope: !498)
!502 = !DILocation(line: 178, column: 96, scope: !503)
!503 = !DILexicalBlockFile(scope: !482, file: !93, discriminator: 4)
!504 = !DILocation(line: 178, column: 95, scope: !503)
!505 = !DILocation(line: 178, column: 92, scope: !503)
!506 = !DILocation(line: 178, column: 102, scope: !503)
!507 = !DILocation(line: 178, column: 106, scope: !508)
!508 = !DILexicalBlockFile(scope: !482, file: !93, discriminator: 5)
!509 = !DILocation(line: 178, column: 105, scope: !508)
!510 = !DILocation(line: 178, column: 112, scope: !508)
!511 = !DILocation(line: 178, column: 7, scope: !508)
!512 = !DILocation(line: 179, column: 13, scope: !513)
!513 = distinct !DILexicalBlock(scope: !482, file: !93, line: 178, column: 125)
!514 = !DILocation(line: 179, column: 18, scope: !513)
!515 = !DILocation(line: 179, column: 25, scope: !513)
!516 = !DILocation(line: 179, column: 23, scope: !513)
!517 = !DILocation(line: 179, column: 8, scope: !513)
!518 = !DILocation(line: 179, column: 11, scope: !513)
!519 = !DILocation(line: 180, column: 6, scope: !513)
!520 = !DILocation(line: 181, column: 3, scope: !513)
!521 = !DILocation(line: 182, column: 15, scope: !522)
!522 = distinct !DILexicalBlock(scope: !482, file: !93, line: 181, column: 10)
!523 = !DILocation(line: 182, column: 13, scope: !522)
!524 = !DILocation(line: 182, column: 8, scope: !522)
!525 = !DILocation(line: 182, column: 11, scope: !522)
!526 = !DILocation(line: 177, column: 2, scope: !527)
!527 = !DILexicalBlockFile(scope: !465, file: !93, discriminator: 2)
!528 = distinct !{!528, !475}
!529 = !DILocation(line: 185, column: 3, scope: !465)
!530 = !DILocation(line: 185, column: 7, scope: !465)
!531 = !DILocation(line: 186, column: 1, scope: !465)
!532 = distinct !DISubprogram(name: "gui_entry_move", scope: !93, file: !93, line: 446, type: !533, isLocal: false, isDefinition: true, scopeLine: 447, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!533 = !DISubroutineType(types: !534)
!534 = !{null, !31, !36, !36, !36}
!535 = !DILocalVariable(name: "entry", arg: 1, scope: !532, file: !93, line: 446, type: !31)
!536 = !DILocation(line: 446, column: 36, scope: !532)
!537 = !DILocalVariable(name: "xpos", arg: 2, scope: !532, file: !93, line: 446, type: !36)
!538 = !DILocation(line: 446, column: 47, scope: !532)
!539 = !DILocalVariable(name: "ypos", arg: 3, scope: !532, file: !93, line: 446, type: !36)
!540 = !DILocation(line: 446, column: 57, scope: !532)
!541 = !DILocalVariable(name: "width", arg: 4, scope: !532, file: !93, line: 446, type: !36)
!542 = !DILocation(line: 446, column: 67, scope: !532)
!543 = !DILocalVariable(name: "old_width", scope: !532, file: !93, line: 448, type: !36)
!544 = !DILocation(line: 448, column: 6, scope: !532)
!545 = !DILocation(line: 450, column: 9, scope: !532)
!546 = distinct !{!546, !545}
!547 = !DILocation(line: 450, column: 17, scope: !548)
!548 = !DILexicalBlockFile(scope: !549, file: !93, discriminator: 1)
!549 = distinct !DILexicalBlock(scope: !550, file: !93, line: 450, column: 17)
!550 = distinct !DILexicalBlock(scope: !532, file: !93, line: 450, column: 11)
!551 = !DILocation(line: 450, column: 23, scope: !548)
!552 = !DILocation(line: 450, column: 12, scope: !553)
!553 = !DILexicalBlockFile(scope: !554, file: !93, discriminator: 2)
!554 = distinct !DILexicalBlock(scope: !549, file: !93, line: 450, column: 10)
!555 = !DILocation(line: 450, column: 21, scope: !556)
!556 = !DILexicalBlockFile(scope: !557, file: !93, discriminator: 3)
!557 = distinct !DILexicalBlock(scope: !549, file: !93, line: 450, column: 19)
!558 = !DILocation(line: 450, column: 107, scope: !556)
!559 = !DILocation(line: 450, column: 118, scope: !560)
!560 = !DILexicalBlockFile(scope: !550, file: !93, discriminator: 4)
!561 = !DILocation(line: 452, column: 6, scope: !562)
!562 = distinct !DILexicalBlock(scope: !532, file: !93, line: 452, column: 6)
!563 = !DILocation(line: 452, column: 13, scope: !562)
!564 = !DILocation(line: 452, column: 21, scope: !562)
!565 = !DILocation(line: 452, column: 18, scope: !562)
!566 = !DILocation(line: 452, column: 26, scope: !562)
!567 = !DILocation(line: 452, column: 29, scope: !568)
!568 = !DILexicalBlockFile(scope: !562, file: !93, discriminator: 1)
!569 = !DILocation(line: 452, column: 36, scope: !568)
!570 = !DILocation(line: 452, column: 44, scope: !568)
!571 = !DILocation(line: 452, column: 41, scope: !568)
!572 = !DILocation(line: 452, column: 6, scope: !568)
!573 = !DILocation(line: 454, column: 17, scope: !574)
!574 = distinct !DILexicalBlock(scope: !562, file: !93, line: 452, column: 50)
!575 = !DILocation(line: 454, column: 3, scope: !574)
!576 = !DILocation(line: 454, column: 10, scope: !574)
!577 = !DILocation(line: 454, column: 15, scope: !574)
!578 = !DILocation(line: 455, column: 17, scope: !574)
!579 = !DILocation(line: 455, column: 3, scope: !574)
!580 = !DILocation(line: 455, column: 10, scope: !574)
!581 = !DILocation(line: 455, column: 15, scope: !574)
!582 = !DILocation(line: 456, column: 18, scope: !574)
!583 = !DILocation(line: 456, column: 3, scope: !574)
!584 = !DILocation(line: 456, column: 10, scope: !574)
!585 = !DILocation(line: 456, column: 16, scope: !574)
!586 = !DILocation(line: 457, column: 20, scope: !574)
!587 = !DILocation(line: 457, column: 3, scope: !574)
!588 = !DILocation(line: 458, column: 17, scope: !574)
!589 = !DILocation(line: 461, column: 6, scope: !590)
!590 = distinct !DILexicalBlock(scope: !532, file: !93, line: 461, column: 6)
!591 = !DILocation(line: 461, column: 13, scope: !590)
!592 = !DILocation(line: 461, column: 22, scope: !590)
!593 = !DILocation(line: 461, column: 19, scope: !590)
!594 = !DILocation(line: 461, column: 6, scope: !532)
!595 = !DILocation(line: 462, column: 17, scope: !590)
!596 = !DILocation(line: 464, column: 6, scope: !597)
!597 = distinct !DILexicalBlock(scope: !532, file: !93, line: 464, column: 6)
!598 = !DILocation(line: 464, column: 14, scope: !597)
!599 = !DILocation(line: 464, column: 21, scope: !597)
!600 = !DILocation(line: 464, column: 12, scope: !597)
!601 = !DILocation(line: 464, column: 6, scope: !532)
!602 = !DILocation(line: 466, column: 29, scope: !603)
!603 = distinct !DILexicalBlock(scope: !597, file: !93, line: 464, column: 28)
!604 = !DILocation(line: 466, column: 27, scope: !603)
!605 = !DILocation(line: 467, column: 18, scope: !603)
!606 = !DILocation(line: 467, column: 3, scope: !603)
!607 = !DILocation(line: 467, column: 10, scope: !603)
!608 = !DILocation(line: 467, column: 16, scope: !603)
!609 = !DILocation(line: 468, column: 25, scope: !603)
!610 = !DILocation(line: 468, column: 32, scope: !603)
!611 = !DILocation(line: 468, column: 3, scope: !603)
!612 = !DILocation(line: 469, column: 2, scope: !603)
!613 = !DILocation(line: 472, column: 18, scope: !614)
!614 = distinct !DILexicalBlock(scope: !597, file: !93, line: 469, column: 9)
!615 = !DILocation(line: 472, column: 3, scope: !614)
!616 = !DILocation(line: 472, column: 10, scope: !614)
!617 = !DILocation(line: 472, column: 16, scope: !614)
!618 = !DILocation(line: 473, column: 7, scope: !619)
!619 = distinct !DILexicalBlock(scope: !614, file: !93, line: 473, column: 7)
!620 = !DILocation(line: 473, column: 14, scope: !619)
!621 = !DILocation(line: 473, column: 20, scope: !619)
!622 = !DILocation(line: 473, column: 27, scope: !619)
!623 = !DILocation(line: 473, column: 18, scope: !619)
!624 = !DILocation(line: 474, column: 7, scope: !619)
!625 = !DILocation(line: 474, column: 14, scope: !619)
!626 = !DILocation(line: 474, column: 19, scope: !619)
!627 = !DILocation(line: 474, column: 24, scope: !619)
!628 = !DILocation(line: 474, column: 31, scope: !619)
!629 = !DILocation(line: 474, column: 22, scope: !619)
!630 = !DILocation(line: 473, column: 36, scope: !619)
!631 = !DILocation(line: 473, column: 7, scope: !614)
!632 = !DILocation(line: 475, column: 25, scope: !633)
!633 = distinct !DILexicalBlock(scope: !619, file: !93, line: 474, column: 42)
!634 = !DILocation(line: 475, column: 4, scope: !633)
!635 = !DILocation(line: 476, column: 3, scope: !633)
!636 = !DILocation(line: 479, column: 17, scope: !532)
!637 = !DILocation(line: 479, column: 2, scope: !532)
!638 = !DILocation(line: 480, column: 1, scope: !532)
!639 = !DILocation(line: 480, column: 1, scope: !640)
!640 = !DILexicalBlockFile(scope: !532, file: !93, discriminator: 1)
!641 = distinct !DISubprogram(name: "gui_entry_redraw", scope: !93, file: !93, line: 1259, type: !151, isLocal: false, isDefinition: true, scopeLine: 1260, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!642 = !DILocalVariable(name: "entry", arg: 1, scope: !641, file: !93, line: 1259, type: !31)
!643 = !DILocation(line: 1259, column: 38, scope: !641)
!644 = !DILocation(line: 1261, column: 9, scope: !641)
!645 = distinct !{!645, !644}
!646 = !DILocation(line: 1261, column: 17, scope: !647)
!647 = !DILexicalBlockFile(scope: !648, file: !93, discriminator: 1)
!648 = distinct !DILexicalBlock(scope: !649, file: !93, line: 1261, column: 17)
!649 = distinct !DILexicalBlock(scope: !641, file: !93, line: 1261, column: 11)
!650 = !DILocation(line: 1261, column: 23, scope: !647)
!651 = !DILocation(line: 1261, column: 12, scope: !652)
!652 = !DILexicalBlockFile(scope: !653, file: !93, discriminator: 2)
!653 = distinct !DILexicalBlock(scope: !648, file: !93, line: 1261, column: 10)
!654 = !DILocation(line: 1261, column: 21, scope: !655)
!655 = !DILexicalBlockFile(scope: !656, file: !93, discriminator: 3)
!656 = distinct !DILexicalBlock(scope: !648, file: !93, line: 1261, column: 19)
!657 = !DILocation(line: 1261, column: 107, scope: !655)
!658 = !DILocation(line: 1261, column: 118, scope: !659)
!659 = !DILexicalBlockFile(scope: !649, file: !93, discriminator: 4)
!660 = !DILocation(line: 1263, column: 23, scope: !641)
!661 = !DILocation(line: 1263, column: 2, scope: !641)
!662 = !DILocation(line: 1264, column: 31, scope: !641)
!663 = !DILocation(line: 1264, column: 9, scope: !641)
!664 = !DILocation(line: 1265, column: 23, scope: !641)
!665 = !DILocation(line: 1265, column: 2, scope: !641)
!666 = !DILocation(line: 1266, column: 17, scope: !641)
!667 = !DILocation(line: 1266, column: 2, scope: !641)
!668 = !DILocation(line: 1267, column: 1, scope: !641)
!669 = !DILocation(line: 1267, column: 1, scope: !670)
!670 = !DILexicalBlockFile(scope: !641, file: !93, discriminator: 1)
!671 = distinct !DISubprogram(name: "gui_entry_redraw_from", scope: !93, file: !93, line: 436, type: !672, isLocal: true, isDefinition: true, scopeLine: 437, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!672 = !DISubroutineType(types: !673)
!673 = !{null, !31, !36}
!674 = !DILocalVariable(name: "entry", arg: 1, scope: !671, file: !93, line: 436, type: !31)
!675 = !DILocation(line: 436, column: 50, scope: !671)
!676 = !DILocalVariable(name: "pos", arg: 2, scope: !671, file: !93, line: 436, type: !36)
!677 = !DILocation(line: 436, column: 61, scope: !671)
!678 = !DILocation(line: 438, column: 9, scope: !671)
!679 = !DILocation(line: 438, column: 16, scope: !671)
!680 = !DILocation(line: 438, column: 6, scope: !671)
!681 = !DILocation(line: 439, column: 6, scope: !682)
!682 = distinct !DILexicalBlock(scope: !671, file: !93, line: 439, column: 6)
!683 = !DILocation(line: 439, column: 10, scope: !682)
!684 = !DILocation(line: 439, column: 6, scope: !671)
!685 = !DILocation(line: 439, column: 19, scope: !686)
!686 = !DILexicalBlockFile(scope: !682, file: !93, discriminator: 1)
!687 = !DILocation(line: 439, column: 15, scope: !686)
!688 = !DILocation(line: 441, column: 6, scope: !689)
!689 = distinct !DILexicalBlock(scope: !671, file: !93, line: 441, column: 6)
!690 = !DILocation(line: 441, column: 13, scope: !689)
!691 = !DILocation(line: 441, column: 32, scope: !689)
!692 = !DILocation(line: 441, column: 38, scope: !689)
!693 = !DILocation(line: 442, column: 6, scope: !689)
!694 = !DILocation(line: 442, column: 13, scope: !689)
!695 = !DILocation(line: 442, column: 34, scope: !689)
!696 = !DILocation(line: 442, column: 32, scope: !689)
!697 = !DILocation(line: 441, column: 6, scope: !698)
!698 = !DILexicalBlockFile(scope: !671, file: !93, discriminator: 1)
!699 = !DILocation(line: 443, column: 31, scope: !689)
!700 = !DILocation(line: 443, column: 3, scope: !689)
!701 = !DILocation(line: 443, column: 10, scope: !689)
!702 = !DILocation(line: 443, column: 29, scope: !689)
!703 = !DILocation(line: 444, column: 1, scope: !671)
!704 = distinct !DISubprogram(name: "gui_entry_fix_cursor", scope: !93, file: !93, line: 263, type: !151, isLocal: true, isDefinition: true, scopeLine: 264, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!705 = !DILocalVariable(name: "entry", arg: 1, scope: !704, file: !93, line: 263, type: !31)
!706 = !DILocation(line: 263, column: 49, scope: !704)
!707 = !DILocalVariable(name: "old_scrstart", scope: !704, file: !93, line: 265, type: !36)
!708 = !DILocation(line: 265, column: 6, scope: !704)
!709 = !DILocalVariable(name: "start", scope: !704, file: !93, line: 268, type: !36)
!710 = !DILocation(line: 268, column: 6, scope: !704)
!711 = !DILocation(line: 268, column: 25, scope: !704)
!712 = !DILocation(line: 268, column: 32, scope: !704)
!713 = !DILocation(line: 268, column: 39, scope: !704)
!714 = !DILocation(line: 268, column: 14, scope: !704)
!715 = !DILocalVariable(name: "now", scope: !704, file: !93, line: 269, type: !36)
!716 = !DILocation(line: 269, column: 6, scope: !704)
!717 = !DILocation(line: 269, column: 23, scope: !704)
!718 = !DILocation(line: 269, column: 30, scope: !704)
!719 = !DILocation(line: 269, column: 37, scope: !704)
!720 = !DILocation(line: 269, column: 12, scope: !704)
!721 = !DILocation(line: 271, column: 17, scope: !704)
!722 = !DILocation(line: 271, column: 24, scope: !704)
!723 = !DILocation(line: 271, column: 15, scope: !704)
!724 = !DILocation(line: 272, column: 6, scope: !725)
!725 = distinct !DILexicalBlock(scope: !704, file: !93, line: 272, column: 6)
!726 = !DILocation(line: 272, column: 10, scope: !725)
!727 = !DILocation(line: 272, column: 9, scope: !725)
!728 = !DILocation(line: 272, column: 18, scope: !725)
!729 = !DILocation(line: 272, column: 25, scope: !725)
!730 = !DILocation(line: 272, column: 31, scope: !725)
!731 = !DILocation(line: 272, column: 37, scope: !725)
!732 = !DILocation(line: 272, column: 44, scope: !725)
!733 = !DILocation(line: 272, column: 35, scope: !725)
!734 = !DILocation(line: 272, column: 16, scope: !725)
!735 = !DILocation(line: 272, column: 54, scope: !725)
!736 = !DILocation(line: 272, column: 57, scope: !737)
!737 = !DILexicalBlockFile(scope: !725, file: !93, discriminator: 1)
!738 = !DILocation(line: 272, column: 61, scope: !737)
!739 = !DILocation(line: 272, column: 60, scope: !737)
!740 = !DILocation(line: 272, column: 67, scope: !737)
!741 = !DILocation(line: 272, column: 6, scope: !737)
!742 = !DILocation(line: 273, column: 19, scope: !743)
!743 = distinct !DILexicalBlock(scope: !725, file: !93, line: 272, column: 72)
!744 = !DILocation(line: 273, column: 23, scope: !743)
!745 = !DILocation(line: 273, column: 22, scope: !743)
!746 = !DILocation(line: 273, column: 3, scope: !743)
!747 = !DILocation(line: 273, column: 10, scope: !743)
!748 = !DILocation(line: 273, column: 17, scope: !743)
!749 = !DILocation(line: 274, column: 2, scope: !743)
!750 = !DILocation(line: 274, column: 13, scope: !751)
!751 = !DILexicalBlockFile(scope: !752, file: !93, discriminator: 1)
!752 = distinct !DILexicalBlock(scope: !725, file: !93, line: 274, column: 13)
!753 = !DILocation(line: 274, column: 19, scope: !751)
!754 = !DILocation(line: 274, column: 26, scope: !751)
!755 = !DILocation(line: 274, column: 32, scope: !751)
!756 = !DILocation(line: 274, column: 38, scope: !751)
!757 = !DILocation(line: 274, column: 45, scope: !751)
!758 = !DILocation(line: 274, column: 36, scope: !751)
!759 = !DILocation(line: 274, column: 17, scope: !751)
!760 = !DILocation(line: 275, column: 3, scope: !761)
!761 = distinct !DILexicalBlock(scope: !752, file: !93, line: 274, column: 56)
!762 = !DILocation(line: 275, column: 10, scope: !761)
!763 = !DILocation(line: 275, column: 19, scope: !761)
!764 = !DILocation(line: 276, column: 19, scope: !761)
!765 = !DILocation(line: 276, column: 3, scope: !761)
!766 = !DILocation(line: 276, column: 10, scope: !761)
!767 = !DILocation(line: 276, column: 17, scope: !761)
!768 = !DILocation(line: 277, column: 2, scope: !761)
!769 = !DILocation(line: 278, column: 32, scope: !770)
!770 = distinct !DILexicalBlock(scope: !752, file: !93, line: 277, column: 9)
!771 = !DILocation(line: 278, column: 39, scope: !770)
!772 = !DILocation(line: 278, column: 44, scope: !770)
!773 = !DILocation(line: 278, column: 51, scope: !770)
!774 = !DILocation(line: 279, column: 9, scope: !770)
!775 = !DILocation(line: 279, column: 16, scope: !770)
!776 = !DILocation(line: 278, column: 57, scope: !770)
!777 = !DILocation(line: 279, column: 26, scope: !770)
!778 = !DILocation(line: 279, column: 28, scope: !770)
!779 = !DILocation(line: 278, column: 42, scope: !770)
!780 = !DILocation(line: 278, column: 21, scope: !770)
!781 = !DILocation(line: 278, column: 3, scope: !770)
!782 = !DILocation(line: 278, column: 10, scope: !770)
!783 = !DILocation(line: 278, column: 19, scope: !770)
!784 = !DILocation(line: 280, column: 22, scope: !770)
!785 = !DILocation(line: 280, column: 29, scope: !770)
!786 = !DILocation(line: 280, column: 36, scope: !770)
!787 = !DILocation(line: 280, column: 11, scope: !770)
!788 = !DILocation(line: 280, column: 9, scope: !770)
!789 = !DILocation(line: 281, column: 19, scope: !770)
!790 = !DILocation(line: 281, column: 25, scope: !770)
!791 = !DILocation(line: 281, column: 23, scope: !770)
!792 = !DILocation(line: 281, column: 3, scope: !770)
!793 = !DILocation(line: 281, column: 10, scope: !770)
!794 = !DILocation(line: 281, column: 17, scope: !770)
!795 = !DILocation(line: 284, column: 6, scope: !796)
!796 = distinct !DILexicalBlock(scope: !704, file: !93, line: 284, column: 6)
!797 = !DILocation(line: 284, column: 22, scope: !796)
!798 = !DILocation(line: 284, column: 29, scope: !796)
!799 = !DILocation(line: 284, column: 19, scope: !796)
!800 = !DILocation(line: 284, column: 6, scope: !704)
!801 = !DILocation(line: 285, column: 17, scope: !796)
!802 = !DILocation(line: 285, column: 24, scope: !796)
!803 = !DILocation(line: 285, column: 43, scope: !796)
!804 = !DILocation(line: 286, column: 1, scope: !704)
!805 = distinct !DISubprogram(name: "gui_entry_draw", scope: !93, file: !93, line: 424, type: !151, isLocal: true, isDefinition: true, scopeLine: 425, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!806 = !DILocalVariable(name: "entry", arg: 1, scope: !805, file: !93, line: 424, type: !31)
!807 = !DILocation(line: 424, column: 43, scope: !805)
!808 = !DILocation(line: 426, column: 6, scope: !809)
!809 = distinct !DILexicalBlock(scope: !805, file: !93, line: 426, column: 6)
!810 = !DILocation(line: 426, column: 13, scope: !809)
!811 = !DILocation(line: 426, column: 32, scope: !809)
!812 = !DILocation(line: 426, column: 6, scope: !805)
!813 = !DILocation(line: 427, column: 23, scope: !814)
!814 = distinct !DILexicalBlock(scope: !809, file: !93, line: 426, column: 38)
!815 = !DILocation(line: 427, column: 30, scope: !814)
!816 = !DILocation(line: 427, column: 37, scope: !814)
!817 = !DILocation(line: 427, column: 3, scope: !814)
!818 = !DILocation(line: 428, column: 17, scope: !814)
!819 = !DILocation(line: 428, column: 24, scope: !814)
!820 = !DILocation(line: 428, column: 43, scope: !814)
!821 = !DILocation(line: 429, column: 2, scope: !814)
!822 = !DILocation(line: 431, column: 19, scope: !805)
!823 = !DILocation(line: 431, column: 26, scope: !805)
!824 = !DILocation(line: 431, column: 33, scope: !805)
!825 = !DILocation(line: 431, column: 40, scope: !805)
!826 = !DILocation(line: 431, column: 31, scope: !805)
!827 = !DILocation(line: 431, column: 49, scope: !805)
!828 = !DILocation(line: 431, column: 56, scope: !805)
!829 = !DILocation(line: 431, column: 47, scope: !805)
!830 = !DILocation(line: 432, column: 5, scope: !805)
!831 = !DILocation(line: 432, column: 12, scope: !805)
!832 = !DILocation(line: 431, column: 2, scope: !805)
!833 = !DILocation(line: 433, column: 2, scope: !805)
!834 = !DILocation(line: 434, column: 1, scope: !805)
!835 = distinct !DISubprogram(name: "gui_entry_set_prompt", scope: !93, file: !93, line: 493, type: !836, isLocal: false, isDefinition: true, scopeLine: 494, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!836 = !DISubroutineType(types: !837)
!837 = !{null, !31, !76}
!838 = !DILocalVariable(name: "entry", arg: 1, scope: !835, file: !93, line: 493, type: !31)
!839 = !DILocation(line: 493, column: 42, scope: !835)
!840 = !DILocalVariable(name: "str", arg: 2, scope: !835, file: !93, line: 493, type: !76)
!841 = !DILocation(line: 493, column: 61, scope: !835)
!842 = !DILocalVariable(name: "oldlen", scope: !835, file: !93, line: 495, type: !36)
!843 = !DILocation(line: 495, column: 6, scope: !835)
!844 = !DILocation(line: 497, column: 9, scope: !835)
!845 = distinct !{!845, !844}
!846 = !DILocation(line: 497, column: 17, scope: !847)
!847 = !DILexicalBlockFile(scope: !848, file: !93, discriminator: 1)
!848 = distinct !DILexicalBlock(scope: !849, file: !93, line: 497, column: 17)
!849 = distinct !DILexicalBlock(scope: !835, file: !93, line: 497, column: 11)
!850 = !DILocation(line: 497, column: 23, scope: !847)
!851 = !DILocation(line: 497, column: 12, scope: !852)
!852 = !DILexicalBlockFile(scope: !853, file: !93, discriminator: 2)
!853 = distinct !DILexicalBlock(scope: !848, file: !93, line: 497, column: 10)
!854 = !DILocation(line: 497, column: 21, scope: !855)
!855 = !DILexicalBlockFile(scope: !856, file: !93, discriminator: 3)
!856 = distinct !DILexicalBlock(scope: !848, file: !93, line: 497, column: 19)
!857 = !DILocation(line: 497, column: 107, scope: !855)
!858 = !DILocation(line: 497, column: 118, scope: !859)
!859 = !DILexicalBlockFile(scope: !849, file: !93, discriminator: 4)
!860 = !DILocation(line: 499, column: 18, scope: !835)
!861 = !DILocation(line: 499, column: 25, scope: !835)
!862 = !DILocation(line: 499, column: 16, scope: !835)
!863 = !DILocation(line: 500, column: 6, scope: !864)
!864 = distinct !DILexicalBlock(scope: !835, file: !93, line: 500, column: 6)
!865 = !DILocation(line: 500, column: 10, scope: !864)
!866 = !DILocation(line: 500, column: 6, scope: !835)
!867 = !DILocation(line: 501, column: 10, scope: !868)
!868 = distinct !DILexicalBlock(scope: !864, file: !93, line: 500, column: 18)
!869 = !DILocation(line: 501, column: 17, scope: !868)
!870 = !DILocation(line: 501, column: 3, scope: !868)
!871 = !DILocation(line: 502, column: 28, scope: !868)
!872 = !DILocation(line: 502, column: 19, scope: !868)
!873 = !DILocation(line: 502, column: 3, scope: !868)
!874 = !DILocation(line: 502, column: 10, scope: !868)
!875 = !DILocation(line: 502, column: 17, scope: !868)
!876 = !DILocation(line: 503, column: 33, scope: !868)
!877 = !DILocation(line: 503, column: 38, scope: !868)
!878 = !DILocation(line: 503, column: 45, scope: !868)
!879 = !DILocation(line: 503, column: 22, scope: !868)
!880 = !DILocation(line: 503, column: 3, scope: !868)
!881 = !DILocation(line: 503, column: 10, scope: !868)
!882 = !DILocation(line: 503, column: 20, scope: !868)
!883 = !DILocation(line: 504, column: 2, scope: !868)
!884 = !DILocation(line: 506, column: 13, scope: !885)
!885 = distinct !DILexicalBlock(scope: !835, file: !93, line: 506, column: 13)
!886 = !DILocation(line: 506, column: 20, scope: !885)
!887 = !DILocation(line: 506, column: 27, scope: !885)
!888 = !DILocation(line: 506, column: 13, scope: !835)
!889 = !DILocation(line: 507, column: 26, scope: !885)
!890 = !DILocation(line: 507, column: 33, scope: !885)
!891 = !DILocation(line: 507, column: 39, scope: !885)
!892 = !DILocation(line: 507, column: 46, scope: !885)
!893 = !DILocation(line: 507, column: 52, scope: !885)
!894 = !DILocation(line: 507, column: 59, scope: !885)
!895 = !DILocation(line: 507, column: 3, scope: !885)
!896 = !DILocation(line: 509, column: 6, scope: !897)
!897 = distinct !DILexicalBlock(scope: !835, file: !93, line: 509, column: 6)
!898 = !DILocation(line: 509, column: 13, scope: !897)
!899 = !DILocation(line: 509, column: 26, scope: !897)
!900 = !DILocation(line: 509, column: 23, scope: !897)
!901 = !DILocation(line: 509, column: 6, scope: !835)
!902 = !DILocation(line: 510, column: 24, scope: !903)
!903 = distinct !DILexicalBlock(scope: !897, file: !93, line: 509, column: 34)
!904 = !DILocation(line: 510, column: 3, scope: !903)
!905 = !DILocation(line: 511, column: 18, scope: !903)
!906 = !DILocation(line: 511, column: 3, scope: !903)
!907 = !DILocation(line: 512, column: 2, scope: !903)
!908 = !DILocation(line: 513, column: 1, scope: !835)
!909 = distinct !DISubprogram(name: "scrlen_str", scope: !93, file: !93, line: 189, type: !910, isLocal: true, isDefinition: true, scopeLine: 190, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!910 = !DISubroutineType(types: !911)
!911 = !{!36, !76, !36}
!912 = !DILocalVariable(name: "str", arg: 1, scope: !909, file: !93, line: 189, type: !76)
!913 = !DILocation(line: 189, column: 35, scope: !909)
!914 = !DILocalVariable(name: "utf8", arg: 2, scope: !909, file: !93, line: 189, type: !36)
!915 = !DILocation(line: 189, column: 44, scope: !909)
!916 = !DILocalVariable(name: "len", scope: !909, file: !93, line: 191, type: !36)
!917 = !DILocation(line: 191, column: 6, scope: !909)
!918 = !DILocalVariable(name: "stripped", scope: !909, file: !93, line: 192, type: !46)
!919 = !DILocation(line: 192, column: 8, scope: !909)
!920 = !DILocation(line: 193, column: 2, scope: !909)
!921 = distinct !{!921, !920}
!922 = !DILocation(line: 193, column: 10, scope: !923)
!923 = !DILexicalBlockFile(scope: !924, file: !93, discriminator: 1)
!924 = distinct !DILexicalBlock(scope: !925, file: !93, line: 193, column: 10)
!925 = distinct !DILexicalBlock(scope: !909, file: !93, line: 193, column: 4)
!926 = !DILocation(line: 193, column: 14, scope: !923)
!927 = !DILocation(line: 193, column: 5, scope: !928)
!928 = !DILexicalBlockFile(scope: !929, file: !93, discriminator: 2)
!929 = distinct !DILexicalBlock(scope: !924, file: !93, line: 193, column: 3)
!930 = !DILocation(line: 193, column: 14, scope: !931)
!931 = !DILexicalBlockFile(scope: !932, file: !93, discriminator: 3)
!932 = distinct !DILexicalBlock(scope: !924, file: !93, line: 193, column: 12)
!933 = !DILocation(line: 193, column: 98, scope: !931)
!934 = !DILocation(line: 193, column: 113, scope: !935)
!935 = !DILexicalBlockFile(scope: !925, file: !93, discriminator: 4)
!936 = !DILocation(line: 195, column: 25, scope: !909)
!937 = !DILocation(line: 195, column: 13, scope: !909)
!938 = !DILocation(line: 195, column: 11, scope: !909)
!939 = !DILocation(line: 196, column: 21, scope: !909)
!940 = !DILocation(line: 196, column: 31, scope: !909)
!941 = !DILocation(line: 196, column: 8, scope: !909)
!942 = !DILocation(line: 196, column: 6, scope: !909)
!943 = !DILocation(line: 197, column: 9, scope: !909)
!944 = !DILocation(line: 197, column: 2, scope: !909)
!945 = !DILocation(line: 198, column: 9, scope: !909)
!946 = !DILocation(line: 198, column: 2, scope: !909)
!947 = !DILocation(line: 199, column: 1, scope: !909)
!948 = distinct !DISubprogram(name: "gui_entry_set_hidden", scope: !93, file: !93, line: 515, type: !672, isLocal: false, isDefinition: true, scopeLine: 516, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!949 = !DILocalVariable(name: "entry", arg: 1, scope: !948, file: !93, line: 515, type: !31)
!950 = !DILocation(line: 515, column: 42, scope: !948)
!951 = !DILocalVariable(name: "hidden", arg: 2, scope: !948, file: !93, line: 515, type: !36)
!952 = !DILocation(line: 515, column: 53, scope: !948)
!953 = !DILocation(line: 517, column: 9, scope: !948)
!954 = distinct !{!954, !953}
!955 = !DILocation(line: 517, column: 17, scope: !956)
!956 = !DILexicalBlockFile(scope: !957, file: !93, discriminator: 1)
!957 = distinct !DILexicalBlock(scope: !958, file: !93, line: 517, column: 17)
!958 = distinct !DILexicalBlock(scope: !948, file: !93, line: 517, column: 11)
!959 = !DILocation(line: 517, column: 23, scope: !956)
!960 = !DILocation(line: 517, column: 12, scope: !961)
!961 = !DILexicalBlockFile(scope: !962, file: !93, discriminator: 2)
!962 = distinct !DILexicalBlock(scope: !957, file: !93, line: 517, column: 10)
!963 = !DILocation(line: 517, column: 21, scope: !964)
!964 = !DILexicalBlockFile(scope: !965, file: !93, discriminator: 3)
!965 = distinct !DILexicalBlock(scope: !957, file: !93, line: 517, column: 19)
!966 = !DILocation(line: 517, column: 107, scope: !964)
!967 = !DILocation(line: 517, column: 118, scope: !968)
!968 = !DILexicalBlockFile(scope: !958, file: !93, discriminator: 4)
!969 = !DILocation(line: 519, column: 25, scope: !948)
!970 = !DILocation(line: 519, column: 9, scope: !948)
!971 = !DILocation(line: 519, column: 16, scope: !948)
!972 = !DILocation(line: 519, column: 23, scope: !948)
!973 = !DILocation(line: 520, column: 1, scope: !948)
!974 = !DILocation(line: 520, column: 1, scope: !975)
!975 = !DILexicalBlockFile(scope: !948, file: !93, discriminator: 1)
!976 = distinct !DISubprogram(name: "gui_entry_set_utf8", scope: !93, file: !93, line: 522, type: !672, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!977 = !DILocalVariable(name: "entry", arg: 1, scope: !976, file: !93, line: 522, type: !31)
!978 = !DILocation(line: 522, column: 40, scope: !976)
!979 = !DILocalVariable(name: "utf8", arg: 2, scope: !976, file: !93, line: 522, type: !36)
!980 = !DILocation(line: 522, column: 51, scope: !976)
!981 = !DILocation(line: 524, column: 9, scope: !976)
!982 = distinct !{!982, !981}
!983 = !DILocation(line: 524, column: 17, scope: !984)
!984 = !DILexicalBlockFile(scope: !985, file: !93, discriminator: 1)
!985 = distinct !DILexicalBlock(scope: !986, file: !93, line: 524, column: 17)
!986 = distinct !DILexicalBlock(scope: !976, file: !93, line: 524, column: 11)
!987 = !DILocation(line: 524, column: 23, scope: !984)
!988 = !DILocation(line: 524, column: 12, scope: !989)
!989 = !DILexicalBlockFile(scope: !990, file: !93, discriminator: 2)
!990 = distinct !DILexicalBlock(scope: !985, file: !93, line: 524, column: 10)
!991 = !DILocation(line: 524, column: 21, scope: !992)
!992 = !DILexicalBlockFile(scope: !993, file: !93, discriminator: 3)
!993 = distinct !DILexicalBlock(scope: !985, file: !93, line: 524, column: 19)
!994 = !DILocation(line: 524, column: 107, scope: !992)
!995 = !DILocation(line: 524, column: 118, scope: !996)
!996 = !DILexicalBlockFile(scope: !986, file: !93, discriminator: 4)
!997 = !DILocation(line: 526, column: 23, scope: !976)
!998 = !DILocation(line: 526, column: 9, scope: !976)
!999 = !DILocation(line: 526, column: 16, scope: !976)
!1000 = !DILocation(line: 526, column: 21, scope: !976)
!1001 = !DILocation(line: 527, column: 1, scope: !976)
!1002 = !DILocation(line: 527, column: 1, scope: !1003)
!1003 = !DILexicalBlockFile(scope: !976, file: !93, discriminator: 1)
!1004 = distinct !DISubprogram(name: "gui_entry_set_text", scope: !93, file: !93, line: 529, type: !836, isLocal: false, isDefinition: true, scopeLine: 530, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!1005 = !DILocalVariable(name: "entry", arg: 1, scope: !1004, file: !93, line: 529, type: !31)
!1006 = !DILocation(line: 529, column: 40, scope: !1004)
!1007 = !DILocalVariable(name: "str", arg: 2, scope: !1004, file: !93, line: 529, type: !76)
!1008 = !DILocation(line: 529, column: 59, scope: !1004)
!1009 = !DILocation(line: 531, column: 2, scope: !1004)
!1010 = distinct !{!1010, !1009}
!1011 = !DILocation(line: 531, column: 10, scope: !1012)
!1012 = !DILexicalBlockFile(scope: !1013, file: !93, discriminator: 1)
!1013 = distinct !DILexicalBlock(scope: !1014, file: !93, line: 531, column: 10)
!1014 = distinct !DILexicalBlock(scope: !1004, file: !93, line: 531, column: 4)
!1015 = !DILocation(line: 531, column: 16, scope: !1012)
!1016 = !DILocation(line: 531, column: 5, scope: !1017)
!1017 = !DILexicalBlockFile(scope: !1018, file: !93, discriminator: 2)
!1018 = distinct !DILexicalBlock(scope: !1013, file: !93, line: 531, column: 3)
!1019 = !DILocation(line: 531, column: 14, scope: !1020)
!1020 = !DILexicalBlockFile(scope: !1021, file: !93, discriminator: 3)
!1021 = distinct !DILexicalBlock(scope: !1013, file: !93, line: 531, column: 12)
!1022 = !DILocation(line: 531, column: 100, scope: !1020)
!1023 = !DILocation(line: 531, column: 111, scope: !1024)
!1024 = !DILexicalBlockFile(scope: !1014, file: !93, discriminator: 4)
!1025 = !DILocation(line: 532, column: 2, scope: !1004)
!1026 = distinct !{!1026, !1025}
!1027 = !DILocation(line: 532, column: 10, scope: !1028)
!1028 = !DILexicalBlockFile(scope: !1029, file: !93, discriminator: 1)
!1029 = distinct !DILexicalBlock(scope: !1030, file: !93, line: 532, column: 10)
!1030 = distinct !DILexicalBlock(scope: !1004, file: !93, line: 532, column: 4)
!1031 = !DILocation(line: 532, column: 14, scope: !1028)
!1032 = !DILocation(line: 532, column: 5, scope: !1033)
!1033 = !DILexicalBlockFile(scope: !1034, file: !93, discriminator: 2)
!1034 = distinct !DILexicalBlock(scope: !1029, file: !93, line: 532, column: 3)
!1035 = !DILocation(line: 532, column: 14, scope: !1036)
!1036 = !DILexicalBlockFile(scope: !1037, file: !93, discriminator: 3)
!1037 = distinct !DILexicalBlock(scope: !1029, file: !93, line: 532, column: 12)
!1038 = !DILocation(line: 532, column: 98, scope: !1036)
!1039 = !DILocation(line: 532, column: 109, scope: !1040)
!1040 = !DILexicalBlockFile(scope: !1030, file: !93, discriminator: 4)
!1041 = !DILocation(line: 534, column: 2, scope: !1004)
!1042 = !DILocation(line: 534, column: 9, scope: !1004)
!1043 = !DILocation(line: 534, column: 18, scope: !1004)
!1044 = !DILocation(line: 535, column: 2, scope: !1004)
!1045 = !DILocation(line: 535, column: 9, scope: !1004)
!1046 = !DILocation(line: 535, column: 13, scope: !1004)
!1047 = !DILocation(line: 536, column: 2, scope: !1004)
!1048 = !DILocation(line: 536, column: 9, scope: !1004)
!1049 = !DILocation(line: 536, column: 17, scope: !1004)
!1050 = !DILocation(line: 537, column: 18, scope: !1004)
!1051 = !DILocation(line: 537, column: 2, scope: !1004)
!1052 = !DILocation(line: 539, column: 24, scope: !1004)
!1053 = !DILocation(line: 539, column: 31, scope: !1004)
!1054 = !DILocation(line: 539, column: 2, scope: !1004)
!1055 = !DILocation(line: 540, column: 1, scope: !1004)
!1056 = !DILocation(line: 540, column: 1, scope: !1057)
!1057 = !DILexicalBlockFile(scope: !1004, file: !93, discriminator: 1)
!1058 = distinct !DISubprogram(name: "gui_entry_insert_text", scope: !93, file: !93, line: 586, type: !836, isLocal: false, isDefinition: true, scopeLine: 587, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!1059 = !DILocalVariable(name: "entry", arg: 1, scope: !1058, file: !93, line: 586, type: !31)
!1060 = !DILocation(line: 586, column: 43, scope: !1058)
!1061 = !DILocalVariable(name: "str", arg: 2, scope: !1058, file: !93, line: 586, type: !76)
!1062 = !DILocation(line: 586, column: 62, scope: !1058)
!1063 = !DILocalVariable(name: "chr", scope: !1058, file: !93, line: 588, type: !40)
!1064 = !DILocation(line: 588, column: 17, scope: !1058)
!1065 = !DILocalVariable(name: "i", scope: !1058, file: !93, line: 589, type: !36)
!1066 = !DILocation(line: 589, column: 6, scope: !1058)
!1067 = !DILocalVariable(name: "len", scope: !1058, file: !93, line: 589, type: !36)
!1068 = !DILocation(line: 589, column: 9, scope: !1058)
!1069 = !DILocalVariable(name: "ptr", scope: !1058, file: !93, line: 590, type: !76)
!1070 = !DILocation(line: 590, column: 14, scope: !1058)
!1071 = !DILocation(line: 592, column: 9, scope: !1058)
!1072 = distinct !{!1072, !1071}
!1073 = !DILocation(line: 592, column: 17, scope: !1074)
!1074 = !DILexicalBlockFile(scope: !1075, file: !93, discriminator: 1)
!1075 = distinct !DILexicalBlock(scope: !1076, file: !93, line: 592, column: 17)
!1076 = distinct !DILexicalBlock(scope: !1058, file: !93, line: 592, column: 11)
!1077 = !DILocation(line: 592, column: 23, scope: !1074)
!1078 = !DILocation(line: 592, column: 12, scope: !1079)
!1079 = !DILexicalBlockFile(scope: !1080, file: !93, discriminator: 2)
!1080 = distinct !DILexicalBlock(scope: !1075, file: !93, line: 592, column: 10)
!1081 = !DILocation(line: 592, column: 21, scope: !1082)
!1082 = !DILexicalBlockFile(scope: !1083, file: !93, discriminator: 3)
!1083 = distinct !DILexicalBlock(scope: !1075, file: !93, line: 592, column: 19)
!1084 = !DILocation(line: 592, column: 107, scope: !1082)
!1085 = !DILocation(line: 592, column: 118, scope: !1086)
!1086 = !DILexicalBlockFile(scope: !1076, file: !93, discriminator: 4)
!1087 = !DILocation(line: 593, column: 2, scope: !1058)
!1088 = distinct !{!1088, !1087}
!1089 = !DILocation(line: 593, column: 10, scope: !1090)
!1090 = !DILexicalBlockFile(scope: !1091, file: !93, discriminator: 1)
!1091 = distinct !DILexicalBlock(scope: !1092, file: !93, line: 593, column: 10)
!1092 = distinct !DILexicalBlock(scope: !1058, file: !93, line: 593, column: 4)
!1093 = !DILocation(line: 593, column: 14, scope: !1090)
!1094 = !DILocation(line: 593, column: 5, scope: !1095)
!1095 = !DILexicalBlockFile(scope: !1096, file: !93, discriminator: 2)
!1096 = distinct !DILexicalBlock(scope: !1091, file: !93, line: 593, column: 3)
!1097 = !DILocation(line: 593, column: 14, scope: !1098)
!1098 = !DILexicalBlockFile(scope: !1099, file: !93, discriminator: 3)
!1099 = distinct !DILexicalBlock(scope: !1091, file: !93, line: 593, column: 12)
!1100 = !DILocation(line: 593, column: 98, scope: !1098)
!1101 = !DILocation(line: 593, column: 109, scope: !1102)
!1102 = !DILexicalBlockFile(scope: !1092, file: !93, discriminator: 4)
!1103 = !DILocation(line: 595, column: 31, scope: !1058)
!1104 = !DILocation(line: 595, column: 38, scope: !1058)
!1105 = !DILocation(line: 595, column: 45, scope: !1058)
!1106 = !DILocation(line: 595, column: 9, scope: !1058)
!1107 = !DILocation(line: 597, column: 6, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1058, file: !93, line: 597, column: 6)
!1109 = !DILocation(line: 597, column: 13, scope: !1108)
!1110 = !DILocation(line: 597, column: 6, scope: !1058)
!1111 = !DILocation(line: 598, column: 19, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1108, file: !93, line: 597, column: 19)
!1113 = !DILocation(line: 598, column: 3, scope: !1112)
!1114 = !DILocation(line: 599, column: 34, scope: !1112)
!1115 = !DILocation(line: 599, column: 39, scope: !1112)
!1116 = !DILocation(line: 599, column: 9, scope: !1112)
!1117 = !DILocation(line: 599, column: 7, scope: !1112)
!1118 = !DILocation(line: 600, column: 2, scope: !1112)
!1119 = !DILocation(line: 600, column: 13, scope: !1120)
!1120 = !DILexicalBlockFile(scope: !1121, file: !93, discriminator: 1)
!1121 = distinct !DILexicalBlock(scope: !1108, file: !93, line: 600, column: 13)
!1122 = !DILocation(line: 600, column: 23, scope: !1120)
!1123 = !DILocation(line: 601, column: 44, scope: !1121)
!1124 = !DILocation(line: 601, column: 9, scope: !1121)
!1125 = !DILocation(line: 601, column: 7, scope: !1121)
!1126 = !DILocation(line: 601, column: 3, scope: !1121)
!1127 = !DILocation(line: 603, column: 16, scope: !1121)
!1128 = !DILocation(line: 603, column: 9, scope: !1121)
!1129 = !DILocation(line: 603, column: 7, scope: !1121)
!1130 = !DILocation(line: 604, column: 25, scope: !1058)
!1131 = !DILocation(line: 604, column: 32, scope: !1058)
!1132 = !DILocation(line: 604, column: 9, scope: !1058)
!1133 = !DILocation(line: 607, column: 2, scope: !1058)
!1134 = distinct !{!1134, !1133}
!1135 = !DILocation(line: 607, column: 17, scope: !1136)
!1136 = !DILexicalBlockFile(scope: !1137, file: !93, discriminator: 1)
!1137 = distinct !DILexicalBlock(scope: !1058, file: !93, line: 607, column: 5)
!1138 = !DILocation(line: 607, column: 24, scope: !1136)
!1139 = !DILocation(line: 607, column: 31, scope: !1136)
!1140 = !DILocation(line: 607, column: 38, scope: !1136)
!1141 = !DILocation(line: 607, column: 29, scope: !1136)
!1142 = !DILocation(line: 607, column: 44, scope: !1136)
!1143 = !DILocation(line: 607, column: 42, scope: !1136)
!1144 = !DILocation(line: 607, column: 7, scope: !1136)
!1145 = !DILocation(line: 607, column: 51, scope: !1136)
!1146 = !DILocation(line: 607, column: 58, scope: !1136)
!1147 = !DILocation(line: 607, column: 65, scope: !1136)
!1148 = !DILocation(line: 607, column: 72, scope: !1136)
!1149 = !DILocation(line: 607, column: 63, scope: !1136)
!1150 = !DILocation(line: 607, column: 80, scope: !1136)
!1151 = !DILocation(line: 607, column: 87, scope: !1136)
!1152 = !DILocation(line: 607, column: 96, scope: !1136)
!1153 = !DILocation(line: 607, column: 103, scope: !1136)
!1154 = !DILocation(line: 607, column: 95, scope: !1136)
!1155 = !DILocation(line: 607, column: 107, scope: !1136)
!1156 = !DILocation(line: 607, column: 79, scope: !1136)
!1157 = !DILocation(line: 607, column: 112, scope: !1136)
!1158 = !DILocation(line: 607, column: 133, scope: !1136)
!1159 = !DILocation(line: 611, column: 6, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1058, file: !93, line: 611, column: 6)
!1161 = !DILocation(line: 611, column: 13, scope: !1160)
!1162 = !DILocation(line: 611, column: 6, scope: !1058)
!1163 = !DILocation(line: 612, column: 3, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1160, file: !93, line: 611, column: 27)
!1165 = distinct !{!1165, !1163}
!1166 = !DILocation(line: 612, column: 18, scope: !1167)
!1167 = !DILexicalBlockFile(scope: !1168, file: !93, discriminator: 1)
!1168 = distinct !DILexicalBlock(scope: !1164, file: !93, line: 612, column: 6)
!1169 = !DILocation(line: 612, column: 25, scope: !1167)
!1170 = !DILocation(line: 612, column: 35, scope: !1167)
!1171 = !DILocation(line: 612, column: 42, scope: !1167)
!1172 = !DILocation(line: 612, column: 33, scope: !1167)
!1173 = !DILocation(line: 612, column: 48, scope: !1167)
!1174 = !DILocation(line: 612, column: 46, scope: !1167)
!1175 = !DILocation(line: 612, column: 52, scope: !1167)
!1176 = !DILocation(line: 612, column: 8, scope: !1167)
!1177 = !DILocation(line: 612, column: 59, scope: !1167)
!1178 = !DILocation(line: 612, column: 66, scope: !1167)
!1179 = !DILocation(line: 612, column: 76, scope: !1167)
!1180 = !DILocation(line: 612, column: 83, scope: !1167)
!1181 = !DILocation(line: 612, column: 74, scope: !1167)
!1182 = !DILocation(line: 612, column: 87, scope: !1167)
!1183 = !DILocation(line: 612, column: 95, scope: !1167)
!1184 = !DILocation(line: 612, column: 102, scope: !1167)
!1185 = !DILocation(line: 612, column: 111, scope: !1167)
!1186 = !DILocation(line: 612, column: 118, scope: !1167)
!1187 = !DILocation(line: 612, column: 110, scope: !1167)
!1188 = !DILocation(line: 612, column: 94, scope: !1167)
!1189 = !DILocation(line: 612, column: 123, scope: !1167)
!1190 = !DILocation(line: 612, column: 143, scope: !1167)
!1191 = !DILocation(line: 614, column: 10, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1164, file: !93, line: 614, column: 3)
!1193 = !DILocation(line: 614, column: 8, scope: !1192)
!1194 = !DILocation(line: 614, column: 15, scope: !1195)
!1195 = !DILexicalBlockFile(scope: !1196, file: !93, discriminator: 1)
!1196 = distinct !DILexicalBlock(scope: !1192, file: !93, line: 614, column: 3)
!1197 = !DILocation(line: 614, column: 19, scope: !1195)
!1198 = !DILocation(line: 614, column: 17, scope: !1195)
!1199 = !DILocation(line: 614, column: 3, scope: !1195)
!1200 = !DILocation(line: 615, column: 19, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1196, file: !93, line: 614, column: 29)
!1202 = !DILocation(line: 615, column: 26, scope: !1201)
!1203 = !DILocation(line: 615, column: 32, scope: !1201)
!1204 = !DILocation(line: 615, column: 30, scope: !1201)
!1205 = !DILocation(line: 615, column: 34, scope: !1201)
!1206 = !DILocation(line: 615, column: 4, scope: !1201)
!1207 = !DILocation(line: 615, column: 11, scope: !1201)
!1208 = !DILocation(line: 615, column: 39, scope: !1201)
!1209 = !DILocation(line: 616, column: 3, scope: !1201)
!1210 = !DILocation(line: 614, column: 25, scope: !1211)
!1211 = !DILexicalBlockFile(scope: !1196, file: !93, discriminator: 2)
!1212 = !DILocation(line: 614, column: 3, scope: !1211)
!1213 = distinct !{!1213, !1214}
!1214 = !DILocation(line: 614, column: 3, scope: !1164)
!1215 = !DILocation(line: 617, column: 2, scope: !1164)
!1216 = !DILocation(line: 619, column: 7, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1058, file: !93, line: 619, column: 6)
!1218 = !DILocation(line: 619, column: 14, scope: !1217)
!1219 = !DILocation(line: 619, column: 6, scope: !1058)
!1220 = !DILocation(line: 620, column: 7, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !93, line: 620, column: 7)
!1222 = distinct !DILexicalBlock(scope: !1217, file: !93, line: 619, column: 20)
!1223 = !DILocation(line: 620, column: 17, scope: !1221)
!1224 = !DILocation(line: 620, column: 7, scope: !1222)
!1225 = !DILocation(line: 621, column: 22, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1221, file: !93, line: 620, column: 23)
!1227 = !DILocation(line: 621, column: 29, scope: !1226)
!1228 = !DILocation(line: 621, column: 35, scope: !1226)
!1229 = !DILocation(line: 621, column: 33, scope: !1226)
!1230 = !DILocation(line: 621, column: 10, scope: !1226)
!1231 = !DILocation(line: 621, column: 17, scope: !1226)
!1232 = !DILocation(line: 621, column: 8, scope: !1226)
!1233 = !DILocation(line: 622, column: 21, scope: !1226)
!1234 = !DILocation(line: 622, column: 26, scope: !1226)
!1235 = !DILocation(line: 622, column: 33, scope: !1226)
!1236 = !DILocation(line: 622, column: 40, scope: !1226)
!1237 = !DILocation(line: 622, column: 47, scope: !1226)
!1238 = !DILocation(line: 622, column: 38, scope: !1226)
!1239 = !DILocation(line: 622, column: 4, scope: !1226)
!1240 = !DILocation(line: 623, column: 36, scope: !1226)
!1241 = !DILocation(line: 623, column: 16, scope: !1226)
!1242 = !DILocation(line: 623, column: 23, scope: !1226)
!1243 = !DILocation(line: 623, column: 29, scope: !1226)
!1244 = !DILocation(line: 623, column: 27, scope: !1226)
!1245 = !DILocation(line: 623, column: 4, scope: !1226)
!1246 = !DILocation(line: 623, column: 11, scope: !1226)
!1247 = !DILocation(line: 623, column: 34, scope: !1226)
!1248 = !DILocation(line: 624, column: 3, scope: !1226)
!1249 = !DILocation(line: 625, column: 11, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !93, line: 625, column: 4)
!1251 = distinct !DILexicalBlock(scope: !1221, file: !93, line: 624, column: 10)
!1252 = !DILocation(line: 625, column: 9, scope: !1250)
!1253 = !DILocation(line: 625, column: 16, scope: !1254)
!1254 = !DILexicalBlockFile(scope: !1255, file: !93, discriminator: 1)
!1255 = distinct !DILexicalBlock(scope: !1250, file: !93, line: 625, column: 4)
!1256 = !DILocation(line: 625, column: 20, scope: !1254)
!1257 = !DILocation(line: 625, column: 18, scope: !1254)
!1258 = !DILocation(line: 625, column: 4, scope: !1254)
!1259 = !DILocation(line: 626, column: 39, scope: !1255)
!1260 = !DILocation(line: 626, column: 35, scope: !1255)
!1261 = !DILocation(line: 626, column: 17, scope: !1255)
!1262 = !DILocation(line: 626, column: 24, scope: !1255)
!1263 = !DILocation(line: 626, column: 30, scope: !1255)
!1264 = !DILocation(line: 626, column: 28, scope: !1255)
!1265 = !DILocation(line: 626, column: 5, scope: !1255)
!1266 = !DILocation(line: 626, column: 12, scope: !1255)
!1267 = !DILocation(line: 626, column: 33, scope: !1255)
!1268 = !DILocation(line: 625, column: 26, scope: !1269)
!1269 = !DILexicalBlockFile(scope: !1255, file: !93, discriminator: 2)
!1270 = !DILocation(line: 625, column: 4, scope: !1269)
!1271 = distinct !{!1271, !1272}
!1272 = !DILocation(line: 625, column: 4, scope: !1251)
!1273 = !DILocation(line: 628, column: 2, scope: !1222)
!1274 = !DILocation(line: 629, column: 9, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1217, file: !93, line: 628, column: 9)
!1276 = !DILocation(line: 629, column: 7, scope: !1275)
!1277 = !DILocation(line: 630, column: 10, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1275, file: !93, line: 630, column: 3)
!1279 = !DILocation(line: 630, column: 8, scope: !1278)
!1280 = !DILocation(line: 630, column: 15, scope: !1281)
!1281 = !DILexicalBlockFile(scope: !1282, file: !93, discriminator: 1)
!1282 = distinct !DILexicalBlock(scope: !1278, file: !93, line: 630, column: 3)
!1283 = !DILocation(line: 630, column: 19, scope: !1281)
!1284 = !DILocation(line: 630, column: 17, scope: !1281)
!1285 = !DILocation(line: 630, column: 3, scope: !1281)
!1286 = !DILocation(line: 631, column: 50, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1282, file: !93, line: 630, column: 29)
!1288 = !DILocation(line: 631, column: 34, scope: !1287)
!1289 = !DILocation(line: 631, column: 16, scope: !1287)
!1290 = !DILocation(line: 631, column: 23, scope: !1287)
!1291 = !DILocation(line: 631, column: 29, scope: !1287)
!1292 = !DILocation(line: 631, column: 27, scope: !1287)
!1293 = !DILocation(line: 631, column: 4, scope: !1287)
!1294 = !DILocation(line: 631, column: 11, scope: !1287)
!1295 = !DILocation(line: 631, column: 32, scope: !1287)
!1296 = !DILocation(line: 632, column: 20, scope: !1287)
!1297 = !DILocation(line: 632, column: 57, scope: !1287)
!1298 = !DILocation(line: 632, column: 39, scope: !1287)
!1299 = !DILocation(line: 632, column: 27, scope: !1287)
!1300 = !DILocation(line: 632, column: 25, scope: !1287)
!1301 = !DILocation(line: 632, column: 8, scope: !1287)
!1302 = !DILocation(line: 633, column: 3, scope: !1287)
!1303 = !DILocation(line: 630, column: 25, scope: !1304)
!1304 = !DILexicalBlockFile(scope: !1282, file: !93, discriminator: 2)
!1305 = !DILocation(line: 630, column: 3, scope: !1304)
!1306 = distinct !{!1306, !1307}
!1307 = !DILocation(line: 630, column: 3, scope: !1275)
!1308 = !DILocation(line: 636, column: 21, scope: !1058)
!1309 = !DILocation(line: 636, column: 2, scope: !1058)
!1310 = !DILocation(line: 636, column: 9, scope: !1058)
!1311 = !DILocation(line: 636, column: 18, scope: !1058)
!1312 = !DILocation(line: 637, column: 23, scope: !1058)
!1313 = !DILocation(line: 637, column: 9, scope: !1058)
!1314 = !DILocation(line: 637, column: 16, scope: !1058)
!1315 = !DILocation(line: 637, column: 20, scope: !1058)
!1316 = !DILocation(line: 639, column: 23, scope: !1058)
!1317 = !DILocation(line: 639, column: 2, scope: !1058)
!1318 = !DILocation(line: 640, column: 17, scope: !1058)
!1319 = !DILocation(line: 640, column: 2, scope: !1058)
!1320 = !DILocation(line: 641, column: 1, scope: !1058)
!1321 = !DILocation(line: 641, column: 1, scope: !1322)
!1322 = !DILexicalBlockFile(scope: !1058, file: !93, discriminator: 1)
!1323 = distinct !DISubprogram(name: "gui_entry_get_text", scope: !93, file: !93, line: 542, type: !1324, isLocal: false, isDefinition: true, scopeLine: 543, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!46, !31}
!1326 = !DILocalVariable(name: "entry", arg: 1, scope: !1323, file: !93, line: 542, type: !31)
!1327 = !DILocation(line: 542, column: 41, scope: !1323)
!1328 = !DILocalVariable(name: "buf", scope: !1323, file: !93, line: 544, type: !46)
!1329 = !DILocation(line: 544, column: 8, scope: !1323)
!1330 = !DILocalVariable(name: "i", scope: !1323, file: !93, line: 545, type: !36)
!1331 = !DILocation(line: 545, column: 13, scope: !1323)
!1332 = !DILocation(line: 547, column: 2, scope: !1323)
!1333 = distinct !{!1333, !1332}
!1334 = !DILocation(line: 547, column: 10, scope: !1335)
!1335 = !DILexicalBlockFile(scope: !1336, file: !93, discriminator: 1)
!1336 = distinct !DILexicalBlock(scope: !1337, file: !93, line: 547, column: 10)
!1337 = distinct !DILexicalBlock(scope: !1323, file: !93, line: 547, column: 4)
!1338 = !DILocation(line: 547, column: 16, scope: !1335)
!1339 = !DILocation(line: 547, column: 5, scope: !1340)
!1340 = !DILexicalBlockFile(scope: !1341, file: !93, discriminator: 2)
!1341 = distinct !DILexicalBlock(scope: !1336, file: !93, line: 547, column: 3)
!1342 = !DILocation(line: 547, column: 14, scope: !1343)
!1343 = !DILexicalBlockFile(scope: !1344, file: !93, discriminator: 3)
!1344 = distinct !DILexicalBlock(scope: !1336, file: !93, line: 547, column: 12)
!1345 = !DILocation(line: 547, column: 100, scope: !1343)
!1346 = !DILocation(line: 547, column: 7, scope: !1347)
!1347 = !DILexicalBlockFile(scope: !1337, file: !93, discriminator: 4)
!1348 = !DILocation(line: 549, column: 6, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1323, file: !93, line: 549, column: 6)
!1350 = !DILocation(line: 549, column: 13, scope: !1349)
!1351 = !DILocation(line: 549, column: 6, scope: !1323)
!1352 = !DILocation(line: 550, column: 24, scope: !1349)
!1353 = !DILocation(line: 550, column: 31, scope: !1349)
!1354 = !DILocation(line: 550, column: 9, scope: !1349)
!1355 = !DILocation(line: 550, column: 7, scope: !1349)
!1356 = !DILocation(line: 550, column: 3, scope: !1349)
!1357 = !DILocation(line: 552, column: 18, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1349, file: !93, line: 551, column: 7)
!1359 = !DILocation(line: 552, column: 25, scope: !1358)
!1360 = !DILocation(line: 552, column: 33, scope: !1358)
!1361 = !DILocation(line: 552, column: 36, scope: !1358)
!1362 = !DILocation(line: 552, column: 9, scope: !1358)
!1363 = !DILocation(line: 552, column: 7, scope: !1358)
!1364 = !DILocation(line: 553, column: 7, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1358, file: !93, line: 553, column: 7)
!1366 = !DILocation(line: 553, column: 17, scope: !1365)
!1367 = !DILocation(line: 553, column: 7, scope: !1358)
!1368 = !DILocation(line: 554, column: 21, scope: !1365)
!1369 = !DILocation(line: 554, column: 28, scope: !1365)
!1370 = !DILocation(line: 554, column: 34, scope: !1365)
!1371 = !DILocation(line: 554, column: 4, scope: !1365)
!1372 = !DILocation(line: 556, column: 11, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1365, file: !93, line: 556, column: 4)
!1374 = !DILocation(line: 556, column: 9, scope: !1373)
!1375 = !DILocation(line: 556, column: 16, scope: !1376)
!1376 = !DILexicalBlockFile(scope: !1377, file: !93, discriminator: 1)
!1377 = distinct !DILexicalBlock(scope: !1373, file: !93, line: 556, column: 4)
!1378 = !DILocation(line: 556, column: 21, scope: !1376)
!1379 = !DILocation(line: 556, column: 28, scope: !1376)
!1380 = !DILocation(line: 556, column: 18, scope: !1376)
!1381 = !DILocation(line: 556, column: 4, scope: !1376)
!1382 = !DILocation(line: 557, column: 26, scope: !1377)
!1383 = !DILocation(line: 557, column: 14, scope: !1377)
!1384 = !DILocation(line: 557, column: 21, scope: !1377)
!1385 = !DILocation(line: 557, column: 9, scope: !1377)
!1386 = !DILocation(line: 557, column: 5, scope: !1377)
!1387 = !DILocation(line: 557, column: 12, scope: !1377)
!1388 = !DILocation(line: 556, column: 39, scope: !1389)
!1389 = !DILexicalBlockFile(scope: !1377, file: !93, discriminator: 2)
!1390 = !DILocation(line: 556, column: 4, scope: !1389)
!1391 = distinct !{!1391, !1392}
!1392 = !DILocation(line: 556, column: 4, scope: !1365)
!1393 = !DILocation(line: 559, column: 9, scope: !1323)
!1394 = !DILocation(line: 559, column: 2, scope: !1323)
!1395 = !DILocation(line: 560, column: 1, scope: !1323)
!1396 = distinct !DISubprogram(name: "gui_entry_get_text_and_pos", scope: !93, file: !93, line: 562, type: !1397, isLocal: false, isDefinition: true, scopeLine: 563, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{!46, !31, !403}
!1399 = !DILocalVariable(name: "entry", arg: 1, scope: !1396, file: !93, line: 562, type: !31)
!1400 = !DILocation(line: 562, column: 49, scope: !1396)
!1401 = !DILocalVariable(name: "pos", arg: 2, scope: !1396, file: !93, line: 562, type: !403)
!1402 = !DILocation(line: 562, column: 61, scope: !1396)
!1403 = !DILocalVariable(name: "buf", scope: !1396, file: !93, line: 564, type: !46)
!1404 = !DILocation(line: 564, column: 8, scope: !1396)
!1405 = !DILocalVariable(name: "i", scope: !1396, file: !93, line: 565, type: !36)
!1406 = !DILocation(line: 565, column: 13, scope: !1396)
!1407 = !DILocation(line: 567, column: 2, scope: !1396)
!1408 = distinct !{!1408, !1407}
!1409 = !DILocation(line: 567, column: 10, scope: !1410)
!1410 = !DILexicalBlockFile(scope: !1411, file: !93, discriminator: 1)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !93, line: 567, column: 10)
!1412 = distinct !DILexicalBlock(scope: !1396, file: !93, line: 567, column: 4)
!1413 = !DILocation(line: 567, column: 16, scope: !1410)
!1414 = !DILocation(line: 567, column: 5, scope: !1415)
!1415 = !DILexicalBlockFile(scope: !1416, file: !93, discriminator: 2)
!1416 = distinct !DILexicalBlock(scope: !1411, file: !93, line: 567, column: 3)
!1417 = !DILocation(line: 567, column: 14, scope: !1418)
!1418 = !DILexicalBlockFile(scope: !1419, file: !93, discriminator: 3)
!1419 = distinct !DILexicalBlock(scope: !1411, file: !93, line: 567, column: 12)
!1420 = !DILocation(line: 567, column: 100, scope: !1418)
!1421 = !DILocation(line: 567, column: 7, scope: !1422)
!1422 = !DILexicalBlockFile(scope: !1412, file: !93, discriminator: 4)
!1423 = !DILocation(line: 569, column: 6, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1396, file: !93, line: 569, column: 6)
!1425 = !DILocation(line: 569, column: 13, scope: !1424)
!1426 = !DILocation(line: 569, column: 6, scope: !1396)
!1427 = !DILocation(line: 570, column: 24, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1424, file: !93, line: 569, column: 19)
!1429 = !DILocation(line: 570, column: 31, scope: !1428)
!1430 = !DILocation(line: 570, column: 9, scope: !1428)
!1431 = !DILocation(line: 570, column: 7, scope: !1428)
!1432 = !DILocation(line: 571, column: 35, scope: !1428)
!1433 = !DILocation(line: 571, column: 40, scope: !1428)
!1434 = !DILocation(line: 571, column: 47, scope: !1428)
!1435 = !DILocation(line: 571, column: 10, scope: !1428)
!1436 = !DILocation(line: 571, column: 54, scope: !1428)
!1437 = !DILocation(line: 571, column: 52, scope: !1428)
!1438 = !DILocation(line: 571, column: 4, scope: !1428)
!1439 = !DILocation(line: 571, column: 8, scope: !1428)
!1440 = !DILocation(line: 572, column: 2, scope: !1428)
!1441 = !DILocation(line: 573, column: 18, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1424, file: !93, line: 572, column: 9)
!1443 = !DILocation(line: 573, column: 25, scope: !1442)
!1444 = !DILocation(line: 573, column: 33, scope: !1442)
!1445 = !DILocation(line: 573, column: 36, scope: !1442)
!1446 = !DILocation(line: 573, column: 9, scope: !1442)
!1447 = !DILocation(line: 573, column: 7, scope: !1442)
!1448 = !DILocation(line: 574, column: 6, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1442, file: !93, line: 574, column: 6)
!1450 = !DILocation(line: 574, column: 15, scope: !1449)
!1451 = !DILocation(line: 574, column: 6, scope: !1442)
!1452 = !DILocation(line: 575, column: 30, scope: !1449)
!1453 = !DILocation(line: 575, column: 37, scope: !1449)
!1454 = !DILocation(line: 575, column: 43, scope: !1449)
!1455 = !DILocation(line: 575, column: 50, scope: !1449)
!1456 = !DILocation(line: 575, column: 55, scope: !1449)
!1457 = !DILocation(line: 575, column: 60, scope: !1449)
!1458 = !DILocation(line: 575, column: 4, scope: !1449)
!1459 = !DILocation(line: 578, column: 11, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !93, line: 578, column: 4)
!1461 = distinct !DILexicalBlock(scope: !1449, file: !93, line: 577, column: 3)
!1462 = !DILocation(line: 578, column: 9, scope: !1460)
!1463 = !DILocation(line: 578, column: 16, scope: !1464)
!1464 = !DILexicalBlockFile(scope: !1465, file: !93, discriminator: 1)
!1465 = distinct !DILexicalBlock(scope: !1460, file: !93, line: 578, column: 4)
!1466 = !DILocation(line: 578, column: 21, scope: !1464)
!1467 = !DILocation(line: 578, column: 28, scope: !1464)
!1468 = !DILocation(line: 578, column: 18, scope: !1464)
!1469 = !DILocation(line: 578, column: 4, scope: !1464)
!1470 = !DILocation(line: 579, column: 26, scope: !1465)
!1471 = !DILocation(line: 579, column: 14, scope: !1465)
!1472 = !DILocation(line: 579, column: 21, scope: !1465)
!1473 = !DILocation(line: 579, column: 9, scope: !1465)
!1474 = !DILocation(line: 579, column: 5, scope: !1465)
!1475 = !DILocation(line: 579, column: 12, scope: !1465)
!1476 = !DILocation(line: 578, column: 39, scope: !1477)
!1477 = !DILexicalBlockFile(scope: !1465, file: !93, discriminator: 2)
!1478 = !DILocation(line: 578, column: 4, scope: !1477)
!1479 = distinct !{!1479, !1480}
!1480 = !DILocation(line: 578, column: 4, scope: !1461)
!1481 = !DILocation(line: 580, column: 11, scope: !1461)
!1482 = !DILocation(line: 580, column: 18, scope: !1461)
!1483 = !DILocation(line: 580, column: 5, scope: !1461)
!1484 = !DILocation(line: 580, column: 9, scope: !1461)
!1485 = !DILocation(line: 583, column: 9, scope: !1396)
!1486 = !DILocation(line: 583, column: 2, scope: !1396)
!1487 = !DILocation(line: 584, column: 1, scope: !1396)
!1488 = distinct !DISubprogram(name: "entry_text_grow", scope: !93, file: !93, line: 60, type: !672, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!1489 = !DILocalVariable(name: "entry", arg: 1, scope: !1488, file: !93, line: 60, type: !31)
!1490 = !DILocation(line: 60, column: 44, scope: !1488)
!1491 = !DILocalVariable(name: "grow_size", arg: 2, scope: !1488, file: !93, line: 60, type: !36)
!1492 = !DILocation(line: 60, column: 55, scope: !1488)
!1493 = !DILocation(line: 62, column: 6, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1488, file: !93, line: 62, column: 6)
!1495 = !DILocation(line: 62, column: 13, scope: !1494)
!1496 = !DILocation(line: 62, column: 22, scope: !1494)
!1497 = !DILocation(line: 62, column: 21, scope: !1494)
!1498 = !DILocation(line: 62, column: 34, scope: !1494)
!1499 = !DILocation(line: 62, column: 41, scope: !1494)
!1500 = !DILocation(line: 62, column: 32, scope: !1494)
!1501 = !DILocation(line: 62, column: 6, scope: !1488)
!1502 = !DILocation(line: 63, column: 3, scope: !1494)
!1503 = !DILocation(line: 65, column: 36, scope: !1488)
!1504 = !DILocation(line: 65, column: 43, scope: !1488)
!1505 = !DILocation(line: 65, column: 54, scope: !1488)
!1506 = !DILocation(line: 65, column: 53, scope: !1488)
!1507 = !DILocation(line: 65, column: 22, scope: !1488)
!1508 = !DILocation(line: 65, column: 2, scope: !1488)
!1509 = !DILocation(line: 65, column: 9, scope: !1488)
!1510 = !DILocation(line: 65, column: 20, scope: !1488)
!1511 = !DILocation(line: 66, column: 26, scope: !1488)
!1512 = !DILocation(line: 66, column: 33, scope: !1488)
!1513 = !DILocation(line: 67, column: 23, scope: !1488)
!1514 = !DILocation(line: 67, column: 30, scope: !1488)
!1515 = !DILocation(line: 67, column: 21, scope: !1488)
!1516 = !DILocation(line: 66, column: 16, scope: !1488)
!1517 = !DILocation(line: 66, column: 2, scope: !1488)
!1518 = !DILocation(line: 66, column: 9, scope: !1488)
!1519 = !DILocation(line: 66, column: 14, scope: !1488)
!1520 = !DILocation(line: 69, column: 6, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1488, file: !93, line: 69, column: 6)
!1522 = !DILocation(line: 69, column: 13, scope: !1521)
!1523 = !DILocation(line: 69, column: 6, scope: !1488)
!1524 = !DILocation(line: 70, column: 30, scope: !1521)
!1525 = !DILocation(line: 70, column: 37, scope: !1521)
!1526 = !DILocation(line: 71, column: 25, scope: !1521)
!1527 = !DILocation(line: 71, column: 32, scope: !1521)
!1528 = !DILocation(line: 71, column: 23, scope: !1521)
!1529 = !DILocation(line: 70, column: 20, scope: !1521)
!1530 = !DILocation(line: 70, column: 3, scope: !1521)
!1531 = !DILocation(line: 70, column: 10, scope: !1521)
!1532 = !DILocation(line: 70, column: 18, scope: !1521)
!1533 = !DILocation(line: 72, column: 1, scope: !1488)
!1534 = distinct !DISubprogram(name: "gui_entry_insert_char", scope: !93, file: !93, line: 643, type: !1535, isLocal: false, isDefinition: true, scopeLine: 644, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{null, !31, !40}
!1537 = !DILocalVariable(name: "entry", arg: 1, scope: !1534, file: !93, line: 643, type: !31)
!1538 = !DILocation(line: 643, column: 43, scope: !1534)
!1539 = !DILocalVariable(name: "chr", arg: 2, scope: !1534, file: !93, line: 643, type: !40)
!1540 = !DILocation(line: 643, column: 58, scope: !1534)
!1541 = !DILocation(line: 645, column: 2, scope: !1534)
!1542 = distinct !{!1542, !1541}
!1543 = !DILocation(line: 645, column: 10, scope: !1544)
!1544 = !DILexicalBlockFile(scope: !1545, file: !93, discriminator: 1)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !93, line: 645, column: 10)
!1546 = distinct !DILexicalBlock(scope: !1534, file: !93, line: 645, column: 4)
!1547 = !DILocation(line: 645, column: 16, scope: !1544)
!1548 = !DILocation(line: 645, column: 5, scope: !1549)
!1549 = !DILexicalBlockFile(scope: !1550, file: !93, discriminator: 2)
!1550 = distinct !DILexicalBlock(scope: !1545, file: !93, line: 645, column: 3)
!1551 = !DILocation(line: 645, column: 14, scope: !1552)
!1552 = !DILexicalBlockFile(scope: !1553, file: !93, discriminator: 3)
!1553 = distinct !DILexicalBlock(scope: !1545, file: !93, line: 645, column: 12)
!1554 = !DILocation(line: 645, column: 100, scope: !1552)
!1555 = !DILocation(line: 645, column: 111, scope: !1556)
!1556 = !DILexicalBlockFile(scope: !1546, file: !93, discriminator: 4)
!1557 = !DILocation(line: 647, column: 6, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1534, file: !93, line: 647, column: 6)
!1559 = !DILocation(line: 647, column: 10, scope: !1558)
!1560 = !DILocation(line: 647, column: 15, scope: !1558)
!1561 = !DILocation(line: 647, column: 18, scope: !1562)
!1562 = !DILexicalBlockFile(scope: !1558, file: !93, discriminator: 1)
!1563 = !DILocation(line: 647, column: 22, scope: !1562)
!1564 = !DILocation(line: 647, column: 28, scope: !1562)
!1565 = !DILocation(line: 647, column: 31, scope: !1566)
!1566 = !DILexicalBlockFile(scope: !1558, file: !93, discriminator: 2)
!1567 = !DILocation(line: 647, column: 35, scope: !1566)
!1568 = !DILocation(line: 647, column: 6, scope: !1566)
!1569 = !DILocation(line: 648, column: 3, scope: !1558)
!1570 = !DILocation(line: 650, column: 6, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1534, file: !93, line: 650, column: 6)
!1572 = !DILocation(line: 650, column: 13, scope: !1571)
!1573 = !DILocation(line: 650, column: 18, scope: !1571)
!1574 = !DILocation(line: 650, column: 21, scope: !1575)
!1575 = !DILexicalBlockFile(scope: !1571, file: !93, discriminator: 1)
!1576 = !DILocation(line: 650, column: 28, scope: !1575)
!1577 = !DILocation(line: 650, column: 32, scope: !1575)
!1578 = !DILocation(line: 650, column: 37, scope: !1575)
!1579 = !DILocation(line: 650, column: 50, scope: !1580)
!1580 = !DILexicalBlockFile(scope: !1571, file: !93, discriminator: 2)
!1581 = !DILocation(line: 650, column: 40, scope: !1580)
!1582 = !DILocation(line: 650, column: 55, scope: !1580)
!1583 = !DILocation(line: 650, column: 6, scope: !1580)
!1584 = !DILocation(line: 651, column: 3, scope: !1571)
!1585 = !DILocation(line: 653, column: 24, scope: !1534)
!1586 = !DILocation(line: 653, column: 31, scope: !1534)
!1587 = !DILocation(line: 653, column: 38, scope: !1534)
!1588 = !DILocation(line: 653, column: 2, scope: !1534)
!1589 = !DILocation(line: 655, column: 18, scope: !1534)
!1590 = !DILocation(line: 655, column: 2, scope: !1534)
!1591 = !DILocation(line: 658, column: 2, scope: !1534)
!1592 = distinct !{!1592, !1591}
!1593 = !DILocation(line: 658, column: 17, scope: !1594)
!1594 = !DILexicalBlockFile(scope: !1595, file: !93, discriminator: 1)
!1595 = distinct !DILexicalBlock(scope: !1534, file: !93, line: 658, column: 5)
!1596 = !DILocation(line: 658, column: 24, scope: !1594)
!1597 = !DILocation(line: 658, column: 31, scope: !1594)
!1598 = !DILocation(line: 658, column: 38, scope: !1594)
!1599 = !DILocation(line: 658, column: 29, scope: !1594)
!1600 = !DILocation(line: 658, column: 42, scope: !1594)
!1601 = !DILocation(line: 658, column: 7, scope: !1594)
!1602 = !DILocation(line: 658, column: 49, scope: !1594)
!1603 = !DILocation(line: 658, column: 56, scope: !1594)
!1604 = !DILocation(line: 658, column: 63, scope: !1594)
!1605 = !DILocation(line: 658, column: 70, scope: !1594)
!1606 = !DILocation(line: 658, column: 61, scope: !1594)
!1607 = !DILocation(line: 658, column: 78, scope: !1594)
!1608 = !DILocation(line: 658, column: 85, scope: !1594)
!1609 = !DILocation(line: 658, column: 94, scope: !1594)
!1610 = !DILocation(line: 658, column: 101, scope: !1594)
!1611 = !DILocation(line: 658, column: 93, scope: !1594)
!1612 = !DILocation(line: 658, column: 105, scope: !1594)
!1613 = !DILocation(line: 658, column: 77, scope: !1594)
!1614 = !DILocation(line: 658, column: 110, scope: !1594)
!1615 = !DILocation(line: 658, column: 131, scope: !1594)
!1616 = !DILocation(line: 661, column: 6, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1534, file: !93, line: 661, column: 6)
!1618 = !DILocation(line: 661, column: 13, scope: !1617)
!1619 = !DILocation(line: 661, column: 6, scope: !1534)
!1620 = !DILocation(line: 662, column: 3, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1617, file: !93, line: 661, column: 27)
!1622 = distinct !{!1622, !1620}
!1623 = !DILocation(line: 662, column: 18, scope: !1624)
!1624 = !DILexicalBlockFile(scope: !1625, file: !93, discriminator: 1)
!1625 = distinct !DILexicalBlock(scope: !1621, file: !93, line: 662, column: 6)
!1626 = !DILocation(line: 662, column: 25, scope: !1624)
!1627 = !DILocation(line: 662, column: 35, scope: !1624)
!1628 = !DILocation(line: 662, column: 42, scope: !1624)
!1629 = !DILocation(line: 662, column: 33, scope: !1624)
!1630 = !DILocation(line: 662, column: 46, scope: !1624)
!1631 = !DILocation(line: 662, column: 50, scope: !1624)
!1632 = !DILocation(line: 662, column: 8, scope: !1624)
!1633 = !DILocation(line: 662, column: 57, scope: !1624)
!1634 = !DILocation(line: 662, column: 64, scope: !1624)
!1635 = !DILocation(line: 662, column: 74, scope: !1624)
!1636 = !DILocation(line: 662, column: 81, scope: !1624)
!1637 = !DILocation(line: 662, column: 72, scope: !1624)
!1638 = !DILocation(line: 662, column: 85, scope: !1624)
!1639 = !DILocation(line: 662, column: 93, scope: !1624)
!1640 = !DILocation(line: 662, column: 100, scope: !1624)
!1641 = !DILocation(line: 662, column: 109, scope: !1624)
!1642 = !DILocation(line: 662, column: 116, scope: !1624)
!1643 = !DILocation(line: 662, column: 108, scope: !1624)
!1644 = !DILocation(line: 662, column: 92, scope: !1624)
!1645 = !DILocation(line: 662, column: 121, scope: !1624)
!1646 = !DILocation(line: 662, column: 141, scope: !1624)
!1647 = !DILocation(line: 664, column: 18, scope: !1621)
!1648 = !DILocation(line: 664, column: 25, scope: !1621)
!1649 = !DILocation(line: 664, column: 29, scope: !1621)
!1650 = !DILocation(line: 664, column: 3, scope: !1621)
!1651 = !DILocation(line: 664, column: 10, scope: !1621)
!1652 = !DILocation(line: 664, column: 34, scope: !1621)
!1653 = !DILocation(line: 665, column: 2, scope: !1621)
!1654 = !DILocation(line: 667, column: 28, scope: !1534)
!1655 = !DILocation(line: 667, column: 14, scope: !1534)
!1656 = !DILocation(line: 667, column: 21, scope: !1534)
!1657 = !DILocation(line: 667, column: 2, scope: !1534)
!1658 = !DILocation(line: 667, column: 9, scope: !1534)
!1659 = !DILocation(line: 667, column: 26, scope: !1534)
!1660 = !DILocation(line: 668, column: 2, scope: !1534)
!1661 = !DILocation(line: 668, column: 9, scope: !1534)
!1662 = !DILocation(line: 668, column: 17, scope: !1534)
!1663 = !DILocation(line: 669, column: 2, scope: !1534)
!1664 = !DILocation(line: 669, column: 9, scope: !1534)
!1665 = !DILocation(line: 669, column: 12, scope: !1534)
!1666 = !DILocation(line: 671, column: 23, scope: !1534)
!1667 = !DILocation(line: 671, column: 2, scope: !1534)
!1668 = !DILocation(line: 672, column: 17, scope: !1534)
!1669 = !DILocation(line: 672, column: 2, scope: !1534)
!1670 = !DILocation(line: 673, column: 1, scope: !1534)
!1671 = !DILocation(line: 673, column: 1, scope: !1672)
!1672 = !DILexicalBlockFile(scope: !1534, file: !93, discriminator: 1)
!1673 = distinct !DISubprogram(name: "gui_entry_get_cutbuffer", scope: !93, file: !93, line: 675, type: !1324, isLocal: false, isDefinition: true, scopeLine: 676, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!1674 = !DILocalVariable(name: "entry", arg: 1, scope: !1673, file: !93, line: 675, type: !31)
!1675 = !DILocation(line: 675, column: 46, scope: !1673)
!1676 = !DILocalVariable(name: "tmp", scope: !1673, file: !93, line: 677, type: !84)
!1677 = !DILocation(line: 677, column: 27, scope: !1673)
!1678 = !DILocalVariable(name: "buf", scope: !1673, file: !93, line: 678, type: !46)
!1679 = !DILocation(line: 678, column: 8, scope: !1673)
!1680 = !DILocalVariable(name: "i", scope: !1673, file: !93, line: 679, type: !36)
!1681 = !DILocation(line: 679, column: 13, scope: !1673)
!1682 = !DILocation(line: 681, column: 2, scope: !1673)
!1683 = distinct !{!1683, !1682}
!1684 = !DILocation(line: 681, column: 10, scope: !1685)
!1685 = !DILexicalBlockFile(scope: !1686, file: !93, discriminator: 1)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !93, line: 681, column: 10)
!1687 = distinct !DILexicalBlock(scope: !1673, file: !93, line: 681, column: 4)
!1688 = !DILocation(line: 681, column: 16, scope: !1685)
!1689 = !DILocation(line: 681, column: 5, scope: !1690)
!1690 = !DILexicalBlockFile(scope: !1691, file: !93, discriminator: 2)
!1691 = distinct !DILexicalBlock(scope: !1686, file: !93, line: 681, column: 3)
!1692 = !DILocation(line: 681, column: 14, scope: !1693)
!1693 = !DILexicalBlockFile(scope: !1694, file: !93, discriminator: 3)
!1694 = distinct !DILexicalBlock(scope: !1686, file: !93, line: 681, column: 12)
!1695 = !DILocation(line: 681, column: 100, scope: !1693)
!1696 = !DILocation(line: 681, column: 7, scope: !1697)
!1697 = !DILexicalBlockFile(scope: !1687, file: !93, discriminator: 4)
!1698 = !DILocation(line: 683, column: 6, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1673, file: !93, line: 683, column: 6)
!1700 = !DILocation(line: 683, column: 13, scope: !1699)
!1701 = !DILocation(line: 683, column: 23, scope: !1699)
!1702 = !DILocation(line: 683, column: 30, scope: !1699)
!1703 = !DILocation(line: 683, column: 33, scope: !1704)
!1704 = !DILexicalBlockFile(scope: !1699, file: !93, discriminator: 1)
!1705 = !DILocation(line: 683, column: 40, scope: !1704)
!1706 = !DILocation(line: 683, column: 51, scope: !1704)
!1707 = !DILocation(line: 683, column: 56, scope: !1704)
!1708 = !DILocation(line: 683, column: 6, scope: !1704)
!1709 = !DILocation(line: 684, column: 3, scope: !1699)
!1710 = !DILocation(line: 686, column: 8, scope: !1673)
!1711 = !DILocation(line: 686, column: 15, scope: !1673)
!1712 = !DILocation(line: 686, column: 26, scope: !1673)
!1713 = !DILocation(line: 686, column: 6, scope: !1673)
!1714 = !DILocation(line: 688, column: 6, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1673, file: !93, line: 688, column: 6)
!1716 = !DILocation(line: 688, column: 11, scope: !1715)
!1717 = !DILocation(line: 688, column: 21, scope: !1715)
!1718 = !DILocation(line: 688, column: 6, scope: !1673)
!1719 = !DILocation(line: 689, column: 17, scope: !1715)
!1720 = !DILocation(line: 691, column: 6, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1673, file: !93, line: 691, column: 6)
!1722 = !DILocation(line: 691, column: 13, scope: !1721)
!1723 = !DILocation(line: 691, column: 6, scope: !1673)
!1724 = !DILocation(line: 692, column: 24, scope: !1721)
!1725 = !DILocation(line: 692, column: 29, scope: !1721)
!1726 = !DILocation(line: 692, column: 9, scope: !1721)
!1727 = !DILocation(line: 692, column: 7, scope: !1721)
!1728 = !DILocation(line: 692, column: 3, scope: !1721)
!1729 = !DILocation(line: 694, column: 18, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1721, file: !93, line: 693, column: 7)
!1731 = !DILocation(line: 694, column: 23, scope: !1730)
!1732 = !DILocation(line: 694, column: 36, scope: !1730)
!1733 = !DILocation(line: 694, column: 39, scope: !1730)
!1734 = !DILocation(line: 694, column: 9, scope: !1730)
!1735 = !DILocation(line: 694, column: 7, scope: !1730)
!1736 = !DILocation(line: 695, column: 7, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1730, file: !93, line: 695, column: 7)
!1738 = !DILocation(line: 695, column: 17, scope: !1737)
!1739 = !DILocation(line: 695, column: 7, scope: !1730)
!1740 = !DILocation(line: 696, column: 21, scope: !1737)
!1741 = !DILocation(line: 696, column: 26, scope: !1737)
!1742 = !DILocation(line: 696, column: 37, scope: !1737)
!1743 = !DILocation(line: 696, column: 4, scope: !1737)
!1744 = !DILocation(line: 698, column: 11, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1737, file: !93, line: 698, column: 4)
!1746 = !DILocation(line: 698, column: 9, scope: !1745)
!1747 = !DILocation(line: 698, column: 16, scope: !1748)
!1748 = !DILexicalBlockFile(scope: !1749, file: !93, discriminator: 1)
!1749 = distinct !DILexicalBlock(scope: !1745, file: !93, line: 698, column: 4)
!1750 = !DILocation(line: 698, column: 21, scope: !1748)
!1751 = !DILocation(line: 698, column: 26, scope: !1748)
!1752 = !DILocation(line: 698, column: 18, scope: !1748)
!1753 = !DILocation(line: 698, column: 4, scope: !1748)
!1754 = !DILocation(line: 699, column: 29, scope: !1749)
!1755 = !DILocation(line: 699, column: 14, scope: !1749)
!1756 = !DILocation(line: 699, column: 19, scope: !1749)
!1757 = !DILocation(line: 699, column: 9, scope: !1749)
!1758 = !DILocation(line: 699, column: 5, scope: !1749)
!1759 = !DILocation(line: 699, column: 12, scope: !1749)
!1760 = !DILocation(line: 698, column: 42, scope: !1761)
!1761 = !DILexicalBlockFile(scope: !1749, file: !93, discriminator: 2)
!1762 = !DILocation(line: 698, column: 4, scope: !1761)
!1763 = distinct !{!1763, !1764}
!1764 = !DILocation(line: 698, column: 4, scope: !1737)
!1765 = !DILocation(line: 701, column: 9, scope: !1673)
!1766 = !DILocation(line: 701, column: 2, scope: !1673)
!1767 = !DILocation(line: 702, column: 1, scope: !1673)
!1768 = distinct !DISubprogram(name: "gui_entry_get_next_cutbuffer", scope: !93, file: !93, line: 704, type: !1324, isLocal: false, isDefinition: true, scopeLine: 705, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!1769 = !DILocalVariable(name: "entry", arg: 1, scope: !1768, file: !93, line: 704, type: !31)
!1770 = !DILocation(line: 704, column: 51, scope: !1768)
!1771 = !DILocalVariable(name: "tmp", scope: !1768, file: !93, line: 706, type: !84)
!1772 = !DILocation(line: 706, column: 27, scope: !1768)
!1773 = !DILocation(line: 708, column: 2, scope: !1768)
!1774 = distinct !{!1774, !1773}
!1775 = !DILocation(line: 708, column: 10, scope: !1776)
!1776 = !DILexicalBlockFile(scope: !1777, file: !93, discriminator: 1)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !93, line: 708, column: 10)
!1778 = distinct !DILexicalBlock(scope: !1768, file: !93, line: 708, column: 4)
!1779 = !DILocation(line: 708, column: 16, scope: !1776)
!1780 = !DILocation(line: 708, column: 5, scope: !1781)
!1781 = !DILexicalBlockFile(scope: !1782, file: !93, discriminator: 2)
!1782 = distinct !DILexicalBlock(scope: !1777, file: !93, line: 708, column: 3)
!1783 = !DILocation(line: 708, column: 14, scope: !1784)
!1784 = !DILexicalBlockFile(scope: !1785, file: !93, discriminator: 3)
!1785 = distinct !DILexicalBlock(scope: !1777, file: !93, line: 708, column: 12)
!1786 = !DILocation(line: 708, column: 100, scope: !1784)
!1787 = !DILocation(line: 708, column: 7, scope: !1788)
!1788 = !DILexicalBlockFile(scope: !1778, file: !93, discriminator: 4)
!1789 = !DILocation(line: 710, column: 6, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1768, file: !93, line: 710, column: 6)
!1791 = !DILocation(line: 710, column: 13, scope: !1790)
!1792 = !DILocation(line: 710, column: 23, scope: !1790)
!1793 = !DILocation(line: 710, column: 6, scope: !1768)
!1794 = !DILocation(line: 711, column: 3, scope: !1790)
!1795 = !DILocation(line: 713, column: 8, scope: !1768)
!1796 = !DILocation(line: 713, column: 15, scope: !1768)
!1797 = !DILocation(line: 713, column: 26, scope: !1768)
!1798 = !DILocation(line: 713, column: 6, scope: !1768)
!1799 = !DILocation(line: 715, column: 36, scope: !1768)
!1800 = !DILocation(line: 715, column: 43, scope: !1768)
!1801 = !DILocation(line: 715, column: 54, scope: !1768)
!1802 = !DILocation(line: 715, column: 21, scope: !1768)
!1803 = !DILocation(line: 715, column: 2, scope: !1768)
!1804 = !DILocation(line: 715, column: 9, scope: !1768)
!1805 = !DILocation(line: 715, column: 19, scope: !1768)
!1806 = !DILocation(line: 716, column: 36, scope: !1768)
!1807 = !DILocation(line: 716, column: 43, scope: !1768)
!1808 = !DILocation(line: 716, column: 54, scope: !1768)
!1809 = !DILocation(line: 716, column: 21, scope: !1768)
!1810 = !DILocation(line: 716, column: 2, scope: !1768)
!1811 = !DILocation(line: 716, column: 9, scope: !1768)
!1812 = !DILocation(line: 716, column: 19, scope: !1768)
!1813 = !DILocation(line: 718, column: 33, scope: !1768)
!1814 = !DILocation(line: 718, column: 9, scope: !1768)
!1815 = !DILocation(line: 718, column: 2, scope: !1768)
!1816 = !DILocation(line: 719, column: 1, scope: !1768)
!1817 = distinct !DISubprogram(name: "gui_entry_erase_to", scope: !93, file: !93, line: 721, type: !1818, isLocal: false, isDefinition: true, scopeLine: 722, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!1818 = !DISubroutineType(types: !1819)
!1819 = !{null, !31, !36, !1820}
!1820 = !DIDerivedType(tag: DW_TAG_typedef, name: "CUTBUFFER_UPDATE_OP", file: !4, line: 38, baseType: !3)
!1821 = !DILocalVariable(name: "entry", arg: 1, scope: !1817, file: !93, line: 721, type: !31)
!1822 = !DILocation(line: 721, column: 40, scope: !1817)
!1823 = !DILocalVariable(name: "pos", arg: 2, scope: !1817, file: !93, line: 721, type: !36)
!1824 = !DILocation(line: 721, column: 51, scope: !1817)
!1825 = !DILocalVariable(name: "update_cutbuffer", arg: 3, scope: !1817, file: !93, line: 721, type: !1820)
!1826 = !DILocation(line: 721, column: 76, scope: !1817)
!1827 = !DILocalVariable(name: "newpos", scope: !1817, file: !93, line: 723, type: !36)
!1828 = !DILocation(line: 723, column: 6, scope: !1817)
!1829 = !DILocalVariable(name: "size", scope: !1817, file: !93, line: 723, type: !36)
!1830 = !DILocation(line: 723, column: 14, scope: !1817)
!1831 = !DILocation(line: 725, column: 2, scope: !1817)
!1832 = distinct !{!1832, !1831}
!1833 = !DILocation(line: 725, column: 10, scope: !1834)
!1834 = !DILexicalBlockFile(scope: !1835, file: !93, discriminator: 1)
!1835 = distinct !DILexicalBlock(scope: !1836, file: !93, line: 725, column: 10)
!1836 = distinct !DILexicalBlock(scope: !1817, file: !93, line: 725, column: 4)
!1837 = !DILocation(line: 725, column: 16, scope: !1834)
!1838 = !DILocation(line: 725, column: 5, scope: !1839)
!1839 = !DILexicalBlockFile(scope: !1840, file: !93, discriminator: 2)
!1840 = distinct !DILexicalBlock(scope: !1835, file: !93, line: 725, column: 3)
!1841 = !DILocation(line: 725, column: 14, scope: !1842)
!1842 = !DILexicalBlockFile(scope: !1843, file: !93, discriminator: 3)
!1843 = distinct !DILexicalBlock(scope: !1835, file: !93, line: 725, column: 12)
!1844 = !DILocation(line: 725, column: 100, scope: !1842)
!1845 = !DILocation(line: 725, column: 111, scope: !1846)
!1846 = !DILexicalBlockFile(scope: !1836, file: !93, discriminator: 4)
!1847 = !DILocation(line: 727, column: 34, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1817, file: !93, line: 727, column: 2)
!1849 = !DILocation(line: 727, column: 16, scope: !1848)
!1850 = !DILocation(line: 727, column: 14, scope: !1848)
!1851 = !DILocation(line: 727, column: 7, scope: !1848)
!1852 = !DILocation(line: 727, column: 42, scope: !1853)
!1853 = !DILexicalBlockFile(scope: !1854, file: !93, discriminator: 1)
!1854 = distinct !DILexicalBlock(scope: !1848, file: !93, line: 727, column: 2)
!1855 = !DILocation(line: 727, column: 51, scope: !1853)
!1856 = !DILocation(line: 727, column: 49, scope: !1853)
!1857 = !DILocation(line: 727, column: 2, scope: !1853)
!1858 = !DILocation(line: 728, column: 12, scope: !1854)
!1859 = !DILocation(line: 728, column: 19, scope: !1854)
!1860 = !DILocation(line: 728, column: 10, scope: !1854)
!1861 = !DILocation(line: 728, column: 3, scope: !1854)
!1862 = !DILocation(line: 727, column: 60, scope: !1863)
!1863 = !DILexicalBlockFile(scope: !1854, file: !93, discriminator: 2)
!1864 = !DILocation(line: 727, column: 2, scope: !1863)
!1865 = distinct !{!1865, !1866}
!1866 = !DILocation(line: 727, column: 2, scope: !1817)
!1867 = !DILocation(line: 729, column: 18, scope: !1817)
!1868 = !DILocation(line: 729, column: 25, scope: !1817)
!1869 = !DILocation(line: 729, column: 31, scope: !1817)
!1870 = !DILocation(line: 729, column: 2, scope: !1817)
!1871 = !DILocation(line: 730, column: 1, scope: !1817)
!1872 = !DILocation(line: 730, column: 1, scope: !1873)
!1873 = !DILexicalBlockFile(scope: !1817, file: !93, discriminator: 1)
!1874 = distinct !DISubprogram(name: "gui_entry_get_pos", scope: !93, file: !93, line: 1125, type: !1875, isLocal: false, isDefinition: true, scopeLine: 1126, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{!36, !31}
!1877 = !DILocalVariable(name: "entry", arg: 1, scope: !1874, file: !93, line: 1125, type: !31)
!1878 = !DILocation(line: 1125, column: 38, scope: !1874)
!1879 = !DILocation(line: 1127, column: 9, scope: !1874)
!1880 = distinct !{!1880, !1879}
!1881 = !DILocation(line: 1127, column: 17, scope: !1882)
!1882 = !DILexicalBlockFile(scope: !1883, file: !93, discriminator: 1)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !93, line: 1127, column: 17)
!1884 = distinct !DILexicalBlock(scope: !1874, file: !93, line: 1127, column: 11)
!1885 = !DILocation(line: 1127, column: 23, scope: !1882)
!1886 = !DILocation(line: 1127, column: 12, scope: !1887)
!1887 = !DILexicalBlockFile(scope: !1888, file: !93, discriminator: 2)
!1888 = distinct !DILexicalBlock(scope: !1883, file: !93, line: 1127, column: 10)
!1889 = !DILocation(line: 1127, column: 21, scope: !1890)
!1890 = !DILexicalBlockFile(scope: !1891, file: !93, discriminator: 3)
!1891 = distinct !DILexicalBlock(scope: !1883, file: !93, line: 1127, column: 19)
!1892 = !DILocation(line: 1127, column: 107, scope: !1890)
!1893 = !DILocation(line: 1127, column: 122, scope: !1894)
!1894 = !DILexicalBlockFile(scope: !1884, file: !93, discriminator: 4)
!1895 = !DILocation(line: 1129, column: 9, scope: !1874)
!1896 = !DILocation(line: 1129, column: 16, scope: !1874)
!1897 = !DILocation(line: 1129, column: 2, scope: !1874)
!1898 = !DILocation(line: 1130, column: 1, scope: !1874)
!1899 = distinct !DISubprogram(name: "gui_entry_erase", scope: !93, file: !93, line: 766, type: !1818, isLocal: false, isDefinition: true, scopeLine: 767, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!1900 = !DILocalVariable(name: "entry", arg: 1, scope: !1899, file: !93, line: 766, type: !31)
!1901 = !DILocation(line: 766, column: 37, scope: !1899)
!1902 = !DILocalVariable(name: "size", arg: 2, scope: !1899, file: !93, line: 766, type: !36)
!1903 = !DILocation(line: 766, column: 48, scope: !1899)
!1904 = !DILocalVariable(name: "update_cutbuffer", arg: 3, scope: !1899, file: !93, line: 766, type: !1820)
!1905 = !DILocation(line: 766, column: 74, scope: !1899)
!1906 = !DILocalVariable(name: "i", scope: !1899, file: !93, line: 768, type: !1907)
!1907 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1908, line: 216, baseType: !1909)
!1908 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/irssi/task1")
!1909 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!1910 = !DILocation(line: 768, column: 9, scope: !1899)
!1911 = !DILocalVariable(name: "w", scope: !1899, file: !93, line: 768, type: !1907)
!1912 = !DILocation(line: 768, column: 12, scope: !1899)
!1913 = !DILocation(line: 770, column: 9, scope: !1899)
!1914 = distinct !{!1914, !1913}
!1915 = !DILocation(line: 770, column: 17, scope: !1916)
!1916 = !DILexicalBlockFile(scope: !1917, file: !93, discriminator: 1)
!1917 = distinct !DILexicalBlock(scope: !1918, file: !93, line: 770, column: 17)
!1918 = distinct !DILexicalBlock(scope: !1899, file: !93, line: 770, column: 11)
!1919 = !DILocation(line: 770, column: 23, scope: !1916)
!1920 = !DILocation(line: 770, column: 12, scope: !1921)
!1921 = !DILexicalBlockFile(scope: !1922, file: !93, discriminator: 2)
!1922 = distinct !DILexicalBlock(scope: !1917, file: !93, line: 770, column: 10)
!1923 = !DILocation(line: 770, column: 21, scope: !1924)
!1924 = !DILexicalBlockFile(scope: !1925, file: !93, discriminator: 3)
!1925 = distinct !DILexicalBlock(scope: !1917, file: !93, line: 770, column: 19)
!1926 = !DILocation(line: 770, column: 107, scope: !1924)
!1927 = !DILocation(line: 770, column: 118, scope: !1928)
!1928 = !DILexicalBlockFile(scope: !1918, file: !93, discriminator: 4)
!1929 = !DILocation(line: 772, column: 6, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1899, file: !93, line: 772, column: 6)
!1931 = !DILocation(line: 772, column: 11, scope: !1930)
!1932 = !DILocation(line: 772, column: 16, scope: !1930)
!1933 = !DILocation(line: 772, column: 19, scope: !1934)
!1934 = !DILexicalBlockFile(scope: !1930, file: !93, discriminator: 1)
!1935 = !DILocation(line: 772, column: 26, scope: !1934)
!1936 = !DILocation(line: 772, column: 32, scope: !1934)
!1937 = !DILocation(line: 772, column: 30, scope: !1934)
!1938 = !DILocation(line: 772, column: 6, scope: !1934)
!1939 = !DILocation(line: 773, column: 3, scope: !1930)
!1940 = !DILocation(line: 775, column: 6, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1899, file: !93, line: 775, column: 6)
!1942 = !DILocation(line: 775, column: 23, scope: !1941)
!1943 = !DILocation(line: 775, column: 6, scope: !1899)
!1944 = !DILocalVariable(name: "cutbuffer_new_size", scope: !1945, file: !93, line: 776, type: !36)
!1945 = distinct !DILexicalBlock(scope: !1941, file: !93, line: 775, column: 49)
!1946 = !DILocation(line: 776, column: 7, scope: !1945)
!1947 = !DILocalVariable(name: "tmpcutbuffer", scope: !1945, file: !93, line: 777, type: !39)
!1948 = !DILocation(line: 777, column: 12, scope: !1945)
!1949 = !DILocalVariable(name: "tmp", scope: !1945, file: !93, line: 778, type: !84)
!1950 = !DILocation(line: 778, column: 28, scope: !1945)
!1951 = !DILocation(line: 778, column: 52, scope: !1945)
!1952 = !DILocation(line: 778, column: 59, scope: !1945)
!1953 = !DILocation(line: 778, column: 34, scope: !1945)
!1954 = !DILocation(line: 780, column: 7, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1945, file: !93, line: 780, column: 7)
!1956 = !DILocation(line: 780, column: 12, scope: !1955)
!1957 = !DILocation(line: 780, column: 26, scope: !1955)
!1958 = !DILocation(line: 780, column: 7, scope: !1945)
!1959 = !DILocation(line: 781, column: 21, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1955, file: !93, line: 780, column: 32)
!1961 = !DILocation(line: 782, column: 3, scope: !1960)
!1962 = !DILocation(line: 784, column: 24, scope: !1945)
!1963 = !DILocation(line: 784, column: 29, scope: !1945)
!1964 = !DILocation(line: 784, column: 45, scope: !1945)
!1965 = !DILocation(line: 784, column: 43, scope: !1945)
!1966 = !DILocation(line: 784, column: 22, scope: !1945)
!1967 = !DILocation(line: 785, column: 18, scope: !1945)
!1968 = !DILocation(line: 785, column: 23, scope: !1945)
!1969 = !DILocation(line: 785, column: 16, scope: !1945)
!1970 = !DILocation(line: 786, column: 3, scope: !1945)
!1971 = !DILocation(line: 786, column: 10, scope: !1945)
!1972 = !DILocation(line: 786, column: 27, scope: !1945)
!1973 = !DILocation(line: 787, column: 11, scope: !1945)
!1974 = !DILocation(line: 787, column: 3, scope: !1945)
!1975 = !DILocation(line: 789, column: 48, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1945, file: !93, line: 787, column: 29)
!1977 = !DILocation(line: 789, column: 66, scope: !1976)
!1978 = !DILocation(line: 789, column: 47, scope: !1976)
!1979 = !DILocation(line: 789, column: 35, scope: !1976)
!1980 = !DILocation(line: 789, column: 23, scope: !1976)
!1981 = !DILocation(line: 789, column: 5, scope: !1976)
!1982 = !DILocation(line: 789, column: 10, scope: !1976)
!1983 = !DILocation(line: 789, column: 20, scope: !1976)
!1984 = !DILocation(line: 790, column: 12, scope: !1976)
!1985 = !DILocation(line: 790, column: 17, scope: !1976)
!1986 = !DILocation(line: 790, column: 5, scope: !1976)
!1987 = !DILocation(line: 790, column: 28, scope: !1976)
!1988 = !DILocation(line: 791, column: 12, scope: !1976)
!1989 = !DILocation(line: 791, column: 17, scope: !1976)
!1990 = !DILocation(line: 791, column: 31, scope: !1976)
!1991 = !DILocation(line: 792, column: 12, scope: !1976)
!1992 = !DILocation(line: 792, column: 17, scope: !1976)
!1993 = !DILocation(line: 792, column: 29, scope: !1976)
!1994 = !DILocation(line: 792, column: 34, scope: !1976)
!1995 = !DILocation(line: 792, column: 27, scope: !1976)
!1996 = !DILocation(line: 792, column: 5, scope: !1976)
!1997 = !DILocation(line: 793, column: 12, scope: !1976)
!1998 = !DILocation(line: 793, column: 19, scope: !1976)
!1999 = !DILocation(line: 793, column: 26, scope: !1976)
!2000 = !DILocation(line: 793, column: 33, scope: !1976)
!2001 = !DILocation(line: 793, column: 24, scope: !1976)
!2002 = !DILocation(line: 793, column: 39, scope: !1976)
!2003 = !DILocation(line: 793, column: 37, scope: !1976)
!2004 = !DILocation(line: 793, column: 45, scope: !1976)
!2005 = !DILocation(line: 793, column: 50, scope: !1976)
!2006 = !DILocation(line: 795, column: 26, scope: !1976)
!2007 = !DILocation(line: 795, column: 5, scope: !1976)
!2008 = !DILocation(line: 795, column: 10, scope: !1976)
!2009 = !DILocation(line: 795, column: 24, scope: !1976)
!2010 = !DILocation(line: 796, column: 20, scope: !1976)
!2011 = !DILocation(line: 796, column: 5, scope: !1976)
!2012 = !DILocation(line: 796, column: 10, scope: !1976)
!2013 = !DILocation(line: 796, column: 40, scope: !1976)
!2014 = !DILocation(line: 797, column: 12, scope: !1976)
!2015 = !DILocation(line: 797, column: 5, scope: !1976)
!2016 = !DILocation(line: 798, column: 5, scope: !1976)
!2017 = !DILocation(line: 801, column: 48, scope: !1976)
!2018 = !DILocation(line: 801, column: 66, scope: !1976)
!2019 = !DILocation(line: 801, column: 47, scope: !1976)
!2020 = !DILocation(line: 801, column: 35, scope: !1976)
!2021 = !DILocation(line: 801, column: 23, scope: !1976)
!2022 = !DILocation(line: 801, column: 5, scope: !1976)
!2023 = !DILocation(line: 801, column: 10, scope: !1976)
!2024 = !DILocation(line: 801, column: 20, scope: !1976)
!2025 = !DILocation(line: 802, column: 12, scope: !1976)
!2026 = !DILocation(line: 802, column: 17, scope: !1976)
!2027 = !DILocation(line: 802, column: 5, scope: !1976)
!2028 = !DILocation(line: 802, column: 28, scope: !1976)
!2029 = !DILocation(line: 802, column: 35, scope: !1976)
!2030 = !DILocation(line: 802, column: 42, scope: !1976)
!2031 = !DILocation(line: 802, column: 49, scope: !1976)
!2032 = !DILocation(line: 802, column: 40, scope: !1976)
!2033 = !DILocation(line: 802, column: 55, scope: !1976)
!2034 = !DILocation(line: 802, column: 53, scope: !1976)
!2035 = !DILocation(line: 803, column: 12, scope: !1976)
!2036 = !DILocation(line: 803, column: 17, scope: !1976)
!2037 = !DILocation(line: 804, column: 12, scope: !1976)
!2038 = !DILocation(line: 804, column: 17, scope: !1976)
!2039 = !DILocation(line: 804, column: 29, scope: !1976)
!2040 = !DILocation(line: 804, column: 27, scope: !1976)
!2041 = !DILocation(line: 804, column: 5, scope: !1976)
!2042 = !DILocation(line: 804, column: 35, scope: !1976)
!2043 = !DILocation(line: 805, column: 12, scope: !1976)
!2044 = !DILocation(line: 805, column: 17, scope: !1976)
!2045 = !DILocation(line: 805, column: 31, scope: !1976)
!2046 = !DILocation(line: 807, column: 26, scope: !1976)
!2047 = !DILocation(line: 807, column: 5, scope: !1976)
!2048 = !DILocation(line: 807, column: 10, scope: !1976)
!2049 = !DILocation(line: 807, column: 24, scope: !1976)
!2050 = !DILocation(line: 808, column: 20, scope: !1976)
!2051 = !DILocation(line: 808, column: 5, scope: !1976)
!2052 = !DILocation(line: 808, column: 10, scope: !1976)
!2053 = !DILocation(line: 808, column: 40, scope: !1976)
!2054 = !DILocation(line: 809, column: 12, scope: !1976)
!2055 = !DILocation(line: 809, column: 5, scope: !1976)
!2056 = !DILocation(line: 810, column: 5, scope: !1976)
!2057 = !DILocation(line: 814, column: 9, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !1976, file: !93, line: 814, column: 9)
!2059 = !DILocation(line: 814, column: 14, scope: !2058)
!2060 = !DILocation(line: 814, column: 30, scope: !2058)
!2061 = !DILocation(line: 814, column: 28, scope: !2058)
!2062 = !DILocation(line: 814, column: 9, scope: !1976)
!2063 = !DILocation(line: 815, column: 13, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2058, file: !93, line: 814, column: 36)
!2065 = !DILocation(line: 815, column: 18, scope: !2064)
!2066 = !DILocation(line: 815, column: 6, scope: !2064)
!2067 = !DILocation(line: 816, column: 49, scope: !2064)
!2068 = !DILocation(line: 816, column: 53, scope: !2064)
!2069 = !DILocation(line: 816, column: 48, scope: !2064)
!2070 = !DILocation(line: 816, column: 36, scope: !2064)
!2071 = !DILocation(line: 816, column: 24, scope: !2064)
!2072 = !DILocation(line: 816, column: 6, scope: !2064)
!2073 = !DILocation(line: 816, column: 11, scope: !2064)
!2074 = !DILocation(line: 816, column: 21, scope: !2064)
!2075 = !DILocation(line: 817, column: 5, scope: !2064)
!2076 = !DILocation(line: 819, column: 26, scope: !1976)
!2077 = !DILocation(line: 819, column: 5, scope: !1976)
!2078 = !DILocation(line: 819, column: 10, scope: !1976)
!2079 = !DILocation(line: 819, column: 24, scope: !1976)
!2080 = !DILocation(line: 820, column: 20, scope: !1976)
!2081 = !DILocation(line: 820, column: 5, scope: !1976)
!2082 = !DILocation(line: 820, column: 10, scope: !1976)
!2083 = !DILocation(line: 820, column: 26, scope: !1976)
!2084 = !DILocation(line: 821, column: 12, scope: !1976)
!2085 = !DILocation(line: 821, column: 17, scope: !1976)
!2086 = !DILocation(line: 821, column: 5, scope: !1976)
!2087 = !DILocation(line: 821, column: 28, scope: !1976)
!2088 = !DILocation(line: 821, column: 35, scope: !1976)
!2089 = !DILocation(line: 821, column: 42, scope: !1976)
!2090 = !DILocation(line: 821, column: 49, scope: !1976)
!2091 = !DILocation(line: 821, column: 40, scope: !1976)
!2092 = !DILocation(line: 821, column: 55, scope: !1976)
!2093 = !DILocation(line: 821, column: 53, scope: !1976)
!2094 = !DILocation(line: 821, column: 61, scope: !1976)
!2095 = !DILocation(line: 821, column: 66, scope: !1976)
!2096 = !DILocation(line: 822, column: 5, scope: !1976)
!2097 = !DILocation(line: 826, column: 5, scope: !1976)
!2098 = !DILocation(line: 828, column: 2, scope: !1945)
!2099 = !DILocation(line: 830, column: 6, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !1899, file: !93, line: 830, column: 6)
!2101 = !DILocation(line: 830, column: 13, scope: !2100)
!2102 = !DILocation(line: 830, column: 6, scope: !1899)
!2103 = !DILocation(line: 831, column: 3, scope: !2100)
!2104 = !DILocation(line: 831, column: 10, scope: !2105)
!2105 = !DILexicalBlockFile(scope: !2100, file: !93, discriminator: 1)
!2106 = !DILocation(line: 831, column: 17, scope: !2105)
!2107 = !DILocation(line: 831, column: 21, scope: !2105)
!2108 = !DILocation(line: 831, column: 20, scope: !2105)
!2109 = !DILocation(line: 831, column: 26, scope: !2105)
!2110 = !DILocation(line: 831, column: 25, scope: !2105)
!2111 = !DILocation(line: 831, column: 28, scope: !2105)
!2112 = !DILocation(line: 831, column: 32, scope: !2105)
!2113 = !DILocation(line: 832, column: 32, scope: !2100)
!2114 = !DILocation(line: 832, column: 39, scope: !2100)
!2115 = !DILocation(line: 832, column: 43, scope: !2100)
!2116 = !DILocation(line: 832, column: 42, scope: !2100)
!2117 = !DILocation(line: 832, column: 48, scope: !2100)
!2118 = !DILocation(line: 832, column: 47, scope: !2100)
!2119 = !DILocation(line: 832, column: 20, scope: !2100)
!2120 = !DILocation(line: 832, column: 27, scope: !2100)
!2121 = !DILocation(line: 832, column: 10, scope: !2100)
!2122 = !DILocation(line: 832, column: 52, scope: !2100)
!2123 = !DILocation(line: 831, column: 3, scope: !2124)
!2124 = !DILexicalBlockFile(scope: !2100, file: !93, discriminator: 2)
!2125 = !DILocation(line: 832, column: 59, scope: !2105)
!2126 = !DILocation(line: 831, column: 3, scope: !2127)
!2127 = !DILexicalBlockFile(scope: !2100, file: !93, discriminator: 3)
!2128 = distinct !{!2128, !2103}
!2129 = !DILocation(line: 831, column: 3, scope: !2130)
!2130 = !DILexicalBlockFile(scope: !2100, file: !93, discriminator: 4)
!2131 = !DILocation(line: 834, column: 2, scope: !1899)
!2132 = distinct !{!2132, !2131}
!2133 = !DILocation(line: 834, column: 17, scope: !2134)
!2134 = !DILexicalBlockFile(scope: !2135, file: !93, discriminator: 1)
!2135 = distinct !DILexicalBlock(scope: !1899, file: !93, line: 834, column: 5)
!2136 = !DILocation(line: 834, column: 24, scope: !2134)
!2137 = !DILocation(line: 834, column: 31, scope: !2134)
!2138 = !DILocation(line: 834, column: 38, scope: !2134)
!2139 = !DILocation(line: 834, column: 29, scope: !2134)
!2140 = !DILocation(line: 834, column: 44, scope: !2134)
!2141 = !DILocation(line: 834, column: 42, scope: !2134)
!2142 = !DILocation(line: 834, column: 7, scope: !2134)
!2143 = !DILocation(line: 834, column: 52, scope: !2134)
!2144 = !DILocation(line: 834, column: 59, scope: !2134)
!2145 = !DILocation(line: 834, column: 66, scope: !2134)
!2146 = !DILocation(line: 834, column: 73, scope: !2134)
!2147 = !DILocation(line: 834, column: 64, scope: !2134)
!2148 = !DILocation(line: 834, column: 81, scope: !2134)
!2149 = !DILocation(line: 834, column: 88, scope: !2134)
!2150 = !DILocation(line: 834, column: 97, scope: !2134)
!2151 = !DILocation(line: 834, column: 104, scope: !2134)
!2152 = !DILocation(line: 834, column: 96, scope: !2134)
!2153 = !DILocation(line: 834, column: 107, scope: !2134)
!2154 = !DILocation(line: 834, column: 80, scope: !2134)
!2155 = !DILocation(line: 834, column: 111, scope: !2134)
!2156 = !DILocation(line: 834, column: 132, scope: !2134)
!2157 = !DILocation(line: 837, column: 6, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !1899, file: !93, line: 837, column: 6)
!2159 = !DILocation(line: 837, column: 13, scope: !2158)
!2160 = !DILocation(line: 837, column: 6, scope: !1899)
!2161 = !DILocation(line: 838, column: 12, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2163, file: !93, line: 838, column: 3)
!2163 = distinct !DILexicalBlock(scope: !2158, file: !93, line: 837, column: 27)
!2164 = !DILocation(line: 838, column: 19, scope: !2162)
!2165 = !DILocation(line: 838, column: 25, scope: !2162)
!2166 = !DILocation(line: 838, column: 23, scope: !2162)
!2167 = !DILocation(line: 838, column: 10, scope: !2162)
!2168 = !DILocation(line: 838, column: 8, scope: !2162)
!2169 = !DILocation(line: 838, column: 31, scope: !2170)
!2170 = !DILexicalBlockFile(scope: !2171, file: !93, discriminator: 1)
!2171 = distinct !DILexicalBlock(scope: !2162, file: !93, line: 838, column: 3)
!2172 = !DILocation(line: 838, column: 35, scope: !2170)
!2173 = !DILocation(line: 838, column: 42, scope: !2170)
!2174 = !DILocation(line: 838, column: 33, scope: !2170)
!2175 = !DILocation(line: 838, column: 3, scope: !2170)
!2176 = !DILocation(line: 839, column: 23, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !93, line: 839, column: 8)
!2178 = distinct !DILexicalBlock(scope: !2171, file: !93, line: 838, column: 52)
!2179 = !DILocation(line: 839, column: 24, scope: !2177)
!2180 = !DILocation(line: 839, column: 8, scope: !2177)
!2181 = !DILocation(line: 839, column: 15, scope: !2177)
!2182 = !DILocation(line: 839, column: 28, scope: !2177)
!2183 = !DILocation(line: 839, column: 8, scope: !2178)
!2184 = !DILocation(line: 840, column: 27, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2177, file: !93, line: 839, column: 36)
!2186 = !DILocation(line: 840, column: 28, scope: !2185)
!2187 = !DILocation(line: 840, column: 12, scope: !2185)
!2188 = !DILocation(line: 840, column: 19, scope: !2185)
!2189 = !DILocation(line: 840, column: 5, scope: !2185)
!2190 = !DILocation(line: 841, column: 4, scope: !2185)
!2191 = !DILocation(line: 842, column: 3, scope: !2178)
!2192 = !DILocation(line: 838, column: 48, scope: !2193)
!2193 = !DILexicalBlockFile(scope: !2171, file: !93, discriminator: 2)
!2194 = !DILocation(line: 838, column: 3, scope: !2193)
!2195 = distinct !{!2195, !2196}
!2196 = !DILocation(line: 838, column: 3, scope: !2163)
!2197 = !DILocation(line: 843, column: 3, scope: !2163)
!2198 = distinct !{!2198, !2197}
!2199 = !DILocation(line: 843, column: 18, scope: !2200)
!2200 = !DILexicalBlockFile(scope: !2201, file: !93, discriminator: 1)
!2201 = distinct !DILexicalBlock(scope: !2163, file: !93, line: 843, column: 6)
!2202 = !DILocation(line: 843, column: 25, scope: !2200)
!2203 = !DILocation(line: 843, column: 35, scope: !2200)
!2204 = !DILocation(line: 843, column: 42, scope: !2200)
!2205 = !DILocation(line: 843, column: 33, scope: !2200)
!2206 = !DILocation(line: 843, column: 48, scope: !2200)
!2207 = !DILocation(line: 843, column: 46, scope: !2200)
!2208 = !DILocation(line: 843, column: 53, scope: !2200)
!2209 = !DILocation(line: 843, column: 8, scope: !2200)
!2210 = !DILocation(line: 843, column: 60, scope: !2200)
!2211 = !DILocation(line: 843, column: 67, scope: !2200)
!2212 = !DILocation(line: 843, column: 77, scope: !2200)
!2213 = !DILocation(line: 843, column: 84, scope: !2200)
!2214 = !DILocation(line: 843, column: 75, scope: !2200)
!2215 = !DILocation(line: 843, column: 88, scope: !2200)
!2216 = !DILocation(line: 843, column: 96, scope: !2200)
!2217 = !DILocation(line: 843, column: 103, scope: !2200)
!2218 = !DILocation(line: 843, column: 114, scope: !2200)
!2219 = !DILocation(line: 843, column: 121, scope: !2200)
!2220 = !DILocation(line: 843, column: 112, scope: !2200)
!2221 = !DILocation(line: 843, column: 95, scope: !2200)
!2222 = !DILocation(line: 843, column: 126, scope: !2200)
!2223 = !DILocation(line: 843, column: 146, scope: !2200)
!2224 = !DILocation(line: 845, column: 10, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2163, file: !93, line: 845, column: 3)
!2226 = !DILocation(line: 845, column: 8, scope: !2225)
!2227 = !DILocation(line: 845, column: 15, scope: !2228)
!2228 = !DILexicalBlockFile(scope: !2229, file: !93, discriminator: 1)
!2229 = distinct !DILexicalBlock(scope: !2225, file: !93, line: 845, column: 3)
!2230 = !DILocation(line: 845, column: 19, scope: !2228)
!2231 = !DILocation(line: 845, column: 17, scope: !2228)
!2232 = !DILocation(line: 845, column: 3, scope: !2228)
!2233 = !DILocation(line: 846, column: 19, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2229, file: !93, line: 845, column: 30)
!2235 = !DILocation(line: 846, column: 26, scope: !2234)
!2236 = !DILocation(line: 846, column: 37, scope: !2234)
!2237 = !DILocation(line: 846, column: 35, scope: !2234)
!2238 = !DILocation(line: 846, column: 4, scope: !2234)
!2239 = !DILocation(line: 846, column: 11, scope: !2234)
!2240 = !DILocation(line: 846, column: 40, scope: !2234)
!2241 = !DILocation(line: 847, column: 3, scope: !2234)
!2242 = !DILocation(line: 845, column: 26, scope: !2243)
!2243 = !DILexicalBlockFile(scope: !2229, file: !93, discriminator: 2)
!2244 = !DILocation(line: 845, column: 3, scope: !2243)
!2245 = distinct !{!2245, !2246}
!2246 = !DILocation(line: 845, column: 3, scope: !2163)
!2247 = !DILocation(line: 848, column: 7, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2163, file: !93, line: 848, column: 7)
!2249 = !DILocation(line: 848, column: 14, scope: !2248)
!2250 = !DILocation(line: 848, column: 26, scope: !2248)
!2251 = !DILocation(line: 848, column: 23, scope: !2248)
!2252 = !DILocation(line: 848, column: 31, scope: !2248)
!2253 = !DILocation(line: 848, column: 34, scope: !2254)
!2254 = !DILexicalBlockFile(scope: !2248, file: !93, discriminator: 1)
!2255 = !DILocation(line: 848, column: 41, scope: !2254)
!2256 = !DILocation(line: 848, column: 52, scope: !2254)
!2257 = !DILocation(line: 848, column: 7, scope: !2254)
!2258 = !DILocation(line: 849, column: 11, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2248, file: !93, line: 848, column: 60)
!2260 = !DILocation(line: 849, column: 18, scope: !2259)
!2261 = !DILocation(line: 849, column: 4, scope: !2259)
!2262 = !DILocation(line: 850, column: 4, scope: !2259)
!2263 = !DILocation(line: 850, column: 11, scope: !2259)
!2264 = !DILocation(line: 850, column: 22, scope: !2259)
!2265 = !DILocation(line: 851, column: 3, scope: !2259)
!2266 = !DILocation(line: 852, column: 2, scope: !2163)
!2267 = !DILocation(line: 854, column: 16, scope: !1899)
!2268 = !DILocation(line: 854, column: 2, scope: !1899)
!2269 = !DILocation(line: 854, column: 9, scope: !1899)
!2270 = !DILocation(line: 854, column: 13, scope: !1899)
!2271 = !DILocation(line: 855, column: 28, scope: !1899)
!2272 = !DILocation(line: 855, column: 9, scope: !1899)
!2273 = !DILocation(line: 855, column: 16, scope: !1899)
!2274 = !DILocation(line: 855, column: 25, scope: !1899)
!2275 = !DILocation(line: 857, column: 24, scope: !1899)
!2276 = !DILocation(line: 857, column: 31, scope: !1899)
!2277 = !DILocation(line: 857, column: 38, scope: !1899)
!2278 = !DILocation(line: 857, column: 42, scope: !1899)
!2279 = !DILocation(line: 857, column: 41, scope: !1899)
!2280 = !DILocation(line: 857, column: 2, scope: !1899)
!2281 = !DILocation(line: 858, column: 23, scope: !1899)
!2282 = !DILocation(line: 858, column: 2, scope: !1899)
!2283 = !DILocation(line: 859, column: 17, scope: !1899)
!2284 = !DILocation(line: 859, column: 2, scope: !1899)
!2285 = !DILocation(line: 860, column: 1, scope: !1899)
!2286 = !DILocation(line: 860, column: 1, scope: !2287)
!2287 = !DILexicalBlockFile(scope: !1899, file: !93, discriminator: 1)
!2288 = distinct !DISubprogram(name: "get_cutbuffer_rec", scope: !93, file: !93, line: 732, type: !2289, isLocal: true, isDefinition: true, scopeLine: 733, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{!84, !31, !1820}
!2291 = !DILocalVariable(name: "entry", arg: 1, scope: !2288, file: !93, line: 732, type: !31)
!2292 = !DILocation(line: 732, column: 66, scope: !2288)
!2293 = !DILocalVariable(name: "update_cutbuffer", arg: 2, scope: !2288, file: !93, line: 732, type: !1820)
!2294 = !DILocation(line: 732, column: 93, scope: !2288)
!2295 = !DILocalVariable(name: "tmp", scope: !2288, file: !93, line: 734, type: !84)
!2296 = !DILocation(line: 734, column: 27, scope: !2288)
!2297 = !DILocation(line: 736, column: 2, scope: !2288)
!2298 = distinct !{!2298, !2297}
!2299 = !DILocation(line: 736, column: 10, scope: !2300)
!2300 = !DILexicalBlockFile(scope: !2301, file: !93, discriminator: 1)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !93, line: 736, column: 10)
!2302 = distinct !DILexicalBlock(scope: !2288, file: !93, line: 736, column: 4)
!2303 = !DILocation(line: 736, column: 16, scope: !2300)
!2304 = !DILocation(line: 736, column: 5, scope: !2305)
!2305 = !DILexicalBlockFile(scope: !2306, file: !93, discriminator: 2)
!2306 = distinct !DILexicalBlock(scope: !2301, file: !93, line: 736, column: 3)
!2307 = !DILocation(line: 736, column: 14, scope: !2308)
!2308 = !DILexicalBlockFile(scope: !2309, file: !93, discriminator: 3)
!2309 = distinct !DILexicalBlock(scope: !2301, file: !93, line: 736, column: 12)
!2310 = !DILocation(line: 736, column: 100, scope: !2308)
!2311 = !DILocation(line: 736, column: 7, scope: !2312)
!2312 = !DILexicalBlockFile(scope: !2302, file: !93, discriminator: 4)
!2313 = !DILocation(line: 738, column: 6, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2288, file: !93, line: 738, column: 6)
!2315 = !DILocation(line: 738, column: 13, scope: !2314)
!2316 = !DILocation(line: 738, column: 23, scope: !2314)
!2317 = !DILocation(line: 738, column: 6, scope: !2288)
!2318 = !DILocation(line: 740, column: 38, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2314, file: !93, line: 738, column: 31)
!2320 = !DILocation(line: 740, column: 45, scope: !2319)
!2321 = !DILocation(line: 740, column: 22, scope: !2319)
!2322 = !DILocation(line: 740, column: 3, scope: !2319)
!2323 = !DILocation(line: 740, column: 10, scope: !2319)
!2324 = !DILocation(line: 740, column: 20, scope: !2319)
!2325 = !DILocation(line: 741, column: 2, scope: !2319)
!2326 = !DILocation(line: 742, column: 9, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2314, file: !93, line: 741, column: 9)
!2328 = !DILocation(line: 742, column: 16, scope: !2327)
!2329 = !DILocation(line: 742, column: 27, scope: !2327)
!2330 = !DILocation(line: 742, column: 7, scope: !2327)
!2331 = !DILocation(line: 744, column: 7, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2327, file: !93, line: 744, column: 7)
!2333 = !DILocation(line: 744, column: 11, scope: !2332)
!2334 = !DILocation(line: 744, column: 18, scope: !2332)
!2335 = !DILocation(line: 744, column: 21, scope: !2336)
!2336 = !DILexicalBlockFile(scope: !2332, file: !93, discriminator: 1)
!2337 = !DILocation(line: 744, column: 26, scope: !2336)
!2338 = !DILocation(line: 744, column: 40, scope: !2336)
!2339 = !DILocation(line: 745, column: 7, scope: !2332)
!2340 = !DILocation(line: 745, column: 12, scope: !2336)
!2341 = !DILocation(line: 745, column: 19, scope: !2336)
!2342 = !DILocation(line: 746, column: 4, scope: !2332)
!2343 = !DILocation(line: 746, column: 7, scope: !2336)
!2344 = !DILocation(line: 746, column: 24, scope: !2336)
!2345 = !DILocation(line: 744, column: 7, scope: !2346)
!2346 = !DILexicalBlockFile(scope: !2327, file: !93, discriminator: 2)
!2347 = !DILocation(line: 748, column: 39, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2332, file: !93, line: 746, column: 54)
!2349 = !DILocation(line: 748, column: 46, scope: !2348)
!2350 = !DILocation(line: 748, column: 23, scope: !2348)
!2351 = !DILocation(line: 748, column: 4, scope: !2348)
!2352 = !DILocation(line: 748, column: 11, scope: !2348)
!2353 = !DILocation(line: 748, column: 21, scope: !2348)
!2354 = !DILocation(line: 749, column: 3, scope: !2348)
!2355 = !DILocation(line: 752, column: 21, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2288, file: !93, line: 752, column: 6)
!2357 = !DILocation(line: 752, column: 28, scope: !2356)
!2358 = !DILocation(line: 752, column: 6, scope: !2356)
!2359 = !DILocation(line: 752, column: 39, scope: !2356)
!2360 = !DILocation(line: 752, column: 6, scope: !2288)
!2361 = !DILocalVariable(name: "rec", scope: !2362, file: !93, line: 753, type: !84)
!2362 = distinct !DILexicalBlock(scope: !2356, file: !93, line: 752, column: 45)
!2363 = !DILocation(line: 753, column: 28, scope: !2362)
!2364 = !DILocation(line: 753, column: 47, scope: !2362)
!2365 = !DILocation(line: 753, column: 54, scope: !2362)
!2366 = !DILocation(line: 753, column: 34, scope: !2362)
!2367 = !DILocation(line: 753, column: 66, scope: !2362)
!2368 = !DILocation(line: 754, column: 37, scope: !2362)
!2369 = !DILocation(line: 754, column: 44, scope: !2362)
!2370 = !DILocation(line: 754, column: 55, scope: !2362)
!2371 = !DILocation(line: 754, column: 22, scope: !2362)
!2372 = !DILocation(line: 754, column: 3, scope: !2362)
!2373 = !DILocation(line: 754, column: 10, scope: !2362)
!2374 = !DILocation(line: 754, column: 20, scope: !2362)
!2375 = !DILocation(line: 755, column: 7, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2362, file: !93, line: 755, column: 7)
!2377 = !DILocation(line: 755, column: 11, scope: !2376)
!2378 = !DILocation(line: 755, column: 7, scope: !2362)
!2379 = !DILocation(line: 755, column: 26, scope: !2380)
!2380 = !DILexicalBlockFile(scope: !2376, file: !93, discriminator: 1)
!2381 = !DILocation(line: 755, column: 31, scope: !2380)
!2382 = !DILocation(line: 755, column: 19, scope: !2380)
!2383 = !DILocation(line: 756, column: 10, scope: !2362)
!2384 = !DILocation(line: 756, column: 3, scope: !2362)
!2385 = !DILocation(line: 757, column: 2, scope: !2362)
!2386 = !DILocation(line: 759, column: 6, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2288, file: !93, line: 759, column: 6)
!2388 = !DILocation(line: 759, column: 13, scope: !2387)
!2389 = !DILocation(line: 759, column: 24, scope: !2387)
!2390 = !DILocation(line: 759, column: 29, scope: !2387)
!2391 = !DILocation(line: 759, column: 6, scope: !2288)
!2392 = !DILocation(line: 760, column: 57, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2387, file: !93, line: 759, column: 37)
!2394 = !DILocation(line: 760, column: 29, scope: !2393)
!2395 = !DILocation(line: 760, column: 28, scope: !2393)
!2396 = !DILocation(line: 760, column: 3, scope: !2393)
!2397 = !DILocation(line: 760, column: 10, scope: !2393)
!2398 = !DILocation(line: 760, column: 21, scope: !2393)
!2399 = !DILocation(line: 760, column: 26, scope: !2393)
!2400 = !DILocation(line: 761, column: 2, scope: !2393)
!2401 = !DILocation(line: 763, column: 9, scope: !2288)
!2402 = !DILocation(line: 763, column: 16, scope: !2288)
!2403 = !DILocation(line: 763, column: 27, scope: !2288)
!2404 = !DILocation(line: 763, column: 2, scope: !2288)
!2405 = !DILocation(line: 764, column: 1, scope: !2288)
!2406 = distinct !DISubprogram(name: "gui_entry_erase_cell", scope: !93, file: !93, line: 862, type: !151, isLocal: false, isDefinition: true, scopeLine: 863, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!2407 = !DILocalVariable(name: "entry", arg: 1, scope: !2406, file: !93, line: 862, type: !31)
!2408 = !DILocation(line: 862, column: 42, scope: !2406)
!2409 = !DILocalVariable(name: "size", scope: !2406, file: !93, line: 864, type: !36)
!2410 = !DILocation(line: 864, column: 6, scope: !2406)
!2411 = !DILocation(line: 866, column: 2, scope: !2406)
!2412 = distinct !{!2412, !2411}
!2413 = !DILocation(line: 866, column: 10, scope: !2414)
!2414 = !DILexicalBlockFile(scope: !2415, file: !93, discriminator: 1)
!2415 = distinct !DILexicalBlock(scope: !2416, file: !93, line: 866, column: 10)
!2416 = distinct !DILexicalBlock(scope: !2406, file: !93, line: 866, column: 4)
!2417 = !DILocation(line: 866, column: 16, scope: !2414)
!2418 = !DILocation(line: 866, column: 5, scope: !2419)
!2419 = !DILexicalBlockFile(scope: !2420, file: !93, discriminator: 2)
!2420 = distinct !DILexicalBlock(scope: !2415, file: !93, line: 866, column: 3)
!2421 = !DILocation(line: 866, column: 14, scope: !2422)
!2422 = !DILexicalBlockFile(scope: !2423, file: !93, discriminator: 3)
!2423 = distinct !DILexicalBlock(scope: !2415, file: !93, line: 866, column: 12)
!2424 = !DILocation(line: 866, column: 100, scope: !2422)
!2425 = !DILocation(line: 866, column: 111, scope: !2426)
!2426 = !DILexicalBlockFile(scope: !2416, file: !93, discriminator: 4)
!2427 = !DILocation(line: 868, column: 6, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2406, file: !93, line: 868, column: 6)
!2429 = !DILocation(line: 868, column: 13, scope: !2428)
!2430 = !DILocation(line: 868, column: 6, scope: !2406)
!2431 = !DILocation(line: 869, column: 3, scope: !2428)
!2432 = !DILocation(line: 869, column: 10, scope: !2433)
!2433 = !DILexicalBlockFile(scope: !2428, file: !93, discriminator: 1)
!2434 = !DILocation(line: 869, column: 17, scope: !2433)
!2435 = !DILocation(line: 869, column: 21, scope: !2433)
!2436 = !DILocation(line: 869, column: 20, scope: !2433)
!2437 = !DILocation(line: 869, column: 28, scope: !2433)
!2438 = !DILocation(line: 869, column: 35, scope: !2433)
!2439 = !DILocation(line: 869, column: 26, scope: !2433)
!2440 = !DILocation(line: 869, column: 44, scope: !2433)
!2441 = !DILocation(line: 870, column: 32, scope: !2428)
!2442 = !DILocation(line: 870, column: 39, scope: !2428)
!2443 = !DILocation(line: 870, column: 43, scope: !2428)
!2444 = !DILocation(line: 870, column: 42, scope: !2428)
!2445 = !DILocation(line: 870, column: 20, scope: !2428)
!2446 = !DILocation(line: 870, column: 27, scope: !2428)
!2447 = !DILocation(line: 870, column: 10, scope: !2428)
!2448 = !DILocation(line: 870, column: 50, scope: !2428)
!2449 = !DILocation(line: 869, column: 3, scope: !2450)
!2450 = !DILexicalBlockFile(scope: !2428, file: !93, discriminator: 2)
!2451 = !DILocation(line: 870, column: 60, scope: !2433)
!2452 = !DILocation(line: 869, column: 3, scope: !2453)
!2453 = !DILexicalBlockFile(scope: !2428, file: !93, discriminator: 3)
!2454 = distinct !{!2454, !2431}
!2455 = !DILocation(line: 869, column: 3, scope: !2456)
!2456 = !DILexicalBlockFile(scope: !2428, file: !93, discriminator: 4)
!2457 = !DILocation(line: 872, column: 2, scope: !2406)
!2458 = distinct !{!2458, !2457}
!2459 = !DILocation(line: 872, column: 17, scope: !2460)
!2460 = !DILexicalBlockFile(scope: !2461, file: !93, discriminator: 1)
!2461 = distinct !DILexicalBlock(scope: !2406, file: !93, line: 872, column: 5)
!2462 = !DILocation(line: 872, column: 24, scope: !2460)
!2463 = !DILocation(line: 872, column: 31, scope: !2460)
!2464 = !DILocation(line: 872, column: 38, scope: !2460)
!2465 = !DILocation(line: 872, column: 29, scope: !2460)
!2466 = !DILocation(line: 872, column: 7, scope: !2460)
!2467 = !DILocation(line: 872, column: 45, scope: !2460)
!2468 = !DILocation(line: 872, column: 52, scope: !2460)
!2469 = !DILocation(line: 872, column: 59, scope: !2460)
!2470 = !DILocation(line: 872, column: 66, scope: !2460)
!2471 = !DILocation(line: 872, column: 57, scope: !2460)
!2472 = !DILocation(line: 872, column: 72, scope: !2460)
!2473 = !DILocation(line: 872, column: 70, scope: !2460)
!2474 = !DILocation(line: 872, column: 81, scope: !2460)
!2475 = !DILocation(line: 872, column: 88, scope: !2460)
!2476 = !DILocation(line: 872, column: 97, scope: !2460)
!2477 = !DILocation(line: 872, column: 104, scope: !2460)
!2478 = !DILocation(line: 872, column: 96, scope: !2460)
!2479 = !DILocation(line: 872, column: 108, scope: !2460)
!2480 = !DILocation(line: 872, column: 107, scope: !2460)
!2481 = !DILocation(line: 872, column: 112, scope: !2460)
!2482 = !DILocation(line: 872, column: 80, scope: !2460)
!2483 = !DILocation(line: 872, column: 116, scope: !2460)
!2484 = !DILocation(line: 872, column: 137, scope: !2460)
!2485 = !DILocation(line: 875, column: 6, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2406, file: !93, line: 875, column: 6)
!2487 = !DILocation(line: 875, column: 13, scope: !2486)
!2488 = !DILocation(line: 875, column: 6, scope: !2406)
!2489 = !DILocalVariable(name: "i", scope: !2490, file: !93, line: 876, type: !36)
!2490 = distinct !DILexicalBlock(scope: !2486, file: !93, line: 875, column: 27)
!2491 = !DILocation(line: 876, column: 7, scope: !2490)
!2492 = !DILocation(line: 877, column: 10, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2490, file: !93, line: 877, column: 3)
!2494 = !DILocation(line: 877, column: 8, scope: !2493)
!2495 = !DILocation(line: 877, column: 15, scope: !2496)
!2496 = !DILexicalBlockFile(scope: !2497, file: !93, discriminator: 1)
!2497 = distinct !DILexicalBlock(scope: !2493, file: !93, line: 877, column: 3)
!2498 = !DILocation(line: 877, column: 19, scope: !2496)
!2499 = !DILocation(line: 877, column: 17, scope: !2496)
!2500 = !DILocation(line: 877, column: 3, scope: !2496)
!2501 = !DILocation(line: 878, column: 26, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2497, file: !93, line: 877, column: 30)
!2503 = !DILocation(line: 878, column: 33, scope: !2502)
!2504 = !DILocation(line: 878, column: 39, scope: !2502)
!2505 = !DILocation(line: 878, column: 37, scope: !2502)
!2506 = !DILocation(line: 878, column: 41, scope: !2502)
!2507 = !DILocation(line: 878, column: 11, scope: !2502)
!2508 = !DILocation(line: 878, column: 18, scope: !2502)
!2509 = !DILocation(line: 878, column: 4, scope: !2502)
!2510 = !DILocation(line: 879, column: 3, scope: !2502)
!2511 = !DILocation(line: 877, column: 26, scope: !2512)
!2512 = !DILexicalBlockFile(scope: !2497, file: !93, discriminator: 2)
!2513 = !DILocation(line: 877, column: 3, scope: !2512)
!2514 = distinct !{!2514, !2515}
!2515 = !DILocation(line: 877, column: 3, scope: !2490)
!2516 = !DILocation(line: 880, column: 3, scope: !2490)
!2517 = distinct !{!2517, !2516}
!2518 = !DILocation(line: 880, column: 18, scope: !2519)
!2519 = !DILexicalBlockFile(scope: !2520, file: !93, discriminator: 1)
!2520 = distinct !DILexicalBlock(scope: !2490, file: !93, line: 880, column: 6)
!2521 = !DILocation(line: 880, column: 25, scope: !2519)
!2522 = !DILocation(line: 880, column: 35, scope: !2519)
!2523 = !DILocation(line: 880, column: 42, scope: !2519)
!2524 = !DILocation(line: 880, column: 33, scope: !2519)
!2525 = !DILocation(line: 880, column: 46, scope: !2519)
!2526 = !DILocation(line: 880, column: 8, scope: !2519)
!2527 = !DILocation(line: 880, column: 53, scope: !2519)
!2528 = !DILocation(line: 880, column: 60, scope: !2519)
!2529 = !DILocation(line: 880, column: 70, scope: !2519)
!2530 = !DILocation(line: 880, column: 77, scope: !2519)
!2531 = !DILocation(line: 880, column: 68, scope: !2519)
!2532 = !DILocation(line: 880, column: 83, scope: !2519)
!2533 = !DILocation(line: 880, column: 81, scope: !2519)
!2534 = !DILocation(line: 880, column: 88, scope: !2519)
!2535 = !DILocation(line: 880, column: 96, scope: !2519)
!2536 = !DILocation(line: 880, column: 103, scope: !2519)
!2537 = !DILocation(line: 880, column: 112, scope: !2519)
!2538 = !DILocation(line: 880, column: 119, scope: !2519)
!2539 = !DILocation(line: 880, column: 111, scope: !2519)
!2540 = !DILocation(line: 880, column: 123, scope: !2519)
!2541 = !DILocation(line: 880, column: 122, scope: !2519)
!2542 = !DILocation(line: 880, column: 95, scope: !2519)
!2543 = !DILocation(line: 880, column: 129, scope: !2519)
!2544 = !DILocation(line: 880, column: 149, scope: !2519)
!2545 = !DILocation(line: 882, column: 10, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2490, file: !93, line: 882, column: 3)
!2547 = !DILocation(line: 882, column: 8, scope: !2546)
!2548 = !DILocation(line: 882, column: 15, scope: !2549)
!2549 = !DILexicalBlockFile(scope: !2550, file: !93, discriminator: 1)
!2550 = distinct !DILexicalBlock(scope: !2546, file: !93, line: 882, column: 3)
!2551 = !DILocation(line: 882, column: 19, scope: !2549)
!2552 = !DILocation(line: 882, column: 17, scope: !2549)
!2553 = !DILocation(line: 882, column: 3, scope: !2549)
!2554 = !DILocation(line: 883, column: 19, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2550, file: !93, line: 882, column: 30)
!2556 = !DILocation(line: 883, column: 26, scope: !2555)
!2557 = !DILocation(line: 883, column: 37, scope: !2555)
!2558 = !DILocation(line: 883, column: 35, scope: !2555)
!2559 = !DILocation(line: 883, column: 4, scope: !2555)
!2560 = !DILocation(line: 883, column: 11, scope: !2555)
!2561 = !DILocation(line: 883, column: 40, scope: !2555)
!2562 = !DILocation(line: 884, column: 3, scope: !2555)
!2563 = !DILocation(line: 882, column: 26, scope: !2564)
!2564 = !DILexicalBlockFile(scope: !2550, file: !93, discriminator: 2)
!2565 = !DILocation(line: 882, column: 3, scope: !2564)
!2566 = distinct !{!2566, !2567}
!2567 = !DILocation(line: 882, column: 3, scope: !2490)
!2568 = !DILocation(line: 885, column: 7, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2490, file: !93, line: 885, column: 7)
!2570 = !DILocation(line: 885, column: 14, scope: !2569)
!2571 = !DILocation(line: 885, column: 26, scope: !2569)
!2572 = !DILocation(line: 885, column: 23, scope: !2569)
!2573 = !DILocation(line: 885, column: 31, scope: !2569)
!2574 = !DILocation(line: 885, column: 34, scope: !2575)
!2575 = !DILexicalBlockFile(scope: !2569, file: !93, discriminator: 1)
!2576 = !DILocation(line: 885, column: 41, scope: !2575)
!2577 = !DILocation(line: 885, column: 52, scope: !2575)
!2578 = !DILocation(line: 885, column: 7, scope: !2575)
!2579 = !DILocation(line: 886, column: 11, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2569, file: !93, line: 885, column: 60)
!2581 = !DILocation(line: 886, column: 18, scope: !2580)
!2582 = !DILocation(line: 886, column: 4, scope: !2580)
!2583 = !DILocation(line: 887, column: 4, scope: !2580)
!2584 = !DILocation(line: 887, column: 11, scope: !2580)
!2585 = !DILocation(line: 887, column: 22, scope: !2580)
!2586 = !DILocation(line: 888, column: 3, scope: !2580)
!2587 = !DILocation(line: 889, column: 2, scope: !2490)
!2588 = !DILocation(line: 891, column: 21, scope: !2406)
!2589 = !DILocation(line: 891, column: 2, scope: !2406)
!2590 = !DILocation(line: 891, column: 9, scope: !2406)
!2591 = !DILocation(line: 891, column: 18, scope: !2406)
!2592 = !DILocation(line: 893, column: 24, scope: !2406)
!2593 = !DILocation(line: 893, column: 31, scope: !2406)
!2594 = !DILocation(line: 893, column: 38, scope: !2406)
!2595 = !DILocation(line: 893, column: 2, scope: !2406)
!2596 = !DILocation(line: 894, column: 23, scope: !2406)
!2597 = !DILocation(line: 894, column: 2, scope: !2406)
!2598 = !DILocation(line: 895, column: 17, scope: !2406)
!2599 = !DILocation(line: 895, column: 2, scope: !2406)
!2600 = !DILocation(line: 896, column: 1, scope: !2406)
!2601 = !DILocation(line: 896, column: 1, scope: !2602)
!2602 = !DILexicalBlockFile(scope: !2406, file: !93, discriminator: 1)
!2603 = distinct !DISubprogram(name: "gui_entry_erase_word", scope: !93, file: !93, line: 898, type: !1818, isLocal: false, isDefinition: true, scopeLine: 899, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!2604 = !DILocalVariable(name: "entry", arg: 1, scope: !2603, file: !93, line: 898, type: !31)
!2605 = !DILocation(line: 898, column: 42, scope: !2603)
!2606 = !DILocalVariable(name: "to_space", arg: 2, scope: !2603, file: !93, line: 898, type: !36)
!2607 = !DILocation(line: 898, column: 53, scope: !2603)
!2608 = !DILocalVariable(name: "cutbuffer_op", arg: 3, scope: !2603, file: !93, line: 898, type: !1820)
!2609 = !DILocation(line: 898, column: 83, scope: !2603)
!2610 = !DILocalVariable(name: "to", scope: !2603, file: !93, line: 900, type: !36)
!2611 = !DILocation(line: 900, column: 6, scope: !2603)
!2612 = !DILocation(line: 902, column: 9, scope: !2603)
!2613 = distinct !{!2613, !2612}
!2614 = !DILocation(line: 902, column: 17, scope: !2615)
!2615 = !DILexicalBlockFile(scope: !2616, file: !93, discriminator: 1)
!2616 = distinct !DILexicalBlock(scope: !2617, file: !93, line: 902, column: 17)
!2617 = distinct !DILexicalBlock(scope: !2603, file: !93, line: 902, column: 11)
!2618 = !DILocation(line: 902, column: 23, scope: !2615)
!2619 = !DILocation(line: 902, column: 12, scope: !2620)
!2620 = !DILexicalBlockFile(scope: !2621, file: !93, discriminator: 2)
!2621 = distinct !DILexicalBlock(scope: !2616, file: !93, line: 902, column: 10)
!2622 = !DILocation(line: 902, column: 21, scope: !2623)
!2623 = !DILexicalBlockFile(scope: !2624, file: !93, discriminator: 3)
!2624 = distinct !DILexicalBlock(scope: !2616, file: !93, line: 902, column: 19)
!2625 = !DILocation(line: 902, column: 107, scope: !2623)
!2626 = !DILocation(line: 902, column: 118, scope: !2627)
!2627 = !DILexicalBlockFile(scope: !2617, file: !93, discriminator: 4)
!2628 = !DILocation(line: 903, column: 6, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2603, file: !93, line: 903, column: 6)
!2630 = !DILocation(line: 903, column: 13, scope: !2629)
!2631 = !DILocation(line: 903, column: 17, scope: !2629)
!2632 = !DILocation(line: 903, column: 6, scope: !2603)
!2633 = !DILocation(line: 904, column: 3, scope: !2629)
!2634 = !DILocation(line: 906, column: 7, scope: !2603)
!2635 = !DILocation(line: 906, column: 14, scope: !2603)
!2636 = !DILocation(line: 906, column: 18, scope: !2603)
!2637 = !DILocation(line: 906, column: 5, scope: !2603)
!2638 = !DILocation(line: 908, column: 6, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2603, file: !93, line: 908, column: 6)
!2640 = !DILocation(line: 908, column: 6, scope: !2603)
!2641 = !DILocation(line: 909, column: 3, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2639, file: !93, line: 908, column: 16)
!2643 = !DILocation(line: 909, column: 22, scope: !2644)
!2644 = !DILexicalBlockFile(scope: !2642, file: !93, discriminator: 1)
!2645 = !DILocation(line: 909, column: 10, scope: !2644)
!2646 = !DILocation(line: 909, column: 17, scope: !2644)
!2647 = !DILocation(line: 909, column: 26, scope: !2644)
!2648 = !DILocation(line: 909, column: 33, scope: !2644)
!2649 = !DILocation(line: 909, column: 36, scope: !2650)
!2650 = !DILexicalBlockFile(scope: !2642, file: !93, discriminator: 2)
!2651 = !DILocation(line: 909, column: 39, scope: !2650)
!2652 = !DILocation(line: 909, column: 3, scope: !2653)
!2653 = !DILexicalBlockFile(scope: !2642, file: !93, discriminator: 3)
!2654 = !DILocation(line: 910, column: 6, scope: !2642)
!2655 = !DILocation(line: 909, column: 3, scope: !2656)
!2656 = !DILexicalBlockFile(scope: !2642, file: !93, discriminator: 4)
!2657 = distinct !{!2657, !2641}
!2658 = !DILocation(line: 911, column: 3, scope: !2642)
!2659 = !DILocation(line: 911, column: 22, scope: !2644)
!2660 = !DILocation(line: 911, column: 10, scope: !2644)
!2661 = !DILocation(line: 911, column: 17, scope: !2644)
!2662 = !DILocation(line: 911, column: 26, scope: !2644)
!2663 = !DILocation(line: 911, column: 33, scope: !2644)
!2664 = !DILocation(line: 911, column: 36, scope: !2650)
!2665 = !DILocation(line: 911, column: 39, scope: !2650)
!2666 = !DILocation(line: 911, column: 3, scope: !2653)
!2667 = !DILocation(line: 912, column: 6, scope: !2642)
!2668 = !DILocation(line: 911, column: 3, scope: !2656)
!2669 = distinct !{!2669, !2658}
!2670 = !DILocation(line: 913, column: 2, scope: !2642)
!2671 = !DILocation(line: 914, column: 3, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2639, file: !93, line: 913, column: 9)
!2673 = !DILocation(line: 914, column: 33, scope: !2674)
!2674 = !DILexicalBlockFile(scope: !2672, file: !93, discriminator: 1)
!2675 = !DILocation(line: 914, column: 21, scope: !2674)
!2676 = !DILocation(line: 914, column: 28, scope: !2674)
!2677 = !DILocation(line: 914, column: 11, scope: !2674)
!2678 = !DILocation(line: 914, column: 38, scope: !2674)
!2679 = !DILocation(line: 914, column: 41, scope: !2680)
!2680 = !DILexicalBlockFile(scope: !2672, file: !93, discriminator: 2)
!2681 = !DILocation(line: 914, column: 44, scope: !2680)
!2682 = !DILocation(line: 914, column: 3, scope: !2683)
!2683 = !DILexicalBlockFile(scope: !2672, file: !93, discriminator: 3)
!2684 = !DILocation(line: 915, column: 6, scope: !2672)
!2685 = !DILocation(line: 914, column: 3, scope: !2686)
!2686 = !DILexicalBlockFile(scope: !2672, file: !93, discriminator: 4)
!2687 = distinct !{!2687, !2671}
!2688 = !DILocation(line: 916, column: 3, scope: !2672)
!2689 = !DILocation(line: 916, column: 32, scope: !2674)
!2690 = !DILocation(line: 916, column: 20, scope: !2674)
!2691 = !DILocation(line: 916, column: 27, scope: !2674)
!2692 = !DILocation(line: 916, column: 10, scope: !2674)
!2693 = !DILocation(line: 916, column: 37, scope: !2674)
!2694 = !DILocation(line: 916, column: 40, scope: !2680)
!2695 = !DILocation(line: 916, column: 43, scope: !2680)
!2696 = !DILocation(line: 916, column: 3, scope: !2683)
!2697 = !DILocation(line: 917, column: 6, scope: !2672)
!2698 = !DILocation(line: 916, column: 3, scope: !2686)
!2699 = distinct !{!2699, !2688}
!2700 = !DILocation(line: 919, column: 6, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2603, file: !93, line: 919, column: 6)
!2702 = !DILocation(line: 919, column: 9, scope: !2701)
!2703 = !DILocation(line: 919, column: 6, scope: !2603)
!2704 = !DILocation(line: 919, column: 16, scope: !2705)
!2705 = !DILexicalBlockFile(scope: !2701, file: !93, discriminator: 1)
!2706 = !DILocation(line: 919, column: 14, scope: !2705)
!2707 = !DILocation(line: 921, column: 18, scope: !2603)
!2708 = !DILocation(line: 921, column: 25, scope: !2603)
!2709 = !DILocation(line: 921, column: 32, scope: !2603)
!2710 = !DILocation(line: 921, column: 36, scope: !2603)
!2711 = !DILocation(line: 921, column: 35, scope: !2603)
!2712 = !DILocation(line: 921, column: 40, scope: !2603)
!2713 = !DILocation(line: 921, column: 2, scope: !2603)
!2714 = !DILocation(line: 922, column: 1, scope: !2603)
!2715 = !DILocation(line: 922, column: 1, scope: !2716)
!2716 = !DILexicalBlockFile(scope: !2603, file: !93, discriminator: 1)
!2717 = distinct !DISubprogram(name: "i_isalnum", scope: !93, file: !93, line: 51, type: !2718, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!36, !40}
!2720 = !DILocalVariable(name: "c", arg: 1, scope: !2717, file: !93, line: 51, type: !40)
!2721 = !DILocation(line: 51, column: 30, scope: !2717)
!2722 = !DILocation(line: 53, column: 6, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2717, file: !93, line: 53, column: 6)
!2724 = !DILocation(line: 53, column: 16, scope: !2723)
!2725 = !DILocation(line: 53, column: 6, scope: !2717)
!2726 = !DILocation(line: 54, column: 29, scope: !2723)
!2727 = !DILocation(line: 54, column: 11, scope: !2723)
!2728 = !DILocation(line: 54, column: 32, scope: !2723)
!2729 = !DILocation(line: 54, column: 45, scope: !2730)
!2730 = !DILexicalBlockFile(scope: !2723, file: !93, discriminator: 1)
!2731 = !DILocation(line: 54, column: 35, scope: !2730)
!2732 = !DILocation(line: 54, column: 48, scope: !2730)
!2733 = !DILocation(line: 54, column: 32, scope: !2730)
!2734 = !DILocation(line: 54, column: 32, scope: !2735)
!2735 = !DILexicalBlockFile(scope: !2723, file: !93, discriminator: 2)
!2736 = !DILocation(line: 54, column: 3, scope: !2735)
!2737 = !DILocation(line: 55, column: 9, scope: !2717)
!2738 = !DILocation(line: 55, column: 11, scope: !2717)
!2739 = !DILocation(line: 55, column: 19, scope: !2740)
!2740 = !DILexicalBlockFile(scope: !2717, file: !93, discriminator: 1)
!2741 = !DILocation(line: 55, column: 20, scope: !2740)
!2742 = !DILocation(line: 55, column: 22, scope: !2740)
!2743 = !DILocation(line: 55, column: 21, scope: !2740)
!2744 = !DILocation(line: 55, column: 23, scope: !2740)
!2745 = !DILocation(line: 55, column: 9, scope: !2740)
!2746 = !DILocation(line: 55, column: 9, scope: !2747)
!2747 = !DILexicalBlockFile(scope: !2717, file: !93, discriminator: 2)
!2748 = !DILocation(line: 55, column: 9, scope: !2749)
!2749 = !DILexicalBlockFile(scope: !2717, file: !93, discriminator: 3)
!2750 = !DILocation(line: 55, column: 2, scope: !2749)
!2751 = !DILocation(line: 56, column: 1, scope: !2717)
!2752 = distinct !DISubprogram(name: "gui_entry_erase_next_word", scope: !93, file: !93, line: 924, type: !1818, isLocal: false, isDefinition: true, scopeLine: 925, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!2753 = !DILocalVariable(name: "entry", arg: 1, scope: !2752, file: !93, line: 924, type: !31)
!2754 = !DILocation(line: 924, column: 47, scope: !2752)
!2755 = !DILocalVariable(name: "to_space", arg: 2, scope: !2752, file: !93, line: 924, type: !36)
!2756 = !DILocation(line: 924, column: 58, scope: !2752)
!2757 = !DILocalVariable(name: "cutbuffer_op", arg: 3, scope: !2752, file: !93, line: 924, type: !1820)
!2758 = !DILocation(line: 924, column: 88, scope: !2752)
!2759 = !DILocalVariable(name: "to", scope: !2752, file: !93, line: 926, type: !36)
!2760 = !DILocation(line: 926, column: 6, scope: !2752)
!2761 = !DILocalVariable(name: "size", scope: !2752, file: !93, line: 926, type: !36)
!2762 = !DILocation(line: 926, column: 10, scope: !2752)
!2763 = !DILocation(line: 928, column: 9, scope: !2752)
!2764 = distinct !{!2764, !2763}
!2765 = !DILocation(line: 928, column: 17, scope: !2766)
!2766 = !DILexicalBlockFile(scope: !2767, file: !93, discriminator: 1)
!2767 = distinct !DILexicalBlock(scope: !2768, file: !93, line: 928, column: 17)
!2768 = distinct !DILexicalBlock(scope: !2752, file: !93, line: 928, column: 11)
!2769 = !DILocation(line: 928, column: 23, scope: !2766)
!2770 = !DILocation(line: 928, column: 12, scope: !2771)
!2771 = !DILexicalBlockFile(scope: !2772, file: !93, discriminator: 2)
!2772 = distinct !DILexicalBlock(scope: !2767, file: !93, line: 928, column: 10)
!2773 = !DILocation(line: 928, column: 21, scope: !2774)
!2774 = !DILexicalBlockFile(scope: !2775, file: !93, discriminator: 3)
!2775 = distinct !DILexicalBlock(scope: !2767, file: !93, line: 928, column: 19)
!2776 = !DILocation(line: 928, column: 107, scope: !2774)
!2777 = !DILocation(line: 928, column: 118, scope: !2778)
!2778 = !DILexicalBlockFile(scope: !2768, file: !93, discriminator: 4)
!2779 = !DILocation(line: 929, column: 6, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2752, file: !93, line: 929, column: 6)
!2781 = !DILocation(line: 929, column: 13, scope: !2780)
!2782 = !DILocation(line: 929, column: 20, scope: !2780)
!2783 = !DILocation(line: 929, column: 27, scope: !2780)
!2784 = !DILocation(line: 929, column: 17, scope: !2780)
!2785 = !DILocation(line: 929, column: 6, scope: !2752)
!2786 = !DILocation(line: 930, column: 3, scope: !2780)
!2787 = !DILocation(line: 932, column: 14, scope: !2752)
!2788 = !DILocation(line: 932, column: 21, scope: !2752)
!2789 = !DILocation(line: 932, column: 12, scope: !2752)
!2790 = !DILocation(line: 933, column: 6, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2752, file: !93, line: 933, column: 6)
!2792 = !DILocation(line: 933, column: 6, scope: !2752)
!2793 = !DILocation(line: 934, column: 3, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2791, file: !93, line: 933, column: 16)
!2795 = !DILocation(line: 934, column: 22, scope: !2796)
!2796 = !DILexicalBlockFile(scope: !2794, file: !93, discriminator: 1)
!2797 = !DILocation(line: 934, column: 10, scope: !2796)
!2798 = !DILocation(line: 934, column: 17, scope: !2796)
!2799 = !DILocation(line: 934, column: 26, scope: !2796)
!2800 = !DILocation(line: 934, column: 33, scope: !2796)
!2801 = !DILocation(line: 934, column: 36, scope: !2802)
!2802 = !DILexicalBlockFile(scope: !2794, file: !93, discriminator: 2)
!2803 = !DILocation(line: 934, column: 41, scope: !2802)
!2804 = !DILocation(line: 934, column: 48, scope: !2802)
!2805 = !DILocation(line: 934, column: 39, scope: !2802)
!2806 = !DILocation(line: 934, column: 3, scope: !2807)
!2807 = !DILexicalBlockFile(scope: !2794, file: !93, discriminator: 3)
!2808 = !DILocation(line: 935, column: 6, scope: !2794)
!2809 = !DILocation(line: 934, column: 3, scope: !2810)
!2810 = !DILexicalBlockFile(scope: !2794, file: !93, discriminator: 4)
!2811 = distinct !{!2811, !2793}
!2812 = !DILocation(line: 936, column: 3, scope: !2794)
!2813 = !DILocation(line: 936, column: 22, scope: !2796)
!2814 = !DILocation(line: 936, column: 10, scope: !2796)
!2815 = !DILocation(line: 936, column: 17, scope: !2796)
!2816 = !DILocation(line: 936, column: 26, scope: !2796)
!2817 = !DILocation(line: 936, column: 33, scope: !2796)
!2818 = !DILocation(line: 936, column: 36, scope: !2802)
!2819 = !DILocation(line: 936, column: 41, scope: !2802)
!2820 = !DILocation(line: 936, column: 48, scope: !2802)
!2821 = !DILocation(line: 936, column: 39, scope: !2802)
!2822 = !DILocation(line: 936, column: 3, scope: !2807)
!2823 = !DILocation(line: 937, column: 6, scope: !2794)
!2824 = !DILocation(line: 936, column: 3, scope: !2810)
!2825 = distinct !{!2825, !2812}
!2826 = !DILocation(line: 938, column: 2, scope: !2794)
!2827 = !DILocation(line: 939, column: 3, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2791, file: !93, line: 938, column: 9)
!2829 = !DILocation(line: 939, column: 33, scope: !2830)
!2830 = !DILexicalBlockFile(scope: !2828, file: !93, discriminator: 1)
!2831 = !DILocation(line: 939, column: 21, scope: !2830)
!2832 = !DILocation(line: 939, column: 28, scope: !2830)
!2833 = !DILocation(line: 939, column: 11, scope: !2830)
!2834 = !DILocation(line: 939, column: 38, scope: !2830)
!2835 = !DILocation(line: 939, column: 41, scope: !2836)
!2836 = !DILexicalBlockFile(scope: !2828, file: !93, discriminator: 2)
!2837 = !DILocation(line: 939, column: 46, scope: !2836)
!2838 = !DILocation(line: 939, column: 53, scope: !2836)
!2839 = !DILocation(line: 939, column: 44, scope: !2836)
!2840 = !DILocation(line: 939, column: 3, scope: !2841)
!2841 = !DILexicalBlockFile(scope: !2828, file: !93, discriminator: 3)
!2842 = !DILocation(line: 940, column: 6, scope: !2828)
!2843 = !DILocation(line: 939, column: 3, scope: !2844)
!2844 = !DILexicalBlockFile(scope: !2828, file: !93, discriminator: 4)
!2845 = distinct !{!2845, !2827}
!2846 = !DILocation(line: 941, column: 3, scope: !2828)
!2847 = !DILocation(line: 941, column: 32, scope: !2830)
!2848 = !DILocation(line: 941, column: 20, scope: !2830)
!2849 = !DILocation(line: 941, column: 27, scope: !2830)
!2850 = !DILocation(line: 941, column: 10, scope: !2830)
!2851 = !DILocation(line: 941, column: 37, scope: !2830)
!2852 = !DILocation(line: 941, column: 40, scope: !2836)
!2853 = !DILocation(line: 941, column: 45, scope: !2836)
!2854 = !DILocation(line: 941, column: 52, scope: !2836)
!2855 = !DILocation(line: 941, column: 43, scope: !2836)
!2856 = !DILocation(line: 941, column: 3, scope: !2841)
!2857 = !DILocation(line: 942, column: 6, scope: !2828)
!2858 = !DILocation(line: 941, column: 3, scope: !2844)
!2859 = distinct !{!2859, !2846}
!2860 = !DILocation(line: 945, column: 16, scope: !2752)
!2861 = !DILocation(line: 945, column: 19, scope: !2752)
!2862 = !DILocation(line: 945, column: 26, scope: !2752)
!2863 = !DILocation(line: 945, column: 18, scope: !2752)
!2864 = !DILocation(line: 945, column: 14, scope: !2752)
!2865 = !DILocation(line: 946, column: 15, scope: !2752)
!2866 = !DILocation(line: 946, column: 2, scope: !2752)
!2867 = !DILocation(line: 946, column: 9, scope: !2752)
!2868 = !DILocation(line: 946, column: 13, scope: !2752)
!2869 = !DILocation(line: 947, column: 25, scope: !2752)
!2870 = !DILocation(line: 947, column: 32, scope: !2752)
!2871 = !DILocation(line: 947, column: 38, scope: !2752)
!2872 = !DILocation(line: 947, column: 9, scope: !2752)
!2873 = !DILocation(line: 948, column: 1, scope: !2752)
!2874 = !DILocation(line: 948, column: 1, scope: !2875)
!2875 = !DILexicalBlockFile(scope: !2752, file: !93, discriminator: 1)
!2876 = distinct !DISubprogram(name: "gui_entry_transpose_chars", scope: !93, file: !93, line: 950, type: !151, isLocal: false, isDefinition: true, scopeLine: 951, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!2877 = !DILocalVariable(name: "entry", arg: 1, scope: !2876, file: !93, line: 950, type: !31)
!2878 = !DILocation(line: 950, column: 47, scope: !2876)
!2879 = !DILocalVariable(name: "chr", scope: !2876, file: !93, line: 952, type: !40)
!2880 = !DILocation(line: 952, column: 17, scope: !2876)
!2881 = !DILocalVariable(name: "extent", scope: !2876, file: !93, line: 953, type: !46)
!2882 = !DILocation(line: 953, column: 8, scope: !2876)
!2883 = !DILocation(line: 955, column: 6, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2876, file: !93, line: 955, column: 6)
!2885 = !DILocation(line: 955, column: 13, scope: !2884)
!2886 = !DILocation(line: 955, column: 17, scope: !2884)
!2887 = !DILocation(line: 955, column: 22, scope: !2884)
!2888 = !DILocation(line: 955, column: 25, scope: !2889)
!2889 = !DILexicalBlockFile(scope: !2884, file: !93, discriminator: 1)
!2890 = !DILocation(line: 955, column: 32, scope: !2889)
!2891 = !DILocation(line: 955, column: 41, scope: !2889)
!2892 = !DILocation(line: 955, column: 6, scope: !2889)
!2893 = !DILocation(line: 956, column: 17, scope: !2884)
!2894 = !DILocation(line: 958, column: 6, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2876, file: !93, line: 958, column: 6)
!2896 = !DILocation(line: 958, column: 13, scope: !2895)
!2897 = !DILocation(line: 958, column: 20, scope: !2895)
!2898 = !DILocation(line: 958, column: 27, scope: !2895)
!2899 = !DILocation(line: 958, column: 17, scope: !2895)
!2900 = !DILocation(line: 958, column: 6, scope: !2876)
!2901 = !DILocation(line: 959, column: 17, scope: !2895)
!2902 = !DILocation(line: 959, column: 24, scope: !2895)
!2903 = !DILocation(line: 959, column: 27, scope: !2895)
!2904 = !DILocation(line: 962, column: 20, scope: !2876)
!2905 = !DILocation(line: 962, column: 27, scope: !2876)
!2906 = !DILocation(line: 962, column: 8, scope: !2876)
!2907 = !DILocation(line: 962, column: 15, scope: !2876)
!2908 = !DILocation(line: 962, column: 6, scope: !2876)
!2909 = !DILocation(line: 963, column: 40, scope: !2876)
!2910 = !DILocation(line: 963, column: 47, scope: !2876)
!2911 = !DILocation(line: 963, column: 50, scope: !2876)
!2912 = !DILocation(line: 963, column: 28, scope: !2876)
!2913 = !DILocation(line: 963, column: 35, scope: !2876)
!2914 = !DILocation(line: 963, column: 14, scope: !2876)
!2915 = !DILocation(line: 963, column: 21, scope: !2876)
!2916 = !DILocation(line: 963, column: 2, scope: !2876)
!2917 = !DILocation(line: 963, column: 9, scope: !2876)
!2918 = !DILocation(line: 963, column: 26, scope: !2876)
!2919 = !DILocation(line: 964, column: 37, scope: !2876)
!2920 = !DILocation(line: 964, column: 21, scope: !2876)
!2921 = !DILocation(line: 964, column: 28, scope: !2876)
!2922 = !DILocation(line: 964, column: 31, scope: !2876)
!2923 = !DILocation(line: 964, column: 9, scope: !2876)
!2924 = !DILocation(line: 964, column: 16, scope: !2876)
!2925 = !DILocation(line: 964, column: 35, scope: !2876)
!2926 = !DILocation(line: 966, column: 6, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2876, file: !93, line: 966, column: 6)
!2928 = !DILocation(line: 966, column: 13, scope: !2927)
!2929 = !DILocation(line: 966, column: 6, scope: !2876)
!2930 = !DILocation(line: 967, column: 27, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2927, file: !93, line: 966, column: 27)
!2932 = !DILocation(line: 967, column: 34, scope: !2931)
!2933 = !DILocation(line: 967, column: 37, scope: !2931)
!2934 = !DILocation(line: 967, column: 12, scope: !2931)
!2935 = !DILocation(line: 967, column: 19, scope: !2931)
!2936 = !DILocation(line: 967, column: 10, scope: !2931)
!2937 = !DILocation(line: 968, column: 49, scope: !2931)
!2938 = !DILocation(line: 968, column: 56, scope: !2931)
!2939 = !DILocation(line: 968, column: 34, scope: !2931)
!2940 = !DILocation(line: 968, column: 41, scope: !2931)
!2941 = !DILocation(line: 968, column: 18, scope: !2931)
!2942 = !DILocation(line: 968, column: 25, scope: !2931)
!2943 = !DILocation(line: 968, column: 28, scope: !2931)
!2944 = !DILocation(line: 968, column: 3, scope: !2931)
!2945 = !DILocation(line: 968, column: 10, scope: !2931)
!2946 = !DILocation(line: 968, column: 32, scope: !2931)
!2947 = !DILocation(line: 969, column: 32, scope: !2931)
!2948 = !DILocation(line: 969, column: 18, scope: !2931)
!2949 = !DILocation(line: 969, column: 25, scope: !2931)
!2950 = !DILocation(line: 969, column: 3, scope: !2931)
!2951 = !DILocation(line: 969, column: 10, scope: !2931)
!2952 = !DILocation(line: 969, column: 30, scope: !2931)
!2953 = !DILocation(line: 970, column: 2, scope: !2931)
!2954 = !DILocation(line: 972, column: 9, scope: !2876)
!2955 = !DILocation(line: 972, column: 16, scope: !2876)
!2956 = !DILocation(line: 972, column: 19, scope: !2876)
!2957 = !DILocation(line: 974, column: 24, scope: !2876)
!2958 = !DILocation(line: 974, column: 31, scope: !2876)
!2959 = !DILocation(line: 974, column: 38, scope: !2876)
!2960 = !DILocation(line: 974, column: 41, scope: !2876)
!2961 = !DILocation(line: 974, column: 2, scope: !2876)
!2962 = !DILocation(line: 975, column: 23, scope: !2876)
!2963 = !DILocation(line: 975, column: 2, scope: !2876)
!2964 = !DILocation(line: 976, column: 17, scope: !2876)
!2965 = !DILocation(line: 976, column: 2, scope: !2876)
!2966 = !DILocation(line: 977, column: 1, scope: !2876)
!2967 = !DILocation(line: 977, column: 1, scope: !2968)
!2968 = !DILexicalBlockFile(scope: !2876, file: !93, discriminator: 1)
!2969 = distinct !DISubprogram(name: "gui_entry_transpose_words", scope: !93, file: !93, line: 979, type: !151, isLocal: false, isDefinition: true, scopeLine: 980, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!2970 = !DILocalVariable(name: "entry", arg: 1, scope: !2969, file: !93, line: 979, type: !31)
!2971 = !DILocation(line: 979, column: 47, scope: !2969)
!2972 = !DILocalVariable(name: "spos1", scope: !2969, file: !93, line: 981, type: !36)
!2973 = !DILocation(line: 981, column: 6, scope: !2969)
!2974 = !DILocalVariable(name: "epos1", scope: !2969, file: !93, line: 981, type: !36)
!2975 = !DILocation(line: 981, column: 13, scope: !2969)
!2976 = !DILocalVariable(name: "spos2", scope: !2969, file: !93, line: 981, type: !36)
!2977 = !DILocation(line: 981, column: 20, scope: !2969)
!2978 = !DILocalVariable(name: "epos2", scope: !2969, file: !93, line: 981, type: !36)
!2979 = !DILocation(line: 981, column: 27, scope: !2969)
!2980 = !DILocation(line: 984, column: 10, scope: !2969)
!2981 = !DILocation(line: 984, column: 17, scope: !2969)
!2982 = !DILocation(line: 984, column: 8, scope: !2969)
!2983 = !DILocation(line: 985, column: 2, scope: !2969)
!2984 = !DILocation(line: 985, column: 9, scope: !2985)
!2985 = !DILexicalBlockFile(scope: !2969, file: !93, discriminator: 1)
!2986 = !DILocation(line: 985, column: 17, scope: !2985)
!2987 = !DILocation(line: 985, column: 24, scope: !2985)
!2988 = !DILocation(line: 985, column: 15, scope: !2985)
!2989 = !DILocation(line: 985, column: 33, scope: !2985)
!2990 = !DILocation(line: 985, column: 59, scope: !2991)
!2991 = !DILexicalBlockFile(scope: !2969, file: !93, discriminator: 2)
!2992 = !DILocation(line: 985, column: 47, scope: !2991)
!2993 = !DILocation(line: 985, column: 54, scope: !2991)
!2994 = !DILocation(line: 985, column: 37, scope: !2991)
!2995 = !DILocation(line: 985, column: 36, scope: !2991)
!2996 = !DILocation(line: 985, column: 2, scope: !2997)
!2997 = !DILexicalBlockFile(scope: !2969, file: !93, discriminator: 3)
!2998 = !DILocation(line: 986, column: 8, scope: !2969)
!2999 = !DILocation(line: 985, column: 2, scope: !3000)
!3000 = !DILexicalBlockFile(scope: !2969, file: !93, discriminator: 4)
!3001 = distinct !{!3001, !2983}
!3002 = !DILocation(line: 987, column: 2, scope: !2969)
!3003 = !DILocation(line: 987, column: 9, scope: !2985)
!3004 = !DILocation(line: 987, column: 17, scope: !2985)
!3005 = !DILocation(line: 987, column: 24, scope: !2985)
!3006 = !DILocation(line: 987, column: 15, scope: !2985)
!3007 = !DILocation(line: 987, column: 33, scope: !2985)
!3008 = !DILocation(line: 987, column: 58, scope: !2991)
!3009 = !DILocation(line: 987, column: 46, scope: !2991)
!3010 = !DILocation(line: 987, column: 53, scope: !2991)
!3011 = !DILocation(line: 987, column: 36, scope: !2991)
!3012 = !DILocation(line: 987, column: 33, scope: !2991)
!3013 = !DILocation(line: 987, column: 2, scope: !2997)
!3014 = !DILocation(line: 988, column: 8, scope: !2969)
!3015 = !DILocation(line: 987, column: 2, scope: !3000)
!3016 = distinct !{!3016, !3002}
!3017 = !DILocation(line: 991, column: 10, scope: !2969)
!3018 = !DILocation(line: 991, column: 8, scope: !2969)
!3019 = !DILocation(line: 992, column: 2, scope: !2969)
!3020 = !DILocation(line: 992, column: 9, scope: !2985)
!3021 = !DILocation(line: 992, column: 15, scope: !2985)
!3022 = !DILocation(line: 992, column: 19, scope: !2985)
!3023 = !DILocation(line: 992, column: 45, scope: !2991)
!3024 = !DILocation(line: 992, column: 50, scope: !2991)
!3025 = !DILocation(line: 992, column: 33, scope: !2991)
!3026 = !DILocation(line: 992, column: 40, scope: !2991)
!3027 = !DILocation(line: 992, column: 23, scope: !2991)
!3028 = !DILocation(line: 992, column: 22, scope: !2991)
!3029 = !DILocation(line: 992, column: 2, scope: !2997)
!3030 = !DILocation(line: 993, column: 8, scope: !2969)
!3031 = !DILocation(line: 992, column: 2, scope: !3000)
!3032 = distinct !{!3032, !3019}
!3033 = !DILocation(line: 994, column: 2, scope: !2969)
!3034 = !DILocation(line: 994, column: 9, scope: !2985)
!3035 = !DILocation(line: 994, column: 15, scope: !2985)
!3036 = !DILocation(line: 994, column: 19, scope: !2985)
!3037 = !DILocation(line: 994, column: 44, scope: !2991)
!3038 = !DILocation(line: 994, column: 49, scope: !2991)
!3039 = !DILocation(line: 994, column: 32, scope: !2991)
!3040 = !DILocation(line: 994, column: 39, scope: !2991)
!3041 = !DILocation(line: 994, column: 22, scope: !2991)
!3042 = !DILocation(line: 994, column: 19, scope: !2991)
!3043 = !DILocation(line: 994, column: 2, scope: !2997)
!3044 = !DILocation(line: 995, column: 8, scope: !2969)
!3045 = !DILocation(line: 994, column: 2, scope: !3000)
!3046 = distinct !{!3046, !3033}
!3047 = !DILocation(line: 997, column: 10, scope: !2969)
!3048 = !DILocation(line: 997, column: 8, scope: !2969)
!3049 = !DILocation(line: 998, column: 2, scope: !2969)
!3050 = !DILocation(line: 998, column: 9, scope: !2985)
!3051 = !DILocation(line: 998, column: 15, scope: !2985)
!3052 = !DILocation(line: 998, column: 19, scope: !2985)
!3053 = !DILocation(line: 998, column: 45, scope: !2991)
!3054 = !DILocation(line: 998, column: 50, scope: !2991)
!3055 = !DILocation(line: 998, column: 33, scope: !2991)
!3056 = !DILocation(line: 998, column: 40, scope: !2991)
!3057 = !DILocation(line: 998, column: 23, scope: !2991)
!3058 = !DILocation(line: 998, column: 22, scope: !2991)
!3059 = !DILocation(line: 998, column: 2, scope: !2997)
!3060 = !DILocation(line: 999, column: 8, scope: !2969)
!3061 = !DILocation(line: 998, column: 2, scope: !3000)
!3062 = distinct !{!3062, !3049}
!3063 = !DILocation(line: 1001, column: 10, scope: !2969)
!3064 = !DILocation(line: 1001, column: 8, scope: !2969)
!3065 = !DILocation(line: 1002, column: 2, scope: !2969)
!3066 = !DILocation(line: 1002, column: 9, scope: !2985)
!3067 = !DILocation(line: 1002, column: 15, scope: !2985)
!3068 = !DILocation(line: 1002, column: 19, scope: !2985)
!3069 = !DILocation(line: 1002, column: 44, scope: !2991)
!3070 = !DILocation(line: 1002, column: 49, scope: !2991)
!3071 = !DILocation(line: 1002, column: 32, scope: !2991)
!3072 = !DILocation(line: 1002, column: 39, scope: !2991)
!3073 = !DILocation(line: 1002, column: 22, scope: !2991)
!3074 = !DILocation(line: 1002, column: 19, scope: !2991)
!3075 = !DILocation(line: 1002, column: 2, scope: !2997)
!3076 = !DILocation(line: 1003, column: 8, scope: !2969)
!3077 = !DILocation(line: 1002, column: 2, scope: !3000)
!3078 = distinct !{!3078, !3065}
!3079 = !DILocation(line: 1006, column: 6, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !2969, file: !93, line: 1006, column: 6)
!3081 = !DILocation(line: 1006, column: 14, scope: !3080)
!3082 = !DILocation(line: 1006, column: 12, scope: !3080)
!3083 = !DILocation(line: 1006, column: 20, scope: !3080)
!3084 = !DILocation(line: 1006, column: 23, scope: !3085)
!3085 = !DILexicalBlockFile(scope: !3080, file: !93, discriminator: 1)
!3086 = !DILocation(line: 1006, column: 31, scope: !3085)
!3087 = !DILocation(line: 1006, column: 29, scope: !3085)
!3088 = !DILocation(line: 1006, column: 37, scope: !3085)
!3089 = !DILocation(line: 1006, column: 40, scope: !3090)
!3090 = !DILexicalBlockFile(scope: !3080, file: !93, discriminator: 2)
!3091 = !DILocation(line: 1006, column: 48, scope: !3090)
!3092 = !DILocation(line: 1006, column: 46, scope: !3090)
!3093 = !DILocation(line: 1006, column: 6, scope: !3090)
!3094 = !DILocalVariable(name: "first", scope: !3095, file: !93, line: 1007, type: !39)
!3095 = distinct !DILexicalBlock(scope: !3080, file: !93, line: 1006, column: 55)
!3096 = !DILocation(line: 1007, column: 12, scope: !3095)
!3097 = !DILocalVariable(name: "sep", scope: !3095, file: !93, line: 1007, type: !39)
!3098 = !DILocation(line: 1007, column: 20, scope: !3095)
!3099 = !DILocalVariable(name: "second", scope: !3095, file: !93, line: 1007, type: !39)
!3100 = !DILocation(line: 1007, column: 26, scope: !3095)
!3101 = !DILocalVariable(name: "first_extent", scope: !3095, file: !93, line: 1008, type: !45)
!3102 = !DILocation(line: 1008, column: 10, scope: !3095)
!3103 = !DILocalVariable(name: "sep_extent", scope: !3095, file: !93, line: 1008, type: !45)
!3104 = !DILocation(line: 1008, column: 26, scope: !3095)
!3105 = !DILocalVariable(name: "second_extent", scope: !3095, file: !93, line: 1008, type: !45)
!3106 = !DILocation(line: 1008, column: 40, scope: !3095)
!3107 = !DILocalVariable(name: "i", scope: !3095, file: !93, line: 1009, type: !36)
!3108 = !DILocation(line: 1009, column: 7, scope: !3095)
!3109 = !DILocation(line: 1011, column: 34, scope: !3095)
!3110 = !DILocation(line: 1011, column: 42, scope: !3095)
!3111 = !DILocation(line: 1011, column: 40, scope: !3095)
!3112 = !DILocation(line: 1011, column: 33, scope: !3095)
!3113 = !DILocation(line: 1011, column: 49, scope: !3095)
!3114 = !DILocation(line: 1011, column: 23, scope: !3095)
!3115 = !DILocation(line: 1011, column: 11, scope: !3095)
!3116 = !DILocation(line: 1011, column: 9, scope: !3095)
!3117 = !DILocation(line: 1012, column: 32, scope: !3095)
!3118 = !DILocation(line: 1012, column: 40, scope: !3095)
!3119 = !DILocation(line: 1012, column: 38, scope: !3095)
!3120 = !DILocation(line: 1012, column: 31, scope: !3095)
!3121 = !DILocation(line: 1012, column: 47, scope: !3095)
!3122 = !DILocation(line: 1012, column: 21, scope: !3095)
!3123 = !DILocation(line: 1012, column: 9, scope: !3095)
!3124 = !DILocation(line: 1012, column: 7, scope: !3095)
!3125 = !DILocation(line: 1013, column: 35, scope: !3095)
!3126 = !DILocation(line: 1013, column: 43, scope: !3095)
!3127 = !DILocation(line: 1013, column: 41, scope: !3095)
!3128 = !DILocation(line: 1013, column: 34, scope: !3095)
!3129 = !DILocation(line: 1013, column: 50, scope: !3095)
!3130 = !DILocation(line: 1013, column: 24, scope: !3095)
!3131 = !DILocation(line: 1013, column: 12, scope: !3095)
!3132 = !DILocation(line: 1013, column: 10, scope: !3095)
!3133 = !DILocation(line: 1015, column: 39, scope: !3095)
!3134 = !DILocation(line: 1015, column: 47, scope: !3095)
!3135 = !DILocation(line: 1015, column: 45, scope: !3095)
!3136 = !DILocation(line: 1015, column: 38, scope: !3095)
!3137 = !DILocation(line: 1015, column: 54, scope: !3095)
!3138 = !DILocation(line: 1015, column: 28, scope: !3095)
!3139 = !DILocation(line: 1015, column: 18, scope: !3095)
!3140 = !DILocation(line: 1015, column: 16, scope: !3095)
!3141 = !DILocation(line: 1016, column: 37, scope: !3095)
!3142 = !DILocation(line: 1016, column: 45, scope: !3095)
!3143 = !DILocation(line: 1016, column: 43, scope: !3095)
!3144 = !DILocation(line: 1016, column: 36, scope: !3095)
!3145 = !DILocation(line: 1016, column: 52, scope: !3095)
!3146 = !DILocation(line: 1016, column: 26, scope: !3095)
!3147 = !DILocation(line: 1016, column: 16, scope: !3095)
!3148 = !DILocation(line: 1016, column: 14, scope: !3095)
!3149 = !DILocation(line: 1017, column: 40, scope: !3095)
!3150 = !DILocation(line: 1017, column: 48, scope: !3095)
!3151 = !DILocation(line: 1017, column: 46, scope: !3095)
!3152 = !DILocation(line: 1017, column: 39, scope: !3095)
!3153 = !DILocation(line: 1017, column: 55, scope: !3095)
!3154 = !DILocation(line: 1017, column: 29, scope: !3095)
!3155 = !DILocation(line: 1017, column: 19, scope: !3095)
!3156 = !DILocation(line: 1017, column: 17, scope: !3095)
!3157 = !DILocation(line: 1019, column: 12, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !3095, file: !93, line: 1019, column: 3)
!3159 = !DILocation(line: 1019, column: 10, scope: !3158)
!3160 = !DILocation(line: 1019, column: 8, scope: !3158)
!3161 = !DILocation(line: 1019, column: 19, scope: !3162)
!3162 = !DILexicalBlockFile(scope: !3163, file: !93, discriminator: 1)
!3163 = distinct !DILexicalBlock(scope: !3158, file: !93, line: 1019, column: 3)
!3164 = !DILocation(line: 1019, column: 23, scope: !3162)
!3165 = !DILocation(line: 1019, column: 21, scope: !3162)
!3166 = !DILocation(line: 1019, column: 3, scope: !3162)
!3167 = !DILocation(line: 1020, column: 33, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3163, file: !93, line: 1019, column: 35)
!3169 = !DILocation(line: 1020, column: 21, scope: !3168)
!3170 = !DILocation(line: 1020, column: 28, scope: !3168)
!3171 = !DILocation(line: 1020, column: 10, scope: !3168)
!3172 = !DILocation(line: 1020, column: 12, scope: !3168)
!3173 = !DILocation(line: 1020, column: 11, scope: !3168)
!3174 = !DILocation(line: 1020, column: 4, scope: !3168)
!3175 = !DILocation(line: 1020, column: 19, scope: !3168)
!3176 = !DILocation(line: 1021, column: 8, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3168, file: !93, line: 1021, column: 8)
!3178 = !DILocation(line: 1021, column: 15, scope: !3177)
!3179 = !DILocation(line: 1021, column: 8, scope: !3168)
!3180 = !DILocation(line: 1022, column: 44, scope: !3177)
!3181 = !DILocation(line: 1022, column: 45, scope: !3177)
!3182 = !DILocation(line: 1022, column: 29, scope: !3177)
!3183 = !DILocation(line: 1022, column: 36, scope: !3177)
!3184 = !DILocation(line: 1022, column: 18, scope: !3177)
!3185 = !DILocation(line: 1022, column: 20, scope: !3177)
!3186 = !DILocation(line: 1022, column: 19, scope: !3177)
!3187 = !DILocation(line: 1022, column: 5, scope: !3177)
!3188 = !DILocation(line: 1022, column: 27, scope: !3177)
!3189 = !DILocation(line: 1023, column: 3, scope: !3168)
!3190 = !DILocation(line: 1019, column: 31, scope: !3191)
!3191 = !DILexicalBlockFile(scope: !3163, file: !93, discriminator: 2)
!3192 = !DILocation(line: 1019, column: 3, scope: !3191)
!3193 = distinct !{!3193, !3194}
!3194 = !DILocation(line: 1019, column: 3, scope: !3095)
!3195 = !DILocation(line: 1024, column: 12, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3095, file: !93, line: 1024, column: 3)
!3197 = !DILocation(line: 1024, column: 10, scope: !3196)
!3198 = !DILocation(line: 1024, column: 8, scope: !3196)
!3199 = !DILocation(line: 1024, column: 19, scope: !3200)
!3200 = !DILexicalBlockFile(scope: !3201, file: !93, discriminator: 1)
!3201 = distinct !DILexicalBlock(scope: !3196, file: !93, line: 1024, column: 3)
!3202 = !DILocation(line: 1024, column: 23, scope: !3200)
!3203 = !DILocation(line: 1024, column: 21, scope: !3200)
!3204 = !DILocation(line: 1024, column: 3, scope: !3200)
!3205 = !DILocation(line: 1025, column: 31, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3201, file: !93, line: 1024, column: 35)
!3207 = !DILocation(line: 1025, column: 19, scope: !3206)
!3208 = !DILocation(line: 1025, column: 26, scope: !3206)
!3209 = !DILocation(line: 1025, column: 8, scope: !3206)
!3210 = !DILocation(line: 1025, column: 10, scope: !3206)
!3211 = !DILocation(line: 1025, column: 9, scope: !3206)
!3212 = !DILocation(line: 1025, column: 4, scope: !3206)
!3213 = !DILocation(line: 1025, column: 17, scope: !3206)
!3214 = !DILocation(line: 1026, column: 8, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3206, file: !93, line: 1026, column: 8)
!3216 = !DILocation(line: 1026, column: 15, scope: !3215)
!3217 = !DILocation(line: 1026, column: 8, scope: !3206)
!3218 = !DILocation(line: 1027, column: 42, scope: !3215)
!3219 = !DILocation(line: 1027, column: 43, scope: !3215)
!3220 = !DILocation(line: 1027, column: 27, scope: !3215)
!3221 = !DILocation(line: 1027, column: 34, scope: !3215)
!3222 = !DILocation(line: 1027, column: 16, scope: !3215)
!3223 = !DILocation(line: 1027, column: 18, scope: !3215)
!3224 = !DILocation(line: 1027, column: 17, scope: !3215)
!3225 = !DILocation(line: 1027, column: 5, scope: !3215)
!3226 = !DILocation(line: 1027, column: 25, scope: !3215)
!3227 = !DILocation(line: 1028, column: 3, scope: !3206)
!3228 = !DILocation(line: 1024, column: 31, scope: !3229)
!3229 = !DILexicalBlockFile(scope: !3201, file: !93, discriminator: 2)
!3230 = !DILocation(line: 1024, column: 3, scope: !3229)
!3231 = distinct !{!3231, !3232}
!3232 = !DILocation(line: 1024, column: 3, scope: !3095)
!3233 = !DILocation(line: 1029, column: 12, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3095, file: !93, line: 1029, column: 3)
!3235 = !DILocation(line: 1029, column: 10, scope: !3234)
!3236 = !DILocation(line: 1029, column: 8, scope: !3234)
!3237 = !DILocation(line: 1029, column: 19, scope: !3238)
!3238 = !DILexicalBlockFile(scope: !3239, file: !93, discriminator: 1)
!3239 = distinct !DILexicalBlock(scope: !3234, file: !93, line: 1029, column: 3)
!3240 = !DILocation(line: 1029, column: 23, scope: !3238)
!3241 = !DILocation(line: 1029, column: 21, scope: !3238)
!3242 = !DILocation(line: 1029, column: 3, scope: !3238)
!3243 = !DILocation(line: 1030, column: 34, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3239, file: !93, line: 1029, column: 35)
!3245 = !DILocation(line: 1030, column: 22, scope: !3244)
!3246 = !DILocation(line: 1030, column: 29, scope: !3244)
!3247 = !DILocation(line: 1030, column: 11, scope: !3244)
!3248 = !DILocation(line: 1030, column: 13, scope: !3244)
!3249 = !DILocation(line: 1030, column: 12, scope: !3244)
!3250 = !DILocation(line: 1030, column: 4, scope: !3244)
!3251 = !DILocation(line: 1030, column: 20, scope: !3244)
!3252 = !DILocation(line: 1031, column: 8, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3244, file: !93, line: 1031, column: 8)
!3254 = !DILocation(line: 1031, column: 15, scope: !3253)
!3255 = !DILocation(line: 1031, column: 8, scope: !3244)
!3256 = !DILocation(line: 1032, column: 45, scope: !3253)
!3257 = !DILocation(line: 1032, column: 46, scope: !3253)
!3258 = !DILocation(line: 1032, column: 30, scope: !3253)
!3259 = !DILocation(line: 1032, column: 37, scope: !3253)
!3260 = !DILocation(line: 1032, column: 19, scope: !3253)
!3261 = !DILocation(line: 1032, column: 21, scope: !3253)
!3262 = !DILocation(line: 1032, column: 20, scope: !3253)
!3263 = !DILocation(line: 1032, column: 5, scope: !3253)
!3264 = !DILocation(line: 1032, column: 28, scope: !3253)
!3265 = !DILocation(line: 1033, column: 3, scope: !3244)
!3266 = !DILocation(line: 1029, column: 31, scope: !3267)
!3267 = !DILexicalBlockFile(scope: !3239, file: !93, discriminator: 2)
!3268 = !DILocation(line: 1029, column: 3, scope: !3267)
!3269 = distinct !{!3269, !3270}
!3270 = !DILocation(line: 1029, column: 3, scope: !3095)
!3271 = !DILocation(line: 1035, column: 16, scope: !3095)
!3272 = !DILocation(line: 1035, column: 3, scope: !3095)
!3273 = !DILocation(line: 1035, column: 10, scope: !3095)
!3274 = !DILocation(line: 1035, column: 14, scope: !3095)
!3275 = !DILocation(line: 1036, column: 10, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3095, file: !93, line: 1036, column: 3)
!3277 = !DILocation(line: 1036, column: 8, scope: !3276)
!3278 = !DILocation(line: 1036, column: 15, scope: !3279)
!3279 = !DILexicalBlockFile(scope: !3280, file: !93, discriminator: 1)
!3280 = distinct !DILexicalBlock(scope: !3276, file: !93, line: 1036, column: 3)
!3281 = !DILocation(line: 1036, column: 19, scope: !3279)
!3282 = !DILocation(line: 1036, column: 25, scope: !3279)
!3283 = !DILocation(line: 1036, column: 24, scope: !3279)
!3284 = !DILocation(line: 1036, column: 17, scope: !3279)
!3285 = !DILocation(line: 1036, column: 3, scope: !3279)
!3286 = !DILocation(line: 1037, column: 37, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3280, file: !93, line: 1036, column: 37)
!3288 = !DILocation(line: 1037, column: 30, scope: !3287)
!3289 = !DILocation(line: 1037, column: 16, scope: !3287)
!3290 = !DILocation(line: 1037, column: 23, scope: !3287)
!3291 = !DILocation(line: 1037, column: 4, scope: !3287)
!3292 = !DILocation(line: 1037, column: 11, scope: !3287)
!3293 = !DILocation(line: 1037, column: 28, scope: !3287)
!3294 = !DILocation(line: 1038, column: 8, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3287, file: !93, line: 1038, column: 8)
!3296 = !DILocation(line: 1038, column: 15, scope: !3295)
!3297 = !DILocation(line: 1038, column: 8, scope: !3287)
!3298 = !DILocation(line: 1039, column: 50, scope: !3295)
!3299 = !DILocation(line: 1039, column: 36, scope: !3295)
!3300 = !DILocation(line: 1039, column: 20, scope: !3295)
!3301 = !DILocation(line: 1039, column: 27, scope: !3295)
!3302 = !DILocation(line: 1039, column: 30, scope: !3295)
!3303 = !DILocation(line: 1039, column: 5, scope: !3295)
!3304 = !DILocation(line: 1039, column: 12, scope: !3295)
!3305 = !DILocation(line: 1039, column: 34, scope: !3295)
!3306 = !DILocation(line: 1040, column: 4, scope: !3287)
!3307 = !DILocation(line: 1040, column: 11, scope: !3287)
!3308 = !DILocation(line: 1040, column: 14, scope: !3287)
!3309 = !DILocation(line: 1041, column: 3, scope: !3287)
!3310 = !DILocation(line: 1036, column: 33, scope: !3311)
!3311 = !DILexicalBlockFile(scope: !3280, file: !93, discriminator: 2)
!3312 = !DILocation(line: 1036, column: 3, scope: !3311)
!3313 = distinct !{!3313, !3314}
!3314 = !DILocation(line: 1036, column: 3, scope: !3095)
!3315 = !DILocation(line: 1042, column: 10, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3095, file: !93, line: 1042, column: 3)
!3317 = !DILocation(line: 1042, column: 8, scope: !3316)
!3318 = !DILocation(line: 1042, column: 15, scope: !3319)
!3319 = !DILexicalBlockFile(scope: !3320, file: !93, discriminator: 1)
!3320 = distinct !DILexicalBlock(scope: !3316, file: !93, line: 1042, column: 3)
!3321 = !DILocation(line: 1042, column: 19, scope: !3319)
!3322 = !DILocation(line: 1042, column: 25, scope: !3319)
!3323 = !DILocation(line: 1042, column: 24, scope: !3319)
!3324 = !DILocation(line: 1042, column: 17, scope: !3319)
!3325 = !DILocation(line: 1042, column: 3, scope: !3319)
!3326 = !DILocation(line: 1043, column: 34, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3320, file: !93, line: 1042, column: 37)
!3328 = !DILocation(line: 1043, column: 30, scope: !3327)
!3329 = !DILocation(line: 1043, column: 16, scope: !3327)
!3330 = !DILocation(line: 1043, column: 23, scope: !3327)
!3331 = !DILocation(line: 1043, column: 4, scope: !3327)
!3332 = !DILocation(line: 1043, column: 11, scope: !3327)
!3333 = !DILocation(line: 1043, column: 28, scope: !3327)
!3334 = !DILocation(line: 1044, column: 8, scope: !3335)
!3335 = distinct !DILexicalBlock(scope: !3327, file: !93, line: 1044, column: 8)
!3336 = !DILocation(line: 1044, column: 15, scope: !3335)
!3337 = !DILocation(line: 1044, column: 8, scope: !3327)
!3338 = !DILocation(line: 1045, column: 47, scope: !3335)
!3339 = !DILocation(line: 1045, column: 36, scope: !3335)
!3340 = !DILocation(line: 1045, column: 20, scope: !3335)
!3341 = !DILocation(line: 1045, column: 27, scope: !3335)
!3342 = !DILocation(line: 1045, column: 30, scope: !3335)
!3343 = !DILocation(line: 1045, column: 5, scope: !3335)
!3344 = !DILocation(line: 1045, column: 12, scope: !3335)
!3345 = !DILocation(line: 1045, column: 34, scope: !3335)
!3346 = !DILocation(line: 1046, column: 4, scope: !3327)
!3347 = !DILocation(line: 1046, column: 11, scope: !3327)
!3348 = !DILocation(line: 1046, column: 14, scope: !3327)
!3349 = !DILocation(line: 1047, column: 3, scope: !3327)
!3350 = !DILocation(line: 1042, column: 33, scope: !3351)
!3351 = !DILexicalBlockFile(scope: !3320, file: !93, discriminator: 2)
!3352 = !DILocation(line: 1042, column: 3, scope: !3351)
!3353 = distinct !{!3353, !3354}
!3354 = !DILocation(line: 1042, column: 3, scope: !3095)
!3355 = !DILocation(line: 1048, column: 10, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3095, file: !93, line: 1048, column: 3)
!3357 = !DILocation(line: 1048, column: 8, scope: !3356)
!3358 = !DILocation(line: 1048, column: 15, scope: !3359)
!3359 = !DILexicalBlockFile(scope: !3360, file: !93, discriminator: 1)
!3360 = distinct !DILexicalBlock(scope: !3356, file: !93, line: 1048, column: 3)
!3361 = !DILocation(line: 1048, column: 19, scope: !3359)
!3362 = !DILocation(line: 1048, column: 25, scope: !3359)
!3363 = !DILocation(line: 1048, column: 24, scope: !3359)
!3364 = !DILocation(line: 1048, column: 17, scope: !3359)
!3365 = !DILocation(line: 1048, column: 3, scope: !3359)
!3366 = !DILocation(line: 1049, column: 36, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3360, file: !93, line: 1048, column: 37)
!3368 = !DILocation(line: 1049, column: 30, scope: !3367)
!3369 = !DILocation(line: 1049, column: 16, scope: !3367)
!3370 = !DILocation(line: 1049, column: 23, scope: !3367)
!3371 = !DILocation(line: 1049, column: 4, scope: !3367)
!3372 = !DILocation(line: 1049, column: 11, scope: !3367)
!3373 = !DILocation(line: 1049, column: 28, scope: !3367)
!3374 = !DILocation(line: 1050, column: 8, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3367, file: !93, line: 1050, column: 8)
!3376 = !DILocation(line: 1050, column: 15, scope: !3375)
!3377 = !DILocation(line: 1050, column: 8, scope: !3367)
!3378 = !DILocation(line: 1051, column: 49, scope: !3375)
!3379 = !DILocation(line: 1051, column: 36, scope: !3375)
!3380 = !DILocation(line: 1051, column: 20, scope: !3375)
!3381 = !DILocation(line: 1051, column: 27, scope: !3375)
!3382 = !DILocation(line: 1051, column: 30, scope: !3375)
!3383 = !DILocation(line: 1051, column: 5, scope: !3375)
!3384 = !DILocation(line: 1051, column: 12, scope: !3375)
!3385 = !DILocation(line: 1051, column: 34, scope: !3375)
!3386 = !DILocation(line: 1052, column: 4, scope: !3367)
!3387 = !DILocation(line: 1052, column: 11, scope: !3367)
!3388 = !DILocation(line: 1052, column: 14, scope: !3367)
!3389 = !DILocation(line: 1053, column: 3, scope: !3367)
!3390 = !DILocation(line: 1048, column: 33, scope: !3391)
!3391 = !DILexicalBlockFile(scope: !3360, file: !93, discriminator: 2)
!3392 = !DILocation(line: 1048, column: 3, scope: !3391)
!3393 = distinct !{!3393, !3394}
!3394 = !DILocation(line: 1048, column: 3, scope: !3095)
!3395 = !DILocation(line: 1055, column: 10, scope: !3095)
!3396 = !DILocation(line: 1055, column: 3, scope: !3095)
!3397 = !DILocation(line: 1056, column: 10, scope: !3095)
!3398 = !DILocation(line: 1056, column: 3, scope: !3095)
!3399 = !DILocation(line: 1057, column: 10, scope: !3095)
!3400 = !DILocation(line: 1057, column: 3, scope: !3095)
!3401 = !DILocation(line: 1059, column: 10, scope: !3095)
!3402 = !DILocation(line: 1059, column: 3, scope: !3095)
!3403 = !DILocation(line: 1060, column: 10, scope: !3095)
!3404 = !DILocation(line: 1060, column: 3, scope: !3095)
!3405 = !DILocation(line: 1061, column: 10, scope: !3095)
!3406 = !DILocation(line: 1061, column: 3, scope: !3095)
!3407 = !DILocation(line: 1062, column: 2, scope: !3095)
!3408 = !DILocation(line: 1064, column: 24, scope: !2969)
!3409 = !DILocation(line: 1064, column: 31, scope: !2969)
!3410 = !DILocation(line: 1064, column: 2, scope: !2969)
!3411 = !DILocation(line: 1065, column: 23, scope: !2969)
!3412 = !DILocation(line: 1065, column: 2, scope: !2969)
!3413 = !DILocation(line: 1066, column: 17, scope: !2969)
!3414 = !DILocation(line: 1066, column: 2, scope: !2969)
!3415 = !DILocation(line: 1067, column: 1, scope: !2969)
!3416 = distinct !DISubprogram(name: "gui_entry_capitalize_word", scope: !93, file: !93, line: 1069, type: !151, isLocal: false, isDefinition: true, scopeLine: 1070, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!3417 = !DILocalVariable(name: "entry", arg: 1, scope: !3416, file: !93, line: 1069, type: !31)
!3418 = !DILocation(line: 1069, column: 47, scope: !3416)
!3419 = !DILocalVariable(name: "pos", scope: !3416, file: !93, line: 1071, type: !36)
!3420 = !DILocation(line: 1071, column: 6, scope: !3416)
!3421 = !DILocation(line: 1071, column: 12, scope: !3416)
!3422 = !DILocation(line: 1071, column: 19, scope: !3416)
!3423 = !DILocation(line: 1072, column: 2, scope: !3416)
!3424 = !DILocation(line: 1072, column: 9, scope: !3425)
!3425 = !DILexicalBlockFile(scope: !3416, file: !93, discriminator: 1)
!3426 = !DILocation(line: 1072, column: 15, scope: !3425)
!3427 = !DILocation(line: 1072, column: 22, scope: !3425)
!3428 = !DILocation(line: 1072, column: 13, scope: !3425)
!3429 = !DILocation(line: 1072, column: 31, scope: !3425)
!3430 = !DILocation(line: 1072, column: 57, scope: !3431)
!3431 = !DILexicalBlockFile(scope: !3416, file: !93, discriminator: 2)
!3432 = !DILocation(line: 1072, column: 45, scope: !3431)
!3433 = !DILocation(line: 1072, column: 52, scope: !3431)
!3434 = !DILocation(line: 1072, column: 35, scope: !3431)
!3435 = !DILocation(line: 1072, column: 34, scope: !3431)
!3436 = !DILocation(line: 1072, column: 2, scope: !3437)
!3437 = !DILexicalBlockFile(scope: !3416, file: !93, discriminator: 3)
!3438 = !DILocation(line: 1073, column: 6, scope: !3416)
!3439 = !DILocation(line: 1072, column: 2, scope: !3440)
!3440 = !DILexicalBlockFile(scope: !3416, file: !93, discriminator: 4)
!3441 = distinct !{!3441, !3423}
!3442 = !DILocation(line: 1075, column: 6, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3416, file: !93, line: 1075, column: 6)
!3444 = !DILocation(line: 1075, column: 12, scope: !3443)
!3445 = !DILocation(line: 1075, column: 19, scope: !3443)
!3446 = !DILocation(line: 1075, column: 10, scope: !3443)
!3447 = !DILocation(line: 1075, column: 6, scope: !3416)
!3448 = !DILocation(line: 1076, column: 44, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3443, file: !93, line: 1075, column: 29)
!3450 = !DILocation(line: 1076, column: 32, scope: !3449)
!3451 = !DILocation(line: 1076, column: 39, scope: !3449)
!3452 = !DILocation(line: 1076, column: 22, scope: !3449)
!3453 = !DILocation(line: 1076, column: 15, scope: !3449)
!3454 = !DILocation(line: 1076, column: 3, scope: !3449)
!3455 = !DILocation(line: 1076, column: 10, scope: !3449)
!3456 = !DILocation(line: 1076, column: 20, scope: !3449)
!3457 = !DILocation(line: 1077, column: 6, scope: !3449)
!3458 = !DILocation(line: 1078, column: 2, scope: !3449)
!3459 = !DILocation(line: 1080, column: 2, scope: !3416)
!3460 = !DILocation(line: 1080, column: 9, scope: !3425)
!3461 = !DILocation(line: 1080, column: 15, scope: !3425)
!3462 = !DILocation(line: 1080, column: 22, scope: !3425)
!3463 = !DILocation(line: 1080, column: 13, scope: !3425)
!3464 = !DILocation(line: 1080, column: 31, scope: !3425)
!3465 = !DILocation(line: 1080, column: 56, scope: !3431)
!3466 = !DILocation(line: 1080, column: 44, scope: !3431)
!3467 = !DILocation(line: 1080, column: 51, scope: !3431)
!3468 = !DILocation(line: 1080, column: 34, scope: !3431)
!3469 = !DILocation(line: 1080, column: 31, scope: !3431)
!3470 = !DILocation(line: 1080, column: 2, scope: !3437)
!3471 = !DILocation(line: 1081, column: 44, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3416, file: !93, line: 1080, column: 63)
!3473 = !DILocation(line: 1081, column: 32, scope: !3472)
!3474 = !DILocation(line: 1081, column: 39, scope: !3472)
!3475 = !DILocation(line: 1081, column: 22, scope: !3472)
!3476 = !DILocation(line: 1081, column: 15, scope: !3472)
!3477 = !DILocation(line: 1081, column: 3, scope: !3472)
!3478 = !DILocation(line: 1081, column: 10, scope: !3472)
!3479 = !DILocation(line: 1081, column: 20, scope: !3472)
!3480 = !DILocation(line: 1082, column: 6, scope: !3472)
!3481 = !DILocation(line: 1080, column: 2, scope: !3440)
!3482 = distinct !{!3482, !3459}
!3483 = !DILocation(line: 1085, column: 24, scope: !3416)
!3484 = !DILocation(line: 1085, column: 31, scope: !3416)
!3485 = !DILocation(line: 1085, column: 38, scope: !3416)
!3486 = !DILocation(line: 1085, column: 2, scope: !3416)
!3487 = !DILocation(line: 1086, column: 15, scope: !3416)
!3488 = !DILocation(line: 1086, column: 2, scope: !3416)
!3489 = !DILocation(line: 1086, column: 9, scope: !3416)
!3490 = !DILocation(line: 1086, column: 13, scope: !3416)
!3491 = !DILocation(line: 1087, column: 23, scope: !3416)
!3492 = !DILocation(line: 1087, column: 2, scope: !3416)
!3493 = !DILocation(line: 1088, column: 17, scope: !3416)
!3494 = !DILocation(line: 1088, column: 2, scope: !3416)
!3495 = !DILocation(line: 1089, column: 1, scope: !3416)
!3496 = distinct !DISubprogram(name: "i_toupper", scope: !93, file: !93, line: 37, type: !3497, isLocal: true, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{!40, !40}
!3499 = !DILocalVariable(name: "c", arg: 1, scope: !3496, file: !93, line: 37, type: !40)
!3500 = !DILocation(line: 37, column: 34, scope: !3496)
!3501 = !DILocation(line: 39, column: 6, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3496, file: !93, line: 39, column: 6)
!3503 = !DILocation(line: 39, column: 16, scope: !3502)
!3504 = !DILocation(line: 39, column: 6, scope: !3496)
!3505 = !DILocation(line: 40, column: 28, scope: !3502)
!3506 = !DILocation(line: 40, column: 10, scope: !3502)
!3507 = !DILocation(line: 40, column: 3, scope: !3502)
!3508 = !DILocation(line: 41, column: 9, scope: !3496)
!3509 = !DILocation(line: 41, column: 11, scope: !3496)
!3510 = !DILocation(line: 41, column: 28, scope: !3511)
!3511 = !DILexicalBlockFile(scope: !3496, file: !93, discriminator: 1)
!3512 = !DILocation(line: 41, column: 20, scope: !3511)
!3513 = !DILocation(line: 41, column: 9, scope: !3511)
!3514 = !DILocation(line: 41, column: 33, scope: !3515)
!3515 = !DILexicalBlockFile(scope: !3496, file: !93, discriminator: 2)
!3516 = !DILocation(line: 41, column: 9, scope: !3515)
!3517 = !DILocation(line: 41, column: 9, scope: !3518)
!3518 = !DILexicalBlockFile(scope: !3496, file: !93, discriminator: 3)
!3519 = !DILocation(line: 41, column: 2, scope: !3518)
!3520 = !DILocation(line: 42, column: 1, scope: !3496)
!3521 = distinct !DISubprogram(name: "i_tolower", scope: !93, file: !93, line: 44, type: !3497, isLocal: true, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!3522 = !DILocalVariable(name: "c", arg: 1, scope: !3521, file: !93, line: 44, type: !40)
!3523 = !DILocation(line: 44, column: 34, scope: !3521)
!3524 = !DILocation(line: 46, column: 6, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3521, file: !93, line: 46, column: 6)
!3526 = !DILocation(line: 46, column: 16, scope: !3525)
!3527 = !DILocation(line: 46, column: 6, scope: !3521)
!3528 = !DILocation(line: 47, column: 28, scope: !3525)
!3529 = !DILocation(line: 47, column: 10, scope: !3525)
!3530 = !DILocation(line: 47, column: 3, scope: !3525)
!3531 = !DILocation(line: 48, column: 9, scope: !3521)
!3532 = !DILocation(line: 48, column: 11, scope: !3521)
!3533 = !DILocation(line: 48, column: 28, scope: !3534)
!3534 = !DILexicalBlockFile(scope: !3521, file: !93, discriminator: 1)
!3535 = !DILocation(line: 48, column: 20, scope: !3534)
!3536 = !DILocation(line: 48, column: 9, scope: !3534)
!3537 = !DILocation(line: 48, column: 33, scope: !3538)
!3538 = !DILexicalBlockFile(scope: !3521, file: !93, discriminator: 2)
!3539 = !DILocation(line: 48, column: 9, scope: !3538)
!3540 = !DILocation(line: 48, column: 9, scope: !3541)
!3541 = !DILexicalBlockFile(scope: !3521, file: !93, discriminator: 3)
!3542 = !DILocation(line: 48, column: 2, scope: !3541)
!3543 = !DILocation(line: 49, column: 1, scope: !3521)
!3544 = distinct !DISubprogram(name: "gui_entry_downcase_word", scope: !93, file: !93, line: 1091, type: !151, isLocal: false, isDefinition: true, scopeLine: 1092, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!3545 = !DILocalVariable(name: "entry", arg: 1, scope: !3544, file: !93, line: 1091, type: !31)
!3546 = !DILocation(line: 1091, column: 45, scope: !3544)
!3547 = !DILocalVariable(name: "pos", scope: !3544, file: !93, line: 1093, type: !36)
!3548 = !DILocation(line: 1093, column: 6, scope: !3544)
!3549 = !DILocation(line: 1093, column: 12, scope: !3544)
!3550 = !DILocation(line: 1093, column: 19, scope: !3544)
!3551 = !DILocation(line: 1094, column: 2, scope: !3544)
!3552 = !DILocation(line: 1094, column: 9, scope: !3553)
!3553 = !DILexicalBlockFile(scope: !3544, file: !93, discriminator: 1)
!3554 = !DILocation(line: 1094, column: 15, scope: !3553)
!3555 = !DILocation(line: 1094, column: 22, scope: !3553)
!3556 = !DILocation(line: 1094, column: 13, scope: !3553)
!3557 = !DILocation(line: 1094, column: 31, scope: !3553)
!3558 = !DILocation(line: 1094, column: 57, scope: !3559)
!3559 = !DILexicalBlockFile(scope: !3544, file: !93, discriminator: 2)
!3560 = !DILocation(line: 1094, column: 45, scope: !3559)
!3561 = !DILocation(line: 1094, column: 52, scope: !3559)
!3562 = !DILocation(line: 1094, column: 35, scope: !3559)
!3563 = !DILocation(line: 1094, column: 34, scope: !3559)
!3564 = !DILocation(line: 1094, column: 2, scope: !3565)
!3565 = !DILexicalBlockFile(scope: !3544, file: !93, discriminator: 3)
!3566 = !DILocation(line: 1095, column: 6, scope: !3544)
!3567 = !DILocation(line: 1094, column: 2, scope: !3568)
!3568 = !DILexicalBlockFile(scope: !3544, file: !93, discriminator: 4)
!3569 = distinct !{!3569, !3551}
!3570 = !DILocation(line: 1097, column: 2, scope: !3544)
!3571 = !DILocation(line: 1097, column: 9, scope: !3553)
!3572 = !DILocation(line: 1097, column: 15, scope: !3553)
!3573 = !DILocation(line: 1097, column: 22, scope: !3553)
!3574 = !DILocation(line: 1097, column: 13, scope: !3553)
!3575 = !DILocation(line: 1097, column: 31, scope: !3553)
!3576 = !DILocation(line: 1097, column: 56, scope: !3559)
!3577 = !DILocation(line: 1097, column: 44, scope: !3559)
!3578 = !DILocation(line: 1097, column: 51, scope: !3559)
!3579 = !DILocation(line: 1097, column: 34, scope: !3559)
!3580 = !DILocation(line: 1097, column: 31, scope: !3559)
!3581 = !DILocation(line: 1097, column: 2, scope: !3565)
!3582 = !DILocation(line: 1098, column: 44, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3544, file: !93, line: 1097, column: 63)
!3584 = !DILocation(line: 1098, column: 32, scope: !3583)
!3585 = !DILocation(line: 1098, column: 39, scope: !3583)
!3586 = !DILocation(line: 1098, column: 22, scope: !3583)
!3587 = !DILocation(line: 1098, column: 15, scope: !3583)
!3588 = !DILocation(line: 1098, column: 3, scope: !3583)
!3589 = !DILocation(line: 1098, column: 10, scope: !3583)
!3590 = !DILocation(line: 1098, column: 20, scope: !3583)
!3591 = !DILocation(line: 1099, column: 6, scope: !3583)
!3592 = !DILocation(line: 1097, column: 2, scope: !3568)
!3593 = distinct !{!3593, !3570}
!3594 = !DILocation(line: 1102, column: 24, scope: !3544)
!3595 = !DILocation(line: 1102, column: 31, scope: !3544)
!3596 = !DILocation(line: 1102, column: 38, scope: !3544)
!3597 = !DILocation(line: 1102, column: 2, scope: !3544)
!3598 = !DILocation(line: 1103, column: 15, scope: !3544)
!3599 = !DILocation(line: 1103, column: 2, scope: !3544)
!3600 = !DILocation(line: 1103, column: 9, scope: !3544)
!3601 = !DILocation(line: 1103, column: 13, scope: !3544)
!3602 = !DILocation(line: 1104, column: 23, scope: !3544)
!3603 = !DILocation(line: 1104, column: 2, scope: !3544)
!3604 = !DILocation(line: 1105, column: 17, scope: !3544)
!3605 = !DILocation(line: 1105, column: 2, scope: !3544)
!3606 = !DILocation(line: 1106, column: 1, scope: !3544)
!3607 = distinct !DISubprogram(name: "gui_entry_upcase_word", scope: !93, file: !93, line: 1108, type: !151, isLocal: false, isDefinition: true, scopeLine: 1109, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!3608 = !DILocalVariable(name: "entry", arg: 1, scope: !3607, file: !93, line: 1108, type: !31)
!3609 = !DILocation(line: 1108, column: 43, scope: !3607)
!3610 = !DILocalVariable(name: "pos", scope: !3607, file: !93, line: 1110, type: !36)
!3611 = !DILocation(line: 1110, column: 6, scope: !3607)
!3612 = !DILocation(line: 1110, column: 12, scope: !3607)
!3613 = !DILocation(line: 1110, column: 19, scope: !3607)
!3614 = !DILocation(line: 1111, column: 2, scope: !3607)
!3615 = !DILocation(line: 1111, column: 9, scope: !3616)
!3616 = !DILexicalBlockFile(scope: !3607, file: !93, discriminator: 1)
!3617 = !DILocation(line: 1111, column: 15, scope: !3616)
!3618 = !DILocation(line: 1111, column: 22, scope: !3616)
!3619 = !DILocation(line: 1111, column: 13, scope: !3616)
!3620 = !DILocation(line: 1111, column: 31, scope: !3616)
!3621 = !DILocation(line: 1111, column: 57, scope: !3622)
!3622 = !DILexicalBlockFile(scope: !3607, file: !93, discriminator: 2)
!3623 = !DILocation(line: 1111, column: 45, scope: !3622)
!3624 = !DILocation(line: 1111, column: 52, scope: !3622)
!3625 = !DILocation(line: 1111, column: 35, scope: !3622)
!3626 = !DILocation(line: 1111, column: 34, scope: !3622)
!3627 = !DILocation(line: 1111, column: 2, scope: !3628)
!3628 = !DILexicalBlockFile(scope: !3607, file: !93, discriminator: 3)
!3629 = !DILocation(line: 1112, column: 6, scope: !3607)
!3630 = !DILocation(line: 1111, column: 2, scope: !3631)
!3631 = !DILexicalBlockFile(scope: !3607, file: !93, discriminator: 4)
!3632 = distinct !{!3632, !3614}
!3633 = !DILocation(line: 1114, column: 2, scope: !3607)
!3634 = !DILocation(line: 1114, column: 9, scope: !3616)
!3635 = !DILocation(line: 1114, column: 15, scope: !3616)
!3636 = !DILocation(line: 1114, column: 22, scope: !3616)
!3637 = !DILocation(line: 1114, column: 13, scope: !3616)
!3638 = !DILocation(line: 1114, column: 31, scope: !3616)
!3639 = !DILocation(line: 1114, column: 56, scope: !3622)
!3640 = !DILocation(line: 1114, column: 44, scope: !3622)
!3641 = !DILocation(line: 1114, column: 51, scope: !3622)
!3642 = !DILocation(line: 1114, column: 34, scope: !3622)
!3643 = !DILocation(line: 1114, column: 31, scope: !3622)
!3644 = !DILocation(line: 1114, column: 2, scope: !3628)
!3645 = !DILocation(line: 1115, column: 44, scope: !3646)
!3646 = distinct !DILexicalBlock(scope: !3607, file: !93, line: 1114, column: 63)
!3647 = !DILocation(line: 1115, column: 32, scope: !3646)
!3648 = !DILocation(line: 1115, column: 39, scope: !3646)
!3649 = !DILocation(line: 1115, column: 22, scope: !3646)
!3650 = !DILocation(line: 1115, column: 15, scope: !3646)
!3651 = !DILocation(line: 1115, column: 3, scope: !3646)
!3652 = !DILocation(line: 1115, column: 10, scope: !3646)
!3653 = !DILocation(line: 1115, column: 20, scope: !3646)
!3654 = !DILocation(line: 1116, column: 6, scope: !3646)
!3655 = !DILocation(line: 1114, column: 2, scope: !3631)
!3656 = distinct !{!3656, !3633}
!3657 = !DILocation(line: 1119, column: 24, scope: !3607)
!3658 = !DILocation(line: 1119, column: 31, scope: !3607)
!3659 = !DILocation(line: 1119, column: 38, scope: !3607)
!3660 = !DILocation(line: 1119, column: 2, scope: !3607)
!3661 = !DILocation(line: 1120, column: 15, scope: !3607)
!3662 = !DILocation(line: 1120, column: 2, scope: !3607)
!3663 = !DILocation(line: 1120, column: 9, scope: !3607)
!3664 = !DILocation(line: 1120, column: 13, scope: !3607)
!3665 = !DILocation(line: 1121, column: 23, scope: !3607)
!3666 = !DILocation(line: 1121, column: 2, scope: !3607)
!3667 = !DILocation(line: 1122, column: 17, scope: !3607)
!3668 = !DILocation(line: 1122, column: 2, scope: !3607)
!3669 = !DILocation(line: 1123, column: 1, scope: !3607)
!3670 = distinct !DISubprogram(name: "gui_entry_set_pos", scope: !93, file: !93, line: 1132, type: !672, isLocal: false, isDefinition: true, scopeLine: 1133, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!3671 = !DILocalVariable(name: "entry", arg: 1, scope: !3670, file: !93, line: 1132, type: !31)
!3672 = !DILocation(line: 1132, column: 39, scope: !3670)
!3673 = !DILocalVariable(name: "pos", arg: 2, scope: !3670, file: !93, line: 1132, type: !36)
!3674 = !DILocation(line: 1132, column: 50, scope: !3670)
!3675 = !DILocation(line: 1134, column: 9, scope: !3670)
!3676 = distinct !{!3676, !3675}
!3677 = !DILocation(line: 1134, column: 17, scope: !3678)
!3678 = !DILexicalBlockFile(scope: !3679, file: !93, discriminator: 1)
!3679 = distinct !DILexicalBlock(scope: !3680, file: !93, line: 1134, column: 17)
!3680 = distinct !DILexicalBlock(scope: !3670, file: !93, line: 1134, column: 11)
!3681 = !DILocation(line: 1134, column: 23, scope: !3678)
!3682 = !DILocation(line: 1134, column: 12, scope: !3683)
!3683 = !DILexicalBlockFile(scope: !3684, file: !93, discriminator: 2)
!3684 = distinct !DILexicalBlock(scope: !3679, file: !93, line: 1134, column: 10)
!3685 = !DILocation(line: 1134, column: 21, scope: !3686)
!3686 = !DILexicalBlockFile(scope: !3687, file: !93, discriminator: 3)
!3687 = distinct !DILexicalBlock(scope: !3679, file: !93, line: 1134, column: 19)
!3688 = !DILocation(line: 1134, column: 107, scope: !3686)
!3689 = !DILocation(line: 1134, column: 118, scope: !3690)
!3690 = !DILexicalBlockFile(scope: !3680, file: !93, discriminator: 4)
!3691 = !DILocation(line: 1136, column: 6, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3670, file: !93, line: 1136, column: 6)
!3693 = !DILocation(line: 1136, column: 10, scope: !3692)
!3694 = !DILocation(line: 1136, column: 15, scope: !3692)
!3695 = !DILocation(line: 1136, column: 18, scope: !3696)
!3696 = !DILexicalBlockFile(scope: !3692, file: !93, discriminator: 1)
!3697 = !DILocation(line: 1136, column: 25, scope: !3696)
!3698 = !DILocation(line: 1136, column: 32, scope: !3696)
!3699 = !DILocation(line: 1136, column: 22, scope: !3696)
!3700 = !DILocation(line: 1136, column: 6, scope: !3696)
!3701 = !DILocation(line: 1137, column: 16, scope: !3692)
!3702 = !DILocation(line: 1137, column: 3, scope: !3692)
!3703 = !DILocation(line: 1137, column: 10, scope: !3692)
!3704 = !DILocation(line: 1137, column: 14, scope: !3692)
!3705 = !DILocation(line: 1139, column: 23, scope: !3670)
!3706 = !DILocation(line: 1139, column: 2, scope: !3670)
!3707 = !DILocation(line: 1140, column: 17, scope: !3670)
!3708 = !DILocation(line: 1140, column: 2, scope: !3670)
!3709 = !DILocation(line: 1141, column: 1, scope: !3670)
!3710 = !DILocation(line: 1141, column: 1, scope: !3711)
!3711 = !DILexicalBlockFile(scope: !3670, file: !93, discriminator: 1)
!3712 = distinct !DISubprogram(name: "gui_entry_set_text_and_pos_bytes", scope: !93, file: !93, line: 1143, type: !3713, isLocal: false, isDefinition: true, scopeLine: 1144, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!3713 = !DISubroutineType(types: !3714)
!3714 = !{null, !31, !76, !36}
!3715 = !DILocalVariable(name: "entry", arg: 1, scope: !3712, file: !93, line: 1143, type: !31)
!3716 = !DILocation(line: 1143, column: 54, scope: !3712)
!3717 = !DILocalVariable(name: "str", arg: 2, scope: !3712, file: !93, line: 1143, type: !76)
!3718 = !DILocation(line: 1143, column: 73, scope: !3712)
!3719 = !DILocalVariable(name: "pos_bytes", arg: 3, scope: !3712, file: !93, line: 1143, type: !36)
!3720 = !DILocation(line: 1143, column: 82, scope: !3712)
!3721 = !DILocalVariable(name: "pos", scope: !3712, file: !93, line: 1145, type: !36)
!3722 = !DILocation(line: 1145, column: 6, scope: !3712)
!3723 = !DILocalVariable(name: "extents_alloc", scope: !3712, file: !93, line: 1145, type: !36)
!3724 = !DILocation(line: 1145, column: 11, scope: !3712)
!3725 = !DILocalVariable(name: "extents", scope: !3712, file: !93, line: 1146, type: !45)
!3726 = !DILocation(line: 1146, column: 9, scope: !3712)
!3727 = !DILocalVariable(name: "ptr", scope: !3712, file: !93, line: 1147, type: !76)
!3728 = !DILocation(line: 1147, column: 14, scope: !3712)
!3729 = !DILocation(line: 1149, column: 2, scope: !3712)
!3730 = distinct !{!3730, !3729}
!3731 = !DILocation(line: 1149, column: 10, scope: !3732)
!3732 = !DILexicalBlockFile(scope: !3733, file: !93, discriminator: 1)
!3733 = distinct !DILexicalBlock(scope: !3734, file: !93, line: 1149, column: 10)
!3734 = distinct !DILexicalBlock(scope: !3712, file: !93, line: 1149, column: 4)
!3735 = !DILocation(line: 1149, column: 16, scope: !3732)
!3736 = !DILocation(line: 1149, column: 5, scope: !3737)
!3737 = !DILexicalBlockFile(scope: !3738, file: !93, discriminator: 2)
!3738 = distinct !DILexicalBlock(scope: !3733, file: !93, line: 1149, column: 3)
!3739 = !DILocation(line: 1149, column: 14, scope: !3740)
!3740 = !DILexicalBlockFile(scope: !3741, file: !93, discriminator: 3)
!3741 = distinct !DILexicalBlock(scope: !3733, file: !93, line: 1149, column: 12)
!3742 = !DILocation(line: 1149, column: 100, scope: !3740)
!3743 = !DILocation(line: 1149, column: 111, scope: !3744)
!3744 = !DILexicalBlockFile(scope: !3734, file: !93, discriminator: 4)
!3745 = !DILocation(line: 1151, column: 12, scope: !3712)
!3746 = !DILocation(line: 1151, column: 19, scope: !3712)
!3747 = !DILocation(line: 1151, column: 10, scope: !3712)
!3748 = !DILocation(line: 1152, column: 18, scope: !3712)
!3749 = !DILocation(line: 1152, column: 25, scope: !3712)
!3750 = !DILocation(line: 1152, column: 16, scope: !3712)
!3751 = !DILocation(line: 1153, column: 2, scope: !3712)
!3752 = !DILocation(line: 1153, column: 9, scope: !3712)
!3753 = !DILocation(line: 1153, column: 17, scope: !3712)
!3754 = !DILocation(line: 1154, column: 2, scope: !3712)
!3755 = !DILocation(line: 1154, column: 9, scope: !3712)
!3756 = !DILocation(line: 1154, column: 22, scope: !3712)
!3757 = !DILocation(line: 1156, column: 21, scope: !3712)
!3758 = !DILocation(line: 1156, column: 28, scope: !3712)
!3759 = !DILocation(line: 1156, column: 2, scope: !3712)
!3760 = !DILocation(line: 1158, column: 6, scope: !3761)
!3761 = distinct !DILexicalBlock(scope: !3712, file: !93, line: 1158, column: 6)
!3762 = !DILocation(line: 1158, column: 13, scope: !3761)
!3763 = !DILocation(line: 1158, column: 6, scope: !3712)
!3764 = !DILocation(line: 1159, column: 19, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3761, file: !93, line: 1158, column: 19)
!3766 = !DILocation(line: 1159, column: 24, scope: !3765)
!3767 = !DILocation(line: 1159, column: 3, scope: !3765)
!3768 = !DILocation(line: 1160, column: 34, scope: !3765)
!3769 = !DILocation(line: 1160, column: 39, scope: !3765)
!3770 = !DILocation(line: 1160, column: 9, scope: !3765)
!3771 = !DILocation(line: 1160, column: 7, scope: !3765)
!3772 = !DILocation(line: 1161, column: 2, scope: !3765)
!3773 = !DILocation(line: 1161, column: 13, scope: !3774)
!3774 = !DILexicalBlockFile(scope: !3775, file: !93, discriminator: 1)
!3775 = distinct !DILexicalBlock(scope: !3761, file: !93, line: 1161, column: 13)
!3776 = !DILocation(line: 1161, column: 23, scope: !3774)
!3777 = !DILocation(line: 1162, column: 44, scope: !3775)
!3778 = !DILocation(line: 1162, column: 9, scope: !3775)
!3779 = !DILocation(line: 1162, column: 87, scope: !3775)
!3780 = !DILocation(line: 1162, column: 93, scope: !3775)
!3781 = !DILocation(line: 1162, column: 91, scope: !3775)
!3782 = !DILocation(line: 1162, column: 51, scope: !3774)
!3783 = !DILocation(line: 1162, column: 49, scope: !3775)
!3784 = !DILocation(line: 1162, column: 7, scope: !3775)
!3785 = !DILocation(line: 1162, column: 3, scope: !3775)
!3786 = !DILocation(line: 1164, column: 9, scope: !3775)
!3787 = !DILocation(line: 1164, column: 7, scope: !3775)
!3788 = !DILocation(line: 1166, column: 6, scope: !3789)
!3789 = distinct !DILexicalBlock(scope: !3712, file: !93, line: 1166, column: 6)
!3790 = !DILocation(line: 1166, column: 14, scope: !3789)
!3791 = !DILocation(line: 1166, column: 6, scope: !3712)
!3792 = !DILocation(line: 1167, column: 3, scope: !3793)
!3793 = distinct !DILexicalBlock(scope: !3789, file: !93, line: 1166, column: 22)
!3794 = !DILocation(line: 1167, column: 10, scope: !3793)
!3795 = !DILocation(line: 1167, column: 23, scope: !3793)
!3796 = !DILocation(line: 1168, column: 20, scope: !3793)
!3797 = !DILocation(line: 1168, column: 3, scope: !3793)
!3798 = !DILocation(line: 1168, column: 10, scope: !3793)
!3799 = !DILocation(line: 1168, column: 18, scope: !3793)
!3800 = !DILocation(line: 1169, column: 7, scope: !3801)
!3801 = distinct !DILexicalBlock(scope: !3793, file: !93, line: 1169, column: 7)
!3802 = !DILocation(line: 1169, column: 23, scope: !3801)
!3803 = !DILocation(line: 1169, column: 30, scope: !3801)
!3804 = !DILocation(line: 1169, column: 21, scope: !3801)
!3805 = !DILocation(line: 1169, column: 7, scope: !3793)
!3806 = !DILocalVariable(name: "i", scope: !3807, file: !93, line: 1170, type: !36)
!3807 = distinct !DILexicalBlock(scope: !3801, file: !93, line: 1169, column: 42)
!3808 = !DILocation(line: 1170, column: 8, scope: !3807)
!3809 = !DILocation(line: 1171, column: 31, scope: !3807)
!3810 = !DILocation(line: 1171, column: 38, scope: !3807)
!3811 = !DILocation(line: 1172, column: 25, scope: !3807)
!3812 = !DILocation(line: 1172, column: 32, scope: !3807)
!3813 = !DILocation(line: 1172, column: 23, scope: !3807)
!3814 = !DILocation(line: 1171, column: 21, scope: !3807)
!3815 = !DILocation(line: 1171, column: 4, scope: !3807)
!3816 = !DILocation(line: 1171, column: 11, scope: !3807)
!3817 = !DILocation(line: 1171, column: 19, scope: !3807)
!3818 = !DILocation(line: 1173, column: 13, scope: !3819)
!3819 = distinct !DILexicalBlock(scope: !3807, file: !93, line: 1173, column: 4)
!3820 = !DILocation(line: 1173, column: 11, scope: !3819)
!3821 = !DILocation(line: 1173, column: 9, scope: !3819)
!3822 = !DILocation(line: 1173, column: 28, scope: !3823)
!3823 = !DILexicalBlockFile(scope: !3824, file: !93, discriminator: 1)
!3824 = distinct !DILexicalBlock(scope: !3819, file: !93, line: 1173, column: 4)
!3825 = !DILocation(line: 1173, column: 32, scope: !3823)
!3826 = !DILocation(line: 1173, column: 39, scope: !3823)
!3827 = !DILocation(line: 1173, column: 30, scope: !3823)
!3828 = !DILocation(line: 1173, column: 4, scope: !3823)
!3829 = !DILocation(line: 1174, column: 20, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3824, file: !93, line: 1173, column: 56)
!3831 = !DILocation(line: 1174, column: 5, scope: !3830)
!3832 = !DILocation(line: 1174, column: 12, scope: !3830)
!3833 = !DILocation(line: 1174, column: 23, scope: !3830)
!3834 = !DILocation(line: 1175, column: 4, scope: !3830)
!3835 = !DILocation(line: 1173, column: 52, scope: !3836)
!3836 = !DILexicalBlockFile(scope: !3824, file: !93, discriminator: 2)
!3837 = !DILocation(line: 1173, column: 4, scope: !3836)
!3838 = distinct !{!3838, !3839}
!3839 = !DILocation(line: 1173, column: 4, scope: !3807)
!3840 = !DILocation(line: 1176, column: 3, scope: !3807)
!3841 = !DILocation(line: 1177, column: 2, scope: !3793)
!3842 = !DILocation(line: 1178, column: 24, scope: !3712)
!3843 = !DILocation(line: 1178, column: 2, scope: !3712)
!3844 = !DILocation(line: 1179, column: 20, scope: !3712)
!3845 = !DILocation(line: 1179, column: 27, scope: !3712)
!3846 = !DILocation(line: 1179, column: 2, scope: !3712)
!3847 = !DILocation(line: 1180, column: 1, scope: !3712)
!3848 = !DILocation(line: 1180, column: 1, scope: !3849)
!3849 = !DILexicalBlockFile(scope: !3712, file: !93, discriminator: 1)
!3850 = distinct !DISubprogram(name: "gui_entry_move_pos", scope: !93, file: !93, line: 1182, type: !672, isLocal: false, isDefinition: true, scopeLine: 1183, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!3851 = !DILocalVariable(name: "entry", arg: 1, scope: !3850, file: !93, line: 1182, type: !31)
!3852 = !DILocation(line: 1182, column: 40, scope: !3850)
!3853 = !DILocalVariable(name: "pos", arg: 2, scope: !3850, file: !93, line: 1182, type: !36)
!3854 = !DILocation(line: 1182, column: 51, scope: !3850)
!3855 = !DILocation(line: 1184, column: 9, scope: !3850)
!3856 = distinct !{!3856, !3855}
!3857 = !DILocation(line: 1184, column: 17, scope: !3858)
!3858 = !DILexicalBlockFile(scope: !3859, file: !93, discriminator: 1)
!3859 = distinct !DILexicalBlock(scope: !3860, file: !93, line: 1184, column: 17)
!3860 = distinct !DILexicalBlock(scope: !3850, file: !93, line: 1184, column: 11)
!3861 = !DILocation(line: 1184, column: 23, scope: !3858)
!3862 = !DILocation(line: 1184, column: 12, scope: !3863)
!3863 = !DILexicalBlockFile(scope: !3864, file: !93, discriminator: 2)
!3864 = distinct !DILexicalBlock(scope: !3859, file: !93, line: 1184, column: 10)
!3865 = !DILocation(line: 1184, column: 21, scope: !3866)
!3866 = !DILexicalBlockFile(scope: !3867, file: !93, discriminator: 3)
!3867 = distinct !DILexicalBlock(scope: !3859, file: !93, line: 1184, column: 19)
!3868 = !DILocation(line: 1184, column: 107, scope: !3866)
!3869 = !DILocation(line: 1184, column: 118, scope: !3870)
!3870 = !DILexicalBlockFile(scope: !3860, file: !93, discriminator: 4)
!3871 = !DILocation(line: 1186, column: 6, scope: !3872)
!3872 = distinct !DILexicalBlock(scope: !3850, file: !93, line: 1186, column: 6)
!3873 = !DILocation(line: 1186, column: 13, scope: !3872)
!3874 = !DILocation(line: 1186, column: 19, scope: !3872)
!3875 = !DILocation(line: 1186, column: 17, scope: !3872)
!3876 = !DILocation(line: 1186, column: 23, scope: !3872)
!3877 = !DILocation(line: 1186, column: 28, scope: !3872)
!3878 = !DILocation(line: 1186, column: 31, scope: !3879)
!3879 = !DILexicalBlockFile(scope: !3872, file: !93, discriminator: 1)
!3880 = !DILocation(line: 1186, column: 38, scope: !3879)
!3881 = !DILocation(line: 1186, column: 44, scope: !3879)
!3882 = !DILocation(line: 1186, column: 42, scope: !3879)
!3883 = !DILocation(line: 1186, column: 51, scope: !3879)
!3884 = !DILocation(line: 1186, column: 58, scope: !3879)
!3885 = !DILocation(line: 1186, column: 48, scope: !3879)
!3886 = !DILocation(line: 1186, column: 6, scope: !3879)
!3887 = !DILocation(line: 1187, column: 17, scope: !3872)
!3888 = !DILocation(line: 1187, column: 3, scope: !3872)
!3889 = !DILocation(line: 1187, column: 10, scope: !3872)
!3890 = !DILocation(line: 1187, column: 14, scope: !3872)
!3891 = !DILocation(line: 1189, column: 6, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !3850, file: !93, line: 1189, column: 6)
!3893 = !DILocation(line: 1189, column: 13, scope: !3892)
!3894 = !DILocation(line: 1189, column: 6, scope: !3850)
!3895 = !DILocalVariable(name: "step", scope: !3896, file: !93, line: 1190, type: !36)
!3896 = distinct !DILexicalBlock(scope: !3892, file: !93, line: 1189, column: 19)
!3897 = !DILocation(line: 1190, column: 7, scope: !3896)
!3898 = !DILocation(line: 1190, column: 14, scope: !3896)
!3899 = !DILocation(line: 1190, column: 18, scope: !3896)
!3900 = !DILocation(line: 1191, column: 3, scope: !3896)
!3901 = !DILocation(line: 1191, column: 31, scope: !3902)
!3902 = !DILexicalBlockFile(scope: !3896, file: !93, discriminator: 1)
!3903 = !DILocation(line: 1191, column: 38, scope: !3902)
!3904 = !DILocation(line: 1191, column: 19, scope: !3902)
!3905 = !DILocation(line: 1191, column: 26, scope: !3902)
!3906 = !DILocation(line: 1191, column: 9, scope: !3902)
!3907 = !DILocation(line: 1191, column: 44, scope: !3902)
!3908 = !DILocation(line: 1191, column: 49, scope: !3902)
!3909 = !DILocation(line: 1192, column: 9, scope: !3896)
!3910 = !DILocation(line: 1192, column: 16, scope: !3896)
!3911 = !DILocation(line: 1192, column: 22, scope: !3896)
!3912 = !DILocation(line: 1192, column: 20, scope: !3896)
!3913 = !DILocation(line: 1192, column: 27, scope: !3896)
!3914 = !DILocation(line: 1192, column: 32, scope: !3896)
!3915 = !DILocation(line: 1192, column: 35, scope: !3902)
!3916 = !DILocation(line: 1192, column: 42, scope: !3902)
!3917 = !DILocation(line: 1192, column: 48, scope: !3902)
!3918 = !DILocation(line: 1192, column: 46, scope: !3902)
!3919 = !DILocation(line: 1192, column: 56, scope: !3902)
!3920 = !DILocation(line: 1192, column: 63, scope: !3902)
!3921 = !DILocation(line: 1192, column: 53, scope: !3902)
!3922 = !DILocation(line: 1191, column: 3, scope: !3923)
!3923 = !DILexicalBlockFile(scope: !3896, file: !93, discriminator: 2)
!3924 = !DILocation(line: 1193, column: 18, scope: !3896)
!3925 = !DILocation(line: 1193, column: 4, scope: !3896)
!3926 = !DILocation(line: 1193, column: 11, scope: !3896)
!3927 = !DILocation(line: 1193, column: 15, scope: !3896)
!3928 = !DILocation(line: 1191, column: 3, scope: !3929)
!3929 = !DILexicalBlockFile(scope: !3896, file: !93, discriminator: 3)
!3930 = distinct !{!3930, !3900}
!3931 = !DILocation(line: 1194, column: 2, scope: !3896)
!3932 = !DILocation(line: 1196, column: 23, scope: !3850)
!3933 = !DILocation(line: 1196, column: 2, scope: !3850)
!3934 = !DILocation(line: 1197, column: 17, scope: !3850)
!3935 = !DILocation(line: 1197, column: 2, scope: !3850)
!3936 = !DILocation(line: 1198, column: 1, scope: !3850)
!3937 = !DILocation(line: 1198, column: 1, scope: !3938)
!3938 = !DILexicalBlockFile(scope: !3850, file: !93, discriminator: 1)
!3939 = distinct !DISubprogram(name: "gui_entry_move_words", scope: !93, file: !93, line: 1246, type: !3940, isLocal: false, isDefinition: true, scopeLine: 1247, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!3940 = !DISubroutineType(types: !3941)
!3941 = !{null, !31, !36, !36}
!3942 = !DILocalVariable(name: "entry", arg: 1, scope: !3939, file: !93, line: 1246, type: !31)
!3943 = !DILocation(line: 1246, column: 42, scope: !3939)
!3944 = !DILocalVariable(name: "count", arg: 2, scope: !3939, file: !93, line: 1246, type: !36)
!3945 = !DILocation(line: 1246, column: 53, scope: !3939)
!3946 = !DILocalVariable(name: "to_space", arg: 3, scope: !3939, file: !93, line: 1246, type: !36)
!3947 = !DILocation(line: 1246, column: 64, scope: !3939)
!3948 = !DILocation(line: 1248, column: 9, scope: !3939)
!3949 = distinct !{!3949, !3948}
!3950 = !DILocation(line: 1248, column: 17, scope: !3951)
!3951 = !DILexicalBlockFile(scope: !3952, file: !93, discriminator: 1)
!3952 = distinct !DILexicalBlock(scope: !3953, file: !93, line: 1248, column: 17)
!3953 = distinct !DILexicalBlock(scope: !3939, file: !93, line: 1248, column: 11)
!3954 = !DILocation(line: 1248, column: 23, scope: !3951)
!3955 = !DILocation(line: 1248, column: 12, scope: !3956)
!3956 = !DILexicalBlockFile(scope: !3957, file: !93, discriminator: 2)
!3957 = distinct !DILexicalBlock(scope: !3952, file: !93, line: 1248, column: 10)
!3958 = !DILocation(line: 1248, column: 21, scope: !3959)
!3959 = !DILexicalBlockFile(scope: !3960, file: !93, discriminator: 3)
!3960 = distinct !DILexicalBlock(scope: !3952, file: !93, line: 1248, column: 19)
!3961 = !DILocation(line: 1248, column: 107, scope: !3959)
!3962 = !DILocation(line: 1248, column: 118, scope: !3963)
!3963 = !DILexicalBlockFile(scope: !3953, file: !93, discriminator: 4)
!3964 = !DILocation(line: 1250, column: 6, scope: !3965)
!3965 = distinct !DILexicalBlock(scope: !3939, file: !93, line: 1250, column: 6)
!3966 = !DILocation(line: 1250, column: 12, scope: !3965)
!3967 = !DILocation(line: 1250, column: 6, scope: !3939)
!3968 = !DILocation(line: 1251, column: 29, scope: !3965)
!3969 = !DILocation(line: 1251, column: 37, scope: !3965)
!3970 = !DILocation(line: 1251, column: 36, scope: !3965)
!3971 = !DILocation(line: 1251, column: 44, scope: !3965)
!3972 = !DILocation(line: 1251, column: 3, scope: !3965)
!3973 = !DILocation(line: 1252, column: 11, scope: !3974)
!3974 = distinct !DILexicalBlock(scope: !3965, file: !93, line: 1252, column: 11)
!3975 = !DILocation(line: 1252, column: 17, scope: !3974)
!3976 = !DILocation(line: 1252, column: 11, scope: !3965)
!3977 = !DILocation(line: 1253, column: 30, scope: !3974)
!3978 = !DILocation(line: 1253, column: 37, scope: !3974)
!3979 = !DILocation(line: 1253, column: 44, scope: !3974)
!3980 = !DILocation(line: 1253, column: 3, scope: !3974)
!3981 = !DILocation(line: 1255, column: 23, scope: !3939)
!3982 = !DILocation(line: 1255, column: 2, scope: !3939)
!3983 = !DILocation(line: 1256, column: 17, scope: !3939)
!3984 = !DILocation(line: 1256, column: 2, scope: !3939)
!3985 = !DILocation(line: 1257, column: 1, scope: !3939)
!3986 = !DILocation(line: 1257, column: 1, scope: !3987)
!3987 = !DILexicalBlockFile(scope: !3939, file: !93, discriminator: 1)
!3988 = distinct !DISubprogram(name: "gui_entry_move_words_left", scope: !93, file: !93, line: 1200, type: !3940, isLocal: true, isDefinition: true, scopeLine: 1201, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!3989 = !DILocalVariable(name: "entry", arg: 1, scope: !3988, file: !93, line: 1200, type: !31)
!3990 = !DILocation(line: 1200, column: 54, scope: !3988)
!3991 = !DILocalVariable(name: "count", arg: 2, scope: !3988, file: !93, line: 1200, type: !36)
!3992 = !DILocation(line: 1200, column: 65, scope: !3988)
!3993 = !DILocalVariable(name: "to_space", arg: 3, scope: !3988, file: !93, line: 1200, type: !36)
!3994 = !DILocation(line: 1200, column: 76, scope: !3988)
!3995 = !DILocalVariable(name: "pos", scope: !3988, file: !93, line: 1202, type: !36)
!3996 = !DILocation(line: 1202, column: 6, scope: !3988)
!3997 = !DILocation(line: 1204, column: 8, scope: !3988)
!3998 = !DILocation(line: 1204, column: 15, scope: !3988)
!3999 = !DILocation(line: 1204, column: 6, scope: !3988)
!4000 = !DILocation(line: 1205, column: 2, scope: !3988)
!4001 = !DILocation(line: 1205, column: 9, scope: !4002)
!4002 = !DILexicalBlockFile(scope: !3988, file: !93, discriminator: 1)
!4003 = !DILocation(line: 1205, column: 15, scope: !4002)
!4004 = !DILocation(line: 1205, column: 19, scope: !4002)
!4005 = !DILocation(line: 1205, column: 22, scope: !4006)
!4006 = !DILexicalBlockFile(scope: !3988, file: !93, discriminator: 2)
!4007 = !DILocation(line: 1205, column: 26, scope: !4006)
!4008 = !DILocation(line: 1205, column: 2, scope: !4009)
!4009 = !DILexicalBlockFile(scope: !3988, file: !93, discriminator: 3)
!4010 = !DILocation(line: 1206, column: 7, scope: !4011)
!4011 = distinct !DILexicalBlock(scope: !4012, file: !93, line: 1206, column: 7)
!4012 = distinct !DILexicalBlock(scope: !3988, file: !93, line: 1205, column: 31)
!4013 = !DILocation(line: 1206, column: 7, scope: !4012)
!4014 = !DILocation(line: 1207, column: 4, scope: !4015)
!4015 = distinct !DILexicalBlock(scope: !4011, file: !93, line: 1206, column: 17)
!4016 = !DILocation(line: 1207, column: 11, scope: !4017)
!4017 = !DILexicalBlockFile(scope: !4015, file: !93, discriminator: 1)
!4018 = !DILocation(line: 1207, column: 15, scope: !4017)
!4019 = !DILocation(line: 1207, column: 19, scope: !4017)
!4020 = !DILocation(line: 1207, column: 34, scope: !4021)
!4021 = !DILexicalBlockFile(scope: !4015, file: !93, discriminator: 2)
!4022 = !DILocation(line: 1207, column: 37, scope: !4021)
!4023 = !DILocation(line: 1207, column: 22, scope: !4021)
!4024 = !DILocation(line: 1207, column: 29, scope: !4021)
!4025 = !DILocation(line: 1207, column: 41, scope: !4021)
!4026 = !DILocation(line: 1207, column: 4, scope: !4027)
!4027 = !DILexicalBlockFile(scope: !4015, file: !93, discriminator: 3)
!4028 = !DILocation(line: 1208, column: 8, scope: !4015)
!4029 = !DILocation(line: 1207, column: 4, scope: !4030)
!4030 = !DILexicalBlockFile(scope: !4015, file: !93, discriminator: 4)
!4031 = distinct !{!4031, !4014}
!4032 = !DILocation(line: 1209, column: 4, scope: !4015)
!4033 = !DILocation(line: 1209, column: 11, scope: !4017)
!4034 = !DILocation(line: 1209, column: 15, scope: !4017)
!4035 = !DILocation(line: 1209, column: 19, scope: !4017)
!4036 = !DILocation(line: 1209, column: 34, scope: !4021)
!4037 = !DILocation(line: 1209, column: 37, scope: !4021)
!4038 = !DILocation(line: 1209, column: 22, scope: !4021)
!4039 = !DILocation(line: 1209, column: 29, scope: !4021)
!4040 = !DILocation(line: 1209, column: 41, scope: !4021)
!4041 = !DILocation(line: 1209, column: 4, scope: !4027)
!4042 = !DILocation(line: 1210, column: 8, scope: !4015)
!4043 = !DILocation(line: 1209, column: 4, scope: !4030)
!4044 = distinct !{!4044, !4032}
!4045 = !DILocation(line: 1211, column: 3, scope: !4015)
!4046 = !DILocation(line: 1212, column: 4, scope: !4047)
!4047 = distinct !DILexicalBlock(scope: !4011, file: !93, line: 1211, column: 10)
!4048 = !DILocation(line: 1212, column: 11, scope: !4049)
!4049 = !DILexicalBlockFile(scope: !4047, file: !93, discriminator: 1)
!4050 = !DILocation(line: 1212, column: 15, scope: !4049)
!4051 = !DILocation(line: 1212, column: 19, scope: !4049)
!4052 = !DILocation(line: 1212, column: 45, scope: !4053)
!4053 = !DILexicalBlockFile(scope: !4047, file: !93, discriminator: 2)
!4054 = !DILocation(line: 1212, column: 48, scope: !4053)
!4055 = !DILocation(line: 1212, column: 33, scope: !4053)
!4056 = !DILocation(line: 1212, column: 40, scope: !4053)
!4057 = !DILocation(line: 1212, column: 23, scope: !4053)
!4058 = !DILocation(line: 1212, column: 22, scope: !4053)
!4059 = !DILocation(line: 1212, column: 4, scope: !4060)
!4060 = !DILexicalBlockFile(scope: !4047, file: !93, discriminator: 3)
!4061 = !DILocation(line: 1213, column: 8, scope: !4047)
!4062 = !DILocation(line: 1212, column: 4, scope: !4063)
!4063 = !DILexicalBlockFile(scope: !4047, file: !93, discriminator: 4)
!4064 = distinct !{!4064, !4046}
!4065 = !DILocation(line: 1214, column: 4, scope: !4047)
!4066 = !DILocation(line: 1214, column: 11, scope: !4049)
!4067 = !DILocation(line: 1214, column: 15, scope: !4049)
!4068 = !DILocation(line: 1214, column: 19, scope: !4049)
!4069 = !DILocation(line: 1214, column: 44, scope: !4053)
!4070 = !DILocation(line: 1214, column: 47, scope: !4053)
!4071 = !DILocation(line: 1214, column: 32, scope: !4053)
!4072 = !DILocation(line: 1214, column: 39, scope: !4053)
!4073 = !DILocation(line: 1214, column: 22, scope: !4053)
!4074 = !DILocation(line: 1214, column: 19, scope: !4053)
!4075 = !DILocation(line: 1214, column: 4, scope: !4060)
!4076 = !DILocation(line: 1215, column: 8, scope: !4047)
!4077 = !DILocation(line: 1214, column: 4, scope: !4063)
!4078 = distinct !{!4078, !4065}
!4079 = !DILocation(line: 1217, column: 8, scope: !4012)
!4080 = !DILocation(line: 1205, column: 2, scope: !4081)
!4081 = !DILexicalBlockFile(scope: !3988, file: !93, discriminator: 4)
!4082 = distinct !{!4082, !4000}
!4083 = !DILocation(line: 1220, column: 22, scope: !3988)
!4084 = !DILocation(line: 1220, column: 9, scope: !3988)
!4085 = !DILocation(line: 1220, column: 16, scope: !3988)
!4086 = !DILocation(line: 1220, column: 20, scope: !3988)
!4087 = !DILocation(line: 1221, column: 1, scope: !3988)
!4088 = distinct !DISubprogram(name: "gui_entry_move_words_right", scope: !93, file: !93, line: 1223, type: !3940, isLocal: true, isDefinition: true, scopeLine: 1224, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!4089 = !DILocalVariable(name: "entry", arg: 1, scope: !4088, file: !93, line: 1223, type: !31)
!4090 = !DILocation(line: 1223, column: 55, scope: !4088)
!4091 = !DILocalVariable(name: "count", arg: 2, scope: !4088, file: !93, line: 1223, type: !36)
!4092 = !DILocation(line: 1223, column: 66, scope: !4088)
!4093 = !DILocalVariable(name: "to_space", arg: 3, scope: !4088, file: !93, line: 1223, type: !36)
!4094 = !DILocation(line: 1223, column: 77, scope: !4088)
!4095 = !DILocalVariable(name: "pos", scope: !4088, file: !93, line: 1225, type: !36)
!4096 = !DILocation(line: 1225, column: 6, scope: !4088)
!4097 = !DILocation(line: 1227, column: 8, scope: !4088)
!4098 = !DILocation(line: 1227, column: 15, scope: !4088)
!4099 = !DILocation(line: 1227, column: 6, scope: !4088)
!4100 = !DILocation(line: 1228, column: 2, scope: !4088)
!4101 = !DILocation(line: 1228, column: 9, scope: !4102)
!4102 = !DILexicalBlockFile(scope: !4088, file: !93, discriminator: 1)
!4103 = !DILocation(line: 1228, column: 15, scope: !4102)
!4104 = !DILocation(line: 1228, column: 19, scope: !4102)
!4105 = !DILocation(line: 1228, column: 22, scope: !4106)
!4106 = !DILexicalBlockFile(scope: !4088, file: !93, discriminator: 2)
!4107 = !DILocation(line: 1228, column: 28, scope: !4106)
!4108 = !DILocation(line: 1228, column: 35, scope: !4106)
!4109 = !DILocation(line: 1228, column: 26, scope: !4106)
!4110 = !DILocation(line: 1228, column: 2, scope: !4111)
!4111 = !DILexicalBlockFile(scope: !4088, file: !93, discriminator: 3)
!4112 = !DILocation(line: 1229, column: 7, scope: !4113)
!4113 = distinct !DILexicalBlock(scope: !4114, file: !93, line: 1229, column: 7)
!4114 = distinct !DILexicalBlock(scope: !4088, file: !93, line: 1228, column: 45)
!4115 = !DILocation(line: 1229, column: 7, scope: !4114)
!4116 = !DILocation(line: 1230, column: 4, scope: !4117)
!4117 = distinct !DILexicalBlock(scope: !4113, file: !93, line: 1229, column: 17)
!4118 = !DILocation(line: 1230, column: 11, scope: !4119)
!4119 = !DILexicalBlockFile(scope: !4117, file: !93, discriminator: 1)
!4120 = !DILocation(line: 1230, column: 17, scope: !4119)
!4121 = !DILocation(line: 1230, column: 24, scope: !4119)
!4122 = !DILocation(line: 1230, column: 15, scope: !4119)
!4123 = !DILocation(line: 1230, column: 33, scope: !4119)
!4124 = !DILocation(line: 1230, column: 48, scope: !4125)
!4125 = !DILexicalBlockFile(scope: !4117, file: !93, discriminator: 2)
!4126 = !DILocation(line: 1230, column: 36, scope: !4125)
!4127 = !DILocation(line: 1230, column: 43, scope: !4125)
!4128 = !DILocation(line: 1230, column: 53, scope: !4125)
!4129 = !DILocation(line: 1230, column: 4, scope: !4130)
!4130 = !DILexicalBlockFile(scope: !4117, file: !93, discriminator: 3)
!4131 = !DILocation(line: 1231, column: 8, scope: !4117)
!4132 = !DILocation(line: 1230, column: 4, scope: !4133)
!4133 = !DILexicalBlockFile(scope: !4117, file: !93, discriminator: 4)
!4134 = distinct !{!4134, !4116}
!4135 = !DILocation(line: 1232, column: 4, scope: !4117)
!4136 = !DILocation(line: 1232, column: 11, scope: !4119)
!4137 = !DILocation(line: 1232, column: 17, scope: !4119)
!4138 = !DILocation(line: 1232, column: 24, scope: !4119)
!4139 = !DILocation(line: 1232, column: 15, scope: !4119)
!4140 = !DILocation(line: 1232, column: 33, scope: !4119)
!4141 = !DILocation(line: 1232, column: 48, scope: !4125)
!4142 = !DILocation(line: 1232, column: 36, scope: !4125)
!4143 = !DILocation(line: 1232, column: 43, scope: !4125)
!4144 = !DILocation(line: 1232, column: 53, scope: !4125)
!4145 = !DILocation(line: 1232, column: 4, scope: !4130)
!4146 = !DILocation(line: 1233, column: 8, scope: !4117)
!4147 = !DILocation(line: 1232, column: 4, scope: !4133)
!4148 = distinct !{!4148, !4135}
!4149 = !DILocation(line: 1234, column: 3, scope: !4117)
!4150 = !DILocation(line: 1235, column: 4, scope: !4151)
!4151 = distinct !DILexicalBlock(scope: !4113, file: !93, line: 1234, column: 10)
!4152 = !DILocation(line: 1235, column: 11, scope: !4153)
!4153 = !DILexicalBlockFile(scope: !4151, file: !93, discriminator: 1)
!4154 = !DILocation(line: 1235, column: 17, scope: !4153)
!4155 = !DILocation(line: 1235, column: 24, scope: !4153)
!4156 = !DILocation(line: 1235, column: 15, scope: !4153)
!4157 = !DILocation(line: 1235, column: 33, scope: !4153)
!4158 = !DILocation(line: 1235, column: 59, scope: !4159)
!4159 = !DILexicalBlockFile(scope: !4151, file: !93, discriminator: 2)
!4160 = !DILocation(line: 1235, column: 47, scope: !4159)
!4161 = !DILocation(line: 1235, column: 54, scope: !4159)
!4162 = !DILocation(line: 1235, column: 37, scope: !4159)
!4163 = !DILocation(line: 1235, column: 36, scope: !4159)
!4164 = !DILocation(line: 1235, column: 4, scope: !4165)
!4165 = !DILexicalBlockFile(scope: !4151, file: !93, discriminator: 3)
!4166 = !DILocation(line: 1236, column: 8, scope: !4151)
!4167 = !DILocation(line: 1235, column: 4, scope: !4168)
!4168 = !DILexicalBlockFile(scope: !4151, file: !93, discriminator: 4)
!4169 = distinct !{!4169, !4150}
!4170 = !DILocation(line: 1237, column: 4, scope: !4151)
!4171 = !DILocation(line: 1237, column: 11, scope: !4153)
!4172 = !DILocation(line: 1237, column: 17, scope: !4153)
!4173 = !DILocation(line: 1237, column: 24, scope: !4153)
!4174 = !DILocation(line: 1237, column: 15, scope: !4153)
!4175 = !DILocation(line: 1237, column: 33, scope: !4153)
!4176 = !DILocation(line: 1237, column: 58, scope: !4159)
!4177 = !DILocation(line: 1237, column: 46, scope: !4159)
!4178 = !DILocation(line: 1237, column: 53, scope: !4159)
!4179 = !DILocation(line: 1237, column: 36, scope: !4159)
!4180 = !DILocation(line: 1237, column: 33, scope: !4159)
!4181 = !DILocation(line: 1237, column: 4, scope: !4165)
!4182 = !DILocation(line: 1238, column: 8, scope: !4151)
!4183 = !DILocation(line: 1237, column: 4, scope: !4168)
!4184 = distinct !{!4184, !4170}
!4185 = !DILocation(line: 1240, column: 8, scope: !4114)
!4186 = !DILocation(line: 1228, column: 2, scope: !4187)
!4187 = !DILexicalBlockFile(scope: !4088, file: !93, discriminator: 4)
!4188 = distinct !{!4188, !4100}
!4189 = !DILocation(line: 1243, column: 22, scope: !4088)
!4190 = !DILocation(line: 1243, column: 9, scope: !4088)
!4191 = !DILocation(line: 1243, column: 16, scope: !4088)
!4192 = !DILocation(line: 1243, column: 20, scope: !4088)
!4193 = !DILocation(line: 1244, column: 1, scope: !4088)
!4194 = distinct !DISubprogram(name: "gui_entry_set_extent", scope: !93, file: !93, line: 1275, type: !4195, isLocal: false, isDefinition: true, scopeLine: 1276, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!4195 = !DISubroutineType(types: !4196)
!4196 = !{null, !31, !36, !76}
!4197 = !DILocalVariable(name: "entry", arg: 1, scope: !4194, file: !93, line: 1275, type: !31)
!4198 = !DILocation(line: 1275, column: 42, scope: !4194)
!4199 = !DILocalVariable(name: "pos", arg: 2, scope: !4194, file: !93, line: 1275, type: !36)
!4200 = !DILocation(line: 1275, column: 53, scope: !4194)
!4201 = !DILocalVariable(name: "text", arg: 3, scope: !4194, file: !93, line: 1275, type: !76)
!4202 = !DILocation(line: 1275, column: 70, scope: !4194)
!4203 = !DILocalVariable(name: "update", scope: !4194, file: !93, line: 1277, type: !36)
!4204 = !DILocation(line: 1277, column: 6, scope: !4194)
!4205 = !DILocation(line: 1279, column: 2, scope: !4194)
!4206 = distinct !{!4206, !4205}
!4207 = !DILocation(line: 1279, column: 10, scope: !4208)
!4208 = !DILexicalBlockFile(scope: !4209, file: !93, discriminator: 1)
!4209 = distinct !DILexicalBlock(scope: !4210, file: !93, line: 1279, column: 10)
!4210 = distinct !DILexicalBlock(scope: !4194, file: !93, line: 1279, column: 4)
!4211 = !DILocation(line: 1279, column: 16, scope: !4208)
!4212 = !DILocation(line: 1279, column: 5, scope: !4213)
!4213 = !DILexicalBlockFile(scope: !4214, file: !93, discriminator: 2)
!4214 = distinct !DILexicalBlock(scope: !4209, file: !93, line: 1279, column: 3)
!4215 = !DILocation(line: 1279, column: 14, scope: !4216)
!4216 = !DILexicalBlockFile(scope: !4217, file: !93, discriminator: 3)
!4217 = distinct !DILexicalBlock(scope: !4209, file: !93, line: 1279, column: 12)
!4218 = !DILocation(line: 1279, column: 100, scope: !4216)
!4219 = !DILocation(line: 1279, column: 111, scope: !4220)
!4220 = !DILexicalBlockFile(scope: !4210, file: !93, discriminator: 4)
!4221 = !DILocation(line: 1281, column: 6, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4194, file: !93, line: 1281, column: 6)
!4223 = !DILocation(line: 1281, column: 10, scope: !4222)
!4224 = !DILocation(line: 1281, column: 14, scope: !4222)
!4225 = !DILocation(line: 1281, column: 17, scope: !4226)
!4226 = !DILexicalBlockFile(scope: !4222, file: !93, discriminator: 1)
!4227 = !DILocation(line: 1281, column: 23, scope: !4226)
!4228 = !DILocation(line: 1281, column: 30, scope: !4226)
!4229 = !DILocation(line: 1281, column: 21, scope: !4226)
!4230 = !DILocation(line: 1281, column: 6, scope: !4226)
!4231 = !DILocation(line: 1282, column: 3, scope: !4222)
!4232 = !DILocation(line: 1284, column: 6, scope: !4233)
!4233 = distinct !DILexicalBlock(scope: !4194, file: !93, line: 1284, column: 6)
!4234 = !DILocation(line: 1284, column: 11, scope: !4233)
!4235 = !DILocation(line: 1284, column: 6, scope: !4194)
!4236 = !DILocation(line: 1285, column: 3, scope: !4233)
!4237 = !DILocation(line: 1287, column: 7, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !4194, file: !93, line: 1287, column: 6)
!4239 = !DILocation(line: 1287, column: 14, scope: !4238)
!4240 = !DILocation(line: 1287, column: 6, scope: !4194)
!4241 = !DILocation(line: 1288, column: 27, scope: !4242)
!4242 = distinct !DILexicalBlock(scope: !4238, file: !93, line: 1287, column: 28)
!4243 = !DILocation(line: 1288, column: 3, scope: !4242)
!4244 = !DILocation(line: 1289, column: 2, scope: !4242)
!4245 = !DILocation(line: 1291, column: 31, scope: !4246)
!4246 = distinct !DILexicalBlock(scope: !4194, file: !93, line: 1291, column: 6)
!4247 = !DILocation(line: 1291, column: 16, scope: !4246)
!4248 = !DILocation(line: 1291, column: 23, scope: !4246)
!4249 = !DILocation(line: 1291, column: 37, scope: !4246)
!4250 = !DILocation(line: 1291, column: 6, scope: !4246)
!4251 = !DILocation(line: 1291, column: 43, scope: !4246)
!4252 = !DILocation(line: 1291, column: 6, scope: !4194)
!4253 = !DILocation(line: 1292, column: 25, scope: !4254)
!4254 = distinct !DILexicalBlock(scope: !4246, file: !93, line: 1291, column: 49)
!4255 = !DILocation(line: 1292, column: 10, scope: !4254)
!4256 = !DILocation(line: 1292, column: 17, scope: !4254)
!4257 = !DILocation(line: 1292, column: 3, scope: !4254)
!4258 = !DILocation(line: 1293, column: 8, scope: !4259)
!4259 = distinct !DILexicalBlock(scope: !4254, file: !93, line: 1293, column: 7)
!4260 = !DILocation(line: 1293, column: 7, scope: !4259)
!4261 = !DILocation(line: 1293, column: 13, scope: !4259)
!4262 = !DILocation(line: 1293, column: 7, scope: !4254)
!4263 = !DILocation(line: 1294, column: 19, scope: !4264)
!4264 = distinct !DILexicalBlock(scope: !4259, file: !93, line: 1293, column: 22)
!4265 = !DILocation(line: 1294, column: 4, scope: !4264)
!4266 = !DILocation(line: 1294, column: 11, scope: !4264)
!4267 = !DILocation(line: 1294, column: 24, scope: !4264)
!4268 = !DILocation(line: 1295, column: 3, scope: !4264)
!4269 = !DILocation(line: 1296, column: 35, scope: !4270)
!4270 = distinct !DILexicalBlock(scope: !4259, file: !93, line: 1295, column: 10)
!4271 = !DILocation(line: 1296, column: 26, scope: !4270)
!4272 = !DILocation(line: 1296, column: 19, scope: !4270)
!4273 = !DILocation(line: 1296, column: 4, scope: !4270)
!4274 = !DILocation(line: 1296, column: 11, scope: !4270)
!4275 = !DILocation(line: 1296, column: 24, scope: !4270)
!4276 = !DILocation(line: 1298, column: 10, scope: !4254)
!4277 = !DILocation(line: 1299, column: 2, scope: !4254)
!4278 = !DILocation(line: 1301, column: 6, scope: !4279)
!4279 = distinct !DILexicalBlock(scope: !4194, file: !93, line: 1301, column: 6)
!4280 = !DILocation(line: 1301, column: 6, scope: !4194)
!4281 = !DILocation(line: 1302, column: 25, scope: !4282)
!4282 = distinct !DILexicalBlock(scope: !4279, file: !93, line: 1301, column: 14)
!4283 = !DILocation(line: 1302, column: 32, scope: !4282)
!4284 = !DILocation(line: 1302, column: 36, scope: !4282)
!4285 = !DILocation(line: 1302, column: 3, scope: !4282)
!4286 = !DILocation(line: 1303, column: 24, scope: !4282)
!4287 = !DILocation(line: 1303, column: 3, scope: !4282)
!4288 = !DILocation(line: 1304, column: 18, scope: !4282)
!4289 = !DILocation(line: 1304, column: 3, scope: !4282)
!4290 = !DILocation(line: 1305, column: 2, scope: !4282)
!4291 = !DILocation(line: 1306, column: 1, scope: !4194)
!4292 = distinct !DISubprogram(name: "gui_entry_alloc_extents", scope: !93, file: !93, line: 1269, type: !151, isLocal: true, isDefinition: true, scopeLine: 1270, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!4293 = !DILocalVariable(name: "entry", arg: 1, scope: !4292, file: !93, line: 1269, type: !31)
!4294 = !DILocation(line: 1269, column: 52, scope: !4292)
!4295 = !DILocation(line: 1271, column: 2, scope: !4292)
!4296 = !DILocation(line: 1271, column: 9, scope: !4292)
!4297 = !DILocation(line: 1271, column: 22, scope: !4292)
!4298 = !DILocation(line: 1272, column: 45, scope: !4292)
!4299 = !DILocation(line: 1272, column: 52, scope: !4292)
!4300 = !DILocation(line: 1272, column: 44, scope: !4292)
!4301 = !DILocation(line: 1272, column: 31, scope: !4292)
!4302 = !DILocation(line: 1272, column: 20, scope: !4292)
!4303 = !DILocation(line: 1272, column: 2, scope: !4292)
!4304 = !DILocation(line: 1272, column: 9, scope: !4292)
!4305 = !DILocation(line: 1272, column: 17, scope: !4292)
!4306 = !DILocation(line: 1273, column: 1, scope: !4292)
!4307 = distinct !DISubprogram(name: "gui_entry_set_extents", scope: !93, file: !93, line: 1308, type: !4308, isLocal: false, isDefinition: true, scopeLine: 1309, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!4308 = !DISubroutineType(types: !4309)
!4309 = !{null, !31, !36, !36, !76, !76}
!4310 = !DILocalVariable(name: "entry", arg: 1, scope: !4307, file: !93, line: 1308, type: !31)
!4311 = !DILocation(line: 1308, column: 43, scope: !4307)
!4312 = !DILocalVariable(name: "pos", arg: 2, scope: !4307, file: !93, line: 1308, type: !36)
!4313 = !DILocation(line: 1308, column: 54, scope: !4307)
!4314 = !DILocalVariable(name: "len", arg: 3, scope: !4307, file: !93, line: 1308, type: !36)
!4315 = !DILocation(line: 1308, column: 63, scope: !4307)
!4316 = !DILocalVariable(name: "left", arg: 4, scope: !4307, file: !93, line: 1308, type: !76)
!4317 = !DILocation(line: 1308, column: 80, scope: !4307)
!4318 = !DILocalVariable(name: "right", arg: 5, scope: !4307, file: !93, line: 1308, type: !76)
!4319 = !DILocation(line: 1308, column: 98, scope: !4307)
!4320 = !DILocalVariable(name: "end", scope: !4307, file: !93, line: 1310, type: !36)
!4321 = !DILocation(line: 1310, column: 6, scope: !4307)
!4322 = !DILocalVariable(name: "update", scope: !4307, file: !93, line: 1310, type: !36)
!4323 = !DILocation(line: 1310, column: 11, scope: !4307)
!4324 = !DILocation(line: 1312, column: 2, scope: !4307)
!4325 = distinct !{!4325, !4324}
!4326 = !DILocation(line: 1312, column: 10, scope: !4327)
!4327 = !DILexicalBlockFile(scope: !4328, file: !93, discriminator: 1)
!4328 = distinct !DILexicalBlock(scope: !4329, file: !93, line: 1312, column: 10)
!4329 = distinct !DILexicalBlock(scope: !4307, file: !93, line: 1312, column: 4)
!4330 = !DILocation(line: 1312, column: 16, scope: !4327)
!4331 = !DILocation(line: 1312, column: 5, scope: !4332)
!4332 = !DILexicalBlockFile(scope: !4333, file: !93, discriminator: 2)
!4333 = distinct !DILexicalBlock(scope: !4328, file: !93, line: 1312, column: 3)
!4334 = !DILocation(line: 1312, column: 14, scope: !4335)
!4335 = !DILexicalBlockFile(scope: !4336, file: !93, discriminator: 3)
!4336 = distinct !DILexicalBlock(scope: !4328, file: !93, line: 1312, column: 12)
!4337 = !DILocation(line: 1312, column: 100, scope: !4335)
!4338 = !DILocation(line: 1312, column: 111, scope: !4339)
!4339 = !DILexicalBlockFile(scope: !4329, file: !93, discriminator: 4)
!4340 = !DILocation(line: 1314, column: 6, scope: !4341)
!4341 = distinct !DILexicalBlock(scope: !4307, file: !93, line: 1314, column: 6)
!4342 = !DILocation(line: 1314, column: 10, scope: !4341)
!4343 = !DILocation(line: 1314, column: 14, scope: !4341)
!4344 = !DILocation(line: 1314, column: 17, scope: !4345)
!4345 = !DILexicalBlockFile(scope: !4341, file: !93, discriminator: 1)
!4346 = !DILocation(line: 1314, column: 21, scope: !4345)
!4347 = !DILocation(line: 1314, column: 25, scope: !4345)
!4348 = !DILocation(line: 1314, column: 28, scope: !4349)
!4349 = !DILexicalBlockFile(scope: !4341, file: !93, discriminator: 2)
!4350 = !DILocation(line: 1314, column: 34, scope: !4349)
!4351 = !DILocation(line: 1314, column: 41, scope: !4349)
!4352 = !DILocation(line: 1314, column: 32, scope: !4349)
!4353 = !DILocation(line: 1314, column: 6, scope: !4349)
!4354 = !DILocation(line: 1315, column: 3, scope: !4341)
!4355 = !DILocation(line: 1317, column: 8, scope: !4307)
!4356 = !DILocation(line: 1317, column: 14, scope: !4307)
!4357 = !DILocation(line: 1317, column: 12, scope: !4307)
!4358 = !DILocation(line: 1317, column: 6, scope: !4307)
!4359 = !DILocation(line: 1319, column: 6, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4307, file: !93, line: 1319, column: 6)
!4361 = !DILocation(line: 1319, column: 12, scope: !4360)
!4362 = !DILocation(line: 1319, column: 19, scope: !4360)
!4363 = !DILocation(line: 1319, column: 10, scope: !4360)
!4364 = !DILocation(line: 1319, column: 6, scope: !4307)
!4365 = !DILocation(line: 1320, column: 9, scope: !4360)
!4366 = !DILocation(line: 1320, column: 16, scope: !4360)
!4367 = !DILocation(line: 1320, column: 7, scope: !4360)
!4368 = !DILocation(line: 1320, column: 3, scope: !4360)
!4369 = !DILocation(line: 1322, column: 7, scope: !4370)
!4370 = distinct !DILexicalBlock(scope: !4307, file: !93, line: 1322, column: 6)
!4371 = !DILocation(line: 1322, column: 14, scope: !4370)
!4372 = !DILocation(line: 1322, column: 6, scope: !4307)
!4373 = !DILocation(line: 1323, column: 27, scope: !4374)
!4374 = distinct !DILexicalBlock(scope: !4370, file: !93, line: 1322, column: 28)
!4375 = !DILocation(line: 1323, column: 3, scope: !4374)
!4376 = !DILocation(line: 1324, column: 2, scope: !4374)
!4377 = !DILocation(line: 1326, column: 31, scope: !4378)
!4378 = distinct !DILexicalBlock(scope: !4307, file: !93, line: 1326, column: 6)
!4379 = !DILocation(line: 1326, column: 16, scope: !4378)
!4380 = !DILocation(line: 1326, column: 23, scope: !4378)
!4381 = !DILocation(line: 1326, column: 37, scope: !4378)
!4382 = !DILocation(line: 1326, column: 6, scope: !4378)
!4383 = !DILocation(line: 1326, column: 43, scope: !4378)
!4384 = !DILocation(line: 1326, column: 6, scope: !4307)
!4385 = !DILocation(line: 1327, column: 25, scope: !4386)
!4386 = distinct !DILexicalBlock(scope: !4378, file: !93, line: 1326, column: 49)
!4387 = !DILocation(line: 1327, column: 10, scope: !4386)
!4388 = !DILocation(line: 1327, column: 17, scope: !4386)
!4389 = !DILocation(line: 1327, column: 3, scope: !4386)
!4390 = !DILocation(line: 1328, column: 8, scope: !4391)
!4391 = distinct !DILexicalBlock(scope: !4386, file: !93, line: 1328, column: 7)
!4392 = !DILocation(line: 1328, column: 7, scope: !4391)
!4393 = !DILocation(line: 1328, column: 13, scope: !4391)
!4394 = !DILocation(line: 1328, column: 7, scope: !4386)
!4395 = !DILocation(line: 1329, column: 19, scope: !4396)
!4396 = distinct !DILexicalBlock(scope: !4391, file: !93, line: 1328, column: 22)
!4397 = !DILocation(line: 1329, column: 4, scope: !4396)
!4398 = !DILocation(line: 1329, column: 11, scope: !4396)
!4399 = !DILocation(line: 1329, column: 24, scope: !4396)
!4400 = !DILocation(line: 1330, column: 3, scope: !4396)
!4401 = !DILocation(line: 1331, column: 35, scope: !4402)
!4402 = distinct !DILexicalBlock(scope: !4391, file: !93, line: 1330, column: 10)
!4403 = !DILocation(line: 1331, column: 26, scope: !4402)
!4404 = !DILocation(line: 1331, column: 19, scope: !4402)
!4405 = !DILocation(line: 1331, column: 4, scope: !4402)
!4406 = !DILocation(line: 1331, column: 11, scope: !4402)
!4407 = !DILocation(line: 1331, column: 24, scope: !4402)
!4408 = !DILocation(line: 1333, column: 10, scope: !4386)
!4409 = !DILocation(line: 1334, column: 2, scope: !4386)
!4410 = !DILocation(line: 1336, column: 6, scope: !4411)
!4411 = distinct !DILexicalBlock(scope: !4307, file: !93, line: 1336, column: 6)
!4412 = !DILocation(line: 1336, column: 13, scope: !4411)
!4413 = !DILocation(line: 1336, column: 10, scope: !4411)
!4414 = !DILocation(line: 1336, column: 17, scope: !4411)
!4415 = !DILocation(line: 1336, column: 45, scope: !4416)
!4416 = !DILexicalBlockFile(scope: !4411, file: !93, discriminator: 1)
!4417 = !DILocation(line: 1336, column: 30, scope: !4416)
!4418 = !DILocation(line: 1336, column: 37, scope: !4416)
!4419 = !DILocation(line: 1336, column: 51, scope: !4416)
!4420 = !DILocation(line: 1336, column: 20, scope: !4416)
!4421 = !DILocation(line: 1336, column: 58, scope: !4416)
!4422 = !DILocation(line: 1336, column: 6, scope: !4416)
!4423 = !DILocation(line: 1337, column: 25, scope: !4424)
!4424 = distinct !DILexicalBlock(scope: !4411, file: !93, line: 1336, column: 64)
!4425 = !DILocation(line: 1337, column: 10, scope: !4424)
!4426 = !DILocation(line: 1337, column: 17, scope: !4424)
!4427 = !DILocation(line: 1337, column: 3, scope: !4424)
!4428 = !DILocation(line: 1338, column: 8, scope: !4429)
!4429 = distinct !DILexicalBlock(scope: !4424, file: !93, line: 1338, column: 7)
!4430 = !DILocation(line: 1338, column: 7, scope: !4429)
!4431 = !DILocation(line: 1338, column: 14, scope: !4429)
!4432 = !DILocation(line: 1338, column: 7, scope: !4424)
!4433 = !DILocation(line: 1339, column: 19, scope: !4434)
!4434 = distinct !DILexicalBlock(scope: !4429, file: !93, line: 1338, column: 23)
!4435 = !DILocation(line: 1339, column: 4, scope: !4434)
!4436 = !DILocation(line: 1339, column: 11, scope: !4434)
!4437 = !DILocation(line: 1339, column: 24, scope: !4434)
!4438 = !DILocation(line: 1340, column: 3, scope: !4434)
!4439 = !DILocation(line: 1341, column: 35, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4429, file: !93, line: 1340, column: 10)
!4441 = !DILocation(line: 1341, column: 26, scope: !4440)
!4442 = !DILocation(line: 1341, column: 19, scope: !4440)
!4443 = !DILocation(line: 1341, column: 4, scope: !4440)
!4444 = !DILocation(line: 1341, column: 11, scope: !4440)
!4445 = !DILocation(line: 1341, column: 24, scope: !4440)
!4446 = !DILocation(line: 1343, column: 10, scope: !4424)
!4447 = !DILocation(line: 1344, column: 2, scope: !4424)
!4448 = !DILocation(line: 1346, column: 6, scope: !4449)
!4449 = distinct !DILexicalBlock(scope: !4307, file: !93, line: 1346, column: 6)
!4450 = !DILocation(line: 1346, column: 6, scope: !4307)
!4451 = !DILocation(line: 1347, column: 25, scope: !4452)
!4452 = distinct !DILexicalBlock(scope: !4449, file: !93, line: 1346, column: 14)
!4453 = !DILocation(line: 1347, column: 32, scope: !4452)
!4454 = !DILocation(line: 1347, column: 36, scope: !4452)
!4455 = !DILocation(line: 1347, column: 3, scope: !4452)
!4456 = !DILocation(line: 1348, column: 24, scope: !4452)
!4457 = !DILocation(line: 1348, column: 3, scope: !4452)
!4458 = !DILocation(line: 1349, column: 18, scope: !4452)
!4459 = !DILocation(line: 1349, column: 3, scope: !4452)
!4460 = !DILocation(line: 1350, column: 2, scope: !4452)
!4461 = !DILocation(line: 1351, column: 1, scope: !4307)
!4462 = distinct !DISubprogram(name: "gui_entry_clear_extents", scope: !93, file: !93, line: 1353, type: !3940, isLocal: false, isDefinition: true, scopeLine: 1354, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!4463 = !DILocalVariable(name: "entry", arg: 1, scope: !4462, file: !93, line: 1353, type: !31)
!4464 = !DILocation(line: 1353, column: 45, scope: !4462)
!4465 = !DILocalVariable(name: "pos", arg: 2, scope: !4462, file: !93, line: 1353, type: !36)
!4466 = !DILocation(line: 1353, column: 56, scope: !4462)
!4467 = !DILocalVariable(name: "len", arg: 3, scope: !4462, file: !93, line: 1353, type: !36)
!4468 = !DILocation(line: 1353, column: 65, scope: !4462)
!4469 = !DILocalVariable(name: "i", scope: !4462, file: !93, line: 1355, type: !36)
!4470 = !DILocation(line: 1355, column: 6, scope: !4462)
!4471 = !DILocalVariable(name: "end", scope: !4462, file: !93, line: 1355, type: !36)
!4472 = !DILocation(line: 1355, column: 9, scope: !4462)
!4473 = !DILocalVariable(name: "update", scope: !4462, file: !93, line: 1355, type: !36)
!4474 = !DILocation(line: 1355, column: 14, scope: !4462)
!4475 = !DILocation(line: 1357, column: 2, scope: !4462)
!4476 = distinct !{!4476, !4475}
!4477 = !DILocation(line: 1357, column: 10, scope: !4478)
!4478 = !DILexicalBlockFile(scope: !4479, file: !93, discriminator: 1)
!4479 = distinct !DILexicalBlock(scope: !4480, file: !93, line: 1357, column: 10)
!4480 = distinct !DILexicalBlock(scope: !4462, file: !93, line: 1357, column: 4)
!4481 = !DILocation(line: 1357, column: 16, scope: !4478)
!4482 = !DILocation(line: 1357, column: 5, scope: !4483)
!4483 = !DILexicalBlockFile(scope: !4484, file: !93, discriminator: 2)
!4484 = distinct !DILexicalBlock(scope: !4479, file: !93, line: 1357, column: 3)
!4485 = !DILocation(line: 1357, column: 14, scope: !4486)
!4486 = !DILexicalBlockFile(scope: !4487, file: !93, discriminator: 3)
!4487 = distinct !DILexicalBlock(scope: !4479, file: !93, line: 1357, column: 12)
!4488 = !DILocation(line: 1357, column: 100, scope: !4486)
!4489 = !DILocation(line: 1357, column: 111, scope: !4490)
!4490 = !DILexicalBlockFile(scope: !4480, file: !93, discriminator: 4)
!4491 = !DILocation(line: 1359, column: 6, scope: !4492)
!4492 = distinct !DILexicalBlock(scope: !4462, file: !93, line: 1359, column: 6)
!4493 = !DILocation(line: 1359, column: 10, scope: !4492)
!4494 = !DILocation(line: 1359, column: 14, scope: !4492)
!4495 = !DILocation(line: 1359, column: 17, scope: !4496)
!4496 = !DILexicalBlockFile(scope: !4492, file: !93, discriminator: 1)
!4497 = !DILocation(line: 1359, column: 21, scope: !4496)
!4498 = !DILocation(line: 1359, column: 25, scope: !4496)
!4499 = !DILocation(line: 1359, column: 28, scope: !4500)
!4500 = !DILexicalBlockFile(scope: !4492, file: !93, discriminator: 2)
!4501 = !DILocation(line: 1359, column: 34, scope: !4500)
!4502 = !DILocation(line: 1359, column: 41, scope: !4500)
!4503 = !DILocation(line: 1359, column: 32, scope: !4500)
!4504 = !DILocation(line: 1359, column: 6, scope: !4500)
!4505 = !DILocation(line: 1360, column: 3, scope: !4492)
!4506 = !DILocation(line: 1362, column: 8, scope: !4462)
!4507 = !DILocation(line: 1362, column: 14, scope: !4462)
!4508 = !DILocation(line: 1362, column: 12, scope: !4462)
!4509 = !DILocation(line: 1362, column: 6, scope: !4462)
!4510 = !DILocation(line: 1364, column: 6, scope: !4511)
!4511 = distinct !DILexicalBlock(scope: !4462, file: !93, line: 1364, column: 6)
!4512 = !DILocation(line: 1364, column: 12, scope: !4511)
!4513 = !DILocation(line: 1364, column: 19, scope: !4511)
!4514 = !DILocation(line: 1364, column: 10, scope: !4511)
!4515 = !DILocation(line: 1364, column: 6, scope: !4462)
!4516 = !DILocation(line: 1365, column: 9, scope: !4511)
!4517 = !DILocation(line: 1365, column: 16, scope: !4511)
!4518 = !DILocation(line: 1365, column: 7, scope: !4511)
!4519 = !DILocation(line: 1365, column: 3, scope: !4511)
!4520 = !DILocation(line: 1367, column: 7, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !4462, file: !93, line: 1367, column: 6)
!4522 = !DILocation(line: 1367, column: 14, scope: !4521)
!4523 = !DILocation(line: 1367, column: 6, scope: !4462)
!4524 = !DILocation(line: 1368, column: 3, scope: !4525)
!4525 = distinct !DILexicalBlock(scope: !4521, file: !93, line: 1367, column: 28)
!4526 = !DILocation(line: 1371, column: 11, scope: !4527)
!4527 = distinct !DILexicalBlock(scope: !4462, file: !93, line: 1371, column: 2)
!4528 = !DILocation(line: 1371, column: 9, scope: !4527)
!4529 = !DILocation(line: 1371, column: 7, scope: !4527)
!4530 = !DILocation(line: 1371, column: 16, scope: !4531)
!4531 = !DILexicalBlockFile(scope: !4532, file: !93, discriminator: 1)
!4532 = distinct !DILexicalBlock(scope: !4527, file: !93, line: 1371, column: 2)
!4533 = !DILocation(line: 1371, column: 21, scope: !4531)
!4534 = !DILocation(line: 1371, column: 18, scope: !4531)
!4535 = !DILocation(line: 1371, column: 2, scope: !4531)
!4536 = !DILocation(line: 1372, column: 22, scope: !4537)
!4537 = distinct !DILexicalBlock(scope: !4538, file: !93, line: 1372, column: 7)
!4538 = distinct !DILexicalBlock(scope: !4532, file: !93, line: 1371, column: 31)
!4539 = !DILocation(line: 1372, column: 7, scope: !4537)
!4540 = !DILocation(line: 1372, column: 14, scope: !4537)
!4541 = !DILocation(line: 1372, column: 25, scope: !4537)
!4542 = !DILocation(line: 1372, column: 7, scope: !4538)
!4543 = !DILocation(line: 1373, column: 26, scope: !4544)
!4544 = distinct !DILexicalBlock(scope: !4537, file: !93, line: 1372, column: 33)
!4545 = !DILocation(line: 1373, column: 11, scope: !4544)
!4546 = !DILocation(line: 1373, column: 18, scope: !4544)
!4547 = !DILocation(line: 1373, column: 4, scope: !4544)
!4548 = !DILocation(line: 1374, column: 19, scope: !4544)
!4549 = !DILocation(line: 1374, column: 4, scope: !4544)
!4550 = !DILocation(line: 1374, column: 11, scope: !4544)
!4551 = !DILocation(line: 1374, column: 22, scope: !4544)
!4552 = !DILocation(line: 1375, column: 11, scope: !4544)
!4553 = !DILocation(line: 1376, column: 3, scope: !4544)
!4554 = !DILocation(line: 1377, column: 2, scope: !4538)
!4555 = !DILocation(line: 1371, column: 27, scope: !4556)
!4556 = !DILexicalBlockFile(scope: !4532, file: !93, discriminator: 2)
!4557 = !DILocation(line: 1371, column: 2, scope: !4556)
!4558 = distinct !{!4558, !4559}
!4559 = !DILocation(line: 1371, column: 2, scope: !4462)
!4560 = !DILocation(line: 1379, column: 6, scope: !4561)
!4561 = distinct !DILexicalBlock(scope: !4462, file: !93, line: 1379, column: 6)
!4562 = !DILocation(line: 1379, column: 6, scope: !4462)
!4563 = !DILocation(line: 1380, column: 25, scope: !4564)
!4564 = distinct !DILexicalBlock(scope: !4561, file: !93, line: 1379, column: 14)
!4565 = !DILocation(line: 1380, column: 32, scope: !4564)
!4566 = !DILocation(line: 1380, column: 3, scope: !4564)
!4567 = !DILocation(line: 1381, column: 24, scope: !4564)
!4568 = !DILocation(line: 1381, column: 3, scope: !4564)
!4569 = !DILocation(line: 1382, column: 18, scope: !4564)
!4570 = !DILocation(line: 1382, column: 3, scope: !4564)
!4571 = !DILocation(line: 1383, column: 2, scope: !4564)
!4572 = !DILocation(line: 1384, column: 1, scope: !4462)
!4573 = distinct !DISubprogram(name: "gui_entry_get_extent", scope: !93, file: !93, line: 1386, type: !4574, isLocal: false, isDefinition: true, scopeLine: 1387, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!4574 = !DISubroutineType(types: !4575)
!4575 = !{!46, !31, !36}
!4576 = !DILocalVariable(name: "entry", arg: 1, scope: !4573, file: !93, line: 1386, type: !31)
!4577 = !DILocation(line: 1386, column: 43, scope: !4573)
!4578 = !DILocalVariable(name: "pos", arg: 2, scope: !4573, file: !93, line: 1386, type: !36)
!4579 = !DILocation(line: 1386, column: 54, scope: !4573)
!4580 = !DILocation(line: 1388, column: 2, scope: !4573)
!4581 = distinct !{!4581, !4580}
!4582 = !DILocation(line: 1388, column: 10, scope: !4583)
!4583 = !DILexicalBlockFile(scope: !4584, file: !93, discriminator: 1)
!4584 = distinct !DILexicalBlock(scope: !4585, file: !93, line: 1388, column: 10)
!4585 = distinct !DILexicalBlock(scope: !4573, file: !93, line: 1388, column: 4)
!4586 = !DILocation(line: 1388, column: 16, scope: !4583)
!4587 = !DILocation(line: 1388, column: 5, scope: !4588)
!4588 = !DILexicalBlockFile(scope: !4589, file: !93, discriminator: 2)
!4589 = distinct !DILexicalBlock(scope: !4584, file: !93, line: 1388, column: 3)
!4590 = !DILocation(line: 1388, column: 14, scope: !4591)
!4591 = !DILexicalBlockFile(scope: !4592, file: !93, discriminator: 3)
!4592 = distinct !DILexicalBlock(scope: !4584, file: !93, line: 1388, column: 12)
!4593 = !DILocation(line: 1388, column: 100, scope: !4591)
!4594 = !DILocation(line: 1388, column: 7, scope: !4595)
!4595 = !DILexicalBlockFile(scope: !4585, file: !93, discriminator: 4)
!4596 = !DILocation(line: 1390, column: 7, scope: !4597)
!4597 = distinct !DILexicalBlock(scope: !4573, file: !93, line: 1390, column: 6)
!4598 = !DILocation(line: 1390, column: 14, scope: !4597)
!4599 = !DILocation(line: 1390, column: 6, scope: !4573)
!4600 = !DILocation(line: 1391, column: 3, scope: !4597)
!4601 = !DILocation(line: 1393, column: 6, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4573, file: !93, line: 1393, column: 6)
!4603 = !DILocation(line: 1393, column: 10, scope: !4602)
!4604 = !DILocation(line: 1393, column: 14, scope: !4602)
!4605 = !DILocation(line: 1393, column: 17, scope: !4606)
!4606 = !DILexicalBlockFile(scope: !4602, file: !93, discriminator: 1)
!4607 = !DILocation(line: 1393, column: 24, scope: !4606)
!4608 = !DILocation(line: 1393, column: 31, scope: !4606)
!4609 = !DILocation(line: 1393, column: 21, scope: !4606)
!4610 = !DILocation(line: 1393, column: 6, scope: !4606)
!4611 = !DILocation(line: 1394, column: 3, scope: !4602)
!4612 = !DILocation(line: 1396, column: 24, scope: !4573)
!4613 = !DILocation(line: 1396, column: 9, scope: !4573)
!4614 = !DILocation(line: 1396, column: 16, scope: !4573)
!4615 = !DILocation(line: 1396, column: 2, scope: !4573)
!4616 = !DILocation(line: 1397, column: 1, scope: !4573)
!4617 = distinct !DISubprogram(name: "gui_entry_get_text_and_extents", scope: !93, file: !93, line: 1400, type: !4618, isLocal: false, isDefinition: true, scopeLine: 1401, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!4618 = !DISubroutineType(types: !4619)
!4619 = !{!49, !31}
!4620 = !DILocalVariable(name: "entry", arg: 1, scope: !4617, file: !93, line: 1400, type: !31)
!4621 = !DILocation(line: 1400, column: 55, scope: !4617)
!4622 = !DILocalVariable(name: "list", scope: !4617, file: !93, line: 1402, type: !49)
!4623 = !DILocation(line: 1402, column: 10, scope: !4617)
!4624 = !DILocalVariable(name: "str", scope: !4617, file: !93, line: 1403, type: !4625)
!4625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4626, size: 64, align: 64)
!4626 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !4627, line: 39, baseType: !4628)
!4627 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!4628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !4627, line: 41, size: 192, align: 64, elements: !4629)
!4629 = !{!4630, !4631, !4633}
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4628, file: !4627, line: 43, baseType: !74, size: 64, align: 64)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4628, file: !4627, line: 44, baseType: !4632, size: 64, align: 64, offset: 64)
!4632 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !42, line: 66, baseType: !1909)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !4628, file: !4627, line: 45, baseType: !4632, size: 64, align: 64, offset: 128)
!4634 = !DILocation(line: 1403, column: 11, scope: !4617)
!4635 = !DILocalVariable(name: "i", scope: !4617, file: !93, line: 1404, type: !36)
!4636 = !DILocation(line: 1404, column: 6, scope: !4617)
!4637 = !DILocation(line: 1406, column: 2, scope: !4617)
!4638 = distinct !{!4638, !4637}
!4639 = !DILocation(line: 1406, column: 10, scope: !4640)
!4640 = !DILexicalBlockFile(scope: !4641, file: !93, discriminator: 1)
!4641 = distinct !DILexicalBlock(scope: !4642, file: !93, line: 1406, column: 10)
!4642 = distinct !DILexicalBlock(scope: !4617, file: !93, line: 1406, column: 4)
!4643 = !DILocation(line: 1406, column: 16, scope: !4640)
!4644 = !DILocation(line: 1406, column: 5, scope: !4645)
!4645 = !DILexicalBlockFile(scope: !4646, file: !93, discriminator: 2)
!4646 = distinct !DILexicalBlock(scope: !4641, file: !93, line: 1406, column: 3)
!4647 = !DILocation(line: 1406, column: 14, scope: !4648)
!4648 = !DILexicalBlockFile(scope: !4649, file: !93, discriminator: 3)
!4649 = distinct !DILexicalBlock(scope: !4641, file: !93, line: 1406, column: 12)
!4650 = !DILocation(line: 1406, column: 100, scope: !4648)
!4651 = !DILocation(line: 1406, column: 7, scope: !4652)
!4652 = !DILexicalBlockFile(scope: !4642, file: !93, discriminator: 4)
!4653 = !DILocation(line: 1408, column: 6, scope: !4654)
!4654 = distinct !DILexicalBlock(scope: !4617, file: !93, line: 1408, column: 6)
!4655 = !DILocation(line: 1408, column: 13, scope: !4654)
!4656 = !DILocation(line: 1408, column: 26, scope: !4654)
!4657 = !DILocation(line: 1408, column: 29, scope: !4658)
!4658 = !DILexicalBlockFile(scope: !4654, file: !93, discriminator: 1)
!4659 = !DILocation(line: 1408, column: 36, scope: !4658)
!4660 = !DILocation(line: 1408, column: 47, scope: !4658)
!4661 = !DILocation(line: 1408, column: 6, scope: !4658)
!4662 = !DILocation(line: 1409, column: 7, scope: !4663)
!4663 = distinct !DILexicalBlock(scope: !4664, file: !93, line: 1409, column: 7)
!4664 = distinct !DILexicalBlock(scope: !4654, file: !93, line: 1408, column: 55)
!4665 = !DILocation(line: 1409, column: 14, scope: !4663)
!4666 = !DILocation(line: 1409, column: 18, scope: !4663)
!4667 = !DILocation(line: 1409, column: 7, scope: !4664)
!4668 = !DILocation(line: 1410, column: 27, scope: !4669)
!4669 = distinct !DILexicalBlock(scope: !4663, file: !93, line: 1409, column: 24)
!4670 = !DILocation(line: 1410, column: 45, scope: !4669)
!4671 = !DILocation(line: 1410, column: 52, scope: !4669)
!4672 = !DILocation(line: 1410, column: 33, scope: !4669)
!4673 = !DILocation(line: 1410, column: 11, scope: !4674)
!4674 = !DILexicalBlockFile(scope: !4669, file: !93, discriminator: 1)
!4675 = !DILocation(line: 1410, column: 9, scope: !4669)
!4676 = !DILocation(line: 1411, column: 3, scope: !4669)
!4677 = !DILocation(line: 1412, column: 27, scope: !4678)
!4678 = distinct !DILexicalBlock(scope: !4663, file: !93, line: 1411, column: 10)
!4679 = !DILocation(line: 1412, column: 42, scope: !4678)
!4680 = !DILocation(line: 1412, column: 49, scope: !4678)
!4681 = !DILocation(line: 1412, column: 33, scope: !4678)
!4682 = !DILocation(line: 1412, column: 11, scope: !4683)
!4683 = !DILexicalBlockFile(scope: !4678, file: !93, discriminator: 1)
!4684 = !DILocation(line: 1412, column: 9, scope: !4678)
!4685 = !DILocation(line: 1414, column: 2, scope: !4664)
!4686 = !DILocation(line: 1415, column: 7, scope: !4687)
!4687 = distinct !DILexicalBlock(scope: !4688, file: !93, line: 1415, column: 7)
!4688 = distinct !DILexicalBlock(scope: !4654, file: !93, line: 1414, column: 9)
!4689 = !DILocation(line: 1415, column: 14, scope: !4687)
!4690 = !DILocation(line: 1415, column: 18, scope: !4687)
!4691 = !DILocation(line: 1415, column: 7, scope: !4688)
!4692 = !DILocation(line: 1416, column: 27, scope: !4693)
!4693 = distinct !DILexicalBlock(scope: !4687, file: !93, line: 1415, column: 24)
!4694 = !DILocation(line: 1416, column: 33, scope: !4693)
!4695 = !DILocation(line: 1416, column: 11, scope: !4696)
!4696 = !DILexicalBlockFile(scope: !4693, file: !93, discriminator: 1)
!4697 = !DILocation(line: 1416, column: 9, scope: !4693)
!4698 = !DILocation(line: 1417, column: 3, scope: !4693)
!4699 = !DILocation(line: 1418, column: 27, scope: !4700)
!4700 = distinct !DILexicalBlock(scope: !4687, file: !93, line: 1417, column: 10)
!4701 = !DILocation(line: 1418, column: 11, scope: !4700)
!4702 = !DILocation(line: 1418, column: 9, scope: !4700)
!4703 = !DILocation(line: 1422, column: 27, scope: !4617)
!4704 = !DILocation(line: 1422, column: 34, scope: !4617)
!4705 = !DILocation(line: 1422, column: 8, scope: !4617)
!4706 = !DILocation(line: 1422, column: 6, scope: !4617)
!4707 = !DILocation(line: 1423, column: 9, scope: !4708)
!4708 = distinct !DILexicalBlock(scope: !4617, file: !93, line: 1423, column: 2)
!4709 = !DILocation(line: 1423, column: 7, scope: !4708)
!4710 = !DILocation(line: 1423, column: 14, scope: !4711)
!4711 = !DILexicalBlockFile(scope: !4712, file: !93, discriminator: 1)
!4712 = distinct !DILexicalBlock(scope: !4708, file: !93, line: 1423, column: 2)
!4713 = !DILocation(line: 1423, column: 18, scope: !4711)
!4714 = !DILocation(line: 1423, column: 25, scope: !4711)
!4715 = !DILocation(line: 1423, column: 16, scope: !4711)
!4716 = !DILocation(line: 1423, column: 2, scope: !4711)
!4717 = !DILocation(line: 1424, column: 7, scope: !4718)
!4718 = distinct !DILexicalBlock(scope: !4719, file: !93, line: 1424, column: 7)
!4719 = distinct !DILexicalBlock(scope: !4712, file: !93, line: 1423, column: 40)
!4720 = !DILocation(line: 1424, column: 14, scope: !4718)
!4721 = !DILocation(line: 1424, column: 7, scope: !4719)
!4722 = !DILocation(line: 1425, column: 28, scope: !4723)
!4723 = distinct !DILexicalBlock(scope: !4718, file: !93, line: 1424, column: 20)
!4724 = !DILocation(line: 1425, column: 45, scope: !4723)
!4725 = !DILocation(line: 1425, column: 33, scope: !4723)
!4726 = !DILocation(line: 1425, column: 40, scope: !4723)
!4727 = !DILocation(line: 1425, column: 4, scope: !4723)
!4728 = !DILocation(line: 1426, column: 3, scope: !4723)
!4729 = !DILocation(line: 1426, column: 14, scope: !4730)
!4730 = !DILexicalBlockFile(scope: !4731, file: !93, discriminator: 1)
!4731 = distinct !DILexicalBlock(scope: !4718, file: !93, line: 1426, column: 14)
!4732 = !DILocation(line: 1426, column: 24, scope: !4730)
!4733 = !DILocation(line: 1427, column: 19, scope: !4734)
!4734 = distinct !DILexicalBlock(scope: !4735, file: !93, line: 1427, column: 7)
!4735 = distinct !DILexicalBlock(scope: !4731, file: !93, line: 1426, column: 30)
!4736 = !DILocation(line: 1427, column: 7, scope: !4734)
!4737 = !DILocation(line: 1427, column: 14, scope: !4734)
!4738 = !DILocation(line: 1427, column: 22, scope: !4734)
!4739 = !DILocation(line: 1427, column: 7, scope: !4735)
!4740 = !DILocation(line: 1428, column: 31, scope: !4734)
!4741 = !DILocation(line: 1428, column: 49, scope: !4734)
!4742 = !DILocation(line: 1428, column: 37, scope: !4734)
!4743 = !DILocation(line: 1428, column: 44, scope: !4734)
!4744 = !DILocation(line: 1428, column: 52, scope: !4734)
!4745 = !DILocation(line: 1428, column: 58, scope: !4734)
!4746 = !DILocation(line: 1428, column: 36, scope: !4734)
!4747 = !DILocation(line: 1428, column: 5, scope: !4734)
!4748 = !DILocation(line: 1429, column: 30, scope: !4735)
!4749 = !DILocation(line: 1429, column: 47, scope: !4735)
!4750 = !DILocation(line: 1429, column: 35, scope: !4735)
!4751 = !DILocation(line: 1429, column: 42, scope: !4735)
!4752 = !DILocation(line: 1429, column: 50, scope: !4735)
!4753 = !DILocation(line: 1429, column: 4, scope: !4735)
!4754 = !DILocation(line: 1430, column: 3, scope: !4735)
!4755 = !DILocation(line: 1431, column: 30, scope: !4756)
!4756 = distinct !DILexicalBlock(scope: !4731, file: !93, line: 1430, column: 10)
!4757 = !DILocation(line: 1431, column: 47, scope: !4756)
!4758 = !DILocation(line: 1431, column: 35, scope: !4756)
!4759 = !DILocation(line: 1431, column: 42, scope: !4756)
!4760 = !DILocation(line: 1431, column: 4, scope: !4756)
!4761 = !DILocation(line: 1433, column: 7, scope: !4762)
!4762 = distinct !DILexicalBlock(scope: !4719, file: !93, line: 1433, column: 7)
!4763 = !DILocation(line: 1433, column: 14, scope: !4762)
!4764 = !DILocation(line: 1433, column: 21, scope: !4762)
!4765 = !DILocation(line: 1433, column: 22, scope: !4762)
!4766 = !DILocation(line: 1433, column: 18, scope: !4762)
!4767 = !DILocation(line: 1433, column: 25, scope: !4762)
!4768 = !DILocation(line: 1433, column: 29, scope: !4769)
!4769 = !DILexicalBlockFile(scope: !4762, file: !93, discriminator: 1)
!4770 = !DILocation(line: 1433, column: 36, scope: !4769)
!4771 = !DILocation(line: 1433, column: 49, scope: !4769)
!4772 = !DILocation(line: 1433, column: 67, scope: !4773)
!4773 = !DILexicalBlockFile(scope: !4762, file: !93, discriminator: 2)
!4774 = !DILocation(line: 1433, column: 68, scope: !4773)
!4775 = !DILocation(line: 1433, column: 52, scope: !4773)
!4776 = !DILocation(line: 1433, column: 59, scope: !4773)
!4777 = !DILocation(line: 1433, column: 72, scope: !4773)
!4778 = !DILocation(line: 1433, column: 7, scope: !4773)
!4779 = !DILocation(line: 1434, column: 27, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !4762, file: !93, line: 1433, column: 81)
!4781 = !DILocation(line: 1434, column: 42, scope: !4780)
!4782 = !DILocation(line: 1434, column: 47, scope: !4780)
!4783 = !DILocation(line: 1434, column: 33, scope: !4780)
!4784 = !DILocation(line: 1434, column: 11, scope: !4785)
!4785 = !DILexicalBlockFile(scope: !4780, file: !93, discriminator: 1)
!4786 = !DILocation(line: 1434, column: 9, scope: !4780)
!4787 = !DILocation(line: 1435, column: 22, scope: !4780)
!4788 = !DILocation(line: 1435, column: 4, scope: !4780)
!4789 = !DILocation(line: 1436, column: 8, scope: !4790)
!4790 = distinct !DILexicalBlock(scope: !4780, file: !93, line: 1436, column: 8)
!4791 = !DILocation(line: 1436, column: 15, scope: !4790)
!4792 = !DILocation(line: 1436, column: 28, scope: !4790)
!4793 = !DILocation(line: 1436, column: 46, scope: !4794)
!4794 = !DILexicalBlockFile(scope: !4790, file: !93, discriminator: 1)
!4795 = !DILocation(line: 1436, column: 47, scope: !4794)
!4796 = !DILocation(line: 1436, column: 31, scope: !4794)
!4797 = !DILocation(line: 1436, column: 38, scope: !4794)
!4798 = !DILocation(line: 1436, column: 51, scope: !4794)
!4799 = !DILocation(line: 1436, column: 8, scope: !4794)
!4800 = !DILocation(line: 1437, column: 9, scope: !4801)
!4801 = distinct !DILexicalBlock(scope: !4802, file: !93, line: 1437, column: 9)
!4802 = distinct !DILexicalBlock(scope: !4790, file: !93, line: 1436, column: 59)
!4803 = !DILocation(line: 1437, column: 16, scope: !4801)
!4804 = !DILocation(line: 1437, column: 23, scope: !4801)
!4805 = !DILocation(line: 1437, column: 24, scope: !4801)
!4806 = !DILocation(line: 1437, column: 20, scope: !4801)
!4807 = !DILocation(line: 1437, column: 9, scope: !4802)
!4808 = !DILocation(line: 1438, column: 29, scope: !4809)
!4809 = distinct !DILexicalBlock(scope: !4801, file: !93, line: 1437, column: 28)
!4810 = !DILocation(line: 1438, column: 62, scope: !4809)
!4811 = !DILocation(line: 1438, column: 63, scope: !4809)
!4812 = !DILocation(line: 1438, column: 47, scope: !4809)
!4813 = !DILocation(line: 1438, column: 54, scope: !4809)
!4814 = !DILocation(line: 1438, column: 35, scope: !4809)
!4815 = !DILocation(line: 1438, column: 13, scope: !4816)
!4816 = !DILexicalBlockFile(scope: !4809, file: !93, discriminator: 1)
!4817 = !DILocation(line: 1438, column: 11, scope: !4809)
!4818 = !DILocation(line: 1439, column: 5, scope: !4809)
!4819 = !DILocation(line: 1440, column: 29, scope: !4820)
!4820 = distinct !DILexicalBlock(scope: !4801, file: !93, line: 1439, column: 12)
!4821 = !DILocation(line: 1440, column: 59, scope: !4820)
!4822 = !DILocation(line: 1440, column: 60, scope: !4820)
!4823 = !DILocation(line: 1440, column: 44, scope: !4820)
!4824 = !DILocation(line: 1440, column: 51, scope: !4820)
!4825 = !DILocation(line: 1440, column: 35, scope: !4820)
!4826 = !DILocation(line: 1440, column: 13, scope: !4827)
!4827 = !DILexicalBlockFile(scope: !4820, file: !93, discriminator: 1)
!4828 = !DILocation(line: 1440, column: 11, scope: !4820)
!4829 = !DILocation(line: 1442, column: 4, scope: !4802)
!4830 = !DILocation(line: 1442, column: 15, scope: !4831)
!4831 = !DILexicalBlockFile(scope: !4832, file: !93, discriminator: 1)
!4832 = distinct !DILexicalBlock(scope: !4790, file: !93, line: 1442, column: 15)
!4833 = !DILocation(line: 1442, column: 22, scope: !4831)
!4834 = !DILocation(line: 1442, column: 29, scope: !4831)
!4835 = !DILocation(line: 1442, column: 30, scope: !4831)
!4836 = !DILocation(line: 1442, column: 26, scope: !4831)
!4837 = !DILocation(line: 1443, column: 28, scope: !4838)
!4838 = distinct !DILexicalBlock(scope: !4832, file: !93, line: 1442, column: 34)
!4839 = !DILocation(line: 1443, column: 34, scope: !4838)
!4840 = !DILocation(line: 1443, column: 12, scope: !4841)
!4841 = !DILexicalBlockFile(scope: !4838, file: !93, discriminator: 1)
!4842 = !DILocation(line: 1443, column: 10, scope: !4838)
!4843 = !DILocation(line: 1444, column: 4, scope: !4838)
!4844 = !DILocation(line: 1445, column: 3, scope: !4780)
!4845 = !DILocation(line: 1446, column: 2, scope: !4719)
!4846 = !DILocation(line: 1423, column: 36, scope: !4847)
!4847 = !DILexicalBlockFile(scope: !4712, file: !93, discriminator: 2)
!4848 = !DILocation(line: 1423, column: 2, scope: !4847)
!4849 = distinct !{!4849, !4850}
!4850 = !DILocation(line: 1423, column: 2, scope: !4617)
!4851 = !DILocation(line: 1447, column: 6, scope: !4852)
!4852 = distinct !DILexicalBlock(scope: !4617, file: !93, line: 1447, column: 6)
!4853 = !DILocation(line: 1447, column: 11, scope: !4852)
!4854 = !DILocation(line: 1447, column: 15, scope: !4852)
!4855 = !DILocation(line: 1447, column: 6, scope: !4617)
!4856 = !DILocation(line: 1448, column: 26, scope: !4857)
!4857 = distinct !DILexicalBlock(scope: !4852, file: !93, line: 1447, column: 20)
!4858 = !DILocation(line: 1448, column: 41, scope: !4857)
!4859 = !DILocation(line: 1448, column: 46, scope: !4857)
!4860 = !DILocation(line: 1448, column: 32, scope: !4857)
!4861 = !DILocation(line: 1448, column: 10, scope: !4862)
!4862 = !DILexicalBlockFile(scope: !4857, file: !93, discriminator: 1)
!4863 = !DILocation(line: 1448, column: 8, scope: !4857)
!4864 = !DILocation(line: 1449, column: 2, scope: !4857)
!4865 = !DILocation(line: 1450, column: 25, scope: !4617)
!4866 = !DILocation(line: 1450, column: 9, scope: !4617)
!4867 = !DILocation(line: 1450, column: 7, scope: !4617)
!4868 = !DILocation(line: 1451, column: 16, scope: !4617)
!4869 = !DILocation(line: 1451, column: 2, scope: !4617)
!4870 = !DILocation(line: 1453, column: 9, scope: !4617)
!4871 = !DILocation(line: 1453, column: 2, scope: !4617)
!4872 = !DILocation(line: 1454, column: 1, scope: !4617)
!4873 = distinct !DISubprogram(name: "g_string_append_c_inline", scope: !4627, file: !4627, line: 161, type: !4874, isLocal: true, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!4874 = !DISubroutineType(types: !4875)
!4875 = !{!4625, !4625, !75}
!4876 = !DILocalVariable(name: "gstring", arg: 1, scope: !4873, file: !4627, line: 161, type: !4625)
!4877 = !DILocation(line: 161, column: 36, scope: !4873)
!4878 = !DILocalVariable(name: "c", arg: 2, scope: !4873, file: !4627, line: 162, type: !75)
!4879 = !DILocation(line: 162, column: 33, scope: !4873)
!4880 = !DILocation(line: 164, column: 7, scope: !4881)
!4881 = distinct !DILexicalBlock(scope: !4873, file: !4627, line: 164, column: 7)
!4882 = !DILocation(line: 164, column: 16, scope: !4881)
!4883 = !DILocation(line: 164, column: 20, scope: !4881)
!4884 = !DILocation(line: 164, column: 26, scope: !4881)
!4885 = !DILocation(line: 164, column: 35, scope: !4881)
!4886 = !DILocation(line: 164, column: 24, scope: !4881)
!4887 = !DILocation(line: 164, column: 7, scope: !4873)
!4888 = !DILocation(line: 166, column: 38, scope: !4889)
!4889 = distinct !DILexicalBlock(scope: !4881, file: !4627, line: 165, column: 5)
!4890 = !DILocation(line: 166, column: 20, scope: !4889)
!4891 = !DILocation(line: 166, column: 29, scope: !4889)
!4892 = !DILocation(line: 166, column: 32, scope: !4889)
!4893 = !DILocation(line: 166, column: 7, scope: !4889)
!4894 = !DILocation(line: 166, column: 16, scope: !4889)
!4895 = !DILocation(line: 166, column: 36, scope: !4889)
!4896 = !DILocation(line: 167, column: 20, scope: !4889)
!4897 = !DILocation(line: 167, column: 29, scope: !4889)
!4898 = !DILocation(line: 167, column: 7, scope: !4889)
!4899 = !DILocation(line: 167, column: 16, scope: !4889)
!4900 = !DILocation(line: 167, column: 34, scope: !4889)
!4901 = !DILocation(line: 168, column: 5, scope: !4889)
!4902 = !DILocation(line: 170, column: 24, scope: !4881)
!4903 = !DILocation(line: 170, column: 37, scope: !4881)
!4904 = !DILocation(line: 170, column: 5, scope: !4881)
!4905 = !DILocation(line: 171, column: 10, scope: !4873)
!4906 = !DILocation(line: 171, column: 3, scope: !4873)
!4907 = distinct !DISubprogram(name: "gui_entry_set_text_and_extents", scope: !93, file: !93, line: 1456, type: !4908, isLocal: false, isDefinition: true, scopeLine: 1457, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!4908 = !DISubroutineType(types: !4909)
!4909 = !{null, !31, !49}
!4910 = !DILocalVariable(name: "entry", arg: 1, scope: !4907, file: !93, line: 1456, type: !31)
!4911 = !DILocation(line: 1456, column: 52, scope: !4907)
!4912 = !DILocalVariable(name: "list", arg: 2, scope: !4907, file: !93, line: 1456, type: !49)
!4913 = !DILocation(line: 1456, column: 67, scope: !4907)
!4914 = !DILocalVariable(name: "tmp", scope: !4907, file: !93, line: 1458, type: !49)
!4915 = !DILocation(line: 1458, column: 10, scope: !4907)
!4916 = !DILocalVariable(name: "pos", scope: !4907, file: !93, line: 1459, type: !36)
!4917 = !DILocation(line: 1459, column: 6, scope: !4907)
!4918 = !DILocalVariable(name: "is_extent", scope: !4907, file: !93, line: 1460, type: !36)
!4919 = !DILocation(line: 1460, column: 6, scope: !4907)
!4920 = !DILocation(line: 1462, column: 21, scope: !4907)
!4921 = !DILocation(line: 1462, column: 2, scope: !4907)
!4922 = !DILocation(line: 1463, column: 13, scope: !4923)
!4923 = distinct !DILexicalBlock(scope: !4907, file: !93, line: 1463, column: 2)
!4924 = !DILocation(line: 1463, column: 11, scope: !4923)
!4925 = !DILocation(line: 1463, column: 29, scope: !4923)
!4926 = !DILocation(line: 1463, column: 7, scope: !4923)
!4927 = !DILocation(line: 1463, column: 39, scope: !4928)
!4928 = !DILexicalBlockFile(scope: !4929, file: !93, discriminator: 1)
!4929 = distinct !DILexicalBlock(scope: !4923, file: !93, line: 1463, column: 2)
!4930 = !DILocation(line: 1463, column: 43, scope: !4928)
!4931 = !DILocation(line: 1463, column: 2, scope: !4928)
!4932 = !DILocation(line: 1464, column: 7, scope: !4933)
!4933 = distinct !DILexicalBlock(scope: !4934, file: !93, line: 1464, column: 7)
!4934 = distinct !DILexicalBlock(scope: !4929, file: !93, line: 1463, column: 82)
!4935 = !DILocation(line: 1464, column: 7, scope: !4934)
!4936 = !DILocalVariable(name: "extent", scope: !4937, file: !93, line: 1465, type: !46)
!4937 = distinct !DILexicalBlock(scope: !4933, file: !93, line: 1464, column: 18)
!4938 = !DILocation(line: 1465, column: 10, scope: !4937)
!4939 = !DILocalVariable(name: "len", scope: !4937, file: !93, line: 1466, type: !36)
!4940 = !DILocation(line: 1466, column: 8, scope: !4937)
!4941 = !DILocation(line: 1468, column: 8, scope: !4942)
!4942 = distinct !DILexicalBlock(scope: !4937, file: !93, line: 1468, column: 8)
!4943 = !DILocation(line: 1468, column: 13, scope: !4942)
!4944 = !DILocation(line: 1468, column: 18, scope: !4942)
!4945 = !DILocation(line: 1468, column: 8, scope: !4937)
!4946 = !DILocation(line: 1469, column: 5, scope: !4942)
!4947 = !DILocation(line: 1471, column: 22, scope: !4937)
!4948 = !DILocation(line: 1471, column: 27, scope: !4937)
!4949 = !DILocation(line: 1471, column: 13, scope: !4937)
!4950 = !DILocation(line: 1471, column: 11, scope: !4937)
!4951 = !DILocation(line: 1472, column: 17, scope: !4937)
!4952 = !DILocation(line: 1472, column: 10, scope: !4937)
!4953 = !DILocation(line: 1472, column: 8, scope: !4937)
!4954 = !DILocation(line: 1473, column: 8, scope: !4955)
!4955 = distinct !DILexicalBlock(scope: !4937, file: !93, line: 1473, column: 8)
!4956 = !DILocation(line: 1473, column: 12, scope: !4955)
!4957 = !DILocation(line: 1473, column: 28, scope: !4955)
!4958 = !DILocation(line: 1473, column: 49, scope: !4959)
!4959 = !DILexicalBlockFile(scope: !4955, file: !93, discriminator: 1)
!4960 = !DILocation(line: 1473, column: 52, scope: !4959)
!4961 = !DILocation(line: 1473, column: 42, scope: !4959)
!4962 = !DILocation(line: 1473, column: 31, scope: !4959)
!4963 = !DILocation(line: 1473, column: 74, scope: !4959)
!4964 = !DILocation(line: 1473, column: 8, scope: !4959)
!4965 = !DILocalVariable(name: "tmp", scope: !4966, file: !93, line: 1474, type: !46)
!4966 = distinct !DILexicalBlock(scope: !4955, file: !93, line: 1473, column: 80)
!4967 = !DILocation(line: 1474, column: 11, scope: !4966)
!4968 = !DILocation(line: 1475, column: 11, scope: !4966)
!4969 = !DILocation(line: 1475, column: 9, scope: !4966)
!4970 = !DILocation(line: 1476, column: 24, scope: !4966)
!4971 = !DILocation(line: 1476, column: 29, scope: !4966)
!4972 = !DILocation(line: 1476, column: 33, scope: !4966)
!4973 = !DILocation(line: 1476, column: 14, scope: !4966)
!4974 = !DILocation(line: 1476, column: 12, scope: !4966)
!4975 = !DILocation(line: 1477, column: 12, scope: !4966)
!4976 = !DILocation(line: 1477, column: 5, scope: !4966)
!4977 = !DILocation(line: 1478, column: 11, scope: !4966)
!4978 = !DILocation(line: 1478, column: 18, scope: !4966)
!4979 = !DILocation(line: 1478, column: 9, scope: !4966)
!4980 = !DILocation(line: 1479, column: 4, scope: !4966)
!4981 = !DILocation(line: 1481, column: 15, scope: !4982)
!4982 = distinct !DILexicalBlock(scope: !4937, file: !93, line: 1481, column: 8)
!4983 = !DILocation(line: 1481, column: 8, scope: !4982)
!4984 = !DILocation(line: 1481, column: 23, scope: !4982)
!4985 = !DILocation(line: 1481, column: 8, scope: !4937)
!4986 = !DILocation(line: 1482, column: 26, scope: !4987)
!4987 = distinct !DILexicalBlock(scope: !4982, file: !93, line: 1481, column: 28)
!4988 = !DILocation(line: 1482, column: 33, scope: !4987)
!4989 = !DILocation(line: 1482, column: 40, scope: !4987)
!4990 = !DILocation(line: 1482, column: 45, scope: !4987)
!4991 = !DILocation(line: 1482, column: 5, scope: !4987)
!4992 = !DILocation(line: 1483, column: 4, scope: !4987)
!4993 = !DILocation(line: 1484, column: 11, scope: !4937)
!4994 = !DILocation(line: 1484, column: 4, scope: !4937)
!4995 = !DILocation(line: 1485, column: 3, scope: !4937)
!4996 = !DILocation(line: 1486, column: 26, scope: !4997)
!4997 = distinct !DILexicalBlock(scope: !4933, file: !93, line: 1485, column: 10)
!4998 = !DILocation(line: 1486, column: 33, scope: !4997)
!4999 = !DILocation(line: 1486, column: 38, scope: !4997)
!5000 = !DILocation(line: 1486, column: 4, scope: !4997)
!5001 = !DILocation(line: 1488, column: 2, scope: !4934)
!5002 = !DILocation(line: 1463, column: 55, scope: !5003)
!5003 = !DILexicalBlockFile(scope: !4929, file: !93, discriminator: 2)
!5004 = !DILocation(line: 1463, column: 60, scope: !5003)
!5005 = !DILocation(line: 1463, column: 53, scope: !5003)
!5006 = !DILocation(line: 1463, column: 76, scope: !5003)
!5007 = !DILocation(line: 1463, column: 2, scope: !5003)
!5008 = distinct !{!5008, !5009}
!5009 = !DILocation(line: 1463, column: 2, scope: !4907)
!5010 = !DILocation(line: 1489, column: 20, scope: !4907)
!5011 = !DILocation(line: 1489, column: 27, scope: !4907)
!5012 = !DILocation(line: 1489, column: 2, scope: !4907)
!5013 = !DILocation(line: 1490, column: 1, scope: !4907)
!5014 = distinct !DISubprogram(name: "gui_entry_init", scope: !93, file: !93, line: 1492, type: !5015, isLocal: false, isDefinition: true, scopeLine: 1493, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!5015 = !DISubroutineType(types: !5016)
!5016 = !{null}
!5017 = !DILocation(line: 1494, column: 1, scope: !5014)
!5018 = distinct !DISubprogram(name: "gui_entry_deinit", scope: !93, file: !93, line: 1496, type: !5015, isLocal: false, isDefinition: true, scopeLine: 1497, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!5019 = !DILocation(line: 1498, column: 1, scope: !5018)
!5020 = distinct !DISubprogram(name: "pos2scrpos", scope: !93, file: !93, line: 203, type: !5021, isLocal: true, isDefinition: true, scopeLine: 204, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!5021 = !DISubroutineType(types: !5022)
!5022 = !{!36, !31, !36, !36}
!5023 = !DILocalVariable(name: "entry", arg: 1, scope: !5020, file: !93, line: 203, type: !31)
!5024 = !DILocation(line: 203, column: 38, scope: !5020)
!5025 = !DILocalVariable(name: "pos", arg: 2, scope: !5020, file: !93, line: 203, type: !36)
!5026 = !DILocation(line: 203, column: 49, scope: !5020)
!5027 = !DILocalVariable(name: "cursor", arg: 3, scope: !5020, file: !93, line: 203, type: !36)
!5028 = !DILocation(line: 203, column: 58, scope: !5020)
!5029 = !DILocalVariable(name: "i", scope: !5020, file: !93, line: 205, type: !36)
!5030 = !DILocation(line: 205, column: 6, scope: !5020)
!5031 = !DILocalVariable(name: "xpos", scope: !5020, file: !93, line: 206, type: !36)
!5032 = !DILocation(line: 206, column: 6, scope: !5020)
!5033 = !DILocation(line: 208, column: 7, scope: !5034)
!5034 = distinct !DILexicalBlock(scope: !5020, file: !93, line: 208, column: 6)
!5035 = !DILocation(line: 208, column: 14, scope: !5034)
!5036 = !DILocation(line: 208, column: 17, scope: !5037)
!5037 = !DILexicalBlockFile(scope: !5034, file: !93, discriminator: 1)
!5038 = !DILocation(line: 208, column: 21, scope: !5037)
!5039 = !DILocation(line: 208, column: 6, scope: !5037)
!5040 = !DILocation(line: 209, column: 3, scope: !5034)
!5041 = !DILocation(line: 211, column: 6, scope: !5042)
!5042 = distinct !DILexicalBlock(scope: !5020, file: !93, line: 211, column: 6)
!5043 = !DILocation(line: 211, column: 13, scope: !5042)
!5044 = !DILocation(line: 211, column: 26, scope: !5042)
!5045 = !DILocation(line: 211, column: 29, scope: !5046)
!5046 = !DILexicalBlockFile(scope: !5042, file: !93, discriminator: 1)
!5047 = !DILocation(line: 211, column: 36, scope: !5046)
!5048 = !DILocation(line: 211, column: 47, scope: !5046)
!5049 = !DILocation(line: 211, column: 6, scope: !5046)
!5050 = !DILocation(line: 212, column: 22, scope: !5051)
!5051 = distinct !DILexicalBlock(scope: !5042, file: !93, line: 211, column: 55)
!5052 = !DILocation(line: 212, column: 29, scope: !5051)
!5053 = !DILocation(line: 212, column: 41, scope: !5051)
!5054 = !DILocation(line: 212, column: 48, scope: !5051)
!5055 = !DILocation(line: 212, column: 11, scope: !5051)
!5056 = !DILocation(line: 212, column: 8, scope: !5051)
!5057 = !DILocation(line: 213, column: 2, scope: !5051)
!5058 = !DILocation(line: 215, column: 9, scope: !5059)
!5059 = distinct !DILexicalBlock(scope: !5020, file: !93, line: 215, column: 2)
!5060 = !DILocation(line: 215, column: 7, scope: !5059)
!5061 = !DILocation(line: 215, column: 14, scope: !5062)
!5062 = !DILexicalBlockFile(scope: !5063, file: !93, discriminator: 1)
!5063 = distinct !DILexicalBlock(scope: !5059, file: !93, line: 215, column: 2)
!5064 = !DILocation(line: 215, column: 18, scope: !5062)
!5065 = !DILocation(line: 215, column: 16, scope: !5062)
!5066 = !DILocation(line: 215, column: 2, scope: !5062)
!5067 = !DILocalVariable(name: "c", scope: !5068, file: !93, line: 216, type: !40)
!5068 = distinct !DILexicalBlock(scope: !5063, file: !93, line: 215, column: 28)
!5069 = !DILocation(line: 216, column: 11, scope: !5068)
!5070 = !DILocation(line: 216, column: 27, scope: !5068)
!5071 = !DILocation(line: 216, column: 15, scope: !5068)
!5072 = !DILocation(line: 216, column: 22, scope: !5068)
!5073 = !DILocalVariable(name: "extent", scope: !5068, file: !93, line: 217, type: !76)
!5074 = !DILocation(line: 217, column: 15, scope: !5068)
!5075 = !DILocation(line: 217, column: 24, scope: !5068)
!5076 = !DILocation(line: 217, column: 31, scope: !5068)
!5077 = !DILocation(line: 217, column: 61, scope: !5078)
!5078 = !DILexicalBlockFile(scope: !5068, file: !93, discriminator: 1)
!5079 = !DILocation(line: 217, column: 62, scope: !5078)
!5080 = !DILocation(line: 217, column: 46, scope: !5078)
!5081 = !DILocation(line: 217, column: 53, scope: !5078)
!5082 = !DILocation(line: 217, column: 24, scope: !5078)
!5083 = !DILocation(line: 217, column: 24, scope: !5084)
!5084 = !DILexicalBlockFile(scope: !5068, file: !93, discriminator: 2)
!5085 = !DILocation(line: 217, column: 24, scope: !5086)
!5086 = !DILexicalBlockFile(scope: !5068, file: !93, discriminator: 3)
!5087 = !DILocation(line: 217, column: 15, scope: !5086)
!5088 = !DILocation(line: 219, column: 7, scope: !5089)
!5089 = distinct !DILexicalBlock(scope: !5068, file: !93, line: 219, column: 7)
!5090 = !DILocation(line: 219, column: 17, scope: !5089)
!5091 = !DILocation(line: 219, column: 7, scope: !5068)
!5092 = !DILocation(line: 220, column: 14, scope: !5089)
!5093 = !DILocation(line: 220, column: 16, scope: !5089)
!5094 = !DILocation(line: 220, column: 13, scope: !5089)
!5095 = !DILocation(line: 220, column: 9, scope: !5089)
!5096 = !DILocation(line: 220, column: 4, scope: !5089)
!5097 = !DILocation(line: 221, column: 12, scope: !5098)
!5098 = distinct !DILexicalBlock(scope: !5089, file: !93, line: 221, column: 12)
!5099 = !DILocation(line: 221, column: 19, scope: !5098)
!5100 = !DILocation(line: 221, column: 12, scope: !5089)
!5101 = !DILocation(line: 222, column: 15, scope: !5098)
!5102 = !DILocation(line: 222, column: 18, scope: !5098)
!5103 = !DILocation(line: 222, column: 27, scope: !5098)
!5104 = !DILocation(line: 222, column: 12, scope: !5098)
!5105 = !DILocation(line: 222, column: 46, scope: !5106)
!5106 = !DILexicalBlockFile(scope: !5098, file: !93, discriminator: 1)
!5107 = !DILocation(line: 222, column: 36, scope: !5106)
!5108 = !DILocation(line: 222, column: 12, scope: !5106)
!5109 = !DILocation(line: 222, column: 12, scope: !5110)
!5110 = !DILexicalBlockFile(scope: !5098, file: !93, discriminator: 2)
!5111 = !DILocation(line: 222, column: 12, scope: !5112)
!5112 = !DILexicalBlockFile(scope: !5098, file: !93, discriminator: 3)
!5113 = !DILocation(line: 222, column: 9, scope: !5112)
!5114 = !DILocation(line: 222, column: 4, scope: !5112)
!5115 = !DILocation(line: 224, column: 8, scope: !5098)
!5116 = !DILocation(line: 226, column: 7, scope: !5117)
!5117 = distinct !DILexicalBlock(scope: !5068, file: !93, line: 226, column: 7)
!5118 = !DILocation(line: 226, column: 14, scope: !5117)
!5119 = !DILocation(line: 226, column: 7, scope: !5068)
!5120 = !DILocation(line: 227, column: 23, scope: !5121)
!5121 = distinct !DILexicalBlock(scope: !5117, file: !93, line: 226, column: 22)
!5122 = !DILocation(line: 227, column: 31, scope: !5121)
!5123 = !DILocation(line: 227, column: 38, scope: !5121)
!5124 = !DILocation(line: 227, column: 12, scope: !5121)
!5125 = !DILocation(line: 227, column: 9, scope: !5121)
!5126 = !DILocation(line: 228, column: 3, scope: !5121)
!5127 = !DILocation(line: 230, column: 2, scope: !5068)
!5128 = !DILocation(line: 215, column: 24, scope: !5129)
!5129 = !DILexicalBlockFile(scope: !5063, file: !93, discriminator: 2)
!5130 = !DILocation(line: 215, column: 2, scope: !5129)
!5131 = distinct !{!5131, !5132}
!5132 = !DILocation(line: 215, column: 2, scope: !5020)
!5133 = !DILocation(line: 231, column: 9, scope: !5020)
!5134 = !DILocation(line: 231, column: 2, scope: !5020)
!5135 = !DILocation(line: 232, column: 1, scope: !5020)
!5136 = distinct !DISubprogram(name: "scrpos2pos", scope: !93, file: !93, line: 234, type: !5137, isLocal: true, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!5137 = !DISubroutineType(types: !5138)
!5138 = !{!36, !31, !36}
!5139 = !DILocalVariable(name: "entry", arg: 1, scope: !5136, file: !93, line: 234, type: !31)
!5140 = !DILocation(line: 234, column: 38, scope: !5136)
!5141 = !DILocalVariable(name: "pos", arg: 2, scope: !5136, file: !93, line: 234, type: !36)
!5142 = !DILocation(line: 234, column: 49, scope: !5136)
!5143 = !DILocalVariable(name: "i", scope: !5136, file: !93, line: 236, type: !36)
!5144 = !DILocation(line: 236, column: 6, scope: !5136)
!5145 = !DILocalVariable(name: "width", scope: !5136, file: !93, line: 236, type: !36)
!5146 = !DILocation(line: 236, column: 9, scope: !5136)
!5147 = !DILocalVariable(name: "xpos", scope: !5136, file: !93, line: 236, type: !36)
!5148 = !DILocation(line: 236, column: 16, scope: !5136)
!5149 = !DILocation(line: 238, column: 6, scope: !5150)
!5150 = distinct !DILexicalBlock(scope: !5136, file: !93, line: 238, column: 6)
!5151 = !DILocation(line: 238, column: 13, scope: !5150)
!5152 = !DILocation(line: 238, column: 26, scope: !5150)
!5153 = !DILocation(line: 238, column: 29, scope: !5154)
!5154 = !DILexicalBlockFile(scope: !5150, file: !93, discriminator: 1)
!5155 = !DILocation(line: 238, column: 36, scope: !5154)
!5156 = !DILocation(line: 238, column: 47, scope: !5154)
!5157 = !DILocation(line: 238, column: 6, scope: !5154)
!5158 = !DILocation(line: 239, column: 22, scope: !5159)
!5159 = distinct !DILexicalBlock(scope: !5150, file: !93, line: 238, column: 55)
!5160 = !DILocation(line: 239, column: 29, scope: !5159)
!5161 = !DILocation(line: 239, column: 41, scope: !5159)
!5162 = !DILocation(line: 239, column: 48, scope: !5159)
!5163 = !DILocation(line: 239, column: 11, scope: !5159)
!5164 = !DILocation(line: 239, column: 8, scope: !5159)
!5165 = !DILocation(line: 240, column: 2, scope: !5159)
!5166 = !DILocation(line: 242, column: 9, scope: !5167)
!5167 = distinct !DILexicalBlock(scope: !5136, file: !93, line: 242, column: 2)
!5168 = !DILocation(line: 242, column: 7, scope: !5167)
!5169 = !DILocation(line: 242, column: 14, scope: !5170)
!5170 = !DILexicalBlockFile(scope: !5171, file: !93, discriminator: 1)
!5171 = distinct !DILexicalBlock(scope: !5167, file: !93, line: 242, column: 2)
!5172 = !DILocation(line: 242, column: 18, scope: !5170)
!5173 = !DILocation(line: 242, column: 25, scope: !5170)
!5174 = !DILocation(line: 242, column: 16, scope: !5170)
!5175 = !DILocation(line: 242, column: 34, scope: !5170)
!5176 = !DILocation(line: 242, column: 37, scope: !5177)
!5177 = !DILexicalBlockFile(scope: !5171, file: !93, discriminator: 2)
!5178 = !DILocation(line: 242, column: 44, scope: !5177)
!5179 = !DILocation(line: 242, column: 42, scope: !5177)
!5180 = !DILocation(line: 242, column: 2, scope: !5181)
!5181 = !DILexicalBlockFile(scope: !5167, file: !93, discriminator: 3)
!5182 = !DILocalVariable(name: "c", scope: !5183, file: !93, line: 243, type: !40)
!5183 = distinct !DILexicalBlock(scope: !5171, file: !93, line: 242, column: 54)
!5184 = !DILocation(line: 243, column: 11, scope: !5183)
!5185 = !DILocation(line: 243, column: 27, scope: !5183)
!5186 = !DILocation(line: 243, column: 15, scope: !5183)
!5187 = !DILocation(line: 243, column: 22, scope: !5183)
!5188 = !DILocalVariable(name: "extent", scope: !5183, file: !93, line: 244, type: !76)
!5189 = !DILocation(line: 244, column: 15, scope: !5183)
!5190 = !DILocation(line: 244, column: 24, scope: !5183)
!5191 = !DILocation(line: 244, column: 31, scope: !5183)
!5192 = !DILocation(line: 244, column: 61, scope: !5193)
!5193 = !DILexicalBlockFile(scope: !5183, file: !93, discriminator: 1)
!5194 = !DILocation(line: 244, column: 62, scope: !5193)
!5195 = !DILocation(line: 244, column: 46, scope: !5193)
!5196 = !DILocation(line: 244, column: 53, scope: !5193)
!5197 = !DILocation(line: 244, column: 24, scope: !5193)
!5198 = !DILocation(line: 244, column: 24, scope: !5199)
!5199 = !DILexicalBlockFile(scope: !5183, file: !93, discriminator: 2)
!5200 = !DILocation(line: 244, column: 24, scope: !5201)
!5201 = !DILexicalBlockFile(scope: !5183, file: !93, discriminator: 3)
!5202 = !DILocation(line: 244, column: 15, scope: !5201)
!5203 = !DILocation(line: 246, column: 7, scope: !5204)
!5204 = distinct !DILexicalBlock(scope: !5183, file: !93, line: 246, column: 7)
!5205 = !DILocation(line: 246, column: 17, scope: !5204)
!5206 = !DILocation(line: 246, column: 7, scope: !5183)
!5207 = !DILocation(line: 247, column: 14, scope: !5204)
!5208 = !DILocation(line: 247, column: 16, scope: !5204)
!5209 = !DILocation(line: 247, column: 13, scope: !5204)
!5210 = !DILocation(line: 247, column: 10, scope: !5204)
!5211 = !DILocation(line: 247, column: 4, scope: !5204)
!5212 = !DILocation(line: 248, column: 12, scope: !5213)
!5213 = distinct !DILexicalBlock(scope: !5204, file: !93, line: 248, column: 12)
!5214 = !DILocation(line: 248, column: 19, scope: !5213)
!5215 = !DILocation(line: 248, column: 12, scope: !5204)
!5216 = !DILocation(line: 249, column: 15, scope: !5213)
!5217 = !DILocation(line: 249, column: 18, scope: !5213)
!5218 = !DILocation(line: 249, column: 27, scope: !5213)
!5219 = !DILocation(line: 249, column: 12, scope: !5213)
!5220 = !DILocation(line: 249, column: 46, scope: !5221)
!5221 = !DILexicalBlockFile(scope: !5213, file: !93, discriminator: 1)
!5222 = !DILocation(line: 249, column: 36, scope: !5221)
!5223 = !DILocation(line: 249, column: 12, scope: !5221)
!5224 = !DILocation(line: 249, column: 12, scope: !5225)
!5225 = !DILexicalBlockFile(scope: !5213, file: !93, discriminator: 2)
!5226 = !DILocation(line: 249, column: 12, scope: !5227)
!5227 = !DILexicalBlockFile(scope: !5213, file: !93, discriminator: 3)
!5228 = !DILocation(line: 249, column: 10, scope: !5227)
!5229 = !DILocation(line: 249, column: 4, scope: !5227)
!5230 = !DILocation(line: 251, column: 10, scope: !5213)
!5231 = !DILocation(line: 253, column: 11, scope: !5183)
!5232 = !DILocation(line: 253, column: 8, scope: !5183)
!5233 = !DILocation(line: 255, column: 7, scope: !5234)
!5234 = distinct !DILexicalBlock(scope: !5183, file: !93, line: 255, column: 7)
!5235 = !DILocation(line: 255, column: 14, scope: !5234)
!5236 = !DILocation(line: 255, column: 7, scope: !5183)
!5237 = !DILocation(line: 256, column: 23, scope: !5238)
!5238 = distinct !DILexicalBlock(scope: !5234, file: !93, line: 255, column: 22)
!5239 = !DILocation(line: 256, column: 31, scope: !5238)
!5240 = !DILocation(line: 256, column: 38, scope: !5238)
!5241 = !DILocation(line: 256, column: 12, scope: !5238)
!5242 = !DILocation(line: 256, column: 9, scope: !5238)
!5243 = !DILocation(line: 257, column: 3, scope: !5238)
!5244 = !DILocation(line: 258, column: 2, scope: !5183)
!5245 = !DILocation(line: 242, column: 50, scope: !5246)
!5246 = !DILexicalBlockFile(scope: !5171, file: !93, discriminator: 4)
!5247 = !DILocation(line: 242, column: 2, scope: !5246)
!5248 = distinct !{!5248, !5249}
!5249 = !DILocation(line: 242, column: 2, scope: !5136)
!5250 = !DILocation(line: 259, column: 9, scope: !5136)
!5251 = !DILocation(line: 259, column: 2, scope: !5136)
!5252 = distinct !DISubprogram(name: "gui_entry_draw_from", scope: !93, file: !93, line: 327, type: !672, isLocal: true, isDefinition: true, scopeLine: 328, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!5253 = !DILocalVariable(name: "entry", arg: 1, scope: !5252, file: !93, line: 327, type: !31)
!5254 = !DILocation(line: 327, column: 48, scope: !5252)
!5255 = !DILocalVariable(name: "pos", arg: 2, scope: !5252, file: !93, line: 327, type: !36)
!5256 = !DILocation(line: 327, column: 59, scope: !5252)
!5257 = !DILocalVariable(name: "i", scope: !5252, file: !93, line: 329, type: !36)
!5258 = !DILocation(line: 329, column: 6, scope: !5252)
!5259 = !DILocalVariable(name: "start", scope: !5252, file: !93, line: 329, type: !36)
!5260 = !DILocation(line: 329, column: 9, scope: !5252)
!5261 = !DILocalVariable(name: "start_xpos", scope: !5252, file: !93, line: 330, type: !36)
!5262 = !DILocation(line: 330, column: 6, scope: !5252)
!5263 = !DILocalVariable(name: "xpos", scope: !5252, file: !93, line: 330, type: !36)
!5264 = !DILocation(line: 330, column: 18, scope: !5252)
!5265 = !DILocalVariable(name: "new_xpos", scope: !5252, file: !93, line: 330, type: !36)
!5266 = !DILocation(line: 330, column: 24, scope: !5252)
!5267 = !DILocalVariable(name: "end_xpos", scope: !5252, file: !93, line: 330, type: !36)
!5268 = !DILocation(line: 330, column: 34, scope: !5252)
!5269 = !DILocalVariable(name: "tmp", scope: !5252, file: !93, line: 331, type: !46)
!5270 = !DILocation(line: 331, column: 8, scope: !5252)
!5271 = !DILocalVariable(name: "str", scope: !5252, file: !93, line: 332, type: !4625)
!5272 = !DILocation(line: 332, column: 11, scope: !5252)
!5273 = !DILocation(line: 334, column: 10, scope: !5252)
!5274 = !DILocation(line: 334, column: 17, scope: !5252)
!5275 = !DILocation(line: 334, column: 28, scope: !5252)
!5276 = !DILocation(line: 334, column: 26, scope: !5252)
!5277 = !DILocation(line: 334, column: 8, scope: !5252)
!5278 = !DILocation(line: 336, column: 22, scope: !5252)
!5279 = !DILocation(line: 336, column: 29, scope: !5252)
!5280 = !DILocation(line: 336, column: 36, scope: !5252)
!5281 = !DILocation(line: 336, column: 43, scope: !5252)
!5282 = !DILocation(line: 336, column: 34, scope: !5252)
!5283 = !DILocation(line: 337, column: 14, scope: !5252)
!5284 = !DILocation(line: 337, column: 21, scope: !5252)
!5285 = !DILocation(line: 337, column: 3, scope: !5252)
!5286 = !DILocation(line: 336, column: 53, scope: !5252)
!5287 = !DILocation(line: 338, column: 14, scope: !5252)
!5288 = !DILocation(line: 338, column: 21, scope: !5252)
!5289 = !DILocation(line: 338, column: 28, scope: !5252)
!5290 = !DILocation(line: 338, column: 3, scope: !5252)
!5291 = !DILocation(line: 337, column: 33, scope: !5252)
!5292 = !DILocation(line: 336, column: 20, scope: !5252)
!5293 = !DILocation(line: 336, column: 13, scope: !5252)
!5294 = !DILocation(line: 339, column: 20, scope: !5252)
!5295 = !DILocation(line: 339, column: 27, scope: !5252)
!5296 = !DILocation(line: 339, column: 34, scope: !5252)
!5297 = !DILocation(line: 339, column: 41, scope: !5252)
!5298 = !DILocation(line: 339, column: 32, scope: !5252)
!5299 = !DILocation(line: 339, column: 18, scope: !5252)
!5300 = !DILocation(line: 341, column: 6, scope: !5301)
!5301 = distinct !DILexicalBlock(scope: !5252, file: !93, line: 341, column: 6)
!5302 = !DILocation(line: 341, column: 13, scope: !5301)
!5303 = !DILocation(line: 341, column: 11, scope: !5301)
!5304 = !DILocation(line: 341, column: 6, scope: !5252)
!5305 = !DILocation(line: 342, column: 17, scope: !5301)
!5306 = !DILocation(line: 344, column: 27, scope: !5252)
!5307 = !DILocation(line: 344, column: 34, scope: !5252)
!5308 = !DILocation(line: 344, column: 8, scope: !5252)
!5309 = !DILocation(line: 344, column: 6, scope: !5252)
!5310 = !DILocation(line: 346, column: 17, scope: !5252)
!5311 = !DILocation(line: 346, column: 2, scope: !5252)
!5312 = !DILocation(line: 349, column: 6, scope: !5313)
!5313 = distinct !DILexicalBlock(scope: !5252, file: !93, line: 349, column: 6)
!5314 = !DILocation(line: 349, column: 13, scope: !5313)
!5315 = !DILocation(line: 349, column: 26, scope: !5313)
!5316 = !DILocation(line: 349, column: 29, scope: !5317)
!5317 = !DILexicalBlockFile(scope: !5313, file: !93, discriminator: 1)
!5318 = !DILocation(line: 349, column: 36, scope: !5317)
!5319 = !DILocation(line: 349, column: 47, scope: !5317)
!5320 = !DILocation(line: 349, column: 6, scope: !5317)
!5321 = !DILocation(line: 350, column: 19, scope: !5322)
!5322 = distinct !DILexicalBlock(scope: !5313, file: !93, line: 349, column: 55)
!5323 = !DILocation(line: 350, column: 24, scope: !5322)
!5324 = !DILocation(line: 350, column: 31, scope: !5322)
!5325 = !DILocation(line: 350, column: 3, scope: !5322)
!5326 = !DILocation(line: 351, column: 2, scope: !5322)
!5327 = !DILocation(line: 352, column: 9, scope: !5328)
!5328 = distinct !DILexicalBlock(scope: !5252, file: !93, line: 352, column: 2)
!5329 = !DILocation(line: 352, column: 7, scope: !5328)
!5330 = !DILocation(line: 352, column: 14, scope: !5331)
!5331 = !DILexicalBlockFile(scope: !5332, file: !93, discriminator: 1)
!5332 = distinct !DILexicalBlock(scope: !5328, file: !93, line: 352, column: 2)
!5333 = !DILocation(line: 352, column: 18, scope: !5331)
!5334 = !DILocation(line: 352, column: 16, scope: !5331)
!5335 = !DILocation(line: 352, column: 24, scope: !5331)
!5336 = !DILocation(line: 352, column: 27, scope: !5337)
!5337 = !DILexicalBlockFile(scope: !5332, file: !93, discriminator: 2)
!5338 = !DILocation(line: 352, column: 31, scope: !5337)
!5339 = !DILocation(line: 352, column: 38, scope: !5337)
!5340 = !DILocation(line: 352, column: 29, scope: !5337)
!5341 = !DILocation(line: 352, column: 2, scope: !5342)
!5342 = !DILexicalBlockFile(scope: !5328, file: !93, discriminator: 3)
!5343 = !DILocalVariable(name: "extent", scope: !5344, file: !93, line: 353, type: !76)
!5344 = distinct !DILexicalBlock(scope: !5332, file: !93, line: 352, column: 53)
!5345 = !DILocation(line: 353, column: 15, scope: !5344)
!5346 = !DILocation(line: 353, column: 24, scope: !5344)
!5347 = !DILocation(line: 353, column: 31, scope: !5344)
!5348 = !DILocation(line: 353, column: 61, scope: !5349)
!5349 = !DILexicalBlockFile(scope: !5344, file: !93, discriminator: 1)
!5350 = !DILocation(line: 353, column: 62, scope: !5349)
!5351 = !DILocation(line: 353, column: 46, scope: !5349)
!5352 = !DILocation(line: 353, column: 53, scope: !5349)
!5353 = !DILocation(line: 353, column: 24, scope: !5349)
!5354 = !DILocation(line: 353, column: 24, scope: !5355)
!5355 = !DILexicalBlockFile(scope: !5344, file: !93, discriminator: 2)
!5356 = !DILocation(line: 353, column: 24, scope: !5357)
!5357 = !DILexicalBlockFile(scope: !5344, file: !93, discriminator: 3)
!5358 = !DILocation(line: 353, column: 15, scope: !5357)
!5359 = !DILocation(line: 354, column: 7, scope: !5360)
!5360 = distinct !DILexicalBlock(scope: !5344, file: !93, line: 354, column: 7)
!5361 = !DILocation(line: 354, column: 14, scope: !5360)
!5362 = !DILocation(line: 354, column: 7, scope: !5344)
!5363 = !DILocation(line: 355, column: 20, scope: !5364)
!5364 = distinct !DILexicalBlock(scope: !5360, file: !93, line: 354, column: 22)
!5365 = !DILocation(line: 355, column: 25, scope: !5364)
!5366 = !DILocation(line: 355, column: 4, scope: !5364)
!5367 = !DILocation(line: 356, column: 3, scope: !5364)
!5368 = !DILocation(line: 357, column: 2, scope: !5344)
!5369 = !DILocation(line: 352, column: 49, scope: !5370)
!5370 = !DILexicalBlockFile(scope: !5332, file: !93, discriminator: 4)
!5371 = !DILocation(line: 352, column: 2, scope: !5370)
!5372 = distinct !{!5372, !5373}
!5373 = !DILocation(line: 352, column: 2, scope: !5252)
!5374 = !DILocation(line: 358, column: 6, scope: !5375)
!5375 = distinct !DILexicalBlock(scope: !5252, file: !93, line: 358, column: 6)
!5376 = !DILocation(line: 358, column: 8, scope: !5375)
!5377 = !DILocation(line: 358, column: 6, scope: !5252)
!5378 = !DILocation(line: 359, column: 22, scope: !5379)
!5379 = distinct !DILexicalBlock(scope: !5375, file: !93, line: 358, column: 14)
!5380 = !DILocation(line: 359, column: 27, scope: !5379)
!5381 = !DILocation(line: 359, column: 32, scope: !5379)
!5382 = !DILocation(line: 359, column: 39, scope: !5379)
!5383 = !DILocation(line: 359, column: 11, scope: !5379)
!5384 = !DILocation(line: 359, column: 8, scope: !5379)
!5385 = !DILocation(line: 360, column: 2, scope: !5379)
!5386 = !DILocation(line: 361, column: 27, scope: !5387)
!5387 = distinct !DILexicalBlock(scope: !5375, file: !93, line: 360, column: 9)
!5388 = !DILocation(line: 361, column: 32, scope: !5387)
!5389 = !DILocation(line: 361, column: 9, scope: !5387)
!5390 = !DILocation(line: 361, column: 7, scope: !5387)
!5391 = !DILocation(line: 362, column: 19, scope: !5387)
!5392 = !DILocation(line: 362, column: 24, scope: !5387)
!5393 = !DILocation(line: 362, column: 3, scope: !5387)
!5394 = !DILocation(line: 363, column: 10, scope: !5387)
!5395 = !DILocation(line: 363, column: 3, scope: !5387)
!5396 = !DILocation(line: 366, column: 2, scope: !5252)
!5397 = !DILocation(line: 366, column: 9, scope: !5398)
!5398 = !DILexicalBlockFile(scope: !5399, file: !93, discriminator: 1)
!5399 = distinct !DILexicalBlock(scope: !5400, file: !93, line: 366, column: 2)
!5400 = distinct !DILexicalBlock(scope: !5252, file: !93, line: 366, column: 2)
!5401 = !DILocation(line: 366, column: 13, scope: !5398)
!5402 = !DILocation(line: 366, column: 20, scope: !5398)
!5403 = !DILocation(line: 366, column: 11, scope: !5398)
!5404 = !DILocation(line: 366, column: 2, scope: !5398)
!5405 = !DILocalVariable(name: "c", scope: !5406, file: !93, line: 367, type: !40)
!5406 = distinct !DILexicalBlock(scope: !5399, file: !93, line: 366, column: 35)
!5407 = !DILocation(line: 367, column: 11, scope: !5406)
!5408 = !DILocation(line: 367, column: 27, scope: !5406)
!5409 = !DILocation(line: 367, column: 15, scope: !5406)
!5410 = !DILocation(line: 367, column: 22, scope: !5406)
!5411 = !DILocalVariable(name: "extent", scope: !5406, file: !93, line: 368, type: !76)
!5412 = !DILocation(line: 368, column: 15, scope: !5406)
!5413 = !DILocation(line: 368, column: 24, scope: !5406)
!5414 = !DILocation(line: 368, column: 31, scope: !5406)
!5415 = !DILocation(line: 368, column: 61, scope: !5416)
!5416 = !DILexicalBlockFile(scope: !5406, file: !93, discriminator: 1)
!5417 = !DILocation(line: 368, column: 62, scope: !5416)
!5418 = !DILocation(line: 368, column: 46, scope: !5416)
!5419 = !DILocation(line: 368, column: 53, scope: !5416)
!5420 = !DILocation(line: 368, column: 24, scope: !5416)
!5421 = !DILocation(line: 368, column: 24, scope: !5422)
!5422 = !DILexicalBlockFile(scope: !5406, file: !93, discriminator: 2)
!5423 = !DILocation(line: 368, column: 24, scope: !5424)
!5424 = !DILexicalBlockFile(scope: !5406, file: !93, discriminator: 3)
!5425 = !DILocation(line: 368, column: 15, scope: !5424)
!5426 = !DILocation(line: 369, column: 14, scope: !5406)
!5427 = !DILocation(line: 369, column: 12, scope: !5406)
!5428 = !DILocation(line: 371, column: 7, scope: !5429)
!5429 = distinct !DILexicalBlock(scope: !5406, file: !93, line: 371, column: 7)
!5430 = !DILocation(line: 371, column: 14, scope: !5429)
!5431 = !DILocation(line: 371, column: 7, scope: !5406)
!5432 = !DILocation(line: 372, column: 12, scope: !5429)
!5433 = !DILocation(line: 372, column: 4, scope: !5429)
!5434 = !DILocation(line: 373, column: 12, scope: !5435)
!5435 = distinct !DILexicalBlock(scope: !5429, file: !93, line: 373, column: 12)
!5436 = !DILocation(line: 373, column: 22, scope: !5435)
!5437 = !DILocation(line: 373, column: 12, scope: !5429)
!5438 = !DILocation(line: 374, column: 18, scope: !5435)
!5439 = !DILocation(line: 374, column: 20, scope: !5435)
!5440 = !DILocation(line: 374, column: 17, scope: !5435)
!5441 = !DILocation(line: 374, column: 13, scope: !5435)
!5442 = !DILocation(line: 374, column: 4, scope: !5435)
!5443 = !DILocation(line: 375, column: 12, scope: !5444)
!5444 = distinct !DILexicalBlock(scope: !5435, file: !93, line: 375, column: 12)
!5445 = !DILocation(line: 375, column: 19, scope: !5444)
!5446 = !DILocation(line: 375, column: 12, scope: !5435)
!5447 = !DILocation(line: 376, column: 19, scope: !5444)
!5448 = !DILocation(line: 376, column: 22, scope: !5444)
!5449 = !DILocation(line: 376, column: 31, scope: !5444)
!5450 = !DILocation(line: 376, column: 16, scope: !5444)
!5451 = !DILocation(line: 376, column: 50, scope: !5452)
!5452 = !DILexicalBlockFile(scope: !5444, file: !93, discriminator: 1)
!5453 = !DILocation(line: 376, column: 40, scope: !5452)
!5454 = !DILocation(line: 376, column: 16, scope: !5452)
!5455 = !DILocation(line: 376, column: 16, scope: !5456)
!5456 = !DILexicalBlockFile(scope: !5444, file: !93, discriminator: 2)
!5457 = !DILocation(line: 376, column: 16, scope: !5458)
!5458 = !DILexicalBlockFile(scope: !5444, file: !93, discriminator: 3)
!5459 = !DILocation(line: 376, column: 13, scope: !5458)
!5460 = !DILocation(line: 376, column: 4, scope: !5458)
!5461 = !DILocation(line: 378, column: 12, scope: !5444)
!5462 = !DILocation(line: 380, column: 7, scope: !5463)
!5463 = distinct !DILexicalBlock(scope: !5406, file: !93, line: 380, column: 7)
!5464 = !DILocation(line: 380, column: 18, scope: !5463)
!5465 = !DILocation(line: 380, column: 16, scope: !5463)
!5466 = !DILocation(line: 380, column: 7, scope: !5406)
!5467 = !DILocation(line: 381, column: 4, scope: !5463)
!5468 = !DILocation(line: 383, column: 7, scope: !5469)
!5469 = distinct !DILexicalBlock(scope: !5406, file: !93, line: 383, column: 7)
!5470 = !DILocation(line: 383, column: 14, scope: !5469)
!5471 = !DILocation(line: 383, column: 7, scope: !5406)
!5472 = !DILocation(line: 384, column: 51, scope: !5469)
!5473 = !DILocation(line: 384, column: 25, scope: !5469)
!5474 = !DILocation(line: 385, column: 15, scope: !5475)
!5475 = distinct !DILexicalBlock(scope: !5469, file: !93, line: 385, column: 12)
!5476 = !DILocation(line: 385, column: 18, scope: !5475)
!5477 = !DILocation(line: 385, column: 27, scope: !5475)
!5478 = !DILocation(line: 385, column: 12, scope: !5469)
!5479 = !DILocation(line: 386, column: 28, scope: !5475)
!5480 = !DILocation(line: 386, column: 33, scope: !5475)
!5481 = !DILocation(line: 386, column: 4, scope: !5475)
!5482 = !DILocation(line: 388, column: 30, scope: !5483)
!5483 = distinct !DILexicalBlock(scope: !5475, file: !93, line: 387, column: 8)
!5484 = !DILocation(line: 388, column: 4, scope: !5483)
!5485 = !DILocation(line: 389, column: 30, scope: !5483)
!5486 = !DILocation(line: 389, column: 4, scope: !5483)
!5487 = !DILocation(line: 390, column: 30, scope: !5483)
!5488 = !DILocation(line: 390, column: 36, scope: !5483)
!5489 = !DILocation(line: 390, column: 38, scope: !5483)
!5490 = !DILocation(line: 390, column: 44, scope: !5483)
!5491 = !DILocation(line: 390, column: 48, scope: !5483)
!5492 = !DILocation(line: 390, column: 35, scope: !5483)
!5493 = !DILocation(line: 390, column: 4, scope: !5483)
!5494 = !DILocation(line: 391, column: 30, scope: !5483)
!5495 = !DILocation(line: 391, column: 4, scope: !5483)
!5496 = !DILocation(line: 392, column: 30, scope: !5483)
!5497 = !DILocation(line: 392, column: 4, scope: !5483)
!5498 = !DILocation(line: 394, column: 10, scope: !5406)
!5499 = !DILocation(line: 394, column: 8, scope: !5406)
!5500 = !DILocation(line: 396, column: 7, scope: !5501)
!5501 = distinct !DILexicalBlock(scope: !5406, file: !93, line: 396, column: 7)
!5502 = !DILocation(line: 396, column: 14, scope: !5501)
!5503 = !DILocation(line: 396, column: 7, scope: !5406)
!5504 = !DILocation(line: 397, column: 27, scope: !5505)
!5505 = distinct !DILexicalBlock(scope: !5501, file: !93, line: 396, column: 22)
!5506 = !DILocation(line: 397, column: 35, scope: !5505)
!5507 = !DILocation(line: 397, column: 42, scope: !5505)
!5508 = !DILocation(line: 397, column: 16, scope: !5505)
!5509 = !DILocation(line: 397, column: 13, scope: !5505)
!5510 = !DILocation(line: 399, column: 8, scope: !5511)
!5511 = distinct !DILexicalBlock(scope: !5505, file: !93, line: 399, column: 8)
!5512 = !DILocation(line: 399, column: 19, scope: !5511)
!5513 = !DILocation(line: 399, column: 17, scope: !5511)
!5514 = !DILocation(line: 399, column: 8, scope: !5505)
!5515 = !DILocation(line: 400, column: 5, scope: !5511)
!5516 = !DILocation(line: 402, column: 20, scope: !5505)
!5517 = !DILocation(line: 402, column: 25, scope: !5505)
!5518 = !DILocation(line: 402, column: 4, scope: !5505)
!5519 = !DILocation(line: 403, column: 11, scope: !5505)
!5520 = !DILocation(line: 403, column: 9, scope: !5505)
!5521 = !DILocation(line: 404, column: 3, scope: !5505)
!5522 = !DILocation(line: 405, column: 2, scope: !5406)
!5523 = !DILocation(line: 366, column: 31, scope: !5524)
!5524 = !DILexicalBlockFile(scope: !5399, file: !93, discriminator: 2)
!5525 = !DILocation(line: 366, column: 2, scope: !5524)
!5526 = distinct !{!5526, !5396}
!5527 = !DILocation(line: 408, column: 6, scope: !5528)
!5528 = distinct !DILexicalBlock(scope: !5252, file: !93, line: 408, column: 6)
!5529 = !DILocation(line: 408, column: 13, scope: !5528)
!5530 = !DILocation(line: 408, column: 11, scope: !5528)
!5531 = !DILocation(line: 408, column: 6, scope: !5252)
!5532 = !DILocation(line: 409, column: 7, scope: !5533)
!5533 = distinct !DILexicalBlock(scope: !5534, file: !93, line: 409, column: 7)
!5534 = distinct !DILexicalBlock(scope: !5528, file: !93, line: 408, column: 23)
!5535 = !DILocation(line: 409, column: 19, scope: !5533)
!5536 = !DILocation(line: 409, column: 16, scope: !5533)
!5537 = !DILocation(line: 409, column: 7, scope: !5534)
!5538 = !DILocation(line: 410, column: 30, scope: !5539)
!5539 = distinct !DILexicalBlock(scope: !5533, file: !93, line: 409, column: 31)
!5540 = !DILocation(line: 410, column: 4, scope: !5539)
!5541 = !DILocation(line: 411, column: 30, scope: !5539)
!5542 = !DILocation(line: 411, column: 4, scope: !5539)
!5543 = !DILocation(line: 412, column: 3, scope: !5539)
!5544 = !DILocation(line: 413, column: 4, scope: !5545)
!5545 = distinct !DILexicalBlock(scope: !5533, file: !93, line: 412, column: 10)
!5546 = !DILocation(line: 413, column: 11, scope: !5547)
!5547 = !DILexicalBlockFile(scope: !5545, file: !93, discriminator: 1)
!5548 = !DILocation(line: 413, column: 18, scope: !5547)
!5549 = !DILocation(line: 413, column: 16, scope: !5547)
!5550 = !DILocation(line: 413, column: 4, scope: !5547)
!5551 = !DILocation(line: 414, column: 31, scope: !5552)
!5552 = distinct !DILexicalBlock(scope: !5545, file: !93, line: 413, column: 28)
!5553 = !DILocation(line: 414, column: 5, scope: !5552)
!5554 = !DILocation(line: 415, column: 9, scope: !5552)
!5555 = !DILocation(line: 413, column: 4, scope: !5556)
!5556 = !DILexicalBlockFile(scope: !5545, file: !93, discriminator: 2)
!5557 = distinct !{!5557, !5544}
!5558 = !DILocation(line: 418, column: 2, scope: !5534)
!5559 = !DILocation(line: 420, column: 25, scope: !5252)
!5560 = !DILocation(line: 420, column: 37, scope: !5252)
!5561 = !DILocation(line: 420, column: 44, scope: !5252)
!5562 = !DILocation(line: 420, column: 50, scope: !5252)
!5563 = !DILocation(line: 420, column: 55, scope: !5252)
!5564 = !DILocation(line: 420, column: 2, scope: !5252)
!5565 = !DILocation(line: 421, column: 16, scope: !5252)
!5566 = !DILocation(line: 421, column: 2, scope: !5252)
!5567 = !DILocation(line: 422, column: 1, scope: !5252)
!5568 = !DILocation(line: 422, column: 1, scope: !5569)
!5569 = !DILexicalBlockFile(scope: !5252, file: !93, discriminator: 1)
!5570 = distinct !DISubprogram(name: "text_effects_only", scope: !93, file: !93, line: 288, type: !5571, isLocal: true, isDefinition: true, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !100)
!5571 = !DISubroutineType(types: !5572)
!5572 = !{!46, !76}
!5573 = !DILocalVariable(name: "p", arg: 1, scope: !5570, file: !93, line: 288, type: !76)
!5574 = !DILocation(line: 288, column: 44, scope: !5570)
!5575 = !DILocalVariable(name: "str", scope: !5570, file: !93, line: 290, type: !4625)
!5576 = !DILocation(line: 290, column: 11, scope: !5570)
!5577 = !DILocation(line: 292, column: 34, scope: !5570)
!5578 = !DILocation(line: 292, column: 27, scope: !5570)
!5579 = !DILocation(line: 292, column: 8, scope: !5580)
!5580 = !DILexicalBlockFile(scope: !5570, file: !93, discriminator: 1)
!5581 = !DILocation(line: 292, column: 6, scope: !5570)
!5582 = !DILocation(line: 293, column: 2, scope: !5570)
!5583 = !DILocation(line: 293, column: 10, scope: !5584)
!5584 = !DILexicalBlockFile(scope: !5585, file: !93, discriminator: 1)
!5585 = distinct !DILexicalBlock(scope: !5586, file: !93, line: 293, column: 2)
!5586 = distinct !DILexicalBlock(scope: !5570, file: !93, line: 293, column: 2)
!5587 = !DILocation(line: 293, column: 9, scope: !5584)
!5588 = !DILocation(line: 293, column: 12, scope: !5584)
!5589 = !DILocation(line: 293, column: 2, scope: !5584)
!5590 = !DILocation(line: 294, column: 8, scope: !5591)
!5591 = distinct !DILexicalBlock(scope: !5592, file: !93, line: 294, column: 7)
!5592 = distinct !DILexicalBlock(scope: !5585, file: !93, line: 293, column: 26)
!5593 = !DILocation(line: 294, column: 7, scope: !5591)
!5594 = !DILocation(line: 294, column: 10, scope: !5591)
!5595 = !DILocation(line: 294, column: 15, scope: !5591)
!5596 = !DILocation(line: 294, column: 18, scope: !5597)
!5597 = !DILexicalBlockFile(scope: !5591, file: !93, discriminator: 1)
!5598 = !DILocation(line: 294, column: 23, scope: !5597)
!5599 = !DILocation(line: 294, column: 7, scope: !5597)
!5600 = !DILocation(line: 295, column: 8, scope: !5601)
!5601 = distinct !DILexicalBlock(scope: !5602, file: !93, line: 295, column: 8)
!5602 = distinct !DILexicalBlock(scope: !5591, file: !93, line: 294, column: 32)
!5603 = !DILocation(line: 295, column: 13, scope: !5601)
!5604 = !DILocation(line: 295, column: 8, scope: !5602)
!5605 = !DILocation(line: 296, column: 25, scope: !5606)
!5606 = distinct !DILexicalBlock(scope: !5601, file: !93, line: 295, column: 22)
!5607 = !DILocation(line: 296, column: 30, scope: !5606)
!5608 = !DILocation(line: 296, column: 5, scope: !5606)
!5609 = !DILocation(line: 297, column: 6, scope: !5606)
!5610 = !DILocation(line: 298, column: 5, scope: !5606)
!5611 = !DILocation(line: 302, column: 8, scope: !5612)
!5612 = distinct !DILexicalBlock(scope: !5602, file: !93, line: 302, column: 8)
!5613 = !DILocation(line: 302, column: 13, scope: !5612)
!5614 = !DILocation(line: 302, column: 8, scope: !5602)
!5615 = !DILocation(line: 314, column: 26, scope: !5616)
!5616 = distinct !DILexicalBlock(scope: !5612, file: !93, line: 302, column: 22)
!5617 = !DILocation(line: 314, column: 31, scope: !5616)
!5618 = !DILocation(line: 314, column: 6, scope: !5616)
!5619 = !DILocation(line: 315, column: 8, scope: !5616)
!5620 = !DILocation(line: 319, column: 5, scope: !5616)
!5621 = !DILocation(line: 321, column: 3, scope: !5602)
!5622 = !DILocation(line: 322, column: 2, scope: !5592)
!5623 = !DILocation(line: 293, column: 22, scope: !5624)
!5624 = !DILexicalBlockFile(scope: !5585, file: !93, discriminator: 2)
!5625 = !DILocation(line: 293, column: 2, scope: !5624)
!5626 = distinct !{!5626, !5582}
!5627 = !DILocation(line: 324, column: 23, scope: !5570)
!5628 = !DILocation(line: 324, column: 9, scope: !5570)
!5629 = !DILocation(line: 324, column: 2, scope: !5570)
