; ModuleID = './[inter]src--matvar_struct.o.i'
source_filename = "./[inter]src--matvar_struct.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.matvar_t = type { i64, i32, i32, i32, i32, i32, i32, i32, i64*, i8*, i8*, i32, i32, %struct.matvar_internal* }
%struct.matvar_internal = type { i64, i32, i8**, %struct.z_stream_s*, i8* }
%struct.z_stream_s = type { i8*, i32, i64, i8*, i32, i64, i8*, %struct.internal_state*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8*, i32, i64, i64 }
%struct.internal_state = type opaque

@.str = private unnamed_addr constant [53 x i8] c"Mat_VarGetStructField: structure index out of bounds\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Mat_VarGetStructField: field index out of bounds\00", align 1

; Function Attrs: nounwind uwtable
define %struct.matvar_t* @Mat_VarCreateStruct(i8*, i32, i64*, i8**, i32) #0 !dbg !139 {
  %6 = alloca %struct.matvar_t*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.matvar_t*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !145, metadata !146), !dbg !147
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !148, metadata !146), !dbg !149
  store i64* %2, i64** %9, align 8
  call void @llvm.dbg.declare(metadata i64** %9, metadata !150, metadata !146), !dbg !151
  store i8** %3, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !152, metadata !146), !dbg !153
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !154, metadata !146), !dbg !155
  call void @llvm.dbg.declare(metadata i64* %12, metadata !156, metadata !146), !dbg !157
  store i64 1, i64* %12, align 8, !dbg !157
  call void @llvm.dbg.declare(metadata i32* %13, metadata !158, metadata !146), !dbg !159
  call void @llvm.dbg.declare(metadata %struct.matvar_t** %14, metadata !160, metadata !146), !dbg !161
  %17 = load i64*, i64** %9, align 8, !dbg !162
  %18 = icmp eq i64* null, %17, !dbg !164
  br i1 %18, label %19, label %20, !dbg !165

; <label>:19:                                     ; preds = %5
  store %struct.matvar_t* null, %struct.matvar_t** %6, align 8, !dbg !166
  br label %170, !dbg !166

; <label>:20:                                     ; preds = %5
  %21 = call %struct.matvar_t* @Mat_VarCalloc(), !dbg !167
  store %struct.matvar_t* %21, %struct.matvar_t** %14, align 8, !dbg !168
  %22 = load %struct.matvar_t*, %struct.matvar_t** %14, align 8, !dbg !169
  %23 = icmp eq %struct.matvar_t* null, %22, !dbg !171
  br i1 %23, label %24, label %25, !dbg !172

; <label>:24:                                     ; preds = %20
  store %struct.matvar_t* null, %struct.matvar_t** %6, align 8, !dbg !173
  br label %170, !dbg !173

; <label>:25:                                     ; preds = %20
  %26 = load %struct.matvar_t*, %struct.matvar_t** %14, align 8, !dbg !174
  %27 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %26, i32 0, i32 12, !dbg !175
  store i32 0, i32* %27, align 4, !dbg !176
  %28 = load i8*, i8** %7, align 8, !dbg !177
  %29 = icmp ne i8* null, %28, !dbg !179
  br i1 %29, label %30, label %35, !dbg !180

; <label>:30:                                     ; preds = %25
  %31 = load i8*, i8** %7, align 8, !dbg !181
  %32 = call noalias i8* @strdup(i8* %31) #6, !dbg !182
  %33 = load %struct.matvar_t*, %struct.matvar_t** %14, align 8, !dbg !183
  %34 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %33, i32 0, i32 9, !dbg !184
  store i8* %32, i8** %34, align 8, !dbg !185
  br label %35, !dbg !183

; <label>:35:                                     ; preds = %30, %25
  %36 = load i32, i32* %8, align 4, !dbg !186
  %37 = load %struct.matvar_t*, %struct.matvar_t** %14, align 8, !dbg !187
  %38 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %37, i32 0, i32 1, !dbg !188
  store i32 %36, i32* %38, align 8, !dbg !189
  %39 = load %struct.matvar_t*, %struct.matvar_t** %14, align 8, !dbg !190
  %40 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %39, i32 0, i32 1, !dbg !191
  %41 = load i32, i32* %40, align 8, !dbg !191
  %42 = sext i32 %41 to i64, !dbg !190
  %43 = mul i64 %42, 8, !dbg !192
  %44 = call noalias i8* @malloc(i64 %43) #6, !dbg !193
  %45 = bitcast i8* %44 to i64*, !dbg !194
  %46 = load %struct.matvar_t*, %struct.matvar_t** %14, align 8, !dbg !195
  %47 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %46, i32 0, i32 8, !dbg !196
  store i64* %45, i64** %47, align 8, !dbg !197
  store i32 0, i32* %13, align 4, !dbg !198
  br label %48, !dbg !200

; <label>:48:                                     ; preds = %73, %35
  %49 = load i32, i32* %13, align 4, !dbg !201
  %50 = load %struct.matvar_t*, %struct.matvar_t** %14, align 8, !dbg !204
  %51 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %50, i32 0, i32 1, !dbg !205
  %52 = load i32, i32* %51, align 8, !dbg !205
  %53 = icmp slt i32 %49, %52, !dbg !206
  br i1 %53, label %54, label %76, !dbg !207

; <label>:54:                                     ; preds = %48
  %55 = load i32, i32* %13, align 4, !dbg !208
  %56 = sext i32 %55 to i64, !dbg !210
  %57 = load i64*, i64** %9, align 8, !dbg !210
  %58 = getelementptr inbounds i64, i64* %57, i64 %56, !dbg !210
  %59 = load i64, i64* %58, align 8, !dbg !210
  %60 = load i32, i32* %13, align 4, !dbg !211
  %61 = sext i32 %60 to i64, !dbg !212
  %62 = load %struct.matvar_t*, %struct.matvar_t** %14, align 8, !dbg !212
  %63 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %62, i32 0, i32 8, !dbg !213
  %64 = load i64*, i64** %63, align 8, !dbg !213
  %65 = getelementptr inbounds i64, i64* %64, i64 %61, !dbg !212
  store i64 %59, i64* %65, align 8, !dbg !214
  %66 = load i32, i32* %13, align 4, !dbg !215
  %67 = sext i32 %66 to i64, !dbg !216
  %68 = load i64*, i64** %9, align 8, !dbg !216
  %69 = getelementptr inbounds i64, i64* %68, i64 %67, !dbg !216
  %70 = load i64, i64* %69, align 8, !dbg !216
  %71 = load i64, i64* %12, align 8, !dbg !217
  %72 = mul i64 %71, %70, !dbg !217
  store i64 %72, i64* %12, align 8, !dbg !217
  br label %73, !dbg !218

; <label>:73:                                     ; preds = %54
  %74 = load i32, i32* %13, align 4, !dbg !219
  %75 = add nsw i32 %74, 1, !dbg !219
  store i32 %75, i32* %13, align 4, !dbg !219
  br label %48, !dbg !221, !llvm.loop !222

; <label>:76:                                     ; preds = %48
  %77 = load %struct.matvar_t*, %struct.matvar_t** %14, align 8, !dbg !224
  %78 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %77, i32 0, i32 4, !dbg !225
  store i32 2, i32* %78, align 4, !dbg !226
  %79 = load %struct.matvar_t*, %struct.matvar_t** %14, align 8, !dbg !227
  %80 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %79, i32 0, i32 2, !dbg !228
  store i32 22, i32* %80, align 4, !dbg !229
  %81 = load %struct.matvar_t*, %struct.matvar_t** %14, align 8, !dbg !230
  %82 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %81, i32 0, i32 3, !dbg !231
  store i32 8, i32* %82, align 8, !dbg !232
  %83 = load i32, i32* %11, align 4, !dbg !233
  %84 = icmp ne i32 %83, 0, !dbg !233
  br i1 %84, label %85, label %168, !dbg !235

; <label>:85:                                     ; preds = %76
  %86 = load i32, i32* %11, align 4, !dbg !236
  %87 = load %struct.matvar_t*, %struct.matvar_t** %14, align 8, !dbg !238
  %88 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %87, i32 0, i32 13, !dbg !239
  %89 = load %struct.matvar_internal*, %struct.matvar_internal** %88, align 8, !dbg !239
  %90 = getelementptr inbounds %struct.matvar_internal, %struct.matvar_internal* %89, i32 0, i32 1, !dbg !240
  store i32 %86, i32* %90, align 8, !dbg !241
  %91 = load i32, i32* %11, align 4, !dbg !242
  %92 = zext i32 %91 to i64, !dbg !242
  %93 = mul i64 %92, 8, !dbg !243
  %94 = call noalias i8* @malloc(i64 %93) #6, !dbg !244
  %95 = bitcast i8* %94 to i8**, !dbg !245
  %96 = load %struct.matvar_t*, %struct.matvar_t** %14, align 8, !dbg !246
  %97 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %96, i32 0, i32 13, !dbg !247
  %98 = load %struct.matvar_internal*, %struct.matvar_internal** %97, align 8, !dbg !247
  %99 = getelementptr inbounds %struct.matvar_internal, %struct.matvar_internal* %98, i32 0, i32 2, !dbg !248
  store i8** %95, i8*** %99, align 8, !dbg !249
  %100 = load %struct.matvar_t*, %struct.matvar_t** %14, align 8, !dbg !250
  %101 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %100, i32 0, i32 13, !dbg !252
  %102 = load %struct.matvar_internal*, %struct.matvar_internal** %101, align 8, !dbg !252
  %103 = getelementptr inbounds %struct.matvar_internal, %struct.matvar_internal* %102, i32 0, i32 2, !dbg !253
  %104 = load i8**, i8*** %103, align 8, !dbg !253
  %105 = icmp eq i8** null, %104, !dbg !254
  br i1 %105, label %106, label %108, !dbg !255

; <label>:106:                                    ; preds = %85
  %107 = load %struct.matvar_t*, %struct.matvar_t** %14, align 8, !dbg !256
  call void @Mat_VarFree(%struct.matvar_t* %107), !dbg !258
  store %struct.matvar_t* null, %struct.matvar_t** %14, align 8, !dbg !259
  br label %140, !dbg !260

; <label>:108:                                    ; preds = %85
  call void @llvm.dbg.declare(metadata i64* %15, metadata !261, metadata !146), !dbg !263
  store i64 0, i64* %15, align 8, !dbg !264
  br label %109, !dbg !266

; <label>:109:                                    ; preds = %136, %108
  %110 = load i64, i64* %15, align 8, !dbg !267
  %111 = load i32, i32* %11, align 4, !dbg !270
  %112 = zext i32 %111 to i64, !dbg !270
  %113 = icmp ult i64 %110, %112, !dbg !271
  br i1 %113, label %114, label %139, !dbg !272

; <label>:114:                                    ; preds = %109
  %115 = load i64, i64* %15, align 8, !dbg !273
  %116 = load i8**, i8*** %10, align 8, !dbg !276
  %117 = getelementptr inbounds i8*, i8** %116, i64 %115, !dbg !276
  %118 = load i8*, i8** %117, align 8, !dbg !276
  %119 = icmp eq i8* null, %118, !dbg !277
  br i1 %119, label %120, label %122, !dbg !278

; <label>:120:                                    ; preds = %114
  %121 = load %struct.matvar_t*, %struct.matvar_t** %14, align 8, !dbg !279
  call void @Mat_VarFree(%struct.matvar_t* %121), !dbg !281
  store %struct.matvar_t* null, %struct.matvar_t** %14, align 8, !dbg !282
  br label %139, !dbg !283

; <label>:122:                                    ; preds = %114
  %123 = load i64, i64* %15, align 8, !dbg !284
  %124 = load i8**, i8*** %10, align 8, !dbg !286
  %125 = getelementptr inbounds i8*, i8** %124, i64 %123, !dbg !286
  %126 = load i8*, i8** %125, align 8, !dbg !286
  %127 = call noalias i8* @strdup(i8* %126) #6, !dbg !287
  %128 = load i64, i64* %15, align 8, !dbg !288
  %129 = load %struct.matvar_t*, %struct.matvar_t** %14, align 8, !dbg !289
  %130 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %129, i32 0, i32 13, !dbg !290
  %131 = load %struct.matvar_internal*, %struct.matvar_internal** %130, align 8, !dbg !290
  %132 = getelementptr inbounds %struct.matvar_internal, %struct.matvar_internal* %131, i32 0, i32 2, !dbg !291
  %133 = load i8**, i8*** %132, align 8, !dbg !291
  %134 = getelementptr inbounds i8*, i8** %133, i64 %128, !dbg !289
  store i8* %127, i8** %134, align 8, !dbg !292
  br label %135

; <label>:135:                                    ; preds = %122
  br label %136, !dbg !293

; <label>:136:                                    ; preds = %135
  %137 = load i64, i64* %15, align 8, !dbg !294
  %138 = add i64 %137, 1, !dbg !294
  store i64 %138, i64* %15, align 8, !dbg !294
  br label %109, !dbg !296, !llvm.loop !297

; <label>:139:                                    ; preds = %120, %109
  br label %140

; <label>:140:                                    ; preds = %139, %106
  %141 = load %struct.matvar_t*, %struct.matvar_t** %14, align 8, !dbg !299
  %142 = icmp ne %struct.matvar_t* null, %141, !dbg !301
  br i1 %142, label %143, label %167, !dbg !302

; <label>:143:                                    ; preds = %140
  %144 = load i64, i64* %12, align 8, !dbg !303
  %145 = icmp ugt i64 %144, 0, !dbg !305
  br i1 %145, label %146, label %167, !dbg !306

; <label>:146:                                    ; preds = %143
  call void @llvm.dbg.declare(metadata i64* %16, metadata !307, metadata !146), !dbg !309
  %147 = load i64, i64* %12, align 8, !dbg !310
  %148 = load i32, i32* %11, align 4, !dbg !311
  %149 = zext i32 %148 to i64, !dbg !311
  %150 = call i32 @SafeMul(i64* %16, i64 %147, i64 %149), !dbg !312
  %151 = load %struct.matvar_t*, %struct.matvar_t** %14, align 8, !dbg !313
  %152 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %151, i32 0, i32 0, !dbg !314
  %153 = load i64, i64* %16, align 8, !dbg !315
  %154 = load %struct.matvar_t*, %struct.matvar_t** %14, align 8, !dbg !316
  %155 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %154, i32 0, i32 3, !dbg !317
  %156 = load i32, i32* %155, align 8, !dbg !317
  %157 = sext i32 %156 to i64, !dbg !316
  %158 = call i32 @SafeMul(i64* %152, i64 %153, i64 %157), !dbg !318
  %159 = load i64, i64* %16, align 8, !dbg !319
  %160 = load %struct.matvar_t*, %struct.matvar_t** %14, align 8, !dbg !320
  %161 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %160, i32 0, i32 3, !dbg !321
  %162 = load i32, i32* %161, align 8, !dbg !321
  %163 = sext i32 %162 to i64, !dbg !320
  %164 = call noalias i8* @calloc(i64 %159, i64 %163) #6, !dbg !322
  %165 = load %struct.matvar_t*, %struct.matvar_t** %14, align 8, !dbg !323
  %166 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %165, i32 0, i32 10, !dbg !324
  store i8* %164, i8** %166, align 8, !dbg !325
  br label %167, !dbg !326

; <label>:167:                                    ; preds = %146, %143, %140
  br label %168, !dbg !327

; <label>:168:                                    ; preds = %167, %76
  %169 = load %struct.matvar_t*, %struct.matvar_t** %14, align 8, !dbg !328
  store %struct.matvar_t* %169, %struct.matvar_t** %6, align 8, !dbg !329
  br label %170, !dbg !329

; <label>:170:                                    ; preds = %168, %24, %19
  %171 = load %struct.matvar_t*, %struct.matvar_t** %6, align 8, !dbg !330
  ret %struct.matvar_t* %171, !dbg !330
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct.matvar_t* @Mat_VarCalloc() #2

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

declare void @Mat_VarFree(%struct.matvar_t*) #2

declare i32 @SafeMul(i64*, i64, i64) #2

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #3

; Function Attrs: nounwind uwtable
define i32 @Mat_VarAddStructField(%struct.matvar_t*, i8*) #0 !dbg !331 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.matvar_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.matvar_t**, align 8
  %11 = alloca %struct.matvar_t**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.matvar_t* %0, %struct.matvar_t** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.matvar_t** %4, metadata !334, metadata !146), !dbg !335
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !336, metadata !146), !dbg !337
  call void @llvm.dbg.declare(metadata i32* %6, metadata !338, metadata !146), !dbg !339
  store i32 0, i32* %6, align 4, !dbg !339
  call void @llvm.dbg.declare(metadata i64* %7, metadata !340, metadata !146), !dbg !341
  call void @llvm.dbg.declare(metadata i64* %8, metadata !342, metadata !146), !dbg !343
  call void @llvm.dbg.declare(metadata i64* %9, metadata !344, metadata !146), !dbg !345
  store i64 1, i64* %9, align 8, !dbg !345
  call void @llvm.dbg.declare(metadata %struct.matvar_t*** %10, metadata !346, metadata !146), !dbg !347
  call void @llvm.dbg.declare(metadata %struct.matvar_t*** %11, metadata !348, metadata !146), !dbg !349
  call void @llvm.dbg.declare(metadata i8*** %12, metadata !350, metadata !146), !dbg !351
  %15 = load %struct.matvar_t*, %struct.matvar_t** %4, align 8, !dbg !352
  %16 = icmp eq %struct.matvar_t* %15, null, !dbg !354
  br i1 %16, label %20, label %17, !dbg !355

; <label>:17:                                     ; preds = %2
  %18 = load i8*, i8** %5, align 8, !dbg !356
  %19 = icmp eq i8* %18, null, !dbg !358
  br i1 %19, label %20, label %21, !dbg !359

; <label>:20:                                     ; preds = %17, %2
  store i32 -1, i32* %3, align 4, !dbg !360
  br label %133, !dbg !360

; <label>:21:                                     ; preds = %17
  %22 = load %struct.matvar_t*, %struct.matvar_t** %4, align 8, !dbg !361
  %23 = call i32 @SafeMulDims(%struct.matvar_t* %22, i64* %9), !dbg !362
  %24 = load %struct.matvar_t*, %struct.matvar_t** %4, align 8, !dbg !363
  %25 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %24, i32 0, i32 13, !dbg !364
  %26 = load %struct.matvar_internal*, %struct.matvar_internal** %25, align 8, !dbg !364
  %27 = getelementptr inbounds %struct.matvar_internal, %struct.matvar_internal* %26, i32 0, i32 1, !dbg !365
  %28 = load i32, i32* %27, align 8, !dbg !365
  %29 = add i32 %28, 1, !dbg !366
  %30 = zext i32 %29 to i64, !dbg !363
  store i64 %30, i64* %8, align 8, !dbg !367
  %31 = load i64, i64* %8, align 8, !dbg !368
  %32 = trunc i64 %31 to i32, !dbg !368
  %33 = load %struct.matvar_t*, %struct.matvar_t** %4, align 8, !dbg !369
  %34 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %33, i32 0, i32 13, !dbg !370
  %35 = load %struct.matvar_internal*, %struct.matvar_internal** %34, align 8, !dbg !370
  %36 = getelementptr inbounds %struct.matvar_internal, %struct.matvar_internal* %35, i32 0, i32 1, !dbg !371
  store i32 %32, i32* %36, align 8, !dbg !372
  %37 = load %struct.matvar_t*, %struct.matvar_t** %4, align 8, !dbg !373
  %38 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %37, i32 0, i32 13, !dbg !374
  %39 = load %struct.matvar_internal*, %struct.matvar_internal** %38, align 8, !dbg !374
  %40 = getelementptr inbounds %struct.matvar_internal, %struct.matvar_internal* %39, i32 0, i32 2, !dbg !375
  %41 = load i8**, i8*** %40, align 8, !dbg !375
  %42 = bitcast i8** %41 to i8*, !dbg !373
  %43 = load i64, i64* %8, align 8, !dbg !376
  %44 = mul i64 %43, 8, !dbg !377
  %45 = call i8* @realloc(i8* %42, i64 %44) #6, !dbg !378
  %46 = bitcast i8* %45 to i8**, !dbg !379
  store i8** %46, i8*** %12, align 8, !dbg !380
  %47 = load i8**, i8*** %12, align 8, !dbg !381
  %48 = icmp eq i8** null, %47, !dbg !383
  br i1 %48, label %49, label %50, !dbg !384

; <label>:49:                                     ; preds = %21
  store i32 -1, i32* %3, align 4, !dbg !385
  br label %133, !dbg !385

; <label>:50:                                     ; preds = %21
  %51 = load i8**, i8*** %12, align 8, !dbg !386
  %52 = load %struct.matvar_t*, %struct.matvar_t** %4, align 8, !dbg !387
  %53 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %52, i32 0, i32 13, !dbg !388
  %54 = load %struct.matvar_internal*, %struct.matvar_internal** %53, align 8, !dbg !388
  %55 = getelementptr inbounds %struct.matvar_internal, %struct.matvar_internal* %54, i32 0, i32 2, !dbg !389
  store i8** %51, i8*** %55, align 8, !dbg !390
  %56 = load i8*, i8** %5, align 8, !dbg !391
  %57 = call noalias i8* @strdup(i8* %56) #6, !dbg !392
  %58 = load i64, i64* %8, align 8, !dbg !393
  %59 = sub i64 %58, 1, !dbg !394
  %60 = load %struct.matvar_t*, %struct.matvar_t** %4, align 8, !dbg !395
  %61 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %60, i32 0, i32 13, !dbg !396
  %62 = load %struct.matvar_internal*, %struct.matvar_internal** %61, align 8, !dbg !396
  %63 = getelementptr inbounds %struct.matvar_internal, %struct.matvar_internal* %62, i32 0, i32 2, !dbg !397
  %64 = load i8**, i8*** %63, align 8, !dbg !397
  %65 = getelementptr inbounds i8*, i8** %64, i64 %59, !dbg !395
  store i8* %57, i8** %65, align 8, !dbg !398
  call void @llvm.dbg.declare(metadata i64* %13, metadata !399, metadata !146), !dbg !401
  %66 = load i64, i64* %9, align 8, !dbg !402
  %67 = load i64, i64* %8, align 8, !dbg !403
  %68 = call i32 @SafeMul(i64* %13, i64 %66, i64 %67), !dbg !404
  %69 = load %struct.matvar_t*, %struct.matvar_t** %4, align 8, !dbg !405
  %70 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %69, i32 0, i32 0, !dbg !406
  %71 = load i64, i64* %13, align 8, !dbg !407
  %72 = call i32 @SafeMul(i64* %70, i64 %71, i64 8), !dbg !408
  %73 = load %struct.matvar_t*, %struct.matvar_t** %4, align 8, !dbg !409
  %74 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %73, i32 0, i32 0, !dbg !410
  %75 = load i64, i64* %74, align 8, !dbg !410
  %76 = call noalias i8* @malloc(i64 %75) #6, !dbg !411
  %77 = bitcast i8* %76 to %struct.matvar_t**, !dbg !412
  store %struct.matvar_t** %77, %struct.matvar_t*** %10, align 8, !dbg !413
  %78 = load %struct.matvar_t**, %struct.matvar_t*** %10, align 8, !dbg !414
  %79 = icmp eq %struct.matvar_t** %78, null, !dbg !416
  br i1 %79, label %80, label %83, !dbg !417

; <label>:80:                                     ; preds = %50
  %81 = load %struct.matvar_t*, %struct.matvar_t** %4, align 8, !dbg !418
  %82 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %81, i32 0, i32 0, !dbg !420
  store i64 0, i64* %82, align 8, !dbg !421
  store i32 -1, i32* %3, align 4, !dbg !422
  br label %133, !dbg !422

; <label>:83:                                     ; preds = %50
  %84 = load %struct.matvar_t*, %struct.matvar_t** %4, align 8, !dbg !423
  %85 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %84, i32 0, i32 10, !dbg !424
  %86 = load i8*, i8** %85, align 8, !dbg !424
  %87 = bitcast i8* %86 to %struct.matvar_t**, !dbg !425
  store %struct.matvar_t** %87, %struct.matvar_t*** %11, align 8, !dbg !426
  store i64 0, i64* %7, align 8, !dbg !427
  br label %88, !dbg !429

; <label>:88:                                     ; preds = %122, %83
  %89 = load i64, i64* %7, align 8, !dbg !430
  %90 = load i64, i64* %9, align 8, !dbg !433
  %91 = icmp ult i64 %89, %90, !dbg !434
  br i1 %91, label %92, label %125, !dbg !435

; <label>:92:                                     ; preds = %88
  call void @llvm.dbg.declare(metadata i64* %14, metadata !436, metadata !146), !dbg !438
  store i64 0, i64* %14, align 8, !dbg !439
  br label %93, !dbg !441

; <label>:93:                                     ; preds = %113, %92
  %94 = load i64, i64* %14, align 8, !dbg !442
  %95 = load i64, i64* %8, align 8, !dbg !445
  %96 = sub i64 %95, 1, !dbg !446
  %97 = icmp ult i64 %94, %96, !dbg !447
  br i1 %97, label %98, label %116, !dbg !448

; <label>:98:                                     ; preds = %93
  %99 = load i64, i64* %7, align 8, !dbg !449
  %100 = load i64, i64* %8, align 8, !dbg !450
  %101 = sub i64 %100, 1, !dbg !451
  %102 = mul i64 %99, %101, !dbg !452
  %103 = load i64, i64* %14, align 8, !dbg !453
  %104 = add i64 %102, %103, !dbg !454
  %105 = load %struct.matvar_t**, %struct.matvar_t*** %11, align 8, !dbg !455
  %106 = getelementptr inbounds %struct.matvar_t*, %struct.matvar_t** %105, i64 %104, !dbg !455
  %107 = load %struct.matvar_t*, %struct.matvar_t** %106, align 8, !dbg !455
  %108 = load i32, i32* %6, align 4, !dbg !456
  %109 = add nsw i32 %108, 1, !dbg !456
  store i32 %109, i32* %6, align 4, !dbg !456
  %110 = sext i32 %108 to i64, !dbg !457
  %111 = load %struct.matvar_t**, %struct.matvar_t*** %10, align 8, !dbg !457
  %112 = getelementptr inbounds %struct.matvar_t*, %struct.matvar_t** %111, i64 %110, !dbg !457
  store %struct.matvar_t* %107, %struct.matvar_t** %112, align 8, !dbg !458
  br label %113, !dbg !457

; <label>:113:                                    ; preds = %98
  %114 = load i64, i64* %14, align 8, !dbg !459
  %115 = add i64 %114, 1, !dbg !459
  store i64 %115, i64* %14, align 8, !dbg !459
  br label %93, !dbg !461, !llvm.loop !462

; <label>:116:                                    ; preds = %93
  %117 = load i32, i32* %6, align 4, !dbg !464
  %118 = add nsw i32 %117, 1, !dbg !464
  store i32 %118, i32* %6, align 4, !dbg !464
  %119 = sext i32 %117 to i64, !dbg !465
  %120 = load %struct.matvar_t**, %struct.matvar_t*** %10, align 8, !dbg !465
  %121 = getelementptr inbounds %struct.matvar_t*, %struct.matvar_t** %120, i64 %119, !dbg !465
  store %struct.matvar_t* null, %struct.matvar_t** %121, align 8, !dbg !466
  br label %122, !dbg !467

; <label>:122:                                    ; preds = %116
  %123 = load i64, i64* %7, align 8, !dbg !468
  %124 = add i64 %123, 1, !dbg !468
  store i64 %124, i64* %7, align 8, !dbg !468
  br label %88, !dbg !470, !llvm.loop !471

; <label>:125:                                    ; preds = %88
  %126 = load %struct.matvar_t*, %struct.matvar_t** %4, align 8, !dbg !473
  %127 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %126, i32 0, i32 10, !dbg !474
  %128 = load i8*, i8** %127, align 8, !dbg !474
  call void @free(i8* %128) #6, !dbg !475
  %129 = load %struct.matvar_t**, %struct.matvar_t*** %10, align 8, !dbg !476
  %130 = bitcast %struct.matvar_t** %129 to i8*, !dbg !476
  %131 = load %struct.matvar_t*, %struct.matvar_t** %4, align 8, !dbg !477
  %132 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %131, i32 0, i32 10, !dbg !478
  store i8* %130, i8** %132, align 8, !dbg !479
  store i32 0, i32* %3, align 4, !dbg !480
  br label %133, !dbg !480

; <label>:133:                                    ; preds = %125, %80, %49, %20
  %134 = load i32, i32* %3, align 4, !dbg !481
  ret i32 %134, !dbg !481
}

declare i32 @SafeMulDims(%struct.matvar_t*, i64*) #2

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #3

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define i32 @Mat_VarGetNumberOfFields(%struct.matvar_t*) #0 !dbg !482 {
  %2 = alloca %struct.matvar_t*, align 8
  %3 = alloca i32, align 4
  store %struct.matvar_t* %0, %struct.matvar_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.matvar_t** %2, metadata !485, metadata !146), !dbg !486
  call void @llvm.dbg.declare(metadata i32* %3, metadata !487, metadata !146), !dbg !488
  %4 = load %struct.matvar_t*, %struct.matvar_t** %2, align 8, !dbg !489
  %5 = icmp eq %struct.matvar_t* %4, null, !dbg !491
  br i1 %5, label %16, label %6, !dbg !492

; <label>:6:                                      ; preds = %1
  %7 = load %struct.matvar_t*, %struct.matvar_t** %2, align 8, !dbg !493
  %8 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %7, i32 0, i32 4, !dbg !495
  %9 = load i32, i32* %8, align 4, !dbg !495
  %10 = icmp ne i32 %9, 2, !dbg !496
  br i1 %10, label %16, label %11, !dbg !497

; <label>:11:                                     ; preds = %6
  %12 = load %struct.matvar_t*, %struct.matvar_t** %2, align 8, !dbg !498
  %13 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %12, i32 0, i32 13, !dbg !499
  %14 = load %struct.matvar_internal*, %struct.matvar_internal** %13, align 8, !dbg !499
  %15 = icmp eq %struct.matvar_internal* null, %14, !dbg !500
  br i1 %15, label %16, label %17, !dbg !501

; <label>:16:                                     ; preds = %11, %6, %1
  store i32 0, i32* %3, align 4, !dbg !503
  br label %23, !dbg !505

; <label>:17:                                     ; preds = %11
  %18 = load %struct.matvar_t*, %struct.matvar_t** %2, align 8, !dbg !506
  %19 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %18, i32 0, i32 13, !dbg !508
  %20 = load %struct.matvar_internal*, %struct.matvar_internal** %19, align 8, !dbg !508
  %21 = getelementptr inbounds %struct.matvar_internal, %struct.matvar_internal* %20, i32 0, i32 1, !dbg !509
  %22 = load i32, i32* %21, align 8, !dbg !509
  store i32 %22, i32* %3, align 4, !dbg !510
  br label %23

; <label>:23:                                     ; preds = %17, %16
  %24 = load i32, i32* %3, align 4, !dbg !511
  ret i32 %24, !dbg !512
}

; Function Attrs: nounwind uwtable
define i8** @Mat_VarGetStructFieldnames(%struct.matvar_t*) #0 !dbg !513 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.matvar_t*, align 8
  store %struct.matvar_t* %0, %struct.matvar_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.matvar_t** %3, metadata !520, metadata !146), !dbg !521
  %4 = load %struct.matvar_t*, %struct.matvar_t** %3, align 8, !dbg !522
  %5 = icmp eq %struct.matvar_t* %4, null, !dbg !524
  br i1 %5, label %16, label %6, !dbg !525

; <label>:6:                                      ; preds = %1
  %7 = load %struct.matvar_t*, %struct.matvar_t** %3, align 8, !dbg !526
  %8 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %7, i32 0, i32 4, !dbg !528
  %9 = load i32, i32* %8, align 4, !dbg !528
  %10 = icmp ne i32 %9, 2, !dbg !529
  br i1 %10, label %16, label %11, !dbg !530

; <label>:11:                                     ; preds = %6
  %12 = load %struct.matvar_t*, %struct.matvar_t** %3, align 8, !dbg !531
  %13 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %12, i32 0, i32 13, !dbg !532
  %14 = load %struct.matvar_internal*, %struct.matvar_internal** %13, align 8, !dbg !532
  %15 = icmp eq %struct.matvar_internal* null, %14, !dbg !533
  br i1 %15, label %16, label %17, !dbg !534

; <label>:16:                                     ; preds = %11, %6, %1
  store i8** null, i8*** %2, align 8, !dbg !536
  br label %23, !dbg !536

; <label>:17:                                     ; preds = %11
  %18 = load %struct.matvar_t*, %struct.matvar_t** %3, align 8, !dbg !538
  %19 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %18, i32 0, i32 13, !dbg !540
  %20 = load %struct.matvar_internal*, %struct.matvar_internal** %19, align 8, !dbg !540
  %21 = getelementptr inbounds %struct.matvar_internal, %struct.matvar_internal* %20, i32 0, i32 2, !dbg !541
  %22 = load i8**, i8*** %21, align 8, !dbg !541
  store i8** %22, i8*** %2, align 8, !dbg !542
  br label %23, !dbg !542

; <label>:23:                                     ; preds = %17, %16
  %24 = load i8**, i8*** %2, align 8, !dbg !543
  ret i8** %24, !dbg !543
}

; Function Attrs: nounwind uwtable
define %struct.matvar_t* @Mat_VarGetStructFieldByIndex(%struct.matvar_t*, i64, i64) #0 !dbg !544 {
  %4 = alloca %struct.matvar_t*, align 8
  %5 = alloca %struct.matvar_t*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.matvar_t*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.matvar_t* %0, %struct.matvar_t** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.matvar_t** %5, metadata !547, metadata !146), !dbg !548
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !549, metadata !146), !dbg !550
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !551, metadata !146), !dbg !552
  call void @llvm.dbg.declare(metadata %struct.matvar_t** %8, metadata !553, metadata !146), !dbg !554
  store %struct.matvar_t* null, %struct.matvar_t** %8, align 8, !dbg !554
  call void @llvm.dbg.declare(metadata i64* %9, metadata !555, metadata !146), !dbg !556
  store i64 1, i64* %9, align 8, !dbg !556
  call void @llvm.dbg.declare(metadata i64* %10, metadata !557, metadata !146), !dbg !558
  %11 = load %struct.matvar_t*, %struct.matvar_t** %5, align 8, !dbg !559
  %12 = icmp eq %struct.matvar_t* %11, null, !dbg !561
  br i1 %12, label %23, label %13, !dbg !562

; <label>:13:                                     ; preds = %3
  %14 = load %struct.matvar_t*, %struct.matvar_t** %5, align 8, !dbg !563
  %15 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %14, i32 0, i32 4, !dbg !565
  %16 = load i32, i32* %15, align 4, !dbg !565
  %17 = icmp ne i32 %16, 2, !dbg !566
  br i1 %17, label %23, label %18, !dbg !567

; <label>:18:                                     ; preds = %13
  %19 = load %struct.matvar_t*, %struct.matvar_t** %5, align 8, !dbg !568
  %20 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %19, i32 0, i32 3, !dbg !569
  %21 = load i32, i32* %20, align 8, !dbg !569
  %22 = icmp eq i32 %21, 0, !dbg !570
  br i1 %22, label %23, label %25, !dbg !571

; <label>:23:                                     ; preds = %18, %13, %3
  %24 = load %struct.matvar_t*, %struct.matvar_t** %8, align 8, !dbg !573
  store %struct.matvar_t* %24, %struct.matvar_t** %4, align 8, !dbg !574
  br label %65, !dbg !574

; <label>:25:                                     ; preds = %18
  %26 = load %struct.matvar_t*, %struct.matvar_t** %5, align 8, !dbg !575
  %27 = call i32 @SafeMulDims(%struct.matvar_t* %26, i64* %9), !dbg !576
  %28 = load %struct.matvar_t*, %struct.matvar_t** %5, align 8, !dbg !577
  %29 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %28, i32 0, i32 13, !dbg !578
  %30 = load %struct.matvar_internal*, %struct.matvar_internal** %29, align 8, !dbg !578
  %31 = getelementptr inbounds %struct.matvar_internal, %struct.matvar_internal* %30, i32 0, i32 1, !dbg !579
  %32 = load i32, i32* %31, align 8, !dbg !579
  %33 = zext i32 %32 to i64, !dbg !577
  store i64 %33, i64* %10, align 8, !dbg !580
  %34 = load i64, i64* %9, align 8, !dbg !581
  %35 = icmp ugt i64 %34, 0, !dbg !583
  br i1 %35, label %36, label %41, !dbg !584

; <label>:36:                                     ; preds = %25
  %37 = load i64, i64* %7, align 8, !dbg !585
  %38 = load i64, i64* %9, align 8, !dbg !587
  %39 = icmp uge i64 %37, %38, !dbg !588
  br i1 %39, label %40, label %41, !dbg !589

; <label>:40:                                     ; preds = %36
  call void (i8*, ...) @Mat_Critical(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i32 0, i32 0)), !dbg !590
  br label %63, !dbg !592

; <label>:41:                                     ; preds = %36, %25
  %42 = load i64, i64* %10, align 8, !dbg !593
  %43 = icmp ugt i64 %42, 0, !dbg !596
  br i1 %43, label %44, label %62, !dbg !593

; <label>:44:                                     ; preds = %41
  %45 = load i64, i64* %6, align 8, !dbg !597
  %46 = load i64, i64* %10, align 8, !dbg !600
  %47 = icmp ugt i64 %45, %46, !dbg !601
  br i1 %47, label %48, label %49, !dbg !602

; <label>:48:                                     ; preds = %44
  call void (i8*, ...) @Mat_Critical(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i32 0, i32 0)), !dbg !603
  br label %61, !dbg !605

; <label>:49:                                     ; preds = %44
  %50 = load %struct.matvar_t*, %struct.matvar_t** %5, align 8, !dbg !606
  %51 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %50, i32 0, i32 10, !dbg !608
  %52 = load i8*, i8** %51, align 8, !dbg !608
  %53 = bitcast i8* %52 to %struct.matvar_t**, !dbg !609
  %54 = load i64, i64* %7, align 8, !dbg !610
  %55 = load i64, i64* %10, align 8, !dbg !611
  %56 = mul i64 %54, %55, !dbg !612
  %57 = getelementptr inbounds %struct.matvar_t*, %struct.matvar_t** %53, i64 %56, !dbg !613
  %58 = load i64, i64* %6, align 8, !dbg !614
  %59 = getelementptr inbounds %struct.matvar_t*, %struct.matvar_t** %57, i64 %58, !dbg !615
  %60 = load %struct.matvar_t*, %struct.matvar_t** %59, align 8, !dbg !616
  store %struct.matvar_t* %60, %struct.matvar_t** %8, align 8, !dbg !617
  br label %61

; <label>:61:                                     ; preds = %49, %48
  br label %62, !dbg !618

; <label>:62:                                     ; preds = %61, %41
  br label %63

; <label>:63:                                     ; preds = %62, %40
  %64 = load %struct.matvar_t*, %struct.matvar_t** %8, align 8, !dbg !619
  store %struct.matvar_t* %64, %struct.matvar_t** %4, align 8, !dbg !620
  br label %65, !dbg !620

; <label>:65:                                     ; preds = %63, %23
  %66 = load %struct.matvar_t*, %struct.matvar_t** %4, align 8, !dbg !621
  ret %struct.matvar_t* %66, !dbg !621
}

declare void @Mat_Critical(i8*, ...) #2

; Function Attrs: nounwind uwtable
define %struct.matvar_t* @Mat_VarGetStructFieldByName(%struct.matvar_t*, i8*, i64) #0 !dbg !622 {
  %4 = alloca %struct.matvar_t*, align 8
  %5 = alloca %struct.matvar_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.matvar_t*, align 8
  %12 = alloca i64, align 8
  store %struct.matvar_t* %0, %struct.matvar_t** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.matvar_t** %5, metadata !625, metadata !146), !dbg !626
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !627, metadata !146), !dbg !628
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !629, metadata !146), !dbg !630
  call void @llvm.dbg.declare(metadata i32* %8, metadata !631, metadata !146), !dbg !632
  call void @llvm.dbg.declare(metadata i32* %9, metadata !633, metadata !146), !dbg !634
  call void @llvm.dbg.declare(metadata i32* %10, metadata !635, metadata !146), !dbg !636
  call void @llvm.dbg.declare(metadata %struct.matvar_t** %11, metadata !637, metadata !146), !dbg !638
  store %struct.matvar_t* null, %struct.matvar_t** %11, align 8, !dbg !638
  call void @llvm.dbg.declare(metadata i64* %12, metadata !639, metadata !146), !dbg !640
  store i64 1, i64* %12, align 8, !dbg !640
  %13 = load %struct.matvar_t*, %struct.matvar_t** %5, align 8, !dbg !641
  %14 = icmp eq %struct.matvar_t* %13, null, !dbg !643
  br i1 %14, label %25, label %15, !dbg !644

; <label>:15:                                     ; preds = %3
  %16 = load %struct.matvar_t*, %struct.matvar_t** %5, align 8, !dbg !645
  %17 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %16, i32 0, i32 4, !dbg !647
  %18 = load i32, i32* %17, align 4, !dbg !647
  %19 = icmp ne i32 %18, 2, !dbg !648
  br i1 %19, label %25, label %20, !dbg !649

; <label>:20:                                     ; preds = %15
  %21 = load %struct.matvar_t*, %struct.matvar_t** %5, align 8, !dbg !650
  %22 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %21, i32 0, i32 3, !dbg !651
  %23 = load i32, i32* %22, align 8, !dbg !651
  %24 = icmp eq i32 %23, 0, !dbg !652
  br i1 %24, label %25, label %27, !dbg !653

; <label>:25:                                     ; preds = %20, %15, %3
  %26 = load %struct.matvar_t*, %struct.matvar_t** %11, align 8, !dbg !655
  store %struct.matvar_t* %26, %struct.matvar_t** %4, align 8, !dbg !656
  br label %83, !dbg !656

; <label>:27:                                     ; preds = %20
  %28 = load %struct.matvar_t*, %struct.matvar_t** %5, align 8, !dbg !657
  %29 = call i32 @SafeMulDims(%struct.matvar_t* %28, i64* %12), !dbg !658
  %30 = load %struct.matvar_t*, %struct.matvar_t** %5, align 8, !dbg !659
  %31 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %30, i32 0, i32 13, !dbg !660
  %32 = load %struct.matvar_internal*, %struct.matvar_internal** %31, align 8, !dbg !660
  %33 = getelementptr inbounds %struct.matvar_internal, %struct.matvar_internal* %32, i32 0, i32 1, !dbg !661
  %34 = load i32, i32* %33, align 8, !dbg !661
  store i32 %34, i32* %9, align 4, !dbg !662
  store i32 -1, i32* %10, align 4, !dbg !663
  store i32 0, i32* %8, align 4, !dbg !664
  br label %35, !dbg !666

; <label>:35:                                     ; preds = %55, %27
  %36 = load i32, i32* %8, align 4, !dbg !667
  %37 = load i32, i32* %9, align 4, !dbg !670
  %38 = icmp slt i32 %36, %37, !dbg !671
  br i1 %38, label %39, label %58, !dbg !672

; <label>:39:                                     ; preds = %35
  %40 = load i32, i32* %8, align 4, !dbg !673
  %41 = sext i32 %40 to i64, !dbg !676
  %42 = load %struct.matvar_t*, %struct.matvar_t** %5, align 8, !dbg !676
  %43 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %42, i32 0, i32 13, !dbg !677
  %44 = load %struct.matvar_internal*, %struct.matvar_internal** %43, align 8, !dbg !677
  %45 = getelementptr inbounds %struct.matvar_internal, %struct.matvar_internal* %44, i32 0, i32 2, !dbg !678
  %46 = load i8**, i8*** %45, align 8, !dbg !678
  %47 = getelementptr inbounds i8*, i8** %46, i64 %41, !dbg !676
  %48 = load i8*, i8** %47, align 8, !dbg !676
  %49 = load i8*, i8** %6, align 8, !dbg !679
  %50 = call i32 @strcmp(i8* %48, i8* %49) #7, !dbg !680
  %51 = icmp ne i32 %50, 0, !dbg !680
  br i1 %51, label %54, label %52, !dbg !681

; <label>:52:                                     ; preds = %39
  %53 = load i32, i32* %8, align 4, !dbg !682
  store i32 %53, i32* %10, align 4, !dbg !684
  br label %58, !dbg !685

; <label>:54:                                     ; preds = %39
  br label %55, !dbg !686

; <label>:55:                                     ; preds = %54
  %56 = load i32, i32* %8, align 4, !dbg !687
  %57 = add nsw i32 %56, 1, !dbg !687
  store i32 %57, i32* %8, align 4, !dbg !687
  br label %35, !dbg !689, !llvm.loop !690

; <label>:58:                                     ; preds = %52, %35
  %59 = load i64, i64* %7, align 8, !dbg !692
  %60 = load i64, i64* %12, align 8, !dbg !694
  %61 = icmp uge i64 %59, %60, !dbg !695
  br i1 %61, label %62, label %63, !dbg !696

; <label>:62:                                     ; preds = %58
  call void (i8*, ...) @Mat_Critical(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i32 0, i32 0)), !dbg !697
  br label %81, !dbg !699

; <label>:63:                                     ; preds = %58
  %64 = load i32, i32* %10, align 4, !dbg !700
  %65 = icmp sge i32 %64, 0, !dbg !703
  br i1 %65, label %66, label %80, !dbg !700

; <label>:66:                                     ; preds = %63
  %67 = load %struct.matvar_t*, %struct.matvar_t** %5, align 8, !dbg !704
  %68 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %67, i32 0, i32 10, !dbg !706
  %69 = load i8*, i8** %68, align 8, !dbg !706
  %70 = bitcast i8* %69 to %struct.matvar_t**, !dbg !707
  %71 = load i64, i64* %7, align 8, !dbg !708
  %72 = load i32, i32* %9, align 4, !dbg !709
  %73 = sext i32 %72 to i64, !dbg !709
  %74 = mul i64 %71, %73, !dbg !710
  %75 = getelementptr inbounds %struct.matvar_t*, %struct.matvar_t** %70, i64 %74, !dbg !711
  %76 = load i32, i32* %10, align 4, !dbg !712
  %77 = sext i32 %76 to i64, !dbg !713
  %78 = getelementptr inbounds %struct.matvar_t*, %struct.matvar_t** %75, i64 %77, !dbg !713
  %79 = load %struct.matvar_t*, %struct.matvar_t** %78, align 8, !dbg !714
  store %struct.matvar_t* %79, %struct.matvar_t** %11, align 8, !dbg !715
  br label %80, !dbg !716

; <label>:80:                                     ; preds = %66, %63
  br label %81

; <label>:81:                                     ; preds = %80, %62
  %82 = load %struct.matvar_t*, %struct.matvar_t** %11, align 8, !dbg !717
  store %struct.matvar_t* %82, %struct.matvar_t** %4, align 8, !dbg !718
  br label %83, !dbg !718

; <label>:83:                                     ; preds = %81, %25
  %84 = load %struct.matvar_t*, %struct.matvar_t** %4, align 8, !dbg !719
  ret %struct.matvar_t* %84, !dbg !719
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define %struct.matvar_t* @Mat_VarGetStructField(%struct.matvar_t*, i8*, i32, i32) #0 !dbg !720 {
  %5 = alloca %struct.matvar_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.matvar_t*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.matvar_t* %0, %struct.matvar_t** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.matvar_t** %5, metadata !723, metadata !146), !dbg !724
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !725, metadata !146), !dbg !726
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !727, metadata !146), !dbg !728
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !729, metadata !146), !dbg !730
  call void @llvm.dbg.declare(metadata i32* %9, metadata !731, metadata !146), !dbg !732
  store i32 0, i32* %9, align 4, !dbg !732
  call void @llvm.dbg.declare(metadata i32* %10, metadata !733, metadata !146), !dbg !734
  call void @llvm.dbg.declare(metadata %struct.matvar_t** %11, metadata !735, metadata !146), !dbg !736
  store %struct.matvar_t* null, %struct.matvar_t** %11, align 8, !dbg !736
  call void @llvm.dbg.declare(metadata i64* %12, metadata !737, metadata !146), !dbg !738
  store i64 1, i64* %12, align 8, !dbg !738
  %14 = load %struct.matvar_t*, %struct.matvar_t** %5, align 8, !dbg !739
  %15 = call i32 @SafeMulDims(%struct.matvar_t* %14, i64* %12), !dbg !740
  %16 = load %struct.matvar_t*, %struct.matvar_t** %5, align 8, !dbg !741
  %17 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %16, i32 0, i32 13, !dbg !742
  %18 = load %struct.matvar_internal*, %struct.matvar_internal** %17, align 8, !dbg !742
  %19 = getelementptr inbounds %struct.matvar_internal, %struct.matvar_internal* %18, i32 0, i32 1, !dbg !743
  %20 = load i32, i32* %19, align 8, !dbg !743
  store i32 %20, i32* %10, align 4, !dbg !744
  %21 = load i32, i32* %8, align 4, !dbg !745
  %22 = icmp slt i32 %21, 0, !dbg !747
  br i1 %22, label %31, label %23, !dbg !748

; <label>:23:                                     ; preds = %4
  %24 = load i64, i64* %12, align 8, !dbg !749
  %25 = icmp ugt i64 %24, 0, !dbg !751
  br i1 %25, label %26, label %32, !dbg !752

; <label>:26:                                     ; preds = %23
  %27 = load i32, i32* %8, align 4, !dbg !753
  %28 = sext i32 %27 to i64, !dbg !753
  %29 = load i64, i64* %12, align 8, !dbg !755
  %30 = icmp uge i64 %28, %29, !dbg !756
  br i1 %30, label %31, label %32, !dbg !757

; <label>:31:                                     ; preds = %26, %4
  store i32 1, i32* %9, align 4, !dbg !758
  br label %37, !dbg !759

; <label>:32:                                     ; preds = %26, %23
  %33 = load i32, i32* %10, align 4, !dbg !760
  %34 = icmp slt i32 %33, 1, !dbg !762
  br i1 %34, label %35, label %36, !dbg !763

; <label>:35:                                     ; preds = %32
  store i32 1, i32* %9, align 4, !dbg !764
  br label %36, !dbg !765

; <label>:36:                                     ; preds = %35, %32
  br label %37

; <label>:37:                                     ; preds = %36, %31
  %38 = load i32, i32* %9, align 4, !dbg !766
  %39 = icmp ne i32 %38, 0, !dbg !766
  br i1 %39, label %58, label %40, !dbg !768

; <label>:40:                                     ; preds = %37
  %41 = load i32, i32* %7, align 4, !dbg !769
  %42 = icmp eq i32 %41, 2, !dbg !771
  br i1 %42, label %43, label %58, !dbg !772

; <label>:43:                                     ; preds = %40
  call void @llvm.dbg.declare(metadata i64* %13, metadata !773, metadata !146), !dbg !775
  %44 = load i8*, i8** %6, align 8, !dbg !776
  %45 = bitcast i8* %44 to i32*, !dbg !777
  %46 = load i32, i32* %45, align 4, !dbg !778
  %47 = sext i32 %46 to i64, !dbg !778
  store i64 %47, i64* %13, align 8, !dbg !775
  %48 = load i64, i64* %13, align 8, !dbg !779
  %49 = icmp ugt i64 %48, 0, !dbg !781
  br i1 %49, label %50, label %57, !dbg !782

; <label>:50:                                     ; preds = %43
  %51 = load %struct.matvar_t*, %struct.matvar_t** %5, align 8, !dbg !783
  %52 = load i64, i64* %13, align 8, !dbg !784
  %53 = sub i64 %52, 1, !dbg !785
  %54 = load i32, i32* %8, align 4, !dbg !786
  %55 = sext i32 %54 to i64, !dbg !786
  %56 = call %struct.matvar_t* @Mat_VarGetStructFieldByIndex(%struct.matvar_t* %51, i64 %53, i64 %55), !dbg !787
  store %struct.matvar_t* %56, %struct.matvar_t** %11, align 8, !dbg !788
  br label %57, !dbg !789

; <label>:57:                                     ; preds = %50, %43
  br label %71, !dbg !790

; <label>:58:                                     ; preds = %40, %37
  %59 = load i32, i32* %9, align 4, !dbg !791
  %60 = icmp ne i32 %59, 0, !dbg !791
  br i1 %60, label %70, label %61, !dbg !794

; <label>:61:                                     ; preds = %58
  %62 = load i32, i32* %7, align 4, !dbg !795
  %63 = icmp eq i32 %62, 1, !dbg !797
  br i1 %63, label %64, label %70, !dbg !798

; <label>:64:                                     ; preds = %61
  %65 = load %struct.matvar_t*, %struct.matvar_t** %5, align 8, !dbg !799
  %66 = load i8*, i8** %6, align 8, !dbg !801
  %67 = load i32, i32* %8, align 4, !dbg !802
  %68 = sext i32 %67 to i64, !dbg !802
  %69 = call %struct.matvar_t* @Mat_VarGetStructFieldByName(%struct.matvar_t* %65, i8* %66, i64 %68), !dbg !803
  store %struct.matvar_t* %69, %struct.matvar_t** %11, align 8, !dbg !804
  br label %70, !dbg !805

; <label>:70:                                     ; preds = %64, %61, %58
  br label %71

; <label>:71:                                     ; preds = %70, %57
  %72 = load %struct.matvar_t*, %struct.matvar_t** %11, align 8, !dbg !806
  ret %struct.matvar_t* %72, !dbg !807
}

; Function Attrs: nounwind uwtable
define %struct.matvar_t* @Mat_VarGetStructs(%struct.matvar_t*, i32*, i32*, i32*, i32) #0 !dbg !808 {
  %6 = alloca %struct.matvar_t*, align 8
  %7 = alloca %struct.matvar_t*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca [10 x i64], align 16
  %18 = alloca [10 x i64], align 16
  %19 = alloca [10 x i64], align 16
  %20 = alloca %struct.matvar_t**, align 8
  %21 = alloca %struct.matvar_t*, align 8
  %22 = alloca i32, align 4
  store %struct.matvar_t* %0, %struct.matvar_t** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.matvar_t** %7, metadata !811, metadata !146), !dbg !812
  store i32* %1, i32** %8, align 8
  call void @llvm.dbg.declare(metadata i32** %8, metadata !813, metadata !146), !dbg !814
  store i32* %2, i32** %9, align 8
  call void @llvm.dbg.declare(metadata i32** %9, metadata !815, metadata !146), !dbg !816
  store i32* %3, i32** %10, align 8
  call void @llvm.dbg.declare(metadata i32** %10, metadata !817, metadata !146), !dbg !818
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !819, metadata !146), !dbg !820
  call void @llvm.dbg.declare(metadata i64* %12, metadata !821, metadata !146), !dbg !822
  call void @llvm.dbg.declare(metadata i64* %13, metadata !823, metadata !146), !dbg !824
  call void @llvm.dbg.declare(metadata i64* %14, metadata !825, metadata !146), !dbg !826
  call void @llvm.dbg.declare(metadata i64* %15, metadata !827, metadata !146), !dbg !828
  call void @llvm.dbg.declare(metadata i64* %16, metadata !829, metadata !146), !dbg !830
  call void @llvm.dbg.declare(metadata [10 x i64]* %17, metadata !831, metadata !146), !dbg !835
  %23 = bitcast [10 x i64]* %17 to i8*, !dbg !835
  call void @llvm.memset.p0i8.i64(i8* %23, i8 0, i64 80, i32 16, i1 false), !dbg !835
  call void @llvm.dbg.declare(metadata [10 x i64]* %18, metadata !836, metadata !146), !dbg !837
  %24 = bitcast [10 x i64]* %18 to i8*, !dbg !837
  call void @llvm.memset.p0i8.i64(i8* %24, i8 0, i64 80, i32 16, i1 false), !dbg !838
  call void @llvm.dbg.declare(metadata [10 x i64]* %19, metadata !840, metadata !146), !dbg !841
  %25 = bitcast [10 x i64]* %19 to i8*, !dbg !841
  call void @llvm.memset.p0i8.i64(i8* %25, i8 0, i64 80, i32 16, i1 false), !dbg !842
  call void @llvm.dbg.declare(metadata %struct.matvar_t*** %20, metadata !844, metadata !146), !dbg !845
  call void @llvm.dbg.declare(metadata %struct.matvar_t** %21, metadata !846, metadata !146), !dbg !847
  call void @llvm.dbg.declare(metadata i32* %22, metadata !848, metadata !146), !dbg !849
  %26 = load %struct.matvar_t*, %struct.matvar_t** %7, align 8, !dbg !850
  %27 = icmp eq %struct.matvar_t* %26, null, !dbg !852
  br i1 %27, label %37, label %28, !dbg !853

; <label>:28:                                     ; preds = %5
  %29 = load i32*, i32** %8, align 8, !dbg !854
  %30 = icmp eq i32* %29, null, !dbg !856
  br i1 %30, label %37, label %31, !dbg !857

; <label>:31:                                     ; preds = %28
  %32 = load i32*, i32** %9, align 8, !dbg !858
  %33 = icmp eq i32* %32, null, !dbg !860
  br i1 %33, label %37, label %34, !dbg !861

; <label>:34:                                     ; preds = %31
  %35 = load i32*, i32** %10, align 8, !dbg !862
  %36 = icmp eq i32* %35, null, !dbg !863
  br i1 %36, label %37, label %38, !dbg !864

; <label>:37:                                     ; preds = %34, %31, %28, %5
  store %struct.matvar_t* null, %struct.matvar_t** %6, align 8, !dbg !866
  br label %370, !dbg !866

; <label>:38:                                     ; preds = %34
  %39 = load %struct.matvar_t*, %struct.matvar_t** %7, align 8, !dbg !868
  %40 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %39, i32 0, i32 1, !dbg !870
  %41 = load i32, i32* %40, align 8, !dbg !870
  %42 = icmp sgt i32 %41, 9, !dbg !871
  br i1 %42, label %43, label %44, !dbg !872

; <label>:43:                                     ; preds = %38
  store %struct.matvar_t* null, %struct.matvar_t** %6, align 8, !dbg !873
  br label %370, !dbg !873

; <label>:44:                                     ; preds = %38
  %45 = load %struct.matvar_t*, %struct.matvar_t** %7, align 8, !dbg !875
  %46 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %45, i32 0, i32 4, !dbg !877
  %47 = load i32, i32* %46, align 4, !dbg !877
  %48 = icmp ne i32 %47, 2, !dbg !878
  br i1 %48, label %49, label %50, !dbg !879

; <label>:49:                                     ; preds = %44
  store %struct.matvar_t* null, %struct.matvar_t** %6, align 8, !dbg !880
  br label %370, !dbg !880

; <label>:50:                                     ; preds = %44
  br label %51

; <label>:51:                                     ; preds = %50
  br label %52

; <label>:52:                                     ; preds = %51
  %53 = load %struct.matvar_t*, %struct.matvar_t** %7, align 8, !dbg !882
  %54 = call %struct.matvar_t* @Mat_VarDuplicate(%struct.matvar_t* %53, i32 0), !dbg !883
  store %struct.matvar_t* %54, %struct.matvar_t** %21, align 8, !dbg !884
  %55 = load i32, i32* %11, align 4, !dbg !885
  %56 = icmp ne i32 %55, 0, !dbg !885
  br i1 %56, label %60, label %57, !dbg !887

; <label>:57:                                     ; preds = %52
  %58 = load %struct.matvar_t*, %struct.matvar_t** %21, align 8, !dbg !888
  %59 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %58, i32 0, i32 11, !dbg !889
  store i32 1, i32* %59, align 8, !dbg !890
  br label %60, !dbg !888

; <label>:60:                                     ; preds = %57, %52
  %61 = load %struct.matvar_t*, %struct.matvar_t** %7, align 8, !dbg !891
  %62 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %61, i32 0, i32 13, !dbg !892
  %63 = load %struct.matvar_internal*, %struct.matvar_internal** %62, align 8, !dbg !892
  %64 = getelementptr inbounds %struct.matvar_internal, %struct.matvar_internal* %63, i32 0, i32 1, !dbg !893
  %65 = load i32, i32* %64, align 8, !dbg !893
  %66 = zext i32 %65 to i64, !dbg !891
  store i64 %66, i64* %15, align 8, !dbg !894
  %67 = load %struct.matvar_t*, %struct.matvar_t** %7, align 8, !dbg !895
  %68 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %67, i32 0, i32 8, !dbg !896
  %69 = load i64*, i64** %68, align 8, !dbg !896
  %70 = getelementptr inbounds i64, i64* %69, i64 0, !dbg !895
  %71 = load i64, i64* %70, align 8, !dbg !895
  %72 = getelementptr inbounds [10 x i64], [10 x i64]* %19, i64 0, i64 0, !dbg !897
  store i64 %71, i64* %72, align 16, !dbg !898
  %73 = load i32*, i32** %10, align 8, !dbg !899
  %74 = getelementptr inbounds i32, i32* %73, i64 0, !dbg !899
  %75 = load i32, i32* %74, align 4, !dbg !899
  %76 = sext i32 %75 to i64, !dbg !899
  store i64 %76, i64* %13, align 8, !dbg !900
  %77 = load i32*, i32** %8, align 8, !dbg !901
  %78 = getelementptr inbounds i32, i32* %77, i64 0, !dbg !901
  %79 = load i32, i32* %78, align 4, !dbg !901
  %80 = sext i32 %79 to i64, !dbg !901
  store i64 %80, i64* %14, align 8, !dbg !902
  %81 = load i32*, i32** %10, align 8, !dbg !903
  %82 = getelementptr inbounds i32, i32* %81, i64 0, !dbg !903
  %83 = load i32, i32* %82, align 4, !dbg !903
  %84 = sext i32 %83 to i64, !dbg !903
  %85 = load %struct.matvar_t*, %struct.matvar_t** %21, align 8, !dbg !904
  %86 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %85, i32 0, i32 8, !dbg !905
  %87 = load i64*, i64** %86, align 8, !dbg !905
  %88 = getelementptr inbounds i64, i64* %87, i64 0, !dbg !904
  store i64 %84, i64* %88, align 8, !dbg !906
  %89 = load i32*, i32** %8, align 8, !dbg !907
  %90 = getelementptr inbounds i32, i32* %89, i64 0, !dbg !907
  %91 = load i32, i32* %90, align 4, !dbg !907
  %92 = sext i32 %91 to i64, !dbg !907
  %93 = getelementptr inbounds [10 x i64], [10 x i64]* %17, i64 0, i64 0, !dbg !908
  store i64 %92, i64* %93, align 16, !dbg !909
  store i32 1, i32* %22, align 4, !dbg !910
  br label %94, !dbg !912

; <label>:94:                                     ; preds = %160, %60
  %95 = load i32, i32* %22, align 4, !dbg !913
  %96 = load %struct.matvar_t*, %struct.matvar_t** %7, align 8, !dbg !916
  %97 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %96, i32 0, i32 1, !dbg !917
  %98 = load i32, i32* %97, align 8, !dbg !917
  %99 = icmp slt i32 %95, %98, !dbg !918
  br i1 %99, label %100, label %163, !dbg !919

; <label>:100:                                    ; preds = %94
  %101 = load i32, i32* %22, align 4, !dbg !920
  %102 = sext i32 %101 to i64, !dbg !922
  %103 = load i32*, i32** %8, align 8, !dbg !922
  %104 = getelementptr inbounds i32, i32* %103, i64 %102, !dbg !922
  %105 = load i32, i32* %104, align 4, !dbg !922
  %106 = sext i32 %105 to i64, !dbg !922
  %107 = load i32, i32* %22, align 4, !dbg !923
  %108 = sext i32 %107 to i64, !dbg !924
  %109 = getelementptr inbounds [10 x i64], [10 x i64]* %17, i64 0, i64 %108, !dbg !924
  store i64 %106, i64* %109, align 8, !dbg !925
  %110 = load i32, i32* %22, align 4, !dbg !926
  %111 = sub nsw i32 %110, 1, !dbg !927
  %112 = sext i32 %111 to i64, !dbg !928
  %113 = getelementptr inbounds [10 x i64], [10 x i64]* %19, i64 0, i64 %112, !dbg !928
  %114 = load i64, i64* %113, align 8, !dbg !928
  %115 = load i32, i32* %22, align 4, !dbg !929
  %116 = sext i32 %115 to i64, !dbg !930
  %117 = load %struct.matvar_t*, %struct.matvar_t** %7, align 8, !dbg !930
  %118 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %117, i32 0, i32 8, !dbg !931
  %119 = load i64*, i64** %118, align 8, !dbg !931
  %120 = getelementptr inbounds i64, i64* %119, i64 %116, !dbg !930
  %121 = load i64, i64* %120, align 8, !dbg !930
  %122 = mul i64 %114, %121, !dbg !932
  %123 = load i32, i32* %22, align 4, !dbg !933
  %124 = sext i32 %123 to i64, !dbg !934
  %125 = getelementptr inbounds [10 x i64], [10 x i64]* %19, i64 0, i64 %124, !dbg !934
  store i64 %122, i64* %125, align 8, !dbg !935
  %126 = load i32, i32* %22, align 4, !dbg !936
  %127 = sext i32 %126 to i64, !dbg !937
  %128 = load i32*, i32** %10, align 8, !dbg !937
  %129 = getelementptr inbounds i32, i32* %128, i64 %127, !dbg !937
  %130 = load i32, i32* %129, align 4, !dbg !937
  %131 = sext i32 %130 to i64, !dbg !937
  %132 = load i64, i64* %13, align 8, !dbg !938
  %133 = mul i64 %132, %131, !dbg !938
  store i64 %133, i64* %13, align 8, !dbg !938
  %134 = load i32, i32* %22, align 4, !dbg !939
  %135 = sext i32 %134 to i64, !dbg !940
  %136 = load i32*, i32** %8, align 8, !dbg !940
  %137 = getelementptr inbounds i32, i32* %136, i64 %135, !dbg !940
  %138 = load i32, i32* %137, align 4, !dbg !940
  %139 = sext i32 %138 to i64, !dbg !940
  %140 = load i32, i32* %22, align 4, !dbg !941
  %141 = sub nsw i32 %140, 1, !dbg !942
  %142 = sext i32 %141 to i64, !dbg !943
  %143 = getelementptr inbounds [10 x i64], [10 x i64]* %19, i64 0, i64 %142, !dbg !943
  %144 = load i64, i64* %143, align 8, !dbg !943
  %145 = mul i64 %139, %144, !dbg !944
  %146 = load i64, i64* %14, align 8, !dbg !945
  %147 = add i64 %146, %145, !dbg !945
  store i64 %147, i64* %14, align 8, !dbg !945
  %148 = load i32, i32* %22, align 4, !dbg !946
  %149 = sext i32 %148 to i64, !dbg !947
  %150 = load i32*, i32** %10, align 8, !dbg !947
  %151 = getelementptr inbounds i32, i32* %150, i64 %149, !dbg !947
  %152 = load i32, i32* %151, align 4, !dbg !947
  %153 = sext i32 %152 to i64, !dbg !947
  %154 = load i32, i32* %22, align 4, !dbg !948
  %155 = sext i32 %154 to i64, !dbg !949
  %156 = load %struct.matvar_t*, %struct.matvar_t** %21, align 8, !dbg !949
  %157 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %156, i32 0, i32 8, !dbg !950
  %158 = load i64*, i64** %157, align 8, !dbg !950
  %159 = getelementptr inbounds i64, i64* %158, i64 %155, !dbg !949
  store i64 %153, i64* %159, align 8, !dbg !951
  br label %160, !dbg !952

; <label>:160:                                    ; preds = %100
  %161 = load i32, i32* %22, align 4, !dbg !953
  %162 = add nsw i32 %161, 1, !dbg !953
  store i32 %162, i32* %22, align 4, !dbg !953
  br label %94, !dbg !955, !llvm.loop !956

; <label>:163:                                    ; preds = %94
  %164 = load i64, i64* %15, align 8, !dbg !958
  %165 = load i64, i64* %14, align 8, !dbg !959
  %166 = mul i64 %165, %164, !dbg !959
  store i64 %166, i64* %14, align 8, !dbg !959
  %167 = load i64, i64* %13, align 8, !dbg !960
  %168 = load i64, i64* %15, align 8, !dbg !961
  %169 = mul i64 %167, %168, !dbg !962
  %170 = mul i64 %169, 8, !dbg !963
  %171 = load %struct.matvar_t*, %struct.matvar_t** %21, align 8, !dbg !964
  %172 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %171, i32 0, i32 0, !dbg !965
  store i64 %170, i64* %172, align 8, !dbg !966
  %173 = load %struct.matvar_t*, %struct.matvar_t** %21, align 8, !dbg !967
  %174 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %173, i32 0, i32 0, !dbg !968
  %175 = load i64, i64* %174, align 8, !dbg !968
  %176 = call noalias i8* @malloc(i64 %175) #6, !dbg !969
  %177 = load %struct.matvar_t*, %struct.matvar_t** %21, align 8, !dbg !970
  %178 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %177, i32 0, i32 10, !dbg !971
  store i8* %176, i8** %178, align 8, !dbg !972
  %179 = load %struct.matvar_t*, %struct.matvar_t** %21, align 8, !dbg !973
  %180 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %179, i32 0, i32 10, !dbg !975
  %181 = load i8*, i8** %180, align 8, !dbg !975
  %182 = icmp eq i8* %181, null, !dbg !976
  br i1 %182, label %183, label %185, !dbg !977

; <label>:183:                                    ; preds = %163
  %184 = load %struct.matvar_t*, %struct.matvar_t** %21, align 8, !dbg !978
  call void @Mat_VarFree(%struct.matvar_t* %184), !dbg !980
  store %struct.matvar_t* null, %struct.matvar_t** %6, align 8, !dbg !981
  br label %370, !dbg !981

; <label>:185:                                    ; preds = %163
  %186 = load %struct.matvar_t*, %struct.matvar_t** %21, align 8, !dbg !982
  %187 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %186, i32 0, i32 10, !dbg !983
  %188 = load i8*, i8** %187, align 8, !dbg !983
  %189 = bitcast i8* %188 to %struct.matvar_t**, !dbg !984
  store %struct.matvar_t** %189, %struct.matvar_t*** %20, align 8, !dbg !985
  store i64 0, i64* %12, align 8, !dbg !986
  br label %190, !dbg !988

; <label>:190:                                    ; preds = %361, %185
  %191 = load i64, i64* %12, align 8, !dbg !989
  %192 = load i64, i64* %13, align 8, !dbg !992
  %193 = icmp ult i64 %191, %192, !dbg !993
  br i1 %193, label %194, label %368, !dbg !994

; <label>:194:                                    ; preds = %190
  store i32 0, i32* %22, align 4, !dbg !995
  br label %195, !dbg !998

; <label>:195:                                    ; preds = %262, %194
  %196 = load i32, i32* %22, align 4, !dbg !999
  %197 = load i32*, i32** %10, align 8, !dbg !1002
  %198 = getelementptr inbounds i32, i32* %197, i64 0, !dbg !1002
  %199 = load i32, i32* %198, align 4, !dbg !1002
  %200 = icmp slt i32 %196, %199, !dbg !1003
  br i1 %200, label %201, label %265, !dbg !1004

; <label>:201:                                    ; preds = %195
  store i64 0, i64* %16, align 8, !dbg !1005
  br label %202, !dbg !1008

; <label>:202:                                    ; preds = %249, %201
  %203 = load i64, i64* %16, align 8, !dbg !1009
  %204 = load i64, i64* %15, align 8, !dbg !1012
  %205 = icmp ult i64 %203, %204, !dbg !1013
  br i1 %205, label %206, label %252, !dbg !1014

; <label>:206:                                    ; preds = %202
  %207 = load i32, i32* %11, align 4, !dbg !1015
  %208 = icmp ne i32 %207, 0, !dbg !1015
  br i1 %208, label %209, label %228, !dbg !1018

; <label>:209:                                    ; preds = %206
  %210 = load %struct.matvar_t*, %struct.matvar_t** %7, align 8, !dbg !1019
  %211 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %210, i32 0, i32 10, !dbg !1020
  %212 = load i8*, i8** %211, align 8, !dbg !1020
  %213 = bitcast i8* %212 to %struct.matvar_t**, !dbg !1021
  %214 = load i64, i64* %14, align 8, !dbg !1022
  %215 = getelementptr inbounds %struct.matvar_t*, %struct.matvar_t** %213, i64 %214, !dbg !1023
  %216 = load %struct.matvar_t*, %struct.matvar_t** %215, align 8, !dbg !1024
  %217 = call %struct.matvar_t* @Mat_VarDuplicate(%struct.matvar_t* %216, i32 1), !dbg !1025
  %218 = load i64, i64* %12, align 8, !dbg !1026
  %219 = load i32, i32* %22, align 4, !dbg !1027
  %220 = sext i32 %219 to i64, !dbg !1027
  %221 = add i64 %218, %220, !dbg !1028
  %222 = load i64, i64* %15, align 8, !dbg !1029
  %223 = mul i64 %221, %222, !dbg !1030
  %224 = load i64, i64* %16, align 8, !dbg !1031
  %225 = add i64 %223, %224, !dbg !1032
  %226 = load %struct.matvar_t**, %struct.matvar_t*** %20, align 8, !dbg !1033
  %227 = getelementptr inbounds %struct.matvar_t*, %struct.matvar_t** %226, i64 %225, !dbg !1033
  store %struct.matvar_t* %217, %struct.matvar_t** %227, align 8, !dbg !1034
  br label %246, !dbg !1033

; <label>:228:                                    ; preds = %206
  %229 = load %struct.matvar_t*, %struct.matvar_t** %7, align 8, !dbg !1035
  %230 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %229, i32 0, i32 10, !dbg !1036
  %231 = load i8*, i8** %230, align 8, !dbg !1036
  %232 = bitcast i8* %231 to %struct.matvar_t**, !dbg !1037
  %233 = load i64, i64* %14, align 8, !dbg !1038
  %234 = getelementptr inbounds %struct.matvar_t*, %struct.matvar_t** %232, i64 %233, !dbg !1039
  %235 = load %struct.matvar_t*, %struct.matvar_t** %234, align 8, !dbg !1040
  %236 = load i64, i64* %12, align 8, !dbg !1041
  %237 = load i32, i32* %22, align 4, !dbg !1042
  %238 = sext i32 %237 to i64, !dbg !1042
  %239 = add i64 %236, %238, !dbg !1043
  %240 = load i64, i64* %15, align 8, !dbg !1044
  %241 = mul i64 %239, %240, !dbg !1045
  %242 = load i64, i64* %16, align 8, !dbg !1046
  %243 = add i64 %241, %242, !dbg !1047
  %244 = load %struct.matvar_t**, %struct.matvar_t*** %20, align 8, !dbg !1048
  %245 = getelementptr inbounds %struct.matvar_t*, %struct.matvar_t** %244, i64 %243, !dbg !1048
  store %struct.matvar_t* %235, %struct.matvar_t** %245, align 8, !dbg !1049
  br label %246

; <label>:246:                                    ; preds = %228, %209
  %247 = load i64, i64* %14, align 8, !dbg !1050
  %248 = add i64 %247, 1, !dbg !1050
  store i64 %248, i64* %14, align 8, !dbg !1050
  br label %249, !dbg !1051

; <label>:249:                                    ; preds = %246
  %250 = load i64, i64* %16, align 8, !dbg !1052
  %251 = add i64 %250, 1, !dbg !1052
  store i64 %251, i64* %16, align 8, !dbg !1052
  br label %202, !dbg !1054, !llvm.loop !1055

; <label>:252:                                    ; preds = %202
  %253 = load i32*, i32** %9, align 8, !dbg !1057
  %254 = getelementptr inbounds i32, i32* %253, i64 0, !dbg !1057
  %255 = load i32, i32* %254, align 4, !dbg !1057
  %256 = sub nsw i32 %255, 1, !dbg !1058
  %257 = sext i32 %256 to i64, !dbg !1059
  %258 = load i64, i64* %15, align 8, !dbg !1060
  %259 = mul i64 %257, %258, !dbg !1061
  %260 = load i64, i64* %14, align 8, !dbg !1062
  %261 = add i64 %260, %259, !dbg !1062
  store i64 %261, i64* %14, align 8, !dbg !1062
  br label %262, !dbg !1063

; <label>:262:                                    ; preds = %252
  %263 = load i32, i32* %22, align 4, !dbg !1064
  %264 = add nsw i32 %263, 1, !dbg !1064
  store i32 %264, i32* %22, align 4, !dbg !1064
  br label %195, !dbg !1066, !llvm.loop !1067

; <label>:265:                                    ; preds = %195
  %266 = load i32*, i32** %8, align 8, !dbg !1069
  %267 = getelementptr inbounds i32, i32* %266, i64 0, !dbg !1069
  %268 = load i32, i32* %267, align 4, !dbg !1069
  %269 = sext i32 %268 to i64, !dbg !1069
  %270 = getelementptr inbounds [10 x i64], [10 x i64]* %17, i64 0, i64 0, !dbg !1070
  store i64 %269, i64* %270, align 16, !dbg !1071
  %271 = getelementptr inbounds [10 x i64], [10 x i64]* %17, i64 0, i64 0, !dbg !1072
  %272 = load i64, i64* %271, align 16, !dbg !1072
  store i64 %272, i64* %14, align 8, !dbg !1073
  %273 = getelementptr inbounds [10 x i64], [10 x i64]* %18, i64 0, i64 1, !dbg !1074
  %274 = load i64, i64* %273, align 8, !dbg !1075
  %275 = add i64 %274, 1, !dbg !1075
  store i64 %275, i64* %273, align 8, !dbg !1075
  %276 = load i32*, i32** %9, align 8, !dbg !1076
  %277 = getelementptr inbounds i32, i32* %276, i64 1, !dbg !1076
  %278 = load i32, i32* %277, align 4, !dbg !1076
  %279 = sext i32 %278 to i64, !dbg !1076
  %280 = getelementptr inbounds [10 x i64], [10 x i64]* %17, i64 0, i64 1, !dbg !1077
  %281 = load i64, i64* %280, align 8, !dbg !1078
  %282 = add i64 %281, %279, !dbg !1078
  store i64 %282, i64* %280, align 8, !dbg !1078
  store i32 1, i32* %22, align 4, !dbg !1079
  br label %283, !dbg !1081

; <label>:283:                                    ; preds = %354, %265
  %284 = load i32, i32* %22, align 4, !dbg !1082
  %285 = load %struct.matvar_t*, %struct.matvar_t** %7, align 8, !dbg !1085
  %286 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %285, i32 0, i32 1, !dbg !1086
  %287 = load i32, i32* %286, align 8, !dbg !1086
  %288 = icmp slt i32 %284, %287, !dbg !1087
  br i1 %288, label %289, label %357, !dbg !1088

; <label>:289:                                    ; preds = %283
  %290 = load i32, i32* %22, align 4, !dbg !1089
  %291 = sext i32 %290 to i64, !dbg !1092
  %292 = getelementptr inbounds [10 x i64], [10 x i64]* %18, i64 0, i64 %291, !dbg !1092
  %293 = load i64, i64* %292, align 8, !dbg !1092
  %294 = load i32, i32* %22, align 4, !dbg !1093
  %295 = sext i32 %294 to i64, !dbg !1094
  %296 = load i32*, i32** %10, align 8, !dbg !1094
  %297 = getelementptr inbounds i32, i32* %296, i64 %295, !dbg !1094
  %298 = load i32, i32* %297, align 4, !dbg !1094
  %299 = sext i32 %298 to i64, !dbg !1094
  %300 = icmp eq i64 %293, %299, !dbg !1095
  br i1 %300, label %301, label %341, !dbg !1096

; <label>:301:                                    ; preds = %289
  %302 = load i32, i32* %22, align 4, !dbg !1097
  %303 = sext i32 %302 to i64, !dbg !1099
  %304 = getelementptr inbounds [10 x i64], [10 x i64]* %18, i64 0, i64 %303, !dbg !1099
  store i64 0, i64* %304, align 8, !dbg !1100
  %305 = load i32, i32* %22, align 4, !dbg !1101
  %306 = sext i32 %305 to i64, !dbg !1102
  %307 = load i32*, i32** %8, align 8, !dbg !1102
  %308 = getelementptr inbounds i32, i32* %307, i64 %306, !dbg !1102
  %309 = load i32, i32* %308, align 4, !dbg !1102
  %310 = sext i32 %309 to i64, !dbg !1102
  %311 = load i32, i32* %22, align 4, !dbg !1103
  %312 = sext i32 %311 to i64, !dbg !1104
  %313 = getelementptr inbounds [10 x i64], [10 x i64]* %17, i64 0, i64 %312, !dbg !1104
  store i64 %310, i64* %313, align 8, !dbg !1105
  %314 = load i32, i32* %22, align 4, !dbg !1106
  %315 = load %struct.matvar_t*, %struct.matvar_t** %7, align 8, !dbg !1108
  %316 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %315, i32 0, i32 1, !dbg !1109
  %317 = load i32, i32* %316, align 8, !dbg !1109
  %318 = sub nsw i32 %317, 1, !dbg !1110
  %319 = icmp slt i32 %314, %318, !dbg !1111
  br i1 %319, label %320, label %340, !dbg !1112

; <label>:320:                                    ; preds = %301
  %321 = load i32, i32* %22, align 4, !dbg !1113
  %322 = add nsw i32 %321, 1, !dbg !1115
  %323 = sext i32 %322 to i64, !dbg !1116
  %324 = getelementptr inbounds [10 x i64], [10 x i64]* %18, i64 0, i64 %323, !dbg !1116
  %325 = load i64, i64* %324, align 8, !dbg !1117
  %326 = add i64 %325, 1, !dbg !1117
  store i64 %326, i64* %324, align 8, !dbg !1117
  %327 = load i32, i32* %22, align 4, !dbg !1118
  %328 = add nsw i32 %327, 1, !dbg !1119
  %329 = sext i32 %328 to i64, !dbg !1120
  %330 = load i32*, i32** %9, align 8, !dbg !1120
  %331 = getelementptr inbounds i32, i32* %330, i64 %329, !dbg !1120
  %332 = load i32, i32* %331, align 4, !dbg !1120
  %333 = sext i32 %332 to i64, !dbg !1120
  %334 = load i32, i32* %22, align 4, !dbg !1121
  %335 = add nsw i32 %334, 1, !dbg !1122
  %336 = sext i32 %335 to i64, !dbg !1123
  %337 = getelementptr inbounds [10 x i64], [10 x i64]* %17, i64 0, i64 %336, !dbg !1123
  %338 = load i64, i64* %337, align 8, !dbg !1124
  %339 = add i64 %338, %333, !dbg !1124
  store i64 %339, i64* %337, align 8, !dbg !1124
  br label %340, !dbg !1125

; <label>:340:                                    ; preds = %320, %301
  br label %341, !dbg !1126

; <label>:341:                                    ; preds = %340, %289
  %342 = load i32, i32* %22, align 4, !dbg !1127
  %343 = sext i32 %342 to i64, !dbg !1128
  %344 = getelementptr inbounds [10 x i64], [10 x i64]* %17, i64 0, i64 %343, !dbg !1128
  %345 = load i64, i64* %344, align 8, !dbg !1128
  %346 = load i32, i32* %22, align 4, !dbg !1129
  %347 = sub nsw i32 %346, 1, !dbg !1130
  %348 = sext i32 %347 to i64, !dbg !1131
  %349 = getelementptr inbounds [10 x i64], [10 x i64]* %19, i64 0, i64 %348, !dbg !1131
  %350 = load i64, i64* %349, align 8, !dbg !1131
  %351 = mul i64 %345, %350, !dbg !1132
  %352 = load i64, i64* %14, align 8, !dbg !1133
  %353 = add i64 %352, %351, !dbg !1133
  store i64 %353, i64* %14, align 8, !dbg !1133
  br label %354, !dbg !1134

; <label>:354:                                    ; preds = %341
  %355 = load i32, i32* %22, align 4, !dbg !1135
  %356 = add nsw i32 %355, 1, !dbg !1135
  store i32 %356, i32* %22, align 4, !dbg !1135
  br label %283, !dbg !1137, !llvm.loop !1138

; <label>:357:                                    ; preds = %283
  %358 = load i64, i64* %15, align 8, !dbg !1140
  %359 = load i64, i64* %14, align 8, !dbg !1141
  %360 = mul i64 %359, %358, !dbg !1141
  store i64 %360, i64* %14, align 8, !dbg !1141
  br label %361, !dbg !1142

; <label>:361:                                    ; preds = %357
  %362 = load i32*, i32** %10, align 8, !dbg !1143
  %363 = getelementptr inbounds i32, i32* %362, i64 0, !dbg !1143
  %364 = load i32, i32* %363, align 4, !dbg !1143
  %365 = sext i32 %364 to i64, !dbg !1143
  %366 = load i64, i64* %12, align 8, !dbg !1145
  %367 = add i64 %366, %365, !dbg !1145
  store i64 %367, i64* %12, align 8, !dbg !1145
  br label %190, !dbg !1146, !llvm.loop !1147

; <label>:368:                                    ; preds = %190
  %369 = load %struct.matvar_t*, %struct.matvar_t** %21, align 8, !dbg !1149
  store %struct.matvar_t* %369, %struct.matvar_t** %6, align 8, !dbg !1150
  br label %370, !dbg !1150

; <label>:370:                                    ; preds = %368, %183, %49, %43, %37
  %371 = load %struct.matvar_t*, %struct.matvar_t** %6, align 8, !dbg !1151
  ret %struct.matvar_t* %371, !dbg !1151
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

declare %struct.matvar_t* @Mat_VarDuplicate(%struct.matvar_t*, i32) #2

; Function Attrs: nounwind uwtable
define %struct.matvar_t* @Mat_VarGetStructsLinear(%struct.matvar_t*, i32, i32, i32, i32) #0 !dbg !1152 {
  %6 = alloca %struct.matvar_t*, align 8
  %7 = alloca %struct.matvar_t*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.matvar_t*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.matvar_t**, align 8
  store %struct.matvar_t* %0, %struct.matvar_t** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.matvar_t** %7, metadata !1155, metadata !146), !dbg !1156
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1157, metadata !146), !dbg !1158
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1159, metadata !146), !dbg !1160
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1161, metadata !146), !dbg !1162
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1163, metadata !146), !dbg !1164
  call void @llvm.dbg.declare(metadata %struct.matvar_t** %12, metadata !1165, metadata !146), !dbg !1166
  %18 = load %struct.matvar_t*, %struct.matvar_t** %7, align 8, !dbg !1167
  %19 = icmp eq %struct.matvar_t* %18, null, !dbg !1169
  br i1 %19, label %25, label %20, !dbg !1170

; <label>:20:                                     ; preds = %5
  %21 = load %struct.matvar_t*, %struct.matvar_t** %7, align 8, !dbg !1171
  %22 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %21, i32 0, i32 1, !dbg !1173
  %23 = load i32, i32* %22, align 8, !dbg !1173
  %24 = icmp sgt i32 %23, 10, !dbg !1174
  br i1 %24, label %25, label %26, !dbg !1175

; <label>:25:                                     ; preds = %20, %5
  store %struct.matvar_t* null, %struct.matvar_t** %12, align 8, !dbg !1176
  br label %153, !dbg !1178

; <label>:26:                                     ; preds = %20
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1179, metadata !146), !dbg !1181
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1182, metadata !146), !dbg !1183
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1184, metadata !146), !dbg !1185
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1186, metadata !146), !dbg !1187
  call void @llvm.dbg.declare(metadata %struct.matvar_t*** %17, metadata !1188, metadata !146), !dbg !1189
  %27 = load %struct.matvar_t*, %struct.matvar_t** %7, align 8, !dbg !1190
  %28 = call %struct.matvar_t* @Mat_VarDuplicate(%struct.matvar_t* %27, i32 0), !dbg !1191
  store %struct.matvar_t* %28, %struct.matvar_t** %12, align 8, !dbg !1192
  %29 = load i32, i32* %11, align 4, !dbg !1193
  %30 = icmp ne i32 %29, 0, !dbg !1193
  br i1 %30, label %34, label %31, !dbg !1195

; <label>:31:                                     ; preds = %26
  %32 = load %struct.matvar_t*, %struct.matvar_t** %12, align 8, !dbg !1196
  %33 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %32, i32 0, i32 11, !dbg !1197
  store i32 1, i32* %33, align 8, !dbg !1198
  br label %34, !dbg !1196

; <label>:34:                                     ; preds = %31, %26
  %35 = load %struct.matvar_t*, %struct.matvar_t** %7, align 8, !dbg !1199
  %36 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %35, i32 0, i32 13, !dbg !1200
  %37 = load %struct.matvar_internal*, %struct.matvar_internal** %36, align 8, !dbg !1200
  %38 = getelementptr inbounds %struct.matvar_internal, %struct.matvar_internal* %37, i32 0, i32 1, !dbg !1201
  %39 = load i32, i32* %38, align 8, !dbg !1201
  store i32 %39, i32* %16, align 4, !dbg !1202
  %40 = load i32, i32* %10, align 4, !dbg !1203
  %41 = sext i32 %40 to i64, !dbg !1204
  %42 = load i32, i32* %16, align 4, !dbg !1205
  %43 = sext i32 %42 to i64, !dbg !1205
  %44 = mul i64 %41, %43, !dbg !1206
  %45 = mul i64 %44, 8, !dbg !1207
  %46 = load %struct.matvar_t*, %struct.matvar_t** %12, align 8, !dbg !1208
  %47 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %46, i32 0, i32 0, !dbg !1209
  store i64 %45, i64* %47, align 8, !dbg !1210
  %48 = load %struct.matvar_t*, %struct.matvar_t** %12, align 8, !dbg !1211
  %49 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %48, i32 0, i32 0, !dbg !1212
  %50 = load i64, i64* %49, align 8, !dbg !1212
  %51 = call noalias i8* @malloc(i64 %50) #6, !dbg !1213
  %52 = load %struct.matvar_t*, %struct.matvar_t** %12, align 8, !dbg !1214
  %53 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %52, i32 0, i32 10, !dbg !1215
  store i8* %51, i8** %53, align 8, !dbg !1216
  %54 = load %struct.matvar_t*, %struct.matvar_t** %12, align 8, !dbg !1217
  %55 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %54, i32 0, i32 10, !dbg !1219
  %56 = load i8*, i8** %55, align 8, !dbg !1219
  %57 = icmp eq i8* %56, null, !dbg !1220
  br i1 %57, label %58, label %60, !dbg !1221

; <label>:58:                                     ; preds = %34
  %59 = load %struct.matvar_t*, %struct.matvar_t** %12, align 8, !dbg !1222
  call void @Mat_VarFree(%struct.matvar_t* %59), !dbg !1224
  store %struct.matvar_t* null, %struct.matvar_t** %6, align 8, !dbg !1225
  br label %155, !dbg !1225

; <label>:60:                                     ; preds = %34
  %61 = load i32, i32* %10, align 4, !dbg !1226
  %62 = sext i32 %61 to i64, !dbg !1226
  %63 = load %struct.matvar_t*, %struct.matvar_t** %12, align 8, !dbg !1227
  %64 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %63, i32 0, i32 8, !dbg !1228
  %65 = load i64*, i64** %64, align 8, !dbg !1228
  %66 = getelementptr inbounds i64, i64* %65, i64 0, !dbg !1227
  store i64 %62, i64* %66, align 8, !dbg !1229
  %67 = load %struct.matvar_t*, %struct.matvar_t** %12, align 8, !dbg !1230
  %68 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %67, i32 0, i32 8, !dbg !1231
  %69 = load i64*, i64** %68, align 8, !dbg !1231
  %70 = getelementptr inbounds i64, i64* %69, i64 1, !dbg !1230
  store i64 1, i64* %70, align 8, !dbg !1232
  %71 = load %struct.matvar_t*, %struct.matvar_t** %12, align 8, !dbg !1233
  %72 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %71, i32 0, i32 10, !dbg !1234
  %73 = load i8*, i8** %72, align 8, !dbg !1234
  %74 = bitcast i8* %73 to %struct.matvar_t**, !dbg !1235
  store %struct.matvar_t** %74, %struct.matvar_t*** %17, align 8, !dbg !1236
  %75 = load i32, i32* %8, align 4, !dbg !1237
  %76 = load i32, i32* %16, align 4, !dbg !1238
  %77 = mul nsw i32 %75, %76, !dbg !1239
  store i32 %77, i32* %14, align 4, !dbg !1240
  store i32 0, i32* %13, align 4, !dbg !1241
  br label %78, !dbg !1243

; <label>:78:                                     ; preds = %149, %60
  %79 = load i32, i32* %13, align 4, !dbg !1244
  %80 = load i32, i32* %10, align 4, !dbg !1247
  %81 = icmp slt i32 %79, %80, !dbg !1248
  br i1 %81, label %82, label %152, !dbg !1249

; <label>:82:                                     ; preds = %78
  %83 = load i32, i32* %11, align 4, !dbg !1250
  %84 = icmp ne i32 %83, 0, !dbg !1250
  br i1 %84, label %85, label %114, !dbg !1253

; <label>:85:                                     ; preds = %82
  store i32 0, i32* %15, align 4, !dbg !1254
  br label %86, !dbg !1257

; <label>:86:                                     ; preds = %110, %85
  %87 = load i32, i32* %15, align 4, !dbg !1258
  %88 = load i32, i32* %16, align 4, !dbg !1261
  %89 = icmp slt i32 %87, %88, !dbg !1262
  br i1 %89, label %90, label %113, !dbg !1263

; <label>:90:                                     ; preds = %86
  %91 = load %struct.matvar_t*, %struct.matvar_t** %7, align 8, !dbg !1264
  %92 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %91, i32 0, i32 10, !dbg !1266
  %93 = load i8*, i8** %92, align 8, !dbg !1266
  %94 = bitcast i8* %93 to %struct.matvar_t**, !dbg !1267
  %95 = load i32, i32* %14, align 4, !dbg !1268
  %96 = sext i32 %95 to i64, !dbg !1269
  %97 = getelementptr inbounds %struct.matvar_t*, %struct.matvar_t** %94, i64 %96, !dbg !1269
  %98 = load %struct.matvar_t*, %struct.matvar_t** %97, align 8, !dbg !1270
  %99 = call %struct.matvar_t* @Mat_VarDuplicate(%struct.matvar_t* %98, i32 1), !dbg !1271
  %100 = load i32, i32* %13, align 4, !dbg !1272
  %101 = load i32, i32* %16, align 4, !dbg !1273
  %102 = mul nsw i32 %100, %101, !dbg !1274
  %103 = load i32, i32* %15, align 4, !dbg !1275
  %104 = add nsw i32 %102, %103, !dbg !1276
  %105 = sext i32 %104 to i64, !dbg !1277
  %106 = load %struct.matvar_t**, %struct.matvar_t*** %17, align 8, !dbg !1277
  %107 = getelementptr inbounds %struct.matvar_t*, %struct.matvar_t** %106, i64 %105, !dbg !1277
  store %struct.matvar_t* %99, %struct.matvar_t** %107, align 8, !dbg !1278
  %108 = load i32, i32* %14, align 4, !dbg !1279
  %109 = add nsw i32 %108, 1, !dbg !1279
  store i32 %109, i32* %14, align 4, !dbg !1279
  br label %110, !dbg !1280

; <label>:110:                                    ; preds = %90
  %111 = load i32, i32* %15, align 4, !dbg !1281
  %112 = add nsw i32 %111, 1, !dbg !1281
  store i32 %112, i32* %15, align 4, !dbg !1281
  br label %86, !dbg !1283, !llvm.loop !1284

; <label>:113:                                    ; preds = %86
  br label %142, !dbg !1286

; <label>:114:                                    ; preds = %82
  store i32 0, i32* %15, align 4, !dbg !1287
  br label %115, !dbg !1290

; <label>:115:                                    ; preds = %138, %114
  %116 = load i32, i32* %15, align 4, !dbg !1291
  %117 = load i32, i32* %16, align 4, !dbg !1294
  %118 = icmp slt i32 %116, %117, !dbg !1295
  br i1 %118, label %119, label %141, !dbg !1296

; <label>:119:                                    ; preds = %115
  %120 = load %struct.matvar_t*, %struct.matvar_t** %7, align 8, !dbg !1297
  %121 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %120, i32 0, i32 10, !dbg !1299
  %122 = load i8*, i8** %121, align 8, !dbg !1299
  %123 = bitcast i8* %122 to %struct.matvar_t**, !dbg !1300
  %124 = load i32, i32* %14, align 4, !dbg !1301
  %125 = sext i32 %124 to i64, !dbg !1302
  %126 = getelementptr inbounds %struct.matvar_t*, %struct.matvar_t** %123, i64 %125, !dbg !1302
  %127 = load %struct.matvar_t*, %struct.matvar_t** %126, align 8, !dbg !1303
  %128 = load i32, i32* %13, align 4, !dbg !1304
  %129 = load i32, i32* %16, align 4, !dbg !1305
  %130 = mul nsw i32 %128, %129, !dbg !1306
  %131 = load i32, i32* %15, align 4, !dbg !1307
  %132 = add nsw i32 %130, %131, !dbg !1308
  %133 = sext i32 %132 to i64, !dbg !1309
  %134 = load %struct.matvar_t**, %struct.matvar_t*** %17, align 8, !dbg !1309
  %135 = getelementptr inbounds %struct.matvar_t*, %struct.matvar_t** %134, i64 %133, !dbg !1309
  store %struct.matvar_t* %127, %struct.matvar_t** %135, align 8, !dbg !1310
  %136 = load i32, i32* %14, align 4, !dbg !1311
  %137 = add nsw i32 %136, 1, !dbg !1311
  store i32 %137, i32* %14, align 4, !dbg !1311
  br label %138, !dbg !1312

; <label>:138:                                    ; preds = %119
  %139 = load i32, i32* %15, align 4, !dbg !1313
  %140 = add nsw i32 %139, 1, !dbg !1313
  store i32 %140, i32* %15, align 4, !dbg !1313
  br label %115, !dbg !1315, !llvm.loop !1316

; <label>:141:                                    ; preds = %115
  br label %142

; <label>:142:                                    ; preds = %141, %113
  %143 = load i32, i32* %9, align 4, !dbg !1318
  %144 = sub nsw i32 %143, 1, !dbg !1319
  %145 = load i32, i32* %16, align 4, !dbg !1320
  %146 = mul nsw i32 %144, %145, !dbg !1321
  %147 = load i32, i32* %14, align 4, !dbg !1322
  %148 = add nsw i32 %147, %146, !dbg !1322
  store i32 %148, i32* %14, align 4, !dbg !1322
  br label %149, !dbg !1323

; <label>:149:                                    ; preds = %142
  %150 = load i32, i32* %13, align 4, !dbg !1324
  %151 = add nsw i32 %150, 1, !dbg !1324
  store i32 %151, i32* %13, align 4, !dbg !1324
  br label %78, !dbg !1326, !llvm.loop !1327

; <label>:152:                                    ; preds = %78
  br label %153

; <label>:153:                                    ; preds = %152, %25
  %154 = load %struct.matvar_t*, %struct.matvar_t** %12, align 8, !dbg !1329
  store %struct.matvar_t* %154, %struct.matvar_t** %6, align 8, !dbg !1330
  br label %155, !dbg !1330

; <label>:155:                                    ; preds = %153, %58
  %156 = load %struct.matvar_t*, %struct.matvar_t** %6, align 8, !dbg !1331
  ret %struct.matvar_t* %156, !dbg !1331
}

; Function Attrs: nounwind uwtable
define %struct.matvar_t* @Mat_VarSetStructFieldByIndex(%struct.matvar_t*, i64, i64, %struct.matvar_t*) #0 !dbg !1332 {
  %5 = alloca %struct.matvar_t*, align 8
  %6 = alloca %struct.matvar_t*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.matvar_t*, align 8
  %10 = alloca %struct.matvar_t*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.matvar_t**, align 8
  store %struct.matvar_t* %0, %struct.matvar_t** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.matvar_t** %6, metadata !1335, metadata !146), !dbg !1336
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1337, metadata !146), !dbg !1338
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1339, metadata !146), !dbg !1340
  store %struct.matvar_t* %3, %struct.matvar_t** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.matvar_t** %9, metadata !1341, metadata !146), !dbg !1342
  call void @llvm.dbg.declare(metadata %struct.matvar_t** %10, metadata !1343, metadata !146), !dbg !1344
  store %struct.matvar_t* null, %struct.matvar_t** %10, align 8, !dbg !1344
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1345, metadata !146), !dbg !1346
  store i64 1, i64* %11, align 8, !dbg !1346
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1347, metadata !146), !dbg !1348
  %14 = load %struct.matvar_t*, %struct.matvar_t** %6, align 8, !dbg !1349
  %15 = icmp eq %struct.matvar_t* %14, null, !dbg !1351
  br i1 %15, label %26, label %16, !dbg !1352

; <label>:16:                                     ; preds = %4
  %17 = load %struct.matvar_t*, %struct.matvar_t** %6, align 8, !dbg !1353
  %18 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %17, i32 0, i32 4, !dbg !1355
  %19 = load i32, i32* %18, align 4, !dbg !1355
  %20 = icmp ne i32 %19, 2, !dbg !1356
  br i1 %20, label %26, label %21, !dbg !1357

; <label>:21:                                     ; preds = %16
  %22 = load %struct.matvar_t*, %struct.matvar_t** %6, align 8, !dbg !1358
  %23 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %22, i32 0, i32 10, !dbg !1359
  %24 = load i8*, i8** %23, align 8, !dbg !1359
  %25 = icmp eq i8* %24, null, !dbg !1360
  br i1 %25, label %26, label %28, !dbg !1361

; <label>:26:                                     ; preds = %21, %16, %4
  %27 = load %struct.matvar_t*, %struct.matvar_t** %10, align 8, !dbg !1363
  store %struct.matvar_t* %27, %struct.matvar_t** %5, align 8, !dbg !1364
  br label %87, !dbg !1364

; <label>:28:                                     ; preds = %21
  %29 = load %struct.matvar_t*, %struct.matvar_t** %6, align 8, !dbg !1365
  %30 = call i32 @SafeMulDims(%struct.matvar_t* %29, i64* %11), !dbg !1366
  %31 = load %struct.matvar_t*, %struct.matvar_t** %6, align 8, !dbg !1367
  %32 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %31, i32 0, i32 13, !dbg !1368
  %33 = load %struct.matvar_internal*, %struct.matvar_internal** %32, align 8, !dbg !1368
  %34 = getelementptr inbounds %struct.matvar_internal, %struct.matvar_internal* %33, i32 0, i32 1, !dbg !1369
  %35 = load i32, i32* %34, align 8, !dbg !1369
  %36 = zext i32 %35 to i64, !dbg !1367
  store i64 %36, i64* %12, align 8, !dbg !1370
  %37 = load i64, i64* %8, align 8, !dbg !1371
  %38 = load i64, i64* %11, align 8, !dbg !1373
  %39 = icmp ult i64 %37, %38, !dbg !1374
  br i1 %39, label %40, label %85, !dbg !1375

; <label>:40:                                     ; preds = %28
  %41 = load i64, i64* %7, align 8, !dbg !1376
  %42 = load i64, i64* %12, align 8, !dbg !1378
  %43 = icmp ult i64 %41, %42, !dbg !1379
  br i1 %43, label %44, label %85, !dbg !1380

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.declare(metadata %struct.matvar_t*** %13, metadata !1381, metadata !146), !dbg !1383
  %45 = load %struct.matvar_t*, %struct.matvar_t** %6, align 8, !dbg !1384
  %46 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %45, i32 0, i32 10, !dbg !1385
  %47 = load i8*, i8** %46, align 8, !dbg !1385
  %48 = bitcast i8* %47 to %struct.matvar_t**, !dbg !1386
  store %struct.matvar_t** %48, %struct.matvar_t*** %13, align 8, !dbg !1383
  %49 = load i64, i64* %8, align 8, !dbg !1387
  %50 = load i64, i64* %12, align 8, !dbg !1388
  %51 = mul i64 %49, %50, !dbg !1389
  %52 = load i64, i64* %7, align 8, !dbg !1390
  %53 = add i64 %51, %52, !dbg !1391
  %54 = load %struct.matvar_t**, %struct.matvar_t*** %13, align 8, !dbg !1392
  %55 = getelementptr inbounds %struct.matvar_t*, %struct.matvar_t** %54, i64 %53, !dbg !1392
  %56 = load %struct.matvar_t*, %struct.matvar_t** %55, align 8, !dbg !1392
  store %struct.matvar_t* %56, %struct.matvar_t** %10, align 8, !dbg !1393
  %57 = load %struct.matvar_t*, %struct.matvar_t** %9, align 8, !dbg !1394
  %58 = load i64, i64* %8, align 8, !dbg !1395
  %59 = load i64, i64* %12, align 8, !dbg !1396
  %60 = mul i64 %58, %59, !dbg !1397
  %61 = load i64, i64* %7, align 8, !dbg !1398
  %62 = add i64 %60, %61, !dbg !1399
  %63 = load %struct.matvar_t**, %struct.matvar_t*** %13, align 8, !dbg !1400
  %64 = getelementptr inbounds %struct.matvar_t*, %struct.matvar_t** %63, i64 %62, !dbg !1400
  store %struct.matvar_t* %57, %struct.matvar_t** %64, align 8, !dbg !1401
  %65 = load %struct.matvar_t*, %struct.matvar_t** %9, align 8, !dbg !1402
  %66 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %65, i32 0, i32 9, !dbg !1404
  %67 = load i8*, i8** %66, align 8, !dbg !1404
  %68 = icmp ne i8* null, %67, !dbg !1405
  br i1 %68, label %69, label %73, !dbg !1406

; <label>:69:                                     ; preds = %44
  %70 = load %struct.matvar_t*, %struct.matvar_t** %9, align 8, !dbg !1407
  %71 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %70, i32 0, i32 9, !dbg !1409
  %72 = load i8*, i8** %71, align 8, !dbg !1409
  call void @free(i8* %72) #6, !dbg !1410
  br label %73, !dbg !1411

; <label>:73:                                     ; preds = %69, %44
  %74 = load i64, i64* %7, align 8, !dbg !1412
  %75 = load %struct.matvar_t*, %struct.matvar_t** %6, align 8, !dbg !1413
  %76 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %75, i32 0, i32 13, !dbg !1414
  %77 = load %struct.matvar_internal*, %struct.matvar_internal** %76, align 8, !dbg !1414
  %78 = getelementptr inbounds %struct.matvar_internal, %struct.matvar_internal* %77, i32 0, i32 2, !dbg !1415
  %79 = load i8**, i8*** %78, align 8, !dbg !1415
  %80 = getelementptr inbounds i8*, i8** %79, i64 %74, !dbg !1413
  %81 = load i8*, i8** %80, align 8, !dbg !1413
  %82 = call noalias i8* @strdup(i8* %81) #6, !dbg !1416
  %83 = load %struct.matvar_t*, %struct.matvar_t** %9, align 8, !dbg !1417
  %84 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %83, i32 0, i32 9, !dbg !1418
  store i8* %82, i8** %84, align 8, !dbg !1419
  br label %85, !dbg !1420

; <label>:85:                                     ; preds = %73, %40, %28
  %86 = load %struct.matvar_t*, %struct.matvar_t** %10, align 8, !dbg !1421
  store %struct.matvar_t* %86, %struct.matvar_t** %5, align 8, !dbg !1422
  br label %87, !dbg !1422

; <label>:87:                                     ; preds = %85, %26
  %88 = load %struct.matvar_t*, %struct.matvar_t** %5, align 8, !dbg !1423
  ret %struct.matvar_t* %88, !dbg !1423
}

; Function Attrs: nounwind uwtable
define %struct.matvar_t* @Mat_VarSetStructFieldByName(%struct.matvar_t*, i8*, i64, %struct.matvar_t*) #0 !dbg !1424 {
  %5 = alloca %struct.matvar_t*, align 8
  %6 = alloca %struct.matvar_t*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.matvar_t*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.matvar_t*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.matvar_t**, align 8
  store %struct.matvar_t* %0, %struct.matvar_t** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.matvar_t** %6, metadata !1427, metadata !146), !dbg !1428
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1429, metadata !146), !dbg !1430
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1431, metadata !146), !dbg !1432
  store %struct.matvar_t* %3, %struct.matvar_t** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.matvar_t** %9, metadata !1433, metadata !146), !dbg !1434
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1435, metadata !146), !dbg !1436
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1437, metadata !146), !dbg !1438
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1439, metadata !146), !dbg !1440
  call void @llvm.dbg.declare(metadata %struct.matvar_t** %13, metadata !1441, metadata !146), !dbg !1442
  store %struct.matvar_t* null, %struct.matvar_t** %13, align 8, !dbg !1442
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1443, metadata !146), !dbg !1444
  store i64 1, i64* %14, align 8, !dbg !1444
  %16 = load %struct.matvar_t*, %struct.matvar_t** %6, align 8, !dbg !1445
  %17 = icmp eq %struct.matvar_t* %16, null, !dbg !1447
  br i1 %17, label %28, label %18, !dbg !1448

; <label>:18:                                     ; preds = %4
  %19 = load %struct.matvar_t*, %struct.matvar_t** %6, align 8, !dbg !1449
  %20 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %19, i32 0, i32 4, !dbg !1451
  %21 = load i32, i32* %20, align 4, !dbg !1451
  %22 = icmp ne i32 %21, 2, !dbg !1452
  br i1 %22, label %28, label %23, !dbg !1453

; <label>:23:                                     ; preds = %18
  %24 = load %struct.matvar_t*, %struct.matvar_t** %6, align 8, !dbg !1454
  %25 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %24, i32 0, i32 10, !dbg !1455
  %26 = load i8*, i8** %25, align 8, !dbg !1455
  %27 = icmp eq i8* %26, null, !dbg !1456
  br i1 %27, label %28, label %30, !dbg !1457

; <label>:28:                                     ; preds = %23, %18, %4
  %29 = load %struct.matvar_t*, %struct.matvar_t** %13, align 8, !dbg !1459
  store %struct.matvar_t* %29, %struct.matvar_t** %5, align 8, !dbg !1460
  br label %116, !dbg !1460

; <label>:30:                                     ; preds = %23
  %31 = load %struct.matvar_t*, %struct.matvar_t** %6, align 8, !dbg !1461
  %32 = call i32 @SafeMulDims(%struct.matvar_t* %31, i64* %14), !dbg !1462
  %33 = load %struct.matvar_t*, %struct.matvar_t** %6, align 8, !dbg !1463
  %34 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %33, i32 0, i32 13, !dbg !1464
  %35 = load %struct.matvar_internal*, %struct.matvar_internal** %34, align 8, !dbg !1464
  %36 = getelementptr inbounds %struct.matvar_internal, %struct.matvar_internal* %35, i32 0, i32 1, !dbg !1465
  %37 = load i32, i32* %36, align 8, !dbg !1465
  store i32 %37, i32* %11, align 4, !dbg !1466
  store i32 -1, i32* %12, align 4, !dbg !1467
  store i32 0, i32* %10, align 4, !dbg !1468
  br label %38, !dbg !1470

; <label>:38:                                     ; preds = %58, %30
  %39 = load i32, i32* %10, align 4, !dbg !1471
  %40 = load i32, i32* %11, align 4, !dbg !1474
  %41 = icmp slt i32 %39, %40, !dbg !1475
  br i1 %41, label %42, label %61, !dbg !1476

; <label>:42:                                     ; preds = %38
  %43 = load i32, i32* %10, align 4, !dbg !1477
  %44 = sext i32 %43 to i64, !dbg !1480
  %45 = load %struct.matvar_t*, %struct.matvar_t** %6, align 8, !dbg !1480
  %46 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %45, i32 0, i32 13, !dbg !1481
  %47 = load %struct.matvar_internal*, %struct.matvar_internal** %46, align 8, !dbg !1481
  %48 = getelementptr inbounds %struct.matvar_internal, %struct.matvar_internal* %47, i32 0, i32 2, !dbg !1482
  %49 = load i8**, i8*** %48, align 8, !dbg !1482
  %50 = getelementptr inbounds i8*, i8** %49, i64 %44, !dbg !1480
  %51 = load i8*, i8** %50, align 8, !dbg !1480
  %52 = load i8*, i8** %7, align 8, !dbg !1483
  %53 = call i32 @strcmp(i8* %51, i8* %52) #7, !dbg !1484
  %54 = icmp ne i32 %53, 0, !dbg !1484
  br i1 %54, label %57, label %55, !dbg !1485

; <label>:55:                                     ; preds = %42
  %56 = load i32, i32* %10, align 4, !dbg !1486
  store i32 %56, i32* %12, align 4, !dbg !1488
  br label %61, !dbg !1489

; <label>:57:                                     ; preds = %42
  br label %58, !dbg !1490

; <label>:58:                                     ; preds = %57
  %59 = load i32, i32* %10, align 4, !dbg !1491
  %60 = add nsw i32 %59, 1, !dbg !1491
  store i32 %60, i32* %10, align 4, !dbg !1491
  br label %38, !dbg !1493, !llvm.loop !1494

; <label>:61:                                     ; preds = %55, %38
  %62 = load i64, i64* %8, align 8, !dbg !1496
  %63 = load i64, i64* %14, align 8, !dbg !1498
  %64 = icmp ult i64 %62, %63, !dbg !1499
  br i1 %64, label %65, label %114, !dbg !1500

; <label>:65:                                     ; preds = %61
  %66 = load i32, i32* %12, align 4, !dbg !1501
  %67 = icmp sge i32 %66, 0, !dbg !1503
  br i1 %67, label %68, label %114, !dbg !1504

; <label>:68:                                     ; preds = %65
  call void @llvm.dbg.declare(metadata %struct.matvar_t*** %15, metadata !1505, metadata !146), !dbg !1507
  %69 = load %struct.matvar_t*, %struct.matvar_t** %6, align 8, !dbg !1508
  %70 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %69, i32 0, i32 10, !dbg !1509
  %71 = load i8*, i8** %70, align 8, !dbg !1509
  %72 = bitcast i8* %71 to %struct.matvar_t**, !dbg !1510
  store %struct.matvar_t** %72, %struct.matvar_t*** %15, align 8, !dbg !1507
  %73 = load i64, i64* %8, align 8, !dbg !1511
  %74 = load i32, i32* %11, align 4, !dbg !1512
  %75 = sext i32 %74 to i64, !dbg !1512
  %76 = mul i64 %73, %75, !dbg !1513
  %77 = load i32, i32* %12, align 4, !dbg !1514
  %78 = sext i32 %77 to i64, !dbg !1514
  %79 = add i64 %76, %78, !dbg !1515
  %80 = load %struct.matvar_t**, %struct.matvar_t*** %15, align 8, !dbg !1516
  %81 = getelementptr inbounds %struct.matvar_t*, %struct.matvar_t** %80, i64 %79, !dbg !1516
  %82 = load %struct.matvar_t*, %struct.matvar_t** %81, align 8, !dbg !1516
  store %struct.matvar_t* %82, %struct.matvar_t** %13, align 8, !dbg !1517
  %83 = load %struct.matvar_t*, %struct.matvar_t** %9, align 8, !dbg !1518
  %84 = load i64, i64* %8, align 8, !dbg !1519
  %85 = load i32, i32* %11, align 4, !dbg !1520
  %86 = sext i32 %85 to i64, !dbg !1520
  %87 = mul i64 %84, %86, !dbg !1521
  %88 = load i32, i32* %12, align 4, !dbg !1522
  %89 = sext i32 %88 to i64, !dbg !1522
  %90 = add i64 %87, %89, !dbg !1523
  %91 = load %struct.matvar_t**, %struct.matvar_t*** %15, align 8, !dbg !1524
  %92 = getelementptr inbounds %struct.matvar_t*, %struct.matvar_t** %91, i64 %90, !dbg !1524
  store %struct.matvar_t* %83, %struct.matvar_t** %92, align 8, !dbg !1525
  %93 = load %struct.matvar_t*, %struct.matvar_t** %9, align 8, !dbg !1526
  %94 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %93, i32 0, i32 9, !dbg !1528
  %95 = load i8*, i8** %94, align 8, !dbg !1528
  %96 = icmp ne i8* null, %95, !dbg !1529
  br i1 %96, label %97, label %101, !dbg !1530

; <label>:97:                                     ; preds = %68
  %98 = load %struct.matvar_t*, %struct.matvar_t** %9, align 8, !dbg !1531
  %99 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %98, i32 0, i32 9, !dbg !1533
  %100 = load i8*, i8** %99, align 8, !dbg !1533
  call void @free(i8* %100) #6, !dbg !1534
  br label %101, !dbg !1535

; <label>:101:                                    ; preds = %97, %68
  %102 = load i32, i32* %12, align 4, !dbg !1536
  %103 = sext i32 %102 to i64, !dbg !1537
  %104 = load %struct.matvar_t*, %struct.matvar_t** %6, align 8, !dbg !1537
  %105 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %104, i32 0, i32 13, !dbg !1538
  %106 = load %struct.matvar_internal*, %struct.matvar_internal** %105, align 8, !dbg !1538
  %107 = getelementptr inbounds %struct.matvar_internal, %struct.matvar_internal* %106, i32 0, i32 2, !dbg !1539
  %108 = load i8**, i8*** %107, align 8, !dbg !1539
  %109 = getelementptr inbounds i8*, i8** %108, i64 %103, !dbg !1537
  %110 = load i8*, i8** %109, align 8, !dbg !1537
  %111 = call noalias i8* @strdup(i8* %110) #6, !dbg !1540
  %112 = load %struct.matvar_t*, %struct.matvar_t** %9, align 8, !dbg !1541
  %113 = getelementptr inbounds %struct.matvar_t, %struct.matvar_t* %112, i32 0, i32 9, !dbg !1542
  store i8* %111, i8** %113, align 8, !dbg !1543
  br label %114, !dbg !1544

; <label>:114:                                    ; preds = %101, %65, %61
  %115 = load %struct.matvar_t*, %struct.matvar_t** %13, align 8, !dbg !1545
  store %struct.matvar_t* %115, %struct.matvar_t** %5, align 8, !dbg !1546
  br label %116, !dbg !1546

; <label>:116:                                    ; preds = %114, %28
  %117 = load %struct.matvar_t*, %struct.matvar_t** %5, align 8, !dbg !1547
  ret %struct.matvar_t* %117, !dbg !1547
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!136, !137}
!llvm.ident = !{!138}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !55)
!1 = !DIFile(filename: "[inter]src--matvar_struct.o.i", directory: "/home/lichi/Desktop/matio/[lib]src--.libs--libmatio.a")
!2 = !{!3, !27, !47, !51}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "matio_types", file: !4, line: 77, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "matio.h", directory: "/home/lichi/Desktop/matio/[lib]src--.libs--libmatio.a")
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
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 155, size: 32, align: 32, elements: !52)
!52 = !{!53, !54}
!53 = !DIEnumerator(name: "MAT_BY_NAME", value: 1)
!54 = !DIEnumerator(name: "MAT_BY_INDEX", value: 2)
!55 = !{!56, !57, !61, !64, !133, !134, !58}
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !59, line: 216, baseType: !60)
!59 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/matio/[lib]src--.libs--libmatio.a")
!60 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!63 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "matvar_t", file: !4, line: 200, baseType: !67)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "matvar_t", file: !4, line: 185, size: 640, align: 64, elements: !68)
!68 = !{!69, !70, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !67, file: !4, line: 186, baseType: !58, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "rank", scope: !67, file: !4, line: 187, baseType: !71, size: 32, align: 32, offset: 64)
!71 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "data_type", scope: !67, file: !4, line: 188, baseType: !3, size: 32, align: 32, offset: 96)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "data_size", scope: !67, file: !4, line: 189, baseType: !71, size: 32, align: 32, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "class_type", scope: !67, file: !4, line: 190, baseType: !27, size: 32, align: 32, offset: 160)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "isComplex", scope: !67, file: !4, line: 191, baseType: !71, size: 32, align: 32, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "isGlobal", scope: !67, file: !4, line: 192, baseType: !71, size: 32, align: 32, offset: 224)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "isLogical", scope: !67, file: !4, line: 193, baseType: !71, size: 32, align: 32, offset: 256)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "dims", scope: !67, file: !4, line: 194, baseType: !57, size: 64, align: 64, offset: 320)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !67, file: !4, line: 195, baseType: !62, size: 64, align: 64, offset: 384)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !67, file: !4, line: 196, baseType: !56, size: 64, align: 64, offset: 448)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "mem_conserve", scope: !67, file: !4, line: 197, baseType: !71, size: 32, align: 32, offset: 512)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !67, file: !4, line: 198, baseType: !47, size: 32, align: 32, offset: 544)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !67, file: !4, line: 199, baseType: !84, size: 64, align: 64, offset: 576)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "matvar_internal", file: !86, line: 80, size: 320, align: 64, elements: !87)
!86 = !DIFile(filename: "matio_private.h", directory: "/home/lichi/Desktop/matio/[lib]src--.libs--libmatio.a")
!87 = !{!88, !90, !92, !93, !132}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "datapos", scope: !85, file: !86, line: 86, baseType: !89, size: 64, align: 64)
!89 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "num_fields", scope: !85, file: !86, line: 87, baseType: !91, size: 32, align: 32, offset: 64)
!91 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "fieldnames", scope: !85, file: !86, line: 88, baseType: !61, size: 64, align: 64, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !85, file: !86, line: 90, baseType: !94, size: 64, align: 64, offset: 192)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "z_streamp", file: !95, line: 108, baseType: !96)
!95 = !DIFile(filename: "/usr/local/include/zlib.h", directory: "/home/lichi/Desktop/matio/[lib]src--.libs--libmatio.a")
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64, align: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "z_stream", file: !95, line: 106, baseType: !98)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_stream_s", file: !95, line: 86, size: 896, align: 64, elements: !99)
!99 = !{!100, !106, !108, !110, !111, !112, !113, !114, !117, !123, !128, !129, !130, !131}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !98, file: !95, line: 87, baseType: !101, size: 64, align: 64)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64, align: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bytef", file: !103, line: 400, baseType: !104)
!103 = !DIFile(filename: "/usr/local/include/zconf.h", directory: "/home/lichi/Desktop/matio/[lib]src--.libs--libmatio.a")
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "Byte", file: !103, line: 391, baseType: !105)
!105 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !98, file: !95, line: 88, baseType: !107, size: 32, align: 32, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "uInt", file: !103, line: 393, baseType: !91)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !98, file: !95, line: 89, baseType: !109, size: 64, align: 64, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "uLong", file: !103, line: 394, baseType: !60)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !98, file: !95, line: 91, baseType: !101, size: 64, align: 64, offset: 192)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !98, file: !95, line: 92, baseType: !107, size: 32, align: 32, offset: 256)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !98, file: !95, line: 93, baseType: !109, size: 64, align: 64, offset: 320)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !98, file: !95, line: 95, baseType: !62, size: 64, align: 64, offset: 384)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !98, file: !95, line: 96, baseType: !115, size: 64, align: 64, offset: 448)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DICompositeType(tag: DW_TAG_structure_type, name: "internal_state", file: !95, line: 84, flags: DIFlagFwdDecl)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "zalloc", scope: !98, file: !95, line: 98, baseType: !118, size: 64, align: 64, offset: 512)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "alloc_func", file: !95, line: 81, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DISubroutineType(types: !121)
!121 = !{!122, !122, !107, !107}
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "voidpf", file: !103, line: 409, baseType: !56)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "zfree", scope: !98, file: !95, line: 99, baseType: !124, size: 64, align: 64, offset: 576)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "free_func", file: !95, line: 82, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{null, !122, !122}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !98, file: !95, line: 100, baseType: !122, size: 64, align: 64, offset: 640)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "data_type", scope: !98, file: !95, line: 102, baseType: !71, size: 32, align: 32, offset: 704)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "adler", scope: !98, file: !95, line: 104, baseType: !109, size: 64, align: 64, offset: 768)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !98, file: !95, line: 105, baseType: !109, size: 64, align: 64, offset: 832)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !85, file: !86, line: 91, baseType: !56, size: 64, align: 64, offset: 256)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!136 = !{i32 2, !"Dwarf Version", i32 4}
!137 = !{i32 2, !"Debug Info Version", i32 3}
!138 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!139 = distinct !DISubprogram(name: "Mat_VarCreateStruct", scope: !140, file: !140, line: 45, type: !141, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !144)
!140 = !DIFile(filename: "matvar_struct.c", directory: "/home/lichi/Desktop/matio/[lib]src--.libs--libmatio.a")
!141 = !DISubroutineType(types: !142)
!142 = !{!65, !134, !71, !57, !143, !91}
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!144 = !{}
!145 = !DILocalVariable(name: "name", arg: 1, scope: !139, file: !140, line: 45, type: !134)
!146 = !DIExpression()
!147 = !DILocation(line: 45, column: 33, scope: !139)
!148 = !DILocalVariable(name: "rank", arg: 2, scope: !139, file: !140, line: 45, type: !71)
!149 = !DILocation(line: 45, column: 42, scope: !139)
!150 = !DILocalVariable(name: "dims", arg: 3, scope: !139, file: !140, line: 45, type: !57)
!151 = !DILocation(line: 45, column: 55, scope: !139)
!152 = !DILocalVariable(name: "fields", arg: 4, scope: !139, file: !140, line: 45, type: !143)
!153 = !DILocation(line: 45, column: 73, scope: !139)
!154 = !DILocalVariable(name: "nfields", arg: 5, scope: !139, file: !140, line: 46, type: !91)
!155 = !DILocation(line: 46, column: 14, scope: !139)
!156 = !DILocalVariable(name: "nelems", scope: !139, file: !140, line: 48, type: !58)
!157 = !DILocation(line: 48, column: 12, scope: !139)
!158 = !DILocalVariable(name: "j", scope: !139, file: !140, line: 49, type: !71)
!159 = !DILocation(line: 49, column: 9, scope: !139)
!160 = !DILocalVariable(name: "matvar", scope: !139, file: !140, line: 50, type: !65)
!161 = !DILocation(line: 50, column: 15, scope: !139)
!162 = !DILocation(line: 52, column: 17, scope: !163)
!163 = distinct !DILexicalBlock(scope: !139, file: !140, line: 52, column: 9)
!164 = !DILocation(line: 52, column: 14, scope: !163)
!165 = !DILocation(line: 52, column: 9, scope: !139)
!166 = !DILocation(line: 53, column: 9, scope: !163)
!167 = !DILocation(line: 55, column: 14, scope: !139)
!168 = !DILocation(line: 55, column: 12, scope: !139)
!169 = !DILocation(line: 56, column: 17, scope: !170)
!170 = distinct !DILexicalBlock(scope: !139, file: !140, line: 56, column: 9)
!171 = !DILocation(line: 56, column: 14, scope: !170)
!172 = !DILocation(line: 56, column: 9, scope: !139)
!173 = !DILocation(line: 57, column: 9, scope: !170)
!174 = !DILocation(line: 59, column: 5, scope: !139)
!175 = !DILocation(line: 59, column: 13, scope: !139)
!176 = !DILocation(line: 59, column: 25, scope: !139)
!177 = !DILocation(line: 60, column: 17, scope: !178)
!178 = distinct !DILexicalBlock(scope: !139, file: !140, line: 60, column: 9)
!179 = !DILocation(line: 60, column: 14, scope: !178)
!180 = !DILocation(line: 60, column: 9, scope: !139)
!181 = !DILocation(line: 61, column: 31, scope: !178)
!182 = !DILocation(line: 61, column: 24, scope: !178)
!183 = !DILocation(line: 61, column: 9, scope: !178)
!184 = !DILocation(line: 61, column: 17, scope: !178)
!185 = !DILocation(line: 61, column: 22, scope: !178)
!186 = !DILocation(line: 62, column: 20, scope: !139)
!187 = !DILocation(line: 62, column: 5, scope: !139)
!188 = !DILocation(line: 62, column: 13, scope: !139)
!189 = !DILocation(line: 62, column: 18, scope: !139)
!190 = !DILocation(line: 63, column: 36, scope: !139)
!191 = !DILocation(line: 63, column: 44, scope: !139)
!192 = !DILocation(line: 63, column: 48, scope: !139)
!193 = !DILocation(line: 63, column: 29, scope: !139)
!194 = !DILocation(line: 63, column: 20, scope: !139)
!195 = !DILocation(line: 63, column: 5, scope: !139)
!196 = !DILocation(line: 63, column: 13, scope: !139)
!197 = !DILocation(line: 63, column: 18, scope: !139)
!198 = !DILocation(line: 64, column: 13, scope: !199)
!199 = distinct !DILexicalBlock(scope: !139, file: !140, line: 64, column: 5)
!200 = !DILocation(line: 64, column: 11, scope: !199)
!201 = !DILocation(line: 64, column: 18, scope: !202)
!202 = !DILexicalBlockFile(scope: !203, file: !140, discriminator: 1)
!203 = distinct !DILexicalBlock(scope: !199, file: !140, line: 64, column: 5)
!204 = !DILocation(line: 64, column: 22, scope: !202)
!205 = !DILocation(line: 64, column: 30, scope: !202)
!206 = !DILocation(line: 64, column: 20, scope: !202)
!207 = !DILocation(line: 64, column: 5, scope: !202)
!208 = !DILocation(line: 65, column: 32, scope: !209)
!209 = distinct !DILexicalBlock(scope: !203, file: !140, line: 64, column: 42)
!210 = !DILocation(line: 65, column: 27, scope: !209)
!211 = !DILocation(line: 65, column: 22, scope: !209)
!212 = !DILocation(line: 65, column: 9, scope: !209)
!213 = !DILocation(line: 65, column: 17, scope: !209)
!214 = !DILocation(line: 65, column: 25, scope: !209)
!215 = !DILocation(line: 66, column: 24, scope: !209)
!216 = !DILocation(line: 66, column: 19, scope: !209)
!217 = !DILocation(line: 66, column: 16, scope: !209)
!218 = !DILocation(line: 67, column: 5, scope: !209)
!219 = !DILocation(line: 64, column: 37, scope: !220)
!220 = !DILexicalBlockFile(scope: !203, file: !140, discriminator: 2)
!221 = !DILocation(line: 64, column: 5, scope: !220)
!222 = distinct !{!222, !223}
!223 = !DILocation(line: 64, column: 5, scope: !139)
!224 = !DILocation(line: 68, column: 5, scope: !139)
!225 = !DILocation(line: 68, column: 13, scope: !139)
!226 = !DILocation(line: 68, column: 24, scope: !139)
!227 = !DILocation(line: 69, column: 5, scope: !139)
!228 = !DILocation(line: 69, column: 13, scope: !139)
!229 = !DILocation(line: 69, column: 23, scope: !139)
!230 = !DILocation(line: 71, column: 5, scope: !139)
!231 = !DILocation(line: 71, column: 13, scope: !139)
!232 = !DILocation(line: 71, column: 23, scope: !139)
!233 = !DILocation(line: 73, column: 10, scope: !234)
!234 = distinct !DILexicalBlock(scope: !139, file: !140, line: 73, column: 10)
!235 = !DILocation(line: 73, column: 10, scope: !139)
!236 = !DILocation(line: 74, column: 40, scope: !237)
!237 = distinct !DILexicalBlock(scope: !234, file: !140, line: 73, column: 20)
!238 = !DILocation(line: 74, column: 9, scope: !237)
!239 = !DILocation(line: 74, column: 17, scope: !237)
!240 = !DILocation(line: 74, column: 27, scope: !237)
!241 = !DILocation(line: 74, column: 38, scope: !237)
!242 = !DILocation(line: 76, column: 28, scope: !237)
!243 = !DILocation(line: 76, column: 35, scope: !237)
!244 = !DILocation(line: 76, column: 21, scope: !237)
!245 = !DILocation(line: 76, column: 13, scope: !237)
!246 = !DILocation(line: 75, column: 9, scope: !237)
!247 = !DILocation(line: 75, column: 17, scope: !237)
!248 = !DILocation(line: 75, column: 27, scope: !237)
!249 = !DILocation(line: 75, column: 38, scope: !237)
!250 = !DILocation(line: 77, column: 21, scope: !251)
!251 = distinct !DILexicalBlock(scope: !237, file: !140, line: 77, column: 13)
!252 = !DILocation(line: 77, column: 29, scope: !251)
!253 = !DILocation(line: 77, column: 39, scope: !251)
!254 = !DILocation(line: 77, column: 18, scope: !251)
!255 = !DILocation(line: 77, column: 13, scope: !237)
!256 = !DILocation(line: 78, column: 25, scope: !257)
!257 = distinct !DILexicalBlock(scope: !251, file: !140, line: 77, column: 52)
!258 = !DILocation(line: 78, column: 13, scope: !257)
!259 = !DILocation(line: 79, column: 20, scope: !257)
!260 = !DILocation(line: 80, column: 9, scope: !257)
!261 = !DILocalVariable(name: "i", scope: !262, file: !140, line: 81, type: !58)
!262 = distinct !DILexicalBlock(scope: !251, file: !140, line: 80, column: 16)
!263 = !DILocation(line: 81, column: 20, scope: !262)
!264 = !DILocation(line: 82, column: 21, scope: !265)
!265 = distinct !DILexicalBlock(scope: !262, file: !140, line: 82, column: 13)
!266 = !DILocation(line: 82, column: 19, scope: !265)
!267 = !DILocation(line: 82, column: 26, scope: !268)
!268 = !DILexicalBlockFile(scope: !269, file: !140, discriminator: 1)
!269 = distinct !DILexicalBlock(scope: !265, file: !140, line: 82, column: 13)
!270 = !DILocation(line: 82, column: 30, scope: !268)
!271 = !DILocation(line: 82, column: 28, scope: !268)
!272 = !DILocation(line: 82, column: 13, scope: !268)
!273 = !DILocation(line: 83, column: 36, scope: !274)
!274 = distinct !DILexicalBlock(scope: !275, file: !140, line: 83, column: 21)
!275 = distinct !DILexicalBlock(scope: !269, file: !140, line: 82, column: 45)
!276 = !DILocation(line: 83, column: 29, scope: !274)
!277 = !DILocation(line: 83, column: 26, scope: !274)
!278 = !DILocation(line: 83, column: 21, scope: !275)
!279 = !DILocation(line: 84, column: 33, scope: !280)
!280 = distinct !DILexicalBlock(scope: !274, file: !140, line: 83, column: 41)
!281 = !DILocation(line: 84, column: 21, scope: !280)
!282 = !DILocation(line: 85, column: 28, scope: !280)
!283 = !DILocation(line: 86, column: 21, scope: !280)
!284 = !DILocation(line: 88, column: 69, scope: !285)
!285 = distinct !DILexicalBlock(scope: !274, file: !140, line: 87, column: 24)
!286 = !DILocation(line: 88, column: 62, scope: !285)
!287 = !DILocation(line: 88, column: 55, scope: !285)
!288 = !DILocation(line: 88, column: 50, scope: !285)
!289 = !DILocation(line: 88, column: 21, scope: !285)
!290 = !DILocation(line: 88, column: 29, scope: !285)
!291 = !DILocation(line: 88, column: 39, scope: !285)
!292 = !DILocation(line: 88, column: 53, scope: !285)
!293 = !DILocation(line: 90, column: 13, scope: !275)
!294 = !DILocation(line: 82, column: 40, scope: !295)
!295 = !DILexicalBlockFile(scope: !269, file: !140, discriminator: 2)
!296 = !DILocation(line: 82, column: 13, scope: !295)
!297 = distinct !{!297, !298}
!298 = !DILocation(line: 82, column: 13, scope: !262)
!299 = !DILocation(line: 92, column: 21, scope: !300)
!300 = distinct !DILexicalBlock(scope: !237, file: !140, line: 92, column: 13)
!301 = !DILocation(line: 92, column: 18, scope: !300)
!302 = !DILocation(line: 92, column: 28, scope: !300)
!303 = !DILocation(line: 92, column: 31, scope: !304)
!304 = !DILexicalBlockFile(scope: !300, file: !140, discriminator: 1)
!305 = !DILocation(line: 92, column: 38, scope: !304)
!306 = !DILocation(line: 92, column: 13, scope: !304)
!307 = !DILocalVariable(name: "nelems_x_nfields", scope: !308, file: !140, line: 93, type: !58)
!308 = distinct !DILexicalBlock(scope: !300, file: !140, line: 92, column: 44)
!309 = !DILocation(line: 93, column: 20, scope: !308)
!310 = !DILocation(line: 94, column: 40, scope: !308)
!311 = !DILocation(line: 94, column: 48, scope: !308)
!312 = !DILocation(line: 94, column: 13, scope: !308)
!313 = !DILocation(line: 95, column: 22, scope: !308)
!314 = !DILocation(line: 95, column: 30, scope: !308)
!315 = !DILocation(line: 95, column: 38, scope: !308)
!316 = !DILocation(line: 95, column: 56, scope: !308)
!317 = !DILocation(line: 95, column: 64, scope: !308)
!318 = !DILocation(line: 95, column: 13, scope: !308)
!319 = !DILocation(line: 96, column: 35, scope: !308)
!320 = !DILocation(line: 96, column: 53, scope: !308)
!321 = !DILocation(line: 96, column: 61, scope: !308)
!322 = !DILocation(line: 96, column: 28, scope: !308)
!323 = !DILocation(line: 96, column: 13, scope: !308)
!324 = !DILocation(line: 96, column: 21, scope: !308)
!325 = !DILocation(line: 96, column: 26, scope: !308)
!326 = !DILocation(line: 97, column: 9, scope: !308)
!327 = !DILocation(line: 98, column: 5, scope: !237)
!328 = !DILocation(line: 100, column: 12, scope: !139)
!329 = !DILocation(line: 100, column: 5, scope: !139)
!330 = !DILocation(line: 101, column: 1, scope: !139)
!331 = distinct !DISubprogram(name: "Mat_VarAddStructField", scope: !140, file: !140, line: 114, type: !332, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !144)
!332 = !DISubroutineType(types: !333)
!333 = !{!71, !65, !134}
!334 = !DILocalVariable(name: "matvar", arg: 1, scope: !331, file: !140, line: 114, type: !65)
!335 = !DILocation(line: 114, column: 33, scope: !331)
!336 = !DILocalVariable(name: "fieldname", arg: 2, scope: !331, file: !140, line: 114, type: !134)
!337 = !DILocation(line: 114, column: 52, scope: !331)
!338 = !DILocalVariable(name: "cnt", scope: !331, file: !140, line: 116, type: !71)
!339 = !DILocation(line: 116, column: 9, scope: !331)
!340 = !DILocalVariable(name: "i", scope: !331, file: !140, line: 117, type: !58)
!341 = !DILocation(line: 117, column: 12, scope: !331)
!342 = !DILocalVariable(name: "nfields", scope: !331, file: !140, line: 117, type: !58)
!343 = !DILocation(line: 117, column: 15, scope: !331)
!344 = !DILocalVariable(name: "nelems", scope: !331, file: !140, line: 117, type: !58)
!345 = !DILocation(line: 117, column: 24, scope: !331)
!346 = !DILocalVariable(name: "new_data", scope: !331, file: !140, line: 118, type: !64)
!347 = !DILocation(line: 118, column: 16, scope: !331)
!348 = !DILocalVariable(name: "old_data", scope: !331, file: !140, line: 118, type: !64)
!349 = !DILocation(line: 118, column: 28, scope: !331)
!350 = !DILocalVariable(name: "fieldnames", scope: !331, file: !140, line: 119, type: !61)
!351 = !DILocation(line: 119, column: 12, scope: !331)
!352 = !DILocation(line: 121, column: 10, scope: !353)
!353 = distinct !DILexicalBlock(scope: !331, file: !140, line: 121, column: 10)
!354 = !DILocation(line: 121, column: 17, scope: !353)
!355 = !DILocation(line: 121, column: 24, scope: !353)
!356 = !DILocation(line: 121, column: 27, scope: !357)
!357 = !DILexicalBlockFile(scope: !353, file: !140, discriminator: 1)
!358 = !DILocation(line: 121, column: 37, scope: !357)
!359 = !DILocation(line: 121, column: 10, scope: !357)
!360 = !DILocation(line: 122, column: 9, scope: !353)
!361 = !DILocation(line: 123, column: 17, scope: !331)
!362 = !DILocation(line: 123, column: 5, scope: !331)
!363 = !DILocation(line: 124, column: 15, scope: !331)
!364 = !DILocation(line: 124, column: 23, scope: !331)
!365 = !DILocation(line: 124, column: 33, scope: !331)
!366 = !DILocation(line: 124, column: 43, scope: !331)
!367 = !DILocation(line: 124, column: 13, scope: !331)
!368 = !DILocation(line: 125, column: 36, scope: !331)
!369 = !DILocation(line: 125, column: 5, scope: !331)
!370 = !DILocation(line: 125, column: 13, scope: !331)
!371 = !DILocation(line: 125, column: 23, scope: !331)
!372 = !DILocation(line: 125, column: 34, scope: !331)
!373 = !DILocation(line: 126, column: 34, scope: !331)
!374 = !DILocation(line: 126, column: 42, scope: !331)
!375 = !DILocation(line: 126, column: 52, scope: !331)
!376 = !DILocation(line: 127, column: 9, scope: !331)
!377 = !DILocation(line: 127, column: 16, scope: !331)
!378 = !DILocation(line: 126, column: 26, scope: !331)
!379 = !DILocation(line: 126, column: 18, scope: !331)
!380 = !DILocation(line: 126, column: 16, scope: !331)
!381 = !DILocation(line: 128, column: 17, scope: !382)
!382 = distinct !DILexicalBlock(scope: !331, file: !140, line: 128, column: 9)
!383 = !DILocation(line: 128, column: 14, scope: !382)
!384 = !DILocation(line: 128, column: 9, scope: !331)
!385 = !DILocation(line: 129, column: 9, scope: !382)
!386 = !DILocation(line: 130, column: 36, scope: !331)
!387 = !DILocation(line: 130, column: 5, scope: !331)
!388 = !DILocation(line: 130, column: 13, scope: !331)
!389 = !DILocation(line: 130, column: 23, scope: !331)
!390 = !DILocation(line: 130, column: 34, scope: !331)
!391 = !DILocation(line: 131, column: 54, scope: !331)
!392 = !DILocation(line: 131, column: 47, scope: !331)
!393 = !DILocation(line: 131, column: 34, scope: !331)
!394 = !DILocation(line: 131, column: 41, scope: !331)
!395 = !DILocation(line: 131, column: 5, scope: !331)
!396 = !DILocation(line: 131, column: 13, scope: !331)
!397 = !DILocation(line: 131, column: 23, scope: !331)
!398 = !DILocation(line: 131, column: 45, scope: !331)
!399 = !DILocalVariable(name: "nelems_x_nfields", scope: !400, file: !140, line: 134, type: !58)
!400 = distinct !DILexicalBlock(scope: !331, file: !140, line: 133, column: 5)
!401 = !DILocation(line: 134, column: 16, scope: !400)
!402 = !DILocation(line: 135, column: 36, scope: !400)
!403 = !DILocation(line: 135, column: 44, scope: !400)
!404 = !DILocation(line: 135, column: 9, scope: !400)
!405 = !DILocation(line: 136, column: 18, scope: !400)
!406 = !DILocation(line: 136, column: 26, scope: !400)
!407 = !DILocation(line: 136, column: 34, scope: !400)
!408 = !DILocation(line: 136, column: 9, scope: !400)
!409 = !DILocation(line: 138, column: 35, scope: !331)
!410 = !DILocation(line: 138, column: 43, scope: !331)
!411 = !DILocation(line: 138, column: 28, scope: !331)
!412 = !DILocation(line: 138, column: 16, scope: !331)
!413 = !DILocation(line: 138, column: 14, scope: !331)
!414 = !DILocation(line: 139, column: 10, scope: !415)
!415 = distinct !DILexicalBlock(scope: !331, file: !140, line: 139, column: 10)
!416 = !DILocation(line: 139, column: 19, scope: !415)
!417 = !DILocation(line: 139, column: 10, scope: !331)
!418 = !DILocation(line: 140, column: 9, scope: !419)
!419 = distinct !DILexicalBlock(scope: !415, file: !140, line: 139, column: 28)
!420 = !DILocation(line: 140, column: 17, scope: !419)
!421 = !DILocation(line: 140, column: 24, scope: !419)
!422 = !DILocation(line: 141, column: 9, scope: !419)
!423 = !DILocation(line: 144, column: 28, scope: !331)
!424 = !DILocation(line: 144, column: 36, scope: !331)
!425 = !DILocation(line: 144, column: 16, scope: !331)
!426 = !DILocation(line: 144, column: 14, scope: !331)
!427 = !DILocation(line: 145, column: 13, scope: !428)
!428 = distinct !DILexicalBlock(scope: !331, file: !140, line: 145, column: 5)
!429 = !DILocation(line: 145, column: 11, scope: !428)
!430 = !DILocation(line: 145, column: 18, scope: !431)
!431 = !DILexicalBlockFile(scope: !432, file: !140, discriminator: 1)
!432 = distinct !DILexicalBlock(scope: !428, file: !140, line: 145, column: 5)
!433 = !DILocation(line: 145, column: 22, scope: !431)
!434 = !DILocation(line: 145, column: 20, scope: !431)
!435 = !DILocation(line: 145, column: 5, scope: !431)
!436 = !DILocalVariable(name: "f", scope: !437, file: !140, line: 146, type: !58)
!437 = distinct !DILexicalBlock(scope: !432, file: !140, line: 145, column: 36)
!438 = !DILocation(line: 146, column: 16, scope: !437)
!439 = !DILocation(line: 147, column: 17, scope: !440)
!440 = distinct !DILexicalBlock(scope: !437, file: !140, line: 147, column: 9)
!441 = !DILocation(line: 147, column: 15, scope: !440)
!442 = !DILocation(line: 147, column: 22, scope: !443)
!443 = !DILexicalBlockFile(scope: !444, file: !140, discriminator: 1)
!444 = distinct !DILexicalBlock(scope: !440, file: !140, line: 147, column: 9)
!445 = !DILocation(line: 147, column: 26, scope: !443)
!446 = !DILocation(line: 147, column: 33, scope: !443)
!447 = !DILocation(line: 147, column: 24, scope: !443)
!448 = !DILocation(line: 147, column: 9, scope: !443)
!449 = !DILocation(line: 148, column: 40, scope: !444)
!450 = !DILocation(line: 148, column: 43, scope: !444)
!451 = !DILocation(line: 148, column: 50, scope: !444)
!452 = !DILocation(line: 148, column: 41, scope: !444)
!453 = !DILocation(line: 148, column: 54, scope: !444)
!454 = !DILocation(line: 148, column: 53, scope: !444)
!455 = !DILocation(line: 148, column: 31, scope: !444)
!456 = !DILocation(line: 148, column: 25, scope: !444)
!457 = !DILocation(line: 148, column: 13, scope: !444)
!458 = !DILocation(line: 148, column: 29, scope: !444)
!459 = !DILocation(line: 147, column: 38, scope: !460)
!460 = !DILexicalBlockFile(scope: !444, file: !140, discriminator: 2)
!461 = !DILocation(line: 147, column: 9, scope: !460)
!462 = distinct !{!462, !463}
!463 = !DILocation(line: 147, column: 9, scope: !437)
!464 = !DILocation(line: 149, column: 21, scope: !437)
!465 = !DILocation(line: 149, column: 9, scope: !437)
!466 = !DILocation(line: 149, column: 25, scope: !437)
!467 = !DILocation(line: 150, column: 5, scope: !437)
!468 = !DILocation(line: 145, column: 31, scope: !469)
!469 = !DILexicalBlockFile(scope: !432, file: !140, discriminator: 2)
!470 = !DILocation(line: 145, column: 5, scope: !469)
!471 = distinct !{!471, !472}
!472 = !DILocation(line: 145, column: 5, scope: !331)
!473 = !DILocation(line: 152, column: 10, scope: !331)
!474 = !DILocation(line: 152, column: 18, scope: !331)
!475 = !DILocation(line: 152, column: 5, scope: !331)
!476 = !DILocation(line: 153, column: 20, scope: !331)
!477 = !DILocation(line: 153, column: 5, scope: !331)
!478 = !DILocation(line: 153, column: 13, scope: !331)
!479 = !DILocation(line: 153, column: 18, scope: !331)
!480 = !DILocation(line: 155, column: 5, scope: !331)
!481 = !DILocation(line: 156, column: 1, scope: !331)
!482 = distinct !DISubprogram(name: "Mat_VarGetNumberOfFields", scope: !140, file: !140, line: 166, type: !483, isLocal: false, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !144)
!483 = !DISubroutineType(types: !484)
!484 = !{!91, !65}
!485 = !DILocalVariable(name: "matvar", arg: 1, scope: !482, file: !140, line: 166, type: !65)
!486 = !DILocation(line: 166, column: 36, scope: !482)
!487 = !DILocalVariable(name: "nfields", scope: !482, file: !140, line: 168, type: !71)
!488 = !DILocation(line: 168, column: 9, scope: !482)
!489 = !DILocation(line: 169, column: 10, scope: !490)
!490 = distinct !DILexicalBlock(scope: !482, file: !140, line: 169, column: 10)
!491 = !DILocation(line: 169, column: 17, scope: !490)
!492 = !DILocation(line: 169, column: 24, scope: !490)
!493 = !DILocation(line: 169, column: 27, scope: !494)
!494 = !DILexicalBlockFile(scope: !490, file: !140, discriminator: 1)
!495 = !DILocation(line: 169, column: 35, scope: !494)
!496 = !DILocation(line: 169, column: 46, scope: !494)
!497 = !DILocation(line: 169, column: 62, scope: !494)
!498 = !DILocation(line: 170, column: 16, scope: !490)
!499 = !DILocation(line: 170, column: 24, scope: !490)
!500 = !DILocation(line: 170, column: 13, scope: !490)
!501 = !DILocation(line: 169, column: 10, scope: !502)
!502 = !DILexicalBlockFile(scope: !482, file: !140, discriminator: 2)
!503 = !DILocation(line: 171, column: 17, scope: !504)
!504 = distinct !DILexicalBlock(scope: !490, file: !140, line: 170, column: 35)
!505 = !DILocation(line: 172, column: 5, scope: !504)
!506 = !DILocation(line: 173, column: 19, scope: !507)
!507 = distinct !DILexicalBlock(scope: !490, file: !140, line: 172, column: 12)
!508 = !DILocation(line: 173, column: 27, scope: !507)
!509 = !DILocation(line: 173, column: 37, scope: !507)
!510 = !DILocation(line: 173, column: 17, scope: !507)
!511 = !DILocation(line: 175, column: 12, scope: !482)
!512 = !DILocation(line: 175, column: 5, scope: !482)
!513 = distinct !DISubprogram(name: "Mat_VarGetStructFieldnames", scope: !140, file: !140, line: 187, type: !514, isLocal: false, isDefinition: true, scopeLine: 188, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !144)
!514 = !DISubroutineType(types: !515)
!515 = !{!516, !518}
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64, align: 64)
!517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64, align: 64)
!519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!520 = !DILocalVariable(name: "matvar", arg: 1, scope: !513, file: !140, line: 187, type: !518)
!521 = !DILocation(line: 187, column: 44, scope: !513)
!522 = !DILocation(line: 189, column: 10, scope: !523)
!523 = distinct !DILexicalBlock(scope: !513, file: !140, line: 189, column: 10)
!524 = !DILocation(line: 189, column: 17, scope: !523)
!525 = !DILocation(line: 189, column: 24, scope: !523)
!526 = !DILocation(line: 189, column: 27, scope: !527)
!527 = !DILexicalBlockFile(scope: !523, file: !140, discriminator: 1)
!528 = !DILocation(line: 189, column: 35, scope: !527)
!529 = !DILocation(line: 189, column: 46, scope: !527)
!530 = !DILocation(line: 189, column: 62, scope: !527)
!531 = !DILocation(line: 190, column: 16, scope: !523)
!532 = !DILocation(line: 190, column: 24, scope: !523)
!533 = !DILocation(line: 190, column: 13, scope: !523)
!534 = !DILocation(line: 189, column: 10, scope: !535)
!535 = !DILexicalBlockFile(scope: !513, file: !140, discriminator: 2)
!536 = !DILocation(line: 191, column: 9, scope: !537)
!537 = distinct !DILexicalBlock(scope: !523, file: !140, line: 190, column: 35)
!538 = !DILocation(line: 193, column: 16, scope: !539)
!539 = distinct !DILexicalBlock(scope: !523, file: !140, line: 192, column: 12)
!540 = !DILocation(line: 193, column: 24, scope: !539)
!541 = !DILocation(line: 193, column: 34, scope: !539)
!542 = !DILocation(line: 193, column: 9, scope: !539)
!543 = !DILocation(line: 195, column: 1, scope: !513)
!544 = distinct !DISubprogram(name: "Mat_VarGetStructFieldByIndex", scope: !140, file: !140, line: 207, type: !545, isLocal: false, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !144)
!545 = !DISubroutineType(types: !546)
!546 = !{!65, !65, !58, !58}
!547 = !DILocalVariable(name: "matvar", arg: 1, scope: !544, file: !140, line: 207, type: !65)
!548 = !DILocation(line: 207, column: 40, scope: !544)
!549 = !DILocalVariable(name: "field_index", arg: 2, scope: !544, file: !140, line: 207, type: !58)
!550 = !DILocation(line: 207, column: 54, scope: !544)
!551 = !DILocalVariable(name: "index", arg: 3, scope: !544, file: !140, line: 207, type: !58)
!552 = !DILocation(line: 207, column: 73, scope: !544)
!553 = !DILocalVariable(name: "field", scope: !544, file: !140, line: 209, type: !65)
!554 = !DILocation(line: 209, column: 15, scope: !544)
!555 = !DILocalVariable(name: "nelems", scope: !544, file: !140, line: 210, type: !58)
!556 = !DILocation(line: 210, column: 12, scope: !544)
!557 = !DILocalVariable(name: "nfields", scope: !544, file: !140, line: 210, type: !58)
!558 = !DILocation(line: 210, column: 24, scope: !544)
!559 = !DILocation(line: 212, column: 10, scope: !560)
!560 = distinct !DILexicalBlock(scope: !544, file: !140, line: 212, column: 10)
!561 = !DILocation(line: 212, column: 17, scope: !560)
!562 = !DILocation(line: 212, column: 24, scope: !560)
!563 = !DILocation(line: 212, column: 27, scope: !564)
!564 = !DILexicalBlockFile(scope: !560, file: !140, discriminator: 1)
!565 = !DILocation(line: 212, column: 35, scope: !564)
!566 = !DILocation(line: 212, column: 46, scope: !564)
!567 = !DILocation(line: 212, column: 62, scope: !564)
!568 = !DILocation(line: 213, column: 9, scope: !560)
!569 = !DILocation(line: 213, column: 17, scope: !560)
!570 = !DILocation(line: 213, column: 27, scope: !560)
!571 = !DILocation(line: 212, column: 10, scope: !572)
!572 = !DILexicalBlockFile(scope: !544, file: !140, discriminator: 2)
!573 = !DILocation(line: 214, column: 16, scope: !560)
!574 = !DILocation(line: 214, column: 9, scope: !560)
!575 = !DILocation(line: 216, column: 17, scope: !544)
!576 = !DILocation(line: 216, column: 5, scope: !544)
!577 = !DILocation(line: 217, column: 15, scope: !544)
!578 = !DILocation(line: 217, column: 23, scope: !544)
!579 = !DILocation(line: 217, column: 33, scope: !544)
!580 = !DILocation(line: 217, column: 13, scope: !544)
!581 = !DILocation(line: 219, column: 10, scope: !582)
!582 = distinct !DILexicalBlock(scope: !544, file: !140, line: 219, column: 10)
!583 = !DILocation(line: 219, column: 17, scope: !582)
!584 = !DILocation(line: 219, column: 21, scope: !582)
!585 = !DILocation(line: 219, column: 24, scope: !586)
!586 = !DILexicalBlockFile(scope: !582, file: !140, discriminator: 1)
!587 = !DILocation(line: 219, column: 33, scope: !586)
!588 = !DILocation(line: 219, column: 30, scope: !586)
!589 = !DILocation(line: 219, column: 10, scope: !586)
!590 = !DILocation(line: 220, column: 9, scope: !591)
!591 = distinct !DILexicalBlock(scope: !582, file: !140, line: 219, column: 42)
!592 = !DILocation(line: 221, column: 5, scope: !591)
!593 = !DILocation(line: 221, column: 17, scope: !594)
!594 = !DILexicalBlockFile(scope: !595, file: !140, discriminator: 1)
!595 = distinct !DILexicalBlock(scope: !582, file: !140, line: 221, column: 17)
!596 = !DILocation(line: 221, column: 25, scope: !594)
!597 = !DILocation(line: 222, column: 14, scope: !598)
!598 = distinct !DILexicalBlock(scope: !599, file: !140, line: 222, column: 14)
!599 = distinct !DILexicalBlock(scope: !595, file: !140, line: 221, column: 31)
!600 = !DILocation(line: 222, column: 28, scope: !598)
!601 = !DILocation(line: 222, column: 26, scope: !598)
!602 = !DILocation(line: 222, column: 14, scope: !599)
!603 = !DILocation(line: 223, column: 13, scope: !604)
!604 = distinct !DILexicalBlock(scope: !598, file: !140, line: 222, column: 38)
!605 = !DILocation(line: 224, column: 9, scope: !604)
!606 = !DILocation(line: 225, column: 36, scope: !607)
!607 = distinct !DILexicalBlock(scope: !598, file: !140, line: 224, column: 16)
!608 = !DILocation(line: 225, column: 44, scope: !607)
!609 = !DILocation(line: 225, column: 23, scope: !607)
!610 = !DILocation(line: 225, column: 49, scope: !607)
!611 = !DILocation(line: 225, column: 55, scope: !607)
!612 = !DILocation(line: 225, column: 54, scope: !607)
!613 = !DILocation(line: 225, column: 48, scope: !607)
!614 = !DILocation(line: 225, column: 63, scope: !607)
!615 = !DILocation(line: 225, column: 62, scope: !607)
!616 = !DILocation(line: 225, column: 21, scope: !607)
!617 = !DILocation(line: 225, column: 19, scope: !607)
!618 = !DILocation(line: 227, column: 5, scope: !599)
!619 = !DILocation(line: 229, column: 12, scope: !544)
!620 = !DILocation(line: 229, column: 5, scope: !544)
!621 = !DILocation(line: 230, column: 1, scope: !544)
!622 = distinct !DISubprogram(name: "Mat_VarGetStructFieldByName", scope: !140, file: !140, line: 242, type: !623, isLocal: false, isDefinition: true, scopeLine: 244, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !144)
!623 = !DISubroutineType(types: !624)
!624 = !{!65, !65, !134, !58}
!625 = !DILocalVariable(name: "matvar", arg: 1, scope: !622, file: !140, line: 242, type: !65)
!626 = !DILocation(line: 242, column: 39, scope: !622)
!627 = !DILocalVariable(name: "field_name", arg: 2, scope: !622, file: !140, line: 242, type: !134)
!628 = !DILocation(line: 242, column: 58, scope: !622)
!629 = !DILocalVariable(name: "index", arg: 3, scope: !622, file: !140, line: 243, type: !58)
!630 = !DILocation(line: 243, column: 36, scope: !622)
!631 = !DILocalVariable(name: "i", scope: !622, file: !140, line: 245, type: !71)
!632 = !DILocation(line: 245, column: 9, scope: !622)
!633 = !DILocalVariable(name: "nfields", scope: !622, file: !140, line: 245, type: !71)
!634 = !DILocation(line: 245, column: 12, scope: !622)
!635 = !DILocalVariable(name: "field_index", scope: !622, file: !140, line: 245, type: !71)
!636 = !DILocation(line: 245, column: 21, scope: !622)
!637 = !DILocalVariable(name: "field", scope: !622, file: !140, line: 246, type: !65)
!638 = !DILocation(line: 246, column: 15, scope: !622)
!639 = !DILocalVariable(name: "nelems", scope: !622, file: !140, line: 247, type: !58)
!640 = !DILocation(line: 247, column: 12, scope: !622)
!641 = !DILocation(line: 249, column: 10, scope: !642)
!642 = distinct !DILexicalBlock(scope: !622, file: !140, line: 249, column: 10)
!643 = !DILocation(line: 249, column: 17, scope: !642)
!644 = !DILocation(line: 249, column: 24, scope: !642)
!645 = !DILocation(line: 249, column: 27, scope: !646)
!646 = !DILexicalBlockFile(scope: !642, file: !140, discriminator: 1)
!647 = !DILocation(line: 249, column: 35, scope: !646)
!648 = !DILocation(line: 249, column: 46, scope: !646)
!649 = !DILocation(line: 249, column: 62, scope: !646)
!650 = !DILocation(line: 250, column: 9, scope: !642)
!651 = !DILocation(line: 250, column: 17, scope: !642)
!652 = !DILocation(line: 250, column: 27, scope: !642)
!653 = !DILocation(line: 249, column: 10, scope: !654)
!654 = !DILexicalBlockFile(scope: !622, file: !140, discriminator: 2)
!655 = !DILocation(line: 251, column: 16, scope: !642)
!656 = !DILocation(line: 251, column: 9, scope: !642)
!657 = !DILocation(line: 253, column: 17, scope: !622)
!658 = !DILocation(line: 253, column: 5, scope: !622)
!659 = !DILocation(line: 254, column: 15, scope: !622)
!660 = !DILocation(line: 254, column: 23, scope: !622)
!661 = !DILocation(line: 254, column: 33, scope: !622)
!662 = !DILocation(line: 254, column: 13, scope: !622)
!663 = !DILocation(line: 255, column: 17, scope: !622)
!664 = !DILocation(line: 256, column: 13, scope: !665)
!665 = distinct !DILexicalBlock(scope: !622, file: !140, line: 256, column: 5)
!666 = !DILocation(line: 256, column: 11, scope: !665)
!667 = !DILocation(line: 256, column: 18, scope: !668)
!668 = !DILexicalBlockFile(scope: !669, file: !140, discriminator: 1)
!669 = distinct !DILexicalBlock(scope: !665, file: !140, line: 256, column: 5)
!670 = !DILocation(line: 256, column: 22, scope: !668)
!671 = !DILocation(line: 256, column: 20, scope: !668)
!672 = !DILocation(line: 256, column: 5, scope: !668)
!673 = !DILocation(line: 257, column: 51, scope: !674)
!674 = distinct !DILexicalBlock(scope: !675, file: !140, line: 257, column: 14)
!675 = distinct !DILexicalBlock(scope: !669, file: !140, line: 256, column: 37)
!676 = !DILocation(line: 257, column: 22, scope: !674)
!677 = !DILocation(line: 257, column: 30, scope: !674)
!678 = !DILocation(line: 257, column: 40, scope: !674)
!679 = !DILocation(line: 257, column: 54, scope: !674)
!680 = !DILocation(line: 257, column: 15, scope: !674)
!681 = !DILocation(line: 257, column: 14, scope: !675)
!682 = !DILocation(line: 258, column: 27, scope: !683)
!683 = distinct !DILexicalBlock(scope: !674, file: !140, line: 257, column: 68)
!684 = !DILocation(line: 258, column: 25, scope: !683)
!685 = !DILocation(line: 259, column: 13, scope: !683)
!686 = !DILocation(line: 261, column: 5, scope: !675)
!687 = !DILocation(line: 256, column: 32, scope: !688)
!688 = !DILexicalBlockFile(scope: !669, file: !140, discriminator: 2)
!689 = !DILocation(line: 256, column: 5, scope: !688)
!690 = distinct !{!690, !691}
!691 = !DILocation(line: 256, column: 5, scope: !622)
!692 = !DILocation(line: 263, column: 10, scope: !693)
!693 = distinct !DILexicalBlock(scope: !622, file: !140, line: 263, column: 10)
!694 = !DILocation(line: 263, column: 19, scope: !693)
!695 = !DILocation(line: 263, column: 16, scope: !693)
!696 = !DILocation(line: 263, column: 10, scope: !622)
!697 = !DILocation(line: 264, column: 9, scope: !698)
!698 = distinct !DILexicalBlock(scope: !693, file: !140, line: 263, column: 28)
!699 = !DILocation(line: 265, column: 5, scope: !698)
!700 = !DILocation(line: 265, column: 17, scope: !701)
!701 = !DILexicalBlockFile(scope: !702, file: !140, discriminator: 1)
!702 = distinct !DILexicalBlock(scope: !693, file: !140, line: 265, column: 17)
!703 = !DILocation(line: 265, column: 29, scope: !701)
!704 = !DILocation(line: 266, column: 32, scope: !705)
!705 = distinct !DILexicalBlock(scope: !702, file: !140, line: 265, column: 36)
!706 = !DILocation(line: 266, column: 40, scope: !705)
!707 = !DILocation(line: 266, column: 19, scope: !705)
!708 = !DILocation(line: 266, column: 45, scope: !705)
!709 = !DILocation(line: 266, column: 51, scope: !705)
!710 = !DILocation(line: 266, column: 50, scope: !705)
!711 = !DILocation(line: 266, column: 44, scope: !705)
!712 = !DILocation(line: 266, column: 59, scope: !705)
!713 = !DILocation(line: 266, column: 58, scope: !705)
!714 = !DILocation(line: 266, column: 17, scope: !705)
!715 = !DILocation(line: 266, column: 15, scope: !705)
!716 = !DILocation(line: 267, column: 5, scope: !705)
!717 = !DILocation(line: 269, column: 12, scope: !622)
!718 = !DILocation(line: 269, column: 5, scope: !622)
!719 = !DILocation(line: 270, column: 1, scope: !622)
!720 = distinct !DISubprogram(name: "Mat_VarGetStructField", scope: !140, file: !140, line: 286, type: !721, isLocal: false, isDefinition: true, scopeLine: 287, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !144)
!721 = !DISubroutineType(types: !722)
!722 = !{!65, !65, !56, !71, !71}
!723 = !DILocalVariable(name: "matvar", arg: 1, scope: !720, file: !140, line: 286, type: !65)
!724 = !DILocation(line: 286, column: 33, scope: !720)
!725 = !DILocalVariable(name: "name_or_index", arg: 2, scope: !720, file: !140, line: 286, type: !56)
!726 = !DILocation(line: 286, column: 46, scope: !720)
!727 = !DILocalVariable(name: "opt", arg: 3, scope: !720, file: !140, line: 286, type: !71)
!728 = !DILocation(line: 286, column: 64, scope: !720)
!729 = !DILocalVariable(name: "index", arg: 4, scope: !720, file: !140, line: 286, type: !71)
!730 = !DILocation(line: 286, column: 72, scope: !720)
!731 = !DILocalVariable(name: "err", scope: !720, file: !140, line: 288, type: !71)
!732 = !DILocation(line: 288, column: 9, scope: !720)
!733 = !DILocalVariable(name: "nfields", scope: !720, file: !140, line: 288, type: !71)
!734 = !DILocation(line: 288, column: 18, scope: !720)
!735 = !DILocalVariable(name: "field", scope: !720, file: !140, line: 289, type: !65)
!736 = !DILocation(line: 289, column: 15, scope: !720)
!737 = !DILocalVariable(name: "nelems", scope: !720, file: !140, line: 290, type: !58)
!738 = !DILocation(line: 290, column: 12, scope: !720)
!739 = !DILocation(line: 292, column: 17, scope: !720)
!740 = !DILocation(line: 292, column: 5, scope: !720)
!741 = !DILocation(line: 293, column: 15, scope: !720)
!742 = !DILocation(line: 293, column: 23, scope: !720)
!743 = !DILocation(line: 293, column: 33, scope: !720)
!744 = !DILocation(line: 293, column: 13, scope: !720)
!745 = !DILocation(line: 294, column: 10, scope: !746)
!746 = distinct !DILexicalBlock(scope: !720, file: !140, line: 294, column: 10)
!747 = !DILocation(line: 294, column: 16, scope: !746)
!748 = !DILocation(line: 294, column: 20, scope: !746)
!749 = !DILocation(line: 294, column: 24, scope: !750)
!750 = !DILexicalBlockFile(scope: !746, file: !140, discriminator: 1)
!751 = !DILocation(line: 294, column: 31, scope: !750)
!752 = !DILocation(line: 294, column: 35, scope: !750)
!753 = !DILocation(line: 294, column: 38, scope: !754)
!754 = !DILexicalBlockFile(scope: !746, file: !140, discriminator: 2)
!755 = !DILocation(line: 294, column: 47, scope: !754)
!756 = !DILocation(line: 294, column: 44, scope: !754)
!757 = !DILocation(line: 294, column: 10, scope: !754)
!758 = !DILocation(line: 295, column: 13, scope: !746)
!759 = !DILocation(line: 295, column: 9, scope: !746)
!760 = !DILocation(line: 296, column: 15, scope: !761)
!761 = distinct !DILexicalBlock(scope: !746, file: !140, line: 296, column: 15)
!762 = !DILocation(line: 296, column: 23, scope: !761)
!763 = !DILocation(line: 296, column: 15, scope: !746)
!764 = !DILocation(line: 297, column: 13, scope: !761)
!765 = !DILocation(line: 297, column: 9, scope: !761)
!766 = !DILocation(line: 299, column: 11, scope: !767)
!767 = distinct !DILexicalBlock(scope: !720, file: !140, line: 299, column: 10)
!768 = !DILocation(line: 299, column: 15, scope: !767)
!769 = !DILocation(line: 299, column: 19, scope: !770)
!770 = !DILexicalBlockFile(scope: !767, file: !140, discriminator: 1)
!771 = !DILocation(line: 299, column: 23, scope: !770)
!772 = !DILocation(line: 299, column: 10, scope: !770)
!773 = !DILocalVariable(name: "field_index", scope: !774, file: !140, line: 300, type: !58)
!774 = distinct !DILexicalBlock(scope: !767, file: !140, line: 299, column: 42)
!775 = !DILocation(line: 300, column: 16, scope: !774)
!776 = !DILocation(line: 300, column: 38, scope: !774)
!777 = !DILocation(line: 300, column: 31, scope: !774)
!778 = !DILocation(line: 300, column: 30, scope: !774)
!779 = !DILocation(line: 301, column: 14, scope: !780)
!780 = distinct !DILexicalBlock(scope: !774, file: !140, line: 301, column: 14)
!781 = !DILocation(line: 301, column: 26, scope: !780)
!782 = !DILocation(line: 301, column: 14, scope: !774)
!783 = !DILocation(line: 302, column: 50, scope: !780)
!784 = !DILocation(line: 302, column: 57, scope: !780)
!785 = !DILocation(line: 302, column: 68, scope: !780)
!786 = !DILocation(line: 302, column: 71, scope: !780)
!787 = !DILocation(line: 302, column: 21, scope: !780)
!788 = !DILocation(line: 302, column: 19, scope: !780)
!789 = !DILocation(line: 302, column: 13, scope: !780)
!790 = !DILocation(line: 303, column: 5, scope: !774)
!791 = !DILocation(line: 303, column: 18, scope: !792)
!792 = !DILexicalBlockFile(scope: !793, file: !140, discriminator: 1)
!793 = distinct !DILexicalBlock(scope: !767, file: !140, line: 303, column: 17)
!794 = !DILocation(line: 303, column: 22, scope: !792)
!795 = !DILocation(line: 303, column: 26, scope: !796)
!796 = !DILexicalBlockFile(scope: !793, file: !140, discriminator: 2)
!797 = !DILocation(line: 303, column: 30, scope: !796)
!798 = !DILocation(line: 303, column: 17, scope: !796)
!799 = !DILocation(line: 304, column: 45, scope: !800)
!800 = distinct !DILexicalBlock(scope: !793, file: !140, line: 303, column: 48)
!801 = !DILocation(line: 304, column: 65, scope: !800)
!802 = !DILocation(line: 304, column: 79, scope: !800)
!803 = !DILocation(line: 304, column: 17, scope: !800)
!804 = !DILocation(line: 304, column: 15, scope: !800)
!805 = !DILocation(line: 305, column: 5, scope: !800)
!806 = !DILocation(line: 307, column: 12, scope: !720)
!807 = !DILocation(line: 307, column: 5, scope: !720)
!808 = distinct !DISubprogram(name: "Mat_VarGetStructs", scope: !140, file: !140, line: 333, type: !809, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !144)
!809 = !DISubroutineType(types: !810)
!810 = !{!65, !65, !133, !133, !133, !71}
!811 = !DILocalVariable(name: "matvar", arg: 1, scope: !808, file: !140, line: 333, type: !65)
!812 = !DILocation(line: 333, column: 29, scope: !808)
!813 = !DILocalVariable(name: "start", arg: 2, scope: !808, file: !140, line: 333, type: !133)
!814 = !DILocation(line: 333, column: 41, scope: !808)
!815 = !DILocalVariable(name: "stride", arg: 3, scope: !808, file: !140, line: 333, type: !133)
!816 = !DILocation(line: 333, column: 52, scope: !808)
!817 = !DILocalVariable(name: "edge", arg: 4, scope: !808, file: !140, line: 333, type: !133)
!818 = !DILocation(line: 333, column: 64, scope: !808)
!819 = !DILocalVariable(name: "copy_fields", arg: 5, scope: !808, file: !140, line: 334, type: !71)
!820 = !DILocation(line: 334, column: 9, scope: !808)
!821 = !DILocalVariable(name: "i", scope: !808, file: !140, line: 336, type: !58)
!822 = !DILocation(line: 336, column: 12, scope: !808)
!823 = !DILocalVariable(name: "N", scope: !808, file: !140, line: 336, type: !58)
!824 = !DILocation(line: 336, column: 14, scope: !808)
!825 = !DILocalVariable(name: "I", scope: !808, file: !140, line: 336, type: !58)
!826 = !DILocation(line: 336, column: 16, scope: !808)
!827 = !DILocalVariable(name: "nfields", scope: !808, file: !140, line: 336, type: !58)
!828 = !DILocation(line: 336, column: 18, scope: !808)
!829 = !DILocalVariable(name: "field", scope: !808, file: !140, line: 336, type: !58)
!830 = !DILocation(line: 336, column: 26, scope: !808)
!831 = !DILocalVariable(name: "idx", scope: !808, file: !140, line: 336, type: !832)
!832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 640, align: 64, elements: !833)
!833 = !{!834}
!834 = !DISubrange(count: 10)
!835 = !DILocation(line: 336, column: 32, scope: !808)
!836 = !DILocalVariable(name: "cnt", scope: !808, file: !140, line: 336, type: !832)
!837 = !DILocation(line: 336, column: 47, scope: !808)
!838 = !DILocation(line: 336, column: 47, scope: !839)
!839 = !DILexicalBlockFile(scope: !808, file: !140, discriminator: 1)
!840 = !DILocalVariable(name: "dimp", scope: !808, file: !140, line: 336, type: !832)
!841 = !DILocation(line: 336, column: 62, scope: !808)
!842 = !DILocation(line: 336, column: 62, scope: !843)
!843 = !DILexicalBlockFile(scope: !808, file: !140, discriminator: 2)
!844 = !DILocalVariable(name: "fields", scope: !808, file: !140, line: 337, type: !64)
!845 = !DILocation(line: 337, column: 16, scope: !808)
!846 = !DILocalVariable(name: "struct_slab", scope: !808, file: !140, line: 337, type: !65)
!847 = !DILocation(line: 337, column: 25, scope: !808)
!848 = !DILocalVariable(name: "j", scope: !808, file: !140, line: 338, type: !71)
!849 = !DILocation(line: 338, column: 9, scope: !808)
!850 = !DILocation(line: 340, column: 11, scope: !851)
!851 = distinct !DILexicalBlock(scope: !808, file: !140, line: 340, column: 10)
!852 = !DILocation(line: 340, column: 18, scope: !851)
!853 = !DILocation(line: 340, column: 26, scope: !851)
!854 = !DILocation(line: 340, column: 30, scope: !855)
!855 = !DILexicalBlockFile(scope: !851, file: !140, discriminator: 1)
!856 = !DILocation(line: 340, column: 36, scope: !855)
!857 = !DILocation(line: 340, column: 45, scope: !855)
!858 = !DILocation(line: 340, column: 49, scope: !859)
!859 = !DILexicalBlockFile(scope: !851, file: !140, discriminator: 2)
!860 = !DILocation(line: 340, column: 56, scope: !859)
!861 = !DILocation(line: 340, column: 65, scope: !859)
!862 = !DILocation(line: 341, column: 11, scope: !851)
!863 = !DILocation(line: 341, column: 16, scope: !851)
!864 = !DILocation(line: 340, column: 10, scope: !865)
!865 = !DILexicalBlockFile(scope: !808, file: !140, discriminator: 3)
!866 = !DILocation(line: 342, column: 9, scope: !867)
!867 = distinct !DILexicalBlock(scope: !851, file: !140, line: 341, column: 26)
!868 = !DILocation(line: 343, column: 17, scope: !869)
!869 = distinct !DILexicalBlock(scope: !851, file: !140, line: 343, column: 17)
!870 = !DILocation(line: 343, column: 25, scope: !869)
!871 = !DILocation(line: 343, column: 30, scope: !869)
!872 = !DILocation(line: 343, column: 17, scope: !851)
!873 = !DILocation(line: 344, column: 9, scope: !874)
!874 = distinct !DILexicalBlock(scope: !869, file: !140, line: 343, column: 36)
!875 = !DILocation(line: 345, column: 17, scope: !876)
!876 = distinct !DILexicalBlock(scope: !869, file: !140, line: 345, column: 17)
!877 = !DILocation(line: 345, column: 25, scope: !876)
!878 = !DILocation(line: 345, column: 36, scope: !876)
!879 = !DILocation(line: 345, column: 17, scope: !869)
!880 = !DILocation(line: 346, column: 9, scope: !881)
!881 = distinct !DILexicalBlock(scope: !876, file: !140, line: 345, column: 54)
!882 = !DILocation(line: 349, column: 36, scope: !808)
!883 = !DILocation(line: 349, column: 19, scope: !808)
!884 = !DILocation(line: 349, column: 17, scope: !808)
!885 = !DILocation(line: 350, column: 11, scope: !886)
!886 = distinct !DILexicalBlock(scope: !808, file: !140, line: 350, column: 10)
!887 = !DILocation(line: 350, column: 10, scope: !808)
!888 = !DILocation(line: 351, column: 9, scope: !886)
!889 = !DILocation(line: 351, column: 22, scope: !886)
!890 = !DILocation(line: 351, column: 35, scope: !886)
!891 = !DILocation(line: 353, column: 15, scope: !808)
!892 = !DILocation(line: 353, column: 23, scope: !808)
!893 = !DILocation(line: 353, column: 33, scope: !808)
!894 = !DILocation(line: 353, column: 13, scope: !808)
!895 = !DILocation(line: 355, column: 15, scope: !808)
!896 = !DILocation(line: 355, column: 23, scope: !808)
!897 = !DILocation(line: 355, column: 5, scope: !808)
!898 = !DILocation(line: 355, column: 13, scope: !808)
!899 = !DILocation(line: 356, column: 9, scope: !808)
!900 = !DILocation(line: 356, column: 7, scope: !808)
!901 = !DILocation(line: 357, column: 9, scope: !808)
!902 = !DILocation(line: 357, column: 7, scope: !808)
!903 = !DILocation(line: 358, column: 28, scope: !808)
!904 = !DILocation(line: 358, column: 5, scope: !808)
!905 = !DILocation(line: 358, column: 18, scope: !808)
!906 = !DILocation(line: 358, column: 26, scope: !808)
!907 = !DILocation(line: 359, column: 14, scope: !808)
!908 = !DILocation(line: 359, column: 5, scope: !808)
!909 = !DILocation(line: 359, column: 12, scope: !808)
!910 = !DILocation(line: 360, column: 13, scope: !911)
!911 = distinct !DILexicalBlock(scope: !808, file: !140, line: 360, column: 5)
!912 = !DILocation(line: 360, column: 11, scope: !911)
!913 = !DILocation(line: 360, column: 18, scope: !914)
!914 = !DILexicalBlockFile(scope: !915, file: !140, discriminator: 1)
!915 = distinct !DILexicalBlock(scope: !911, file: !140, line: 360, column: 5)
!916 = !DILocation(line: 360, column: 22, scope: !914)
!917 = !DILocation(line: 360, column: 30, scope: !914)
!918 = !DILocation(line: 360, column: 20, scope: !914)
!919 = !DILocation(line: 360, column: 5, scope: !914)
!920 = !DILocation(line: 361, column: 24, scope: !921)
!921 = distinct !DILexicalBlock(scope: !915, file: !140, line: 360, column: 42)
!922 = !DILocation(line: 361, column: 18, scope: !921)
!923 = !DILocation(line: 361, column: 13, scope: !921)
!924 = !DILocation(line: 361, column: 9, scope: !921)
!925 = !DILocation(line: 361, column: 16, scope: !921)
!926 = !DILocation(line: 362, column: 24, scope: !921)
!927 = !DILocation(line: 362, column: 25, scope: !921)
!928 = !DILocation(line: 362, column: 19, scope: !921)
!929 = !DILocation(line: 362, column: 42, scope: !921)
!930 = !DILocation(line: 362, column: 29, scope: !921)
!931 = !DILocation(line: 362, column: 37, scope: !921)
!932 = !DILocation(line: 362, column: 28, scope: !921)
!933 = !DILocation(line: 362, column: 14, scope: !921)
!934 = !DILocation(line: 362, column: 9, scope: !921)
!935 = !DILocation(line: 362, column: 17, scope: !921)
!936 = !DILocation(line: 363, column: 19, scope: !921)
!937 = !DILocation(line: 363, column: 14, scope: !921)
!938 = !DILocation(line: 363, column: 11, scope: !921)
!939 = !DILocation(line: 364, column: 20, scope: !921)
!940 = !DILocation(line: 364, column: 14, scope: !921)
!941 = !DILocation(line: 364, column: 28, scope: !921)
!942 = !DILocation(line: 364, column: 29, scope: !921)
!943 = !DILocation(line: 364, column: 23, scope: !921)
!944 = !DILocation(line: 364, column: 22, scope: !921)
!945 = !DILocation(line: 364, column: 11, scope: !921)
!946 = !DILocation(line: 365, column: 37, scope: !921)
!947 = !DILocation(line: 365, column: 32, scope: !921)
!948 = !DILocation(line: 365, column: 27, scope: !921)
!949 = !DILocation(line: 365, column: 9, scope: !921)
!950 = !DILocation(line: 365, column: 22, scope: !921)
!951 = !DILocation(line: 365, column: 30, scope: !921)
!952 = !DILocation(line: 366, column: 5, scope: !921)
!953 = !DILocation(line: 360, column: 37, scope: !954)
!954 = !DILexicalBlockFile(scope: !915, file: !140, discriminator: 2)
!955 = !DILocation(line: 360, column: 5, scope: !954)
!956 = distinct !{!956, !957}
!957 = !DILocation(line: 360, column: 5, scope: !808)
!958 = !DILocation(line: 367, column: 10, scope: !808)
!959 = !DILocation(line: 367, column: 7, scope: !808)
!960 = !DILocation(line: 368, column: 27, scope: !808)
!961 = !DILocation(line: 368, column: 29, scope: !808)
!962 = !DILocation(line: 368, column: 28, scope: !808)
!963 = !DILocation(line: 368, column: 36, scope: !808)
!964 = !DILocation(line: 368, column: 5, scope: !808)
!965 = !DILocation(line: 368, column: 18, scope: !808)
!966 = !DILocation(line: 368, column: 25, scope: !808)
!967 = !DILocation(line: 369, column: 32, scope: !808)
!968 = !DILocation(line: 369, column: 45, scope: !808)
!969 = !DILocation(line: 369, column: 25, scope: !808)
!970 = !DILocation(line: 369, column: 5, scope: !808)
!971 = !DILocation(line: 369, column: 18, scope: !808)
!972 = !DILocation(line: 369, column: 23, scope: !808)
!973 = !DILocation(line: 370, column: 10, scope: !974)
!974 = distinct !DILexicalBlock(scope: !808, file: !140, line: 370, column: 10)
!975 = !DILocation(line: 370, column: 23, scope: !974)
!976 = !DILocation(line: 370, column: 28, scope: !974)
!977 = !DILocation(line: 370, column: 10, scope: !808)
!978 = !DILocation(line: 371, column: 21, scope: !979)
!979 = distinct !DILexicalBlock(scope: !974, file: !140, line: 370, column: 37)
!980 = !DILocation(line: 371, column: 9, scope: !979)
!981 = !DILocation(line: 372, column: 9, scope: !979)
!982 = !DILocation(line: 374, column: 26, scope: !808)
!983 = !DILocation(line: 374, column: 39, scope: !808)
!984 = !DILocation(line: 374, column: 14, scope: !808)
!985 = !DILocation(line: 374, column: 12, scope: !808)
!986 = !DILocation(line: 375, column: 13, scope: !987)
!987 = distinct !DILexicalBlock(scope: !808, file: !140, line: 375, column: 5)
!988 = !DILocation(line: 375, column: 11, scope: !987)
!989 = !DILocation(line: 375, column: 18, scope: !990)
!990 = !DILexicalBlockFile(scope: !991, file: !140, discriminator: 1)
!991 = distinct !DILexicalBlock(scope: !987, file: !140, line: 375, column: 5)
!992 = !DILocation(line: 375, column: 22, scope: !990)
!993 = !DILocation(line: 375, column: 20, scope: !990)
!994 = !DILocation(line: 375, column: 5, scope: !990)
!995 = !DILocation(line: 376, column: 17, scope: !996)
!996 = distinct !DILexicalBlock(scope: !997, file: !140, line: 376, column: 9)
!997 = distinct !DILexicalBlock(scope: !991, file: !140, line: 375, column: 38)
!998 = !DILocation(line: 376, column: 15, scope: !996)
!999 = !DILocation(line: 376, column: 22, scope: !1000)
!1000 = !DILexicalBlockFile(scope: !1001, file: !140, discriminator: 1)
!1001 = distinct !DILexicalBlock(scope: !996, file: !140, line: 376, column: 9)
!1002 = !DILocation(line: 376, column: 26, scope: !1000)
!1003 = !DILocation(line: 376, column: 24, scope: !1000)
!1004 = !DILocation(line: 376, column: 9, scope: !1000)
!1005 = !DILocation(line: 377, column: 25, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1007, file: !140, line: 377, column: 13)
!1007 = distinct !DILexicalBlock(scope: !1001, file: !140, line: 376, column: 41)
!1008 = !DILocation(line: 377, column: 19, scope: !1006)
!1009 = !DILocation(line: 377, column: 30, scope: !1010)
!1010 = !DILexicalBlockFile(scope: !1011, file: !140, discriminator: 1)
!1011 = distinct !DILexicalBlock(scope: !1006, file: !140, line: 377, column: 13)
!1012 = !DILocation(line: 377, column: 38, scope: !1010)
!1013 = !DILocation(line: 377, column: 36, scope: !1010)
!1014 = !DILocation(line: 377, column: 13, scope: !1010)
!1015 = !DILocation(line: 378, column: 22, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1017, file: !140, line: 378, column: 22)
!1017 = distinct !DILexicalBlock(scope: !1011, file: !140, line: 377, column: 57)
!1018 = !DILocation(line: 378, column: 22, scope: !1017)
!1019 = !DILocation(line: 380, column: 58, scope: !1016)
!1020 = !DILocation(line: 380, column: 66, scope: !1016)
!1021 = !DILocation(line: 380, column: 45, scope: !1016)
!1022 = !DILocation(line: 380, column: 73, scope: !1016)
!1023 = !DILocation(line: 380, column: 71, scope: !1016)
!1024 = !DILocation(line: 380, column: 43, scope: !1016)
!1025 = !DILocation(line: 380, column: 26, scope: !1016)
!1026 = !DILocation(line: 379, column: 29, scope: !1016)
!1027 = !DILocation(line: 379, column: 31, scope: !1016)
!1028 = !DILocation(line: 379, column: 30, scope: !1016)
!1029 = !DILocation(line: 379, column: 34, scope: !1016)
!1030 = !DILocation(line: 379, column: 33, scope: !1016)
!1031 = !DILocation(line: 379, column: 42, scope: !1016)
!1032 = !DILocation(line: 379, column: 41, scope: !1016)
!1033 = !DILocation(line: 379, column: 21, scope: !1016)
!1034 = !DILocation(line: 379, column: 49, scope: !1016)
!1035 = !DILocation(line: 383, column: 40, scope: !1016)
!1036 = !DILocation(line: 383, column: 48, scope: !1016)
!1037 = !DILocation(line: 383, column: 27, scope: !1016)
!1038 = !DILocation(line: 383, column: 55, scope: !1016)
!1039 = !DILocation(line: 383, column: 53, scope: !1016)
!1040 = !DILocation(line: 383, column: 25, scope: !1016)
!1041 = !DILocation(line: 382, column: 29, scope: !1016)
!1042 = !DILocation(line: 382, column: 31, scope: !1016)
!1043 = !DILocation(line: 382, column: 30, scope: !1016)
!1044 = !DILocation(line: 382, column: 34, scope: !1016)
!1045 = !DILocation(line: 382, column: 33, scope: !1016)
!1046 = !DILocation(line: 382, column: 42, scope: !1016)
!1047 = !DILocation(line: 382, column: 41, scope: !1016)
!1048 = !DILocation(line: 382, column: 21, scope: !1016)
!1049 = !DILocation(line: 382, column: 49, scope: !1016)
!1050 = !DILocation(line: 384, column: 18, scope: !1017)
!1051 = !DILocation(line: 385, column: 13, scope: !1017)
!1052 = !DILocation(line: 377, column: 52, scope: !1053)
!1053 = !DILexicalBlockFile(scope: !1011, file: !140, discriminator: 2)
!1054 = !DILocation(line: 377, column: 13, scope: !1053)
!1055 = distinct !{!1055, !1056}
!1056 = !DILocation(line: 377, column: 13, scope: !1007)
!1057 = !DILocation(line: 386, column: 19, scope: !1007)
!1058 = !DILocation(line: 386, column: 28, scope: !1007)
!1059 = !DILocation(line: 386, column: 18, scope: !1007)
!1060 = !DILocation(line: 386, column: 32, scope: !1007)
!1061 = !DILocation(line: 386, column: 31, scope: !1007)
!1062 = !DILocation(line: 386, column: 15, scope: !1007)
!1063 = !DILocation(line: 387, column: 9, scope: !1007)
!1064 = !DILocation(line: 376, column: 36, scope: !1065)
!1065 = !DILexicalBlockFile(scope: !1001, file: !140, discriminator: 2)
!1066 = !DILocation(line: 376, column: 9, scope: !1065)
!1067 = distinct !{!1067, !1068}
!1068 = !DILocation(line: 376, column: 9, scope: !997)
!1069 = !DILocation(line: 388, column: 18, scope: !997)
!1070 = !DILocation(line: 388, column: 9, scope: !997)
!1071 = !DILocation(line: 388, column: 16, scope: !997)
!1072 = !DILocation(line: 389, column: 13, scope: !997)
!1073 = !DILocation(line: 389, column: 11, scope: !997)
!1074 = !DILocation(line: 390, column: 9, scope: !997)
!1075 = !DILocation(line: 390, column: 15, scope: !997)
!1076 = !DILocation(line: 391, column: 19, scope: !997)
!1077 = !DILocation(line: 391, column: 9, scope: !997)
!1078 = !DILocation(line: 391, column: 16, scope: !997)
!1079 = !DILocation(line: 392, column: 17, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !997, file: !140, line: 392, column: 9)
!1081 = !DILocation(line: 392, column: 15, scope: !1080)
!1082 = !DILocation(line: 392, column: 22, scope: !1083)
!1083 = !DILexicalBlockFile(scope: !1084, file: !140, discriminator: 1)
!1084 = distinct !DILexicalBlock(scope: !1080, file: !140, line: 392, column: 9)
!1085 = !DILocation(line: 392, column: 26, scope: !1083)
!1086 = !DILocation(line: 392, column: 34, scope: !1083)
!1087 = !DILocation(line: 392, column: 24, scope: !1083)
!1088 = !DILocation(line: 392, column: 9, scope: !1083)
!1089 = !DILocation(line: 393, column: 22, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1091, file: !140, line: 393, column: 18)
!1091 = distinct !DILexicalBlock(scope: !1084, file: !140, line: 392, column: 46)
!1092 = !DILocation(line: 393, column: 18, scope: !1090)
!1093 = !DILocation(line: 393, column: 33, scope: !1090)
!1094 = !DILocation(line: 393, column: 28, scope: !1090)
!1095 = !DILocation(line: 393, column: 25, scope: !1090)
!1096 = !DILocation(line: 393, column: 18, scope: !1091)
!1097 = !DILocation(line: 394, column: 21, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1090, file: !140, line: 393, column: 38)
!1099 = !DILocation(line: 394, column: 17, scope: !1098)
!1100 = !DILocation(line: 394, column: 24, scope: !1098)
!1101 = !DILocation(line: 395, column: 32, scope: !1098)
!1102 = !DILocation(line: 395, column: 26, scope: !1098)
!1103 = !DILocation(line: 395, column: 21, scope: !1098)
!1104 = !DILocation(line: 395, column: 17, scope: !1098)
!1105 = !DILocation(line: 395, column: 24, scope: !1098)
!1106 = !DILocation(line: 396, column: 22, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1098, file: !140, line: 396, column: 22)
!1108 = !DILocation(line: 396, column: 26, scope: !1107)
!1109 = !DILocation(line: 396, column: 34, scope: !1107)
!1110 = !DILocation(line: 396, column: 39, scope: !1107)
!1111 = !DILocation(line: 396, column: 24, scope: !1107)
!1112 = !DILocation(line: 396, column: 22, scope: !1098)
!1113 = !DILocation(line: 397, column: 25, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1107, file: !140, line: 396, column: 45)
!1115 = !DILocation(line: 397, column: 26, scope: !1114)
!1116 = !DILocation(line: 397, column: 21, scope: !1114)
!1117 = !DILocation(line: 397, column: 29, scope: !1114)
!1118 = !DILocation(line: 398, column: 40, scope: !1114)
!1119 = !DILocation(line: 398, column: 41, scope: !1114)
!1120 = !DILocation(line: 398, column: 33, scope: !1114)
!1121 = !DILocation(line: 398, column: 25, scope: !1114)
!1122 = !DILocation(line: 398, column: 26, scope: !1114)
!1123 = !DILocation(line: 398, column: 21, scope: !1114)
!1124 = !DILocation(line: 398, column: 30, scope: !1114)
!1125 = !DILocation(line: 399, column: 17, scope: !1114)
!1126 = !DILocation(line: 400, column: 13, scope: !1098)
!1127 = !DILocation(line: 401, column: 22, scope: !1091)
!1128 = !DILocation(line: 401, column: 18, scope: !1091)
!1129 = !DILocation(line: 401, column: 30, scope: !1091)
!1130 = !DILocation(line: 401, column: 31, scope: !1091)
!1131 = !DILocation(line: 401, column: 25, scope: !1091)
!1132 = !DILocation(line: 401, column: 24, scope: !1091)
!1133 = !DILocation(line: 401, column: 15, scope: !1091)
!1134 = !DILocation(line: 402, column: 9, scope: !1091)
!1135 = !DILocation(line: 392, column: 41, scope: !1136)
!1136 = !DILexicalBlockFile(scope: !1084, file: !140, discriminator: 2)
!1137 = !DILocation(line: 392, column: 9, scope: !1136)
!1138 = distinct !{!1138, !1139}
!1139 = !DILocation(line: 392, column: 9, scope: !997)
!1140 = !DILocation(line: 403, column: 14, scope: !997)
!1141 = !DILocation(line: 403, column: 11, scope: !997)
!1142 = !DILocation(line: 404, column: 5, scope: !997)
!1143 = !DILocation(line: 375, column: 28, scope: !1144)
!1144 = !DILexicalBlockFile(scope: !991, file: !140, discriminator: 2)
!1145 = !DILocation(line: 375, column: 26, scope: !1144)
!1146 = !DILocation(line: 375, column: 5, scope: !1144)
!1147 = distinct !{!1147, !1148}
!1148 = !DILocation(line: 375, column: 5, scope: !808)
!1149 = !DILocation(line: 405, column: 12, scope: !808)
!1150 = !DILocation(line: 405, column: 5, scope: !808)
!1151 = !DILocation(line: 406, column: 1, scope: !808)
!1152 = distinct !DISubprogram(name: "Mat_VarGetStructsLinear", scope: !140, file: !140, line: 426, type: !1153, isLocal: false, isDefinition: true, scopeLine: 428, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !144)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!65, !65, !71, !71, !71, !71}
!1155 = !DILocalVariable(name: "matvar", arg: 1, scope: !1152, file: !140, line: 426, type: !65)
!1156 = !DILocation(line: 426, column: 35, scope: !1152)
!1157 = !DILocalVariable(name: "start", arg: 2, scope: !1152, file: !140, line: 426, type: !71)
!1158 = !DILocation(line: 426, column: 46, scope: !1152)
!1159 = !DILocalVariable(name: "stride", arg: 3, scope: !1152, file: !140, line: 426, type: !71)
!1160 = !DILocation(line: 426, column: 56, scope: !1152)
!1161 = !DILocalVariable(name: "edge", arg: 4, scope: !1152, file: !140, line: 426, type: !71)
!1162 = !DILocation(line: 426, column: 67, scope: !1152)
!1163 = !DILocalVariable(name: "copy_fields", arg: 5, scope: !1152, file: !140, line: 427, type: !71)
!1164 = !DILocation(line: 427, column: 9, scope: !1152)
!1165 = !DILocalVariable(name: "struct_slab", scope: !1152, file: !140, line: 429, type: !65)
!1166 = !DILocation(line: 429, column: 15, scope: !1152)
!1167 = !DILocation(line: 431, column: 10, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1152, file: !140, line: 431, column: 10)
!1169 = !DILocation(line: 431, column: 17, scope: !1168)
!1170 = !DILocation(line: 431, column: 24, scope: !1168)
!1171 = !DILocation(line: 431, column: 27, scope: !1172)
!1172 = !DILexicalBlockFile(scope: !1168, file: !140, discriminator: 1)
!1173 = !DILocation(line: 431, column: 35, scope: !1172)
!1174 = !DILocation(line: 431, column: 40, scope: !1172)
!1175 = !DILocation(line: 431, column: 10, scope: !1172)
!1176 = !DILocation(line: 432, column: 20, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1168, file: !140, line: 431, column: 47)
!1178 = !DILocation(line: 433, column: 5, scope: !1177)
!1179 = !DILocalVariable(name: "i", scope: !1180, file: !140, line: 434, type: !71)
!1180 = distinct !DILexicalBlock(scope: !1168, file: !140, line: 433, column: 12)
!1181 = !DILocation(line: 434, column: 13, scope: !1180)
!1182 = !DILocalVariable(name: "I", scope: !1180, file: !140, line: 434, type: !71)
!1183 = !DILocation(line: 434, column: 16, scope: !1180)
!1184 = !DILocalVariable(name: "field", scope: !1180, file: !140, line: 434, type: !71)
!1185 = !DILocation(line: 434, column: 19, scope: !1180)
!1186 = !DILocalVariable(name: "nfields", scope: !1180, file: !140, line: 434, type: !71)
!1187 = !DILocation(line: 434, column: 26, scope: !1180)
!1188 = !DILocalVariable(name: "fields", scope: !1180, file: !140, line: 435, type: !64)
!1189 = !DILocation(line: 435, column: 20, scope: !1180)
!1190 = !DILocation(line: 437, column: 40, scope: !1180)
!1191 = !DILocation(line: 437, column: 23, scope: !1180)
!1192 = !DILocation(line: 437, column: 21, scope: !1180)
!1193 = !DILocation(line: 438, column: 15, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1180, file: !140, line: 438, column: 14)
!1195 = !DILocation(line: 438, column: 14, scope: !1180)
!1196 = !DILocation(line: 439, column: 13, scope: !1194)
!1197 = !DILocation(line: 439, column: 26, scope: !1194)
!1198 = !DILocation(line: 439, column: 39, scope: !1194)
!1199 = !DILocation(line: 441, column: 19, scope: !1180)
!1200 = !DILocation(line: 441, column: 27, scope: !1180)
!1201 = !DILocation(line: 441, column: 37, scope: !1180)
!1202 = !DILocation(line: 441, column: 17, scope: !1180)
!1203 = !DILocation(line: 443, column: 39, scope: !1180)
!1204 = !DILocation(line: 443, column: 31, scope: !1180)
!1205 = !DILocation(line: 443, column: 44, scope: !1180)
!1206 = !DILocation(line: 443, column: 43, scope: !1180)
!1207 = !DILocation(line: 443, column: 51, scope: !1180)
!1208 = !DILocation(line: 443, column: 9, scope: !1180)
!1209 = !DILocation(line: 443, column: 22, scope: !1180)
!1210 = !DILocation(line: 443, column: 29, scope: !1180)
!1211 = !DILocation(line: 444, column: 36, scope: !1180)
!1212 = !DILocation(line: 444, column: 49, scope: !1180)
!1213 = !DILocation(line: 444, column: 29, scope: !1180)
!1214 = !DILocation(line: 444, column: 9, scope: !1180)
!1215 = !DILocation(line: 444, column: 22, scope: !1180)
!1216 = !DILocation(line: 444, column: 27, scope: !1180)
!1217 = !DILocation(line: 445, column: 14, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1180, file: !140, line: 445, column: 14)
!1219 = !DILocation(line: 445, column: 27, scope: !1218)
!1220 = !DILocation(line: 445, column: 32, scope: !1218)
!1221 = !DILocation(line: 445, column: 14, scope: !1180)
!1222 = !DILocation(line: 446, column: 25, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1218, file: !140, line: 445, column: 41)
!1224 = !DILocation(line: 446, column: 13, scope: !1223)
!1225 = !DILocation(line: 447, column: 13, scope: !1223)
!1226 = !DILocation(line: 449, column: 32, scope: !1180)
!1227 = !DILocation(line: 449, column: 9, scope: !1180)
!1228 = !DILocation(line: 449, column: 22, scope: !1180)
!1229 = !DILocation(line: 449, column: 30, scope: !1180)
!1230 = !DILocation(line: 450, column: 9, scope: !1180)
!1231 = !DILocation(line: 450, column: 22, scope: !1180)
!1232 = !DILocation(line: 450, column: 30, scope: !1180)
!1233 = !DILocation(line: 451, column: 30, scope: !1180)
!1234 = !DILocation(line: 451, column: 43, scope: !1180)
!1235 = !DILocation(line: 451, column: 18, scope: !1180)
!1236 = !DILocation(line: 451, column: 16, scope: !1180)
!1237 = !DILocation(line: 452, column: 13, scope: !1180)
!1238 = !DILocation(line: 452, column: 19, scope: !1180)
!1239 = !DILocation(line: 452, column: 18, scope: !1180)
!1240 = !DILocation(line: 452, column: 11, scope: !1180)
!1241 = !DILocation(line: 453, column: 17, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1180, file: !140, line: 453, column: 9)
!1243 = !DILocation(line: 453, column: 15, scope: !1242)
!1244 = !DILocation(line: 453, column: 22, scope: !1245)
!1245 = !DILexicalBlockFile(scope: !1246, file: !140, discriminator: 1)
!1246 = distinct !DILexicalBlock(scope: !1242, file: !140, line: 453, column: 9)
!1247 = !DILocation(line: 453, column: 26, scope: !1245)
!1248 = !DILocation(line: 453, column: 24, scope: !1245)
!1249 = !DILocation(line: 453, column: 9, scope: !1245)
!1250 = !DILocation(line: 454, column: 18, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !140, line: 454, column: 18)
!1252 = distinct !DILexicalBlock(scope: !1246, file: !140, line: 453, column: 38)
!1253 = !DILocation(line: 454, column: 18, scope: !1252)
!1254 = !DILocation(line: 455, column: 29, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !140, line: 455, column: 17)
!1256 = distinct !DILexicalBlock(scope: !1251, file: !140, line: 454, column: 32)
!1257 = !DILocation(line: 455, column: 23, scope: !1255)
!1258 = !DILocation(line: 455, column: 34, scope: !1259)
!1259 = !DILexicalBlockFile(scope: !1260, file: !140, discriminator: 1)
!1260 = distinct !DILexicalBlock(scope: !1255, file: !140, line: 455, column: 17)
!1261 = !DILocation(line: 455, column: 42, scope: !1259)
!1262 = !DILocation(line: 455, column: 40, scope: !1259)
!1263 = !DILocation(line: 455, column: 17, scope: !1259)
!1264 = !DILocation(line: 457, column: 57, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1260, file: !140, line: 455, column: 61)
!1266 = !DILocation(line: 457, column: 65, scope: !1265)
!1267 = !DILocation(line: 457, column: 44, scope: !1265)
!1268 = !DILocation(line: 457, column: 70, scope: !1265)
!1269 = !DILocation(line: 457, column: 69, scope: !1265)
!1270 = !DILocation(line: 457, column: 42, scope: !1265)
!1271 = !DILocation(line: 457, column: 25, scope: !1265)
!1272 = !DILocation(line: 456, column: 28, scope: !1265)
!1273 = !DILocation(line: 456, column: 30, scope: !1265)
!1274 = !DILocation(line: 456, column: 29, scope: !1265)
!1275 = !DILocation(line: 456, column: 38, scope: !1265)
!1276 = !DILocation(line: 456, column: 37, scope: !1265)
!1277 = !DILocation(line: 456, column: 21, scope: !1265)
!1278 = !DILocation(line: 456, column: 45, scope: !1265)
!1279 = !DILocation(line: 458, column: 22, scope: !1265)
!1280 = !DILocation(line: 459, column: 17, scope: !1265)
!1281 = !DILocation(line: 455, column: 56, scope: !1282)
!1282 = !DILexicalBlockFile(scope: !1260, file: !140, discriminator: 2)
!1283 = !DILocation(line: 455, column: 17, scope: !1282)
!1284 = distinct !{!1284, !1285}
!1285 = !DILocation(line: 455, column: 17, scope: !1256)
!1286 = !DILocation(line: 460, column: 13, scope: !1256)
!1287 = !DILocation(line: 461, column: 29, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !140, line: 461, column: 17)
!1289 = distinct !DILexicalBlock(scope: !1251, file: !140, line: 460, column: 20)
!1290 = !DILocation(line: 461, column: 23, scope: !1288)
!1291 = !DILocation(line: 461, column: 34, scope: !1292)
!1292 = !DILexicalBlockFile(scope: !1293, file: !140, discriminator: 1)
!1293 = distinct !DILexicalBlock(scope: !1288, file: !140, line: 461, column: 17)
!1294 = !DILocation(line: 461, column: 42, scope: !1292)
!1295 = !DILocation(line: 461, column: 40, scope: !1292)
!1296 = !DILocation(line: 461, column: 17, scope: !1292)
!1297 = !DILocation(line: 462, column: 62, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1293, file: !140, line: 461, column: 61)
!1299 = !DILocation(line: 462, column: 70, scope: !1298)
!1300 = !DILocation(line: 462, column: 49, scope: !1298)
!1301 = !DILocation(line: 462, column: 77, scope: !1298)
!1302 = !DILocation(line: 462, column: 75, scope: !1298)
!1303 = !DILocation(line: 462, column: 47, scope: !1298)
!1304 = !DILocation(line: 462, column: 28, scope: !1298)
!1305 = !DILocation(line: 462, column: 30, scope: !1298)
!1306 = !DILocation(line: 462, column: 29, scope: !1298)
!1307 = !DILocation(line: 462, column: 38, scope: !1298)
!1308 = !DILocation(line: 462, column: 37, scope: !1298)
!1309 = !DILocation(line: 462, column: 21, scope: !1298)
!1310 = !DILocation(line: 462, column: 45, scope: !1298)
!1311 = !DILocation(line: 463, column: 22, scope: !1298)
!1312 = !DILocation(line: 464, column: 17, scope: !1298)
!1313 = !DILocation(line: 461, column: 56, scope: !1314)
!1314 = !DILexicalBlockFile(scope: !1293, file: !140, discriminator: 2)
!1315 = !DILocation(line: 461, column: 17, scope: !1314)
!1316 = distinct !{!1316, !1317}
!1317 = !DILocation(line: 461, column: 17, scope: !1289)
!1318 = !DILocation(line: 466, column: 19, scope: !1252)
!1319 = !DILocation(line: 466, column: 25, scope: !1252)
!1320 = !DILocation(line: 466, column: 29, scope: !1252)
!1321 = !DILocation(line: 466, column: 28, scope: !1252)
!1322 = !DILocation(line: 466, column: 15, scope: !1252)
!1323 = !DILocation(line: 467, column: 9, scope: !1252)
!1324 = !DILocation(line: 453, column: 33, scope: !1325)
!1325 = !DILexicalBlockFile(scope: !1246, file: !140, discriminator: 2)
!1326 = !DILocation(line: 453, column: 9, scope: !1325)
!1327 = distinct !{!1327, !1328}
!1328 = !DILocation(line: 453, column: 9, scope: !1180)
!1329 = !DILocation(line: 469, column: 12, scope: !1152)
!1330 = !DILocation(line: 469, column: 5, scope: !1152)
!1331 = !DILocation(line: 470, column: 1, scope: !1152)
!1332 = distinct !DISubprogram(name: "Mat_VarSetStructFieldByIndex", scope: !140, file: !140, line: 485, type: !1333, isLocal: false, isDefinition: true, scopeLine: 487, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !144)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!65, !65, !58, !58, !65}
!1335 = !DILocalVariable(name: "matvar", arg: 1, scope: !1332, file: !140, line: 485, type: !65)
!1336 = !DILocation(line: 485, column: 40, scope: !1332)
!1337 = !DILocalVariable(name: "field_index", arg: 2, scope: !1332, file: !140, line: 485, type: !58)
!1338 = !DILocation(line: 485, column: 54, scope: !1332)
!1339 = !DILocalVariable(name: "index", arg: 3, scope: !1332, file: !140, line: 485, type: !58)
!1340 = !DILocation(line: 485, column: 73, scope: !1332)
!1341 = !DILocalVariable(name: "field", arg: 4, scope: !1332, file: !140, line: 486, type: !65)
!1342 = !DILocation(line: 486, column: 15, scope: !1332)
!1343 = !DILocalVariable(name: "old_field", scope: !1332, file: !140, line: 488, type: !65)
!1344 = !DILocation(line: 488, column: 15, scope: !1332)
!1345 = !DILocalVariable(name: "nelems", scope: !1332, file: !140, line: 489, type: !58)
!1346 = !DILocation(line: 489, column: 12, scope: !1332)
!1347 = !DILocalVariable(name: "nfields", scope: !1332, file: !140, line: 489, type: !58)
!1348 = !DILocation(line: 489, column: 24, scope: !1332)
!1349 = !DILocation(line: 491, column: 10, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1332, file: !140, line: 491, column: 10)
!1351 = !DILocation(line: 491, column: 17, scope: !1350)
!1352 = !DILocation(line: 491, column: 24, scope: !1350)
!1353 = !DILocation(line: 491, column: 27, scope: !1354)
!1354 = !DILexicalBlockFile(scope: !1350, file: !140, discriminator: 1)
!1355 = !DILocation(line: 491, column: 35, scope: !1354)
!1356 = !DILocation(line: 491, column: 46, scope: !1354)
!1357 = !DILocation(line: 491, column: 62, scope: !1354)
!1358 = !DILocation(line: 492, column: 9, scope: !1350)
!1359 = !DILocation(line: 492, column: 17, scope: !1350)
!1360 = !DILocation(line: 492, column: 22, scope: !1350)
!1361 = !DILocation(line: 491, column: 10, scope: !1362)
!1362 = !DILexicalBlockFile(scope: !1332, file: !140, discriminator: 2)
!1363 = !DILocation(line: 493, column: 16, scope: !1350)
!1364 = !DILocation(line: 493, column: 9, scope: !1350)
!1365 = !DILocation(line: 495, column: 17, scope: !1332)
!1366 = !DILocation(line: 495, column: 5, scope: !1332)
!1367 = !DILocation(line: 496, column: 15, scope: !1332)
!1368 = !DILocation(line: 496, column: 23, scope: !1332)
!1369 = !DILocation(line: 496, column: 33, scope: !1332)
!1370 = !DILocation(line: 496, column: 13, scope: !1332)
!1371 = !DILocation(line: 498, column: 10, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1332, file: !140, line: 498, column: 10)
!1373 = !DILocation(line: 498, column: 18, scope: !1372)
!1374 = !DILocation(line: 498, column: 16, scope: !1372)
!1375 = !DILocation(line: 498, column: 25, scope: !1372)
!1376 = !DILocation(line: 498, column: 28, scope: !1377)
!1377 = !DILexicalBlockFile(scope: !1372, file: !140, discriminator: 1)
!1378 = !DILocation(line: 498, column: 42, scope: !1377)
!1379 = !DILocation(line: 498, column: 40, scope: !1377)
!1380 = !DILocation(line: 498, column: 10, scope: !1377)
!1381 = !DILocalVariable(name: "fields", scope: !1382, file: !140, line: 499, type: !64)
!1382 = distinct !DILexicalBlock(scope: !1372, file: !140, line: 498, column: 52)
!1383 = !DILocation(line: 499, column: 20, scope: !1382)
!1384 = !DILocation(line: 499, column: 41, scope: !1382)
!1385 = !DILocation(line: 499, column: 49, scope: !1382)
!1386 = !DILocation(line: 499, column: 29, scope: !1382)
!1387 = !DILocation(line: 500, column: 28, scope: !1382)
!1388 = !DILocation(line: 500, column: 34, scope: !1382)
!1389 = !DILocation(line: 500, column: 33, scope: !1382)
!1390 = !DILocation(line: 500, column: 42, scope: !1382)
!1391 = !DILocation(line: 500, column: 41, scope: !1382)
!1392 = !DILocation(line: 500, column: 21, scope: !1382)
!1393 = !DILocation(line: 500, column: 19, scope: !1382)
!1394 = !DILocation(line: 501, column: 45, scope: !1382)
!1395 = !DILocation(line: 501, column: 16, scope: !1382)
!1396 = !DILocation(line: 501, column: 22, scope: !1382)
!1397 = !DILocation(line: 501, column: 21, scope: !1382)
!1398 = !DILocation(line: 501, column: 30, scope: !1382)
!1399 = !DILocation(line: 501, column: 29, scope: !1382)
!1400 = !DILocation(line: 501, column: 9, scope: !1382)
!1401 = !DILocation(line: 501, column: 43, scope: !1382)
!1402 = !DILocation(line: 502, column: 21, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1382, file: !140, line: 502, column: 13)
!1404 = !DILocation(line: 502, column: 28, scope: !1403)
!1405 = !DILocation(line: 502, column: 18, scope: !1403)
!1406 = !DILocation(line: 502, column: 13, scope: !1382)
!1407 = !DILocation(line: 503, column: 18, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1403, file: !140, line: 502, column: 35)
!1409 = !DILocation(line: 503, column: 25, scope: !1408)
!1410 = !DILocation(line: 503, column: 13, scope: !1408)
!1411 = !DILocation(line: 504, column: 9, scope: !1408)
!1412 = !DILocation(line: 505, column: 59, scope: !1382)
!1413 = !DILocation(line: 505, column: 30, scope: !1382)
!1414 = !DILocation(line: 505, column: 38, scope: !1382)
!1415 = !DILocation(line: 505, column: 48, scope: !1382)
!1416 = !DILocation(line: 505, column: 23, scope: !1382)
!1417 = !DILocation(line: 505, column: 9, scope: !1382)
!1418 = !DILocation(line: 505, column: 16, scope: !1382)
!1419 = !DILocation(line: 505, column: 21, scope: !1382)
!1420 = !DILocation(line: 506, column: 5, scope: !1382)
!1421 = !DILocation(line: 508, column: 12, scope: !1332)
!1422 = !DILocation(line: 508, column: 5, scope: !1332)
!1423 = !DILocation(line: 509, column: 1, scope: !1332)
!1424 = distinct !DISubprogram(name: "Mat_VarSetStructFieldByName", scope: !140, file: !140, line: 523, type: !1425, isLocal: false, isDefinition: true, scopeLine: 525, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !144)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!65, !65, !134, !58, !65}
!1427 = !DILocalVariable(name: "matvar", arg: 1, scope: !1424, file: !140, line: 523, type: !65)
!1428 = !DILocation(line: 523, column: 39, scope: !1424)
!1429 = !DILocalVariable(name: "field_name", arg: 2, scope: !1424, file: !140, line: 523, type: !134)
!1430 = !DILocation(line: 523, column: 58, scope: !1424)
!1431 = !DILocalVariable(name: "index", arg: 3, scope: !1424, file: !140, line: 524, type: !58)
!1432 = !DILocation(line: 524, column: 12, scope: !1424)
!1433 = !DILocalVariable(name: "field", arg: 4, scope: !1424, file: !140, line: 524, type: !65)
!1434 = !DILocation(line: 524, column: 28, scope: !1424)
!1435 = !DILocalVariable(name: "i", scope: !1424, file: !140, line: 526, type: !71)
!1436 = !DILocation(line: 526, column: 9, scope: !1424)
!1437 = !DILocalVariable(name: "nfields", scope: !1424, file: !140, line: 526, type: !71)
!1438 = !DILocation(line: 526, column: 12, scope: !1424)
!1439 = !DILocalVariable(name: "field_index", scope: !1424, file: !140, line: 526, type: !71)
!1440 = !DILocation(line: 526, column: 21, scope: !1424)
!1441 = !DILocalVariable(name: "old_field", scope: !1424, file: !140, line: 527, type: !65)
!1442 = !DILocation(line: 527, column: 15, scope: !1424)
!1443 = !DILocalVariable(name: "nelems", scope: !1424, file: !140, line: 528, type: !58)
!1444 = !DILocation(line: 528, column: 12, scope: !1424)
!1445 = !DILocation(line: 530, column: 10, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1424, file: !140, line: 530, column: 10)
!1447 = !DILocation(line: 530, column: 17, scope: !1446)
!1448 = !DILocation(line: 530, column: 24, scope: !1446)
!1449 = !DILocation(line: 530, column: 27, scope: !1450)
!1450 = !DILexicalBlockFile(scope: !1446, file: !140, discriminator: 1)
!1451 = !DILocation(line: 530, column: 35, scope: !1450)
!1452 = !DILocation(line: 530, column: 46, scope: !1450)
!1453 = !DILocation(line: 530, column: 62, scope: !1450)
!1454 = !DILocation(line: 531, column: 10, scope: !1446)
!1455 = !DILocation(line: 531, column: 18, scope: !1446)
!1456 = !DILocation(line: 531, column: 23, scope: !1446)
!1457 = !DILocation(line: 530, column: 10, scope: !1458)
!1458 = !DILexicalBlockFile(scope: !1424, file: !140, discriminator: 2)
!1459 = !DILocation(line: 532, column: 16, scope: !1446)
!1460 = !DILocation(line: 532, column: 9, scope: !1446)
!1461 = !DILocation(line: 534, column: 17, scope: !1424)
!1462 = !DILocation(line: 534, column: 5, scope: !1424)
!1463 = !DILocation(line: 535, column: 15, scope: !1424)
!1464 = !DILocation(line: 535, column: 23, scope: !1424)
!1465 = !DILocation(line: 535, column: 33, scope: !1424)
!1466 = !DILocation(line: 535, column: 13, scope: !1424)
!1467 = !DILocation(line: 536, column: 17, scope: !1424)
!1468 = !DILocation(line: 537, column: 13, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1424, file: !140, line: 537, column: 5)
!1470 = !DILocation(line: 537, column: 11, scope: !1469)
!1471 = !DILocation(line: 537, column: 18, scope: !1472)
!1472 = !DILexicalBlockFile(scope: !1473, file: !140, discriminator: 1)
!1473 = distinct !DILexicalBlock(scope: !1469, file: !140, line: 537, column: 5)
!1474 = !DILocation(line: 537, column: 22, scope: !1472)
!1475 = !DILocation(line: 537, column: 20, scope: !1472)
!1476 = !DILocation(line: 537, column: 5, scope: !1472)
!1477 = !DILocation(line: 538, column: 51, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !140, line: 538, column: 14)
!1479 = distinct !DILexicalBlock(scope: !1473, file: !140, line: 537, column: 37)
!1480 = !DILocation(line: 538, column: 22, scope: !1478)
!1481 = !DILocation(line: 538, column: 30, scope: !1478)
!1482 = !DILocation(line: 538, column: 40, scope: !1478)
!1483 = !DILocation(line: 538, column: 54, scope: !1478)
!1484 = !DILocation(line: 538, column: 15, scope: !1478)
!1485 = !DILocation(line: 538, column: 14, scope: !1479)
!1486 = !DILocation(line: 539, column: 27, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1478, file: !140, line: 538, column: 68)
!1488 = !DILocation(line: 539, column: 25, scope: !1487)
!1489 = !DILocation(line: 540, column: 13, scope: !1487)
!1490 = !DILocation(line: 542, column: 5, scope: !1479)
!1491 = !DILocation(line: 537, column: 32, scope: !1492)
!1492 = !DILexicalBlockFile(scope: !1473, file: !140, discriminator: 2)
!1493 = !DILocation(line: 537, column: 5, scope: !1492)
!1494 = distinct !{!1494, !1495}
!1495 = !DILocation(line: 537, column: 5, scope: !1424)
!1496 = !DILocation(line: 544, column: 10, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1424, file: !140, line: 544, column: 10)
!1498 = !DILocation(line: 544, column: 18, scope: !1497)
!1499 = !DILocation(line: 544, column: 16, scope: !1497)
!1500 = !DILocation(line: 544, column: 25, scope: !1497)
!1501 = !DILocation(line: 544, column: 28, scope: !1502)
!1502 = !DILexicalBlockFile(scope: !1497, file: !140, discriminator: 1)
!1503 = !DILocation(line: 544, column: 40, scope: !1502)
!1504 = !DILocation(line: 544, column: 10, scope: !1502)
!1505 = !DILocalVariable(name: "fields", scope: !1506, file: !140, line: 545, type: !64)
!1506 = distinct !DILexicalBlock(scope: !1497, file: !140, line: 544, column: 47)
!1507 = !DILocation(line: 545, column: 20, scope: !1506)
!1508 = !DILocation(line: 545, column: 41, scope: !1506)
!1509 = !DILocation(line: 545, column: 49, scope: !1506)
!1510 = !DILocation(line: 545, column: 29, scope: !1506)
!1511 = !DILocation(line: 546, column: 28, scope: !1506)
!1512 = !DILocation(line: 546, column: 34, scope: !1506)
!1513 = !DILocation(line: 546, column: 33, scope: !1506)
!1514 = !DILocation(line: 546, column: 42, scope: !1506)
!1515 = !DILocation(line: 546, column: 41, scope: !1506)
!1516 = !DILocation(line: 546, column: 21, scope: !1506)
!1517 = !DILocation(line: 546, column: 19, scope: !1506)
!1518 = !DILocation(line: 547, column: 45, scope: !1506)
!1519 = !DILocation(line: 547, column: 16, scope: !1506)
!1520 = !DILocation(line: 547, column: 22, scope: !1506)
!1521 = !DILocation(line: 547, column: 21, scope: !1506)
!1522 = !DILocation(line: 547, column: 30, scope: !1506)
!1523 = !DILocation(line: 547, column: 29, scope: !1506)
!1524 = !DILocation(line: 547, column: 9, scope: !1506)
!1525 = !DILocation(line: 547, column: 43, scope: !1506)
!1526 = !DILocation(line: 548, column: 21, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1506, file: !140, line: 548, column: 13)
!1528 = !DILocation(line: 548, column: 28, scope: !1527)
!1529 = !DILocation(line: 548, column: 18, scope: !1527)
!1530 = !DILocation(line: 548, column: 13, scope: !1506)
!1531 = !DILocation(line: 549, column: 18, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1527, file: !140, line: 548, column: 35)
!1533 = !DILocation(line: 549, column: 25, scope: !1532)
!1534 = !DILocation(line: 549, column: 13, scope: !1532)
!1535 = !DILocation(line: 550, column: 9, scope: !1532)
!1536 = !DILocation(line: 551, column: 59, scope: !1506)
!1537 = !DILocation(line: 551, column: 30, scope: !1506)
!1538 = !DILocation(line: 551, column: 38, scope: !1506)
!1539 = !DILocation(line: 551, column: 48, scope: !1506)
!1540 = !DILocation(line: 551, column: 23, scope: !1506)
!1541 = !DILocation(line: 551, column: 9, scope: !1506)
!1542 = !DILocation(line: 551, column: 16, scope: !1506)
!1543 = !DILocation(line: 551, column: 21, scope: !1506)
!1544 = !DILocation(line: 552, column: 5, scope: !1506)
!1545 = !DILocation(line: 554, column: 12, scope: !1424)
!1546 = !DILocation(line: 554, column: 5, scope: !1424)
!1547 = !DILocation(line: 555, column: 1, scope: !1424)
