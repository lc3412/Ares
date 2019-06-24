; ModuleID = './util.o.i'
source_filename = "./util.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UtilVector = type { i8*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }

@Util_Data2Buffer.digits = internal constant [17 x i8] c"0123456789ABCDEF\00", align 16
@.str = private unnamed_addr constant [15 x i8] c"%d.%d.%d.%d.%d\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"invalid use of function\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"%s%s%s.%s\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@UtilCRCUpdate.crcTable = internal global [256 x i32] zeroinitializer, align 16
@UtilCRCUpdate.crcTableComputed = internal global i32 0, align 4

; Function Attrs: nounwind uwtable
define signext i8 @Util_Init() #0 !dbg !58 {
  ret i8 1, !dbg !61
}

; Function Attrs: nounwind uwtable
define i32 @Util_Checksum32(i32*, i32) #0 !dbg !62 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  call void @llvm.dbg.declare(metadata i32** %3, metadata !67, metadata !68), !dbg !69
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !70, metadata !68), !dbg !71
  call void @llvm.dbg.declare(metadata i32* %5, metadata !72, metadata !68), !dbg !73
  store i32 0, i32* %5, align 4, !dbg !73
  call void @llvm.dbg.declare(metadata i32* %6, metadata !74, metadata !68), !dbg !75
  store i32 0, i32* %6, align 4, !dbg !76
  br label %7, !dbg !78

; <label>:7:                                      ; preds = %17, %2
  %8 = load i32, i32* %6, align 4, !dbg !79
  %9 = load i32, i32* %4, align 4, !dbg !82
  %10 = icmp slt i32 %8, %9, !dbg !83
  br i1 %10, label %11, label %20, !dbg !84

; <label>:11:                                     ; preds = %7
  %12 = load i32*, i32** %3, align 8, !dbg !85
  %13 = getelementptr inbounds i32, i32* %12, i32 1, !dbg !85
  store i32* %13, i32** %3, align 8, !dbg !85
  %14 = load i32, i32* %12, align 4, !dbg !87
  %15 = load i32, i32* %5, align 4, !dbg !88
  %16 = xor i32 %15, %14, !dbg !88
  store i32 %16, i32* %5, align 4, !dbg !88
  br label %17, !dbg !89

; <label>:17:                                     ; preds = %11
  %18 = load i32, i32* %6, align 4, !dbg !90
  %19 = add nsw i32 %18, 4, !dbg !90
  store i32 %19, i32* %6, align 4, !dbg !90
  br label %7, !dbg !92, !llvm.loop !93

; <label>:20:                                     ; preds = %7
  %21 = load i32, i32* %5, align 4, !dbg !95
  ret i32 %21, !dbg !96
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @Util_Checksum(i8*, i32) #0 !dbg !97 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !100, metadata !68), !dbg !101
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !102, metadata !68), !dbg !103
  call void @llvm.dbg.declare(metadata i32* %5, metadata !104, metadata !68), !dbg !105
  call void @llvm.dbg.declare(metadata i32* %6, metadata !106, metadata !68), !dbg !107
  call void @llvm.dbg.declare(metadata i32* %7, metadata !108, metadata !68), !dbg !109
  %8 = load i32, i32* %4, align 4, !dbg !110
  %9 = srem i32 %8, 4, !dbg !111
  store i32 %9, i32* %6, align 4, !dbg !112
  %10 = load i32, i32* %6, align 4, !dbg !113
  %11 = load i32, i32* %4, align 4, !dbg !114
  %12 = sub nsw i32 %11, %10, !dbg !114
  store i32 %12, i32* %4, align 4, !dbg !114
  %13 = load i8*, i8** %3, align 8, !dbg !115
  %14 = bitcast i8* %13 to i32*, !dbg !116
  %15 = load i32, i32* %4, align 4, !dbg !117
  %16 = call i32 @Util_Checksum32(i32* %14, i32 %15), !dbg !118
  store i32 %16, i32* %5, align 4, !dbg !119
  %17 = load i32, i32* %4, align 4, !dbg !120
  %18 = load i8*, i8** %3, align 8, !dbg !121
  %19 = sext i32 %17 to i64, !dbg !121
  %20 = getelementptr inbounds i8, i8* %18, i64 %19, !dbg !121
  store i8* %20, i8** %3, align 8, !dbg !121
  store i32 0, i32* %7, align 4, !dbg !122
  br label %21, !dbg !123

; <label>:21:                                     ; preds = %25, %2
  %22 = load i32, i32* %6, align 4, !dbg !124
  %23 = add nsw i32 %22, -1, !dbg !124
  store i32 %23, i32* %6, align 4, !dbg !124
  %24 = icmp ne i32 %22, 0, !dbg !126
  br i1 %24, label %25, label %36, !dbg !126

; <label>:25:                                     ; preds = %21
  %26 = load i8*, i8** %3, align 8, !dbg !127
  %27 = getelementptr inbounds i8, i8* %26, i32 1, !dbg !127
  store i8* %27, i8** %3, align 8, !dbg !127
  %28 = load i8, i8* %26, align 1, !dbg !129
  %29 = zext i8 %28 to i32, !dbg !129
  %30 = load i32, i32* %7, align 4, !dbg !130
  %31 = shl i32 %29, %30, !dbg !131
  %32 = load i32, i32* %5, align 4, !dbg !132
  %33 = xor i32 %32, %31, !dbg !132
  store i32 %33, i32* %5, align 4, !dbg !132
  %34 = load i32, i32* %7, align 4, !dbg !133
  %35 = add nsw i32 %34, 8, !dbg !133
  store i32 %35, i32* %7, align 4, !dbg !133
  br label %21, !dbg !134, !llvm.loop !136

; <label>:36:                                     ; preds = %21
  %37 = load i32, i32* %5, align 4, !dbg !137
  ret i32 %37, !dbg !138
}

; Function Attrs: nounwind uwtable
define i32 @Util_Checksumv(i8*, i32) #0 !dbg !139 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.UtilVector*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !142, metadata !68), !dbg !143
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !144, metadata !68), !dbg !145
  call void @llvm.dbg.declare(metadata i32* %5, metadata !146, metadata !68), !dbg !147
  store i32 0, i32* %5, align 4, !dbg !147
  call void @llvm.dbg.declare(metadata %struct.UtilVector** %6, metadata !148, metadata !68), !dbg !149
  %10 = load i8*, i8** %3, align 8, !dbg !150
  %11 = bitcast i8* %10 to %struct.UtilVector*, !dbg !151
  store %struct.UtilVector* %11, %struct.UtilVector** %6, align 8, !dbg !149
  call void @llvm.dbg.declare(metadata i32* %7, metadata !152, metadata !68), !dbg !153
  call void @llvm.dbg.declare(metadata i32* %8, metadata !154, metadata !68), !dbg !155
  store i32 0, i32* %8, align 4, !dbg !155
  call void @llvm.dbg.declare(metadata i32* %9, metadata !156, metadata !68), !dbg !157
  br label %12, !dbg !158

; <label>:12:                                     ; preds = %16, %2
  %13 = load i32, i32* %4, align 4, !dbg !159
  %14 = add nsw i32 %13, -1, !dbg !159
  store i32 %14, i32* %4, align 4, !dbg !159
  %15 = icmp sgt i32 %13, 0, !dbg !161
  br i1 %15, label %16, label %44, !dbg !162

; <label>:16:                                     ; preds = %12
  %17 = load %struct.UtilVector*, %struct.UtilVector** %6, align 8, !dbg !163
  %18 = getelementptr inbounds %struct.UtilVector, %struct.UtilVector* %17, i32 0, i32 0, !dbg !165
  %19 = load i8*, i8** %18, align 8, !dbg !165
  %20 = load %struct.UtilVector*, %struct.UtilVector** %6, align 8, !dbg !166
  %21 = getelementptr inbounds %struct.UtilVector, %struct.UtilVector* %20, i32 0, i32 1, !dbg !167
  %22 = load i32, i32* %21, align 8, !dbg !167
  %23 = call i32 @Util_Checksum(i8* %19, i32 %22), !dbg !168
  store i32 %23, i32* %7, align 4, !dbg !169
  %24 = load i32, i32* %8, align 4, !dbg !170
  %25 = and i32 %24, 3, !dbg !171
  %26 = mul nsw i32 %25, 8, !dbg !172
  store i32 %26, i32* %9, align 4, !dbg !173
  %27 = load i32, i32* %7, align 4, !dbg !174
  %28 = load i32, i32* %9, align 4, !dbg !175
  %29 = shl i32 %27, %28, !dbg !176
  %30 = load i32, i32* %7, align 4, !dbg !177
  %31 = load i32, i32* %9, align 4, !dbg !178
  %32 = sub nsw i32 32, %31, !dbg !179
  %33 = lshr i32 %30, %32, !dbg !180
  %34 = or i32 %29, %33, !dbg !181
  %35 = load i32, i32* %5, align 4, !dbg !182
  %36 = xor i32 %35, %34, !dbg !182
  store i32 %36, i32* %5, align 4, !dbg !182
  %37 = load %struct.UtilVector*, %struct.UtilVector** %6, align 8, !dbg !183
  %38 = getelementptr inbounds %struct.UtilVector, %struct.UtilVector* %37, i32 0, i32 1, !dbg !184
  %39 = load i32, i32* %38, align 8, !dbg !184
  %40 = load i32, i32* %8, align 4, !dbg !185
  %41 = add nsw i32 %40, %39, !dbg !185
  store i32 %41, i32* %8, align 4, !dbg !185
  %42 = load %struct.UtilVector*, %struct.UtilVector** %6, align 8, !dbg !186
  %43 = getelementptr inbounds %struct.UtilVector, %struct.UtilVector* %42, i32 1, !dbg !186
  store %struct.UtilVector* %43, %struct.UtilVector** %6, align 8, !dbg !186
  br label %12, !dbg !187, !llvm.loop !189

; <label>:44:                                     ; preds = %12
  %45 = load i32, i32* %5, align 4, !dbg !190
  ret i32 %45, !dbg !191
}

; Function Attrs: nounwind uwtable
define i32 @Util_HashString(i8*) #0 !dbg !192 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !196, metadata !68), !dbg !197
  call void @llvm.dbg.declare(metadata i32* %3, metadata !198, metadata !68), !dbg !199
  store i32 5381, i32* %3, align 4, !dbg !199
  call void @llvm.dbg.declare(metadata i32* %4, metadata !200, metadata !68), !dbg !201
  br label %5, !dbg !202

; <label>:5:                                      ; preds = %11, %1
  %6 = load i8*, i8** %2, align 8, !dbg !203
  %7 = getelementptr inbounds i8, i8* %6, i32 1, !dbg !203
  store i8* %7, i8** %2, align 8, !dbg !203
  %8 = load i8, i8* %6, align 1, !dbg !205
  %9 = sext i8 %8 to i32, !dbg !205
  store i32 %9, i32* %4, align 4, !dbg !206
  %10 = icmp ne i32 %9, 0, !dbg !207
  br i1 %10, label %11, label %18, !dbg !208

; <label>:11:                                     ; preds = %5
  %12 = load i32, i32* %3, align 4, !dbg !209
  %13 = shl i32 %12, 5, !dbg !211
  %14 = load i32, i32* %3, align 4, !dbg !212
  %15 = add i32 %13, %14, !dbg !213
  %16 = load i32, i32* %4, align 4, !dbg !214
  %17 = add i32 %15, %16, !dbg !215
  store i32 %17, i32* %3, align 4, !dbg !216
  br label %5, !dbg !217, !llvm.loop !219

; <label>:18:                                     ; preds = %5
  %19 = load i32, i32* %3, align 4, !dbg !220
  ret i32 %19, !dbg !221
}

; Function Attrs: nounwind uwtable
define i32 @CRC_Compute(i8*, i32) #0 !dbg !222 {
  %3 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !223, metadata !68), !dbg !224
  %4 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !226, metadata !68), !dbg !227
  %5 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !228, metadata !68), !dbg !229
  %6 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !230, metadata !68), !dbg !231
  %7 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !232, metadata !68), !dbg !233
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !234, metadata !68), !dbg !235
  store i32 %1, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !236, metadata !68), !dbg !237
  %10 = load i8*, i8** %8, align 8, !dbg !238
  %11 = load i32, i32* %9, align 4, !dbg !239
  store i32 -1, i32* %3, align 4, !dbg !240
  store i8* %10, i8** %4, align 8, !dbg !240
  store i32 %11, i32* %5, align 4, !dbg !240
  %12 = load i32, i32* %3, align 4, !dbg !241
  store i32 %12, i32* %6, align 4, !dbg !231
  %13 = load i32, i32* @UtilCRCUpdate.crcTableComputed, align 4, !dbg !242
  %14 = icmp ne i32 %13, 0, !dbg !242
  br i1 %14, label %16, label %15, !dbg !244

; <label>:15:                                     ; preds = %2
  call void @UtilCRCMakeTable(i32* getelementptr inbounds ([256 x i32], [256 x i32]* @UtilCRCUpdate.crcTable, i32 0, i32 0)) #10, !dbg !245
  store i32 1, i32* @UtilCRCUpdate.crcTableComputed, align 4, !dbg !247
  br label %16, !dbg !248

; <label>:16:                                     ; preds = %15, %2
  store i32 0, i32* %7, align 4, !dbg !249
  br label %17, !dbg !251

; <label>:17:                                     ; preds = %21, %16
  %18 = load i32, i32* %7, align 4, !dbg !252
  %19 = load i32, i32* %5, align 4, !dbg !255
  %20 = icmp slt i32 %18, %19, !dbg !256
  br i1 %20, label %21, label %39, !dbg !257

; <label>:21:                                     ; preds = %17
  %22 = load i32, i32* %6, align 4, !dbg !258
  %23 = load i32, i32* %7, align 4, !dbg !260
  %24 = sext i32 %23 to i64, !dbg !261
  %25 = load i8*, i8** %4, align 8, !dbg !261
  %26 = getelementptr inbounds i8, i8* %25, i64 %24, !dbg !261
  %27 = load i8, i8* %26, align 1, !dbg !261
  %28 = zext i8 %27 to i32, !dbg !261
  %29 = xor i32 %22, %28, !dbg !262
  %30 = and i32 %29, 255, !dbg !263
  %31 = zext i32 %30 to i64, !dbg !264
  %32 = getelementptr inbounds [256 x i32], [256 x i32]* @UtilCRCUpdate.crcTable, i64 0, i64 %31, !dbg !264
  %33 = load i32, i32* %32, align 4, !dbg !264
  %34 = load i32, i32* %6, align 4, !dbg !265
  %35 = lshr i32 %34, 8, !dbg !266
  %36 = xor i32 %33, %35, !dbg !267
  store i32 %36, i32* %6, align 4, !dbg !268
  %37 = load i32, i32* %7, align 4, !dbg !269
  %38 = add nsw i32 %37, 1, !dbg !269
  store i32 %38, i32* %7, align 4, !dbg !269
  br label %17, !dbg !271, !llvm.loop !272

; <label>:39:                                     ; preds = %17
  %40 = load i32, i32* %6, align 4, !dbg !274
  %41 = zext i32 %40 to i64, !dbg !240
  %42 = xor i64 %41, 4294967295, !dbg !275
  %43 = trunc i64 %42 to i32, !dbg !240
  ret i32 %43, !dbg !276
}

; Function Attrs: nounwind uwtable
define i32 @Util_FastRand(i32) #0 !dbg !277 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !280, metadata !68), !dbg !281
  %3 = load i32, i32* %2, align 4, !dbg !282
  %4 = call i32 @Random_Simple(i32 %3), !dbg !283
  ret i32 %4, !dbg !284
}

declare i32 @Random_Simple(i32) #2

; Function Attrs: nounwind uwtable
define signext i8 @Util_Throttle(i32) #0 !dbg !285 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !288, metadata !68), !dbg !289
  %3 = load i32, i32* %2, align 4, !dbg !290
  %4 = icmp ult i32 %3, 100, !dbg !291
  br i1 %4, label %23, label %5, !dbg !292

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !293
  %7 = icmp ult i32 %6, 10000, !dbg !294
  br i1 %7, label %8, label %12, !dbg !295

; <label>:8:                                      ; preds = %5
  %9 = load i32, i32* %2, align 4, !dbg !296
  %10 = urem i32 %9, 100, !dbg !298
  %11 = icmp eq i32 %10, 0, !dbg !299
  br i1 %11, label %23, label %12, !dbg !300

; <label>:12:                                     ; preds = %8, %5
  %13 = load i32, i32* %2, align 4, !dbg !301
  %14 = icmp ult i32 %13, 1000000, !dbg !302
  br i1 %14, label %15, label %19, !dbg !303

; <label>:15:                                     ; preds = %12
  %16 = load i32, i32* %2, align 4, !dbg !304
  %17 = urem i32 %16, 10000, !dbg !305
  %18 = icmp eq i32 %17, 0, !dbg !306
  br i1 %18, label %23, label %19, !dbg !307

; <label>:19:                                     ; preds = %15, %12
  %20 = load i32, i32* %2, align 4, !dbg !308
  %21 = urem i32 %20, 1000000, !dbg !309
  %22 = icmp eq i32 %21, 0, !dbg !310
  br label %23, !dbg !311

; <label>:23:                                     ; preds = %19, %15, %8, %1
  %24 = phi i1 [ true, %15 ], [ true, %8 ], [ true, %1 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32, !dbg !313
  %26 = trunc i32 %25 to i8, !dbg !315
  ret i8 %26, !dbg !316
}

; Function Attrs: nounwind uwtable
define signext i8 @Util_Data2Buffer(i8*, i64, i8*, i64) #0 !dbg !27 {
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !317, metadata !68), !dbg !318
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !319, metadata !68), !dbg !320
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !321, metadata !68), !dbg !322
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !323, metadata !68), !dbg !324
  call void @llvm.dbg.declare(metadata i64* %10, metadata !325, metadata !68), !dbg !326
  %12 = load i64, i64* %7, align 8, !dbg !327
  %13 = icmp ne i64 %12, 0, !dbg !327
  br i1 %13, label %15, label %14, !dbg !329

; <label>:14:                                     ; preds = %4
  store i8 0, i8* %5, align 1, !dbg !330
  br label %69, !dbg !330

; <label>:15:                                     ; preds = %4
  %16 = load i64, i64* %7, align 8, !dbg !332
  %17 = udiv i64 %16, 3, !dbg !333
  store i64 %17, i64* %7, align 8, !dbg !334
  %18 = load i64, i64* %9, align 8, !dbg !335
  %19 = load i64, i64* %7, align 8, !dbg !336
  %20 = icmp ult i64 %18, %19, !dbg !337
  br i1 %20, label %21, label %23, !dbg !338

; <label>:21:                                     ; preds = %15
  %22 = load i64, i64* %9, align 8, !dbg !339
  br label %25, !dbg !341

; <label>:23:                                     ; preds = %15
  %24 = load i64, i64* %7, align 8, !dbg !342
  br label %25, !dbg !344

; <label>:25:                                     ; preds = %23, %21
  %26 = phi i64 [ %22, %21 ], [ %24, %23 ], !dbg !345
  store i64 %26, i64* %10, align 8, !dbg !347
  %27 = load i64, i64* %10, align 8, !dbg !348
  %28 = icmp ne i64 %27, 0, !dbg !350
  br i1 %28, label %29, label %62, !dbg !351

; <label>:29:                                     ; preds = %25
  call void @llvm.dbg.declare(metadata i8** %11, metadata !352, metadata !68), !dbg !354
  %30 = load i8*, i8** %8, align 8, !dbg !355
  store i8* %30, i8** %11, align 8, !dbg !354
  br label %31, !dbg !356

; <label>:31:                                     ; preds = %34, %29
  %32 = load i64, i64* %10, align 8, !dbg !357
  %33 = icmp ugt i64 %32, 0, !dbg !359
  br i1 %33, label %34, label %59, !dbg !360

; <label>:34:                                     ; preds = %31
  %35 = load i8*, i8** %11, align 8, !dbg !361
  %36 = load i8, i8* %35, align 1, !dbg !363
  %37 = zext i8 %36 to i32, !dbg !363
  %38 = ashr i32 %37, 4, !dbg !364
  %39 = sext i32 %38 to i64, !dbg !365
  %40 = getelementptr inbounds [17 x i8], [17 x i8]* @Util_Data2Buffer.digits, i64 0, i64 %39, !dbg !365
  %41 = load i8, i8* %40, align 1, !dbg !365
  %42 = load i8*, i8** %6, align 8, !dbg !366
  %43 = getelementptr inbounds i8, i8* %42, i32 1, !dbg !366
  store i8* %43, i8** %6, align 8, !dbg !366
  store i8 %41, i8* %42, align 1, !dbg !367
  %44 = load i8*, i8** %11, align 8, !dbg !368
  %45 = load i8, i8* %44, align 1, !dbg !369
  %46 = zext i8 %45 to i32, !dbg !369
  %47 = and i32 %46, 15, !dbg !370
  %48 = sext i32 %47 to i64, !dbg !371
  %49 = getelementptr inbounds [17 x i8], [17 x i8]* @Util_Data2Buffer.digits, i64 0, i64 %48, !dbg !371
  %50 = load i8, i8* %49, align 1, !dbg !371
  %51 = load i8*, i8** %6, align 8, !dbg !372
  %52 = getelementptr inbounds i8, i8* %51, i32 1, !dbg !372
  store i8* %52, i8** %6, align 8, !dbg !372
  store i8 %50, i8* %51, align 1, !dbg !373
  %53 = load i8*, i8** %6, align 8, !dbg !374
  %54 = getelementptr inbounds i8, i8* %53, i32 1, !dbg !374
  store i8* %54, i8** %6, align 8, !dbg !374
  store i8 32, i8* %53, align 1, !dbg !375
  %55 = load i8*, i8** %11, align 8, !dbg !376
  %56 = getelementptr inbounds i8, i8* %55, i32 1, !dbg !376
  store i8* %56, i8** %11, align 8, !dbg !376
  %57 = load i64, i64* %10, align 8, !dbg !377
  %58 = add i64 %57, -1, !dbg !377
  store i64 %58, i64* %10, align 8, !dbg !377
  br label %31, !dbg !378, !llvm.loop !380

; <label>:59:                                     ; preds = %31
  %60 = load i8*, i8** %6, align 8, !dbg !381
  %61 = getelementptr inbounds i8, i8* %60, i32 -1, !dbg !381
  store i8* %61, i8** %6, align 8, !dbg !381
  br label %62, !dbg !382

; <label>:62:                                     ; preds = %59, %25
  %63 = load i8*, i8** %6, align 8, !dbg !383
  store i8 0, i8* %63, align 1, !dbg !384
  %64 = load i64, i64* %9, align 8, !dbg !385
  %65 = load i64, i64* %7, align 8, !dbg !386
  %66 = icmp ule i64 %64, %65, !dbg !387
  %67 = zext i1 %66 to i32, !dbg !387
  %68 = trunc i32 %67 to i8, !dbg !385
  store i8 %68, i8* %5, align 1, !dbg !388
  br label %69, !dbg !388

; <label>:69:                                     ; preds = %62, %14
  %70 = load i8, i8* %5, align 1, !dbg !389
  ret i8 %70, !dbg !389
}

; Function Attrs: noreturn nounwind uwtable
define void @Util_ExitProcessAbruptly(i32) #3 !dbg !390 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !393, metadata !68), !dbg !394
  %3 = load i32, i32* %2, align 4, !dbg !395
  call void @_exit(i32 %3) #11, !dbg !396
  unreachable, !dbg !396
                                                  ; No predecessors!
  ret void, !dbg !397
}

; Function Attrs: noreturn
declare void @_exit(i32) #4

; Function Attrs: nounwind uwtable
define void @Util_ExitThread(i32) #0 !dbg !398 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !399, metadata !68), !dbg !400
  %3 = load i32, i32* %2, align 4, !dbg !401
  call void @exit(i32 %3) #12, !dbg !402
  unreachable, !dbg !402
                                                  ; No predecessors!
  ret void, !dbg !403
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

; Function Attrs: nounwind uwtable
define i32 @Util_CompareDotted(i8*, i8*) #0 !dbg !404 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [5 x i32], align 16
  %8 = alloca [5 x i32], align 16
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !407, metadata !68), !dbg !408
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !409, metadata !68), !dbg !410
  call void @llvm.dbg.declare(metadata i32* %6, metadata !411, metadata !68), !dbg !412
  call void @llvm.dbg.declare(metadata [5 x i32]* %7, metadata !413, metadata !68), !dbg !417
  call void @llvm.dbg.declare(metadata [5 x i32]* %8, metadata !418, metadata !68), !dbg !419
  store i32 0, i32* %6, align 4, !dbg !420
  br label %9, !dbg !422

; <label>:9:                                      ; preds = %19, %2
  %10 = load i32, i32* %6, align 4, !dbg !423
  %11 = icmp slt i32 %10, 5, !dbg !426
  br i1 %11, label %12, label %22, !dbg !427

; <label>:12:                                     ; preds = %9
  %13 = load i32, i32* %6, align 4, !dbg !428
  %14 = sext i32 %13 to i64, !dbg !430
  %15 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 %14, !dbg !430
  store i32 0, i32* %15, align 4, !dbg !431
  %16 = load i32, i32* %6, align 4, !dbg !432
  %17 = sext i32 %16 to i64, !dbg !433
  %18 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 %17, !dbg !433
  store i32 0, i32* %18, align 4, !dbg !434
  br label %19, !dbg !435

; <label>:19:                                     ; preds = %12
  %20 = load i32, i32* %6, align 4, !dbg !436
  %21 = add nsw i32 %20, 1, !dbg !436
  store i32 %21, i32* %6, align 4, !dbg !436
  br label %9, !dbg !438, !llvm.loop !439

; <label>:22:                                     ; preds = %9
  %23 = load i8*, i8** %4, align 8, !dbg !441
  %24 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0, !dbg !443
  %25 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 1, !dbg !444
  %26 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 2, !dbg !445
  %27 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 3, !dbg !446
  %28 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 4, !dbg !447
  %29 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32* %24, i32* %25, i32* %26, i32* %27, i32* %28) #10, !dbg !448
  %30 = icmp slt i32 %29, 1, !dbg !449
  br i1 %30, label %31, label %33, !dbg !450

; <label>:31:                                     ; preds = %22
  %32 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0, !dbg !451
  store i32 1, i32* %32, align 16, !dbg !453
  br label %33, !dbg !454

; <label>:33:                                     ; preds = %31, %22
  %34 = load i8*, i8** %5, align 8, !dbg !455
  %35 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 0, !dbg !457
  %36 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 1, !dbg !458
  %37 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 2, !dbg !459
  %38 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 3, !dbg !460
  %39 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 4, !dbg !461
  %40 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32* %35, i32* %36, i32* %37, i32* %38, i32* %39) #10, !dbg !462
  %41 = icmp slt i32 %40, 1, !dbg !463
  br i1 %41, label %42, label %44, !dbg !464

; <label>:42:                                     ; preds = %33
  %43 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 0, !dbg !465
  store i32 1, i32* %43, align 16, !dbg !467
  br label %44, !dbg !468

; <label>:44:                                     ; preds = %42, %33
  store i32 0, i32* %6, align 4, !dbg !469
  br label %45, !dbg !471

; <label>:45:                                     ; preds = %71, %44
  %46 = load i32, i32* %6, align 4, !dbg !472
  %47 = icmp slt i32 %46, 5, !dbg !475
  br i1 %47, label %48, label %74, !dbg !476

; <label>:48:                                     ; preds = %45
  %49 = load i32, i32* %6, align 4, !dbg !477
  %50 = sext i32 %49 to i64, !dbg !480
  %51 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 %50, !dbg !480
  %52 = load i32, i32* %51, align 4, !dbg !480
  %53 = load i32, i32* %6, align 4, !dbg !481
  %54 = sext i32 %53 to i64, !dbg !482
  %55 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 %54, !dbg !482
  %56 = load i32, i32* %55, align 4, !dbg !482
  %57 = icmp slt i32 %52, %56, !dbg !483
  br i1 %57, label %58, label %59, !dbg !484

; <label>:58:                                     ; preds = %48
  store i32 -1, i32* %3, align 4, !dbg !485
  br label %75, !dbg !485

; <label>:59:                                     ; preds = %48
  %60 = load i32, i32* %6, align 4, !dbg !487
  %61 = sext i32 %60 to i64, !dbg !489
  %62 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 %61, !dbg !489
  %63 = load i32, i32* %62, align 4, !dbg !489
  %64 = load i32, i32* %6, align 4, !dbg !490
  %65 = sext i32 %64 to i64, !dbg !491
  %66 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 %65, !dbg !491
  %67 = load i32, i32* %66, align 4, !dbg !491
  %68 = icmp sgt i32 %63, %67, !dbg !492
  br i1 %68, label %69, label %70, !dbg !493

; <label>:69:                                     ; preds = %59
  store i32 1, i32* %3, align 4, !dbg !494
  br label %75, !dbg !494

; <label>:70:                                     ; preds = %59
  br label %71, !dbg !496

; <label>:71:                                     ; preds = %70
  %72 = load i32, i32* %6, align 4, !dbg !497
  %73 = add nsw i32 %72, 1, !dbg !497
  store i32 %73, i32* %6, align 4, !dbg !497
  br label %45, !dbg !499, !llvm.loop !500

; <label>:74:                                     ; preds = %45
  store i32 0, i32* %3, align 4, !dbg !502
  br label %75, !dbg !502

; <label>:75:                                     ; preds = %74, %69, %58
  %76 = load i32, i32* %3, align 4, !dbg !503
  ret i32 %76, !dbg !503
}

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #6

; Function Attrs: nounwind uwtable
define i32 @Util_GetOpt(i32, i8**, %struct.option*, i32, i8 signext) #0 !dbg !504 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.option*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca %struct.option*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.option, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.option*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !520, metadata !68), !dbg !521
  store i8** %1, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !522, metadata !68), !dbg !523
  store %struct.option* %2, %struct.option** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.option** %8, metadata !524, metadata !68), !dbg !525
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !526, metadata !68), !dbg !527
  store i8 %4, i8* %10, align 1
  call void @llvm.dbg.declare(metadata i8* %10, metadata !528, metadata !68), !dbg !529
  call void @llvm.dbg.declare(metadata i32* %11, metadata !530, metadata !68), !dbg !531
  store i32 -1, i32* %11, align 4, !dbg !531
  call void @llvm.dbg.declare(metadata %struct.option** %12, metadata !532, metadata !68), !dbg !534
  store %struct.option* null, %struct.option** %12, align 8, !dbg !534
  call void @llvm.dbg.declare(metadata i8** %13, metadata !535, metadata !68), !dbg !536
  store i8* null, i8** %13, align 8, !dbg !536
  call void @llvm.dbg.declare(metadata i64* %14, metadata !537, metadata !68), !dbg !539
  store i64 3, i64* %14, align 8, !dbg !539
  call void @llvm.dbg.declare(metadata i64* %15, metadata !540, metadata !68), !dbg !541
  store i64 2, i64* %15, align 8, !dbg !541
  call void @llvm.dbg.declare(metadata i64* %16, metadata !542, metadata !68), !dbg !543
  store i64 0, i64* %16, align 8, !dbg !543
  call void @llvm.dbg.declare(metadata i64* %17, metadata !544, metadata !68), !dbg !545
  br label %24, !dbg !546

; <label>:24:                                     ; preds = %48, %5
  %25 = load i64, i64* %16, align 8, !dbg !547
  %26 = load %struct.option*, %struct.option** %8, align 8, !dbg !549
  %27 = getelementptr inbounds %struct.option, %struct.option* %26, i64 %25, !dbg !549
  %28 = getelementptr inbounds %struct.option, %struct.option* %27, i32 0, i32 0, !dbg !550
  %29 = load i8*, i8** %28, align 8, !dbg !550
  %30 = icmp eq i8* %29, null, !dbg !551
  br i1 %30, label %31, label %38, !dbg !552

; <label>:31:                                     ; preds = %24
  %32 = load i64, i64* %16, align 8, !dbg !553
  %33 = load %struct.option*, %struct.option** %8, align 8, !dbg !555
  %34 = getelementptr inbounds %struct.option, %struct.option* %33, i64 %32, !dbg !555
  %35 = getelementptr inbounds %struct.option, %struct.option* %34, i32 0, i32 3, !dbg !556
  %36 = load i32, i32* %35, align 8, !dbg !556
  %37 = icmp eq i32 %36, 0, !dbg !557
  br label %38

; <label>:38:                                     ; preds = %31, %24
  %39 = phi i1 [ false, %24 ], [ %37, %31 ]
  %40 = xor i1 %39, true, !dbg !558
  br i1 %40, label %41, label %51, !dbg !560

; <label>:41:                                     ; preds = %38
  %42 = load i64, i64* %16, align 8, !dbg !561
  %43 = icmp eq i64 %42, -1, !dbg !564
  %44 = zext i1 %43 to i32, !dbg !564
  %45 = sext i32 %44 to i64, !dbg !565
  %46 = icmp ne i64 %45, 0, !dbg !566
  br i1 %46, label %47, label %48, !dbg !567

; <label>:47:                                     ; preds = %41
  br label %170, !dbg !568

; <label>:48:                                     ; preds = %41
  %49 = load i64, i64* %16, align 8, !dbg !570
  %50 = add i64 %49, 1, !dbg !570
  store i64 %50, i64* %16, align 8, !dbg !570
  br label %24, !dbg !571, !llvm.loop !573

; <label>:51:                                     ; preds = %38
  %52 = load i64, i64* %16, align 8, !dbg !574
  %53 = icmp ugt i64 %52, 576460752303423486, !dbg !576
  %54 = zext i1 %53 to i32, !dbg !576
  %55 = sext i32 %54 to i64, !dbg !577
  %56 = icmp ne i64 %55, 0, !dbg !578
  br i1 %56, label %57, label %58, !dbg !579

; <label>:57:                                     ; preds = %51
  br label %170, !dbg !580

; <label>:58:                                     ; preds = %51
  %59 = load i64, i64* %16, align 8, !dbg !582
  %60 = add i64 %59, 1, !dbg !583
  %61 = mul i64 %60, 32, !dbg !584
  %62 = call noalias i8* @malloc(i64 %61) #10, !dbg !585
  %63 = bitcast i8* %62 to %struct.option*, !dbg !585
  store %struct.option* %63, %struct.option** %12, align 8, !dbg !586
  %64 = load %struct.option*, %struct.option** %12, align 8, !dbg !587
  %65 = icmp eq %struct.option* %64, null, !dbg !589
  br i1 %65, label %66, label %67, !dbg !590

; <label>:66:                                     ; preds = %58
  br label %170, !dbg !591

; <label>:67:                                     ; preds = %58
  %68 = load i64, i64* %16, align 8, !dbg !593
  %69 = icmp ugt i64 %68, 6148914691236517204, !dbg !595
  %70 = zext i1 %69 to i32, !dbg !595
  %71 = sext i32 %70 to i64, !dbg !596
  %72 = icmp ne i64 %71, 0, !dbg !597
  br i1 %72, label %73, label %74, !dbg !598

; <label>:73:                                     ; preds = %67
  br label %170, !dbg !599

; <label>:74:                                     ; preds = %67
  %75 = load i64, i64* %16, align 8, !dbg !601
  %76 = mul i64 %75, 3, !dbg !602
  %77 = add i64 %76, 2, !dbg !603
  %78 = add i64 %77, 1, !dbg !604
  store i64 %78, i64* %17, align 8, !dbg !605
  %79 = load i64, i64* %17, align 8, !dbg !606
  %80 = call noalias i8* @malloc(i64 %79) #10, !dbg !607
  store i8* %80, i8** %13, align 8, !dbg !608
  %81 = load i8*, i8** %13, align 8, !dbg !609
  %82 = icmp eq i8* %81, null, !dbg !611
  br i1 %82, label %83, label %84, !dbg !612

; <label>:83:                                     ; preds = %74
  br label %170, !dbg !613

; <label>:84:                                     ; preds = %74
  call void @llvm.dbg.declare(metadata %struct.option* %18, metadata !615, metadata !68), !dbg !617
  %85 = bitcast %struct.option* %18 to i8*, !dbg !617
  call void @llvm.memset.p0i8.i64(i8* %85, i8 0, i64 32, i32 8, i1 false), !dbg !617
  call void @llvm.dbg.declare(metadata i64* %19, metadata !618, metadata !68), !dbg !619
  call void @llvm.dbg.declare(metadata %struct.option** %20, metadata !620, metadata !68), !dbg !621
  %86 = load %struct.option*, %struct.option** %12, align 8, !dbg !622
  store %struct.option* %86, %struct.option** %20, align 8, !dbg !621
  call void @llvm.dbg.declare(metadata i8** %21, metadata !623, metadata !68), !dbg !624
  %87 = load i8*, i8** %13, align 8, !dbg !625
  store i8* %87, i8** %21, align 8, !dbg !624
  %88 = load i32, i32* %9, align 4, !dbg !626
  switch i32 %88, label %95 [
    i32 1, label %89
    i32 2, label %92
  ], !dbg !627

; <label>:89:                                     ; preds = %84
  %90 = load i8*, i8** %21, align 8, !dbg !628
  %91 = getelementptr inbounds i8, i8* %90, i32 1, !dbg !628
  store i8* %91, i8** %21, align 8, !dbg !628
  store i8 43, i8* %90, align 1, !dbg !630
  br label %96, !dbg !631

; <label>:92:                                     ; preds = %84
  %93 = load i8*, i8** %21, align 8, !dbg !632
  %94 = getelementptr inbounds i8, i8* %93, i32 1, !dbg !632
  store i8* %94, i8** %21, align 8, !dbg !632
  store i8 45, i8* %93, align 1, !dbg !633
  br label %96, !dbg !634

; <label>:95:                                     ; preds = %84
  br label %96, !dbg !635

; <label>:96:                                     ; preds = %95, %92, %89
  %97 = load i8, i8* %10, align 1, !dbg !636
  %98 = icmp ne i8 %97, 0, !dbg !636
  br i1 %98, label %99, label %102, !dbg !638

; <label>:99:                                     ; preds = %96
  %100 = load i8*, i8** %21, align 8, !dbg !639
  %101 = getelementptr inbounds i8, i8* %100, i32 1, !dbg !639
  store i8* %101, i8** %21, align 8, !dbg !639
  store i8 58, i8* %100, align 1, !dbg !641
  br label %102, !dbg !642

; <label>:102:                                    ; preds = %99, %96
  store i64 0, i64* %19, align 8, !dbg !643
  br label %103, !dbg !645

; <label>:103:                                    ; preds = %156, %102
  %104 = load i64, i64* %19, align 8, !dbg !646
  %105 = load i64, i64* %16, align 8, !dbg !649
  %106 = icmp ult i64 %104, %105, !dbg !650
  br i1 %106, label %107, label %159, !dbg !651

; <label>:107:                                    ; preds = %103
  call void @llvm.dbg.declare(metadata i32* %22, metadata !652, metadata !68), !dbg !654
  %108 = load i64, i64* %19, align 8, !dbg !655
  %109 = load %struct.option*, %struct.option** %8, align 8, !dbg !656
  %110 = getelementptr inbounds %struct.option, %struct.option* %109, i64 %108, !dbg !656
  %111 = getelementptr inbounds %struct.option, %struct.option* %110, i32 0, i32 3, !dbg !657
  %112 = load i32, i32* %111, align 8, !dbg !657
  store i32 %112, i32* %22, align 4, !dbg !654
  %113 = load i64, i64* %19, align 8, !dbg !658
  %114 = load %struct.option*, %struct.option** %8, align 8, !dbg !660
  %115 = getelementptr inbounds %struct.option, %struct.option* %114, i64 %113, !dbg !660
  %116 = getelementptr inbounds %struct.option, %struct.option* %115, i32 0, i32 0, !dbg !661
  %117 = load i8*, i8** %116, align 8, !dbg !661
  %118 = icmp ne i8* %117, null, !dbg !662
  br i1 %118, label %119, label %127, !dbg !663

; <label>:119:                                    ; preds = %107
  %120 = load %struct.option*, %struct.option** %20, align 8, !dbg !664
  %121 = getelementptr inbounds %struct.option, %struct.option* %120, i32 1, !dbg !664
  store %struct.option* %121, %struct.option** %20, align 8, !dbg !664
  %122 = load i64, i64* %19, align 8, !dbg !666
  %123 = load %struct.option*, %struct.option** %8, align 8, !dbg !667
  %124 = getelementptr inbounds %struct.option, %struct.option* %123, i64 %122, !dbg !667
  %125 = bitcast %struct.option* %120 to i8*, !dbg !667
  %126 = bitcast %struct.option* %124 to i8*, !dbg !667
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %125, i8* %126, i64 32, i32 8, i1 false), !dbg !667
  br label %127, !dbg !668

; <label>:127:                                    ; preds = %119, %107
  %128 = load i32, i32* %22, align 4, !dbg !669
  %129 = icmp sgt i32 %128, 0, !dbg !671
  br i1 %129, label %130, label %155, !dbg !672

; <label>:130:                                    ; preds = %127
  %131 = load i32, i32* %22, align 4, !dbg !673
  %132 = icmp sle i32 %131, 255, !dbg !675
  br i1 %132, label %133, label %155, !dbg !676

; <label>:133:                                    ; preds = %130
  call void @llvm.dbg.declare(metadata i32* %23, metadata !677, metadata !68), !dbg !679
  %134 = load i64, i64* %19, align 8, !dbg !680
  %135 = load %struct.option*, %struct.option** %8, align 8, !dbg !681
  %136 = getelementptr inbounds %struct.option, %struct.option* %135, i64 %134, !dbg !681
  %137 = getelementptr inbounds %struct.option, %struct.option* %136, i32 0, i32 1, !dbg !682
  %138 = load i32, i32* %137, align 8, !dbg !682
  store i32 %138, i32* %23, align 4, !dbg !679
  %139 = load i32, i32* %22, align 4, !dbg !683
  %140 = trunc i32 %139 to i8, !dbg !684
  %141 = load i8*, i8** %21, align 8, !dbg !685
  %142 = getelementptr inbounds i8, i8* %141, i32 1, !dbg !685
  store i8* %142, i8** %21, align 8, !dbg !685
  store i8 %140, i8* %141, align 1, !dbg !686
  %143 = load i32, i32* %23, align 4, !dbg !687
  %144 = icmp ne i32 %143, 0, !dbg !689
  br i1 %144, label %145, label %154, !dbg !690

; <label>:145:                                    ; preds = %133
  %146 = load i8*, i8** %21, align 8, !dbg !691
  %147 = getelementptr inbounds i8, i8* %146, i32 1, !dbg !691
  store i8* %147, i8** %21, align 8, !dbg !691
  store i8 58, i8* %146, align 1, !dbg !693
  %148 = load i32, i32* %23, align 4, !dbg !694
  %149 = icmp eq i32 %148, 2, !dbg !696
  br i1 %149, label %150, label %153, !dbg !697

; <label>:150:                                    ; preds = %145
  %151 = load i8*, i8** %21, align 8, !dbg !698
  %152 = getelementptr inbounds i8, i8* %151, i32 1, !dbg !698
  store i8* %152, i8** %21, align 8, !dbg !698
  store i8 58, i8* %151, align 1, !dbg !700
  br label %153, !dbg !701

; <label>:153:                                    ; preds = %150, %145
  br label %154, !dbg !702

; <label>:154:                                    ; preds = %153, %133
  br label %155, !dbg !703

; <label>:155:                                    ; preds = %154, %130, %127
  br label %156, !dbg !704

; <label>:156:                                    ; preds = %155
  %157 = load i64, i64* %19, align 8, !dbg !705
  %158 = add i64 %157, 1, !dbg !705
  store i64 %158, i64* %19, align 8, !dbg !705
  br label %103, !dbg !707, !llvm.loop !708

; <label>:159:                                    ; preds = %103
  %160 = load %struct.option*, %struct.option** %20, align 8, !dbg !710
  %161 = bitcast %struct.option* %160 to i8*, !dbg !711
  %162 = bitcast %struct.option* %18 to i8*, !dbg !711
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %161, i8* %162, i64 32, i32 8, i1 false), !dbg !711
  %163 = load i8*, i8** %21, align 8, !dbg !712
  store i8 0, i8* %163, align 1, !dbg !713
  br label %164

; <label>:164:                                    ; preds = %159
  %165 = load i32, i32* %6, align 4, !dbg !714
  %166 = load i8**, i8*** %7, align 8, !dbg !715
  %167 = load i8*, i8** %13, align 8, !dbg !716
  %168 = load %struct.option*, %struct.option** %12, align 8, !dbg !717
  %169 = call i32 @getopt_long(i32 %165, i8** %166, i8* %167, %struct.option* %168, i32* null) #10, !dbg !718
  store i32 %169, i32* %11, align 4, !dbg !719
  br label %170, !dbg !720

; <label>:170:                                    ; preds = %164, %83, %73, %66, %57, %47
  %171 = load %struct.option*, %struct.option** %12, align 8, !dbg !721
  %172 = bitcast %struct.option* %171 to i8*, !dbg !721
  call void @free(i8* %172) #10, !dbg !722
  %173 = load i8*, i8** %13, align 8, !dbg !723
  call void @free(i8* %173) #10, !dbg !724
  %174 = load i32, i32* %11, align 4, !dbg !725
  ret i32 %174, !dbg !726
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #6

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #6

; Function Attrs: nounwind
declare void @free(i8*) #6

; Function Attrs: nounwind uwtable
define i32 @Util_HasAdminPriv() #0 !dbg !727 {
  %1 = call signext i8 @Id_IsSuperUser(), !dbg !730
  %2 = sext i8 %1 to i32, !dbg !730
  %3 = icmp ne i32 %2, 0, !dbg !730
  %4 = select i1 %3, i32 1, i32 0, !dbg !730
  ret i32 %4, !dbg !731
}

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @Id_IsSuperUser() #8 !dbg !732 {
  %1 = call i32 @geteuid() #10, !dbg !734
  %2 = icmp eq i32 0, %1, !dbg !735
  %3 = zext i1 %2 to i32, !dbg !735
  %4 = trunc i32 %3 to i8, !dbg !736
  ret i8 %4, !dbg !737
}

; Function Attrs: nounwind uwtable
define i8* @Util_DeriveFileName(i8*, i8*, i8*) #0 !dbg !738 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !741, metadata !68), !dbg !742
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !743, metadata !68), !dbg !744
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !745, metadata !68), !dbg !746
  call void @llvm.dbg.declare(metadata i8** %8, metadata !747, metadata !68), !dbg !748
  store i8* null, i8** %8, align 8, !dbg !748
  call void @llvm.dbg.declare(metadata i8** %9, metadata !749, metadata !68), !dbg !750
  store i8* null, i8** %9, align 8, !dbg !750
  call void @llvm.dbg.declare(metadata i8** %10, metadata !751, metadata !68), !dbg !752
  store i8* null, i8** %10, align 8, !dbg !752
  %12 = load i8*, i8** %5, align 8, !dbg !753
  %13 = icmp eq i8* %12, null, !dbg !755
  br i1 %13, label %20, label %14, !dbg !756

; <label>:14:                                     ; preds = %3
  %15 = load i8*, i8** %6, align 8, !dbg !757
  %16 = icmp eq i8* %15, null, !dbg !759
  br i1 %16, label %17, label %21, !dbg !760

; <label>:17:                                     ; preds = %14
  %18 = load i8*, i8** %7, align 8, !dbg !761
  %19 = icmp eq i8* %18, null, !dbg !763
  br i1 %19, label %20, label %21, !dbg !764

; <label>:20:                                     ; preds = %17, %3
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0)), !dbg !765
  store i8* null, i8** %4, align 8, !dbg !767
  br label %93, !dbg !767

; <label>:21:                                     ; preds = %17, %14
  %22 = load i8*, i8** %5, align 8, !dbg !768
  call void @File_GetPathName(i8* %22, i8** %9, i8** %10), !dbg !769
  %23 = load i8*, i8** %6, align 8, !dbg !770
  %24 = icmp ne i8* %23, null, !dbg !772
  br i1 %24, label %25, label %65, !dbg !773

; <label>:25:                                     ; preds = %21
  %26 = load i8*, i8** %10, align 8, !dbg !774
  call void @free(i8* %26) #10, !dbg !776
  %27 = load i8*, i8** %6, align 8, !dbg !777
  %28 = call signext i8 @Util_IsAbsolutePath(i8* %27), !dbg !779
  %29 = icmp ne i8 %28, 0, !dbg !779
  br i1 %29, label %51, label %30, !dbg !780

; <label>:30:                                     ; preds = %25
  %31 = load i8*, i8** %9, align 8, !dbg !781
  %32 = call i64 @strlen(i8* %31) #13, !dbg !783
  %33 = icmp ugt i64 %32, 0, !dbg !784
  br i1 %33, label %34, label %51, !dbg !785

; <label>:34:                                     ; preds = %30
  %35 = load i8*, i8** %9, align 8, !dbg !786
  %36 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)) #13, !dbg !787
  %37 = icmp ne i32 %36, 0, !dbg !788
  br i1 %37, label %38, label %51, !dbg !789

; <label>:38:                                     ; preds = %34
  %39 = load i8*, i8** %7, align 8, !dbg !791
  %40 = icmp eq i8* %39, null, !dbg !794
  br i1 %40, label %41, label %45, !dbg !795

; <label>:41:                                     ; preds = %38
  %42 = load i8*, i8** %9, align 8, !dbg !796
  %43 = load i8*, i8** %6, align 8, !dbg !798
  %44 = call i8* (i64*, i8*, ...) @Str_SafeAsprintf(i64* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* %43), !dbg !799
  store i8* %44, i8** %8, align 8, !dbg !800
  br label %50, !dbg !801

; <label>:45:                                     ; preds = %38
  %46 = load i8*, i8** %9, align 8, !dbg !802
  %47 = load i8*, i8** %6, align 8, !dbg !804
  %48 = load i8*, i8** %7, align 8, !dbg !805
  %49 = call i8* (i64*, i8*, ...) @Str_SafeAsprintf(i64* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* %47, i8* %48), !dbg !806
  store i8* %49, i8** %8, align 8, !dbg !807
  br label %50

; <label>:50:                                     ; preds = %45, %41
  br label %62, !dbg !808

; <label>:51:                                     ; preds = %34, %30, %25
  %52 = load i8*, i8** %7, align 8, !dbg !809
  %53 = icmp eq i8* %52, null, !dbg !812
  br i1 %53, label %54, label %57, !dbg !813

; <label>:54:                                     ; preds = %51
  %55 = load i8*, i8** %6, align 8, !dbg !814
  %56 = call i8* @UtilSafeStrdup0(i8* %55), !dbg !816
  store i8* %56, i8** %8, align 8, !dbg !817
  br label %61, !dbg !818

; <label>:57:                                     ; preds = %51
  %58 = load i8*, i8** %6, align 8, !dbg !819
  %59 = load i8*, i8** %7, align 8, !dbg !821
  %60 = call i8* (i64*, i8*, ...) @Str_SafeAsprintf(i64* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* %58, i8* %59), !dbg !822
  store i8* %60, i8** %8, align 8, !dbg !823
  br label %61

; <label>:61:                                     ; preds = %57, %54
  br label %62

; <label>:62:                                     ; preds = %61, %50
  %63 = load i8*, i8** %9, align 8, !dbg !824
  call void @free(i8* %63) #10, !dbg !825
  %64 = load i8*, i8** %8, align 8, !dbg !826
  store i8* %64, i8** %4, align 8, !dbg !827
  br label %93, !dbg !827

; <label>:65:                                     ; preds = %21
  call void @llvm.dbg.declare(metadata i8** %11, metadata !828, metadata !68), !dbg !830
  %66 = load i8*, i8** %10, align 8, !dbg !831
  %67 = call i8* @strrchr(i8* %66, i32 46) #13, !dbg !832
  store i8* %67, i8** %11, align 8, !dbg !830
  %68 = load i8*, i8** %11, align 8, !dbg !833
  %69 = icmp ne i8* %68, null, !dbg !835
  br i1 %69, label %70, label %72, !dbg !836

; <label>:70:                                     ; preds = %65
  %71 = load i8*, i8** %11, align 8, !dbg !837
  store i8 0, i8* %71, align 1, !dbg !839
  br label %72, !dbg !840

; <label>:72:                                     ; preds = %70, %65
  %73 = load i8*, i8** %9, align 8, !dbg !841
  %74 = call i64 @strlen(i8* %73) #13, !dbg !843
  %75 = icmp ugt i64 %74, 0, !dbg !844
  br i1 %75, label %76, label %85, !dbg !845

; <label>:76:                                     ; preds = %72
  %77 = load i8*, i8** %9, align 8, !dbg !846
  %78 = call i32 @strcmp(i8* %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)) #13, !dbg !848
  %79 = icmp ne i32 %78, 0, !dbg !849
  br i1 %79, label %80, label %85, !dbg !850

; <label>:80:                                     ; preds = %76
  %81 = load i8*, i8** %9, align 8, !dbg !851
  %82 = load i8*, i8** %10, align 8, !dbg !853
  %83 = load i8*, i8** %7, align 8, !dbg !854
  %84 = call i8* (i64*, i8*, ...) @Str_SafeAsprintf(i64* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8* %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* %82, i8* %83), !dbg !855
  store i8* %84, i8** %8, align 8, !dbg !856
  br label %89, !dbg !857

; <label>:85:                                     ; preds = %76, %72
  %86 = load i8*, i8** %10, align 8, !dbg !858
  %87 = load i8*, i8** %7, align 8, !dbg !860
  %88 = call i8* (i64*, i8*, ...) @Str_SafeAsprintf(i64* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* %86, i8* %87), !dbg !861
  store i8* %88, i8** %8, align 8, !dbg !862
  br label %89

; <label>:89:                                     ; preds = %85, %80
  %90 = load i8*, i8** %9, align 8, !dbg !863
  call void @free(i8* %90) #10, !dbg !864
  %91 = load i8*, i8** %10, align 8, !dbg !865
  call void @free(i8* %91) #10, !dbg !866
  %92 = load i8*, i8** %8, align 8, !dbg !867
  store i8* %92, i8** %4, align 8, !dbg !868
  br label %93, !dbg !868

; <label>:93:                                     ; preds = %89, %62, %20
  %94 = load i8*, i8** %4, align 8, !dbg !869
  ret i8* %94, !dbg !869
}

declare void @Warning(i8*, ...) #2

declare void @File_GetPathName(i8*, i8**, i8**) #2

declare signext i8 @Util_IsAbsolutePath(i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #9

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #9

declare i8* @Str_SafeAsprintf(i64*, i8*, ...) #2

declare i8* @UtilSafeStrdup0(i8*) #2

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #9

; Function Attrs: nounwind uwtable
define internal void @UtilCRCMakeTable(i32*) #0 !dbg !870 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  call void @llvm.dbg.declare(metadata i32** %2, metadata !873, metadata !68), !dbg !874
  call void @llvm.dbg.declare(metadata i32* %3, metadata !875, metadata !68), !dbg !876
  call void @llvm.dbg.declare(metadata i32* %4, metadata !877, metadata !68), !dbg !878
  call void @llvm.dbg.declare(metadata i32* %5, metadata !879, metadata !68), !dbg !880
  store i32 0, i32* %4, align 4, !dbg !881
  br label %6, !dbg !883

; <label>:6:                                      ; preds = %37, %1
  %7 = load i32, i32* %4, align 4, !dbg !884
  %8 = icmp slt i32 %7, 256, !dbg !887
  br i1 %8, label %9, label %40, !dbg !888

; <label>:9:                                      ; preds = %6
  %10 = load i32, i32* %4, align 4, !dbg !889
  store i32 %10, i32* %3, align 4, !dbg !891
  store i32 0, i32* %5, align 4, !dbg !892
  br label %11, !dbg !894

; <label>:11:                                     ; preds = %28, %9
  %12 = load i32, i32* %5, align 4, !dbg !895
  %13 = icmp slt i32 %12, 8, !dbg !898
  br i1 %13, label %14, label %31, !dbg !899

; <label>:14:                                     ; preds = %11
  %15 = load i32, i32* %3, align 4, !dbg !900
  %16 = and i32 %15, 1, !dbg !903
  %17 = icmp ne i32 %16, 0, !dbg !903
  br i1 %17, label %18, label %24, !dbg !904

; <label>:18:                                     ; preds = %14
  %19 = load i32, i32* %3, align 4, !dbg !905
  %20 = lshr i32 %19, 1, !dbg !907
  %21 = zext i32 %20 to i64, !dbg !908
  %22 = xor i64 3988292384, %21, !dbg !909
  %23 = trunc i64 %22 to i32, !dbg !910
  store i32 %23, i32* %3, align 4, !dbg !911
  br label %27, !dbg !912

; <label>:24:                                     ; preds = %14
  %25 = load i32, i32* %3, align 4, !dbg !913
  %26 = lshr i32 %25, 1, !dbg !915
  store i32 %26, i32* %3, align 4, !dbg !916
  br label %27

; <label>:27:                                     ; preds = %24, %18
  br label %28, !dbg !917

; <label>:28:                                     ; preds = %27
  %29 = load i32, i32* %5, align 4, !dbg !918
  %30 = add nsw i32 %29, 1, !dbg !918
  store i32 %30, i32* %5, align 4, !dbg !918
  br label %11, !dbg !920, !llvm.loop !921

; <label>:31:                                     ; preds = %11
  %32 = load i32, i32* %3, align 4, !dbg !923
  %33 = load i32, i32* %4, align 4, !dbg !924
  %34 = sext i32 %33 to i64, !dbg !925
  %35 = load i32*, i32** %2, align 8, !dbg !925
  %36 = getelementptr inbounds i32, i32* %35, i64 %34, !dbg !925
  store i32 %32, i32* %36, align 4, !dbg !926
  br label %37, !dbg !927

; <label>:37:                                     ; preds = %31
  %38 = load i32, i32* %4, align 4, !dbg !928
  %39 = add nsw i32 %38, 1, !dbg !928
  store i32 %39, i32* %4, align 4, !dbg !928
  br label %6, !dbg !930, !llvm.loop !931

; <label>:40:                                     ; preds = %6
  ret void, !dbg !933
}

; Function Attrs: nounwind
declare i32 @geteuid() #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind }
attributes #11 = { noreturn }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!55, !56}
!llvm.ident = !{!57}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !9, globals: !25)
!1 = !DIFile(filename: "util.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1052")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 137, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/util.h", directory: "/home/lichi/Desktop/open-vm-tools/line1052")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "UTIL_NONOPT_PERMUTE", value: 0)
!7 = !DIEnumerator(name: "UTIL_NONOPT_STOP", value: 1)
!8 = !DIEnumerator(name: "UTIL_NONOPT_ALL", value: 2)
!9 = !{!10, !16, !21, !24, !11}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !12, line: 173, baseType: !13)
!12 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1052")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !14, line: 51, baseType: !15)
!14 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line1052")
!15 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UtilVector", file: !18, line: 83, size: 128, align: 64, elements: !19)
!18 = !DIFile(filename: "util.c", directory: "/home/lichi/Desktop/open-vm-tools/line1052")
!19 = !{!20, !22}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !17, file: !18, line: 84, baseType: !21, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !17, file: !18, line: 85, baseType: !23, size: 32, align: 32, offset: 64)
!23 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!24 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!25 = !{!26, !42, !54}
!26 = distinct !DIGlobalVariable(name: "digits", scope: !27, file: !18, line: 409, type: !38, isLocal: true, isDefinition: true, variable: [17 x i8]* @Util_Data2Buffer.digits)
!27 = distinct !DISubprogram(name: "Util_Data2Buffer", scope: !18, file: !18, line: 391, type: !28, isLocal: false, isDefinition: true, scopeLine: 395, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !37)
!28 = !DISubroutineType(types: !29)
!29 = !{!30, !31, !32, !35, !32}
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !12, line: 230, baseType: !24)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !33, line: 216, baseType: !34)
!33 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line1052")
!34 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!37 = !{}
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 136, align: 8, elements: !40)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!40 = !{!41}
!41 = !DISubrange(count: 17)
!42 = distinct !DIGlobalVariable(name: "crcTable", scope: !43, file: !18, line: 299, type: !51, isLocal: true, isDefinition: true, variable: [256 x i32]* @UtilCRCUpdate.crcTable)
!43 = distinct !DISubprogram(name: "UtilCRCUpdate", scope: !18, file: !18, line: 293, type: !44, isLocal: true, isDefinition: true, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !37)
!44 = !DISubroutineType(types: !45)
!45 = !{!11, !11, !46, !23}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !12, line: 177, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !14, line: 48, baseType: !50)
!50 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8192, align: 32, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 256)
!54 = distinct !DIGlobalVariable(name: "crcTableComputed", scope: !43, file: !18, line: 300, type: !23, isLocal: true, isDefinition: true, variable: i32* @UtilCRCUpdate.crcTableComputed)
!55 = !{i32 2, !"Dwarf Version", i32 4}
!56 = !{i32 2, !"Debug Info Version", i32 3}
!57 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!58 = distinct !DISubprogram(name: "Util_Init", scope: !18, file: !18, line: 107, type: !59, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !37)
!59 = !DISubroutineType(types: !60)
!60 = !{!30}
!61 = !DILocation(line: 128, column: 4, scope: !58)
!62 = distinct !DISubprogram(name: "Util_Checksum32", scope: !18, file: !18, line: 144, type: !63, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !37)
!63 = !DISubroutineType(types: !64)
!64 = !{!11, !65, !23}
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!67 = !DILocalVariable(name: "buf", arg: 1, scope: !62, file: !18, line: 144, type: !65)
!68 = !DIExpression()
!69 = !DILocation(line: 144, column: 31, scope: !62)
!70 = !DILocalVariable(name: "len", arg: 2, scope: !62, file: !18, line: 144, type: !23)
!71 = !DILocation(line: 144, column: 40, scope: !62)
!72 = !DILocalVariable(name: "checksum", scope: !62, file: !18, line: 146, type: !11)
!73 = !DILocation(line: 146, column: 11, scope: !62)
!74 = !DILocalVariable(name: "i", scope: !62, file: !18, line: 147, type: !23)
!75 = !DILocation(line: 147, column: 8, scope: !62)
!76 = !DILocation(line: 150, column: 11, scope: !77)
!77 = distinct !DILexicalBlock(scope: !62, file: !18, line: 150, column: 4)
!78 = !DILocation(line: 150, column: 9, scope: !77)
!79 = !DILocation(line: 150, column: 16, scope: !80)
!80 = !DILexicalBlockFile(scope: !81, file: !18, discriminator: 1)
!81 = distinct !DILexicalBlock(scope: !77, file: !18, line: 150, column: 4)
!82 = !DILocation(line: 150, column: 20, scope: !80)
!83 = !DILocation(line: 150, column: 18, scope: !80)
!84 = !DILocation(line: 150, column: 4, scope: !80)
!85 = !DILocation(line: 150, column: 48, scope: !86)
!86 = !DILexicalBlockFile(scope: !81, file: !18, discriminator: 2)
!87 = !DILocation(line: 150, column: 43, scope: !86)
!88 = !DILocation(line: 150, column: 40, scope: !86)
!89 = !DILocation(line: 150, column: 31, scope: !86)
!90 = !DILocation(line: 150, column: 26, scope: !91)
!91 = !DILexicalBlockFile(scope: !81, file: !18, discriminator: 3)
!92 = !DILocation(line: 150, column: 4, scope: !91)
!93 = distinct !{!93, !94}
!94 = !DILocation(line: 150, column: 4, scope: !62)
!95 = !DILocation(line: 151, column: 11, scope: !62)
!96 = !DILocation(line: 151, column: 4, scope: !62)
!97 = distinct !DISubprogram(name: "Util_Checksum", scope: !18, file: !18, line: 167, type: !98, isLocal: false, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !37)
!98 = !DISubroutineType(types: !99)
!99 = !{!11, !46, !23}
!100 = !DILocalVariable(name: "buf", arg: 1, scope: !97, file: !18, line: 167, type: !46)
!101 = !DILocation(line: 167, column: 28, scope: !97)
!102 = !DILocalVariable(name: "len", arg: 2, scope: !97, file: !18, line: 167, type: !23)
!103 = !DILocation(line: 167, column: 37, scope: !97)
!104 = !DILocalVariable(name: "checksum", scope: !97, file: !18, line: 169, type: !11)
!105 = !DILocation(line: 169, column: 11, scope: !97)
!106 = !DILocalVariable(name: "remainder", scope: !97, file: !18, line: 170, type: !23)
!107 = !DILocation(line: 170, column: 8, scope: !97)
!108 = !DILocalVariable(name: "shift", scope: !97, file: !18, line: 170, type: !23)
!109 = !DILocation(line: 170, column: 19, scope: !97)
!110 = !DILocation(line: 172, column: 16, scope: !97)
!111 = !DILocation(line: 172, column: 20, scope: !97)
!112 = !DILocation(line: 172, column: 14, scope: !97)
!113 = !DILocation(line: 173, column: 11, scope: !97)
!114 = !DILocation(line: 173, column: 8, scope: !97)
!115 = !DILocation(line: 175, column: 41, scope: !97)
!116 = !DILocation(line: 175, column: 31, scope: !97)
!117 = !DILocation(line: 175, column: 46, scope: !97)
!118 = !DILocation(line: 175, column: 15, scope: !97)
!119 = !DILocation(line: 175, column: 13, scope: !97)
!120 = !DILocation(line: 177, column: 11, scope: !97)
!121 = !DILocation(line: 177, column: 8, scope: !97)
!122 = !DILocation(line: 178, column: 10, scope: !97)
!123 = !DILocation(line: 179, column: 4, scope: !97)
!124 = !DILocation(line: 179, column: 20, scope: !125)
!125 = !DILexicalBlockFile(scope: !97, file: !18, discriminator: 1)
!126 = !DILocation(line: 179, column: 4, scope: !125)
!127 = !DILocation(line: 183, column: 24, scope: !128)
!128 = distinct !DILexicalBlock(scope: !97, file: !18, line: 179, column: 24)
!129 = !DILocation(line: 183, column: 20, scope: !128)
!130 = !DILocation(line: 183, column: 30, scope: !128)
!131 = !DILocation(line: 183, column: 27, scope: !128)
!132 = !DILocation(line: 183, column: 16, scope: !128)
!133 = !DILocation(line: 184, column: 13, scope: !128)
!134 = !DILocation(line: 179, column: 4, scope: !135)
!135 = !DILexicalBlockFile(scope: !97, file: !18, discriminator: 2)
!136 = distinct !{!136, !123}
!137 = !DILocation(line: 187, column: 11, scope: !97)
!138 = !DILocation(line: 187, column: 4, scope: !97)
!139 = distinct !DISubprogram(name: "Util_Checksumv", scope: !18, file: !18, line: 203, type: !140, isLocal: false, isDefinition: true, scopeLine: 205, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !37)
!140 = !DISubroutineType(types: !141)
!141 = !{!11, !21, !23}
!142 = !DILocalVariable(name: "iov", arg: 1, scope: !139, file: !18, line: 203, type: !21)
!143 = !DILocation(line: 203, column: 22, scope: !139)
!144 = !DILocalVariable(name: "numEntries", arg: 2, scope: !139, file: !18, line: 204, type: !23)
!145 = !DILocation(line: 204, column: 20, scope: !139)
!146 = !DILocalVariable(name: "checksum", scope: !139, file: !18, line: 206, type: !11)
!147 = !DILocation(line: 206, column: 11, scope: !139)
!148 = !DILocalVariable(name: "vector", scope: !139, file: !18, line: 207, type: !16)
!149 = !DILocation(line: 207, column: 23, scope: !139)
!150 = !DILocation(line: 207, column: 54, scope: !139)
!151 = !DILocation(line: 207, column: 32, scope: !139)
!152 = !DILocalVariable(name: "partialChecksum", scope: !139, file: !18, line: 208, type: !11)
!153 = !DILocation(line: 208, column: 11, scope: !139)
!154 = !DILocalVariable(name: "bytesSoFar", scope: !139, file: !18, line: 209, type: !23)
!155 = !DILocation(line: 209, column: 8, scope: !139)
!156 = !DILocalVariable(name: "rotate", scope: !139, file: !18, line: 210, type: !23)
!157 = !DILocation(line: 210, column: 8, scope: !139)
!158 = !DILocation(line: 212, column: 4, scope: !139)
!159 = !DILocation(line: 212, column: 21, scope: !160)
!160 = !DILexicalBlockFile(scope: !139, file: !18, discriminator: 1)
!161 = !DILocation(line: 212, column: 24, scope: !160)
!162 = !DILocation(line: 212, column: 4, scope: !160)
!163 = !DILocation(line: 213, column: 39, scope: !164)
!164 = distinct !DILexicalBlock(scope: !139, file: !18, line: 212, column: 29)
!165 = !DILocation(line: 213, column: 47, scope: !164)
!166 = !DILocation(line: 213, column: 53, scope: !164)
!167 = !DILocation(line: 213, column: 61, scope: !164)
!168 = !DILocation(line: 213, column: 25, scope: !164)
!169 = !DILocation(line: 213, column: 23, scope: !164)
!170 = !DILocation(line: 214, column: 17, scope: !164)
!171 = !DILocation(line: 214, column: 28, scope: !164)
!172 = !DILocation(line: 214, column: 33, scope: !164)
!173 = !DILocation(line: 214, column: 14, scope: !164)
!174 = !DILocation(line: 215, column: 21, scope: !164)
!175 = !DILocation(line: 215, column: 40, scope: !164)
!176 = !DILocation(line: 215, column: 37, scope: !164)
!177 = !DILocation(line: 216, column: 21, scope: !164)
!178 = !DILocation(line: 216, column: 46, scope: !164)
!179 = !DILocation(line: 216, column: 44, scope: !164)
!180 = !DILocation(line: 216, column: 37, scope: !164)
!181 = !DILocation(line: 215, column: 48, scope: !164)
!182 = !DILocation(line: 215, column: 16, scope: !164)
!183 = !DILocation(line: 217, column: 21, scope: !164)
!184 = !DILocation(line: 217, column: 29, scope: !164)
!185 = !DILocation(line: 217, column: 18, scope: !164)
!186 = !DILocation(line: 218, column: 13, scope: !164)
!187 = !DILocation(line: 212, column: 4, scope: !188)
!188 = !DILexicalBlockFile(scope: !139, file: !18, discriminator: 2)
!189 = distinct !{!189, !158}
!190 = !DILocation(line: 221, column: 11, scope: !139)
!191 = !DILocation(line: 221, column: 4, scope: !139)
!192 = distinct !DISubprogram(name: "Util_HashString", scope: !18, file: !18, line: 243, type: !193, isLocal: false, isDefinition: true, scopeLine: 244, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !37)
!193 = !DISubroutineType(types: !194)
!194 = !{!11, !195}
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!196 = !DILocalVariable(name: "str", arg: 1, scope: !192, file: !18, line: 243, type: !195)
!197 = !DILocation(line: 243, column: 29, scope: !192)
!198 = !DILocalVariable(name: "hash", scope: !192, file: !18, line: 245, type: !11)
!199 = !DILocation(line: 245, column: 11, scope: !192)
!200 = !DILocalVariable(name: "c", scope: !192, file: !18, line: 246, type: !23)
!201 = !DILocation(line: 246, column: 8, scope: !192)
!202 = !DILocation(line: 248, column: 4, scope: !192)
!203 = !DILocation(line: 248, column: 20, scope: !204)
!204 = !DILexicalBlockFile(scope: !192, file: !18, discriminator: 1)
!205 = !DILocation(line: 248, column: 16, scope: !204)
!206 = !DILocation(line: 248, column: 14, scope: !204)
!207 = !DILocation(line: 248, column: 24, scope: !204)
!208 = !DILocation(line: 248, column: 4, scope: !204)
!209 = !DILocation(line: 249, column: 16, scope: !210)
!210 = distinct !DILexicalBlock(scope: !192, file: !18, line: 248, column: 30)
!211 = !DILocation(line: 249, column: 21, scope: !210)
!212 = !DILocation(line: 249, column: 29, scope: !210)
!213 = !DILocation(line: 249, column: 27, scope: !210)
!214 = !DILocation(line: 249, column: 37, scope: !210)
!215 = !DILocation(line: 249, column: 35, scope: !210)
!216 = !DILocation(line: 249, column: 12, scope: !210)
!217 = !DILocation(line: 248, column: 4, scope: !218)
!218 = !DILexicalBlockFile(scope: !192, file: !18, discriminator: 2)
!219 = distinct !{!219, !202}
!220 = !DILocation(line: 252, column: 11, scope: !192)
!221 = !DILocation(line: 252, column: 4, scope: !192)
!222 = distinct !DISubprogram(name: "CRC_Compute", scope: !18, file: !18, line: 316, type: !98, isLocal: false, isDefinition: true, scopeLine: 318, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !37)
!223 = !DILocalVariable(name: "crc", arg: 1, scope: !43, file: !18, line: 293, type: !11)
!224 = !DILocation(line: 293, column: 22, scope: !43, inlinedAt: !225)
!225 = distinct !DILocation(line: 319, column: 11, scope: !222)
!226 = !DILocalVariable(name: "buf", arg: 2, scope: !43, file: !18, line: 294, type: !46)
!227 = !DILocation(line: 294, column: 28, scope: !43, inlinedAt: !225)
!228 = !DILocalVariable(name: "len", arg: 3, scope: !43, file: !18, line: 295, type: !23)
!229 = !DILocation(line: 295, column: 19, scope: !43, inlinedAt: !225)
!230 = !DILocalVariable(name: "c", scope: !43, file: !18, line: 297, type: !11)
!231 = !DILocation(line: 297, column: 11, scope: !43, inlinedAt: !225)
!232 = !DILocalVariable(name: "n", scope: !43, file: !18, line: 298, type: !23)
!233 = !DILocation(line: 298, column: 8, scope: !43, inlinedAt: !225)
!234 = !DILocalVariable(name: "buf", arg: 1, scope: !222, file: !18, line: 316, type: !46)
!235 = !DILocation(line: 316, column: 26, scope: !222)
!236 = !DILocalVariable(name: "len", arg: 2, scope: !222, file: !18, line: 317, type: !23)
!237 = !DILocation(line: 317, column: 17, scope: !222)
!238 = !DILocation(line: 319, column: 38, scope: !222)
!239 = !DILocation(line: 319, column: 43, scope: !222)
!240 = !DILocation(line: 319, column: 11, scope: !222)
!241 = !DILocation(line: 297, column: 15, scope: !43, inlinedAt: !225)
!242 = !DILocation(line: 302, column: 9, scope: !243, inlinedAt: !225)
!243 = distinct !DILexicalBlock(scope: !43, file: !18, line: 302, column: 8)
!244 = !DILocation(line: 302, column: 8, scope: !43, inlinedAt: !225)
!245 = !DILocation(line: 303, column: 7, scope: !246, inlinedAt: !225)
!246 = distinct !DILexicalBlock(scope: !243, file: !18, line: 302, column: 27)
!247 = !DILocation(line: 305, column: 24, scope: !246, inlinedAt: !225)
!248 = !DILocation(line: 306, column: 4, scope: !246, inlinedAt: !225)
!249 = !DILocation(line: 308, column: 11, scope: !250, inlinedAt: !225)
!250 = distinct !DILexicalBlock(scope: !43, file: !18, line: 308, column: 4)
!251 = !DILocation(line: 308, column: 9, scope: !250, inlinedAt: !225)
!252 = !DILocation(line: 308, column: 16, scope: !253, inlinedAt: !225)
!253 = !DILexicalBlockFile(scope: !254, file: !18, discriminator: 1)
!254 = distinct !DILexicalBlock(scope: !250, file: !18, line: 308, column: 4)
!255 = !DILocation(line: 308, column: 20, scope: !253, inlinedAt: !225)
!256 = !DILocation(line: 308, column: 18, scope: !253, inlinedAt: !225)
!257 = !DILocation(line: 308, column: 4, scope: !253, inlinedAt: !225)
!258 = !DILocation(line: 309, column: 21, scope: !259, inlinedAt: !225)
!259 = distinct !DILexicalBlock(scope: !254, file: !18, line: 308, column: 30)
!260 = !DILocation(line: 309, column: 29, scope: !259, inlinedAt: !225)
!261 = !DILocation(line: 309, column: 25, scope: !259, inlinedAt: !225)
!262 = !DILocation(line: 309, column: 23, scope: !259, inlinedAt: !225)
!263 = !DILocation(line: 309, column: 33, scope: !259, inlinedAt: !225)
!264 = !DILocation(line: 309, column: 11, scope: !259, inlinedAt: !225)
!265 = !DILocation(line: 309, column: 44, scope: !259, inlinedAt: !225)
!266 = !DILocation(line: 309, column: 46, scope: !259, inlinedAt: !225)
!267 = !DILocation(line: 309, column: 41, scope: !259, inlinedAt: !225)
!268 = !DILocation(line: 309, column: 9, scope: !259, inlinedAt: !225)
!269 = !DILocation(line: 308, column: 26, scope: !270, inlinedAt: !225)
!270 = !DILexicalBlockFile(scope: !254, file: !18, discriminator: 2)
!271 = !DILocation(line: 308, column: 4, scope: !270, inlinedAt: !225)
!272 = distinct !{!272, !273}
!273 = !DILocation(line: 308, column: 4, scope: !43)
!274 = !DILocation(line: 312, column: 11, scope: !43, inlinedAt: !225)
!275 = !DILocation(line: 319, column: 48, scope: !222)
!276 = !DILocation(line: 319, column: 4, scope: !222)
!277 = distinct !DISubprogram(name: "Util_FastRand", scope: !18, file: !18, line: 341, type: !278, isLocal: false, isDefinition: true, scopeLine: 342, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !37)
!278 = !DISubroutineType(types: !279)
!279 = !{!11, !11}
!280 = !DILocalVariable(name: "seed", arg: 1, scope: !277, file: !18, line: 341, type: !11)
!281 = !DILocation(line: 341, column: 22, scope: !277)
!282 = !DILocation(line: 343, column: 25, scope: !277)
!283 = !DILocation(line: 343, column: 11, scope: !277)
!284 = !DILocation(line: 343, column: 4, scope: !277)
!285 = distinct !DISubprogram(name: "Util_Throttle", scope: !18, file: !18, line: 365, type: !286, isLocal: false, isDefinition: true, scopeLine: 366, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !37)
!286 = !DISubroutineType(types: !287)
!287 = !{!30, !11}
!288 = !DILocalVariable(name: "count", arg: 1, scope: !285, file: !18, line: 365, type: !11)
!289 = !DILocation(line: 365, column: 22, scope: !285)
!290 = !DILocation(line: 367, column: 11, scope: !285)
!291 = !DILocation(line: 367, column: 17, scope: !285)
!292 = !DILocation(line: 367, column: 23, scope: !285)
!293 = !DILocation(line: 368, column: 11, scope: !285)
!294 = !DILocation(line: 368, column: 17, scope: !285)
!295 = !DILocation(line: 368, column: 25, scope: !285)
!296 = !DILocation(line: 368, column: 28, scope: !297)
!297 = !DILexicalBlockFile(scope: !285, file: !18, discriminator: 1)
!298 = !DILocation(line: 368, column: 34, scope: !297)
!299 = !DILocation(line: 368, column: 40, scope: !297)
!300 = !DILocation(line: 368, column: 46, scope: !297)
!301 = !DILocation(line: 369, column: 11, scope: !285)
!302 = !DILocation(line: 369, column: 17, scope: !285)
!303 = !DILocation(line: 369, column: 27, scope: !285)
!304 = !DILocation(line: 369, column: 30, scope: !297)
!305 = !DILocation(line: 369, column: 36, scope: !297)
!306 = !DILocation(line: 369, column: 44, scope: !297)
!307 = !DILocation(line: 369, column: 50, scope: !297)
!308 = !DILocation(line: 370, column: 30, scope: !285)
!309 = !DILocation(line: 370, column: 36, scope: !285)
!310 = !DILocation(line: 370, column: 46, scope: !285)
!311 = !DILocation(line: 369, column: 50, scope: !312)
!312 = !DILexicalBlockFile(scope: !285, file: !18, discriminator: 2)
!313 = !DILocation(line: 369, column: 50, scope: !314)
!314 = !DILexicalBlockFile(scope: !285, file: !18, discriminator: 3)
!315 = !DILocation(line: 367, column: 11, scope: !297)
!316 = !DILocation(line: 367, column: 4, scope: !297)
!317 = !DILocalVariable(name: "buf", arg: 1, scope: !27, file: !18, line: 391, type: !31)
!318 = !DILocation(line: 391, column: 24, scope: !27)
!319 = !DILocalVariable(name: "bufSize", arg: 2, scope: !27, file: !18, line: 392, type: !32)
!320 = !DILocation(line: 392, column: 25, scope: !27)
!321 = !DILocalVariable(name: "data0", arg: 3, scope: !27, file: !18, line: 393, type: !35)
!322 = !DILocation(line: 393, column: 30, scope: !27)
!323 = !DILocalVariable(name: "dataSize", arg: 4, scope: !27, file: !18, line: 394, type: !32)
!324 = !DILocation(line: 394, column: 25, scope: !27)
!325 = !DILocalVariable(name: "n", scope: !27, file: !18, line: 396, type: !32)
!326 = !DILocation(line: 396, column: 11, scope: !27)
!327 = !DILocation(line: 399, column: 9, scope: !328)
!328 = distinct !DILexicalBlock(scope: !27, file: !18, line: 399, column: 8)
!329 = !DILocation(line: 399, column: 8, scope: !27)
!330 = !DILocation(line: 400, column: 7, scope: !331)
!331 = distinct !DILexicalBlock(scope: !328, file: !18, line: 399, column: 18)
!332 = !DILocation(line: 403, column: 14, scope: !27)
!333 = !DILocation(line: 403, column: 22, scope: !27)
!334 = !DILocation(line: 403, column: 12, scope: !27)
!335 = !DILocation(line: 404, column: 11, scope: !27)
!336 = !DILocation(line: 404, column: 24, scope: !27)
!337 = !DILocation(line: 404, column: 21, scope: !27)
!338 = !DILocation(line: 404, column: 9, scope: !27)
!339 = !DILocation(line: 404, column: 37, scope: !340)
!340 = !DILexicalBlockFile(scope: !27, file: !18, discriminator: 1)
!341 = !DILocation(line: 404, column: 9, scope: !340)
!342 = !DILocation(line: 404, column: 50, scope: !343)
!343 = !DILexicalBlockFile(scope: !27, file: !18, discriminator: 2)
!344 = !DILocation(line: 404, column: 9, scope: !343)
!345 = !DILocation(line: 404, column: 9, scope: !346)
!346 = !DILexicalBlockFile(scope: !27, file: !18, discriminator: 3)
!347 = !DILocation(line: 404, column: 6, scope: !346)
!348 = !DILocation(line: 405, column: 8, scope: !349)
!349 = distinct !DILexicalBlock(scope: !27, file: !18, line: 405, column: 8)
!350 = !DILocation(line: 405, column: 10, scope: !349)
!351 = !DILocation(line: 405, column: 8, scope: !27)
!352 = !DILocalVariable(name: "data", scope: !353, file: !18, line: 406, type: !46)
!353 = distinct !DILexicalBlock(scope: !349, file: !18, line: 405, column: 16)
!354 = !DILocation(line: 406, column: 20, scope: !353)
!355 = !DILocation(line: 406, column: 27, scope: !353)
!356 = !DILocation(line: 408, column: 7, scope: !353)
!357 = !DILocation(line: 408, column: 14, scope: !358)
!358 = !DILexicalBlockFile(scope: !353, file: !18, discriminator: 1)
!359 = !DILocation(line: 408, column: 16, scope: !358)
!360 = !DILocation(line: 408, column: 7, scope: !358)
!361 = !DILocation(line: 411, column: 27, scope: !362)
!362 = distinct !DILexicalBlock(scope: !353, file: !18, line: 408, column: 21)
!363 = !DILocation(line: 411, column: 26, scope: !362)
!364 = !DILocation(line: 411, column: 32, scope: !362)
!365 = !DILocation(line: 411, column: 19, scope: !362)
!366 = !DILocation(line: 411, column: 14, scope: !362)
!367 = !DILocation(line: 411, column: 17, scope: !362)
!368 = !DILocation(line: 412, column: 27, scope: !362)
!369 = !DILocation(line: 412, column: 26, scope: !362)
!370 = !DILocation(line: 412, column: 32, scope: !362)
!371 = !DILocation(line: 412, column: 19, scope: !362)
!372 = !DILocation(line: 412, column: 14, scope: !362)
!373 = !DILocation(line: 412, column: 17, scope: !362)
!374 = !DILocation(line: 413, column: 14, scope: !362)
!375 = !DILocation(line: 413, column: 17, scope: !362)
!376 = !DILocation(line: 414, column: 14, scope: !362)
!377 = !DILocation(line: 415, column: 11, scope: !362)
!378 = !DILocation(line: 408, column: 7, scope: !379)
!379 = !DILexicalBlockFile(scope: !353, file: !18, discriminator: 2)
!380 = distinct !{!380, !356}
!381 = !DILocation(line: 417, column: 10, scope: !353)
!382 = !DILocation(line: 418, column: 4, scope: !353)
!383 = !DILocation(line: 419, column: 5, scope: !27)
!384 = !DILocation(line: 419, column: 9, scope: !27)
!385 = !DILocation(line: 420, column: 11, scope: !27)
!386 = !DILocation(line: 420, column: 23, scope: !27)
!387 = !DILocation(line: 420, column: 20, scope: !27)
!388 = !DILocation(line: 420, column: 4, scope: !27)
!389 = !DILocation(line: 421, column: 1, scope: !27)
!390 = distinct !DISubprogram(name: "Util_ExitProcessAbruptly", scope: !18, file: !18, line: 444, type: !391, isLocal: false, isDefinition: true, scopeLine: 445, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !37)
!391 = !DISubroutineType(types: !392)
!392 = !{null, !23}
!393 = !DILocalVariable(name: "code", arg: 1, scope: !390, file: !18, line: 444, type: !23)
!394 = !DILocation(line: 444, column: 30, scope: !390)
!395 = !DILocation(line: 449, column: 10, scope: !390)
!396 = !DILocation(line: 449, column: 4, scope: !390)
!397 = !DILocation(line: 451, column: 1, scope: !390)
!398 = distinct !DISubprogram(name: "Util_ExitThread", scope: !18, file: !18, line: 471, type: !391, isLocal: false, isDefinition: true, scopeLine: 472, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !37)
!399 = !DILocalVariable(name: "code", arg: 1, scope: !398, file: !18, line: 471, type: !23)
!400 = !DILocation(line: 471, column: 21, scope: !398)
!401 = !DILocation(line: 476, column: 9, scope: !398)
!402 = !DILocation(line: 476, column: 4, scope: !398)
!403 = !DILocation(line: 478, column: 1, scope: !398)
!404 = distinct !DISubprogram(name: "Util_CompareDotted", scope: !18, file: !18, line: 498, type: !405, isLocal: false, isDefinition: true, scopeLine: 499, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !37)
!405 = !DISubroutineType(types: !406)
!406 = !{!23, !195, !195}
!407 = !DILocalVariable(name: "s1", arg: 1, scope: !404, file: !18, line: 498, type: !195)
!408 = !DILocation(line: 498, column: 32, scope: !404)
!409 = !DILocalVariable(name: "s2", arg: 2, scope: !404, file: !18, line: 498, type: !195)
!410 = !DILocation(line: 498, column: 48, scope: !404)
!411 = !DILocalVariable(name: "i", scope: !404, file: !18, line: 500, type: !23)
!412 = !DILocation(line: 500, column: 8, scope: !404)
!413 = !DILocalVariable(name: "x", scope: !404, file: !18, line: 500, type: !414)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 160, align: 32, elements: !415)
!415 = !{!416}
!416 = !DISubrange(count: 5)
!417 = !DILocation(line: 500, column: 11, scope: !404)
!418 = !DILocalVariable(name: "y", scope: !404, file: !18, line: 500, type: !414)
!419 = !DILocation(line: 500, column: 17, scope: !404)
!420 = !DILocation(line: 502, column: 11, scope: !421)
!421 = distinct !DILexicalBlock(scope: !404, file: !18, line: 502, column: 4)
!422 = !DILocation(line: 502, column: 9, scope: !421)
!423 = !DILocation(line: 502, column: 16, scope: !424)
!424 = !DILexicalBlockFile(scope: !425, file: !18, discriminator: 1)
!425 = distinct !DILexicalBlock(scope: !421, file: !18, line: 502, column: 4)
!426 = !DILocation(line: 502, column: 18, scope: !424)
!427 = !DILocation(line: 502, column: 4, scope: !424)
!428 = !DILocation(line: 503, column: 9, scope: !429)
!429 = distinct !DILexicalBlock(scope: !425, file: !18, line: 502, column: 28)
!430 = !DILocation(line: 503, column: 7, scope: !429)
!431 = !DILocation(line: 503, column: 12, scope: !429)
!432 = !DILocation(line: 504, column: 9, scope: !429)
!433 = !DILocation(line: 504, column: 7, scope: !429)
!434 = !DILocation(line: 504, column: 12, scope: !429)
!435 = !DILocation(line: 505, column: 4, scope: !429)
!436 = !DILocation(line: 502, column: 24, scope: !437)
!437 = !DILexicalBlockFile(scope: !425, file: !18, discriminator: 2)
!438 = !DILocation(line: 502, column: 4, scope: !437)
!439 = distinct !{!439, !440}
!440 = !DILocation(line: 502, column: 4, scope: !404)
!441 = !DILocation(line: 507, column: 15, scope: !442)
!442 = distinct !DILexicalBlock(scope: !404, file: !18, line: 507, column: 8)
!443 = !DILocation(line: 507, column: 38, scope: !442)
!444 = !DILocation(line: 507, column: 45, scope: !442)
!445 = !DILocation(line: 507, column: 52, scope: !442)
!446 = !DILocation(line: 507, column: 59, scope: !442)
!447 = !DILocation(line: 507, column: 66, scope: !442)
!448 = !DILocation(line: 507, column: 8, scope: !442)
!449 = !DILocation(line: 507, column: 72, scope: !442)
!450 = !DILocation(line: 507, column: 8, scope: !404)
!451 = !DILocation(line: 508, column: 7, scope: !452)
!452 = distinct !DILexicalBlock(scope: !442, file: !18, line: 507, column: 77)
!453 = !DILocation(line: 508, column: 12, scope: !452)
!454 = !DILocation(line: 509, column: 4, scope: !452)
!455 = !DILocation(line: 510, column: 15, scope: !456)
!456 = distinct !DILexicalBlock(scope: !404, file: !18, line: 510, column: 8)
!457 = !DILocation(line: 510, column: 38, scope: !456)
!458 = !DILocation(line: 510, column: 45, scope: !456)
!459 = !DILocation(line: 510, column: 52, scope: !456)
!460 = !DILocation(line: 510, column: 59, scope: !456)
!461 = !DILocation(line: 510, column: 66, scope: !456)
!462 = !DILocation(line: 510, column: 8, scope: !456)
!463 = !DILocation(line: 510, column: 72, scope: !456)
!464 = !DILocation(line: 510, column: 8, scope: !404)
!465 = !DILocation(line: 511, column: 7, scope: !466)
!466 = distinct !DILexicalBlock(scope: !456, file: !18, line: 510, column: 77)
!467 = !DILocation(line: 511, column: 12, scope: !466)
!468 = !DILocation(line: 512, column: 4, scope: !466)
!469 = !DILocation(line: 514, column: 11, scope: !470)
!470 = distinct !DILexicalBlock(scope: !404, file: !18, line: 514, column: 4)
!471 = !DILocation(line: 514, column: 9, scope: !470)
!472 = !DILocation(line: 514, column: 16, scope: !473)
!473 = !DILexicalBlockFile(scope: !474, file: !18, discriminator: 1)
!474 = distinct !DILexicalBlock(scope: !470, file: !18, line: 514, column: 4)
!475 = !DILocation(line: 514, column: 18, scope: !473)
!476 = !DILocation(line: 514, column: 4, scope: !473)
!477 = !DILocation(line: 515, column: 13, scope: !478)
!478 = distinct !DILexicalBlock(scope: !479, file: !18, line: 515, column: 11)
!479 = distinct !DILexicalBlock(scope: !474, file: !18, line: 514, column: 28)
!480 = !DILocation(line: 515, column: 11, scope: !478)
!481 = !DILocation(line: 515, column: 20, scope: !478)
!482 = !DILocation(line: 515, column: 18, scope: !478)
!483 = !DILocation(line: 515, column: 16, scope: !478)
!484 = !DILocation(line: 515, column: 11, scope: !479)
!485 = !DILocation(line: 516, column: 10, scope: !486)
!486 = distinct !DILexicalBlock(scope: !478, file: !18, line: 515, column: 24)
!487 = !DILocation(line: 518, column: 13, scope: !488)
!488 = distinct !DILexicalBlock(scope: !479, file: !18, line: 518, column: 11)
!489 = !DILocation(line: 518, column: 11, scope: !488)
!490 = !DILocation(line: 518, column: 20, scope: !488)
!491 = !DILocation(line: 518, column: 18, scope: !488)
!492 = !DILocation(line: 518, column: 16, scope: !488)
!493 = !DILocation(line: 518, column: 11, scope: !479)
!494 = !DILocation(line: 519, column: 10, scope: !495)
!495 = distinct !DILexicalBlock(scope: !488, file: !18, line: 518, column: 24)
!496 = !DILocation(line: 521, column: 4, scope: !479)
!497 = !DILocation(line: 514, column: 24, scope: !498)
!498 = !DILexicalBlockFile(scope: !474, file: !18, discriminator: 2)
!499 = !DILocation(line: 514, column: 4, scope: !498)
!500 = distinct !{!500, !501}
!501 = !DILocation(line: 514, column: 4, scope: !404)
!502 = !DILocation(line: 523, column: 4, scope: !404)
!503 = !DILocation(line: 524, column: 1, scope: !404)
!504 = distinct !DISubprogram(name: "Util_GetOpt", scope: !18, file: !18, line: 554, type: !505, isLocal: false, isDefinition: true, scopeLine: 560, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !37)
!505 = !DISubroutineType(types: !506)
!506 = !{!23, !23, !507, !509, !519, !30}
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64, align: 64)
!508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64, align: 64)
!510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !511)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !512, line: 104, size: 256, align: 64, elements: !513)
!512 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/lichi/Desktop/open-vm-tools/line1052")
!513 = !{!514, !515, !516, !518}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !511, file: !512, line: 106, baseType: !195, size: 64, align: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !511, file: !512, line: 109, baseType: !23, size: 32, align: 32, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !511, file: !512, line: 110, baseType: !517, size: 64, align: 64, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !511, file: !512, line: 111, baseType: !23, size: 32, align: 32, offset: 192)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "Util_NonOptMode", file: !4, line: 137, baseType: !3)
!520 = !DILocalVariable(name: "argc", arg: 1, scope: !504, file: !18, line: 554, type: !23)
!521 = !DILocation(line: 554, column: 17, scope: !504)
!522 = !DILocalVariable(name: "argv", arg: 2, scope: !504, file: !18, line: 555, type: !507)
!523 = !DILocation(line: 555, column: 27, scope: !504)
!524 = !DILocalVariable(name: "opts", arg: 3, scope: !504, file: !18, line: 556, type: !509)
!525 = !DILocation(line: 556, column: 34, scope: !504)
!526 = !DILocalVariable(name: "mode", arg: 4, scope: !504, file: !18, line: 557, type: !519)
!527 = !DILocation(line: 557, column: 29, scope: !504)
!528 = !DILocalVariable(name: "manualErrorHandling", arg: 5, scope: !504, file: !18, line: 558, type: !30)
!529 = !DILocation(line: 558, column: 18, scope: !504)
!530 = !DILocalVariable(name: "ret", scope: !504, file: !18, line: 561, type: !23)
!531 = !DILocation(line: 561, column: 8, scope: !504)
!532 = !DILocalVariable(name: "longOpts", scope: !504, file: !18, line: 563, type: !533)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64, align: 64)
!534 = !DILocation(line: 563, column: 19, scope: !504)
!535 = !DILocalVariable(name: "shortOptString", scope: !504, file: !18, line: 564, type: !31)
!536 = !DILocation(line: 564, column: 10, scope: !504)
!537 = !DILocalVariable(name: "maxCharsPerShortOption", scope: !504, file: !18, line: 570, type: !538)
!538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!539 = !DILocation(line: 570, column: 17, scope: !504)
!540 = !DILocalVariable(name: "modePrefixSize", scope: !504, file: !18, line: 571, type: !538)
!541 = !DILocation(line: 571, column: 17, scope: !504)
!542 = !DILocalVariable(name: "n", scope: !504, file: !18, line: 573, type: !32)
!543 = !DILocation(line: 573, column: 11, scope: !504)
!544 = !DILocalVariable(name: "shortOptStringSize", scope: !504, file: !18, line: 574, type: !32)
!545 = !DILocation(line: 574, column: 11, scope: !504)
!546 = !DILocation(line: 576, column: 4, scope: !504)
!547 = !DILocation(line: 576, column: 18, scope: !548)
!548 = !DILexicalBlockFile(scope: !504, file: !18, discriminator: 1)
!549 = !DILocation(line: 576, column: 13, scope: !548)
!550 = !DILocation(line: 576, column: 21, scope: !548)
!551 = !DILocation(line: 576, column: 26, scope: !548)
!552 = !DILocation(line: 576, column: 33, scope: !548)
!553 = !DILocation(line: 576, column: 41, scope: !554)
!554 = !DILexicalBlockFile(scope: !504, file: !18, discriminator: 2)
!555 = !DILocation(line: 576, column: 36, scope: !554)
!556 = !DILocation(line: 576, column: 44, scope: !554)
!557 = !DILocation(line: 576, column: 48, scope: !554)
!558 = !DILocation(line: 576, column: 11, scope: !559)
!559 = !DILexicalBlockFile(scope: !504, file: !18, discriminator: 3)
!560 = !DILocation(line: 576, column: 4, scope: !559)
!561 = !DILocation(line: 577, column: 29, scope: !562)
!562 = distinct !DILexicalBlock(scope: !563, file: !18, line: 577, column: 11)
!563 = distinct !DILexicalBlock(scope: !504, file: !18, line: 576, column: 55)
!564 = !DILocation(line: 577, column: 31, scope: !562)
!565 = !DILocation(line: 577, column: 28, scope: !562)
!566 = !DILocation(line: 577, column: 11, scope: !562)
!567 = !DILocation(line: 577, column: 11, scope: !563)
!568 = !DILocation(line: 583, column: 10, scope: !569)
!569 = distinct !DILexicalBlock(scope: !562, file: !18, line: 577, column: 17)
!570 = !DILocation(line: 585, column: 8, scope: !563)
!571 = !DILocation(line: 576, column: 4, scope: !572)
!572 = !DILexicalBlockFile(scope: !504, file: !18, discriminator: 4)
!573 = distinct !{!573, !546}
!574 = !DILocation(line: 588, column: 26, scope: !575)
!575 = distinct !DILexicalBlock(scope: !504, file: !18, line: 588, column: 8)
!576 = !DILocation(line: 588, column: 28, scope: !575)
!577 = !DILocation(line: 588, column: 25, scope: !575)
!578 = !DILocation(line: 588, column: 8, scope: !575)
!579 = !DILocation(line: 588, column: 8, scope: !504)
!580 = !DILocation(line: 591, column: 7, scope: !581)
!581 = distinct !DILexicalBlock(scope: !575, file: !18, line: 588, column: 36)
!582 = !DILocation(line: 593, column: 23, scope: !504)
!583 = !DILocation(line: 593, column: 25, scope: !504)
!584 = !DILocation(line: 593, column: 30, scope: !504)
!585 = !DILocation(line: 593, column: 15, scope: !504)
!586 = !DILocation(line: 593, column: 13, scope: !504)
!587 = !DILocation(line: 594, column: 8, scope: !588)
!588 = distinct !DILexicalBlock(scope: !504, file: !18, line: 594, column: 8)
!589 = !DILocation(line: 594, column: 17, scope: !588)
!590 = !DILocation(line: 594, column: 8, scope: !504)
!591 = !DILocation(line: 595, column: 7, scope: !592)
!592 = distinct !DILexicalBlock(scope: !588, file: !18, line: 594, column: 25)
!593 = !DILocation(line: 598, column: 26, scope: !594)
!594 = distinct !DILexicalBlock(scope: !504, file: !18, line: 598, column: 8)
!595 = !DILocation(line: 598, column: 28, scope: !594)
!596 = !DILocation(line: 598, column: 25, scope: !594)
!597 = !DILocation(line: 598, column: 8, scope: !594)
!598 = !DILocation(line: 598, column: 8, scope: !504)
!599 = !DILocation(line: 602, column: 7, scope: !600)
!600 = distinct !DILexicalBlock(scope: !594, file: !18, line: 599, column: 42)
!601 = !DILocation(line: 604, column: 25, scope: !504)
!602 = !DILocation(line: 604, column: 27, scope: !504)
!603 = !DILocation(line: 604, column: 52, scope: !504)
!604 = !DILocation(line: 604, column: 69, scope: !504)
!605 = !DILocation(line: 604, column: 23, scope: !504)
!606 = !DILocation(line: 605, column: 28, scope: !504)
!607 = !DILocation(line: 605, column: 21, scope: !504)
!608 = !DILocation(line: 605, column: 19, scope: !504)
!609 = !DILocation(line: 606, column: 8, scope: !610)
!610 = distinct !DILexicalBlock(scope: !504, file: !18, line: 606, column: 8)
!611 = !DILocation(line: 606, column: 23, scope: !610)
!612 = !DILocation(line: 606, column: 8, scope: !504)
!613 = !DILocation(line: 607, column: 7, scope: !614)
!614 = distinct !DILexicalBlock(scope: !610, file: !18, line: 606, column: 31)
!615 = !DILocalVariable(name: "empty", scope: !616, file: !18, line: 609, type: !511)
!616 = distinct !DILexicalBlock(scope: !610, file: !18, line: 608, column: 11)
!617 = !DILocation(line: 609, column: 21, scope: !616)
!618 = !DILocalVariable(name: "i", scope: !616, file: !18, line: 611, type: !32)
!619 = !DILocation(line: 611, column: 14, scope: !616)
!620 = !DILocalVariable(name: "longOptOut", scope: !616, file: !18, line: 612, type: !533)
!621 = !DILocation(line: 612, column: 22, scope: !616)
!622 = !DILocation(line: 612, column: 35, scope: !616)
!623 = !DILocalVariable(name: "shortOptOut", scope: !616, file: !18, line: 613, type: !31)
!624 = !DILocation(line: 613, column: 13, scope: !616)
!625 = !DILocation(line: 613, column: 27, scope: !616)
!626 = !DILocation(line: 616, column: 15, scope: !616)
!627 = !DILocation(line: 616, column: 7, scope: !616)
!628 = !DILocation(line: 618, column: 25, scope: !629)
!629 = distinct !DILexicalBlock(scope: !616, file: !18, line: 616, column: 21)
!630 = !DILocation(line: 618, column: 28, scope: !629)
!631 = !DILocation(line: 619, column: 13, scope: !629)
!632 = !DILocation(line: 621, column: 25, scope: !629)
!633 = !DILocation(line: 621, column: 28, scope: !629)
!634 = !DILocation(line: 622, column: 13, scope: !629)
!635 = !DILocation(line: 624, column: 13, scope: !629)
!636 = !DILocation(line: 627, column: 11, scope: !637)
!637 = distinct !DILexicalBlock(scope: !616, file: !18, line: 627, column: 11)
!638 = !DILocation(line: 627, column: 11, scope: !616)
!639 = !DILocation(line: 632, column: 22, scope: !640)
!640 = distinct !DILexicalBlock(scope: !637, file: !18, line: 627, column: 32)
!641 = !DILocation(line: 632, column: 25, scope: !640)
!642 = !DILocation(line: 633, column: 7, scope: !640)
!643 = !DILocation(line: 635, column: 14, scope: !644)
!644 = distinct !DILexicalBlock(scope: !616, file: !18, line: 635, column: 7)
!645 = !DILocation(line: 635, column: 12, scope: !644)
!646 = !DILocation(line: 635, column: 19, scope: !647)
!647 = !DILexicalBlockFile(scope: !648, file: !18, discriminator: 1)
!648 = distinct !DILexicalBlock(scope: !644, file: !18, line: 635, column: 7)
!649 = !DILocation(line: 635, column: 23, scope: !647)
!650 = !DILocation(line: 635, column: 21, scope: !647)
!651 = !DILocation(line: 635, column: 7, scope: !647)
!652 = !DILocalVariable(name: "val", scope: !653, file: !18, line: 636, type: !23)
!653 = distinct !DILexicalBlock(scope: !648, file: !18, line: 635, column: 31)
!654 = !DILocation(line: 636, column: 14, scope: !653)
!655 = !DILocation(line: 636, column: 25, scope: !653)
!656 = !DILocation(line: 636, column: 20, scope: !653)
!657 = !DILocation(line: 636, column: 28, scope: !653)
!658 = !DILocation(line: 638, column: 19, scope: !659)
!659 = distinct !DILexicalBlock(scope: !653, file: !18, line: 638, column: 14)
!660 = !DILocation(line: 638, column: 14, scope: !659)
!661 = !DILocation(line: 638, column: 22, scope: !659)
!662 = !DILocation(line: 638, column: 27, scope: !659)
!663 = !DILocation(line: 638, column: 14, scope: !653)
!664 = !DILocation(line: 639, column: 24, scope: !665)
!665 = distinct !DILexicalBlock(scope: !659, file: !18, line: 638, column: 35)
!666 = !DILocation(line: 639, column: 34, scope: !665)
!667 = !DILocation(line: 639, column: 29, scope: !665)
!668 = !DILocation(line: 640, column: 10, scope: !665)
!669 = !DILocation(line: 642, column: 14, scope: !670)
!670 = distinct !DILexicalBlock(scope: !653, file: !18, line: 642, column: 14)
!671 = !DILocation(line: 642, column: 18, scope: !670)
!672 = !DILocation(line: 642, column: 22, scope: !670)
!673 = !DILocation(line: 642, column: 25, scope: !674)
!674 = !DILexicalBlockFile(scope: !670, file: !18, discriminator: 1)
!675 = !DILocation(line: 642, column: 29, scope: !674)
!676 = !DILocation(line: 642, column: 14, scope: !674)
!677 = !DILocalVariable(name: "argSpec", scope: !678, file: !18, line: 643, type: !23)
!678 = distinct !DILexicalBlock(scope: !670, file: !18, line: 642, column: 42)
!679 = !DILocation(line: 643, column: 17, scope: !678)
!680 = !DILocation(line: 643, column: 32, scope: !678)
!681 = !DILocation(line: 643, column: 27, scope: !678)
!682 = !DILocation(line: 643, column: 35, scope: !678)
!683 = !DILocation(line: 645, column: 37, scope: !678)
!684 = !DILocation(line: 645, column: 30, scope: !678)
!685 = !DILocation(line: 645, column: 25, scope: !678)
!686 = !DILocation(line: 645, column: 28, scope: !678)
!687 = !DILocation(line: 647, column: 17, scope: !688)
!688 = distinct !DILexicalBlock(scope: !678, file: !18, line: 647, column: 17)
!689 = !DILocation(line: 647, column: 25, scope: !688)
!690 = !DILocation(line: 647, column: 17, scope: !678)
!691 = !DILocation(line: 648, column: 28, scope: !692)
!692 = distinct !DILexicalBlock(scope: !688, file: !18, line: 647, column: 40)
!693 = !DILocation(line: 648, column: 31, scope: !692)
!694 = !DILocation(line: 650, column: 20, scope: !695)
!695 = distinct !DILexicalBlock(scope: !692, file: !18, line: 650, column: 20)
!696 = !DILocation(line: 650, column: 28, scope: !695)
!697 = !DILocation(line: 650, column: 20, scope: !692)
!698 = !DILocation(line: 651, column: 31, scope: !699)
!699 = distinct !DILexicalBlock(scope: !695, file: !18, line: 650, column: 49)
!700 = !DILocation(line: 651, column: 34, scope: !699)
!701 = !DILocation(line: 652, column: 16, scope: !699)
!702 = !DILocation(line: 653, column: 13, scope: !692)
!703 = !DILocation(line: 654, column: 10, scope: !678)
!704 = !DILocation(line: 655, column: 7, scope: !653)
!705 = !DILocation(line: 635, column: 27, scope: !706)
!706 = !DILexicalBlockFile(scope: !648, file: !18, discriminator: 2)
!707 = !DILocation(line: 635, column: 7, scope: !706)
!708 = distinct !{!708, !709}
!709 = !DILocation(line: 635, column: 7, scope: !616)
!710 = !DILocation(line: 658, column: 8, scope: !616)
!711 = !DILocation(line: 658, column: 21, scope: !616)
!712 = !DILocation(line: 661, column: 8, scope: !616)
!713 = !DILocation(line: 661, column: 20, scope: !616)
!714 = !DILocation(line: 664, column: 22, scope: !504)
!715 = !DILocation(line: 664, column: 28, scope: !504)
!716 = !DILocation(line: 664, column: 34, scope: !504)
!717 = !DILocation(line: 664, column: 50, scope: !504)
!718 = !DILocation(line: 664, column: 10, scope: !504)
!719 = !DILocation(line: 664, column: 8, scope: !504)
!720 = !DILocation(line: 664, column: 4, scope: !504)
!721 = !DILocation(line: 667, column: 9, scope: !504)
!722 = !DILocation(line: 667, column: 4, scope: !504)
!723 = !DILocation(line: 668, column: 9, scope: !504)
!724 = !DILocation(line: 668, column: 4, scope: !504)
!725 = !DILocation(line: 669, column: 11, scope: !504)
!726 = !DILocation(line: 669, column: 4, scope: !504)
!727 = distinct !DISubprogram(name: "Util_HasAdminPriv", scope: !18, file: !18, line: 694, type: !728, isLocal: false, isDefinition: true, scopeLine: 695, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !37)
!728 = !DISubroutineType(types: !729)
!729 = !{!23}
!730 = !DILocation(line: 741, column: 11, scope: !727)
!731 = !DILocation(line: 741, column: 4, scope: !727)
!732 = distinct !DISubprogram(name: "Id_IsSuperUser", scope: !733, file: !733, line: 128, type: !59, isLocal: true, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !37)
!733 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/su.h", directory: "/home/lichi/Desktop/open-vm-tools/line1052")
!734 = !DILocation(line: 128, column: 55, scope: !732)
!735 = !DILocation(line: 128, column: 52, scope: !732)
!736 = !DILocation(line: 128, column: 50, scope: !732)
!737 = !DILocation(line: 128, column: 43, scope: !732)
!738 = distinct !DISubprogram(name: "Util_DeriveFileName", scope: !18, file: !18, line: 769, type: !739, isLocal: false, isDefinition: true, scopeLine: 772, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !37)
!739 = !DISubroutineType(types: !740)
!740 = !{!31, !195, !195, !195}
!741 = !DILocalVariable(name: "source", arg: 1, scope: !738, file: !18, line: 769, type: !195)
!742 = !DILocation(line: 769, column: 33, scope: !738)
!743 = !DILocalVariable(name: "name", arg: 2, scope: !738, file: !18, line: 770, type: !195)
!744 = !DILocation(line: 770, column: 33, scope: !738)
!745 = !DILocalVariable(name: "ext", arg: 3, scope: !738, file: !18, line: 771, type: !195)
!746 = !DILocation(line: 771, column: 33, scope: !738)
!747 = !DILocalVariable(name: "returnResult", scope: !738, file: !18, line: 773, type: !31)
!748 = !DILocation(line: 773, column: 10, scope: !738)
!749 = !DILocalVariable(name: "path", scope: !738, file: !18, line: 774, type: !31)
!750 = !DILocation(line: 774, column: 10, scope: !738)
!751 = !DILocalVariable(name: "base", scope: !738, file: !18, line: 775, type: !31)
!752 = !DILocation(line: 775, column: 10, scope: !738)
!753 = !DILocation(line: 777, column: 8, scope: !754)
!754 = distinct !DILexicalBlock(scope: !738, file: !18, line: 777, column: 8)
!755 = !DILocation(line: 777, column: 15, scope: !754)
!756 = !DILocation(line: 777, column: 22, scope: !754)
!757 = !DILocation(line: 777, column: 26, scope: !758)
!758 = !DILexicalBlockFile(scope: !754, file: !18, discriminator: 1)
!759 = !DILocation(line: 777, column: 31, scope: !758)
!760 = !DILocation(line: 777, column: 39, scope: !758)
!761 = !DILocation(line: 777, column: 42, scope: !762)
!762 = !DILexicalBlockFile(scope: !754, file: !18, discriminator: 2)
!763 = !DILocation(line: 777, column: 46, scope: !762)
!764 = !DILocation(line: 777, column: 8, scope: !762)
!765 = !DILocation(line: 778, column: 7, scope: !766)
!766 = distinct !DILexicalBlock(scope: !754, file: !18, line: 777, column: 56)
!767 = !DILocation(line: 779, column: 7, scope: !766)
!768 = !DILocation(line: 781, column: 21, scope: !738)
!769 = !DILocation(line: 781, column: 4, scope: !738)
!770 = !DILocation(line: 784, column: 8, scope: !771)
!771 = distinct !DILexicalBlock(scope: !738, file: !18, line: 784, column: 8)
!772 = !DILocation(line: 784, column: 13, scope: !771)
!773 = !DILocation(line: 784, column: 8, scope: !738)
!774 = !DILocation(line: 785, column: 12, scope: !775)
!775 = distinct !DILexicalBlock(scope: !771, file: !18, line: 784, column: 21)
!776 = !DILocation(line: 785, column: 7, scope: !775)
!777 = !DILocation(line: 795, column: 32, scope: !778)
!778 = distinct !DILexicalBlock(scope: !775, file: !18, line: 795, column: 11)
!779 = !DILocation(line: 795, column: 12, scope: !778)
!780 = !DILocation(line: 795, column: 38, scope: !778)
!781 = !DILocation(line: 795, column: 48, scope: !782)
!782 = !DILexicalBlockFile(scope: !778, file: !18, discriminator: 1)
!783 = !DILocation(line: 795, column: 41, scope: !782)
!784 = !DILocation(line: 795, column: 54, scope: !782)
!785 = !DILocation(line: 795, column: 58, scope: !782)
!786 = !DILocation(line: 796, column: 18, scope: !778)
!787 = !DILocation(line: 796, column: 11, scope: !778)
!788 = !DILocation(line: 796, column: 29, scope: !778)
!789 = !DILocation(line: 795, column: 11, scope: !790)
!790 = !DILexicalBlockFile(scope: !775, file: !18, discriminator: 2)
!791 = !DILocation(line: 797, column: 7, scope: !792)
!792 = distinct !DILexicalBlock(scope: !793, file: !18, line: 797, column: 7)
!793 = distinct !DILexicalBlock(scope: !778, file: !18, line: 796, column: 35)
!794 = !DILocation(line: 797, column: 11, scope: !792)
!795 = !DILocation(line: 797, column: 7, scope: !793)
!796 = !DILocation(line: 799, column: 45, scope: !797)
!797 = distinct !DILexicalBlock(scope: !792, file: !18, line: 797, column: 19)
!798 = !DILocation(line: 799, column: 56, scope: !797)
!799 = !DILocation(line: 798, column: 21, scope: !797)
!800 = !DILocation(line: 798, column: 19, scope: !797)
!801 = !DILocation(line: 800, column: 3, scope: !797)
!802 = !DILocation(line: 802, column: 45, scope: !803)
!803 = distinct !DILexicalBlock(scope: !792, file: !18, line: 800, column: 10)
!804 = !DILocation(line: 802, column: 56, scope: !803)
!805 = !DILocation(line: 802, column: 62, scope: !803)
!806 = !DILocation(line: 801, column: 28, scope: !803)
!807 = !DILocation(line: 801, column: 26, scope: !803)
!808 = !DILocation(line: 804, column: 7, scope: !793)
!809 = !DILocation(line: 813, column: 7, scope: !810)
!810 = distinct !DILexicalBlock(scope: !811, file: !18, line: 813, column: 7)
!811 = distinct !DILexicalBlock(scope: !778, file: !18, line: 804, column: 14)
!812 = !DILocation(line: 813, column: 11, scope: !810)
!813 = !DILocation(line: 813, column: 7, scope: !811)
!814 = !DILocation(line: 814, column: 45, scope: !815)
!815 = distinct !DILexicalBlock(scope: !810, file: !18, line: 813, column: 19)
!816 = !DILocation(line: 814, column: 28, scope: !815)
!817 = !DILocation(line: 814, column: 26, scope: !815)
!818 = !DILocation(line: 815, column: 3, scope: !815)
!819 = !DILocation(line: 816, column: 59, scope: !820)
!820 = distinct !DILexicalBlock(scope: !810, file: !18, line: 815, column: 10)
!821 = !DILocation(line: 816, column: 65, scope: !820)
!822 = !DILocation(line: 816, column: 28, scope: !820)
!823 = !DILocation(line: 816, column: 26, scope: !820)
!824 = !DILocation(line: 819, column: 12, scope: !775)
!825 = !DILocation(line: 819, column: 7, scope: !775)
!826 = !DILocation(line: 820, column: 14, scope: !775)
!827 = !DILocation(line: 820, column: 7, scope: !775)
!828 = !DILocalVariable(name: "p", scope: !829, file: !18, line: 827, type: !31)
!829 = distinct !DILexicalBlock(scope: !738, file: !18, line: 826, column: 4)
!830 = !DILocation(line: 827, column: 13, scope: !829)
!831 = !DILocation(line: 827, column: 25, scope: !829)
!832 = !DILocation(line: 827, column: 17, scope: !829)
!833 = !DILocation(line: 828, column: 11, scope: !834)
!834 = distinct !DILexicalBlock(scope: !829, file: !18, line: 828, column: 11)
!835 = !DILocation(line: 828, column: 13, scope: !834)
!836 = !DILocation(line: 828, column: 11, scope: !829)
!837 = !DILocation(line: 829, column: 4, scope: !838)
!838 = distinct !DILexicalBlock(scope: !834, file: !18, line: 828, column: 21)
!839 = !DILocation(line: 829, column: 6, scope: !838)
!840 = !DILocation(line: 830, column: 7, scope: !838)
!841 = !DILocation(line: 834, column: 15, scope: !842)
!842 = distinct !DILexicalBlock(scope: !738, file: !18, line: 834, column: 8)
!843 = !DILocation(line: 834, column: 8, scope: !842)
!844 = !DILocation(line: 834, column: 21, scope: !842)
!845 = !DILocation(line: 834, column: 25, scope: !842)
!846 = !DILocation(line: 834, column: 35, scope: !847)
!847 = !DILexicalBlockFile(scope: !842, file: !18, discriminator: 1)
!848 = !DILocation(line: 834, column: 28, scope: !847)
!849 = !DILocation(line: 834, column: 46, scope: !847)
!850 = !DILocation(line: 834, column: 8, scope: !847)
!851 = !DILocation(line: 836, column: 39, scope: !852)
!852 = distinct !DILexicalBlock(scope: !842, file: !18, line: 834, column: 52)
!853 = !DILocation(line: 836, column: 50, scope: !852)
!854 = !DILocation(line: 836, column: 56, scope: !852)
!855 = !DILocation(line: 835, column: 22, scope: !852)
!856 = !DILocation(line: 835, column: 20, scope: !852)
!857 = !DILocation(line: 837, column: 4, scope: !852)
!858 = !DILocation(line: 843, column: 53, scope: !859)
!859 = distinct !DILexicalBlock(scope: !842, file: !18, line: 837, column: 11)
!860 = !DILocation(line: 843, column: 59, scope: !859)
!861 = !DILocation(line: 843, column: 22, scope: !859)
!862 = !DILocation(line: 843, column: 20, scope: !859)
!863 = !DILocation(line: 845, column: 9, scope: !738)
!864 = !DILocation(line: 845, column: 4, scope: !738)
!865 = !DILocation(line: 846, column: 9, scope: !738)
!866 = !DILocation(line: 846, column: 4, scope: !738)
!867 = !DILocation(line: 847, column: 11, scope: !738)
!868 = !DILocation(line: 847, column: 4, scope: !738)
!869 = !DILocation(line: 848, column: 1, scope: !738)
!870 = distinct !DISubprogram(name: "UtilCRCMakeTable", scope: !18, file: !18, line: 274, type: !871, isLocal: true, isDefinition: true, scopeLine: 275, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !37)
!871 = !DISubroutineType(types: !872)
!872 = !{null, !10}
!873 = !DILocalVariable(name: "crcTable", arg: 1, scope: !870, file: !18, line: 274, type: !10)
!874 = !DILocation(line: 274, column: 25, scope: !870)
!875 = !DILocalVariable(name: "c", scope: !870, file: !18, line: 276, type: !11)
!876 = !DILocation(line: 276, column: 11, scope: !870)
!877 = !DILocalVariable(name: "n", scope: !870, file: !18, line: 277, type: !23)
!878 = !DILocation(line: 277, column: 8, scope: !870)
!879 = !DILocalVariable(name: "k", scope: !870, file: !18, line: 277, type: !23)
!880 = !DILocation(line: 277, column: 11, scope: !870)
!881 = !DILocation(line: 279, column: 11, scope: !882)
!882 = distinct !DILexicalBlock(scope: !870, file: !18, line: 279, column: 4)
!883 = !DILocation(line: 279, column: 9, scope: !882)
!884 = !DILocation(line: 279, column: 16, scope: !885)
!885 = !DILexicalBlockFile(scope: !886, file: !18, discriminator: 1)
!886 = distinct !DILexicalBlock(scope: !882, file: !18, line: 279, column: 4)
!887 = !DILocation(line: 279, column: 18, scope: !885)
!888 = !DILocation(line: 279, column: 4, scope: !885)
!889 = !DILocation(line: 280, column: 20, scope: !890)
!890 = distinct !DILexicalBlock(scope: !886, file: !18, line: 279, column: 30)
!891 = !DILocation(line: 280, column: 9, scope: !890)
!892 = !DILocation(line: 281, column: 14, scope: !893)
!893 = distinct !DILexicalBlock(scope: !890, file: !18, line: 281, column: 7)
!894 = !DILocation(line: 281, column: 12, scope: !893)
!895 = !DILocation(line: 281, column: 19, scope: !896)
!896 = !DILexicalBlockFile(scope: !897, file: !18, discriminator: 1)
!897 = distinct !DILexicalBlock(scope: !893, file: !18, line: 281, column: 7)
!898 = !DILocation(line: 281, column: 21, scope: !896)
!899 = !DILocation(line: 281, column: 7, scope: !896)
!900 = !DILocation(line: 282, column: 14, scope: !901)
!901 = distinct !DILexicalBlock(scope: !902, file: !18, line: 282, column: 14)
!902 = distinct !DILexicalBlock(scope: !897, file: !18, line: 281, column: 31)
!903 = !DILocation(line: 282, column: 16, scope: !901)
!904 = !DILocation(line: 282, column: 14, scope: !902)
!905 = !DILocation(line: 283, column: 32, scope: !906)
!906 = distinct !DILexicalBlock(scope: !901, file: !18, line: 282, column: 21)
!907 = !DILocation(line: 283, column: 34, scope: !906)
!908 = !DILocation(line: 283, column: 31, scope: !906)
!909 = !DILocation(line: 283, column: 29, scope: !906)
!910 = !DILocation(line: 283, column: 17, scope: !906)
!911 = !DILocation(line: 283, column: 15, scope: !906)
!912 = !DILocation(line: 284, column: 10, scope: !906)
!913 = !DILocation(line: 285, column: 17, scope: !914)
!914 = distinct !DILexicalBlock(scope: !901, file: !18, line: 284, column: 17)
!915 = !DILocation(line: 285, column: 19, scope: !914)
!916 = !DILocation(line: 285, column: 15, scope: !914)
!917 = !DILocation(line: 287, column: 7, scope: !902)
!918 = !DILocation(line: 281, column: 27, scope: !919)
!919 = !DILexicalBlockFile(scope: !897, file: !18, discriminator: 2)
!920 = !DILocation(line: 281, column: 7, scope: !919)
!921 = distinct !{!921, !922}
!922 = !DILocation(line: 281, column: 7, scope: !890)
!923 = !DILocation(line: 288, column: 21, scope: !890)
!924 = !DILocation(line: 288, column: 16, scope: !890)
!925 = !DILocation(line: 288, column: 7, scope: !890)
!926 = !DILocation(line: 288, column: 19, scope: !890)
!927 = !DILocation(line: 289, column: 4, scope: !890)
!928 = !DILocation(line: 279, column: 26, scope: !929)
!929 = !DILexicalBlockFile(scope: !886, file: !18, discriminator: 2)
!930 = !DILocation(line: 279, column: 4, scope: !929)
!931 = distinct !{!931, !932}
!932 = !DILocation(line: 279, column: 4, scope: !870)
!933 = !DILocation(line: 290, column: 1, scope: !870)
