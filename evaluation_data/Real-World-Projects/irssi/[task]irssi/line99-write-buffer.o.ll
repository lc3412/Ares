; ModuleID = './line99-write-buffer.o.i'
source_filename = "./line99-write-buffer.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GHashTable = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct.BUFFER_REC = type { i8*, i32, %struct._GSList* }

@write_buffer_max_blocks = internal global i32 0, align 4
@buffers = internal global %struct._GHashTable* null, align 8
@block_count = internal global i32 0, align 4
@empty_blocks = internal global %struct._GSList* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"write_buffer_timeout\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"write_buffer_size\00", align 1
@timeout_tag = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"setup changed\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"flushbuffer\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Failed to write(): %s\00", align 1

; Function Attrs: nounwind uwtable
define i32 @write_buffer(i32, i8*, i32) #0 !dbg !87 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.BUFFER_REC*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !91, metadata !92), !dbg !93
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !94, metadata !92), !dbg !95
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !96, metadata !92), !dbg !97
  call void @llvm.dbg.declare(metadata %struct.BUFFER_REC** %8, metadata !98, metadata !92), !dbg !99
  call void @llvm.dbg.declare(metadata i8** %9, metadata !100, metadata !92), !dbg !103
  %11 = load i8*, i8** %6, align 8, !dbg !104
  store i8* %11, i8** %9, align 8, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %10, metadata !105, metadata !92), !dbg !106
  %12 = load i32, i32* @write_buffer_max_blocks, align 4, !dbg !107
  %13 = icmp sle i32 %12, 0, !dbg !109
  br i1 %13, label %14, label %21, !dbg !110

; <label>:14:                                     ; preds = %3
  %15 = load i32, i32* %5, align 4, !dbg !111
  %16 = load i8*, i8** %6, align 8, !dbg !113
  %17 = load i32, i32* %7, align 4, !dbg !114
  %18 = sext i32 %17 to i64, !dbg !114
  %19 = call i64 @write(i32 %15, i8* %16, i64 %18), !dbg !115
  %20 = trunc i64 %19 to i32, !dbg !115
  store i32 %20, i32* %4, align 4, !dbg !116
  br label %103, !dbg !116

; <label>:21:                                     ; preds = %3
  %22 = load i32, i32* %7, align 4, !dbg !117
  %23 = icmp sle i32 %22, 0, !dbg !119
  br i1 %23, label %24, label %26, !dbg !120

; <label>:24:                                     ; preds = %21
  %25 = load i32, i32* %7, align 4, !dbg !121
  store i32 %25, i32* %4, align 4, !dbg !122
  br label %103, !dbg !122

; <label>:26:                                     ; preds = %21
  %27 = load %struct._GHashTable*, %struct._GHashTable** @buffers, align 8, !dbg !123
  %28 = load i32, i32* %5, align 4, !dbg !124
  %29 = sext i32 %28 to i64, !dbg !125
  %30 = inttoptr i64 %29 to i8*, !dbg !126
  %31 = call i8* @g_hash_table_lookup(%struct._GHashTable* %27, i8* %30), !dbg !127
  %32 = bitcast i8* %31 to %struct.BUFFER_REC*, !dbg !127
  store %struct.BUFFER_REC* %32, %struct.BUFFER_REC** %8, align 8, !dbg !128
  %33 = load %struct.BUFFER_REC*, %struct.BUFFER_REC** %8, align 8, !dbg !129
  %34 = icmp eq %struct.BUFFER_REC* %33, null, !dbg !131
  br i1 %34, label %35, label %46, !dbg !132

; <label>:35:                                     ; preds = %26
  %36 = call noalias i8* @g_malloc0_n(i64 1, i64 24), !dbg !133
  %37 = bitcast i8* %36 to %struct.BUFFER_REC*, !dbg !135
  store %struct.BUFFER_REC* %37, %struct.BUFFER_REC** %8, align 8, !dbg !136
  %38 = load %struct.BUFFER_REC*, %struct.BUFFER_REC** %8, align 8, !dbg !137
  call void @write_buffer_new_block(%struct.BUFFER_REC* %38), !dbg !138
  %39 = load %struct._GHashTable*, %struct._GHashTable** @buffers, align 8, !dbg !139
  %40 = load i32, i32* %5, align 4, !dbg !140
  %41 = sext i32 %40 to i64, !dbg !141
  %42 = inttoptr i64 %41 to i8*, !dbg !142
  %43 = load %struct.BUFFER_REC*, %struct.BUFFER_REC** %8, align 8, !dbg !143
  %44 = bitcast %struct.BUFFER_REC* %43 to i8*, !dbg !143
  %45 = call i32 @g_hash_table_insert(%struct._GHashTable* %39, i8* %42, i8* %44), !dbg !144
  br label %46, !dbg !145

; <label>:46:                                     ; preds = %35, %26
  br label %47, !dbg !146

; <label>:47:                                     ; preds = %71, %46
  %48 = load i32, i32* %7, align 4, !dbg !147
  %49 = icmp sgt i32 %48, 0, !dbg !149
  br i1 %49, label %50, label %96, !dbg !150

; <label>:50:                                     ; preds = %47
  %51 = load %struct.BUFFER_REC*, %struct.BUFFER_REC** %8, align 8, !dbg !151
  %52 = getelementptr inbounds %struct.BUFFER_REC, %struct.BUFFER_REC* %51, i32 0, i32 1, !dbg !154
  %53 = load i32, i32* %52, align 8, !dbg !154
  %54 = icmp eq i32 %53, 2048, !dbg !155
  br i1 %54, label %55, label %57, !dbg !156

; <label>:55:                                     ; preds = %50
  %56 = load %struct.BUFFER_REC*, %struct.BUFFER_REC** %8, align 8, !dbg !157
  call void @write_buffer_new_block(%struct.BUFFER_REC* %56), !dbg !158
  br label %57, !dbg !158

; <label>:57:                                     ; preds = %55, %50
  %58 = load i32, i32* %7, align 4, !dbg !159
  %59 = load %struct.BUFFER_REC*, %struct.BUFFER_REC** %8, align 8, !dbg !160
  %60 = getelementptr inbounds %struct.BUFFER_REC, %struct.BUFFER_REC* %59, i32 0, i32 1, !dbg !161
  %61 = load i32, i32* %60, align 8, !dbg !161
  %62 = sub nsw i32 2048, %61, !dbg !162
  %63 = icmp slt i32 %58, %62, !dbg !163
  br i1 %63, label %64, label %66, !dbg !159

; <label>:64:                                     ; preds = %57
  %65 = load i32, i32* %7, align 4, !dbg !164
  br label %71, !dbg !165

; <label>:66:                                     ; preds = %57
  %67 = load %struct.BUFFER_REC*, %struct.BUFFER_REC** %8, align 8, !dbg !167
  %68 = getelementptr inbounds %struct.BUFFER_REC, %struct.BUFFER_REC* %67, i32 0, i32 1, !dbg !168
  %69 = load i32, i32* %68, align 8, !dbg !168
  %70 = sub nsw i32 2048, %69, !dbg !169
  br label %71, !dbg !170

; <label>:71:                                     ; preds = %66, %64
  %72 = phi i32 [ %65, %64 ], [ %70, %66 ], !dbg !172
  store i32 %72, i32* %10, align 4, !dbg !174
  %73 = load %struct.BUFFER_REC*, %struct.BUFFER_REC** %8, align 8, !dbg !175
  %74 = getelementptr inbounds %struct.BUFFER_REC, %struct.BUFFER_REC* %73, i32 0, i32 0, !dbg !176
  %75 = load i8*, i8** %74, align 8, !dbg !176
  %76 = load %struct.BUFFER_REC*, %struct.BUFFER_REC** %8, align 8, !dbg !177
  %77 = getelementptr inbounds %struct.BUFFER_REC, %struct.BUFFER_REC* %76, i32 0, i32 1, !dbg !178
  %78 = load i32, i32* %77, align 8, !dbg !178
  %79 = sext i32 %78 to i64, !dbg !179
  %80 = getelementptr inbounds i8, i8* %75, i64 %79, !dbg !179
  %81 = load i8*, i8** %9, align 8, !dbg !180
  %82 = load i32, i32* %10, align 4, !dbg !181
  %83 = sext i32 %82 to i64, !dbg !181
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %80, i8* %81, i64 %83, i32 1, i1 false), !dbg !182
  %84 = load i32, i32* %10, align 4, !dbg !183
  %85 = load %struct.BUFFER_REC*, %struct.BUFFER_REC** %8, align 8, !dbg !184
  %86 = getelementptr inbounds %struct.BUFFER_REC, %struct.BUFFER_REC* %85, i32 0, i32 1, !dbg !185
  %87 = load i32, i32* %86, align 8, !dbg !186
  %88 = add nsw i32 %87, %84, !dbg !186
  store i32 %88, i32* %86, align 8, !dbg !186
  %89 = load i32, i32* %10, align 4, !dbg !187
  %90 = load i8*, i8** %9, align 8, !dbg !188
  %91 = sext i32 %89 to i64, !dbg !188
  %92 = getelementptr inbounds i8, i8* %90, i64 %91, !dbg !188
  store i8* %92, i8** %9, align 8, !dbg !188
  %93 = load i32, i32* %10, align 4, !dbg !189
  %94 = load i32, i32* %7, align 4, !dbg !190
  %95 = sub nsw i32 %94, %93, !dbg !190
  store i32 %95, i32* %7, align 4, !dbg !190
  br label %47, !dbg !191, !llvm.loop !193

; <label>:96:                                     ; preds = %47
  %97 = load i32, i32* @block_count, align 4, !dbg !194
  %98 = load i32, i32* @write_buffer_max_blocks, align 4, !dbg !196
  %99 = icmp sgt i32 %97, %98, !dbg !197
  br i1 %99, label %100, label %101, !dbg !198

; <label>:100:                                    ; preds = %96
  call void @write_buffer_flush(), !dbg !199
  br label %101, !dbg !199

; <label>:101:                                    ; preds = %100, %96
  %102 = load i32, i32* %7, align 4, !dbg !200
  store i32 %102, i32* %4, align 4, !dbg !201
  br label %103, !dbg !201

; <label>:103:                                    ; preds = %101, %24, %14
  %104 = load i32, i32* %4, align 4, !dbg !202
  ret i32 %104, !dbg !202
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i64 @write(i32, i8*, i64) #2

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #2

declare noalias i8* @g_malloc0_n(i64, i64) #2

; Function Attrs: nounwind uwtable
define internal void @write_buffer_new_block(%struct.BUFFER_REC*) #0 !dbg !203 {
  %2 = alloca %struct.BUFFER_REC*, align 8
  %3 = alloca i8*, align 8
  store %struct.BUFFER_REC* %0, %struct.BUFFER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.BUFFER_REC** %2, metadata !206, metadata !92), !dbg !207
  call void @llvm.dbg.declare(metadata i8** %3, metadata !208, metadata !92), !dbg !209
  %4 = load %struct._GSList*, %struct._GSList** @empty_blocks, align 8, !dbg !210
  %5 = icmp eq %struct._GSList* %4, null, !dbg !212
  br i1 %5, label %6, label %8, !dbg !213

; <label>:6:                                      ; preds = %1
  %7 = call noalias i8* @g_malloc(i64 2048), !dbg !214
  store i8* %7, i8** %3, align 8, !dbg !215
  br label %15, !dbg !216

; <label>:8:                                      ; preds = %1
  %9 = load %struct._GSList*, %struct._GSList** @empty_blocks, align 8, !dbg !217
  %10 = getelementptr inbounds %struct._GSList, %struct._GSList* %9, i32 0, i32 0, !dbg !219
  %11 = load i8*, i8** %10, align 8, !dbg !219
  store i8* %11, i8** %3, align 8, !dbg !220
  %12 = load %struct._GSList*, %struct._GSList** @empty_blocks, align 8, !dbg !221
  %13 = load i8*, i8** %3, align 8, !dbg !222
  %14 = call %struct._GSList* @g_slist_remove(%struct._GSList* %12, i8* %13), !dbg !223
  store %struct._GSList* %14, %struct._GSList** @empty_blocks, align 8, !dbg !224
  br label %15

; <label>:15:                                     ; preds = %8, %6
  %16 = load i32, i32* @block_count, align 4, !dbg !225
  %17 = add nsw i32 %16, 1, !dbg !225
  store i32 %17, i32* @block_count, align 4, !dbg !225
  %18 = load i8*, i8** %3, align 8, !dbg !226
  %19 = load %struct.BUFFER_REC*, %struct.BUFFER_REC** %2, align 8, !dbg !227
  %20 = getelementptr inbounds %struct.BUFFER_REC, %struct.BUFFER_REC* %19, i32 0, i32 0, !dbg !228
  store i8* %18, i8** %20, align 8, !dbg !229
  %21 = load %struct.BUFFER_REC*, %struct.BUFFER_REC** %2, align 8, !dbg !230
  %22 = getelementptr inbounds %struct.BUFFER_REC, %struct.BUFFER_REC* %21, i32 0, i32 1, !dbg !231
  store i32 0, i32* %22, align 8, !dbg !232
  %23 = load %struct.BUFFER_REC*, %struct.BUFFER_REC** %2, align 8, !dbg !233
  %24 = getelementptr inbounds %struct.BUFFER_REC, %struct.BUFFER_REC* %23, i32 0, i32 2, !dbg !234
  %25 = load %struct._GSList*, %struct._GSList** %24, align 8, !dbg !234
  %26 = load i8*, i8** %3, align 8, !dbg !235
  %27 = call %struct._GSList* @g_slist_append(%struct._GSList* %25, i8* %26), !dbg !236
  %28 = load %struct.BUFFER_REC*, %struct.BUFFER_REC** %2, align 8, !dbg !237
  %29 = getelementptr inbounds %struct.BUFFER_REC, %struct.BUFFER_REC* %28, i32 0, i32 2, !dbg !238
  store %struct._GSList* %27, %struct._GSList** %29, align 8, !dbg !239
  ret void, !dbg !240
}

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define void @write_buffer_flush() #0 !dbg !241 {
  %1 = load %struct._GSList*, %struct._GSList** @empty_blocks, align 8, !dbg !244
  call void @g_slist_foreach(%struct._GSList* %1, void (i8*, i8*)* bitcast (void (i8*)* @g_free to void (i8*, i8*)*), i8* null), !dbg !245
  %2 = load %struct._GSList*, %struct._GSList** @empty_blocks, align 8, !dbg !246
  call void @g_slist_free(%struct._GSList* %2), !dbg !247
  store %struct._GSList* null, %struct._GSList** @empty_blocks, align 8, !dbg !248
  %3 = load %struct._GHashTable*, %struct._GHashTable** @buffers, align 8, !dbg !249
  %4 = call i32 @g_hash_table_foreach_remove(%struct._GHashTable* %3, i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, %struct.BUFFER_REC*)* @write_buffer_flush_rec to i32 (i8*, i8*, i8*)*), i8* null), !dbg !250
  store i32 0, i32* @block_count, align 4, !dbg !251
  ret void, !dbg !252
}

declare void @g_slist_foreach(%struct._GSList*, void (i8*, i8*)*, i8*) #2

declare void @g_free(i8*) #2

declare void @g_slist_free(%struct._GSList*) #2

declare i32 @g_hash_table_foreach_remove(%struct._GHashTable*, i32 (i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @write_buffer_flush_rec(i8*, %struct.BUFFER_REC*) #0 !dbg !253 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.BUFFER_REC*, align 8
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !256, metadata !92), !dbg !257
  store %struct.BUFFER_REC* %1, %struct.BUFFER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.BUFFER_REC** %4, metadata !258, metadata !92), !dbg !259
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !260, metadata !92), !dbg !261
  call void @llvm.dbg.declare(metadata i32* %6, metadata !262, metadata !92), !dbg !263
  call void @llvm.dbg.declare(metadata i32* %7, metadata !264, metadata !92), !dbg !265
  %8 = load i8*, i8** %3, align 8, !dbg !266
  %9 = ptrtoint i8* %8 to i64, !dbg !267
  %10 = trunc i64 %9 to i32, !dbg !268
  store i32 %10, i32* %6, align 4, !dbg !269
  %11 = load %struct.BUFFER_REC*, %struct.BUFFER_REC** %4, align 8, !dbg !270
  %12 = getelementptr inbounds %struct.BUFFER_REC, %struct.BUFFER_REC* %11, i32 0, i32 2, !dbg !272
  %13 = load %struct._GSList*, %struct._GSList** %12, align 8, !dbg !272
  store %struct._GSList* %13, %struct._GSList** %5, align 8, !dbg !273
  br label %14, !dbg !274

; <label>:14:                                     ; preds = %47, %2
  %15 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !275
  %16 = icmp ne %struct._GSList* %15, null, !dbg !278
  br i1 %16, label %17, label %51, !dbg !279

; <label>:17:                                     ; preds = %14
  %18 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !280
  %19 = getelementptr inbounds %struct._GSList, %struct._GSList* %18, i32 0, i32 0, !dbg !282
  %20 = load i8*, i8** %19, align 8, !dbg !282
  %21 = load %struct.BUFFER_REC*, %struct.BUFFER_REC** %4, align 8, !dbg !283
  %22 = getelementptr inbounds %struct.BUFFER_REC, %struct.BUFFER_REC* %21, i32 0, i32 0, !dbg !284
  %23 = load i8*, i8** %22, align 8, !dbg !284
  %24 = icmp ne i8* %20, %23, !dbg !285
  br i1 %24, label %25, label %26, !dbg !280

; <label>:25:                                     ; preds = %17
  br label %30, !dbg !286

; <label>:26:                                     ; preds = %17
  %27 = load %struct.BUFFER_REC*, %struct.BUFFER_REC** %4, align 8, !dbg !288
  %28 = getelementptr inbounds %struct.BUFFER_REC, %struct.BUFFER_REC* %27, i32 0, i32 1, !dbg !289
  %29 = load i32, i32* %28, align 8, !dbg !289
  br label %30, !dbg !290

; <label>:30:                                     ; preds = %26, %25
  %31 = phi i32 [ 2048, %25 ], [ %29, %26 ], !dbg !292
  store i32 %31, i32* %7, align 4, !dbg !294
  %32 = load i32, i32* %6, align 4, !dbg !295
  %33 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !297
  %34 = getelementptr inbounds %struct._GSList, %struct._GSList* %33, i32 0, i32 0, !dbg !298
  %35 = load i8*, i8** %34, align 8, !dbg !298
  %36 = load i32, i32* %7, align 4, !dbg !299
  %37 = sext i32 %36 to i64, !dbg !299
  %38 = call i64 @write(i32 %32, i8* %35, i64 %37), !dbg !300
  %39 = load i32, i32* %7, align 4, !dbg !301
  %40 = sext i32 %39 to i64, !dbg !301
  %41 = icmp ne i64 %38, %40, !dbg !302
  br i1 %41, label %42, label %46, !dbg !303

; <label>:42:                                     ; preds = %30
  %43 = call i32* @__errno_location() #1, !dbg !304
  %44 = load i32, i32* %43, align 4, !dbg !306
  %45 = call i8* @strerror(i32 %44) #6, !dbg !307
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i8* %45), !dbg !309
  br label %46, !dbg !311

; <label>:46:                                     ; preds = %42, %30
  br label %47, !dbg !312

; <label>:47:                                     ; preds = %46
  %48 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !313
  %49 = getelementptr inbounds %struct._GSList, %struct._GSList* %48, i32 0, i32 1, !dbg !315
  %50 = load %struct._GSList*, %struct._GSList** %49, align 8, !dbg !315
  store %struct._GSList* %50, %struct._GSList** %5, align 8, !dbg !316
  br label %14, !dbg !317, !llvm.loop !318

; <label>:51:                                     ; preds = %14
  %52 = load %struct._GSList*, %struct._GSList** @empty_blocks, align 8, !dbg !320
  %53 = load %struct.BUFFER_REC*, %struct.BUFFER_REC** %4, align 8, !dbg !321
  %54 = getelementptr inbounds %struct.BUFFER_REC, %struct.BUFFER_REC* %53, i32 0, i32 2, !dbg !322
  %55 = load %struct._GSList*, %struct._GSList** %54, align 8, !dbg !322
  %56 = call %struct._GSList* @g_slist_concat(%struct._GSList* %52, %struct._GSList* %55), !dbg !323
  store %struct._GSList* %56, %struct._GSList** @empty_blocks, align 8, !dbg !324
  %57 = load %struct.BUFFER_REC*, %struct.BUFFER_REC** %4, align 8, !dbg !325
  %58 = bitcast %struct.BUFFER_REC* %57 to i8*, !dbg !325
  call void @g_free(i8* %58), !dbg !326
  ret i32 1, !dbg !327
}

; Function Attrs: nounwind uwtable
define void @write_buffer_init() #0 !dbg !328 {
  call void @settings_add_time_module(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)), !dbg !329
  call void @settings_add_size_module(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)), !dbg !330
  %1 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_direct_hash, i32 (i8*, i8*)* @g_direct_equal), !dbg !331
  store %struct._GHashTable* %1, %struct._GHashTable** @buffers, align 8, !dbg !332
  store %struct._GSList* null, %struct._GSList** @empty_blocks, align 8, !dbg !333
  store i32 0, i32* @block_count, align 4, !dbg !334
  store i32 -1, i32* @timeout_tag, align 4, !dbg !335
  call void @read_settings(), !dbg !336
  call void @signal_add_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !337
  call void @command_bind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_flushbuffer to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !338
  ret void, !dbg !339
}

declare void @settings_add_time_module(i8*, i8*, i8*, i8*) #2

declare void @settings_add_size_module(i8*, i8*, i8*, i8*) #2

declare %struct._GHashTable* @g_hash_table_new(i32 (i8*)*, i32 (i8*, i8*)*) #2

; Function Attrs: nounwind readnone
declare i32 @g_direct_hash(i8*) #4

; Function Attrs: nounwind readnone
declare i32 @g_direct_equal(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal void @read_settings() #0 !dbg !340 {
  call void @write_buffer_flush(), !dbg !341
  %1 = call i32 @settings_get_size(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0)), !dbg !342
  %2 = sdiv i32 %1, 2048, !dbg !343
  store i32 %2, i32* @write_buffer_max_blocks, align 4, !dbg !344
  %3 = call i32 @settings_get_time(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0)), !dbg !345
  %4 = icmp sgt i32 %3, 0, !dbg !347
  br i1 %4, label %5, label %12, !dbg !348

; <label>:5:                                      ; preds = %0
  %6 = load i32, i32* @timeout_tag, align 4, !dbg !349
  %7 = icmp eq i32 %6, -1, !dbg !352
  br i1 %7, label %8, label %11, !dbg !353

; <label>:8:                                      ; preds = %5
  %9 = call i32 @settings_get_time(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0)), !dbg !354
  %10 = call i32 @g_timeout_add(i32 %9, i32 (i8*)* bitcast (i32 ()* @flush_timeout to i32 (i8*)*), i8* null), !dbg !356
  store i32 %10, i32* @timeout_tag, align 4, !dbg !358
  br label %11, !dbg !359

; <label>:11:                                     ; preds = %8, %5
  br label %19, !dbg !360

; <label>:12:                                     ; preds = %0
  %13 = load i32, i32* @timeout_tag, align 4, !dbg !361
  %14 = icmp ne i32 %13, -1, !dbg !364
  br i1 %14, label %15, label %18, !dbg !361

; <label>:15:                                     ; preds = %12
  %16 = load i32, i32* @timeout_tag, align 4, !dbg !365
  %17 = call i32 @g_source_remove(i32 %16), !dbg !367
  store i32 -1, i32* @timeout_tag, align 4, !dbg !368
  br label %18, !dbg !369

; <label>:18:                                     ; preds = %15, %12
  br label %19

; <label>:19:                                     ; preds = %18, %11
  ret void, !dbg !370
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare void @command_bind_full(i8*, i32, i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @cmd_flushbuffer() #0 !dbg !371 {
  call void @write_buffer_flush(), !dbg !372
  ret void, !dbg !373
}

; Function Attrs: nounwind uwtable
define void @write_buffer_deinit() #0 !dbg !374 {
  %1 = load i32, i32* @timeout_tag, align 4, !dbg !375
  %2 = icmp ne i32 %1, -1, !dbg !377
  br i1 %2, label %3, label %6, !dbg !378

; <label>:3:                                      ; preds = %0
  %4 = load i32, i32* @timeout_tag, align 4, !dbg !379
  %5 = call i32 @g_source_remove(i32 %4), !dbg !380
  br label %6, !dbg !380

; <label>:6:                                      ; preds = %3, %0
  call void @write_buffer_flush(), !dbg !381
  %7 = load %struct._GHashTable*, %struct._GHashTable** @buffers, align 8, !dbg !382
  call void @g_hash_table_destroy(%struct._GHashTable* %7), !dbg !383
  %8 = load %struct._GSList*, %struct._GSList** @empty_blocks, align 8, !dbg !384
  call void @g_slist_foreach(%struct._GSList* %8, void (i8*, i8*)* bitcast (void (i8*)* @g_free to void (i8*, i8*)*), i8* null), !dbg !385
  %9 = load %struct._GSList*, %struct._GSList** @empty_blocks, align 8, !dbg !386
  call void @g_slist_free(%struct._GSList* %9), !dbg !387
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !388
  call void @command_unbind_full(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_flushbuffer to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !389
  ret void, !dbg !390
}

declare i32 @g_source_remove(i32) #2

declare void @g_hash_table_destroy(%struct._GHashTable*) #2

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare void @command_unbind_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare noalias i8* @g_malloc(i64) #2

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #2

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #2

declare void @g_log(i8*, i32, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @strerror(i32) #5

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

declare %struct._GSList* @g_slist_concat(%struct._GSList*, %struct._GSList*) #2

declare i32 @settings_get_size(i8*) #2

declare i32 @settings_get_time(i8*) #2

declare i32 @g_timeout_add(i32, i32 (i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @flush_timeout() #0 !dbg !391 {
  call void @write_buffer_flush(), !dbg !394
  ret i32 1, !dbg !395
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!84, !85}
!llvm.ident = !{!86}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !15, globals: !75)
!1 = !DIFile(filename: "line99-write-buffer.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 51, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/irssi/task1")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14}
!6 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!7 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!8 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!9 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!10 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!11 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!12 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!13 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!14 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!15 = !{!16, !19, !18, !21, !39, !43, !50, !59, !63, !49, !68, !70}
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !17, line: 77, baseType: !18)
!17 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !17, line: 48, baseType: !20)
!20 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "BUFFER_REC", file: !23, line: 34, baseType: !24)
!23 = !DIFile(filename: "write-buffer.c", directory: "/home/lichi/Desktop/irssi/task1")
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 29, size: 192, align: 64, elements: !25)
!25 = !{!26, !29, !31}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "active_block", scope: !24, file: !23, line: 30, baseType: !27, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!28 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "active_block_pos", scope: !24, file: !23, line: 31, baseType: !30, size: 32, align: 32, offset: 64)
!30 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !24, file: !23, line: 33, baseType: !32, size: 64, align: 64, offset: 128)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !34, line: 37, baseType: !35)
!34 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !34, line: 39, size: 128, align: 64, elements: !36)
!36 = !{!37, !38}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !35, file: !34, line: 41, baseType: !16, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !35, file: !34, line: 42, baseType: !32, size: 64, align: 64, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "GFunc", file: !17, line: 88, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !16, !16}
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHRFunc", file: !44, line: 39, baseType: !45)
!44 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !16, !16, !16}
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !17, line: 50, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !17, line: 49, baseType: !30)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashFunc", file: !17, line: 90, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{!54, !56}
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !17, line: 55, baseType: !55)
!55 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "gconstpointer", file: !17, line: 78, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCompareFunc", file: !17, line: 80, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{!49, !56, !56}
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !64, line: 9, baseType: !65)
!64 = !DIFile(filename: "signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{null, !57, !57, !57, !57, !57, !57}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !17, line: 46, baseType: !28)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !71, line: 155, baseType: !72)
!71 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/irssi/task1")
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{!48, !16}
!75 = !{!76, !77, !81, !82, !83}
!76 = distinct !DIGlobalVariable(name: "empty_blocks", scope: !0, file: !23, line: 36, type: !32, isLocal: true, isDefinition: true, variable: %struct._GSList** @empty_blocks)
!77 = distinct !DIGlobalVariable(name: "buffers", scope: !0, file: !23, line: 37, type: !78, isLocal: true, isDefinition: true, variable: %struct._GHashTable** @buffers)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !44, line: 37, baseType: !80)
!80 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !44, line: 37, flags: DIFlagFwdDecl)
!81 = distinct !DIGlobalVariable(name: "block_count", scope: !0, file: !23, line: 38, type: !30, isLocal: true, isDefinition: true, variable: i32* @block_count)
!82 = distinct !DIGlobalVariable(name: "write_buffer_max_blocks", scope: !0, file: !23, line: 40, type: !30, isLocal: true, isDefinition: true, variable: i32* @write_buffer_max_blocks)
!83 = distinct !DIGlobalVariable(name: "timeout_tag", scope: !0, file: !23, line: 41, type: !30, isLocal: true, isDefinition: true, variable: i32* @timeout_tag)
!84 = !{i32 2, !"Dwarf Version", i32 4}
!85 = !{i32 2, !"Debug Info Version", i32 3}
!86 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!87 = distinct !DISubprogram(name: "write_buffer", scope: !23, file: !23, line: 60, type: !88, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !90)
!88 = !DISubroutineType(types: !89)
!89 = !{!30, !30, !57, !30}
!90 = !{}
!91 = !DILocalVariable(name: "handle", arg: 1, scope: !87, file: !23, line: 60, type: !30)
!92 = !DIExpression()
!93 = !DILocation(line: 60, column: 22, scope: !87)
!94 = !DILocalVariable(name: "data", arg: 2, scope: !87, file: !23, line: 60, type: !57)
!95 = !DILocation(line: 60, column: 42, scope: !87)
!96 = !DILocalVariable(name: "size", arg: 3, scope: !87, file: !23, line: 60, type: !30)
!97 = !DILocation(line: 60, column: 52, scope: !87)
!98 = !DILocalVariable(name: "rec", scope: !87, file: !23, line: 62, type: !21)
!99 = !DILocation(line: 62, column: 14, scope: !87)
!100 = !DILocalVariable(name: "cdata", scope: !87, file: !23, line: 63, type: !101)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64, align: 64)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!103 = !DILocation(line: 63, column: 21, scope: !87)
!104 = !DILocation(line: 63, column: 29, scope: !87)
!105 = !DILocalVariable(name: "next_size", scope: !87, file: !23, line: 64, type: !30)
!106 = !DILocation(line: 64, column: 6, scope: !87)
!107 = !DILocation(line: 66, column: 6, scope: !108)
!108 = distinct !DILexicalBlock(scope: !87, file: !23, line: 66, column: 6)
!109 = !DILocation(line: 66, column: 30, scope: !108)
!110 = !DILocation(line: 66, column: 6, scope: !87)
!111 = !DILocation(line: 68, column: 30, scope: !112)
!112 = distinct !DILexicalBlock(scope: !108, file: !23, line: 66, column: 36)
!113 = !DILocation(line: 68, column: 38, scope: !112)
!114 = !DILocation(line: 68, column: 44, scope: !112)
!115 = !DILocation(line: 68, column: 24, scope: !112)
!116 = !DILocation(line: 68, column: 17, scope: !112)
!117 = !DILocation(line: 71, column: 6, scope: !118)
!118 = distinct !DILexicalBlock(scope: !87, file: !23, line: 71, column: 6)
!119 = !DILocation(line: 71, column: 11, scope: !118)
!120 = !DILocation(line: 71, column: 6, scope: !87)
!121 = !DILocation(line: 72, column: 10, scope: !118)
!122 = !DILocation(line: 72, column: 3, scope: !118)
!123 = !DILocation(line: 74, column: 28, scope: !87)
!124 = !DILocation(line: 74, column: 58, scope: !87)
!125 = !DILocation(line: 74, column: 49, scope: !87)
!126 = !DILocation(line: 74, column: 38, scope: !87)
!127 = !DILocation(line: 74, column: 8, scope: !87)
!128 = !DILocation(line: 74, column: 6, scope: !87)
!129 = !DILocation(line: 75, column: 6, scope: !130)
!130 = distinct !DILexicalBlock(scope: !87, file: !23, line: 75, column: 6)
!131 = !DILocation(line: 75, column: 10, scope: !130)
!132 = !DILocation(line: 75, column: 6, scope: !87)
!133 = !DILocation(line: 76, column: 25, scope: !134)
!134 = distinct !DILexicalBlock(scope: !130, file: !23, line: 75, column: 18)
!135 = !DILocation(line: 76, column: 10, scope: !134)
!136 = !DILocation(line: 76, column: 7, scope: !134)
!137 = !DILocation(line: 77, column: 40, scope: !134)
!138 = !DILocation(line: 77, column: 17, scope: !134)
!139 = !DILocation(line: 78, column: 23, scope: !134)
!140 = !DILocation(line: 78, column: 53, scope: !134)
!141 = !DILocation(line: 78, column: 44, scope: !134)
!142 = !DILocation(line: 78, column: 33, scope: !134)
!143 = !DILocation(line: 78, column: 63, scope: !134)
!144 = !DILocation(line: 78, column: 3, scope: !134)
!145 = !DILocation(line: 79, column: 2, scope: !134)
!146 = !DILocation(line: 81, column: 2, scope: !87)
!147 = !DILocation(line: 81, column: 9, scope: !148)
!148 = !DILexicalBlockFile(scope: !87, file: !23, discriminator: 1)
!149 = !DILocation(line: 81, column: 14, scope: !148)
!150 = !DILocation(line: 81, column: 2, scope: !148)
!151 = !DILocation(line: 82, column: 21, scope: !152)
!152 = distinct !DILexicalBlock(scope: !153, file: !23, line: 82, column: 21)
!153 = distinct !DILexicalBlock(scope: !87, file: !23, line: 81, column: 19)
!154 = !DILocation(line: 82, column: 26, scope: !152)
!155 = !DILocation(line: 82, column: 43, scope: !152)
!156 = !DILocation(line: 82, column: 21, scope: !153)
!157 = !DILocation(line: 83, column: 27, scope: !152)
!158 = !DILocation(line: 83, column: 4, scope: !152)
!159 = !DILocation(line: 85, column: 15, scope: !153)
!160 = !DILocation(line: 85, column: 28, scope: !153)
!161 = !DILocation(line: 85, column: 33, scope: !153)
!162 = !DILocation(line: 85, column: 27, scope: !153)
!163 = !DILocation(line: 85, column: 20, scope: !153)
!164 = !DILocation(line: 86, column: 4, scope: !153)
!165 = !DILocation(line: 85, column: 15, scope: !166)
!166 = !DILexicalBlockFile(scope: !153, file: !23, discriminator: 1)
!167 = !DILocation(line: 86, column: 17, scope: !166)
!168 = !DILocation(line: 86, column: 22, scope: !166)
!169 = !DILocation(line: 86, column: 16, scope: !166)
!170 = !DILocation(line: 85, column: 15, scope: !171)
!171 = !DILexicalBlockFile(scope: !153, file: !23, discriminator: 2)
!172 = !DILocation(line: 85, column: 15, scope: !173)
!173 = !DILexicalBlockFile(scope: !153, file: !23, discriminator: 3)
!174 = !DILocation(line: 85, column: 13, scope: !173)
!175 = !DILocation(line: 87, column: 10, scope: !153)
!176 = !DILocation(line: 87, column: 15, scope: !153)
!177 = !DILocation(line: 87, column: 28, scope: !153)
!178 = !DILocation(line: 87, column: 33, scope: !153)
!179 = !DILocation(line: 87, column: 27, scope: !153)
!180 = !DILocation(line: 88, column: 10, scope: !153)
!181 = !DILocation(line: 88, column: 17, scope: !153)
!182 = !DILocation(line: 87, column: 3, scope: !153)
!183 = !DILocation(line: 90, column: 28, scope: !153)
!184 = !DILocation(line: 90, column: 3, scope: !153)
!185 = !DILocation(line: 90, column: 8, scope: !153)
!186 = !DILocation(line: 90, column: 25, scope: !153)
!187 = !DILocation(line: 91, column: 12, scope: !153)
!188 = !DILocation(line: 91, column: 9, scope: !153)
!189 = !DILocation(line: 92, column: 25, scope: !153)
!190 = !DILocation(line: 92, column: 22, scope: !153)
!191 = !DILocation(line: 81, column: 2, scope: !192)
!192 = !DILexicalBlockFile(scope: !87, file: !23, discriminator: 2)
!193 = distinct !{!193, !146}
!194 = !DILocation(line: 95, column: 6, scope: !195)
!195 = distinct !DILexicalBlock(scope: !87, file: !23, line: 95, column: 6)
!196 = !DILocation(line: 95, column: 20, scope: !195)
!197 = !DILocation(line: 95, column: 18, scope: !195)
!198 = !DILocation(line: 95, column: 6, scope: !87)
!199 = !DILocation(line: 96, column: 17, scope: !195)
!200 = !DILocation(line: 98, column: 16, scope: !87)
!201 = !DILocation(line: 98, column: 9, scope: !87)
!202 = !DILocation(line: 99, column: 1, scope: !87)
!203 = distinct !DISubprogram(name: "write_buffer_new_block", scope: !23, file: !23, line: 43, type: !204, isLocal: true, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !90)
!204 = !DISubroutineType(types: !205)
!205 = !{null, !21}
!206 = !DILocalVariable(name: "rec", arg: 1, scope: !203, file: !23, line: 43, type: !21)
!207 = !DILocation(line: 43, column: 48, scope: !203)
!208 = !DILocalVariable(name: "block", scope: !203, file: !23, line: 45, type: !27)
!209 = !DILocation(line: 45, column: 8, scope: !203)
!210 = !DILocation(line: 47, column: 6, scope: !211)
!211 = distinct !DILexicalBlock(scope: !203, file: !23, line: 47, column: 6)
!212 = !DILocation(line: 47, column: 19, scope: !211)
!213 = !DILocation(line: 47, column: 6, scope: !203)
!214 = !DILocation(line: 48, column: 11, scope: !211)
!215 = !DILocation(line: 48, column: 9, scope: !211)
!216 = !DILocation(line: 48, column: 3, scope: !211)
!217 = !DILocation(line: 50, column: 11, scope: !218)
!218 = distinct !DILexicalBlock(scope: !211, file: !23, line: 49, column: 7)
!219 = !DILocation(line: 50, column: 25, scope: !218)
!220 = !DILocation(line: 50, column: 9, scope: !218)
!221 = !DILocation(line: 51, column: 47, scope: !218)
!222 = !DILocation(line: 51, column: 61, scope: !218)
!223 = !DILocation(line: 51, column: 32, scope: !218)
!224 = !DILocation(line: 51, column: 30, scope: !218)
!225 = !DILocation(line: 54, column: 20, scope: !203)
!226 = !DILocation(line: 55, column: 22, scope: !203)
!227 = !DILocation(line: 55, column: 2, scope: !203)
!228 = !DILocation(line: 55, column: 7, scope: !203)
!229 = !DILocation(line: 55, column: 20, scope: !203)
!230 = !DILocation(line: 56, column: 9, scope: !203)
!231 = !DILocation(line: 56, column: 14, scope: !203)
!232 = !DILocation(line: 56, column: 31, scope: !203)
!233 = !DILocation(line: 57, column: 31, scope: !203)
!234 = !DILocation(line: 57, column: 36, scope: !203)
!235 = !DILocation(line: 57, column: 44, scope: !203)
!236 = !DILocation(line: 57, column: 16, scope: !203)
!237 = !DILocation(line: 57, column: 2, scope: !203)
!238 = !DILocation(line: 57, column: 7, scope: !203)
!239 = !DILocation(line: 57, column: 14, scope: !203)
!240 = !DILocation(line: 58, column: 1, scope: !203)
!241 = distinct !DISubprogram(name: "write_buffer_flush", scope: !23, file: !23, line: 120, type: !242, isLocal: false, isDefinition: true, scopeLine: 121, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !90)
!242 = !DISubroutineType(types: !243)
!243 = !{null}
!244 = !DILocation(line: 122, column: 18, scope: !241)
!245 = !DILocation(line: 122, column: 2, scope: !241)
!246 = !DILocation(line: 123, column: 15, scope: !241)
!247 = !DILocation(line: 123, column: 2, scope: !241)
!248 = !DILocation(line: 124, column: 22, scope: !241)
!249 = !DILocation(line: 126, column: 30, scope: !241)
!250 = !DILocation(line: 126, column: 2, scope: !241)
!251 = !DILocation(line: 128, column: 21, scope: !241)
!252 = !DILocation(line: 129, column: 1, scope: !241)
!253 = distinct !DISubprogram(name: "write_buffer_flush_rec", scope: !23, file: !23, line: 101, type: !254, isLocal: true, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !90)
!254 = !DISubroutineType(types: !255)
!255 = !{!30, !18, !21}
!256 = !DILocalVariable(name: "handlep", arg: 1, scope: !253, file: !23, line: 101, type: !18)
!257 = !DILocation(line: 101, column: 41, scope: !253)
!258 = !DILocalVariable(name: "rec", arg: 2, scope: !253, file: !23, line: 101, type: !21)
!259 = !DILocation(line: 101, column: 62, scope: !253)
!260 = !DILocalVariable(name: "tmp", scope: !253, file: !23, line: 103, type: !32)
!261 = !DILocation(line: 103, column: 10, scope: !253)
!262 = !DILocalVariable(name: "handle", scope: !253, file: !23, line: 104, type: !30)
!263 = !DILocation(line: 104, column: 13, scope: !253)
!264 = !DILocalVariable(name: "size", scope: !253, file: !23, line: 104, type: !30)
!265 = !DILocation(line: 104, column: 21, scope: !253)
!266 = !DILocation(line: 106, column: 35, scope: !253)
!267 = !DILocation(line: 106, column: 26, scope: !253)
!268 = !DILocation(line: 106, column: 19, scope: !253)
!269 = !DILocation(line: 106, column: 16, scope: !253)
!270 = !DILocation(line: 107, column: 13, scope: !271)
!271 = distinct !DILexicalBlock(scope: !253, file: !23, line: 107, column: 2)
!272 = !DILocation(line: 107, column: 18, scope: !271)
!273 = !DILocation(line: 107, column: 11, scope: !271)
!274 = !DILocation(line: 107, column: 7, scope: !271)
!275 = !DILocation(line: 107, column: 26, scope: !276)
!276 = !DILexicalBlockFile(scope: !277, file: !23, discriminator: 1)
!277 = distinct !DILexicalBlock(scope: !271, file: !23, line: 107, column: 2)
!278 = !DILocation(line: 107, column: 30, scope: !276)
!279 = !DILocation(line: 107, column: 2, scope: !276)
!280 = !DILocation(line: 108, column: 10, scope: !281)
!281 = distinct !DILexicalBlock(scope: !277, file: !23, line: 107, column: 55)
!282 = !DILocation(line: 108, column: 15, scope: !281)
!283 = !DILocation(line: 108, column: 23, scope: !281)
!284 = !DILocation(line: 108, column: 28, scope: !281)
!285 = !DILocation(line: 108, column: 20, scope: !281)
!286 = !DILocation(line: 108, column: 10, scope: !287)
!287 = !DILexicalBlockFile(scope: !281, file: !23, discriminator: 1)
!288 = !DILocation(line: 109, column: 4, scope: !281)
!289 = !DILocation(line: 109, column: 9, scope: !281)
!290 = !DILocation(line: 108, column: 10, scope: !291)
!291 = !DILexicalBlockFile(scope: !281, file: !23, discriminator: 2)
!292 = !DILocation(line: 108, column: 10, scope: !293)
!293 = !DILexicalBlockFile(scope: !281, file: !23, discriminator: 3)
!294 = !DILocation(line: 108, column: 8, scope: !293)
!295 = !DILocation(line: 110, column: 13, scope: !296)
!296 = distinct !DILexicalBlock(scope: !281, file: !23, line: 110, column: 7)
!297 = !DILocation(line: 110, column: 21, scope: !296)
!298 = !DILocation(line: 110, column: 26, scope: !296)
!299 = !DILocation(line: 110, column: 32, scope: !296)
!300 = !DILocation(line: 110, column: 7, scope: !296)
!301 = !DILocation(line: 110, column: 41, scope: !296)
!302 = !DILocation(line: 110, column: 38, scope: !296)
!303 = !DILocation(line: 110, column: 7, scope: !281)
!304 = !DILocation(line: 111, column: 5, scope: !305)
!305 = distinct !DILexicalBlock(scope: !296, file: !23, line: 110, column: 47)
!306 = !DILocation(line: 111, column: 4, scope: !305)
!307 = !DILocation(line: 111, column: 71, scope: !308)
!308 = !DILexicalBlockFile(scope: !305, file: !23, discriminator: 1)
!309 = !DILocation(line: 111, column: 4, scope: !310)
!310 = !DILexicalBlockFile(scope: !305, file: !23, discriminator: 2)
!311 = !DILocation(line: 112, column: 3, scope: !305)
!312 = !DILocation(line: 113, column: 2, scope: !281)
!313 = !DILocation(line: 107, column: 44, scope: !314)
!314 = !DILexicalBlockFile(scope: !277, file: !23, discriminator: 2)
!315 = !DILocation(line: 107, column: 49, scope: !314)
!316 = !DILocation(line: 107, column: 42, scope: !314)
!317 = !DILocation(line: 107, column: 2, scope: !314)
!318 = distinct !{!318, !319}
!319 = !DILocation(line: 107, column: 2, scope: !253)
!320 = !DILocation(line: 115, column: 39, scope: !253)
!321 = !DILocation(line: 115, column: 53, scope: !253)
!322 = !DILocation(line: 115, column: 58, scope: !253)
!323 = !DILocation(line: 115, column: 24, scope: !253)
!324 = !DILocation(line: 115, column: 22, scope: !253)
!325 = !DILocation(line: 116, column: 9, scope: !253)
!326 = !DILocation(line: 116, column: 2, scope: !253)
!327 = !DILocation(line: 117, column: 9, scope: !253)
!328 = distinct !DISubprogram(name: "write_buffer_init", scope: !23, file: !23, line: 161, type: !242, isLocal: false, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !90)
!329 = !DILocation(line: 163, column: 2, scope: !328)
!330 = !DILocation(line: 164, column: 2, scope: !328)
!331 = !DILocation(line: 166, column: 12, scope: !328)
!332 = !DILocation(line: 166, column: 10, scope: !328)
!333 = !DILocation(line: 169, column: 22, scope: !328)
!334 = !DILocation(line: 170, column: 21, scope: !328)
!335 = !DILocation(line: 172, column: 14, scope: !328)
!336 = !DILocation(line: 173, column: 2, scope: !328)
!337 = !DILocation(line: 174, column: 2, scope: !328)
!338 = !DILocation(line: 175, column: 9, scope: !328)
!339 = !DILocation(line: 176, column: 1, scope: !328)
!340 = distinct !DISubprogram(name: "read_settings", scope: !23, file: !23, line: 137, type: !242, isLocal: true, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !90)
!341 = !DILocation(line: 139, column: 2, scope: !340)
!342 = !DILocation(line: 142, column: 3, scope: !340)
!343 = !DILocation(line: 142, column: 42, scope: !340)
!344 = !DILocation(line: 141, column: 26, scope: !340)
!345 = !DILocation(line: 144, column: 6, scope: !346)
!346 = distinct !DILexicalBlock(scope: !340, file: !23, line: 144, column: 6)
!347 = !DILocation(line: 144, column: 48, scope: !346)
!348 = !DILocation(line: 144, column: 6, scope: !340)
!349 = !DILocation(line: 145, column: 7, scope: !350)
!350 = distinct !DILexicalBlock(scope: !351, file: !23, line: 145, column: 7)
!351 = distinct !DILexicalBlock(scope: !346, file: !23, line: 144, column: 53)
!352 = !DILocation(line: 145, column: 19, scope: !350)
!353 = !DILocation(line: 145, column: 7, scope: !351)
!354 = !DILocation(line: 146, column: 32, scope: !355)
!355 = distinct !DILexicalBlock(scope: !350, file: !23, line: 145, column: 26)
!356 = !DILocation(line: 146, column: 18, scope: !357)
!357 = !DILexicalBlockFile(scope: !355, file: !23, discriminator: 1)
!358 = !DILocation(line: 146, column: 16, scope: !355)
!359 = !DILocation(line: 149, column: 3, scope: !355)
!360 = !DILocation(line: 150, column: 2, scope: !351)
!361 = !DILocation(line: 150, column: 13, scope: !362)
!362 = !DILexicalBlockFile(scope: !363, file: !23, discriminator: 1)
!363 = distinct !DILexicalBlock(scope: !346, file: !23, line: 150, column: 13)
!364 = !DILocation(line: 150, column: 25, scope: !362)
!365 = !DILocation(line: 151, column: 19, scope: !366)
!366 = distinct !DILexicalBlock(scope: !363, file: !23, line: 150, column: 32)
!367 = !DILocation(line: 151, column: 3, scope: !366)
!368 = !DILocation(line: 152, column: 29, scope: !366)
!369 = !DILocation(line: 153, column: 2, scope: !366)
!370 = !DILocation(line: 154, column: 1, scope: !340)
!371 = distinct !DISubprogram(name: "cmd_flushbuffer", scope: !23, file: !23, line: 156, type: !242, isLocal: true, isDefinition: true, scopeLine: 157, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !90)
!372 = !DILocation(line: 158, column: 9, scope: !371)
!373 = !DILocation(line: 159, column: 1, scope: !371)
!374 = distinct !DISubprogram(name: "write_buffer_deinit", scope: !23, file: !23, line: 178, type: !242, isLocal: false, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !90)
!375 = !DILocation(line: 180, column: 6, scope: !376)
!376 = distinct !DILexicalBlock(scope: !374, file: !23, line: 180, column: 6)
!377 = !DILocation(line: 180, column: 18, scope: !376)
!378 = !DILocation(line: 180, column: 6, scope: !374)
!379 = !DILocation(line: 181, column: 19, scope: !376)
!380 = !DILocation(line: 181, column: 3, scope: !376)
!381 = !DILocation(line: 183, column: 9, scope: !374)
!382 = !DILocation(line: 184, column: 30, scope: !374)
!383 = !DILocation(line: 184, column: 9, scope: !374)
!384 = !DILocation(line: 186, column: 18, scope: !374)
!385 = !DILocation(line: 186, column: 2, scope: !374)
!386 = !DILocation(line: 187, column: 22, scope: !374)
!387 = !DILocation(line: 187, column: 9, scope: !374)
!388 = !DILocation(line: 189, column: 2, scope: !374)
!389 = !DILocation(line: 190, column: 2, scope: !374)
!390 = !DILocation(line: 191, column: 1, scope: !374)
!391 = distinct !DISubprogram(name: "flush_timeout", scope: !23, file: !23, line: 131, type: !392, isLocal: true, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !90)
!392 = !DISubroutineType(types: !393)
!393 = !{!30}
!394 = !DILocation(line: 133, column: 2, scope: !391)
!395 = !DILocation(line: 134, column: 9, scope: !391)
