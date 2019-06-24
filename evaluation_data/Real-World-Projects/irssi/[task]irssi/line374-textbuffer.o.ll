; ModuleID = './line374-textbuffer.o.i'
source_filename = "./line374-textbuffer.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.TEXT_BUFFER_REC = type { %struct._GSList*, %struct._LINE_REC*, i32, %struct._LINE_REC*, %struct.TEXT_CHUNK_REC*, i32, i32, i32, i8 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._LINE_REC = type { %struct._LINE_REC*, %struct._LINE_REC*, i8*, %struct.LINE_INFO_REC }
%struct.LINE_INFO_REC = type { i32, i64 }
%struct.TEXT_CHUNK_REC = type { [16368 x i8], i32, i32 }
%struct._GString = type { i8*, i64, i64 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GRegex = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._MatchInfo = type opaque

@.str = private unnamed_addr constant [11 x i8] c"TextBuffer\00", align 1
@__func__.textbuffer_destroy = private unnamed_addr constant [19 x i8] c"textbuffer_destroy\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"buffer != NULL\00", align 1
@__func__.textbuffer_insert = private unnamed_addr constant [18 x i8] c"textbuffer_insert\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@__func__.textbuffer_remove = private unnamed_addr constant [18 x i8] c"textbuffer_remove\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"line != NULL\00", align 1
@__func__.textbuffer_remove_all_lines = private unnamed_addr constant [28 x i8] c"textbuffer_remove_all_lines\00", align 1
@__func__.textbuffer_line2text = private unnamed_addr constant [21 x i8] c"textbuffer_line2text\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"str != NULL\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"\04%c\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"\04%c%c\00", align 1
@__func__.textbuffer_find_text = private unnamed_addr constant [21 x i8] c"textbuffer_find_text\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"text != NULL\00", align 1

; Function Attrs: nounwind uwtable
define %struct.TEXT_BUFFER_REC* @textbuffer_create() #0 !dbg !102 {
  %1 = alloca %struct.TEXT_BUFFER_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct.TEXT_BUFFER_REC** %1, metadata !107, metadata !108), !dbg !109
  %2 = call noalias i8* @g_slice_alloc0(i64 56), !dbg !110
  %3 = bitcast i8* %2 to %struct.TEXT_BUFFER_REC*, !dbg !111
  store %struct.TEXT_BUFFER_REC* %3, %struct.TEXT_BUFFER_REC** %1, align 8, !dbg !112
  %4 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %1, align 8, !dbg !113
  %5 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %4, i32 0, i32 8, !dbg !114
  %6 = load i8, i8* %5, align 4, !dbg !115
  %7 = and i8 %6, -2, !dbg !115
  %8 = or i8 %7, 1, !dbg !115
  store i8 %8, i8* %5, align 4, !dbg !115
  %9 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %1, align 8, !dbg !116
  %10 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %9, i32 0, i32 5, !dbg !117
  store i32 -1, i32* %10, align 8, !dbg !118
  %11 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %1, align 8, !dbg !119
  %12 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %11, i32 0, i32 6, !dbg !120
  store i32 -1, i32* %12, align 4, !dbg !121
  %13 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %1, align 8, !dbg !122
  ret %struct.TEXT_BUFFER_REC* %13, !dbg !123
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare noalias i8* @g_slice_alloc0(i64) #2

; Function Attrs: nounwind uwtable
define void @textbuffer_destroy(%struct.TEXT_BUFFER_REC*) #0 !dbg !124 {
  %2 = alloca %struct.TEXT_BUFFER_REC*, align 8
  store %struct.TEXT_BUFFER_REC* %0, %struct.TEXT_BUFFER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.TEXT_BUFFER_REC** %2, metadata !127, metadata !108), !dbg !128
  br label %3, !dbg !129, !llvm.loop !130

; <label>:3:                                      ; preds = %1
  %4 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %2, align 8, !dbg !131
  %5 = icmp ne %struct.TEXT_BUFFER_REC* %4, null, !dbg !135
  br i1 %5, label %6, label %7, !dbg !131

; <label>:6:                                      ; preds = %3
  br label %8, !dbg !136

; <label>:7:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.textbuffer_destroy, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)), !dbg !139
  br label %14, !dbg !142

; <label>:8:                                      ; preds = %6
  br label %9, !dbg !143

; <label>:9:                                      ; preds = %8
  %10 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %2, align 8, !dbg !145
  call void @textbuffer_remove_all_lines(%struct.TEXT_BUFFER_REC* %10), !dbg !146
  br label %11, !dbg !147, !llvm.loop !148

; <label>:11:                                     ; preds = %9
  %12 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %2, align 8, !dbg !149
  %13 = bitcast %struct.TEXT_BUFFER_REC* %12 to i8*, !dbg !153
  call void @g_slice_free1(i64 56, i8* %13), !dbg !154
  br label %14, !dbg !155

; <label>:14:                                     ; preds = %7, %11
  ret void, !dbg !156
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @textbuffer_remove_all_lines(%struct.TEXT_BUFFER_REC*) #0 !dbg !157 {
  %2 = alloca %struct.TEXT_BUFFER_REC*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct._LINE_REC*, align 8
  store %struct.TEXT_BUFFER_REC* %0, %struct.TEXT_BUFFER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.TEXT_BUFFER_REC** %2, metadata !158, metadata !108), !dbg !159
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !160, metadata !108), !dbg !161
  call void @llvm.dbg.declare(metadata %struct._LINE_REC** %4, metadata !162, metadata !108), !dbg !163
  br label %5, !dbg !164, !llvm.loop !165

; <label>:5:                                      ; preds = %1
  %6 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %2, align 8, !dbg !166
  %7 = icmp ne %struct.TEXT_BUFFER_REC* %6, null, !dbg !170
  br i1 %7, label %8, label %9, !dbg !166

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !171

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.textbuffer_remove_all_lines, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)), !dbg !174
  br label %66, !dbg !177

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !178

; <label>:11:                                     ; preds = %10
  %12 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %2, align 8, !dbg !180
  %13 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %12, i32 0, i32 0, !dbg !182
  %14 = load %struct._GSList*, %struct._GSList** %13, align 8, !dbg !182
  store %struct._GSList* %14, %struct._GSList** %3, align 8, !dbg !183
  br label %15, !dbg !184

; <label>:15:                                     ; preds = %24, %11
  %16 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !185
  %17 = icmp ne %struct._GSList* %16, null, !dbg !188
  br i1 %17, label %18, label %28, !dbg !189

; <label>:18:                                     ; preds = %15
  br label %19, !dbg !190, !llvm.loop !191

; <label>:19:                                     ; preds = %18
  %20 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !192
  %21 = getelementptr inbounds %struct._GSList, %struct._GSList* %20, i32 0, i32 0, !dbg !196
  %22 = load i8*, i8** %21, align 8, !dbg !196
  call void @g_slice_free1(i64 16376, i8* %22), !dbg !197
  br label %23, !dbg !198

; <label>:23:                                     ; preds = %19
  br label %24, !dbg !199

; <label>:24:                                     ; preds = %23
  %25 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !201
  %26 = getelementptr inbounds %struct._GSList, %struct._GSList* %25, i32 0, i32 1, !dbg !203
  %27 = load %struct._GSList*, %struct._GSList** %26, align 8, !dbg !203
  store %struct._GSList* %27, %struct._GSList** %3, align 8, !dbg !204
  br label %15, !dbg !205, !llvm.loop !206

; <label>:28:                                     ; preds = %15
  %29 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %2, align 8, !dbg !208
  %30 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %29, i32 0, i32 0, !dbg !209
  %31 = load %struct._GSList*, %struct._GSList** %30, align 8, !dbg !209
  call void @g_slist_free(%struct._GSList* %31), !dbg !210
  %32 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %2, align 8, !dbg !211
  %33 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %32, i32 0, i32 0, !dbg !212
  store %struct._GSList* null, %struct._GSList** %33, align 8, !dbg !213
  br label %34, !dbg !214

; <label>:34:                                     ; preds = %50, %28
  %35 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %2, align 8, !dbg !215
  %36 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %35, i32 0, i32 1, !dbg !217
  %37 = load %struct._LINE_REC*, %struct._LINE_REC** %36, align 8, !dbg !217
  %38 = icmp ne %struct._LINE_REC* %37, null, !dbg !218
  br i1 %38, label %39, label %54, !dbg !219

; <label>:39:                                     ; preds = %34
  %40 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %2, align 8, !dbg !220
  %41 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %40, i32 0, i32 1, !dbg !222
  %42 = load %struct._LINE_REC*, %struct._LINE_REC** %41, align 8, !dbg !222
  %43 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %42, i32 0, i32 1, !dbg !223
  %44 = load %struct._LINE_REC*, %struct._LINE_REC** %43, align 8, !dbg !223
  store %struct._LINE_REC* %44, %struct._LINE_REC** %4, align 8, !dbg !224
  br label %45, !dbg !225, !llvm.loop !226

; <label>:45:                                     ; preds = %39
  %46 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %2, align 8, !dbg !227
  %47 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %46, i32 0, i32 1, !dbg !231
  %48 = load %struct._LINE_REC*, %struct._LINE_REC** %47, align 8, !dbg !231
  %49 = bitcast %struct._LINE_REC* %48 to i8*, !dbg !232
  call void @g_slice_free1(i64 40, i8* %49), !dbg !233
  br label %50, !dbg !234

; <label>:50:                                     ; preds = %45
  %51 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !235
  %52 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %2, align 8, !dbg !236
  %53 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %52, i32 0, i32 1, !dbg !237
  store %struct._LINE_REC* %51, %struct._LINE_REC** %53, align 8, !dbg !238
  br label %34, !dbg !239, !llvm.loop !241

; <label>:54:                                     ; preds = %34
  %55 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %2, align 8, !dbg !242
  %56 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %55, i32 0, i32 2, !dbg !243
  store i32 0, i32* %56, align 8, !dbg !244
  %57 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %2, align 8, !dbg !245
  %58 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %57, i32 0, i32 3, !dbg !246
  store %struct._LINE_REC* null, %struct._LINE_REC** %58, align 8, !dbg !247
  %59 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %2, align 8, !dbg !248
  %60 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %59, i32 0, i32 4, !dbg !249
  store %struct.TEXT_CHUNK_REC* null, %struct.TEXT_CHUNK_REC** %60, align 8, !dbg !250
  %61 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %2, align 8, !dbg !251
  %62 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %61, i32 0, i32 8, !dbg !252
  %63 = load i8, i8* %62, align 4, !dbg !253
  %64 = and i8 %63, -2, !dbg !253
  %65 = or i8 %64, 1, !dbg !253
  store i8 %65, i8* %62, align 4, !dbg !253
  br label %66, !dbg !254

; <label>:66:                                     ; preds = %54, %9
  ret void, !dbg !255
}

declare void @g_slice_free1(i64, i8*) #2

; Function Attrs: nounwind uwtable
define %struct._LINE_REC* @textbuffer_line_last(%struct.TEXT_BUFFER_REC*) #0 !dbg !256 {
  %2 = alloca %struct.TEXT_BUFFER_REC*, align 8
  store %struct.TEXT_BUFFER_REC* %0, %struct.TEXT_BUFFER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.TEXT_BUFFER_REC** %2, metadata !259, metadata !108), !dbg !260
  %3 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %2, align 8, !dbg !261
  %4 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %3, i32 0, i32 3, !dbg !262
  %5 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !262
  ret %struct._LINE_REC* %5, !dbg !263
}

; Function Attrs: nounwind uwtable
define i32 @textbuffer_line_exists_after(%struct._LINE_REC*, %struct._LINE_REC*) #0 !dbg !264 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._LINE_REC*, align 8
  %5 = alloca %struct._LINE_REC*, align 8
  store %struct._LINE_REC* %0, %struct._LINE_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._LINE_REC** %4, metadata !267, metadata !108), !dbg !268
  store %struct._LINE_REC* %1, %struct._LINE_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._LINE_REC** %5, metadata !269, metadata !108), !dbg !270
  br label %6, !dbg !271

; <label>:6:                                      ; preds = %14, %2
  %7 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !272
  %8 = icmp ne %struct._LINE_REC* %7, null, !dbg !274
  br i1 %8, label %9, label %18, !dbg !275

; <label>:9:                                      ; preds = %6
  %10 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !276
  %11 = load %struct._LINE_REC*, %struct._LINE_REC** %5, align 8, !dbg !279
  %12 = icmp eq %struct._LINE_REC* %10, %11, !dbg !280
  br i1 %12, label %13, label %14, !dbg !281

; <label>:13:                                     ; preds = %9
  store i32 1, i32* %3, align 4, !dbg !282
  br label %19, !dbg !282

; <label>:14:                                     ; preds = %9
  %15 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !283
  %16 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %15, i32 0, i32 1, !dbg !284
  %17 = load %struct._LINE_REC*, %struct._LINE_REC** %16, align 8, !dbg !284
  store %struct._LINE_REC* %17, %struct._LINE_REC** %4, align 8, !dbg !285
  br label %6, !dbg !286, !llvm.loop !288

; <label>:18:                                     ; preds = %6
  store i32 0, i32* %3, align 4, !dbg !289
  br label %19, !dbg !289

; <label>:19:                                     ; preds = %18, %13
  %20 = load i32, i32* %3, align 4, !dbg !290
  ret i32 %20, !dbg !290
}

; Function Attrs: nounwind uwtable
define void @textbuffer_line_add_colors(%struct.TEXT_BUFFER_REC*, %struct._LINE_REC**, i32, i32, i32) #0 !dbg !291 {
  %6 = alloca %struct.TEXT_BUFFER_REC*, align 8
  %7 = alloca %struct._LINE_REC**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [22 x i8], align 16
  %12 = alloca i32, align 4
  store %struct.TEXT_BUFFER_REC* %0, %struct.TEXT_BUFFER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.TEXT_BUFFER_REC** %6, metadata !295, metadata !108), !dbg !296
  store %struct._LINE_REC** %1, %struct._LINE_REC*** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._LINE_REC*** %7, metadata !297, metadata !108), !dbg !298
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !299, metadata !108), !dbg !300
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !301, metadata !108), !dbg !302
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !303, metadata !108), !dbg !304
  call void @llvm.dbg.declare(metadata [22 x i8]* %11, metadata !305, metadata !108), !dbg !309
  call void @llvm.dbg.declare(metadata i32* %12, metadata !310, metadata !108), !dbg !311
  store i32 0, i32* %12, align 4, !dbg !312
  %13 = load i32, i32* %8, align 4, !dbg !313
  %14 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %6, align 8, !dbg !315
  %15 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %14, i32 0, i32 5, !dbg !316
  %16 = load i32, i32* %15, align 8, !dbg !316
  %17 = icmp ne i32 %13, %16, !dbg !317
  br i1 %17, label %26, label %18, !dbg !318

; <label>:18:                                     ; preds = %5
  %19 = load i32, i32* %10, align 4, !dbg !319
  %20 = and i32 %19, 1024, !dbg !321
  %21 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %6, align 8, !dbg !322
  %22 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %21, i32 0, i32 7, !dbg !323
  %23 = load i32, i32* %22, align 8, !dbg !323
  %24 = and i32 %23, 1024, !dbg !324
  %25 = icmp ne i32 %20, %24, !dbg !325
  br i1 %25, label %26, label %74, !dbg !326

; <label>:26:                                     ; preds = %18, %5
  %27 = load i32, i32* %8, align 4, !dbg !328
  %28 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %6, align 8, !dbg !330
  %29 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %28, i32 0, i32 5, !dbg !331
  store i32 %27, i32* %29, align 8, !dbg !332
  %30 = load i32, i32* %12, align 4, !dbg !333
  %31 = add nsw i32 %30, 1, !dbg !333
  store i32 %31, i32* %12, align 4, !dbg !333
  %32 = sext i32 %30 to i64, !dbg !334
  %33 = getelementptr inbounds [22 x i8], [22 x i8]* %11, i64 0, i64 %32, !dbg !334
  store i8 0, i8* %33, align 1, !dbg !335
  %34 = load i32, i32* %8, align 4, !dbg !336
  %35 = icmp slt i32 %34, 0, !dbg !338
  br i1 %35, label %36, label %41, !dbg !339

; <label>:36:                                     ; preds = %26
  %37 = load i32, i32* %12, align 4, !dbg !340
  %38 = add nsw i32 %37, 1, !dbg !340
  store i32 %38, i32* %12, align 4, !dbg !340
  %39 = sext i32 %37 to i64, !dbg !341
  %40 = getelementptr inbounds [22 x i8], [22 x i8]* %11, i64 0, i64 %39, !dbg !341
  store i8 16, i8* %40, align 1, !dbg !342
  br label %73, !dbg !341

; <label>:41:                                     ; preds = %26
  %42 = load i32, i32* %8, align 4, !dbg !343
  %43 = icmp slt i32 %42, 16, !dbg !345
  br i1 %43, label %44, label %57, !dbg !346

; <label>:44:                                     ; preds = %41
  %45 = load i32, i32* %8, align 4, !dbg !347
  %46 = icmp eq i32 %45, 0, !dbg !348
  br i1 %46, label %47, label %48, !dbg !347

; <label>:47:                                     ; preds = %44
  br label %50, !dbg !349

; <label>:48:                                     ; preds = %44
  %49 = load i32, i32* %8, align 4, !dbg !351
  br label %50, !dbg !353

; <label>:50:                                     ; preds = %48, %47
  %51 = phi i32 [ 130, %47 ], [ %49, %48 ], !dbg !354
  %52 = trunc i32 %51 to i8, !dbg !354
  %53 = load i32, i32* %12, align 4, !dbg !356
  %54 = add nsw i32 %53, 1, !dbg !356
  store i32 %54, i32* %12, align 4, !dbg !356
  %55 = sext i32 %53 to i64, !dbg !357
  %56 = getelementptr inbounds [22 x i8], [22 x i8]* %11, i64 0, i64 %55, !dbg !357
  store i8 %52, i8* %56, align 1, !dbg !358
  br label %72, !dbg !357

; <label>:57:                                     ; preds = %41
  %58 = load i32, i32* %8, align 4, !dbg !359
  %59 = icmp slt i32 %58, 256, !dbg !361
  br i1 %59, label %60, label %71, !dbg !362

; <label>:60:                                     ; preds = %57
  %61 = load i32, i32* %12, align 4, !dbg !363
  %62 = add nsw i32 %61, 1, !dbg !363
  store i32 %62, i32* %12, align 4, !dbg !363
  %63 = sext i32 %61 to i64, !dbg !365
  %64 = getelementptr inbounds [22 x i8], [22 x i8]* %11, i64 0, i64 %63, !dbg !365
  store i8 -118, i8* %64, align 1, !dbg !366
  %65 = load i32, i32* %8, align 4, !dbg !367
  %66 = trunc i32 %65 to i8, !dbg !367
  %67 = load i32, i32* %12, align 4, !dbg !368
  %68 = add nsw i32 %67, 1, !dbg !368
  store i32 %68, i32* %12, align 4, !dbg !368
  %69 = sext i32 %67 to i64, !dbg !369
  %70 = getelementptr inbounds [22 x i8], [22 x i8]* %11, i64 0, i64 %69, !dbg !369
  store i8 %66, i8* %70, align 1, !dbg !370
  br label %71, !dbg !371

; <label>:71:                                     ; preds = %60, %57
  br label %72

; <label>:72:                                     ; preds = %71, %50
  br label %73

; <label>:73:                                     ; preds = %72, %36
  br label %74, !dbg !372

; <label>:74:                                     ; preds = %73, %18
  %75 = load i32, i32* %9, align 4, !dbg !373
  %76 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %6, align 8, !dbg !375
  %77 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %76, i32 0, i32 6, !dbg !376
  %78 = load i32, i32* %77, align 4, !dbg !376
  %79 = icmp ne i32 %75, %78, !dbg !377
  br i1 %79, label %88, label %80, !dbg !378

; <label>:80:                                     ; preds = %74
  %81 = load i32, i32* %10, align 4, !dbg !379
  %82 = and i32 %81, 2048, !dbg !381
  %83 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %6, align 8, !dbg !382
  %84 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %83, i32 0, i32 7, !dbg !383
  %85 = load i32, i32* %84, align 8, !dbg !383
  %86 = and i32 %85, 2048, !dbg !384
  %87 = icmp ne i32 %82, %86, !dbg !385
  br i1 %87, label %88, label %131, !dbg !386

; <label>:88:                                     ; preds = %80, %74
  %89 = load i32, i32* %9, align 4, !dbg !387
  %90 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %6, align 8, !dbg !389
  %91 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %90, i32 0, i32 6, !dbg !390
  store i32 %89, i32* %91, align 4, !dbg !391
  %92 = load i32, i32* %12, align 4, !dbg !392
  %93 = add nsw i32 %92, 1, !dbg !392
  store i32 %93, i32* %12, align 4, !dbg !392
  %94 = sext i32 %92 to i64, !dbg !393
  %95 = getelementptr inbounds [22 x i8], [22 x i8]* %11, i64 0, i64 %94, !dbg !393
  store i8 0, i8* %95, align 1, !dbg !394
  %96 = load i32, i32* %9, align 4, !dbg !395
  %97 = icmp slt i32 %96, 0, !dbg !397
  br i1 %97, label %98, label %103, !dbg !398

; <label>:98:                                     ; preds = %88
  %99 = load i32, i32* %12, align 4, !dbg !399
  %100 = add nsw i32 %99, 1, !dbg !399
  store i32 %100, i32* %12, align 4, !dbg !399
  %101 = sext i32 %99 to i64, !dbg !400
  %102 = getelementptr inbounds [22 x i8], [22 x i8]* %11, i64 0, i64 %101, !dbg !400
  store i8 48, i8* %102, align 1, !dbg !401
  br label %130, !dbg !400

; <label>:103:                                    ; preds = %88
  %104 = load i32, i32* %9, align 4, !dbg !402
  %105 = icmp slt i32 %104, 16, !dbg !404
  br i1 %105, label %106, label %114, !dbg !405

; <label>:106:                                    ; preds = %103
  %107 = load i32, i32* %9, align 4, !dbg !406
  %108 = or i32 32, %107, !dbg !407
  %109 = trunc i32 %108 to i8, !dbg !408
  %110 = load i32, i32* %12, align 4, !dbg !409
  %111 = add nsw i32 %110, 1, !dbg !409
  store i32 %111, i32* %12, align 4, !dbg !409
  %112 = sext i32 %110 to i64, !dbg !410
  %113 = getelementptr inbounds [22 x i8], [22 x i8]* %11, i64 0, i64 %112, !dbg !410
  store i8 %109, i8* %113, align 1, !dbg !411
  br label %129, !dbg !410

; <label>:114:                                    ; preds = %103
  %115 = load i32, i32* %9, align 4, !dbg !412
  %116 = icmp slt i32 %115, 256, !dbg !414
  br i1 %116, label %117, label %128, !dbg !415

; <label>:117:                                    ; preds = %114
  %118 = load i32, i32* %12, align 4, !dbg !416
  %119 = add nsw i32 %118, 1, !dbg !416
  store i32 %119, i32* %12, align 4, !dbg !416
  %120 = sext i32 %118 to i64, !dbg !418
  %121 = getelementptr inbounds [22 x i8], [22 x i8]* %11, i64 0, i64 %120, !dbg !418
  store i8 -117, i8* %121, align 1, !dbg !419
  %122 = load i32, i32* %9, align 4, !dbg !420
  %123 = trunc i32 %122 to i8, !dbg !420
  %124 = load i32, i32* %12, align 4, !dbg !421
  %125 = add nsw i32 %124, 1, !dbg !421
  store i32 %125, i32* %12, align 4, !dbg !421
  %126 = sext i32 %124 to i64, !dbg !422
  %127 = getelementptr inbounds [22 x i8], [22 x i8]* %11, i64 0, i64 %126, !dbg !422
  store i8 %123, i8* %127, align 1, !dbg !423
  br label %128, !dbg !424

; <label>:128:                                    ; preds = %117, %114
  br label %129

; <label>:129:                                    ; preds = %128, %106
  br label %130

; <label>:130:                                    ; preds = %129, %98
  br label %131, !dbg !425

; <label>:131:                                    ; preds = %130, %80
  %132 = load i32, i32* %10, align 4, !dbg !426
  %133 = and i32 %132, 4, !dbg !428
  %134 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %6, align 8, !dbg !429
  %135 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %134, i32 0, i32 7, !dbg !430
  %136 = load i32, i32* %135, align 8, !dbg !430
  %137 = and i32 %136, 4, !dbg !431
  %138 = icmp ne i32 %133, %137, !dbg !432
  br i1 %138, label %139, label %148, !dbg !433

; <label>:139:                                    ; preds = %131
  %140 = load i32, i32* %12, align 4, !dbg !434
  %141 = add nsw i32 %140, 1, !dbg !434
  store i32 %141, i32* %12, align 4, !dbg !434
  %142 = sext i32 %140 to i64, !dbg !436
  %143 = getelementptr inbounds [22 x i8], [22 x i8]* %11, i64 0, i64 %142, !dbg !436
  store i8 0, i8* %143, align 1, !dbg !437
  %144 = load i32, i32* %12, align 4, !dbg !438
  %145 = add nsw i32 %144, 1, !dbg !438
  store i32 %145, i32* %12, align 4, !dbg !438
  %146 = sext i32 %144 to i64, !dbg !439
  %147 = getelementptr inbounds [22 x i8], [22 x i8]* %11, i64 0, i64 %146, !dbg !439
  store i8 -125, i8* %147, align 1, !dbg !440
  br label %148, !dbg !441

; <label>:148:                                    ; preds = %139, %131
  %149 = load i32, i32* %10, align 4, !dbg !442
  %150 = and i32 %149, 2, !dbg !444
  %151 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %6, align 8, !dbg !445
  %152 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %151, i32 0, i32 7, !dbg !446
  %153 = load i32, i32* %152, align 8, !dbg !446
  %154 = and i32 %153, 2, !dbg !447
  %155 = icmp ne i32 %150, %154, !dbg !448
  br i1 %155, label %156, label %165, !dbg !449

; <label>:156:                                    ; preds = %148
  %157 = load i32, i32* %12, align 4, !dbg !450
  %158 = add nsw i32 %157, 1, !dbg !450
  store i32 %158, i32* %12, align 4, !dbg !450
  %159 = sext i32 %157 to i64, !dbg !452
  %160 = getelementptr inbounds [22 x i8], [22 x i8]* %11, i64 0, i64 %159, !dbg !452
  store i8 0, i8* %160, align 1, !dbg !453
  %161 = load i32, i32* %12, align 4, !dbg !454
  %162 = add nsw i32 %161, 1, !dbg !454
  store i32 %162, i32* %12, align 4, !dbg !454
  %163 = sext i32 %161 to i64, !dbg !455
  %164 = getelementptr inbounds [22 x i8], [22 x i8]* %11, i64 0, i64 %163, !dbg !455
  store i8 -124, i8* %164, align 1, !dbg !456
  br label %165, !dbg !457

; <label>:165:                                    ; preds = %156, %148
  %166 = load i32, i32* %10, align 4, !dbg !458
  %167 = and i32 %166, 8, !dbg !460
  %168 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %6, align 8, !dbg !461
  %169 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %168, i32 0, i32 7, !dbg !462
  %170 = load i32, i32* %169, align 8, !dbg !462
  %171 = and i32 %170, 8, !dbg !463
  %172 = icmp ne i32 %167, %171, !dbg !464
  br i1 %172, label %173, label %182, !dbg !465

; <label>:173:                                    ; preds = %165
  %174 = load i32, i32* %12, align 4, !dbg !466
  %175 = add nsw i32 %174, 1, !dbg !466
  store i32 %175, i32* %12, align 4, !dbg !466
  %176 = sext i32 %174 to i64, !dbg !468
  %177 = getelementptr inbounds [22 x i8], [22 x i8]* %11, i64 0, i64 %176, !dbg !468
  store i8 0, i8* %177, align 1, !dbg !469
  %178 = load i32, i32* %12, align 4, !dbg !470
  %179 = add nsw i32 %178, 1, !dbg !470
  store i32 %179, i32* %12, align 4, !dbg !470
  %180 = sext i32 %178 to i64, !dbg !471
  %181 = getelementptr inbounds [22 x i8], [22 x i8]* %11, i64 0, i64 %180, !dbg !471
  store i8 -122, i8* %181, align 1, !dbg !472
  br label %182, !dbg !473

; <label>:182:                                    ; preds = %173, %165
  %183 = load i32, i32* %10, align 4, !dbg !474
  %184 = and i32 %183, 1, !dbg !476
  %185 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %6, align 8, !dbg !477
  %186 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %185, i32 0, i32 7, !dbg !478
  %187 = load i32, i32* %186, align 8, !dbg !478
  %188 = and i32 %187, 1, !dbg !479
  %189 = icmp ne i32 %184, %188, !dbg !480
  br i1 %189, label %190, label %199, !dbg !481

; <label>:190:                                    ; preds = %182
  %191 = load i32, i32* %12, align 4, !dbg !482
  %192 = add nsw i32 %191, 1, !dbg !482
  store i32 %192, i32* %12, align 4, !dbg !482
  %193 = sext i32 %191 to i64, !dbg !484
  %194 = getelementptr inbounds [22 x i8], [22 x i8]* %11, i64 0, i64 %193, !dbg !484
  store i8 0, i8* %194, align 1, !dbg !485
  %195 = load i32, i32* %12, align 4, !dbg !486
  %196 = add nsw i32 %195, 1, !dbg !486
  store i32 %196, i32* %12, align 4, !dbg !486
  %197 = sext i32 %195 to i64, !dbg !487
  %198 = getelementptr inbounds [22 x i8], [22 x i8]* %11, i64 0, i64 %197, !dbg !487
  store i8 -121, i8* %198, align 1, !dbg !488
  br label %199, !dbg !489

; <label>:199:                                    ; preds = %190, %182
  %200 = load i32, i32* %10, align 4, !dbg !490
  %201 = and i32 %200, 64, !dbg !492
  %202 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %6, align 8, !dbg !493
  %203 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %202, i32 0, i32 7, !dbg !494
  %204 = load i32, i32* %203, align 8, !dbg !494
  %205 = and i32 %204, 64, !dbg !495
  %206 = icmp ne i32 %201, %205, !dbg !496
  br i1 %206, label %207, label %216, !dbg !497

; <label>:207:                                    ; preds = %199
  %208 = load i32, i32* %12, align 4, !dbg !498
  %209 = add nsw i32 %208, 1, !dbg !498
  store i32 %209, i32* %12, align 4, !dbg !498
  %210 = sext i32 %208 to i64, !dbg !500
  %211 = getelementptr inbounds [22 x i8], [22 x i8]* %11, i64 0, i64 %210, !dbg !500
  store i8 0, i8* %211, align 1, !dbg !501
  %212 = load i32, i32* %12, align 4, !dbg !502
  %213 = add nsw i32 %212, 1, !dbg !502
  store i32 %213, i32* %12, align 4, !dbg !502
  %214 = sext i32 %212 to i64, !dbg !503
  %215 = getelementptr inbounds [22 x i8], [22 x i8]* %11, i64 0, i64 %214, !dbg !503
  store i8 -120, i8* %215, align 1, !dbg !504
  br label %216, !dbg !505

; <label>:216:                                    ; preds = %207, %199
  %217 = load i32, i32* %10, align 4, !dbg !506
  %218 = and i32 %217, 512, !dbg !508
  %219 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %6, align 8, !dbg !509
  %220 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %219, i32 0, i32 7, !dbg !510
  %221 = load i32, i32* %220, align 8, !dbg !510
  %222 = and i32 %221, 512, !dbg !511
  %223 = icmp ne i32 %218, %222, !dbg !512
  br i1 %223, label %224, label %233, !dbg !513

; <label>:224:                                    ; preds = %216
  %225 = load i32, i32* %12, align 4, !dbg !514
  %226 = add nsw i32 %225, 1, !dbg !514
  store i32 %226, i32* %12, align 4, !dbg !514
  %227 = sext i32 %225 to i64, !dbg !516
  %228 = getelementptr inbounds [22 x i8], [22 x i8]* %11, i64 0, i64 %227, !dbg !516
  store i8 0, i8* %228, align 1, !dbg !517
  %229 = load i32, i32* %12, align 4, !dbg !518
  %230 = add nsw i32 %229, 1, !dbg !518
  store i32 %230, i32* %12, align 4, !dbg !518
  %231 = sext i32 %229 to i64, !dbg !519
  %232 = getelementptr inbounds [22 x i8], [22 x i8]* %11, i64 0, i64 %231, !dbg !519
  store i8 -119, i8* %232, align 1, !dbg !520
  br label %233, !dbg !521

; <label>:233:                                    ; preds = %224, %216
  %234 = load i32, i32* %10, align 4, !dbg !522
  %235 = and i32 %234, 32, !dbg !524
  %236 = icmp ne i32 %235, 0, !dbg !524
  br i1 %236, label %237, label %246, !dbg !525

; <label>:237:                                    ; preds = %233
  %238 = load i32, i32* %12, align 4, !dbg !526
  %239 = add nsw i32 %238, 1, !dbg !526
  store i32 %239, i32* %12, align 4, !dbg !526
  %240 = sext i32 %238 to i64, !dbg !528
  %241 = getelementptr inbounds [22 x i8], [22 x i8]* %11, i64 0, i64 %240, !dbg !528
  store i8 0, i8* %241, align 1, !dbg !529
  %242 = load i32, i32* %12, align 4, !dbg !530
  %243 = add nsw i32 %242, 1, !dbg !530
  store i32 %243, i32* %12, align 4, !dbg !530
  %244 = sext i32 %242 to i64, !dbg !531
  %245 = getelementptr inbounds [22 x i8], [22 x i8]* %11, i64 0, i64 %244, !dbg !531
  store i8 -123, i8* %245, align 1, !dbg !532
  br label %246, !dbg !533

; <label>:246:                                    ; preds = %237, %233
  %247 = load i32, i32* %12, align 4, !dbg !534
  %248 = icmp sgt i32 %247, 0, !dbg !536
  br i1 %248, label %249, label %257, !dbg !537

; <label>:249:                                    ; preds = %246
  %250 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %6, align 8, !dbg !538
  %251 = load %struct._LINE_REC**, %struct._LINE_REC*** %7, align 8, !dbg !540
  %252 = load %struct._LINE_REC*, %struct._LINE_REC** %251, align 8, !dbg !541
  %253 = getelementptr inbounds [22 x i8], [22 x i8]* %11, i32 0, i32 0, !dbg !542
  %254 = load i32, i32* %12, align 4, !dbg !543
  %255 = call %struct._LINE_REC* @textbuffer_insert(%struct.TEXT_BUFFER_REC* %250, %struct._LINE_REC* %252, i8* %253, i32 %254, %struct.LINE_INFO_REC* null), !dbg !544
  %256 = load %struct._LINE_REC**, %struct._LINE_REC*** %7, align 8, !dbg !545
  store %struct._LINE_REC* %255, %struct._LINE_REC** %256, align 8, !dbg !546
  br label %257, !dbg !547

; <label>:257:                                    ; preds = %249, %246
  %258 = load i32, i32* %10, align 4, !dbg !548
  %259 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %6, align 8, !dbg !549
  %260 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %259, i32 0, i32 7, !dbg !550
  store i32 %258, i32* %260, align 8, !dbg !551
  ret void, !dbg !552
}

; Function Attrs: nounwind uwtable
define %struct._LINE_REC* @textbuffer_insert(%struct.TEXT_BUFFER_REC*, %struct._LINE_REC*, i8*, i32, %struct.LINE_INFO_REC*) #0 !dbg !553 {
  %6 = alloca %struct._LINE_REC*, align 8
  %7 = alloca %struct.TEXT_BUFFER_REC*, align 8
  %8 = alloca %struct._LINE_REC*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.LINE_INFO_REC*, align 8
  %12 = alloca %struct._LINE_REC*, align 8
  store %struct.TEXT_BUFFER_REC* %0, %struct.TEXT_BUFFER_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.TEXT_BUFFER_REC** %7, metadata !559, metadata !108), !dbg !560
  store %struct._LINE_REC* %1, %struct._LINE_REC** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._LINE_REC** %8, metadata !561, metadata !108), !dbg !562
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !563, metadata !108), !dbg !564
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !565, metadata !108), !dbg !566
  store %struct.LINE_INFO_REC* %4, %struct.LINE_INFO_REC** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.LINE_INFO_REC** %11, metadata !567, metadata !108), !dbg !568
  call void @llvm.dbg.declare(metadata %struct._LINE_REC** %12, metadata !569, metadata !108), !dbg !570
  br label %13, !dbg !571, !llvm.loop !572

; <label>:13:                                     ; preds = %5
  %14 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %7, align 8, !dbg !573
  %15 = icmp ne %struct.TEXT_BUFFER_REC* %14, null, !dbg !577
  br i1 %15, label %16, label %17, !dbg !573

; <label>:16:                                     ; preds = %13
  br label %18, !dbg !578

; <label>:17:                                     ; preds = %13
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.textbuffer_insert, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)), !dbg !581
  store %struct._LINE_REC* null, %struct._LINE_REC** %6, align 8, !dbg !584
  br label %99, !dbg !584

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !585

; <label>:19:                                     ; preds = %18
  br label %20, !dbg !587, !llvm.loop !588

; <label>:20:                                     ; preds = %19
  %21 = load i8*, i8** %9, align 8, !dbg !589
  %22 = icmp ne i8* %21, null, !dbg !593
  br i1 %22, label %23, label %24, !dbg !589

; <label>:23:                                     ; preds = %20
  br label %25, !dbg !594

; <label>:24:                                     ; preds = %20
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.textbuffer_insert, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)), !dbg !597
  store %struct._LINE_REC* null, %struct._LINE_REC** %6, align 8, !dbg !600
  br label %99, !dbg !600

; <label>:25:                                     ; preds = %23
  br label %26, !dbg !601

; <label>:26:                                     ; preds = %25
  %27 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %7, align 8, !dbg !603
  %28 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %27, i32 0, i32 8, !dbg !604
  %29 = load i8, i8* %28, align 4, !dbg !604
  %30 = and i8 %29, 1, !dbg !604
  %31 = zext i8 %30 to i32, !dbg !604
  %32 = icmp ne i32 %31, 0, !dbg !603
  br i1 %32, label %35, label %33, !dbg !605

; <label>:33:                                     ; preds = %26
  %34 = load %struct._LINE_REC*, %struct._LINE_REC** %8, align 8, !dbg !606
  br label %39, !dbg !608

; <label>:35:                                     ; preds = %26
  %36 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %7, align 8, !dbg !609
  %37 = load %struct._LINE_REC*, %struct._LINE_REC** %8, align 8, !dbg !610
  %38 = call %struct._LINE_REC* @textbuffer_line_insert(%struct.TEXT_BUFFER_REC* %36, %struct._LINE_REC* %37), !dbg !611
  br label %39, !dbg !612

; <label>:39:                                     ; preds = %35, %33
  %40 = phi %struct._LINE_REC* [ %34, %33 ], [ %38, %35 ], !dbg !614
  store %struct._LINE_REC* %40, %struct._LINE_REC** %12, align 8, !dbg !616
  %41 = load %struct.LINE_INFO_REC*, %struct.LINE_INFO_REC** %11, align 8, !dbg !617
  %42 = icmp ne %struct.LINE_INFO_REC* %41, null, !dbg !619
  br i1 %42, label %43, label %49, !dbg !620

; <label>:43:                                     ; preds = %39
  %44 = load %struct._LINE_REC*, %struct._LINE_REC** %12, align 8, !dbg !621
  %45 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %44, i32 0, i32 3, !dbg !622
  %46 = bitcast %struct.LINE_INFO_REC* %45 to i8*, !dbg !623
  %47 = load %struct.LINE_INFO_REC*, %struct.LINE_INFO_REC** %11, align 8, !dbg !624
  %48 = bitcast %struct.LINE_INFO_REC* %47 to i8*, !dbg !623
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %48, i64 16, i32 8, i1 false), !dbg !623
  br label %49, !dbg !623

; <label>:49:                                     ; preds = %43, %39
  %50 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %7, align 8, !dbg !625
  %51 = load i8*, i8** %9, align 8, !dbg !626
  %52 = load i32, i32* %10, align 4, !dbg !627
  call void @text_chunk_append(%struct.TEXT_BUFFER_REC* %50, i8* %51, i32 %52), !dbg !628
  %53 = load i32, i32* %10, align 4, !dbg !629
  %54 = icmp sge i32 %53, 2, !dbg !630
  br i1 %54, label %55, label %73, !dbg !631

; <label>:55:                                     ; preds = %49
  %56 = load i32, i32* %10, align 4, !dbg !632
  %57 = sub nsw i32 %56, 2, !dbg !633
  %58 = sext i32 %57 to i64, !dbg !634
  %59 = load i8*, i8** %9, align 8, !dbg !634
  %60 = getelementptr inbounds i8, i8* %59, i64 %58, !dbg !634
  %61 = load i8, i8* %60, align 1, !dbg !634
  %62 = zext i8 %61 to i32, !dbg !634
  %63 = icmp eq i32 %62, 0, !dbg !635
  br i1 %63, label %64, label %73, !dbg !636

; <label>:64:                                     ; preds = %55
  %65 = load i32, i32* %10, align 4, !dbg !637
  %66 = sub nsw i32 %65, 1, !dbg !638
  %67 = sext i32 %66 to i64, !dbg !639
  %68 = load i8*, i8** %9, align 8, !dbg !639
  %69 = getelementptr inbounds i8, i8* %68, i64 %67, !dbg !639
  %70 = load i8, i8* %69, align 1, !dbg !639
  %71 = zext i8 %70 to i32, !dbg !639
  %72 = icmp eq i32 %71, 128, !dbg !640
  br label %73

; <label>:73:                                     ; preds = %64, %55, %49
  %74 = phi i1 [ false, %55 ], [ false, %49 ], [ %72, %64 ]
  %75 = zext i1 %74 to i32, !dbg !641
  %76 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %7, align 8, !dbg !642
  %77 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %76, i32 0, i32 8, !dbg !643
  %78 = trunc i32 %75 to i8, !dbg !644
  %79 = load i8, i8* %77, align 4, !dbg !644
  %80 = and i8 %78, 1, !dbg !644
  %81 = and i8 %79, -2, !dbg !644
  %82 = or i8 %81, %80, !dbg !644
  store i8 %82, i8* %77, align 4, !dbg !644
  %83 = zext i8 %80 to i32, !dbg !644
  %84 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %7, align 8, !dbg !645
  %85 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %84, i32 0, i32 8, !dbg !647
  %86 = load i8, i8* %85, align 4, !dbg !647
  %87 = and i8 %86, 1, !dbg !647
  %88 = zext i8 %87 to i32, !dbg !647
  %89 = icmp ne i32 %88, 0, !dbg !645
  br i1 %89, label %90, label %97, !dbg !648

; <label>:90:                                     ; preds = %73
  %91 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %7, align 8, !dbg !649
  %92 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %91, i32 0, i32 5, !dbg !651
  store i32 -1, i32* %92, align 8, !dbg !652
  %93 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %7, align 8, !dbg !653
  %94 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %93, i32 0, i32 6, !dbg !654
  store i32 -1, i32* %94, align 4, !dbg !655
  %95 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %7, align 8, !dbg !656
  %96 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %95, i32 0, i32 7, !dbg !657
  store i32 0, i32* %96, align 8, !dbg !658
  br label %97, !dbg !659

; <label>:97:                                     ; preds = %90, %73
  %98 = load %struct._LINE_REC*, %struct._LINE_REC** %12, align 8, !dbg !660
  store %struct._LINE_REC* %98, %struct._LINE_REC** %6, align 8, !dbg !661
  br label %99, !dbg !661

; <label>:99:                                     ; preds = %97, %24, %17
  %100 = load %struct._LINE_REC*, %struct._LINE_REC** %6, align 8, !dbg !662
  ret %struct._LINE_REC* %100, !dbg !662
}

; Function Attrs: nounwind uwtable
define %struct._LINE_REC* @textbuffer_append(%struct.TEXT_BUFFER_REC*, i8*, i32, %struct.LINE_INFO_REC*) #0 !dbg !663 {
  %5 = alloca %struct.TEXT_BUFFER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.LINE_INFO_REC*, align 8
  store %struct.TEXT_BUFFER_REC* %0, %struct.TEXT_BUFFER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.TEXT_BUFFER_REC** %5, metadata !666, metadata !108), !dbg !667
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !668, metadata !108), !dbg !669
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !670, metadata !108), !dbg !671
  store %struct.LINE_INFO_REC* %3, %struct.LINE_INFO_REC** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.LINE_INFO_REC** %8, metadata !672, metadata !108), !dbg !673
  %9 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %5, align 8, !dbg !674
  %10 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %5, align 8, !dbg !675
  %11 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %10, i32 0, i32 3, !dbg !676
  %12 = load %struct._LINE_REC*, %struct._LINE_REC** %11, align 8, !dbg !676
  %13 = load i8*, i8** %6, align 8, !dbg !677
  %14 = load i32, i32* %7, align 4, !dbg !678
  %15 = load %struct.LINE_INFO_REC*, %struct.LINE_INFO_REC** %8, align 8, !dbg !679
  %16 = call %struct._LINE_REC* @textbuffer_insert(%struct.TEXT_BUFFER_REC* %9, %struct._LINE_REC* %12, i8* %13, i32 %14, %struct.LINE_INFO_REC* %15), !dbg !680
  ret %struct._LINE_REC* %16, !dbg !681
}

; Function Attrs: nounwind uwtable
define internal %struct._LINE_REC* @textbuffer_line_insert(%struct.TEXT_BUFFER_REC*, %struct._LINE_REC*) #0 !dbg !682 {
  %3 = alloca %struct.TEXT_BUFFER_REC*, align 8
  %4 = alloca %struct._LINE_REC*, align 8
  %5 = alloca %struct._LINE_REC*, align 8
  store %struct.TEXT_BUFFER_REC* %0, %struct.TEXT_BUFFER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.TEXT_BUFFER_REC** %3, metadata !685, metadata !108), !dbg !686
  store %struct._LINE_REC* %1, %struct._LINE_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._LINE_REC** %4, metadata !687, metadata !108), !dbg !688
  call void @llvm.dbg.declare(metadata %struct._LINE_REC** %5, metadata !689, metadata !108), !dbg !690
  %6 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %3, align 8, !dbg !691
  %7 = call %struct._LINE_REC* @textbuffer_line_create(%struct.TEXT_BUFFER_REC* %6), !dbg !692
  store %struct._LINE_REC* %7, %struct._LINE_REC** %5, align 8, !dbg !693
  %8 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !694
  %9 = load %struct._LINE_REC*, %struct._LINE_REC** %5, align 8, !dbg !695
  %10 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %9, i32 0, i32 0, !dbg !696
  store %struct._LINE_REC* %8, %struct._LINE_REC** %10, align 8, !dbg !697
  %11 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !698
  %12 = icmp eq %struct._LINE_REC* %11, null, !dbg !700
  br i1 %12, label %13, label %33, !dbg !701

; <label>:13:                                     ; preds = %2
  %14 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %3, align 8, !dbg !702
  %15 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %14, i32 0, i32 1, !dbg !704
  %16 = load %struct._LINE_REC*, %struct._LINE_REC** %15, align 8, !dbg !704
  %17 = load %struct._LINE_REC*, %struct._LINE_REC** %5, align 8, !dbg !705
  %18 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %17, i32 0, i32 1, !dbg !706
  store %struct._LINE_REC* %16, %struct._LINE_REC** %18, align 8, !dbg !707
  %19 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %3, align 8, !dbg !708
  %20 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %19, i32 0, i32 1, !dbg !710
  %21 = load %struct._LINE_REC*, %struct._LINE_REC** %20, align 8, !dbg !710
  %22 = icmp ne %struct._LINE_REC* %21, null, !dbg !711
  br i1 %22, label %23, label %29, !dbg !712

; <label>:23:                                     ; preds = %13
  %24 = load %struct._LINE_REC*, %struct._LINE_REC** %5, align 8, !dbg !713
  %25 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %3, align 8, !dbg !714
  %26 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %25, i32 0, i32 1, !dbg !715
  %27 = load %struct._LINE_REC*, %struct._LINE_REC** %26, align 8, !dbg !715
  %28 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %27, i32 0, i32 0, !dbg !716
  store %struct._LINE_REC* %24, %struct._LINE_REC** %28, align 8, !dbg !717
  br label %29, !dbg !714

; <label>:29:                                     ; preds = %23, %13
  %30 = load %struct._LINE_REC*, %struct._LINE_REC** %5, align 8, !dbg !718
  %31 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %3, align 8, !dbg !719
  %32 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %31, i32 0, i32 1, !dbg !720
  store %struct._LINE_REC* %30, %struct._LINE_REC** %32, align 8, !dbg !721
  br label %53, !dbg !722

; <label>:33:                                     ; preds = %2
  %34 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !723
  %35 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %34, i32 0, i32 1, !dbg !725
  %36 = load %struct._LINE_REC*, %struct._LINE_REC** %35, align 8, !dbg !725
  %37 = load %struct._LINE_REC*, %struct._LINE_REC** %5, align 8, !dbg !726
  %38 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %37, i32 0, i32 1, !dbg !727
  store %struct._LINE_REC* %36, %struct._LINE_REC** %38, align 8, !dbg !728
  %39 = load %struct._LINE_REC*, %struct._LINE_REC** %5, align 8, !dbg !729
  %40 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %39, i32 0, i32 1, !dbg !731
  %41 = load %struct._LINE_REC*, %struct._LINE_REC** %40, align 8, !dbg !731
  %42 = icmp ne %struct._LINE_REC* %41, null, !dbg !732
  br i1 %42, label %43, label %49, !dbg !733

; <label>:43:                                     ; preds = %33
  %44 = load %struct._LINE_REC*, %struct._LINE_REC** %5, align 8, !dbg !734
  %45 = load %struct._LINE_REC*, %struct._LINE_REC** %5, align 8, !dbg !735
  %46 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %45, i32 0, i32 1, !dbg !736
  %47 = load %struct._LINE_REC*, %struct._LINE_REC** %46, align 8, !dbg !736
  %48 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %47, i32 0, i32 0, !dbg !737
  store %struct._LINE_REC* %44, %struct._LINE_REC** %48, align 8, !dbg !738
  br label %49, !dbg !735

; <label>:49:                                     ; preds = %43, %33
  %50 = load %struct._LINE_REC*, %struct._LINE_REC** %5, align 8, !dbg !739
  %51 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !740
  %52 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %51, i32 0, i32 1, !dbg !741
  store %struct._LINE_REC* %50, %struct._LINE_REC** %52, align 8, !dbg !742
  br label %53

; <label>:53:                                     ; preds = %49, %29
  %54 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !743
  %55 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %3, align 8, !dbg !745
  %56 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %55, i32 0, i32 3, !dbg !746
  %57 = load %struct._LINE_REC*, %struct._LINE_REC** %56, align 8, !dbg !746
  %58 = icmp eq %struct._LINE_REC* %54, %57, !dbg !747
  br i1 %58, label %59, label %63, !dbg !748

; <label>:59:                                     ; preds = %53
  %60 = load %struct._LINE_REC*, %struct._LINE_REC** %5, align 8, !dbg !749
  %61 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %3, align 8, !dbg !750
  %62 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %61, i32 0, i32 3, !dbg !751
  store %struct._LINE_REC* %60, %struct._LINE_REC** %62, align 8, !dbg !752
  br label %63, !dbg !750

; <label>:63:                                     ; preds = %59, %53
  %64 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %3, align 8, !dbg !753
  %65 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %64, i32 0, i32 2, !dbg !754
  %66 = load i32, i32* %65, align 8, !dbg !755
  %67 = add nsw i32 %66, 1, !dbg !755
  store i32 %67, i32* %65, align 8, !dbg !755
  %68 = load %struct._LINE_REC*, %struct._LINE_REC** %5, align 8, !dbg !756
  ret %struct._LINE_REC* %68, !dbg !757
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal void @text_chunk_append(%struct.TEXT_BUFFER_REC*, i8*, i32) #0 !dbg !758 {
  %4 = alloca %struct.TEXT_BUFFER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TEXT_CHUNK_REC*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TEXT_BUFFER_REC* %0, %struct.TEXT_BUFFER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.TEXT_BUFFER_REC** %4, metadata !761, metadata !108), !dbg !762
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !763, metadata !108), !dbg !764
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !765, metadata !108), !dbg !766
  call void @llvm.dbg.declare(metadata %struct.TEXT_CHUNK_REC** %7, metadata !767, metadata !108), !dbg !768
  call void @llvm.dbg.declare(metadata i32* %8, metadata !769, metadata !108), !dbg !770
  call void @llvm.dbg.declare(metadata i32* %9, metadata !771, metadata !108), !dbg !772
  %11 = load i32, i32* %6, align 4, !dbg !773
  %12 = icmp eq i32 %11, 0, !dbg !775
  br i1 %12, label %13, label %14, !dbg !776

; <label>:13:                                     ; preds = %3
  br label %161, !dbg !777

; <label>:14:                                     ; preds = %3
  %15 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %4, align 8, !dbg !778
  %16 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %15, i32 0, i32 4, !dbg !779
  %17 = load %struct.TEXT_CHUNK_REC*, %struct.TEXT_CHUNK_REC** %16, align 8, !dbg !779
  store %struct.TEXT_CHUNK_REC* %17, %struct.TEXT_CHUNK_REC** %7, align 8, !dbg !780
  br label %18, !dbg !781

; <label>:18:                                     ; preds = %98, %14
  %19 = load %struct.TEXT_CHUNK_REC*, %struct.TEXT_CHUNK_REC** %7, align 8, !dbg !782
  %20 = getelementptr inbounds %struct.TEXT_CHUNK_REC, %struct.TEXT_CHUNK_REC* %19, i32 0, i32 1, !dbg !784
  %21 = load i32, i32* %20, align 4, !dbg !784
  %22 = load i32, i32* %6, align 4, !dbg !785
  %23 = add nsw i32 %21, %22, !dbg !786
  %24 = icmp sge i32 %23, 16358, !dbg !787
  br i1 %24, label %25, label %128, !dbg !788

; <label>:25:                                     ; preds = %18
  %26 = load %struct.TEXT_CHUNK_REC*, %struct.TEXT_CHUNK_REC** %7, align 8, !dbg !789
  %27 = getelementptr inbounds %struct.TEXT_CHUNK_REC, %struct.TEXT_CHUNK_REC* %26, i32 0, i32 1, !dbg !791
  %28 = load i32, i32* %27, align 4, !dbg !791
  %29 = sub nsw i32 16358, %28, !dbg !792
  store i32 %29, i32* %8, align 4, !dbg !793
  %30 = load i32, i32* %8, align 4, !dbg !794
  %31 = load i32, i32* %6, align 4, !dbg !796
  %32 = icmp slt i32 %30, %31, !dbg !797
  br i1 %32, label %33, label %72, !dbg !798

; <label>:33:                                     ; preds = %25
  %34 = load i32, i32* %8, align 4, !dbg !799
  %35 = sext i32 %34 to i64, !dbg !801
  %36 = load i8*, i8** %5, align 8, !dbg !801
  %37 = getelementptr inbounds i8, i8* %36, i64 %35, !dbg !801
  %38 = load i8, i8* %37, align 1, !dbg !801
  %39 = zext i8 %38 to i32, !dbg !802
  %40 = and i32 %39, 192, !dbg !803
  %41 = icmp ne i32 %40, 128, !dbg !804
  br i1 %41, label %72, label %42, !dbg !805

; <label>:42:                                     ; preds = %33
  call void @llvm.dbg.declare(metadata i32* %10, metadata !806, metadata !108), !dbg !808
  store i32 1, i32* %10, align 4, !dbg !809
  br label %43, !dbg !811

; <label>:43:                                     ; preds = %68, %42
  %44 = load i32, i32* %10, align 4, !dbg !812
  %45 = icmp slt i32 %44, 4, !dbg !815
  br i1 %45, label %46, label %50, !dbg !816

; <label>:46:                                     ; preds = %43
  %47 = load i32, i32* %8, align 4, !dbg !817
  %48 = load i32, i32* %10, align 4, !dbg !819
  %49 = icmp sge i32 %47, %48, !dbg !820
  br label %50

; <label>:50:                                     ; preds = %46, %43
  %51 = phi i1 [ false, %43 ], [ %49, %46 ]
  br i1 %51, label %52, label %71, !dbg !821

; <label>:52:                                     ; preds = %50
  %53 = load i32, i32* %8, align 4, !dbg !823
  %54 = load i32, i32* %10, align 4, !dbg !825
  %55 = sub nsw i32 %53, %54, !dbg !826
  %56 = sext i32 %55 to i64, !dbg !827
  %57 = load i8*, i8** %5, align 8, !dbg !827
  %58 = getelementptr inbounds i8, i8* %57, i64 %56, !dbg !827
  %59 = load i8, i8* %58, align 1, !dbg !827
  %60 = zext i8 %59 to i32, !dbg !828
  %61 = and i32 %60, 192, !dbg !829
  %62 = icmp ne i32 %61, 128, !dbg !830
  br i1 %62, label %63, label %67, !dbg !831

; <label>:63:                                     ; preds = %52
  %64 = load i32, i32* %10, align 4, !dbg !832
  %65 = load i32, i32* %8, align 4, !dbg !834
  %66 = sub nsw i32 %65, %64, !dbg !834
  store i32 %66, i32* %8, align 4, !dbg !834
  br label %71, !dbg !835

; <label>:67:                                     ; preds = %52
  br label %68, !dbg !836

; <label>:68:                                     ; preds = %67
  %69 = load i32, i32* %10, align 4, !dbg !838
  %70 = add nsw i32 %69, 1, !dbg !838
  store i32 %70, i32* %10, align 4, !dbg !838
  br label %43, !dbg !840, !llvm.loop !841

; <label>:71:                                     ; preds = %63, %50
  br label %72, !dbg !843

; <label>:72:                                     ; preds = %71, %33, %25
  store i32 5, i32* %9, align 4, !dbg !844
  br label %73, !dbg !846

; <label>:73:                                     ; preds = %95, %72
  %74 = load i32, i32* %9, align 4, !dbg !847
  %75 = icmp sgt i32 %74, 0, !dbg !850
  br i1 %75, label %76, label %98, !dbg !851

; <label>:76:                                     ; preds = %73
  %77 = load i32, i32* %8, align 4, !dbg !852
  %78 = load i32, i32* %9, align 4, !dbg !855
  %79 = icmp sge i32 %77, %78, !dbg !856
  br i1 %79, label %80, label %94, !dbg !857

; <label>:80:                                     ; preds = %76
  %81 = load i32, i32* %8, align 4, !dbg !858
  %82 = load i32, i32* %9, align 4, !dbg !860
  %83 = sub nsw i32 %81, %82, !dbg !861
  %84 = sext i32 %83 to i64, !dbg !862
  %85 = load i8*, i8** %5, align 8, !dbg !862
  %86 = getelementptr inbounds i8, i8* %85, i64 %84, !dbg !862
  %87 = load i8, i8* %86, align 1, !dbg !862
  %88 = zext i8 %87 to i32, !dbg !862
  %89 = icmp eq i32 %88, 0, !dbg !863
  br i1 %89, label %90, label %94, !dbg !864

; <label>:90:                                     ; preds = %80
  %91 = load i32, i32* %9, align 4, !dbg !865
  %92 = load i32, i32* %8, align 4, !dbg !867
  %93 = sub nsw i32 %92, %91, !dbg !867
  store i32 %93, i32* %8, align 4, !dbg !867
  br label %98, !dbg !868

; <label>:94:                                     ; preds = %80, %76
  br label %95, !dbg !869

; <label>:95:                                     ; preds = %94
  %96 = load i32, i32* %9, align 4, !dbg !870
  %97 = add nsw i32 %96, -1, !dbg !870
  store i32 %97, i32* %9, align 4, !dbg !870
  br label %73, !dbg !872, !llvm.loop !873

; <label>:98:                                     ; preds = %90, %73
  %99 = load %struct.TEXT_CHUNK_REC*, %struct.TEXT_CHUNK_REC** %7, align 8, !dbg !875
  %100 = getelementptr inbounds %struct.TEXT_CHUNK_REC, %struct.TEXT_CHUNK_REC* %99, i32 0, i32 0, !dbg !876
  %101 = getelementptr inbounds [16368 x i8], [16368 x i8]* %100, i32 0, i32 0, !dbg !875
  %102 = load %struct.TEXT_CHUNK_REC*, %struct.TEXT_CHUNK_REC** %7, align 8, !dbg !877
  %103 = getelementptr inbounds %struct.TEXT_CHUNK_REC, %struct.TEXT_CHUNK_REC* %102, i32 0, i32 1, !dbg !878
  %104 = load i32, i32* %103, align 4, !dbg !878
  %105 = sext i32 %104 to i64, !dbg !879
  %106 = getelementptr inbounds i8, i8* %101, i64 %105, !dbg !879
  %107 = load i8*, i8** %5, align 8, !dbg !880
  %108 = load i32, i32* %8, align 4, !dbg !881
  %109 = sext i32 %108 to i64, !dbg !881
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %106, i8* %107, i64 %109, i32 1, i1 false), !dbg !882
  %110 = load i32, i32* %8, align 4, !dbg !883
  %111 = load %struct.TEXT_CHUNK_REC*, %struct.TEXT_CHUNK_REC** %7, align 8, !dbg !884
  %112 = getelementptr inbounds %struct.TEXT_CHUNK_REC, %struct.TEXT_CHUNK_REC* %111, i32 0, i32 1, !dbg !885
  %113 = load i32, i32* %112, align 4, !dbg !886
  %114 = add nsw i32 %113, %110, !dbg !886
  store i32 %114, i32* %112, align 4, !dbg !886
  %115 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %4, align 8, !dbg !887
  %116 = call %struct.TEXT_CHUNK_REC* @text_chunk_create(%struct.TEXT_BUFFER_REC* %115), !dbg !888
  store %struct.TEXT_CHUNK_REC* %116, %struct.TEXT_CHUNK_REC** %7, align 8, !dbg !889
  %117 = load %struct.TEXT_CHUNK_REC*, %struct.TEXT_CHUNK_REC** %7, align 8, !dbg !890
  %118 = getelementptr inbounds %struct.TEXT_CHUNK_REC, %struct.TEXT_CHUNK_REC* %117, i32 0, i32 2, !dbg !891
  %119 = load i32, i32* %118, align 4, !dbg !892
  %120 = add nsw i32 %119, 1, !dbg !892
  store i32 %120, i32* %118, align 4, !dbg !892
  %121 = load i32, i32* %8, align 4, !dbg !893
  %122 = load i32, i32* %6, align 4, !dbg !894
  %123 = sub nsw i32 %122, %121, !dbg !894
  store i32 %123, i32* %6, align 4, !dbg !894
  %124 = load i32, i32* %8, align 4, !dbg !895
  %125 = load i8*, i8** %5, align 8, !dbg !896
  %126 = sext i32 %124 to i64, !dbg !896
  %127 = getelementptr inbounds i8, i8* %125, i64 %126, !dbg !896
  store i8* %127, i8** %5, align 8, !dbg !896
  br label %18, !dbg !897, !llvm.loop !899

; <label>:128:                                    ; preds = %18
  %129 = load %struct.TEXT_CHUNK_REC*, %struct.TEXT_CHUNK_REC** %7, align 8, !dbg !900
  %130 = getelementptr inbounds %struct.TEXT_CHUNK_REC, %struct.TEXT_CHUNK_REC* %129, i32 0, i32 0, !dbg !901
  %131 = getelementptr inbounds [16368 x i8], [16368 x i8]* %130, i32 0, i32 0, !dbg !900
  %132 = load %struct.TEXT_CHUNK_REC*, %struct.TEXT_CHUNK_REC** %7, align 8, !dbg !902
  %133 = getelementptr inbounds %struct.TEXT_CHUNK_REC, %struct.TEXT_CHUNK_REC* %132, i32 0, i32 1, !dbg !903
  %134 = load i32, i32* %133, align 4, !dbg !903
  %135 = sext i32 %134 to i64, !dbg !904
  %136 = getelementptr inbounds i8, i8* %131, i64 %135, !dbg !904
  %137 = load i8*, i8** %5, align 8, !dbg !905
  %138 = load i32, i32* %6, align 4, !dbg !906
  %139 = sext i32 %138 to i64, !dbg !906
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %136, i8* %137, i64 %139, i32 1, i1 false), !dbg !907
  %140 = load i32, i32* %6, align 4, !dbg !908
  %141 = load %struct.TEXT_CHUNK_REC*, %struct.TEXT_CHUNK_REC** %7, align 8, !dbg !909
  %142 = getelementptr inbounds %struct.TEXT_CHUNK_REC, %struct.TEXT_CHUNK_REC* %141, i32 0, i32 1, !dbg !910
  %143 = load i32, i32* %142, align 4, !dbg !911
  %144 = add nsw i32 %143, %140, !dbg !911
  store i32 %144, i32* %142, align 4, !dbg !911
  br label %145, !dbg !912, !llvm.loop !913

; <label>:145:                                    ; preds = %128
  %146 = load %struct.TEXT_CHUNK_REC*, %struct.TEXT_CHUNK_REC** %7, align 8, !dbg !914
  %147 = getelementptr inbounds %struct.TEXT_CHUNK_REC, %struct.TEXT_CHUNK_REC* %146, i32 0, i32 1, !dbg !917
  %148 = load i32, i32* %147, align 4, !dbg !917
  %149 = sext i32 %148 to i64, !dbg !918
  %150 = load %struct.TEXT_CHUNK_REC*, %struct.TEXT_CHUNK_REC** %7, align 8, !dbg !919
  %151 = getelementptr inbounds %struct.TEXT_CHUNK_REC, %struct.TEXT_CHUNK_REC* %150, i32 0, i32 0, !dbg !920
  %152 = getelementptr inbounds [16368 x i8], [16368 x i8]* %151, i64 0, i64 %149, !dbg !918
  store i8 0, i8* %152, align 1, !dbg !921
  %153 = load %struct.TEXT_CHUNK_REC*, %struct.TEXT_CHUNK_REC** %7, align 8, !dbg !922
  %154 = getelementptr inbounds %struct.TEXT_CHUNK_REC, %struct.TEXT_CHUNK_REC* %153, i32 0, i32 1, !dbg !923
  %155 = load i32, i32* %154, align 4, !dbg !923
  %156 = add nsw i32 %155, 1, !dbg !924
  %157 = sext i32 %156 to i64, !dbg !925
  %158 = load %struct.TEXT_CHUNK_REC*, %struct.TEXT_CHUNK_REC** %7, align 8, !dbg !926
  %159 = getelementptr inbounds %struct.TEXT_CHUNK_REC, %struct.TEXT_CHUNK_REC* %158, i32 0, i32 0, !dbg !927
  %160 = getelementptr inbounds [16368 x i8], [16368 x i8]* %159, i64 0, i64 %157, !dbg !925
  store i8 -128, i8* %160, align 1, !dbg !928
  br label %161, !dbg !929

; <label>:161:                                    ; preds = %13, %145
  ret void, !dbg !930
}

; Function Attrs: nounwind uwtable
define void @textbuffer_remove(%struct.TEXT_BUFFER_REC*, %struct._LINE_REC*) #0 !dbg !931 {
  %3 = alloca %struct.TEXT_BUFFER_REC*, align 8
  %4 = alloca %struct._LINE_REC*, align 8
  store %struct.TEXT_BUFFER_REC* %0, %struct.TEXT_BUFFER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.TEXT_BUFFER_REC** %3, metadata !934, metadata !108), !dbg !935
  store %struct._LINE_REC* %1, %struct._LINE_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._LINE_REC** %4, metadata !936, metadata !108), !dbg !937
  br label %5, !dbg !938, !llvm.loop !939

; <label>:5:                                      ; preds = %2
  %6 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %3, align 8, !dbg !940
  %7 = icmp ne %struct.TEXT_BUFFER_REC* %6, null, !dbg !944
  br i1 %7, label %8, label %9, !dbg !940

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !945

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.textbuffer_remove, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)), !dbg !948
  br label %82, !dbg !951

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !952

; <label>:11:                                     ; preds = %10
  br label %12, !dbg !954, !llvm.loop !955

; <label>:12:                                     ; preds = %11
  %13 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !956
  %14 = icmp ne %struct._LINE_REC* %13, null, !dbg !960
  br i1 %14, label %15, label %16, !dbg !956

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !961

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.textbuffer_remove, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0)), !dbg !964
  br label %82, !dbg !967

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !968

; <label>:18:                                     ; preds = %17
  %19 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %3, align 8, !dbg !970
  %20 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %19, i32 0, i32 1, !dbg !972
  %21 = load %struct._LINE_REC*, %struct._LINE_REC** %20, align 8, !dbg !972
  %22 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !973
  %23 = icmp eq %struct._LINE_REC* %21, %22, !dbg !974
  br i1 %23, label %24, label %30, !dbg !975

; <label>:24:                                     ; preds = %18
  %25 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !976
  %26 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %25, i32 0, i32 1, !dbg !977
  %27 = load %struct._LINE_REC*, %struct._LINE_REC** %26, align 8, !dbg !977
  %28 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %3, align 8, !dbg !978
  %29 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %28, i32 0, i32 1, !dbg !979
  store %struct._LINE_REC* %27, %struct._LINE_REC** %29, align 8, !dbg !980
  br label %30, !dbg !978

; <label>:30:                                     ; preds = %24, %18
  %31 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !981
  %32 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %31, i32 0, i32 0, !dbg !983
  %33 = load %struct._LINE_REC*, %struct._LINE_REC** %32, align 8, !dbg !983
  %34 = icmp ne %struct._LINE_REC* %33, null, !dbg !984
  br i1 %34, label %35, label %43, !dbg !985

; <label>:35:                                     ; preds = %30
  %36 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !986
  %37 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %36, i32 0, i32 1, !dbg !987
  %38 = load %struct._LINE_REC*, %struct._LINE_REC** %37, align 8, !dbg !987
  %39 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !988
  %40 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %39, i32 0, i32 0, !dbg !989
  %41 = load %struct._LINE_REC*, %struct._LINE_REC** %40, align 8, !dbg !989
  %42 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %41, i32 0, i32 1, !dbg !990
  store %struct._LINE_REC* %38, %struct._LINE_REC** %42, align 8, !dbg !991
  br label %43, !dbg !988

; <label>:43:                                     ; preds = %35, %30
  %44 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !992
  %45 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %44, i32 0, i32 1, !dbg !994
  %46 = load %struct._LINE_REC*, %struct._LINE_REC** %45, align 8, !dbg !994
  %47 = icmp ne %struct._LINE_REC* %46, null, !dbg !995
  br i1 %47, label %48, label %56, !dbg !996

; <label>:48:                                     ; preds = %43
  %49 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !997
  %50 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %49, i32 0, i32 0, !dbg !998
  %51 = load %struct._LINE_REC*, %struct._LINE_REC** %50, align 8, !dbg !998
  %52 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !999
  %53 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %52, i32 0, i32 1, !dbg !1000
  %54 = load %struct._LINE_REC*, %struct._LINE_REC** %53, align 8, !dbg !1000
  %55 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %54, i32 0, i32 0, !dbg !1001
  store %struct._LINE_REC* %51, %struct._LINE_REC** %55, align 8, !dbg !1002
  br label %56, !dbg !999

; <label>:56:                                     ; preds = %48, %43
  %57 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %3, align 8, !dbg !1003
  %58 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %57, i32 0, i32 3, !dbg !1005
  %59 = load %struct._LINE_REC*, %struct._LINE_REC** %58, align 8, !dbg !1005
  %60 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !1006
  %61 = icmp eq %struct._LINE_REC* %59, %60, !dbg !1007
  br i1 %61, label %62, label %68, !dbg !1008

; <label>:62:                                     ; preds = %56
  %63 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !1009
  %64 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %63, i32 0, i32 0, !dbg !1011
  %65 = load %struct._LINE_REC*, %struct._LINE_REC** %64, align 8, !dbg !1011
  %66 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %3, align 8, !dbg !1012
  %67 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %66, i32 0, i32 3, !dbg !1013
  store %struct._LINE_REC* %65, %struct._LINE_REC** %67, align 8, !dbg !1014
  br label %68, !dbg !1015

; <label>:68:                                     ; preds = %62, %56
  %69 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !1016
  %70 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %69, i32 0, i32 1, !dbg !1017
  store %struct._LINE_REC* null, %struct._LINE_REC** %70, align 8, !dbg !1018
  %71 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !1019
  %72 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %71, i32 0, i32 0, !dbg !1020
  store %struct._LINE_REC* null, %struct._LINE_REC** %72, align 8, !dbg !1021
  %73 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %3, align 8, !dbg !1022
  %74 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %73, i32 0, i32 2, !dbg !1023
  %75 = load i32, i32* %74, align 8, !dbg !1024
  %76 = add nsw i32 %75, -1, !dbg !1024
  store i32 %76, i32* %74, align 8, !dbg !1024
  %77 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %3, align 8, !dbg !1025
  %78 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !1026
  call void @text_chunk_line_free(%struct.TEXT_BUFFER_REC* %77, %struct._LINE_REC* %78), !dbg !1027
  br label %79, !dbg !1028, !llvm.loop !1029

; <label>:79:                                     ; preds = %68
  %80 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !1030
  %81 = bitcast %struct._LINE_REC* %80 to i8*, !dbg !1034
  call void @g_slice_free1(i64 40, i8* %81), !dbg !1035
  br label %82, !dbg !1036

; <label>:82:                                     ; preds = %9, %16, %79
  ret void, !dbg !1037
}

; Function Attrs: nounwind uwtable
define internal void @text_chunk_line_free(%struct.TEXT_BUFFER_REC*, %struct._LINE_REC*) #0 !dbg !1038 {
  %3 = alloca %struct.TEXT_BUFFER_REC*, align 8
  %4 = alloca %struct._LINE_REC*, align 8
  %5 = alloca %struct.TEXT_CHUNK_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  store %struct.TEXT_BUFFER_REC* %0, %struct.TEXT_BUFFER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.TEXT_BUFFER_REC** %3, metadata !1039, metadata !108), !dbg !1040
  store %struct._LINE_REC* %1, %struct._LINE_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._LINE_REC** %4, metadata !1041, metadata !108), !dbg !1042
  call void @llvm.dbg.declare(metadata %struct.TEXT_CHUNK_REC** %5, metadata !1043, metadata !108), !dbg !1044
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1045, metadata !108), !dbg !1046
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1047, metadata !108), !dbg !1048
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1049, metadata !108), !dbg !1050
  store i8* null, i8** %8, align 8, !dbg !1050
  %9 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !1051
  %10 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %9, i32 0, i32 2, !dbg !1053
  %11 = load i8*, i8** %10, align 8, !dbg !1053
  store i8* %11, i8** %6, align 8, !dbg !1054
  br label %12, !dbg !1055

; <label>:12:                                     ; preds = %69, %2
  %13 = load i8*, i8** %6, align 8, !dbg !1056
  %14 = load i8, i8* %13, align 1, !dbg !1060
  %15 = zext i8 %14 to i32, !dbg !1060
  %16 = icmp ne i32 %15, 0, !dbg !1061
  br i1 %16, label %17, label %18, !dbg !1062

; <label>:17:                                     ; preds = %12
  br label %69, !dbg !1063

; <label>:18:                                     ; preds = %12
  %19 = load i8*, i8** %6, align 8, !dbg !1064
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !1064
  store i8* %20, i8** %6, align 8, !dbg !1064
  %21 = load i8*, i8** %6, align 8, !dbg !1065
  %22 = load i8, i8* %21, align 1, !dbg !1066
  store i8 %22, i8* %7, align 1, !dbg !1067
  %23 = load i8, i8* %7, align 1, !dbg !1068
  %24 = zext i8 %23 to i32, !dbg !1068
  %25 = icmp eq i32 %24, 129, !dbg !1070
  br i1 %25, label %30, label %26, !dbg !1071

; <label>:26:                                     ; preds = %18
  %27 = load i8, i8* %7, align 1, !dbg !1072
  %28 = zext i8 %27 to i32, !dbg !1072
  %29 = icmp eq i32 %28, 128, !dbg !1074
  br i1 %29, label %30, label %68, !dbg !1075

; <label>:30:                                     ; preds = %26, %18
  %31 = load i8, i8* %7, align 1, !dbg !1076
  %32 = zext i8 %31 to i32, !dbg !1076
  %33 = icmp eq i32 %32, 129, !dbg !1079
  br i1 %33, label %34, label %38, !dbg !1080

; <label>:34:                                     ; preds = %30
  %35 = bitcast i8** %8 to i8*, !dbg !1081
  %36 = load i8*, i8** %6, align 8, !dbg !1082
  %37 = getelementptr inbounds i8, i8* %36, i64 1, !dbg !1083
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %37, i64 8, i32 1, i1 false), !dbg !1081
  br label %38, !dbg !1081

; <label>:38:                                     ; preds = %34, %30
  %39 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %3, align 8, !dbg !1084
  %40 = load i8*, i8** %6, align 8, !dbg !1085
  %41 = call %struct.TEXT_CHUNK_REC* @text_chunk_find(%struct.TEXT_BUFFER_REC* %39, i8* %40), !dbg !1086
  store %struct.TEXT_CHUNK_REC* %41, %struct.TEXT_CHUNK_REC** %5, align 8, !dbg !1087
  %42 = load %struct.TEXT_CHUNK_REC*, %struct.TEXT_CHUNK_REC** %5, align 8, !dbg !1088
  %43 = getelementptr inbounds %struct.TEXT_CHUNK_REC, %struct.TEXT_CHUNK_REC* %42, i32 0, i32 2, !dbg !1090
  %44 = load i32, i32* %43, align 4, !dbg !1091
  %45 = add nsw i32 %44, -1, !dbg !1091
  store i32 %45, i32* %43, align 4, !dbg !1091
  %46 = icmp eq i32 %45, 0, !dbg !1092
  br i1 %46, label %47, label %60, !dbg !1093

; <label>:47:                                     ; preds = %38
  %48 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %3, align 8, !dbg !1094
  %49 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %48, i32 0, i32 4, !dbg !1097
  %50 = load %struct.TEXT_CHUNK_REC*, %struct.TEXT_CHUNK_REC** %49, align 8, !dbg !1097
  %51 = load %struct.TEXT_CHUNK_REC*, %struct.TEXT_CHUNK_REC** %5, align 8, !dbg !1098
  %52 = icmp eq %struct.TEXT_CHUNK_REC* %50, %51, !dbg !1099
  br i1 %52, label %53, label %56, !dbg !1100

; <label>:53:                                     ; preds = %47
  %54 = load %struct.TEXT_CHUNK_REC*, %struct.TEXT_CHUNK_REC** %5, align 8, !dbg !1101
  %55 = getelementptr inbounds %struct.TEXT_CHUNK_REC, %struct.TEXT_CHUNK_REC* %54, i32 0, i32 1, !dbg !1102
  store i32 0, i32* %55, align 4, !dbg !1103
  br label %59, !dbg !1101

; <label>:56:                                     ; preds = %47
  %57 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %3, align 8, !dbg !1104
  %58 = load %struct.TEXT_CHUNK_REC*, %struct.TEXT_CHUNK_REC** %5, align 8, !dbg !1105
  call void @text_chunk_destroy(%struct.TEXT_BUFFER_REC* %57, %struct.TEXT_CHUNK_REC* %58), !dbg !1106
  br label %59

; <label>:59:                                     ; preds = %56, %53
  br label %60, !dbg !1107

; <label>:60:                                     ; preds = %59, %38
  %61 = load i8, i8* %7, align 1, !dbg !1108
  %62 = zext i8 %61 to i32, !dbg !1108
  %63 = icmp eq i32 %62, 128, !dbg !1110
  br i1 %63, label %64, label %65, !dbg !1111

; <label>:64:                                     ; preds = %60
  br label %72, !dbg !1112

; <label>:65:                                     ; preds = %60
  %66 = load i8*, i8** %8, align 8, !dbg !1113
  %67 = getelementptr inbounds i8, i8* %66, i64 -1, !dbg !1114
  store i8* %67, i8** %6, align 8, !dbg !1115
  br label %68, !dbg !1116

; <label>:68:                                     ; preds = %65, %26
  br label %69, !dbg !1117

; <label>:69:                                     ; preds = %68, %17
  %70 = load i8*, i8** %6, align 8, !dbg !1118
  %71 = getelementptr inbounds i8, i8* %70, i32 1, !dbg !1118
  store i8* %71, i8** %6, align 8, !dbg !1118
  br label %12, !dbg !1120, !llvm.loop !1121

; <label>:72:                                     ; preds = %64
  ret void, !dbg !1123
}

declare void @g_slist_free(%struct._GSList*) #2

; Function Attrs: nounwind uwtable
define void @textbuffer_line2text(%struct._LINE_REC*, i32, %struct._GString*) #0 !dbg !1124 {
  %4 = alloca %struct._LINE_REC*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._GString*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct._LINE_REC* %0, %struct._LINE_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._LINE_REC** %4, metadata !1140, metadata !108), !dbg !1141
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1142, metadata !108), !dbg !1143
  store %struct._GString* %2, %struct._GString** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GString** %6, metadata !1144, metadata !108), !dbg !1145
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1146, metadata !108), !dbg !1147
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1148, metadata !108), !dbg !1149
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1150, metadata !108), !dbg !1151
  br label %10, !dbg !1152, !llvm.loop !1153

; <label>:10:                                     ; preds = %3
  %11 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !1154
  %12 = icmp ne %struct._LINE_REC* %11, null, !dbg !1158
  br i1 %12, label %13, label %14, !dbg !1154

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !1159

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.textbuffer_line2text, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0)), !dbg !1162
  br label %119, !dbg !1165

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !1166

; <label>:16:                                     ; preds = %15
  br label %17, !dbg !1168, !llvm.loop !1169

; <label>:17:                                     ; preds = %16
  %18 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1170
  %19 = icmp ne %struct._GString* %18, null, !dbg !1174
  br i1 %19, label %20, label %21, !dbg !1170

; <label>:20:                                     ; preds = %17
  br label %22, !dbg !1175

; <label>:21:                                     ; preds = %17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.textbuffer_line2text, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0)), !dbg !1178
  br label %119, !dbg !1181

; <label>:22:                                     ; preds = %20
  br label %23, !dbg !1182

; <label>:23:                                     ; preds = %22
  %24 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1184
  %25 = call %struct._GString* @g_string_truncate(%struct._GString* %24, i64 0), !dbg !1185
  %26 = load %struct._LINE_REC*, %struct._LINE_REC** %4, align 8, !dbg !1186
  %27 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %26, i32 0, i32 2, !dbg !1188
  %28 = load i8*, i8** %27, align 8, !dbg !1188
  store i8* %28, i8** %8, align 8, !dbg !1189
  br label %29, !dbg !1190

; <label>:29:                                     ; preds = %118, %74, %56, %34, %23
  %30 = load i8*, i8** %8, align 8, !dbg !1191
  %31 = load i8, i8* %30, align 1, !dbg !1195
  %32 = zext i8 %31 to i32, !dbg !1195
  %33 = icmp ne i32 %32, 0, !dbg !1196
  br i1 %33, label %34, label %41, !dbg !1197

; <label>:34:                                     ; preds = %29
  %35 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1198
  %36 = load i8*, i8** %8, align 8, !dbg !1200
  %37 = load i8, i8* %36, align 1, !dbg !1201
  %38 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %35, i8 signext %37), !dbg !1202
  %39 = load i8*, i8** %8, align 8, !dbg !1203
  %40 = getelementptr inbounds i8, i8* %39, i32 1, !dbg !1203
  store i8* %40, i8** %8, align 8, !dbg !1203
  br label %29, !dbg !1204, !llvm.loop !1205

; <label>:41:                                     ; preds = %29
  %42 = load i8*, i8** %8, align 8, !dbg !1207
  %43 = getelementptr inbounds i8, i8* %42, i32 1, !dbg !1207
  store i8* %43, i8** %8, align 8, !dbg !1207
  %44 = load i8*, i8** %8, align 8, !dbg !1208
  %45 = load i8, i8* %44, align 1, !dbg !1209
  store i8 %45, i8* %7, align 1, !dbg !1210
  %46 = load i8*, i8** %8, align 8, !dbg !1211
  %47 = getelementptr inbounds i8, i8* %46, i32 1, !dbg !1211
  store i8* %47, i8** %8, align 8, !dbg !1211
  %48 = load i8, i8* %7, align 1, !dbg !1212
  %49 = zext i8 %48 to i32, !dbg !1212
  %50 = icmp eq i32 %49, 128, !dbg !1214
  br i1 %50, label %51, label %52, !dbg !1215

; <label>:51:                                     ; preds = %41
  br label %119, !dbg !1216

; <label>:52:                                     ; preds = %41
  %53 = load i8, i8* %7, align 1, !dbg !1218
  %54 = zext i8 %53 to i32, !dbg !1218
  %55 = icmp eq i32 %54, 129, !dbg !1220
  br i1 %55, label %56, label %60, !dbg !1221

; <label>:56:                                     ; preds = %52
  %57 = bitcast i8** %9 to i8*, !dbg !1222
  %58 = load i8*, i8** %8, align 8, !dbg !1224
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* %58, i64 8, i32 1, i1 false), !dbg !1222
  %59 = load i8*, i8** %9, align 8, !dbg !1225
  store i8* %59, i8** %8, align 8, !dbg !1226
  br label %29, !dbg !1227, !llvm.loop !1205

; <label>:60:                                     ; preds = %52
  %61 = load i32, i32* %5, align 4, !dbg !1228
  %62 = icmp ne i32 %61, 0, !dbg !1228
  br i1 %62, label %75, label %63, !dbg !1230

; <label>:63:                                     ; preds = %60
  %64 = load i8, i8* %7, align 1, !dbg !1231
  %65 = zext i8 %64 to i32, !dbg !1231
  %66 = icmp eq i32 %65, 138, !dbg !1234
  br i1 %66, label %71, label %67, !dbg !1235

; <label>:67:                                     ; preds = %63
  %68 = load i8, i8* %7, align 1, !dbg !1236
  %69 = zext i8 %68 to i32, !dbg !1236
  %70 = icmp eq i32 %69, 139, !dbg !1238
  br i1 %70, label %71, label %74, !dbg !1239

; <label>:71:                                     ; preds = %67, %63
  %72 = load i8*, i8** %8, align 8, !dbg !1240
  %73 = getelementptr inbounds i8, i8* %72, i32 1, !dbg !1240
  store i8* %73, i8** %8, align 8, !dbg !1240
  br label %74, !dbg !1241

; <label>:74:                                     ; preds = %71, %67
  br label %29, !dbg !1242, !llvm.loop !1205

; <label>:75:                                     ; preds = %60
  %76 = load i8, i8* %7, align 1, !dbg !1243
  %77 = zext i8 %76 to i32, !dbg !1243
  %78 = and i32 %77, 128, !dbg !1245
  %79 = icmp eq i32 %78, 0, !dbg !1246
  br i1 %79, label %80, label %84, !dbg !1247

; <label>:80:                                     ; preds = %75
  %81 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1248
  %82 = load i8, i8* %7, align 1, !dbg !1250
  %83 = zext i8 %82 to i32, !dbg !1250
  call void @set_color(%struct._GString* %81, i32 %83), !dbg !1251
  br label %118, !dbg !1252

; <label>:84:                                     ; preds = %75
  %85 = load i8, i8* %7, align 1, !dbg !1253
  %86 = zext i8 %85 to i32, !dbg !1253
  switch i32 %86, label %117 [
    i32 131, label %87
    i32 132, label %90
    i32 134, label %93
    i32 135, label %95
    i32 136, label %97
    i32 137, label %99
    i32 130, label %101
    i32 133, label %103
    i32 138, label %105
    i32 139, label %111
  ], !dbg !1255

; <label>:87:                                     ; preds = %84
  %88 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1256
  %89 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %88, i8 signext 31), !dbg !1258
  br label %117, !dbg !1259

; <label>:90:                                     ; preds = %84
  %91 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1260
  %92 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %91, i8 signext 22), !dbg !1261
  br label %117, !dbg !1262

; <label>:93:                                     ; preds = %84
  %94 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1263
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 97), !dbg !1264
  br label %117, !dbg !1265

; <label>:95:                                     ; preds = %84
  %96 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1266
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %96, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 99), !dbg !1267
  br label %117, !dbg !1268

; <label>:97:                                     ; preds = %84
  %98 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1269
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 102), !dbg !1270
  br label %117, !dbg !1271

; <label>:99:                                     ; preds = %84
  %100 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1272
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 105), !dbg !1273
  br label %117, !dbg !1274

; <label>:101:                                    ; preds = %84
  %102 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1275
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %102, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 48, i32 47), !dbg !1276
  br label %117, !dbg !1277

; <label>:103:                                    ; preds = %84
  %104 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1278
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %104, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 101), !dbg !1279
  br label %117, !dbg !1280

; <label>:105:                                    ; preds = %84
  %106 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1281
  %107 = load i8*, i8** %8, align 8, !dbg !1282
  %108 = getelementptr inbounds i8, i8* %107, i32 1, !dbg !1282
  store i8* %108, i8** %8, align 8, !dbg !1282
  %109 = load i8, i8* %107, align 1, !dbg !1283
  %110 = zext i8 %109 to i32, !dbg !1283
  call void @format_ext_color(%struct._GString* %106, i32 0, i32 %110), !dbg !1284
  br label %117, !dbg !1285

; <label>:111:                                    ; preds = %84
  %112 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1286
  %113 = load i8*, i8** %8, align 8, !dbg !1287
  %114 = getelementptr inbounds i8, i8* %113, i32 1, !dbg !1287
  store i8* %114, i8** %8, align 8, !dbg !1287
  %115 = load i8, i8* %113, align 1, !dbg !1288
  %116 = zext i8 %115 to i32, !dbg !1288
  call void @format_ext_color(%struct._GString* %112, i32 1, i32 %116), !dbg !1289
  br label %117, !dbg !1290

; <label>:117:                                    ; preds = %84, %111, %105, %103, %101, %99, %97, %95, %93, %90, %87
  br label %118

; <label>:118:                                    ; preds = %117, %80
  br label %29, !dbg !1291, !llvm.loop !1205

; <label>:119:                                    ; preds = %14, %21, %51
  ret void, !dbg !1293
}

declare %struct._GString* @g_string_truncate(%struct._GString*, i64) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._GString* @g_string_append_c_inline(%struct._GString*, i8 signext) #4 !dbg !1294 {
  %3 = alloca %struct._GString*, align 8
  %4 = alloca i8, align 1
  store %struct._GString* %0, %struct._GString** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._GString** %3, metadata !1297, metadata !108), !dbg !1298
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !1299, metadata !108), !dbg !1300
  %5 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1301
  %6 = getelementptr inbounds %struct._GString, %struct._GString* %5, i32 0, i32 1, !dbg !1303
  %7 = load i64, i64* %6, align 8, !dbg !1303
  %8 = add i64 %7, 1, !dbg !1304
  %9 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1305
  %10 = getelementptr inbounds %struct._GString, %struct._GString* %9, i32 0, i32 2, !dbg !1306
  %11 = load i64, i64* %10, align 8, !dbg !1306
  %12 = icmp ult i64 %8, %11, !dbg !1307
  br i1 %12, label %13, label %30, !dbg !1308

; <label>:13:                                     ; preds = %2
  %14 = load i8, i8* %4, align 1, !dbg !1309
  %15 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1311
  %16 = getelementptr inbounds %struct._GString, %struct._GString* %15, i32 0, i32 1, !dbg !1312
  %17 = load i64, i64* %16, align 8, !dbg !1313
  %18 = add i64 %17, 1, !dbg !1313
  store i64 %18, i64* %16, align 8, !dbg !1313
  %19 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1314
  %20 = getelementptr inbounds %struct._GString, %struct._GString* %19, i32 0, i32 0, !dbg !1315
  %21 = load i8*, i8** %20, align 8, !dbg !1315
  %22 = getelementptr inbounds i8, i8* %21, i64 %17, !dbg !1314
  store i8 %14, i8* %22, align 1, !dbg !1316
  %23 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1317
  %24 = getelementptr inbounds %struct._GString, %struct._GString* %23, i32 0, i32 1, !dbg !1318
  %25 = load i64, i64* %24, align 8, !dbg !1318
  %26 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1319
  %27 = getelementptr inbounds %struct._GString, %struct._GString* %26, i32 0, i32 0, !dbg !1320
  %28 = load i8*, i8** %27, align 8, !dbg !1320
  %29 = getelementptr inbounds i8, i8* %28, i64 %25, !dbg !1319
  store i8 0, i8* %29, align 1, !dbg !1321
  br label %34, !dbg !1322

; <label>:30:                                     ; preds = %2
  %31 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1323
  %32 = load i8, i8* %4, align 1, !dbg !1324
  %33 = call %struct._GString* @g_string_insert_c(%struct._GString* %31, i64 -1, i8 signext %32), !dbg !1325
  br label %34

; <label>:34:                                     ; preds = %30, %13
  %35 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1326
  ret %struct._GString* %35, !dbg !1327
}

; Function Attrs: nounwind uwtable
define internal void @set_color(%struct._GString*, i32) #0 !dbg !1328 {
  %3 = alloca %struct._GString*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct._GString* %0, %struct._GString** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._GString** %3, metadata !1331, metadata !108), !dbg !1332
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1333, metadata !108), !dbg !1334
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1335, metadata !108), !dbg !1336
  store i32 -1, i32* %5, align 4, !dbg !1336
  %6 = load i32, i32* %4, align 4, !dbg !1337
  %7 = and i32 %6, 16, !dbg !1339
  %8 = icmp ne i32 %7, 0, !dbg !1339
  br i1 %8, label %13, label %9, !dbg !1340

; <label>:9:                                      ; preds = %2
  %10 = load i32, i32* %4, align 4, !dbg !1341
  %11 = and i32 %10, 15, !dbg !1342
  %12 = add nsw i32 %11, 48, !dbg !1343
  store i32 %12, i32* %5, align 4, !dbg !1344
  br label %13, !dbg !1345

; <label>:13:                                     ; preds = %9, %2
  %14 = load i32, i32* %4, align 4, !dbg !1346
  %15 = and i32 %14, 32, !dbg !1348
  %16 = icmp eq i32 %15, 0, !dbg !1349
  br i1 %16, label %17, label %20, !dbg !1350

; <label>:17:                                     ; preds = %13
  %18 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1351
  %19 = load i32, i32* %5, align 4, !dbg !1353
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 %19, i32 47), !dbg !1354
  br label %23, !dbg !1355

; <label>:20:                                     ; preds = %13
  %21 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1356
  %22 = load i32, i32* %5, align 4, !dbg !1358
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 47, i32 %22), !dbg !1359
  br label %23

; <label>:23:                                     ; preds = %20, %17
  ret void, !dbg !1360
}

declare void @g_string_append_printf(%struct._GString*, i8*, ...) #2

declare void @format_ext_color(%struct._GString*, i32, i32) #2

; Function Attrs: nounwind uwtable
define %struct._GList* @textbuffer_find_text(%struct.TEXT_BUFFER_REC*, %struct._LINE_REC*, i32, i32, i8*, i32, i32, i32, i32, i32) #0 !dbg !1361 {
  %11 = alloca %struct._GList*, align 8
  %12 = alloca %struct.TEXT_BUFFER_REC*, align 8
  %13 = alloca %struct._LINE_REC*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct._GRegex*, align 8
  %23 = alloca %struct._LINE_REC*, align 8
  %24 = alloca %struct._LINE_REC*, align 8
  %25 = alloca %struct._GList*, align 8
  %26 = alloca %struct._GString*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i8* (i8*, i8*)*, align 8
  store %struct.TEXT_BUFFER_REC* %0, %struct.TEXT_BUFFER_REC** %12, align 8
  call void @llvm.dbg.declare(metadata %struct.TEXT_BUFFER_REC** %12, metadata !1372, metadata !108), !dbg !1373
  store %struct._LINE_REC* %1, %struct._LINE_REC** %13, align 8
  call void @llvm.dbg.declare(metadata %struct._LINE_REC** %13, metadata !1374, metadata !108), !dbg !1375
  store i32 %2, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1376, metadata !108), !dbg !1377
  store i32 %3, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1378, metadata !108), !dbg !1379
  store i8* %4, i8** %16, align 8
  call void @llvm.dbg.declare(metadata i8** %16, metadata !1380, metadata !108), !dbg !1381
  store i32 %5, i32* %17, align 4
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1382, metadata !108), !dbg !1383
  store i32 %6, i32* %18, align 4
  call void @llvm.dbg.declare(metadata i32* %18, metadata !1384, metadata !108), !dbg !1385
  store i32 %7, i32* %19, align 4
  call void @llvm.dbg.declare(metadata i32* %19, metadata !1386, metadata !108), !dbg !1387
  store i32 %8, i32* %20, align 4
  call void @llvm.dbg.declare(metadata i32* %20, metadata !1388, metadata !108), !dbg !1389
  store i32 %9, i32* %21, align 4
  call void @llvm.dbg.declare(metadata i32* %21, metadata !1390, metadata !108), !dbg !1391
  call void @llvm.dbg.declare(metadata %struct._GRegex** %22, metadata !1392, metadata !108), !dbg !1398
  call void @llvm.dbg.declare(metadata %struct._LINE_REC** %23, metadata !1399, metadata !108), !dbg !1400
  call void @llvm.dbg.declare(metadata %struct._LINE_REC** %24, metadata !1401, metadata !108), !dbg !1402
  call void @llvm.dbg.declare(metadata %struct._GList** %25, metadata !1403, metadata !108), !dbg !1404
  call void @llvm.dbg.declare(metadata %struct._GString** %26, metadata !1405, metadata !108), !dbg !1406
  call void @llvm.dbg.declare(metadata i32* %27, metadata !1407, metadata !108), !dbg !1408
  call void @llvm.dbg.declare(metadata i32* %28, metadata !1409, metadata !108), !dbg !1410
  call void @llvm.dbg.declare(metadata i32* %29, metadata !1411, metadata !108), !dbg !1412
  call void @llvm.dbg.declare(metadata i8* (i8*, i8*)** %30, metadata !1413, metadata !108), !dbg !1418
  br label %31, !dbg !1419, !llvm.loop !1420

; <label>:31:                                     ; preds = %10
  %32 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %12, align 8, !dbg !1421
  %33 = icmp ne %struct.TEXT_BUFFER_REC* %32, null, !dbg !1425
  br i1 %33, label %34, label %35, !dbg !1421

; <label>:34:                                     ; preds = %31
  br label %36, !dbg !1426

; <label>:35:                                     ; preds = %31
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.textbuffer_find_text, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)), !dbg !1429
  store %struct._GList* null, %struct._GList** %11, align 8, !dbg !1432
  br label %232, !dbg !1432

; <label>:36:                                     ; preds = %34
  br label %37, !dbg !1433

; <label>:37:                                     ; preds = %36
  br label %38, !dbg !1435, !llvm.loop !1436

; <label>:38:                                     ; preds = %37
  %39 = load i8*, i8** %16, align 8, !dbg !1437
  %40 = icmp ne i8* %39, null, !dbg !1441
  br i1 %40, label %41, label %42, !dbg !1437

; <label>:41:                                     ; preds = %38
  br label %43, !dbg !1442

; <label>:42:                                     ; preds = %38
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.textbuffer_find_text, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0)), !dbg !1445
  store %struct._GList* null, %struct._GList** %11, align 8, !dbg !1448
  br label %232, !dbg !1448

; <label>:43:                                     ; preds = %41
  br label %44, !dbg !1449

; <label>:44:                                     ; preds = %43
  store %struct._GRegex* null, %struct._GRegex** %22, align 8, !dbg !1451
  %45 = load i32, i32* %19, align 4, !dbg !1452
  %46 = icmp ne i32 %45, 0, !dbg !1452
  br i1 %46, label %47, label %57, !dbg !1454

; <label>:47:                                     ; preds = %44
  %48 = load i8*, i8** %16, align 8, !dbg !1455
  %49 = load i32, i32* %21, align 4, !dbg !1457
  %50 = icmp ne i32 %49, 0, !dbg !1457
  %51 = select i1 %50, i32 0, i32 1, !dbg !1457
  %52 = call %struct._GRegex* @i_regex_new(i8* %48, i32 %51, i32 0, %struct._GError** null), !dbg !1458
  store %struct._GRegex* %52, %struct._GRegex** %22, align 8, !dbg !1459
  %53 = load %struct._GRegex*, %struct._GRegex** %22, align 8, !dbg !1460
  %54 = icmp eq %struct._GRegex* %53, null, !dbg !1462
  br i1 %54, label %55, label %56, !dbg !1463

; <label>:55:                                     ; preds = %47
  store %struct._GList* null, %struct._GList** %11, align 8, !dbg !1464
  br label %232, !dbg !1464

; <label>:56:                                     ; preds = %47
  br label %57, !dbg !1465

; <label>:57:                                     ; preds = %56, %44
  store %struct._GList* null, %struct._GList** %25, align 8, !dbg !1466
  store i32 0, i32* %28, align 4, !dbg !1467
  %58 = call %struct._GString* @g_string_new(i8* null), !dbg !1468
  store %struct._GString* %58, %struct._GString** %26, align 8, !dbg !1469
  %59 = load %struct._LINE_REC*, %struct._LINE_REC** %13, align 8, !dbg !1470
  %60 = icmp ne %struct._LINE_REC* %59, null, !dbg !1471
  br i1 %60, label %61, label %63, !dbg !1470

; <label>:61:                                     ; preds = %57
  %62 = load %struct._LINE_REC*, %struct._LINE_REC** %13, align 8, !dbg !1472
  br label %67, !dbg !1474

; <label>:63:                                     ; preds = %57
  %64 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %12, align 8, !dbg !1475
  %65 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %64, i32 0, i32 1, !dbg !1477
  %66 = load %struct._LINE_REC*, %struct._LINE_REC** %65, align 8, !dbg !1477
  br label %67, !dbg !1478

; <label>:67:                                     ; preds = %63, %61
  %68 = phi %struct._LINE_REC* [ %62, %61 ], [ %66, %63 ], !dbg !1479
  store %struct._LINE_REC* %68, %struct._LINE_REC** %23, align 8, !dbg !1481
  %69 = load i32, i32* %20, align 4, !dbg !1482
  %70 = icmp ne i32 %69, 0, !dbg !1482
  br i1 %70, label %71, label %75, !dbg !1484

; <label>:71:                                     ; preds = %67
  %72 = load i32, i32* %21, align 4, !dbg !1485
  %73 = icmp ne i32 %72, 0, !dbg !1485
  %74 = select i1 %73, i8* (i8*, i8*)* @strstr_full, i8* (i8*, i8*)* @stristr_full, !dbg !1485
  store i8* (i8*, i8*)* %74, i8* (i8*, i8*)** %30, align 8, !dbg !1486
  br label %79, !dbg !1487

; <label>:75:                                     ; preds = %67
  %76 = load i32, i32* %21, align 4, !dbg !1488
  %77 = icmp ne i32 %76, 0, !dbg !1488
  %78 = select i1 %77, i8* (i8*, i8*)* @strstr, i8* (i8*, i8*)* @stristr, !dbg !1488
  store i8* (i8*, i8*)* %78, i8* (i8*, i8*)** %30, align 8, !dbg !1489
  br label %79

; <label>:79:                                     ; preds = %75, %71
  br label %80, !dbg !1490

; <label>:80:                                     ; preds = %217, %79
  %81 = load %struct._LINE_REC*, %struct._LINE_REC** %23, align 8, !dbg !1491
  %82 = icmp ne %struct._LINE_REC* %81, null, !dbg !1495
  br i1 %82, label %83, label %221, !dbg !1496

; <label>:83:                                     ; preds = %80
  %84 = load %struct._LINE_REC*, %struct._LINE_REC** %23, align 8, !dbg !1497
  %85 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %84, i32 0, i32 3, !dbg !1499
  %86 = getelementptr inbounds %struct.LINE_INFO_REC, %struct.LINE_INFO_REC* %85, i32 0, i32 0, !dbg !1500
  %87 = load i32, i32* %86, align 8, !dbg !1500
  %88 = load i32, i32* %14, align 4, !dbg !1501
  %89 = and i32 %87, %88, !dbg !1502
  %90 = icmp ne i32 %89, 0, !dbg !1503
  br i1 %90, label %91, label %99, !dbg !1504

; <label>:91:                                     ; preds = %83
  %92 = load %struct._LINE_REC*, %struct._LINE_REC** %23, align 8, !dbg !1505
  %93 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %92, i32 0, i32 3, !dbg !1506
  %94 = getelementptr inbounds %struct.LINE_INFO_REC, %struct.LINE_INFO_REC* %93, i32 0, i32 0, !dbg !1507
  %95 = load i32, i32* %94, align 8, !dbg !1507
  %96 = load i32, i32* %15, align 4, !dbg !1508
  %97 = and i32 %95, %96, !dbg !1509
  %98 = icmp eq i32 %97, 0, !dbg !1510
  br label %99

; <label>:99:                                     ; preds = %91, %83
  %100 = phi i1 [ false, %83 ], [ %98, %91 ]
  %101 = zext i1 %100 to i32, !dbg !1511
  store i32 %101, i32* %29, align 4, !dbg !1513
  %102 = load i8*, i8** %16, align 8, !dbg !1514
  %103 = load i8, i8* %102, align 1, !dbg !1516
  %104 = sext i8 %103 to i32, !dbg !1516
  %105 = icmp ne i32 %104, 0, !dbg !1517
  br i1 %105, label %106, label %132, !dbg !1518

; <label>:106:                                    ; preds = %99
  %107 = load %struct._LINE_REC*, %struct._LINE_REC** %23, align 8, !dbg !1519
  %108 = load %struct._GString*, %struct._GString** %26, align 8, !dbg !1521
  call void @textbuffer_line2text(%struct._LINE_REC* %107, i32 0, %struct._GString* %108), !dbg !1522
  %109 = load i32, i32* %29, align 4, !dbg !1523
  %110 = icmp ne i32 %109, 0, !dbg !1523
  br i1 %110, label %111, label %131, !dbg !1525

; <label>:111:                                    ; preds = %106
  %112 = load i32, i32* %19, align 4, !dbg !1526
  %113 = icmp ne i32 %112, 0, !dbg !1526
  br i1 %113, label %114, label %120, !dbg !1526

; <label>:114:                                    ; preds = %111
  %115 = load %struct._GRegex*, %struct._GRegex** %22, align 8, !dbg !1528
  %116 = load %struct._GString*, %struct._GString** %26, align 8, !dbg !1529
  %117 = getelementptr inbounds %struct._GString, %struct._GString* %116, i32 0, i32 0, !dbg !1530
  %118 = load i8*, i8** %117, align 8, !dbg !1530
  %119 = call i32 @i_regex_match(%struct._GRegex* %115, i8* %118, i32 0, %struct._MatchInfo** null), !dbg !1531
  br label %129, !dbg !1532

; <label>:120:                                    ; preds = %111
  %121 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %30, align 8, !dbg !1534
  %122 = load %struct._GString*, %struct._GString** %26, align 8, !dbg !1535
  %123 = getelementptr inbounds %struct._GString, %struct._GString* %122, i32 0, i32 0, !dbg !1536
  %124 = load i8*, i8** %123, align 8, !dbg !1536
  %125 = load i8*, i8** %16, align 8, !dbg !1537
  %126 = call i8* %121(i8* %124, i8* %125), !dbg !1534
  %127 = icmp ne i8* %126, null, !dbg !1538
  %128 = zext i1 %127 to i32, !dbg !1538
  br label %129, !dbg !1539

; <label>:129:                                    ; preds = %120, %114
  %130 = phi i32 [ %119, %114 ], [ %128, %120 ], !dbg !1541
  store i32 %130, i32* %29, align 4, !dbg !1543
  br label %131, !dbg !1544

; <label>:131:                                    ; preds = %129, %106
  br label %132, !dbg !1545

; <label>:132:                                    ; preds = %131, %99
  %133 = load i32, i32* %29, align 4, !dbg !1546
  %134 = icmp ne i32 %133, 0, !dbg !1546
  br i1 %134, label %135, label %186, !dbg !1548

; <label>:135:                                    ; preds = %132
  %136 = load %struct._LINE_REC*, %struct._LINE_REC** %23, align 8, !dbg !1549
  store %struct._LINE_REC* %136, %struct._LINE_REC** %24, align 8, !dbg !1551
  store i32 0, i32* %27, align 4, !dbg !1552
  br label %137, !dbg !1554

; <label>:137:                                    ; preds = %167, %135
  %138 = load i32, i32* %27, align 4, !dbg !1555
  %139 = load i32, i32* %17, align 4, !dbg !1558
  %140 = icmp slt i32 %138, %139, !dbg !1559
  br i1 %140, label %141, label %170, !dbg !1560

; <label>:141:                                    ; preds = %137
  %142 = load %struct._LINE_REC*, %struct._LINE_REC** %24, align 8, !dbg !1561
  %143 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %142, i32 0, i32 0, !dbg !1564
  %144 = load %struct._LINE_REC*, %struct._LINE_REC** %143, align 8, !dbg !1564
  %145 = icmp eq %struct._LINE_REC* %144, null, !dbg !1565
  br i1 %145, label %162, label %146, !dbg !1566

; <label>:146:                                    ; preds = %141
  %147 = load %struct._GList*, %struct._GList** %25, align 8, !dbg !1567
  %148 = call i8* @g_list_nth_data(%struct._GList* %147, i32 0), !dbg !1568
  %149 = load %struct._LINE_REC*, %struct._LINE_REC** %24, align 8, !dbg !1569
  %150 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %149, i32 0, i32 0, !dbg !1570
  %151 = load %struct._LINE_REC*, %struct._LINE_REC** %150, align 8, !dbg !1570
  %152 = bitcast %struct._LINE_REC* %151 to i8*, !dbg !1569
  %153 = icmp eq i8* %148, %152, !dbg !1571
  br i1 %153, label %162, label %154, !dbg !1572

; <label>:154:                                    ; preds = %146
  %155 = load %struct._GList*, %struct._GList** %25, align 8, !dbg !1573
  %156 = call i8* @g_list_nth_data(%struct._GList* %155, i32 1), !dbg !1574
  %157 = load %struct._LINE_REC*, %struct._LINE_REC** %24, align 8, !dbg !1575
  %158 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %157, i32 0, i32 0, !dbg !1576
  %159 = load %struct._LINE_REC*, %struct._LINE_REC** %158, align 8, !dbg !1576
  %160 = bitcast %struct._LINE_REC* %159 to i8*, !dbg !1575
  %161 = icmp eq i8* %156, %160, !dbg !1577
  br i1 %161, label %162, label %163, !dbg !1578

; <label>:162:                                    ; preds = %154, %146, %141
  br label %170, !dbg !1580

; <label>:163:                                    ; preds = %154
  %164 = load %struct._LINE_REC*, %struct._LINE_REC** %24, align 8, !dbg !1581
  %165 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %164, i32 0, i32 0, !dbg !1582
  %166 = load %struct._LINE_REC*, %struct._LINE_REC** %165, align 8, !dbg !1582
  store %struct._LINE_REC* %166, %struct._LINE_REC** %24, align 8, !dbg !1583
  br label %167, !dbg !1584

; <label>:167:                                    ; preds = %163
  %168 = load i32, i32* %27, align 4, !dbg !1585
  %169 = add nsw i32 %168, 1, !dbg !1585
  store i32 %169, i32* %27, align 4, !dbg !1585
  br label %137, !dbg !1587, !llvm.loop !1588

; <label>:170:                                    ; preds = %162, %137
  br label %171, !dbg !1590

; <label>:171:                                    ; preds = %180, %170
  %172 = load %struct._LINE_REC*, %struct._LINE_REC** %24, align 8, !dbg !1591
  %173 = load %struct._LINE_REC*, %struct._LINE_REC** %23, align 8, !dbg !1595
  %174 = icmp ne %struct._LINE_REC* %172, %173, !dbg !1596
  br i1 %174, label %175, label %184, !dbg !1597

; <label>:175:                                    ; preds = %171
  %176 = load %struct._GList*, %struct._GList** %25, align 8, !dbg !1598
  %177 = load %struct._LINE_REC*, %struct._LINE_REC** %24, align 8, !dbg !1599
  %178 = bitcast %struct._LINE_REC* %177 to i8*, !dbg !1599
  %179 = call %struct._GList* @g_list_prepend(%struct._GList* %176, i8* %178), !dbg !1600
  store %struct._GList* %179, %struct._GList** %25, align 8, !dbg !1601
  br label %180, !dbg !1602

; <label>:180:                                    ; preds = %175
  %181 = load %struct._LINE_REC*, %struct._LINE_REC** %24, align 8, !dbg !1603
  %182 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %181, i32 0, i32 1, !dbg !1605
  %183 = load %struct._LINE_REC*, %struct._LINE_REC** %182, align 8, !dbg !1605
  store %struct._LINE_REC* %183, %struct._LINE_REC** %24, align 8, !dbg !1606
  br label %171, !dbg !1607, !llvm.loop !1608

; <label>:184:                                    ; preds = %171
  %185 = load i32, i32* %18, align 4, !dbg !1609
  store i32 %185, i32* %28, align 4, !dbg !1610
  br label %186, !dbg !1611

; <label>:186:                                    ; preds = %184, %132
  %187 = load i32, i32* %29, align 4, !dbg !1612
  %188 = icmp ne i32 %187, 0, !dbg !1612
  br i1 %188, label %192, label %189, !dbg !1614

; <label>:189:                                    ; preds = %186
  %190 = load i32, i32* %28, align 4, !dbg !1615
  %191 = icmp sgt i32 %190, 0, !dbg !1617
  br i1 %191, label %192, label %216, !dbg !1618

; <label>:192:                                    ; preds = %189, %186
  %193 = load %struct._GList*, %struct._GList** %25, align 8, !dbg !1619
  %194 = load %struct._LINE_REC*, %struct._LINE_REC** %23, align 8, !dbg !1621
  %195 = bitcast %struct._LINE_REC* %194 to i8*, !dbg !1621
  %196 = call %struct._GList* @g_list_prepend(%struct._GList* %193, i8* %195), !dbg !1622
  store %struct._GList* %196, %struct._GList** %25, align 8, !dbg !1623
  %197 = load i32, i32* %29, align 4, !dbg !1624
  %198 = icmp ne i32 %197, 0, !dbg !1624
  br i1 %198, label %203, label %199, !dbg !1626

; <label>:199:                                    ; preds = %192
  %200 = load i32, i32* %28, align 4, !dbg !1627
  %201 = add nsw i32 %200, -1, !dbg !1627
  store i32 %201, i32* %28, align 4, !dbg !1627
  %202 = icmp eq i32 %201, 0, !dbg !1629
  br i1 %202, label %212, label %203, !dbg !1630

; <label>:203:                                    ; preds = %199, %192
  %204 = load i32, i32* %29, align 4, !dbg !1631
  %205 = icmp ne i32 %204, 0, !dbg !1631
  br i1 %205, label %206, label %215, !dbg !1632

; <label>:206:                                    ; preds = %203
  %207 = load i32, i32* %28, align 4, !dbg !1633
  %208 = icmp eq i32 %207, 0, !dbg !1634
  br i1 %208, label %209, label %215, !dbg !1635

; <label>:209:                                    ; preds = %206
  %210 = load i32, i32* %17, align 4, !dbg !1636
  %211 = icmp sgt i32 %210, 0, !dbg !1638
  br i1 %211, label %212, label %215, !dbg !1639

; <label>:212:                                    ; preds = %209, %199
  %213 = load %struct._GList*, %struct._GList** %25, align 8, !dbg !1641
  %214 = call %struct._GList* @g_list_prepend(%struct._GList* %213, i8* null), !dbg !1642
  store %struct._GList* %214, %struct._GList** %25, align 8, !dbg !1643
  br label %215, !dbg !1644

; <label>:215:                                    ; preds = %212, %209, %206, %203
  br label %216, !dbg !1645

; <label>:216:                                    ; preds = %215, %189
  br label %217, !dbg !1646

; <label>:217:                                    ; preds = %216
  %218 = load %struct._LINE_REC*, %struct._LINE_REC** %23, align 8, !dbg !1647
  %219 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %218, i32 0, i32 1, !dbg !1649
  %220 = load %struct._LINE_REC*, %struct._LINE_REC** %219, align 8, !dbg !1649
  store %struct._LINE_REC* %220, %struct._LINE_REC** %23, align 8, !dbg !1650
  br label %80, !dbg !1651, !llvm.loop !1652

; <label>:221:                                    ; preds = %80
  %222 = load %struct._GList*, %struct._GList** %25, align 8, !dbg !1653
  %223 = call %struct._GList* @g_list_reverse(%struct._GList* %222), !dbg !1654
  store %struct._GList* %223, %struct._GList** %25, align 8, !dbg !1655
  %224 = load %struct._GRegex*, %struct._GRegex** %22, align 8, !dbg !1656
  %225 = icmp ne %struct._GRegex* %224, null, !dbg !1658
  br i1 %225, label %226, label %228, !dbg !1659

; <label>:226:                                    ; preds = %221
  %227 = load %struct._GRegex*, %struct._GRegex** %22, align 8, !dbg !1660
  call void @i_regex_unref(%struct._GRegex* %227), !dbg !1661
  br label %228, !dbg !1661

; <label>:228:                                    ; preds = %226, %221
  %229 = load %struct._GString*, %struct._GString** %26, align 8, !dbg !1662
  %230 = call i8* @g_string_free(%struct._GString* %229, i32 1), !dbg !1663
  %231 = load %struct._GList*, %struct._GList** %25, align 8, !dbg !1664
  store %struct._GList* %231, %struct._GList** %11, align 8, !dbg !1665
  br label %232, !dbg !1665

; <label>:232:                                    ; preds = %228, %55, %42, %35
  %233 = load %struct._GList*, %struct._GList** %11, align 8, !dbg !1666
  ret %struct._GList* %233, !dbg !1666
}

declare %struct._GRegex* @i_regex_new(i8*, i32, i32, %struct._GError**) #2

declare %struct._GString* @g_string_new(i8*) #2

declare i8* @strstr_full(i8*, i8*) #2

declare i8* @stristr_full(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #5

declare i8* @stristr(i8*, i8*) #2

declare i32 @i_regex_match(%struct._GRegex*, i8*, i32, %struct._MatchInfo**) #2

declare i8* @g_list_nth_data(%struct._GList*, i32) #2

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #2

declare %struct._GList* @g_list_reverse(%struct._GList*) #2

declare void @i_regex_unref(%struct._GRegex*) #2

declare i8* @g_string_free(%struct._GString*, i32) #2

; Function Attrs: nounwind uwtable
define void @textbuffer_init() #0 !dbg !1667 {
  ret void, !dbg !1670
}

; Function Attrs: nounwind uwtable
define void @textbuffer_deinit() #0 !dbg !1671 {
  ret void, !dbg !1672
}

; Function Attrs: nounwind uwtable
define internal %struct._LINE_REC* @textbuffer_line_create(%struct.TEXT_BUFFER_REC*) #0 !dbg !1673 {
  %2 = alloca %struct.TEXT_BUFFER_REC*, align 8
  %3 = alloca %struct._LINE_REC*, align 8
  store %struct.TEXT_BUFFER_REC* %0, %struct.TEXT_BUFFER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.TEXT_BUFFER_REC** %2, metadata !1674, metadata !108), !dbg !1675
  call void @llvm.dbg.declare(metadata %struct._LINE_REC** %3, metadata !1676, metadata !108), !dbg !1677
  %4 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %2, align 8, !dbg !1678
  %5 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %4, i32 0, i32 4, !dbg !1680
  %6 = load %struct.TEXT_CHUNK_REC*, %struct.TEXT_CHUNK_REC** %5, align 8, !dbg !1680
  %7 = icmp eq %struct.TEXT_CHUNK_REC* %6, null, !dbg !1681
  br i1 %7, label %8, label %11, !dbg !1682

; <label>:8:                                      ; preds = %1
  %9 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %2, align 8, !dbg !1683
  %10 = call %struct.TEXT_CHUNK_REC* @text_chunk_create(%struct.TEXT_BUFFER_REC* %9), !dbg !1684
  br label %11, !dbg !1684

; <label>:11:                                     ; preds = %8, %1
  %12 = call noalias i8* @g_slice_alloc0(i64 40), !dbg !1685
  %13 = bitcast i8* %12 to %struct._LINE_REC*, !dbg !1686
  store %struct._LINE_REC* %13, %struct._LINE_REC** %3, align 8, !dbg !1687
  %14 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %2, align 8, !dbg !1688
  %15 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %14, i32 0, i32 4, !dbg !1689
  %16 = load %struct.TEXT_CHUNK_REC*, %struct.TEXT_CHUNK_REC** %15, align 8, !dbg !1689
  %17 = getelementptr inbounds %struct.TEXT_CHUNK_REC, %struct.TEXT_CHUNK_REC* %16, i32 0, i32 0, !dbg !1690
  %18 = getelementptr inbounds [16368 x i8], [16368 x i8]* %17, i32 0, i32 0, !dbg !1688
  %19 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %2, align 8, !dbg !1691
  %20 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %19, i32 0, i32 4, !dbg !1692
  %21 = load %struct.TEXT_CHUNK_REC*, %struct.TEXT_CHUNK_REC** %20, align 8, !dbg !1692
  %22 = getelementptr inbounds %struct.TEXT_CHUNK_REC, %struct.TEXT_CHUNK_REC* %21, i32 0, i32 1, !dbg !1693
  %23 = load i32, i32* %22, align 4, !dbg !1693
  %24 = sext i32 %23 to i64, !dbg !1694
  %25 = getelementptr inbounds i8, i8* %18, i64 %24, !dbg !1694
  %26 = load %struct._LINE_REC*, %struct._LINE_REC** %3, align 8, !dbg !1695
  %27 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %26, i32 0, i32 2, !dbg !1696
  store i8* %25, i8** %27, align 8, !dbg !1697
  %28 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %2, align 8, !dbg !1698
  %29 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %28, i32 0, i32 4, !dbg !1699
  %30 = load %struct.TEXT_CHUNK_REC*, %struct.TEXT_CHUNK_REC** %29, align 8, !dbg !1699
  %31 = getelementptr inbounds %struct.TEXT_CHUNK_REC, %struct.TEXT_CHUNK_REC* %30, i32 0, i32 2, !dbg !1700
  %32 = load i32, i32* %31, align 4, !dbg !1701
  %33 = add nsw i32 %32, 1, !dbg !1701
  store i32 %33, i32* %31, align 4, !dbg !1701
  %34 = load %struct._LINE_REC*, %struct._LINE_REC** %3, align 8, !dbg !1702
  ret %struct._LINE_REC* %34, !dbg !1703
}

; Function Attrs: nounwind uwtable
define internal %struct.TEXT_CHUNK_REC* @text_chunk_create(%struct.TEXT_BUFFER_REC*) #0 !dbg !1704 {
  %2 = alloca %struct.TEXT_BUFFER_REC*, align 8
  %3 = alloca %struct.TEXT_CHUNK_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  store %struct.TEXT_BUFFER_REC* %0, %struct.TEXT_BUFFER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.TEXT_BUFFER_REC** %2, metadata !1707, metadata !108), !dbg !1708
  call void @llvm.dbg.declare(metadata %struct.TEXT_CHUNK_REC** %3, metadata !1709, metadata !108), !dbg !1710
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1711, metadata !108), !dbg !1712
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1713, metadata !108), !dbg !1714
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !1715, metadata !108), !dbg !1717
  %7 = call noalias i8* @g_slice_alloc(i64 16376), !dbg !1718
  %8 = bitcast i8* %7 to %struct.TEXT_CHUNK_REC*, !dbg !1719
  store %struct.TEXT_CHUNK_REC* %8, %struct.TEXT_CHUNK_REC** %3, align 8, !dbg !1720
  %9 = load %struct.TEXT_CHUNK_REC*, %struct.TEXT_CHUNK_REC** %3, align 8, !dbg !1721
  %10 = getelementptr inbounds %struct.TEXT_CHUNK_REC, %struct.TEXT_CHUNK_REC* %9, i32 0, i32 1, !dbg !1722
  store i32 0, i32* %10, align 4, !dbg !1723
  %11 = load %struct.TEXT_CHUNK_REC*, %struct.TEXT_CHUNK_REC** %3, align 8, !dbg !1724
  %12 = getelementptr inbounds %struct.TEXT_CHUNK_REC, %struct.TEXT_CHUNK_REC* %11, i32 0, i32 2, !dbg !1725
  store i32 0, i32* %12, align 4, !dbg !1726
  %13 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %2, align 8, !dbg !1727
  %14 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %13, i32 0, i32 3, !dbg !1729
  %15 = load %struct._LINE_REC*, %struct._LINE_REC** %14, align 8, !dbg !1729
  %16 = icmp ne %struct._LINE_REC* %15, null, !dbg !1730
  br i1 %16, label %17, label %47, !dbg !1731

; <label>:17:                                     ; preds = %1
  %18 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %2, align 8, !dbg !1732
  %19 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %18, i32 0, i32 3, !dbg !1734
  %20 = load %struct._LINE_REC*, %struct._LINE_REC** %19, align 8, !dbg !1734
  %21 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %20, i32 0, i32 2, !dbg !1735
  %22 = load i8*, i8** %21, align 8, !dbg !1735
  %23 = icmp ne i8* %22, null, !dbg !1736
  br i1 %23, label %24, label %47, !dbg !1737

; <label>:24:                                     ; preds = %17
  %25 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %2, align 8, !dbg !1738
  %26 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %25, i32 0, i32 4, !dbg !1740
  %27 = load %struct.TEXT_CHUNK_REC*, %struct.TEXT_CHUNK_REC** %26, align 8, !dbg !1740
  %28 = getelementptr inbounds %struct.TEXT_CHUNK_REC, %struct.TEXT_CHUNK_REC* %27, i32 0, i32 0, !dbg !1741
  %29 = getelementptr inbounds [16368 x i8], [16368 x i8]* %28, i32 0, i32 0, !dbg !1738
  %30 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %2, align 8, !dbg !1742
  %31 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %30, i32 0, i32 4, !dbg !1743
  %32 = load %struct.TEXT_CHUNK_REC*, %struct.TEXT_CHUNK_REC** %31, align 8, !dbg !1743
  %33 = getelementptr inbounds %struct.TEXT_CHUNK_REC, %struct.TEXT_CHUNK_REC* %32, i32 0, i32 1, !dbg !1744
  %34 = load i32, i32* %33, align 4, !dbg !1744
  %35 = sext i32 %34 to i64, !dbg !1745
  %36 = getelementptr inbounds i8, i8* %29, i64 %35, !dbg !1745
  store i8* %36, i8** %4, align 8, !dbg !1746
  %37 = load i8*, i8** %4, align 8, !dbg !1747
  %38 = getelementptr inbounds i8, i8* %37, i32 1, !dbg !1747
  store i8* %38, i8** %4, align 8, !dbg !1747
  store i8 0, i8* %37, align 1, !dbg !1748
  %39 = load i8*, i8** %4, align 8, !dbg !1749
  %40 = getelementptr inbounds i8, i8* %39, i32 1, !dbg !1749
  store i8* %40, i8** %4, align 8, !dbg !1749
  store i8 -127, i8* %39, align 1, !dbg !1750
  %41 = load %struct.TEXT_CHUNK_REC*, %struct.TEXT_CHUNK_REC** %3, align 8, !dbg !1751
  %42 = getelementptr inbounds %struct.TEXT_CHUNK_REC, %struct.TEXT_CHUNK_REC* %41, i32 0, i32 0, !dbg !1752
  %43 = getelementptr inbounds [16368 x i8], [16368 x i8]* %42, i32 0, i32 0, !dbg !1751
  store i8* %43, i8** %5, align 8, !dbg !1753
  store i8** %5, i8*** %6, align 8, !dbg !1754
  %44 = load i8*, i8** %4, align 8, !dbg !1755
  %45 = load i8**, i8*** %6, align 8, !dbg !1756
  %46 = bitcast i8** %45 to i8*, !dbg !1757
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %46, i64 8, i32 1, i1 false), !dbg !1757
  br label %65, !dbg !1758

; <label>:47:                                     ; preds = %17, %1
  br label %48, !dbg !1759, !llvm.loop !1761

; <label>:48:                                     ; preds = %47
  %49 = load %struct.TEXT_CHUNK_REC*, %struct.TEXT_CHUNK_REC** %3, align 8, !dbg !1762
  %50 = getelementptr inbounds %struct.TEXT_CHUNK_REC, %struct.TEXT_CHUNK_REC* %49, i32 0, i32 1, !dbg !1765
  %51 = load i32, i32* %50, align 4, !dbg !1765
  %52 = sext i32 %51 to i64, !dbg !1766
  %53 = load %struct.TEXT_CHUNK_REC*, %struct.TEXT_CHUNK_REC** %3, align 8, !dbg !1767
  %54 = getelementptr inbounds %struct.TEXT_CHUNK_REC, %struct.TEXT_CHUNK_REC* %53, i32 0, i32 0, !dbg !1768
  %55 = getelementptr inbounds [16368 x i8], [16368 x i8]* %54, i64 0, i64 %52, !dbg !1766
  store i8 0, i8* %55, align 1, !dbg !1769
  %56 = load %struct.TEXT_CHUNK_REC*, %struct.TEXT_CHUNK_REC** %3, align 8, !dbg !1770
  %57 = getelementptr inbounds %struct.TEXT_CHUNK_REC, %struct.TEXT_CHUNK_REC* %56, i32 0, i32 1, !dbg !1771
  %58 = load i32, i32* %57, align 4, !dbg !1771
  %59 = add nsw i32 %58, 1, !dbg !1772
  %60 = sext i32 %59 to i64, !dbg !1773
  %61 = load %struct.TEXT_CHUNK_REC*, %struct.TEXT_CHUNK_REC** %3, align 8, !dbg !1774
  %62 = getelementptr inbounds %struct.TEXT_CHUNK_REC, %struct.TEXT_CHUNK_REC* %61, i32 0, i32 0, !dbg !1775
  %63 = getelementptr inbounds [16368 x i8], [16368 x i8]* %62, i64 0, i64 %60, !dbg !1773
  store i8 -128, i8* %63, align 1, !dbg !1776
  br label %64, !dbg !1777

; <label>:64:                                     ; preds = %48
  br label %65

; <label>:65:                                     ; preds = %64, %24
  %66 = load %struct.TEXT_CHUNK_REC*, %struct.TEXT_CHUNK_REC** %3, align 8, !dbg !1778
  %67 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %2, align 8, !dbg !1779
  %68 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %67, i32 0, i32 4, !dbg !1780
  store %struct.TEXT_CHUNK_REC* %66, %struct.TEXT_CHUNK_REC** %68, align 8, !dbg !1781
  %69 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %2, align 8, !dbg !1782
  %70 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %69, i32 0, i32 0, !dbg !1783
  %71 = load %struct._GSList*, %struct._GSList** %70, align 8, !dbg !1783
  %72 = load %struct.TEXT_CHUNK_REC*, %struct.TEXT_CHUNK_REC** %3, align 8, !dbg !1784
  %73 = bitcast %struct.TEXT_CHUNK_REC* %72 to i8*, !dbg !1784
  %74 = call %struct._GSList* @g_slist_append(%struct._GSList* %71, i8* %73), !dbg !1785
  %75 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %2, align 8, !dbg !1786
  %76 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %75, i32 0, i32 0, !dbg !1787
  store %struct._GSList* %74, %struct._GSList** %76, align 8, !dbg !1788
  %77 = load %struct.TEXT_CHUNK_REC*, %struct.TEXT_CHUNK_REC** %3, align 8, !dbg !1789
  ret %struct.TEXT_CHUNK_REC* %77, !dbg !1790
}

declare noalias i8* @g_slice_alloc(i64) #2

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct.TEXT_CHUNK_REC* @text_chunk_find(%struct.TEXT_BUFFER_REC*, i8*) #0 !dbg !1791 {
  %3 = alloca %struct.TEXT_CHUNK_REC*, align 8
  %4 = alloca %struct.TEXT_BUFFER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca %struct.TEXT_CHUNK_REC*, align 8
  store %struct.TEXT_BUFFER_REC* %0, %struct.TEXT_BUFFER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.TEXT_BUFFER_REC** %4, metadata !1794, metadata !108), !dbg !1795
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1796, metadata !108), !dbg !1797
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !1798, metadata !108), !dbg !1799
  %8 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %4, align 8, !dbg !1800
  %9 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %8, i32 0, i32 0, !dbg !1802
  %10 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1802
  store %struct._GSList* %10, %struct._GSList** %6, align 8, !dbg !1803
  br label %11, !dbg !1804

; <label>:11:                                     ; preds = %34, %2
  %12 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1805
  %13 = icmp ne %struct._GSList* %12, null, !dbg !1808
  br i1 %13, label %14, label %38, !dbg !1809

; <label>:14:                                     ; preds = %11
  call void @llvm.dbg.declare(metadata %struct.TEXT_CHUNK_REC** %7, metadata !1810, metadata !108), !dbg !1812
  %15 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1813
  %16 = getelementptr inbounds %struct._GSList, %struct._GSList* %15, i32 0, i32 0, !dbg !1814
  %17 = load i8*, i8** %16, align 8, !dbg !1814
  %18 = bitcast i8* %17 to %struct.TEXT_CHUNK_REC*, !dbg !1813
  store %struct.TEXT_CHUNK_REC* %18, %struct.TEXT_CHUNK_REC** %7, align 8, !dbg !1812
  %19 = load i8*, i8** %5, align 8, !dbg !1815
  %20 = load %struct.TEXT_CHUNK_REC*, %struct.TEXT_CHUNK_REC** %7, align 8, !dbg !1817
  %21 = getelementptr inbounds %struct.TEXT_CHUNK_REC, %struct.TEXT_CHUNK_REC* %20, i32 0, i32 0, !dbg !1818
  %22 = getelementptr inbounds [16368 x i8], [16368 x i8]* %21, i32 0, i32 0, !dbg !1817
  %23 = icmp uge i8* %19, %22, !dbg !1819
  br i1 %23, label %24, label %33, !dbg !1820

; <label>:24:                                     ; preds = %14
  %25 = load i8*, i8** %5, align 8, !dbg !1821
  %26 = load %struct.TEXT_CHUNK_REC*, %struct.TEXT_CHUNK_REC** %7, align 8, !dbg !1822
  %27 = getelementptr inbounds %struct.TEXT_CHUNK_REC, %struct.TEXT_CHUNK_REC* %26, i32 0, i32 0, !dbg !1823
  %28 = getelementptr inbounds [16368 x i8], [16368 x i8]* %27, i32 0, i32 0, !dbg !1822
  %29 = getelementptr inbounds i8, i8* %28, i64 16368, !dbg !1824
  %30 = icmp ult i8* %25, %29, !dbg !1825
  br i1 %30, label %31, label %33, !dbg !1826

; <label>:31:                                     ; preds = %24
  %32 = load %struct.TEXT_CHUNK_REC*, %struct.TEXT_CHUNK_REC** %7, align 8, !dbg !1828
  store %struct.TEXT_CHUNK_REC* %32, %struct.TEXT_CHUNK_REC** %3, align 8, !dbg !1829
  br label %39, !dbg !1829

; <label>:33:                                     ; preds = %24, %14
  br label %34, !dbg !1830

; <label>:34:                                     ; preds = %33
  %35 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1831
  %36 = getelementptr inbounds %struct._GSList, %struct._GSList* %35, i32 0, i32 1, !dbg !1833
  %37 = load %struct._GSList*, %struct._GSList** %36, align 8, !dbg !1833
  store %struct._GSList* %37, %struct._GSList** %6, align 8, !dbg !1834
  br label %11, !dbg !1835, !llvm.loop !1836

; <label>:38:                                     ; preds = %11
  store %struct.TEXT_CHUNK_REC* null, %struct.TEXT_CHUNK_REC** %3, align 8, !dbg !1838
  br label %39, !dbg !1838

; <label>:39:                                     ; preds = %38, %31
  %40 = load %struct.TEXT_CHUNK_REC*, %struct.TEXT_CHUNK_REC** %3, align 8, !dbg !1839
  ret %struct.TEXT_CHUNK_REC* %40, !dbg !1839
}

; Function Attrs: nounwind uwtable
define internal void @text_chunk_destroy(%struct.TEXT_BUFFER_REC*, %struct.TEXT_CHUNK_REC*) #0 !dbg !1840 {
  %3 = alloca %struct.TEXT_BUFFER_REC*, align 8
  %4 = alloca %struct.TEXT_CHUNK_REC*, align 8
  store %struct.TEXT_BUFFER_REC* %0, %struct.TEXT_BUFFER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.TEXT_BUFFER_REC** %3, metadata !1843, metadata !108), !dbg !1844
  store %struct.TEXT_CHUNK_REC* %1, %struct.TEXT_CHUNK_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.TEXT_CHUNK_REC** %4, metadata !1845, metadata !108), !dbg !1846
  %5 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %3, align 8, !dbg !1847
  %6 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %5, i32 0, i32 0, !dbg !1848
  %7 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1848
  %8 = load %struct.TEXT_CHUNK_REC*, %struct.TEXT_CHUNK_REC** %4, align 8, !dbg !1849
  %9 = bitcast %struct.TEXT_CHUNK_REC* %8 to i8*, !dbg !1849
  %10 = call %struct._GSList* @g_slist_remove(%struct._GSList* %7, i8* %9), !dbg !1850
  %11 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %3, align 8, !dbg !1851
  %12 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %11, i32 0, i32 0, !dbg !1852
  store %struct._GSList* %10, %struct._GSList** %12, align 8, !dbg !1853
  br label %13, !dbg !1854, !llvm.loop !1855

; <label>:13:                                     ; preds = %2
  %14 = load %struct.TEXT_CHUNK_REC*, %struct.TEXT_CHUNK_REC** %4, align 8, !dbg !1856
  %15 = bitcast %struct.TEXT_CHUNK_REC* %14 to i8*, !dbg !1860
  call void @g_slice_free1(i64 16376, i8* %15), !dbg !1861
  br label %16, !dbg !1862

; <label>:16:                                     ; preds = %13
  ret void, !dbg !1863
}

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #2

declare %struct._GString* @g_string_insert_c(%struct._GString*, i64, i8 signext) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!99, !100}
!llvm.ident = !{!101}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !39)
!1 = !DIFile(filename: "line374-textbuffer.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !18}
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
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 297, size: 32, align: 32, elements: !20)
!19 = !DIFile(filename: "/usr/include/glib-2.0/glib/gregex.h", directory: "/home/lichi/Desktop/irssi/task1")
!20 = !{!21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38}
!21 = !DIEnumerator(name: "G_REGEX_CASELESS", value: 1)
!22 = !DIEnumerator(name: "G_REGEX_MULTILINE", value: 2)
!23 = !DIEnumerator(name: "G_REGEX_DOTALL", value: 4)
!24 = !DIEnumerator(name: "G_REGEX_EXTENDED", value: 8)
!25 = !DIEnumerator(name: "G_REGEX_ANCHORED", value: 16)
!26 = !DIEnumerator(name: "G_REGEX_DOLLAR_ENDONLY", value: 32)
!27 = !DIEnumerator(name: "G_REGEX_UNGREEDY", value: 512)
!28 = !DIEnumerator(name: "G_REGEX_RAW", value: 2048)
!29 = !DIEnumerator(name: "G_REGEX_NO_AUTO_CAPTURE", value: 4096)
!30 = !DIEnumerator(name: "G_REGEX_OPTIMIZE", value: 8192)
!31 = !DIEnumerator(name: "G_REGEX_FIRSTLINE", value: 262144)
!32 = !DIEnumerator(name: "G_REGEX_DUPNAMES", value: 524288)
!33 = !DIEnumerator(name: "G_REGEX_NEWLINE_CR", value: 1048576)
!34 = !DIEnumerator(name: "G_REGEX_NEWLINE_LF", value: 2097152)
!35 = !DIEnumerator(name: "G_REGEX_NEWLINE_CRLF", value: 3145728)
!36 = !DIEnumerator(name: "G_REGEX_NEWLINE_ANYCRLF", value: 5242880)
!37 = !DIEnumerator(name: "G_REGEX_BSR_ANYCRLF", value: 8388608)
!38 = !DIEnumerator(name: "G_REGEX_JAVASCRIPT_COMPAT", value: 33554432)
!39 = !{!40, !53, !96, !98, !56, !81, !71}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_BUFFER_REC", file: !4, line: 72, baseType: !42)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 60, size: 448, align: 64, elements: !43)
!43 = !{!44, !55, !78, !79, !80, !91, !92, !93, !94}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "text_chunks", scope: !42, file: !4, line: 61, baseType: !45, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !47, line: 37, baseType: !48)
!47 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !47, line: 39, size: 128, align: 64, elements: !49)
!49 = !{!50, !54}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !48, file: !47, line: 41, baseType: !51, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !52, line: 77, baseType: !53)
!52 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !48, file: !47, line: 42, baseType: !45, size: 64, align: 64, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "first_line", scope: !42, file: !4, line: 62, baseType: !56, size: 64, align: 64, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "LINE_REC", file: !4, line: 52, baseType: !58)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_LINE_REC", file: !4, line: 34, size: 320, align: 64, elements: !59)
!59 = !{!60, !62, !63, !66}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !58, file: !4, line: 48, baseType: !61, size: 64, align: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !58, file: !4, line: 48, baseType: !61, size: 64, align: 64, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !58, file: !4, line: 50, baseType: !64, size: 64, align: 64, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !58, file: !4, line: 51, baseType: !67, size: 128, align: 64, offset: 192)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "LINE_INFO_REC", file: !4, line: 32, baseType: !68)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 29, size: 128, align: 64, elements: !69)
!69 = !{!70, !72}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !68, file: !4, line: 30, baseType: !71, size: 32, align: 32)
!71 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !68, file: !4, line: 31, baseType: !73, size: 64, align: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !74, line: 75, baseType: !75)
!74 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !76, line: 139, baseType: !77)
!76 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!77 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "lines_count", scope: !42, file: !4, line: 63, baseType: !71, size: 32, align: 32, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "cur_line", scope: !42, file: !4, line: 65, baseType: !56, size: 64, align: 64, offset: 192)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "cur_text", scope: !42, file: !4, line: 66, baseType: !81, size: 64, align: 64, offset: 256)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64, align: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_CHUNK_REC", file: !4, line: 58, baseType: !83)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 54, size: 131008, align: 32, elements: !84)
!84 = !{!85, !89, !90}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !83, file: !4, line: 55, baseType: !86, size: 130944, align: 8)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 130944, align: 8, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 16368)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !83, file: !4, line: 56, baseType: !71, size: 32, align: 32, offset: 130944)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !83, file: !4, line: 57, baseType: !71, size: 32, align: 32, offset: 130976)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "last_fg", scope: !42, file: !4, line: 68, baseType: !71, size: 32, align: 32, offset: 320)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "last_bg", scope: !42, file: !4, line: 69, baseType: !71, size: 32, align: 32, offset: 352)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "last_flags", scope: !42, file: !4, line: 70, baseType: !71, size: 32, align: 32, offset: 384)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "last_eol", scope: !42, file: !4, line: 71, baseType: !95, size: 1, align: 32, offset: 416, flags: DIFlagBitField, extraData: i64 416)
!95 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64, align: 64)
!97 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!98 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!99 = !{i32 2, !"Dwarf Version", i32 4}
!100 = !{i32 2, !"Debug Info Version", i32 3}
!101 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!102 = distinct !DISubprogram(name: "textbuffer_create", scope: !103, file: !103, line: 33, type: !104, isLocal: false, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !106)
!103 = !DIFile(filename: "textbuffer.c", directory: "/home/lichi/Desktop/irssi/task1")
!104 = !DISubroutineType(types: !105)
!105 = !{!40}
!106 = !{}
!107 = !DILocalVariable(name: "buffer", scope: !102, file: !103, line: 35, type: !40)
!108 = !DIExpression()
!109 = !DILocation(line: 35, column: 19, scope: !102)
!110 = !DILocation(line: 37, column: 31, scope: !102)
!111 = !DILocation(line: 37, column: 12, scope: !102)
!112 = !DILocation(line: 37, column: 9, scope: !102)
!113 = !DILocation(line: 38, column: 2, scope: !102)
!114 = !DILocation(line: 38, column: 10, scope: !102)
!115 = !DILocation(line: 38, column: 19, scope: !102)
!116 = !DILocation(line: 39, column: 2, scope: !102)
!117 = !DILocation(line: 39, column: 10, scope: !102)
!118 = !DILocation(line: 39, column: 18, scope: !102)
!119 = !DILocation(line: 40, column: 2, scope: !102)
!120 = !DILocation(line: 40, column: 10, scope: !102)
!121 = !DILocation(line: 40, column: 18, scope: !102)
!122 = !DILocation(line: 41, column: 16, scope: !102)
!123 = !DILocation(line: 41, column: 9, scope: !102)
!124 = distinct !DISubprogram(name: "textbuffer_destroy", scope: !103, file: !103, line: 44, type: !125, isLocal: false, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !106)
!125 = !DISubroutineType(types: !126)
!126 = !{null, !40}
!127 = !DILocalVariable(name: "buffer", arg: 1, scope: !124, file: !103, line: 44, type: !40)
!128 = !DILocation(line: 44, column: 42, scope: !124)
!129 = !DILocation(line: 46, column: 2, scope: !124)
!130 = distinct !{!130, !129}
!131 = !DILocation(line: 46, column: 10, scope: !132)
!132 = !DILexicalBlockFile(scope: !133, file: !103, discriminator: 1)
!133 = distinct !DILexicalBlock(scope: !134, file: !103, line: 46, column: 10)
!134 = distinct !DILexicalBlock(scope: !124, file: !103, line: 46, column: 4)
!135 = !DILocation(line: 46, column: 17, scope: !132)
!136 = !DILocation(line: 46, column: 5, scope: !137)
!137 = !DILexicalBlockFile(scope: !138, file: !103, discriminator: 2)
!138 = distinct !DILexicalBlock(scope: !133, file: !103, line: 46, column: 3)
!139 = !DILocation(line: 46, column: 14, scope: !140)
!140 = !DILexicalBlockFile(scope: !141, file: !103, discriminator: 3)
!141 = distinct !DILexicalBlock(scope: !133, file: !103, line: 46, column: 12)
!142 = !DILocation(line: 46, column: 101, scope: !140)
!143 = !DILocation(line: 46, column: 112, scope: !144)
!144 = !DILexicalBlockFile(scope: !134, file: !103, discriminator: 4)
!145 = !DILocation(line: 48, column: 30, scope: !124)
!146 = !DILocation(line: 48, column: 2, scope: !124)
!147 = !DILocation(line: 49, column: 9, scope: !124)
!148 = distinct !{!148, !147}
!149 = !DILocation(line: 49, column: 63, scope: !150)
!150 = !DILexicalBlockFile(scope: !151, file: !103, discriminator: 1)
!151 = distinct !DILexicalBlock(scope: !152, file: !103, line: 49, column: 18)
!152 = distinct !DILexicalBlock(scope: !124, file: !103, line: 49, column: 12)
!153 = !DILocation(line: 49, column: 62, scope: !150)
!154 = !DILocation(line: 49, column: 21, scope: !150)
!155 = !DILocation(line: 49, column: 121, scope: !150)
!156 = !DILocation(line: 50, column: 1, scope: !124)
!157 = distinct !DISubprogram(name: "textbuffer_remove_all_lines", scope: !103, file: !103, line: 403, type: !125, isLocal: false, isDefinition: true, scopeLine: 404, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !106)
!158 = !DILocalVariable(name: "buffer", arg: 1, scope: !157, file: !103, line: 403, type: !40)
!159 = !DILocation(line: 403, column: 51, scope: !157)
!160 = !DILocalVariable(name: "tmp", scope: !157, file: !103, line: 405, type: !45)
!161 = !DILocation(line: 405, column: 10, scope: !157)
!162 = !DILocalVariable(name: "line", scope: !157, file: !103, line: 406, type: !56)
!163 = !DILocation(line: 406, column: 19, scope: !157)
!164 = !DILocation(line: 408, column: 2, scope: !157)
!165 = distinct !{!165, !164}
!166 = !DILocation(line: 408, column: 10, scope: !167)
!167 = !DILexicalBlockFile(scope: !168, file: !103, discriminator: 1)
!168 = distinct !DILexicalBlock(scope: !169, file: !103, line: 408, column: 10)
!169 = distinct !DILexicalBlock(scope: !157, file: !103, line: 408, column: 4)
!170 = !DILocation(line: 408, column: 17, scope: !167)
!171 = !DILocation(line: 408, column: 5, scope: !172)
!172 = !DILexicalBlockFile(scope: !173, file: !103, discriminator: 2)
!173 = distinct !DILexicalBlock(scope: !168, file: !103, line: 408, column: 3)
!174 = !DILocation(line: 408, column: 14, scope: !175)
!175 = !DILexicalBlockFile(scope: !176, file: !103, discriminator: 3)
!176 = distinct !DILexicalBlock(scope: !168, file: !103, line: 408, column: 12)
!177 = !DILocation(line: 408, column: 101, scope: !175)
!178 = !DILocation(line: 408, column: 112, scope: !179)
!179 = !DILexicalBlockFile(scope: !169, file: !103, discriminator: 4)
!180 = !DILocation(line: 410, column: 13, scope: !181)
!181 = distinct !DILexicalBlock(scope: !157, file: !103, line: 410, column: 2)
!182 = !DILocation(line: 410, column: 21, scope: !181)
!183 = !DILocation(line: 410, column: 11, scope: !181)
!184 = !DILocation(line: 410, column: 7, scope: !181)
!185 = !DILocation(line: 410, column: 34, scope: !186)
!186 = !DILexicalBlockFile(scope: !187, file: !103, discriminator: 1)
!187 = distinct !DILexicalBlock(scope: !181, file: !103, line: 410, column: 2)
!188 = !DILocation(line: 410, column: 38, scope: !186)
!189 = !DILocation(line: 410, column: 2, scope: !186)
!190 = !DILocation(line: 411, column: 17, scope: !187)
!191 = distinct !{!191, !190}
!192 = !DILocation(line: 411, column: 70, scope: !193)
!193 = !DILexicalBlockFile(scope: !194, file: !103, discriminator: 1)
!194 = distinct !DILexicalBlock(scope: !195, file: !103, line: 411, column: 26)
!195 = distinct !DILexicalBlock(scope: !187, file: !103, line: 411, column: 20)
!196 = !DILocation(line: 411, column: 75, scope: !193)
!197 = !DILocation(line: 411, column: 29, scope: !193)
!198 = !DILocation(line: 411, column: 133, scope: !193)
!199 = !DILocation(line: 411, column: 133, scope: !200)
!200 = !DILexicalBlockFile(scope: !195, file: !103, discriminator: 2)
!201 = !DILocation(line: 410, column: 52, scope: !202)
!202 = !DILexicalBlockFile(scope: !187, file: !103, discriminator: 2)
!203 = !DILocation(line: 410, column: 57, scope: !202)
!204 = !DILocation(line: 410, column: 50, scope: !202)
!205 = !DILocation(line: 410, column: 2, scope: !202)
!206 = distinct !{!206, !207}
!207 = !DILocation(line: 410, column: 2, scope: !157)
!208 = !DILocation(line: 412, column: 15, scope: !157)
!209 = !DILocation(line: 412, column: 23, scope: !157)
!210 = !DILocation(line: 412, column: 2, scope: !157)
!211 = !DILocation(line: 413, column: 2, scope: !157)
!212 = !DILocation(line: 413, column: 10, scope: !157)
!213 = !DILocation(line: 413, column: 22, scope: !157)
!214 = !DILocation(line: 415, column: 2, scope: !157)
!215 = !DILocation(line: 415, column: 9, scope: !216)
!216 = !DILexicalBlockFile(scope: !157, file: !103, discriminator: 1)
!217 = !DILocation(line: 415, column: 17, scope: !216)
!218 = !DILocation(line: 415, column: 28, scope: !216)
!219 = !DILocation(line: 415, column: 2, scope: !216)
!220 = !DILocation(line: 416, column: 10, scope: !221)
!221 = distinct !DILexicalBlock(scope: !157, file: !103, line: 415, column: 36)
!222 = !DILocation(line: 416, column: 18, scope: !221)
!223 = !DILocation(line: 416, column: 30, scope: !221)
!224 = !DILocation(line: 416, column: 8, scope: !221)
!225 = !DILocation(line: 417, column: 3, scope: !221)
!226 = distinct !{!226, !225}
!227 = !DILocation(line: 417, column: 50, scope: !228)
!228 = !DILexicalBlockFile(scope: !229, file: !103, discriminator: 1)
!229 = distinct !DILexicalBlock(scope: !230, file: !103, line: 417, column: 12)
!230 = distinct !DILexicalBlock(scope: !221, file: !103, line: 417, column: 6)
!231 = !DILocation(line: 417, column: 58, scope: !228)
!232 = !DILocation(line: 417, column: 49, scope: !228)
!233 = !DILocation(line: 417, column: 15, scope: !228)
!234 = !DILocation(line: 417, column: 125, scope: !228)
!235 = !DILocation(line: 418, column: 38, scope: !221)
!236 = !DILocation(line: 418, column: 17, scope: !221)
!237 = !DILocation(line: 418, column: 25, scope: !221)
!238 = !DILocation(line: 418, column: 36, scope: !221)
!239 = !DILocation(line: 415, column: 2, scope: !240)
!240 = !DILexicalBlockFile(scope: !157, file: !103, discriminator: 2)
!241 = distinct !{!241, !214}
!242 = !DILocation(line: 420, column: 2, scope: !157)
!243 = !DILocation(line: 420, column: 10, scope: !157)
!244 = !DILocation(line: 420, column: 22, scope: !157)
!245 = !DILocation(line: 422, column: 9, scope: !157)
!246 = !DILocation(line: 422, column: 17, scope: !157)
!247 = !DILocation(line: 422, column: 26, scope: !157)
!248 = !DILocation(line: 423, column: 9, scope: !157)
!249 = !DILocation(line: 423, column: 17, scope: !157)
!250 = !DILocation(line: 423, column: 26, scope: !157)
!251 = !DILocation(line: 425, column: 2, scope: !157)
!252 = !DILocation(line: 425, column: 10, scope: !157)
!253 = !DILocation(line: 425, column: 19, scope: !157)
!254 = !DILocation(line: 426, column: 1, scope: !157)
!255 = !DILocation(line: 426, column: 1, scope: !216)
!256 = distinct !DISubprogram(name: "textbuffer_line_last", scope: !103, file: !103, line: 228, type: !257, isLocal: false, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !106)
!257 = !DISubroutineType(types: !258)
!258 = !{!56, !40}
!259 = !DILocalVariable(name: "buffer", arg: 1, scope: !256, file: !103, line: 228, type: !40)
!260 = !DILocation(line: 228, column: 49, scope: !256)
!261 = !DILocation(line: 230, column: 9, scope: !256)
!262 = !DILocation(line: 230, column: 17, scope: !256)
!263 = !DILocation(line: 230, column: 2, scope: !256)
!264 = distinct !DISubprogram(name: "textbuffer_line_exists_after", scope: !103, file: !103, line: 234, type: !265, isLocal: false, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !106)
!265 = !DISubroutineType(types: !266)
!266 = !{!71, !56, !56}
!267 = !DILocalVariable(name: "line", arg: 1, scope: !264, file: !103, line: 234, type: !56)
!268 = !DILocation(line: 234, column: 44, scope: !264)
!269 = !DILocalVariable(name: "search", arg: 2, scope: !264, file: !103, line: 234, type: !56)
!270 = !DILocation(line: 234, column: 60, scope: !264)
!271 = !DILocation(line: 236, column: 2, scope: !264)
!272 = !DILocation(line: 236, column: 9, scope: !273)
!273 = !DILexicalBlockFile(scope: !264, file: !103, discriminator: 1)
!274 = !DILocation(line: 236, column: 14, scope: !273)
!275 = !DILocation(line: 236, column: 2, scope: !273)
!276 = !DILocation(line: 237, column: 7, scope: !277)
!277 = distinct !DILexicalBlock(scope: !278, file: !103, line: 237, column: 7)
!278 = distinct !DILexicalBlock(scope: !264, file: !103, line: 236, column: 22)
!279 = !DILocation(line: 237, column: 15, scope: !277)
!280 = !DILocation(line: 237, column: 12, scope: !277)
!281 = !DILocation(line: 237, column: 7, scope: !278)
!282 = !DILocation(line: 238, column: 4, scope: !277)
!283 = !DILocation(line: 239, column: 24, scope: !278)
!284 = !DILocation(line: 239, column: 30, scope: !278)
!285 = !DILocation(line: 239, column: 22, scope: !278)
!286 = !DILocation(line: 236, column: 2, scope: !287)
!287 = !DILexicalBlockFile(scope: !264, file: !103, discriminator: 2)
!288 = distinct !{!288, !271}
!289 = !DILocation(line: 241, column: 9, scope: !264)
!290 = !DILocation(line: 242, column: 1, scope: !264)
!291 = distinct !DISubprogram(name: "textbuffer_line_add_colors", scope: !103, file: !103, line: 263, type: !292, isLocal: false, isDefinition: true, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !106)
!292 = !DISubroutineType(types: !293)
!293 = !{null, !40, !294, !71, !71, !71}
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!295 = !DILocalVariable(name: "buffer", arg: 1, scope: !291, file: !103, line: 263, type: !40)
!296 = !DILocation(line: 263, column: 50, scope: !291)
!297 = !DILocalVariable(name: "line", arg: 2, scope: !291, file: !103, line: 263, type: !294)
!298 = !DILocation(line: 263, column: 69, scope: !291)
!299 = !DILocalVariable(name: "fg", arg: 3, scope: !291, file: !103, line: 264, type: !71)
!300 = !DILocation(line: 264, column: 9, scope: !291)
!301 = !DILocalVariable(name: "bg", arg: 4, scope: !291, file: !103, line: 264, type: !71)
!302 = !DILocation(line: 264, column: 17, scope: !291)
!303 = !DILocalVariable(name: "flags", arg: 5, scope: !291, file: !103, line: 264, type: !71)
!304 = !DILocation(line: 264, column: 25, scope: !291)
!305 = !DILocalVariable(name: "data", scope: !291, file: !103, line: 266, type: !306)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 176, align: 8, elements: !307)
!307 = !{!308}
!308 = !DISubrange(count: 22)
!309 = !DILocation(line: 266, column: 16, scope: !291)
!310 = !DILocalVariable(name: "pos", scope: !291, file: !103, line: 267, type: !71)
!311 = !DILocation(line: 267, column: 6, scope: !291)
!312 = !DILocation(line: 269, column: 6, scope: !291)
!313 = !DILocation(line: 270, column: 6, scope: !314)
!314 = distinct !DILexicalBlock(scope: !291, file: !103, line: 270, column: 6)
!315 = !DILocation(line: 270, column: 12, scope: !314)
!316 = !DILocation(line: 270, column: 20, scope: !314)
!317 = !DILocation(line: 270, column: 9, scope: !314)
!318 = !DILocation(line: 271, column: 6, scope: !314)
!319 = !DILocation(line: 271, column: 10, scope: !320)
!320 = !DILexicalBlockFile(scope: !314, file: !103, discriminator: 1)
!321 = !DILocation(line: 271, column: 16, scope: !320)
!322 = !DILocation(line: 271, column: 30, scope: !320)
!323 = !DILocation(line: 271, column: 38, scope: !320)
!324 = !DILocation(line: 271, column: 49, scope: !320)
!325 = !DILocation(line: 271, column: 26, scope: !320)
!326 = !DILocation(line: 270, column: 6, scope: !327)
!327 = !DILexicalBlockFile(scope: !291, file: !103, discriminator: 1)
!328 = !DILocation(line: 272, column: 21, scope: !329)
!329 = distinct !DILexicalBlock(scope: !314, file: !103, line: 271, column: 60)
!330 = !DILocation(line: 272, column: 3, scope: !329)
!331 = !DILocation(line: 272, column: 11, scope: !329)
!332 = !DILocation(line: 272, column: 19, scope: !329)
!333 = !DILocation(line: 273, column: 11, scope: !329)
!334 = !DILocation(line: 273, column: 3, scope: !329)
!335 = !DILocation(line: 273, column: 15, scope: !329)
!336 = !DILocation(line: 279, column: 7, scope: !337)
!337 = distinct !DILexicalBlock(scope: !329, file: !103, line: 279, column: 7)
!338 = !DILocation(line: 279, column: 10, scope: !337)
!339 = !DILocation(line: 279, column: 7, scope: !329)
!340 = !DILocation(line: 280, column: 12, scope: !337)
!341 = !DILocation(line: 280, column: 4, scope: !337)
!342 = !DILocation(line: 280, column: 16, scope: !337)
!343 = !DILocation(line: 281, column: 12, scope: !344)
!344 = distinct !DILexicalBlock(scope: !337, file: !103, line: 281, column: 12)
!345 = !DILocation(line: 281, column: 15, scope: !344)
!346 = !DILocation(line: 281, column: 12, scope: !337)
!347 = !DILocation(line: 282, column: 18, scope: !344)
!348 = !DILocation(line: 282, column: 21, scope: !344)
!349 = !DILocation(line: 282, column: 18, scope: !350)
!350 = !DILexicalBlockFile(scope: !344, file: !103, discriminator: 1)
!351 = !DILocation(line: 282, column: 46, scope: !352)
!352 = !DILexicalBlockFile(scope: !344, file: !103, discriminator: 2)
!353 = !DILocation(line: 282, column: 18, scope: !352)
!354 = !DILocation(line: 282, column: 18, scope: !355)
!355 = !DILexicalBlockFile(scope: !344, file: !103, discriminator: 3)
!356 = !DILocation(line: 282, column: 12, scope: !355)
!357 = !DILocation(line: 282, column: 4, scope: !355)
!358 = !DILocation(line: 282, column: 16, scope: !355)
!359 = !DILocation(line: 283, column: 12, scope: !360)
!360 = distinct !DILexicalBlock(scope: !344, file: !103, line: 283, column: 12)
!361 = !DILocation(line: 283, column: 15, scope: !360)
!362 = !DILocation(line: 283, column: 12, scope: !344)
!363 = !DILocation(line: 284, column: 12, scope: !364)
!364 = distinct !DILexicalBlock(scope: !360, file: !103, line: 283, column: 22)
!365 = !DILocation(line: 284, column: 4, scope: !364)
!366 = !DILocation(line: 284, column: 16, scope: !364)
!367 = !DILocation(line: 285, column: 18, scope: !364)
!368 = !DILocation(line: 285, column: 12, scope: !364)
!369 = !DILocation(line: 285, column: 4, scope: !364)
!370 = !DILocation(line: 285, column: 16, scope: !364)
!371 = !DILocation(line: 286, column: 3, scope: !364)
!372 = !DILocation(line: 287, column: 2, scope: !329)
!373 = !DILocation(line: 288, column: 6, scope: !374)
!374 = distinct !DILexicalBlock(scope: !291, file: !103, line: 288, column: 6)
!375 = !DILocation(line: 288, column: 12, scope: !374)
!376 = !DILocation(line: 288, column: 20, scope: !374)
!377 = !DILocation(line: 288, column: 9, scope: !374)
!378 = !DILocation(line: 289, column: 6, scope: !374)
!379 = !DILocation(line: 289, column: 10, scope: !380)
!380 = !DILexicalBlockFile(scope: !374, file: !103, discriminator: 1)
!381 = !DILocation(line: 289, column: 16, scope: !380)
!382 = !DILocation(line: 289, column: 30, scope: !380)
!383 = !DILocation(line: 289, column: 38, scope: !380)
!384 = !DILocation(line: 289, column: 49, scope: !380)
!385 = !DILocation(line: 289, column: 26, scope: !380)
!386 = !DILocation(line: 288, column: 6, scope: !327)
!387 = !DILocation(line: 290, column: 35, scope: !388)
!388 = distinct !DILexicalBlock(scope: !374, file: !103, line: 289, column: 60)
!389 = !DILocation(line: 290, column: 17, scope: !388)
!390 = !DILocation(line: 290, column: 25, scope: !388)
!391 = !DILocation(line: 290, column: 33, scope: !388)
!392 = !DILocation(line: 291, column: 11, scope: !388)
!393 = !DILocation(line: 291, column: 3, scope: !388)
!394 = !DILocation(line: 291, column: 15, scope: !388)
!395 = !DILocation(line: 297, column: 7, scope: !396)
!396 = distinct !DILexicalBlock(scope: !388, file: !103, line: 297, column: 7)
!397 = !DILocation(line: 297, column: 10, scope: !396)
!398 = !DILocation(line: 297, column: 7, scope: !388)
!399 = !DILocation(line: 298, column: 12, scope: !396)
!400 = !DILocation(line: 298, column: 4, scope: !396)
!401 = !DILocation(line: 298, column: 16, scope: !396)
!402 = !DILocation(line: 299, column: 12, scope: !403)
!403 = distinct !DILexicalBlock(scope: !396, file: !103, line: 299, column: 12)
!404 = !DILocation(line: 299, column: 15, scope: !403)
!405 = !DILocation(line: 299, column: 12, scope: !396)
!406 = !DILocation(line: 300, column: 25, scope: !403)
!407 = !DILocation(line: 300, column: 23, scope: !403)
!408 = !DILocation(line: 300, column: 18, scope: !403)
!409 = !DILocation(line: 300, column: 12, scope: !403)
!410 = !DILocation(line: 300, column: 4, scope: !403)
!411 = !DILocation(line: 300, column: 16, scope: !403)
!412 = !DILocation(line: 301, column: 12, scope: !413)
!413 = distinct !DILexicalBlock(scope: !403, file: !103, line: 301, column: 12)
!414 = !DILocation(line: 301, column: 15, scope: !413)
!415 = !DILocation(line: 301, column: 12, scope: !403)
!416 = !DILocation(line: 302, column: 12, scope: !417)
!417 = distinct !DILexicalBlock(scope: !413, file: !103, line: 301, column: 22)
!418 = !DILocation(line: 302, column: 4, scope: !417)
!419 = !DILocation(line: 302, column: 16, scope: !417)
!420 = !DILocation(line: 303, column: 18, scope: !417)
!421 = !DILocation(line: 303, column: 12, scope: !417)
!422 = !DILocation(line: 303, column: 4, scope: !417)
!423 = !DILocation(line: 303, column: 16, scope: !417)
!424 = !DILocation(line: 304, column: 3, scope: !417)
!425 = !DILocation(line: 305, column: 2, scope: !388)
!426 = !DILocation(line: 307, column: 7, scope: !427)
!427 = distinct !DILexicalBlock(scope: !291, file: !103, line: 307, column: 6)
!428 = !DILocation(line: 307, column: 13, scope: !427)
!429 = !DILocation(line: 307, column: 27, scope: !427)
!430 = !DILocation(line: 307, column: 35, scope: !427)
!431 = !DILocation(line: 307, column: 46, scope: !427)
!432 = !DILocation(line: 307, column: 23, scope: !427)
!433 = !DILocation(line: 307, column: 6, scope: !291)
!434 = !DILocation(line: 308, column: 11, scope: !435)
!435 = distinct !DILexicalBlock(scope: !427, file: !103, line: 307, column: 57)
!436 = !DILocation(line: 308, column: 3, scope: !435)
!437 = !DILocation(line: 308, column: 15, scope: !435)
!438 = !DILocation(line: 309, column: 11, scope: !435)
!439 = !DILocation(line: 309, column: 3, scope: !435)
!440 = !DILocation(line: 309, column: 15, scope: !435)
!441 = !DILocation(line: 310, column: 2, scope: !435)
!442 = !DILocation(line: 311, column: 7, scope: !443)
!443 = distinct !DILexicalBlock(scope: !291, file: !103, line: 311, column: 6)
!444 = !DILocation(line: 311, column: 13, scope: !443)
!445 = !DILocation(line: 311, column: 27, scope: !443)
!446 = !DILocation(line: 311, column: 35, scope: !443)
!447 = !DILocation(line: 311, column: 46, scope: !443)
!448 = !DILocation(line: 311, column: 23, scope: !443)
!449 = !DILocation(line: 311, column: 6, scope: !291)
!450 = !DILocation(line: 312, column: 11, scope: !451)
!451 = distinct !DILexicalBlock(scope: !443, file: !103, line: 311, column: 57)
!452 = !DILocation(line: 312, column: 3, scope: !451)
!453 = !DILocation(line: 312, column: 15, scope: !451)
!454 = !DILocation(line: 313, column: 11, scope: !451)
!455 = !DILocation(line: 313, column: 3, scope: !451)
!456 = !DILocation(line: 313, column: 15, scope: !451)
!457 = !DILocation(line: 314, column: 2, scope: !451)
!458 = !DILocation(line: 315, column: 7, scope: !459)
!459 = distinct !DILexicalBlock(scope: !291, file: !103, line: 315, column: 6)
!460 = !DILocation(line: 315, column: 13, scope: !459)
!461 = !DILocation(line: 315, column: 27, scope: !459)
!462 = !DILocation(line: 315, column: 35, scope: !459)
!463 = !DILocation(line: 315, column: 46, scope: !459)
!464 = !DILocation(line: 315, column: 23, scope: !459)
!465 = !DILocation(line: 315, column: 6, scope: !291)
!466 = !DILocation(line: 316, column: 11, scope: !467)
!467 = distinct !DILexicalBlock(scope: !459, file: !103, line: 315, column: 57)
!468 = !DILocation(line: 316, column: 3, scope: !467)
!469 = !DILocation(line: 316, column: 15, scope: !467)
!470 = !DILocation(line: 317, column: 11, scope: !467)
!471 = !DILocation(line: 317, column: 3, scope: !467)
!472 = !DILocation(line: 317, column: 15, scope: !467)
!473 = !DILocation(line: 318, column: 2, scope: !467)
!474 = !DILocation(line: 319, column: 7, scope: !475)
!475 = distinct !DILexicalBlock(scope: !291, file: !103, line: 319, column: 6)
!476 = !DILocation(line: 319, column: 13, scope: !475)
!477 = !DILocation(line: 319, column: 27, scope: !475)
!478 = !DILocation(line: 319, column: 35, scope: !475)
!479 = !DILocation(line: 319, column: 46, scope: !475)
!480 = !DILocation(line: 319, column: 23, scope: !475)
!481 = !DILocation(line: 319, column: 6, scope: !291)
!482 = !DILocation(line: 320, column: 11, scope: !483)
!483 = distinct !DILexicalBlock(scope: !475, file: !103, line: 319, column: 57)
!484 = !DILocation(line: 320, column: 3, scope: !483)
!485 = !DILocation(line: 320, column: 15, scope: !483)
!486 = !DILocation(line: 321, column: 11, scope: !483)
!487 = !DILocation(line: 321, column: 3, scope: !483)
!488 = !DILocation(line: 321, column: 15, scope: !483)
!489 = !DILocation(line: 322, column: 2, scope: !483)
!490 = !DILocation(line: 323, column: 7, scope: !491)
!491 = distinct !DILexicalBlock(scope: !291, file: !103, line: 323, column: 6)
!492 = !DILocation(line: 323, column: 13, scope: !491)
!493 = !DILocation(line: 323, column: 27, scope: !491)
!494 = !DILocation(line: 323, column: 35, scope: !491)
!495 = !DILocation(line: 323, column: 46, scope: !491)
!496 = !DILocation(line: 323, column: 23, scope: !491)
!497 = !DILocation(line: 323, column: 6, scope: !291)
!498 = !DILocation(line: 324, column: 11, scope: !499)
!499 = distinct !DILexicalBlock(scope: !491, file: !103, line: 323, column: 57)
!500 = !DILocation(line: 324, column: 3, scope: !499)
!501 = !DILocation(line: 324, column: 15, scope: !499)
!502 = !DILocation(line: 325, column: 11, scope: !499)
!503 = !DILocation(line: 325, column: 3, scope: !499)
!504 = !DILocation(line: 325, column: 15, scope: !499)
!505 = !DILocation(line: 326, column: 2, scope: !499)
!506 = !DILocation(line: 327, column: 7, scope: !507)
!507 = distinct !DILexicalBlock(scope: !291, file: !103, line: 327, column: 6)
!508 = !DILocation(line: 327, column: 13, scope: !507)
!509 = !DILocation(line: 327, column: 27, scope: !507)
!510 = !DILocation(line: 327, column: 35, scope: !507)
!511 = !DILocation(line: 327, column: 46, scope: !507)
!512 = !DILocation(line: 327, column: 23, scope: !507)
!513 = !DILocation(line: 327, column: 6, scope: !291)
!514 = !DILocation(line: 328, column: 11, scope: !515)
!515 = distinct !DILexicalBlock(scope: !507, file: !103, line: 327, column: 57)
!516 = !DILocation(line: 328, column: 3, scope: !515)
!517 = !DILocation(line: 328, column: 15, scope: !515)
!518 = !DILocation(line: 329, column: 11, scope: !515)
!519 = !DILocation(line: 329, column: 3, scope: !515)
!520 = !DILocation(line: 329, column: 15, scope: !515)
!521 = !DILocation(line: 330, column: 2, scope: !515)
!522 = !DILocation(line: 331, column: 6, scope: !523)
!523 = distinct !DILexicalBlock(scope: !291, file: !103, line: 331, column: 6)
!524 = !DILocation(line: 331, column: 12, scope: !523)
!525 = !DILocation(line: 331, column: 6, scope: !291)
!526 = !DILocation(line: 332, column: 11, scope: !527)
!527 = distinct !DILexicalBlock(scope: !523, file: !103, line: 331, column: 22)
!528 = !DILocation(line: 332, column: 3, scope: !527)
!529 = !DILocation(line: 332, column: 15, scope: !527)
!530 = !DILocation(line: 333, column: 11, scope: !527)
!531 = !DILocation(line: 333, column: 3, scope: !527)
!532 = !DILocation(line: 333, column: 15, scope: !527)
!533 = !DILocation(line: 334, column: 2, scope: !527)
!534 = !DILocation(line: 336, column: 6, scope: !535)
!535 = distinct !DILexicalBlock(scope: !291, file: !103, line: 336, column: 6)
!536 = !DILocation(line: 336, column: 10, scope: !535)
!537 = !DILocation(line: 336, column: 6, scope: !291)
!538 = !DILocation(line: 337, column: 29, scope: !539)
!539 = distinct !DILexicalBlock(scope: !535, file: !103, line: 336, column: 15)
!540 = !DILocation(line: 337, column: 38, scope: !539)
!541 = !DILocation(line: 337, column: 37, scope: !539)
!542 = !DILocation(line: 337, column: 44, scope: !539)
!543 = !DILocation(line: 337, column: 50, scope: !539)
!544 = !DILocation(line: 337, column: 11, scope: !539)
!545 = !DILocation(line: 337, column: 4, scope: !539)
!546 = !DILocation(line: 337, column: 9, scope: !539)
!547 = !DILocation(line: 338, column: 2, scope: !539)
!548 = !DILocation(line: 340, column: 23, scope: !291)
!549 = !DILocation(line: 340, column: 2, scope: !291)
!550 = !DILocation(line: 340, column: 10, scope: !291)
!551 = !DILocation(line: 340, column: 21, scope: !291)
!552 = !DILocation(line: 341, column: 1, scope: !291)
!553 = distinct !DISubprogram(name: "textbuffer_insert", scope: !103, file: !103, line: 350, type: !554, isLocal: false, isDefinition: true, scopeLine: 353, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !106)
!554 = !DISubroutineType(types: !555)
!555 = !{!56, !40, !56, !556, !71, !558}
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64, align: 64)
!557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!559 = !DILocalVariable(name: "buffer", arg: 1, scope: !553, file: !103, line: 350, type: !40)
!560 = !DILocation(line: 350, column: 46, scope: !553)
!561 = !DILocalVariable(name: "insert_after", arg: 2, scope: !553, file: !103, line: 350, type: !56)
!562 = !DILocation(line: 350, column: 64, scope: !553)
!563 = !DILocalVariable(name: "data", arg: 3, scope: !553, file: !103, line: 351, type: !556)
!564 = !DILocation(line: 351, column: 29, scope: !553)
!565 = !DILocalVariable(name: "len", arg: 4, scope: !553, file: !103, line: 351, type: !71)
!566 = !DILocation(line: 351, column: 39, scope: !553)
!567 = !DILocalVariable(name: "info", arg: 5, scope: !553, file: !103, line: 352, type: !558)
!568 = !DILocation(line: 352, column: 23, scope: !553)
!569 = !DILocalVariable(name: "line", scope: !553, file: !103, line: 354, type: !56)
!570 = !DILocation(line: 354, column: 12, scope: !553)
!571 = !DILocation(line: 356, column: 2, scope: !553)
!572 = distinct !{!572, !571}
!573 = !DILocation(line: 356, column: 10, scope: !574)
!574 = !DILexicalBlockFile(scope: !575, file: !103, discriminator: 1)
!575 = distinct !DILexicalBlock(scope: !576, file: !103, line: 356, column: 10)
!576 = distinct !DILexicalBlock(scope: !553, file: !103, line: 356, column: 4)
!577 = !DILocation(line: 356, column: 17, scope: !574)
!578 = !DILocation(line: 356, column: 5, scope: !579)
!579 = !DILexicalBlockFile(scope: !580, file: !103, discriminator: 2)
!580 = distinct !DILexicalBlock(scope: !575, file: !103, line: 356, column: 3)
!581 = !DILocation(line: 356, column: 14, scope: !582)
!582 = !DILexicalBlockFile(scope: !583, file: !103, discriminator: 3)
!583 = distinct !DILexicalBlock(scope: !575, file: !103, line: 356, column: 12)
!584 = !DILocation(line: 356, column: 101, scope: !582)
!585 = !DILocation(line: 356, column: 7, scope: !586)
!586 = !DILexicalBlockFile(scope: !576, file: !103, discriminator: 4)
!587 = !DILocation(line: 357, column: 2, scope: !553)
!588 = distinct !{!588, !587}
!589 = !DILocation(line: 357, column: 10, scope: !590)
!590 = !DILexicalBlockFile(scope: !591, file: !103, discriminator: 1)
!591 = distinct !DILexicalBlock(scope: !592, file: !103, line: 357, column: 10)
!592 = distinct !DILexicalBlock(scope: !553, file: !103, line: 357, column: 4)
!593 = !DILocation(line: 357, column: 15, scope: !590)
!594 = !DILocation(line: 357, column: 5, scope: !595)
!595 = !DILexicalBlockFile(scope: !596, file: !103, discriminator: 2)
!596 = distinct !DILexicalBlock(scope: !591, file: !103, line: 357, column: 3)
!597 = !DILocation(line: 357, column: 14, scope: !598)
!598 = !DILexicalBlockFile(scope: !599, file: !103, discriminator: 3)
!599 = distinct !DILexicalBlock(scope: !591, file: !103, line: 357, column: 12)
!600 = !DILocation(line: 357, column: 99, scope: !598)
!601 = !DILocation(line: 357, column: 7, scope: !602)
!602 = !DILexicalBlockFile(scope: !592, file: !103, discriminator: 4)
!603 = !DILocation(line: 359, column: 10, scope: !553)
!604 = !DILocation(line: 359, column: 18, scope: !553)
!605 = !DILocation(line: 359, column: 9, scope: !553)
!606 = !DILocation(line: 359, column: 29, scope: !607)
!607 = !DILexicalBlockFile(scope: !553, file: !103, discriminator: 1)
!608 = !DILocation(line: 359, column: 9, scope: !607)
!609 = !DILocation(line: 360, column: 26, scope: !553)
!610 = !DILocation(line: 360, column: 34, scope: !553)
!611 = !DILocation(line: 360, column: 3, scope: !553)
!612 = !DILocation(line: 359, column: 9, scope: !613)
!613 = !DILexicalBlockFile(scope: !553, file: !103, discriminator: 2)
!614 = !DILocation(line: 359, column: 9, scope: !615)
!615 = !DILexicalBlockFile(scope: !553, file: !103, discriminator: 3)
!616 = !DILocation(line: 359, column: 7, scope: !615)
!617 = !DILocation(line: 362, column: 6, scope: !618)
!618 = distinct !DILexicalBlock(scope: !553, file: !103, line: 362, column: 6)
!619 = !DILocation(line: 362, column: 11, scope: !618)
!620 = !DILocation(line: 362, column: 6, scope: !553)
!621 = !DILocation(line: 363, column: 11, scope: !618)
!622 = !DILocation(line: 363, column: 17, scope: !618)
!623 = !DILocation(line: 363, column: 3, scope: !618)
!624 = !DILocation(line: 363, column: 23, scope: !618)
!625 = !DILocation(line: 365, column: 20, scope: !553)
!626 = !DILocation(line: 365, column: 28, scope: !553)
!627 = !DILocation(line: 365, column: 34, scope: !553)
!628 = !DILocation(line: 365, column: 2, scope: !553)
!629 = !DILocation(line: 367, column: 21, scope: !553)
!630 = !DILocation(line: 367, column: 25, scope: !553)
!631 = !DILocation(line: 367, column: 30, scope: !553)
!632 = !DILocation(line: 368, column: 8, scope: !553)
!633 = !DILocation(line: 368, column: 11, scope: !553)
!634 = !DILocation(line: 368, column: 3, scope: !553)
!635 = !DILocation(line: 368, column: 15, scope: !553)
!636 = !DILocation(line: 368, column: 20, scope: !553)
!637 = !DILocation(line: 368, column: 28, scope: !607)
!638 = !DILocation(line: 368, column: 31, scope: !607)
!639 = !DILocation(line: 368, column: 23, scope: !607)
!640 = !DILocation(line: 368, column: 35, scope: !607)
!641 = !DILocation(line: 368, column: 20, scope: !613)
!642 = !DILocation(line: 367, column: 2, scope: !607)
!643 = !DILocation(line: 367, column: 10, scope: !607)
!644 = !DILocation(line: 367, column: 19, scope: !607)
!645 = !DILocation(line: 370, column: 6, scope: !646)
!646 = distinct !DILexicalBlock(scope: !553, file: !103, line: 370, column: 6)
!647 = !DILocation(line: 370, column: 14, scope: !646)
!648 = !DILocation(line: 370, column: 6, scope: !553)
!649 = !DILocation(line: 371, column: 3, scope: !650)
!650 = distinct !DILexicalBlock(scope: !646, file: !103, line: 370, column: 24)
!651 = !DILocation(line: 371, column: 11, scope: !650)
!652 = !DILocation(line: 371, column: 19, scope: !650)
!653 = !DILocation(line: 372, column: 3, scope: !650)
!654 = !DILocation(line: 372, column: 11, scope: !650)
!655 = !DILocation(line: 372, column: 19, scope: !650)
!656 = !DILocation(line: 373, column: 3, scope: !650)
!657 = !DILocation(line: 373, column: 11, scope: !650)
!658 = !DILocation(line: 373, column: 22, scope: !650)
!659 = !DILocation(line: 374, column: 2, scope: !650)
!660 = !DILocation(line: 376, column: 16, scope: !553)
!661 = !DILocation(line: 376, column: 9, scope: !553)
!662 = !DILocation(line: 377, column: 1, scope: !553)
!663 = distinct !DISubprogram(name: "textbuffer_append", scope: !103, file: !103, line: 343, type: !664, isLocal: false, isDefinition: true, scopeLine: 346, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !106)
!664 = !DISubroutineType(types: !665)
!665 = !{!56, !40, !556, !71, !558}
!666 = !DILocalVariable(name: "buffer", arg: 1, scope: !663, file: !103, line: 343, type: !40)
!667 = !DILocation(line: 343, column: 46, scope: !663)
!668 = !DILocalVariable(name: "data", arg: 2, scope: !663, file: !103, line: 344, type: !556)
!669 = !DILocation(line: 344, column: 29, scope: !663)
!670 = !DILocalVariable(name: "len", arg: 3, scope: !663, file: !103, line: 344, type: !71)
!671 = !DILocation(line: 344, column: 39, scope: !663)
!672 = !DILocalVariable(name: "info", arg: 4, scope: !663, file: !103, line: 345, type: !558)
!673 = !DILocation(line: 345, column: 23, scope: !663)
!674 = !DILocation(line: 347, column: 34, scope: !663)
!675 = !DILocation(line: 347, column: 42, scope: !663)
!676 = !DILocation(line: 347, column: 50, scope: !663)
!677 = !DILocation(line: 347, column: 60, scope: !663)
!678 = !DILocation(line: 347, column: 66, scope: !663)
!679 = !DILocation(line: 347, column: 71, scope: !663)
!680 = !DILocation(line: 347, column: 16, scope: !663)
!681 = !DILocation(line: 347, column: 9, scope: !663)
!682 = distinct !DISubprogram(name: "textbuffer_line_insert", scope: !103, file: !103, line: 202, type: !683, isLocal: true, isDefinition: true, scopeLine: 204, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !106)
!683 = !DISubroutineType(types: !684)
!684 = !{!56, !40, !56}
!685 = !DILocalVariable(name: "buffer", arg: 1, scope: !682, file: !103, line: 202, type: !40)
!686 = !DILocation(line: 202, column: 58, scope: !682)
!687 = !DILocalVariable(name: "prev", arg: 2, scope: !682, file: !103, line: 203, type: !56)
!688 = !DILocation(line: 203, column: 16, scope: !682)
!689 = !DILocalVariable(name: "line", scope: !682, file: !103, line: 205, type: !56)
!690 = !DILocation(line: 205, column: 12, scope: !682)
!691 = !DILocation(line: 207, column: 32, scope: !682)
!692 = !DILocation(line: 207, column: 9, scope: !682)
!693 = !DILocation(line: 207, column: 7, scope: !682)
!694 = !DILocation(line: 208, column: 15, scope: !682)
!695 = !DILocation(line: 208, column: 2, scope: !682)
!696 = !DILocation(line: 208, column: 8, scope: !682)
!697 = !DILocation(line: 208, column: 13, scope: !682)
!698 = !DILocation(line: 209, column: 6, scope: !699)
!699 = distinct !DILexicalBlock(scope: !682, file: !103, line: 209, column: 6)
!700 = !DILocation(line: 209, column: 11, scope: !699)
!701 = !DILocation(line: 209, column: 6, scope: !682)
!702 = !DILocation(line: 210, column: 16, scope: !703)
!703 = distinct !DILexicalBlock(scope: !699, file: !103, line: 209, column: 19)
!704 = !DILocation(line: 210, column: 24, scope: !703)
!705 = !DILocation(line: 210, column: 3, scope: !703)
!706 = !DILocation(line: 210, column: 9, scope: !703)
!707 = !DILocation(line: 210, column: 14, scope: !703)
!708 = !DILocation(line: 211, column: 21, scope: !709)
!709 = distinct !DILexicalBlock(scope: !703, file: !103, line: 211, column: 21)
!710 = !DILocation(line: 211, column: 29, scope: !709)
!711 = !DILocation(line: 211, column: 40, scope: !709)
!712 = !DILocation(line: 211, column: 21, scope: !703)
!713 = !DILocation(line: 212, column: 31, scope: !709)
!714 = !DILocation(line: 212, column: 4, scope: !709)
!715 = !DILocation(line: 212, column: 12, scope: !709)
!716 = !DILocation(line: 212, column: 24, scope: !709)
!717 = !DILocation(line: 212, column: 29, scope: !709)
!718 = !DILocation(line: 213, column: 24, scope: !703)
!719 = !DILocation(line: 213, column: 3, scope: !703)
!720 = !DILocation(line: 213, column: 11, scope: !703)
!721 = !DILocation(line: 213, column: 22, scope: !703)
!722 = !DILocation(line: 214, column: 2, scope: !703)
!723 = !DILocation(line: 215, column: 16, scope: !724)
!724 = distinct !DILexicalBlock(scope: !699, file: !103, line: 214, column: 9)
!725 = !DILocation(line: 215, column: 22, scope: !724)
!726 = !DILocation(line: 215, column: 3, scope: !724)
!727 = !DILocation(line: 215, column: 9, scope: !724)
!728 = !DILocation(line: 215, column: 14, scope: !724)
!729 = !DILocation(line: 216, column: 21, scope: !730)
!730 = distinct !DILexicalBlock(scope: !724, file: !103, line: 216, column: 21)
!731 = !DILocation(line: 216, column: 27, scope: !730)
!732 = !DILocation(line: 216, column: 32, scope: !730)
!733 = !DILocation(line: 216, column: 21, scope: !724)
!734 = !DILocation(line: 217, column: 23, scope: !730)
!735 = !DILocation(line: 217, column: 4, scope: !730)
!736 = !DILocation(line: 217, column: 10, scope: !730)
!737 = !DILocation(line: 217, column: 16, scope: !730)
!738 = !DILocation(line: 217, column: 21, scope: !730)
!739 = !DILocation(line: 218, column: 16, scope: !724)
!740 = !DILocation(line: 218, column: 3, scope: !724)
!741 = !DILocation(line: 218, column: 9, scope: !724)
!742 = !DILocation(line: 218, column: 14, scope: !724)
!743 = !DILocation(line: 221, column: 6, scope: !744)
!744 = distinct !DILexicalBlock(scope: !682, file: !103, line: 221, column: 6)
!745 = !DILocation(line: 221, column: 14, scope: !744)
!746 = !DILocation(line: 221, column: 22, scope: !744)
!747 = !DILocation(line: 221, column: 11, scope: !744)
!748 = !DILocation(line: 221, column: 6, scope: !682)
!749 = !DILocation(line: 222, column: 22, scope: !744)
!750 = !DILocation(line: 222, column: 3, scope: !744)
!751 = !DILocation(line: 222, column: 11, scope: !744)
!752 = !DILocation(line: 222, column: 20, scope: !744)
!753 = !DILocation(line: 223, column: 9, scope: !682)
!754 = !DILocation(line: 223, column: 17, scope: !682)
!755 = !DILocation(line: 223, column: 28, scope: !682)
!756 = !DILocation(line: 225, column: 16, scope: !682)
!757 = !DILocation(line: 225, column: 9, scope: !682)
!758 = distinct !DISubprogram(name: "text_chunk_append", scope: !103, file: !103, line: 143, type: !759, isLocal: true, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !106)
!759 = !DISubroutineType(types: !760)
!760 = !{null, !40, !556, !71}
!761 = !DILocalVariable(name: "buffer", arg: 1, scope: !758, file: !103, line: 143, type: !40)
!762 = !DILocation(line: 143, column: 48, scope: !758)
!763 = !DILocalVariable(name: "data", arg: 2, scope: !758, file: !103, line: 144, type: !556)
!764 = !DILocation(line: 144, column: 31, scope: !758)
!765 = !DILocalVariable(name: "len", arg: 3, scope: !758, file: !103, line: 144, type: !71)
!766 = !DILocation(line: 144, column: 41, scope: !758)
!767 = !DILocalVariable(name: "chunk", scope: !758, file: !103, line: 146, type: !81)
!768 = !DILocation(line: 146, column: 25, scope: !758)
!769 = !DILocalVariable(name: "left", scope: !758, file: !103, line: 147, type: !71)
!770 = !DILocation(line: 147, column: 6, scope: !758)
!771 = !DILocalVariable(name: "i", scope: !758, file: !103, line: 148, type: !71)
!772 = !DILocation(line: 148, column: 6, scope: !758)
!773 = !DILocation(line: 150, column: 6, scope: !774)
!774 = distinct !DILexicalBlock(scope: !758, file: !103, line: 150, column: 6)
!775 = !DILocation(line: 150, column: 10, scope: !774)
!776 = !DILocation(line: 150, column: 6, scope: !758)
!777 = !DILocation(line: 151, column: 17, scope: !774)
!778 = !DILocation(line: 153, column: 17, scope: !758)
!779 = !DILocation(line: 153, column: 25, scope: !758)
!780 = !DILocation(line: 153, column: 15, scope: !758)
!781 = !DILocation(line: 154, column: 2, scope: !758)
!782 = !DILocation(line: 154, column: 9, scope: !783)
!783 = !DILexicalBlockFile(scope: !758, file: !103, discriminator: 1)
!784 = !DILocation(line: 154, column: 16, scope: !783)
!785 = !DILocation(line: 154, column: 22, scope: !783)
!786 = !DILocation(line: 154, column: 20, scope: !783)
!787 = !DILocation(line: 154, column: 26, scope: !783)
!788 = !DILocation(line: 154, column: 2, scope: !783)
!789 = !DILocation(line: 155, column: 48, scope: !790)
!790 = distinct !DILexicalBlock(scope: !758, file: !103, line: 154, column: 66)
!791 = !DILocation(line: 155, column: 55, scope: !790)
!792 = !DILocation(line: 155, column: 46, scope: !790)
!793 = !DILocation(line: 155, column: 8, scope: !790)
!794 = !DILocation(line: 158, column: 7, scope: !795)
!795 = distinct !DILexicalBlock(scope: !790, file: !103, line: 158, column: 7)
!796 = !DILocation(line: 158, column: 14, scope: !795)
!797 = !DILocation(line: 158, column: 12, scope: !795)
!798 = !DILocation(line: 158, column: 18, scope: !795)
!799 = !DILocation(line: 158, column: 30, scope: !800)
!800 = !DILexicalBlockFile(scope: !795, file: !103, discriminator: 1)
!801 = !DILocation(line: 158, column: 25, scope: !800)
!802 = !DILocation(line: 158, column: 24, scope: !800)
!803 = !DILocation(line: 158, column: 37, scope: !800)
!804 = !DILocation(line: 158, column: 45, scope: !800)
!805 = !DILocation(line: 158, column: 7, scope: !800)
!806 = !DILocalVariable(name: "i", scope: !807, file: !103, line: 159, type: !71)
!807 = distinct !DILexicalBlock(scope: !795, file: !103, line: 158, column: 55)
!808 = !DILocation(line: 159, column: 8, scope: !807)
!809 = !DILocation(line: 160, column: 11, scope: !810)
!810 = distinct !DILexicalBlock(scope: !807, file: !103, line: 160, column: 4)
!811 = !DILocation(line: 160, column: 9, scope: !810)
!812 = !DILocation(line: 160, column: 16, scope: !813)
!813 = !DILexicalBlockFile(scope: !814, file: !103, discriminator: 1)
!814 = distinct !DILexicalBlock(scope: !810, file: !103, line: 160, column: 4)
!815 = !DILocation(line: 160, column: 18, scope: !813)
!816 = !DILocation(line: 160, column: 22, scope: !813)
!817 = !DILocation(line: 160, column: 25, scope: !818)
!818 = !DILexicalBlockFile(scope: !814, file: !103, discriminator: 2)
!819 = !DILocation(line: 160, column: 33, scope: !818)
!820 = !DILocation(line: 160, column: 30, scope: !818)
!821 = !DILocation(line: 160, column: 4, scope: !822)
!822 = !DILexicalBlockFile(scope: !810, file: !103, discriminator: 3)
!823 = !DILocation(line: 161, column: 17, scope: !824)
!824 = distinct !DILexicalBlock(scope: !814, file: !103, line: 161, column: 9)
!825 = !DILocation(line: 161, column: 24, scope: !824)
!826 = !DILocation(line: 161, column: 22, scope: !824)
!827 = !DILocation(line: 161, column: 12, scope: !824)
!828 = !DILocation(line: 161, column: 11, scope: !824)
!829 = !DILocation(line: 161, column: 28, scope: !824)
!830 = !DILocation(line: 161, column: 36, scope: !824)
!831 = !DILocation(line: 161, column: 9, scope: !814)
!832 = !DILocation(line: 162, column: 14, scope: !833)
!833 = distinct !DILexicalBlock(scope: !824, file: !103, line: 161, column: 46)
!834 = !DILocation(line: 162, column: 11, scope: !833)
!835 = !DILocation(line: 163, column: 6, scope: !833)
!836 = !DILocation(line: 161, column: 43, scope: !837)
!837 = !DILexicalBlockFile(scope: !824, file: !103, discriminator: 1)
!838 = !DILocation(line: 160, column: 37, scope: !839)
!839 = !DILexicalBlockFile(scope: !814, file: !103, discriminator: 4)
!840 = !DILocation(line: 160, column: 4, scope: !839)
!841 = distinct !{!841, !842}
!842 = !DILocation(line: 160, column: 4, scope: !807)
!843 = !DILocation(line: 165, column: 3, scope: !807)
!844 = !DILocation(line: 167, column: 10, scope: !845)
!845 = distinct !DILexicalBlock(scope: !790, file: !103, line: 167, column: 3)
!846 = !DILocation(line: 167, column: 8, scope: !845)
!847 = !DILocation(line: 167, column: 15, scope: !848)
!848 = !DILexicalBlockFile(scope: !849, file: !103, discriminator: 1)
!849 = distinct !DILexicalBlock(scope: !845, file: !103, line: 167, column: 3)
!850 = !DILocation(line: 167, column: 17, scope: !848)
!851 = !DILocation(line: 167, column: 3, scope: !848)
!852 = !DILocation(line: 168, column: 8, scope: !853)
!853 = distinct !DILexicalBlock(scope: !854, file: !103, line: 168, column: 8)
!854 = distinct !DILexicalBlock(scope: !849, file: !103, line: 167, column: 27)
!855 = !DILocation(line: 168, column: 16, scope: !853)
!856 = !DILocation(line: 168, column: 13, scope: !853)
!857 = !DILocation(line: 168, column: 18, scope: !853)
!858 = !DILocation(line: 168, column: 26, scope: !859)
!859 = !DILexicalBlockFile(scope: !853, file: !103, discriminator: 1)
!860 = !DILocation(line: 168, column: 31, scope: !859)
!861 = !DILocation(line: 168, column: 30, scope: !859)
!862 = !DILocation(line: 168, column: 21, scope: !859)
!863 = !DILocation(line: 168, column: 34, scope: !859)
!864 = !DILocation(line: 168, column: 8, scope: !859)
!865 = !DILocation(line: 169, column: 13, scope: !866)
!866 = distinct !DILexicalBlock(scope: !853, file: !103, line: 168, column: 40)
!867 = !DILocation(line: 169, column: 10, scope: !866)
!868 = !DILocation(line: 170, column: 5, scope: !866)
!869 = !DILocation(line: 172, column: 3, scope: !854)
!870 = !DILocation(line: 167, column: 22, scope: !871)
!871 = !DILexicalBlockFile(scope: !849, file: !103, discriminator: 2)
!872 = !DILocation(line: 167, column: 3, scope: !871)
!873 = distinct !{!873, !874}
!874 = !DILocation(line: 167, column: 3, scope: !790)
!875 = !DILocation(line: 174, column: 10, scope: !790)
!876 = !DILocation(line: 174, column: 17, scope: !790)
!877 = !DILocation(line: 174, column: 26, scope: !790)
!878 = !DILocation(line: 174, column: 33, scope: !790)
!879 = !DILocation(line: 174, column: 24, scope: !790)
!880 = !DILocation(line: 174, column: 38, scope: !790)
!881 = !DILocation(line: 174, column: 44, scope: !790)
!882 = !DILocation(line: 174, column: 3, scope: !790)
!883 = !DILocation(line: 175, column: 17, scope: !790)
!884 = !DILocation(line: 175, column: 3, scope: !790)
!885 = !DILocation(line: 175, column: 10, scope: !790)
!886 = !DILocation(line: 175, column: 14, scope: !790)
!887 = !DILocation(line: 177, column: 29, scope: !790)
!888 = !DILocation(line: 177, column: 11, scope: !790)
!889 = !DILocation(line: 177, column: 9, scope: !790)
!890 = !DILocation(line: 178, column: 3, scope: !790)
!891 = !DILocation(line: 178, column: 10, scope: !790)
!892 = !DILocation(line: 178, column: 18, scope: !790)
!893 = !DILocation(line: 179, column: 10, scope: !790)
!894 = !DILocation(line: 179, column: 7, scope: !790)
!895 = !DILocation(line: 179, column: 24, scope: !790)
!896 = !DILocation(line: 179, column: 21, scope: !790)
!897 = !DILocation(line: 154, column: 2, scope: !898)
!898 = !DILexicalBlockFile(scope: !758, file: !103, discriminator: 2)
!899 = distinct !{!899, !781}
!900 = !DILocation(line: 182, column: 9, scope: !758)
!901 = !DILocation(line: 182, column: 16, scope: !758)
!902 = !DILocation(line: 182, column: 25, scope: !758)
!903 = !DILocation(line: 182, column: 32, scope: !758)
!904 = !DILocation(line: 182, column: 23, scope: !758)
!905 = !DILocation(line: 182, column: 37, scope: !758)
!906 = !DILocation(line: 182, column: 43, scope: !758)
!907 = !DILocation(line: 182, column: 2, scope: !758)
!908 = !DILocation(line: 183, column: 16, scope: !758)
!909 = !DILocation(line: 183, column: 2, scope: !758)
!910 = !DILocation(line: 183, column: 9, scope: !758)
!911 = !DILocation(line: 183, column: 13, scope: !758)
!912 = !DILocation(line: 185, column: 2, scope: !758)
!913 = distinct !{!913, !912}
!914 = !DILocation(line: 185, column: 24, scope: !915)
!915 = !DILexicalBlockFile(scope: !916, file: !103, discriminator: 1)
!916 = distinct !DILexicalBlock(scope: !758, file: !103, line: 185, column: 5)
!917 = !DILocation(line: 185, column: 32, scope: !915)
!918 = !DILocation(line: 185, column: 7, scope: !915)
!919 = !DILocation(line: 185, column: 8, scope: !915)
!920 = !DILocation(line: 185, column: 16, scope: !915)
!921 = !DILocation(line: 185, column: 37, scope: !915)
!922 = !DILocation(line: 185, column: 59, scope: !915)
!923 = !DILocation(line: 185, column: 67, scope: !915)
!924 = !DILocation(line: 185, column: 70, scope: !915)
!925 = !DILocation(line: 185, column: 42, scope: !915)
!926 = !DILocation(line: 185, column: 43, scope: !915)
!927 = !DILocation(line: 185, column: 51, scope: !915)
!928 = !DILocation(line: 185, column: 74, scope: !915)
!929 = !DILocation(line: 185, column: 90, scope: !915)
!930 = !DILocation(line: 186, column: 1, scope: !758)
!931 = distinct !DISubprogram(name: "textbuffer_remove", scope: !103, file: !103, line: 379, type: !932, isLocal: false, isDefinition: true, scopeLine: 380, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !106)
!932 = !DISubroutineType(types: !933)
!933 = !{null, !40, !56}
!934 = !DILocalVariable(name: "buffer", arg: 1, scope: !931, file: !103, line: 379, type: !40)
!935 = !DILocation(line: 379, column: 41, scope: !931)
!936 = !DILocalVariable(name: "line", arg: 2, scope: !931, file: !103, line: 379, type: !56)
!937 = !DILocation(line: 379, column: 59, scope: !931)
!938 = !DILocation(line: 381, column: 2, scope: !931)
!939 = distinct !{!939, !938}
!940 = !DILocation(line: 381, column: 10, scope: !941)
!941 = !DILexicalBlockFile(scope: !942, file: !103, discriminator: 1)
!942 = distinct !DILexicalBlock(scope: !943, file: !103, line: 381, column: 10)
!943 = distinct !DILexicalBlock(scope: !931, file: !103, line: 381, column: 4)
!944 = !DILocation(line: 381, column: 17, scope: !941)
!945 = !DILocation(line: 381, column: 5, scope: !946)
!946 = !DILexicalBlockFile(scope: !947, file: !103, discriminator: 2)
!947 = distinct !DILexicalBlock(scope: !942, file: !103, line: 381, column: 3)
!948 = !DILocation(line: 381, column: 14, scope: !949)
!949 = !DILexicalBlockFile(scope: !950, file: !103, discriminator: 3)
!950 = distinct !DILexicalBlock(scope: !942, file: !103, line: 381, column: 12)
!951 = !DILocation(line: 381, column: 101, scope: !949)
!952 = !DILocation(line: 381, column: 112, scope: !953)
!953 = !DILexicalBlockFile(scope: !943, file: !103, discriminator: 4)
!954 = !DILocation(line: 382, column: 2, scope: !931)
!955 = distinct !{!955, !954}
!956 = !DILocation(line: 382, column: 10, scope: !957)
!957 = !DILexicalBlockFile(scope: !958, file: !103, discriminator: 1)
!958 = distinct !DILexicalBlock(scope: !959, file: !103, line: 382, column: 10)
!959 = distinct !DILexicalBlock(scope: !931, file: !103, line: 382, column: 4)
!960 = !DILocation(line: 382, column: 15, scope: !957)
!961 = !DILocation(line: 382, column: 5, scope: !962)
!962 = !DILexicalBlockFile(scope: !963, file: !103, discriminator: 2)
!963 = distinct !DILexicalBlock(scope: !958, file: !103, line: 382, column: 3)
!964 = !DILocation(line: 382, column: 14, scope: !965)
!965 = !DILexicalBlockFile(scope: !966, file: !103, discriminator: 3)
!966 = distinct !DILexicalBlock(scope: !958, file: !103, line: 382, column: 12)
!967 = !DILocation(line: 382, column: 99, scope: !965)
!968 = !DILocation(line: 382, column: 110, scope: !969)
!969 = !DILexicalBlockFile(scope: !959, file: !103, discriminator: 4)
!970 = !DILocation(line: 384, column: 6, scope: !971)
!971 = distinct !DILexicalBlock(scope: !931, file: !103, line: 384, column: 6)
!972 = !DILocation(line: 384, column: 14, scope: !971)
!973 = !DILocation(line: 384, column: 28, scope: !971)
!974 = !DILocation(line: 384, column: 25, scope: !971)
!975 = !DILocation(line: 384, column: 6, scope: !931)
!976 = !DILocation(line: 385, column: 24, scope: !971)
!977 = !DILocation(line: 385, column: 30, scope: !971)
!978 = !DILocation(line: 385, column: 3, scope: !971)
!979 = !DILocation(line: 385, column: 11, scope: !971)
!980 = !DILocation(line: 385, column: 22, scope: !971)
!981 = !DILocation(line: 386, column: 6, scope: !982)
!982 = distinct !DILexicalBlock(scope: !931, file: !103, line: 386, column: 6)
!983 = !DILocation(line: 386, column: 12, scope: !982)
!984 = !DILocation(line: 386, column: 17, scope: !982)
!985 = !DILocation(line: 386, column: 6, scope: !931)
!986 = !DILocation(line: 387, column: 22, scope: !982)
!987 = !DILocation(line: 387, column: 28, scope: !982)
!988 = !DILocation(line: 387, column: 3, scope: !982)
!989 = !DILocation(line: 387, column: 9, scope: !982)
!990 = !DILocation(line: 387, column: 15, scope: !982)
!991 = !DILocation(line: 387, column: 20, scope: !982)
!992 = !DILocation(line: 388, column: 6, scope: !993)
!993 = distinct !DILexicalBlock(scope: !931, file: !103, line: 388, column: 6)
!994 = !DILocation(line: 388, column: 12, scope: !993)
!995 = !DILocation(line: 388, column: 17, scope: !993)
!996 = !DILocation(line: 388, column: 6, scope: !931)
!997 = !DILocation(line: 389, column: 22, scope: !993)
!998 = !DILocation(line: 389, column: 28, scope: !993)
!999 = !DILocation(line: 389, column: 3, scope: !993)
!1000 = !DILocation(line: 389, column: 9, scope: !993)
!1001 = !DILocation(line: 389, column: 15, scope: !993)
!1002 = !DILocation(line: 389, column: 20, scope: !993)
!1003 = !DILocation(line: 391, column: 6, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !931, file: !103, line: 391, column: 6)
!1005 = !DILocation(line: 391, column: 14, scope: !1004)
!1006 = !DILocation(line: 391, column: 26, scope: !1004)
!1007 = !DILocation(line: 391, column: 23, scope: !1004)
!1008 = !DILocation(line: 391, column: 6, scope: !931)
!1009 = !DILocation(line: 392, column: 22, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1004, file: !103, line: 391, column: 32)
!1011 = !DILocation(line: 392, column: 28, scope: !1010)
!1012 = !DILocation(line: 392, column: 3, scope: !1010)
!1013 = !DILocation(line: 392, column: 11, scope: !1010)
!1014 = !DILocation(line: 392, column: 20, scope: !1010)
!1015 = !DILocation(line: 393, column: 2, scope: !1010)
!1016 = !DILocation(line: 395, column: 22, scope: !931)
!1017 = !DILocation(line: 395, column: 28, scope: !931)
!1018 = !DILocation(line: 395, column: 33, scope: !931)
!1019 = !DILocation(line: 395, column: 9, scope: !931)
!1020 = !DILocation(line: 395, column: 15, scope: !931)
!1021 = !DILocation(line: 395, column: 20, scope: !931)
!1022 = !DILocation(line: 397, column: 2, scope: !931)
!1023 = !DILocation(line: 397, column: 10, scope: !931)
!1024 = !DILocation(line: 397, column: 21, scope: !931)
!1025 = !DILocation(line: 398, column: 30, scope: !931)
!1026 = !DILocation(line: 398, column: 38, scope: !931)
!1027 = !DILocation(line: 398, column: 9, scope: !931)
!1028 = !DILocation(line: 399, column: 2, scope: !931)
!1029 = distinct !{!1029, !1028}
!1030 = !DILocation(line: 399, column: 49, scope: !1031)
!1031 = !DILexicalBlockFile(scope: !1032, file: !103, discriminator: 1)
!1032 = distinct !DILexicalBlock(scope: !1033, file: !103, line: 399, column: 11)
!1033 = distinct !DILexicalBlock(scope: !931, file: !103, line: 399, column: 5)
!1034 = !DILocation(line: 399, column: 48, scope: !1031)
!1035 = !DILocation(line: 399, column: 14, scope: !1031)
!1036 = !DILocation(line: 399, column: 96, scope: !1031)
!1037 = !DILocation(line: 400, column: 1, scope: !931)
!1038 = distinct !DISubprogram(name: "text_chunk_line_free", scope: !103, file: !103, line: 110, type: !932, isLocal: true, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !106)
!1039 = !DILocalVariable(name: "buffer", arg: 1, scope: !1038, file: !103, line: 110, type: !40)
!1040 = !DILocation(line: 110, column: 51, scope: !1038)
!1041 = !DILocalVariable(name: "line", arg: 2, scope: !1038, file: !103, line: 110, type: !56)
!1042 = !DILocation(line: 110, column: 69, scope: !1038)
!1043 = !DILocalVariable(name: "chunk", scope: !1038, file: !103, line: 112, type: !81)
!1044 = !DILocation(line: 112, column: 18, scope: !1038)
!1045 = !DILocalVariable(name: "text", scope: !1038, file: !103, line: 113, type: !556)
!1046 = !DILocation(line: 113, column: 23, scope: !1038)
!1047 = !DILocalVariable(name: "cmd", scope: !1038, file: !103, line: 114, type: !65)
!1048 = !DILocation(line: 114, column: 23, scope: !1038)
!1049 = !DILocalVariable(name: "tmp", scope: !1038, file: !103, line: 114, type: !64)
!1050 = !DILocation(line: 114, column: 29, scope: !1038)
!1051 = !DILocation(line: 116, column: 14, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1038, file: !103, line: 116, column: 2)
!1053 = !DILocation(line: 116, column: 20, scope: !1052)
!1054 = !DILocation(line: 116, column: 12, scope: !1052)
!1055 = !DILocation(line: 116, column: 7, scope: !1052)
!1056 = !DILocation(line: 117, column: 8, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1058, file: !103, line: 117, column: 7)
!1058 = distinct !DILexicalBlock(scope: !1059, file: !103, line: 116, column: 35)
!1059 = distinct !DILexicalBlock(scope: !1052, file: !103, line: 116, column: 2)
!1060 = !DILocation(line: 117, column: 7, scope: !1057)
!1061 = !DILocation(line: 117, column: 13, scope: !1057)
!1062 = !DILocation(line: 117, column: 7, scope: !1058)
!1063 = !DILocation(line: 118, column: 25, scope: !1057)
!1064 = !DILocation(line: 120, column: 7, scope: !1058)
!1065 = !DILocation(line: 121, column: 10, scope: !1058)
!1066 = !DILocation(line: 121, column: 9, scope: !1058)
!1067 = !DILocation(line: 121, column: 7, scope: !1058)
!1068 = !DILocation(line: 122, column: 7, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1058, file: !103, line: 122, column: 7)
!1070 = !DILocation(line: 122, column: 11, scope: !1069)
!1071 = !DILocation(line: 122, column: 32, scope: !1069)
!1072 = !DILocation(line: 122, column: 35, scope: !1073)
!1073 = !DILexicalBlockFile(scope: !1069, file: !103, discriminator: 1)
!1074 = !DILocation(line: 122, column: 39, scope: !1073)
!1075 = !DILocation(line: 122, column: 7, scope: !1073)
!1076 = !DILocation(line: 123, column: 8, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !103, line: 123, column: 8)
!1078 = distinct !DILexicalBlock(scope: !1069, file: !103, line: 122, column: 56)
!1079 = !DILocation(line: 123, column: 12, scope: !1077)
!1080 = !DILocation(line: 123, column: 8, scope: !1078)
!1081 = !DILocation(line: 124, column: 5, scope: !1077)
!1082 = !DILocation(line: 124, column: 18, scope: !1077)
!1083 = !DILocation(line: 124, column: 22, scope: !1077)
!1084 = !DILocation(line: 127, column: 28, scope: !1078)
!1085 = !DILocation(line: 127, column: 36, scope: !1078)
!1086 = !DILocation(line: 127, column: 12, scope: !1078)
!1087 = !DILocation(line: 127, column: 10, scope: !1078)
!1088 = !DILocation(line: 128, column: 10, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1078, file: !103, line: 128, column: 8)
!1090 = !DILocation(line: 128, column: 17, scope: !1089)
!1091 = !DILocation(line: 128, column: 8, scope: !1089)
!1092 = !DILocation(line: 128, column: 26, scope: !1089)
!1093 = !DILocation(line: 128, column: 8, scope: !1078)
!1094 = !DILocation(line: 129, column: 9, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1096, file: !103, line: 129, column: 9)
!1096 = distinct !DILexicalBlock(scope: !1089, file: !103, line: 128, column: 32)
!1097 = !DILocation(line: 129, column: 17, scope: !1095)
!1098 = !DILocation(line: 129, column: 29, scope: !1095)
!1099 = !DILocation(line: 129, column: 26, scope: !1095)
!1100 = !DILocation(line: 129, column: 9, scope: !1096)
!1101 = !DILocation(line: 130, column: 6, scope: !1095)
!1102 = !DILocation(line: 130, column: 13, scope: !1095)
!1103 = !DILocation(line: 130, column: 17, scope: !1095)
!1104 = !DILocation(line: 132, column: 25, scope: !1095)
!1105 = !DILocation(line: 132, column: 33, scope: !1095)
!1106 = !DILocation(line: 132, column: 6, scope: !1095)
!1107 = !DILocation(line: 133, column: 4, scope: !1096)
!1108 = !DILocation(line: 135, column: 8, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1078, file: !103, line: 135, column: 8)
!1110 = !DILocation(line: 135, column: 12, scope: !1109)
!1111 = !DILocation(line: 135, column: 8, scope: !1078)
!1112 = !DILocation(line: 136, column: 5, scope: !1109)
!1113 = !DILocation(line: 138, column: 11, scope: !1078)
!1114 = !DILocation(line: 138, column: 14, scope: !1078)
!1115 = !DILocation(line: 138, column: 9, scope: !1078)
!1116 = !DILocation(line: 139, column: 3, scope: !1078)
!1117 = !DILocation(line: 140, column: 2, scope: !1058)
!1118 = !DILocation(line: 116, column: 31, scope: !1119)
!1119 = !DILexicalBlockFile(scope: !1059, file: !103, discriminator: 1)
!1120 = !DILocation(line: 116, column: 2, scope: !1119)
!1121 = distinct !{!1121, !1122}
!1122 = !DILocation(line: 116, column: 2, scope: !1038)
!1123 = !DILocation(line: 141, column: 1, scope: !1038)
!1124 = distinct !DISubprogram(name: "textbuffer_line2text", scope: !103, file: !103, line: 446, type: !1125, isLocal: false, isDefinition: true, scopeLine: 447, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !106)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{null, !56, !71, !1127}
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64, align: 64)
!1128 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !1129, line: 39, baseType: !1130)
!1129 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !1129, line: 41, size: 192, align: 64, elements: !1131)
!1131 = !{!1132, !1135, !1139}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1130, file: !1129, line: 43, baseType: !1133, size: 64, align: 64)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64, align: 64)
!1134 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !52, line: 46, baseType: !98)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1130, file: !1129, line: 44, baseType: !1136, size: 64, align: 64, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !1137, line: 66, baseType: !1138)
!1137 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!1138 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !1130, file: !1129, line: 45, baseType: !1136, size: 64, align: 64, offset: 128)
!1140 = !DILocalVariable(name: "line", arg: 1, scope: !1124, file: !103, line: 446, type: !56)
!1141 = !DILocation(line: 446, column: 37, scope: !1124)
!1142 = !DILocalVariable(name: "coloring", arg: 2, scope: !1124, file: !103, line: 446, type: !71)
!1143 = !DILocation(line: 446, column: 47, scope: !1124)
!1144 = !DILocalVariable(name: "str", arg: 3, scope: !1124, file: !103, line: 446, type: !1127)
!1145 = !DILocation(line: 446, column: 66, scope: !1124)
!1146 = !DILocalVariable(name: "cmd", scope: !1124, file: !103, line: 448, type: !65)
!1147 = !DILocation(line: 448, column: 23, scope: !1124)
!1148 = !DILocalVariable(name: "ptr", scope: !1124, file: !103, line: 448, type: !64)
!1149 = !DILocation(line: 448, column: 29, scope: !1124)
!1150 = !DILocalVariable(name: "tmp", scope: !1124, file: !103, line: 448, type: !64)
!1151 = !DILocation(line: 448, column: 35, scope: !1124)
!1152 = !DILocation(line: 450, column: 2, scope: !1124)
!1153 = distinct !{!1153, !1152}
!1154 = !DILocation(line: 450, column: 10, scope: !1155)
!1155 = !DILexicalBlockFile(scope: !1156, file: !103, discriminator: 1)
!1156 = distinct !DILexicalBlock(scope: !1157, file: !103, line: 450, column: 10)
!1157 = distinct !DILexicalBlock(scope: !1124, file: !103, line: 450, column: 4)
!1158 = !DILocation(line: 450, column: 15, scope: !1155)
!1159 = !DILocation(line: 450, column: 5, scope: !1160)
!1160 = !DILexicalBlockFile(scope: !1161, file: !103, discriminator: 2)
!1161 = distinct !DILexicalBlock(scope: !1156, file: !103, line: 450, column: 3)
!1162 = !DILocation(line: 450, column: 14, scope: !1163)
!1163 = !DILexicalBlockFile(scope: !1164, file: !103, discriminator: 3)
!1164 = distinct !DILexicalBlock(scope: !1156, file: !103, line: 450, column: 12)
!1165 = !DILocation(line: 450, column: 99, scope: !1163)
!1166 = !DILocation(line: 450, column: 110, scope: !1167)
!1167 = !DILexicalBlockFile(scope: !1157, file: !103, discriminator: 4)
!1168 = !DILocation(line: 451, column: 2, scope: !1124)
!1169 = distinct !{!1169, !1168}
!1170 = !DILocation(line: 451, column: 10, scope: !1171)
!1171 = !DILexicalBlockFile(scope: !1172, file: !103, discriminator: 1)
!1172 = distinct !DILexicalBlock(scope: !1173, file: !103, line: 451, column: 10)
!1173 = distinct !DILexicalBlock(scope: !1124, file: !103, line: 451, column: 4)
!1174 = !DILocation(line: 451, column: 14, scope: !1171)
!1175 = !DILocation(line: 451, column: 5, scope: !1176)
!1176 = !DILexicalBlockFile(scope: !1177, file: !103, discriminator: 2)
!1177 = distinct !DILexicalBlock(scope: !1172, file: !103, line: 451, column: 3)
!1178 = !DILocation(line: 451, column: 14, scope: !1179)
!1179 = !DILexicalBlockFile(scope: !1180, file: !103, discriminator: 3)
!1180 = distinct !DILexicalBlock(scope: !1172, file: !103, line: 451, column: 12)
!1181 = !DILocation(line: 451, column: 98, scope: !1179)
!1182 = !DILocation(line: 451, column: 109, scope: !1183)
!1183 = !DILexicalBlockFile(scope: !1173, file: !103, discriminator: 4)
!1184 = !DILocation(line: 453, column: 27, scope: !1124)
!1185 = !DILocation(line: 453, column: 9, scope: !1124)
!1186 = !DILocation(line: 455, column: 13, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1124, file: !103, line: 455, column: 2)
!1188 = !DILocation(line: 455, column: 19, scope: !1187)
!1189 = !DILocation(line: 455, column: 11, scope: !1187)
!1190 = !DILocation(line: 455, column: 7, scope: !1187)
!1191 = !DILocation(line: 456, column: 8, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !103, line: 456, column: 7)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !103, line: 455, column: 27)
!1194 = distinct !DILexicalBlock(scope: !1187, file: !103, line: 455, column: 2)
!1195 = !DILocation(line: 456, column: 7, scope: !1192)
!1196 = !DILocation(line: 456, column: 12, scope: !1192)
!1197 = !DILocation(line: 456, column: 7, scope: !1193)
!1198 = !DILocation(line: 457, column: 30, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1192, file: !103, line: 456, column: 18)
!1200 = !DILocation(line: 457, column: 43, scope: !1199)
!1201 = !DILocation(line: 457, column: 42, scope: !1199)
!1202 = !DILocation(line: 457, column: 4, scope: !1199)
!1203 = !DILocation(line: 458, column: 28, scope: !1199)
!1204 = !DILocation(line: 459, column: 4, scope: !1199)
!1205 = distinct !{!1205, !1206}
!1206 = !DILocation(line: 455, column: 2, scope: !1124)
!1207 = !DILocation(line: 462, column: 6, scope: !1193)
!1208 = !DILocation(line: 463, column: 24, scope: !1193)
!1209 = !DILocation(line: 463, column: 23, scope: !1193)
!1210 = !DILocation(line: 463, column: 21, scope: !1193)
!1211 = !DILocation(line: 464, column: 6, scope: !1193)
!1212 = !DILocation(line: 466, column: 7, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1193, file: !103, line: 466, column: 7)
!1214 = !DILocation(line: 466, column: 11, scope: !1213)
!1215 = !DILocation(line: 466, column: 7, scope: !1193)
!1216 = !DILocation(line: 468, column: 4, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1213, file: !103, line: 466, column: 28)
!1218 = !DILocation(line: 471, column: 7, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1193, file: !103, line: 471, column: 7)
!1220 = !DILocation(line: 471, column: 11, scope: !1219)
!1221 = !DILocation(line: 471, column: 7, scope: !1193)
!1222 = !DILocation(line: 473, column: 4, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1219, file: !103, line: 471, column: 33)
!1224 = !DILocation(line: 473, column: 17, scope: !1223)
!1225 = !DILocation(line: 474, column: 10, scope: !1223)
!1226 = !DILocation(line: 474, column: 8, scope: !1223)
!1227 = !DILocation(line: 475, column: 25, scope: !1223)
!1228 = !DILocation(line: 478, column: 8, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1193, file: !103, line: 478, column: 7)
!1230 = !DILocation(line: 478, column: 7, scope: !1193)
!1231 = !DILocation(line: 480, column: 8, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1233, file: !103, line: 480, column: 8)
!1233 = distinct !DILexicalBlock(scope: !1229, file: !103, line: 478, column: 18)
!1234 = !DILocation(line: 480, column: 12, scope: !1232)
!1235 = !DILocation(line: 480, column: 30, scope: !1232)
!1236 = !DILocation(line: 480, column: 33, scope: !1237)
!1237 = !DILexicalBlockFile(scope: !1232, file: !103, discriminator: 1)
!1238 = !DILocation(line: 480, column: 37, scope: !1237)
!1239 = !DILocation(line: 480, column: 8, scope: !1237)
!1240 = !DILocation(line: 481, column: 8, scope: !1232)
!1241 = !DILocation(line: 481, column: 5, scope: !1232)
!1242 = !DILocation(line: 487, column: 25, scope: !1233)
!1243 = !DILocation(line: 490, column: 8, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1193, file: !103, line: 490, column: 7)
!1245 = !DILocation(line: 490, column: 12, scope: !1244)
!1246 = !DILocation(line: 490, column: 28, scope: !1244)
!1247 = !DILocation(line: 490, column: 7, scope: !1193)
!1248 = !DILocation(line: 492, column: 35, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1244, file: !103, line: 490, column: 34)
!1250 = !DILocation(line: 492, column: 40, scope: !1249)
!1251 = !DILocation(line: 492, column: 25, scope: !1249)
!1252 = !DILocation(line: 493, column: 3, scope: !1249)
!1253 = !DILocation(line: 493, column: 18, scope: !1254)
!1254 = !DILexicalBlockFile(scope: !1244, file: !103, discriminator: 1)
!1255 = !DILocation(line: 493, column: 10, scope: !1254)
!1256 = !DILocation(line: 495, column: 30, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1244, file: !103, line: 493, column: 23)
!1258 = !DILocation(line: 495, column: 4, scope: !1257)
!1259 = !DILocation(line: 496, column: 4, scope: !1257)
!1260 = !DILocation(line: 498, column: 30, scope: !1257)
!1261 = !DILocation(line: 498, column: 4, scope: !1257)
!1262 = !DILocation(line: 499, column: 4, scope: !1257)
!1263 = !DILocation(line: 501, column: 27, scope: !1257)
!1264 = !DILocation(line: 501, column: 4, scope: !1257)
!1265 = !DILocation(line: 503, column: 4, scope: !1257)
!1266 = !DILocation(line: 505, column: 27, scope: !1257)
!1267 = !DILocation(line: 505, column: 4, scope: !1257)
!1268 = !DILocation(line: 507, column: 4, scope: !1257)
!1269 = !DILocation(line: 509, column: 27, scope: !1257)
!1270 = !DILocation(line: 509, column: 4, scope: !1257)
!1271 = !DILocation(line: 511, column: 4, scope: !1257)
!1272 = !DILocation(line: 513, column: 27, scope: !1257)
!1273 = !DILocation(line: 513, column: 4, scope: !1257)
!1274 = !DILocation(line: 515, column: 4, scope: !1257)
!1275 = !DILocation(line: 517, column: 27, scope: !1257)
!1276 = !DILocation(line: 517, column: 4, scope: !1257)
!1277 = !DILocation(line: 519, column: 4, scope: !1257)
!1278 = !DILocation(line: 521, column: 27, scope: !1257)
!1279 = !DILocation(line: 521, column: 4, scope: !1257)
!1280 = !DILocation(line: 523, column: 4, scope: !1257)
!1281 = !DILocation(line: 525, column: 21, scope: !1257)
!1282 = !DILocation(line: 525, column: 33, scope: !1257)
!1283 = !DILocation(line: 525, column: 29, scope: !1257)
!1284 = !DILocation(line: 525, column: 4, scope: !1257)
!1285 = !DILocation(line: 526, column: 4, scope: !1257)
!1286 = !DILocation(line: 528, column: 21, scope: !1257)
!1287 = !DILocation(line: 528, column: 33, scope: !1257)
!1288 = !DILocation(line: 528, column: 29, scope: !1257)
!1289 = !DILocation(line: 528, column: 4, scope: !1257)
!1290 = !DILocation(line: 529, column: 4, scope: !1257)
!1291 = !DILocation(line: 455, column: 2, scope: !1292)
!1292 = !DILexicalBlockFile(scope: !1194, file: !103, discriminator: 1)
!1293 = !DILocation(line: 537, column: 1, scope: !1124)
!1294 = distinct !DISubprogram(name: "g_string_append_c_inline", scope: !1129, file: !1129, line: 161, type: !1295, isLocal: true, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !106)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!1127, !1127, !1134}
!1297 = !DILocalVariable(name: "gstring", arg: 1, scope: !1294, file: !1129, line: 161, type: !1127)
!1298 = !DILocation(line: 161, column: 36, scope: !1294)
!1299 = !DILocalVariable(name: "c", arg: 2, scope: !1294, file: !1129, line: 162, type: !1134)
!1300 = !DILocation(line: 162, column: 33, scope: !1294)
!1301 = !DILocation(line: 164, column: 7, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1294, file: !1129, line: 164, column: 7)
!1303 = !DILocation(line: 164, column: 16, scope: !1302)
!1304 = !DILocation(line: 164, column: 20, scope: !1302)
!1305 = !DILocation(line: 164, column: 26, scope: !1302)
!1306 = !DILocation(line: 164, column: 35, scope: !1302)
!1307 = !DILocation(line: 164, column: 24, scope: !1302)
!1308 = !DILocation(line: 164, column: 7, scope: !1294)
!1309 = !DILocation(line: 166, column: 38, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1302, file: !1129, line: 165, column: 5)
!1311 = !DILocation(line: 166, column: 20, scope: !1310)
!1312 = !DILocation(line: 166, column: 29, scope: !1310)
!1313 = !DILocation(line: 166, column: 32, scope: !1310)
!1314 = !DILocation(line: 166, column: 7, scope: !1310)
!1315 = !DILocation(line: 166, column: 16, scope: !1310)
!1316 = !DILocation(line: 166, column: 36, scope: !1310)
!1317 = !DILocation(line: 167, column: 20, scope: !1310)
!1318 = !DILocation(line: 167, column: 29, scope: !1310)
!1319 = !DILocation(line: 167, column: 7, scope: !1310)
!1320 = !DILocation(line: 167, column: 16, scope: !1310)
!1321 = !DILocation(line: 167, column: 34, scope: !1310)
!1322 = !DILocation(line: 168, column: 5, scope: !1310)
!1323 = !DILocation(line: 170, column: 24, scope: !1302)
!1324 = !DILocation(line: 170, column: 37, scope: !1302)
!1325 = !DILocation(line: 170, column: 5, scope: !1302)
!1326 = !DILocation(line: 171, column: 10, scope: !1294)
!1327 = !DILocation(line: 171, column: 3, scope: !1294)
!1328 = distinct !DISubprogram(name: "set_color", scope: !103, file: !103, line: 428, type: !1329, isLocal: true, isDefinition: true, scopeLine: 429, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !106)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{null, !1127, !71}
!1331 = !DILocalVariable(name: "str", arg: 1, scope: !1328, file: !103, line: 428, type: !1127)
!1332 = !DILocation(line: 428, column: 32, scope: !1328)
!1333 = !DILocalVariable(name: "cmd", arg: 2, scope: !1328, file: !103, line: 428, type: !71)
!1334 = !DILocation(line: 428, column: 41, scope: !1328)
!1335 = !DILocalVariable(name: "color", scope: !1328, file: !103, line: 430, type: !71)
!1336 = !DILocation(line: 430, column: 6, scope: !1328)
!1337 = !DILocation(line: 432, column: 8, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1328, file: !103, line: 432, column: 6)
!1339 = !DILocation(line: 432, column: 12, scope: !1338)
!1340 = !DILocation(line: 432, column: 6, scope: !1328)
!1341 = !DILocation(line: 433, column: 12, scope: !1338)
!1342 = !DILocation(line: 433, column: 16, scope: !1338)
!1343 = !DILocation(line: 433, column: 23, scope: !1338)
!1344 = !DILocation(line: 433, column: 9, scope: !1338)
!1345 = !DILocation(line: 433, column: 3, scope: !1338)
!1346 = !DILocation(line: 435, column: 7, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1328, file: !103, line: 435, column: 6)
!1348 = !DILocation(line: 435, column: 11, scope: !1347)
!1349 = !DILocation(line: 435, column: 19, scope: !1347)
!1350 = !DILocation(line: 435, column: 6, scope: !1328)
!1351 = !DILocation(line: 437, column: 26, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1347, file: !103, line: 435, column: 25)
!1353 = !DILocation(line: 438, column: 7, scope: !1352)
!1354 = !DILocation(line: 437, column: 3, scope: !1352)
!1355 = !DILocation(line: 439, column: 2, scope: !1352)
!1356 = !DILocation(line: 441, column: 26, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1347, file: !103, line: 439, column: 9)
!1358 = !DILocation(line: 442, column: 16, scope: !1357)
!1359 = !DILocation(line: 441, column: 3, scope: !1357)
!1360 = !DILocation(line: 444, column: 1, scope: !1328)
!1361 = distinct !DISubprogram(name: "textbuffer_find_text", scope: !103, file: !103, line: 539, type: !1362, isLocal: false, isDefinition: true, scopeLine: 543, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !106)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{!1364, !40, !56, !71, !71, !96, !71, !71, !71, !71, !71}
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64, align: 64)
!1365 = !DIDerivedType(tag: DW_TAG_typedef, name: "GList", file: !1366, line: 37, baseType: !1367)
!1366 = !DIFile(filename: "/usr/include/glib-2.0/glib/glist.h", directory: "/home/lichi/Desktop/irssi/task1")
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GList", file: !1366, line: 39, size: 192, align: 64, elements: !1368)
!1368 = !{!1369, !1370, !1371}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1367, file: !1366, line: 41, baseType: !51, size: 64, align: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1367, file: !1366, line: 42, baseType: !1364, size: 64, align: 64, offset: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1367, file: !1366, line: 43, baseType: !1364, size: 64, align: 64, offset: 128)
!1372 = !DILocalVariable(name: "buffer", arg: 1, scope: !1361, file: !103, line: 539, type: !40)
!1373 = !DILocation(line: 539, column: 46, scope: !1361)
!1374 = !DILocalVariable(name: "startline", arg: 2, scope: !1361, file: !103, line: 539, type: !56)
!1375 = !DILocation(line: 539, column: 64, scope: !1361)
!1376 = !DILocalVariable(name: "level", arg: 3, scope: !1361, file: !103, line: 540, type: !71)
!1377 = !DILocation(line: 540, column: 12, scope: !1361)
!1378 = !DILocalVariable(name: "nolevel", arg: 4, scope: !1361, file: !103, line: 540, type: !71)
!1379 = !DILocation(line: 540, column: 23, scope: !1361)
!1380 = !DILocalVariable(name: "text", arg: 5, scope: !1361, file: !103, line: 540, type: !96)
!1381 = !DILocation(line: 540, column: 44, scope: !1361)
!1382 = !DILocalVariable(name: "before", arg: 6, scope: !1361, file: !103, line: 541, type: !71)
!1383 = !DILocation(line: 541, column: 12, scope: !1361)
!1384 = !DILocalVariable(name: "after", arg: 7, scope: !1361, file: !103, line: 541, type: !71)
!1385 = !DILocation(line: 541, column: 24, scope: !1361)
!1386 = !DILocalVariable(name: "regexp", arg: 8, scope: !1361, file: !103, line: 542, type: !71)
!1387 = !DILocation(line: 542, column: 12, scope: !1361)
!1388 = !DILocalVariable(name: "fullword", arg: 9, scope: !1361, file: !103, line: 542, type: !71)
!1389 = !DILocation(line: 542, column: 24, scope: !1361)
!1390 = !DILocalVariable(name: "case_sensitive", arg: 10, scope: !1361, file: !103, line: 542, type: !71)
!1391 = !DILocation(line: 542, column: 38, scope: !1361)
!1392 = !DILocalVariable(name: "preg", scope: !1361, file: !103, line: 544, type: !1393)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64, align: 64)
!1394 = !DIDerivedType(tag: DW_TAG_typedef, name: "Regex", file: !1395, line: 9, baseType: !1396)
!1395 = !DIFile(filename: "../../src/core/iregex.h", directory: "/home/lichi/Desktop/irssi/task1")
!1396 = !DIDerivedType(tag: DW_TAG_typedef, name: "GRegex", file: !19, line: 414, baseType: !1397)
!1397 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GRegex", file: !19, line: 414, flags: DIFlagFwdDecl)
!1398 = !DILocation(line: 544, column: 9, scope: !1361)
!1399 = !DILocalVariable(name: "line", scope: !1361, file: !103, line: 545, type: !56)
!1400 = !DILocation(line: 545, column: 19, scope: !1361)
!1401 = !DILocalVariable(name: "pre_line", scope: !1361, file: !103, line: 545, type: !56)
!1402 = !DILocation(line: 545, column: 26, scope: !1361)
!1403 = !DILocalVariable(name: "matches", scope: !1361, file: !103, line: 546, type: !1364)
!1404 = !DILocation(line: 546, column: 9, scope: !1361)
!1405 = !DILocalVariable(name: "str", scope: !1361, file: !103, line: 547, type: !1127)
!1406 = !DILocation(line: 547, column: 11, scope: !1361)
!1407 = !DILocalVariable(name: "i", scope: !1361, file: !103, line: 548, type: !71)
!1408 = !DILocation(line: 548, column: 13, scope: !1361)
!1409 = !DILocalVariable(name: "match_after", scope: !1361, file: !103, line: 548, type: !71)
!1410 = !DILocation(line: 548, column: 16, scope: !1361)
!1411 = !DILocalVariable(name: "line_matched", scope: !1361, file: !103, line: 548, type: !71)
!1412 = !DILocation(line: 548, column: 29, scope: !1361)
!1413 = !DILocalVariable(name: "match_func", scope: !1361, file: !103, line: 549, type: !1414)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64, align: 64)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!1417, !96, !96}
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64)
!1418 = !DILocation(line: 549, column: 11, scope: !1361)
!1419 = !DILocation(line: 551, column: 2, scope: !1361)
!1420 = distinct !{!1420, !1419}
!1421 = !DILocation(line: 551, column: 10, scope: !1422)
!1422 = !DILexicalBlockFile(scope: !1423, file: !103, discriminator: 1)
!1423 = distinct !DILexicalBlock(scope: !1424, file: !103, line: 551, column: 10)
!1424 = distinct !DILexicalBlock(scope: !1361, file: !103, line: 551, column: 4)
!1425 = !DILocation(line: 551, column: 17, scope: !1422)
!1426 = !DILocation(line: 551, column: 5, scope: !1427)
!1427 = !DILexicalBlockFile(scope: !1428, file: !103, discriminator: 2)
!1428 = distinct !DILexicalBlock(scope: !1423, file: !103, line: 551, column: 3)
!1429 = !DILocation(line: 551, column: 14, scope: !1430)
!1430 = !DILexicalBlockFile(scope: !1431, file: !103, discriminator: 3)
!1431 = distinct !DILexicalBlock(scope: !1423, file: !103, line: 551, column: 12)
!1432 = !DILocation(line: 551, column: 101, scope: !1430)
!1433 = !DILocation(line: 551, column: 7, scope: !1434)
!1434 = !DILexicalBlockFile(scope: !1424, file: !103, discriminator: 4)
!1435 = !DILocation(line: 552, column: 2, scope: !1361)
!1436 = distinct !{!1436, !1435}
!1437 = !DILocation(line: 552, column: 10, scope: !1438)
!1438 = !DILexicalBlockFile(scope: !1439, file: !103, discriminator: 1)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !103, line: 552, column: 10)
!1440 = distinct !DILexicalBlock(scope: !1361, file: !103, line: 552, column: 4)
!1441 = !DILocation(line: 552, column: 15, scope: !1438)
!1442 = !DILocation(line: 552, column: 5, scope: !1443)
!1443 = !DILexicalBlockFile(scope: !1444, file: !103, discriminator: 2)
!1444 = distinct !DILexicalBlock(scope: !1439, file: !103, line: 552, column: 3)
!1445 = !DILocation(line: 552, column: 14, scope: !1446)
!1446 = !DILexicalBlockFile(scope: !1447, file: !103, discriminator: 3)
!1447 = distinct !DILexicalBlock(scope: !1439, file: !103, line: 552, column: 12)
!1448 = !DILocation(line: 552, column: 99, scope: !1446)
!1449 = !DILocation(line: 552, column: 7, scope: !1450)
!1450 = !DILexicalBlockFile(scope: !1440, file: !103, discriminator: 4)
!1451 = !DILocation(line: 554, column: 7, scope: !1361)
!1452 = !DILocation(line: 556, column: 6, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1361, file: !103, line: 556, column: 6)
!1454 = !DILocation(line: 556, column: 6, scope: !1361)
!1455 = !DILocation(line: 557, column: 22, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1453, file: !103, line: 556, column: 14)
!1457 = !DILocation(line: 557, column: 28, scope: !1456)
!1458 = !DILocation(line: 557, column: 10, scope: !1456)
!1459 = !DILocation(line: 557, column: 8, scope: !1456)
!1460 = !DILocation(line: 559, column: 7, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1456, file: !103, line: 559, column: 7)
!1462 = !DILocation(line: 559, column: 12, scope: !1461)
!1463 = !DILocation(line: 559, column: 7, scope: !1456)
!1464 = !DILocation(line: 560, column: 4, scope: !1461)
!1465 = !DILocation(line: 561, column: 2, scope: !1456)
!1466 = !DILocation(line: 563, column: 10, scope: !1361)
!1467 = !DILocation(line: 563, column: 29, scope: !1361)
!1468 = !DILocation(line: 564, column: 15, scope: !1361)
!1469 = !DILocation(line: 564, column: 13, scope: !1361)
!1470 = !DILocation(line: 566, column: 9, scope: !1361)
!1471 = !DILocation(line: 566, column: 19, scope: !1361)
!1472 = !DILocation(line: 566, column: 28, scope: !1473)
!1473 = !DILexicalBlockFile(scope: !1361, file: !103, discriminator: 1)
!1474 = !DILocation(line: 566, column: 9, scope: !1473)
!1475 = !DILocation(line: 566, column: 40, scope: !1476)
!1476 = !DILexicalBlockFile(scope: !1361, file: !103, discriminator: 2)
!1477 = !DILocation(line: 566, column: 48, scope: !1476)
!1478 = !DILocation(line: 566, column: 9, scope: !1476)
!1479 = !DILocation(line: 566, column: 9, scope: !1480)
!1480 = !DILexicalBlockFile(scope: !1361, file: !103, discriminator: 3)
!1481 = !DILocation(line: 566, column: 7, scope: !1480)
!1482 = !DILocation(line: 568, column: 6, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1361, file: !103, line: 568, column: 6)
!1484 = !DILocation(line: 568, column: 6, scope: !1361)
!1485 = !DILocation(line: 569, column: 16, scope: !1483)
!1486 = !DILocation(line: 569, column: 14, scope: !1483)
!1487 = !DILocation(line: 569, column: 3, scope: !1483)
!1488 = !DILocation(line: 571, column: 16, scope: !1483)
!1489 = !DILocation(line: 571, column: 14, scope: !1483)
!1490 = !DILocation(line: 573, column: 2, scope: !1361)
!1491 = !DILocation(line: 573, column: 9, scope: !1492)
!1492 = !DILexicalBlockFile(scope: !1493, file: !103, discriminator: 1)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !103, line: 573, column: 2)
!1494 = distinct !DILexicalBlock(scope: !1361, file: !103, line: 573, column: 2)
!1495 = !DILocation(line: 573, column: 14, scope: !1492)
!1496 = !DILocation(line: 573, column: 2, scope: !1492)
!1497 = !DILocation(line: 574, column: 19, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1493, file: !103, line: 573, column: 41)
!1499 = !DILocation(line: 574, column: 25, scope: !1498)
!1500 = !DILocation(line: 574, column: 30, scope: !1498)
!1501 = !DILocation(line: 574, column: 38, scope: !1498)
!1502 = !DILocation(line: 574, column: 36, scope: !1498)
!1503 = !DILocation(line: 574, column: 45, scope: !1498)
!1504 = !DILocation(line: 574, column: 50, scope: !1498)
!1505 = !DILocation(line: 575, column: 5, scope: !1498)
!1506 = !DILocation(line: 575, column: 11, scope: !1498)
!1507 = !DILocation(line: 575, column: 16, scope: !1498)
!1508 = !DILocation(line: 575, column: 24, scope: !1498)
!1509 = !DILocation(line: 575, column: 22, scope: !1498)
!1510 = !DILocation(line: 575, column: 33, scope: !1498)
!1511 = !DILocation(line: 574, column: 50, scope: !1512)
!1512 = !DILexicalBlockFile(scope: !1498, file: !103, discriminator: 1)
!1513 = !DILocation(line: 574, column: 16, scope: !1512)
!1514 = !DILocation(line: 577, column: 8, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1498, file: !103, line: 577, column: 7)
!1516 = !DILocation(line: 577, column: 7, scope: !1515)
!1517 = !DILocation(line: 577, column: 13, scope: !1515)
!1518 = !DILocation(line: 577, column: 7, scope: !1498)
!1519 = !DILocation(line: 578, column: 25, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1515, file: !103, line: 577, column: 22)
!1521 = !DILocation(line: 578, column: 36, scope: !1520)
!1522 = !DILocation(line: 578, column: 4, scope: !1520)
!1523 = !DILocation(line: 580, column: 8, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1520, file: !103, line: 580, column: 8)
!1525 = !DILocation(line: 580, column: 8, scope: !1520)
!1526 = !DILocation(line: 581, column: 20, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1524, file: !103, line: 580, column: 22)
!1528 = !DILocation(line: 582, column: 20, scope: !1527)
!1529 = !DILocation(line: 582, column: 26, scope: !1527)
!1530 = !DILocation(line: 582, column: 31, scope: !1527)
!1531 = !DILocation(line: 582, column: 6, scope: !1527)
!1532 = !DILocation(line: 581, column: 20, scope: !1533)
!1533 = !DILexicalBlockFile(scope: !1527, file: !103, discriminator: 1)
!1534 = !DILocation(line: 583, column: 8, scope: !1527)
!1535 = !DILocation(line: 583, column: 19, scope: !1527)
!1536 = !DILocation(line: 583, column: 24, scope: !1527)
!1537 = !DILocation(line: 583, column: 29, scope: !1527)
!1538 = !DILocation(line: 583, column: 35, scope: !1527)
!1539 = !DILocation(line: 581, column: 20, scope: !1540)
!1540 = !DILexicalBlockFile(scope: !1527, file: !103, discriminator: 2)
!1541 = !DILocation(line: 581, column: 20, scope: !1542)
!1542 = !DILexicalBlockFile(scope: !1527, file: !103, discriminator: 3)
!1543 = !DILocation(line: 581, column: 18, scope: !1542)
!1544 = !DILocation(line: 584, column: 4, scope: !1527)
!1545 = !DILocation(line: 585, column: 3, scope: !1520)
!1546 = !DILocation(line: 587, column: 7, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1498, file: !103, line: 587, column: 7)
!1548 = !DILocation(line: 587, column: 7, scope: !1498)
!1549 = !DILocation(line: 589, column: 15, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1547, file: !103, line: 587, column: 21)
!1551 = !DILocation(line: 589, column: 13, scope: !1550)
!1552 = !DILocation(line: 590, column: 11, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1550, file: !103, line: 590, column: 4)
!1554 = !DILocation(line: 590, column: 9, scope: !1553)
!1555 = !DILocation(line: 590, column: 16, scope: !1556)
!1556 = !DILexicalBlockFile(scope: !1557, file: !103, discriminator: 1)
!1557 = distinct !DILexicalBlock(scope: !1553, file: !103, line: 590, column: 4)
!1558 = !DILocation(line: 590, column: 20, scope: !1556)
!1559 = !DILocation(line: 590, column: 18, scope: !1556)
!1560 = !DILocation(line: 590, column: 4, scope: !1556)
!1561 = !DILocation(line: 591, column: 9, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1563, file: !103, line: 591, column: 9)
!1563 = distinct !DILexicalBlock(scope: !1557, file: !103, line: 590, column: 33)
!1564 = !DILocation(line: 591, column: 19, scope: !1562)
!1565 = !DILocation(line: 591, column: 24, scope: !1562)
!1566 = !DILocation(line: 591, column: 31, scope: !1562)
!1567 = !DILocation(line: 592, column: 25, scope: !1562)
!1568 = !DILocation(line: 592, column: 9, scope: !1562)
!1569 = !DILocation(line: 592, column: 40, scope: !1562)
!1570 = !DILocation(line: 592, column: 50, scope: !1562)
!1571 = !DILocation(line: 592, column: 37, scope: !1562)
!1572 = !DILocation(line: 592, column: 55, scope: !1562)
!1573 = !DILocation(line: 593, column: 25, scope: !1562)
!1574 = !DILocation(line: 593, column: 9, scope: !1562)
!1575 = !DILocation(line: 593, column: 40, scope: !1562)
!1576 = !DILocation(line: 593, column: 50, scope: !1562)
!1577 = !DILocation(line: 593, column: 37, scope: !1562)
!1578 = !DILocation(line: 591, column: 9, scope: !1579)
!1579 = !DILexicalBlockFile(scope: !1563, file: !103, discriminator: 1)
!1580 = !DILocation(line: 594, column: 6, scope: !1562)
!1581 = !DILocation(line: 595, column: 44, scope: !1563)
!1582 = !DILocation(line: 595, column: 54, scope: !1563)
!1583 = !DILocation(line: 595, column: 42, scope: !1563)
!1584 = !DILocation(line: 596, column: 4, scope: !1563)
!1585 = !DILocation(line: 590, column: 29, scope: !1586)
!1586 = !DILexicalBlockFile(scope: !1557, file: !103, discriminator: 2)
!1587 = !DILocation(line: 590, column: 4, scope: !1586)
!1588 = distinct !{!1588, !1589}
!1589 = !DILocation(line: 590, column: 4, scope: !1550)
!1590 = !DILocation(line: 598, column: 4, scope: !1550)
!1591 = !DILocation(line: 598, column: 11, scope: !1592)
!1592 = !DILexicalBlockFile(scope: !1593, file: !103, discriminator: 1)
!1593 = distinct !DILexicalBlock(scope: !1594, file: !103, line: 598, column: 4)
!1594 = distinct !DILexicalBlock(scope: !1550, file: !103, line: 598, column: 4)
!1595 = !DILocation(line: 598, column: 23, scope: !1592)
!1596 = !DILocation(line: 598, column: 20, scope: !1592)
!1597 = !DILocation(line: 598, column: 4, scope: !1592)
!1598 = !DILocation(line: 599, column: 30, scope: !1593)
!1599 = !DILocation(line: 599, column: 39, scope: !1593)
!1600 = !DILocation(line: 599, column: 15, scope: !1593)
!1601 = !DILocation(line: 599, column: 13, scope: !1593)
!1602 = !DILocation(line: 599, column: 5, scope: !1593)
!1603 = !DILocation(line: 598, column: 40, scope: !1604)
!1604 = !DILexicalBlockFile(scope: !1593, file: !103, discriminator: 2)
!1605 = !DILocation(line: 598, column: 50, scope: !1604)
!1606 = !DILocation(line: 598, column: 38, scope: !1604)
!1607 = !DILocation(line: 598, column: 4, scope: !1604)
!1608 = distinct !{!1608, !1590}
!1609 = !DILocation(line: 601, column: 18, scope: !1550)
!1610 = !DILocation(line: 601, column: 16, scope: !1550)
!1611 = !DILocation(line: 602, column: 3, scope: !1550)
!1612 = !DILocation(line: 604, column: 7, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1498, file: !103, line: 604, column: 7)
!1614 = !DILocation(line: 604, column: 20, scope: !1613)
!1615 = !DILocation(line: 604, column: 23, scope: !1616)
!1616 = !DILexicalBlockFile(scope: !1613, file: !103, discriminator: 1)
!1617 = !DILocation(line: 604, column: 35, scope: !1616)
!1618 = !DILocation(line: 604, column: 7, scope: !1616)
!1619 = !DILocation(line: 606, column: 29, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1613, file: !103, line: 604, column: 40)
!1621 = !DILocation(line: 606, column: 38, scope: !1620)
!1622 = !DILocation(line: 606, column: 14, scope: !1620)
!1623 = !DILocation(line: 606, column: 12, scope: !1620)
!1624 = !DILocation(line: 608, column: 10, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1620, file: !103, line: 608, column: 8)
!1626 = !DILocation(line: 608, column: 23, scope: !1625)
!1627 = !DILocation(line: 608, column: 26, scope: !1628)
!1628 = !DILexicalBlockFile(scope: !1625, file: !103, discriminator: 1)
!1629 = !DILocation(line: 608, column: 40, scope: !1628)
!1630 = !DILocation(line: 608, column: 46, scope: !1628)
!1631 = !DILocation(line: 609, column: 9, scope: !1625)
!1632 = !DILocation(line: 609, column: 22, scope: !1625)
!1633 = !DILocation(line: 609, column: 25, scope: !1628)
!1634 = !DILocation(line: 609, column: 37, scope: !1628)
!1635 = !DILocation(line: 609, column: 42, scope: !1628)
!1636 = !DILocation(line: 609, column: 45, scope: !1637)
!1637 = !DILexicalBlockFile(scope: !1625, file: !103, discriminator: 2)
!1638 = !DILocation(line: 609, column: 52, scope: !1637)
!1639 = !DILocation(line: 608, column: 8, scope: !1640)
!1640 = !DILexicalBlockFile(scope: !1620, file: !103, discriminator: 2)
!1641 = !DILocation(line: 610, column: 30, scope: !1625)
!1642 = !DILocation(line: 610, column: 15, scope: !1625)
!1643 = !DILocation(line: 610, column: 13, scope: !1625)
!1644 = !DILocation(line: 610, column: 5, scope: !1625)
!1645 = !DILocation(line: 611, column: 3, scope: !1620)
!1646 = !DILocation(line: 612, column: 2, scope: !1498)
!1647 = !DILocation(line: 573, column: 29, scope: !1648)
!1648 = !DILexicalBlockFile(scope: !1493, file: !103, discriminator: 2)
!1649 = !DILocation(line: 573, column: 35, scope: !1648)
!1650 = !DILocation(line: 573, column: 27, scope: !1648)
!1651 = !DILocation(line: 573, column: 2, scope: !1648)
!1652 = distinct !{!1652, !1490}
!1653 = !DILocation(line: 614, column: 27, scope: !1361)
!1654 = !DILocation(line: 614, column: 12, scope: !1361)
!1655 = !DILocation(line: 614, column: 10, scope: !1361)
!1656 = !DILocation(line: 616, column: 6, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1361, file: !103, line: 616, column: 6)
!1658 = !DILocation(line: 616, column: 11, scope: !1657)
!1659 = !DILocation(line: 616, column: 6, scope: !1361)
!1660 = !DILocation(line: 617, column: 17, scope: !1657)
!1661 = !DILocation(line: 617, column: 3, scope: !1657)
!1662 = !DILocation(line: 618, column: 23, scope: !1361)
!1663 = !DILocation(line: 618, column: 9, scope: !1361)
!1664 = !DILocation(line: 619, column: 9, scope: !1361)
!1665 = !DILocation(line: 619, column: 2, scope: !1361)
!1666 = !DILocation(line: 620, column: 1, scope: !1361)
!1667 = distinct !DISubprogram(name: "textbuffer_init", scope: !103, file: !103, line: 622, type: !1668, isLocal: false, isDefinition: true, scopeLine: 623, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !106)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{null}
!1670 = !DILocation(line: 624, column: 1, scope: !1667)
!1671 = distinct !DISubprogram(name: "textbuffer_deinit", scope: !103, file: !103, line: 626, type: !1668, isLocal: false, isDefinition: true, scopeLine: 627, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !106)
!1672 = !DILocation(line: 628, column: 1, scope: !1671)
!1673 = distinct !DISubprogram(name: "textbuffer_line_create", scope: !103, file: !103, line: 188, type: !257, isLocal: true, isDefinition: true, scopeLine: 189, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !106)
!1674 = !DILocalVariable(name: "buffer", arg: 1, scope: !1673, file: !103, line: 188, type: !40)
!1675 = !DILocation(line: 188, column: 58, scope: !1673)
!1676 = !DILocalVariable(name: "rec", scope: !1673, file: !103, line: 190, type: !56)
!1677 = !DILocation(line: 190, column: 12, scope: !1673)
!1678 = !DILocation(line: 192, column: 6, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1673, file: !103, line: 192, column: 6)
!1680 = !DILocation(line: 192, column: 14, scope: !1679)
!1681 = !DILocation(line: 192, column: 23, scope: !1679)
!1682 = !DILocation(line: 192, column: 6, scope: !1673)
!1683 = !DILocation(line: 193, column: 35, scope: !1679)
!1684 = !DILocation(line: 193, column: 17, scope: !1679)
!1685 = !DILocation(line: 195, column: 21, scope: !1673)
!1686 = !DILocation(line: 195, column: 9, scope: !1673)
!1687 = !DILocation(line: 195, column: 6, scope: !1673)
!1688 = !DILocation(line: 196, column: 14, scope: !1673)
!1689 = !DILocation(line: 196, column: 22, scope: !1673)
!1690 = !DILocation(line: 196, column: 32, scope: !1673)
!1691 = !DILocation(line: 196, column: 41, scope: !1673)
!1692 = !DILocation(line: 196, column: 49, scope: !1673)
!1693 = !DILocation(line: 196, column: 59, scope: !1673)
!1694 = !DILocation(line: 196, column: 39, scope: !1673)
!1695 = !DILocation(line: 196, column: 2, scope: !1673)
!1696 = !DILocation(line: 196, column: 7, scope: !1673)
!1697 = !DILocation(line: 196, column: 12, scope: !1673)
!1698 = !DILocation(line: 198, column: 2, scope: !1673)
!1699 = !DILocation(line: 198, column: 10, scope: !1673)
!1700 = !DILocation(line: 198, column: 20, scope: !1673)
!1701 = !DILocation(line: 198, column: 28, scope: !1673)
!1702 = !DILocation(line: 199, column: 16, scope: !1673)
!1703 = !DILocation(line: 199, column: 9, scope: !1673)
!1704 = distinct !DISubprogram(name: "text_chunk_create", scope: !103, file: !103, line: 73, type: !1705, isLocal: true, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !106)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!81, !40}
!1707 = !DILocalVariable(name: "buffer", arg: 1, scope: !1704, file: !103, line: 73, type: !40)
!1708 = !DILocation(line: 73, column: 59, scope: !1704)
!1709 = !DILocalVariable(name: "rec", scope: !1704, file: !103, line: 75, type: !81)
!1710 = !DILocation(line: 75, column: 18, scope: !1704)
!1711 = !DILocalVariable(name: "buf", scope: !1704, file: !103, line: 76, type: !64)
!1712 = !DILocation(line: 76, column: 17, scope: !1704)
!1713 = !DILocalVariable(name: "ptr", scope: !1704, file: !103, line: 76, type: !64)
!1714 = !DILocation(line: 76, column: 23, scope: !1704)
!1715 = !DILocalVariable(name: "pptr", scope: !1704, file: !103, line: 76, type: !1716)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!1717 = !DILocation(line: 76, column: 30, scope: !1704)
!1718 = !DILocation(line: 78, column: 27, scope: !1704)
!1719 = !DILocation(line: 78, column: 9, scope: !1704)
!1720 = !DILocation(line: 78, column: 6, scope: !1704)
!1721 = !DILocation(line: 79, column: 2, scope: !1704)
!1722 = !DILocation(line: 79, column: 7, scope: !1704)
!1723 = !DILocation(line: 79, column: 11, scope: !1704)
!1724 = !DILocation(line: 80, column: 2, scope: !1704)
!1725 = !DILocation(line: 80, column: 7, scope: !1704)
!1726 = !DILocation(line: 80, column: 16, scope: !1704)
!1727 = !DILocation(line: 82, column: 6, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1704, file: !103, line: 82, column: 6)
!1729 = !DILocation(line: 82, column: 14, scope: !1728)
!1730 = !DILocation(line: 82, column: 23, scope: !1728)
!1731 = !DILocation(line: 82, column: 30, scope: !1728)
!1732 = !DILocation(line: 82, column: 33, scope: !1733)
!1733 = !DILexicalBlockFile(scope: !1728, file: !103, discriminator: 1)
!1734 = !DILocation(line: 82, column: 41, scope: !1733)
!1735 = !DILocation(line: 82, column: 51, scope: !1733)
!1736 = !DILocation(line: 82, column: 56, scope: !1733)
!1737 = !DILocation(line: 82, column: 6, scope: !1733)
!1738 = !DILocation(line: 84, column: 9, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1728, file: !103, line: 82, column: 65)
!1740 = !DILocation(line: 84, column: 17, scope: !1739)
!1741 = !DILocation(line: 84, column: 27, scope: !1739)
!1742 = !DILocation(line: 84, column: 36, scope: !1739)
!1743 = !DILocation(line: 84, column: 44, scope: !1739)
!1744 = !DILocation(line: 84, column: 54, scope: !1739)
!1745 = !DILocation(line: 84, column: 34, scope: !1739)
!1746 = !DILocation(line: 84, column: 7, scope: !1739)
!1747 = !DILocation(line: 85, column: 7, scope: !1739)
!1748 = !DILocation(line: 85, column: 10, scope: !1739)
!1749 = !DILocation(line: 85, column: 19, scope: !1739)
!1750 = !DILocation(line: 85, column: 22, scope: !1739)
!1751 = !DILocation(line: 92, column: 9, scope: !1739)
!1752 = !DILocation(line: 92, column: 14, scope: !1739)
!1753 = !DILocation(line: 92, column: 7, scope: !1739)
!1754 = !DILocation(line: 92, column: 27, scope: !1739)
!1755 = !DILocation(line: 93, column: 10, scope: !1739)
!1756 = !DILocation(line: 93, column: 15, scope: !1739)
!1757 = !DILocation(line: 93, column: 3, scope: !1739)
!1758 = !DILocation(line: 94, column: 2, scope: !1739)
!1759 = !DILocation(line: 96, column: 3, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1728, file: !103, line: 94, column: 9)
!1761 = distinct !{!1761, !1759}
!1762 = !DILocation(line: 96, column: 23, scope: !1763)
!1763 = !DILexicalBlockFile(scope: !1764, file: !103, discriminator: 1)
!1764 = distinct !DILexicalBlock(scope: !1760, file: !103, line: 96, column: 6)
!1765 = !DILocation(line: 96, column: 29, scope: !1763)
!1766 = !DILocation(line: 96, column: 8, scope: !1763)
!1767 = !DILocation(line: 96, column: 9, scope: !1763)
!1768 = !DILocation(line: 96, column: 15, scope: !1763)
!1769 = !DILocation(line: 96, column: 34, scope: !1763)
!1770 = !DILocation(line: 96, column: 54, scope: !1763)
!1771 = !DILocation(line: 96, column: 60, scope: !1763)
!1772 = !DILocation(line: 96, column: 63, scope: !1763)
!1773 = !DILocation(line: 96, column: 39, scope: !1763)
!1774 = !DILocation(line: 96, column: 40, scope: !1763)
!1775 = !DILocation(line: 96, column: 46, scope: !1763)
!1776 = !DILocation(line: 96, column: 67, scope: !1763)
!1777 = !DILocation(line: 96, column: 83, scope: !1763)
!1778 = !DILocation(line: 99, column: 21, scope: !1704)
!1779 = !DILocation(line: 99, column: 2, scope: !1704)
!1780 = !DILocation(line: 99, column: 10, scope: !1704)
!1781 = !DILocation(line: 99, column: 19, scope: !1704)
!1782 = !DILocation(line: 100, column: 39, scope: !1704)
!1783 = !DILocation(line: 100, column: 47, scope: !1704)
!1784 = !DILocation(line: 100, column: 60, scope: !1704)
!1785 = !DILocation(line: 100, column: 24, scope: !1704)
!1786 = !DILocation(line: 100, column: 2, scope: !1704)
!1787 = !DILocation(line: 100, column: 10, scope: !1704)
!1788 = !DILocation(line: 100, column: 22, scope: !1704)
!1789 = !DILocation(line: 101, column: 9, scope: !1704)
!1790 = !DILocation(line: 101, column: 2, scope: !1704)
!1791 = distinct !DISubprogram(name: "text_chunk_find", scope: !103, file: !103, line: 52, type: !1792, isLocal: true, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !106)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{!81, !40, !556}
!1794 = !DILocalVariable(name: "buffer", arg: 1, scope: !1791, file: !103, line: 52, type: !40)
!1795 = !DILocation(line: 52, column: 57, scope: !1791)
!1796 = !DILocalVariable(name: "data", arg: 2, scope: !1791, file: !103, line: 53, type: !556)
!1797 = !DILocation(line: 53, column: 33, scope: !1791)
!1798 = !DILocalVariable(name: "tmp", scope: !1791, file: !103, line: 55, type: !45)
!1799 = !DILocation(line: 55, column: 10, scope: !1791)
!1800 = !DILocation(line: 57, column: 13, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1791, file: !103, line: 57, column: 2)
!1802 = !DILocation(line: 57, column: 21, scope: !1801)
!1803 = !DILocation(line: 57, column: 11, scope: !1801)
!1804 = !DILocation(line: 57, column: 7, scope: !1801)
!1805 = !DILocation(line: 57, column: 34, scope: !1806)
!1806 = !DILexicalBlockFile(scope: !1807, file: !103, discriminator: 1)
!1807 = distinct !DILexicalBlock(scope: !1801, file: !103, line: 57, column: 2)
!1808 = !DILocation(line: 57, column: 38, scope: !1806)
!1809 = !DILocation(line: 57, column: 2, scope: !1806)
!1810 = !DILocalVariable(name: "rec", scope: !1811, file: !103, line: 58, type: !81)
!1811 = distinct !DILexicalBlock(scope: !1807, file: !103, line: 57, column: 63)
!1812 = !DILocation(line: 58, column: 19, scope: !1811)
!1813 = !DILocation(line: 58, column: 25, scope: !1811)
!1814 = !DILocation(line: 58, column: 30, scope: !1811)
!1815 = !DILocation(line: 60, column: 7, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1811, file: !103, line: 60, column: 7)
!1817 = !DILocation(line: 60, column: 15, scope: !1816)
!1818 = !DILocation(line: 60, column: 20, scope: !1816)
!1819 = !DILocation(line: 60, column: 12, scope: !1816)
!1820 = !DILocation(line: 60, column: 27, scope: !1816)
!1821 = !DILocation(line: 61, column: 7, scope: !1816)
!1822 = !DILocation(line: 61, column: 14, scope: !1816)
!1823 = !DILocation(line: 61, column: 19, scope: !1816)
!1824 = !DILocation(line: 61, column: 25, scope: !1816)
!1825 = !DILocation(line: 61, column: 12, scope: !1816)
!1826 = !DILocation(line: 60, column: 7, scope: !1827)
!1827 = !DILexicalBlockFile(scope: !1811, file: !103, discriminator: 1)
!1828 = !DILocation(line: 62, column: 32, scope: !1816)
!1829 = !DILocation(line: 62, column: 25, scope: !1816)
!1830 = !DILocation(line: 63, column: 2, scope: !1811)
!1831 = !DILocation(line: 57, column: 52, scope: !1832)
!1832 = !DILexicalBlockFile(scope: !1807, file: !103, discriminator: 2)
!1833 = !DILocation(line: 57, column: 57, scope: !1832)
!1834 = !DILocation(line: 57, column: 50, scope: !1832)
!1835 = !DILocation(line: 57, column: 2, scope: !1832)
!1836 = distinct !{!1836, !1837}
!1837 = !DILocation(line: 57, column: 2, scope: !1791)
!1838 = !DILocation(line: 65, column: 2, scope: !1791)
!1839 = !DILocation(line: 66, column: 1, scope: !1791)
!1840 = distinct !DISubprogram(name: "text_chunk_destroy", scope: !103, file: !103, line: 104, type: !1841, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !106)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{null, !40, !81}
!1843 = !DILocalVariable(name: "buffer", arg: 1, scope: !1840, file: !103, line: 104, type: !40)
!1844 = !DILocation(line: 104, column: 49, scope: !1840)
!1845 = !DILocalVariable(name: "chunk", arg: 2, scope: !1840, file: !103, line: 104, type: !81)
!1846 = !DILocation(line: 104, column: 73, scope: !1840)
!1847 = !DILocation(line: 106, column: 39, scope: !1840)
!1848 = !DILocation(line: 106, column: 47, scope: !1840)
!1849 = !DILocation(line: 106, column: 60, scope: !1840)
!1850 = !DILocation(line: 106, column: 24, scope: !1840)
!1851 = !DILocation(line: 106, column: 2, scope: !1840)
!1852 = !DILocation(line: 106, column: 10, scope: !1840)
!1853 = !DILocation(line: 106, column: 22, scope: !1840)
!1854 = !DILocation(line: 107, column: 2, scope: !1840)
!1855 = distinct !{!1855, !1854}
!1856 = !DILocation(line: 107, column: 55, scope: !1857)
!1857 = !DILexicalBlockFile(scope: !1858, file: !103, discriminator: 1)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !103, line: 107, column: 11)
!1859 = distinct !DILexicalBlock(scope: !1840, file: !103, line: 107, column: 5)
!1860 = !DILocation(line: 107, column: 54, scope: !1857)
!1861 = !DILocation(line: 107, column: 14, scope: !1857)
!1862 = !DILocation(line: 107, column: 110, scope: !1857)
!1863 = !DILocation(line: 108, column: 1, scope: !1840)
