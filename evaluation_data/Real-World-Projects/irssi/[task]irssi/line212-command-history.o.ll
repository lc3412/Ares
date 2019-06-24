; ModuleID = './line212-command-history.o.i'
source_filename = "./line212-command-history.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GSList = type { i8*, %struct._GSList* }
%struct.HISTORY_REC = type { i8*, %struct._GList*, i32, i32, i8 }
%struct._WINDOW_REC = type { i32, i8*, i32, i32, %struct._GSList*, %struct._WI_ITEM_REC*, %struct._SERVER_REC*, %struct._SERVER_REC*, i8*, i32, %struct._GSList*, i8, %struct.HISTORY_REC*, i8*, i32, i8*, i64, i64, i8*, i8*, i8* }
%struct._WI_ITEM_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)* }
%struct._GHashTable = type opaque
%struct._SERVER_REC = type opaque
%struct.HISTORY_ENTRY_REC = type { i8*, %struct.HISTORY_REC*, i64 }

@history_entries = internal global %struct._GList* null, align 8
@__func__.command_history_add = private unnamed_addr constant [20 x i8] c"command_history_add\00", align 1
@.str = private unnamed_addr constant [16 x i8] c"history != NULL\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"text != NULL\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"max_command_history\00", align 1
@histories = internal global %struct._GSList* null, align 8
@__func__.command_history_load_entry = private unnamed_addr constant [27 x i8] c"command_history_load_entry\00", align 1
@__func__.command_history_delete_entry = private unnamed_addr constant [29 x i8] c"command_history_delete_entry\00", align 1
@global_history = internal global %struct.HISTORY_REC* null, align 8
@window_history = internal global i32 0, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__func__.command_history_clear = private unnamed_addr constant [22 x i8] c"command_history_clear\00", align 1
@__func__.command_history_destroy = private unnamed_addr constant [24 x i8] c"command_history_destroy\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"history->refcount == 0\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"fe-common/core\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"history\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"window_history\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"window created\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"window destroyed\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"window history changed\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"window history cleared\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"setup changed\00", align 1
@active_win = external global %struct._WINDOW_REC*, align 8
@.str.13 = private unnamed_addr constant [5 x i8] c"*%s*\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GList* @command_history_list_last(%struct.HISTORY_REC*) #0 !dbg !142 {
  %2 = alloca %struct.HISTORY_REC*, align 8
  %3 = alloca %struct._GList*, align 8
  store %struct.HISTORY_REC* %0, %struct.HISTORY_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.HISTORY_REC** %2, metadata !145, metadata !146), !dbg !147
  call void @llvm.dbg.declare(metadata %struct._GList** %3, metadata !148, metadata !146), !dbg !149
  %4 = load %struct._GList*, %struct._GList** @history_entries, align 8, !dbg !150
  %5 = call %struct._GList* @g_list_last(%struct._GList* %4), !dbg !151
  store %struct._GList* %5, %struct._GList** %3, align 8, !dbg !152
  br label %6, !dbg !153

; <label>:6:                                      ; preds = %23, %1
  %7 = load %struct._GList*, %struct._GList** %3, align 8, !dbg !154
  %8 = icmp ne %struct._GList* %7, null, !dbg !156
  br i1 %8, label %9, label %21, !dbg !157

; <label>:9:                                      ; preds = %6
  %10 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %2, align 8, !dbg !158
  %11 = icmp ne %struct.HISTORY_REC* %10, null, !dbg !160
  br i1 %11, label %12, label %21, !dbg !161

; <label>:12:                                     ; preds = %9
  %13 = load %struct._GList*, %struct._GList** %3, align 8, !dbg !162
  %14 = getelementptr inbounds %struct._GList, %struct._GList* %13, i32 0, i32 0, !dbg !164
  %15 = load i8*, i8** %14, align 8, !dbg !164
  %16 = bitcast i8* %15 to %struct.HISTORY_ENTRY_REC*, !dbg !165
  %17 = getelementptr inbounds %struct.HISTORY_ENTRY_REC, %struct.HISTORY_ENTRY_REC* %16, i32 0, i32 1, !dbg !166
  %18 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %17, align 8, !dbg !166
  %19 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %2, align 8, !dbg !167
  %20 = icmp ne %struct.HISTORY_REC* %18, %19, !dbg !168
  br label %21

; <label>:21:                                     ; preds = %12, %9, %6
  %22 = phi i1 [ false, %9 ], [ false, %6 ], [ %20, %12 ]
  br i1 %22, label %23, label %27, !dbg !169

; <label>:23:                                     ; preds = %21
  %24 = load %struct._GList*, %struct._GList** %3, align 8, !dbg !171
  %25 = getelementptr inbounds %struct._GList, %struct._GList* %24, i32 0, i32 2, !dbg !173
  %26 = load %struct._GList*, %struct._GList** %25, align 8, !dbg !173
  store %struct._GList* %26, %struct._GList** %3, align 8, !dbg !174
  br label %6, !dbg !175, !llvm.loop !177

; <label>:27:                                     ; preds = %21
  %28 = load %struct._GList*, %struct._GList** %3, align 8, !dbg !178
  ret %struct._GList* %28, !dbg !179
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct._GList* @g_list_last(%struct._GList*) #2

; Function Attrs: nounwind uwtable
define %struct._GList* @command_history_list_first(%struct.HISTORY_REC*) #0 !dbg !180 {
  %2 = alloca %struct.HISTORY_REC*, align 8
  %3 = alloca %struct._GList*, align 8
  store %struct.HISTORY_REC* %0, %struct.HISTORY_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.HISTORY_REC** %2, metadata !181, metadata !146), !dbg !182
  call void @llvm.dbg.declare(metadata %struct._GList** %3, metadata !183, metadata !146), !dbg !184
  %4 = load %struct._GList*, %struct._GList** @history_entries, align 8, !dbg !185
  store %struct._GList* %4, %struct._GList** %3, align 8, !dbg !186
  br label %5, !dbg !187

; <label>:5:                                      ; preds = %22, %1
  %6 = load %struct._GList*, %struct._GList** %3, align 8, !dbg !188
  %7 = icmp ne %struct._GList* %6, null, !dbg !190
  br i1 %7, label %8, label %20, !dbg !191

; <label>:8:                                      ; preds = %5
  %9 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %2, align 8, !dbg !192
  %10 = icmp ne %struct.HISTORY_REC* %9, null, !dbg !194
  br i1 %10, label %11, label %20, !dbg !195

; <label>:11:                                     ; preds = %8
  %12 = load %struct._GList*, %struct._GList** %3, align 8, !dbg !196
  %13 = getelementptr inbounds %struct._GList, %struct._GList* %12, i32 0, i32 0, !dbg !198
  %14 = load i8*, i8** %13, align 8, !dbg !198
  %15 = bitcast i8* %14 to %struct.HISTORY_ENTRY_REC*, !dbg !199
  %16 = getelementptr inbounds %struct.HISTORY_ENTRY_REC, %struct.HISTORY_ENTRY_REC* %15, i32 0, i32 1, !dbg !200
  %17 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %16, align 8, !dbg !200
  %18 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %2, align 8, !dbg !201
  %19 = icmp ne %struct.HISTORY_REC* %17, %18, !dbg !202
  br label %20

; <label>:20:                                     ; preds = %11, %8, %5
  %21 = phi i1 [ false, %8 ], [ false, %5 ], [ %19, %11 ]
  br i1 %21, label %22, label %26, !dbg !203

; <label>:22:                                     ; preds = %20
  %23 = load %struct._GList*, %struct._GList** %3, align 8, !dbg !205
  %24 = getelementptr inbounds %struct._GList, %struct._GList* %23, i32 0, i32 1, !dbg !207
  %25 = load %struct._GList*, %struct._GList** %24, align 8, !dbg !207
  store %struct._GList* %25, %struct._GList** %3, align 8, !dbg !208
  br label %5, !dbg !209, !llvm.loop !211

; <label>:26:                                     ; preds = %20
  %27 = load %struct._GList*, %struct._GList** %3, align 8, !dbg !212
  ret %struct._GList* %27, !dbg !213
}

; Function Attrs: nounwind uwtable
define %struct._GList* @command_history_list_prev(%struct.HISTORY_REC*, %struct._GList*) #0 !dbg !214 {
  %3 = alloca %struct.HISTORY_REC*, align 8
  %4 = alloca %struct._GList*, align 8
  %5 = alloca %struct._GList*, align 8
  store %struct.HISTORY_REC* %0, %struct.HISTORY_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.HISTORY_REC** %3, metadata !217, metadata !146), !dbg !218
  store %struct._GList* %1, %struct._GList** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GList** %4, metadata !219, metadata !146), !dbg !220
  call void @llvm.dbg.declare(metadata %struct._GList** %5, metadata !221, metadata !146), !dbg !222
  %6 = load %struct._GList*, %struct._GList** %4, align 8, !dbg !223
  %7 = icmp ne %struct._GList* %6, null, !dbg !224
  br i1 %7, label %8, label %12, !dbg !223

; <label>:8:                                      ; preds = %2
  %9 = load %struct._GList*, %struct._GList** %4, align 8, !dbg !225
  %10 = getelementptr inbounds %struct._GList, %struct._GList* %9, i32 0, i32 2, !dbg !227
  %11 = load %struct._GList*, %struct._GList** %10, align 8, !dbg !227
  br label %13, !dbg !228

; <label>:12:                                     ; preds = %2
  br label %13, !dbg !229

; <label>:13:                                     ; preds = %12, %8
  %14 = phi %struct._GList* [ %11, %8 ], [ null, %12 ], !dbg !231
  store %struct._GList* %14, %struct._GList** %5, align 8, !dbg !233
  br label %15, !dbg !234

; <label>:15:                                     ; preds = %32, %13
  %16 = load %struct._GList*, %struct._GList** %5, align 8, !dbg !235
  %17 = icmp ne %struct._GList* %16, null, !dbg !236
  br i1 %17, label %18, label %30, !dbg !237

; <label>:18:                                     ; preds = %15
  %19 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %3, align 8, !dbg !238
  %20 = icmp ne %struct.HISTORY_REC* %19, null, !dbg !239
  br i1 %20, label %21, label %30, !dbg !240

; <label>:21:                                     ; preds = %18
  %22 = load %struct._GList*, %struct._GList** %5, align 8, !dbg !241
  %23 = getelementptr inbounds %struct._GList, %struct._GList* %22, i32 0, i32 0, !dbg !242
  %24 = load i8*, i8** %23, align 8, !dbg !242
  %25 = bitcast i8* %24 to %struct.HISTORY_ENTRY_REC*, !dbg !243
  %26 = getelementptr inbounds %struct.HISTORY_ENTRY_REC, %struct.HISTORY_ENTRY_REC* %25, i32 0, i32 1, !dbg !244
  %27 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %26, align 8, !dbg !244
  %28 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %3, align 8, !dbg !245
  %29 = icmp ne %struct.HISTORY_REC* %27, %28, !dbg !246
  br label %30

; <label>:30:                                     ; preds = %21, %18, %15
  %31 = phi i1 [ false, %18 ], [ false, %15 ], [ %29, %21 ]
  br i1 %31, label %32, label %36, !dbg !247

; <label>:32:                                     ; preds = %30
  %33 = load %struct._GList*, %struct._GList** %5, align 8, !dbg !249
  %34 = getelementptr inbounds %struct._GList, %struct._GList* %33, i32 0, i32 2, !dbg !251
  %35 = load %struct._GList*, %struct._GList** %34, align 8, !dbg !251
  store %struct._GList* %35, %struct._GList** %5, align 8, !dbg !252
  br label %15, !dbg !253, !llvm.loop !255

; <label>:36:                                     ; preds = %30
  %37 = load %struct._GList*, %struct._GList** %5, align 8, !dbg !256
  ret %struct._GList* %37, !dbg !257
}

; Function Attrs: nounwind uwtable
define %struct._GList* @command_history_list_next(%struct.HISTORY_REC*, %struct._GList*) #0 !dbg !258 {
  %3 = alloca %struct.HISTORY_REC*, align 8
  %4 = alloca %struct._GList*, align 8
  %5 = alloca %struct._GList*, align 8
  store %struct.HISTORY_REC* %0, %struct.HISTORY_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.HISTORY_REC** %3, metadata !259, metadata !146), !dbg !260
  store %struct._GList* %1, %struct._GList** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GList** %4, metadata !261, metadata !146), !dbg !262
  call void @llvm.dbg.declare(metadata %struct._GList** %5, metadata !263, metadata !146), !dbg !264
  %6 = load %struct._GList*, %struct._GList** %4, align 8, !dbg !265
  %7 = icmp ne %struct._GList* %6, null, !dbg !266
  br i1 %7, label %8, label %12, !dbg !265

; <label>:8:                                      ; preds = %2
  %9 = load %struct._GList*, %struct._GList** %4, align 8, !dbg !267
  %10 = getelementptr inbounds %struct._GList, %struct._GList* %9, i32 0, i32 1, !dbg !269
  %11 = load %struct._GList*, %struct._GList** %10, align 8, !dbg !269
  br label %13, !dbg !270

; <label>:12:                                     ; preds = %2
  br label %13, !dbg !271

; <label>:13:                                     ; preds = %12, %8
  %14 = phi %struct._GList* [ %11, %8 ], [ null, %12 ], !dbg !273
  store %struct._GList* %14, %struct._GList** %5, align 8, !dbg !275
  br label %15, !dbg !276

; <label>:15:                                     ; preds = %32, %13
  %16 = load %struct._GList*, %struct._GList** %5, align 8, !dbg !277
  %17 = icmp ne %struct._GList* %16, null, !dbg !278
  br i1 %17, label %18, label %30, !dbg !279

; <label>:18:                                     ; preds = %15
  %19 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %3, align 8, !dbg !280
  %20 = icmp ne %struct.HISTORY_REC* %19, null, !dbg !281
  br i1 %20, label %21, label %30, !dbg !282

; <label>:21:                                     ; preds = %18
  %22 = load %struct._GList*, %struct._GList** %5, align 8, !dbg !283
  %23 = getelementptr inbounds %struct._GList, %struct._GList* %22, i32 0, i32 0, !dbg !284
  %24 = load i8*, i8** %23, align 8, !dbg !284
  %25 = bitcast i8* %24 to %struct.HISTORY_ENTRY_REC*, !dbg !285
  %26 = getelementptr inbounds %struct.HISTORY_ENTRY_REC, %struct.HISTORY_ENTRY_REC* %25, i32 0, i32 1, !dbg !286
  %27 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %26, align 8, !dbg !286
  %28 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %3, align 8, !dbg !287
  %29 = icmp ne %struct.HISTORY_REC* %27, %28, !dbg !288
  br label %30

; <label>:30:                                     ; preds = %21, %18, %15
  %31 = phi i1 [ false, %18 ], [ false, %15 ], [ %29, %21 ]
  br i1 %31, label %32, label %36, !dbg !289

; <label>:32:                                     ; preds = %30
  %33 = load %struct._GList*, %struct._GList** %5, align 8, !dbg !291
  %34 = getelementptr inbounds %struct._GList, %struct._GList* %33, i32 0, i32 1, !dbg !293
  %35 = load %struct._GList*, %struct._GList** %34, align 8, !dbg !293
  store %struct._GList* %35, %struct._GList** %5, align 8, !dbg !294
  br label %15, !dbg !295, !llvm.loop !297

; <label>:36:                                     ; preds = %30
  %37 = load %struct._GList*, %struct._GList** %5, align 8, !dbg !298
  ret %struct._GList* %37, !dbg !299
}

; Function Attrs: nounwind uwtable
define void @command_history_add(%struct.HISTORY_REC*, i8*) #0 !dbg !300 {
  %3 = alloca %struct.HISTORY_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._GList*, align 8
  store %struct.HISTORY_REC* %0, %struct.HISTORY_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.HISTORY_REC** %3, metadata !303, metadata !146), !dbg !304
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !305, metadata !146), !dbg !306
  call void @llvm.dbg.declare(metadata %struct._GList** %5, metadata !307, metadata !146), !dbg !308
  br label %6, !dbg !309, !llvm.loop !310

; <label>:6:                                      ; preds = %2
  %7 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %3, align 8, !dbg !311
  %8 = icmp ne %struct.HISTORY_REC* %7, null, !dbg !315
  br i1 %8, label %9, label %10, !dbg !311

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !316

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.command_history_add, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0)), !dbg !319
  br label %60, !dbg !322

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !323

; <label>:12:                                     ; preds = %11
  br label %13, !dbg !325, !llvm.loop !326

; <label>:13:                                     ; preds = %12
  %14 = load i8*, i8** %4, align 8, !dbg !327
  %15 = icmp ne i8* %14, null, !dbg !331
  br i1 %15, label %16, label %17, !dbg !327

; <label>:16:                                     ; preds = %13
  br label %18, !dbg !332

; <label>:17:                                     ; preds = %13
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.command_history_add, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)), !dbg !335
  br label %60, !dbg !338

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !339

; <label>:19:                                     ; preds = %18
  %20 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %3, align 8, !dbg !341
  %21 = call %struct._GList* @command_history_list_last(%struct.HISTORY_REC* %20), !dbg !342
  store %struct._GList* %21, %struct._GList** %5, align 8, !dbg !343
  %22 = load %struct._GList*, %struct._GList** %5, align 8, !dbg !344
  %23 = icmp ne %struct._GList* %22, null, !dbg !346
  br i1 %23, label %24, label %35, !dbg !347

; <label>:24:                                     ; preds = %19
  %25 = load %struct._GList*, %struct._GList** %5, align 8, !dbg !348
  %26 = getelementptr inbounds %struct._GList, %struct._GList* %25, i32 0, i32 0, !dbg !350
  %27 = load i8*, i8** %26, align 8, !dbg !350
  %28 = bitcast i8* %27 to %struct.HISTORY_ENTRY_REC*, !dbg !351
  %29 = getelementptr inbounds %struct.HISTORY_ENTRY_REC, %struct.HISTORY_ENTRY_REC* %28, i32 0, i32 0, !dbg !352
  %30 = load i8*, i8** %29, align 8, !dbg !352
  %31 = load i8*, i8** %4, align 8, !dbg !353
  %32 = call i32 @g_strcmp0(i8* %30, i8* %31), !dbg !354
  %33 = icmp eq i32 %32, 0, !dbg !355
  br i1 %33, label %34, label %35, !dbg !356

; <label>:34:                                     ; preds = %24
  br label %60, !dbg !357

; <label>:35:                                     ; preds = %24, %19
  %36 = call i32 @settings_get_int(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0)), !dbg !358
  %37 = icmp slt i32 %36, 1, !dbg !360
  br i1 %37, label %44, label %38, !dbg !361

; <label>:38:                                     ; preds = %35
  %39 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %3, align 8, !dbg !362
  %40 = getelementptr inbounds %struct.HISTORY_REC, %struct.HISTORY_REC* %39, i32 0, i32 2, !dbg !363
  %41 = load i32, i32* %40, align 8, !dbg !363
  %42 = call i32 @settings_get_int(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0)), !dbg !364
  %43 = icmp slt i32 %41, %42, !dbg !365
  br i1 %43, label %44, label %49, !dbg !366

; <label>:44:                                     ; preds = %38, %35
  %45 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %3, align 8, !dbg !368
  %46 = getelementptr inbounds %struct.HISTORY_REC, %struct.HISTORY_REC* %45, i32 0, i32 2, !dbg !369
  %47 = load i32, i32* %46, align 8, !dbg !370
  %48 = add nsw i32 %47, 1, !dbg !370
  store i32 %48, i32* %46, align 8, !dbg !370
  br label %53, !dbg !368

; <label>:49:                                     ; preds = %38
  %50 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %3, align 8, !dbg !371
  %51 = call %struct._GList* @command_history_list_first(%struct.HISTORY_REC* %50), !dbg !373
  store %struct._GList* %51, %struct._GList** %5, align 8, !dbg !374
  %52 = load %struct._GList*, %struct._GList** %5, align 8, !dbg !375
  call void @history_list_delete_link_and_destroy(%struct._GList* %52), !dbg !376
  br label %53

; <label>:53:                                     ; preds = %49, %44
  %54 = load %struct._GList*, %struct._GList** @history_entries, align 8, !dbg !377
  %55 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %3, align 8, !dbg !378
  %56 = load i8*, i8** %4, align 8, !dbg !379
  %57 = call %struct.HISTORY_ENTRY_REC* @history_entry_new(%struct.HISTORY_REC* %55, i8* %56), !dbg !380
  %58 = bitcast %struct.HISTORY_ENTRY_REC* %57 to i8*, !dbg !380
  %59 = call %struct._GList* @g_list_append(%struct._GList* %54, i8* %58), !dbg !381
  store %struct._GList* %59, %struct._GList** @history_entries, align 8, !dbg !382
  br label %60, !dbg !383

; <label>:60:                                     ; preds = %53, %34, %17, %10
  ret void, !dbg !384
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare i32 @g_strcmp0(i8*, i8*) #2

declare i32 @settings_get_int(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @history_list_delete_link_and_destroy(%struct._GList*) #0 !dbg !385 {
  %2 = alloca %struct._GList*, align 8
  store %struct._GList* %0, %struct._GList** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._GList** %2, metadata !388, metadata !146), !dbg !389
  %3 = load %struct._GSList*, %struct._GSList** @histories, align 8, !dbg !390
  %4 = load %struct._GList*, %struct._GList** %2, align 8, !dbg !391
  %5 = bitcast %struct._GList* %4 to i8*, !dbg !391
  call void @g_slist_foreach(%struct._GSList* %3, void (i8*, i8*)* bitcast (void (%struct.HISTORY_REC*, %struct._GList*)* @command_history_clear_pos_for_unlink_func to void (i8*, i8*)*), i8* %5), !dbg !392
  %6 = load %struct._GList*, %struct._GList** %2, align 8, !dbg !393
  %7 = getelementptr inbounds %struct._GList, %struct._GList* %6, i32 0, i32 0, !dbg !394
  %8 = load i8*, i8** %7, align 8, !dbg !394
  %9 = bitcast i8* %8 to %struct.HISTORY_ENTRY_REC*, !dbg !393
  call void @history_entry_destroy(%struct.HISTORY_ENTRY_REC* %9), !dbg !395
  %10 = load %struct._GList*, %struct._GList** @history_entries, align 8, !dbg !396
  %11 = load %struct._GList*, %struct._GList** %2, align 8, !dbg !397
  %12 = call %struct._GList* @g_list_delete_link(%struct._GList* %10, %struct._GList* %11), !dbg !398
  store %struct._GList* %12, %struct._GList** @history_entries, align 8, !dbg !399
  ret void, !dbg !400
}

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct.HISTORY_ENTRY_REC* @history_entry_new(%struct.HISTORY_REC*, i8*) #0 !dbg !401 {
  %3 = alloca %struct.HISTORY_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.HISTORY_ENTRY_REC*, align 8
  store %struct.HISTORY_REC* %0, %struct.HISTORY_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.HISTORY_REC** %3, metadata !404, metadata !146), !dbg !405
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !406, metadata !146), !dbg !407
  call void @llvm.dbg.declare(metadata %struct.HISTORY_ENTRY_REC** %5, metadata !408, metadata !146), !dbg !409
  %6 = call noalias i8* @g_malloc0_n(i64 1, i64 24), !dbg !410
  %7 = bitcast i8* %6 to %struct.HISTORY_ENTRY_REC*, !dbg !411
  store %struct.HISTORY_ENTRY_REC* %7, %struct.HISTORY_ENTRY_REC** %5, align 8, !dbg !412
  %8 = load i8*, i8** %4, align 8, !dbg !413
  %9 = call noalias i8* @g_strdup(i8* %8), !dbg !414
  %10 = load %struct.HISTORY_ENTRY_REC*, %struct.HISTORY_ENTRY_REC** %5, align 8, !dbg !415
  %11 = getelementptr inbounds %struct.HISTORY_ENTRY_REC, %struct.HISTORY_ENTRY_REC* %10, i32 0, i32 0, !dbg !416
  store i8* %9, i8** %11, align 8, !dbg !417
  %12 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %3, align 8, !dbg !418
  %13 = load %struct.HISTORY_ENTRY_REC*, %struct.HISTORY_ENTRY_REC** %5, align 8, !dbg !419
  %14 = getelementptr inbounds %struct.HISTORY_ENTRY_REC, %struct.HISTORY_ENTRY_REC* %13, i32 0, i32 1, !dbg !420
  store %struct.HISTORY_REC* %12, %struct.HISTORY_REC** %14, align 8, !dbg !421
  %15 = call i64 @time(i64* null) #4, !dbg !422
  %16 = load %struct.HISTORY_ENTRY_REC*, %struct.HISTORY_ENTRY_REC** %5, align 8, !dbg !423
  %17 = getelementptr inbounds %struct.HISTORY_ENTRY_REC, %struct.HISTORY_ENTRY_REC* %16, i32 0, i32 2, !dbg !424
  store i64 %15, i64* %17, align 8, !dbg !425
  %18 = load %struct.HISTORY_ENTRY_REC*, %struct.HISTORY_ENTRY_REC** %5, align 8, !dbg !426
  ret %struct.HISTORY_ENTRY_REC* %18, !dbg !427
}

; Function Attrs: nounwind uwtable
define %struct.HISTORY_REC* @command_history_find(%struct.HISTORY_REC*) #0 !dbg !428 {
  %2 = alloca %struct.HISTORY_REC*, align 8
  %3 = alloca %struct.HISTORY_REC*, align 8
  %4 = alloca %struct._GSList*, align 8
  store %struct.HISTORY_REC* %0, %struct.HISTORY_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.HISTORY_REC** %3, metadata !431, metadata !146), !dbg !432
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !433, metadata !146), !dbg !434
  %5 = load %struct._GSList*, %struct._GSList** @histories, align 8, !dbg !435
  %6 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %3, align 8, !dbg !436
  %7 = bitcast %struct.HISTORY_REC* %6 to i8*, !dbg !436
  %8 = call %struct._GSList* @g_slist_find(%struct._GSList* %5, i8* %7), !dbg !437
  store %struct._GSList* %8, %struct._GSList** %4, align 8, !dbg !438
  %9 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !439
  %10 = icmp eq %struct._GSList* %9, null, !dbg !441
  br i1 %10, label %11, label %12, !dbg !442

; <label>:11:                                     ; preds = %1
  store %struct.HISTORY_REC* null, %struct.HISTORY_REC** %2, align 8, !dbg !443
  br label %17, !dbg !443

; <label>:12:                                     ; preds = %1
  %13 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !444
  %14 = getelementptr inbounds %struct._GSList, %struct._GSList* %13, i32 0, i32 0, !dbg !445
  %15 = load i8*, i8** %14, align 8, !dbg !445
  %16 = bitcast i8* %15 to %struct.HISTORY_REC*, !dbg !444
  store %struct.HISTORY_REC* %16, %struct.HISTORY_REC** %2, align 8, !dbg !446
  br label %17, !dbg !446

; <label>:17:                                     ; preds = %12, %11
  %18 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %2, align 8, !dbg !447
  ret %struct.HISTORY_REC* %18, !dbg !447
}

declare %struct._GSList* @g_slist_find(%struct._GSList*, i8*) #2

; Function Attrs: nounwind uwtable
define %struct.HISTORY_REC* @command_history_find_name(i8*) #0 !dbg !448 {
  %2 = alloca %struct.HISTORY_REC*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct.HISTORY_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !451, metadata !146), !dbg !452
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !453, metadata !146), !dbg !454
  %6 = load i8*, i8** %3, align 8, !dbg !455
  %7 = icmp eq i8* %6, null, !dbg !457
  br i1 %7, label %8, label %9, !dbg !458

; <label>:8:                                      ; preds = %1
  store %struct.HISTORY_REC* null, %struct.HISTORY_REC** %2, align 8, !dbg !459
  br label %38, !dbg !459

; <label>:9:                                      ; preds = %1
  %10 = load %struct._GSList*, %struct._GSList** @histories, align 8, !dbg !460
  store %struct._GSList* %10, %struct._GSList** %4, align 8, !dbg !462
  br label %11, !dbg !463

; <label>:11:                                     ; preds = %33, %9
  %12 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !464
  %13 = icmp ne %struct._GSList* %12, null, !dbg !467
  br i1 %13, label %14, label %37, !dbg !468

; <label>:14:                                     ; preds = %11
  call void @llvm.dbg.declare(metadata %struct.HISTORY_REC** %5, metadata !469, metadata !146), !dbg !471
  %15 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !472
  %16 = getelementptr inbounds %struct._GSList, %struct._GSList* %15, i32 0, i32 0, !dbg !473
  %17 = load i8*, i8** %16, align 8, !dbg !473
  %18 = bitcast i8* %17 to %struct.HISTORY_REC*, !dbg !472
  store %struct.HISTORY_REC* %18, %struct.HISTORY_REC** %5, align 8, !dbg !471
  %19 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %5, align 8, !dbg !474
  %20 = getelementptr inbounds %struct.HISTORY_REC, %struct.HISTORY_REC* %19, i32 0, i32 0, !dbg !476
  %21 = load i8*, i8** %20, align 8, !dbg !476
  %22 = icmp ne i8* %21, null, !dbg !477
  br i1 %22, label %23, label %32, !dbg !478

; <label>:23:                                     ; preds = %14
  %24 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %5, align 8, !dbg !479
  %25 = getelementptr inbounds %struct.HISTORY_REC, %struct.HISTORY_REC* %24, i32 0, i32 0, !dbg !480
  %26 = load i8*, i8** %25, align 8, !dbg !480
  %27 = load i8*, i8** %3, align 8, !dbg !481
  %28 = call i32 @g_ascii_strcasecmp(i8* %26, i8* %27), !dbg !482
  %29 = icmp eq i32 %28, 0, !dbg !483
  br i1 %29, label %30, label %32, !dbg !484

; <label>:30:                                     ; preds = %23
  %31 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %5, align 8, !dbg !486
  store %struct.HISTORY_REC* %31, %struct.HISTORY_REC** %2, align 8, !dbg !487
  br label %38, !dbg !487

; <label>:32:                                     ; preds = %23, %14
  br label %33, !dbg !488

; <label>:33:                                     ; preds = %32
  %34 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !489
  %35 = getelementptr inbounds %struct._GSList, %struct._GSList* %34, i32 0, i32 1, !dbg !491
  %36 = load %struct._GSList*, %struct._GSList** %35, align 8, !dbg !491
  store %struct._GSList* %36, %struct._GSList** %4, align 8, !dbg !492
  br label %11, !dbg !493, !llvm.loop !494

; <label>:37:                                     ; preds = %11
  store %struct.HISTORY_REC* null, %struct.HISTORY_REC** %2, align 8, !dbg !496
  br label %38, !dbg !496

; <label>:38:                                     ; preds = %37, %30, %8
  %39 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %2, align 8, !dbg !497
  ret %struct.HISTORY_REC* %39, !dbg !497
}

declare i32 @g_ascii_strcasecmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @command_history_load_entry(i64, %struct.HISTORY_REC*, i8*) #0 !dbg !498 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.HISTORY_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.HISTORY_ENTRY_REC*, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !501, metadata !146), !dbg !502
  store %struct.HISTORY_REC* %1, %struct.HISTORY_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.HISTORY_REC** %5, metadata !503, metadata !146), !dbg !504
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !505, metadata !146), !dbg !506
  call void @llvm.dbg.declare(metadata %struct.HISTORY_ENTRY_REC** %7, metadata !507, metadata !146), !dbg !508
  br label %8, !dbg !509, !llvm.loop !510

; <label>:8:                                      ; preds = %3
  %9 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %5, align 8, !dbg !511
  %10 = icmp ne %struct.HISTORY_REC* %9, null, !dbg !515
  br i1 %10, label %11, label %12, !dbg !511

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !516

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.command_history_load_entry, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0)), !dbg !519
  br label %42, !dbg !522

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !523

; <label>:14:                                     ; preds = %13
  br label %15, !dbg !525, !llvm.loop !526

; <label>:15:                                     ; preds = %14
  %16 = load i8*, i8** %6, align 8, !dbg !527
  %17 = icmp ne i8* %16, null, !dbg !531
  br i1 %17, label %18, label %19, !dbg !527

; <label>:18:                                     ; preds = %15
  br label %20, !dbg !532

; <label>:19:                                     ; preds = %15
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.command_history_load_entry, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)), !dbg !535
  br label %42, !dbg !538

; <label>:20:                                     ; preds = %18
  br label %21, !dbg !539

; <label>:21:                                     ; preds = %20
  %22 = call noalias i8* @g_malloc0_n(i64 1, i64 24), !dbg !541
  %23 = bitcast i8* %22 to %struct.HISTORY_ENTRY_REC*, !dbg !542
  store %struct.HISTORY_ENTRY_REC* %23, %struct.HISTORY_ENTRY_REC** %7, align 8, !dbg !543
  %24 = load i8*, i8** %6, align 8, !dbg !544
  %25 = call noalias i8* @g_strdup(i8* %24), !dbg !545
  %26 = load %struct.HISTORY_ENTRY_REC*, %struct.HISTORY_ENTRY_REC** %7, align 8, !dbg !546
  %27 = getelementptr inbounds %struct.HISTORY_ENTRY_REC, %struct.HISTORY_ENTRY_REC* %26, i32 0, i32 0, !dbg !547
  store i8* %25, i8** %27, align 8, !dbg !548
  %28 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %5, align 8, !dbg !549
  %29 = load %struct.HISTORY_ENTRY_REC*, %struct.HISTORY_ENTRY_REC** %7, align 8, !dbg !550
  %30 = getelementptr inbounds %struct.HISTORY_ENTRY_REC, %struct.HISTORY_ENTRY_REC* %29, i32 0, i32 1, !dbg !551
  store %struct.HISTORY_REC* %28, %struct.HISTORY_REC** %30, align 8, !dbg !552
  %31 = load i64, i64* %4, align 8, !dbg !553
  %32 = load %struct.HISTORY_ENTRY_REC*, %struct.HISTORY_ENTRY_REC** %7, align 8, !dbg !554
  %33 = getelementptr inbounds %struct.HISTORY_ENTRY_REC, %struct.HISTORY_ENTRY_REC* %32, i32 0, i32 2, !dbg !555
  store i64 %31, i64* %33, align 8, !dbg !556
  %34 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %5, align 8, !dbg !557
  %35 = getelementptr inbounds %struct.HISTORY_REC, %struct.HISTORY_REC* %34, i32 0, i32 2, !dbg !558
  %36 = load i32, i32* %35, align 8, !dbg !559
  %37 = add nsw i32 %36, 1, !dbg !559
  store i32 %37, i32* %35, align 8, !dbg !559
  %38 = load %struct._GList*, %struct._GList** @history_entries, align 8, !dbg !560
  %39 = load %struct.HISTORY_ENTRY_REC*, %struct.HISTORY_ENTRY_REC** %7, align 8, !dbg !561
  %40 = bitcast %struct.HISTORY_ENTRY_REC* %39 to i8*, !dbg !561
  %41 = call %struct._GList* @g_list_insert_sorted(%struct._GList* %38, i8* %40, i32 (i8*, i8*)* bitcast (i32 (%struct.HISTORY_ENTRY_REC*, %struct.HISTORY_ENTRY_REC*)* @history_entry_after_time_sort to i32 (i8*, i8*)*)), !dbg !562
  store %struct._GList* %41, %struct._GList** @history_entries, align 8, !dbg !563
  br label %42, !dbg !564

; <label>:42:                                     ; preds = %21, %19, %12
  ret void, !dbg !565
}

declare noalias i8* @g_malloc0_n(i64, i64) #2

declare noalias i8* @g_strdup(i8*) #2

declare %struct._GList* @g_list_insert_sorted(%struct._GList*, i8*, i32 (i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @history_entry_after_time_sort(%struct.HISTORY_ENTRY_REC*, %struct.HISTORY_ENTRY_REC*) #0 !dbg !567 {
  %3 = alloca %struct.HISTORY_ENTRY_REC*, align 8
  %4 = alloca %struct.HISTORY_ENTRY_REC*, align 8
  store %struct.HISTORY_ENTRY_REC* %0, %struct.HISTORY_ENTRY_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.HISTORY_ENTRY_REC** %3, metadata !572, metadata !146), !dbg !573
  store %struct.HISTORY_ENTRY_REC* %1, %struct.HISTORY_ENTRY_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.HISTORY_ENTRY_REC** %4, metadata !574, metadata !146), !dbg !575
  %5 = load %struct.HISTORY_ENTRY_REC*, %struct.HISTORY_ENTRY_REC** %3, align 8, !dbg !576
  %6 = getelementptr inbounds %struct.HISTORY_ENTRY_REC, %struct.HISTORY_ENTRY_REC* %5, i32 0, i32 2, !dbg !577
  %7 = load i64, i64* %6, align 8, !dbg !577
  %8 = load %struct.HISTORY_ENTRY_REC*, %struct.HISTORY_ENTRY_REC** %4, align 8, !dbg !578
  %9 = getelementptr inbounds %struct.HISTORY_ENTRY_REC, %struct.HISTORY_ENTRY_REC* %8, i32 0, i32 2, !dbg !579
  %10 = load i64, i64* %9, align 8, !dbg !579
  %11 = icmp eq i64 %7, %10, !dbg !580
  br i1 %11, label %12, label %13, !dbg !576

; <label>:12:                                     ; preds = %2
  br label %21, !dbg !581

; <label>:13:                                     ; preds = %2
  %14 = load %struct.HISTORY_ENTRY_REC*, %struct.HISTORY_ENTRY_REC** %3, align 8, !dbg !583
  %15 = getelementptr inbounds %struct.HISTORY_ENTRY_REC, %struct.HISTORY_ENTRY_REC* %14, i32 0, i32 2, !dbg !585
  %16 = load i64, i64* %15, align 8, !dbg !585
  %17 = load %struct.HISTORY_ENTRY_REC*, %struct.HISTORY_ENTRY_REC** %4, align 8, !dbg !586
  %18 = getelementptr inbounds %struct.HISTORY_ENTRY_REC, %struct.HISTORY_ENTRY_REC* %17, i32 0, i32 2, !dbg !587
  %19 = load i64, i64* %18, align 8, !dbg !587
  %20 = sub nsw i64 %16, %19, !dbg !588
  br label %21, !dbg !589

; <label>:21:                                     ; preds = %13, %12
  %22 = phi i64 [ 1, %12 ], [ %20, %13 ], !dbg !590
  %23 = trunc i64 %22 to i32, !dbg !590
  ret i32 %23, !dbg !592
}

; Function Attrs: nounwind uwtable
define i32 @command_history_delete_entry(i64, %struct.HISTORY_REC*, i8*) #0 !dbg !593 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.HISTORY_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._GList*, align 8
  %9 = alloca %struct.HISTORY_ENTRY_REC, align 8
  store i64 %0, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !597, metadata !146), !dbg !598
  store %struct.HISTORY_REC* %1, %struct.HISTORY_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.HISTORY_REC** %6, metadata !599, metadata !146), !dbg !600
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !601, metadata !146), !dbg !602
  call void @llvm.dbg.declare(metadata %struct._GList** %8, metadata !603, metadata !146), !dbg !604
  call void @llvm.dbg.declare(metadata %struct.HISTORY_ENTRY_REC* %9, metadata !605, metadata !146), !dbg !606
  br label %10, !dbg !607, !llvm.loop !608

; <label>:10:                                     ; preds = %3
  %11 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %6, align 8, !dbg !609
  %12 = icmp ne %struct.HISTORY_REC* %11, null, !dbg !613
  br i1 %12, label %13, label %14, !dbg !609

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !614

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.command_history_delete_entry, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0)), !dbg !617
  store i32 0, i32* %4, align 4, !dbg !620
  br label %47, !dbg !620

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !621

; <label>:16:                                     ; preds = %15
  br label %17, !dbg !623, !llvm.loop !624

; <label>:17:                                     ; preds = %16
  %18 = load i8*, i8** %7, align 8, !dbg !625
  %19 = icmp ne i8* %18, null, !dbg !629
  br i1 %19, label %20, label %21, !dbg !625

; <label>:20:                                     ; preds = %17
  br label %22, !dbg !630

; <label>:21:                                     ; preds = %17
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.command_history_delete_entry, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)), !dbg !633
  store i32 0, i32* %4, align 4, !dbg !636
  br label %47, !dbg !636

; <label>:22:                                     ; preds = %20
  br label %23, !dbg !637

; <label>:23:                                     ; preds = %22
  %24 = load i8*, i8** %7, align 8, !dbg !639
  %25 = getelementptr inbounds %struct.HISTORY_ENTRY_REC, %struct.HISTORY_ENTRY_REC* %9, i32 0, i32 0, !dbg !640
  store i8* %24, i8** %25, align 8, !dbg !641
  %26 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %6, align 8, !dbg !642
  %27 = getelementptr inbounds %struct.HISTORY_ENTRY_REC, %struct.HISTORY_ENTRY_REC* %9, i32 0, i32 1, !dbg !643
  store %struct.HISTORY_REC* %26, %struct.HISTORY_REC** %27, align 8, !dbg !644
  %28 = load i64, i64* %5, align 8, !dbg !645
  %29 = getelementptr inbounds %struct.HISTORY_ENTRY_REC, %struct.HISTORY_ENTRY_REC* %9, i32 0, i32 2, !dbg !646
  store i64 %28, i64* %29, align 8, !dbg !647
  %30 = load %struct._GList*, %struct._GList** @history_entries, align 8, !dbg !648
  %31 = bitcast %struct.HISTORY_ENTRY_REC* %9 to i8*, !dbg !649
  %32 = call %struct._GList* @g_list_find_custom(%struct._GList* %30, i8* %31, i32 (i8*, i8*)* bitcast (i32 (%struct.HISTORY_ENTRY_REC*, %struct.HISTORY_ENTRY_REC*)* @history_entry_find_func to i32 (i8*, i8*)*)), !dbg !650
  store %struct._GList* %32, %struct._GList** %8, align 8, !dbg !651
  %33 = load %struct._GList*, %struct._GList** %8, align 8, !dbg !652
  %34 = icmp ne %struct._GList* %33, null, !dbg !654
  br i1 %34, label %35, label %46, !dbg !655

; <label>:35:                                     ; preds = %23
  %36 = load %struct._GList*, %struct._GList** %8, align 8, !dbg !656
  %37 = getelementptr inbounds %struct._GList, %struct._GList* %36, i32 0, i32 0, !dbg !658
  %38 = load i8*, i8** %37, align 8, !dbg !658
  %39 = bitcast i8* %38 to %struct.HISTORY_ENTRY_REC*, !dbg !659
  %40 = getelementptr inbounds %struct.HISTORY_ENTRY_REC, %struct.HISTORY_ENTRY_REC* %39, i32 0, i32 1, !dbg !660
  %41 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %40, align 8, !dbg !660
  %42 = getelementptr inbounds %struct.HISTORY_REC, %struct.HISTORY_REC* %41, i32 0, i32 2, !dbg !661
  %43 = load i32, i32* %42, align 8, !dbg !662
  %44 = add nsw i32 %43, -1, !dbg !662
  store i32 %44, i32* %42, align 8, !dbg !662
  %45 = load %struct._GList*, %struct._GList** %8, align 8, !dbg !663
  call void @history_list_delete_link_and_destroy(%struct._GList* %45), !dbg !664
  store i32 1, i32* %4, align 4, !dbg !665
  br label %47, !dbg !665

; <label>:46:                                     ; preds = %23
  store i32 0, i32* %4, align 4, !dbg !666
  br label %47, !dbg !666

; <label>:47:                                     ; preds = %46, %35, %21, %14
  %48 = load i32, i32* %4, align 4, !dbg !668
  ret i32 %48, !dbg !668
}

declare %struct._GList* @g_list_find_custom(%struct._GList*, i8*, i32 (i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @history_entry_find_func(%struct.HISTORY_ENTRY_REC*, %struct.HISTORY_ENTRY_REC*) #0 !dbg !669 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.HISTORY_ENTRY_REC*, align 8
  %5 = alloca %struct.HISTORY_ENTRY_REC*, align 8
  store %struct.HISTORY_ENTRY_REC* %0, %struct.HISTORY_ENTRY_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.HISTORY_ENTRY_REC** %4, metadata !670, metadata !146), !dbg !671
  store %struct.HISTORY_ENTRY_REC* %1, %struct.HISTORY_ENTRY_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.HISTORY_ENTRY_REC** %5, metadata !672, metadata !146), !dbg !673
  %6 = load %struct.HISTORY_ENTRY_REC*, %struct.HISTORY_ENTRY_REC** %5, align 8, !dbg !674
  %7 = getelementptr inbounds %struct.HISTORY_ENTRY_REC, %struct.HISTORY_ENTRY_REC* %6, i32 0, i32 2, !dbg !676
  %8 = load i64, i64* %7, align 8, !dbg !676
  %9 = icmp eq i64 %8, -1, !dbg !677
  br i1 %9, label %18, label %10, !dbg !678

; <label>:10:                                     ; preds = %2
  %11 = load %struct.HISTORY_ENTRY_REC*, %struct.HISTORY_ENTRY_REC** %4, align 8, !dbg !679
  %12 = getelementptr inbounds %struct.HISTORY_ENTRY_REC, %struct.HISTORY_ENTRY_REC* %11, i32 0, i32 2, !dbg !681
  %13 = load i64, i64* %12, align 8, !dbg !681
  %14 = load %struct.HISTORY_ENTRY_REC*, %struct.HISTORY_ENTRY_REC** %5, align 8, !dbg !682
  %15 = getelementptr inbounds %struct.HISTORY_ENTRY_REC, %struct.HISTORY_ENTRY_REC* %14, i32 0, i32 2, !dbg !683
  %16 = load i64, i64* %15, align 8, !dbg !683
  %17 = icmp eq i64 %13, %16, !dbg !684
  br i1 %17, label %18, label %41, !dbg !685

; <label>:18:                                     ; preds = %10, %2
  %19 = load %struct.HISTORY_ENTRY_REC*, %struct.HISTORY_ENTRY_REC** %5, align 8, !dbg !686
  %20 = getelementptr inbounds %struct.HISTORY_ENTRY_REC, %struct.HISTORY_ENTRY_REC* %19, i32 0, i32 1, !dbg !687
  %21 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %20, align 8, !dbg !687
  %22 = icmp eq %struct.HISTORY_REC* %21, null, !dbg !688
  br i1 %22, label %31, label %23, !dbg !689

; <label>:23:                                     ; preds = %18
  %24 = load %struct.HISTORY_ENTRY_REC*, %struct.HISTORY_ENTRY_REC** %4, align 8, !dbg !690
  %25 = getelementptr inbounds %struct.HISTORY_ENTRY_REC, %struct.HISTORY_ENTRY_REC* %24, i32 0, i32 1, !dbg !691
  %26 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %25, align 8, !dbg !691
  %27 = load %struct.HISTORY_ENTRY_REC*, %struct.HISTORY_ENTRY_REC** %5, align 8, !dbg !692
  %28 = getelementptr inbounds %struct.HISTORY_ENTRY_REC, %struct.HISTORY_ENTRY_REC* %27, i32 0, i32 1, !dbg !693
  %29 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %28, align 8, !dbg !693
  %30 = icmp eq %struct.HISTORY_REC* %26, %29, !dbg !694
  br i1 %30, label %31, label %41, !dbg !695

; <label>:31:                                     ; preds = %23, %18
  %32 = load %struct.HISTORY_ENTRY_REC*, %struct.HISTORY_ENTRY_REC** %4, align 8, !dbg !696
  %33 = getelementptr inbounds %struct.HISTORY_ENTRY_REC, %struct.HISTORY_ENTRY_REC* %32, i32 0, i32 0, !dbg !697
  %34 = load i8*, i8** %33, align 8, !dbg !697
  %35 = load %struct.HISTORY_ENTRY_REC*, %struct.HISTORY_ENTRY_REC** %5, align 8, !dbg !698
  %36 = getelementptr inbounds %struct.HISTORY_ENTRY_REC, %struct.HISTORY_ENTRY_REC* %35, i32 0, i32 0, !dbg !699
  %37 = load i8*, i8** %36, align 8, !dbg !699
  %38 = call i32 @g_strcmp0(i8* %34, i8* %37), !dbg !700
  %39 = icmp eq i32 %38, 0, !dbg !701
  br i1 %39, label %40, label %41, !dbg !702

; <label>:40:                                     ; preds = %31
  store i32 0, i32* %3, align 4, !dbg !704
  br label %42, !dbg !704

; <label>:41:                                     ; preds = %31, %23, %10
  store i32 -1, i32* %3, align 4, !dbg !706
  br label %42, !dbg !706

; <label>:42:                                     ; preds = %41, %40
  %43 = load i32, i32* %3, align 4, !dbg !708
  ret i32 %43, !dbg !708
}

; Function Attrs: nounwind uwtable
define %struct.HISTORY_REC* @command_history_current(%struct._WINDOW_REC*) #0 !dbg !709 {
  %2 = alloca %struct.HISTORY_REC*, align 8
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca %struct.HISTORY_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !712, metadata !146), !dbg !713
  call void @llvm.dbg.declare(metadata %struct.HISTORY_REC** %4, metadata !714, metadata !146), !dbg !715
  %5 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !716
  %6 = icmp eq %struct._WINDOW_REC* %5, null, !dbg !718
  br i1 %6, label %7, label %9, !dbg !719

; <label>:7:                                      ; preds = %1
  %8 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** @global_history, align 8, !dbg !720
  store %struct.HISTORY_REC* %8, %struct.HISTORY_REC** %2, align 8, !dbg !721
  br label %27, !dbg !721

; <label>:9:                                      ; preds = %1
  %10 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !722
  %11 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %10, i32 0, i32 13, !dbg !723
  %12 = load i8*, i8** %11, align 8, !dbg !723
  %13 = call %struct.HISTORY_REC* @command_history_find_name(i8* %12), !dbg !724
  store %struct.HISTORY_REC* %13, %struct.HISTORY_REC** %4, align 8, !dbg !725
  %14 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %4, align 8, !dbg !726
  %15 = icmp ne %struct.HISTORY_REC* %14, null, !dbg !728
  br i1 %15, label %16, label %18, !dbg !729

; <label>:16:                                     ; preds = %9
  %17 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %4, align 8, !dbg !730
  store %struct.HISTORY_REC* %17, %struct.HISTORY_REC** %2, align 8, !dbg !731
  br label %27, !dbg !731

; <label>:18:                                     ; preds = %9
  %19 = load i32, i32* @window_history, align 4, !dbg !732
  %20 = icmp ne i32 %19, 0, !dbg !732
  br i1 %20, label %21, label %25, !dbg !734

; <label>:21:                                     ; preds = %18
  %22 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !735
  %23 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %22, i32 0, i32 12, !dbg !736
  %24 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %23, align 8, !dbg !736
  store %struct.HISTORY_REC* %24, %struct.HISTORY_REC** %2, align 8, !dbg !737
  br label %27, !dbg !737

; <label>:25:                                     ; preds = %18
  %26 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** @global_history, align 8, !dbg !738
  store %struct.HISTORY_REC* %26, %struct.HISTORY_REC** %2, align 8, !dbg !739
  br label %27, !dbg !739

; <label>:27:                                     ; preds = %25, %21, %16, %7
  %28 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %2, align 8, !dbg !740
  ret %struct.HISTORY_REC* %28, !dbg !740
}

; Function Attrs: nounwind uwtable
define i8* @command_history_prev(%struct._WINDOW_REC*, i8*) #0 !dbg !741 {
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !744, metadata !146), !dbg !745
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !746, metadata !146), !dbg !747
  %5 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !748
  %6 = load i8*, i8** %4, align 8, !dbg !749
  %7 = call i8* @command_history_prev_int(%struct._WINDOW_REC* %5, i8* %6, i32 0), !dbg !750
  ret i8* %7, !dbg !751
}

; Function Attrs: nounwind uwtable
define internal i8* @command_history_prev_int(%struct._WINDOW_REC*, i8*, i32) #0 !dbg !752 {
  %4 = alloca %struct._WINDOW_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.HISTORY_REC*, align 8
  %8 = alloca %struct._GList*, align 8
  %9 = alloca %struct._GList*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %4, metadata !755, metadata !146), !dbg !756
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !757, metadata !146), !dbg !758
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !759, metadata !146), !dbg !760
  call void @llvm.dbg.declare(metadata %struct.HISTORY_REC** %7, metadata !761, metadata !146), !dbg !762
  call void @llvm.dbg.declare(metadata %struct._GList** %8, metadata !763, metadata !146), !dbg !764
  %10 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !765
  %11 = call %struct.HISTORY_REC* @command_history_current(%struct._WINDOW_REC* %10), !dbg !766
  store %struct.HISTORY_REC* %11, %struct.HISTORY_REC** %7, align 8, !dbg !767
  %12 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %7, align 8, !dbg !768
  %13 = getelementptr inbounds %struct.HISTORY_REC, %struct.HISTORY_REC* %12, i32 0, i32 1, !dbg !769
  %14 = load %struct._GList*, %struct._GList** %13, align 8, !dbg !769
  store %struct._GList* %14, %struct._GList** %8, align 8, !dbg !770
  %15 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %7, align 8, !dbg !771
  %16 = getelementptr inbounds %struct.HISTORY_REC, %struct.HISTORY_REC* %15, i32 0, i32 4, !dbg !772
  %17 = load i8, i8* %16, align 8, !dbg !773
  %18 = and i8 %17, -2, !dbg !773
  store i8 %18, i8* %16, align 8, !dbg !773
  %19 = load %struct._GList*, %struct._GList** %8, align 8, !dbg !774
  %20 = icmp ne %struct._GList* %19, null, !dbg !776
  br i1 %20, label %21, label %40, !dbg !777

; <label>:21:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata %struct._GList** %9, metadata !778, metadata !146), !dbg !780
  %22 = load i32, i32* %6, align 4, !dbg !781
  %23 = icmp ne i32 %22, 0, !dbg !781
  br i1 %23, label %24, label %25, !dbg !781

; <label>:24:                                     ; preds = %21
  br label %27, !dbg !782

; <label>:25:                                     ; preds = %21
  %26 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %7, align 8, !dbg !784
  br label %27, !dbg !786

; <label>:27:                                     ; preds = %25, %24
  %28 = phi %struct.HISTORY_REC* [ null, %24 ], [ %26, %25 ], !dbg !787
  %29 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %7, align 8, !dbg !789
  %30 = getelementptr inbounds %struct.HISTORY_REC, %struct.HISTORY_REC* %29, i32 0, i32 1, !dbg !790
  %31 = load %struct._GList*, %struct._GList** %30, align 8, !dbg !790
  %32 = call %struct._GList* @command_history_list_prev(%struct.HISTORY_REC* %28, %struct._GList* %31), !dbg !791
  store %struct._GList* %32, %struct._GList** %9, align 8, !dbg !792
  %33 = load %struct._GList*, %struct._GList** %9, align 8, !dbg !793
  %34 = icmp ne %struct._GList* %33, null, !dbg !795
  br i1 %34, label %35, label %39, !dbg !796

; <label>:35:                                     ; preds = %27
  %36 = load %struct._GList*, %struct._GList** %9, align 8, !dbg !797
  %37 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %7, align 8, !dbg !798
  %38 = getelementptr inbounds %struct.HISTORY_REC, %struct.HISTORY_REC* %37, i32 0, i32 1, !dbg !799
  store %struct._GList* %36, %struct._GList** %38, align 8, !dbg !800
  br label %39, !dbg !798

; <label>:39:                                     ; preds = %35, %27
  br label %51, !dbg !801

; <label>:40:                                     ; preds = %3
  %41 = load i32, i32* %6, align 4, !dbg !802
  %42 = icmp ne i32 %41, 0, !dbg !802
  br i1 %42, label %43, label %44, !dbg !802

; <label>:43:                                     ; preds = %40
  br label %46, !dbg !804

; <label>:44:                                     ; preds = %40
  %45 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %7, align 8, !dbg !806
  br label %46, !dbg !808

; <label>:46:                                     ; preds = %44, %43
  %47 = phi %struct.HISTORY_REC* [ null, %43 ], [ %45, %44 ], !dbg !809
  %48 = call %struct._GList* @command_history_list_last(%struct.HISTORY_REC* %47), !dbg !811
  %49 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %7, align 8, !dbg !812
  %50 = getelementptr inbounds %struct.HISTORY_REC, %struct.HISTORY_REC* %49, i32 0, i32 1, !dbg !813
  store %struct._GList* %48, %struct._GList** %50, align 8, !dbg !814
  br label %51

; <label>:51:                                     ; preds = %46, %39
  %52 = load i8*, i8** %5, align 8, !dbg !815
  %53 = load i8, i8* %52, align 1, !dbg !817
  %54 = sext i8 %53 to i32, !dbg !817
  %55 = icmp ne i32 %54, 0, !dbg !818
  br i1 %55, label %56, label %72, !dbg !819

; <label>:56:                                     ; preds = %51
  %57 = load %struct._GList*, %struct._GList** %8, align 8, !dbg !820
  %58 = icmp eq %struct._GList* %57, null, !dbg !821
  br i1 %58, label %69, label %59, !dbg !822

; <label>:59:                                     ; preds = %56
  %60 = load %struct._GList*, %struct._GList** %8, align 8, !dbg !823
  %61 = getelementptr inbounds %struct._GList, %struct._GList* %60, i32 0, i32 0, !dbg !825
  %62 = load i8*, i8** %61, align 8, !dbg !825
  %63 = bitcast i8* %62 to %struct.HISTORY_ENTRY_REC*, !dbg !826
  %64 = getelementptr inbounds %struct.HISTORY_ENTRY_REC, %struct.HISTORY_ENTRY_REC* %63, i32 0, i32 0, !dbg !827
  %65 = load i8*, i8** %64, align 8, !dbg !827
  %66 = load i8*, i8** %5, align 8, !dbg !828
  %67 = call i32 @g_strcmp0(i8* %65, i8* %66), !dbg !829
  %68 = icmp ne i32 %67, 0, !dbg !830
  br i1 %68, label %69, label %72, !dbg !831

; <label>:69:                                     ; preds = %59, %56
  %70 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %7, align 8, !dbg !833
  %71 = load i8*, i8** %5, align 8, !dbg !835
  call void @command_history_add(%struct.HISTORY_REC* %70, i8* %71), !dbg !836
  br label %72, !dbg !837

; <label>:72:                                     ; preds = %69, %59, %51
  %73 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %7, align 8, !dbg !838
  %74 = getelementptr inbounds %struct.HISTORY_REC, %struct.HISTORY_REC* %73, i32 0, i32 1, !dbg !839
  %75 = load %struct._GList*, %struct._GList** %74, align 8, !dbg !839
  %76 = icmp eq %struct._GList* %75, null, !dbg !840
  br i1 %76, label %77, label %79, !dbg !838

; <label>:77:                                     ; preds = %72
  %78 = load i8*, i8** %5, align 8, !dbg !841
  br label %88, !dbg !842

; <label>:79:                                     ; preds = %72
  %80 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %7, align 8, !dbg !843
  %81 = getelementptr inbounds %struct.HISTORY_REC, %struct.HISTORY_REC* %80, i32 0, i32 1, !dbg !845
  %82 = load %struct._GList*, %struct._GList** %81, align 8, !dbg !845
  %83 = getelementptr inbounds %struct._GList, %struct._GList* %82, i32 0, i32 0, !dbg !846
  %84 = load i8*, i8** %83, align 8, !dbg !846
  %85 = bitcast i8* %84 to %struct.HISTORY_ENTRY_REC*, !dbg !847
  %86 = getelementptr inbounds %struct.HISTORY_ENTRY_REC, %struct.HISTORY_ENTRY_REC* %85, i32 0, i32 0, !dbg !848
  %87 = load i8*, i8** %86, align 8, !dbg !848
  br label %88, !dbg !849

; <label>:88:                                     ; preds = %79, %77
  %89 = phi i8* [ %78, %77 ], [ %87, %79 ], !dbg !850
  ret i8* %89, !dbg !852
}

; Function Attrs: nounwind uwtable
define i8* @command_global_history_prev(%struct._WINDOW_REC*, i8*) #0 !dbg !853 {
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !854, metadata !146), !dbg !855
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !856, metadata !146), !dbg !857
  %5 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !858
  %6 = load i8*, i8** %4, align 8, !dbg !859
  %7 = call i8* @command_history_prev_int(%struct._WINDOW_REC* %5, i8* %6, i32 1), !dbg !860
  ret i8* %7, !dbg !861
}

; Function Attrs: nounwind uwtable
define i8* @command_history_next(%struct._WINDOW_REC*, i8*) #0 !dbg !862 {
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !863, metadata !146), !dbg !864
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !865, metadata !146), !dbg !866
  %5 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !867
  %6 = load i8*, i8** %4, align 8, !dbg !868
  %7 = call i8* @command_history_next_int(%struct._WINDOW_REC* %5, i8* %6, i32 0), !dbg !869
  ret i8* %7, !dbg !870
}

; Function Attrs: nounwind uwtable
define internal i8* @command_history_next_int(%struct._WINDOW_REC*, i8*, i32) #0 !dbg !871 {
  %4 = alloca %struct._WINDOW_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.HISTORY_REC*, align 8
  %8 = alloca %struct._GList*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %4, metadata !872, metadata !146), !dbg !873
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !874, metadata !146), !dbg !875
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !876, metadata !146), !dbg !877
  call void @llvm.dbg.declare(metadata %struct.HISTORY_REC** %7, metadata !878, metadata !146), !dbg !879
  call void @llvm.dbg.declare(metadata %struct._GList** %8, metadata !880, metadata !146), !dbg !881
  %9 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !882
  %10 = call %struct.HISTORY_REC* @command_history_current(%struct._WINDOW_REC* %9), !dbg !883
  store %struct.HISTORY_REC* %10, %struct.HISTORY_REC** %7, align 8, !dbg !884
  %11 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %7, align 8, !dbg !885
  %12 = getelementptr inbounds %struct.HISTORY_REC, %struct.HISTORY_REC* %11, i32 0, i32 1, !dbg !886
  %13 = load %struct._GList*, %struct._GList** %12, align 8, !dbg !886
  store %struct._GList* %13, %struct._GList** %8, align 8, !dbg !887
  %14 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %7, align 8, !dbg !888
  %15 = getelementptr inbounds %struct.HISTORY_REC, %struct.HISTORY_REC* %14, i32 0, i32 4, !dbg !890
  %16 = load i8, i8* %15, align 8, !dbg !890
  %17 = shl i8 %16, 7, !dbg !890
  %18 = ashr i8 %17, 7, !dbg !890
  %19 = sext i8 %18 to i32, !dbg !890
  %20 = icmp ne i32 %19, 0, !dbg !891
  br i1 %20, label %38, label %21, !dbg !892

; <label>:21:                                     ; preds = %3
  %22 = load %struct._GList*, %struct._GList** %8, align 8, !dbg !893
  %23 = icmp ne %struct._GList* %22, null, !dbg !895
  br i1 %23, label %24, label %38, !dbg !896

; <label>:24:                                     ; preds = %21
  %25 = load i32, i32* %6, align 4, !dbg !897
  %26 = icmp ne i32 %25, 0, !dbg !897
  br i1 %26, label %27, label %28, !dbg !897

; <label>:27:                                     ; preds = %24
  br label %30, !dbg !898

; <label>:28:                                     ; preds = %24
  %29 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %7, align 8, !dbg !899
  br label %30, !dbg !901

; <label>:30:                                     ; preds = %28, %27
  %31 = phi %struct.HISTORY_REC* [ null, %27 ], [ %29, %28 ], !dbg !902
  %32 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %7, align 8, !dbg !904
  %33 = getelementptr inbounds %struct.HISTORY_REC, %struct.HISTORY_REC* %32, i32 0, i32 1, !dbg !905
  %34 = load %struct._GList*, %struct._GList** %33, align 8, !dbg !905
  %35 = call %struct._GList* @command_history_list_next(%struct.HISTORY_REC* %31, %struct._GList* %34), !dbg !906
  %36 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %7, align 8, !dbg !907
  %37 = getelementptr inbounds %struct.HISTORY_REC, %struct.HISTORY_REC* %36, i32 0, i32 1, !dbg !908
  store %struct._GList* %35, %struct._GList** %37, align 8, !dbg !909
  br label %38, !dbg !907

; <label>:38:                                     ; preds = %30, %21, %3
  %39 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %7, align 8, !dbg !910
  %40 = getelementptr inbounds %struct.HISTORY_REC, %struct.HISTORY_REC* %39, i32 0, i32 4, !dbg !911
  %41 = load i8, i8* %40, align 8, !dbg !912
  %42 = and i8 %41, -2, !dbg !912
  store i8 %42, i8* %40, align 8, !dbg !912
  %43 = load i8*, i8** %5, align 8, !dbg !913
  %44 = load i8, i8* %43, align 1, !dbg !915
  %45 = sext i8 %44 to i32, !dbg !915
  %46 = icmp ne i32 %45, 0, !dbg !916
  br i1 %46, label %47, label %63, !dbg !917

; <label>:47:                                     ; preds = %38
  %48 = load %struct._GList*, %struct._GList** %8, align 8, !dbg !918
  %49 = icmp eq %struct._GList* %48, null, !dbg !919
  br i1 %49, label %60, label %50, !dbg !920

; <label>:50:                                     ; preds = %47
  %51 = load %struct._GList*, %struct._GList** %8, align 8, !dbg !921
  %52 = getelementptr inbounds %struct._GList, %struct._GList* %51, i32 0, i32 0, !dbg !923
  %53 = load i8*, i8** %52, align 8, !dbg !923
  %54 = bitcast i8* %53 to %struct.HISTORY_ENTRY_REC*, !dbg !924
  %55 = getelementptr inbounds %struct.HISTORY_ENTRY_REC, %struct.HISTORY_ENTRY_REC* %54, i32 0, i32 0, !dbg !925
  %56 = load i8*, i8** %55, align 8, !dbg !925
  %57 = load i8*, i8** %5, align 8, !dbg !926
  %58 = call i32 @g_strcmp0(i8* %56, i8* %57), !dbg !927
  %59 = icmp ne i32 %58, 0, !dbg !928
  br i1 %59, label %60, label %63, !dbg !929

; <label>:60:                                     ; preds = %50, %47
  %61 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %7, align 8, !dbg !931
  %62 = load i8*, i8** %5, align 8, !dbg !933
  call void @command_history_add(%struct.HISTORY_REC* %61, i8* %62), !dbg !934
  br label %63, !dbg !935

; <label>:63:                                     ; preds = %60, %50, %38
  %64 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %7, align 8, !dbg !936
  %65 = getelementptr inbounds %struct.HISTORY_REC, %struct.HISTORY_REC* %64, i32 0, i32 1, !dbg !937
  %66 = load %struct._GList*, %struct._GList** %65, align 8, !dbg !937
  %67 = icmp eq %struct._GList* %66, null, !dbg !938
  br i1 %67, label %68, label %69, !dbg !936

; <label>:68:                                     ; preds = %63
  br label %78, !dbg !939

; <label>:69:                                     ; preds = %63
  %70 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %7, align 8, !dbg !940
  %71 = getelementptr inbounds %struct.HISTORY_REC, %struct.HISTORY_REC* %70, i32 0, i32 1, !dbg !942
  %72 = load %struct._GList*, %struct._GList** %71, align 8, !dbg !942
  %73 = getelementptr inbounds %struct._GList, %struct._GList* %72, i32 0, i32 0, !dbg !943
  %74 = load i8*, i8** %73, align 8, !dbg !943
  %75 = bitcast i8* %74 to %struct.HISTORY_ENTRY_REC*, !dbg !944
  %76 = getelementptr inbounds %struct.HISTORY_ENTRY_REC, %struct.HISTORY_ENTRY_REC* %75, i32 0, i32 0, !dbg !945
  %77 = load i8*, i8** %76, align 8, !dbg !945
  br label %78, !dbg !946

; <label>:78:                                     ; preds = %69, %68
  %79 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), %68 ], [ %77, %69 ], !dbg !947
  ret i8* %79, !dbg !949
}

; Function Attrs: nounwind uwtable
define i8* @command_global_history_next(%struct._WINDOW_REC*, i8*) #0 !dbg !950 {
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !951, metadata !146), !dbg !952
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !953, metadata !146), !dbg !954
  %5 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !955
  %6 = load i8*, i8** %4, align 8, !dbg !956
  %7 = call i8* @command_history_next_int(%struct._WINDOW_REC* %5, i8* %6, i32 1), !dbg !957
  ret i8* %7, !dbg !958
}

; Function Attrs: nounwind uwtable
define i8* @command_history_delete_current(%struct._WINDOW_REC*, i8*) #0 !dbg !959 {
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.HISTORY_REC*, align 8
  %6 = alloca %struct._GList*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !960, metadata !146), !dbg !961
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !962, metadata !146), !dbg !963
  call void @llvm.dbg.declare(metadata %struct.HISTORY_REC** %5, metadata !964, metadata !146), !dbg !965
  call void @llvm.dbg.declare(metadata %struct._GList** %6, metadata !966, metadata !146), !dbg !967
  %7 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !968
  %8 = call %struct.HISTORY_REC* @command_history_current(%struct._WINDOW_REC* %7), !dbg !969
  store %struct.HISTORY_REC* %8, %struct.HISTORY_REC** %5, align 8, !dbg !970
  %9 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %5, align 8, !dbg !971
  %10 = getelementptr inbounds %struct.HISTORY_REC, %struct.HISTORY_REC* %9, i32 0, i32 1, !dbg !972
  %11 = load %struct._GList*, %struct._GList** %10, align 8, !dbg !972
  store %struct._GList* %11, %struct._GList** %6, align 8, !dbg !973
  %12 = load %struct._GList*, %struct._GList** %6, align 8, !dbg !974
  %13 = icmp ne %struct._GList* %12, null, !dbg !976
  br i1 %13, label %14, label %35, !dbg !977

; <label>:14:                                     ; preds = %2
  %15 = load %struct._GList*, %struct._GList** %6, align 8, !dbg !978
  %16 = getelementptr inbounds %struct._GList, %struct._GList* %15, i32 0, i32 0, !dbg !980
  %17 = load i8*, i8** %16, align 8, !dbg !980
  %18 = bitcast i8* %17 to %struct.HISTORY_ENTRY_REC*, !dbg !981
  %19 = getelementptr inbounds %struct.HISTORY_ENTRY_REC, %struct.HISTORY_ENTRY_REC* %18, i32 0, i32 0, !dbg !982
  %20 = load i8*, i8** %19, align 8, !dbg !982
  %21 = load i8*, i8** %4, align 8, !dbg !983
  %22 = call i32 @g_strcmp0(i8* %20, i8* %21), !dbg !984
  %23 = icmp eq i32 %22, 0, !dbg !985
  br i1 %23, label %24, label %35, !dbg !986

; <label>:24:                                     ; preds = %14
  %25 = load %struct._GList*, %struct._GList** %6, align 8, !dbg !987
  %26 = getelementptr inbounds %struct._GList, %struct._GList* %25, i32 0, i32 0, !dbg !989
  %27 = load i8*, i8** %26, align 8, !dbg !989
  %28 = bitcast i8* %27 to %struct.HISTORY_ENTRY_REC*, !dbg !990
  %29 = getelementptr inbounds %struct.HISTORY_ENTRY_REC, %struct.HISTORY_ENTRY_REC* %28, i32 0, i32 1, !dbg !991
  %30 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %29, align 8, !dbg !991
  %31 = getelementptr inbounds %struct.HISTORY_REC, %struct.HISTORY_REC* %30, i32 0, i32 2, !dbg !992
  %32 = load i32, i32* %31, align 8, !dbg !993
  %33 = add nsw i32 %32, -1, !dbg !993
  store i32 %33, i32* %31, align 8, !dbg !993
  %34 = load %struct._GList*, %struct._GList** %6, align 8, !dbg !994
  call void @history_list_delete_link_and_destroy(%struct._GList* %34), !dbg !995
  br label %35, !dbg !996

; <label>:35:                                     ; preds = %24, %14, %2
  %36 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %5, align 8, !dbg !997
  %37 = getelementptr inbounds %struct.HISTORY_REC, %struct.HISTORY_REC* %36, i32 0, i32 4, !dbg !998
  %38 = load i8, i8* %37, align 8, !dbg !999
  %39 = and i8 %38, -2, !dbg !999
  store i8 %39, i8* %37, align 8, !dbg !999
  %40 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %5, align 8, !dbg !1000
  %41 = getelementptr inbounds %struct.HISTORY_REC, %struct.HISTORY_REC* %40, i32 0, i32 1, !dbg !1001
  %42 = load %struct._GList*, %struct._GList** %41, align 8, !dbg !1001
  %43 = icmp eq %struct._GList* %42, null, !dbg !1002
  br i1 %43, label %44, label %45, !dbg !1000

; <label>:44:                                     ; preds = %35
  br label %54, !dbg !1003

; <label>:45:                                     ; preds = %35
  %46 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %5, align 8, !dbg !1005
  %47 = getelementptr inbounds %struct.HISTORY_REC, %struct.HISTORY_REC* %46, i32 0, i32 1, !dbg !1007
  %48 = load %struct._GList*, %struct._GList** %47, align 8, !dbg !1007
  %49 = getelementptr inbounds %struct._GList, %struct._GList* %48, i32 0, i32 0, !dbg !1008
  %50 = load i8*, i8** %49, align 8, !dbg !1008
  %51 = bitcast i8* %50 to %struct.HISTORY_ENTRY_REC*, !dbg !1009
  %52 = getelementptr inbounds %struct.HISTORY_ENTRY_REC, %struct.HISTORY_ENTRY_REC* %51, i32 0, i32 0, !dbg !1010
  %53 = load i8*, i8** %52, align 8, !dbg !1010
  br label %54, !dbg !1011

; <label>:54:                                     ; preds = %45, %44
  %55 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), %44 ], [ %53, %45 ], !dbg !1012
  ret i8* %55, !dbg !1014
}

; Function Attrs: nounwind uwtable
define void @command_history_clear_pos_func(%struct.HISTORY_REC*, i8*) #0 !dbg !1015 {
  %3 = alloca %struct.HISTORY_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct.HISTORY_REC* %0, %struct.HISTORY_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.HISTORY_REC** %3, metadata !1018, metadata !146), !dbg !1019
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1020, metadata !146), !dbg !1021
  %5 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %3, align 8, !dbg !1022
  %6 = getelementptr inbounds %struct.HISTORY_REC, %struct.HISTORY_REC* %5, i32 0, i32 1, !dbg !1023
  store %struct._GList* null, %struct._GList** %6, align 8, !dbg !1024
  ret void, !dbg !1025
}

; Function Attrs: nounwind uwtable
define void @command_history_clear_pos(%struct._WINDOW_REC*) #0 !dbg !1026 {
  %2 = alloca %struct._WINDOW_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %2, metadata !1029, metadata !146), !dbg !1030
  %3 = load %struct._GSList*, %struct._GSList** @histories, align 8, !dbg !1031
  call void @g_slist_foreach(%struct._GSList* %3, void (i8*, i8*)* bitcast (void (%struct.HISTORY_REC*, i8*)* @command_history_clear_pos_func to void (i8*, i8*)*), i8* null), !dbg !1032
  ret void, !dbg !1033
}

declare void @g_slist_foreach(%struct._GSList*, void (i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define %struct.HISTORY_REC* @command_history_create(i8*) #0 !dbg !1034 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.HISTORY_REC*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1035, metadata !146), !dbg !1036
  call void @llvm.dbg.declare(metadata %struct.HISTORY_REC** %3, metadata !1037, metadata !146), !dbg !1038
  %4 = call noalias i8* @g_malloc0_n(i64 1, i64 32), !dbg !1039
  %5 = bitcast i8* %4 to %struct.HISTORY_REC*, !dbg !1040
  store %struct.HISTORY_REC* %5, %struct.HISTORY_REC** %3, align 8, !dbg !1041
  %6 = load i8*, i8** %2, align 8, !dbg !1042
  %7 = icmp ne i8* %6, null, !dbg !1044
  br i1 %7, label %8, label %13, !dbg !1045

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %2, align 8, !dbg !1046
  %10 = call noalias i8* @g_strdup(i8* %9), !dbg !1047
  %11 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %3, align 8, !dbg !1048
  %12 = getelementptr inbounds %struct.HISTORY_REC, %struct.HISTORY_REC* %11, i32 0, i32 0, !dbg !1049
  store i8* %10, i8** %12, align 8, !dbg !1050
  br label %13, !dbg !1048

; <label>:13:                                     ; preds = %8, %1
  %14 = load %struct._GSList*, %struct._GSList** @histories, align 8, !dbg !1051
  %15 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %3, align 8, !dbg !1052
  %16 = bitcast %struct.HISTORY_REC* %15 to i8*, !dbg !1052
  %17 = call %struct._GSList* @g_slist_append(%struct._GSList* %14, i8* %16), !dbg !1053
  store %struct._GSList* %17, %struct._GSList** @histories, align 8, !dbg !1054
  %18 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %3, align 8, !dbg !1055
  ret %struct.HISTORY_REC* %18, !dbg !1056
}

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #2

; Function Attrs: nounwind uwtable
define void @command_history_clear(%struct.HISTORY_REC*) #0 !dbg !1057 {
  %2 = alloca %struct.HISTORY_REC*, align 8
  %3 = alloca %struct._GList*, align 8
  %4 = alloca %struct._GList*, align 8
  store %struct.HISTORY_REC* %0, %struct.HISTORY_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.HISTORY_REC** %2, metadata !1060, metadata !146), !dbg !1061
  call void @llvm.dbg.declare(metadata %struct._GList** %3, metadata !1062, metadata !146), !dbg !1063
  call void @llvm.dbg.declare(metadata %struct._GList** %4, metadata !1064, metadata !146), !dbg !1065
  br label %5, !dbg !1066, !llvm.loop !1067

; <label>:5:                                      ; preds = %1
  %6 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %2, align 8, !dbg !1068
  %7 = icmp ne %struct.HISTORY_REC* %6, null, !dbg !1072
  br i1 %7, label %8, label %9, !dbg !1068

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !1073

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.command_history_clear, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0)), !dbg !1076
  br label %27, !dbg !1079

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !1080

; <label>:11:                                     ; preds = %10
  %12 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %2, align 8, !dbg !1082
  call void @command_history_clear_pos_func(%struct.HISTORY_REC* %12, i8* null), !dbg !1083
  %13 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %2, align 8, !dbg !1084
  %14 = call %struct._GList* @command_history_list_first(%struct.HISTORY_REC* %13), !dbg !1085
  store %struct._GList* %14, %struct._GList** %3, align 8, !dbg !1086
  br label %15, !dbg !1087

; <label>:15:                                     ; preds = %18, %11
  %16 = load %struct._GList*, %struct._GList** %3, align 8, !dbg !1088
  %17 = icmp ne %struct._GList* %16, null, !dbg !1090
  br i1 %17, label %18, label %24, !dbg !1091

; <label>:18:                                     ; preds = %15
  %19 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %2, align 8, !dbg !1092
  %20 = load %struct._GList*, %struct._GList** %3, align 8, !dbg !1094
  %21 = call %struct._GList* @command_history_list_next(%struct.HISTORY_REC* %19, %struct._GList* %20), !dbg !1095
  store %struct._GList* %21, %struct._GList** %4, align 8, !dbg !1096
  %22 = load %struct._GList*, %struct._GList** %3, align 8, !dbg !1097
  call void @history_list_delete_link_and_destroy(%struct._GList* %22), !dbg !1098
  %23 = load %struct._GList*, %struct._GList** %4, align 8, !dbg !1099
  store %struct._GList* %23, %struct._GList** %3, align 8, !dbg !1100
  br label %15, !dbg !1101, !llvm.loop !1103

; <label>:24:                                     ; preds = %15
  %25 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %2, align 8, !dbg !1104
  %26 = getelementptr inbounds %struct.HISTORY_REC, %struct.HISTORY_REC* %25, i32 0, i32 2, !dbg !1105
  store i32 0, i32* %26, align 8, !dbg !1106
  br label %27, !dbg !1107

; <label>:27:                                     ; preds = %24, %9
  ret void, !dbg !1108
}

; Function Attrs: nounwind uwtable
define void @command_history_destroy(%struct.HISTORY_REC*) #0 !dbg !1109 {
  %2 = alloca %struct.HISTORY_REC*, align 8
  store %struct.HISTORY_REC* %0, %struct.HISTORY_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.HISTORY_REC** %2, metadata !1110, metadata !146), !dbg !1111
  br label %3, !dbg !1112, !llvm.loop !1113

; <label>:3:                                      ; preds = %1
  %4 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %2, align 8, !dbg !1114
  %5 = icmp ne %struct.HISTORY_REC* %4, null, !dbg !1118
  br i1 %5, label %6, label %7, !dbg !1114

; <label>:6:                                      ; preds = %3
  br label %8, !dbg !1119

; <label>:7:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.command_history_destroy, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0)), !dbg !1122
  br label %29, !dbg !1125

; <label>:8:                                      ; preds = %6
  br label %9, !dbg !1126

; <label>:9:                                      ; preds = %8
  br label %10, !dbg !1128, !llvm.loop !1129

; <label>:10:                                     ; preds = %9
  %11 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %2, align 8, !dbg !1130
  %12 = getelementptr inbounds %struct.HISTORY_REC, %struct.HISTORY_REC* %11, i32 0, i32 3, !dbg !1134
  %13 = load i32, i32* %12, align 4, !dbg !1134
  %14 = icmp eq i32 %13, 0, !dbg !1135
  br i1 %14, label %15, label %16, !dbg !1130

; <label>:15:                                     ; preds = %10
  br label %17, !dbg !1136

; <label>:16:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.command_history_destroy, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0)), !dbg !1139
  br label %29, !dbg !1142

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !1143

; <label>:18:                                     ; preds = %17
  %19 = load %struct._GSList*, %struct._GSList** @histories, align 8, !dbg !1145
  %20 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %2, align 8, !dbg !1146
  %21 = bitcast %struct.HISTORY_REC* %20 to i8*, !dbg !1146
  %22 = call %struct._GSList* @g_slist_remove(%struct._GSList* %19, i8* %21), !dbg !1147
  store %struct._GSList* %22, %struct._GSList** @histories, align 8, !dbg !1148
  %23 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %2, align 8, !dbg !1149
  call void @command_history_clear(%struct.HISTORY_REC* %23), !dbg !1150
  %24 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %2, align 8, !dbg !1151
  %25 = getelementptr inbounds %struct.HISTORY_REC, %struct.HISTORY_REC* %24, i32 0, i32 0, !dbg !1152
  %26 = load i8*, i8** %25, align 8, !dbg !1152
  call void @g_free(i8* %26), !dbg !1153
  %27 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %2, align 8, !dbg !1154
  %28 = bitcast %struct.HISTORY_REC* %27 to i8*, !dbg !1154
  call void @g_free(i8* %28), !dbg !1155
  br label %29, !dbg !1156

; <label>:29:                                     ; preds = %18, %16, %7
  ret void, !dbg !1157
}

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #2

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define void @command_history_link(i8*) #0 !dbg !1159 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.HISTORY_REC*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1162, metadata !146), !dbg !1163
  call void @llvm.dbg.declare(metadata %struct.HISTORY_REC** %3, metadata !1164, metadata !146), !dbg !1165
  %4 = load i8*, i8** %2, align 8, !dbg !1166
  %5 = call %struct.HISTORY_REC* @command_history_find_name(i8* %4), !dbg !1167
  store %struct.HISTORY_REC* %5, %struct.HISTORY_REC** %3, align 8, !dbg !1168
  %6 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %3, align 8, !dbg !1169
  %7 = icmp eq %struct.HISTORY_REC* %6, null, !dbg !1171
  br i1 %7, label %8, label %11, !dbg !1172

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %2, align 8, !dbg !1173
  %10 = call %struct.HISTORY_REC* @command_history_create(i8* %9), !dbg !1174
  store %struct.HISTORY_REC* %10, %struct.HISTORY_REC** %3, align 8, !dbg !1175
  br label %11, !dbg !1176

; <label>:11:                                     ; preds = %8, %1
  %12 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %3, align 8, !dbg !1177
  %13 = getelementptr inbounds %struct.HISTORY_REC, %struct.HISTORY_REC* %12, i32 0, i32 3, !dbg !1178
  %14 = load i32, i32* %13, align 4, !dbg !1179
  %15 = add nsw i32 %14, 1, !dbg !1179
  store i32 %15, i32* %13, align 4, !dbg !1179
  ret void, !dbg !1180
}

; Function Attrs: nounwind uwtable
define void @command_history_unlink(i8*) #0 !dbg !1181 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.HISTORY_REC*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1182, metadata !146), !dbg !1183
  call void @llvm.dbg.declare(metadata %struct.HISTORY_REC** %3, metadata !1184, metadata !146), !dbg !1185
  %4 = load i8*, i8** %2, align 8, !dbg !1186
  %5 = call %struct.HISTORY_REC* @command_history_find_name(i8* %4), !dbg !1187
  store %struct.HISTORY_REC* %5, %struct.HISTORY_REC** %3, align 8, !dbg !1188
  %6 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %3, align 8, !dbg !1189
  %7 = icmp eq %struct.HISTORY_REC* %6, null, !dbg !1191
  br i1 %7, label %8, label %9, !dbg !1192

; <label>:8:                                      ; preds = %1
  br label %17, !dbg !1193

; <label>:9:                                      ; preds = %1
  %10 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %3, align 8, !dbg !1194
  %11 = getelementptr inbounds %struct.HISTORY_REC, %struct.HISTORY_REC* %10, i32 0, i32 3, !dbg !1196
  %12 = load i32, i32* %11, align 4, !dbg !1197
  %13 = add nsw i32 %12, -1, !dbg !1197
  store i32 %13, i32* %11, align 4, !dbg !1197
  %14 = icmp sle i32 %13, 0, !dbg !1198
  br i1 %14, label %15, label %17, !dbg !1199

; <label>:15:                                     ; preds = %9
  %16 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %3, align 8, !dbg !1200
  call void @command_history_destroy(%struct.HISTORY_REC* %16), !dbg !1201
  br label %17, !dbg !1201

; <label>:17:                                     ; preds = %8, %15, %9
  ret void, !dbg !1202
}

; Function Attrs: nounwind uwtable
define void @command_history_init() #0 !dbg !1203 {
  call void @settings_add_int_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i32 100), !dbg !1206
  call void @settings_add_bool_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i32 0), !dbg !1207
  call void @special_history_func_set(i8* (i8*, i8*, i32*)* @special_history_func), !dbg !1208
  store %struct._GList* null, %struct._GList** @history_entries, align 8, !dbg !1209
  %1 = call %struct.HISTORY_REC* @command_history_create(i8* null), !dbg !1210
  store %struct.HISTORY_REC* %1, %struct.HISTORY_REC** @global_history, align 8, !dbg !1211
  call void @read_settings(), !dbg !1212
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*, i32)* @sig_window_created to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1213
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*)* @sig_window_destroyed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1214
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*, i8*)* @sig_window_history_changed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1215
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i32 100, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*, i8*)* @sig_window_history_cleared to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1216
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1217
  ret void, !dbg !1218
}

declare void @settings_add_int_module(i8*, i8*, i8*, i32) #2

declare void @settings_add_bool_module(i8*, i8*, i8*, i32) #2

declare void @special_history_func_set(i8* (i8*, i8*, i32*)*) #2

; Function Attrs: nounwind uwtable
define internal i8* @special_history_func(i8*, i8*, i32*) #0 !dbg !1219 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct._WINDOW_REC*, align 8
  %8 = alloca %struct.HISTORY_REC*, align 8
  %9 = alloca %struct._GList*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1223, metadata !146), !dbg !1224
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1225, metadata !146), !dbg !1226
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1227, metadata !146), !dbg !1228
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %7, metadata !1229, metadata !146), !dbg !1230
  call void @llvm.dbg.declare(metadata %struct.HISTORY_REC** %8, metadata !1231, metadata !146), !dbg !1232
  call void @llvm.dbg.declare(metadata %struct._GList** %9, metadata !1233, metadata !146), !dbg !1234
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1235, metadata !146), !dbg !1236
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1237, metadata !146), !dbg !1238
  %13 = load i8*, i8** %5, align 8, !dbg !1239
  %14 = icmp eq i8* %13, null, !dbg !1240
  br i1 %14, label %15, label %17, !dbg !1239

; <label>:15:                                     ; preds = %3
  %16 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1241
  br label %23, !dbg !1243

; <label>:17:                                     ; preds = %3
  %18 = load i8*, i8** %5, align 8, !dbg !1244
  %19 = bitcast i8* %18 to %struct._WI_ITEM_REC*, !dbg !1246
  %20 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %19, i32 0, i32 3, !dbg !1247
  %21 = load i8*, i8** %20, align 8, !dbg !1247
  %22 = bitcast i8* %21 to %struct._WINDOW_REC*, !dbg !1248
  br label %23, !dbg !1249

; <label>:23:                                     ; preds = %17, %15
  %24 = phi %struct._WINDOW_REC* [ %16, %15 ], [ %22, %17 ], !dbg !1250
  store %struct._WINDOW_REC* %24, %struct._WINDOW_REC** %7, align 8, !dbg !1252
  %25 = load i8*, i8** %4, align 8, !dbg !1253
  %26 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* %25), !dbg !1254
  store i8* %26, i8** %10, align 8, !dbg !1255
  store i8* null, i8** %11, align 8, !dbg !1256
  %27 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !1257
  %28 = call %struct.HISTORY_REC* @command_history_current(%struct._WINDOW_REC* %27), !dbg !1258
  store %struct.HISTORY_REC* %28, %struct.HISTORY_REC** %8, align 8, !dbg !1259
  %29 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %8, align 8, !dbg !1260
  %30 = call %struct._GList* @command_history_list_first(%struct.HISTORY_REC* %29), !dbg !1262
  store %struct._GList* %30, %struct._GList** %9, align 8, !dbg !1263
  br label %31, !dbg !1264

; <label>:31:                                     ; preds = %50, %23
  %32 = load %struct._GList*, %struct._GList** %9, align 8, !dbg !1265
  %33 = icmp ne %struct._GList* %32, null, !dbg !1268
  br i1 %33, label %34, label %54, !dbg !1269

; <label>:34:                                     ; preds = %31
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1270, metadata !146), !dbg !1272
  %35 = load %struct._GList*, %struct._GList** %9, align 8, !dbg !1273
  %36 = getelementptr inbounds %struct._GList, %struct._GList* %35, i32 0, i32 0, !dbg !1274
  %37 = load i8*, i8** %36, align 8, !dbg !1274
  %38 = bitcast i8* %37 to %struct.HISTORY_ENTRY_REC*, !dbg !1275
  %39 = getelementptr inbounds %struct.HISTORY_ENTRY_REC, %struct.HISTORY_ENTRY_REC* %38, i32 0, i32 0, !dbg !1276
  %40 = load i8*, i8** %39, align 8, !dbg !1276
  store i8* %40, i8** %12, align 8, !dbg !1272
  %41 = load i8*, i8** %10, align 8, !dbg !1277
  %42 = load i8*, i8** %12, align 8, !dbg !1279
  %43 = call i32 @match_wildcards(i8* %41, i8* %42), !dbg !1280
  %44 = icmp ne i32 %43, 0, !dbg !1280
  br i1 %44, label %45, label %49, !dbg !1281

; <label>:45:                                     ; preds = %34
  %46 = load i32*, i32** %6, align 8, !dbg !1282
  store i32 1, i32* %46, align 4, !dbg !1284
  %47 = load i8*, i8** %12, align 8, !dbg !1285
  %48 = call noalias i8* @g_strdup(i8* %47), !dbg !1286
  store i8* %48, i8** %11, align 8, !dbg !1287
  br label %49, !dbg !1288

; <label>:49:                                     ; preds = %45, %34
  br label %50, !dbg !1289

; <label>:50:                                     ; preds = %49
  %51 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %8, align 8, !dbg !1290
  %52 = load %struct._GList*, %struct._GList** %9, align 8, !dbg !1292
  %53 = call %struct._GList* @command_history_list_next(%struct.HISTORY_REC* %51, %struct._GList* %52), !dbg !1293
  store %struct._GList* %53, %struct._GList** %9, align 8, !dbg !1294
  br label %31, !dbg !1295, !llvm.loop !1296

; <label>:54:                                     ; preds = %31
  %55 = load i8*, i8** %10, align 8, !dbg !1298
  call void @g_free(i8* %55), !dbg !1299
  %56 = load i8*, i8** %11, align 8, !dbg !1300
  ret i8* %56, !dbg !1301
}

; Function Attrs: nounwind uwtable
define internal void @read_settings() #0 !dbg !1302 {
  %1 = call i32 @settings_get_bool(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0)), !dbg !1303
  store i32 %1, i32* @window_history, align 4, !dbg !1304
  ret void, !dbg !1305
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @sig_window_created(%struct._WINDOW_REC*, i32) #0 !dbg !1306 {
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca i32, align 4
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !1309, metadata !146), !dbg !1310
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1311, metadata !146), !dbg !1312
  %5 = call %struct.HISTORY_REC* @command_history_create(i8* null), !dbg !1313
  %6 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1314
  %7 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %6, i32 0, i32 12, !dbg !1315
  store %struct.HISTORY_REC* %5, %struct.HISTORY_REC** %7, align 8, !dbg !1316
  ret void, !dbg !1317
}

; Function Attrs: nounwind uwtable
define internal void @sig_window_destroyed(%struct._WINDOW_REC*) #0 !dbg !1318 {
  %2 = alloca %struct._WINDOW_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %2, metadata !1319, metadata !146), !dbg !1320
  %3 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !1321
  %4 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %3, i32 0, i32 13, !dbg !1322
  %5 = load i8*, i8** %4, align 8, !dbg !1322
  call void @command_history_unlink(i8* %5), !dbg !1323
  %6 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !1324
  %7 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %6, i32 0, i32 12, !dbg !1325
  %8 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %7, align 8, !dbg !1325
  call void @command_history_destroy(%struct.HISTORY_REC* %8), !dbg !1326
  %9 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !1327
  %10 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %9, i32 0, i32 13, !dbg !1328
  %11 = load i8*, i8** %10, align 8, !dbg !1328
  call void @g_free(i8* %11), !dbg !1329
  ret void, !dbg !1330
}

; Function Attrs: nounwind uwtable
define internal void @sig_window_history_changed(%struct._WINDOW_REC*, i8*) #0 !dbg !1331 {
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !1334, metadata !146), !dbg !1335
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1336, metadata !146), !dbg !1337
  %5 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1338
  %6 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %5, i32 0, i32 13, !dbg !1339
  %7 = load i8*, i8** %6, align 8, !dbg !1339
  call void @command_history_link(i8* %7), !dbg !1340
  %8 = load i8*, i8** %4, align 8, !dbg !1341
  call void @command_history_unlink(i8* %8), !dbg !1342
  ret void, !dbg !1343
}

; Function Attrs: nounwind uwtable
define internal void @sig_window_history_cleared(%struct._WINDOW_REC*, i8*) #0 !dbg !1344 {
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.HISTORY_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !1345, metadata !146), !dbg !1346
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1347, metadata !146), !dbg !1348
  call void @llvm.dbg.declare(metadata %struct.HISTORY_REC** %5, metadata !1349, metadata !146), !dbg !1350
  %6 = load i8*, i8** %4, align 8, !dbg !1351
  %7 = icmp eq i8* %6, null, !dbg !1353
  br i1 %7, label %13, label %8, !dbg !1354

; <label>:8:                                      ; preds = %2
  %9 = load i8*, i8** %4, align 8, !dbg !1355
  %10 = load i8, i8* %9, align 1, !dbg !1357
  %11 = sext i8 %10 to i32, !dbg !1357
  %12 = icmp eq i32 %11, 0, !dbg !1358
  br i1 %12, label %13, label %16, !dbg !1359

; <label>:13:                                     ; preds = %8, %2
  %14 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1360
  %15 = call %struct.HISTORY_REC* @command_history_current(%struct._WINDOW_REC* %14), !dbg !1362
  store %struct.HISTORY_REC* %15, %struct.HISTORY_REC** %5, align 8, !dbg !1363
  br label %19, !dbg !1364

; <label>:16:                                     ; preds = %8
  %17 = load i8*, i8** %4, align 8, !dbg !1365
  %18 = call %struct.HISTORY_REC* @command_history_find_name(i8* %17), !dbg !1367
  store %struct.HISTORY_REC* %18, %struct.HISTORY_REC** %5, align 8, !dbg !1368
  br label %19

; <label>:19:                                     ; preds = %16, %13
  %20 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %5, align 8, !dbg !1369
  call void @command_history_clear(%struct.HISTORY_REC* %20), !dbg !1370
  ret void, !dbg !1371
}

; Function Attrs: nounwind uwtable
define void @command_history_deinit() #0 !dbg !1372 {
  call void @signal_remove_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*, i32)* @sig_window_created to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1373
  call void @signal_remove_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*)* @sig_window_destroyed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1374
  call void @signal_remove_full(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*, i8*)* @sig_window_history_changed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1375
  call void @signal_remove_full(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*, i8*)* @sig_window_history_cleared to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1376
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1377
  %1 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** @global_history, align 8, !dbg !1378
  call void @command_history_destroy(%struct.HISTORY_REC* %1), !dbg !1379
  %2 = load %struct._GList*, %struct._GList** @history_entries, align 8, !dbg !1380
  call void @g_list_free_full(%struct._GList* %2, void (i8*)* bitcast (void (%struct.HISTORY_ENTRY_REC*)* @history_entry_destroy to void (i8*)*)), !dbg !1381
  ret void, !dbg !1382
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare void @g_list_free_full(%struct._GList*, void (i8*)*) #2

; Function Attrs: nounwind uwtable
define internal void @history_entry_destroy(%struct.HISTORY_ENTRY_REC*) #0 !dbg !1383 {
  %2 = alloca %struct.HISTORY_ENTRY_REC*, align 8
  store %struct.HISTORY_ENTRY_REC* %0, %struct.HISTORY_ENTRY_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.HISTORY_ENTRY_REC** %2, metadata !1386, metadata !146), !dbg !1387
  %3 = load %struct.HISTORY_ENTRY_REC*, %struct.HISTORY_ENTRY_REC** %2, align 8, !dbg !1388
  %4 = getelementptr inbounds %struct.HISTORY_ENTRY_REC, %struct.HISTORY_ENTRY_REC* %3, i32 0, i32 0, !dbg !1389
  %5 = load i8*, i8** %4, align 8, !dbg !1389
  call void @g_free(i8* %5), !dbg !1390
  %6 = load %struct.HISTORY_ENTRY_REC*, %struct.HISTORY_ENTRY_REC** %2, align 8, !dbg !1391
  %7 = bitcast %struct.HISTORY_ENTRY_REC* %6 to i8*, !dbg !1391
  call void @g_free(i8* %7), !dbg !1392
  ret void, !dbg !1393
}

; Function Attrs: nounwind uwtable
define internal void @command_history_clear_pos_for_unlink_func(%struct.HISTORY_REC*, %struct._GList*) #0 !dbg !1394 {
  %3 = alloca %struct.HISTORY_REC*, align 8
  %4 = alloca %struct._GList*, align 8
  store %struct.HISTORY_REC* %0, %struct.HISTORY_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.HISTORY_REC** %3, metadata !1397, metadata !146), !dbg !1398
  store %struct._GList* %1, %struct._GList** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GList** %4, metadata !1399, metadata !146), !dbg !1400
  %5 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %3, align 8, !dbg !1401
  %6 = getelementptr inbounds %struct.HISTORY_REC, %struct.HISTORY_REC* %5, i32 0, i32 1, !dbg !1403
  %7 = load %struct._GList*, %struct._GList** %6, align 8, !dbg !1403
  %8 = load %struct._GList*, %struct._GList** %4, align 8, !dbg !1404
  %9 = icmp eq %struct._GList* %7, %8, !dbg !1405
  br i1 %9, label %10, label %21, !dbg !1406

; <label>:10:                                     ; preds = %2
  %11 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %3, align 8, !dbg !1407
  %12 = load %struct._GList*, %struct._GList** %4, align 8, !dbg !1409
  %13 = call %struct._GList* @command_history_list_next(%struct.HISTORY_REC* %11, %struct._GList* %12), !dbg !1410
  %14 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %3, align 8, !dbg !1411
  %15 = getelementptr inbounds %struct.HISTORY_REC, %struct.HISTORY_REC* %14, i32 0, i32 1, !dbg !1412
  store %struct._GList* %13, %struct._GList** %15, align 8, !dbg !1413
  %16 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %3, align 8, !dbg !1414
  %17 = getelementptr inbounds %struct.HISTORY_REC, %struct.HISTORY_REC* %16, i32 0, i32 4, !dbg !1415
  %18 = load i8, i8* %17, align 8, !dbg !1416
  %19 = and i8 %18, -2, !dbg !1416
  %20 = or i8 %19, 1, !dbg !1416
  store i8 %20, i8* %17, align 8, !dbg !1416
  br label %21, !dbg !1417

; <label>:21:                                     ; preds = %10, %2
  ret void, !dbg !1418
}

declare %struct._GList* @g_list_delete_link(%struct._GList*, %struct._GList*) #2

; Function Attrs: nounwind
declare i64 @time(i64*) #3

declare noalias i8* @g_strdup_printf(i8*, ...) #2

declare i32 @match_wildcards(i8*, i8*) #2

declare i32 @settings_get_bool(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!139, !140}
!llvm.ident = !{!141}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !133)
!1 = !DIFile(filename: "line212-command-history.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{}
!3 = !{!4, !5, !42, !11, !44, !52, !15, !56, !61, !65, !84, !20}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "HISTORY_ENTRY_REC", file: !7, line: 20, baseType: !8)
!7 = !DIFile(filename: "command-history.h", directory: "/home/lichi/Desktop/irssi/task1")
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 16, size: 192, align: 64, elements: !9)
!9 = !{!10, !14, !36}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !8, file: !7, line: 17, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !8, file: !7, line: 18, baseType: !15, size: 64, align: 64, offset: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "HISTORY_REC", file: !7, line: 14, baseType: !17)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 6, size: 256, align: 64, elements: !18)
!18 = !{!19, !21, !32, !34, !35}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !17, file: !7, line: 7, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !17, file: !7, line: 9, baseType: !22, size: 64, align: 64, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "GList", file: !24, line: 37, baseType: !25)
!24 = !DIFile(filename: "/usr/include/glib-2.0/glib/glist.h", directory: "/home/lichi/Desktop/irssi/task1")
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GList", file: !24, line: 39, size: 192, align: 64, elements: !26)
!26 = !{!27, !30, !31}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !25, file: !24, line: 41, baseType: !28, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !29, line: 77, baseType: !4)
!29 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!30 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !25, file: !24, line: 42, baseType: !22, size: 64, align: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !25, file: !24, line: 43, baseType: !22, size: 64, align: 64, offset: 128)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !17, file: !7, line: 10, baseType: !33, size: 32, align: 32, offset: 128)
!33 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !17, file: !7, line: 12, baseType: !33, size: 32, align: 32, offset: 160)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "redo", scope: !17, file: !7, line: 13, baseType: !33, size: 1, align: 32, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !8, file: !7, line: 19, baseType: !37, size: 64, align: 64, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !38, line: 75, baseType: !39)
!38 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !40, line: 139, baseType: !41)
!40 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!41 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !29, line: 46, baseType: !13)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCompareFunc", file: !29, line: 80, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !49, !49}
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !29, line: 49, baseType: !33)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "gconstpointer", file: !29, line: 78, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "GFunc", file: !29, line: 88, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DISubroutineType(types: !55)
!55 = !{null, !28, !28}
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !57, line: 9, baseType: !58)
!57 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{null, !50, !50, !50, !50, !50, !50}
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "GDestroyNotify", file: !29, line: 87, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!63 = !DISubroutineType(types: !64)
!64 = !{null, !28}
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "WINDOW_REC", file: !67, line: 117, baseType: !68)
!67 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WINDOW_REC", file: !69, line: 28, size: 1280, align: 64, elements: !70)
!69 = !DIFile(filename: "fe-windows.h", directory: "/home/lichi/Desktop/irssi/task1")
!70 = !{!71, !72, !73, !74, !75, !83, !115, !116, !117, !118, !119, !120, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "refnum", scope: !68, file: !69, line: 29, baseType: !33, size: 32, align: 32)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !68, file: !69, line: 30, baseType: !20, size: 64, align: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !68, file: !69, line: 32, baseType: !33, size: 32, align: 32, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !68, file: !69, line: 32, baseType: !33, size: 32, align: 32, offset: 160)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !68, file: !69, line: 34, baseType: !76, size: 64, align: 64, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, align: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !78, line: 37, baseType: !79)
!78 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !78, line: 39, size: 128, align: 64, elements: !80)
!80 = !{!81, !82}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !79, file: !78, line: 41, baseType: !28, size: 64, align: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !79, file: !78, line: 42, baseType: !76, size: 64, align: 64, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !68, file: !69, line: 35, baseType: !84, size: 64, align: 64, offset: 256)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !67, line: 108, baseType: !86)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !87, line: 5, size: 704, align: 64, elements: !88)
!87 = !DIFile(filename: "../../../src/core/window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!88 = !{!89, !91, !92, !97, !98, !102, !103, !104, !105, !106, !107, !111}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !86, file: !90, line: 3, baseType: !33, size: 32, align: 32)
!90 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!91 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !86, file: !90, line: 4, baseType: !33, size: 32, align: 32, offset: 32)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !86, file: !90, line: 5, baseType: !93, size: 64, align: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !95, line: 37, baseType: !96)
!95 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!96 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !95, line: 37, flags: DIFlagFwdDecl)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !86, file: !90, line: 7, baseType: !4, size: 64, align: 64, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !86, file: !90, line: 8, baseType: !99, size: 64, align: 64, offset: 192)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, align: 64)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !67, line: 107, baseType: !101)
!101 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !67, line: 107, flags: DIFlagFwdDecl)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !86, file: !90, line: 9, baseType: !20, size: 64, align: 64, offset: 256)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !86, file: !90, line: 10, baseType: !20, size: 64, align: 64, offset: 320)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !86, file: !90, line: 11, baseType: !37, size: 64, align: 64, offset: 384)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !86, file: !90, line: 12, baseType: !33, size: 32, align: 32, offset: 448)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !86, file: !90, line: 13, baseType: !20, size: 64, align: 64, offset: 512)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !86, file: !90, line: 15, baseType: !108, size: 64, align: 64, offset: 576)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64, align: 64)
!109 = !DISubroutineType(types: !110)
!110 = !{null, !84}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !86, file: !90, line: 17, baseType: !112, size: 64, align: 64, offset: 640)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64, align: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{!11, !84}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "active_server", scope: !68, file: !69, line: 36, baseType: !99, size: 64, align: 64, offset: 320)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "connect_server", scope: !68, file: !69, line: 37, baseType: !99, size: 64, align: 64, offset: 384)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !68, file: !69, line: 38, baseType: !20, size: 64, align: 64, offset: 448)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !68, file: !69, line: 40, baseType: !33, size: 32, align: 32, offset: 512)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "bound_items", scope: !68, file: !69, line: 41, baseType: !76, size: 64, align: 64, offset: 576)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "immortal", scope: !68, file: !69, line: 43, baseType: !121, size: 1, align: 32, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!121 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "sticky_refnum", scope: !68, file: !69, line: 44, baseType: !121, size: 1, align: 32, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !68, file: !69, line: 45, baseType: !121, size: 1, align: 32, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !68, file: !69, line: 48, baseType: !15, size: 64, align: 64, offset: 704)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "history_name", scope: !68, file: !69, line: 49, baseType: !20, size: 64, align: 64, offset: 768)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !68, file: !69, line: 51, baseType: !33, size: 32, align: 32, offset: 832)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !68, file: !69, line: 52, baseType: !20, size: 64, align: 64, offset: 896)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "last_timestamp", scope: !68, file: !69, line: 54, baseType: !37, size: 64, align: 64, offset: 960)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "last_line", scope: !68, file: !69, line: 55, baseType: !37, size: 64, align: 64, offset: 1024)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "theme_name", scope: !68, file: !69, line: 57, baseType: !20, size: 64, align: 64, offset: 1088)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "theme", scope: !68, file: !69, line: 58, baseType: !4, size: 64, align: 64, offset: 1152)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "gui_data", scope: !68, file: !69, line: 60, baseType: !4, size: 64, align: 64, offset: 1216)
!133 = !{!134, !136, !137, !138}
!134 = distinct !DIGlobalVariable(name: "history_entries", scope: !0, file: !135, line: 33, type: !22, isLocal: true, isDefinition: true, variable: %struct._GList** @history_entries)
!135 = !DIFile(filename: "command-history.c", directory: "/home/lichi/Desktop/irssi/task1")
!136 = distinct !DIGlobalVariable(name: "global_history", scope: !0, file: !135, line: 34, type: !15, isLocal: true, isDefinition: true, variable: %struct.HISTORY_REC** @global_history)
!137 = distinct !DIGlobalVariable(name: "window_history", scope: !0, file: !135, line: 35, type: !33, isLocal: true, isDefinition: true, variable: i32* @window_history)
!138 = distinct !DIGlobalVariable(name: "histories", scope: !0, file: !135, line: 36, type: !76, isLocal: true, isDefinition: true, variable: %struct._GSList** @histories)
!139 = !{i32 2, !"Dwarf Version", i32 4}
!140 = !{i32 2, !"Debug Info Version", i32 3}
!141 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!142 = distinct !DISubprogram(name: "command_history_list_last", scope: !135, file: !135, line: 56, type: !143, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!143 = !DISubroutineType(types: !144)
!144 = !{!22, !15}
!145 = !DILocalVariable(name: "history", arg: 1, scope: !142, file: !135, line: 56, type: !15)
!146 = !DIExpression()
!147 = !DILocation(line: 56, column: 47, scope: !142)
!148 = !DILocalVariable(name: "link", scope: !142, file: !135, line: 58, type: !22)
!149 = !DILocation(line: 58, column: 9, scope: !142)
!150 = !DILocation(line: 60, column: 21, scope: !142)
!151 = !DILocation(line: 60, column: 9, scope: !142)
!152 = !DILocation(line: 60, column: 7, scope: !142)
!153 = !DILocation(line: 61, column: 2, scope: !142)
!154 = !DILocation(line: 61, column: 9, scope: !155)
!155 = !DILexicalBlockFile(scope: !142, file: !135, discriminator: 1)
!156 = !DILocation(line: 61, column: 14, scope: !155)
!157 = !DILocation(line: 61, column: 21, scope: !155)
!158 = !DILocation(line: 61, column: 24, scope: !159)
!159 = !DILexicalBlockFile(scope: !142, file: !135, discriminator: 2)
!160 = !DILocation(line: 61, column: 32, scope: !159)
!161 = !DILocation(line: 61, column: 40, scope: !159)
!162 = !DILocation(line: 61, column: 65, scope: !163)
!163 = !DILexicalBlockFile(scope: !142, file: !135, discriminator: 3)
!164 = !DILocation(line: 61, column: 71, scope: !163)
!165 = !DILocation(line: 61, column: 44, scope: !163)
!166 = !DILocation(line: 61, column: 78, scope: !163)
!167 = !DILocation(line: 61, column: 89, scope: !163)
!168 = !DILocation(line: 61, column: 86, scope: !163)
!169 = !DILocation(line: 61, column: 2, scope: !170)
!170 = !DILexicalBlockFile(scope: !142, file: !135, discriminator: 4)
!171 = !DILocation(line: 62, column: 10, scope: !172)
!172 = distinct !DILexicalBlock(scope: !142, file: !135, line: 61, column: 98)
!173 = !DILocation(line: 62, column: 16, scope: !172)
!174 = !DILocation(line: 62, column: 8, scope: !172)
!175 = !DILocation(line: 61, column: 2, scope: !176)
!176 = !DILexicalBlockFile(scope: !142, file: !135, discriminator: 5)
!177 = distinct !{!177, !153}
!178 = !DILocation(line: 65, column: 9, scope: !142)
!179 = !DILocation(line: 65, column: 2, scope: !142)
!180 = distinct !DISubprogram(name: "command_history_list_first", scope: !135, file: !135, line: 68, type: !143, isLocal: false, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!181 = !DILocalVariable(name: "history", arg: 1, scope: !180, file: !135, line: 68, type: !15)
!182 = !DILocation(line: 68, column: 48, scope: !180)
!183 = !DILocalVariable(name: "link", scope: !180, file: !135, line: 70, type: !22)
!184 = !DILocation(line: 70, column: 9, scope: !180)
!185 = !DILocation(line: 72, column: 9, scope: !180)
!186 = !DILocation(line: 72, column: 7, scope: !180)
!187 = !DILocation(line: 73, column: 2, scope: !180)
!188 = !DILocation(line: 73, column: 9, scope: !189)
!189 = !DILexicalBlockFile(scope: !180, file: !135, discriminator: 1)
!190 = !DILocation(line: 73, column: 14, scope: !189)
!191 = !DILocation(line: 73, column: 21, scope: !189)
!192 = !DILocation(line: 73, column: 24, scope: !193)
!193 = !DILexicalBlockFile(scope: !180, file: !135, discriminator: 2)
!194 = !DILocation(line: 73, column: 32, scope: !193)
!195 = !DILocation(line: 73, column: 40, scope: !193)
!196 = !DILocation(line: 73, column: 65, scope: !197)
!197 = !DILexicalBlockFile(scope: !180, file: !135, discriminator: 3)
!198 = !DILocation(line: 73, column: 71, scope: !197)
!199 = !DILocation(line: 73, column: 44, scope: !197)
!200 = !DILocation(line: 73, column: 78, scope: !197)
!201 = !DILocation(line: 73, column: 89, scope: !197)
!202 = !DILocation(line: 73, column: 86, scope: !197)
!203 = !DILocation(line: 73, column: 2, scope: !204)
!204 = !DILexicalBlockFile(scope: !180, file: !135, discriminator: 4)
!205 = !DILocation(line: 74, column: 10, scope: !206)
!206 = distinct !DILexicalBlock(scope: !180, file: !135, line: 73, column: 98)
!207 = !DILocation(line: 74, column: 16, scope: !206)
!208 = !DILocation(line: 74, column: 8, scope: !206)
!209 = !DILocation(line: 73, column: 2, scope: !210)
!210 = !DILexicalBlockFile(scope: !180, file: !135, discriminator: 5)
!211 = distinct !{!211, !187}
!212 = !DILocation(line: 77, column: 9, scope: !180)
!213 = !DILocation(line: 77, column: 2, scope: !180)
!214 = distinct !DISubprogram(name: "command_history_list_prev", scope: !135, file: !135, line: 80, type: !215, isLocal: false, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!215 = !DISubroutineType(types: !216)
!216 = !{!22, !15, !22}
!217 = !DILocalVariable(name: "history", arg: 1, scope: !214, file: !135, line: 80, type: !15)
!218 = !DILocation(line: 80, column: 47, scope: !214)
!219 = !DILocalVariable(name: "pos", arg: 2, scope: !214, file: !135, line: 80, type: !22)
!220 = !DILocation(line: 80, column: 63, scope: !214)
!221 = !DILocalVariable(name: "link", scope: !214, file: !135, line: 82, type: !22)
!222 = !DILocation(line: 82, column: 9, scope: !214)
!223 = !DILocation(line: 84, column: 9, scope: !214)
!224 = !DILocation(line: 84, column: 13, scope: !214)
!225 = !DILocation(line: 84, column: 22, scope: !226)
!226 = !DILexicalBlockFile(scope: !214, file: !135, discriminator: 1)
!227 = !DILocation(line: 84, column: 27, scope: !226)
!228 = !DILocation(line: 84, column: 9, scope: !226)
!229 = !DILocation(line: 84, column: 9, scope: !230)
!230 = !DILexicalBlockFile(scope: !214, file: !135, discriminator: 2)
!231 = !DILocation(line: 84, column: 9, scope: !232)
!232 = !DILexicalBlockFile(scope: !214, file: !135, discriminator: 3)
!233 = !DILocation(line: 84, column: 7, scope: !232)
!234 = !DILocation(line: 85, column: 2, scope: !214)
!235 = !DILocation(line: 85, column: 9, scope: !226)
!236 = !DILocation(line: 85, column: 14, scope: !226)
!237 = !DILocation(line: 85, column: 21, scope: !226)
!238 = !DILocation(line: 85, column: 24, scope: !230)
!239 = !DILocation(line: 85, column: 32, scope: !230)
!240 = !DILocation(line: 85, column: 40, scope: !230)
!241 = !DILocation(line: 85, column: 65, scope: !232)
!242 = !DILocation(line: 85, column: 71, scope: !232)
!243 = !DILocation(line: 85, column: 44, scope: !232)
!244 = !DILocation(line: 85, column: 78, scope: !232)
!245 = !DILocation(line: 85, column: 89, scope: !232)
!246 = !DILocation(line: 85, column: 86, scope: !232)
!247 = !DILocation(line: 85, column: 2, scope: !248)
!248 = !DILexicalBlockFile(scope: !214, file: !135, discriminator: 4)
!249 = !DILocation(line: 86, column: 10, scope: !250)
!250 = distinct !DILexicalBlock(scope: !214, file: !135, line: 85, column: 98)
!251 = !DILocation(line: 86, column: 16, scope: !250)
!252 = !DILocation(line: 86, column: 8, scope: !250)
!253 = !DILocation(line: 85, column: 2, scope: !254)
!254 = !DILexicalBlockFile(scope: !214, file: !135, discriminator: 5)
!255 = distinct !{!255, !234}
!256 = !DILocation(line: 89, column: 9, scope: !214)
!257 = !DILocation(line: 89, column: 2, scope: !214)
!258 = distinct !DISubprogram(name: "command_history_list_next", scope: !135, file: !135, line: 92, type: !215, isLocal: false, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!259 = !DILocalVariable(name: "history", arg: 1, scope: !258, file: !135, line: 92, type: !15)
!260 = !DILocation(line: 92, column: 47, scope: !258)
!261 = !DILocalVariable(name: "pos", arg: 2, scope: !258, file: !135, line: 92, type: !22)
!262 = !DILocation(line: 92, column: 63, scope: !258)
!263 = !DILocalVariable(name: "link", scope: !258, file: !135, line: 94, type: !22)
!264 = !DILocation(line: 94, column: 9, scope: !258)
!265 = !DILocation(line: 96, column: 9, scope: !258)
!266 = !DILocation(line: 96, column: 13, scope: !258)
!267 = !DILocation(line: 96, column: 22, scope: !268)
!268 = !DILexicalBlockFile(scope: !258, file: !135, discriminator: 1)
!269 = !DILocation(line: 96, column: 27, scope: !268)
!270 = !DILocation(line: 96, column: 9, scope: !268)
!271 = !DILocation(line: 96, column: 9, scope: !272)
!272 = !DILexicalBlockFile(scope: !258, file: !135, discriminator: 2)
!273 = !DILocation(line: 96, column: 9, scope: !274)
!274 = !DILexicalBlockFile(scope: !258, file: !135, discriminator: 3)
!275 = !DILocation(line: 96, column: 7, scope: !274)
!276 = !DILocation(line: 97, column: 2, scope: !258)
!277 = !DILocation(line: 97, column: 9, scope: !268)
!278 = !DILocation(line: 97, column: 14, scope: !268)
!279 = !DILocation(line: 97, column: 21, scope: !268)
!280 = !DILocation(line: 97, column: 24, scope: !272)
!281 = !DILocation(line: 97, column: 32, scope: !272)
!282 = !DILocation(line: 97, column: 40, scope: !272)
!283 = !DILocation(line: 97, column: 65, scope: !274)
!284 = !DILocation(line: 97, column: 71, scope: !274)
!285 = !DILocation(line: 97, column: 44, scope: !274)
!286 = !DILocation(line: 97, column: 78, scope: !274)
!287 = !DILocation(line: 97, column: 89, scope: !274)
!288 = !DILocation(line: 97, column: 86, scope: !274)
!289 = !DILocation(line: 97, column: 2, scope: !290)
!290 = !DILexicalBlockFile(scope: !258, file: !135, discriminator: 4)
!291 = !DILocation(line: 98, column: 10, scope: !292)
!292 = distinct !DILexicalBlock(scope: !258, file: !135, line: 97, column: 98)
!293 = !DILocation(line: 98, column: 16, scope: !292)
!294 = !DILocation(line: 98, column: 8, scope: !292)
!295 = !DILocation(line: 97, column: 2, scope: !296)
!296 = !DILexicalBlockFile(scope: !258, file: !135, discriminator: 5)
!297 = distinct !{!297, !276}
!298 = !DILocation(line: 101, column: 9, scope: !258)
!299 = !DILocation(line: 101, column: 2, scope: !258)
!300 = distinct !DISubprogram(name: "command_history_add", scope: !135, file: !135, line: 120, type: !301, isLocal: false, isDefinition: true, scopeLine: 121, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!301 = !DISubroutineType(types: !302)
!302 = !{null, !15, !11}
!303 = !DILocalVariable(name: "history", arg: 1, scope: !300, file: !135, line: 120, type: !15)
!304 = !DILocation(line: 120, column: 39, scope: !300)
!305 = !DILocalVariable(name: "text", arg: 2, scope: !300, file: !135, line: 120, type: !11)
!306 = !DILocation(line: 120, column: 60, scope: !300)
!307 = !DILocalVariable(name: "link", scope: !300, file: !135, line: 122, type: !22)
!308 = !DILocation(line: 122, column: 9, scope: !300)
!309 = !DILocation(line: 124, column: 2, scope: !300)
!310 = distinct !{!310, !309}
!311 = !DILocation(line: 124, column: 10, scope: !312)
!312 = !DILexicalBlockFile(scope: !313, file: !135, discriminator: 1)
!313 = distinct !DILexicalBlock(scope: !314, file: !135, line: 124, column: 10)
!314 = distinct !DILexicalBlock(scope: !300, file: !135, line: 124, column: 4)
!315 = !DILocation(line: 124, column: 18, scope: !312)
!316 = !DILocation(line: 124, column: 5, scope: !317)
!317 = !DILexicalBlockFile(scope: !318, file: !135, discriminator: 2)
!318 = distinct !DILexicalBlock(scope: !313, file: !135, line: 124, column: 3)
!319 = !DILocation(line: 124, column: 14, scope: !320)
!320 = !DILexicalBlockFile(scope: !321, file: !135, discriminator: 3)
!321 = distinct !DILexicalBlock(scope: !313, file: !135, line: 124, column: 12)
!322 = !DILocation(line: 124, column: 102, scope: !320)
!323 = !DILocation(line: 124, column: 113, scope: !324)
!324 = !DILexicalBlockFile(scope: !314, file: !135, discriminator: 4)
!325 = !DILocation(line: 125, column: 2, scope: !300)
!326 = distinct !{!326, !325}
!327 = !DILocation(line: 125, column: 10, scope: !328)
!328 = !DILexicalBlockFile(scope: !329, file: !135, discriminator: 1)
!329 = distinct !DILexicalBlock(scope: !330, file: !135, line: 125, column: 10)
!330 = distinct !DILexicalBlock(scope: !300, file: !135, line: 125, column: 4)
!331 = !DILocation(line: 125, column: 15, scope: !328)
!332 = !DILocation(line: 125, column: 5, scope: !333)
!333 = !DILexicalBlockFile(scope: !334, file: !135, discriminator: 2)
!334 = distinct !DILexicalBlock(scope: !329, file: !135, line: 125, column: 3)
!335 = !DILocation(line: 125, column: 14, scope: !336)
!336 = !DILexicalBlockFile(scope: !337, file: !135, discriminator: 3)
!337 = distinct !DILexicalBlock(scope: !329, file: !135, line: 125, column: 12)
!338 = !DILocation(line: 125, column: 99, scope: !336)
!339 = !DILocation(line: 125, column: 110, scope: !340)
!340 = !DILexicalBlockFile(scope: !330, file: !135, discriminator: 4)
!341 = !DILocation(line: 127, column: 35, scope: !300)
!342 = !DILocation(line: 127, column: 9, scope: !300)
!343 = !DILocation(line: 127, column: 7, scope: !300)
!344 = !DILocation(line: 128, column: 6, scope: !345)
!345 = distinct !DILexicalBlock(scope: !300, file: !135, line: 128, column: 6)
!346 = !DILocation(line: 128, column: 11, scope: !345)
!347 = !DILocation(line: 128, column: 18, scope: !345)
!348 = !DILocation(line: 128, column: 53, scope: !349)
!349 = !DILexicalBlockFile(scope: !345, file: !135, discriminator: 1)
!350 = !DILocation(line: 128, column: 59, scope: !349)
!351 = !DILocation(line: 128, column: 32, scope: !349)
!352 = !DILocation(line: 128, column: 66, scope: !349)
!353 = !DILocation(line: 128, column: 72, scope: !349)
!354 = !DILocation(line: 128, column: 21, scope: !349)
!355 = !DILocation(line: 128, column: 78, scope: !349)
!356 = !DILocation(line: 128, column: 6, scope: !349)
!357 = !DILocation(line: 129, column: 3, scope: !345)
!358 = !DILocation(line: 131, column: 6, scope: !359)
!359 = distinct !DILexicalBlock(scope: !300, file: !135, line: 131, column: 6)
!360 = !DILocation(line: 131, column: 46, scope: !359)
!361 = !DILocation(line: 131, column: 50, scope: !359)
!362 = !DILocation(line: 132, column: 6, scope: !359)
!363 = !DILocation(line: 132, column: 15, scope: !359)
!364 = !DILocation(line: 132, column: 23, scope: !359)
!365 = !DILocation(line: 132, column: 21, scope: !359)
!366 = !DILocation(line: 131, column: 6, scope: !367)
!367 = !DILexicalBlockFile(scope: !300, file: !135, discriminator: 1)
!368 = !DILocation(line: 133, column: 3, scope: !359)
!369 = !DILocation(line: 133, column: 12, scope: !359)
!370 = !DILocation(line: 133, column: 17, scope: !359)
!371 = !DILocation(line: 135, column: 37, scope: !372)
!372 = distinct !DILexicalBlock(scope: !359, file: !135, line: 134, column: 7)
!373 = !DILocation(line: 135, column: 10, scope: !372)
!374 = !DILocation(line: 135, column: 8, scope: !372)
!375 = !DILocation(line: 136, column: 40, scope: !372)
!376 = !DILocation(line: 136, column: 3, scope: !372)
!377 = !DILocation(line: 139, column: 34, scope: !300)
!378 = !DILocation(line: 139, column: 69, scope: !300)
!379 = !DILocation(line: 139, column: 78, scope: !300)
!380 = !DILocation(line: 139, column: 51, scope: !300)
!381 = !DILocation(line: 139, column: 20, scope: !367)
!382 = !DILocation(line: 139, column: 18, scope: !300)
!383 = !DILocation(line: 140, column: 1, scope: !300)
!384 = !DILocation(line: 140, column: 1, scope: !367)
!385 = distinct !DISubprogram(name: "history_list_delete_link_and_destroy", scope: !135, file: !135, line: 112, type: !386, isLocal: true, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!386 = !DISubroutineType(types: !387)
!387 = !{null, !22}
!388 = !DILocalVariable(name: "link", arg: 1, scope: !385, file: !135, line: 112, type: !22)
!389 = !DILocation(line: 112, column: 57, scope: !385)
!390 = !DILocation(line: 114, column: 18, scope: !385)
!391 = !DILocation(line: 115, column: 61, scope: !385)
!392 = !DILocation(line: 114, column: 2, scope: !385)
!393 = !DILocation(line: 116, column: 24, scope: !385)
!394 = !DILocation(line: 116, column: 30, scope: !385)
!395 = !DILocation(line: 116, column: 2, scope: !385)
!396 = !DILocation(line: 117, column: 39, scope: !385)
!397 = !DILocation(line: 117, column: 56, scope: !385)
!398 = !DILocation(line: 117, column: 20, scope: !385)
!399 = !DILocation(line: 117, column: 18, scope: !385)
!400 = !DILocation(line: 118, column: 1, scope: !385)
!401 = distinct !DISubprogram(name: "history_entry_new", scope: !135, file: !135, line: 38, type: !402, isLocal: true, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!402 = !DISubroutineType(types: !403)
!403 = !{!5, !15, !11}
!404 = !DILocalVariable(name: "history", arg: 1, scope: !401, file: !135, line: 38, type: !15)
!405 = !DILocation(line: 38, column: 58, scope: !401)
!406 = !DILocalVariable(name: "text", arg: 2, scope: !401, file: !135, line: 38, type: !11)
!407 = !DILocation(line: 38, column: 79, scope: !401)
!408 = !DILocalVariable(name: "entry", scope: !401, file: !135, line: 40, type: !5)
!409 = !DILocation(line: 40, column: 21, scope: !401)
!410 = !DILocation(line: 42, column: 33, scope: !401)
!411 = !DILocation(line: 42, column: 11, scope: !401)
!412 = !DILocation(line: 42, column: 8, scope: !401)
!413 = !DILocation(line: 43, column: 25, scope: !401)
!414 = !DILocation(line: 43, column: 16, scope: !401)
!415 = !DILocation(line: 43, column: 2, scope: !401)
!416 = !DILocation(line: 43, column: 9, scope: !401)
!417 = !DILocation(line: 43, column: 14, scope: !401)
!418 = !DILocation(line: 44, column: 19, scope: !401)
!419 = !DILocation(line: 44, column: 2, scope: !401)
!420 = !DILocation(line: 44, column: 9, scope: !401)
!421 = !DILocation(line: 44, column: 17, scope: !401)
!422 = !DILocation(line: 45, column: 16, scope: !401)
!423 = !DILocation(line: 45, column: 2, scope: !401)
!424 = !DILocation(line: 45, column: 9, scope: !401)
!425 = !DILocation(line: 45, column: 14, scope: !401)
!426 = !DILocation(line: 47, column: 9, scope: !401)
!427 = !DILocation(line: 47, column: 2, scope: !401)
!428 = distinct !DISubprogram(name: "command_history_find", scope: !135, file: !135, line: 142, type: !429, isLocal: false, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!429 = !DISubroutineType(types: !430)
!430 = !{!15, !15}
!431 = !DILocalVariable(name: "history", arg: 1, scope: !428, file: !135, line: 142, type: !15)
!432 = !DILocation(line: 142, column: 48, scope: !428)
!433 = !DILocalVariable(name: "tmp", scope: !428, file: !135, line: 144, type: !76)
!434 = !DILocation(line: 144, column: 10, scope: !428)
!435 = !DILocation(line: 145, column: 21, scope: !428)
!436 = !DILocation(line: 145, column: 32, scope: !428)
!437 = !DILocation(line: 145, column: 8, scope: !428)
!438 = !DILocation(line: 145, column: 6, scope: !428)
!439 = !DILocation(line: 147, column: 6, scope: !440)
!440 = distinct !DILexicalBlock(scope: !428, file: !135, line: 147, column: 6)
!441 = !DILocation(line: 147, column: 10, scope: !440)
!442 = !DILocation(line: 147, column: 6, scope: !428)
!443 = !DILocation(line: 148, column: 3, scope: !440)
!444 = !DILocation(line: 150, column: 10, scope: !440)
!445 = !DILocation(line: 150, column: 15, scope: !440)
!446 = !DILocation(line: 150, column: 3, scope: !440)
!447 = !DILocation(line: 151, column: 1, scope: !428)
!448 = distinct !DISubprogram(name: "command_history_find_name", scope: !135, file: !135, line: 153, type: !449, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!449 = !DISubroutineType(types: !450)
!450 = !{!15, !11}
!451 = !DILocalVariable(name: "name", arg: 1, scope: !448, file: !135, line: 153, type: !11)
!452 = !DILocation(line: 153, column: 52, scope: !448)
!453 = !DILocalVariable(name: "tmp", scope: !448, file: !135, line: 155, type: !76)
!454 = !DILocation(line: 155, column: 10, scope: !448)
!455 = !DILocation(line: 157, column: 6, scope: !456)
!456 = distinct !DILexicalBlock(scope: !448, file: !135, line: 157, column: 6)
!457 = !DILocation(line: 157, column: 11, scope: !456)
!458 = !DILocation(line: 157, column: 6, scope: !448)
!459 = !DILocation(line: 158, column: 3, scope: !456)
!460 = !DILocation(line: 160, column: 13, scope: !461)
!461 = distinct !DILexicalBlock(scope: !448, file: !135, line: 160, column: 2)
!462 = !DILocation(line: 160, column: 11, scope: !461)
!463 = !DILocation(line: 160, column: 7, scope: !461)
!464 = !DILocation(line: 160, column: 24, scope: !465)
!465 = !DILexicalBlockFile(scope: !466, file: !135, discriminator: 1)
!466 = distinct !DILexicalBlock(scope: !461, file: !135, line: 160, column: 2)
!467 = !DILocation(line: 160, column: 28, scope: !465)
!468 = !DILocation(line: 160, column: 2, scope: !465)
!469 = !DILocalVariable(name: "rec", scope: !470, file: !135, line: 161, type: !15)
!470 = distinct !DILexicalBlock(scope: !466, file: !135, line: 160, column: 53)
!471 = !DILocation(line: 161, column: 16, scope: !470)
!472 = !DILocation(line: 161, column: 22, scope: !470)
!473 = !DILocation(line: 161, column: 27, scope: !470)
!474 = !DILocation(line: 163, column: 7, scope: !475)
!475 = distinct !DILexicalBlock(scope: !470, file: !135, line: 163, column: 7)
!476 = !DILocation(line: 163, column: 12, scope: !475)
!477 = !DILocation(line: 163, column: 17, scope: !475)
!478 = !DILocation(line: 163, column: 24, scope: !475)
!479 = !DILocation(line: 164, column: 26, scope: !475)
!480 = !DILocation(line: 164, column: 31, scope: !475)
!481 = !DILocation(line: 164, column: 37, scope: !475)
!482 = !DILocation(line: 164, column: 7, scope: !475)
!483 = !DILocation(line: 164, column: 43, scope: !475)
!484 = !DILocation(line: 163, column: 7, scope: !485)
!485 = !DILexicalBlockFile(scope: !470, file: !135, discriminator: 1)
!486 = !DILocation(line: 165, column: 11, scope: !475)
!487 = !DILocation(line: 165, column: 4, scope: !475)
!488 = !DILocation(line: 166, column: 2, scope: !470)
!489 = !DILocation(line: 160, column: 42, scope: !490)
!490 = !DILexicalBlockFile(scope: !466, file: !135, discriminator: 2)
!491 = !DILocation(line: 160, column: 47, scope: !490)
!492 = !DILocation(line: 160, column: 40, scope: !490)
!493 = !DILocation(line: 160, column: 2, scope: !490)
!494 = distinct !{!494, !495}
!495 = !DILocation(line: 160, column: 2, scope: !448)
!496 = !DILocation(line: 168, column: 2, scope: !448)
!497 = !DILocation(line: 169, column: 1, scope: !448)
!498 = distinct !DISubprogram(name: "command_history_load_entry", scope: !135, file: !135, line: 176, type: !499, isLocal: false, isDefinition: true, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!499 = !DISubroutineType(types: !500)
!500 = !{null, !37, !15, !11}
!501 = !DILocalVariable(name: "history_time", arg: 1, scope: !498, file: !135, line: 176, type: !37)
!502 = !DILocation(line: 176, column: 40, scope: !498)
!503 = !DILocalVariable(name: "history", arg: 2, scope: !498, file: !135, line: 176, type: !15)
!504 = !DILocation(line: 176, column: 67, scope: !498)
!505 = !DILocalVariable(name: "text", arg: 3, scope: !498, file: !135, line: 176, type: !11)
!506 = !DILocation(line: 176, column: 88, scope: !498)
!507 = !DILocalVariable(name: "entry", scope: !498, file: !135, line: 178, type: !5)
!508 = !DILocation(line: 178, column: 21, scope: !498)
!509 = !DILocation(line: 180, column: 2, scope: !498)
!510 = distinct !{!510, !509}
!511 = !DILocation(line: 180, column: 10, scope: !512)
!512 = !DILexicalBlockFile(scope: !513, file: !135, discriminator: 1)
!513 = distinct !DILexicalBlock(scope: !514, file: !135, line: 180, column: 10)
!514 = distinct !DILexicalBlock(scope: !498, file: !135, line: 180, column: 4)
!515 = !DILocation(line: 180, column: 18, scope: !512)
!516 = !DILocation(line: 180, column: 5, scope: !517)
!517 = !DILexicalBlockFile(scope: !518, file: !135, discriminator: 2)
!518 = distinct !DILexicalBlock(scope: !513, file: !135, line: 180, column: 3)
!519 = !DILocation(line: 180, column: 14, scope: !520)
!520 = !DILexicalBlockFile(scope: !521, file: !135, discriminator: 3)
!521 = distinct !DILexicalBlock(scope: !513, file: !135, line: 180, column: 12)
!522 = !DILocation(line: 180, column: 102, scope: !520)
!523 = !DILocation(line: 180, column: 113, scope: !524)
!524 = !DILexicalBlockFile(scope: !514, file: !135, discriminator: 4)
!525 = !DILocation(line: 181, column: 2, scope: !498)
!526 = distinct !{!526, !525}
!527 = !DILocation(line: 181, column: 10, scope: !528)
!528 = !DILexicalBlockFile(scope: !529, file: !135, discriminator: 1)
!529 = distinct !DILexicalBlock(scope: !530, file: !135, line: 181, column: 10)
!530 = distinct !DILexicalBlock(scope: !498, file: !135, line: 181, column: 4)
!531 = !DILocation(line: 181, column: 15, scope: !528)
!532 = !DILocation(line: 181, column: 5, scope: !533)
!533 = !DILexicalBlockFile(scope: !534, file: !135, discriminator: 2)
!534 = distinct !DILexicalBlock(scope: !529, file: !135, line: 181, column: 3)
!535 = !DILocation(line: 181, column: 14, scope: !536)
!536 = !DILexicalBlockFile(scope: !537, file: !135, discriminator: 3)
!537 = distinct !DILexicalBlock(scope: !529, file: !135, line: 181, column: 12)
!538 = !DILocation(line: 181, column: 99, scope: !536)
!539 = !DILocation(line: 181, column: 110, scope: !540)
!540 = !DILexicalBlockFile(scope: !530, file: !135, discriminator: 4)
!541 = !DILocation(line: 183, column: 33, scope: !498)
!542 = !DILocation(line: 183, column: 11, scope: !498)
!543 = !DILocation(line: 183, column: 8, scope: !498)
!544 = !DILocation(line: 184, column: 25, scope: !498)
!545 = !DILocation(line: 184, column: 16, scope: !498)
!546 = !DILocation(line: 184, column: 2, scope: !498)
!547 = !DILocation(line: 184, column: 9, scope: !498)
!548 = !DILocation(line: 184, column: 14, scope: !498)
!549 = !DILocation(line: 185, column: 19, scope: !498)
!550 = !DILocation(line: 185, column: 2, scope: !498)
!551 = !DILocation(line: 185, column: 9, scope: !498)
!552 = !DILocation(line: 185, column: 17, scope: !498)
!553 = !DILocation(line: 186, column: 16, scope: !498)
!554 = !DILocation(line: 186, column: 2, scope: !498)
!555 = !DILocation(line: 186, column: 9, scope: !498)
!556 = !DILocation(line: 186, column: 14, scope: !498)
!557 = !DILocation(line: 188, column: 2, scope: !498)
!558 = !DILocation(line: 188, column: 11, scope: !498)
!559 = !DILocation(line: 188, column: 16, scope: !498)
!560 = !DILocation(line: 190, column: 41, scope: !498)
!561 = !DILocation(line: 190, column: 58, scope: !498)
!562 = !DILocation(line: 190, column: 20, scope: !498)
!563 = !DILocation(line: 190, column: 18, scope: !498)
!564 = !DILocation(line: 191, column: 1, scope: !498)
!565 = !DILocation(line: 191, column: 1, scope: !566)
!566 = !DILexicalBlockFile(scope: !498, file: !135, discriminator: 1)
!567 = distinct !DISubprogram(name: "history_entry_after_time_sort", scope: !135, file: !135, line: 171, type: !568, isLocal: true, isDefinition: true, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!568 = !DISubroutineType(types: !569)
!569 = !{!33, !570, !570}
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64, align: 64)
!571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!572 = !DILocalVariable(name: "a", arg: 1, scope: !567, file: !135, line: 171, type: !570)
!573 = !DILocation(line: 171, column: 67, scope: !567)
!574 = !DILocalVariable(name: "b", arg: 2, scope: !567, file: !135, line: 171, type: !570)
!575 = !DILocation(line: 171, column: 95, scope: !567)
!576 = !DILocation(line: 173, column: 9, scope: !567)
!577 = !DILocation(line: 173, column: 12, scope: !567)
!578 = !DILocation(line: 173, column: 20, scope: !567)
!579 = !DILocation(line: 173, column: 23, scope: !567)
!580 = !DILocation(line: 173, column: 17, scope: !567)
!581 = !DILocation(line: 173, column: 9, scope: !582)
!582 = !DILexicalBlockFile(scope: !567, file: !135, discriminator: 1)
!583 = !DILocation(line: 173, column: 34, scope: !584)
!584 = !DILexicalBlockFile(scope: !567, file: !135, discriminator: 2)
!585 = !DILocation(line: 173, column: 37, scope: !584)
!586 = !DILocation(line: 173, column: 44, scope: !584)
!587 = !DILocation(line: 173, column: 47, scope: !584)
!588 = !DILocation(line: 173, column: 42, scope: !584)
!589 = !DILocation(line: 173, column: 9, scope: !584)
!590 = !DILocation(line: 173, column: 9, scope: !591)
!591 = !DILexicalBlockFile(scope: !567, file: !135, discriminator: 3)
!592 = !DILocation(line: 173, column: 2, scope: !591)
!593 = distinct !DISubprogram(name: "command_history_delete_entry", scope: !135, file: !135, line: 204, type: !594, isLocal: false, isDefinition: true, scopeLine: 205, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!594 = !DISubroutineType(types: !595)
!595 = !{!596, !37, !15, !11}
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !29, line: 50, baseType: !48)
!597 = !DILocalVariable(name: "history_time", arg: 1, scope: !593, file: !135, line: 204, type: !37)
!598 = !DILocation(line: 204, column: 46, scope: !593)
!599 = !DILocalVariable(name: "history", arg: 2, scope: !593, file: !135, line: 204, type: !15)
!600 = !DILocation(line: 204, column: 73, scope: !593)
!601 = !DILocalVariable(name: "text", arg: 3, scope: !593, file: !135, line: 204, type: !11)
!602 = !DILocation(line: 204, column: 94, scope: !593)
!603 = !DILocalVariable(name: "link", scope: !593, file: !135, line: 206, type: !22)
!604 = !DILocation(line: 206, column: 9, scope: !593)
!605 = !DILocalVariable(name: "entry", scope: !593, file: !135, line: 207, type: !6)
!606 = !DILocation(line: 207, column: 20, scope: !593)
!607 = !DILocation(line: 209, column: 2, scope: !593)
!608 = distinct !{!608, !607}
!609 = !DILocation(line: 209, column: 10, scope: !610)
!610 = !DILexicalBlockFile(scope: !611, file: !135, discriminator: 1)
!611 = distinct !DILexicalBlock(scope: !612, file: !135, line: 209, column: 10)
!612 = distinct !DILexicalBlock(scope: !593, file: !135, line: 209, column: 4)
!613 = !DILocation(line: 209, column: 18, scope: !610)
!614 = !DILocation(line: 209, column: 5, scope: !615)
!615 = !DILexicalBlockFile(scope: !616, file: !135, discriminator: 2)
!616 = distinct !DILexicalBlock(scope: !611, file: !135, line: 209, column: 3)
!617 = !DILocation(line: 209, column: 14, scope: !618)
!618 = !DILexicalBlockFile(scope: !619, file: !135, discriminator: 3)
!619 = distinct !DILexicalBlock(scope: !611, file: !135, line: 209, column: 12)
!620 = !DILocation(line: 209, column: 102, scope: !618)
!621 = !DILocation(line: 209, column: 119, scope: !622)
!622 = !DILexicalBlockFile(scope: !612, file: !135, discriminator: 4)
!623 = !DILocation(line: 210, column: 2, scope: !593)
!624 = distinct !{!624, !623}
!625 = !DILocation(line: 210, column: 10, scope: !626)
!626 = !DILexicalBlockFile(scope: !627, file: !135, discriminator: 1)
!627 = distinct !DILexicalBlock(scope: !628, file: !135, line: 210, column: 10)
!628 = distinct !DILexicalBlock(scope: !593, file: !135, line: 210, column: 4)
!629 = !DILocation(line: 210, column: 15, scope: !626)
!630 = !DILocation(line: 210, column: 5, scope: !631)
!631 = !DILexicalBlockFile(scope: !632, file: !135, discriminator: 2)
!632 = distinct !DILexicalBlock(scope: !627, file: !135, line: 210, column: 3)
!633 = !DILocation(line: 210, column: 14, scope: !634)
!634 = !DILexicalBlockFile(scope: !635, file: !135, discriminator: 3)
!635 = distinct !DILexicalBlock(scope: !627, file: !135, line: 210, column: 12)
!636 = !DILocation(line: 210, column: 99, scope: !634)
!637 = !DILocation(line: 210, column: 116, scope: !638)
!638 = !DILexicalBlockFile(scope: !628, file: !135, discriminator: 4)
!639 = !DILocation(line: 212, column: 15, scope: !593)
!640 = !DILocation(line: 212, column: 8, scope: !593)
!641 = !DILocation(line: 212, column: 13, scope: !593)
!642 = !DILocation(line: 213, column: 18, scope: !593)
!643 = !DILocation(line: 213, column: 8, scope: !593)
!644 = !DILocation(line: 213, column: 16, scope: !593)
!645 = !DILocation(line: 214, column: 15, scope: !593)
!646 = !DILocation(line: 214, column: 8, scope: !593)
!647 = !DILocation(line: 214, column: 13, scope: !593)
!648 = !DILocation(line: 216, column: 28, scope: !593)
!649 = !DILocation(line: 216, column: 45, scope: !593)
!650 = !DILocation(line: 216, column: 9, scope: !593)
!651 = !DILocation(line: 216, column: 7, scope: !593)
!652 = !DILocation(line: 217, column: 6, scope: !653)
!653 = distinct !DILexicalBlock(scope: !593, file: !135, line: 217, column: 6)
!654 = !DILocation(line: 217, column: 11, scope: !653)
!655 = !DILocation(line: 217, column: 6, scope: !593)
!656 = !DILocation(line: 218, column: 25, scope: !657)
!657 = distinct !DILexicalBlock(scope: !653, file: !135, line: 217, column: 19)
!658 = !DILocation(line: 218, column: 31, scope: !657)
!659 = !DILocation(line: 218, column: 4, scope: !657)
!660 = !DILocation(line: 218, column: 38, scope: !657)
!661 = !DILocation(line: 218, column: 47, scope: !657)
!662 = !DILocation(line: 218, column: 52, scope: !657)
!663 = !DILocation(line: 219, column: 40, scope: !657)
!664 = !DILocation(line: 219, column: 3, scope: !657)
!665 = !DILocation(line: 220, column: 3, scope: !657)
!666 = !DILocation(line: 222, column: 3, scope: !667)
!667 = distinct !DILexicalBlock(scope: !653, file: !135, line: 221, column: 9)
!668 = !DILocation(line: 224, column: 1, scope: !593)
!669 = distinct !DISubprogram(name: "history_entry_find_func", scope: !135, file: !135, line: 193, type: !568, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!670 = !DILocalVariable(name: "data", arg: 1, scope: !669, file: !135, line: 193, type: !570)
!671 = !DILocation(line: 193, column: 61, scope: !669)
!672 = !DILocalVariable(name: "user_data", arg: 2, scope: !669, file: !135, line: 193, type: !570)
!673 = !DILocation(line: 193, column: 92, scope: !669)
!674 = !DILocation(line: 195, column: 7, scope: !675)
!675 = distinct !DILexicalBlock(scope: !669, file: !135, line: 195, column: 6)
!676 = !DILocation(line: 195, column: 18, scope: !675)
!677 = !DILocation(line: 195, column: 23, scope: !675)
!678 = !DILocation(line: 195, column: 29, scope: !675)
!679 = !DILocation(line: 195, column: 33, scope: !680)
!680 = !DILexicalBlockFile(scope: !675, file: !135, discriminator: 1)
!681 = !DILocation(line: 195, column: 39, scope: !680)
!682 = !DILocation(line: 195, column: 47, scope: !680)
!683 = !DILocation(line: 195, column: 58, scope: !680)
!684 = !DILocation(line: 195, column: 44, scope: !680)
!685 = !DILocation(line: 195, column: 65, scope: !680)
!686 = !DILocation(line: 196, column: 7, scope: !675)
!687 = !DILocation(line: 196, column: 18, scope: !675)
!688 = !DILocation(line: 196, column: 26, scope: !675)
!689 = !DILocation(line: 196, column: 33, scope: !675)
!690 = !DILocation(line: 196, column: 37, scope: !680)
!691 = !DILocation(line: 196, column: 43, scope: !680)
!692 = !DILocation(line: 196, column: 54, scope: !680)
!693 = !DILocation(line: 196, column: 65, scope: !680)
!694 = !DILocation(line: 196, column: 51, scope: !680)
!695 = !DILocation(line: 196, column: 75, scope: !680)
!696 = !DILocation(line: 197, column: 16, scope: !675)
!697 = !DILocation(line: 197, column: 22, scope: !675)
!698 = !DILocation(line: 197, column: 28, scope: !675)
!699 = !DILocation(line: 197, column: 39, scope: !675)
!700 = !DILocation(line: 197, column: 6, scope: !675)
!701 = !DILocation(line: 197, column: 45, scope: !675)
!702 = !DILocation(line: 195, column: 6, scope: !703)
!703 = !DILexicalBlockFile(scope: !669, file: !135, discriminator: 2)
!704 = !DILocation(line: 198, column: 3, scope: !705)
!705 = distinct !DILexicalBlock(scope: !675, file: !135, line: 197, column: 51)
!706 = !DILocation(line: 200, column: 3, scope: !707)
!707 = distinct !DILexicalBlock(scope: !675, file: !135, line: 199, column: 9)
!708 = !DILocation(line: 202, column: 1, scope: !669)
!709 = distinct !DISubprogram(name: "command_history_current", scope: !135, file: !135, line: 226, type: !710, isLocal: false, isDefinition: true, scopeLine: 227, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!710 = !DISubroutineType(types: !711)
!711 = !{!15, !65}
!712 = !DILocalVariable(name: "window", arg: 1, scope: !709, file: !135, line: 226, type: !65)
!713 = !DILocation(line: 226, column: 50, scope: !709)
!714 = !DILocalVariable(name: "rec", scope: !709, file: !135, line: 228, type: !15)
!715 = !DILocation(line: 228, column: 15, scope: !709)
!716 = !DILocation(line: 230, column: 6, scope: !717)
!717 = distinct !DILexicalBlock(scope: !709, file: !135, line: 230, column: 6)
!718 = !DILocation(line: 230, column: 13, scope: !717)
!719 = !DILocation(line: 230, column: 6, scope: !709)
!720 = !DILocation(line: 231, column: 10, scope: !717)
!721 = !DILocation(line: 231, column: 3, scope: !717)
!722 = !DILocation(line: 233, column: 34, scope: !709)
!723 = !DILocation(line: 233, column: 42, scope: !709)
!724 = !DILocation(line: 233, column: 8, scope: !709)
!725 = !DILocation(line: 233, column: 6, scope: !709)
!726 = !DILocation(line: 234, column: 6, scope: !727)
!727 = distinct !DILexicalBlock(scope: !709, file: !135, line: 234, column: 6)
!728 = !DILocation(line: 234, column: 10, scope: !727)
!729 = !DILocation(line: 234, column: 6, scope: !709)
!730 = !DILocation(line: 235, column: 10, scope: !727)
!731 = !DILocation(line: 235, column: 3, scope: !727)
!732 = !DILocation(line: 237, column: 6, scope: !733)
!733 = distinct !DILexicalBlock(scope: !709, file: !135, line: 237, column: 6)
!734 = !DILocation(line: 237, column: 6, scope: !709)
!735 = !DILocation(line: 238, column: 10, scope: !733)
!736 = !DILocation(line: 238, column: 18, scope: !733)
!737 = !DILocation(line: 238, column: 3, scope: !733)
!738 = !DILocation(line: 240, column: 9, scope: !709)
!739 = !DILocation(line: 240, column: 2, scope: !709)
!740 = !DILocation(line: 241, column: 1, scope: !709)
!741 = distinct !DISubprogram(name: "command_history_prev", scope: !135, file: !135, line: 270, type: !742, isLocal: false, isDefinition: true, scopeLine: 271, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!742 = !DISubroutineType(types: !743)
!743 = !{!11, !65, !11}
!744 = !DILocalVariable(name: "window", arg: 1, scope: !741, file: !135, line: 270, type: !65)
!745 = !DILocation(line: 270, column: 46, scope: !741)
!746 = !DILocalVariable(name: "text", arg: 2, scope: !741, file: !135, line: 270, type: !11)
!747 = !DILocation(line: 270, column: 66, scope: !741)
!748 = !DILocation(line: 272, column: 34, scope: !741)
!749 = !DILocation(line: 272, column: 42, scope: !741)
!750 = !DILocation(line: 272, column: 9, scope: !741)
!751 = !DILocation(line: 272, column: 2, scope: !741)
!752 = distinct !DISubprogram(name: "command_history_prev_int", scope: !135, file: !135, line: 243, type: !753, isLocal: true, isDefinition: true, scopeLine: 244, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!753 = !DISubroutineType(types: !754)
!754 = !{!11, !65, !11, !596}
!755 = !DILocalVariable(name: "window", arg: 1, scope: !752, file: !135, line: 243, type: !65)
!756 = !DILocation(line: 243, column: 57, scope: !752)
!757 = !DILocalVariable(name: "text", arg: 2, scope: !752, file: !135, line: 243, type: !11)
!758 = !DILocation(line: 243, column: 77, scope: !752)
!759 = !DILocalVariable(name: "global", arg: 3, scope: !752, file: !135, line: 243, type: !596)
!760 = !DILocation(line: 243, column: 92, scope: !752)
!761 = !DILocalVariable(name: "history", scope: !752, file: !135, line: 245, type: !15)
!762 = !DILocation(line: 245, column: 15, scope: !752)
!763 = !DILocalVariable(name: "pos", scope: !752, file: !135, line: 246, type: !22)
!764 = !DILocation(line: 246, column: 9, scope: !752)
!765 = !DILocation(line: 248, column: 36, scope: !752)
!766 = !DILocation(line: 248, column: 12, scope: !752)
!767 = !DILocation(line: 248, column: 10, scope: !752)
!768 = !DILocation(line: 249, column: 8, scope: !752)
!769 = !DILocation(line: 249, column: 17, scope: !752)
!770 = !DILocation(line: 249, column: 6, scope: !752)
!771 = !DILocation(line: 250, column: 2, scope: !752)
!772 = !DILocation(line: 250, column: 11, scope: !752)
!773 = !DILocation(line: 250, column: 16, scope: !752)
!774 = !DILocation(line: 252, column: 6, scope: !775)
!775 = distinct !DILexicalBlock(scope: !752, file: !135, line: 252, column: 6)
!776 = !DILocation(line: 252, column: 10, scope: !775)
!777 = !DILocation(line: 252, column: 6, scope: !752)
!778 = !DILocalVariable(name: "prev", scope: !779, file: !135, line: 254, type: !22)
!779 = distinct !DILexicalBlock(scope: !775, file: !135, line: 252, column: 18)
!780 = !DILocation(line: 254, column: 10, scope: !779)
!781 = !DILocation(line: 254, column: 43, scope: !779)
!782 = !DILocation(line: 254, column: 43, scope: !783)
!783 = !DILexicalBlockFile(scope: !779, file: !135, discriminator: 1)
!784 = !DILocation(line: 254, column: 58, scope: !785)
!785 = !DILexicalBlockFile(scope: !779, file: !135, discriminator: 2)
!786 = !DILocation(line: 254, column: 43, scope: !785)
!787 = !DILocation(line: 254, column: 43, scope: !788)
!788 = !DILexicalBlockFile(scope: !779, file: !135, discriminator: 3)
!789 = !DILocation(line: 254, column: 67, scope: !788)
!790 = !DILocation(line: 254, column: 76, scope: !788)
!791 = !DILocation(line: 254, column: 17, scope: !788)
!792 = !DILocation(line: 254, column: 10, scope: !788)
!793 = !DILocation(line: 255, column: 7, scope: !794)
!794 = distinct !DILexicalBlock(scope: !779, file: !135, line: 255, column: 7)
!795 = !DILocation(line: 255, column: 12, scope: !794)
!796 = !DILocation(line: 255, column: 7, scope: !779)
!797 = !DILocation(line: 256, column: 19, scope: !794)
!798 = !DILocation(line: 256, column: 4, scope: !794)
!799 = !DILocation(line: 256, column: 13, scope: !794)
!800 = !DILocation(line: 256, column: 17, scope: !794)
!801 = !DILocation(line: 257, column: 2, scope: !779)
!802 = !DILocation(line: 258, column: 44, scope: !803)
!803 = distinct !DILexicalBlock(scope: !775, file: !135, line: 257, column: 9)
!804 = !DILocation(line: 258, column: 44, scope: !805)
!805 = !DILexicalBlockFile(scope: !803, file: !135, discriminator: 1)
!806 = !DILocation(line: 258, column: 59, scope: !807)
!807 = !DILexicalBlockFile(scope: !803, file: !135, discriminator: 2)
!808 = !DILocation(line: 258, column: 44, scope: !807)
!809 = !DILocation(line: 258, column: 44, scope: !810)
!810 = !DILexicalBlockFile(scope: !803, file: !135, discriminator: 3)
!811 = !DILocation(line: 258, column: 18, scope: !810)
!812 = !DILocation(line: 258, column: 3, scope: !810)
!813 = !DILocation(line: 258, column: 12, scope: !810)
!814 = !DILocation(line: 258, column: 16, scope: !810)
!815 = !DILocation(line: 261, column: 7, scope: !816)
!816 = distinct !DILexicalBlock(scope: !752, file: !135, line: 261, column: 6)
!817 = !DILocation(line: 261, column: 6, scope: !816)
!818 = !DILocation(line: 261, column: 12, scope: !816)
!819 = !DILocation(line: 261, column: 20, scope: !816)
!820 = !DILocation(line: 262, column: 7, scope: !816)
!821 = !DILocation(line: 262, column: 11, scope: !816)
!822 = !DILocation(line: 262, column: 18, scope: !816)
!823 = !DILocation(line: 262, column: 53, scope: !824)
!824 = !DILexicalBlockFile(scope: !816, file: !135, discriminator: 1)
!825 = !DILocation(line: 262, column: 58, scope: !824)
!826 = !DILocation(line: 262, column: 32, scope: !824)
!827 = !DILocation(line: 262, column: 65, scope: !824)
!828 = !DILocation(line: 262, column: 71, scope: !824)
!829 = !DILocation(line: 262, column: 21, scope: !824)
!830 = !DILocation(line: 262, column: 77, scope: !824)
!831 = !DILocation(line: 261, column: 6, scope: !832)
!832 = !DILexicalBlockFile(scope: !752, file: !135, discriminator: 1)
!833 = !DILocation(line: 264, column: 23, scope: !834)
!834 = distinct !DILexicalBlock(scope: !816, file: !135, line: 262, column: 84)
!835 = !DILocation(line: 264, column: 32, scope: !834)
!836 = !DILocation(line: 264, column: 3, scope: !834)
!837 = !DILocation(line: 265, column: 2, scope: !834)
!838 = !DILocation(line: 267, column: 9, scope: !752)
!839 = !DILocation(line: 267, column: 18, scope: !752)
!840 = !DILocation(line: 267, column: 22, scope: !752)
!841 = !DILocation(line: 267, column: 31, scope: !832)
!842 = !DILocation(line: 267, column: 9, scope: !832)
!843 = !DILocation(line: 267, column: 60, scope: !844)
!844 = !DILexicalBlockFile(scope: !752, file: !135, discriminator: 2)
!845 = !DILocation(line: 267, column: 69, scope: !844)
!846 = !DILocation(line: 267, column: 74, scope: !844)
!847 = !DILocation(line: 267, column: 39, scope: !844)
!848 = !DILocation(line: 267, column: 81, scope: !844)
!849 = !DILocation(line: 267, column: 9, scope: !844)
!850 = !DILocation(line: 267, column: 9, scope: !851)
!851 = !DILexicalBlockFile(scope: !752, file: !135, discriminator: 3)
!852 = !DILocation(line: 267, column: 2, scope: !851)
!853 = distinct !DISubprogram(name: "command_global_history_prev", scope: !135, file: !135, line: 275, type: !742, isLocal: false, isDefinition: true, scopeLine: 276, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!854 = !DILocalVariable(name: "window", arg: 1, scope: !853, file: !135, line: 275, type: !65)
!855 = !DILocation(line: 275, column: 53, scope: !853)
!856 = !DILocalVariable(name: "text", arg: 2, scope: !853, file: !135, line: 275, type: !11)
!857 = !DILocation(line: 275, column: 73, scope: !853)
!858 = !DILocation(line: 277, column: 34, scope: !853)
!859 = !DILocation(line: 277, column: 42, scope: !853)
!860 = !DILocation(line: 277, column: 9, scope: !853)
!861 = !DILocation(line: 277, column: 2, scope: !853)
!862 = distinct !DISubprogram(name: "command_history_next", scope: !135, file: !135, line: 300, type: !742, isLocal: false, isDefinition: true, scopeLine: 301, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!863 = !DILocalVariable(name: "window", arg: 1, scope: !862, file: !135, line: 300, type: !65)
!864 = !DILocation(line: 300, column: 46, scope: !862)
!865 = !DILocalVariable(name: "text", arg: 2, scope: !862, file: !135, line: 300, type: !11)
!866 = !DILocation(line: 300, column: 66, scope: !862)
!867 = !DILocation(line: 302, column: 34, scope: !862)
!868 = !DILocation(line: 302, column: 42, scope: !862)
!869 = !DILocation(line: 302, column: 9, scope: !862)
!870 = !DILocation(line: 302, column: 2, scope: !862)
!871 = distinct !DISubprogram(name: "command_history_next_int", scope: !135, file: !135, line: 280, type: !753, isLocal: true, isDefinition: true, scopeLine: 281, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!872 = !DILocalVariable(name: "window", arg: 1, scope: !871, file: !135, line: 280, type: !65)
!873 = !DILocation(line: 280, column: 57, scope: !871)
!874 = !DILocalVariable(name: "text", arg: 2, scope: !871, file: !135, line: 280, type: !11)
!875 = !DILocation(line: 280, column: 77, scope: !871)
!876 = !DILocalVariable(name: "global", arg: 3, scope: !871, file: !135, line: 280, type: !596)
!877 = !DILocation(line: 280, column: 92, scope: !871)
!878 = !DILocalVariable(name: "history", scope: !871, file: !135, line: 282, type: !15)
!879 = !DILocation(line: 282, column: 15, scope: !871)
!880 = !DILocalVariable(name: "pos", scope: !871, file: !135, line: 283, type: !22)
!881 = !DILocation(line: 283, column: 9, scope: !871)
!882 = !DILocation(line: 285, column: 36, scope: !871)
!883 = !DILocation(line: 285, column: 12, scope: !871)
!884 = !DILocation(line: 285, column: 10, scope: !871)
!885 = !DILocation(line: 286, column: 8, scope: !871)
!886 = !DILocation(line: 286, column: 17, scope: !871)
!887 = !DILocation(line: 286, column: 6, scope: !871)
!888 = !DILocation(line: 288, column: 8, scope: !889)
!889 = distinct !DILexicalBlock(scope: !871, file: !135, line: 288, column: 6)
!890 = !DILocation(line: 288, column: 17, scope: !889)
!891 = !DILocation(line: 288, column: 7, scope: !889)
!892 = !DILocation(line: 288, column: 23, scope: !889)
!893 = !DILocation(line: 288, column: 26, scope: !894)
!894 = !DILexicalBlockFile(scope: !889, file: !135, discriminator: 1)
!895 = !DILocation(line: 288, column: 30, scope: !894)
!896 = !DILocation(line: 288, column: 6, scope: !894)
!897 = !DILocation(line: 289, column: 44, scope: !889)
!898 = !DILocation(line: 289, column: 44, scope: !894)
!899 = !DILocation(line: 289, column: 59, scope: !900)
!900 = !DILexicalBlockFile(scope: !889, file: !135, discriminator: 2)
!901 = !DILocation(line: 289, column: 44, scope: !900)
!902 = !DILocation(line: 289, column: 44, scope: !903)
!903 = !DILexicalBlockFile(scope: !889, file: !135, discriminator: 3)
!904 = !DILocation(line: 289, column: 68, scope: !903)
!905 = !DILocation(line: 289, column: 77, scope: !903)
!906 = !DILocation(line: 289, column: 18, scope: !903)
!907 = !DILocation(line: 289, column: 3, scope: !903)
!908 = !DILocation(line: 289, column: 12, scope: !903)
!909 = !DILocation(line: 289, column: 16, scope: !903)
!910 = !DILocation(line: 290, column: 2, scope: !871)
!911 = !DILocation(line: 290, column: 11, scope: !871)
!912 = !DILocation(line: 290, column: 16, scope: !871)
!913 = !DILocation(line: 292, column: 7, scope: !914)
!914 = distinct !DILexicalBlock(scope: !871, file: !135, line: 292, column: 6)
!915 = !DILocation(line: 292, column: 6, scope: !914)
!916 = !DILocation(line: 292, column: 12, scope: !914)
!917 = !DILocation(line: 292, column: 20, scope: !914)
!918 = !DILocation(line: 293, column: 7, scope: !914)
!919 = !DILocation(line: 293, column: 11, scope: !914)
!920 = !DILocation(line: 293, column: 18, scope: !914)
!921 = !DILocation(line: 293, column: 53, scope: !922)
!922 = !DILexicalBlockFile(scope: !914, file: !135, discriminator: 1)
!923 = !DILocation(line: 293, column: 58, scope: !922)
!924 = !DILocation(line: 293, column: 32, scope: !922)
!925 = !DILocation(line: 293, column: 65, scope: !922)
!926 = !DILocation(line: 293, column: 71, scope: !922)
!927 = !DILocation(line: 293, column: 21, scope: !922)
!928 = !DILocation(line: 293, column: 77, scope: !922)
!929 = !DILocation(line: 292, column: 6, scope: !930)
!930 = !DILexicalBlockFile(scope: !871, file: !135, discriminator: 1)
!931 = !DILocation(line: 295, column: 23, scope: !932)
!932 = distinct !DILexicalBlock(scope: !914, file: !135, line: 293, column: 84)
!933 = !DILocation(line: 295, column: 32, scope: !932)
!934 = !DILocation(line: 295, column: 3, scope: !932)
!935 = !DILocation(line: 296, column: 2, scope: !932)
!936 = !DILocation(line: 297, column: 9, scope: !871)
!937 = !DILocation(line: 297, column: 18, scope: !871)
!938 = !DILocation(line: 297, column: 22, scope: !871)
!939 = !DILocation(line: 297, column: 9, scope: !930)
!940 = !DILocation(line: 297, column: 58, scope: !941)
!941 = !DILexicalBlockFile(scope: !871, file: !135, discriminator: 2)
!942 = !DILocation(line: 297, column: 67, scope: !941)
!943 = !DILocation(line: 297, column: 72, scope: !941)
!944 = !DILocation(line: 297, column: 37, scope: !941)
!945 = !DILocation(line: 297, column: 79, scope: !941)
!946 = !DILocation(line: 297, column: 9, scope: !941)
!947 = !DILocation(line: 297, column: 9, scope: !948)
!948 = !DILexicalBlockFile(scope: !871, file: !135, discriminator: 3)
!949 = !DILocation(line: 297, column: 2, scope: !948)
!950 = distinct !DISubprogram(name: "command_global_history_next", scope: !135, file: !135, line: 305, type: !742, isLocal: false, isDefinition: true, scopeLine: 306, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!951 = !DILocalVariable(name: "window", arg: 1, scope: !950, file: !135, line: 305, type: !65)
!952 = !DILocation(line: 305, column: 53, scope: !950)
!953 = !DILocalVariable(name: "text", arg: 2, scope: !950, file: !135, line: 305, type: !11)
!954 = !DILocation(line: 305, column: 73, scope: !950)
!955 = !DILocation(line: 307, column: 34, scope: !950)
!956 = !DILocation(line: 307, column: 42, scope: !950)
!957 = !DILocation(line: 307, column: 9, scope: !950)
!958 = !DILocation(line: 307, column: 2, scope: !950)
!959 = distinct !DISubprogram(name: "command_history_delete_current", scope: !135, file: !135, line: 310, type: !742, isLocal: false, isDefinition: true, scopeLine: 311, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!960 = !DILocalVariable(name: "window", arg: 1, scope: !959, file: !135, line: 310, type: !65)
!961 = !DILocation(line: 310, column: 56, scope: !959)
!962 = !DILocalVariable(name: "text", arg: 2, scope: !959, file: !135, line: 310, type: !11)
!963 = !DILocation(line: 310, column: 76, scope: !959)
!964 = !DILocalVariable(name: "history", scope: !959, file: !135, line: 312, type: !15)
!965 = !DILocation(line: 312, column: 15, scope: !959)
!966 = !DILocalVariable(name: "pos", scope: !959, file: !135, line: 313, type: !22)
!967 = !DILocation(line: 313, column: 9, scope: !959)
!968 = !DILocation(line: 315, column: 36, scope: !959)
!969 = !DILocation(line: 315, column: 12, scope: !959)
!970 = !DILocation(line: 315, column: 10, scope: !959)
!971 = !DILocation(line: 316, column: 8, scope: !959)
!972 = !DILocation(line: 316, column: 17, scope: !959)
!973 = !DILocation(line: 316, column: 6, scope: !959)
!974 = !DILocation(line: 318, column: 6, scope: !975)
!975 = distinct !DILexicalBlock(scope: !959, file: !135, line: 318, column: 6)
!976 = !DILocation(line: 318, column: 10, scope: !975)
!977 = !DILocation(line: 318, column: 17, scope: !975)
!978 = !DILocation(line: 318, column: 52, scope: !979)
!979 = !DILexicalBlockFile(scope: !975, file: !135, discriminator: 1)
!980 = !DILocation(line: 318, column: 57, scope: !979)
!981 = !DILocation(line: 318, column: 31, scope: !979)
!982 = !DILocation(line: 318, column: 64, scope: !979)
!983 = !DILocation(line: 318, column: 70, scope: !979)
!984 = !DILocation(line: 318, column: 20, scope: !979)
!985 = !DILocation(line: 318, column: 76, scope: !979)
!986 = !DILocation(line: 318, column: 6, scope: !979)
!987 = !DILocation(line: 319, column: 25, scope: !988)
!988 = distinct !DILexicalBlock(scope: !975, file: !135, line: 318, column: 82)
!989 = !DILocation(line: 319, column: 30, scope: !988)
!990 = !DILocation(line: 319, column: 4, scope: !988)
!991 = !DILocation(line: 319, column: 37, scope: !988)
!992 = !DILocation(line: 319, column: 46, scope: !988)
!993 = !DILocation(line: 319, column: 51, scope: !988)
!994 = !DILocation(line: 320, column: 40, scope: !988)
!995 = !DILocation(line: 320, column: 3, scope: !988)
!996 = !DILocation(line: 321, column: 2, scope: !988)
!997 = !DILocation(line: 323, column: 2, scope: !959)
!998 = !DILocation(line: 323, column: 11, scope: !959)
!999 = !DILocation(line: 323, column: 16, scope: !959)
!1000 = !DILocation(line: 324, column: 9, scope: !959)
!1001 = !DILocation(line: 324, column: 18, scope: !959)
!1002 = !DILocation(line: 324, column: 22, scope: !959)
!1003 = !DILocation(line: 324, column: 9, scope: !1004)
!1004 = !DILexicalBlockFile(scope: !959, file: !135, discriminator: 1)
!1005 = !DILocation(line: 324, column: 58, scope: !1006)
!1006 = !DILexicalBlockFile(scope: !959, file: !135, discriminator: 2)
!1007 = !DILocation(line: 324, column: 67, scope: !1006)
!1008 = !DILocation(line: 324, column: 72, scope: !1006)
!1009 = !DILocation(line: 324, column: 37, scope: !1006)
!1010 = !DILocation(line: 324, column: 79, scope: !1006)
!1011 = !DILocation(line: 324, column: 9, scope: !1006)
!1012 = !DILocation(line: 324, column: 9, scope: !1013)
!1013 = !DILexicalBlockFile(scope: !959, file: !135, discriminator: 3)
!1014 = !DILocation(line: 324, column: 2, scope: !1013)
!1015 = distinct !DISubprogram(name: "command_history_clear_pos_func", scope: !135, file: !135, line: 327, type: !1016, isLocal: false, isDefinition: true, scopeLine: 328, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{null, !15, !28}
!1018 = !DILocalVariable(name: "history", arg: 1, scope: !1015, file: !135, line: 327, type: !15)
!1019 = !DILocation(line: 327, column: 50, scope: !1015)
!1020 = !DILocalVariable(name: "user_data", arg: 2, scope: !1015, file: !135, line: 327, type: !28)
!1021 = !DILocation(line: 327, column: 68, scope: !1015)
!1022 = !DILocation(line: 329, column: 2, scope: !1015)
!1023 = !DILocation(line: 329, column: 11, scope: !1015)
!1024 = !DILocation(line: 329, column: 15, scope: !1015)
!1025 = !DILocation(line: 330, column: 1, scope: !1015)
!1026 = distinct !DISubprogram(name: "command_history_clear_pos", scope: !135, file: !135, line: 332, type: !1027, isLocal: false, isDefinition: true, scopeLine: 333, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{null, !65}
!1029 = !DILocalVariable(name: "window", arg: 1, scope: !1026, file: !135, line: 332, type: !65)
!1030 = !DILocation(line: 332, column: 44, scope: !1026)
!1031 = !DILocation(line: 334, column: 18, scope: !1026)
!1032 = !DILocation(line: 334, column: 2, scope: !1026)
!1033 = !DILocation(line: 336, column: 1, scope: !1026)
!1034 = distinct !DISubprogram(name: "command_history_create", scope: !135, file: !135, line: 338, type: !449, isLocal: false, isDefinition: true, scopeLine: 339, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1035 = !DILocalVariable(name: "name", arg: 1, scope: !1034, file: !135, line: 338, type: !11)
!1036 = !DILocation(line: 338, column: 49, scope: !1034)
!1037 = !DILocalVariable(name: "rec", scope: !1034, file: !135, line: 340, type: !15)
!1038 = !DILocation(line: 340, column: 15, scope: !1034)
!1039 = !DILocation(line: 342, column: 25, scope: !1034)
!1040 = !DILocation(line: 342, column: 9, scope: !1034)
!1041 = !DILocation(line: 342, column: 6, scope: !1034)
!1042 = !DILocation(line: 344, column: 6, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1034, file: !135, line: 344, column: 6)
!1044 = !DILocation(line: 344, column: 11, scope: !1043)
!1045 = !DILocation(line: 344, column: 6, scope: !1034)
!1046 = !DILocation(line: 345, column: 24, scope: !1043)
!1047 = !DILocation(line: 345, column: 15, scope: !1043)
!1048 = !DILocation(line: 345, column: 3, scope: !1043)
!1049 = !DILocation(line: 345, column: 8, scope: !1043)
!1050 = !DILocation(line: 345, column: 13, scope: !1043)
!1051 = !DILocation(line: 347, column: 29, scope: !1034)
!1052 = !DILocation(line: 347, column: 40, scope: !1034)
!1053 = !DILocation(line: 347, column: 14, scope: !1034)
!1054 = !DILocation(line: 347, column: 12, scope: !1034)
!1055 = !DILocation(line: 349, column: 9, scope: !1034)
!1056 = !DILocation(line: 349, column: 2, scope: !1034)
!1057 = distinct !DISubprogram(name: "command_history_clear", scope: !135, file: !135, line: 352, type: !1058, isLocal: false, isDefinition: true, scopeLine: 353, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{null, !15}
!1060 = !DILocalVariable(name: "history", arg: 1, scope: !1057, file: !135, line: 352, type: !15)
!1061 = !DILocation(line: 352, column: 41, scope: !1057)
!1062 = !DILocalVariable(name: "link", scope: !1057, file: !135, line: 354, type: !22)
!1063 = !DILocation(line: 354, column: 9, scope: !1057)
!1064 = !DILocalVariable(name: "next", scope: !1057, file: !135, line: 354, type: !22)
!1065 = !DILocation(line: 354, column: 16, scope: !1057)
!1066 = !DILocation(line: 356, column: 2, scope: !1057)
!1067 = distinct !{!1067, !1066}
!1068 = !DILocation(line: 356, column: 10, scope: !1069)
!1069 = !DILexicalBlockFile(scope: !1070, file: !135, discriminator: 1)
!1070 = distinct !DILexicalBlock(scope: !1071, file: !135, line: 356, column: 10)
!1071 = distinct !DILexicalBlock(scope: !1057, file: !135, line: 356, column: 4)
!1072 = !DILocation(line: 356, column: 18, scope: !1069)
!1073 = !DILocation(line: 356, column: 5, scope: !1074)
!1074 = !DILexicalBlockFile(scope: !1075, file: !135, discriminator: 2)
!1075 = distinct !DILexicalBlock(scope: !1070, file: !135, line: 356, column: 3)
!1076 = !DILocation(line: 356, column: 14, scope: !1077)
!1077 = !DILexicalBlockFile(scope: !1078, file: !135, discriminator: 3)
!1078 = distinct !DILexicalBlock(scope: !1070, file: !135, line: 356, column: 12)
!1079 = !DILocation(line: 356, column: 102, scope: !1077)
!1080 = !DILocation(line: 356, column: 113, scope: !1081)
!1081 = !DILexicalBlockFile(scope: !1071, file: !135, discriminator: 4)
!1082 = !DILocation(line: 358, column: 33, scope: !1057)
!1083 = !DILocation(line: 358, column: 2, scope: !1057)
!1084 = !DILocation(line: 359, column: 36, scope: !1057)
!1085 = !DILocation(line: 359, column: 9, scope: !1057)
!1086 = !DILocation(line: 359, column: 7, scope: !1057)
!1087 = !DILocation(line: 360, column: 2, scope: !1057)
!1088 = !DILocation(line: 360, column: 9, scope: !1089)
!1089 = !DILexicalBlockFile(scope: !1057, file: !135, discriminator: 1)
!1090 = !DILocation(line: 360, column: 14, scope: !1089)
!1091 = !DILocation(line: 360, column: 2, scope: !1089)
!1092 = !DILocation(line: 361, column: 36, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1057, file: !135, line: 360, column: 22)
!1094 = !DILocation(line: 361, column: 45, scope: !1093)
!1095 = !DILocation(line: 361, column: 10, scope: !1093)
!1096 = !DILocation(line: 361, column: 8, scope: !1093)
!1097 = !DILocation(line: 362, column: 40, scope: !1093)
!1098 = !DILocation(line: 362, column: 3, scope: !1093)
!1099 = !DILocation(line: 363, column: 10, scope: !1093)
!1100 = !DILocation(line: 363, column: 8, scope: !1093)
!1101 = !DILocation(line: 360, column: 2, scope: !1102)
!1102 = !DILexicalBlockFile(scope: !1057, file: !135, discriminator: 2)
!1103 = distinct !{!1103, !1087}
!1104 = !DILocation(line: 365, column: 2, scope: !1057)
!1105 = !DILocation(line: 365, column: 11, scope: !1057)
!1106 = !DILocation(line: 365, column: 17, scope: !1057)
!1107 = !DILocation(line: 366, column: 1, scope: !1057)
!1108 = !DILocation(line: 366, column: 1, scope: !1089)
!1109 = distinct !DISubprogram(name: "command_history_destroy", scope: !135, file: !135, line: 368, type: !1058, isLocal: false, isDefinition: true, scopeLine: 369, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1110 = !DILocalVariable(name: "history", arg: 1, scope: !1109, file: !135, line: 368, type: !15)
!1111 = !DILocation(line: 368, column: 43, scope: !1109)
!1112 = !DILocation(line: 370, column: 2, scope: !1109)
!1113 = distinct !{!1113, !1112}
!1114 = !DILocation(line: 370, column: 10, scope: !1115)
!1115 = !DILexicalBlockFile(scope: !1116, file: !135, discriminator: 1)
!1116 = distinct !DILexicalBlock(scope: !1117, file: !135, line: 370, column: 10)
!1117 = distinct !DILexicalBlock(scope: !1109, file: !135, line: 370, column: 4)
!1118 = !DILocation(line: 370, column: 18, scope: !1115)
!1119 = !DILocation(line: 370, column: 5, scope: !1120)
!1120 = !DILexicalBlockFile(scope: !1121, file: !135, discriminator: 2)
!1121 = distinct !DILexicalBlock(scope: !1116, file: !135, line: 370, column: 3)
!1122 = !DILocation(line: 370, column: 14, scope: !1123)
!1123 = !DILexicalBlockFile(scope: !1124, file: !135, discriminator: 3)
!1124 = distinct !DILexicalBlock(scope: !1116, file: !135, line: 370, column: 12)
!1125 = !DILocation(line: 370, column: 102, scope: !1123)
!1126 = !DILocation(line: 370, column: 113, scope: !1127)
!1127 = !DILexicalBlockFile(scope: !1117, file: !135, discriminator: 4)
!1128 = !DILocation(line: 373, column: 2, scope: !1109)
!1129 = distinct !{!1129, !1128}
!1130 = !DILocation(line: 373, column: 10, scope: !1131)
!1131 = !DILexicalBlockFile(scope: !1132, file: !135, discriminator: 1)
!1132 = distinct !DILexicalBlock(scope: !1133, file: !135, line: 373, column: 10)
!1133 = distinct !DILexicalBlock(scope: !1109, file: !135, line: 373, column: 4)
!1134 = !DILocation(line: 373, column: 19, scope: !1131)
!1135 = !DILocation(line: 373, column: 28, scope: !1131)
!1136 = !DILocation(line: 373, column: 36, scope: !1137)
!1137 = !DILexicalBlockFile(scope: !1138, file: !135, discriminator: 2)
!1138 = distinct !DILexicalBlock(scope: !1132, file: !135, line: 373, column: 34)
!1139 = !DILocation(line: 373, column: 45, scope: !1140)
!1140 = !DILexicalBlockFile(scope: !1141, file: !135, discriminator: 3)
!1141 = distinct !DILexicalBlock(scope: !1132, file: !135, line: 373, column: 43)
!1142 = !DILocation(line: 373, column: 140, scope: !1140)
!1143 = !DILocation(line: 373, column: 151, scope: !1144)
!1144 = !DILexicalBlockFile(scope: !1133, file: !135, discriminator: 4)
!1145 = !DILocation(line: 375, column: 29, scope: !1109)
!1146 = !DILocation(line: 375, column: 40, scope: !1109)
!1147 = !DILocation(line: 375, column: 14, scope: !1109)
!1148 = !DILocation(line: 375, column: 12, scope: !1109)
!1149 = !DILocation(line: 376, column: 24, scope: !1109)
!1150 = !DILocation(line: 376, column: 2, scope: !1109)
!1151 = !DILocation(line: 378, column: 9, scope: !1109)
!1152 = !DILocation(line: 378, column: 18, scope: !1109)
!1153 = !DILocation(line: 378, column: 2, scope: !1109)
!1154 = !DILocation(line: 379, column: 9, scope: !1109)
!1155 = !DILocation(line: 379, column: 2, scope: !1109)
!1156 = !DILocation(line: 380, column: 1, scope: !1109)
!1157 = !DILocation(line: 380, column: 1, scope: !1158)
!1158 = !DILexicalBlockFile(scope: !1109, file: !135, discriminator: 1)
!1159 = distinct !DISubprogram(name: "command_history_link", scope: !135, file: !135, line: 382, type: !1160, isLocal: false, isDefinition: true, scopeLine: 383, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{null, !11}
!1162 = !DILocalVariable(name: "name", arg: 1, scope: !1159, file: !135, line: 382, type: !11)
!1163 = !DILocation(line: 382, column: 39, scope: !1159)
!1164 = !DILocalVariable(name: "rec", scope: !1159, file: !135, line: 384, type: !15)
!1165 = !DILocation(line: 384, column: 15, scope: !1159)
!1166 = !DILocation(line: 385, column: 34, scope: !1159)
!1167 = !DILocation(line: 385, column: 8, scope: !1159)
!1168 = !DILocation(line: 385, column: 6, scope: !1159)
!1169 = !DILocation(line: 387, column: 6, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1159, file: !135, line: 387, column: 6)
!1171 = !DILocation(line: 387, column: 10, scope: !1170)
!1172 = !DILocation(line: 387, column: 6, scope: !1159)
!1173 = !DILocation(line: 388, column: 32, scope: !1170)
!1174 = !DILocation(line: 388, column: 9, scope: !1170)
!1175 = !DILocation(line: 388, column: 7, scope: !1170)
!1176 = !DILocation(line: 388, column: 3, scope: !1170)
!1177 = !DILocation(line: 390, column: 2, scope: !1159)
!1178 = !DILocation(line: 390, column: 7, scope: !1159)
!1179 = !DILocation(line: 390, column: 15, scope: !1159)
!1180 = !DILocation(line: 391, column: 1, scope: !1159)
!1181 = distinct !DISubprogram(name: "command_history_unlink", scope: !135, file: !135, line: 393, type: !1160, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1182 = !DILocalVariable(name: "name", arg: 1, scope: !1181, file: !135, line: 393, type: !11)
!1183 = !DILocation(line: 393, column: 41, scope: !1181)
!1184 = !DILocalVariable(name: "rec", scope: !1181, file: !135, line: 395, type: !15)
!1185 = !DILocation(line: 395, column: 15, scope: !1181)
!1186 = !DILocation(line: 396, column: 34, scope: !1181)
!1187 = !DILocation(line: 396, column: 8, scope: !1181)
!1188 = !DILocation(line: 396, column: 6, scope: !1181)
!1189 = !DILocation(line: 398, column: 6, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1181, file: !135, line: 398, column: 6)
!1191 = !DILocation(line: 398, column: 10, scope: !1190)
!1192 = !DILocation(line: 398, column: 6, scope: !1181)
!1193 = !DILocation(line: 399, column: 3, scope: !1190)
!1194 = !DILocation(line: 401, column: 9, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1181, file: !135, line: 401, column: 6)
!1196 = !DILocation(line: 401, column: 14, scope: !1195)
!1197 = !DILocation(line: 401, column: 6, scope: !1195)
!1198 = !DILocation(line: 401, column: 24, scope: !1195)
!1199 = !DILocation(line: 401, column: 6, scope: !1181)
!1200 = !DILocation(line: 402, column: 27, scope: !1195)
!1201 = !DILocation(line: 402, column: 3, scope: !1195)
!1202 = !DILocation(line: 403, column: 1, scope: !1181)
!1203 = distinct !DISubprogram(name: "command_history_init", scope: !135, file: !135, line: 466, type: !1204, isLocal: false, isDefinition: true, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{null}
!1206 = !DILocation(line: 468, column: 2, scope: !1203)
!1207 = !DILocation(line: 469, column: 2, scope: !1203)
!1208 = !DILocation(line: 471, column: 2, scope: !1203)
!1209 = !DILocation(line: 473, column: 18, scope: !1203)
!1210 = !DILocation(line: 475, column: 19, scope: !1203)
!1211 = !DILocation(line: 475, column: 17, scope: !1203)
!1212 = !DILocation(line: 477, column: 2, scope: !1203)
!1213 = !DILocation(line: 478, column: 2, scope: !1203)
!1214 = !DILocation(line: 479, column: 2, scope: !1203)
!1215 = !DILocation(line: 480, column: 2, scope: !1203)
!1216 = !DILocation(line: 481, column: 2, scope: !1203)
!1217 = !DILocation(line: 482, column: 2, scope: !1203)
!1218 = !DILocation(line: 483, column: 1, scope: !1203)
!1219 = distinct !DISubprogram(name: "special_history_func", scope: !135, file: !135, line: 435, type: !1220, isLocal: true, isDefinition: true, scopeLine: 436, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!20, !11, !4, !1222}
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!1223 = !DILocalVariable(name: "text", arg: 1, scope: !1219, file: !135, line: 435, type: !11)
!1224 = !DILocation(line: 435, column: 47, scope: !1219)
!1225 = !DILocalVariable(name: "item", arg: 2, scope: !1219, file: !135, line: 435, type: !4)
!1226 = !DILocation(line: 435, column: 59, scope: !1219)
!1227 = !DILocalVariable(name: "free_ret", arg: 3, scope: !1219, file: !135, line: 435, type: !1222)
!1228 = !DILocation(line: 435, column: 70, scope: !1219)
!1229 = !DILocalVariable(name: "window", scope: !1219, file: !135, line: 437, type: !65)
!1230 = !DILocation(line: 437, column: 14, scope: !1219)
!1231 = !DILocalVariable(name: "history", scope: !1219, file: !135, line: 438, type: !15)
!1232 = !DILocation(line: 438, column: 15, scope: !1219)
!1233 = !DILocalVariable(name: "tmp", scope: !1219, file: !135, line: 439, type: !22)
!1234 = !DILocation(line: 439, column: 9, scope: !1219)
!1235 = !DILocalVariable(name: "findtext", scope: !1219, file: !135, line: 440, type: !20)
!1236 = !DILocation(line: 440, column: 15, scope: !1219)
!1237 = !DILocalVariable(name: "ret", scope: !1219, file: !135, line: 440, type: !20)
!1238 = !DILocation(line: 440, column: 26, scope: !1219)
!1239 = !DILocation(line: 442, column: 11, scope: !1219)
!1240 = !DILocation(line: 442, column: 16, scope: !1219)
!1241 = !DILocation(line: 442, column: 25, scope: !1242)
!1242 = !DILexicalBlockFile(scope: !1219, file: !135, discriminator: 1)
!1243 = !DILocation(line: 442, column: 11, scope: !1242)
!1244 = !DILocation(line: 442, column: 72, scope: !1245)
!1245 = !DILexicalBlockFile(scope: !1219, file: !135, discriminator: 2)
!1246 = !DILocation(line: 442, column: 55, scope: !1245)
!1247 = !DILocation(line: 442, column: 80, scope: !1245)
!1248 = !DILocation(line: 442, column: 39, scope: !1245)
!1249 = !DILocation(line: 442, column: 11, scope: !1245)
!1250 = !DILocation(line: 442, column: 11, scope: !1251)
!1251 = !DILexicalBlockFile(scope: !1219, file: !135, discriminator: 3)
!1252 = !DILocation(line: 442, column: 9, scope: !1251)
!1253 = !DILocation(line: 444, column: 37, scope: !1219)
!1254 = !DILocation(line: 444, column: 13, scope: !1219)
!1255 = !DILocation(line: 444, column: 11, scope: !1219)
!1256 = !DILocation(line: 445, column: 6, scope: !1219)
!1257 = !DILocation(line: 447, column: 36, scope: !1219)
!1258 = !DILocation(line: 447, column: 12, scope: !1219)
!1259 = !DILocation(line: 447, column: 10, scope: !1219)
!1260 = !DILocation(line: 448, column: 40, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1219, file: !135, line: 448, column: 2)
!1262 = !DILocation(line: 448, column: 13, scope: !1261)
!1263 = !DILocation(line: 448, column: 11, scope: !1261)
!1264 = !DILocation(line: 448, column: 7, scope: !1261)
!1265 = !DILocation(line: 448, column: 50, scope: !1266)
!1266 = !DILexicalBlockFile(scope: !1267, file: !135, discriminator: 1)
!1267 = distinct !DILexicalBlock(scope: !1261, file: !135, line: 448, column: 2)
!1268 = !DILocation(line: 448, column: 54, scope: !1266)
!1269 = !DILocation(line: 448, column: 2, scope: !1266)
!1270 = !DILocalVariable(name: "line", scope: !1271, file: !135, line: 449, type: !11)
!1271 = distinct !DILexicalBlock(scope: !1267, file: !135, line: 448, column: 109)
!1272 = !DILocation(line: 449, column: 15, scope: !1271)
!1273 = !DILocation(line: 449, column: 44, scope: !1271)
!1274 = !DILocation(line: 449, column: 49, scope: !1271)
!1275 = !DILocation(line: 449, column: 23, scope: !1271)
!1276 = !DILocation(line: 449, column: 56, scope: !1271)
!1277 = !DILocation(line: 451, column: 23, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1271, file: !135, line: 451, column: 7)
!1279 = !DILocation(line: 451, column: 33, scope: !1278)
!1280 = !DILocation(line: 451, column: 7, scope: !1278)
!1281 = !DILocation(line: 451, column: 7, scope: !1271)
!1282 = !DILocation(line: 452, column: 5, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1278, file: !135, line: 451, column: 40)
!1284 = !DILocation(line: 452, column: 14, scope: !1283)
!1285 = !DILocation(line: 453, column: 40, scope: !1283)
!1286 = !DILocation(line: 453, column: 31, scope: !1283)
!1287 = !DILocation(line: 453, column: 29, scope: !1283)
!1288 = !DILocation(line: 454, column: 3, scope: !1283)
!1289 = !DILocation(line: 455, column: 2, scope: !1271)
!1290 = !DILocation(line: 448, column: 94, scope: !1291)
!1291 = !DILexicalBlockFile(scope: !1267, file: !135, discriminator: 2)
!1292 = !DILocation(line: 448, column: 103, scope: !1291)
!1293 = !DILocation(line: 448, column: 68, scope: !1291)
!1294 = !DILocation(line: 448, column: 66, scope: !1291)
!1295 = !DILocation(line: 448, column: 2, scope: !1291)
!1296 = distinct !{!1296, !1297}
!1297 = !DILocation(line: 448, column: 2, scope: !1219)
!1298 = !DILocation(line: 456, column: 9, scope: !1219)
!1299 = !DILocation(line: 456, column: 2, scope: !1219)
!1300 = !DILocation(line: 458, column: 9, scope: !1219)
!1301 = !DILocation(line: 458, column: 2, scope: !1219)
!1302 = distinct !DISubprogram(name: "read_settings", scope: !135, file: !135, line: 461, type: !1204, isLocal: true, isDefinition: true, scopeLine: 462, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1303 = !DILocation(line: 463, column: 19, scope: !1302)
!1304 = !DILocation(line: 463, column: 17, scope: !1302)
!1305 = !DILocation(line: 464, column: 1, scope: !1302)
!1306 = distinct !DISubprogram(name: "sig_window_created", scope: !135, file: !135, line: 405, type: !1307, isLocal: true, isDefinition: true, scopeLine: 406, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{null, !65, !33}
!1309 = !DILocalVariable(name: "window", arg: 1, scope: !1306, file: !135, line: 405, type: !65)
!1310 = !DILocation(line: 405, column: 44, scope: !1306)
!1311 = !DILocalVariable(name: "automatic", arg: 2, scope: !1306, file: !135, line: 405, type: !33)
!1312 = !DILocation(line: 405, column: 56, scope: !1306)
!1313 = !DILocation(line: 407, column: 20, scope: !1306)
!1314 = !DILocation(line: 407, column: 2, scope: !1306)
!1315 = !DILocation(line: 407, column: 10, scope: !1306)
!1316 = !DILocation(line: 407, column: 18, scope: !1306)
!1317 = !DILocation(line: 408, column: 1, scope: !1306)
!1318 = distinct !DISubprogram(name: "sig_window_destroyed", scope: !135, file: !135, line: 410, type: !1027, isLocal: true, isDefinition: true, scopeLine: 411, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1319 = !DILocalVariable(name: "window", arg: 1, scope: !1318, file: !135, line: 410, type: !65)
!1320 = !DILocation(line: 410, column: 46, scope: !1318)
!1321 = !DILocation(line: 412, column: 25, scope: !1318)
!1322 = !DILocation(line: 412, column: 33, scope: !1318)
!1323 = !DILocation(line: 412, column: 2, scope: !1318)
!1324 = !DILocation(line: 413, column: 26, scope: !1318)
!1325 = !DILocation(line: 413, column: 34, scope: !1318)
!1326 = !DILocation(line: 413, column: 2, scope: !1318)
!1327 = !DILocation(line: 414, column: 9, scope: !1318)
!1328 = !DILocation(line: 414, column: 17, scope: !1318)
!1329 = !DILocation(line: 414, column: 2, scope: !1318)
!1330 = !DILocation(line: 415, column: 1, scope: !1318)
!1331 = distinct !DISubprogram(name: "sig_window_history_changed", scope: !135, file: !135, line: 429, type: !1332, isLocal: true, isDefinition: true, scopeLine: 430, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{null, !65, !11}
!1334 = !DILocalVariable(name: "window", arg: 1, scope: !1331, file: !135, line: 429, type: !65)
!1335 = !DILocation(line: 429, column: 52, scope: !1331)
!1336 = !DILocalVariable(name: "oldname", arg: 2, scope: !1331, file: !135, line: 429, type: !11)
!1337 = !DILocation(line: 429, column: 72, scope: !1331)
!1338 = !DILocation(line: 431, column: 23, scope: !1331)
!1339 = !DILocation(line: 431, column: 31, scope: !1331)
!1340 = !DILocation(line: 431, column: 2, scope: !1331)
!1341 = !DILocation(line: 432, column: 25, scope: !1331)
!1342 = !DILocation(line: 432, column: 2, scope: !1331)
!1343 = !DILocation(line: 433, column: 1, scope: !1331)
!1344 = distinct !DISubprogram(name: "sig_window_history_cleared", scope: !135, file: !135, line: 417, type: !1332, isLocal: true, isDefinition: true, scopeLine: 417, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1345 = !DILocalVariable(name: "window", arg: 1, scope: !1344, file: !135, line: 417, type: !65)
!1346 = !DILocation(line: 417, column: 52, scope: !1344)
!1347 = !DILocalVariable(name: "name", arg: 2, scope: !1344, file: !135, line: 417, type: !11)
!1348 = !DILocation(line: 417, column: 72, scope: !1344)
!1349 = !DILocalVariable(name: "history", scope: !1344, file: !135, line: 418, type: !15)
!1350 = !DILocation(line: 418, column: 15, scope: !1344)
!1351 = !DILocation(line: 420, column: 6, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1344, file: !135, line: 420, column: 6)
!1353 = !DILocation(line: 420, column: 11, scope: !1352)
!1354 = !DILocation(line: 420, column: 18, scope: !1352)
!1355 = !DILocation(line: 420, column: 22, scope: !1356)
!1356 = !DILexicalBlockFile(scope: !1352, file: !135, discriminator: 1)
!1357 = !DILocation(line: 420, column: 21, scope: !1356)
!1358 = !DILocation(line: 420, column: 27, scope: !1356)
!1359 = !DILocation(line: 420, column: 6, scope: !1356)
!1360 = !DILocation(line: 421, column: 37, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1352, file: !135, line: 420, column: 36)
!1362 = !DILocation(line: 421, column: 13, scope: !1361)
!1363 = !DILocation(line: 421, column: 11, scope: !1361)
!1364 = !DILocation(line: 422, column: 2, scope: !1361)
!1365 = !DILocation(line: 423, column: 39, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1352, file: !135, line: 422, column: 9)
!1367 = !DILocation(line: 423, column: 13, scope: !1366)
!1368 = !DILocation(line: 423, column: 11, scope: !1366)
!1369 = !DILocation(line: 426, column: 24, scope: !1344)
!1370 = !DILocation(line: 426, column: 2, scope: !1344)
!1371 = !DILocation(line: 427, column: 1, scope: !1344)
!1372 = distinct !DISubprogram(name: "command_history_deinit", scope: !135, file: !135, line: 485, type: !1204, isLocal: false, isDefinition: true, scopeLine: 486, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1373 = !DILocation(line: 487, column: 2, scope: !1372)
!1374 = !DILocation(line: 488, column: 2, scope: !1372)
!1375 = !DILocation(line: 489, column: 2, scope: !1372)
!1376 = !DILocation(line: 490, column: 2, scope: !1372)
!1377 = !DILocation(line: 491, column: 2, scope: !1372)
!1378 = !DILocation(line: 493, column: 26, scope: !1372)
!1379 = !DILocation(line: 493, column: 2, scope: !1372)
!1380 = !DILocation(line: 495, column: 19, scope: !1372)
!1381 = !DILocation(line: 495, column: 2, scope: !1372)
!1382 = !DILocation(line: 496, column: 1, scope: !1372)
!1383 = distinct !DISubprogram(name: "history_entry_destroy", scope: !135, file: !135, line: 50, type: !1384, isLocal: true, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{null, !5}
!1386 = !DILocalVariable(name: "entry", arg: 1, scope: !1383, file: !135, line: 50, type: !5)
!1387 = !DILocation(line: 50, column: 54, scope: !1383)
!1388 = !DILocation(line: 52, column: 17, scope: !1383)
!1389 = !DILocation(line: 52, column: 24, scope: !1383)
!1390 = !DILocation(line: 52, column: 2, scope: !1383)
!1391 = !DILocation(line: 53, column: 9, scope: !1383)
!1392 = !DILocation(line: 53, column: 2, scope: !1383)
!1393 = !DILocation(line: 54, column: 1, scope: !1383)
!1394 = distinct !DISubprogram(name: "command_history_clear_pos_for_unlink_func", scope: !135, file: !135, line: 104, type: !1395, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{null, !15, !22}
!1397 = !DILocalVariable(name: "history", arg: 1, scope: !1394, file: !135, line: 104, type: !15)
!1398 = !DILocation(line: 104, column: 68, scope: !1394)
!1399 = !DILocalVariable(name: "link", arg: 2, scope: !1394, file: !135, line: 104, type: !22)
!1400 = !DILocation(line: 104, column: 84, scope: !1394)
!1401 = !DILocation(line: 106, column: 6, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1394, file: !135, line: 106, column: 6)
!1403 = !DILocation(line: 106, column: 15, scope: !1402)
!1404 = !DILocation(line: 106, column: 22, scope: !1402)
!1405 = !DILocation(line: 106, column: 19, scope: !1402)
!1406 = !DILocation(line: 106, column: 6, scope: !1394)
!1407 = !DILocation(line: 107, column: 44, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1402, file: !135, line: 106, column: 28)
!1409 = !DILocation(line: 107, column: 53, scope: !1408)
!1410 = !DILocation(line: 107, column: 18, scope: !1408)
!1411 = !DILocation(line: 107, column: 3, scope: !1408)
!1412 = !DILocation(line: 107, column: 12, scope: !1408)
!1413 = !DILocation(line: 107, column: 16, scope: !1408)
!1414 = !DILocation(line: 108, column: 3, scope: !1408)
!1415 = !DILocation(line: 108, column: 12, scope: !1408)
!1416 = !DILocation(line: 108, column: 17, scope: !1408)
!1417 = !DILocation(line: 109, column: 2, scope: !1408)
!1418 = !DILocation(line: 110, column: 1, scope: !1394)
