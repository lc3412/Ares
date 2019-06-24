; ModuleID = './[inter]src--.libs--matvar_cell.o.i'
source_filename = "./[inter]src--.libs--matvar_cell.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.matvar_t = type { i64, i32, i32, i32, i32, i32, i32, i32, i64*, i8*, i8*, i32, i32, %struct.matvar_internal* }
%struct.matvar_internal = type { i64, i32, i8**, %struct.z_stream_s*, i8* }
%struct.z_stream_s = type { i8*, i32, i64, i8*, i32, i64, i8*, %struct.internal_state*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8*, i32, i64, i64 }
%struct.internal_state = type opaque

; Function Attrs: nounwind uwtable
define %struct.matvar_t* @Mat_VarGetCell(%struct.matvar_t*, i32) #0 !dbg !132 {
  %3 = alloca %struct.matvar_t*, align 8
  %4 = alloca %struct.matvar_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.matvar_t*, align 8
  store %struct.matvar_t* %0, %struct.matvar_t** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.matvar_t** %4, metadata !137, metadata !138), !dbg !139
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !140, metadata !138), !dbg !141
  call void @llvm.dbg.declare(metadata i64* %6, metadata !142, metadata !138), !dbg !143
  store i64 1, i64* %6, align 8, !dbg !143
  call void @llvm.dbg.declare(metadata %struct.matvar_t** %7, metadata !144, metadata !138), !dbg !145
  store %struct.matvar_t* null, %struct.matvar_t** %7, align 8, !dbg !145
  %8 = load %struct.matvar_t*, %struct.matvar_t** %4, align 8, !dbg !146
  %9 = icmp eq %struct.matvar_t* %8, null, !dbg !148
  br i1 %9, label %10, label %11, !dbg !149

; <label>:10:                                     ; preds = %2
  store %struct.matvar_t* null, %struct.matvar_t** %3, align 8, !dbg !150
  br label %32, !dbg !150

; <label>:11:                                     ; preds = %2
  %12 = load %struct.matvar_t*, %struct.matvar_t** %4, align 8, !dbg !151
  %13 = call i32 @SafeMulDims(%struct.matvar_t* %12, i64* %6), !dbg !152
  %14 = load i32, i32* %5, align 4, !dbg !153
  %15 = icmp sle i32 0, %14, !dbg !155
  br i1 %15, label %16, label %30, !dbg !156

; <label>:16:                                     ; preds = %11
  %17 = load i32, i32* %5, align 4, !dbg !157
  %18 = sext i32 %17 to i64, !dbg !157
  %19 = load i64, i64* %6, align 8, !dbg !159
  %20 = icmp ult i64 %18, %19, !dbg !160
  br i1 %20, label %21, label %30, !dbg !161

; <label>:21:                                     ; preds = %16
  %22 = load %struct.matvar_t*, %struct.matvar_t** %4, align 8, !dbg !162
  %23 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %22, i32 0, i32 10, !dbg !163
  %24 = load i8*, i8** %23, align 8, !dbg !163
  %25 = bitcast i8* %24 to %struct.matvar_t**, !dbg !164
  %26 = load i32, i32* %5, align 4, !dbg !165
  %27 = sext i32 %26 to i64, !dbg !166
  %28 = getelementptr inbounds %struct.matvar_t*, %struct.matvar_t** %25, i64 %27, !dbg !166
  %29 = load %struct.matvar_t*, %struct.matvar_t** %28, align 8, !dbg !167
  store %struct.matvar_t* %29, %struct.matvar_t** %7, align 8, !dbg !168
  br label %30, !dbg !169

; <label>:30:                                     ; preds = %21, %16, %11
  %31 = load %struct.matvar_t*, %struct.matvar_t** %7, align 8, !dbg !170
  store %struct.matvar_t* %31, %struct.matvar_t** %3, align 8, !dbg !171
  br label %32, !dbg !171

; <label>:32:                                     ; preds = %30, %10
  %33 = load %struct.matvar_t*, %struct.matvar_t** %3, align 8, !dbg !172
  ret %struct.matvar_t* %33, !dbg !172
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @SafeMulDims(%struct.matvar_t*, i64*) #2

; Function Attrs: nounwind uwtable
define %struct.matvar_t** @Mat_VarGetCells(%struct.matvar_t*, i32*, i32*, i32*) #0 !dbg !173 {
  %5 = alloca %struct.matvar_t**, align 8
  %6 = alloca %struct.matvar_t*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [10 x i64], align 16
  %15 = alloca [10 x i64], align 16
  %16 = alloca [10 x i64], align 16
  %17 = alloca %struct.matvar_t**, align 8
  store %struct.matvar_t* %0, %struct.matvar_t** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.matvar_t** %6, metadata !177, metadata !138), !dbg !178
  store i32* %1, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !179, metadata !138), !dbg !180
  store i32* %2, i32** %8, align 8
  call void @llvm.dbg.declare(metadata i32** %8, metadata !181, metadata !138), !dbg !182
  store i32* %3, i32** %9, align 8
  call void @llvm.dbg.declare(metadata i32** %9, metadata !183, metadata !138), !dbg !184
  call void @llvm.dbg.declare(metadata i32* %10, metadata !185, metadata !138), !dbg !186
  call void @llvm.dbg.declare(metadata i32* %11, metadata !187, metadata !138), !dbg !188
  call void @llvm.dbg.declare(metadata i32* %12, metadata !189, metadata !138), !dbg !190
  call void @llvm.dbg.declare(metadata i32* %13, metadata !191, metadata !138), !dbg !192
  call void @llvm.dbg.declare(metadata [10 x i64]* %14, metadata !193, metadata !138), !dbg !197
  %18 = bitcast [10 x i64]* %14 to i8*, !dbg !197
  call void @llvm.memset.p0i8.i64(i8* %18, i8 0, i64 80, i32 16, i1 false), !dbg !197
  call void @llvm.dbg.declare(metadata [10 x i64]* %15, metadata !198, metadata !138), !dbg !199
  %19 = bitcast [10 x i64]* %15 to i8*, !dbg !199
  call void @llvm.memset.p0i8.i64(i8* %19, i8 0, i64 80, i32 16, i1 false), !dbg !200
  call void @llvm.dbg.declare(metadata [10 x i64]* %16, metadata !202, metadata !138), !dbg !203
  %20 = bitcast [10 x i64]* %16 to i8*, !dbg !203
  call void @llvm.memset.p0i8.i64(i8* %20, i8 0, i64 80, i32 16, i1 false), !dbg !204
  call void @llvm.dbg.declare(metadata %struct.matvar_t*** %17, metadata !206, metadata !138), !dbg !207
  %21 = load %struct.matvar_t*, %struct.matvar_t** %6, align 8, !dbg !208
  %22 = icmp eq %struct.matvar_t* %21, null, !dbg !210
  br i1 %22, label %32, label %23, !dbg !211

; <label>:23:                                     ; preds = %4
  %24 = load i32*, i32** %7, align 8, !dbg !212
  %25 = icmp eq i32* %24, null, !dbg !214
  br i1 %25, label %32, label %26, !dbg !215

; <label>:26:                                     ; preds = %23
  %27 = load i32*, i32** %8, align 8, !dbg !216
  %28 = icmp eq i32* %27, null, !dbg !218
  br i1 %28, label %32, label %29, !dbg !219

; <label>:29:                                     ; preds = %26
  %30 = load i32*, i32** %9, align 8, !dbg !220
  %31 = icmp eq i32* %30, null, !dbg !221
  br i1 %31, label %32, label %33, !dbg !222

; <label>:32:                                     ; preds = %29, %26, %23, %4
  store %struct.matvar_t** null, %struct.matvar_t*** %5, align 8, !dbg !224
  br label %260, !dbg !224

; <label>:33:                                     ; preds = %29
  %34 = load %struct.matvar_t*, %struct.matvar_t** %6, align 8, !dbg !226
  %35 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %34, i32 0, i32 1, !dbg !228
  %36 = load i32, i32* %35, align 8, !dbg !228
  %37 = icmp sgt i32 %36, 9, !dbg !229
  br i1 %37, label %38, label %39, !dbg !230

; <label>:38:                                     ; preds = %33
  store %struct.matvar_t** null, %struct.matvar_t*** %5, align 8, !dbg !231
  br label %260, !dbg !231

; <label>:39:                                     ; preds = %33
  br label %40

; <label>:40:                                     ; preds = %39
  %41 = load %struct.matvar_t*, %struct.matvar_t** %6, align 8, !dbg !233
  %42 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %41, i32 0, i32 8, !dbg !234
  %43 = load i64*, i64** %42, align 8, !dbg !234
  %44 = getelementptr inbounds i64, i64* %43, i64 0, !dbg !233
  %45 = load i64, i64* %44, align 8, !dbg !233
  %46 = getelementptr inbounds [10 x i64], [10 x i64]* %16, i64 0, i64 0, !dbg !235
  store i64 %45, i64* %46, align 16, !dbg !236
  %47 = load i32*, i32** %9, align 8, !dbg !237
  %48 = getelementptr inbounds i32, i32* %47, i64 0, !dbg !237
  %49 = load i32, i32* %48, align 4, !dbg !237
  store i32 %49, i32* %12, align 4, !dbg !238
  %50 = load i32*, i32** %7, align 8, !dbg !239
  %51 = getelementptr inbounds i32, i32* %50, i64 0, !dbg !239
  %52 = load i32, i32* %51, align 4, !dbg !239
  store i32 %52, i32* %13, align 4, !dbg !240
  %53 = load i32*, i32** %7, align 8, !dbg !241
  %54 = getelementptr inbounds i32, i32* %53, i64 0, !dbg !241
  %55 = load i32, i32* %54, align 4, !dbg !241
  %56 = sext i32 %55 to i64, !dbg !241
  %57 = getelementptr inbounds [10 x i64], [10 x i64]* %14, i64 0, i64 0, !dbg !242
  store i64 %56, i64* %57, align 16, !dbg !243
  store i32 1, i32* %10, align 4, !dbg !244
  br label %58, !dbg !246

; <label>:58:                                     ; preds = %113, %40
  %59 = load i32, i32* %10, align 4, !dbg !247
  %60 = load %struct.matvar_t*, %struct.matvar_t** %6, align 8, !dbg !250
  %61 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %60, i32 0, i32 1, !dbg !251
  %62 = load i32, i32* %61, align 8, !dbg !251
  %63 = icmp slt i32 %59, %62, !dbg !252
  br i1 %63, label %64, label %116, !dbg !253

; <label>:64:                                     ; preds = %58
  %65 = load i32, i32* %10, align 4, !dbg !254
  %66 = sext i32 %65 to i64, !dbg !256
  %67 = load i32*, i32** %7, align 8, !dbg !256
  %68 = getelementptr inbounds i32, i32* %67, i64 %66, !dbg !256
  %69 = load i32, i32* %68, align 4, !dbg !256
  %70 = sext i32 %69 to i64, !dbg !256
  %71 = load i32, i32* %10, align 4, !dbg !257
  %72 = sext i32 %71 to i64, !dbg !258
  %73 = getelementptr inbounds [10 x i64], [10 x i64]* %14, i64 0, i64 %72, !dbg !258
  store i64 %70, i64* %73, align 8, !dbg !259
  %74 = load i32, i32* %10, align 4, !dbg !260
  %75 = sub nsw i32 %74, 1, !dbg !261
  %76 = sext i32 %75 to i64, !dbg !262
  %77 = getelementptr inbounds [10 x i64], [10 x i64]* %16, i64 0, i64 %76, !dbg !262
  %78 = load i64, i64* %77, align 8, !dbg !262
  %79 = load i32, i32* %10, align 4, !dbg !263
  %80 = sext i32 %79 to i64, !dbg !264
  %81 = load %struct.matvar_t*, %struct.matvar_t** %6, align 8, !dbg !264
  %82 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %81, i32 0, i32 8, !dbg !265
  %83 = load i64*, i64** %82, align 8, !dbg !265
  %84 = getelementptr inbounds i64, i64* %83, i64 %80, !dbg !264
  %85 = load i64, i64* %84, align 8, !dbg !264
  %86 = mul i64 %78, %85, !dbg !266
  %87 = load i32, i32* %10, align 4, !dbg !267
  %88 = sext i32 %87 to i64, !dbg !268
  %89 = getelementptr inbounds [10 x i64], [10 x i64]* %16, i64 0, i64 %88, !dbg !268
  store i64 %86, i64* %89, align 8, !dbg !269
  %90 = load i32, i32* %10, align 4, !dbg !270
  %91 = sext i32 %90 to i64, !dbg !271
  %92 = load i32*, i32** %9, align 8, !dbg !271
  %93 = getelementptr inbounds i32, i32* %92, i64 %91, !dbg !271
  %94 = load i32, i32* %93, align 4, !dbg !271
  %95 = load i32, i32* %12, align 4, !dbg !272
  %96 = mul nsw i32 %95, %94, !dbg !272
  store i32 %96, i32* %12, align 4, !dbg !272
  %97 = load i32, i32* %10, align 4, !dbg !273
  %98 = sext i32 %97 to i64, !dbg !274
  %99 = load i32*, i32** %7, align 8, !dbg !274
  %100 = getelementptr inbounds i32, i32* %99, i64 %98, !dbg !274
  %101 = load i32, i32* %100, align 4, !dbg !274
  %102 = sext i32 %101 to i64, !dbg !274
  %103 = load i32, i32* %10, align 4, !dbg !275
  %104 = sub nsw i32 %103, 1, !dbg !276
  %105 = sext i32 %104 to i64, !dbg !277
  %106 = getelementptr inbounds [10 x i64], [10 x i64]* %16, i64 0, i64 %105, !dbg !277
  %107 = load i64, i64* %106, align 8, !dbg !277
  %108 = mul i64 %102, %107, !dbg !278
  %109 = load i32, i32* %13, align 4, !dbg !279
  %110 = sext i32 %109 to i64, !dbg !279
  %111 = add i64 %110, %108, !dbg !279
  %112 = trunc i64 %111 to i32, !dbg !279
  store i32 %112, i32* %13, align 4, !dbg !279
  br label %113, !dbg !280

; <label>:113:                                    ; preds = %64
  %114 = load i32, i32* %10, align 4, !dbg !281
  %115 = add nsw i32 %114, 1, !dbg !281
  store i32 %115, i32* %10, align 4, !dbg !281
  br label %58, !dbg !283, !llvm.loop !284

; <label>:116:                                    ; preds = %58
  %117 = load i32, i32* %12, align 4, !dbg !286
  %118 = sext i32 %117 to i64, !dbg !286
  %119 = mul i64 %118, 8, !dbg !287
  %120 = call noalias i8* @malloc(i64 %119) #5, !dbg !288
  %121 = bitcast i8* %120 to %struct.matvar_t**, !dbg !289
  store %struct.matvar_t** %121, %struct.matvar_t*** %17, align 8, !dbg !290
  store i32 0, i32* %10, align 4, !dbg !291
  br label %122, !dbg !293

; <label>:122:                                    ; preds = %252, %116
  %123 = load i32, i32* %10, align 4, !dbg !294
  %124 = load i32, i32* %12, align 4, !dbg !297
  %125 = icmp slt i32 %123, %124, !dbg !298
  br i1 %125, label %126, label %258, !dbg !299

; <label>:126:                                    ; preds = %122
  store i32 0, i32* %11, align 4, !dbg !300
  br label %127, !dbg !303

; <label>:127:                                    ; preds = %153, %126
  %128 = load i32, i32* %11, align 4, !dbg !304
  %129 = load i32*, i32** %9, align 8, !dbg !307
  %130 = getelementptr inbounds i32, i32* %129, i64 0, !dbg !307
  %131 = load i32, i32* %130, align 4, !dbg !307
  %132 = icmp slt i32 %128, %131, !dbg !308
  br i1 %132, label %133, label %156, !dbg !309

; <label>:133:                                    ; preds = %127
  %134 = load %struct.matvar_t*, %struct.matvar_t** %6, align 8, !dbg !310
  %135 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %134, i32 0, i32 10, !dbg !312
  %136 = load i8*, i8** %135, align 8, !dbg !312
  %137 = bitcast i8* %136 to %struct.matvar_t**, !dbg !313
  %138 = load i32, i32* %13, align 4, !dbg !314
  %139 = sext i32 %138 to i64, !dbg !315
  %140 = getelementptr inbounds %struct.matvar_t*, %struct.matvar_t** %137, i64 %139, !dbg !315
  %141 = load %struct.matvar_t*, %struct.matvar_t** %140, align 8, !dbg !316
  %142 = load i32, i32* %10, align 4, !dbg !317
  %143 = load i32, i32* %11, align 4, !dbg !318
  %144 = add nsw i32 %142, %143, !dbg !319
  %145 = sext i32 %144 to i64, !dbg !320
  %146 = load %struct.matvar_t**, %struct.matvar_t*** %17, align 8, !dbg !320
  %147 = getelementptr inbounds %struct.matvar_t*, %struct.matvar_t** %146, i64 %145, !dbg !320
  store %struct.matvar_t* %141, %struct.matvar_t** %147, align 8, !dbg !321
  %148 = load i32*, i32** %8, align 8, !dbg !322
  %149 = getelementptr inbounds i32, i32* %148, i64 0, !dbg !322
  %150 = load i32, i32* %149, align 4, !dbg !322
  %151 = load i32, i32* %13, align 4, !dbg !323
  %152 = add nsw i32 %151, %150, !dbg !323
  store i32 %152, i32* %13, align 4, !dbg !323
  br label %153, !dbg !324

; <label>:153:                                    ; preds = %133
  %154 = load i32, i32* %11, align 4, !dbg !325
  %155 = add nsw i32 %154, 1, !dbg !325
  store i32 %155, i32* %11, align 4, !dbg !325
  br label %127, !dbg !327, !llvm.loop !328

; <label>:156:                                    ; preds = %127
  %157 = load i32*, i32** %7, align 8, !dbg !330
  %158 = getelementptr inbounds i32, i32* %157, i64 0, !dbg !330
  %159 = load i32, i32* %158, align 4, !dbg !330
  %160 = sext i32 %159 to i64, !dbg !330
  %161 = getelementptr inbounds [10 x i64], [10 x i64]* %14, i64 0, i64 0, !dbg !331
  store i64 %160, i64* %161, align 16, !dbg !332
  %162 = getelementptr inbounds [10 x i64], [10 x i64]* %14, i64 0, i64 0, !dbg !333
  %163 = load i64, i64* %162, align 16, !dbg !333
  %164 = trunc i64 %163 to i32, !dbg !333
  store i32 %164, i32* %13, align 4, !dbg !334
  %165 = getelementptr inbounds [10 x i64], [10 x i64]* %15, i64 0, i64 1, !dbg !335
  %166 = load i64, i64* %165, align 8, !dbg !336
  %167 = add i64 %166, 1, !dbg !336
  store i64 %167, i64* %165, align 8, !dbg !336
  %168 = load i32*, i32** %8, align 8, !dbg !337
  %169 = getelementptr inbounds i32, i32* %168, i64 1, !dbg !337
  %170 = load i32, i32* %169, align 4, !dbg !337
  %171 = sext i32 %170 to i64, !dbg !337
  %172 = getelementptr inbounds [10 x i64], [10 x i64]* %14, i64 0, i64 1, !dbg !338
  %173 = load i64, i64* %172, align 8, !dbg !339
  %174 = add i64 %173, %171, !dbg !339
  store i64 %174, i64* %172, align 8, !dbg !339
  store i32 1, i32* %11, align 4, !dbg !340
  br label %175, !dbg !342

; <label>:175:                                    ; preds = %248, %156
  %176 = load i32, i32* %11, align 4, !dbg !343
  %177 = load %struct.matvar_t*, %struct.matvar_t** %6, align 8, !dbg !346
  %178 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %177, i32 0, i32 1, !dbg !347
  %179 = load i32, i32* %178, align 8, !dbg !347
  %180 = icmp slt i32 %176, %179, !dbg !348
  br i1 %180, label %181, label %251, !dbg !349

; <label>:181:                                    ; preds = %175
  %182 = load i32, i32* %11, align 4, !dbg !350
  %183 = sext i32 %182 to i64, !dbg !353
  %184 = getelementptr inbounds [10 x i64], [10 x i64]* %15, i64 0, i64 %183, !dbg !353
  %185 = load i64, i64* %184, align 8, !dbg !353
  %186 = load i32, i32* %11, align 4, !dbg !354
  %187 = sext i32 %186 to i64, !dbg !355
  %188 = load i32*, i32** %9, align 8, !dbg !355
  %189 = getelementptr inbounds i32, i32* %188, i64 %187, !dbg !355
  %190 = load i32, i32* %189, align 4, !dbg !355
  %191 = sext i32 %190 to i64, !dbg !355
  %192 = icmp eq i64 %185, %191, !dbg !356
  br i1 %192, label %193, label %233, !dbg !357

; <label>:193:                                    ; preds = %181
  %194 = load i32, i32* %11, align 4, !dbg !358
  %195 = sext i32 %194 to i64, !dbg !360
  %196 = getelementptr inbounds [10 x i64], [10 x i64]* %15, i64 0, i64 %195, !dbg !360
  store i64 0, i64* %196, align 8, !dbg !361
  %197 = load i32, i32* %11, align 4, !dbg !362
  %198 = sext i32 %197 to i64, !dbg !363
  %199 = load i32*, i32** %7, align 8, !dbg !363
  %200 = getelementptr inbounds i32, i32* %199, i64 %198, !dbg !363
  %201 = load i32, i32* %200, align 4, !dbg !363
  %202 = sext i32 %201 to i64, !dbg !363
  %203 = load i32, i32* %11, align 4, !dbg !364
  %204 = sext i32 %203 to i64, !dbg !365
  %205 = getelementptr inbounds [10 x i64], [10 x i64]* %14, i64 0, i64 %204, !dbg !365
  store i64 %202, i64* %205, align 8, !dbg !366
  %206 = load i32, i32* %11, align 4, !dbg !367
  %207 = load %struct.matvar_t*, %struct.matvar_t** %6, align 8, !dbg !369
  %208 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %207, i32 0, i32 1, !dbg !370
  %209 = load i32, i32* %208, align 8, !dbg !370
  %210 = sub nsw i32 %209, 1, !dbg !371
  %211 = icmp slt i32 %206, %210, !dbg !372
  br i1 %211, label %212, label %232, !dbg !373

; <label>:212:                                    ; preds = %193
  %213 = load i32, i32* %11, align 4, !dbg !374
  %214 = add nsw i32 %213, 1, !dbg !376
  %215 = sext i32 %214 to i64, !dbg !377
  %216 = getelementptr inbounds [10 x i64], [10 x i64]* %15, i64 0, i64 %215, !dbg !377
  %217 = load i64, i64* %216, align 8, !dbg !378
  %218 = add i64 %217, 1, !dbg !378
  store i64 %218, i64* %216, align 8, !dbg !378
  %219 = load i32, i32* %11, align 4, !dbg !379
  %220 = add nsw i32 %219, 1, !dbg !380
  %221 = sext i32 %220 to i64, !dbg !381
  %222 = load i32*, i32** %8, align 8, !dbg !381
  %223 = getelementptr inbounds i32, i32* %222, i64 %221, !dbg !381
  %224 = load i32, i32* %223, align 4, !dbg !381
  %225 = sext i32 %224 to i64, !dbg !381
  %226 = load i32, i32* %11, align 4, !dbg !382
  %227 = add nsw i32 %226, 1, !dbg !383
  %228 = sext i32 %227 to i64, !dbg !384
  %229 = getelementptr inbounds [10 x i64], [10 x i64]* %14, i64 0, i64 %228, !dbg !384
  %230 = load i64, i64* %229, align 8, !dbg !385
  %231 = add i64 %230, %225, !dbg !385
  store i64 %231, i64* %229, align 8, !dbg !385
  br label %232, !dbg !386

; <label>:232:                                    ; preds = %212, %193
  br label %233, !dbg !387

; <label>:233:                                    ; preds = %232, %181
  %234 = load i32, i32* %11, align 4, !dbg !388
  %235 = sext i32 %234 to i64, !dbg !389
  %236 = getelementptr inbounds [10 x i64], [10 x i64]* %14, i64 0, i64 %235, !dbg !389
  %237 = load i64, i64* %236, align 8, !dbg !389
  %238 = load i32, i32* %11, align 4, !dbg !390
  %239 = sub nsw i32 %238, 1, !dbg !391
  %240 = sext i32 %239 to i64, !dbg !392
  %241 = getelementptr inbounds [10 x i64], [10 x i64]* %16, i64 0, i64 %240, !dbg !392
  %242 = load i64, i64* %241, align 8, !dbg !392
  %243 = mul i64 %237, %242, !dbg !393
  %244 = load i32, i32* %13, align 4, !dbg !394
  %245 = sext i32 %244 to i64, !dbg !394
  %246 = add i64 %245, %243, !dbg !394
  %247 = trunc i64 %246 to i32, !dbg !394
  store i32 %247, i32* %13, align 4, !dbg !394
  br label %248, !dbg !395

; <label>:248:                                    ; preds = %233
  %249 = load i32, i32* %11, align 4, !dbg !396
  %250 = add nsw i32 %249, 1, !dbg !396
  store i32 %250, i32* %11, align 4, !dbg !396
  br label %175, !dbg !398, !llvm.loop !399

; <label>:251:                                    ; preds = %175
  br label %252, !dbg !401

; <label>:252:                                    ; preds = %251
  %253 = load i32*, i32** %9, align 8, !dbg !402
  %254 = getelementptr inbounds i32, i32* %253, i64 0, !dbg !402
  %255 = load i32, i32* %254, align 4, !dbg !402
  %256 = load i32, i32* %10, align 4, !dbg !404
  %257 = add nsw i32 %256, %255, !dbg !404
  store i32 %257, i32* %10, align 4, !dbg !404
  br label %122, !dbg !405, !llvm.loop !406

; <label>:258:                                    ; preds = %122
  %259 = load %struct.matvar_t**, %struct.matvar_t*** %17, align 8, !dbg !408
  store %struct.matvar_t** %259, %struct.matvar_t*** %5, align 8, !dbg !409
  br label %260, !dbg !409

; <label>:260:                                    ; preds = %258, %38, %32
  %261 = load %struct.matvar_t**, %struct.matvar_t*** %5, align 8, !dbg !410
  ret %struct.matvar_t** %261, !dbg !410
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

; Function Attrs: nounwind uwtable
define %struct.matvar_t** @Mat_VarGetCellsLinear(%struct.matvar_t*, i32, i32, i32) #0 !dbg !411 {
  %5 = alloca %struct.matvar_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.matvar_t**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.matvar_t* %0, %struct.matvar_t** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.matvar_t** %5, metadata !414, metadata !138), !dbg !415
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !416, metadata !138), !dbg !417
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !418, metadata !138), !dbg !419
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !420, metadata !138), !dbg !421
  call void @llvm.dbg.declare(metadata %struct.matvar_t*** %9, metadata !422, metadata !138), !dbg !423
  store %struct.matvar_t** null, %struct.matvar_t*** %9, align 8, !dbg !423
  %12 = load %struct.matvar_t*, %struct.matvar_t** %5, align 8, !dbg !424
  %13 = icmp ne %struct.matvar_t* %12, null, !dbg !426
  br i1 %13, label %14, label %45, !dbg !427

; <label>:14:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !428, metadata !138), !dbg !430
  call void @llvm.dbg.declare(metadata i32* %11, metadata !431, metadata !138), !dbg !432
  %15 = load i32, i32* %8, align 4, !dbg !433
  %16 = sext i32 %15 to i64, !dbg !433
  %17 = mul i64 %16, 8, !dbg !434
  %18 = call noalias i8* @malloc(i64 %17) #5, !dbg !435
  %19 = bitcast i8* %18 to %struct.matvar_t**, !dbg !436
  store %struct.matvar_t** %19, %struct.matvar_t*** %9, align 8, !dbg !437
  %20 = load i32, i32* %6, align 4, !dbg !438
  store i32 %20, i32* %11, align 4, !dbg !439
  store i32 0, i32* %10, align 4, !dbg !440
  br label %21, !dbg !442

; <label>:21:                                     ; preds = %41, %14
  %22 = load i32, i32* %10, align 4, !dbg !443
  %23 = load i32, i32* %8, align 4, !dbg !446
  %24 = icmp slt i32 %22, %23, !dbg !447
  br i1 %24, label %25, label %44, !dbg !448

; <label>:25:                                     ; preds = %21
  %26 = load %struct.matvar_t*, %struct.matvar_t** %5, align 8, !dbg !449
  %27 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %26, i32 0, i32 10, !dbg !451
  %28 = load i8*, i8** %27, align 8, !dbg !451
  %29 = bitcast i8* %28 to %struct.matvar_t**, !dbg !452
  %30 = load i32, i32* %11, align 4, !dbg !453
  %31 = sext i32 %30 to i64, !dbg !454
  %32 = getelementptr inbounds %struct.matvar_t*, %struct.matvar_t** %29, i64 %31, !dbg !454
  %33 = load %struct.matvar_t*, %struct.matvar_t** %32, align 8, !dbg !455
  %34 = load i32, i32* %10, align 4, !dbg !456
  %35 = sext i32 %34 to i64, !dbg !457
  %36 = load %struct.matvar_t**, %struct.matvar_t*** %9, align 8, !dbg !457
  %37 = getelementptr inbounds %struct.matvar_t*, %struct.matvar_t** %36, i64 %35, !dbg !457
  store %struct.matvar_t* %33, %struct.matvar_t** %37, align 8, !dbg !458
  %38 = load i32, i32* %7, align 4, !dbg !459
  %39 = load i32, i32* %11, align 4, !dbg !460
  %40 = add nsw i32 %39, %38, !dbg !460
  store i32 %40, i32* %11, align 4, !dbg !460
  br label %41, !dbg !461

; <label>:41:                                     ; preds = %25
  %42 = load i32, i32* %10, align 4, !dbg !462
  %43 = add nsw i32 %42, 1, !dbg !462
  store i32 %43, i32* %10, align 4, !dbg !462
  br label %21, !dbg !464, !llvm.loop !465

; <label>:44:                                     ; preds = %21
  br label %45, !dbg !467

; <label>:45:                                     ; preds = %44, %4
  %46 = load %struct.matvar_t**, %struct.matvar_t*** %9, align 8, !dbg !468
  ret %struct.matvar_t** %46, !dbg !469
}

; Function Attrs: nounwind uwtable
define %struct.matvar_t* @Mat_VarSetCell(%struct.matvar_t*, i32, %struct.matvar_t*) #0 !dbg !470 {
  %4 = alloca %struct.matvar_t*, align 8
  %5 = alloca %struct.matvar_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.matvar_t*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.matvar_t**, align 8
  %10 = alloca %struct.matvar_t*, align 8
  store %struct.matvar_t* %0, %struct.matvar_t** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.matvar_t** %5, metadata !473, metadata !138), !dbg !474
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !475, metadata !138), !dbg !476
  store %struct.matvar_t* %2, %struct.matvar_t** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.matvar_t** %7, metadata !477, metadata !138), !dbg !478
  call void @llvm.dbg.declare(metadata i64* %8, metadata !479, metadata !138), !dbg !480
  store i64 1, i64* %8, align 8, !dbg !480
  call void @llvm.dbg.declare(metadata %struct.matvar_t*** %9, metadata !481, metadata !138), !dbg !482
  call void @llvm.dbg.declare(metadata %struct.matvar_t** %10, metadata !483, metadata !138), !dbg !484
  store %struct.matvar_t* null, %struct.matvar_t** %10, align 8, !dbg !484
  %11 = load %struct.matvar_t*, %struct.matvar_t** %5, align 8, !dbg !485
  %12 = icmp eq %struct.matvar_t* %11, null, !dbg !487
  br i1 %12, label %18, label %13, !dbg !488

; <label>:13:                                     ; preds = %3
  %14 = load %struct.matvar_t*, %struct.matvar_t** %5, align 8, !dbg !489
  %15 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %14, i32 0, i32 1, !dbg !491
  %16 = load i32, i32* %15, align 8, !dbg !491
  %17 = icmp slt i32 %16, 1, !dbg !492
  br i1 %17, label %18, label %19, !dbg !493

; <label>:18:                                     ; preds = %13, %3
  store %struct.matvar_t* null, %struct.matvar_t** %4, align 8, !dbg !494
  br label %46, !dbg !494

; <label>:19:                                     ; preds = %13
  %20 = load %struct.matvar_t*, %struct.matvar_t** %5, align 8, !dbg !495
  %21 = call i32 @SafeMulDims(%struct.matvar_t* %20, i64* %8), !dbg !496
  %22 = load %struct.matvar_t*, %struct.matvar_t** %5, align 8, !dbg !497
  %23 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %22, i32 0, i32 10, !dbg !498
  %24 = load i8*, i8** %23, align 8, !dbg !498
  %25 = bitcast i8* %24 to %struct.matvar_t**, !dbg !499
  store %struct.matvar_t** %25, %struct.matvar_t*** %9, align 8, !dbg !500
  %26 = load i32, i32* %6, align 4, !dbg !501
  %27 = icmp sle i32 0, %26, !dbg !503
  br i1 %27, label %28, label %44, !dbg !504

; <label>:28:                                     ; preds = %19
  %29 = load i32, i32* %6, align 4, !dbg !505
  %30 = sext i32 %29 to i64, !dbg !505
  %31 = load i64, i64* %8, align 8, !dbg !507
  %32 = icmp ult i64 %30, %31, !dbg !508
  br i1 %32, label %33, label %44, !dbg !509

; <label>:33:                                     ; preds = %28
  %34 = load i32, i32* %6, align 4, !dbg !510
  %35 = sext i32 %34 to i64, !dbg !512
  %36 = load %struct.matvar_t**, %struct.matvar_t*** %9, align 8, !dbg !512
  %37 = getelementptr inbounds %struct.matvar_t*, %struct.matvar_t** %36, i64 %35, !dbg !512
  %38 = load %struct.matvar_t*, %struct.matvar_t** %37, align 8, !dbg !512
  store %struct.matvar_t* %38, %struct.matvar_t** %10, align 8, !dbg !513
  %39 = load %struct.matvar_t*, %struct.matvar_t** %7, align 8, !dbg !514
  %40 = load i32, i32* %6, align 4, !dbg !515
  %41 = sext i32 %40 to i64, !dbg !516
  %42 = load %struct.matvar_t**, %struct.matvar_t*** %9, align 8, !dbg !516
  %43 = getelementptr inbounds %struct.matvar_t*, %struct.matvar_t** %42, i64 %41, !dbg !516
  store %struct.matvar_t* %39, %struct.matvar_t** %43, align 8, !dbg !517
  br label %44, !dbg !518

; <label>:44:                                     ; preds = %33, %28, %19
  %45 = load %struct.matvar_t*, %struct.matvar_t** %10, align 8, !dbg !519
  store %struct.matvar_t* %45, %struct.matvar_t** %4, align 8, !dbg !520
  br label %46, !dbg !520

; <label>:46:                                     ; preds = %44, %18
  %47 = load %struct.matvar_t*, %struct.matvar_t** %4, align 8, !dbg !521
  ret %struct.matvar_t* %47, !dbg !521
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!129, !130}
!llvm.ident = !{!131}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !51)
!1 = !DIFile(filename: "[inter]src--.libs--matvar_cell.o.i", directory: "/home/lichi/Desktop/matio/[lib]src--.libs--libmatio.so.9.1.0")
!2 = !{!3, !27, !47}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "matio_types", file: !4, line: 77, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "matio.h", directory: "/home/lichi/Desktop/matio/[lib]src--.libs--libmatio.so.9.1.0")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26}
!6 = !DIEnumerator(name: "MAT_T_UNKNOWN", value: 0)
!7 = !DIEnumerator(name: "MAT_T_INT8", value: 1)
!8 = !DIEnumerator(name: "MAT_T_UINT8", value: 2)
!9 = !DIEnumerator(name: "MAT_T_INT16", value: 3)
!10 = !DIEnumerator(name: "MAT_T_UINT16", value: 4)
!11 = !DIEnumerator(name: "MAT_T_INT32", value: 5)
!12 = !DIEnumerator(name: "MAT_T_UINT32", value: 6)
!13 = !DIEnumerator(name: "MAT_T_SINGLE", value: 7)
!14 = !DIEnumerator(name: "MAT_T_DOUBLE", value: 9)
!15 = !DIEnumerator(name: "MAT_T_INT64", value: 12)
!16 = !DIEnumerator(name: "MAT_T_UINT64", value: 13)
!17 = !DIEnumerator(name: "MAT_T_MATRIX", value: 14)
!18 = !DIEnumerator(name: "MAT_T_COMPRESSED", value: 15)
!19 = !DIEnumerator(name: "MAT_T_UTF8", value: 16)
!20 = !DIEnumerator(name: "MAT_T_UTF16", value: 17)
!21 = !DIEnumerator(name: "MAT_T_UTF32", value: 18)
!22 = !DIEnumerator(name: "MAT_T_STRING", value: 20)
!23 = !DIEnumerator(name: "MAT_T_CELL", value: 21)
!24 = !DIEnumerator(name: "MAT_T_STRUCT", value: 22)
!25 = !DIEnumerator(name: "MAT_T_ARRAY", value: 23)
!26 = !DIEnumerator(name: "MAT_T_FUNCTION", value: 24)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "matio_classes", file: !4, line: 107, size: 32, align: 32, elements: !28)
!28 = !{!29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46}
!29 = !DIEnumerator(name: "MAT_C_EMPTY", value: 0)
!30 = !DIEnumerator(name: "MAT_C_CELL", value: 1)
!31 = !DIEnumerator(name: "MAT_C_STRUCT", value: 2)
!32 = !DIEnumerator(name: "MAT_C_OBJECT", value: 3)
!33 = !DIEnumerator(name: "MAT_C_CHAR", value: 4)
!34 = !DIEnumerator(name: "MAT_C_SPARSE", value: 5)
!35 = !DIEnumerator(name: "MAT_C_DOUBLE", value: 6)
!36 = !DIEnumerator(name: "MAT_C_SINGLE", value: 7)
!37 = !DIEnumerator(name: "MAT_C_INT8", value: 8)
!38 = !DIEnumerator(name: "MAT_C_UINT8", value: 9)
!39 = !DIEnumerator(name: "MAT_C_INT16", value: 10)
!40 = !DIEnumerator(name: "MAT_C_UINT16", value: 11)
!41 = !DIEnumerator(name: "MAT_C_INT32", value: 12)
!42 = !DIEnumerator(name: "MAT_C_UINT32", value: 13)
!43 = !DIEnumerator(name: "MAT_C_INT64", value: 14)
!44 = !DIEnumerator(name: "MAT_C_UINT64", value: 15)
!45 = !DIEnumerator(name: "MAT_C_FUNCTION", value: 16)
!46 = !DIEnumerator(name: "MAT_C_OPAQUE", value: 17)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "matio_compression", file: !4, line: 145, size: 32, align: 32, elements: !48)
!48 = !{!49, !50}
!49 = !DIEnumerator(name: "MAT_COMPRESSION_NONE", value: 0)
!50 = !DIEnumerator(name: "MAT_COMPRESSION_ZLIB", value: 1)
!51 = !{!52, !53}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "matvar_t", file: !4, line: 200, baseType: !56)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "matvar_t", file: !4, line: 185, size: 640, align: 64, elements: !57)
!57 = !{!58, !62, !64, !65, !66, !67, !68, !69, !70, !72, !75, !76, !77, !78}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !56, file: !4, line: 186, baseType: !59, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !60, line: 216, baseType: !61)
!60 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/matio/[lib]src--.libs--libmatio.so.9.1.0")
!61 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "rank", scope: !56, file: !4, line: 187, baseType: !63, size: 32, align: 32, offset: 64)
!63 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "data_type", scope: !56, file: !4, line: 188, baseType: !3, size: 32, align: 32, offset: 96)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "data_size", scope: !56, file: !4, line: 189, baseType: !63, size: 32, align: 32, offset: 128)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "class_type", scope: !56, file: !4, line: 190, baseType: !27, size: 32, align: 32, offset: 160)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "isComplex", scope: !56, file: !4, line: 191, baseType: !63, size: 32, align: 32, offset: 192)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "isGlobal", scope: !56, file: !4, line: 192, baseType: !63, size: 32, align: 32, offset: 224)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "isLogical", scope: !56, file: !4, line: 193, baseType: !63, size: 32, align: 32, offset: 256)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "dims", scope: !56, file: !4, line: 194, baseType: !71, size: 64, align: 64, offset: 320)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !56, file: !4, line: 195, baseType: !73, size: 64, align: 64, offset: 384)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!74 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !56, file: !4, line: 196, baseType: !52, size: 64, align: 64, offset: 448)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "mem_conserve", scope: !56, file: !4, line: 197, baseType: !63, size: 32, align: 32, offset: 512)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !56, file: !4, line: 198, baseType: !47, size: 32, align: 32, offset: 544)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !56, file: !4, line: 199, baseType: !79, size: 64, align: 64, offset: 576)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "matvar_internal", file: !81, line: 80, size: 320, align: 64, elements: !82)
!81 = !DIFile(filename: "matio_private.h", directory: "/home/lichi/Desktop/matio/[lib]src--.libs--libmatio.so.9.1.0")
!82 = !{!83, !85, !87, !89, !128}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "datapos", scope: !80, file: !81, line: 86, baseType: !84, size: 64, align: 64)
!84 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "num_fields", scope: !80, file: !81, line: 87, baseType: !86, size: 32, align: 32, offset: 64)
!86 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "fieldnames", scope: !80, file: !81, line: 88, baseType: !88, size: 64, align: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !80, file: !81, line: 90, baseType: !90, size: 64, align: 64, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "z_streamp", file: !91, line: 108, baseType: !92)
!91 = !DIFile(filename: "/usr/local/include/zlib.h", directory: "/home/lichi/Desktop/matio/[lib]src--.libs--libmatio.so.9.1.0")
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64, align: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "z_stream", file: !91, line: 106, baseType: !94)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_stream_s", file: !91, line: 86, size: 896, align: 64, elements: !95)
!95 = !{!96, !102, !104, !106, !107, !108, !109, !110, !113, !119, !124, !125, !126, !127}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !94, file: !91, line: 87, baseType: !97, size: 64, align: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bytef", file: !99, line: 400, baseType: !100)
!99 = !DIFile(filename: "/usr/local/include/zconf.h", directory: "/home/lichi/Desktop/matio/[lib]src--.libs--libmatio.so.9.1.0")
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "Byte", file: !99, line: 391, baseType: !101)
!101 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !94, file: !91, line: 88, baseType: !103, size: 32, align: 32, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "uInt", file: !99, line: 393, baseType: !86)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !94, file: !91, line: 89, baseType: !105, size: 64, align: 64, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "uLong", file: !99, line: 394, baseType: !61)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !94, file: !91, line: 91, baseType: !97, size: 64, align: 64, offset: 192)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !94, file: !91, line: 92, baseType: !103, size: 32, align: 32, offset: 256)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !94, file: !91, line: 93, baseType: !105, size: 64, align: 64, offset: 320)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !94, file: !91, line: 95, baseType: !73, size: 64, align: 64, offset: 384)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !94, file: !91, line: 96, baseType: !111, size: 64, align: 64, offset: 448)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!112 = !DICompositeType(tag: DW_TAG_structure_type, name: "internal_state", file: !91, line: 84, flags: DIFlagFwdDecl)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "zalloc", scope: !94, file: !91, line: 98, baseType: !114, size: 64, align: 64, offset: 512)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "alloc_func", file: !91, line: 81, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!118, !118, !103, !103}
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "voidpf", file: !99, line: 409, baseType: !52)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "zfree", scope: !94, file: !91, line: 99, baseType: !120, size: 64, align: 64, offset: 576)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "free_func", file: !91, line: 82, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{null, !118, !118}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !94, file: !91, line: 100, baseType: !118, size: 64, align: 64, offset: 640)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "data_type", scope: !94, file: !91, line: 102, baseType: !63, size: 32, align: 32, offset: 704)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "adler", scope: !94, file: !91, line: 104, baseType: !105, size: 64, align: 64, offset: 768)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !94, file: !91, line: 105, baseType: !105, size: 64, align: 64, offset: 832)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !80, file: !81, line: 91, baseType: !52, size: 64, align: 64, offset: 256)
!129 = !{i32 2, !"Dwarf Version", i32 4}
!130 = !{i32 2, !"Debug Info Version", i32 3}
!131 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!132 = distinct !DISubprogram(name: "Mat_VarGetCell", scope: !133, file: !133, line: 41, type: !134, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !136)
!133 = !DIFile(filename: "matvar_cell.c", directory: "/home/lichi/Desktop/matio/[lib]src--.libs--libmatio.so.9.1.0")
!134 = !DISubroutineType(types: !135)
!135 = !{!54, !54, !63}
!136 = !{}
!137 = !DILocalVariable(name: "matvar", arg: 1, scope: !132, file: !133, line: 41, type: !54)
!138 = !DIExpression()
!139 = !DILocation(line: 41, column: 26, scope: !132)
!140 = !DILocalVariable(name: "index", arg: 2, scope: !132, file: !133, line: 41, type: !63)
!141 = !DILocation(line: 41, column: 37, scope: !132)
!142 = !DILocalVariable(name: "nelems", scope: !132, file: !133, line: 43, type: !59)
!143 = !DILocation(line: 43, column: 12, scope: !132)
!144 = !DILocalVariable(name: "cell", scope: !132, file: !133, line: 44, type: !54)
!145 = !DILocation(line: 44, column: 15, scope: !132)
!146 = !DILocation(line: 46, column: 10, scope: !147)
!147 = distinct !DILexicalBlock(scope: !132, file: !133, line: 46, column: 10)
!148 = !DILocation(line: 46, column: 17, scope: !147)
!149 = !DILocation(line: 46, column: 10, scope: !132)
!150 = !DILocation(line: 47, column: 9, scope: !147)
!151 = !DILocation(line: 49, column: 17, scope: !132)
!152 = !DILocation(line: 49, column: 5, scope: !132)
!153 = !DILocation(line: 51, column: 15, scope: !154)
!154 = distinct !DILexicalBlock(scope: !132, file: !133, line: 51, column: 10)
!155 = !DILocation(line: 51, column: 12, scope: !154)
!156 = !DILocation(line: 51, column: 21, scope: !154)
!157 = !DILocation(line: 51, column: 24, scope: !158)
!158 = !DILexicalBlockFile(scope: !154, file: !133, discriminator: 1)
!159 = !DILocation(line: 51, column: 32, scope: !158)
!160 = !DILocation(line: 51, column: 30, scope: !158)
!161 = !DILocation(line: 51, column: 10, scope: !158)
!162 = !DILocation(line: 52, column: 31, scope: !154)
!163 = !DILocation(line: 52, column: 39, scope: !154)
!164 = !DILocation(line: 52, column: 18, scope: !154)
!165 = !DILocation(line: 52, column: 46, scope: !154)
!166 = !DILocation(line: 52, column: 44, scope: !154)
!167 = !DILocation(line: 52, column: 16, scope: !154)
!168 = !DILocation(line: 52, column: 14, scope: !154)
!169 = !DILocation(line: 52, column: 9, scope: !154)
!170 = !DILocation(line: 54, column: 12, scope: !132)
!171 = !DILocation(line: 54, column: 5, scope: !132)
!172 = !DILocation(line: 55, column: 1, scope: !132)
!173 = distinct !DISubprogram(name: "Mat_VarGetCells", scope: !133, file: !133, line: 77, type: !174, isLocal: false, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !136)
!174 = !DISubroutineType(types: !175)
!175 = !{!53, !54, !176, !176, !176}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!177 = !DILocalVariable(name: "matvar", arg: 1, scope: !173, file: !133, line: 77, type: !54)
!178 = !DILocation(line: 77, column: 27, scope: !173)
!179 = !DILocalVariable(name: "start", arg: 2, scope: !173, file: !133, line: 77, type: !176)
!180 = !DILocation(line: 77, column: 39, scope: !173)
!181 = !DILocalVariable(name: "stride", arg: 3, scope: !173, file: !133, line: 77, type: !176)
!182 = !DILocation(line: 77, column: 50, scope: !173)
!183 = !DILocalVariable(name: "edge", arg: 4, scope: !173, file: !133, line: 77, type: !176)
!184 = !DILocation(line: 77, column: 62, scope: !173)
!185 = !DILocalVariable(name: "i", scope: !173, file: !133, line: 79, type: !63)
!186 = !DILocation(line: 79, column: 9, scope: !173)
!187 = !DILocalVariable(name: "j", scope: !173, file: !133, line: 79, type: !63)
!188 = !DILocation(line: 79, column: 12, scope: !173)
!189 = !DILocalVariable(name: "N", scope: !173, file: !133, line: 79, type: !63)
!190 = !DILocation(line: 79, column: 15, scope: !173)
!191 = !DILocalVariable(name: "I", scope: !173, file: !133, line: 79, type: !63)
!192 = !DILocation(line: 79, column: 18, scope: !173)
!193 = !DILocalVariable(name: "idx", scope: !173, file: !133, line: 80, type: !194)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 640, align: 64, elements: !195)
!195 = !{!196}
!196 = !DISubrange(count: 10)
!197 = !DILocation(line: 80, column: 12, scope: !173)
!198 = !DILocalVariable(name: "cnt", scope: !173, file: !133, line: 80, type: !194)
!199 = !DILocation(line: 80, column: 28, scope: !173)
!200 = !DILocation(line: 80, column: 28, scope: !201)
!201 = !DILexicalBlockFile(scope: !173, file: !133, discriminator: 1)
!202 = !DILocalVariable(name: "dimp", scope: !173, file: !133, line: 80, type: !194)
!203 = !DILocation(line: 80, column: 44, scope: !173)
!204 = !DILocation(line: 80, column: 44, scope: !205)
!205 = !DILexicalBlockFile(scope: !173, file: !133, discriminator: 2)
!206 = !DILocalVariable(name: "cells", scope: !173, file: !133, line: 81, type: !53)
!207 = !DILocation(line: 81, column: 16, scope: !173)
!208 = !DILocation(line: 83, column: 11, scope: !209)
!209 = distinct !DILexicalBlock(scope: !173, file: !133, line: 83, column: 10)
!210 = !DILocation(line: 83, column: 18, scope: !209)
!211 = !DILocation(line: 83, column: 26, scope: !209)
!212 = !DILocation(line: 83, column: 30, scope: !213)
!213 = !DILexicalBlockFile(scope: !209, file: !133, discriminator: 1)
!214 = !DILocation(line: 83, column: 36, scope: !213)
!215 = !DILocation(line: 83, column: 45, scope: !213)
!216 = !DILocation(line: 83, column: 49, scope: !217)
!217 = !DILexicalBlockFile(scope: !209, file: !133, discriminator: 2)
!218 = !DILocation(line: 83, column: 56, scope: !217)
!219 = !DILocation(line: 83, column: 65, scope: !217)
!220 = !DILocation(line: 84, column: 10, scope: !209)
!221 = !DILocation(line: 84, column: 15, scope: !209)
!222 = !DILocation(line: 83, column: 10, scope: !223)
!223 = !DILexicalBlockFile(scope: !173, file: !133, discriminator: 3)
!224 = !DILocation(line: 85, column: 9, scope: !225)
!225 = distinct !DILexicalBlock(scope: !209, file: !133, line: 84, column: 25)
!226 = !DILocation(line: 86, column: 17, scope: !227)
!227 = distinct !DILexicalBlock(scope: !209, file: !133, line: 86, column: 17)
!228 = !DILocation(line: 86, column: 25, scope: !227)
!229 = !DILocation(line: 86, column: 30, scope: !227)
!230 = !DILocation(line: 86, column: 17, scope: !209)
!231 = !DILocation(line: 87, column: 9, scope: !232)
!232 = distinct !DILexicalBlock(scope: !227, file: !133, line: 86, column: 36)
!233 = !DILocation(line: 90, column: 15, scope: !173)
!234 = !DILocation(line: 90, column: 23, scope: !173)
!235 = !DILocation(line: 90, column: 5, scope: !173)
!236 = !DILocation(line: 90, column: 13, scope: !173)
!237 = !DILocation(line: 91, column: 9, scope: !173)
!238 = !DILocation(line: 91, column: 7, scope: !173)
!239 = !DILocation(line: 92, column: 9, scope: !173)
!240 = !DILocation(line: 92, column: 7, scope: !173)
!241 = !DILocation(line: 93, column: 14, scope: !173)
!242 = !DILocation(line: 93, column: 5, scope: !173)
!243 = !DILocation(line: 93, column: 12, scope: !173)
!244 = !DILocation(line: 94, column: 13, scope: !245)
!245 = distinct !DILexicalBlock(scope: !173, file: !133, line: 94, column: 5)
!246 = !DILocation(line: 94, column: 11, scope: !245)
!247 = !DILocation(line: 94, column: 18, scope: !248)
!248 = !DILexicalBlockFile(scope: !249, file: !133, discriminator: 1)
!249 = distinct !DILexicalBlock(scope: !245, file: !133, line: 94, column: 5)
!250 = !DILocation(line: 94, column: 22, scope: !248)
!251 = !DILocation(line: 94, column: 30, scope: !248)
!252 = !DILocation(line: 94, column: 20, scope: !248)
!253 = !DILocation(line: 94, column: 5, scope: !248)
!254 = !DILocation(line: 95, column: 24, scope: !255)
!255 = distinct !DILexicalBlock(scope: !249, file: !133, line: 94, column: 42)
!256 = !DILocation(line: 95, column: 18, scope: !255)
!257 = !DILocation(line: 95, column: 13, scope: !255)
!258 = !DILocation(line: 95, column: 9, scope: !255)
!259 = !DILocation(line: 95, column: 16, scope: !255)
!260 = !DILocation(line: 96, column: 24, scope: !255)
!261 = !DILocation(line: 96, column: 25, scope: !255)
!262 = !DILocation(line: 96, column: 19, scope: !255)
!263 = !DILocation(line: 96, column: 42, scope: !255)
!264 = !DILocation(line: 96, column: 29, scope: !255)
!265 = !DILocation(line: 96, column: 37, scope: !255)
!266 = !DILocation(line: 96, column: 28, scope: !255)
!267 = !DILocation(line: 96, column: 14, scope: !255)
!268 = !DILocation(line: 96, column: 9, scope: !255)
!269 = !DILocation(line: 96, column: 17, scope: !255)
!270 = !DILocation(line: 97, column: 19, scope: !255)
!271 = !DILocation(line: 97, column: 14, scope: !255)
!272 = !DILocation(line: 97, column: 11, scope: !255)
!273 = !DILocation(line: 98, column: 20, scope: !255)
!274 = !DILocation(line: 98, column: 14, scope: !255)
!275 = !DILocation(line: 98, column: 28, scope: !255)
!276 = !DILocation(line: 98, column: 29, scope: !255)
!277 = !DILocation(line: 98, column: 23, scope: !255)
!278 = !DILocation(line: 98, column: 22, scope: !255)
!279 = !DILocation(line: 98, column: 11, scope: !255)
!280 = !DILocation(line: 99, column: 5, scope: !255)
!281 = !DILocation(line: 94, column: 37, scope: !282)
!282 = !DILexicalBlockFile(scope: !249, file: !133, discriminator: 2)
!283 = !DILocation(line: 94, column: 5, scope: !282)
!284 = distinct !{!284, !285}
!285 = !DILocation(line: 94, column: 5, scope: !173)
!286 = !DILocation(line: 100, column: 32, scope: !173)
!287 = !DILocation(line: 100, column: 33, scope: !173)
!288 = !DILocation(line: 100, column: 25, scope: !173)
!289 = !DILocation(line: 100, column: 13, scope: !173)
!290 = !DILocation(line: 100, column: 11, scope: !173)
!291 = !DILocation(line: 101, column: 13, scope: !292)
!292 = distinct !DILexicalBlock(scope: !173, file: !133, line: 101, column: 5)
!293 = !DILocation(line: 101, column: 11, scope: !292)
!294 = !DILocation(line: 101, column: 18, scope: !295)
!295 = !DILexicalBlockFile(scope: !296, file: !133, discriminator: 1)
!296 = distinct !DILexicalBlock(scope: !292, file: !133, line: 101, column: 5)
!297 = !DILocation(line: 101, column: 22, scope: !295)
!298 = !DILocation(line: 101, column: 20, scope: !295)
!299 = !DILocation(line: 101, column: 5, scope: !295)
!300 = !DILocation(line: 102, column: 17, scope: !301)
!301 = distinct !DILexicalBlock(scope: !302, file: !133, line: 102, column: 9)
!302 = distinct !DILexicalBlock(scope: !296, file: !133, line: 101, column: 38)
!303 = !DILocation(line: 102, column: 15, scope: !301)
!304 = !DILocation(line: 102, column: 22, scope: !305)
!305 = !DILexicalBlockFile(scope: !306, file: !133, discriminator: 1)
!306 = distinct !DILexicalBlock(scope: !301, file: !133, line: 102, column: 9)
!307 = !DILocation(line: 102, column: 26, scope: !305)
!308 = !DILocation(line: 102, column: 24, scope: !305)
!309 = !DILocation(line: 102, column: 9, scope: !305)
!310 = !DILocation(line: 103, column: 41, scope: !311)
!311 = distinct !DILexicalBlock(scope: !306, file: !133, line: 102, column: 41)
!312 = !DILocation(line: 103, column: 49, scope: !311)
!313 = !DILocation(line: 103, column: 28, scope: !311)
!314 = !DILocation(line: 103, column: 56, scope: !311)
!315 = !DILocation(line: 103, column: 54, scope: !311)
!316 = !DILocation(line: 103, column: 26, scope: !311)
!317 = !DILocation(line: 103, column: 19, scope: !311)
!318 = !DILocation(line: 103, column: 21, scope: !311)
!319 = !DILocation(line: 103, column: 20, scope: !311)
!320 = !DILocation(line: 103, column: 13, scope: !311)
!321 = !DILocation(line: 103, column: 24, scope: !311)
!322 = !DILocation(line: 104, column: 18, scope: !311)
!323 = !DILocation(line: 104, column: 15, scope: !311)
!324 = !DILocation(line: 105, column: 9, scope: !311)
!325 = !DILocation(line: 102, column: 36, scope: !326)
!326 = !DILexicalBlockFile(scope: !306, file: !133, discriminator: 2)
!327 = !DILocation(line: 102, column: 9, scope: !326)
!328 = distinct !{!328, !329}
!329 = !DILocation(line: 102, column: 9, scope: !302)
!330 = !DILocation(line: 106, column: 18, scope: !302)
!331 = !DILocation(line: 106, column: 9, scope: !302)
!332 = !DILocation(line: 106, column: 16, scope: !302)
!333 = !DILocation(line: 107, column: 13, scope: !302)
!334 = !DILocation(line: 107, column: 11, scope: !302)
!335 = !DILocation(line: 108, column: 9, scope: !302)
!336 = !DILocation(line: 108, column: 15, scope: !302)
!337 = !DILocation(line: 109, column: 19, scope: !302)
!338 = !DILocation(line: 109, column: 9, scope: !302)
!339 = !DILocation(line: 109, column: 16, scope: !302)
!340 = !DILocation(line: 110, column: 17, scope: !341)
!341 = distinct !DILexicalBlock(scope: !302, file: !133, line: 110, column: 9)
!342 = !DILocation(line: 110, column: 15, scope: !341)
!343 = !DILocation(line: 110, column: 22, scope: !344)
!344 = !DILexicalBlockFile(scope: !345, file: !133, discriminator: 1)
!345 = distinct !DILexicalBlock(scope: !341, file: !133, line: 110, column: 9)
!346 = !DILocation(line: 110, column: 26, scope: !344)
!347 = !DILocation(line: 110, column: 34, scope: !344)
!348 = !DILocation(line: 110, column: 24, scope: !344)
!349 = !DILocation(line: 110, column: 9, scope: !344)
!350 = !DILocation(line: 111, column: 22, scope: !351)
!351 = distinct !DILexicalBlock(scope: !352, file: !133, line: 111, column: 18)
!352 = distinct !DILexicalBlock(scope: !345, file: !133, line: 110, column: 46)
!353 = !DILocation(line: 111, column: 18, scope: !351)
!354 = !DILocation(line: 111, column: 33, scope: !351)
!355 = !DILocation(line: 111, column: 28, scope: !351)
!356 = !DILocation(line: 111, column: 25, scope: !351)
!357 = !DILocation(line: 111, column: 18, scope: !352)
!358 = !DILocation(line: 112, column: 21, scope: !359)
!359 = distinct !DILexicalBlock(scope: !351, file: !133, line: 111, column: 38)
!360 = !DILocation(line: 112, column: 17, scope: !359)
!361 = !DILocation(line: 112, column: 24, scope: !359)
!362 = !DILocation(line: 113, column: 32, scope: !359)
!363 = !DILocation(line: 113, column: 26, scope: !359)
!364 = !DILocation(line: 113, column: 21, scope: !359)
!365 = !DILocation(line: 113, column: 17, scope: !359)
!366 = !DILocation(line: 113, column: 24, scope: !359)
!367 = !DILocation(line: 114, column: 22, scope: !368)
!368 = distinct !DILexicalBlock(scope: !359, file: !133, line: 114, column: 22)
!369 = !DILocation(line: 114, column: 26, scope: !368)
!370 = !DILocation(line: 114, column: 34, scope: !368)
!371 = !DILocation(line: 114, column: 39, scope: !368)
!372 = !DILocation(line: 114, column: 24, scope: !368)
!373 = !DILocation(line: 114, column: 22, scope: !359)
!374 = !DILocation(line: 115, column: 25, scope: !375)
!375 = distinct !DILexicalBlock(scope: !368, file: !133, line: 114, column: 45)
!376 = !DILocation(line: 115, column: 26, scope: !375)
!377 = !DILocation(line: 115, column: 21, scope: !375)
!378 = !DILocation(line: 115, column: 29, scope: !375)
!379 = !DILocation(line: 116, column: 40, scope: !375)
!380 = !DILocation(line: 116, column: 41, scope: !375)
!381 = !DILocation(line: 116, column: 33, scope: !375)
!382 = !DILocation(line: 116, column: 25, scope: !375)
!383 = !DILocation(line: 116, column: 26, scope: !375)
!384 = !DILocation(line: 116, column: 21, scope: !375)
!385 = !DILocation(line: 116, column: 30, scope: !375)
!386 = !DILocation(line: 117, column: 17, scope: !375)
!387 = !DILocation(line: 118, column: 13, scope: !359)
!388 = !DILocation(line: 119, column: 22, scope: !352)
!389 = !DILocation(line: 119, column: 18, scope: !352)
!390 = !DILocation(line: 119, column: 30, scope: !352)
!391 = !DILocation(line: 119, column: 31, scope: !352)
!392 = !DILocation(line: 119, column: 25, scope: !352)
!393 = !DILocation(line: 119, column: 24, scope: !352)
!394 = !DILocation(line: 119, column: 15, scope: !352)
!395 = !DILocation(line: 120, column: 9, scope: !352)
!396 = !DILocation(line: 110, column: 41, scope: !397)
!397 = !DILexicalBlockFile(scope: !345, file: !133, discriminator: 2)
!398 = !DILocation(line: 110, column: 9, scope: !397)
!399 = distinct !{!399, !400}
!400 = !DILocation(line: 110, column: 9, scope: !302)
!401 = !DILocation(line: 121, column: 5, scope: !302)
!402 = !DILocation(line: 101, column: 28, scope: !403)
!403 = !DILexicalBlockFile(scope: !296, file: !133, discriminator: 2)
!404 = !DILocation(line: 101, column: 26, scope: !403)
!405 = !DILocation(line: 101, column: 5, scope: !403)
!406 = distinct !{!406, !407}
!407 = !DILocation(line: 101, column: 5, scope: !173)
!408 = !DILocation(line: 122, column: 12, scope: !173)
!409 = !DILocation(line: 122, column: 5, scope: !173)
!410 = !DILocation(line: 123, column: 1, scope: !173)
!411 = distinct !DISubprogram(name: "Mat_VarGetCellsLinear", scope: !133, file: !133, line: 140, type: !412, isLocal: false, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !136)
!412 = !DISubroutineType(types: !413)
!413 = !{!53, !54, !63, !63, !63}
!414 = !DILocalVariable(name: "matvar", arg: 1, scope: !411, file: !133, line: 140, type: !54)
!415 = !DILocation(line: 140, column: 33, scope: !411)
!416 = !DILocalVariable(name: "start", arg: 2, scope: !411, file: !133, line: 140, type: !63)
!417 = !DILocation(line: 140, column: 44, scope: !411)
!418 = !DILocalVariable(name: "stride", arg: 3, scope: !411, file: !133, line: 140, type: !63)
!419 = !DILocation(line: 140, column: 54, scope: !411)
!420 = !DILocalVariable(name: "edge", arg: 4, scope: !411, file: !133, line: 140, type: !63)
!421 = !DILocation(line: 140, column: 65, scope: !411)
!422 = !DILocalVariable(name: "cells", scope: !411, file: !133, line: 142, type: !53)
!423 = !DILocation(line: 142, column: 16, scope: !411)
!424 = !DILocation(line: 144, column: 10, scope: !425)
!425 = distinct !DILexicalBlock(scope: !411, file: !133, line: 144, column: 10)
!426 = !DILocation(line: 144, column: 17, scope: !425)
!427 = !DILocation(line: 144, column: 10, scope: !411)
!428 = !DILocalVariable(name: "i", scope: !429, file: !133, line: 145, type: !63)
!429 = distinct !DILexicalBlock(scope: !425, file: !133, line: 144, column: 26)
!430 = !DILocation(line: 145, column: 13, scope: !429)
!431 = !DILocalVariable(name: "I", scope: !429, file: !133, line: 145, type: !63)
!432 = !DILocation(line: 145, column: 16, scope: !429)
!433 = !DILocation(line: 146, column: 36, scope: !429)
!434 = !DILocation(line: 146, column: 40, scope: !429)
!435 = !DILocation(line: 146, column: 29, scope: !429)
!436 = !DILocation(line: 146, column: 17, scope: !429)
!437 = !DILocation(line: 146, column: 15, scope: !429)
!438 = !DILocation(line: 147, column: 13, scope: !429)
!439 = !DILocation(line: 147, column: 11, scope: !429)
!440 = !DILocation(line: 148, column: 17, scope: !441)
!441 = distinct !DILexicalBlock(scope: !429, file: !133, line: 148, column: 9)
!442 = !DILocation(line: 148, column: 15, scope: !441)
!443 = !DILocation(line: 148, column: 22, scope: !444)
!444 = !DILexicalBlockFile(scope: !445, file: !133, discriminator: 1)
!445 = distinct !DILexicalBlock(scope: !441, file: !133, line: 148, column: 9)
!446 = !DILocation(line: 148, column: 26, scope: !444)
!447 = !DILocation(line: 148, column: 24, scope: !444)
!448 = !DILocation(line: 148, column: 9, scope: !444)
!449 = !DILocation(line: 149, column: 39, scope: !450)
!450 = distinct !DILexicalBlock(scope: !445, file: !133, line: 148, column: 38)
!451 = !DILocation(line: 149, column: 47, scope: !450)
!452 = !DILocation(line: 149, column: 26, scope: !450)
!453 = !DILocation(line: 149, column: 54, scope: !450)
!454 = !DILocation(line: 149, column: 52, scope: !450)
!455 = !DILocation(line: 149, column: 24, scope: !450)
!456 = !DILocation(line: 149, column: 19, scope: !450)
!457 = !DILocation(line: 149, column: 13, scope: !450)
!458 = !DILocation(line: 149, column: 22, scope: !450)
!459 = !DILocation(line: 150, column: 18, scope: !450)
!460 = !DILocation(line: 150, column: 15, scope: !450)
!461 = !DILocation(line: 151, column: 9, scope: !450)
!462 = !DILocation(line: 148, column: 33, scope: !463)
!463 = !DILexicalBlockFile(scope: !445, file: !133, discriminator: 2)
!464 = !DILocation(line: 148, column: 9, scope: !463)
!465 = distinct !{!465, !466}
!466 = !DILocation(line: 148, column: 9, scope: !429)
!467 = !DILocation(line: 152, column: 5, scope: !429)
!468 = !DILocation(line: 153, column: 12, scope: !411)
!469 = !DILocation(line: 153, column: 5, scope: !411)
!470 = distinct !DISubprogram(name: "Mat_VarSetCell", scope: !133, file: !133, line: 167, type: !471, isLocal: false, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !136)
!471 = !DISubroutineType(types: !472)
!472 = !{!54, !54, !63, !54}
!473 = !DILocalVariable(name: "matvar", arg: 1, scope: !470, file: !133, line: 167, type: !54)
!474 = !DILocation(line: 167, column: 26, scope: !470)
!475 = !DILocalVariable(name: "index", arg: 2, scope: !470, file: !133, line: 167, type: !63)
!476 = !DILocation(line: 167, column: 37, scope: !470)
!477 = !DILocalVariable(name: "cell", arg: 3, scope: !470, file: !133, line: 167, type: !54)
!478 = !DILocation(line: 167, column: 53, scope: !470)
!479 = !DILocalVariable(name: "nelems", scope: !470, file: !133, line: 169, type: !59)
!480 = !DILocation(line: 169, column: 12, scope: !470)
!481 = !DILocalVariable(name: "cells", scope: !470, file: !133, line: 170, type: !53)
!482 = !DILocation(line: 170, column: 16, scope: !470)
!483 = !DILocalVariable(name: "old_cell", scope: !470, file: !133, line: 170, type: !54)
!484 = !DILocation(line: 170, column: 24, scope: !470)
!485 = !DILocation(line: 172, column: 10, scope: !486)
!486 = distinct !DILexicalBlock(scope: !470, file: !133, line: 172, column: 10)
!487 = !DILocation(line: 172, column: 17, scope: !486)
!488 = !DILocation(line: 172, column: 24, scope: !486)
!489 = !DILocation(line: 172, column: 27, scope: !490)
!490 = !DILexicalBlockFile(scope: !486, file: !133, discriminator: 1)
!491 = !DILocation(line: 172, column: 35, scope: !490)
!492 = !DILocation(line: 172, column: 40, scope: !490)
!493 = !DILocation(line: 172, column: 10, scope: !490)
!494 = !DILocation(line: 173, column: 9, scope: !486)
!495 = !DILocation(line: 175, column: 16, scope: !470)
!496 = !DILocation(line: 175, column: 4, scope: !470)
!497 = !DILocation(line: 176, column: 25, scope: !470)
!498 = !DILocation(line: 176, column: 33, scope: !470)
!499 = !DILocation(line: 176, column: 13, scope: !470)
!500 = !DILocation(line: 176, column: 11, scope: !470)
!501 = !DILocation(line: 177, column: 15, scope: !502)
!502 = distinct !DILexicalBlock(scope: !470, file: !133, line: 177, column: 10)
!503 = !DILocation(line: 177, column: 12, scope: !502)
!504 = !DILocation(line: 177, column: 21, scope: !502)
!505 = !DILocation(line: 177, column: 24, scope: !506)
!506 = !DILexicalBlockFile(scope: !502, file: !133, discriminator: 1)
!507 = !DILocation(line: 177, column: 32, scope: !506)
!508 = !DILocation(line: 177, column: 30, scope: !506)
!509 = !DILocation(line: 177, column: 10, scope: !506)
!510 = !DILocation(line: 178, column: 26, scope: !511)
!511 = distinct !DILexicalBlock(scope: !502, file: !133, line: 177, column: 41)
!512 = !DILocation(line: 178, column: 20, scope: !511)
!513 = !DILocation(line: 178, column: 18, scope: !511)
!514 = !DILocation(line: 179, column: 24, scope: !511)
!515 = !DILocation(line: 179, column: 15, scope: !511)
!516 = !DILocation(line: 179, column: 9, scope: !511)
!517 = !DILocation(line: 179, column: 22, scope: !511)
!518 = !DILocation(line: 180, column: 5, scope: !511)
!519 = !DILocation(line: 182, column: 12, scope: !470)
!520 = !DILocation(line: 182, column: 5, scope: !470)
!521 = !DILocation(line: 183, column: 1, scope: !470)
