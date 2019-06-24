; ModuleID = './line49-modules.o.i'
source_filename = "./line49-modules.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GHashTable = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct.MODULE_FILE_REC = type { %struct._MODULE_REC*, i8*, i8*, void ()*, %struct._GModule*, i8 }
%struct._MODULE_REC = type { i8*, %struct._GSList* }
%struct._GModule = type opaque

@__func__.module_get_uniq_id = private unnamed_addr constant [19 x i8] c"module_get_uniq_id\00", align 1
@.str = private unnamed_addr constant [15 x i8] c"module != NULL\00", align 1
@idlookup = internal global %struct._GHashTable* null, align 8
@next_uniq_id = internal global i32 0, align 4
@uniqids = internal global %struct._GHashTable* null, align 8
@__func__.module_get_uniq_id_str = private unnamed_addr constant [23 x i8] c"module_get_uniq_id_str\00", align 1
@stridlookup = internal global %struct._GHashTable* null, align 8
@uniqstrids = internal global %struct._GHashTable* null, align 8
@__func__.module_find_id = private unnamed_addr constant [15 x i8] c"module_find_id\00", align 1
@__func__.module_find_id_str = private unnamed_addr constant [19 x i8] c"module_find_id_str\00", align 1
@modules = common global %struct._GSList* null, align 8

; Function Attrs: nounwind uwtable
define i8* @module_check_cast(i8*, i32, i8*) #0 !dbg !85 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !88, metadata !89), !dbg !90
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !91, metadata !89), !dbg !92
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !93, metadata !89), !dbg !94
  %7 = load i8*, i8** %4, align 8, !dbg !95
  %8 = icmp eq i8* %7, null, !dbg !96
  br i1 %8, label %19, label %9, !dbg !97

; <label>:9:                                      ; preds = %3
  %10 = load i8*, i8** %6, align 8, !dbg !98
  %11 = load i8*, i8** %4, align 8, !dbg !100
  %12 = load i32, i32* %5, align 4, !dbg !101
  %13 = sext i32 %12 to i64, !dbg !102
  %14 = getelementptr inbounds i8, i8* %11, i64 %13, !dbg !103
  %15 = bitcast i8* %14 to i32*, !dbg !104
  %16 = load i32, i32* %15, align 4, !dbg !105
  %17 = call i32 @module_find_id(i8* %10, i32 %16), !dbg !106
  %18 = icmp eq i32 %17, -1, !dbg !107
  br i1 %18, label %19, label %20, !dbg !108

; <label>:19:                                     ; preds = %9, %3
  br label %22, !dbg !109

; <label>:20:                                     ; preds = %9
  %21 = load i8*, i8** %4, align 8, !dbg !111
  br label %22, !dbg !112

; <label>:22:                                     ; preds = %20, %19
  %23 = phi i8* [ null, %19 ], [ %21, %20 ], !dbg !114
  ret i8* %23, !dbg !116
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @module_find_id(i8*, i32) #0 !dbg !117 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._GHashTable*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !120, metadata !89), !dbg !121
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !122, metadata !89), !dbg !123
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %6, metadata !124, metadata !89), !dbg !125
  call void @llvm.dbg.declare(metadata i8** %7, metadata !126, metadata !89), !dbg !127
  call void @llvm.dbg.declare(metadata i8** %8, metadata !128, metadata !89), !dbg !129
  call void @llvm.dbg.declare(metadata i32* %9, metadata !130, metadata !89), !dbg !131
  br label %10, !dbg !132, !llvm.loop !133

; <label>:10:                                     ; preds = %2
  %11 = load i8*, i8** %4, align 8, !dbg !134
  %12 = icmp ne i8* %11, null, !dbg !138
  br i1 %12, label %13, label %14, !dbg !134

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !139

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.module_find_id, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)), !dbg !142
  store i32 -1, i32* %3, align 4, !dbg !145
  br label %49, !dbg !145

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !146

; <label>:16:                                     ; preds = %15
  %17 = load %struct._GHashTable*, %struct._GHashTable** @uniqids, align 8, !dbg !148
  %18 = load i32, i32* %5, align 4, !dbg !150
  %19 = sext i32 %18 to i64, !dbg !151
  %20 = inttoptr i64 %19 to i8*, !dbg !152
  %21 = call i32 @g_hash_table_lookup_extended(%struct._GHashTable* %17, i8* %20, i8** %7, i8** %8), !dbg !153
  %22 = icmp ne i32 %21, 0, !dbg !153
  br i1 %22, label %24, label %23, !dbg !154

; <label>:23:                                     ; preds = %16
  store i32 -1, i32* %3, align 4, !dbg !155
  br label %49, !dbg !155

; <label>:24:                                     ; preds = %16
  %25 = load %struct._GHashTable*, %struct._GHashTable** @idlookup, align 8, !dbg !156
  %26 = load i8*, i8** %4, align 8, !dbg !157
  %27 = call i8* @g_hash_table_lookup(%struct._GHashTable* %25, i8* %26), !dbg !158
  %28 = bitcast i8* %27 to %struct._GHashTable*, !dbg !158
  store %struct._GHashTable* %28, %struct._GHashTable** %6, align 8, !dbg !159
  %29 = load %struct._GHashTable*, %struct._GHashTable** %6, align 8, !dbg !160
  %30 = icmp eq %struct._GHashTable* %29, null, !dbg !162
  br i1 %30, label %31, label %32, !dbg !163

; <label>:31:                                     ; preds = %24
  store i32 -1, i32* %3, align 4, !dbg !164
  br label %49, !dbg !164

; <label>:32:                                     ; preds = %24
  %33 = load i8*, i8** %8, align 8, !dbg !165
  %34 = ptrtoint i8* %33 to i64, !dbg !166
  %35 = trunc i64 %34 to i32, !dbg !167
  store i32 %35, i32* %9, align 4, !dbg !168
  %36 = load %struct._GHashTable*, %struct._GHashTable** %6, align 8, !dbg !169
  %37 = load i8*, i8** %8, align 8, !dbg !171
  %38 = call i32 @g_hash_table_lookup_extended(%struct._GHashTable* %36, i8* %37, i8** %7, i8** %8), !dbg !172
  %39 = icmp ne i32 %38, 0, !dbg !172
  br i1 %39, label %40, label %46, !dbg !173

; <label>:40:                                     ; preds = %32
  %41 = load i8*, i8** %8, align 8, !dbg !174
  %42 = ptrtoint i8* %41 to i64, !dbg !175
  %43 = trunc i64 %42 to i32, !dbg !176
  %44 = load i32, i32* %5, align 4, !dbg !177
  %45 = icmp ne i32 %43, %44, !dbg !178
  br i1 %45, label %46, label %47, !dbg !179

; <label>:46:                                     ; preds = %40, %32
  store i32 -1, i32* %9, align 4, !dbg !181
  br label %47, !dbg !182

; <label>:47:                                     ; preds = %46, %40
  %48 = load i32, i32* %9, align 4, !dbg !183
  store i32 %48, i32* %3, align 4, !dbg !184
  br label %49, !dbg !184

; <label>:49:                                     ; preds = %47, %31, %23, %14
  %50 = load i32, i32* %3, align 4, !dbg !185
  ret i32 %50, !dbg !185
}

; Function Attrs: nounwind uwtable
define i8* @module_check_cast_module(i8*, i32, i8*, i8*) #0 !dbg !186 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !189, metadata !89), !dbg !190
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !191, metadata !89), !dbg !192
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !193, metadata !89), !dbg !194
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !195, metadata !89), !dbg !196
  call void @llvm.dbg.declare(metadata i8** %10, metadata !197, metadata !89), !dbg !198
  %11 = load i8*, i8** %6, align 8, !dbg !199
  %12 = icmp eq i8* %11, null, !dbg !201
  br i1 %12, label %13, label %14, !dbg !202

; <label>:13:                                     ; preds = %4
  store i8* null, i8** %5, align 8, !dbg !203
  br label %35, !dbg !203

; <label>:14:                                     ; preds = %4
  %15 = load i8*, i8** %8, align 8, !dbg !204
  %16 = load i8*, i8** %6, align 8, !dbg !205
  %17 = load i32, i32* %7, align 4, !dbg !206
  %18 = sext i32 %17 to i64, !dbg !207
  %19 = getelementptr inbounds i8, i8* %16, i64 %18, !dbg !208
  %20 = bitcast i8* %19 to i32*, !dbg !209
  %21 = load i32, i32* %20, align 4, !dbg !210
  %22 = call i8* @module_find_id_str(i8* %15, i32 %21), !dbg !211
  store i8* %22, i8** %10, align 8, !dbg !212
  %23 = load i8*, i8** %10, align 8, !dbg !213
  %24 = icmp eq i8* %23, null, !dbg !214
  br i1 %24, label %30, label %25, !dbg !215

; <label>:25:                                     ; preds = %14
  %26 = load i8*, i8** %10, align 8, !dbg !216
  %27 = load i8*, i8** %9, align 8, !dbg !218
  %28 = call i32 @g_strcmp0(i8* %26, i8* %27), !dbg !219
  %29 = icmp ne i32 %28, 0, !dbg !220
  br i1 %29, label %30, label %31, !dbg !221

; <label>:30:                                     ; preds = %25, %14
  br label %33, !dbg !222

; <label>:31:                                     ; preds = %25
  %32 = load i8*, i8** %6, align 8, !dbg !224
  br label %33, !dbg !226

; <label>:33:                                     ; preds = %31, %30
  %34 = phi i8* [ null, %30 ], [ %32, %31 ], !dbg !227
  store i8* %34, i8** %5, align 8, !dbg !229
  br label %35, !dbg !229

; <label>:35:                                     ; preds = %33, %13
  %36 = load i8*, i8** %5, align 8, !dbg !230
  ret i8* %36, !dbg !230
}

; Function Attrs: nounwind uwtable
define i8* @module_find_id_str(i8*, i32) #0 !dbg !231 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._GHashTable*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !234, metadata !89), !dbg !235
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !236, metadata !89), !dbg !237
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %6, metadata !238, metadata !89), !dbg !239
  call void @llvm.dbg.declare(metadata i8** %7, metadata !240, metadata !89), !dbg !241
  call void @llvm.dbg.declare(metadata i8** %8, metadata !242, metadata !89), !dbg !243
  call void @llvm.dbg.declare(metadata i8** %9, metadata !244, metadata !89), !dbg !245
  br label %10, !dbg !246, !llvm.loop !247

; <label>:10:                                     ; preds = %2
  %11 = load i8*, i8** %4, align 8, !dbg !248
  %12 = icmp ne i8* %11, null, !dbg !252
  br i1 %12, label %13, label %14, !dbg !248

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !253

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.module_find_id_str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)), !dbg !256
  store i8* null, i8** %3, align 8, !dbg !259
  br label %47, !dbg !259

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !260

; <label>:16:                                     ; preds = %15
  %17 = load %struct._GHashTable*, %struct._GHashTable** @uniqstrids, align 8, !dbg !262
  %18 = load i32, i32* %5, align 4, !dbg !264
  %19 = sext i32 %18 to i64, !dbg !265
  %20 = inttoptr i64 %19 to i8*, !dbg !266
  %21 = call i32 @g_hash_table_lookup_extended(%struct._GHashTable* %17, i8* %20, i8** %7, i8** %8), !dbg !267
  %22 = icmp ne i32 %21, 0, !dbg !267
  br i1 %22, label %24, label %23, !dbg !268

; <label>:23:                                     ; preds = %16
  store i8* null, i8** %3, align 8, !dbg !269
  br label %47, !dbg !269

; <label>:24:                                     ; preds = %16
  %25 = load %struct._GHashTable*, %struct._GHashTable** @stridlookup, align 8, !dbg !270
  %26 = load i8*, i8** %4, align 8, !dbg !271
  %27 = call i8* @g_hash_table_lookup(%struct._GHashTable* %25, i8* %26), !dbg !272
  %28 = bitcast i8* %27 to %struct._GHashTable*, !dbg !272
  store %struct._GHashTable* %28, %struct._GHashTable** %6, align 8, !dbg !273
  %29 = load %struct._GHashTable*, %struct._GHashTable** %6, align 8, !dbg !274
  %30 = icmp eq %struct._GHashTable* %29, null, !dbg !276
  br i1 %30, label %31, label %32, !dbg !277

; <label>:31:                                     ; preds = %24
  store i8* null, i8** %3, align 8, !dbg !278
  br label %47, !dbg !278

; <label>:32:                                     ; preds = %24
  %33 = load i8*, i8** %8, align 8, !dbg !279
  store i8* %33, i8** %9, align 8, !dbg !280
  %34 = load %struct._GHashTable*, %struct._GHashTable** %6, align 8, !dbg !281
  %35 = load i8*, i8** %8, align 8, !dbg !283
  %36 = call i32 @g_hash_table_lookup_extended(%struct._GHashTable* %34, i8* %35, i8** %7, i8** %8), !dbg !284
  %37 = icmp ne i32 %36, 0, !dbg !284
  br i1 %37, label %38, label %44, !dbg !285

; <label>:38:                                     ; preds = %32
  %39 = load i8*, i8** %8, align 8, !dbg !286
  %40 = ptrtoint i8* %39 to i64, !dbg !287
  %41 = trunc i64 %40 to i32, !dbg !288
  %42 = load i32, i32* %5, align 4, !dbg !289
  %43 = icmp ne i32 %41, %42, !dbg !290
  br i1 %43, label %44, label %45, !dbg !291

; <label>:44:                                     ; preds = %38, %32
  store i8* null, i8** %9, align 8, !dbg !293
  br label %45, !dbg !294

; <label>:45:                                     ; preds = %44, %38
  %46 = load i8*, i8** %9, align 8, !dbg !295
  store i8* %46, i8** %3, align 8, !dbg !296
  br label %47, !dbg !296

; <label>:47:                                     ; preds = %45, %31, %23, %14
  %48 = load i8*, i8** %3, align 8, !dbg !297
  ret i8* %48, !dbg !297
}

declare i32 @g_strcmp0(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @module_get_uniq_id(i8*, i32) #0 !dbg !298 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._GHashTable*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !299, metadata !89), !dbg !300
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !301, metadata !89), !dbg !302
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %6, metadata !303, metadata !89), !dbg !304
  call void @llvm.dbg.declare(metadata i8** %7, metadata !305, metadata !89), !dbg !306
  call void @llvm.dbg.declare(metadata i8** %8, metadata !307, metadata !89), !dbg !308
  call void @llvm.dbg.declare(metadata i8** %9, metadata !309, metadata !89), !dbg !310
  call void @llvm.dbg.declare(metadata i32* %10, metadata !311, metadata !89), !dbg !312
  br label %11, !dbg !313, !llvm.loop !314

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %4, align 8, !dbg !315
  %13 = icmp ne i8* %12, null, !dbg !319
  br i1 %13, label %14, label %15, !dbg !315

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !320

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.module_get_uniq_id, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)), !dbg !323
  store i32 -1, i32* %3, align 4, !dbg !326
  br label %61, !dbg !326

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !327

; <label>:17:                                     ; preds = %16
  %18 = load %struct._GHashTable*, %struct._GHashTable** @idlookup, align 8, !dbg !329
  %19 = load i8*, i8** %4, align 8, !dbg !330
  %20 = call i8* @g_hash_table_lookup(%struct._GHashTable* %18, i8* %19), !dbg !331
  %21 = bitcast i8* %20 to %struct._GHashTable*, !dbg !331
  store %struct._GHashTable* %21, %struct._GHashTable** %6, align 8, !dbg !332
  %22 = load %struct._GHashTable*, %struct._GHashTable** %6, align 8, !dbg !333
  %23 = icmp eq %struct._GHashTable* %22, null, !dbg !335
  br i1 %23, label %24, label %32, !dbg !336

; <label>:24:                                     ; preds = %17
  %25 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_direct_hash, i32 (i8*, i8*)* @g_direct_equal), !dbg !337
  store %struct._GHashTable* %25, %struct._GHashTable** %6, align 8, !dbg !339
  %26 = load %struct._GHashTable*, %struct._GHashTable** @idlookup, align 8, !dbg !340
  %27 = load i8*, i8** %4, align 8, !dbg !341
  %28 = call noalias i8* @g_strdup(i8* %27), !dbg !342
  %29 = load %struct._GHashTable*, %struct._GHashTable** %6, align 8, !dbg !343
  %30 = bitcast %struct._GHashTable* %29 to i8*, !dbg !343
  %31 = call i32 @g_hash_table_insert(%struct._GHashTable* %26, i8* %28, i8* %30), !dbg !344
  br label %32, !dbg !346

; <label>:32:                                     ; preds = %24, %17
  %33 = load i32, i32* %5, align 4, !dbg !347
  %34 = sext i32 %33 to i64, !dbg !348
  %35 = inttoptr i64 %34 to i8*, !dbg !349
  store i8* %35, i8** %9, align 8, !dbg !350
  %36 = load %struct._GHashTable*, %struct._GHashTable** %6, align 8, !dbg !351
  %37 = load i8*, i8** %9, align 8, !dbg !353
  %38 = call i32 @g_hash_table_lookup_extended(%struct._GHashTable* %36, i8* %37, i8** %7, i8** %8), !dbg !354
  %39 = icmp ne i32 %38, 0, !dbg !354
  br i1 %39, label %55, label %40, !dbg !355

; <label>:40:                                     ; preds = %32
  %41 = load i32, i32* @next_uniq_id, align 4, !dbg !356
  %42 = add nsw i32 %41, 1, !dbg !356
  store i32 %42, i32* @next_uniq_id, align 4, !dbg !356
  store i32 %41, i32* %10, align 4, !dbg !358
  %43 = load %struct._GHashTable*, %struct._GHashTable** %6, align 8, !dbg !359
  %44 = load i8*, i8** %9, align 8, !dbg !360
  %45 = load i32, i32* %10, align 4, !dbg !361
  %46 = sext i32 %45 to i64, !dbg !362
  %47 = inttoptr i64 %46 to i8*, !dbg !363
  %48 = call i32 @g_hash_table_insert(%struct._GHashTable* %43, i8* %44, i8* %47), !dbg !364
  %49 = load %struct._GHashTable*, %struct._GHashTable** @uniqids, align 8, !dbg !365
  %50 = load i32, i32* %10, align 4, !dbg !366
  %51 = sext i32 %50 to i64, !dbg !367
  %52 = inttoptr i64 %51 to i8*, !dbg !368
  %53 = load i8*, i8** %9, align 8, !dbg !369
  %54 = call i32 @g_hash_table_insert(%struct._GHashTable* %49, i8* %52, i8* %53), !dbg !370
  br label %59, !dbg !371

; <label>:55:                                     ; preds = %32
  %56 = load i8*, i8** %8, align 8, !dbg !372
  %57 = ptrtoint i8* %56 to i64, !dbg !374
  %58 = trunc i64 %57 to i32, !dbg !375
  store i32 %58, i32* %10, align 4, !dbg !376
  br label %59

; <label>:59:                                     ; preds = %55, %40
  %60 = load i32, i32* %10, align 4, !dbg !377
  store i32 %60, i32* %3, align 4, !dbg !378
  br label %61, !dbg !378

; <label>:61:                                     ; preds = %59, %15
  %62 = load i32, i32* %3, align 4, !dbg !379
  ret i32 %62, !dbg !379
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #2

declare %struct._GHashTable* @g_hash_table_new(i32 (i8*)*, i32 (i8*, i8*)*) #2

; Function Attrs: nounwind readnone
declare i32 @g_direct_hash(i8*) #3

; Function Attrs: nounwind readnone
declare i32 @g_direct_equal(i8*, i8*) #3

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #2

declare noalias i8* @g_strdup(i8*) #2

declare i32 @g_hash_table_lookup_extended(%struct._GHashTable*, i8*, i8**, i8**) #2

; Function Attrs: nounwind uwtable
define i32 @module_get_uniq_id_str(i8*, i8*) #0 !dbg !380 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._GHashTable*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !383, metadata !89), !dbg !384
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !385, metadata !89), !dbg !386
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %6, metadata !387, metadata !89), !dbg !388
  call void @llvm.dbg.declare(metadata i8** %7, metadata !389, metadata !89), !dbg !390
  call void @llvm.dbg.declare(metadata i8** %8, metadata !391, metadata !89), !dbg !392
  call void @llvm.dbg.declare(metadata i32* %9, metadata !393, metadata !89), !dbg !394
  br label %11, !dbg !395, !llvm.loop !396

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %4, align 8, !dbg !397
  %13 = icmp ne i8* %12, null, !dbg !401
  br i1 %13, label %14, label %15, !dbg !397

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !402

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.module_get_uniq_id_str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)), !dbg !405
  store i32 -1, i32* %3, align 4, !dbg !408
  br label %60, !dbg !408

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !409

; <label>:17:                                     ; preds = %16
  %18 = load %struct._GHashTable*, %struct._GHashTable** @stridlookup, align 8, !dbg !411
  %19 = load i8*, i8** %4, align 8, !dbg !412
  %20 = call i8* @g_hash_table_lookup(%struct._GHashTable* %18, i8* %19), !dbg !413
  %21 = bitcast i8* %20 to %struct._GHashTable*, !dbg !413
  store %struct._GHashTable* %21, %struct._GHashTable** %6, align 8, !dbg !414
  %22 = load %struct._GHashTable*, %struct._GHashTable** %6, align 8, !dbg !415
  %23 = icmp eq %struct._GHashTable* %22, null, !dbg !417
  br i1 %23, label %24, label %32, !dbg !418

; <label>:24:                                     ; preds = %17
  %25 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal), !dbg !419
  store %struct._GHashTable* %25, %struct._GHashTable** %6, align 8, !dbg !421
  %26 = load %struct._GHashTable*, %struct._GHashTable** @stridlookup, align 8, !dbg !422
  %27 = load i8*, i8** %4, align 8, !dbg !423
  %28 = call noalias i8* @g_strdup(i8* %27), !dbg !424
  %29 = load %struct._GHashTable*, %struct._GHashTable** %6, align 8, !dbg !425
  %30 = bitcast %struct._GHashTable* %29 to i8*, !dbg !425
  %31 = call i32 @g_hash_table_insert(%struct._GHashTable* %26, i8* %28, i8* %30), !dbg !426
  br label %32, !dbg !428

; <label>:32:                                     ; preds = %24, %17
  %33 = load %struct._GHashTable*, %struct._GHashTable** %6, align 8, !dbg !429
  %34 = load i8*, i8** %5, align 8, !dbg !431
  %35 = call i32 @g_hash_table_lookup_extended(%struct._GHashTable* %33, i8* %34, i8** %7, i8** %8), !dbg !432
  %36 = icmp ne i32 %35, 0, !dbg !432
  br i1 %36, label %54, label %37, !dbg !433

; <label>:37:                                     ; preds = %32
  call void @llvm.dbg.declare(metadata i8** %10, metadata !434, metadata !89), !dbg !436
  %38 = load i8*, i8** %5, align 8, !dbg !437
  %39 = call noalias i8* @g_strdup(i8* %38), !dbg !438
  store i8* %39, i8** %10, align 8, !dbg !439
  %40 = load i32, i32* @next_uniq_id, align 4, !dbg !440
  %41 = add nsw i32 %40, 1, !dbg !440
  store i32 %41, i32* @next_uniq_id, align 4, !dbg !440
  store i32 %40, i32* %9, align 4, !dbg !441
  %42 = load %struct._GHashTable*, %struct._GHashTable** %6, align 8, !dbg !442
  %43 = load i8*, i8** %10, align 8, !dbg !443
  %44 = load i32, i32* %9, align 4, !dbg !444
  %45 = sext i32 %44 to i64, !dbg !445
  %46 = inttoptr i64 %45 to i8*, !dbg !446
  %47 = call i32 @g_hash_table_insert(%struct._GHashTable* %42, i8* %43, i8* %46), !dbg !447
  %48 = load %struct._GHashTable*, %struct._GHashTable** @uniqstrids, align 8, !dbg !448
  %49 = load i32, i32* %9, align 4, !dbg !449
  %50 = sext i32 %49 to i64, !dbg !450
  %51 = inttoptr i64 %50 to i8*, !dbg !451
  %52 = load i8*, i8** %10, align 8, !dbg !452
  %53 = call i32 @g_hash_table_insert(%struct._GHashTable* %48, i8* %51, i8* %52), !dbg !453
  br label %58, !dbg !454

; <label>:54:                                     ; preds = %32
  %55 = load i8*, i8** %8, align 8, !dbg !455
  %56 = ptrtoint i8* %55 to i64, !dbg !457
  %57 = trunc i64 %56 to i32, !dbg !458
  store i32 %57, i32* %9, align 4, !dbg !459
  br label %58

; <label>:58:                                     ; preds = %54, %37
  %59 = load i32, i32* %9, align 4, !dbg !460
  store i32 %59, i32* %3, align 4, !dbg !461
  br label %60, !dbg !461

; <label>:60:                                     ; preds = %58, %15
  %61 = load i32, i32* %3, align 4, !dbg !462
  ret i32 %61, !dbg !462
}

declare i32 @g_str_hash(i8*) #2

declare i32 @g_str_equal(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @module_uniq_destroy(i8*) #0 !dbg !463 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._GHashTable*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !466, metadata !89), !dbg !467
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %3, metadata !468, metadata !89), !dbg !469
  call void @llvm.dbg.declare(metadata i8** %4, metadata !470, metadata !89), !dbg !471
  call void @llvm.dbg.declare(metadata i8** %5, metadata !472, metadata !89), !dbg !473
  %6 = load %struct._GHashTable*, %struct._GHashTable** @idlookup, align 8, !dbg !474
  %7 = load i8*, i8** %2, align 8, !dbg !476
  %8 = call i32 @g_hash_table_lookup_extended(%struct._GHashTable* %6, i8* %7, i8** %4, i8** %5), !dbg !477
  %9 = icmp ne i32 %8, 0, !dbg !477
  br i1 %9, label %10, label %19, !dbg !478

; <label>:10:                                     ; preds = %1
  %11 = load i8*, i8** %5, align 8, !dbg !479
  %12 = bitcast i8* %11 to %struct._GHashTable*, !dbg !479
  store %struct._GHashTable* %12, %struct._GHashTable** %3, align 8, !dbg !481
  %13 = load %struct._GHashTable*, %struct._GHashTable** @idlookup, align 8, !dbg !482
  %14 = load i8*, i8** %4, align 8, !dbg !483
  %15 = call i32 @g_hash_table_remove(%struct._GHashTable* %13, i8* %14), !dbg !484
  %16 = load i8*, i8** %4, align 8, !dbg !485
  call void @g_free(i8* %16), !dbg !486
  %17 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !487
  call void @g_hash_table_foreach(%struct._GHashTable* %17, void (i8*, i8*, i8*)* bitcast (void (i8*, i8*)* @uniq_destroy to void (i8*, i8*, i8*)*), i8* null), !dbg !488
  %18 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !489
  call void @g_hash_table_destroy(%struct._GHashTable* %18), !dbg !490
  br label %19, !dbg !491

; <label>:19:                                     ; preds = %10, %1
  %20 = load %struct._GHashTable*, %struct._GHashTable** @stridlookup, align 8, !dbg !492
  %21 = load i8*, i8** %2, align 8, !dbg !494
  %22 = call i32 @g_hash_table_lookup_extended(%struct._GHashTable* %20, i8* %21, i8** %4, i8** %5), !dbg !495
  %23 = icmp ne i32 %22, 0, !dbg !495
  br i1 %23, label %24, label %33, !dbg !496

; <label>:24:                                     ; preds = %19
  %25 = load i8*, i8** %5, align 8, !dbg !497
  %26 = bitcast i8* %25 to %struct._GHashTable*, !dbg !497
  store %struct._GHashTable* %26, %struct._GHashTable** %3, align 8, !dbg !499
  %27 = load %struct._GHashTable*, %struct._GHashTable** @stridlookup, align 8, !dbg !500
  %28 = load i8*, i8** %4, align 8, !dbg !501
  %29 = call i32 @g_hash_table_remove(%struct._GHashTable* %27, i8* %28), !dbg !502
  %30 = load i8*, i8** %4, align 8, !dbg !503
  call void @g_free(i8* %30), !dbg !504
  %31 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !505
  call void @g_hash_table_foreach(%struct._GHashTable* %31, void (i8*, i8*, i8*)* bitcast (void (i8*, i8*)* @uniq_destroy_str to void (i8*, i8*, i8*)*), i8* null), !dbg !506
  %32 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !507
  call void @g_hash_table_destroy(%struct._GHashTable* %32), !dbg !508
  br label %33, !dbg !509

; <label>:33:                                     ; preds = %24, %19
  ret void, !dbg !510
}

declare i32 @g_hash_table_remove(%struct._GHashTable*, i8*) #2

declare void @g_free(i8*) #2

declare void @g_hash_table_foreach(%struct._GHashTable*, void (i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @uniq_destroy(i8*, i8*) #0 !dbg !511 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !514, metadata !89), !dbg !515
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !516, metadata !89), !dbg !517
  %5 = load %struct._GHashTable*, %struct._GHashTable** @uniqids, align 8, !dbg !518
  %6 = load i8*, i8** %4, align 8, !dbg !519
  %7 = call i32 @g_hash_table_remove(%struct._GHashTable* %5, i8* %6), !dbg !520
  ret void, !dbg !521
}

declare void @g_hash_table_destroy(%struct._GHashTable*) #2

; Function Attrs: nounwind uwtable
define internal void @uniq_destroy_str(i8*, i8*) #0 !dbg !522 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !523, metadata !89), !dbg !524
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !525, metadata !89), !dbg !526
  %5 = load %struct._GHashTable*, %struct._GHashTable** @uniqstrids, align 8, !dbg !527
  %6 = load i8*, i8** %4, align 8, !dbg !528
  %7 = call i32 @g_hash_table_remove(%struct._GHashTable* %5, i8* %6), !dbg !529
  %8 = load i8*, i8** %3, align 8, !dbg !530
  call void @g_free(i8* %8), !dbg !531
  ret void, !dbg !532
}

; Function Attrs: nounwind uwtable
define %struct.MODULE_FILE_REC* @module_register_full(i8*, i8*, i8*) #0 !dbg !533 {
  %4 = alloca %struct.MODULE_FILE_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._MODULE_REC*, align 8
  %9 = alloca %struct.MODULE_FILE_REC*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !536, metadata !89), !dbg !537
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !538, metadata !89), !dbg !539
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !540, metadata !89), !dbg !541
  call void @llvm.dbg.declare(metadata %struct._MODULE_REC** %8, metadata !542, metadata !89), !dbg !543
  call void @llvm.dbg.declare(metadata %struct.MODULE_FILE_REC** %9, metadata !544, metadata !89), !dbg !545
  %10 = load i8*, i8** %5, align 8, !dbg !546
  %11 = call %struct._MODULE_REC* @module_find(i8* %10), !dbg !547
  store %struct._MODULE_REC* %11, %struct._MODULE_REC** %8, align 8, !dbg !548
  %12 = load %struct._MODULE_REC*, %struct._MODULE_REC** %8, align 8, !dbg !549
  %13 = icmp eq %struct._MODULE_REC* %12, null, !dbg !551
  br i1 %13, label %14, label %25, !dbg !552

; <label>:14:                                     ; preds = %3
  %15 = call noalias i8* @g_malloc0_n(i64 1, i64 16), !dbg !553
  %16 = bitcast i8* %15 to %struct._MODULE_REC*, !dbg !555
  store %struct._MODULE_REC* %16, %struct._MODULE_REC** %8, align 8, !dbg !556
  %17 = load i8*, i8** %5, align 8, !dbg !557
  %18 = call noalias i8* @g_strdup(i8* %17), !dbg !558
  %19 = load %struct._MODULE_REC*, %struct._MODULE_REC** %8, align 8, !dbg !559
  %20 = getelementptr inbounds %struct._MODULE_REC, %struct._MODULE_REC* %19, i32 0, i32 0, !dbg !560
  store i8* %18, i8** %20, align 8, !dbg !561
  %21 = load %struct._GSList*, %struct._GSList** @modules, align 8, !dbg !562
  %22 = load %struct._MODULE_REC*, %struct._MODULE_REC** %8, align 8, !dbg !563
  %23 = bitcast %struct._MODULE_REC* %22 to i8*, !dbg !563
  %24 = call %struct._GSList* @g_slist_append(%struct._GSList* %21, i8* %23), !dbg !564
  store %struct._GSList* %24, %struct._GSList** @modules, align 8, !dbg !565
  br label %25, !dbg !566

; <label>:25:                                     ; preds = %14, %3
  %26 = load %struct._MODULE_REC*, %struct._MODULE_REC** %8, align 8, !dbg !567
  %27 = load i8*, i8** %6, align 8, !dbg !568
  %28 = call %struct.MODULE_FILE_REC* @module_file_find(%struct._MODULE_REC* %26, i8* %27), !dbg !569
  store %struct.MODULE_FILE_REC* %28, %struct.MODULE_FILE_REC** %9, align 8, !dbg !570
  %29 = load %struct.MODULE_FILE_REC*, %struct.MODULE_FILE_REC** %9, align 8, !dbg !571
  %30 = icmp ne %struct.MODULE_FILE_REC* %29, null, !dbg !573
  br i1 %30, label %31, label %33, !dbg !574

; <label>:31:                                     ; preds = %25
  %32 = load %struct.MODULE_FILE_REC*, %struct.MODULE_FILE_REC** %9, align 8, !dbg !575
  store %struct.MODULE_FILE_REC* %32, %struct.MODULE_FILE_REC** %4, align 8, !dbg !576
  br label %56, !dbg !576

; <label>:33:                                     ; preds = %25
  %34 = call noalias i8* @g_malloc0_n(i64 1, i64 48), !dbg !577
  %35 = bitcast i8* %34 to %struct.MODULE_FILE_REC*, !dbg !578
  store %struct.MODULE_FILE_REC* %35, %struct.MODULE_FILE_REC** %9, align 8, !dbg !579
  %36 = load %struct._MODULE_REC*, %struct._MODULE_REC** %8, align 8, !dbg !580
  %37 = load %struct.MODULE_FILE_REC*, %struct.MODULE_FILE_REC** %9, align 8, !dbg !581
  %38 = getelementptr inbounds %struct.MODULE_FILE_REC, %struct.MODULE_FILE_REC* %37, i32 0, i32 0, !dbg !582
  store %struct._MODULE_REC* %36, %struct._MODULE_REC** %38, align 8, !dbg !583
  %39 = load i8*, i8** %6, align 8, !dbg !584
  %40 = call noalias i8* @g_strdup(i8* %39), !dbg !585
  %41 = load %struct.MODULE_FILE_REC*, %struct.MODULE_FILE_REC** %9, align 8, !dbg !586
  %42 = getelementptr inbounds %struct.MODULE_FILE_REC, %struct.MODULE_FILE_REC* %41, i32 0, i32 1, !dbg !587
  store i8* %40, i8** %42, align 8, !dbg !588
  %43 = load i8*, i8** %7, align 8, !dbg !589
  %44 = call noalias i8* @g_strdup(i8* %43), !dbg !590
  %45 = load %struct.MODULE_FILE_REC*, %struct.MODULE_FILE_REC** %9, align 8, !dbg !591
  %46 = getelementptr inbounds %struct.MODULE_FILE_REC, %struct.MODULE_FILE_REC* %45, i32 0, i32 2, !dbg !592
  store i8* %44, i8** %46, align 8, !dbg !593
  %47 = load %struct._MODULE_REC*, %struct._MODULE_REC** %8, align 8, !dbg !594
  %48 = getelementptr inbounds %struct._MODULE_REC, %struct._MODULE_REC* %47, i32 0, i32 1, !dbg !595
  %49 = load %struct._GSList*, %struct._GSList** %48, align 8, !dbg !595
  %50 = load %struct.MODULE_FILE_REC*, %struct.MODULE_FILE_REC** %9, align 8, !dbg !596
  %51 = bitcast %struct.MODULE_FILE_REC* %50 to i8*, !dbg !596
  %52 = call %struct._GSList* @g_slist_append(%struct._GSList* %49, i8* %51), !dbg !597
  %53 = load %struct._MODULE_REC*, %struct._MODULE_REC** %8, align 8, !dbg !598
  %54 = getelementptr inbounds %struct._MODULE_REC, %struct._MODULE_REC* %53, i32 0, i32 1, !dbg !599
  store %struct._GSList* %52, %struct._GSList** %54, align 8, !dbg !600
  %55 = load %struct.MODULE_FILE_REC*, %struct.MODULE_FILE_REC** %9, align 8, !dbg !601
  store %struct.MODULE_FILE_REC* %55, %struct.MODULE_FILE_REC** %4, align 8, !dbg !602
  br label %56, !dbg !602

; <label>:56:                                     ; preds = %33, %31
  %57 = load %struct.MODULE_FILE_REC*, %struct.MODULE_FILE_REC** %4, align 8, !dbg !603
  ret %struct.MODULE_FILE_REC* %57, !dbg !603
}

; Function Attrs: nounwind uwtable
define %struct._MODULE_REC* @module_find(i8*) #0 !dbg !604 {
  %2 = alloca %struct._MODULE_REC*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct._MODULE_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !607, metadata !89), !dbg !608
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !609, metadata !89), !dbg !610
  %6 = load %struct._GSList*, %struct._GSList** @modules, align 8, !dbg !611
  store %struct._GSList* %6, %struct._GSList** %4, align 8, !dbg !613
  br label %7, !dbg !614

; <label>:7:                                      ; preds = %24, %1
  %8 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !615
  %9 = icmp ne %struct._GSList* %8, null, !dbg !618
  br i1 %9, label %10, label %28, !dbg !619

; <label>:10:                                     ; preds = %7
  call void @llvm.dbg.declare(metadata %struct._MODULE_REC** %5, metadata !620, metadata !89), !dbg !622
  %11 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !623
  %12 = getelementptr inbounds %struct._GSList, %struct._GSList* %11, i32 0, i32 0, !dbg !624
  %13 = load i8*, i8** %12, align 8, !dbg !624
  %14 = bitcast i8* %13 to %struct._MODULE_REC*, !dbg !623
  store %struct._MODULE_REC* %14, %struct._MODULE_REC** %5, align 8, !dbg !622
  %15 = load %struct._MODULE_REC*, %struct._MODULE_REC** %5, align 8, !dbg !625
  %16 = getelementptr inbounds %struct._MODULE_REC, %struct._MODULE_REC* %15, i32 0, i32 0, !dbg !627
  %17 = load i8*, i8** %16, align 8, !dbg !627
  %18 = load i8*, i8** %3, align 8, !dbg !628
  %19 = call i32 @g_ascii_strcasecmp(i8* %17, i8* %18), !dbg !629
  %20 = icmp eq i32 %19, 0, !dbg !630
  br i1 %20, label %21, label %23, !dbg !631

; <label>:21:                                     ; preds = %10
  %22 = load %struct._MODULE_REC*, %struct._MODULE_REC** %5, align 8, !dbg !632
  store %struct._MODULE_REC* %22, %struct._MODULE_REC** %2, align 8, !dbg !633
  br label %29, !dbg !633

; <label>:23:                                     ; preds = %10
  br label %24, !dbg !634

; <label>:24:                                     ; preds = %23
  %25 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !635
  %26 = getelementptr inbounds %struct._GSList, %struct._GSList* %25, i32 0, i32 1, !dbg !637
  %27 = load %struct._GSList*, %struct._GSList** %26, align 8, !dbg !637
  store %struct._GSList* %27, %struct._GSList** %4, align 8, !dbg !638
  br label %7, !dbg !639, !llvm.loop !640

; <label>:28:                                     ; preds = %7
  store %struct._MODULE_REC* null, %struct._MODULE_REC** %2, align 8, !dbg !642
  br label %29, !dbg !642

; <label>:29:                                     ; preds = %28, %21
  %30 = load %struct._MODULE_REC*, %struct._MODULE_REC** %2, align 8, !dbg !643
  ret %struct._MODULE_REC* %30, !dbg !643
}

declare noalias i8* @g_malloc0_n(i64, i64) #2

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #2

; Function Attrs: nounwind uwtable
define %struct.MODULE_FILE_REC* @module_file_find(%struct._MODULE_REC*, i8*) #0 !dbg !644 {
  %3 = alloca %struct.MODULE_FILE_REC*, align 8
  %4 = alloca %struct._MODULE_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca %struct.MODULE_FILE_REC*, align 8
  store %struct._MODULE_REC* %0, %struct._MODULE_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._MODULE_REC** %4, metadata !647, metadata !89), !dbg !648
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !649, metadata !89), !dbg !650
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !651, metadata !89), !dbg !652
  %8 = load %struct._MODULE_REC*, %struct._MODULE_REC** %4, align 8, !dbg !653
  %9 = getelementptr inbounds %struct._MODULE_REC, %struct._MODULE_REC* %8, i32 0, i32 1, !dbg !655
  %10 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !655
  store %struct._GSList* %10, %struct._GSList** %6, align 8, !dbg !656
  br label %11, !dbg !657

; <label>:11:                                     ; preds = %28, %2
  %12 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !658
  %13 = icmp ne %struct._GSList* %12, null, !dbg !661
  br i1 %13, label %14, label %32, !dbg !662

; <label>:14:                                     ; preds = %11
  call void @llvm.dbg.declare(metadata %struct.MODULE_FILE_REC** %7, metadata !663, metadata !89), !dbg !665
  %15 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !666
  %16 = getelementptr inbounds %struct._GSList, %struct._GSList* %15, i32 0, i32 0, !dbg !667
  %17 = load i8*, i8** %16, align 8, !dbg !667
  %18 = bitcast i8* %17 to %struct.MODULE_FILE_REC*, !dbg !666
  store %struct.MODULE_FILE_REC* %18, %struct.MODULE_FILE_REC** %7, align 8, !dbg !665
  %19 = load %struct.MODULE_FILE_REC*, %struct.MODULE_FILE_REC** %7, align 8, !dbg !668
  %20 = getelementptr inbounds %struct.MODULE_FILE_REC, %struct.MODULE_FILE_REC* %19, i32 0, i32 1, !dbg !670
  %21 = load i8*, i8** %20, align 8, !dbg !670
  %22 = load i8*, i8** %5, align 8, !dbg !671
  %23 = call i32 @g_strcmp0(i8* %21, i8* %22), !dbg !672
  %24 = icmp eq i32 %23, 0, !dbg !673
  br i1 %24, label %25, label %27, !dbg !674

; <label>:25:                                     ; preds = %14
  %26 = load %struct.MODULE_FILE_REC*, %struct.MODULE_FILE_REC** %7, align 8, !dbg !675
  store %struct.MODULE_FILE_REC* %26, %struct.MODULE_FILE_REC** %3, align 8, !dbg !676
  br label %33, !dbg !676

; <label>:27:                                     ; preds = %14
  br label %28, !dbg !677

; <label>:28:                                     ; preds = %27
  %29 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !678
  %30 = getelementptr inbounds %struct._GSList, %struct._GSList* %29, i32 0, i32 1, !dbg !680
  %31 = load %struct._GSList*, %struct._GSList** %30, align 8, !dbg !680
  store %struct._GSList* %31, %struct._GSList** %6, align 8, !dbg !681
  br label %11, !dbg !682, !llvm.loop !683

; <label>:32:                                     ; preds = %11
  store %struct.MODULE_FILE_REC* null, %struct.MODULE_FILE_REC** %3, align 8, !dbg !685
  br label %33, !dbg !685

; <label>:33:                                     ; preds = %32, %25
  %34 = load %struct.MODULE_FILE_REC*, %struct.MODULE_FILE_REC** %3, align 8, !dbg !686
  ret %struct.MODULE_FILE_REC* %34, !dbg !686
}

declare i32 @g_ascii_strcasecmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @modules_init() #0 !dbg !687 {
  store %struct._GSList* null, %struct._GSList** @modules, align 8, !dbg !688
  %1 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal), !dbg !689
  store %struct._GHashTable* %1, %struct._GHashTable** @idlookup, align 8, !dbg !690
  %2 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_direct_hash, i32 (i8*, i8*)* @g_direct_equal), !dbg !691
  store %struct._GHashTable* %2, %struct._GHashTable** @uniqids, align 8, !dbg !692
  %3 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal), !dbg !693
  store %struct._GHashTable* %3, %struct._GHashTable** @stridlookup, align 8, !dbg !694
  %4 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_direct_hash, i32 (i8*, i8*)* @g_direct_equal), !dbg !695
  store %struct._GHashTable* %4, %struct._GHashTable** @uniqstrids, align 8, !dbg !696
  store i32 0, i32* @next_uniq_id, align 4, !dbg !697
  ret void, !dbg !698
}

; Function Attrs: nounwind uwtable
define void @modules_deinit() #0 !dbg !699 {
  %1 = alloca %struct._GSList*, align 8
  %2 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %1, metadata !700, metadata !89), !dbg !701
  store %struct._GSList* null, %struct._GSList** %1, align 8, !dbg !702
  %3 = load %struct._GHashTable*, %struct._GHashTable** @idlookup, align 8, !dbg !703
  %4 = bitcast %struct._GSList** %1 to i8*, !dbg !704
  call void @g_hash_table_foreach(%struct._GHashTable* %3, void (i8*, i8*, i8*)* bitcast (void (i8*, i8*, %struct._GSList**)* @uniq_get_modules to void (i8*, i8*, i8*)*), i8* %4), !dbg !705
  %5 = load %struct._GHashTable*, %struct._GHashTable** @stridlookup, align 8, !dbg !706
  %6 = bitcast %struct._GSList** %1 to i8*, !dbg !707
  call void @g_hash_table_foreach(%struct._GHashTable* %5, void (i8*, i8*, i8*)* bitcast (void (i8*, i8*, %struct._GSList**)* @uniq_get_modules to void (i8*, i8*, i8*)*), i8* %6), !dbg !708
  br label %7, !dbg !709

; <label>:7:                                      ; preds = %10, %0
  %8 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !710
  %9 = icmp ne %struct._GSList* %8, null, !dbg !712
  br i1 %9, label %10, label %23, !dbg !713

; <label>:10:                                     ; preds = %7
  call void @llvm.dbg.declare(metadata i8** %2, metadata !714, metadata !89), !dbg !716
  %11 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !717
  %12 = getelementptr inbounds %struct._GSList, %struct._GSList* %11, i32 0, i32 0, !dbg !718
  %13 = load i8*, i8** %12, align 8, !dbg !718
  store i8* %13, i8** %2, align 8, !dbg !716
  %14 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !719
  %15 = getelementptr inbounds %struct._GSList, %struct._GSList* %14, i32 0, i32 0, !dbg !720
  %16 = load i8*, i8** %15, align 8, !dbg !720
  call void @module_uniq_destroy(i8* %16), !dbg !721
  %17 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !722
  %18 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !723
  %19 = getelementptr inbounds %struct._GSList, %struct._GSList* %18, i32 0, i32 0, !dbg !724
  %20 = load i8*, i8** %19, align 8, !dbg !724
  %21 = call %struct._GSList* @g_slist_remove(%struct._GSList* %17, i8* %20), !dbg !725
  store %struct._GSList* %21, %struct._GSList** %1, align 8, !dbg !726
  %22 = load i8*, i8** %2, align 8, !dbg !727
  call void @g_free(i8* %22), !dbg !728
  br label %7, !dbg !729, !llvm.loop !731

; <label>:23:                                     ; preds = %7
  %24 = load %struct._GHashTable*, %struct._GHashTable** @idlookup, align 8, !dbg !732
  call void @g_hash_table_destroy(%struct._GHashTable* %24), !dbg !733
  %25 = load %struct._GHashTable*, %struct._GHashTable** @stridlookup, align 8, !dbg !734
  call void @g_hash_table_destroy(%struct._GHashTable* %25), !dbg !735
  %26 = load %struct._GHashTable*, %struct._GHashTable** @uniqids, align 8, !dbg !736
  call void @g_hash_table_destroy(%struct._GHashTable* %26), !dbg !737
  %27 = load %struct._GHashTable*, %struct._GHashTable** @uniqstrids, align 8, !dbg !738
  call void @g_hash_table_destroy(%struct._GHashTable* %27), !dbg !739
  ret void, !dbg !740
}

; Function Attrs: nounwind uwtable
define internal void @uniq_get_modules(i8*, i8*, %struct._GSList**) #0 !dbg !741 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._GSList**, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !745, metadata !89), !dbg !746
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !747, metadata !89), !dbg !748
  store %struct._GSList** %2, %struct._GSList*** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList*** %6, metadata !749, metadata !89), !dbg !750
  %7 = load %struct._GSList**, %struct._GSList*** %6, align 8, !dbg !751
  %8 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !752
  %9 = load i8*, i8** %4, align 8, !dbg !753
  %10 = call noalias i8* @g_strdup(i8* %9), !dbg !754
  %11 = call %struct._GSList* @g_slist_append(%struct._GSList* %8, i8* %10), !dbg !755
  %12 = load %struct._GSList**, %struct._GSList*** %6, align 8, !dbg !757
  store %struct._GSList* %11, %struct._GSList** %12, align 8, !dbg !758
  ret void, !dbg !759
}

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!82, !83}
!llvm.ident = !{!84}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !70)
!1 = !DIFile(filename: "line49-modules.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{}
!3 = !{!4, !5, !7, !9, !13, !15, !18, !20, !29, !33, !34, !38, !53}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !8, line: 77, baseType: !4)
!8 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint8", file: !11, line: 38, baseType: !12)
!11 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!12 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !8, line: 48, baseType: !14)
!14 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !8, line: 46, baseType: !17)
!17 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashFunc", file: !8, line: 90, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!22 = !DISubroutineType(types: !23)
!23 = !{!24, !26}
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !8, line: 55, baseType: !25)
!25 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "gconstpointer", file: !8, line: 78, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCompareFunc", file: !8, line: 80, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!31 = !DISubroutineType(types: !32)
!32 = !{!33, !26, !26}
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !8, line: 49, baseType: !6)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHFunc", file: !8, line: 91, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !7, !7, !7}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "MODULE_REC", file: !40, line: 34, baseType: !41)
!40 = !DIFile(filename: "modules.h", directory: "/home/lichi/Desktop/irssi/task1")
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_MODULE_REC", file: !40, line: 48, size: 128, align: 64, elements: !42)
!42 = !{!43, !45}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !41, file: !40, line: 49, baseType: !44, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !41, file: !40, line: 50, baseType: !46, size: 64, align: 64, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !48, line: 37, baseType: !49)
!48 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !48, line: 39, size: 128, align: 64, elements: !50)
!50 = !{!51, !52}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !49, file: !48, line: 41, baseType: !7, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !49, file: !48, line: 42, baseType: !46, size: 64, align: 64, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "MODULE_FILE_REC", file: !40, line: 46, baseType: !55)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !40, line: 36, size: 384, align: 64, elements: !56)
!56 = !{!57, !58, !59, !60, !64, !69}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !55, file: !40, line: 37, baseType: !38, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !55, file: !40, line: 38, baseType: !44, size: 64, align: 64, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "defined_module_name", scope: !55, file: !40, line: 39, baseType: !44, size: 64, align: 64, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "module_deinit", scope: !55, file: !40, line: 40, baseType: !61, size: 64, align: 64, offset: 192)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{null}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "gmodule", scope: !55, file: !40, line: 43, baseType: !65, size: 64, align: 64, offset: 256)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "GModule", file: !67, line: 49, baseType: !68)
!67 = !DIFile(filename: "/usr/include/glib-2.0/gmodule.h", directory: "/home/lichi/Desktop/irssi/task1")
!68 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GModule", file: !67, line: 49, flags: DIFlagFwdDecl)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !55, file: !40, line: 45, baseType: !25, size: 1, align: 32, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!70 = !{!71, !73, !78, !79, !80, !81}
!71 = distinct !DIGlobalVariable(name: "modules", scope: !0, file: !72, line: 25, type: !46, isLocal: false, isDefinition: true, variable: %struct._GSList** @modules)
!72 = !DIFile(filename: "modules.c", directory: "/home/lichi/Desktop/irssi/task1")
!73 = distinct !DIGlobalVariable(name: "uniqids", scope: !0, file: !72, line: 27, type: !74, isLocal: true, isDefinition: true, variable: %struct._GHashTable** @uniqids)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !76, line: 37, baseType: !77)
!76 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!77 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !76, line: 37, flags: DIFlagFwdDecl)
!78 = distinct !DIGlobalVariable(name: "uniqstrids", scope: !0, file: !72, line: 27, type: !74, isLocal: true, isDefinition: true, variable: %struct._GHashTable** @uniqstrids)
!79 = distinct !DIGlobalVariable(name: "idlookup", scope: !0, file: !72, line: 28, type: !74, isLocal: true, isDefinition: true, variable: %struct._GHashTable** @idlookup)
!80 = distinct !DIGlobalVariable(name: "stridlookup", scope: !0, file: !72, line: 28, type: !74, isLocal: true, isDefinition: true, variable: %struct._GHashTable** @stridlookup)
!81 = distinct !DIGlobalVariable(name: "next_uniq_id", scope: !0, file: !72, line: 29, type: !6, isLocal: true, isDefinition: true, variable: i32* @next_uniq_id)
!82 = !{i32 2, !"Dwarf Version", i32 4}
!83 = !{i32 2, !"Debug Info Version", i32 3}
!84 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!85 = distinct !DISubprogram(name: "module_check_cast", scope: !72, file: !72, line: 31, type: !86, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!86 = !DISubroutineType(types: !87)
!87 = !{!4, !4, !6, !18}
!88 = !DILocalVariable(name: "object", arg: 1, scope: !85, file: !72, line: 31, type: !4)
!89 = !DIExpression()
!90 = !DILocation(line: 31, column: 31, scope: !85)
!91 = !DILocalVariable(name: "type_pos", arg: 2, scope: !85, file: !72, line: 31, type: !6)
!92 = !DILocation(line: 31, column: 43, scope: !85)
!93 = !DILocalVariable(name: "id", arg: 3, scope: !85, file: !72, line: 31, type: !18)
!94 = !DILocation(line: 31, column: 65, scope: !85)
!95 = !DILocation(line: 33, column: 9, scope: !85)
!96 = !DILocation(line: 33, column: 16, scope: !85)
!97 = !DILocation(line: 33, column: 23, scope: !85)
!98 = !DILocation(line: 33, column: 41, scope: !99)
!99 = !DILexicalBlockFile(scope: !85, file: !72, discriminator: 1)
!100 = !DILocation(line: 34, column: 37, scope: !85)
!101 = !DILocation(line: 34, column: 58, scope: !85)
!102 = !DILocation(line: 34, column: 48, scope: !85)
!103 = !DILocation(line: 34, column: 46, scope: !85)
!104 = !DILocation(line: 34, column: 5, scope: !85)
!105 = !DILocation(line: 34, column: 4, scope: !85)
!106 = !DILocation(line: 33, column: 26, scope: !99)
!107 = !DILocation(line: 34, column: 73, scope: !85)
!108 = !DILocation(line: 33, column: 9, scope: !99)
!109 = !DILocation(line: 33, column: 9, scope: !110)
!110 = !DILexicalBlockFile(scope: !85, file: !72, discriminator: 2)
!111 = !DILocation(line: 34, column: 57, scope: !99)
!112 = !DILocation(line: 33, column: 9, scope: !113)
!113 = !DILexicalBlockFile(scope: !85, file: !72, discriminator: 3)
!114 = !DILocation(line: 33, column: 9, scope: !115)
!115 = !DILexicalBlockFile(scope: !85, file: !72, discriminator: 4)
!116 = !DILocation(line: 33, column: 2, scope: !115)
!117 = distinct !DISubprogram(name: "module_find_id", scope: !72, file: !72, line: 113, type: !118, isLocal: false, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!118 = !DISubroutineType(types: !119)
!119 = !{!6, !18, !6}
!120 = !DILocalVariable(name: "module", arg: 1, scope: !117, file: !72, line: 113, type: !18)
!121 = !DILocation(line: 113, column: 32, scope: !117)
!122 = !DILocalVariable(name: "uniqid", arg: 2, scope: !117, file: !72, line: 113, type: !6)
!123 = !DILocation(line: 113, column: 44, scope: !117)
!124 = !DILocalVariable(name: "idlist", scope: !117, file: !72, line: 115, type: !74)
!125 = !DILocation(line: 115, column: 14, scope: !117)
!126 = !DILocalVariable(name: "origkey", scope: !117, file: !72, line: 116, type: !7)
!127 = !DILocation(line: 116, column: 11, scope: !117)
!128 = !DILocalVariable(name: "id", scope: !117, file: !72, line: 116, type: !7)
!129 = !DILocation(line: 116, column: 20, scope: !117)
!130 = !DILocalVariable(name: "ret", scope: !117, file: !72, line: 117, type: !6)
!131 = !DILocation(line: 117, column: 6, scope: !117)
!132 = !DILocation(line: 119, column: 2, scope: !117)
!133 = distinct !{!133, !132}
!134 = !DILocation(line: 119, column: 10, scope: !135)
!135 = !DILexicalBlockFile(scope: !136, file: !72, discriminator: 1)
!136 = distinct !DILexicalBlock(scope: !137, file: !72, line: 119, column: 10)
!137 = distinct !DILexicalBlock(scope: !117, file: !72, line: 119, column: 4)
!138 = !DILocation(line: 119, column: 17, scope: !135)
!139 = !DILocation(line: 119, column: 5, scope: !140)
!140 = !DILexicalBlockFile(scope: !141, file: !72, discriminator: 2)
!141 = distinct !DILexicalBlock(scope: !136, file: !72, line: 119, column: 3)
!142 = !DILocation(line: 119, column: 14, scope: !143)
!143 = !DILexicalBlockFile(scope: !144, file: !72, discriminator: 3)
!144 = distinct !DILexicalBlock(scope: !136, file: !72, line: 119, column: 12)
!145 = !DILocation(line: 119, column: 101, scope: !143)
!146 = !DILocation(line: 119, column: 117, scope: !147)
!147 = !DILexicalBlockFile(scope: !137, file: !72, discriminator: 4)
!148 = !DILocation(line: 121, column: 36, scope: !149)
!149 = distinct !DILexicalBlock(scope: !117, file: !72, line: 121, column: 6)
!150 = !DILocation(line: 121, column: 66, scope: !149)
!151 = !DILocation(line: 121, column: 57, scope: !149)
!152 = !DILocation(line: 121, column: 46, scope: !149)
!153 = !DILocation(line: 121, column: 7, scope: !149)
!154 = !DILocation(line: 121, column: 6, scope: !117)
!155 = !DILocation(line: 123, column: 3, scope: !149)
!156 = !DILocation(line: 126, column: 31, scope: !117)
!157 = !DILocation(line: 126, column: 41, scope: !117)
!158 = !DILocation(line: 126, column: 11, scope: !117)
!159 = !DILocation(line: 126, column: 9, scope: !117)
!160 = !DILocation(line: 127, column: 6, scope: !161)
!161 = distinct !DILexicalBlock(scope: !117, file: !72, line: 127, column: 6)
!162 = !DILocation(line: 127, column: 13, scope: !161)
!163 = !DILocation(line: 127, column: 6, scope: !117)
!164 = !DILocation(line: 128, column: 3, scope: !161)
!165 = !DILocation(line: 130, column: 25, scope: !117)
!166 = !DILocation(line: 130, column: 16, scope: !117)
!167 = !DILocation(line: 130, column: 9, scope: !117)
!168 = !DILocation(line: 130, column: 6, scope: !117)
!169 = !DILocation(line: 131, column: 36, scope: !170)
!170 = distinct !DILexicalBlock(scope: !117, file: !72, line: 131, column: 6)
!171 = !DILocation(line: 131, column: 44, scope: !170)
!172 = !DILocation(line: 131, column: 7, scope: !170)
!173 = !DILocation(line: 131, column: 63, scope: !170)
!174 = !DILocation(line: 132, column: 23, scope: !170)
!175 = !DILocation(line: 132, column: 14, scope: !170)
!176 = !DILocation(line: 132, column: 7, scope: !170)
!177 = !DILocation(line: 132, column: 31, scope: !170)
!178 = !DILocation(line: 132, column: 28, scope: !170)
!179 = !DILocation(line: 131, column: 6, scope: !180)
!180 = !DILexicalBlockFile(scope: !117, file: !72, discriminator: 1)
!181 = !DILocation(line: 133, column: 7, scope: !170)
!182 = !DILocation(line: 133, column: 3, scope: !170)
!183 = !DILocation(line: 135, column: 9, scope: !117)
!184 = !DILocation(line: 135, column: 2, scope: !117)
!185 = !DILocation(line: 136, column: 1, scope: !117)
!186 = distinct !DISubprogram(name: "module_check_cast_module", scope: !72, file: !72, line: 37, type: !187, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!187 = !DISubroutineType(types: !188)
!188 = !{!4, !4, !6, !18, !18}
!189 = !DILocalVariable(name: "object", arg: 1, scope: !186, file: !72, line: 37, type: !4)
!190 = !DILocation(line: 37, column: 38, scope: !186)
!191 = !DILocalVariable(name: "type_pos", arg: 2, scope: !186, file: !72, line: 37, type: !6)
!192 = !DILocation(line: 37, column: 50, scope: !186)
!193 = !DILocalVariable(name: "module", arg: 3, scope: !186, file: !72, line: 38, type: !18)
!194 = !DILocation(line: 38, column: 23, scope: !186)
!195 = !DILocalVariable(name: "id", arg: 4, scope: !186, file: !72, line: 38, type: !18)
!196 = !DILocation(line: 38, column: 43, scope: !186)
!197 = !DILocalVariable(name: "str", scope: !186, file: !72, line: 40, type: !18)
!198 = !DILocation(line: 40, column: 14, scope: !186)
!199 = !DILocation(line: 42, column: 6, scope: !200)
!200 = distinct !DILexicalBlock(scope: !186, file: !72, line: 42, column: 6)
!201 = !DILocation(line: 42, column: 13, scope: !200)
!202 = !DILocation(line: 42, column: 6, scope: !186)
!203 = !DILocation(line: 43, column: 3, scope: !200)
!204 = !DILocation(line: 45, column: 27, scope: !186)
!205 = !DILocation(line: 46, column: 40, scope: !186)
!206 = !DILocation(line: 46, column: 61, scope: !186)
!207 = !DILocation(line: 46, column: 51, scope: !186)
!208 = !DILocation(line: 46, column: 49, scope: !186)
!209 = !DILocation(line: 46, column: 8, scope: !186)
!210 = !DILocation(line: 46, column: 7, scope: !186)
!211 = !DILocation(line: 45, column: 8, scope: !186)
!212 = !DILocation(line: 45, column: 6, scope: !186)
!213 = !DILocation(line: 47, column: 9, scope: !186)
!214 = !DILocation(line: 47, column: 13, scope: !186)
!215 = !DILocation(line: 47, column: 20, scope: !186)
!216 = !DILocation(line: 47, column: 33, scope: !217)
!217 = !DILexicalBlockFile(scope: !186, file: !72, discriminator: 1)
!218 = !DILocation(line: 47, column: 38, scope: !217)
!219 = !DILocation(line: 47, column: 23, scope: !217)
!220 = !DILocation(line: 47, column: 42, scope: !217)
!221 = !DILocation(line: 47, column: 9, scope: !217)
!222 = !DILocation(line: 47, column: 9, scope: !223)
!223 = !DILexicalBlockFile(scope: !186, file: !72, discriminator: 2)
!224 = !DILocation(line: 47, column: 56, scope: !225)
!225 = !DILexicalBlockFile(scope: !186, file: !72, discriminator: 3)
!226 = !DILocation(line: 47, column: 9, scope: !225)
!227 = !DILocation(line: 47, column: 9, scope: !228)
!228 = !DILexicalBlockFile(scope: !186, file: !72, discriminator: 4)
!229 = !DILocation(line: 47, column: 2, scope: !228)
!230 = !DILocation(line: 48, column: 1, scope: !186)
!231 = distinct !DISubprogram(name: "module_find_id_str", scope: !72, file: !72, line: 139, type: !232, isLocal: false, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!232 = !DISubroutineType(types: !233)
!233 = !{!18, !18, !6}
!234 = !DILocalVariable(name: "module", arg: 1, scope: !231, file: !72, line: 139, type: !18)
!235 = !DILocation(line: 139, column: 44, scope: !231)
!236 = !DILocalVariable(name: "uniqid", arg: 2, scope: !231, file: !72, line: 139, type: !6)
!237 = !DILocation(line: 139, column: 56, scope: !231)
!238 = !DILocalVariable(name: "idlist", scope: !231, file: !72, line: 141, type: !74)
!239 = !DILocation(line: 141, column: 14, scope: !231)
!240 = !DILocalVariable(name: "origkey", scope: !231, file: !72, line: 142, type: !7)
!241 = !DILocation(line: 142, column: 11, scope: !231)
!242 = !DILocalVariable(name: "id", scope: !231, file: !72, line: 142, type: !7)
!243 = !DILocation(line: 142, column: 20, scope: !231)
!244 = !DILocalVariable(name: "ret", scope: !231, file: !72, line: 143, type: !18)
!245 = !DILocation(line: 143, column: 14, scope: !231)
!246 = !DILocation(line: 145, column: 2, scope: !231)
!247 = distinct !{!247, !246}
!248 = !DILocation(line: 145, column: 10, scope: !249)
!249 = !DILexicalBlockFile(scope: !250, file: !72, discriminator: 1)
!250 = distinct !DILexicalBlock(scope: !251, file: !72, line: 145, column: 10)
!251 = distinct !DILexicalBlock(scope: !231, file: !72, line: 145, column: 4)
!252 = !DILocation(line: 145, column: 17, scope: !249)
!253 = !DILocation(line: 145, column: 5, scope: !254)
!254 = !DILexicalBlockFile(scope: !255, file: !72, discriminator: 2)
!255 = distinct !DILexicalBlock(scope: !250, file: !72, line: 145, column: 3)
!256 = !DILocation(line: 145, column: 14, scope: !257)
!257 = !DILexicalBlockFile(scope: !258, file: !72, discriminator: 3)
!258 = distinct !DILexicalBlock(scope: !250, file: !72, line: 145, column: 12)
!259 = !DILocation(line: 145, column: 101, scope: !257)
!260 = !DILocation(line: 145, column: 7, scope: !261)
!261 = !DILexicalBlockFile(scope: !251, file: !72, discriminator: 4)
!262 = !DILocation(line: 147, column: 36, scope: !263)
!263 = distinct !DILexicalBlock(scope: !231, file: !72, line: 147, column: 6)
!264 = !DILocation(line: 147, column: 69, scope: !263)
!265 = !DILocation(line: 147, column: 60, scope: !263)
!266 = !DILocation(line: 147, column: 49, scope: !263)
!267 = !DILocation(line: 147, column: 7, scope: !263)
!268 = !DILocation(line: 147, column: 6, scope: !231)
!269 = !DILocation(line: 149, column: 3, scope: !263)
!270 = !DILocation(line: 152, column: 31, scope: !231)
!271 = !DILocation(line: 152, column: 44, scope: !231)
!272 = !DILocation(line: 152, column: 11, scope: !231)
!273 = !DILocation(line: 152, column: 9, scope: !231)
!274 = !DILocation(line: 153, column: 6, scope: !275)
!275 = distinct !DILexicalBlock(scope: !231, file: !72, line: 153, column: 6)
!276 = !DILocation(line: 153, column: 13, scope: !275)
!277 = !DILocation(line: 153, column: 6, scope: !231)
!278 = !DILocation(line: 154, column: 3, scope: !275)
!279 = !DILocation(line: 156, column: 8, scope: !231)
!280 = !DILocation(line: 156, column: 6, scope: !231)
!281 = !DILocation(line: 157, column: 36, scope: !282)
!282 = distinct !DILexicalBlock(scope: !231, file: !72, line: 157, column: 6)
!283 = !DILocation(line: 157, column: 44, scope: !282)
!284 = !DILocation(line: 157, column: 7, scope: !282)
!285 = !DILocation(line: 157, column: 63, scope: !282)
!286 = !DILocation(line: 158, column: 23, scope: !282)
!287 = !DILocation(line: 158, column: 14, scope: !282)
!288 = !DILocation(line: 158, column: 7, scope: !282)
!289 = !DILocation(line: 158, column: 31, scope: !282)
!290 = !DILocation(line: 158, column: 28, scope: !282)
!291 = !DILocation(line: 157, column: 6, scope: !292)
!292 = !DILexicalBlockFile(scope: !231, file: !72, discriminator: 1)
!293 = !DILocation(line: 159, column: 7, scope: !282)
!294 = !DILocation(line: 159, column: 3, scope: !282)
!295 = !DILocation(line: 161, column: 9, scope: !231)
!296 = !DILocation(line: 161, column: 2, scope: !231)
!297 = !DILocation(line: 162, column: 1, scope: !231)
!298 = distinct !DISubprogram(name: "module_get_uniq_id", scope: !72, file: !72, line: 51, type: !118, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!299 = !DILocalVariable(name: "module", arg: 1, scope: !298, file: !72, line: 51, type: !18)
!300 = !DILocation(line: 51, column: 36, scope: !298)
!301 = !DILocalVariable(name: "id", arg: 2, scope: !298, file: !72, line: 51, type: !6)
!302 = !DILocation(line: 51, column: 48, scope: !298)
!303 = !DILocalVariable(name: "ids", scope: !298, file: !72, line: 53, type: !74)
!304 = !DILocation(line: 53, column: 21, scope: !298)
!305 = !DILocalVariable(name: "origkey", scope: !298, file: !72, line: 54, type: !7)
!306 = !DILocation(line: 54, column: 11, scope: !298)
!307 = !DILocalVariable(name: "uniqid", scope: !298, file: !72, line: 54, type: !7)
!308 = !DILocation(line: 54, column: 20, scope: !298)
!309 = !DILocalVariable(name: "idp", scope: !298, file: !72, line: 54, type: !7)
!310 = !DILocation(line: 54, column: 28, scope: !298)
!311 = !DILocalVariable(name: "ret", scope: !298, file: !72, line: 55, type: !6)
!312 = !DILocation(line: 55, column: 6, scope: !298)
!313 = !DILocation(line: 57, column: 2, scope: !298)
!314 = distinct !{!314, !313}
!315 = !DILocation(line: 57, column: 10, scope: !316)
!316 = !DILexicalBlockFile(scope: !317, file: !72, discriminator: 1)
!317 = distinct !DILexicalBlock(scope: !318, file: !72, line: 57, column: 10)
!318 = distinct !DILexicalBlock(scope: !298, file: !72, line: 57, column: 4)
!319 = !DILocation(line: 57, column: 17, scope: !316)
!320 = !DILocation(line: 57, column: 5, scope: !321)
!321 = !DILexicalBlockFile(scope: !322, file: !72, discriminator: 2)
!322 = distinct !DILexicalBlock(scope: !317, file: !72, line: 57, column: 3)
!323 = !DILocation(line: 57, column: 14, scope: !324)
!324 = !DILexicalBlockFile(scope: !325, file: !72, discriminator: 3)
!325 = distinct !DILexicalBlock(scope: !317, file: !72, line: 57, column: 12)
!326 = !DILocation(line: 57, column: 101, scope: !324)
!327 = !DILocation(line: 57, column: 117, scope: !328)
!328 = !DILexicalBlockFile(scope: !318, file: !72, discriminator: 4)
!329 = !DILocation(line: 59, column: 28, scope: !298)
!330 = !DILocation(line: 59, column: 38, scope: !298)
!331 = !DILocation(line: 59, column: 8, scope: !298)
!332 = !DILocation(line: 59, column: 6, scope: !298)
!333 = !DILocation(line: 60, column: 6, scope: !334)
!334 = distinct !DILexicalBlock(scope: !298, file: !72, line: 60, column: 6)
!335 = !DILocation(line: 60, column: 10, scope: !334)
!336 = !DILocation(line: 60, column: 6, scope: !298)
!337 = !DILocation(line: 62, column: 9, scope: !338)
!338 = distinct !DILexicalBlock(scope: !334, file: !72, line: 60, column: 18)
!339 = !DILocation(line: 62, column: 7, scope: !338)
!340 = !DILocation(line: 64, column: 23, scope: !338)
!341 = !DILocation(line: 64, column: 42, scope: !338)
!342 = !DILocation(line: 64, column: 33, scope: !338)
!343 = !DILocation(line: 64, column: 51, scope: !338)
!344 = !DILocation(line: 64, column: 3, scope: !345)
!345 = !DILexicalBlockFile(scope: !338, file: !72, discriminator: 1)
!346 = !DILocation(line: 65, column: 2, scope: !338)
!347 = !DILocation(line: 67, column: 29, scope: !298)
!348 = !DILocation(line: 67, column: 20, scope: !298)
!349 = !DILocation(line: 67, column: 9, scope: !298)
!350 = !DILocation(line: 67, column: 6, scope: !298)
!351 = !DILocation(line: 68, column: 36, scope: !352)
!352 = distinct !DILexicalBlock(scope: !298, file: !72, line: 68, column: 6)
!353 = !DILocation(line: 68, column: 41, scope: !352)
!354 = !DILocation(line: 68, column: 7, scope: !352)
!355 = !DILocation(line: 68, column: 6, scope: !298)
!356 = !DILocation(line: 70, column: 21, scope: !357)
!357 = distinct !DILexicalBlock(scope: !352, file: !72, line: 68, column: 66)
!358 = !DILocation(line: 70, column: 7, scope: !357)
!359 = !DILocation(line: 71, column: 37, scope: !357)
!360 = !DILocation(line: 71, column: 42, scope: !357)
!361 = !DILocation(line: 71, column: 68, scope: !357)
!362 = !DILocation(line: 71, column: 59, scope: !357)
!363 = !DILocation(line: 71, column: 48, scope: !357)
!364 = !DILocation(line: 71, column: 17, scope: !357)
!365 = !DILocation(line: 72, column: 37, scope: !357)
!366 = !DILocation(line: 72, column: 67, scope: !357)
!367 = !DILocation(line: 72, column: 58, scope: !357)
!368 = !DILocation(line: 72, column: 47, scope: !357)
!369 = !DILocation(line: 72, column: 74, scope: !357)
!370 = !DILocation(line: 72, column: 17, scope: !357)
!371 = !DILocation(line: 73, column: 2, scope: !357)
!372 = !DILocation(line: 74, column: 40, scope: !373)
!373 = distinct !DILexicalBlock(scope: !352, file: !72, line: 73, column: 9)
!374 = !DILocation(line: 74, column: 31, scope: !373)
!375 = !DILocation(line: 74, column: 24, scope: !373)
!376 = !DILocation(line: 74, column: 21, scope: !373)
!377 = !DILocation(line: 77, column: 9, scope: !298)
!378 = !DILocation(line: 77, column: 2, scope: !298)
!379 = !DILocation(line: 78, column: 1, scope: !298)
!380 = distinct !DISubprogram(name: "module_get_uniq_id_str", scope: !72, file: !72, line: 81, type: !381, isLocal: false, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!381 = !DISubroutineType(types: !382)
!382 = !{!6, !18, !18}
!383 = !DILocalVariable(name: "module", arg: 1, scope: !380, file: !72, line: 81, type: !18)
!384 = !DILocation(line: 81, column: 40, scope: !380)
!385 = !DILocalVariable(name: "id", arg: 2, scope: !380, file: !72, line: 81, type: !18)
!386 = !DILocation(line: 81, column: 60, scope: !380)
!387 = !DILocalVariable(name: "ids", scope: !380, file: !72, line: 83, type: !74)
!388 = !DILocation(line: 83, column: 21, scope: !380)
!389 = !DILocalVariable(name: "origkey", scope: !380, file: !72, line: 84, type: !7)
!390 = !DILocation(line: 84, column: 11, scope: !380)
!391 = !DILocalVariable(name: "uniqid", scope: !380, file: !72, line: 84, type: !7)
!392 = !DILocation(line: 84, column: 20, scope: !380)
!393 = !DILocalVariable(name: "ret", scope: !380, file: !72, line: 85, type: !6)
!394 = !DILocation(line: 85, column: 6, scope: !380)
!395 = !DILocation(line: 87, column: 2, scope: !380)
!396 = distinct !{!396, !395}
!397 = !DILocation(line: 87, column: 10, scope: !398)
!398 = !DILexicalBlockFile(scope: !399, file: !72, discriminator: 1)
!399 = distinct !DILexicalBlock(scope: !400, file: !72, line: 87, column: 10)
!400 = distinct !DILexicalBlock(scope: !380, file: !72, line: 87, column: 4)
!401 = !DILocation(line: 87, column: 17, scope: !398)
!402 = !DILocation(line: 87, column: 5, scope: !403)
!403 = !DILexicalBlockFile(scope: !404, file: !72, discriminator: 2)
!404 = distinct !DILexicalBlock(scope: !399, file: !72, line: 87, column: 3)
!405 = !DILocation(line: 87, column: 14, scope: !406)
!406 = !DILexicalBlockFile(scope: !407, file: !72, discriminator: 3)
!407 = distinct !DILexicalBlock(scope: !399, file: !72, line: 87, column: 12)
!408 = !DILocation(line: 87, column: 101, scope: !406)
!409 = !DILocation(line: 87, column: 117, scope: !410)
!410 = !DILexicalBlockFile(scope: !400, file: !72, discriminator: 4)
!411 = !DILocation(line: 89, column: 28, scope: !380)
!412 = !DILocation(line: 89, column: 41, scope: !380)
!413 = !DILocation(line: 89, column: 8, scope: !380)
!414 = !DILocation(line: 89, column: 6, scope: !380)
!415 = !DILocation(line: 90, column: 6, scope: !416)
!416 = distinct !DILexicalBlock(scope: !380, file: !72, line: 90, column: 6)
!417 = !DILocation(line: 90, column: 10, scope: !416)
!418 = !DILocation(line: 90, column: 6, scope: !380)
!419 = !DILocation(line: 92, column: 9, scope: !420)
!420 = distinct !DILexicalBlock(scope: !416, file: !72, line: 90, column: 18)
!421 = !DILocation(line: 92, column: 7, scope: !420)
!422 = !DILocation(line: 94, column: 23, scope: !420)
!423 = !DILocation(line: 94, column: 45, scope: !420)
!424 = !DILocation(line: 94, column: 36, scope: !420)
!425 = !DILocation(line: 94, column: 54, scope: !420)
!426 = !DILocation(line: 94, column: 3, scope: !427)
!427 = !DILexicalBlockFile(scope: !420, file: !72, discriminator: 1)
!428 = !DILocation(line: 95, column: 2, scope: !420)
!429 = !DILocation(line: 97, column: 36, scope: !430)
!430 = distinct !DILexicalBlock(scope: !380, file: !72, line: 97, column: 6)
!431 = !DILocation(line: 97, column: 41, scope: !430)
!432 = !DILocation(line: 97, column: 7, scope: !430)
!433 = !DILocation(line: 97, column: 6, scope: !380)
!434 = !DILocalVariable(name: "saveid", scope: !435, file: !72, line: 99, type: !44)
!435 = distinct !DILexicalBlock(scope: !430, file: !72, line: 97, column: 65)
!436 = !DILocation(line: 99, column: 9, scope: !435)
!437 = !DILocation(line: 101, column: 21, scope: !435)
!438 = !DILocation(line: 101, column: 12, scope: !435)
!439 = !DILocation(line: 101, column: 10, scope: !435)
!440 = !DILocation(line: 102, column: 21, scope: !435)
!441 = !DILocation(line: 102, column: 7, scope: !435)
!442 = !DILocation(line: 103, column: 37, scope: !435)
!443 = !DILocation(line: 103, column: 42, scope: !435)
!444 = !DILocation(line: 103, column: 71, scope: !435)
!445 = !DILocation(line: 103, column: 62, scope: !435)
!446 = !DILocation(line: 103, column: 51, scope: !435)
!447 = !DILocation(line: 103, column: 17, scope: !435)
!448 = !DILocation(line: 104, column: 37, scope: !435)
!449 = !DILocation(line: 104, column: 70, scope: !435)
!450 = !DILocation(line: 104, column: 61, scope: !435)
!451 = !DILocation(line: 104, column: 50, scope: !435)
!452 = !DILocation(line: 104, column: 77, scope: !435)
!453 = !DILocation(line: 104, column: 17, scope: !435)
!454 = !DILocation(line: 105, column: 2, scope: !435)
!455 = !DILocation(line: 106, column: 40, scope: !456)
!456 = distinct !DILexicalBlock(scope: !430, file: !72, line: 105, column: 9)
!457 = !DILocation(line: 106, column: 31, scope: !456)
!458 = !DILocation(line: 106, column: 24, scope: !456)
!459 = !DILocation(line: 106, column: 21, scope: !456)
!460 = !DILocation(line: 109, column: 9, scope: !380)
!461 = !DILocation(line: 109, column: 2, scope: !380)
!462 = !DILocation(line: 110, column: 1, scope: !380)
!463 = distinct !DISubprogram(name: "module_uniq_destroy", scope: !72, file: !72, line: 177, type: !464, isLocal: false, isDefinition: true, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!464 = !DISubroutineType(types: !465)
!465 = !{null, !18}
!466 = !DILocalVariable(name: "module", arg: 1, scope: !463, file: !72, line: 177, type: !18)
!467 = !DILocation(line: 177, column: 38, scope: !463)
!468 = !DILocalVariable(name: "idlist", scope: !463, file: !72, line: 179, type: !74)
!469 = !DILocation(line: 179, column: 14, scope: !463)
!470 = !DILocalVariable(name: "key", scope: !463, file: !72, line: 180, type: !7)
!471 = !DILocation(line: 180, column: 11, scope: !463)
!472 = !DILocalVariable(name: "value", scope: !463, file: !72, line: 180, type: !7)
!473 = !DILocation(line: 180, column: 16, scope: !463)
!474 = !DILocation(line: 182, column: 35, scope: !475)
!475 = distinct !DILexicalBlock(scope: !463, file: !72, line: 182, column: 6)
!476 = !DILocation(line: 182, column: 45, scope: !475)
!477 = !DILocation(line: 182, column: 6, scope: !475)
!478 = !DILocation(line: 182, column: 6, scope: !463)
!479 = !DILocation(line: 183, column: 12, scope: !480)
!480 = distinct !DILexicalBlock(scope: !475, file: !72, line: 182, column: 68)
!481 = !DILocation(line: 183, column: 10, scope: !480)
!482 = !DILocation(line: 185, column: 23, scope: !480)
!483 = !DILocation(line: 185, column: 33, scope: !480)
!484 = !DILocation(line: 185, column: 3, scope: !480)
!485 = !DILocation(line: 186, column: 10, scope: !480)
!486 = !DILocation(line: 186, column: 3, scope: !480)
!487 = !DILocation(line: 188, column: 24, scope: !480)
!488 = !DILocation(line: 188, column: 3, scope: !480)
!489 = !DILocation(line: 189, column: 24, scope: !480)
!490 = !DILocation(line: 189, column: 3, scope: !480)
!491 = !DILocation(line: 190, column: 2, scope: !480)
!492 = !DILocation(line: 192, column: 35, scope: !493)
!493 = distinct !DILexicalBlock(scope: !463, file: !72, line: 192, column: 6)
!494 = !DILocation(line: 192, column: 48, scope: !493)
!495 = !DILocation(line: 192, column: 6, scope: !493)
!496 = !DILocation(line: 192, column: 6, scope: !463)
!497 = !DILocation(line: 193, column: 12, scope: !498)
!498 = distinct !DILexicalBlock(scope: !493, file: !72, line: 192, column: 71)
!499 = !DILocation(line: 193, column: 10, scope: !498)
!500 = !DILocation(line: 195, column: 23, scope: !498)
!501 = !DILocation(line: 195, column: 36, scope: !498)
!502 = !DILocation(line: 195, column: 3, scope: !498)
!503 = !DILocation(line: 196, column: 10, scope: !498)
!504 = !DILocation(line: 196, column: 3, scope: !498)
!505 = !DILocation(line: 198, column: 24, scope: !498)
!506 = !DILocation(line: 198, column: 3, scope: !498)
!507 = !DILocation(line: 199, column: 24, scope: !498)
!508 = !DILocation(line: 199, column: 3, scope: !498)
!509 = !DILocation(line: 200, column: 2, scope: !498)
!510 = !DILocation(line: 201, column: 1, scope: !463)
!511 = distinct !DISubprogram(name: "uniq_destroy", scope: !72, file: !72, line: 164, type: !512, isLocal: true, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!512 = !DISubroutineType(types: !513)
!513 = !{null, !7, !7}
!514 = !DILocalVariable(name: "key", arg: 1, scope: !511, file: !72, line: 164, type: !7)
!515 = !DILocation(line: 164, column: 35, scope: !511)
!516 = !DILocalVariable(name: "value", arg: 2, scope: !511, file: !72, line: 164, type: !7)
!517 = !DILocation(line: 164, column: 49, scope: !511)
!518 = !DILocation(line: 166, column: 29, scope: !511)
!519 = !DILocation(line: 166, column: 38, scope: !511)
!520 = !DILocation(line: 166, column: 9, scope: !511)
!521 = !DILocation(line: 167, column: 1, scope: !511)
!522 = distinct !DISubprogram(name: "uniq_destroy_str", scope: !72, file: !72, line: 169, type: !512, isLocal: true, isDefinition: true, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!523 = !DILocalVariable(name: "key", arg: 1, scope: !522, file: !72, line: 169, type: !7)
!524 = !DILocation(line: 169, column: 39, scope: !522)
!525 = !DILocalVariable(name: "value", arg: 2, scope: !522, file: !72, line: 169, type: !7)
!526 = !DILocation(line: 169, column: 53, scope: !522)
!527 = !DILocation(line: 171, column: 29, scope: !522)
!528 = !DILocation(line: 171, column: 41, scope: !522)
!529 = !DILocation(line: 171, column: 9, scope: !522)
!530 = !DILocation(line: 172, column: 16, scope: !522)
!531 = !DILocation(line: 172, column: 9, scope: !522)
!532 = !DILocation(line: 173, column: 1, scope: !522)
!533 = distinct !DISubprogram(name: "module_register_full", scope: !72, file: !72, line: 206, type: !534, isLocal: false, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!534 = !DISubroutineType(types: !535)
!535 = !{!53, !18, !18, !18}
!536 = !DILocalVariable(name: "name", arg: 1, scope: !533, file: !72, line: 206, type: !18)
!537 = !DILocation(line: 206, column: 51, scope: !533)
!538 = !DILocalVariable(name: "submodule", arg: 2, scope: !533, file: !72, line: 206, type: !18)
!539 = !DILocation(line: 206, column: 69, scope: !533)
!540 = !DILocalVariable(name: "defined_module_name", arg: 3, scope: !533, file: !72, line: 207, type: !18)
!541 = !DILocation(line: 207, column: 23, scope: !533)
!542 = !DILocalVariable(name: "module", scope: !533, file: !72, line: 209, type: !38)
!543 = !DILocation(line: 209, column: 14, scope: !533)
!544 = !DILocalVariable(name: "file", scope: !533, file: !72, line: 210, type: !53)
!545 = !DILocation(line: 210, column: 26, scope: !533)
!546 = !DILocation(line: 212, column: 23, scope: !533)
!547 = !DILocation(line: 212, column: 11, scope: !533)
!548 = !DILocation(line: 212, column: 9, scope: !533)
!549 = !DILocation(line: 213, column: 6, scope: !550)
!550 = distinct !DILexicalBlock(scope: !533, file: !72, line: 213, column: 6)
!551 = !DILocation(line: 213, column: 13, scope: !550)
!552 = !DILocation(line: 213, column: 6, scope: !533)
!553 = !DILocation(line: 214, column: 28, scope: !554)
!554 = distinct !DILexicalBlock(scope: !550, file: !72, line: 213, column: 21)
!555 = !DILocation(line: 214, column: 13, scope: !554)
!556 = !DILocation(line: 214, column: 10, scope: !554)
!557 = !DILocation(line: 215, column: 27, scope: !554)
!558 = !DILocation(line: 215, column: 18, scope: !554)
!559 = !DILocation(line: 215, column: 3, scope: !554)
!560 = !DILocation(line: 215, column: 11, scope: !554)
!561 = !DILocation(line: 215, column: 16, scope: !554)
!562 = !DILocation(line: 217, column: 42, scope: !554)
!563 = !DILocation(line: 217, column: 51, scope: !554)
!564 = !DILocation(line: 217, column: 27, scope: !554)
!565 = !DILocation(line: 217, column: 25, scope: !554)
!566 = !DILocation(line: 218, column: 2, scope: !554)
!567 = !DILocation(line: 220, column: 26, scope: !533)
!568 = !DILocation(line: 220, column: 34, scope: !533)
!569 = !DILocation(line: 220, column: 9, scope: !533)
!570 = !DILocation(line: 220, column: 7, scope: !533)
!571 = !DILocation(line: 221, column: 6, scope: !572)
!572 = distinct !DILexicalBlock(scope: !533, file: !72, line: 221, column: 6)
!573 = !DILocation(line: 221, column: 11, scope: !572)
!574 = !DILocation(line: 221, column: 6, scope: !533)
!575 = !DILocation(line: 222, column: 10, scope: !572)
!576 = !DILocation(line: 222, column: 3, scope: !572)
!577 = !DILocation(line: 224, column: 30, scope: !533)
!578 = !DILocation(line: 224, column: 10, scope: !533)
!579 = !DILocation(line: 224, column: 7, scope: !533)
!580 = !DILocation(line: 225, column: 15, scope: !533)
!581 = !DILocation(line: 225, column: 2, scope: !533)
!582 = !DILocation(line: 225, column: 8, scope: !533)
!583 = !DILocation(line: 225, column: 13, scope: !533)
!584 = !DILocation(line: 226, column: 24, scope: !533)
!585 = !DILocation(line: 226, column: 15, scope: !533)
!586 = !DILocation(line: 226, column: 2, scope: !533)
!587 = !DILocation(line: 226, column: 8, scope: !533)
!588 = !DILocation(line: 226, column: 13, scope: !533)
!589 = !DILocation(line: 227, column: 46, scope: !533)
!590 = !DILocation(line: 227, column: 37, scope: !533)
!591 = !DILocation(line: 227, column: 9, scope: !533)
!592 = !DILocation(line: 227, column: 15, scope: !533)
!593 = !DILocation(line: 227, column: 35, scope: !533)
!594 = !DILocation(line: 229, column: 33, scope: !533)
!595 = !DILocation(line: 229, column: 41, scope: !533)
!596 = !DILocation(line: 229, column: 48, scope: !533)
!597 = !DILocation(line: 229, column: 18, scope: !533)
!598 = !DILocation(line: 229, column: 2, scope: !533)
!599 = !DILocation(line: 229, column: 10, scope: !533)
!600 = !DILocation(line: 229, column: 16, scope: !533)
!601 = !DILocation(line: 230, column: 16, scope: !533)
!602 = !DILocation(line: 230, column: 9, scope: !533)
!603 = !DILocation(line: 231, column: 1, scope: !533)
!604 = distinct !DISubprogram(name: "module_find", scope: !72, file: !72, line: 233, type: !605, isLocal: false, isDefinition: true, scopeLine: 234, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!605 = !DISubroutineType(types: !606)
!606 = !{!38, !18}
!607 = !DILocalVariable(name: "name", arg: 1, scope: !604, file: !72, line: 233, type: !18)
!608 = !DILocation(line: 233, column: 37, scope: !604)
!609 = !DILocalVariable(name: "tmp", scope: !604, file: !72, line: 235, type: !46)
!610 = !DILocation(line: 235, column: 10, scope: !604)
!611 = !DILocation(line: 237, column: 13, scope: !612)
!612 = distinct !DILexicalBlock(scope: !604, file: !72, line: 237, column: 2)
!613 = !DILocation(line: 237, column: 11, scope: !612)
!614 = !DILocation(line: 237, column: 7, scope: !612)
!615 = !DILocation(line: 237, column: 22, scope: !616)
!616 = !DILexicalBlockFile(scope: !617, file: !72, discriminator: 1)
!617 = distinct !DILexicalBlock(scope: !612, file: !72, line: 237, column: 2)
!618 = !DILocation(line: 237, column: 26, scope: !616)
!619 = !DILocation(line: 237, column: 2, scope: !616)
!620 = !DILocalVariable(name: "rec", scope: !621, file: !72, line: 238, type: !38)
!621 = distinct !DILexicalBlock(scope: !617, file: !72, line: 237, column: 51)
!622 = !DILocation(line: 238, column: 15, scope: !621)
!623 = !DILocation(line: 238, column: 21, scope: !621)
!624 = !DILocation(line: 238, column: 26, scope: !621)
!625 = !DILocation(line: 240, column: 26, scope: !626)
!626 = distinct !DILexicalBlock(scope: !621, file: !72, line: 240, column: 7)
!627 = !DILocation(line: 240, column: 31, scope: !626)
!628 = !DILocation(line: 240, column: 37, scope: !626)
!629 = !DILocation(line: 240, column: 7, scope: !626)
!630 = !DILocation(line: 240, column: 43, scope: !626)
!631 = !DILocation(line: 240, column: 7, scope: !621)
!632 = !DILocation(line: 241, column: 11, scope: !626)
!633 = !DILocation(line: 241, column: 4, scope: !626)
!634 = !DILocation(line: 242, column: 2, scope: !621)
!635 = !DILocation(line: 237, column: 40, scope: !636)
!636 = !DILexicalBlockFile(scope: !617, file: !72, discriminator: 2)
!637 = !DILocation(line: 237, column: 45, scope: !636)
!638 = !DILocation(line: 237, column: 38, scope: !636)
!639 = !DILocation(line: 237, column: 2, scope: !636)
!640 = distinct !{!640, !641}
!641 = !DILocation(line: 237, column: 2, scope: !604)
!642 = !DILocation(line: 244, column: 2, scope: !604)
!643 = !DILocation(line: 245, column: 1, scope: !604)
!644 = distinct !DISubprogram(name: "module_file_find", scope: !72, file: !72, line: 247, type: !645, isLocal: false, isDefinition: true, scopeLine: 248, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!645 = !DISubroutineType(types: !646)
!646 = !{!53, !38, !18}
!647 = !DILocalVariable(name: "module", arg: 1, scope: !644, file: !72, line: 247, type: !38)
!648 = !DILocation(line: 247, column: 47, scope: !644)
!649 = !DILocalVariable(name: "name", arg: 2, scope: !644, file: !72, line: 247, type: !18)
!650 = !DILocation(line: 247, column: 67, scope: !644)
!651 = !DILocalVariable(name: "tmp", scope: !644, file: !72, line: 249, type: !46)
!652 = !DILocation(line: 249, column: 10, scope: !644)
!653 = !DILocation(line: 251, column: 13, scope: !654)
!654 = distinct !DILexicalBlock(scope: !644, file: !72, line: 251, column: 2)
!655 = !DILocation(line: 251, column: 21, scope: !654)
!656 = !DILocation(line: 251, column: 11, scope: !654)
!657 = !DILocation(line: 251, column: 7, scope: !654)
!658 = !DILocation(line: 251, column: 28, scope: !659)
!659 = !DILexicalBlockFile(scope: !660, file: !72, discriminator: 1)
!660 = distinct !DILexicalBlock(scope: !654, file: !72, line: 251, column: 2)
!661 = !DILocation(line: 251, column: 32, scope: !659)
!662 = !DILocation(line: 251, column: 2, scope: !659)
!663 = !DILocalVariable(name: "rec", scope: !664, file: !72, line: 252, type: !53)
!664 = distinct !DILexicalBlock(scope: !660, file: !72, line: 251, column: 57)
!665 = !DILocation(line: 252, column: 20, scope: !664)
!666 = !DILocation(line: 252, column: 26, scope: !664)
!667 = !DILocation(line: 252, column: 31, scope: !664)
!668 = !DILocation(line: 254, column: 17, scope: !669)
!669 = distinct !DILexicalBlock(scope: !664, file: !72, line: 254, column: 7)
!670 = !DILocation(line: 254, column: 22, scope: !669)
!671 = !DILocation(line: 254, column: 28, scope: !669)
!672 = !DILocation(line: 254, column: 7, scope: !669)
!673 = !DILocation(line: 254, column: 34, scope: !669)
!674 = !DILocation(line: 254, column: 7, scope: !664)
!675 = !DILocation(line: 255, column: 32, scope: !669)
!676 = !DILocation(line: 255, column: 25, scope: !669)
!677 = !DILocation(line: 256, column: 2, scope: !664)
!678 = !DILocation(line: 251, column: 46, scope: !679)
!679 = !DILexicalBlockFile(scope: !660, file: !72, discriminator: 2)
!680 = !DILocation(line: 251, column: 51, scope: !679)
!681 = !DILocation(line: 251, column: 44, scope: !679)
!682 = !DILocation(line: 251, column: 2, scope: !679)
!683 = distinct !{!683, !684}
!684 = !DILocation(line: 251, column: 2, scope: !644)
!685 = !DILocation(line: 258, column: 9, scope: !644)
!686 = !DILocation(line: 259, column: 1, scope: !644)
!687 = distinct !DISubprogram(name: "modules_init", scope: !72, file: !72, line: 266, type: !62, isLocal: false, isDefinition: true, scopeLine: 267, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!688 = !DILocation(line: 268, column: 10, scope: !687)
!689 = !DILocation(line: 270, column: 13, scope: !687)
!690 = !DILocation(line: 270, column: 11, scope: !687)
!691 = !DILocation(line: 272, column: 12, scope: !687)
!692 = !DILocation(line: 272, column: 10, scope: !687)
!693 = !DILocation(line: 275, column: 16, scope: !687)
!694 = !DILocation(line: 275, column: 14, scope: !687)
!695 = !DILocation(line: 277, column: 15, scope: !687)
!696 = !DILocation(line: 277, column: 13, scope: !687)
!697 = !DILocation(line: 279, column: 15, scope: !687)
!698 = !DILocation(line: 280, column: 1, scope: !687)
!699 = distinct !DISubprogram(name: "modules_deinit", scope: !72, file: !72, line: 282, type: !62, isLocal: false, isDefinition: true, scopeLine: 283, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!700 = !DILocalVariable(name: "list", scope: !699, file: !72, line: 284, type: !46)
!701 = !DILocation(line: 284, column: 10, scope: !699)
!702 = !DILocation(line: 286, column: 7, scope: !699)
!703 = !DILocation(line: 287, column: 23, scope: !699)
!704 = !DILocation(line: 287, column: 60, scope: !699)
!705 = !DILocation(line: 287, column: 2, scope: !699)
!706 = !DILocation(line: 288, column: 23, scope: !699)
!707 = !DILocation(line: 288, column: 63, scope: !699)
!708 = !DILocation(line: 288, column: 2, scope: !699)
!709 = !DILocation(line: 290, column: 2, scope: !699)
!710 = !DILocation(line: 290, column: 9, scope: !711)
!711 = !DILexicalBlockFile(scope: !699, file: !72, discriminator: 1)
!712 = !DILocation(line: 290, column: 14, scope: !711)
!713 = !DILocation(line: 290, column: 2, scope: !711)
!714 = !DILocalVariable(name: "tmp", scope: !715, file: !72, line: 291, type: !4)
!715 = distinct !DILexicalBlock(scope: !699, file: !72, line: 290, column: 22)
!716 = !DILocation(line: 291, column: 9, scope: !715)
!717 = !DILocation(line: 291, column: 15, scope: !715)
!718 = !DILocation(line: 291, column: 21, scope: !715)
!719 = !DILocation(line: 292, column: 23, scope: !715)
!720 = !DILocation(line: 292, column: 29, scope: !715)
!721 = !DILocation(line: 292, column: 3, scope: !715)
!722 = !DILocation(line: 293, column: 25, scope: !715)
!723 = !DILocation(line: 293, column: 31, scope: !715)
!724 = !DILocation(line: 293, column: 37, scope: !715)
!725 = !DILocation(line: 293, column: 10, scope: !715)
!726 = !DILocation(line: 293, column: 8, scope: !715)
!727 = !DILocation(line: 294, column: 10, scope: !715)
!728 = !DILocation(line: 294, column: 3, scope: !715)
!729 = !DILocation(line: 290, column: 2, scope: !730)
!730 = !DILexicalBlockFile(scope: !699, file: !72, discriminator: 2)
!731 = distinct !{!731, !709}
!732 = !DILocation(line: 297, column: 23, scope: !699)
!733 = !DILocation(line: 297, column: 2, scope: !699)
!734 = !DILocation(line: 298, column: 23, scope: !699)
!735 = !DILocation(line: 298, column: 2, scope: !699)
!736 = !DILocation(line: 299, column: 23, scope: !699)
!737 = !DILocation(line: 299, column: 2, scope: !699)
!738 = !DILocation(line: 300, column: 23, scope: !699)
!739 = !DILocation(line: 300, column: 2, scope: !699)
!740 = !DILocation(line: 301, column: 1, scope: !699)
!741 = distinct !DISubprogram(name: "uniq_get_modules", scope: !72, file: !72, line: 261, type: !742, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!742 = !DISubroutineType(types: !743)
!743 = !{null, !44, !4, !744}
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!745 = !DILocalVariable(name: "key", arg: 1, scope: !741, file: !72, line: 261, type: !44)
!746 = !DILocation(line: 261, column: 36, scope: !741)
!747 = !DILocalVariable(name: "value", arg: 2, scope: !741, file: !72, line: 261, type: !4)
!748 = !DILocation(line: 261, column: 47, scope: !741)
!749 = !DILocalVariable(name: "list", arg: 3, scope: !741, file: !72, line: 261, type: !744)
!750 = !DILocation(line: 261, column: 63, scope: !741)
!751 = !DILocation(line: 263, column: 33, scope: !741)
!752 = !DILocation(line: 263, column: 32, scope: !741)
!753 = !DILocation(line: 263, column: 48, scope: !741)
!754 = !DILocation(line: 263, column: 39, scope: !741)
!755 = !DILocation(line: 263, column: 17, scope: !756)
!756 = !DILexicalBlockFile(scope: !741, file: !72, discriminator: 1)
!757 = !DILocation(line: 263, column: 10, scope: !741)
!758 = !DILocation(line: 263, column: 15, scope: !741)
!759 = !DILocation(line: 264, column: 1, scope: !741)
