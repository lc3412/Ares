; ModuleID = './line65-nickmatch-cache.o.i'
source_filename = "./line65-nickmatch-cache.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GSList = type { i8*, %struct._GSList* }
%struct.NICKMATCH_REC = type { %struct._GHashTable*, void (%struct._GHashTable*, %struct._CHANNEL_REC*, %struct._NICK_REC*)* }
%struct._GHashTable = type opaque
%struct._CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)* }
%struct._SERVER_REC = type opaque
%struct._WI_ITEM_REC = type opaque
%struct._NICK_REC = type { i32, i32, i64, i8*, i8*, i8*, i32, i8, [8 x i8], i8*, %struct._NICK_REC* }

@lists = internal global %struct._GSList* null, align 8
@channels = external global %struct._GSList*, align 8
@.str = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"nicklist new\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"nicklist changed\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"nicklist host changed\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"nicklist remove\00", align 1
@__func__.sig_nick_new = private unnamed_addr constant [13 x i8] c"sig_nick_new\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"channel != NULL\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"nick != NULL\00", align 1
@__func__.sig_nick_remove = private unnamed_addr constant [16 x i8] c"sig_nick_remove\00", align 1

; Function Attrs: nounwind uwtable
define %struct.NICKMATCH_REC* @nickmatch_init(void (%struct._GHashTable*, %struct._CHANNEL_REC*, %struct._NICK_REC*)*) #0 !dbg !149 {
  %2 = alloca void (%struct._GHashTable*, %struct._CHANNEL_REC*, %struct._NICK_REC*)*, align 8
  %3 = alloca %struct.NICKMATCH_REC*, align 8
  store void (%struct._GHashTable*, %struct._CHANNEL_REC*, %struct._NICK_REC*)* %0, void (%struct._GHashTable*, %struct._CHANNEL_REC*, %struct._NICK_REC*)** %2, align 8
  call void @llvm.dbg.declare(metadata void (%struct._GHashTable*, %struct._CHANNEL_REC*, %struct._NICK_REC*)** %2, metadata !152, metadata !153), !dbg !154
  call void @llvm.dbg.declare(metadata %struct.NICKMATCH_REC** %3, metadata !155, metadata !153), !dbg !156
  %4 = call noalias i8* @g_malloc0_n(i64 1, i64 16), !dbg !157
  %5 = bitcast i8* %4 to %struct.NICKMATCH_REC*, !dbg !158
  store %struct.NICKMATCH_REC* %5, %struct.NICKMATCH_REC** %3, align 8, !dbg !159
  %6 = load void (%struct._GHashTable*, %struct._CHANNEL_REC*, %struct._NICK_REC*)*, void (%struct._GHashTable*, %struct._CHANNEL_REC*, %struct._NICK_REC*)** %2, align 8, !dbg !160
  %7 = load %struct.NICKMATCH_REC*, %struct.NICKMATCH_REC** %3, align 8, !dbg !161
  %8 = getelementptr inbounds %struct.NICKMATCH_REC, %struct.NICKMATCH_REC* %7, i32 0, i32 1, !dbg !162
  store void (%struct._GHashTable*, %struct._CHANNEL_REC*, %struct._NICK_REC*)* %6, void (%struct._GHashTable*, %struct._CHANNEL_REC*, %struct._NICK_REC*)** %8, align 8, !dbg !163
  %9 = load %struct._GSList*, %struct._GSList** @lists, align 8, !dbg !164
  %10 = load %struct.NICKMATCH_REC*, %struct.NICKMATCH_REC** %3, align 8, !dbg !165
  %11 = bitcast %struct.NICKMATCH_REC* %10 to i8*, !dbg !165
  %12 = call %struct._GSList* @g_slist_append(%struct._GSList* %9, i8* %11), !dbg !166
  store %struct._GSList* %12, %struct._GSList** @lists, align 8, !dbg !167
  %13 = load %struct.NICKMATCH_REC*, %struct.NICKMATCH_REC** %3, align 8, !dbg !168
  ret %struct.NICKMATCH_REC* %13, !dbg !169
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare noalias i8* @g_malloc0_n(i64, i64) #2

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #2

; Function Attrs: nounwind uwtable
define void @nickmatch_deinit(%struct.NICKMATCH_REC*) #0 !dbg !170 {
  %2 = alloca %struct.NICKMATCH_REC*, align 8
  store %struct.NICKMATCH_REC* %0, %struct.NICKMATCH_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.NICKMATCH_REC** %2, metadata !173, metadata !153), !dbg !174
  %3 = load %struct._GSList*, %struct._GSList** @lists, align 8, !dbg !175
  %4 = load %struct.NICKMATCH_REC*, %struct.NICKMATCH_REC** %2, align 8, !dbg !176
  %5 = bitcast %struct.NICKMATCH_REC* %4 to i8*, !dbg !176
  %6 = call %struct._GSList* @g_slist_remove(%struct._GSList* %3, i8* %5), !dbg !177
  store %struct._GSList* %6, %struct._GSList** @lists, align 8, !dbg !178
  %7 = load %struct.NICKMATCH_REC*, %struct.NICKMATCH_REC** %2, align 8, !dbg !179
  %8 = getelementptr inbounds %struct.NICKMATCH_REC, %struct.NICKMATCH_REC* %7, i32 0, i32 0, !dbg !180
  %9 = load %struct._GHashTable*, %struct._GHashTable** %8, align 8, !dbg !180
  call void @g_hash_table_destroy(%struct._GHashTable* %9), !dbg !181
  %10 = load %struct.NICKMATCH_REC*, %struct.NICKMATCH_REC** %2, align 8, !dbg !182
  %11 = bitcast %struct.NICKMATCH_REC* %10 to i8*, !dbg !182
  call void @g_free(i8* %11), !dbg !183
  ret void, !dbg !184
}

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #2

declare void @g_hash_table_destroy(%struct._GHashTable*) #2

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define void @nickmatch_rebuild(%struct.NICKMATCH_REC*) #0 !dbg !185 {
  %2 = alloca %struct.NICKMATCH_REC*, align 8
  store %struct.NICKMATCH_REC* %0, %struct.NICKMATCH_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.NICKMATCH_REC** %2, metadata !186, metadata !153), !dbg !187
  %3 = load %struct.NICKMATCH_REC*, %struct.NICKMATCH_REC** %2, align 8, !dbg !188
  %4 = getelementptr inbounds %struct.NICKMATCH_REC, %struct.NICKMATCH_REC* %3, i32 0, i32 0, !dbg !190
  %5 = load %struct._GHashTable*, %struct._GHashTable** %4, align 8, !dbg !190
  %6 = icmp ne %struct._GHashTable* %5, null, !dbg !191
  br i1 %6, label %7, label %11, !dbg !192

; <label>:7:                                      ; preds = %1
  %8 = load %struct.NICKMATCH_REC*, %struct.NICKMATCH_REC** %2, align 8, !dbg !193
  %9 = getelementptr inbounds %struct.NICKMATCH_REC, %struct.NICKMATCH_REC* %8, i32 0, i32 0, !dbg !194
  %10 = load %struct._GHashTable*, %struct._GHashTable** %9, align 8, !dbg !194
  call void @g_hash_table_destroy(%struct._GHashTable* %10), !dbg !195
  br label %11, !dbg !195

; <label>:11:                                     ; preds = %7, %1
  %12 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_direct_hash, i32 (i8*, i8*)* @g_direct_equal), !dbg !196
  %13 = load %struct.NICKMATCH_REC*, %struct.NICKMATCH_REC** %2, align 8, !dbg !197
  %14 = getelementptr inbounds %struct.NICKMATCH_REC, %struct.NICKMATCH_REC* %13, i32 0, i32 0, !dbg !198
  store %struct._GHashTable* %12, %struct._GHashTable** %14, align 8, !dbg !199
  %15 = load %struct._GSList*, %struct._GSList** @channels, align 8, !dbg !200
  %16 = load %struct.NICKMATCH_REC*, %struct.NICKMATCH_REC** %2, align 8, !dbg !201
  %17 = bitcast %struct.NICKMATCH_REC* %16 to i8*, !dbg !201
  call void @g_slist_foreach(%struct._GSList* %15, void (i8*, i8*)* bitcast (void (%struct._CHANNEL_REC*, %struct.NICKMATCH_REC*)* @nickmatch_check_channel to void (i8*, i8*)*), i8* %17), !dbg !202
  ret void, !dbg !203
}

declare %struct._GHashTable* @g_hash_table_new(i32 (i8*)*, i32 (i8*, i8*)*) #2

; Function Attrs: nounwind readnone
declare i32 @g_direct_hash(i8*) #3

; Function Attrs: nounwind readnone
declare i32 @g_direct_equal(i8*, i8*) #3

declare void @g_slist_foreach(%struct._GSList*, void (i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @nickmatch_check_channel(%struct._CHANNEL_REC*, %struct.NICKMATCH_REC*) #0 !dbg !204 {
  %3 = alloca %struct._CHANNEL_REC*, align 8
  %4 = alloca %struct.NICKMATCH_REC*, align 8
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca %struct._NICK_REC*, align 8
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %3, metadata !207, metadata !153), !dbg !208
  store %struct.NICKMATCH_REC* %1, %struct.NICKMATCH_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.NICKMATCH_REC** %4, metadata !209, metadata !153), !dbg !210
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !211, metadata !153), !dbg !212
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !213, metadata !153), !dbg !214
  %8 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !215
  %9 = call %struct._GSList* @nicklist_getnicks(%struct._CHANNEL_REC* %8), !dbg !216
  store %struct._GSList* %9, %struct._GSList** %5, align 8, !dbg !217
  %10 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !218
  store %struct._GSList* %10, %struct._GSList** %6, align 8, !dbg !220
  br label %11, !dbg !221

; <label>:11:                                     ; preds = %27, %2
  %12 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !222
  %13 = icmp ne %struct._GSList* %12, null, !dbg !225
  br i1 %13, label %14, label %31, !dbg !226

; <label>:14:                                     ; preds = %11
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %7, metadata !227, metadata !153), !dbg !229
  %15 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !230
  %16 = getelementptr inbounds %struct._GSList, %struct._GSList* %15, i32 0, i32 0, !dbg !231
  %17 = load i8*, i8** %16, align 8, !dbg !231
  %18 = bitcast i8* %17 to %struct._NICK_REC*, !dbg !230
  store %struct._NICK_REC* %18, %struct._NICK_REC** %7, align 8, !dbg !229
  %19 = load %struct.NICKMATCH_REC*, %struct.NICKMATCH_REC** %4, align 8, !dbg !232
  %20 = getelementptr inbounds %struct.NICKMATCH_REC, %struct.NICKMATCH_REC* %19, i32 0, i32 1, !dbg !233
  %21 = load void (%struct._GHashTable*, %struct._CHANNEL_REC*, %struct._NICK_REC*)*, void (%struct._GHashTable*, %struct._CHANNEL_REC*, %struct._NICK_REC*)** %20, align 8, !dbg !233
  %22 = load %struct.NICKMATCH_REC*, %struct.NICKMATCH_REC** %4, align 8, !dbg !234
  %23 = getelementptr inbounds %struct.NICKMATCH_REC, %struct.NICKMATCH_REC* %22, i32 0, i32 0, !dbg !235
  %24 = load %struct._GHashTable*, %struct._GHashTable** %23, align 8, !dbg !235
  %25 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !236
  %26 = load %struct._NICK_REC*, %struct._NICK_REC** %7, align 8, !dbg !237
  call void %21(%struct._GHashTable* %24, %struct._CHANNEL_REC* %25, %struct._NICK_REC* %26), !dbg !232
  br label %27, !dbg !238

; <label>:27:                                     ; preds = %14
  %28 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !239
  %29 = getelementptr inbounds %struct._GSList, %struct._GSList* %28, i32 0, i32 1, !dbg !241
  %30 = load %struct._GSList*, %struct._GSList** %29, align 8, !dbg !241
  store %struct._GSList* %30, %struct._GSList** %6, align 8, !dbg !242
  br label %11, !dbg !243, !llvm.loop !244

; <label>:31:                                     ; preds = %11
  %32 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !246
  call void @g_slist_free(%struct._GSList* %32), !dbg !247
  ret void, !dbg !248
}

; Function Attrs: nounwind uwtable
define void @nickmatch_cache_init() #0 !dbg !249 {
  store %struct._GSList* null, %struct._GSList** @lists, align 8, !dbg !252
  call void @signal_add_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHANNEL_REC*, %struct._NICK_REC*)* @sig_nick_new to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !253
  call void @signal_add_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHANNEL_REC*, %struct._NICK_REC*)* @sig_nick_new to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !254
  call void @signal_add_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHANNEL_REC*, %struct._NICK_REC*)* @sig_nick_new to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !255
  call void @signal_add_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHANNEL_REC*, %struct._NICK_REC*)* @sig_nick_remove to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !256
  ret void, !dbg !257
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @sig_nick_new(%struct._CHANNEL_REC*, %struct._NICK_REC*) #0 !dbg !258 {
  %3 = alloca %struct._CHANNEL_REC*, align 8
  %4 = alloca %struct._NICK_REC*, align 8
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca %struct.NICKMATCH_REC*, align 8
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %3, metadata !261, metadata !153), !dbg !262
  store %struct._NICK_REC* %1, %struct._NICK_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %4, metadata !263, metadata !153), !dbg !264
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !265, metadata !153), !dbg !266
  br label %7, !dbg !267, !llvm.loop !268

; <label>:7:                                      ; preds = %2
  %8 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !269
  %9 = icmp ne %struct._CHANNEL_REC* %8, null, !dbg !273
  br i1 %9, label %10, label %11, !dbg !269

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !274

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.sig_nick_new, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0)), !dbg !277
  br label %42, !dbg !280

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !281

; <label>:13:                                     ; preds = %12
  br label %14, !dbg !283, !llvm.loop !284

; <label>:14:                                     ; preds = %13
  %15 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !285
  %16 = icmp ne %struct._NICK_REC* %15, null, !dbg !289
  br i1 %16, label %17, label %18, !dbg !285

; <label>:17:                                     ; preds = %14
  br label %19, !dbg !290

; <label>:18:                                     ; preds = %14
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.sig_nick_new, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0)), !dbg !293
  br label %42, !dbg !296

; <label>:19:                                     ; preds = %17
  br label %20, !dbg !297

; <label>:20:                                     ; preds = %19
  %21 = load %struct._GSList*, %struct._GSList** @lists, align 8, !dbg !299
  store %struct._GSList* %21, %struct._GSList** %5, align 8, !dbg !301
  br label %22, !dbg !302

; <label>:22:                                     ; preds = %38, %20
  %23 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !303
  %24 = icmp ne %struct._GSList* %23, null, !dbg !306
  br i1 %24, label %25, label %42, !dbg !307

; <label>:25:                                     ; preds = %22
  call void @llvm.dbg.declare(metadata %struct.NICKMATCH_REC** %6, metadata !308, metadata !153), !dbg !310
  %26 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !311
  %27 = getelementptr inbounds %struct._GSList, %struct._GSList* %26, i32 0, i32 0, !dbg !312
  %28 = load i8*, i8** %27, align 8, !dbg !312
  %29 = bitcast i8* %28 to %struct.NICKMATCH_REC*, !dbg !311
  store %struct.NICKMATCH_REC* %29, %struct.NICKMATCH_REC** %6, align 8, !dbg !310
  %30 = load %struct.NICKMATCH_REC*, %struct.NICKMATCH_REC** %6, align 8, !dbg !313
  %31 = getelementptr inbounds %struct.NICKMATCH_REC, %struct.NICKMATCH_REC* %30, i32 0, i32 1, !dbg !314
  %32 = load void (%struct._GHashTable*, %struct._CHANNEL_REC*, %struct._NICK_REC*)*, void (%struct._GHashTable*, %struct._CHANNEL_REC*, %struct._NICK_REC*)** %31, align 8, !dbg !314
  %33 = load %struct.NICKMATCH_REC*, %struct.NICKMATCH_REC** %6, align 8, !dbg !315
  %34 = getelementptr inbounds %struct.NICKMATCH_REC, %struct.NICKMATCH_REC* %33, i32 0, i32 0, !dbg !316
  %35 = load %struct._GHashTable*, %struct._GHashTable** %34, align 8, !dbg !316
  %36 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !317
  %37 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !318
  call void %32(%struct._GHashTable* %35, %struct._CHANNEL_REC* %36, %struct._NICK_REC* %37), !dbg !313
  br label %38, !dbg !319

; <label>:38:                                     ; preds = %25
  %39 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !320
  %40 = getelementptr inbounds %struct._GSList, %struct._GSList* %39, i32 0, i32 1, !dbg !322
  %41 = load %struct._GSList*, %struct._GSList** %40, align 8, !dbg !322
  store %struct._GSList* %41, %struct._GSList** %5, align 8, !dbg !323
  br label %22, !dbg !324, !llvm.loop !325

; <label>:42:                                     ; preds = %11, %18, %22
  ret void, !dbg !327
}

; Function Attrs: nounwind uwtable
define internal void @sig_nick_remove(%struct._CHANNEL_REC*, %struct._NICK_REC*) #0 !dbg !328 {
  %3 = alloca %struct._CHANNEL_REC*, align 8
  %4 = alloca %struct._NICK_REC*, align 8
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca %struct.NICKMATCH_REC*, align 8
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %3, metadata !329, metadata !153), !dbg !330
  store %struct._NICK_REC* %1, %struct._NICK_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %4, metadata !331, metadata !153), !dbg !332
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !333, metadata !153), !dbg !334
  br label %7, !dbg !335, !llvm.loop !336

; <label>:7:                                      ; preds = %2
  %8 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !337
  %9 = icmp ne %struct._CHANNEL_REC* %8, null, !dbg !341
  br i1 %9, label %10, label %11, !dbg !337

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !342

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.sig_nick_remove, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0)), !dbg !345
  br label %40, !dbg !348

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !349

; <label>:13:                                     ; preds = %12
  br label %14, !dbg !351, !llvm.loop !352

; <label>:14:                                     ; preds = %13
  %15 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !353
  %16 = icmp ne %struct._NICK_REC* %15, null, !dbg !357
  br i1 %16, label %17, label %18, !dbg !353

; <label>:17:                                     ; preds = %14
  br label %19, !dbg !358

; <label>:18:                                     ; preds = %14
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.sig_nick_remove, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0)), !dbg !361
  br label %40, !dbg !364

; <label>:19:                                     ; preds = %17
  br label %20, !dbg !365

; <label>:20:                                     ; preds = %19
  %21 = load %struct._GSList*, %struct._GSList** @lists, align 8, !dbg !367
  store %struct._GSList* %21, %struct._GSList** %5, align 8, !dbg !369
  br label %22, !dbg !370

; <label>:22:                                     ; preds = %36, %20
  %23 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !371
  %24 = icmp ne %struct._GSList* %23, null, !dbg !374
  br i1 %24, label %25, label %40, !dbg !375

; <label>:25:                                     ; preds = %22
  call void @llvm.dbg.declare(metadata %struct.NICKMATCH_REC** %6, metadata !376, metadata !153), !dbg !378
  %26 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !379
  %27 = getelementptr inbounds %struct._GSList, %struct._GSList* %26, i32 0, i32 0, !dbg !380
  %28 = load i8*, i8** %27, align 8, !dbg !380
  %29 = bitcast i8* %28 to %struct.NICKMATCH_REC*, !dbg !379
  store %struct.NICKMATCH_REC* %29, %struct.NICKMATCH_REC** %6, align 8, !dbg !378
  %30 = load %struct.NICKMATCH_REC*, %struct.NICKMATCH_REC** %6, align 8, !dbg !381
  %31 = getelementptr inbounds %struct.NICKMATCH_REC, %struct.NICKMATCH_REC* %30, i32 0, i32 0, !dbg !382
  %32 = load %struct._GHashTable*, %struct._GHashTable** %31, align 8, !dbg !382
  %33 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !383
  %34 = bitcast %struct._NICK_REC* %33 to i8*, !dbg !383
  %35 = call i32 @g_hash_table_remove(%struct._GHashTable* %32, i8* %34), !dbg !384
  br label %36, !dbg !385

; <label>:36:                                     ; preds = %25
  %37 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !386
  %38 = getelementptr inbounds %struct._GSList, %struct._GSList* %37, i32 0, i32 1, !dbg !388
  %39 = load %struct._GSList*, %struct._GSList** %38, align 8, !dbg !388
  store %struct._GSList* %39, %struct._GSList** %5, align 8, !dbg !389
  br label %22, !dbg !390, !llvm.loop !391

; <label>:40:                                     ; preds = %11, %18, %22
  ret void, !dbg !393
}

; Function Attrs: nounwind uwtable
define void @nickmatch_cache_deinit() #0 !dbg !394 {
  %1 = load %struct._GSList*, %struct._GSList** @lists, align 8, !dbg !395
  call void @g_slist_foreach(%struct._GSList* %1, void (i8*, i8*)* bitcast (void (%struct.NICKMATCH_REC*)* @nickmatch_deinit to void (i8*, i8*)*), i8* null), !dbg !396
  %2 = load %struct._GSList*, %struct._GSList** @lists, align 8, !dbg !397
  call void @g_slist_free(%struct._GSList* %2), !dbg !398
  call void @signal_remove_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHANNEL_REC*, %struct._NICK_REC*)* @sig_nick_new to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !399
  call void @signal_remove_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHANNEL_REC*, %struct._NICK_REC*)* @sig_nick_new to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !400
  call void @signal_remove_full(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHANNEL_REC*, %struct._NICK_REC*)* @sig_nick_new to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !401
  call void @signal_remove_full(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHANNEL_REC*, %struct._NICK_REC*)* @sig_nick_remove to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !402
  ret void, !dbg !403
}

declare void @g_slist_free(%struct._GSList*) #2

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare %struct._GSList* @nicklist_getnicks(%struct._CHANNEL_REC*) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare i32 @g_hash_table_remove(%struct._GHashTable*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!146, !147}
!llvm.ident = !{!148}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !136)
!1 = !DIFile(filename: "line65-nickmatch-cache.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{}
!3 = !{!4, !31, !110, !119, !124, !129, !134, !59}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICKMATCH_REC", file: !6, line: 10, baseType: !7)
!6 = !DIFile(filename: "nickmatch-cache.h", directory: "/home/lichi/Desktop/irssi/task1")
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 7, size: 128, align: 64, elements: !8)
!8 = !{!9, !14}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !7, file: !6, line: 8, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !12, line: 37, baseType: !13)
!12 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !12, line: 37, flags: DIFlagFwdDecl)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !7, file: !6, line: 9, baseType: !15, size: 64, align: 64, offset: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICKMATCH_REBUILD_FUNC", file: !6, line: 4, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DISubroutineType(types: !18)
!18 = !{null, !10, !19, !67}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !21, line: 109, baseType: !22)
!21 = !DIFile(filename: "../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !23, line: 15, size: 1408, align: 64, elements: !24)
!23 = !DIFile(filename: "channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!24 = !{!25, !28, !29, !30, !32, !36, !39, !40, !46, !47, !48, !55, !61, !63, !64, !65, !66, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !22, file: !26, line: 3, baseType: !27, size: 32, align: 32)
!26 = !DIFile(filename: "window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!27 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !22, file: !26, line: 4, baseType: !27, size: 32, align: 32, offset: 32)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !22, file: !26, line: 5, baseType: !10, size: 64, align: 64, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !22, file: !26, line: 7, baseType: !31, size: 64, align: 64, offset: 128)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !22, file: !26, line: 8, baseType: !33, size: 64, align: 64, offset: 192)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !21, line: 107, baseType: !35)
!35 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !21, line: 107, flags: DIFlagFwdDecl)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !22, file: !26, line: 9, baseType: !37, size: 64, align: 64, offset: 256)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !22, file: !26, line: 10, baseType: !37, size: 64, align: 64, offset: 320)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !22, file: !26, line: 11, baseType: !41, size: 64, align: 64, offset: 384)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !42, line: 75, baseType: !43)
!42 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !44, line: 139, baseType: !45)
!44 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!45 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !22, file: !26, line: 12, baseType: !27, size: 32, align: 32, offset: 448)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !22, file: !26, line: 13, baseType: !37, size: 64, align: 64, offset: 512)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !22, file: !26, line: 15, baseType: !49, size: 64, align: 64, offset: 576)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DISubroutineType(types: !51)
!51 = !{null, !52}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !21, line: 108, baseType: !54)
!54 = !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !21, line: 108, flags: DIFlagFwdDecl)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !22, file: !26, line: 17, baseType: !56, size: 64, align: 64, offset: 640)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DISubroutineType(types: !58)
!58 = !{!59, !52}
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !22, file: !62, line: 5, baseType: !37, size: 64, align: 64, offset: 704)
!62 = !DIFile(filename: "channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!63 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !22, file: !62, line: 6, baseType: !37, size: 64, align: 64, offset: 768)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !22, file: !62, line: 7, baseType: !41, size: 64, align: 64, offset: 832)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !22, file: !62, line: 9, baseType: !10, size: 64, align: 64, offset: 896)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !22, file: !62, line: 10, baseType: !67, size: 64, align: 64, offset: 960)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !21, line: 111, baseType: !69)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !70, line: 13, size: 576, align: 64, elements: !71)
!70 = !DIFile(filename: "nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!71 = !{!72, !74, !75, !76, !77, !78, !79, !80, !82, !83, !84, !85, !86, !87, !91, !92}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !69, file: !73, line: 3, baseType: !27, size: 32, align: 32)
!73 = !DIFile(filename: "nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!74 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !69, file: !73, line: 4, baseType: !27, size: 32, align: 32, offset: 32)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !69, file: !73, line: 6, baseType: !41, size: 64, align: 64, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !69, file: !73, line: 8, baseType: !37, size: 64, align: 64, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !69, file: !73, line: 9, baseType: !37, size: 64, align: 64, offset: 192)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !69, file: !73, line: 10, baseType: !37, size: 64, align: 64, offset: 256)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !69, file: !73, line: 11, baseType: !27, size: 32, align: 32, offset: 320)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !69, file: !73, line: 14, baseType: !81, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!81 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !69, file: !73, line: 15, baseType: !81, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !69, file: !73, line: 18, baseType: !81, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !69, file: !73, line: 19, baseType: !81, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !69, file: !73, line: 20, baseType: !81, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !69, file: !73, line: 21, baseType: !81, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !69, file: !73, line: 22, baseType: !88, size: 64, align: 8, offset: 360)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 64, align: 8, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 8)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !69, file: !73, line: 26, baseType: !31, size: 64, align: 64, offset: 448)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !69, file: !73, line: 28, baseType: !67, size: 64, align: 64, offset: 512)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !22, file: !62, line: 12, baseType: !81, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !22, file: !62, line: 13, baseType: !37, size: 64, align: 64, offset: 1088)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !22, file: !62, line: 14, baseType: !27, size: 32, align: 32, offset: 1152)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !22, file: !62, line: 15, baseType: !37, size: 64, align: 64, offset: 1216)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !22, file: !62, line: 17, baseType: !81, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !22, file: !62, line: 18, baseType: !81, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !22, file: !62, line: 19, baseType: !81, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !22, file: !62, line: 20, baseType: !81, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !22, file: !62, line: 22, baseType: !81, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !22, file: !62, line: 23, baseType: !81, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !22, file: !62, line: 24, baseType: !81, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !22, file: !62, line: 25, baseType: !81, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !22, file: !62, line: 26, baseType: !81, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !22, file: !62, line: 31, baseType: !107, size: 64, align: 64, offset: 1344)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{!37, !19}
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashFunc", file: !111, line: 90, baseType: !112)
!111 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64, align: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{!115, !116}
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !111, line: 55, baseType: !81)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "gconstpointer", file: !111, line: 78, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, align: 64)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCompareFunc", file: !111, line: 80, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, align: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{!123, !116, !116}
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !111, line: 49, baseType: !27)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "GFunc", file: !111, line: 88, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{null, !128, !128}
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !111, line: 77, baseType: !31)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !130, line: 9, baseType: !131)
!130 = !DIFile(filename: "signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{null, !117, !117, !117, !117, !117, !117}
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !111, line: 46, baseType: !38)
!136 = !{!137}
!137 = distinct !DIGlobalVariable(name: "lists", scope: !0, file: !138, line: 29, type: !139, isLocal: true, isDefinition: true, variable: %struct._GSList** @lists)
!138 = !DIFile(filename: "nickmatch-cache.c", directory: "/home/lichi/Desktop/irssi/task1")
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !141, line: 37, baseType: !142)
!141 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !141, line: 39, size: 128, align: 64, elements: !143)
!143 = !{!144, !145}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !142, file: !141, line: 41, baseType: !128, size: 64, align: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !142, file: !141, line: 42, baseType: !139, size: 64, align: 64, offset: 64)
!146 = !{i32 2, !"Dwarf Version", i32 4}
!147 = !{i32 2, !"Debug Info Version", i32 3}
!148 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!149 = distinct !DISubprogram(name: "nickmatch_init", scope: !138, file: !138, line: 31, type: !150, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!150 = !DISubroutineType(types: !151)
!151 = !{!4, !15}
!152 = !DILocalVariable(name: "func", arg: 1, scope: !149, file: !138, line: 31, type: !15)
!153 = !DIExpression()
!154 = !DILocation(line: 31, column: 54, scope: !149)
!155 = !DILocalVariable(name: "rec", scope: !149, file: !138, line: 33, type: !4)
!156 = !DILocation(line: 33, column: 17, scope: !149)
!157 = !DILocation(line: 35, column: 27, scope: !149)
!158 = !DILocation(line: 35, column: 9, scope: !149)
!159 = !DILocation(line: 35, column: 6, scope: !149)
!160 = !DILocation(line: 36, column: 14, scope: !149)
!161 = !DILocation(line: 36, column: 2, scope: !149)
!162 = !DILocation(line: 36, column: 7, scope: !149)
!163 = !DILocation(line: 36, column: 12, scope: !149)
!164 = !DILocation(line: 38, column: 25, scope: !149)
!165 = !DILocation(line: 38, column: 32, scope: !149)
!166 = !DILocation(line: 38, column: 10, scope: !149)
!167 = !DILocation(line: 38, column: 8, scope: !149)
!168 = !DILocation(line: 39, column: 16, scope: !149)
!169 = !DILocation(line: 39, column: 9, scope: !149)
!170 = distinct !DISubprogram(name: "nickmatch_deinit", scope: !138, file: !138, line: 42, type: !171, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!171 = !DISubroutineType(types: !172)
!172 = !{null, !4}
!173 = !DILocalVariable(name: "rec", arg: 1, scope: !170, file: !138, line: 42, type: !4)
!174 = !DILocation(line: 42, column: 38, scope: !170)
!175 = !DILocation(line: 44, column: 25, scope: !170)
!176 = !DILocation(line: 44, column: 32, scope: !170)
!177 = !DILocation(line: 44, column: 10, scope: !170)
!178 = !DILocation(line: 44, column: 8, scope: !170)
!179 = !DILocation(line: 46, column: 30, scope: !170)
!180 = !DILocation(line: 46, column: 35, scope: !170)
!181 = !DILocation(line: 46, column: 9, scope: !170)
!182 = !DILocation(line: 47, column: 16, scope: !170)
!183 = !DILocation(line: 47, column: 9, scope: !170)
!184 = !DILocation(line: 48, column: 1, scope: !170)
!185 = distinct !DISubprogram(name: "nickmatch_rebuild", scope: !138, file: !138, line: 63, type: !171, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!186 = !DILocalVariable(name: "rec", arg: 1, scope: !185, file: !138, line: 63, type: !4)
!187 = !DILocation(line: 63, column: 39, scope: !185)
!188 = !DILocation(line: 65, column: 6, scope: !189)
!189 = distinct !DILexicalBlock(scope: !185, file: !138, line: 65, column: 6)
!190 = !DILocation(line: 65, column: 11, scope: !189)
!191 = !DILocation(line: 65, column: 17, scope: !189)
!192 = !DILocation(line: 65, column: 6, scope: !185)
!193 = !DILocation(line: 66, column: 24, scope: !189)
!194 = !DILocation(line: 66, column: 29, scope: !189)
!195 = !DILocation(line: 66, column: 3, scope: !189)
!196 = !DILocation(line: 68, column: 15, scope: !185)
!197 = !DILocation(line: 68, column: 2, scope: !185)
!198 = !DILocation(line: 68, column: 7, scope: !185)
!199 = !DILocation(line: 68, column: 13, scope: !185)
!200 = !DILocation(line: 71, column: 18, scope: !185)
!201 = !DILocation(line: 71, column: 61, scope: !185)
!202 = !DILocation(line: 71, column: 2, scope: !185)
!203 = !DILocation(line: 72, column: 1, scope: !185)
!204 = distinct !DISubprogram(name: "nickmatch_check_channel", scope: !138, file: !138, line: 50, type: !205, isLocal: true, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!205 = !DISubroutineType(types: !206)
!206 = !{null, !19, !4}
!207 = !DILocalVariable(name: "channel", arg: 1, scope: !204, file: !138, line: 50, type: !19)
!208 = !DILocation(line: 50, column: 50, scope: !204)
!209 = !DILocalVariable(name: "rec", arg: 2, scope: !204, file: !138, line: 50, type: !4)
!210 = !DILocation(line: 50, column: 74, scope: !204)
!211 = !DILocalVariable(name: "nicks", scope: !204, file: !138, line: 52, type: !139)
!212 = !DILocation(line: 52, column: 10, scope: !204)
!213 = !DILocalVariable(name: "tmp", scope: !204, file: !138, line: 52, type: !139)
!214 = !DILocation(line: 52, column: 18, scope: !204)
!215 = !DILocation(line: 54, column: 28, scope: !204)
!216 = !DILocation(line: 54, column: 10, scope: !204)
!217 = !DILocation(line: 54, column: 8, scope: !204)
!218 = !DILocation(line: 55, column: 13, scope: !219)
!219 = distinct !DILexicalBlock(scope: !204, file: !138, line: 55, column: 2)
!220 = !DILocation(line: 55, column: 11, scope: !219)
!221 = !DILocation(line: 55, column: 7, scope: !219)
!222 = !DILocation(line: 55, column: 20, scope: !223)
!223 = !DILexicalBlockFile(scope: !224, file: !138, discriminator: 1)
!224 = distinct !DILexicalBlock(scope: !219, file: !138, line: 55, column: 2)
!225 = !DILocation(line: 55, column: 24, scope: !223)
!226 = !DILocation(line: 55, column: 2, scope: !223)
!227 = !DILocalVariable(name: "nick", scope: !228, file: !138, line: 56, type: !67)
!228 = distinct !DILexicalBlock(scope: !224, file: !138, line: 55, column: 49)
!229 = !DILocation(line: 56, column: 13, scope: !228)
!230 = !DILocation(line: 56, column: 20, scope: !228)
!231 = !DILocation(line: 56, column: 25, scope: !228)
!232 = !DILocation(line: 58, column: 3, scope: !228)
!233 = !DILocation(line: 58, column: 8, scope: !228)
!234 = !DILocation(line: 58, column: 13, scope: !228)
!235 = !DILocation(line: 58, column: 18, scope: !228)
!236 = !DILocation(line: 58, column: 25, scope: !228)
!237 = !DILocation(line: 58, column: 34, scope: !228)
!238 = !DILocation(line: 59, column: 2, scope: !228)
!239 = !DILocation(line: 55, column: 38, scope: !240)
!240 = !DILexicalBlockFile(scope: !224, file: !138, discriminator: 2)
!241 = !DILocation(line: 55, column: 43, scope: !240)
!242 = !DILocation(line: 55, column: 36, scope: !240)
!243 = !DILocation(line: 55, column: 2, scope: !240)
!244 = distinct !{!244, !245}
!245 = !DILocation(line: 55, column: 2, scope: !204)
!246 = !DILocation(line: 60, column: 22, scope: !204)
!247 = !DILocation(line: 60, column: 9, scope: !204)
!248 = !DILocation(line: 61, column: 1, scope: !204)
!249 = distinct !DISubprogram(name: "nickmatch_cache_init", scope: !138, file: !138, line: 102, type: !250, isLocal: false, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!250 = !DISubroutineType(types: !251)
!251 = !{null}
!252 = !DILocation(line: 104, column: 8, scope: !249)
!253 = !DILocation(line: 105, column: 9, scope: !249)
!254 = !DILocation(line: 106, column: 9, scope: !249)
!255 = !DILocation(line: 107, column: 9, scope: !249)
!256 = !DILocation(line: 108, column: 9, scope: !249)
!257 = !DILocation(line: 109, column: 1, scope: !249)
!258 = distinct !DISubprogram(name: "sig_nick_new", scope: !138, file: !138, line: 74, type: !259, isLocal: true, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!259 = !DISubroutineType(types: !260)
!260 = !{null, !19, !67}
!261 = !DILocalVariable(name: "channel", arg: 1, scope: !258, file: !138, line: 74, type: !19)
!262 = !DILocation(line: 74, column: 39, scope: !258)
!263 = !DILocalVariable(name: "nick", arg: 2, scope: !258, file: !138, line: 74, type: !67)
!264 = !DILocation(line: 74, column: 58, scope: !258)
!265 = !DILocalVariable(name: "tmp", scope: !258, file: !138, line: 76, type: !139)
!266 = !DILocation(line: 76, column: 10, scope: !258)
!267 = !DILocation(line: 78, column: 9, scope: !258)
!268 = distinct !{!268, !267}
!269 = !DILocation(line: 78, column: 17, scope: !270)
!270 = !DILexicalBlockFile(scope: !271, file: !138, discriminator: 1)
!271 = distinct !DILexicalBlock(scope: !272, file: !138, line: 78, column: 17)
!272 = distinct !DILexicalBlock(scope: !258, file: !138, line: 78, column: 11)
!273 = !DILocation(line: 78, column: 25, scope: !270)
!274 = !DILocation(line: 78, column: 12, scope: !275)
!275 = !DILexicalBlockFile(scope: !276, file: !138, discriminator: 2)
!276 = distinct !DILexicalBlock(scope: !271, file: !138, line: 78, column: 10)
!277 = !DILocation(line: 78, column: 21, scope: !278)
!278 = !DILexicalBlockFile(scope: !279, file: !138, discriminator: 3)
!279 = distinct !DILexicalBlock(scope: !271, file: !138, line: 78, column: 19)
!280 = !DILocation(line: 78, column: 109, scope: !278)
!281 = !DILocation(line: 78, column: 120, scope: !282)
!282 = !DILexicalBlockFile(scope: !272, file: !138, discriminator: 4)
!283 = !DILocation(line: 79, column: 2, scope: !258)
!284 = distinct !{!284, !283}
!285 = !DILocation(line: 79, column: 10, scope: !286)
!286 = !DILexicalBlockFile(scope: !287, file: !138, discriminator: 1)
!287 = distinct !DILexicalBlock(scope: !288, file: !138, line: 79, column: 10)
!288 = distinct !DILexicalBlock(scope: !258, file: !138, line: 79, column: 4)
!289 = !DILocation(line: 79, column: 15, scope: !286)
!290 = !DILocation(line: 79, column: 5, scope: !291)
!291 = !DILexicalBlockFile(scope: !292, file: !138, discriminator: 2)
!292 = distinct !DILexicalBlock(scope: !287, file: !138, line: 79, column: 3)
!293 = !DILocation(line: 79, column: 14, scope: !294)
!294 = !DILexicalBlockFile(scope: !295, file: !138, discriminator: 3)
!295 = distinct !DILexicalBlock(scope: !287, file: !138, line: 79, column: 12)
!296 = !DILocation(line: 79, column: 99, scope: !294)
!297 = !DILocation(line: 79, column: 110, scope: !298)
!298 = !DILexicalBlockFile(scope: !288, file: !138, discriminator: 4)
!299 = !DILocation(line: 81, column: 13, scope: !300)
!300 = distinct !DILexicalBlock(scope: !258, file: !138, line: 81, column: 2)
!301 = !DILocation(line: 81, column: 11, scope: !300)
!302 = !DILocation(line: 81, column: 7, scope: !300)
!303 = !DILocation(line: 81, column: 20, scope: !304)
!304 = !DILexicalBlockFile(scope: !305, file: !138, discriminator: 1)
!305 = distinct !DILexicalBlock(scope: !300, file: !138, line: 81, column: 2)
!306 = !DILocation(line: 81, column: 24, scope: !304)
!307 = !DILocation(line: 81, column: 2, scope: !304)
!308 = !DILocalVariable(name: "rec", scope: !309, file: !138, line: 82, type: !4)
!309 = distinct !DILexicalBlock(scope: !305, file: !138, line: 81, column: 49)
!310 = !DILocation(line: 82, column: 18, scope: !309)
!311 = !DILocation(line: 82, column: 24, scope: !309)
!312 = !DILocation(line: 82, column: 29, scope: !309)
!313 = !DILocation(line: 84, column: 3, scope: !309)
!314 = !DILocation(line: 84, column: 8, scope: !309)
!315 = !DILocation(line: 84, column: 13, scope: !309)
!316 = !DILocation(line: 84, column: 18, scope: !309)
!317 = !DILocation(line: 84, column: 25, scope: !309)
!318 = !DILocation(line: 84, column: 34, scope: !309)
!319 = !DILocation(line: 85, column: 2, scope: !309)
!320 = !DILocation(line: 81, column: 38, scope: !321)
!321 = !DILexicalBlockFile(scope: !305, file: !138, discriminator: 2)
!322 = !DILocation(line: 81, column: 43, scope: !321)
!323 = !DILocation(line: 81, column: 36, scope: !321)
!324 = !DILocation(line: 81, column: 2, scope: !321)
!325 = distinct !{!325, !326}
!326 = !DILocation(line: 81, column: 2, scope: !258)
!327 = !DILocation(line: 86, column: 1, scope: !258)
!328 = distinct !DISubprogram(name: "sig_nick_remove", scope: !138, file: !138, line: 88, type: !259, isLocal: true, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!329 = !DILocalVariable(name: "channel", arg: 1, scope: !328, file: !138, line: 88, type: !19)
!330 = !DILocation(line: 88, column: 42, scope: !328)
!331 = !DILocalVariable(name: "nick", arg: 2, scope: !328, file: !138, line: 88, type: !67)
!332 = !DILocation(line: 88, column: 61, scope: !328)
!333 = !DILocalVariable(name: "tmp", scope: !328, file: !138, line: 90, type: !139)
!334 = !DILocation(line: 90, column: 10, scope: !328)
!335 = !DILocation(line: 92, column: 9, scope: !328)
!336 = distinct !{!336, !335}
!337 = !DILocation(line: 92, column: 17, scope: !338)
!338 = !DILexicalBlockFile(scope: !339, file: !138, discriminator: 1)
!339 = distinct !DILexicalBlock(scope: !340, file: !138, line: 92, column: 17)
!340 = distinct !DILexicalBlock(scope: !328, file: !138, line: 92, column: 11)
!341 = !DILocation(line: 92, column: 25, scope: !338)
!342 = !DILocation(line: 92, column: 12, scope: !343)
!343 = !DILexicalBlockFile(scope: !344, file: !138, discriminator: 2)
!344 = distinct !DILexicalBlock(scope: !339, file: !138, line: 92, column: 10)
!345 = !DILocation(line: 92, column: 21, scope: !346)
!346 = !DILexicalBlockFile(scope: !347, file: !138, discriminator: 3)
!347 = distinct !DILexicalBlock(scope: !339, file: !138, line: 92, column: 19)
!348 = !DILocation(line: 92, column: 109, scope: !346)
!349 = !DILocation(line: 92, column: 120, scope: !350)
!350 = !DILexicalBlockFile(scope: !340, file: !138, discriminator: 4)
!351 = !DILocation(line: 93, column: 2, scope: !328)
!352 = distinct !{!352, !351}
!353 = !DILocation(line: 93, column: 10, scope: !354)
!354 = !DILexicalBlockFile(scope: !355, file: !138, discriminator: 1)
!355 = distinct !DILexicalBlock(scope: !356, file: !138, line: 93, column: 10)
!356 = distinct !DILexicalBlock(scope: !328, file: !138, line: 93, column: 4)
!357 = !DILocation(line: 93, column: 15, scope: !354)
!358 = !DILocation(line: 93, column: 5, scope: !359)
!359 = !DILexicalBlockFile(scope: !360, file: !138, discriminator: 2)
!360 = distinct !DILexicalBlock(scope: !355, file: !138, line: 93, column: 3)
!361 = !DILocation(line: 93, column: 14, scope: !362)
!362 = !DILexicalBlockFile(scope: !363, file: !138, discriminator: 3)
!363 = distinct !DILexicalBlock(scope: !355, file: !138, line: 93, column: 12)
!364 = !DILocation(line: 93, column: 99, scope: !362)
!365 = !DILocation(line: 93, column: 110, scope: !366)
!366 = !DILexicalBlockFile(scope: !356, file: !138, discriminator: 4)
!367 = !DILocation(line: 95, column: 13, scope: !368)
!368 = distinct !DILexicalBlock(scope: !328, file: !138, line: 95, column: 2)
!369 = !DILocation(line: 95, column: 11, scope: !368)
!370 = !DILocation(line: 95, column: 7, scope: !368)
!371 = !DILocation(line: 95, column: 20, scope: !372)
!372 = !DILexicalBlockFile(scope: !373, file: !138, discriminator: 1)
!373 = distinct !DILexicalBlock(scope: !368, file: !138, line: 95, column: 2)
!374 = !DILocation(line: 95, column: 24, scope: !372)
!375 = !DILocation(line: 95, column: 2, scope: !372)
!376 = !DILocalVariable(name: "rec", scope: !377, file: !138, line: 96, type: !4)
!377 = distinct !DILexicalBlock(scope: !373, file: !138, line: 95, column: 49)
!378 = !DILocation(line: 96, column: 18, scope: !377)
!379 = !DILocation(line: 96, column: 24, scope: !377)
!380 = !DILocation(line: 96, column: 29, scope: !377)
!381 = !DILocation(line: 98, column: 37, scope: !377)
!382 = !DILocation(line: 98, column: 42, scope: !377)
!383 = !DILocation(line: 98, column: 49, scope: !377)
!384 = !DILocation(line: 98, column: 17, scope: !377)
!385 = !DILocation(line: 99, column: 2, scope: !377)
!386 = !DILocation(line: 95, column: 38, scope: !387)
!387 = !DILexicalBlockFile(scope: !373, file: !138, discriminator: 2)
!388 = !DILocation(line: 95, column: 43, scope: !387)
!389 = !DILocation(line: 95, column: 36, scope: !387)
!390 = !DILocation(line: 95, column: 2, scope: !387)
!391 = distinct !{!391, !392}
!392 = !DILocation(line: 95, column: 2, scope: !328)
!393 = !DILocation(line: 100, column: 1, scope: !328)
!394 = distinct !DISubprogram(name: "nickmatch_cache_deinit", scope: !138, file: !138, line: 111, type: !250, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!395 = !DILocation(line: 113, column: 18, scope: !394)
!396 = !DILocation(line: 113, column: 2, scope: !394)
!397 = !DILocation(line: 114, column: 22, scope: !394)
!398 = !DILocation(line: 114, column: 9, scope: !394)
!399 = !DILocation(line: 116, column: 2, scope: !394)
!400 = !DILocation(line: 117, column: 9, scope: !394)
!401 = !DILocation(line: 118, column: 9, scope: !394)
!402 = !DILocation(line: 119, column: 9, scope: !394)
!403 = !DILocation(line: 120, column: 1, scope: !394)
