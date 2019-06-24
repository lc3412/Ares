; ModuleID = './libguestlib_la-guestlibV3_xdr.o.i'
source_filename = "./libguestlib_la-guestlibV3_xdr.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XDR = type { i32, %struct.xdr_ops*, i8*, i8*, i8*, i32 }
%struct.xdr_ops = type { i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*)*, i32 (%struct.XDR*, i32)*, i32* (%struct.XDR*, i32)*, void (%struct.XDR*)*, i32 (%struct.XDR*, i32*)*, i32 (%struct.XDR*, i32*)* }
%struct.GuestLibV3StatUint32 = type { i8, i32 }
%struct.GuestLibV3StatUint64 = type { i8, i64 }
%struct.GuestLibV3String = type { i8, i8* }
%struct.GuestLibV3ByteArray = type { i8, %struct.anon }
%struct.anon = type { i32, i8* }
%struct.GuestLibV3Stat = type { i32, %union.anon }
%union.anon = type { %struct.GuestLibV3ByteArray }

; Function Attrs: nounwind uwtable
define i32 @xdr_GuestLibV3StatUint32(%struct.XDR*, %struct.GuestLibV3StatUint32*) #0 !dbg !68 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.XDR*, align 8
  %5 = alloca %struct.GuestLibV3StatUint32*, align 8
  store %struct.XDR* %0, %struct.XDR** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %4, metadata !152, metadata !153), !dbg !154
  store %struct.GuestLibV3StatUint32* %1, %struct.GuestLibV3StatUint32** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.GuestLibV3StatUint32** %5, metadata !155, metadata !153), !dbg !156
  %6 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !157
  %7 = load %struct.GuestLibV3StatUint32*, %struct.GuestLibV3StatUint32** %5, align 8, !dbg !159
  %8 = getelementptr inbounds %struct.GuestLibV3StatUint32, %struct.GuestLibV3StatUint32* %7, i32 0, i32 0, !dbg !160
  %9 = call i32 @xdr_Bool(%struct.XDR* %6, i8* %8), !dbg !161
  %10 = icmp ne i32 %9, 0, !dbg !161
  br i1 %10, label %12, label %11, !dbg !162

; <label>:11:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !163
  br label %20, !dbg !163

; <label>:12:                                     ; preds = %2
  %13 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !164
  %14 = load %struct.GuestLibV3StatUint32*, %struct.GuestLibV3StatUint32** %5, align 8, !dbg !166
  %15 = getelementptr inbounds %struct.GuestLibV3StatUint32, %struct.GuestLibV3StatUint32* %14, i32 0, i32 1, !dbg !167
  %16 = call i32 @xdr_uint32(%struct.XDR* %13, i32* %15), !dbg !168
  %17 = icmp ne i32 %16, 0, !dbg !168
  br i1 %17, label %19, label %18, !dbg !169

; <label>:18:                                     ; preds = %12
  store i32 0, i32* %3, align 4, !dbg !170
  br label %20, !dbg !170

; <label>:19:                                     ; preds = %12
  store i32 1, i32* %3, align 4, !dbg !171
  br label %20, !dbg !171

; <label>:20:                                     ; preds = %19, %18, %11
  %21 = load i32, i32* %3, align 4, !dbg !172
  ret i32 %21, !dbg !172
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @xdr_Bool(%struct.XDR*, i8*) #2 !dbg !173 {
  %3 = alloca %struct.XDR*, align 8
  %4 = alloca i8*, align 8
  store %struct.XDR* %0, %struct.XDR** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %3, metadata !178, metadata !153), !dbg !179
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !180, metadata !153), !dbg !181
  %5 = load %struct.XDR*, %struct.XDR** %3, align 8, !dbg !182
  %6 = load i8*, i8** %4, align 8, !dbg !183
  %7 = call i32 @xdr_char(%struct.XDR* %5, i8* %6) #4, !dbg !184
  ret i32 %7, !dbg !185
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @xdr_uint32(%struct.XDR*, i32*) #2 !dbg !186 {
  %3 = alloca %struct.XDR*, align 8
  %4 = alloca i32*, align 8
  store %struct.XDR* %0, %struct.XDR** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %3, metadata !190, metadata !153), !dbg !191
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !192, metadata !153), !dbg !193
  %5 = load %struct.XDR*, %struct.XDR** %3, align 8, !dbg !194
  %6 = load i32*, i32** %4, align 8, !dbg !195
  %7 = call i32 @xdr_uint32_t(%struct.XDR* %5, i32* %6) #4, !dbg !196
  ret i32 %7, !dbg !197
}

; Function Attrs: nounwind uwtable
define i32 @xdr_GuestLibV3StatUint64(%struct.XDR*, %struct.GuestLibV3StatUint64*) #0 !dbg !198 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.XDR*, align 8
  %5 = alloca %struct.GuestLibV3StatUint64*, align 8
  store %struct.XDR* %0, %struct.XDR** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %4, metadata !210, metadata !153), !dbg !211
  store %struct.GuestLibV3StatUint64* %1, %struct.GuestLibV3StatUint64** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.GuestLibV3StatUint64** %5, metadata !212, metadata !153), !dbg !213
  %6 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !214
  %7 = load %struct.GuestLibV3StatUint64*, %struct.GuestLibV3StatUint64** %5, align 8, !dbg !216
  %8 = getelementptr inbounds %struct.GuestLibV3StatUint64, %struct.GuestLibV3StatUint64* %7, i32 0, i32 0, !dbg !217
  %9 = call i32 @xdr_Bool(%struct.XDR* %6, i8* %8), !dbg !218
  %10 = icmp ne i32 %9, 0, !dbg !218
  br i1 %10, label %12, label %11, !dbg !219

; <label>:11:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !220
  br label %20, !dbg !220

; <label>:12:                                     ; preds = %2
  %13 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !221
  %14 = load %struct.GuestLibV3StatUint64*, %struct.GuestLibV3StatUint64** %5, align 8, !dbg !223
  %15 = getelementptr inbounds %struct.GuestLibV3StatUint64, %struct.GuestLibV3StatUint64* %14, i32 0, i32 1, !dbg !224
  %16 = call i32 @xdr_uint64(%struct.XDR* %13, i64* %15), !dbg !225
  %17 = icmp ne i32 %16, 0, !dbg !225
  br i1 %17, label %19, label %18, !dbg !226

; <label>:18:                                     ; preds = %12
  store i32 0, i32* %3, align 4, !dbg !227
  br label %20, !dbg !227

; <label>:19:                                     ; preds = %12
  store i32 1, i32* %3, align 4, !dbg !228
  br label %20, !dbg !228

; <label>:20:                                     ; preds = %19, %18, %11
  %21 = load i32, i32* %3, align 4, !dbg !229
  ret i32 %21, !dbg !229
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @xdr_uint64(%struct.XDR*, i64*) #2 !dbg !230 {
  %3 = alloca %struct.XDR*, align 8
  %4 = alloca i64*, align 8
  store %struct.XDR* %0, %struct.XDR** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %3, metadata !234, metadata !153), !dbg !235
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !236, metadata !153), !dbg !237
  %5 = load %struct.XDR*, %struct.XDR** %3, align 8, !dbg !238
  %6 = load i64*, i64** %4, align 8, !dbg !239
  %7 = call i32 @xdr_uint64_t(%struct.XDR* %5, i64* %6) #4, !dbg !240
  ret i32 %7, !dbg !241
}

; Function Attrs: nounwind uwtable
define i32 @xdr_GuestLibV3String(%struct.XDR*, %struct.GuestLibV3String*) #0 !dbg !242 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.XDR*, align 8
  %5 = alloca %struct.GuestLibV3String*, align 8
  store %struct.XDR* %0, %struct.XDR** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %4, metadata !251, metadata !153), !dbg !252
  store %struct.GuestLibV3String* %1, %struct.GuestLibV3String** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.GuestLibV3String** %5, metadata !253, metadata !153), !dbg !254
  %6 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !255
  %7 = load %struct.GuestLibV3String*, %struct.GuestLibV3String** %5, align 8, !dbg !257
  %8 = getelementptr inbounds %struct.GuestLibV3String, %struct.GuestLibV3String* %7, i32 0, i32 0, !dbg !258
  %9 = call i32 @xdr_Bool(%struct.XDR* %6, i8* %8), !dbg !259
  %10 = icmp ne i32 %9, 0, !dbg !259
  br i1 %10, label %12, label %11, !dbg !260

; <label>:11:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !261
  br label %20, !dbg !261

; <label>:12:                                     ; preds = %2
  %13 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !262
  %14 = load %struct.GuestLibV3String*, %struct.GuestLibV3String** %5, align 8, !dbg !264
  %15 = getelementptr inbounds %struct.GuestLibV3String, %struct.GuestLibV3String* %14, i32 0, i32 1, !dbg !265
  %16 = call i32 @xdr_string(%struct.XDR* %13, i8** %15, i32 512) #4, !dbg !266
  %17 = icmp ne i32 %16, 0, !dbg !266
  br i1 %17, label %19, label %18, !dbg !267

; <label>:18:                                     ; preds = %12
  store i32 0, i32* %3, align 4, !dbg !268
  br label %20, !dbg !268

; <label>:19:                                     ; preds = %12
  store i32 1, i32* %3, align 4, !dbg !269
  br label %20, !dbg !269

; <label>:20:                                     ; preds = %19, %18, %11
  %21 = load i32, i32* %3, align 4, !dbg !270
  ret i32 %21, !dbg !270
}

; Function Attrs: nounwind
declare i32 @xdr_string(%struct.XDR*, i8**, i32) #3

; Function Attrs: nounwind uwtable
define i32 @xdr_GuestLibV3ByteArray(%struct.XDR*, %struct.GuestLibV3ByteArray*) #0 !dbg !271 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.XDR*, align 8
  %5 = alloca %struct.GuestLibV3ByteArray*, align 8
  store %struct.XDR* %0, %struct.XDR** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %4, metadata !284, metadata !153), !dbg !285
  store %struct.GuestLibV3ByteArray* %1, %struct.GuestLibV3ByteArray** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.GuestLibV3ByteArray** %5, metadata !286, metadata !153), !dbg !287
  %6 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !288
  %7 = load %struct.GuestLibV3ByteArray*, %struct.GuestLibV3ByteArray** %5, align 8, !dbg !290
  %8 = getelementptr inbounds %struct.GuestLibV3ByteArray, %struct.GuestLibV3ByteArray* %7, i32 0, i32 0, !dbg !291
  %9 = call i32 @xdr_Bool(%struct.XDR* %6, i8* %8), !dbg !292
  %10 = icmp ne i32 %9, 0, !dbg !292
  br i1 %10, label %12, label %11, !dbg !293

; <label>:11:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !294
  br label %24, !dbg !294

; <label>:12:                                     ; preds = %2
  %13 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !295
  %14 = load %struct.GuestLibV3ByteArray*, %struct.GuestLibV3ByteArray** %5, align 8, !dbg !297
  %15 = getelementptr inbounds %struct.GuestLibV3ByteArray, %struct.GuestLibV3ByteArray* %14, i32 0, i32 1, !dbg !298
  %16 = getelementptr inbounds %struct.anon, %struct.anon* %15, i32 0, i32 1, !dbg !299
  %17 = load %struct.GuestLibV3ByteArray*, %struct.GuestLibV3ByteArray** %5, align 8, !dbg !300
  %18 = getelementptr inbounds %struct.GuestLibV3ByteArray, %struct.GuestLibV3ByteArray* %17, i32 0, i32 1, !dbg !301
  %19 = getelementptr inbounds %struct.anon, %struct.anon* %18, i32 0, i32 0, !dbg !302
  %20 = call i32 @xdr_bytes(%struct.XDR* %13, i8** %16, i32* %19, i32 -1) #4, !dbg !303
  %21 = icmp ne i32 %20, 0, !dbg !303
  br i1 %21, label %23, label %22, !dbg !304

; <label>:22:                                     ; preds = %12
  store i32 0, i32* %3, align 4, !dbg !305
  br label %24, !dbg !305

; <label>:23:                                     ; preds = %12
  store i32 1, i32* %3, align 4, !dbg !306
  br label %24, !dbg !306

; <label>:24:                                     ; preds = %23, %22, %11
  %25 = load i32, i32* %3, align 4, !dbg !307
  ret i32 %25, !dbg !307
}

; Function Attrs: nounwind
declare i32 @xdr_bytes(%struct.XDR*, i8**, i32*, i32) #3

; Function Attrs: nounwind uwtable
define i32 @xdr_GuestLibV3StatCount(%struct.XDR*, i32*) #0 !dbg !308 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.XDR*, align 8
  %5 = alloca i32*, align 8
  store %struct.XDR* %0, %struct.XDR** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %4, metadata !313, metadata !153), !dbg !314
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !315, metadata !153), !dbg !316
  %6 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !317
  %7 = load i32*, i32** %5, align 8, !dbg !319
  %8 = call i32 @xdr_uint32(%struct.XDR* %6, i32* %7), !dbg !320
  %9 = icmp ne i32 %8, 0, !dbg !320
  br i1 %9, label %11, label %10, !dbg !321

; <label>:10:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !322
  br label %12, !dbg !322

; <label>:11:                                     ; preds = %2
  store i32 1, i32* %3, align 4, !dbg !323
  br label %12, !dbg !323

; <label>:12:                                     ; preds = %11, %10
  %13 = load i32, i32* %3, align 4, !dbg !324
  ret i32 %13, !dbg !324
}

; Function Attrs: nounwind uwtable
define i32 @xdr_GuestLibV3TypeIds(%struct.XDR*, i32*) #0 !dbg !325 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.XDR*, align 8
  %5 = alloca i32*, align 8
  store %struct.XDR* %0, %struct.XDR** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %4, metadata !330, metadata !153), !dbg !331
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !332, metadata !153), !dbg !333
  %6 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !334
  %7 = load i32*, i32** %5, align 8, !dbg !336
  %8 = call i32 @xdr_enum(%struct.XDR* %6, i32* %7) #4, !dbg !337
  %9 = icmp ne i32 %8, 0, !dbg !337
  br i1 %9, label %11, label %10, !dbg !338

; <label>:10:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !339
  br label %12, !dbg !339

; <label>:11:                                     ; preds = %2
  store i32 1, i32* %3, align 4, !dbg !340
  br label %12, !dbg !340

; <label>:12:                                     ; preds = %11, %10
  %13 = load i32, i32* %3, align 4, !dbg !341
  ret i32 %13, !dbg !341
}

; Function Attrs: nounwind
declare i32 @xdr_enum(%struct.XDR*, i32*) #3

; Function Attrs: nounwind uwtable
define i32 @xdr_GuestLibV3Stat(%struct.XDR*, %struct.GuestLibV3Stat*) #0 !dbg !342 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.XDR*, align 8
  %5 = alloca %struct.GuestLibV3Stat*, align 8
  store %struct.XDR* %0, %struct.XDR** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %4, metadata !390, metadata !153), !dbg !391
  store %struct.GuestLibV3Stat* %1, %struct.GuestLibV3Stat** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.GuestLibV3Stat** %5, metadata !392, metadata !153), !dbg !393
  %6 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !394
  %7 = load %struct.GuestLibV3Stat*, %struct.GuestLibV3Stat** %5, align 8, !dbg !396
  %8 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %7, i32 0, i32 0, !dbg !397
  %9 = call i32 @xdr_GuestLibV3TypeIds(%struct.XDR* %6, i32* %8), !dbg !398
  %10 = icmp ne i32 %9, 0, !dbg !398
  br i1 %10, label %12, label %11, !dbg !399

; <label>:11:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !400
  br label %351, !dbg !400

; <label>:12:                                     ; preds = %2
  %13 = load %struct.GuestLibV3Stat*, %struct.GuestLibV3Stat** %5, align 8, !dbg !401
  %14 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %13, i32 0, i32 0, !dbg !402
  %15 = load i32, i32* %14, align 8, !dbg !402
  switch i32 %15, label %349 [
    i32 1, label %16
    i32 2, label %25
    i32 3, label %34
    i32 4, label %43
    i32 5, label %52
    i32 6, label %61
    i32 7, label %70
    i32 8, label %79
    i32 9, label %88
    i32 10, label %97
    i32 11, label %106
    i32 12, label %115
    i32 13, label %124
    i32 14, label %133
    i32 15, label %142
    i32 16, label %151
    i32 17, label %160
    i32 18, label %169
    i32 19, label %178
    i32 20, label %187
    i32 21, label %196
    i32 22, label %205
    i32 23, label %214
    i32 24, label %223
    i32 25, label %232
    i32 26, label %241
    i32 27, label %250
    i32 28, label %259
    i32 29, label %268
    i32 30, label %277
    i32 31, label %286
    i32 32, label %295
    i32 33, label %304
    i32 34, label %313
    i32 35, label %322
    i32 36, label %331
    i32 37, label %340
  ], !dbg !403

; <label>:16:                                     ; preds = %12
  %17 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !404
  %18 = load %struct.GuestLibV3Stat*, %struct.GuestLibV3Stat** %5, align 8, !dbg !407
  %19 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %18, i32 0, i32 1, !dbg !408
  %20 = bitcast %union.anon* %19 to %struct.GuestLibV3StatUint32*, !dbg !409
  %21 = call i32 @xdr_GuestLibV3StatUint32(%struct.XDR* %17, %struct.GuestLibV3StatUint32* %20), !dbg !410
  %22 = icmp ne i32 %21, 0, !dbg !410
  br i1 %22, label %24, label %23, !dbg !411

; <label>:23:                                     ; preds = %16
  store i32 0, i32* %3, align 4, !dbg !412
  br label %351, !dbg !412

; <label>:24:                                     ; preds = %16
  br label %350, !dbg !413

; <label>:25:                                     ; preds = %12
  %26 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !414
  %27 = load %struct.GuestLibV3Stat*, %struct.GuestLibV3Stat** %5, align 8, !dbg !416
  %28 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %27, i32 0, i32 1, !dbg !417
  %29 = bitcast %union.anon* %28 to %struct.GuestLibV3StatUint32*, !dbg !418
  %30 = call i32 @xdr_GuestLibV3StatUint32(%struct.XDR* %26, %struct.GuestLibV3StatUint32* %29), !dbg !419
  %31 = icmp ne i32 %30, 0, !dbg !419
  br i1 %31, label %33, label %32, !dbg !420

; <label>:32:                                     ; preds = %25
  store i32 0, i32* %3, align 4, !dbg !421
  br label %351, !dbg !421

; <label>:33:                                     ; preds = %25
  br label %350, !dbg !422

; <label>:34:                                     ; preds = %12
  %35 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !423
  %36 = load %struct.GuestLibV3Stat*, %struct.GuestLibV3Stat** %5, align 8, !dbg !425
  %37 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %36, i32 0, i32 1, !dbg !426
  %38 = bitcast %union.anon* %37 to %struct.GuestLibV3StatUint32*, !dbg !427
  %39 = call i32 @xdr_GuestLibV3StatUint32(%struct.XDR* %35, %struct.GuestLibV3StatUint32* %38), !dbg !428
  %40 = icmp ne i32 %39, 0, !dbg !428
  br i1 %40, label %42, label %41, !dbg !429

; <label>:41:                                     ; preds = %34
  store i32 0, i32* %3, align 4, !dbg !430
  br label %351, !dbg !430

; <label>:42:                                     ; preds = %34
  br label %350, !dbg !431

; <label>:43:                                     ; preds = %12
  %44 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !432
  %45 = load %struct.GuestLibV3Stat*, %struct.GuestLibV3Stat** %5, align 8, !dbg !434
  %46 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %45, i32 0, i32 1, !dbg !435
  %47 = bitcast %union.anon* %46 to %struct.GuestLibV3StatUint64*, !dbg !436
  %48 = call i32 @xdr_GuestLibV3StatUint64(%struct.XDR* %44, %struct.GuestLibV3StatUint64* %47), !dbg !437
  %49 = icmp ne i32 %48, 0, !dbg !437
  br i1 %49, label %51, label %50, !dbg !438

; <label>:50:                                     ; preds = %43
  store i32 0, i32* %3, align 4, !dbg !439
  br label %351, !dbg !439

; <label>:51:                                     ; preds = %43
  br label %350, !dbg !440

; <label>:52:                                     ; preds = %12
  %53 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !441
  %54 = load %struct.GuestLibV3Stat*, %struct.GuestLibV3Stat** %5, align 8, !dbg !443
  %55 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %54, i32 0, i32 1, !dbg !444
  %56 = bitcast %union.anon* %55 to %struct.GuestLibV3StatUint32*, !dbg !445
  %57 = call i32 @xdr_GuestLibV3StatUint32(%struct.XDR* %53, %struct.GuestLibV3StatUint32* %56), !dbg !446
  %58 = icmp ne i32 %57, 0, !dbg !446
  br i1 %58, label %60, label %59, !dbg !447

; <label>:59:                                     ; preds = %52
  store i32 0, i32* %3, align 4, !dbg !448
  br label %351, !dbg !448

; <label>:60:                                     ; preds = %52
  br label %350, !dbg !449

; <label>:61:                                     ; preds = %12
  %62 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !450
  %63 = load %struct.GuestLibV3Stat*, %struct.GuestLibV3Stat** %5, align 8, !dbg !452
  %64 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %63, i32 0, i32 1, !dbg !453
  %65 = bitcast %union.anon* %64 to %struct.GuestLibV3StatUint32*, !dbg !454
  %66 = call i32 @xdr_GuestLibV3StatUint32(%struct.XDR* %62, %struct.GuestLibV3StatUint32* %65), !dbg !455
  %67 = icmp ne i32 %66, 0, !dbg !455
  br i1 %67, label %69, label %68, !dbg !456

; <label>:68:                                     ; preds = %61
  store i32 0, i32* %3, align 4, !dbg !457
  br label %351, !dbg !457

; <label>:69:                                     ; preds = %61
  br label %350, !dbg !458

; <label>:70:                                     ; preds = %12
  %71 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !459
  %72 = load %struct.GuestLibV3Stat*, %struct.GuestLibV3Stat** %5, align 8, !dbg !461
  %73 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %72, i32 0, i32 1, !dbg !462
  %74 = bitcast %union.anon* %73 to %struct.GuestLibV3StatUint32*, !dbg !463
  %75 = call i32 @xdr_GuestLibV3StatUint32(%struct.XDR* %71, %struct.GuestLibV3StatUint32* %74), !dbg !464
  %76 = icmp ne i32 %75, 0, !dbg !464
  br i1 %76, label %78, label %77, !dbg !465

; <label>:77:                                     ; preds = %70
  store i32 0, i32* %3, align 4, !dbg !466
  br label %351, !dbg !466

; <label>:78:                                     ; preds = %70
  br label %350, !dbg !467

; <label>:79:                                     ; preds = %12
  %80 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !468
  %81 = load %struct.GuestLibV3Stat*, %struct.GuestLibV3Stat** %5, align 8, !dbg !470
  %82 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %81, i32 0, i32 1, !dbg !471
  %83 = bitcast %union.anon* %82 to %struct.GuestLibV3StatUint32*, !dbg !472
  %84 = call i32 @xdr_GuestLibV3StatUint32(%struct.XDR* %80, %struct.GuestLibV3StatUint32* %83), !dbg !473
  %85 = icmp ne i32 %84, 0, !dbg !473
  br i1 %85, label %87, label %86, !dbg !474

; <label>:86:                                     ; preds = %79
  store i32 0, i32* %3, align 4, !dbg !475
  br label %351, !dbg !475

; <label>:87:                                     ; preds = %79
  br label %350, !dbg !476

; <label>:88:                                     ; preds = %12
  %89 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !477
  %90 = load %struct.GuestLibV3Stat*, %struct.GuestLibV3Stat** %5, align 8, !dbg !479
  %91 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %90, i32 0, i32 1, !dbg !480
  %92 = bitcast %union.anon* %91 to %struct.GuestLibV3StatUint32*, !dbg !481
  %93 = call i32 @xdr_GuestLibV3StatUint32(%struct.XDR* %89, %struct.GuestLibV3StatUint32* %92), !dbg !482
  %94 = icmp ne i32 %93, 0, !dbg !482
  br i1 %94, label %96, label %95, !dbg !483

; <label>:95:                                     ; preds = %88
  store i32 0, i32* %3, align 4, !dbg !484
  br label %351, !dbg !484

; <label>:96:                                     ; preds = %88
  br label %350, !dbg !485

; <label>:97:                                     ; preds = %12
  %98 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !486
  %99 = load %struct.GuestLibV3Stat*, %struct.GuestLibV3Stat** %5, align 8, !dbg !488
  %100 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %99, i32 0, i32 1, !dbg !489
  %101 = bitcast %union.anon* %100 to %struct.GuestLibV3StatUint32*, !dbg !490
  %102 = call i32 @xdr_GuestLibV3StatUint32(%struct.XDR* %98, %struct.GuestLibV3StatUint32* %101), !dbg !491
  %103 = icmp ne i32 %102, 0, !dbg !491
  br i1 %103, label %105, label %104, !dbg !492

; <label>:104:                                    ; preds = %97
  store i32 0, i32* %3, align 4, !dbg !493
  br label %351, !dbg !493

; <label>:105:                                    ; preds = %97
  br label %350, !dbg !494

; <label>:106:                                    ; preds = %12
  %107 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !495
  %108 = load %struct.GuestLibV3Stat*, %struct.GuestLibV3Stat** %5, align 8, !dbg !497
  %109 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %108, i32 0, i32 1, !dbg !498
  %110 = bitcast %union.anon* %109 to %struct.GuestLibV3StatUint32*, !dbg !499
  %111 = call i32 @xdr_GuestLibV3StatUint32(%struct.XDR* %107, %struct.GuestLibV3StatUint32* %110), !dbg !500
  %112 = icmp ne i32 %111, 0, !dbg !500
  br i1 %112, label %114, label %113, !dbg !501

; <label>:113:                                    ; preds = %106
  store i32 0, i32* %3, align 4, !dbg !502
  br label %351, !dbg !502

; <label>:114:                                    ; preds = %106
  br label %350, !dbg !503

; <label>:115:                                    ; preds = %12
  %116 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !504
  %117 = load %struct.GuestLibV3Stat*, %struct.GuestLibV3Stat** %5, align 8, !dbg !506
  %118 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %117, i32 0, i32 1, !dbg !507
  %119 = bitcast %union.anon* %118 to %struct.GuestLibV3StatUint32*, !dbg !508
  %120 = call i32 @xdr_GuestLibV3StatUint32(%struct.XDR* %116, %struct.GuestLibV3StatUint32* %119), !dbg !509
  %121 = icmp ne i32 %120, 0, !dbg !509
  br i1 %121, label %123, label %122, !dbg !510

; <label>:122:                                    ; preds = %115
  store i32 0, i32* %3, align 4, !dbg !511
  br label %351, !dbg !511

; <label>:123:                                    ; preds = %115
  br label %350, !dbg !512

; <label>:124:                                    ; preds = %12
  %125 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !513
  %126 = load %struct.GuestLibV3Stat*, %struct.GuestLibV3Stat** %5, align 8, !dbg !515
  %127 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %126, i32 0, i32 1, !dbg !516
  %128 = bitcast %union.anon* %127 to %struct.GuestLibV3StatUint32*, !dbg !517
  %129 = call i32 @xdr_GuestLibV3StatUint32(%struct.XDR* %125, %struct.GuestLibV3StatUint32* %128), !dbg !518
  %130 = icmp ne i32 %129, 0, !dbg !518
  br i1 %130, label %132, label %131, !dbg !519

; <label>:131:                                    ; preds = %124
  store i32 0, i32* %3, align 4, !dbg !520
  br label %351, !dbg !520

; <label>:132:                                    ; preds = %124
  br label %350, !dbg !521

; <label>:133:                                    ; preds = %12
  %134 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !522
  %135 = load %struct.GuestLibV3Stat*, %struct.GuestLibV3Stat** %5, align 8, !dbg !524
  %136 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %135, i32 0, i32 1, !dbg !525
  %137 = bitcast %union.anon* %136 to %struct.GuestLibV3StatUint32*, !dbg !526
  %138 = call i32 @xdr_GuestLibV3StatUint32(%struct.XDR* %134, %struct.GuestLibV3StatUint32* %137), !dbg !527
  %139 = icmp ne i32 %138, 0, !dbg !527
  br i1 %139, label %141, label %140, !dbg !528

; <label>:140:                                    ; preds = %133
  store i32 0, i32* %3, align 4, !dbg !529
  br label %351, !dbg !529

; <label>:141:                                    ; preds = %133
  br label %350, !dbg !530

; <label>:142:                                    ; preds = %12
  %143 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !531
  %144 = load %struct.GuestLibV3Stat*, %struct.GuestLibV3Stat** %5, align 8, !dbg !533
  %145 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %144, i32 0, i32 1, !dbg !534
  %146 = bitcast %union.anon* %145 to %struct.GuestLibV3StatUint32*, !dbg !535
  %147 = call i32 @xdr_GuestLibV3StatUint32(%struct.XDR* %143, %struct.GuestLibV3StatUint32* %146), !dbg !536
  %148 = icmp ne i32 %147, 0, !dbg !536
  br i1 %148, label %150, label %149, !dbg !537

; <label>:149:                                    ; preds = %142
  store i32 0, i32* %3, align 4, !dbg !538
  br label %351, !dbg !538

; <label>:150:                                    ; preds = %142
  br label %350, !dbg !539

; <label>:151:                                    ; preds = %12
  %152 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !540
  %153 = load %struct.GuestLibV3Stat*, %struct.GuestLibV3Stat** %5, align 8, !dbg !542
  %154 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %153, i32 0, i32 1, !dbg !543
  %155 = bitcast %union.anon* %154 to %struct.GuestLibV3StatUint32*, !dbg !544
  %156 = call i32 @xdr_GuestLibV3StatUint32(%struct.XDR* %152, %struct.GuestLibV3StatUint32* %155), !dbg !545
  %157 = icmp ne i32 %156, 0, !dbg !545
  br i1 %157, label %159, label %158, !dbg !546

; <label>:158:                                    ; preds = %151
  store i32 0, i32* %3, align 4, !dbg !547
  br label %351, !dbg !547

; <label>:159:                                    ; preds = %151
  br label %350, !dbg !548

; <label>:160:                                    ; preds = %12
  %161 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !549
  %162 = load %struct.GuestLibV3Stat*, %struct.GuestLibV3Stat** %5, align 8, !dbg !551
  %163 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %162, i32 0, i32 1, !dbg !552
  %164 = bitcast %union.anon* %163 to %struct.GuestLibV3StatUint64*, !dbg !553
  %165 = call i32 @xdr_GuestLibV3StatUint64(%struct.XDR* %161, %struct.GuestLibV3StatUint64* %164), !dbg !554
  %166 = icmp ne i32 %165, 0, !dbg !554
  br i1 %166, label %168, label %167, !dbg !555

; <label>:167:                                    ; preds = %160
  store i32 0, i32* %3, align 4, !dbg !556
  br label %351, !dbg !556

; <label>:168:                                    ; preds = %160
  br label %350, !dbg !557

; <label>:169:                                    ; preds = %12
  %170 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !558
  %171 = load %struct.GuestLibV3Stat*, %struct.GuestLibV3Stat** %5, align 8, !dbg !560
  %172 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %171, i32 0, i32 1, !dbg !561
  %173 = bitcast %union.anon* %172 to %struct.GuestLibV3String*, !dbg !562
  %174 = call i32 @xdr_GuestLibV3String(%struct.XDR* %170, %struct.GuestLibV3String* %173), !dbg !563
  %175 = icmp ne i32 %174, 0, !dbg !563
  br i1 %175, label %177, label %176, !dbg !564

; <label>:176:                                    ; preds = %169
  store i32 0, i32* %3, align 4, !dbg !565
  br label %351, !dbg !565

; <label>:177:                                    ; preds = %169
  br label %350, !dbg !566

; <label>:178:                                    ; preds = %12
  %179 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !567
  %180 = load %struct.GuestLibV3Stat*, %struct.GuestLibV3Stat** %5, align 8, !dbg !569
  %181 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %180, i32 0, i32 1, !dbg !570
  %182 = bitcast %union.anon* %181 to %struct.GuestLibV3StatUint64*, !dbg !571
  %183 = call i32 @xdr_GuestLibV3StatUint64(%struct.XDR* %179, %struct.GuestLibV3StatUint64* %182), !dbg !572
  %184 = icmp ne i32 %183, 0, !dbg !572
  br i1 %184, label %186, label %185, !dbg !573

; <label>:185:                                    ; preds = %178
  store i32 0, i32* %3, align 4, !dbg !574
  br label %351, !dbg !574

; <label>:186:                                    ; preds = %178
  br label %350, !dbg !575

; <label>:187:                                    ; preds = %12
  %188 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !576
  %189 = load %struct.GuestLibV3Stat*, %struct.GuestLibV3Stat** %5, align 8, !dbg !578
  %190 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %189, i32 0, i32 1, !dbg !579
  %191 = bitcast %union.anon* %190 to %struct.GuestLibV3StatUint64*, !dbg !580
  %192 = call i32 @xdr_GuestLibV3StatUint64(%struct.XDR* %188, %struct.GuestLibV3StatUint64* %191), !dbg !581
  %193 = icmp ne i32 %192, 0, !dbg !581
  br i1 %193, label %195, label %194, !dbg !582

; <label>:194:                                    ; preds = %187
  store i32 0, i32* %3, align 4, !dbg !583
  br label %351, !dbg !583

; <label>:195:                                    ; preds = %187
  br label %350, !dbg !584

; <label>:196:                                    ; preds = %12
  %197 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !585
  %198 = load %struct.GuestLibV3Stat*, %struct.GuestLibV3Stat** %5, align 8, !dbg !587
  %199 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %198, i32 0, i32 1, !dbg !588
  %200 = bitcast %union.anon* %199 to %struct.GuestLibV3StatUint32*, !dbg !589
  %201 = call i32 @xdr_GuestLibV3StatUint32(%struct.XDR* %197, %struct.GuestLibV3StatUint32* %200), !dbg !590
  %202 = icmp ne i32 %201, 0, !dbg !590
  br i1 %202, label %204, label %203, !dbg !591

; <label>:203:                                    ; preds = %196
  store i32 0, i32* %3, align 4, !dbg !592
  br label %351, !dbg !592

; <label>:204:                                    ; preds = %196
  br label %350, !dbg !593

; <label>:205:                                    ; preds = %12
  %206 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !594
  %207 = load %struct.GuestLibV3Stat*, %struct.GuestLibV3Stat** %5, align 8, !dbg !596
  %208 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %207, i32 0, i32 1, !dbg !597
  %209 = bitcast %union.anon* %208 to %struct.GuestLibV3StatUint64*, !dbg !598
  %210 = call i32 @xdr_GuestLibV3StatUint64(%struct.XDR* %206, %struct.GuestLibV3StatUint64* %209), !dbg !599
  %211 = icmp ne i32 %210, 0, !dbg !599
  br i1 %211, label %213, label %212, !dbg !600

; <label>:212:                                    ; preds = %205
  store i32 0, i32* %3, align 4, !dbg !601
  br label %351, !dbg !601

; <label>:213:                                    ; preds = %205
  br label %350, !dbg !602

; <label>:214:                                    ; preds = %12
  %215 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !603
  %216 = load %struct.GuestLibV3Stat*, %struct.GuestLibV3Stat** %5, align 8, !dbg !605
  %217 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %216, i32 0, i32 1, !dbg !606
  %218 = bitcast %union.anon* %217 to %struct.GuestLibV3StatUint64*, !dbg !607
  %219 = call i32 @xdr_GuestLibV3StatUint64(%struct.XDR* %215, %struct.GuestLibV3StatUint64* %218), !dbg !608
  %220 = icmp ne i32 %219, 0, !dbg !608
  br i1 %220, label %222, label %221, !dbg !609

; <label>:221:                                    ; preds = %214
  store i32 0, i32* %3, align 4, !dbg !610
  br label %351, !dbg !610

; <label>:222:                                    ; preds = %214
  br label %350, !dbg !611

; <label>:223:                                    ; preds = %12
  %224 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !612
  %225 = load %struct.GuestLibV3Stat*, %struct.GuestLibV3Stat** %5, align 8, !dbg !614
  %226 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %225, i32 0, i32 1, !dbg !615
  %227 = bitcast %union.anon* %226 to %struct.GuestLibV3StatUint64*, !dbg !616
  %228 = call i32 @xdr_GuestLibV3StatUint64(%struct.XDR* %224, %struct.GuestLibV3StatUint64* %227), !dbg !617
  %229 = icmp ne i32 %228, 0, !dbg !617
  br i1 %229, label %231, label %230, !dbg !618

; <label>:230:                                    ; preds = %223
  store i32 0, i32* %3, align 4, !dbg !619
  br label %351, !dbg !619

; <label>:231:                                    ; preds = %223
  br label %350, !dbg !620

; <label>:232:                                    ; preds = %12
  %233 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !621
  %234 = load %struct.GuestLibV3Stat*, %struct.GuestLibV3Stat** %5, align 8, !dbg !623
  %235 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %234, i32 0, i32 1, !dbg !624
  %236 = bitcast %union.anon* %235 to %struct.GuestLibV3StatUint64*, !dbg !625
  %237 = call i32 @xdr_GuestLibV3StatUint64(%struct.XDR* %233, %struct.GuestLibV3StatUint64* %236), !dbg !626
  %238 = icmp ne i32 %237, 0, !dbg !626
  br i1 %238, label %240, label %239, !dbg !627

; <label>:239:                                    ; preds = %232
  store i32 0, i32* %3, align 4, !dbg !628
  br label %351, !dbg !628

; <label>:240:                                    ; preds = %232
  br label %350, !dbg !629

; <label>:241:                                    ; preds = %12
  %242 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !630
  %243 = load %struct.GuestLibV3Stat*, %struct.GuestLibV3Stat** %5, align 8, !dbg !632
  %244 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %243, i32 0, i32 1, !dbg !633
  %245 = bitcast %union.anon* %244 to %struct.GuestLibV3StatUint64*, !dbg !634
  %246 = call i32 @xdr_GuestLibV3StatUint64(%struct.XDR* %242, %struct.GuestLibV3StatUint64* %245), !dbg !635
  %247 = icmp ne i32 %246, 0, !dbg !635
  br i1 %247, label %249, label %248, !dbg !636

; <label>:248:                                    ; preds = %241
  store i32 0, i32* %3, align 4, !dbg !637
  br label %351, !dbg !637

; <label>:249:                                    ; preds = %241
  br label %350, !dbg !638

; <label>:250:                                    ; preds = %12
  %251 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !639
  %252 = load %struct.GuestLibV3Stat*, %struct.GuestLibV3Stat** %5, align 8, !dbg !641
  %253 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %252, i32 0, i32 1, !dbg !642
  %254 = bitcast %union.anon* %253 to %struct.GuestLibV3StatUint64*, !dbg !643
  %255 = call i32 @xdr_GuestLibV3StatUint64(%struct.XDR* %251, %struct.GuestLibV3StatUint64* %254), !dbg !644
  %256 = icmp ne i32 %255, 0, !dbg !644
  br i1 %256, label %258, label %257, !dbg !645

; <label>:257:                                    ; preds = %250
  store i32 0, i32* %3, align 4, !dbg !646
  br label %351, !dbg !646

; <label>:258:                                    ; preds = %250
  br label %350, !dbg !647

; <label>:259:                                    ; preds = %12
  %260 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !648
  %261 = load %struct.GuestLibV3Stat*, %struct.GuestLibV3Stat** %5, align 8, !dbg !650
  %262 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %261, i32 0, i32 1, !dbg !651
  %263 = bitcast %union.anon* %262 to %struct.GuestLibV3StatUint64*, !dbg !652
  %264 = call i32 @xdr_GuestLibV3StatUint64(%struct.XDR* %260, %struct.GuestLibV3StatUint64* %263), !dbg !653
  %265 = icmp ne i32 %264, 0, !dbg !653
  br i1 %265, label %267, label %266, !dbg !654

; <label>:266:                                    ; preds = %259
  store i32 0, i32* %3, align 4, !dbg !655
  br label %351, !dbg !655

; <label>:267:                                    ; preds = %259
  br label %350, !dbg !656

; <label>:268:                                    ; preds = %12
  %269 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !657
  %270 = load %struct.GuestLibV3Stat*, %struct.GuestLibV3Stat** %5, align 8, !dbg !659
  %271 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %270, i32 0, i32 1, !dbg !660
  %272 = bitcast %union.anon* %271 to %struct.GuestLibV3StatUint64*, !dbg !661
  %273 = call i32 @xdr_GuestLibV3StatUint64(%struct.XDR* %269, %struct.GuestLibV3StatUint64* %272), !dbg !662
  %274 = icmp ne i32 %273, 0, !dbg !662
  br i1 %274, label %276, label %275, !dbg !663

; <label>:275:                                    ; preds = %268
  store i32 0, i32* %3, align 4, !dbg !664
  br label %351, !dbg !664

; <label>:276:                                    ; preds = %268
  br label %350, !dbg !665

; <label>:277:                                    ; preds = %12
  %278 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !666
  %279 = load %struct.GuestLibV3Stat*, %struct.GuestLibV3Stat** %5, align 8, !dbg !668
  %280 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %279, i32 0, i32 1, !dbg !669
  %281 = bitcast %union.anon* %280 to %struct.GuestLibV3StatUint64*, !dbg !670
  %282 = call i32 @xdr_GuestLibV3StatUint64(%struct.XDR* %278, %struct.GuestLibV3StatUint64* %281), !dbg !671
  %283 = icmp ne i32 %282, 0, !dbg !671
  br i1 %283, label %285, label %284, !dbg !672

; <label>:284:                                    ; preds = %277
  store i32 0, i32* %3, align 4, !dbg !673
  br label %351, !dbg !673

; <label>:285:                                    ; preds = %277
  br label %350, !dbg !674

; <label>:286:                                    ; preds = %12
  %287 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !675
  %288 = load %struct.GuestLibV3Stat*, %struct.GuestLibV3Stat** %5, align 8, !dbg !677
  %289 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %288, i32 0, i32 1, !dbg !678
  %290 = bitcast %union.anon* %289 to %struct.GuestLibV3StatUint32*, !dbg !679
  %291 = call i32 @xdr_GuestLibV3StatUint32(%struct.XDR* %287, %struct.GuestLibV3StatUint32* %290), !dbg !680
  %292 = icmp ne i32 %291, 0, !dbg !680
  br i1 %292, label %294, label %293, !dbg !681

; <label>:293:                                    ; preds = %286
  store i32 0, i32* %3, align 4, !dbg !682
  br label %351, !dbg !682

; <label>:294:                                    ; preds = %286
  br label %350, !dbg !683

; <label>:295:                                    ; preds = %12
  %296 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !684
  %297 = load %struct.GuestLibV3Stat*, %struct.GuestLibV3Stat** %5, align 8, !dbg !686
  %298 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %297, i32 0, i32 1, !dbg !687
  %299 = bitcast %union.anon* %298 to %struct.GuestLibV3StatUint32*, !dbg !688
  %300 = call i32 @xdr_GuestLibV3StatUint32(%struct.XDR* %296, %struct.GuestLibV3StatUint32* %299), !dbg !689
  %301 = icmp ne i32 %300, 0, !dbg !689
  br i1 %301, label %303, label %302, !dbg !690

; <label>:302:                                    ; preds = %295
  store i32 0, i32* %3, align 4, !dbg !691
  br label %351, !dbg !691

; <label>:303:                                    ; preds = %295
  br label %350, !dbg !692

; <label>:304:                                    ; preds = %12
  %305 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !693
  %306 = load %struct.GuestLibV3Stat*, %struct.GuestLibV3Stat** %5, align 8, !dbg !695
  %307 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %306, i32 0, i32 1, !dbg !696
  %308 = bitcast %union.anon* %307 to %struct.GuestLibV3StatUint32*, !dbg !697
  %309 = call i32 @xdr_GuestLibV3StatUint32(%struct.XDR* %305, %struct.GuestLibV3StatUint32* %308), !dbg !698
  %310 = icmp ne i32 %309, 0, !dbg !698
  br i1 %310, label %312, label %311, !dbg !699

; <label>:311:                                    ; preds = %304
  store i32 0, i32* %3, align 4, !dbg !700
  br label %351, !dbg !700

; <label>:312:                                    ; preds = %304
  br label %350, !dbg !701

; <label>:313:                                    ; preds = %12
  %314 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !702
  %315 = load %struct.GuestLibV3Stat*, %struct.GuestLibV3Stat** %5, align 8, !dbg !704
  %316 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %315, i32 0, i32 1, !dbg !705
  %317 = bitcast %union.anon* %316 to %struct.GuestLibV3StatUint32*, !dbg !706
  %318 = call i32 @xdr_GuestLibV3StatUint32(%struct.XDR* %314, %struct.GuestLibV3StatUint32* %317), !dbg !707
  %319 = icmp ne i32 %318, 0, !dbg !707
  br i1 %319, label %321, label %320, !dbg !708

; <label>:320:                                    ; preds = %313
  store i32 0, i32* %3, align 4, !dbg !709
  br label %351, !dbg !709

; <label>:321:                                    ; preds = %313
  br label %350, !dbg !710

; <label>:322:                                    ; preds = %12
  %323 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !711
  %324 = load %struct.GuestLibV3Stat*, %struct.GuestLibV3Stat** %5, align 8, !dbg !713
  %325 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %324, i32 0, i32 1, !dbg !714
  %326 = bitcast %union.anon* %325 to %struct.GuestLibV3StatUint32*, !dbg !715
  %327 = call i32 @xdr_GuestLibV3StatUint32(%struct.XDR* %323, %struct.GuestLibV3StatUint32* %326), !dbg !716
  %328 = icmp ne i32 %327, 0, !dbg !716
  br i1 %328, label %330, label %329, !dbg !717

; <label>:329:                                    ; preds = %322
  store i32 0, i32* %3, align 4, !dbg !718
  br label %351, !dbg !718

; <label>:330:                                    ; preds = %322
  br label %350, !dbg !719

; <label>:331:                                    ; preds = %12
  %332 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !720
  %333 = load %struct.GuestLibV3Stat*, %struct.GuestLibV3Stat** %5, align 8, !dbg !722
  %334 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %333, i32 0, i32 1, !dbg !723
  %335 = bitcast %union.anon* %334 to %struct.GuestLibV3StatUint32*, !dbg !724
  %336 = call i32 @xdr_GuestLibV3StatUint32(%struct.XDR* %332, %struct.GuestLibV3StatUint32* %335), !dbg !725
  %337 = icmp ne i32 %336, 0, !dbg !725
  br i1 %337, label %339, label %338, !dbg !726

; <label>:338:                                    ; preds = %331
  store i32 0, i32* %3, align 4, !dbg !727
  br label %351, !dbg !727

; <label>:339:                                    ; preds = %331
  br label %350, !dbg !728

; <label>:340:                                    ; preds = %12
  %341 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !729
  %342 = load %struct.GuestLibV3Stat*, %struct.GuestLibV3Stat** %5, align 8, !dbg !731
  %343 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %342, i32 0, i32 1, !dbg !732
  %344 = bitcast %union.anon* %343 to %struct.GuestLibV3ByteArray*, !dbg !733
  %345 = call i32 @xdr_GuestLibV3ByteArray(%struct.XDR* %341, %struct.GuestLibV3ByteArray* %344), !dbg !734
  %346 = icmp ne i32 %345, 0, !dbg !734
  br i1 %346, label %348, label %347, !dbg !735

; <label>:347:                                    ; preds = %340
  store i32 0, i32* %3, align 4, !dbg !736
  br label %351, !dbg !736

; <label>:348:                                    ; preds = %340
  br label %350, !dbg !737

; <label>:349:                                    ; preds = %12
  store i32 0, i32* %3, align 4, !dbg !738
  br label %351, !dbg !738

; <label>:350:                                    ; preds = %348, %339, %330, %321, %312, %303, %294, %285, %276, %267, %258, %249, %240, %231, %222, %213, %204, %195, %186, %177, %168, %159, %150, %141, %132, %123, %114, %105, %96, %87, %78, %69, %60, %51, %42, %33, %24
  store i32 1, i32* %3, align 4, !dbg !739
  br label %351, !dbg !739

; <label>:351:                                    ; preds = %350, %349, %347, %338, %329, %320, %311, %302, %293, %284, %275, %266, %257, %248, %239, %230, %221, %212, %203, %194, %185, %176, %167, %158, %149, %140, %131, %122, %113, %104, %95, %86, %77, %68, %59, %50, %41, %32, %23, %11
  %352 = load i32, i32* %3, align 4, !dbg !740
  ret i32 %352, !dbg !740
}

; Function Attrs: nounwind
declare i32 @xdr_char(%struct.XDR*, i8*) #3

; Function Attrs: nounwind
declare i32 @xdr_uint32_t(%struct.XDR*, i32*) #3

; Function Attrs: nounwind
declare i32 @xdr_uint64_t(%struct.XDR*, i64*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!65, !66}
!llvm.ident = !{!67}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !51)
!1 = !DIFile(filename: "libguestlib_la-guestlibV3_xdr.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1321")
!2 = !{!3, !9}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xdr_op", file: !4, line: 81, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/rpc/xdr.h", directory: "/home/lichi/Desktop/open-vm-tools/line1321")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "XDR_ENCODE", value: 0)
!7 = !DIEnumerator(name: "XDR_DECODE", value: 1)
!8 = !DIEnumerator(name: "XDR_FREE", value: 2)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "GuestLibV3TypeIds", file: !10, line: 47, size: 32, align: 32, elements: !11)
!10 = !DIFile(filename: "guestlibV3.h", directory: "/home/lichi/Desktop/open-vm-tools/line1321")
!11 = !{!12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!12 = !DIEnumerator(name: "GUESTLIB_TYPE_RESERVED", value: 0)
!13 = !DIEnumerator(name: "GUESTLIB_CPU_RESERVATION_MHZ", value: 1)
!14 = !DIEnumerator(name: "GUESTLIB_CPU_LIMIT_MHZ", value: 2)
!15 = !DIEnumerator(name: "GUESTLIB_CPU_SHARES", value: 3)
!16 = !DIEnumerator(name: "GUESTLIB_CPU_USED_MS", value: 4)
!17 = !DIEnumerator(name: "GUESTLIB_HOST_MHZ", value: 5)
!18 = !DIEnumerator(name: "GUESTLIB_MEM_RESERVATION_MB", value: 6)
!19 = !DIEnumerator(name: "GUESTLIB_MEM_LIMIT_MB", value: 7)
!20 = !DIEnumerator(name: "GUESTLIB_MEM_SHARES", value: 8)
!21 = !DIEnumerator(name: "GUESTLIB_MEM_MAPPED_MB", value: 9)
!22 = !DIEnumerator(name: "GUESTLIB_MEM_ACTIVE_MB", value: 10)
!23 = !DIEnumerator(name: "GUESTLIB_MEM_OVERHEAD_MB", value: 11)
!24 = !DIEnumerator(name: "GUESTLIB_MEM_BALLOONED_MB", value: 12)
!25 = !DIEnumerator(name: "GUESTLIB_MEM_SWAPPED_MB", value: 13)
!26 = !DIEnumerator(name: "GUESTLIB_MEM_SHARED_MB", value: 14)
!27 = !DIEnumerator(name: "GUESTLIB_MEM_SHARED_SAVED_MB", value: 15)
!28 = !DIEnumerator(name: "GUESTLIB_MEM_USED_MB", value: 16)
!29 = !DIEnumerator(name: "GUESTLIB_ELAPSED_MS", value: 17)
!30 = !DIEnumerator(name: "GUESTLIB_RESOURCE_POOL_PATH", value: 18)
!31 = !DIEnumerator(name: "GUESTLIB_CPU_STOLEN_MS", value: 19)
!32 = !DIEnumerator(name: "GUESTLIB_MEM_TARGET_SIZE_MB", value: 20)
!33 = !DIEnumerator(name: "GUESTLIB_HOST_CPU_NUM_CORES", value: 21)
!34 = !DIEnumerator(name: "GUESTLIB_HOST_CPU_USED_MS", value: 22)
!35 = !DIEnumerator(name: "GUESTLIB_HOST_MEM_SWAPPED_MB", value: 23)
!36 = !DIEnumerator(name: "GUESTLIB_HOST_MEM_SHARED_MB", value: 24)
!37 = !DIEnumerator(name: "GUESTLIB_HOST_MEM_USED_MB", value: 25)
!38 = !DIEnumerator(name: "GUESTLIB_HOST_MEM_PHYS_MB", value: 26)
!39 = !DIEnumerator(name: "GUESTLIB_HOST_MEM_PHYS_FREE_MB", value: 27)
!40 = !DIEnumerator(name: "GUESTLIB_HOST_MEM_KERN_OVHD_MB", value: 28)
!41 = !DIEnumerator(name: "GUESTLIB_HOST_MEM_MAPPED_MB", value: 29)
!42 = !DIEnumerator(name: "GUESTLIB_HOST_MEM_UNMAPPED_MB", value: 30)
!43 = !DIEnumerator(name: "GUESTLIB_MEM_ZIPPED_MB", value: 31)
!44 = !DIEnumerator(name: "GUESTLIB_MEM_ZIPSAVED_MB", value: 32)
!45 = !DIEnumerator(name: "GUESTLIB_MEM_LLSWAPPED_MB", value: 33)
!46 = !DIEnumerator(name: "GUESTLIB_MEM_SWAP_TARGET_MB", value: 34)
!47 = !DIEnumerator(name: "GUESTLIB_MEM_BALLOON_TARGET_MB", value: 35)
!48 = !DIEnumerator(name: "GUESTLIB_MEM_BALLOON_MAX_MB", value: 36)
!49 = !DIEnumerator(name: "GUESTLIB_RESOURCE_POOL_PATH_LONG", value: 37)
!50 = !DIEnumerator(name: "GUESTLIB_MAX_STATISTIC_ID", value: 38)
!51 = !{!52, !55, !61}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int", file: !57, line: 35, baseType: !58)
!57 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1321")
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_int", file: !59, line: 32, baseType: !60)
!59 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1321")
!60 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "enum_t", file: !63, line: 38, baseType: !64)
!63 = !DIFile(filename: "/usr/include/rpc/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1321")
!64 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!65 = !{i32 2, !"Dwarf Version", i32 4}
!66 = !{i32 2, !"Debug Info Version", i32 3}
!67 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!68 = distinct !DISubprogram(name: "xdr_GuestLibV3StatUint32", scope: !69, file: !69, line: 9, type: !70, isLocal: false, isDefinition: true, scopeLine: 10, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !151)
!69 = !DIFile(filename: "guestlibV3_xdr.c", directory: "/home/lichi/Desktop/open-vm-tools/line1321")
!70 = !DISubroutineType(types: !71)
!71 = !{!72, !73, !140}
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool_t", file: !63, line: 37, baseType: !64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "XDR", file: !4, line: 109, baseType: !75)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "XDR", file: !4, line: 110, size: 384, align: 64, elements: !76)
!76 = !{!77, !78, !136, !137, !138, !139}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "x_op", scope: !75, file: !4, line: 112, baseType: !3, size: 32, align: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "x_ops", scope: !75, file: !4, line: 136, baseType: !79, size: 64, align: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xdr_ops", file: !4, line: 113, size: 640, align: 64, elements: !81)
!81 = !{!82, !88, !94, !100, !106, !112, !116, !122, !126, !130}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "x_getlong", scope: !80, file: !4, line: 115, baseType: !83, size: 64, align: 64)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64, align: 64)
!84 = !DISubroutineType(types: !85)
!85 = !{!72, !73, !86}
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!87 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "x_putlong", scope: !80, file: !4, line: 117, baseType: !89, size: 64, align: 64, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!90 = !DISubroutineType(types: !91)
!91 = !{!72, !73, !92}
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64, align: 64)
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "x_getbytes", scope: !80, file: !4, line: 119, baseType: !95, size: 64, align: 64, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, align: 64)
!96 = !DISubroutineType(types: !97)
!97 = !{!72, !73, !98, !56}
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "caddr_t", file: !57, line: 116, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__caddr_t", file: !59, line: 183, baseType: !53)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "x_putbytes", scope: !80, file: !4, line: 121, baseType: !101, size: 64, align: 64, offset: 192)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64, align: 64)
!102 = !DISubroutineType(types: !103)
!103 = !{!72, !73, !104, !56}
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "x_getpostn", scope: !80, file: !4, line: 123, baseType: !107, size: 64, align: 64, offset: 256)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{!56, !110}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, align: 64)
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "x_setpostn", scope: !80, file: !4, line: 125, baseType: !113, size: 64, align: 64, offset: 320)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64, align: 64)
!114 = !DISubroutineType(types: !115)
!115 = !{!72, !73, !56}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "x_inline", scope: !80, file: !4, line: 127, baseType: !117, size: 64, align: 64, offset: 384)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, align: 64)
!118 = !DISubroutineType(types: !119)
!119 = !{!120, !73, !56}
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, align: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !57, line: 196, baseType: !64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "x_destroy", scope: !80, file: !4, line: 129, baseType: !123, size: 64, align: 64, offset: 448)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, align: 64)
!124 = !DISubroutineType(types: !125)
!125 = !{null, !73}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "x_getint32", scope: !80, file: !4, line: 131, baseType: !127, size: 64, align: 64, offset: 512)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!128 = !DISubroutineType(types: !129)
!129 = !{!72, !73, !120}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "x_putint32", scope: !80, file: !4, line: 133, baseType: !131, size: 64, align: 64, offset: 576)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{!72, !73, !134}
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "x_public", scope: !75, file: !4, line: 137, baseType: !98, size: 64, align: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "x_private", scope: !75, file: !4, line: 138, baseType: !98, size: 64, align: 64, offset: 192)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "x_base", scope: !75, file: !4, line: 139, baseType: !98, size: 64, align: 64, offset: 256)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "x_handy", scope: !75, file: !4, line: 140, baseType: !56, size: 32, align: 32, offset: 320)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestLibV3StatUint32", file: !10, line: 21, baseType: !142)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GuestLibV3StatUint32", file: !10, line: 17, size: 64, align: 32, elements: !143)
!143 = !{!144, !147}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !142, file: !10, line: 18, baseType: !145, size: 8, align: 8)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !146, line: 230, baseType: !54)
!146 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1321")
!147 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !142, file: !10, line: 19, baseType: !148, size: 32, align: 32, offset: 32)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !146, line: 173, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !150, line: 51, baseType: !60)
!150 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line1321")
!151 = !{}
!152 = !DILocalVariable(name: "xdrs", arg: 1, scope: !68, file: !69, line: 9, type: !73)
!153 = !DIExpression()
!154 = !DILocation(line: 9, column: 32, scope: !68)
!155 = !DILocalVariable(name: "objp", arg: 2, scope: !68, file: !69, line: 9, type: !140)
!156 = !DILocation(line: 9, column: 60, scope: !68)
!157 = !DILocation(line: 12, column: 18, scope: !158)
!158 = distinct !DILexicalBlock(scope: !68, file: !69, line: 12, column: 7)
!159 = !DILocation(line: 12, column: 25, scope: !158)
!160 = !DILocation(line: 12, column: 31, scope: !158)
!161 = !DILocation(line: 12, column: 8, scope: !158)
!162 = !DILocation(line: 12, column: 7, scope: !68)
!163 = !DILocation(line: 13, column: 4, scope: !158)
!164 = !DILocation(line: 14, column: 20, scope: !165)
!165 = distinct !DILexicalBlock(scope: !68, file: !69, line: 14, column: 7)
!166 = !DILocation(line: 14, column: 27, scope: !165)
!167 = !DILocation(line: 14, column: 33, scope: !165)
!168 = !DILocation(line: 14, column: 8, scope: !165)
!169 = !DILocation(line: 14, column: 7, scope: !68)
!170 = !DILocation(line: 15, column: 4, scope: !165)
!171 = !DILocation(line: 16, column: 2, scope: !68)
!172 = !DILocation(line: 17, column: 1, scope: !68)
!173 = distinct !DISubprogram(name: "xdr_Bool", scope: !174, file: !174, line: 264, type: !175, isLocal: true, isDefinition: true, scopeLine: 266, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !151)
!174 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmxrpc.h", directory: "/home/lichi/Desktop/open-vm-tools/line1321")
!175 = !DISubroutineType(types: !176)
!176 = !{!72, !73, !177}
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64, align: 64)
!178 = !DILocalVariable(name: "xdrs", arg: 1, scope: !173, file: !174, line: 264, type: !73)
!179 = !DILocation(line: 264, column: 15, scope: !173)
!180 = !DILocalVariable(name: "ip", arg: 2, scope: !173, file: !174, line: 265, type: !177)
!181 = !DILocation(line: 265, column: 16, scope: !173)
!182 = !DILocation(line: 267, column: 20, scope: !173)
!183 = !DILocation(line: 267, column: 26, scope: !173)
!184 = !DILocation(line: 267, column: 11, scope: !173)
!185 = !DILocation(line: 267, column: 4, scope: !173)
!186 = distinct !DISubprogram(name: "xdr_uint32", scope: !174, file: !174, line: 191, type: !187, isLocal: true, isDefinition: true, scopeLine: 193, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !151)
!187 = !DISubroutineType(types: !188)
!188 = !{!72, !73, !189}
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64, align: 64)
!190 = !DILocalVariable(name: "xdrs", arg: 1, scope: !186, file: !174, line: 191, type: !73)
!191 = !DILocation(line: 191, column: 17, scope: !186)
!192 = !DILocalVariable(name: "ip", arg: 2, scope: !186, file: !174, line: 192, type: !189)
!193 = !DILocation(line: 192, column: 20, scope: !186)
!194 = !DILocation(line: 194, column: 24, scope: !186)
!195 = !DILocation(line: 194, column: 30, scope: !186)
!196 = !DILocation(line: 194, column: 11, scope: !186)
!197 = !DILocation(line: 194, column: 4, scope: !186)
!198 = distinct !DISubprogram(name: "xdr_GuestLibV3StatUint64", scope: !69, file: !69, line: 20, type: !199, isLocal: false, isDefinition: true, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !151)
!199 = !DISubroutineType(types: !200)
!200 = !{!72, !73, !201}
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, align: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestLibV3StatUint64", file: !10, line: 27, baseType: !203)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GuestLibV3StatUint64", file: !10, line: 23, size: 128, align: 64, elements: !204)
!204 = !{!205, !206}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !203, file: !10, line: 24, baseType: !145, size: 8, align: 8)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !203, file: !10, line: 25, baseType: !207, size: 64, align: 64, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !146, line: 171, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !150, line: 55, baseType: !209)
!209 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!210 = !DILocalVariable(name: "xdrs", arg: 1, scope: !198, file: !69, line: 20, type: !73)
!211 = !DILocation(line: 20, column: 32, scope: !198)
!212 = !DILocalVariable(name: "objp", arg: 2, scope: !198, file: !69, line: 20, type: !201)
!213 = !DILocation(line: 20, column: 60, scope: !198)
!214 = !DILocation(line: 23, column: 18, scope: !215)
!215 = distinct !DILexicalBlock(scope: !198, file: !69, line: 23, column: 7)
!216 = !DILocation(line: 23, column: 25, scope: !215)
!217 = !DILocation(line: 23, column: 31, scope: !215)
!218 = !DILocation(line: 23, column: 8, scope: !215)
!219 = !DILocation(line: 23, column: 7, scope: !198)
!220 = !DILocation(line: 24, column: 4, scope: !215)
!221 = !DILocation(line: 25, column: 20, scope: !222)
!222 = distinct !DILexicalBlock(scope: !198, file: !69, line: 25, column: 7)
!223 = !DILocation(line: 25, column: 27, scope: !222)
!224 = !DILocation(line: 25, column: 33, scope: !222)
!225 = !DILocation(line: 25, column: 8, scope: !222)
!226 = !DILocation(line: 25, column: 7, scope: !198)
!227 = !DILocation(line: 26, column: 4, scope: !222)
!228 = !DILocation(line: 27, column: 2, scope: !198)
!229 = !DILocation(line: 28, column: 1, scope: !198)
!230 = distinct !DISubprogram(name: "xdr_uint64", scope: !174, file: !174, line: 239, type: !231, isLocal: true, isDefinition: true, scopeLine: 241, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !151)
!231 = !DISubroutineType(types: !232)
!232 = !{!72, !73, !233}
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64, align: 64)
!234 = !DILocalVariable(name: "xdrs", arg: 1, scope: !230, file: !174, line: 239, type: !73)
!235 = !DILocation(line: 239, column: 17, scope: !230)
!236 = !DILocalVariable(name: "ip", arg: 2, scope: !230, file: !174, line: 240, type: !233)
!237 = !DILocation(line: 240, column: 20, scope: !230)
!238 = !DILocation(line: 242, column: 24, scope: !230)
!239 = !DILocation(line: 242, column: 30, scope: !230)
!240 = !DILocation(line: 242, column: 11, scope: !230)
!241 = !DILocation(line: 242, column: 4, scope: !230)
!242 = distinct !DISubprogram(name: "xdr_GuestLibV3String", scope: !69, file: !69, line: 31, type: !243, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !151)
!243 = !DISubroutineType(types: !244)
!244 = !{!72, !73, !245}
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64, align: 64)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestLibV3String", file: !10, line: 34, baseType: !247)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GuestLibV3String", file: !10, line: 30, size: 128, align: 64, elements: !248)
!248 = !{!249, !250}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !247, file: !10, line: 31, baseType: !145, size: 8, align: 8)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !247, file: !10, line: 32, baseType: !53, size: 64, align: 64, offset: 64)
!251 = !DILocalVariable(name: "xdrs", arg: 1, scope: !242, file: !69, line: 31, type: !73)
!252 = !DILocation(line: 31, column: 28, scope: !242)
!253 = !DILocalVariable(name: "objp", arg: 2, scope: !242, file: !69, line: 31, type: !245)
!254 = !DILocation(line: 31, column: 52, scope: !242)
!255 = !DILocation(line: 34, column: 18, scope: !256)
!256 = distinct !DILexicalBlock(scope: !242, file: !69, line: 34, column: 7)
!257 = !DILocation(line: 34, column: 25, scope: !256)
!258 = !DILocation(line: 34, column: 31, scope: !256)
!259 = !DILocation(line: 34, column: 8, scope: !256)
!260 = !DILocation(line: 34, column: 7, scope: !242)
!261 = !DILocation(line: 35, column: 4, scope: !256)
!262 = !DILocation(line: 36, column: 20, scope: !263)
!263 = distinct !DILexicalBlock(scope: !242, file: !69, line: 36, column: 7)
!264 = !DILocation(line: 36, column: 27, scope: !263)
!265 = !DILocation(line: 36, column: 33, scope: !263)
!266 = !DILocation(line: 36, column: 8, scope: !263)
!267 = !DILocation(line: 36, column: 7, scope: !242)
!268 = !DILocation(line: 37, column: 4, scope: !263)
!269 = !DILocation(line: 38, column: 2, scope: !242)
!270 = !DILocation(line: 39, column: 1, scope: !242)
!271 = distinct !DISubprogram(name: "xdr_GuestLibV3ByteArray", scope: !69, file: !69, line: 42, type: !272, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !151)
!272 = !DISubroutineType(types: !273)
!273 = !{!72, !73, !274}
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64, align: 64)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestLibV3ByteArray", file: !10, line: 43, baseType: !276)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GuestLibV3ByteArray", file: !10, line: 36, size: 192, align: 64, elements: !277)
!277 = !{!278, !279}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !276, file: !10, line: 37, baseType: !145, size: 8, align: 8)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !276, file: !10, line: 41, baseType: !280, size: 128, align: 64, offset: 64)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !276, file: !10, line: 38, size: 128, align: 64, elements: !281)
!281 = !{!282, !283}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "value_len", scope: !280, file: !10, line: 39, baseType: !56, size: 32, align: 32)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "value_val", scope: !280, file: !10, line: 40, baseType: !53, size: 64, align: 64, offset: 64)
!284 = !DILocalVariable(name: "xdrs", arg: 1, scope: !271, file: !69, line: 42, type: !73)
!285 = !DILocation(line: 42, column: 31, scope: !271)
!286 = !DILocalVariable(name: "objp", arg: 2, scope: !271, file: !69, line: 42, type: !274)
!287 = !DILocation(line: 42, column: 58, scope: !271)
!288 = !DILocation(line: 45, column: 18, scope: !289)
!289 = distinct !DILexicalBlock(scope: !271, file: !69, line: 45, column: 7)
!290 = !DILocation(line: 45, column: 25, scope: !289)
!291 = !DILocation(line: 45, column: 31, scope: !289)
!292 = !DILocation(line: 45, column: 8, scope: !289)
!293 = !DILocation(line: 45, column: 7, scope: !271)
!294 = !DILocation(line: 46, column: 4, scope: !289)
!295 = !DILocation(line: 47, column: 19, scope: !296)
!296 = distinct !DILexicalBlock(scope: !271, file: !69, line: 47, column: 7)
!297 = !DILocation(line: 47, column: 35, scope: !296)
!298 = !DILocation(line: 47, column: 41, scope: !296)
!299 = !DILocation(line: 47, column: 47, scope: !296)
!300 = !DILocation(line: 47, column: 69, scope: !296)
!301 = !DILocation(line: 47, column: 75, scope: !296)
!302 = !DILocation(line: 47, column: 81, scope: !296)
!303 = !DILocation(line: 47, column: 8, scope: !296)
!304 = !DILocation(line: 47, column: 7, scope: !271)
!305 = !DILocation(line: 48, column: 4, scope: !296)
!306 = !DILocation(line: 49, column: 2, scope: !271)
!307 = !DILocation(line: 50, column: 1, scope: !271)
!308 = distinct !DISubprogram(name: "xdr_GuestLibV3StatCount", scope: !69, file: !69, line: 53, type: !309, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !151)
!309 = !DISubroutineType(types: !310)
!310 = !{!72, !73, !311}
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64, align: 64)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestLibV3StatCount", file: !10, line: 45, baseType: !148)
!313 = !DILocalVariable(name: "xdrs", arg: 1, scope: !308, file: !69, line: 53, type: !73)
!314 = !DILocation(line: 53, column: 31, scope: !308)
!315 = !DILocalVariable(name: "objp", arg: 2, scope: !308, file: !69, line: 53, type: !311)
!316 = !DILocation(line: 53, column: 58, scope: !308)
!317 = !DILocation(line: 56, column: 20, scope: !318)
!318 = distinct !DILexicalBlock(scope: !308, file: !69, line: 56, column: 7)
!319 = !DILocation(line: 56, column: 26, scope: !318)
!320 = !DILocation(line: 56, column: 8, scope: !318)
!321 = !DILocation(line: 56, column: 7, scope: !308)
!322 = !DILocation(line: 57, column: 4, scope: !318)
!323 = !DILocation(line: 58, column: 2, scope: !308)
!324 = !DILocation(line: 59, column: 1, scope: !308)
!325 = distinct !DISubprogram(name: "xdr_GuestLibV3TypeIds", scope: !69, file: !69, line: 62, type: !326, isLocal: false, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !151)
!326 = !DISubroutineType(types: !327)
!327 = !{!72, !73, !328}
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64, align: 64)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestLibV3TypeIds", file: !10, line: 88, baseType: !9)
!330 = !DILocalVariable(name: "xdrs", arg: 1, scope: !325, file: !69, line: 62, type: !73)
!331 = !DILocation(line: 62, column: 29, scope: !325)
!332 = !DILocalVariable(name: "objp", arg: 2, scope: !325, file: !69, line: 62, type: !328)
!333 = !DILocation(line: 62, column: 54, scope: !325)
!334 = !DILocation(line: 65, column: 18, scope: !335)
!335 = distinct !DILexicalBlock(scope: !325, file: !69, line: 65, column: 7)
!336 = !DILocation(line: 65, column: 35, scope: !335)
!337 = !DILocation(line: 65, column: 8, scope: !335)
!338 = !DILocation(line: 65, column: 7, scope: !325)
!339 = !DILocation(line: 66, column: 4, scope: !335)
!340 = !DILocation(line: 67, column: 2, scope: !325)
!341 = !DILocation(line: 68, column: 1, scope: !325)
!342 = distinct !DISubprogram(name: "xdr_GuestLibV3Stat", scope: !69, file: !69, line: 71, type: !343, isLocal: false, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !151)
!343 = !DISubroutineType(types: !344)
!344 = !{!72, !73, !345}
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64, align: 64)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestLibV3Stat", file: !10, line: 132, baseType: !347)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GuestLibV3Stat", file: !10, line: 90, size: 256, align: 64, elements: !348)
!348 = !{!349, !350}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !347, file: !10, line: 91, baseType: !329, size: 32, align: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "GuestLibV3Stat_u", scope: !347, file: !10, line: 130, baseType: !351, size: 192, align: 64, offset: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !347, file: !10, line: 92, size: 192, align: 64, elements: !352)
!352 = !{!353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "cpuReservationMHz", scope: !351, file: !10, line: 93, baseType: !142, size: 64, align: 32)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "cpuLimitMHz", scope: !351, file: !10, line: 94, baseType: !142, size: 64, align: 32)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "cpuShares", scope: !351, file: !10, line: 95, baseType: !142, size: 64, align: 32)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "cpuUsedMs", scope: !351, file: !10, line: 96, baseType: !203, size: 128, align: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "hostMHz", scope: !351, file: !10, line: 97, baseType: !142, size: 64, align: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "memReservationMB", scope: !351, file: !10, line: 98, baseType: !142, size: 64, align: 32)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "memLimitMB", scope: !351, file: !10, line: 99, baseType: !142, size: 64, align: 32)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "memShares", scope: !351, file: !10, line: 100, baseType: !142, size: 64, align: 32)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "memMappedMB", scope: !351, file: !10, line: 101, baseType: !142, size: 64, align: 32)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "memActiveMB", scope: !351, file: !10, line: 102, baseType: !142, size: 64, align: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "memOverheadMB", scope: !351, file: !10, line: 103, baseType: !142, size: 64, align: 32)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "memBalloonedMB", scope: !351, file: !10, line: 104, baseType: !142, size: 64, align: 32)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "memSwappedMB", scope: !351, file: !10, line: 105, baseType: !142, size: 64, align: 32)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "memSharedMB", scope: !351, file: !10, line: 106, baseType: !142, size: 64, align: 32)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "memSharedSavedMB", scope: !351, file: !10, line: 107, baseType: !142, size: 64, align: 32)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "memUsedMB", scope: !351, file: !10, line: 108, baseType: !142, size: 64, align: 32)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "elapsedMs", scope: !351, file: !10, line: 109, baseType: !203, size: 128, align: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "resourcePoolPath", scope: !351, file: !10, line: 110, baseType: !247, size: 128, align: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "cpuStolenMs", scope: !351, file: !10, line: 111, baseType: !203, size: 128, align: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "memTargetSizeMB", scope: !351, file: !10, line: 112, baseType: !203, size: 128, align: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "hostCpuNumCores", scope: !351, file: !10, line: 113, baseType: !142, size: 64, align: 32)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "hostCpuUsedMs", scope: !351, file: !10, line: 114, baseType: !203, size: 128, align: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "hostMemSwappedMB", scope: !351, file: !10, line: 115, baseType: !203, size: 128, align: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "hostMemSharedMB", scope: !351, file: !10, line: 116, baseType: !203, size: 128, align: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "hostMemUsedMB", scope: !351, file: !10, line: 117, baseType: !203, size: 128, align: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "hostMemPhysMB", scope: !351, file: !10, line: 118, baseType: !203, size: 128, align: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "hostMemPhysFreeMB", scope: !351, file: !10, line: 119, baseType: !203, size: 128, align: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "hostMemKernOvhdMB", scope: !351, file: !10, line: 120, baseType: !203, size: 128, align: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "hostMemMappedMB", scope: !351, file: !10, line: 121, baseType: !203, size: 128, align: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "hostMemUnmappedMB", scope: !351, file: !10, line: 122, baseType: !203, size: 128, align: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "memZippedMB", scope: !351, file: !10, line: 123, baseType: !142, size: 64, align: 32)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "memZipSavedMB", scope: !351, file: !10, line: 124, baseType: !142, size: 64, align: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "memLLSwappedMB", scope: !351, file: !10, line: 125, baseType: !142, size: 64, align: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "memSwapTargetMB", scope: !351, file: !10, line: 126, baseType: !142, size: 64, align: 32)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "memBalloonTargetMB", scope: !351, file: !10, line: 127, baseType: !142, size: 64, align: 32)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "memBalloonMaxMB", scope: !351, file: !10, line: 128, baseType: !142, size: 64, align: 32)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "resourcePoolPathLong", scope: !351, file: !10, line: 129, baseType: !276, size: 192, align: 64)
!390 = !DILocalVariable(name: "xdrs", arg: 1, scope: !342, file: !69, line: 71, type: !73)
!391 = !DILocation(line: 71, column: 26, scope: !342)
!392 = !DILocalVariable(name: "objp", arg: 2, scope: !342, file: !69, line: 71, type: !345)
!393 = !DILocation(line: 71, column: 48, scope: !342)
!394 = !DILocation(line: 74, column: 31, scope: !395)
!395 = distinct !DILexicalBlock(scope: !342, file: !69, line: 74, column: 7)
!396 = !DILocation(line: 74, column: 38, scope: !395)
!397 = !DILocation(line: 74, column: 44, scope: !395)
!398 = !DILocation(line: 74, column: 8, scope: !395)
!399 = !DILocation(line: 74, column: 7, scope: !342)
!400 = !DILocation(line: 75, column: 4, scope: !395)
!401 = !DILocation(line: 76, column: 10, scope: !342)
!402 = !DILocation(line: 76, column: 16, scope: !342)
!403 = !DILocation(line: 76, column: 2, scope: !342)
!404 = !DILocation(line: 78, column: 35, scope: !405)
!405 = distinct !DILexicalBlock(scope: !406, file: !69, line: 78, column: 8)
!406 = distinct !DILexicalBlock(scope: !342, file: !69, line: 76, column: 19)
!407 = !DILocation(line: 78, column: 42, scope: !405)
!408 = !DILocation(line: 78, column: 48, scope: !405)
!409 = !DILocation(line: 78, column: 65, scope: !405)
!410 = !DILocation(line: 78, column: 9, scope: !405)
!411 = !DILocation(line: 78, column: 8, scope: !406)
!412 = !DILocation(line: 79, column: 5, scope: !405)
!413 = !DILocation(line: 80, column: 3, scope: !406)
!414 = !DILocation(line: 82, column: 35, scope: !415)
!415 = distinct !DILexicalBlock(scope: !406, file: !69, line: 82, column: 8)
!416 = !DILocation(line: 82, column: 42, scope: !415)
!417 = !DILocation(line: 82, column: 48, scope: !415)
!418 = !DILocation(line: 82, column: 65, scope: !415)
!419 = !DILocation(line: 82, column: 9, scope: !415)
!420 = !DILocation(line: 82, column: 8, scope: !406)
!421 = !DILocation(line: 83, column: 5, scope: !415)
!422 = !DILocation(line: 84, column: 3, scope: !406)
!423 = !DILocation(line: 86, column: 35, scope: !424)
!424 = distinct !DILexicalBlock(scope: !406, file: !69, line: 86, column: 8)
!425 = !DILocation(line: 86, column: 42, scope: !424)
!426 = !DILocation(line: 86, column: 48, scope: !424)
!427 = !DILocation(line: 86, column: 65, scope: !424)
!428 = !DILocation(line: 86, column: 9, scope: !424)
!429 = !DILocation(line: 86, column: 8, scope: !406)
!430 = !DILocation(line: 87, column: 5, scope: !424)
!431 = !DILocation(line: 88, column: 3, scope: !406)
!432 = !DILocation(line: 90, column: 35, scope: !433)
!433 = distinct !DILexicalBlock(scope: !406, file: !69, line: 90, column: 8)
!434 = !DILocation(line: 90, column: 42, scope: !433)
!435 = !DILocation(line: 90, column: 48, scope: !433)
!436 = !DILocation(line: 90, column: 65, scope: !433)
!437 = !DILocation(line: 90, column: 9, scope: !433)
!438 = !DILocation(line: 90, column: 8, scope: !406)
!439 = !DILocation(line: 91, column: 5, scope: !433)
!440 = !DILocation(line: 92, column: 3, scope: !406)
!441 = !DILocation(line: 94, column: 35, scope: !442)
!442 = distinct !DILexicalBlock(scope: !406, file: !69, line: 94, column: 8)
!443 = !DILocation(line: 94, column: 42, scope: !442)
!444 = !DILocation(line: 94, column: 48, scope: !442)
!445 = !DILocation(line: 94, column: 65, scope: !442)
!446 = !DILocation(line: 94, column: 9, scope: !442)
!447 = !DILocation(line: 94, column: 8, scope: !406)
!448 = !DILocation(line: 95, column: 5, scope: !442)
!449 = !DILocation(line: 96, column: 3, scope: !406)
!450 = !DILocation(line: 98, column: 35, scope: !451)
!451 = distinct !DILexicalBlock(scope: !406, file: !69, line: 98, column: 8)
!452 = !DILocation(line: 98, column: 42, scope: !451)
!453 = !DILocation(line: 98, column: 48, scope: !451)
!454 = !DILocation(line: 98, column: 65, scope: !451)
!455 = !DILocation(line: 98, column: 9, scope: !451)
!456 = !DILocation(line: 98, column: 8, scope: !406)
!457 = !DILocation(line: 99, column: 5, scope: !451)
!458 = !DILocation(line: 100, column: 3, scope: !406)
!459 = !DILocation(line: 102, column: 35, scope: !460)
!460 = distinct !DILexicalBlock(scope: !406, file: !69, line: 102, column: 8)
!461 = !DILocation(line: 102, column: 42, scope: !460)
!462 = !DILocation(line: 102, column: 48, scope: !460)
!463 = !DILocation(line: 102, column: 65, scope: !460)
!464 = !DILocation(line: 102, column: 9, scope: !460)
!465 = !DILocation(line: 102, column: 8, scope: !406)
!466 = !DILocation(line: 103, column: 5, scope: !460)
!467 = !DILocation(line: 104, column: 3, scope: !406)
!468 = !DILocation(line: 106, column: 35, scope: !469)
!469 = distinct !DILexicalBlock(scope: !406, file: !69, line: 106, column: 8)
!470 = !DILocation(line: 106, column: 42, scope: !469)
!471 = !DILocation(line: 106, column: 48, scope: !469)
!472 = !DILocation(line: 106, column: 65, scope: !469)
!473 = !DILocation(line: 106, column: 9, scope: !469)
!474 = !DILocation(line: 106, column: 8, scope: !406)
!475 = !DILocation(line: 107, column: 5, scope: !469)
!476 = !DILocation(line: 108, column: 3, scope: !406)
!477 = !DILocation(line: 110, column: 35, scope: !478)
!478 = distinct !DILexicalBlock(scope: !406, file: !69, line: 110, column: 8)
!479 = !DILocation(line: 110, column: 42, scope: !478)
!480 = !DILocation(line: 110, column: 48, scope: !478)
!481 = !DILocation(line: 110, column: 65, scope: !478)
!482 = !DILocation(line: 110, column: 9, scope: !478)
!483 = !DILocation(line: 110, column: 8, scope: !406)
!484 = !DILocation(line: 111, column: 5, scope: !478)
!485 = !DILocation(line: 112, column: 3, scope: !406)
!486 = !DILocation(line: 114, column: 35, scope: !487)
!487 = distinct !DILexicalBlock(scope: !406, file: !69, line: 114, column: 8)
!488 = !DILocation(line: 114, column: 42, scope: !487)
!489 = !DILocation(line: 114, column: 48, scope: !487)
!490 = !DILocation(line: 114, column: 65, scope: !487)
!491 = !DILocation(line: 114, column: 9, scope: !487)
!492 = !DILocation(line: 114, column: 8, scope: !406)
!493 = !DILocation(line: 115, column: 5, scope: !487)
!494 = !DILocation(line: 116, column: 3, scope: !406)
!495 = !DILocation(line: 118, column: 35, scope: !496)
!496 = distinct !DILexicalBlock(scope: !406, file: !69, line: 118, column: 8)
!497 = !DILocation(line: 118, column: 42, scope: !496)
!498 = !DILocation(line: 118, column: 48, scope: !496)
!499 = !DILocation(line: 118, column: 65, scope: !496)
!500 = !DILocation(line: 118, column: 9, scope: !496)
!501 = !DILocation(line: 118, column: 8, scope: !406)
!502 = !DILocation(line: 119, column: 5, scope: !496)
!503 = !DILocation(line: 120, column: 3, scope: !406)
!504 = !DILocation(line: 122, column: 35, scope: !505)
!505 = distinct !DILexicalBlock(scope: !406, file: !69, line: 122, column: 8)
!506 = !DILocation(line: 122, column: 42, scope: !505)
!507 = !DILocation(line: 122, column: 48, scope: !505)
!508 = !DILocation(line: 122, column: 65, scope: !505)
!509 = !DILocation(line: 122, column: 9, scope: !505)
!510 = !DILocation(line: 122, column: 8, scope: !406)
!511 = !DILocation(line: 123, column: 5, scope: !505)
!512 = !DILocation(line: 124, column: 3, scope: !406)
!513 = !DILocation(line: 126, column: 35, scope: !514)
!514 = distinct !DILexicalBlock(scope: !406, file: !69, line: 126, column: 8)
!515 = !DILocation(line: 126, column: 42, scope: !514)
!516 = !DILocation(line: 126, column: 48, scope: !514)
!517 = !DILocation(line: 126, column: 65, scope: !514)
!518 = !DILocation(line: 126, column: 9, scope: !514)
!519 = !DILocation(line: 126, column: 8, scope: !406)
!520 = !DILocation(line: 127, column: 5, scope: !514)
!521 = !DILocation(line: 128, column: 3, scope: !406)
!522 = !DILocation(line: 130, column: 35, scope: !523)
!523 = distinct !DILexicalBlock(scope: !406, file: !69, line: 130, column: 8)
!524 = !DILocation(line: 130, column: 42, scope: !523)
!525 = !DILocation(line: 130, column: 48, scope: !523)
!526 = !DILocation(line: 130, column: 65, scope: !523)
!527 = !DILocation(line: 130, column: 9, scope: !523)
!528 = !DILocation(line: 130, column: 8, scope: !406)
!529 = !DILocation(line: 131, column: 5, scope: !523)
!530 = !DILocation(line: 132, column: 3, scope: !406)
!531 = !DILocation(line: 134, column: 35, scope: !532)
!532 = distinct !DILexicalBlock(scope: !406, file: !69, line: 134, column: 8)
!533 = !DILocation(line: 134, column: 42, scope: !532)
!534 = !DILocation(line: 134, column: 48, scope: !532)
!535 = !DILocation(line: 134, column: 65, scope: !532)
!536 = !DILocation(line: 134, column: 9, scope: !532)
!537 = !DILocation(line: 134, column: 8, scope: !406)
!538 = !DILocation(line: 135, column: 5, scope: !532)
!539 = !DILocation(line: 136, column: 3, scope: !406)
!540 = !DILocation(line: 138, column: 35, scope: !541)
!541 = distinct !DILexicalBlock(scope: !406, file: !69, line: 138, column: 8)
!542 = !DILocation(line: 138, column: 42, scope: !541)
!543 = !DILocation(line: 138, column: 48, scope: !541)
!544 = !DILocation(line: 138, column: 65, scope: !541)
!545 = !DILocation(line: 138, column: 9, scope: !541)
!546 = !DILocation(line: 138, column: 8, scope: !406)
!547 = !DILocation(line: 139, column: 5, scope: !541)
!548 = !DILocation(line: 140, column: 3, scope: !406)
!549 = !DILocation(line: 142, column: 35, scope: !550)
!550 = distinct !DILexicalBlock(scope: !406, file: !69, line: 142, column: 8)
!551 = !DILocation(line: 142, column: 42, scope: !550)
!552 = !DILocation(line: 142, column: 48, scope: !550)
!553 = !DILocation(line: 142, column: 65, scope: !550)
!554 = !DILocation(line: 142, column: 9, scope: !550)
!555 = !DILocation(line: 142, column: 8, scope: !406)
!556 = !DILocation(line: 143, column: 5, scope: !550)
!557 = !DILocation(line: 144, column: 3, scope: !406)
!558 = !DILocation(line: 146, column: 31, scope: !559)
!559 = distinct !DILexicalBlock(scope: !406, file: !69, line: 146, column: 8)
!560 = !DILocation(line: 146, column: 38, scope: !559)
!561 = !DILocation(line: 146, column: 44, scope: !559)
!562 = !DILocation(line: 146, column: 61, scope: !559)
!563 = !DILocation(line: 146, column: 9, scope: !559)
!564 = !DILocation(line: 146, column: 8, scope: !406)
!565 = !DILocation(line: 147, column: 5, scope: !559)
!566 = !DILocation(line: 148, column: 3, scope: !406)
!567 = !DILocation(line: 150, column: 35, scope: !568)
!568 = distinct !DILexicalBlock(scope: !406, file: !69, line: 150, column: 8)
!569 = !DILocation(line: 150, column: 42, scope: !568)
!570 = !DILocation(line: 150, column: 48, scope: !568)
!571 = !DILocation(line: 150, column: 65, scope: !568)
!572 = !DILocation(line: 150, column: 9, scope: !568)
!573 = !DILocation(line: 150, column: 8, scope: !406)
!574 = !DILocation(line: 151, column: 5, scope: !568)
!575 = !DILocation(line: 152, column: 3, scope: !406)
!576 = !DILocation(line: 154, column: 35, scope: !577)
!577 = distinct !DILexicalBlock(scope: !406, file: !69, line: 154, column: 8)
!578 = !DILocation(line: 154, column: 42, scope: !577)
!579 = !DILocation(line: 154, column: 48, scope: !577)
!580 = !DILocation(line: 154, column: 65, scope: !577)
!581 = !DILocation(line: 154, column: 9, scope: !577)
!582 = !DILocation(line: 154, column: 8, scope: !406)
!583 = !DILocation(line: 155, column: 5, scope: !577)
!584 = !DILocation(line: 156, column: 3, scope: !406)
!585 = !DILocation(line: 158, column: 35, scope: !586)
!586 = distinct !DILexicalBlock(scope: !406, file: !69, line: 158, column: 8)
!587 = !DILocation(line: 158, column: 42, scope: !586)
!588 = !DILocation(line: 158, column: 48, scope: !586)
!589 = !DILocation(line: 158, column: 65, scope: !586)
!590 = !DILocation(line: 158, column: 9, scope: !586)
!591 = !DILocation(line: 158, column: 8, scope: !406)
!592 = !DILocation(line: 159, column: 5, scope: !586)
!593 = !DILocation(line: 160, column: 3, scope: !406)
!594 = !DILocation(line: 162, column: 35, scope: !595)
!595 = distinct !DILexicalBlock(scope: !406, file: !69, line: 162, column: 8)
!596 = !DILocation(line: 162, column: 42, scope: !595)
!597 = !DILocation(line: 162, column: 48, scope: !595)
!598 = !DILocation(line: 162, column: 65, scope: !595)
!599 = !DILocation(line: 162, column: 9, scope: !595)
!600 = !DILocation(line: 162, column: 8, scope: !406)
!601 = !DILocation(line: 163, column: 5, scope: !595)
!602 = !DILocation(line: 164, column: 3, scope: !406)
!603 = !DILocation(line: 166, column: 35, scope: !604)
!604 = distinct !DILexicalBlock(scope: !406, file: !69, line: 166, column: 8)
!605 = !DILocation(line: 166, column: 42, scope: !604)
!606 = !DILocation(line: 166, column: 48, scope: !604)
!607 = !DILocation(line: 166, column: 65, scope: !604)
!608 = !DILocation(line: 166, column: 9, scope: !604)
!609 = !DILocation(line: 166, column: 8, scope: !406)
!610 = !DILocation(line: 167, column: 5, scope: !604)
!611 = !DILocation(line: 168, column: 3, scope: !406)
!612 = !DILocation(line: 170, column: 35, scope: !613)
!613 = distinct !DILexicalBlock(scope: !406, file: !69, line: 170, column: 8)
!614 = !DILocation(line: 170, column: 42, scope: !613)
!615 = !DILocation(line: 170, column: 48, scope: !613)
!616 = !DILocation(line: 170, column: 65, scope: !613)
!617 = !DILocation(line: 170, column: 9, scope: !613)
!618 = !DILocation(line: 170, column: 8, scope: !406)
!619 = !DILocation(line: 171, column: 5, scope: !613)
!620 = !DILocation(line: 172, column: 3, scope: !406)
!621 = !DILocation(line: 174, column: 35, scope: !622)
!622 = distinct !DILexicalBlock(scope: !406, file: !69, line: 174, column: 8)
!623 = !DILocation(line: 174, column: 42, scope: !622)
!624 = !DILocation(line: 174, column: 48, scope: !622)
!625 = !DILocation(line: 174, column: 65, scope: !622)
!626 = !DILocation(line: 174, column: 9, scope: !622)
!627 = !DILocation(line: 174, column: 8, scope: !406)
!628 = !DILocation(line: 175, column: 5, scope: !622)
!629 = !DILocation(line: 176, column: 3, scope: !406)
!630 = !DILocation(line: 178, column: 35, scope: !631)
!631 = distinct !DILexicalBlock(scope: !406, file: !69, line: 178, column: 8)
!632 = !DILocation(line: 178, column: 42, scope: !631)
!633 = !DILocation(line: 178, column: 48, scope: !631)
!634 = !DILocation(line: 178, column: 65, scope: !631)
!635 = !DILocation(line: 178, column: 9, scope: !631)
!636 = !DILocation(line: 178, column: 8, scope: !406)
!637 = !DILocation(line: 179, column: 5, scope: !631)
!638 = !DILocation(line: 180, column: 3, scope: !406)
!639 = !DILocation(line: 182, column: 35, scope: !640)
!640 = distinct !DILexicalBlock(scope: !406, file: !69, line: 182, column: 8)
!641 = !DILocation(line: 182, column: 42, scope: !640)
!642 = !DILocation(line: 182, column: 48, scope: !640)
!643 = !DILocation(line: 182, column: 65, scope: !640)
!644 = !DILocation(line: 182, column: 9, scope: !640)
!645 = !DILocation(line: 182, column: 8, scope: !406)
!646 = !DILocation(line: 183, column: 5, scope: !640)
!647 = !DILocation(line: 184, column: 3, scope: !406)
!648 = !DILocation(line: 186, column: 35, scope: !649)
!649 = distinct !DILexicalBlock(scope: !406, file: !69, line: 186, column: 8)
!650 = !DILocation(line: 186, column: 42, scope: !649)
!651 = !DILocation(line: 186, column: 48, scope: !649)
!652 = !DILocation(line: 186, column: 65, scope: !649)
!653 = !DILocation(line: 186, column: 9, scope: !649)
!654 = !DILocation(line: 186, column: 8, scope: !406)
!655 = !DILocation(line: 187, column: 5, scope: !649)
!656 = !DILocation(line: 188, column: 3, scope: !406)
!657 = !DILocation(line: 190, column: 35, scope: !658)
!658 = distinct !DILexicalBlock(scope: !406, file: !69, line: 190, column: 8)
!659 = !DILocation(line: 190, column: 42, scope: !658)
!660 = !DILocation(line: 190, column: 48, scope: !658)
!661 = !DILocation(line: 190, column: 65, scope: !658)
!662 = !DILocation(line: 190, column: 9, scope: !658)
!663 = !DILocation(line: 190, column: 8, scope: !406)
!664 = !DILocation(line: 191, column: 5, scope: !658)
!665 = !DILocation(line: 192, column: 3, scope: !406)
!666 = !DILocation(line: 194, column: 35, scope: !667)
!667 = distinct !DILexicalBlock(scope: !406, file: !69, line: 194, column: 8)
!668 = !DILocation(line: 194, column: 42, scope: !667)
!669 = !DILocation(line: 194, column: 48, scope: !667)
!670 = !DILocation(line: 194, column: 65, scope: !667)
!671 = !DILocation(line: 194, column: 9, scope: !667)
!672 = !DILocation(line: 194, column: 8, scope: !406)
!673 = !DILocation(line: 195, column: 5, scope: !667)
!674 = !DILocation(line: 196, column: 3, scope: !406)
!675 = !DILocation(line: 198, column: 35, scope: !676)
!676 = distinct !DILexicalBlock(scope: !406, file: !69, line: 198, column: 8)
!677 = !DILocation(line: 198, column: 42, scope: !676)
!678 = !DILocation(line: 198, column: 48, scope: !676)
!679 = !DILocation(line: 198, column: 65, scope: !676)
!680 = !DILocation(line: 198, column: 9, scope: !676)
!681 = !DILocation(line: 198, column: 8, scope: !406)
!682 = !DILocation(line: 199, column: 5, scope: !676)
!683 = !DILocation(line: 200, column: 3, scope: !406)
!684 = !DILocation(line: 202, column: 35, scope: !685)
!685 = distinct !DILexicalBlock(scope: !406, file: !69, line: 202, column: 8)
!686 = !DILocation(line: 202, column: 42, scope: !685)
!687 = !DILocation(line: 202, column: 48, scope: !685)
!688 = !DILocation(line: 202, column: 65, scope: !685)
!689 = !DILocation(line: 202, column: 9, scope: !685)
!690 = !DILocation(line: 202, column: 8, scope: !406)
!691 = !DILocation(line: 203, column: 5, scope: !685)
!692 = !DILocation(line: 204, column: 3, scope: !406)
!693 = !DILocation(line: 206, column: 35, scope: !694)
!694 = distinct !DILexicalBlock(scope: !406, file: !69, line: 206, column: 8)
!695 = !DILocation(line: 206, column: 42, scope: !694)
!696 = !DILocation(line: 206, column: 48, scope: !694)
!697 = !DILocation(line: 206, column: 65, scope: !694)
!698 = !DILocation(line: 206, column: 9, scope: !694)
!699 = !DILocation(line: 206, column: 8, scope: !406)
!700 = !DILocation(line: 207, column: 5, scope: !694)
!701 = !DILocation(line: 208, column: 3, scope: !406)
!702 = !DILocation(line: 210, column: 35, scope: !703)
!703 = distinct !DILexicalBlock(scope: !406, file: !69, line: 210, column: 8)
!704 = !DILocation(line: 210, column: 42, scope: !703)
!705 = !DILocation(line: 210, column: 48, scope: !703)
!706 = !DILocation(line: 210, column: 65, scope: !703)
!707 = !DILocation(line: 210, column: 9, scope: !703)
!708 = !DILocation(line: 210, column: 8, scope: !406)
!709 = !DILocation(line: 211, column: 5, scope: !703)
!710 = !DILocation(line: 212, column: 3, scope: !406)
!711 = !DILocation(line: 214, column: 35, scope: !712)
!712 = distinct !DILexicalBlock(scope: !406, file: !69, line: 214, column: 8)
!713 = !DILocation(line: 214, column: 42, scope: !712)
!714 = !DILocation(line: 214, column: 48, scope: !712)
!715 = !DILocation(line: 214, column: 65, scope: !712)
!716 = !DILocation(line: 214, column: 9, scope: !712)
!717 = !DILocation(line: 214, column: 8, scope: !406)
!718 = !DILocation(line: 215, column: 5, scope: !712)
!719 = !DILocation(line: 216, column: 3, scope: !406)
!720 = !DILocation(line: 218, column: 35, scope: !721)
!721 = distinct !DILexicalBlock(scope: !406, file: !69, line: 218, column: 8)
!722 = !DILocation(line: 218, column: 42, scope: !721)
!723 = !DILocation(line: 218, column: 48, scope: !721)
!724 = !DILocation(line: 218, column: 65, scope: !721)
!725 = !DILocation(line: 218, column: 9, scope: !721)
!726 = !DILocation(line: 218, column: 8, scope: !406)
!727 = !DILocation(line: 219, column: 5, scope: !721)
!728 = !DILocation(line: 220, column: 3, scope: !406)
!729 = !DILocation(line: 222, column: 34, scope: !730)
!730 = distinct !DILexicalBlock(scope: !406, file: !69, line: 222, column: 8)
!731 = !DILocation(line: 222, column: 41, scope: !730)
!732 = !DILocation(line: 222, column: 47, scope: !730)
!733 = !DILocation(line: 222, column: 64, scope: !730)
!734 = !DILocation(line: 222, column: 9, scope: !730)
!735 = !DILocation(line: 222, column: 8, scope: !406)
!736 = !DILocation(line: 223, column: 5, scope: !730)
!737 = !DILocation(line: 224, column: 3, scope: !406)
!738 = !DILocation(line: 226, column: 3, scope: !406)
!739 = !DILocation(line: 228, column: 2, scope: !342)
!740 = !DILocation(line: 229, column: 1, scope: !342)
