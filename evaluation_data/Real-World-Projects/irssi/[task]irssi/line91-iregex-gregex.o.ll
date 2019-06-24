; ModuleID = './line91-iregex-gregex.o.i'
source_filename = "./line91-iregex-gregex.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GRegex = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GString = type { i8*, i64, i64 }
%struct._MatchInfo = type { i8*, %struct._GMatchInfo* }
%struct._GMatchInfo = type opaque

@__func__.i_match_info_matches = private unnamed_addr constant [21 x i8] c"i_match_info_matches\00", align 1
@.str = private unnamed_addr constant [19 x i8] c"match_info != NULL\00", align 1
@g_utf8_skip = external constant i8*, align 8

; Function Attrs: nounwind uwtable
define %struct._GRegex* @i_regex_new(i8*, i32, i32, %struct._GError**) #0 !dbg !73 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._GError**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct._GRegex*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !98, metadata !99), !dbg !100
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !101, metadata !99), !dbg !102
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !103, metadata !99), !dbg !104
  store %struct._GError** %3, %struct._GError*** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._GError*** %8, metadata !105, metadata !99), !dbg !106
  call void @llvm.dbg.declare(metadata i8** %9, metadata !107, metadata !99), !dbg !108
  call void @llvm.dbg.declare(metadata i32* %10, metadata !109, metadata !99), !dbg !111
  call void @llvm.dbg.declare(metadata %struct._GRegex** %11, metadata !112, metadata !99), !dbg !113
  store %struct._GRegex* null, %struct._GRegex** %11, align 8, !dbg !113
  %12 = load i8*, i8** %5, align 8, !dbg !114
  %13 = call i8* @make_valid_utf8(i8* %12, i32* %10), !dbg !115
  store i8* %13, i8** %9, align 8, !dbg !116
  %14 = load i8*, i8** %9, align 8, !dbg !117
  %15 = load i32, i32* %6, align 4, !dbg !118
  %16 = load i32, i32* %7, align 4, !dbg !119
  %17 = load %struct._GError**, %struct._GError*** %8, align 8, !dbg !120
  %18 = call %struct._GRegex* @g_regex_new(i8* %14, i32 %15, i32 %16, %struct._GError** %17), !dbg !121
  store %struct._GRegex* %18, %struct._GRegex** %11, align 8, !dbg !122
  %19 = load i32, i32* %10, align 4, !dbg !123
  %20 = icmp ne i32 %19, 0, !dbg !123
  br i1 %20, label %21, label %23, !dbg !125

; <label>:21:                                     ; preds = %4
  %22 = load i8*, i8** %9, align 8, !dbg !126
  call void @g_free(i8* %22), !dbg !127
  br label %23, !dbg !127

; <label>:23:                                     ; preds = %21, %4
  %24 = load %struct._GRegex*, %struct._GRegex** %11, align 8, !dbg !128
  ret %struct._GRegex* %24, !dbg !129
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal i8* @make_valid_utf8(i8*, i32*) #0 !dbg !130 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct._GString*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !134, metadata !99), !dbg !135
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !136, metadata !99), !dbg !137
  call void @llvm.dbg.declare(metadata %struct._GString** %6, metadata !138, metadata !99), !dbg !149
  call void @llvm.dbg.declare(metadata i8** %7, metadata !150, metadata !99), !dbg !151
  %9 = load i8*, i8** %4, align 8, !dbg !152
  %10 = call i32 @g_utf8_validate(i8* %9, i64 -1, i8** null), !dbg !154
  %11 = icmp ne i32 %10, 0, !dbg !154
  br i1 %11, label %12, label %19, !dbg !155

; <label>:12:                                     ; preds = %2
  %13 = load i32*, i32** %5, align 8, !dbg !156
  %14 = icmp ne i32* %13, null, !dbg !156
  br i1 %14, label %15, label %17, !dbg !159

; <label>:15:                                     ; preds = %12
  %16 = load i32*, i32** %5, align 8, !dbg !160
  store i32 0, i32* %16, align 4, !dbg !161
  br label %17, !dbg !162

; <label>:17:                                     ; preds = %15, %12
  %18 = load i8*, i8** %4, align 8, !dbg !163
  store i8* %18, i8** %3, align 8, !dbg !164
  br label %70, !dbg !164

; <label>:19:                                     ; preds = %2
  %20 = load i8*, i8** %4, align 8, !dbg !165
  %21 = call i64 @strlen(i8* %20) #4, !dbg !166
  %22 = add i64 %21, 12, !dbg !167
  %23 = call %struct._GString* @g_string_sized_new(i64 %22), !dbg !168
  store %struct._GString* %23, %struct._GString** %6, align 8, !dbg !170
  %24 = load i8*, i8** %4, align 8, !dbg !171
  store i8* %24, i8** %7, align 8, !dbg !172
  br label %25, !dbg !173

; <label>:25:                                     ; preds = %61, %19
  %26 = load i8*, i8** %7, align 8, !dbg !174
  %27 = load i8, i8* %26, align 1, !dbg !175
  %28 = icmp ne i8 %27, 0, !dbg !176
  br i1 %28, label %29, label %62, !dbg !176

; <label>:29:                                     ; preds = %25
  call void @llvm.dbg.declare(metadata i32* %8, metadata !177, metadata !99), !dbg !179
  %30 = load i8*, i8** %7, align 8, !dbg !180
  %31 = call i32 @g_utf8_get_char_validated(i8* %30, i64 -1) #4, !dbg !181
  store i32 %31, i32* %8, align 4, !dbg !179
  %32 = load i32, i32* %8, align 4, !dbg !182
  %33 = icmp eq i32 %32, -1, !dbg !184
  br i1 %33, label %37, label %34, !dbg !185

; <label>:34:                                     ; preds = %29
  %35 = load i32, i32* %8, align 4, !dbg !186
  %36 = icmp eq i32 %35, -2, !dbg !188
  br i1 %36, label %37, label %47, !dbg !189

; <label>:37:                                     ; preds = %34, %29
  %38 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !190
  %39 = load i8*, i8** %7, align 8, !dbg !192
  %40 = load i8, i8* %39, align 1, !dbg !193
  %41 = sext i8 %40 to i32, !dbg !193
  %42 = and i32 %41, 255, !dbg !194
  %43 = or i32 1048320, %42, !dbg !195
  %44 = call %struct._GString* @g_string_append_unichar(%struct._GString* %38, i32 %43), !dbg !196
  %45 = load i8*, i8** %7, align 8, !dbg !197
  %46 = getelementptr inbounds i8, i8* %45, i32 1, !dbg !197
  store i8* %46, i8** %7, align 8, !dbg !197
  br label %61, !dbg !198

; <label>:47:                                     ; preds = %34
  %48 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !199
  %49 = load i32, i32* %8, align 4, !dbg !201
  %50 = call %struct._GString* @g_string_append_unichar(%struct._GString* %48, i32 %49), !dbg !202
  %51 = load i8*, i8** %7, align 8, !dbg !203
  %52 = load i8*, i8** %7, align 8, !dbg !204
  %53 = load i8, i8* %52, align 1, !dbg !205
  %54 = zext i8 %53 to i64, !dbg !206
  %55 = load i8*, i8** @g_utf8_skip, align 8, !dbg !206
  %56 = getelementptr inbounds i8, i8* %55, i64 %54, !dbg !206
  %57 = load i8, i8* %56, align 1, !dbg !206
  %58 = sext i8 %57 to i32, !dbg !206
  %59 = sext i32 %58 to i64, !dbg !207
  %60 = getelementptr inbounds i8, i8* %51, i64 %59, !dbg !207
  store i8* %60, i8** %7, align 8, !dbg !208
  br label %61

; <label>:61:                                     ; preds = %47, %37
  br label %25, !dbg !209, !llvm.loop !211

; <label>:62:                                     ; preds = %25
  %63 = load i32*, i32** %5, align 8, !dbg !212
  %64 = icmp ne i32* %63, null, !dbg !212
  br i1 %64, label %65, label %67, !dbg !214

; <label>:65:                                     ; preds = %62
  %66 = load i32*, i32** %5, align 8, !dbg !215
  store i32 1, i32* %66, align 4, !dbg !216
  br label %67, !dbg !217

; <label>:67:                                     ; preds = %65, %62
  %68 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !218
  %69 = call i8* @g_string_free(%struct._GString* %68, i32 0), !dbg !219
  store i8* %69, i8** %3, align 8, !dbg !220
  br label %70, !dbg !220

; <label>:70:                                     ; preds = %67, %17
  %71 = load i8*, i8** %3, align 8, !dbg !221
  ret i8* %71, !dbg !221
}

declare %struct._GRegex* @g_regex_new(i8*, i32, i32, %struct._GError**) #2

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define void @i_regex_unref(%struct._GRegex*) #0 !dbg !222 {
  %2 = alloca %struct._GRegex*, align 8
  store %struct._GRegex* %0, %struct._GRegex** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._GRegex** %2, metadata !225, metadata !99), !dbg !226
  %3 = load %struct._GRegex*, %struct._GRegex** %2, align 8, !dbg !227
  call void @g_regex_unref(%struct._GRegex* %3), !dbg !228
  ret void, !dbg !229
}

declare void @g_regex_unref(%struct._GRegex*) #2

; Function Attrs: nounwind uwtable
define i32 @i_regex_match(%struct._GRegex*, i8*, i32, %struct._MatchInfo**) #0 !dbg !230 {
  %5 = alloca %struct._GRegex*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._MatchInfo**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct._GRegex* %0, %struct._GRegex** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._GRegex** %5, metadata !236, metadata !99), !dbg !237
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !238, metadata !99), !dbg !239
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !240, metadata !99), !dbg !241
  store %struct._MatchInfo** %3, %struct._MatchInfo*** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._MatchInfo*** %8, metadata !242, metadata !99), !dbg !243
  call void @llvm.dbg.declare(metadata i32* %9, metadata !244, metadata !99), !dbg !245
  call void @llvm.dbg.declare(metadata i32* %10, metadata !246, metadata !99), !dbg !247
  call void @llvm.dbg.declare(metadata i8** %11, metadata !248, metadata !99), !dbg !249
  %12 = load i8*, i8** %6, align 8, !dbg !250
  %13 = call i8* @make_valid_utf8(i8* %12, i32* %10), !dbg !251
  store i8* %13, i8** %11, align 8, !dbg !249
  %14 = load %struct._MatchInfo**, %struct._MatchInfo*** %8, align 8, !dbg !252
  %15 = icmp ne %struct._MatchInfo** %14, null, !dbg !254
  br i1 %15, label %16, label %20, !dbg !255

; <label>:16:                                     ; preds = %4
  %17 = call noalias i8* @g_malloc0_n(i64 1, i64 16), !dbg !256
  %18 = bitcast i8* %17 to %struct._MatchInfo*, !dbg !257
  %19 = load %struct._MatchInfo**, %struct._MatchInfo*** %8, align 8, !dbg !258
  store %struct._MatchInfo* %18, %struct._MatchInfo** %19, align 8, !dbg !259
  br label %20, !dbg !260

; <label>:20:                                     ; preds = %16, %4
  %21 = load %struct._GRegex*, %struct._GRegex** %5, align 8, !dbg !261
  %22 = load i8*, i8** %11, align 8, !dbg !262
  %23 = load i32, i32* %7, align 4, !dbg !263
  %24 = load %struct._MatchInfo**, %struct._MatchInfo*** %8, align 8, !dbg !264
  %25 = icmp ne %struct._MatchInfo** %24, null, !dbg !265
  br i1 %25, label %26, label %30, !dbg !264

; <label>:26:                                     ; preds = %20
  %27 = load %struct._MatchInfo**, %struct._MatchInfo*** %8, align 8, !dbg !266
  %28 = load %struct._MatchInfo*, %struct._MatchInfo** %27, align 8, !dbg !268
  %29 = getelementptr inbounds %struct._MatchInfo, %struct._MatchInfo* %28, i32 0, i32 1, !dbg !269
  br label %31, !dbg !270

; <label>:30:                                     ; preds = %20
  br label %31, !dbg !271

; <label>:31:                                     ; preds = %30, %26
  %32 = phi %struct._GMatchInfo** [ %29, %26 ], [ null, %30 ], !dbg !273
  %33 = call i32 @g_regex_match(%struct._GRegex* %21, i8* %22, i32 %23, %struct._GMatchInfo** %32), !dbg !275
  store i32 %33, i32* %9, align 4, !dbg !276
  %34 = load i32, i32* %10, align 4, !dbg !277
  %35 = icmp ne i32 %34, 0, !dbg !277
  br i1 %35, label %36, label %47, !dbg !279

; <label>:36:                                     ; preds = %31
  %37 = load %struct._MatchInfo**, %struct._MatchInfo*** %8, align 8, !dbg !280
  %38 = icmp ne %struct._MatchInfo** %37, null, !dbg !283
  br i1 %38, label %39, label %44, !dbg !284

; <label>:39:                                     ; preds = %36
  %40 = load i8*, i8** %11, align 8, !dbg !285
  %41 = load %struct._MatchInfo**, %struct._MatchInfo*** %8, align 8, !dbg !286
  %42 = load %struct._MatchInfo*, %struct._MatchInfo** %41, align 8, !dbg !287
  %43 = getelementptr inbounds %struct._MatchInfo, %struct._MatchInfo* %42, i32 0, i32 0, !dbg !288
  store i8* %40, i8** %43, align 8, !dbg !289
  br label %46, !dbg !290

; <label>:44:                                     ; preds = %36
  %45 = load i8*, i8** %11, align 8, !dbg !291
  call void @g_free(i8* %45), !dbg !292
  br label %46

; <label>:46:                                     ; preds = %44, %39
  br label %47, !dbg !293

; <label>:47:                                     ; preds = %46, %31
  %48 = load i32, i32* %9, align 4, !dbg !294
  ret i32 %48, !dbg !295
}

declare noalias i8* @g_malloc0_n(i64, i64) #2

declare i32 @g_regex_match(%struct._GRegex*, i8*, i32, %struct._GMatchInfo**) #2

; Function Attrs: nounwind uwtable
define i32 @i_match_info_fetch_pos(%struct._MatchInfo*, i32, i32*, i32*) #0 !dbg !296 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._MatchInfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct._MatchInfo* %0, %struct._MatchInfo** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._MatchInfo** %6, metadata !302, metadata !99), !dbg !303
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !304, metadata !99), !dbg !305
  store i32* %2, i32** %8, align 8
  call void @llvm.dbg.declare(metadata i32** %8, metadata !306, metadata !99), !dbg !307
  store i32* %3, i32** %9, align 8
  call void @llvm.dbg.declare(metadata i32** %9, metadata !308, metadata !99), !dbg !309
  call void @llvm.dbg.declare(metadata i32* %10, metadata !310, metadata !99), !dbg !311
  call void @llvm.dbg.declare(metadata i32* %11, metadata !312, metadata !99), !dbg !313
  call void @llvm.dbg.declare(metadata i32* %12, metadata !314, metadata !99), !dbg !315
  call void @llvm.dbg.declare(metadata i32* %13, metadata !316, metadata !99), !dbg !317
  %17 = load %struct._MatchInfo*, %struct._MatchInfo** %6, align 8, !dbg !318
  %18 = getelementptr inbounds %struct._MatchInfo, %struct._MatchInfo* %17, i32 0, i32 0, !dbg !320
  %19 = load i8*, i8** %18, align 8, !dbg !320
  %20 = icmp ne i8* %19, null, !dbg !318
  br i1 %20, label %21, label %27, !dbg !321

; <label>:21:                                     ; preds = %4
  %22 = load i32*, i32** %8, align 8, !dbg !322
  %23 = icmp ne i32* %22, null, !dbg !322
  br i1 %23, label %35, label %24, !dbg !324

; <label>:24:                                     ; preds = %21
  %25 = load i32*, i32** %9, align 8, !dbg !325
  %26 = icmp ne i32* %25, null, !dbg !325
  br i1 %26, label %35, label %27, !dbg !327

; <label>:27:                                     ; preds = %24, %4
  %28 = load %struct._MatchInfo*, %struct._MatchInfo** %6, align 8, !dbg !328
  %29 = getelementptr inbounds %struct._MatchInfo, %struct._MatchInfo* %28, i32 0, i32 1, !dbg !329
  %30 = load %struct._GMatchInfo*, %struct._GMatchInfo** %29, align 8, !dbg !329
  %31 = load i32, i32* %7, align 4, !dbg !330
  %32 = load i32*, i32** %8, align 8, !dbg !331
  %33 = load i32*, i32** %9, align 8, !dbg !332
  %34 = call i32 @g_match_info_fetch_pos(%struct._GMatchInfo* %30, i32 %31, i32* %32, i32* %33), !dbg !333
  store i32 %34, i32* %5, align 4, !dbg !334
  br label %87, !dbg !334

; <label>:35:                                     ; preds = %24, %21
  %36 = load %struct._MatchInfo*, %struct._MatchInfo** %6, align 8, !dbg !335
  %37 = getelementptr inbounds %struct._MatchInfo, %struct._MatchInfo* %36, i32 0, i32 1, !dbg !336
  %38 = load %struct._GMatchInfo*, %struct._GMatchInfo** %37, align 8, !dbg !336
  %39 = load i32, i32* %7, align 4, !dbg !337
  %40 = call i32 @g_match_info_fetch_pos(%struct._GMatchInfo* %38, i32 %39, i32* %10, i32* %11), !dbg !338
  store i32 %40, i32* %13, align 4, !dbg !339
  %41 = load i32*, i32** %8, align 8, !dbg !340
  %42 = icmp ne i32* %41, null, !dbg !340
  br i1 %42, label %46, label %43, !dbg !342

; <label>:43:                                     ; preds = %35
  %44 = load i32*, i32** %9, align 8, !dbg !343
  %45 = icmp ne i32* %44, null, !dbg !343
  br i1 %45, label %46, label %85, !dbg !345

; <label>:46:                                     ; preds = %43, %35
  call void @llvm.dbg.declare(metadata i8** %14, metadata !346, metadata !99), !dbg !348
  %47 = load %struct._MatchInfo*, %struct._MatchInfo** %6, align 8, !dbg !349
  %48 = getelementptr inbounds %struct._MatchInfo, %struct._MatchInfo* %47, i32 0, i32 0, !dbg !350
  %49 = load i8*, i8** %48, align 8, !dbg !350
  store i8* %49, i8** %14, align 8, !dbg !348
  call void @llvm.dbg.declare(metadata i8** %15, metadata !351, metadata !99), !dbg !352
  %50 = load i8*, i8** %14, align 8, !dbg !353
  %51 = load i32, i32* %10, align 4, !dbg !354
  %52 = sext i32 %51 to i64, !dbg !354
  %53 = call noalias i8* @g_strndup(i8* %50, i64 %52), !dbg !355
  store i8* %53, i8** %15, align 8, !dbg !352
  %54 = load i8*, i8** %15, align 8, !dbg !356
  %55 = call i64 @strlen_pua_oddly(i8* %54), !dbg !357
  %56 = trunc i64 %55 to i32, !dbg !357
  store i32 %56, i32* %12, align 4, !dbg !358
  %57 = load i8*, i8** %15, align 8, !dbg !359
  call void @g_free(i8* %57), !dbg !360
  %58 = load i32*, i32** %8, align 8, !dbg !361
  %59 = icmp ne i32* %58, null, !dbg !361
  br i1 %59, label %60, label %63, !dbg !363

; <label>:60:                                     ; preds = %46
  %61 = load i32, i32* %12, align 4, !dbg !364
  %62 = load i32*, i32** %8, align 8, !dbg !365
  store i32 %61, i32* %62, align 4, !dbg !366
  br label %63, !dbg !367

; <label>:63:                                     ; preds = %60, %46
  %64 = load i32*, i32** %9, align 8, !dbg !368
  %65 = icmp ne i32* %64, null, !dbg !368
  br i1 %65, label %66, label %84, !dbg !370

; <label>:66:                                     ; preds = %63
  call void @llvm.dbg.declare(metadata i8** %16, metadata !371, metadata !99), !dbg !373
  %67 = load i8*, i8** %14, align 8, !dbg !374
  %68 = load i32, i32* %10, align 4, !dbg !375
  %69 = sext i32 %68 to i64, !dbg !376
  %70 = getelementptr inbounds i8, i8* %67, i64 %69, !dbg !376
  %71 = load i32, i32* %11, align 4, !dbg !377
  %72 = load i32, i32* %10, align 4, !dbg !378
  %73 = sub nsw i32 %71, %72, !dbg !379
  %74 = sext i32 %73 to i64, !dbg !377
  %75 = call noalias i8* @g_strndup(i8* %70, i64 %74), !dbg !380
  store i8* %75, i8** %16, align 8, !dbg !373
  %76 = load i32, i32* %12, align 4, !dbg !381
  %77 = sext i32 %76 to i64, !dbg !381
  %78 = load i8*, i8** %16, align 8, !dbg !382
  %79 = call i64 @strlen_pua_oddly(i8* %78), !dbg !383
  %80 = add i64 %77, %79, !dbg !384
  %81 = trunc i64 %80 to i32, !dbg !381
  %82 = load i32*, i32** %9, align 8, !dbg !385
  store i32 %81, i32* %82, align 4, !dbg !386
  %83 = load i8*, i8** %16, align 8, !dbg !387
  call void @g_free(i8* %83), !dbg !388
  br label %84, !dbg !389

; <label>:84:                                     ; preds = %66, %63
  br label %85, !dbg !390

; <label>:85:                                     ; preds = %84, %43
  %86 = load i32, i32* %13, align 4, !dbg !391
  store i32 %86, i32* %5, align 4, !dbg !392
  br label %87, !dbg !392

; <label>:87:                                     ; preds = %85, %27
  %88 = load i32, i32* %5, align 4, !dbg !393
  ret i32 %88, !dbg !393
}

declare i32 @g_match_info_fetch_pos(%struct._GMatchInfo*, i32, i32*, i32*) #2

declare noalias i8* @g_strndup(i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal i64 @strlen_pua_oddly(i8*) #0 !dbg !394 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !397, metadata !99), !dbg !398
  call void @llvm.dbg.declare(metadata i8** %3, metadata !399, metadata !99), !dbg !400
  call void @llvm.dbg.declare(metadata i64* %4, metadata !401, metadata !99), !dbg !402
  store i64 0, i64* %4, align 8, !dbg !402
  %7 = load i8*, i8** %2, align 8, !dbg !403
  store i8* %7, i8** %3, align 8, !dbg !404
  br label %8, !dbg !405

; <label>:8:                                      ; preds = %40, %1
  %9 = load i8*, i8** %3, align 8, !dbg !406
  %10 = load i8, i8* %9, align 1, !dbg !408
  %11 = icmp ne i8 %10, 0, !dbg !409
  br i1 %11, label %12, label %41, !dbg !409

; <label>:12:                                     ; preds = %8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !410, metadata !99), !dbg !412
  call void @llvm.dbg.declare(metadata i32* %6, metadata !413, metadata !99), !dbg !414
  %13 = load i8*, i8** %3, align 8, !dbg !415
  %14 = call i32 @g_utf8_get_char(i8* %13) #4, !dbg !416
  store i32 %14, i32* %6, align 4, !dbg !414
  %15 = load i8*, i8** %3, align 8, !dbg !417
  store i8* %15, i8** %5, align 8, !dbg !418
  %16 = load i8*, i8** %3, align 8, !dbg !419
  %17 = load i8*, i8** %3, align 8, !dbg !420
  %18 = load i8, i8* %17, align 1, !dbg !421
  %19 = zext i8 %18 to i64, !dbg !422
  %20 = load i8*, i8** @g_utf8_skip, align 8, !dbg !422
  %21 = getelementptr inbounds i8, i8* %20, i64 %19, !dbg !422
  %22 = load i8, i8* %21, align 1, !dbg !422
  %23 = sext i8 %22 to i32, !dbg !422
  %24 = sext i32 %23 to i64, !dbg !423
  %25 = getelementptr inbounds i8, i8* %16, i64 %24, !dbg !423
  store i8* %25, i8** %3, align 8, !dbg !424
  %26 = load i32, i32* %6, align 4, !dbg !425
  %27 = and i32 %26, 1048320, !dbg !427
  %28 = icmp eq i32 %27, 1048320, !dbg !428
  br i1 %28, label %29, label %32, !dbg !429

; <label>:29:                                     ; preds = %12
  %30 = load i64, i64* %4, align 8, !dbg !430
  %31 = add i64 %30, 1, !dbg !430
  store i64 %31, i64* %4, align 8, !dbg !430
  br label %40, !dbg !431

; <label>:32:                                     ; preds = %12
  %33 = load i8*, i8** %3, align 8, !dbg !432
  %34 = load i8*, i8** %5, align 8, !dbg !433
  %35 = ptrtoint i8* %33 to i64, !dbg !434
  %36 = ptrtoint i8* %34 to i64, !dbg !434
  %37 = sub i64 %35, %36, !dbg !434
  %38 = load i64, i64* %4, align 8, !dbg !435
  %39 = add i64 %38, %37, !dbg !435
  store i64 %39, i64* %4, align 8, !dbg !435
  br label %40

; <label>:40:                                     ; preds = %32, %29
  br label %8, !dbg !436, !llvm.loop !438

; <label>:41:                                     ; preds = %8
  %42 = load i64, i64* %4, align 8, !dbg !439
  ret i64 %42, !dbg !440
}

; Function Attrs: nounwind uwtable
define i32 @i_match_info_matches(%struct._MatchInfo*) #0 !dbg !441 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._MatchInfo*, align 8
  store %struct._MatchInfo* %0, %struct._MatchInfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._MatchInfo** %3, metadata !444, metadata !99), !dbg !445
  br label %4, !dbg !446, !llvm.loop !447

; <label>:4:                                      ; preds = %1
  %5 = load %struct._MatchInfo*, %struct._MatchInfo** %3, align 8, !dbg !448
  %6 = icmp ne %struct._MatchInfo* %5, null, !dbg !452
  br i1 %6, label %7, label %8, !dbg !448

; <label>:7:                                      ; preds = %4
  br label %9, !dbg !453

; <label>:8:                                      ; preds = %4
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.i_match_info_matches, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0)), !dbg !456
  store i32 0, i32* %2, align 4, !dbg !459
  br label %15, !dbg !459

; <label>:9:                                      ; preds = %7
  br label %10, !dbg !460

; <label>:10:                                     ; preds = %9
  %11 = load %struct._MatchInfo*, %struct._MatchInfo** %3, align 8, !dbg !462
  %12 = getelementptr inbounds %struct._MatchInfo, %struct._MatchInfo* %11, i32 0, i32 1, !dbg !463
  %13 = load %struct._GMatchInfo*, %struct._GMatchInfo** %12, align 8, !dbg !463
  %14 = call i32 @g_match_info_matches(%struct._GMatchInfo* %13), !dbg !464
  store i32 %14, i32* %2, align 4, !dbg !465
  br label %15, !dbg !465

; <label>:15:                                     ; preds = %10, %8
  %16 = load i32, i32* %2, align 4, !dbg !466
  ret i32 %16, !dbg !466
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare i32 @g_match_info_matches(%struct._GMatchInfo*) #2

; Function Attrs: nounwind uwtable
define void @i_match_info_free(%struct._MatchInfo*) #0 !dbg !467 {
  %2 = alloca %struct._MatchInfo*, align 8
  store %struct._MatchInfo* %0, %struct._MatchInfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._MatchInfo** %2, metadata !470, metadata !99), !dbg !471
  %3 = load %struct._MatchInfo*, %struct._MatchInfo** %2, align 8, !dbg !472
  %4 = getelementptr inbounds %struct._MatchInfo, %struct._MatchInfo* %3, i32 0, i32 1, !dbg !473
  %5 = load %struct._GMatchInfo*, %struct._GMatchInfo** %4, align 8, !dbg !473
  call void @g_match_info_free(%struct._GMatchInfo* %5), !dbg !474
  %6 = load %struct._MatchInfo*, %struct._MatchInfo** %2, align 8, !dbg !475
  %7 = bitcast %struct._MatchInfo* %6 to i8*, !dbg !475
  call void @g_free(i8* %7), !dbg !476
  ret void, !dbg !477
}

declare void @g_match_info_free(%struct._GMatchInfo*) #2

declare i32 @g_utf8_validate(i8*, i64, i8**) #2

declare %struct._GString* @g_string_sized_new(i64) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind readonly
declare i32 @g_utf8_get_char_validated(i8*, i64) #3

declare %struct._GString* @g_string_append_unichar(%struct._GString*, i32) #2

declare i8* @g_string_free(%struct._GString*, i32) #2

; Function Attrs: nounwind readonly
declare i32 @g_utf8_get_char(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!70, !71}
!llvm.ident = !{!72}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !41)
!1 = !DIFile(filename: "line91-iregex-gregex.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !24}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 297, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/glib-2.0/glib/gregex.h", directory: "/home/lichi/Desktop/irssi/task1")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23}
!6 = !DIEnumerator(name: "G_REGEX_CASELESS", value: 1)
!7 = !DIEnumerator(name: "G_REGEX_MULTILINE", value: 2)
!8 = !DIEnumerator(name: "G_REGEX_DOTALL", value: 4)
!9 = !DIEnumerator(name: "G_REGEX_EXTENDED", value: 8)
!10 = !DIEnumerator(name: "G_REGEX_ANCHORED", value: 16)
!11 = !DIEnumerator(name: "G_REGEX_DOLLAR_ENDONLY", value: 32)
!12 = !DIEnumerator(name: "G_REGEX_UNGREEDY", value: 512)
!13 = !DIEnumerator(name: "G_REGEX_RAW", value: 2048)
!14 = !DIEnumerator(name: "G_REGEX_NO_AUTO_CAPTURE", value: 4096)
!15 = !DIEnumerator(name: "G_REGEX_OPTIMIZE", value: 8192)
!16 = !DIEnumerator(name: "G_REGEX_FIRSTLINE", value: 262144)
!17 = !DIEnumerator(name: "G_REGEX_DUPNAMES", value: 524288)
!18 = !DIEnumerator(name: "G_REGEX_NEWLINE_CR", value: 1048576)
!19 = !DIEnumerator(name: "G_REGEX_NEWLINE_LF", value: 2097152)
!20 = !DIEnumerator(name: "G_REGEX_NEWLINE_CRLF", value: 3145728)
!21 = !DIEnumerator(name: "G_REGEX_NEWLINE_ANYCRLF", value: 5242880)
!22 = !DIEnumerator(name: "G_REGEX_BSR_ANYCRLF", value: 8388608)
!23 = !DIEnumerator(name: "G_REGEX_JAVASCRIPT_COMPAT", value: 33554432)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 387, size: 32, align: 32, elements: !25)
!25 = !{!26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40}
!26 = !DIEnumerator(name: "G_REGEX_MATCH_ANCHORED", value: 16)
!27 = !DIEnumerator(name: "G_REGEX_MATCH_NOTBOL", value: 128)
!28 = !DIEnumerator(name: "G_REGEX_MATCH_NOTEOL", value: 256)
!29 = !DIEnumerator(name: "G_REGEX_MATCH_NOTEMPTY", value: 1024)
!30 = !DIEnumerator(name: "G_REGEX_MATCH_PARTIAL", value: 32768)
!31 = !DIEnumerator(name: "G_REGEX_MATCH_NEWLINE_CR", value: 1048576)
!32 = !DIEnumerator(name: "G_REGEX_MATCH_NEWLINE_LF", value: 2097152)
!33 = !DIEnumerator(name: "G_REGEX_MATCH_NEWLINE_CRLF", value: 3145728)
!34 = !DIEnumerator(name: "G_REGEX_MATCH_NEWLINE_ANY", value: 4194304)
!35 = !DIEnumerator(name: "G_REGEX_MATCH_NEWLINE_ANYCRLF", value: 5242880)
!36 = !DIEnumerator(name: "G_REGEX_MATCH_BSR_ANYCRLF", value: 8388608)
!37 = !DIEnumerator(name: "G_REGEX_MATCH_BSR_ANY", value: 16777216)
!38 = !DIEnumerator(name: "G_REGEX_MATCH_PARTIAL_SOFT", value: 32768)
!39 = !DIEnumerator(name: "G_REGEX_MATCH_PARTIAL_HARD", value: 134217728)
!40 = !DIEnumerator(name: "G_REGEX_MATCH_NOTEMPTY_ATSTART", value: 268435456)
!41 = !{!42, !46, !47, !54, !60, !65, !66}
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !44, line: 46, baseType: !45)
!44 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!45 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "MatchInfo", file: !49, line: 10, baseType: !50)
!49 = !DIFile(filename: "iregex.h", directory: "/home/lichi/Desktop/irssi/task1")
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_MatchInfo", file: !51, line: 5, size: 128, align: 64, elements: !52)
!51 = !DIFile(filename: "iregex-gregex.c", directory: "/home/lichi/Desktop/irssi/task1")
!52 = !{!53, !56}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "valid_string", scope: !50, file: !51, line: 6, baseType: !54, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "g_match_info", scope: !50, file: !51, line: 7, baseType: !57, size: 64, align: 64, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMatchInfo", file: !4, line: 423, baseType: !59)
!59 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMatchInfo", file: !4, line: 423, flags: DIFlagFwdDecl)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "gunichar", file: !61, line: 60, baseType: !62)
!61 = !DIFile(filename: "/usr/include/glib-2.0/glib/gunicode.h", directory: "/home/lichi/Desktop/irssi/task1")
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !63, line: 45, baseType: !64)
!63 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!64 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "guchar", file: !44, line: 52, baseType: !69)
!69 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!70 = !{i32 2, !"Dwarf Version", i32 4}
!71 = !{i32 2, !"Debug Info Version", i32 3}
!72 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!73 = distinct !DISubprogram(name: "i_regex_new", scope: !51, file: !51, line: 43, type: !74, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !97)
!74 = !DISubroutineType(types: !75)
!75 = !{!76, !80, !82, !83, !84}
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, align: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "Regex", file: !49, line: 9, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "GRegex", file: !4, line: 414, baseType: !79)
!79 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GRegex", file: !4, line: 414, flags: DIFlagFwdDecl)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "GRegexCompileFlags", file: !4, line: 317, baseType: !3)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "GRegexMatchFlags", file: !4, line: 404, baseType: !24)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !87, line: 42, baseType: !88)
!87 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !87, line: 44, size: 128, align: 64, elements: !89)
!89 = !{!90, !93, !96}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !88, file: !87, line: 46, baseType: !91, size: 32, align: 32)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !92, line: 36, baseType: !62)
!92 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!93 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !88, file: !87, line: 47, baseType: !94, size: 32, align: 32, offset: 32)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !44, line: 49, baseType: !95)
!95 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !88, file: !87, line: 48, baseType: !42, size: 64, align: 64, offset: 64)
!97 = !{}
!98 = !DILocalVariable(name: "pattern", arg: 1, scope: !73, file: !51, line: 43, type: !80)
!99 = !DIExpression()
!100 = !DILocation(line: 43, column: 27, scope: !73)
!101 = !DILocalVariable(name: "compile_options", arg: 2, scope: !73, file: !51, line: 44, type: !82)
!102 = !DILocation(line: 44, column: 33, scope: !73)
!103 = !DILocalVariable(name: "match_options", arg: 3, scope: !73, file: !51, line: 45, type: !83)
!104 = !DILocation(line: 45, column: 31, scope: !73)
!105 = !DILocalVariable(name: "error", arg: 4, scope: !73, file: !51, line: 46, type: !84)
!106 = !DILocation(line: 46, column: 23, scope: !73)
!107 = !DILocalVariable(name: "valid_pattern", scope: !73, file: !51, line: 48, type: !80)
!108 = !DILocation(line: 48, column: 15, scope: !73)
!109 = !DILocalVariable(name: "free_valid_pattern", scope: !73, file: !51, line: 49, type: !110)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !44, line: 50, baseType: !94)
!111 = !DILocation(line: 49, column: 11, scope: !73)
!112 = !DILocalVariable(name: "ret", scope: !73, file: !51, line: 50, type: !76)
!113 = !DILocation(line: 50, column: 9, scope: !73)
!114 = !DILocation(line: 52, column: 34, scope: !73)
!115 = !DILocation(line: 52, column: 18, scope: !73)
!116 = !DILocation(line: 52, column: 16, scope: !73)
!117 = !DILocation(line: 53, column: 20, scope: !73)
!118 = !DILocation(line: 53, column: 35, scope: !73)
!119 = !DILocation(line: 53, column: 52, scope: !73)
!120 = !DILocation(line: 53, column: 67, scope: !73)
!121 = !DILocation(line: 53, column: 8, scope: !73)
!122 = !DILocation(line: 53, column: 6, scope: !73)
!123 = !DILocation(line: 55, column: 6, scope: !124)
!124 = distinct !DILexicalBlock(scope: !73, file: !51, line: 55, column: 6)
!125 = !DILocation(line: 55, column: 6, scope: !73)
!126 = !DILocation(line: 56, column: 19, scope: !124)
!127 = !DILocation(line: 56, column: 3, scope: !124)
!128 = !DILocation(line: 58, column: 9, scope: !73)
!129 = !DILocation(line: 58, column: 2, scope: !73)
!130 = distinct !DISubprogram(name: "make_valid_utf8", scope: !51, file: !51, line: 11, type: !131, isLocal: true, isDefinition: true, scopeLine: 12, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !97)
!131 = !DISubroutineType(types: !132)
!132 = !{!80, !80, !133}
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!134 = !DILocalVariable(name: "text", arg: 1, scope: !130, file: !51, line: 11, type: !80)
!135 = !DILocation(line: 11, column: 30, scope: !130)
!136 = !DILocalVariable(name: "free_ret", arg: 2, scope: !130, file: !51, line: 11, type: !133)
!137 = !DILocation(line: 11, column: 46, scope: !130)
!138 = !DILocalVariable(name: "str", scope: !130, file: !51, line: 13, type: !139)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !141, line: 39, baseType: !142)
!141 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !141, line: 41, size: 192, align: 64, elements: !143)
!143 = !{!144, !145, !148}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !142, file: !141, line: 43, baseType: !42, size: 64, align: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !142, file: !141, line: 44, baseType: !146, size: 64, align: 64, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !63, line: 66, baseType: !147)
!147 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !142, file: !141, line: 45, baseType: !146, size: 64, align: 64, offset: 128)
!149 = !DILocation(line: 13, column: 11, scope: !130)
!150 = !DILocalVariable(name: "ptr", scope: !130, file: !51, line: 14, type: !80)
!151 = !DILocation(line: 14, column: 15, scope: !130)
!152 = !DILocation(line: 15, column: 22, scope: !153)
!153 = distinct !DILexicalBlock(scope: !130, file: !51, line: 15, column: 6)
!154 = !DILocation(line: 15, column: 6, scope: !153)
!155 = !DILocation(line: 15, column: 6, scope: !130)
!156 = !DILocation(line: 16, column: 7, scope: !157)
!157 = distinct !DILexicalBlock(scope: !158, file: !51, line: 16, column: 7)
!158 = distinct !DILexicalBlock(scope: !153, file: !51, line: 15, column: 38)
!159 = !DILocation(line: 16, column: 7, scope: !158)
!160 = !DILocation(line: 17, column: 5, scope: !157)
!161 = !DILocation(line: 17, column: 14, scope: !157)
!162 = !DILocation(line: 17, column: 4, scope: !157)
!163 = !DILocation(line: 18, column: 10, scope: !158)
!164 = !DILocation(line: 18, column: 3, scope: !158)
!165 = !DILocation(line: 21, column: 34, scope: !130)
!166 = !DILocation(line: 21, column: 27, scope: !130)
!167 = !DILocation(line: 21, column: 40, scope: !130)
!168 = !DILocation(line: 21, column: 8, scope: !169)
!169 = !DILexicalBlockFile(scope: !130, file: !51, discriminator: 1)
!170 = !DILocation(line: 21, column: 6, scope: !130)
!171 = !DILocation(line: 23, column: 8, scope: !130)
!172 = !DILocation(line: 23, column: 6, scope: !130)
!173 = !DILocation(line: 24, column: 2, scope: !130)
!174 = !DILocation(line: 24, column: 10, scope: !169)
!175 = !DILocation(line: 24, column: 9, scope: !169)
!176 = !DILocation(line: 24, column: 2, scope: !169)
!177 = !DILocalVariable(name: "c", scope: !178, file: !51, line: 25, type: !60)
!178 = distinct !DILexicalBlock(scope: !130, file: !51, line: 24, column: 15)
!179 = !DILocation(line: 25, column: 12, scope: !178)
!180 = !DILocation(line: 25, column: 42, scope: !178)
!181 = !DILocation(line: 25, column: 16, scope: !178)
!182 = !DILocation(line: 27, column: 7, scope: !183)
!183 = distinct !DILexicalBlock(scope: !178, file: !51, line: 27, column: 7)
!184 = !DILocation(line: 27, column: 9, scope: !183)
!185 = !DILocation(line: 27, column: 25, scope: !183)
!186 = !DILocation(line: 27, column: 28, scope: !187)
!187 = !DILexicalBlockFile(scope: !183, file: !51, discriminator: 1)
!188 = !DILocation(line: 27, column: 30, scope: !187)
!189 = !DILocation(line: 27, column: 7, scope: !187)
!190 = !DILocation(line: 29, column: 28, scope: !191)
!191 = distinct !DILexicalBlock(scope: !183, file: !51, line: 27, column: 47)
!192 = !DILocation(line: 29, column: 57, scope: !191)
!193 = !DILocation(line: 29, column: 56, scope: !191)
!194 = !DILocation(line: 29, column: 61, scope: !191)
!195 = !DILocation(line: 29, column: 53, scope: !191)
!196 = !DILocation(line: 29, column: 4, scope: !191)
!197 = !DILocation(line: 30, column: 7, scope: !191)
!198 = !DILocation(line: 31, column: 3, scope: !191)
!199 = !DILocation(line: 32, column: 28, scope: !200)
!200 = distinct !DILexicalBlock(scope: !183, file: !51, line: 31, column: 10)
!201 = !DILocation(line: 32, column: 33, scope: !200)
!202 = !DILocation(line: 32, column: 4, scope: !200)
!203 = !DILocation(line: 33, column: 20, scope: !200)
!204 = !DILocation(line: 33, column: 57, scope: !200)
!205 = !DILocation(line: 33, column: 39, scope: !200)
!206 = !DILocation(line: 33, column: 27, scope: !200)
!207 = !DILocation(line: 33, column: 25, scope: !200)
!208 = !DILocation(line: 33, column: 8, scope: !200)
!209 = !DILocation(line: 24, column: 2, scope: !210)
!210 = !DILexicalBlockFile(scope: !130, file: !51, discriminator: 2)
!211 = distinct !{!211, !173}
!212 = !DILocation(line: 37, column: 6, scope: !213)
!213 = distinct !DILexicalBlock(scope: !130, file: !51, line: 37, column: 6)
!214 = !DILocation(line: 37, column: 6, scope: !130)
!215 = !DILocation(line: 38, column: 4, scope: !213)
!216 = !DILocation(line: 38, column: 13, scope: !213)
!217 = !DILocation(line: 38, column: 3, scope: !213)
!218 = !DILocation(line: 39, column: 23, scope: !130)
!219 = !DILocation(line: 39, column: 9, scope: !130)
!220 = !DILocation(line: 39, column: 2, scope: !130)
!221 = !DILocation(line: 40, column: 1, scope: !130)
!222 = distinct !DISubprogram(name: "i_regex_unref", scope: !51, file: !51, line: 62, type: !223, isLocal: false, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !97)
!223 = !DISubroutineType(types: !224)
!224 = !{null, !76}
!225 = !DILocalVariable(name: "regex", arg: 1, scope: !222, file: !51, line: 62, type: !76)
!226 = !DILocation(line: 62, column: 23, scope: !222)
!227 = !DILocation(line: 64, column: 16, scope: !222)
!228 = !DILocation(line: 64, column: 2, scope: !222)
!229 = !DILocation(line: 65, column: 1, scope: !222)
!230 = distinct !DISubprogram(name: "i_regex_match", scope: !51, file: !51, line: 68, type: !231, isLocal: false, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !97)
!231 = !DISubroutineType(types: !232)
!232 = !{!110, !233, !80, !83, !235}
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64, align: 64)
!234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!236 = !DILocalVariable(name: "regex", arg: 1, scope: !230, file: !51, line: 68, type: !233)
!237 = !DILocation(line: 68, column: 29, scope: !230)
!238 = !DILocalVariable(name: "string", arg: 2, scope: !230, file: !51, line: 69, type: !80)
!239 = !DILocation(line: 69, column: 29, scope: !230)
!240 = !DILocalVariable(name: "match_options", arg: 3, scope: !230, file: !51, line: 70, type: !83)
!241 = !DILocation(line: 70, column: 33, scope: !230)
!242 = !DILocalVariable(name: "match_info", arg: 4, scope: !230, file: !51, line: 71, type: !235)
!243 = !DILocation(line: 71, column: 28, scope: !230)
!244 = !DILocalVariable(name: "ret", scope: !230, file: !51, line: 73, type: !110)
!245 = !DILocation(line: 73, column: 11, scope: !230)
!246 = !DILocalVariable(name: "free_valid_string", scope: !230, file: !51, line: 74, type: !110)
!247 = !DILocation(line: 74, column: 11, scope: !230)
!248 = !DILocalVariable(name: "valid_string", scope: !230, file: !51, line: 75, type: !80)
!249 = !DILocation(line: 75, column: 15, scope: !230)
!250 = !DILocation(line: 75, column: 46, scope: !230)
!251 = !DILocation(line: 75, column: 30, scope: !230)
!252 = !DILocation(line: 77, column: 6, scope: !253)
!253 = distinct !DILexicalBlock(scope: !230, file: !51, line: 77, column: 6)
!254 = !DILocation(line: 77, column: 17, scope: !253)
!255 = !DILocation(line: 77, column: 6, scope: !230)
!256 = !DILocation(line: 78, column: 32, scope: !253)
!257 = !DILocation(line: 78, column: 18, scope: !253)
!258 = !DILocation(line: 78, column: 4, scope: !253)
!259 = !DILocation(line: 78, column: 15, scope: !253)
!260 = !DILocation(line: 78, column: 3, scope: !253)
!261 = !DILocation(line: 80, column: 22, scope: !230)
!262 = !DILocation(line: 80, column: 29, scope: !230)
!263 = !DILocation(line: 80, column: 43, scope: !230)
!264 = !DILocation(line: 81, column: 8, scope: !230)
!265 = !DILocation(line: 81, column: 19, scope: !230)
!266 = !DILocation(line: 81, column: 31, scope: !267)
!267 = !DILexicalBlockFile(scope: !230, file: !51, discriminator: 1)
!268 = !DILocation(line: 81, column: 30, scope: !267)
!269 = !DILocation(line: 81, column: 44, scope: !267)
!270 = !DILocation(line: 81, column: 8, scope: !267)
!271 = !DILocation(line: 81, column: 8, scope: !272)
!272 = !DILexicalBlockFile(scope: !230, file: !51, discriminator: 2)
!273 = !DILocation(line: 81, column: 8, scope: !274)
!274 = !DILexicalBlockFile(scope: !230, file: !51, discriminator: 3)
!275 = !DILocation(line: 80, column: 8, scope: !267)
!276 = !DILocation(line: 80, column: 6, scope: !267)
!277 = !DILocation(line: 83, column: 6, scope: !278)
!278 = distinct !DILexicalBlock(scope: !230, file: !51, line: 83, column: 6)
!279 = !DILocation(line: 83, column: 6, scope: !230)
!280 = !DILocation(line: 84, column: 7, scope: !281)
!281 = distinct !DILexicalBlock(scope: !282, file: !51, line: 84, column: 7)
!282 = distinct !DILexicalBlock(scope: !278, file: !51, line: 83, column: 25)
!283 = !DILocation(line: 84, column: 18, scope: !281)
!284 = !DILocation(line: 84, column: 7, scope: !282)
!285 = !DILocation(line: 85, column: 34, scope: !281)
!286 = !DILocation(line: 85, column: 6, scope: !281)
!287 = !DILocation(line: 85, column: 5, scope: !281)
!288 = !DILocation(line: 85, column: 19, scope: !281)
!289 = !DILocation(line: 85, column: 32, scope: !281)
!290 = !DILocation(line: 85, column: 4, scope: !281)
!291 = !DILocation(line: 87, column: 20, scope: !281)
!292 = !DILocation(line: 87, column: 4, scope: !281)
!293 = !DILocation(line: 88, column: 2, scope: !282)
!294 = !DILocation(line: 90, column: 9, scope: !230)
!295 = !DILocation(line: 90, column: 2, scope: !230)
!296 = distinct !DISubprogram(name: "i_match_info_fetch_pos", scope: !51, file: !51, line: 120, type: !297, isLocal: false, isDefinition: true, scopeLine: 124, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !97)
!297 = !DISubroutineType(types: !298)
!298 = !{!110, !299, !94, !301, !301}
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!302 = !DILocalVariable(name: "match_info", arg: 1, scope: !296, file: !51, line: 120, type: !299)
!303 = !DILocation(line: 120, column: 42, scope: !296)
!304 = !DILocalVariable(name: "match_num", arg: 2, scope: !296, file: !51, line: 121, type: !94)
!305 = !DILocation(line: 121, column: 30, scope: !296)
!306 = !DILocalVariable(name: "start_pos", arg: 3, scope: !296, file: !51, line: 122, type: !301)
!307 = !DILocation(line: 122, column: 31, scope: !296)
!308 = !DILocalVariable(name: "end_pos", arg: 4, scope: !296, file: !51, line: 123, type: !301)
!309 = !DILocation(line: 123, column: 31, scope: !296)
!310 = !DILocalVariable(name: "tmp_start", scope: !296, file: !51, line: 125, type: !94)
!311 = !DILocation(line: 125, column: 7, scope: !296)
!312 = !DILocalVariable(name: "tmp_end", scope: !296, file: !51, line: 125, type: !94)
!313 = !DILocation(line: 125, column: 18, scope: !296)
!314 = !DILocalVariable(name: "new_start_pos", scope: !296, file: !51, line: 125, type: !94)
!315 = !DILocation(line: 125, column: 27, scope: !296)
!316 = !DILocalVariable(name: "ret", scope: !296, file: !51, line: 126, type: !110)
!317 = !DILocation(line: 126, column: 11, scope: !296)
!318 = !DILocation(line: 128, column: 7, scope: !319)
!319 = distinct !DILexicalBlock(scope: !296, file: !51, line: 128, column: 6)
!320 = !DILocation(line: 128, column: 19, scope: !319)
!321 = !DILocation(line: 128, column: 32, scope: !319)
!322 = !DILocation(line: 128, column: 37, scope: !323)
!323 = !DILexicalBlockFile(scope: !319, file: !51, discriminator: 1)
!324 = !DILocation(line: 128, column: 47, scope: !323)
!325 = !DILocation(line: 128, column: 51, scope: !326)
!326 = !DILexicalBlockFile(scope: !319, file: !51, discriminator: 2)
!327 = !DILocation(line: 128, column: 6, scope: !326)
!328 = !DILocation(line: 129, column: 33, scope: !319)
!329 = !DILocation(line: 129, column: 45, scope: !319)
!330 = !DILocation(line: 130, column: 12, scope: !319)
!331 = !DILocation(line: 130, column: 23, scope: !319)
!332 = !DILocation(line: 130, column: 34, scope: !319)
!333 = !DILocation(line: 129, column: 10, scope: !319)
!334 = !DILocation(line: 129, column: 3, scope: !319)
!335 = !DILocation(line: 132, column: 31, scope: !296)
!336 = !DILocation(line: 132, column: 43, scope: !296)
!337 = !DILocation(line: 133, column: 10, scope: !296)
!338 = !DILocation(line: 132, column: 8, scope: !296)
!339 = !DILocation(line: 132, column: 6, scope: !296)
!340 = !DILocation(line: 134, column: 6, scope: !341)
!341 = distinct !DILexicalBlock(scope: !296, file: !51, line: 134, column: 6)
!342 = !DILocation(line: 134, column: 16, scope: !341)
!343 = !DILocation(line: 134, column: 19, scope: !344)
!344 = !DILexicalBlockFile(scope: !341, file: !51, discriminator: 1)
!345 = !DILocation(line: 134, column: 6, scope: !344)
!346 = !DILocalVariable(name: "str", scope: !347, file: !51, line: 135, type: !80)
!347 = distinct !DILexicalBlock(scope: !341, file: !51, line: 134, column: 28)
!348 = !DILocation(line: 135, column: 16, scope: !347)
!349 = !DILocation(line: 135, column: 22, scope: !347)
!350 = !DILocation(line: 135, column: 34, scope: !347)
!351 = !DILocalVariable(name: "to_start", scope: !347, file: !51, line: 136, type: !42)
!352 = !DILocation(line: 136, column: 10, scope: !347)
!353 = !DILocation(line: 136, column: 31, scope: !347)
!354 = !DILocation(line: 136, column: 36, scope: !347)
!355 = !DILocation(line: 136, column: 21, scope: !347)
!356 = !DILocation(line: 137, column: 36, scope: !347)
!357 = !DILocation(line: 137, column: 19, scope: !347)
!358 = !DILocation(line: 137, column: 17, scope: !347)
!359 = !DILocation(line: 138, column: 10, scope: !347)
!360 = !DILocation(line: 138, column: 3, scope: !347)
!361 = !DILocation(line: 140, column: 7, scope: !362)
!362 = distinct !DILexicalBlock(scope: !347, file: !51, line: 140, column: 7)
!363 = !DILocation(line: 140, column: 7, scope: !347)
!364 = !DILocation(line: 141, column: 17, scope: !362)
!365 = !DILocation(line: 141, column: 5, scope: !362)
!366 = !DILocation(line: 141, column: 15, scope: !362)
!367 = !DILocation(line: 141, column: 4, scope: !362)
!368 = !DILocation(line: 143, column: 7, scope: !369)
!369 = distinct !DILexicalBlock(scope: !347, file: !51, line: 143, column: 7)
!370 = !DILocation(line: 143, column: 7, scope: !347)
!371 = !DILocalVariable(name: "to_end", scope: !372, file: !51, line: 144, type: !42)
!372 = distinct !DILexicalBlock(scope: !369, file: !51, line: 143, column: 16)
!373 = !DILocation(line: 144, column: 11, scope: !372)
!374 = !DILocation(line: 144, column: 30, scope: !372)
!375 = !DILocation(line: 144, column: 36, scope: !372)
!376 = !DILocation(line: 144, column: 34, scope: !372)
!377 = !DILocation(line: 144, column: 47, scope: !372)
!378 = !DILocation(line: 144, column: 57, scope: !372)
!379 = !DILocation(line: 144, column: 55, scope: !372)
!380 = !DILocation(line: 144, column: 20, scope: !372)
!381 = !DILocation(line: 145, column: 15, scope: !372)
!382 = !DILocation(line: 145, column: 48, scope: !372)
!383 = !DILocation(line: 145, column: 31, scope: !372)
!384 = !DILocation(line: 145, column: 29, scope: !372)
!385 = !DILocation(line: 145, column: 5, scope: !372)
!386 = !DILocation(line: 145, column: 13, scope: !372)
!387 = !DILocation(line: 146, column: 11, scope: !372)
!388 = !DILocation(line: 146, column: 4, scope: !372)
!389 = !DILocation(line: 147, column: 3, scope: !372)
!390 = !DILocation(line: 148, column: 2, scope: !347)
!391 = !DILocation(line: 149, column: 9, scope: !296)
!392 = !DILocation(line: 149, column: 2, scope: !296)
!393 = !DILocation(line: 150, column: 1, scope: !296)
!394 = distinct !DISubprogram(name: "strlen_pua_oddly", scope: !51, file: !51, line: 94, type: !395, isLocal: true, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !97)
!395 = !DISubroutineType(types: !396)
!396 = !{!146, !54}
!397 = !DILocalVariable(name: "str", arg: 1, scope: !394, file: !51, line: 94, type: !54)
!398 = !DILocation(line: 94, column: 30, scope: !394)
!399 = !DILocalVariable(name: "ptr", scope: !394, file: !51, line: 96, type: !80)
!400 = !DILocation(line: 96, column: 15, scope: !394)
!401 = !DILocalVariable(name: "ret", scope: !394, file: !51, line: 97, type: !146)
!402 = !DILocation(line: 97, column: 8, scope: !394)
!403 = !DILocation(line: 98, column: 8, scope: !394)
!404 = !DILocation(line: 98, column: 6, scope: !394)
!405 = !DILocation(line: 100, column: 2, scope: !394)
!406 = !DILocation(line: 100, column: 10, scope: !407)
!407 = !DILexicalBlockFile(scope: !394, file: !51, discriminator: 1)
!408 = !DILocation(line: 100, column: 9, scope: !407)
!409 = !DILocation(line: 100, column: 2, scope: !407)
!410 = !DILocalVariable(name: "old", scope: !411, file: !51, line: 101, type: !80)
!411 = distinct !DILexicalBlock(scope: !394, file: !51, line: 100, column: 15)
!412 = !DILocation(line: 101, column: 16, scope: !411)
!413 = !DILocalVariable(name: "c", scope: !411, file: !51, line: 102, type: !60)
!414 = !DILocation(line: 102, column: 12, scope: !411)
!415 = !DILocation(line: 102, column: 32, scope: !411)
!416 = !DILocation(line: 102, column: 16, scope: !411)
!417 = !DILocation(line: 103, column: 9, scope: !411)
!418 = !DILocation(line: 103, column: 7, scope: !411)
!419 = !DILocation(line: 104, column: 19, scope: !411)
!420 = !DILocation(line: 104, column: 56, scope: !411)
!421 = !DILocation(line: 104, column: 38, scope: !411)
!422 = !DILocation(line: 104, column: 26, scope: !411)
!423 = !DILocation(line: 104, column: 24, scope: !411)
!424 = !DILocation(line: 104, column: 7, scope: !411)
!425 = !DILocation(line: 107, column: 8, scope: !426)
!426 = distinct !DILexicalBlock(scope: !411, file: !51, line: 107, column: 7)
!427 = !DILocation(line: 107, column: 10, scope: !426)
!428 = !DILocation(line: 107, column: 21, scope: !426)
!429 = !DILocation(line: 107, column: 7, scope: !411)
!430 = !DILocation(line: 108, column: 7, scope: !426)
!431 = !DILocation(line: 108, column: 4, scope: !426)
!432 = !DILocation(line: 110, column: 11, scope: !426)
!433 = !DILocation(line: 110, column: 17, scope: !426)
!434 = !DILocation(line: 110, column: 15, scope: !426)
!435 = !DILocation(line: 110, column: 8, scope: !426)
!436 = !DILocation(line: 100, column: 2, scope: !437)
!437 = !DILexicalBlockFile(scope: !394, file: !51, discriminator: 2)
!438 = distinct !{!438, !405}
!439 = !DILocation(line: 113, column: 9, scope: !394)
!440 = !DILocation(line: 113, column: 2, scope: !394)
!441 = distinct !DISubprogram(name: "i_match_info_matches", scope: !51, file: !51, line: 153, type: !442, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !97)
!442 = !DISubroutineType(types: !443)
!443 = !{!110, !299}
!444 = !DILocalVariable(name: "match_info", arg: 1, scope: !441, file: !51, line: 153, type: !299)
!445 = !DILocation(line: 153, column: 40, scope: !441)
!446 = !DILocation(line: 155, column: 2, scope: !441)
!447 = distinct !{!447, !446}
!448 = !DILocation(line: 155, column: 10, scope: !449)
!449 = !DILexicalBlockFile(scope: !450, file: !51, discriminator: 1)
!450 = distinct !DILexicalBlock(scope: !451, file: !51, line: 155, column: 10)
!451 = distinct !DILexicalBlock(scope: !441, file: !51, line: 155, column: 4)
!452 = !DILocation(line: 155, column: 21, scope: !449)
!453 = !DILocation(line: 155, column: 5, scope: !454)
!454 = !DILexicalBlockFile(scope: !455, file: !51, discriminator: 2)
!455 = distinct !DILexicalBlock(scope: !450, file: !51, line: 155, column: 3)
!456 = !DILocation(line: 155, column: 14, scope: !457)
!457 = !DILexicalBlockFile(scope: !458, file: !51, discriminator: 3)
!458 = distinct !DILexicalBlock(scope: !450, file: !51, line: 155, column: 12)
!459 = !DILocation(line: 155, column: 105, scope: !457)
!460 = !DILocation(line: 155, column: 122, scope: !461)
!461 = !DILexicalBlockFile(scope: !451, file: !51, discriminator: 4)
!462 = !DILocation(line: 157, column: 30, scope: !441)
!463 = !DILocation(line: 157, column: 42, scope: !441)
!464 = !DILocation(line: 157, column: 9, scope: !441)
!465 = !DILocation(line: 157, column: 2, scope: !441)
!466 = !DILocation(line: 158, column: 1, scope: !441)
!467 = distinct !DISubprogram(name: "i_match_info_free", scope: !51, file: !51, line: 161, type: !468, isLocal: false, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !97)
!468 = !DISubroutineType(types: !469)
!469 = !{null, !47}
!470 = !DILocalVariable(name: "match_info", arg: 1, scope: !467, file: !51, line: 161, type: !47)
!471 = !DILocation(line: 161, column: 31, scope: !467)
!472 = !DILocation(line: 163, column: 20, scope: !467)
!473 = !DILocation(line: 163, column: 32, scope: !467)
!474 = !DILocation(line: 163, column: 2, scope: !467)
!475 = !DILocation(line: 164, column: 9, scope: !467)
!476 = !DILocation(line: 164, column: 2, scope: !467)
!477 = !DILocation(line: 165, column: 1, scope: !467)
