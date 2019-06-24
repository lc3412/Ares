; ModuleID = './codesetBase.o.i'
source_filename = "./codesetBase.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { i32 }

; Function Attrs: nounwind uwtable
define i32 @CodeSet_GetUtf8(i8*, i8*, i32*) #0 !dbg !16 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !27, metadata !28), !dbg !29
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !30, metadata !28), !dbg !31
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !32, metadata !28), !dbg !33
  call void @llvm.dbg.declare(metadata i8** %8, metadata !34, metadata !28), !dbg !35
  %12 = load i8*, i8** %5, align 8, !dbg !36
  store i8* %12, i8** %8, align 8, !dbg !35
  call void @llvm.dbg.declare(metadata i8** %9, metadata !37, metadata !28), !dbg !38
  call void @llvm.dbg.declare(metadata i32* %10, metadata !39, metadata !28), !dbg !40
  call void @llvm.dbg.declare(metadata i32* %11, metadata !41, metadata !28), !dbg !42
  %13 = load i8*, i8** %8, align 8, !dbg !43
  %14 = load i8, i8* %13, align 1, !dbg !44
  %15 = zext i8 %14 to i32, !dbg !44
  store i32 %15, i32* %10, align 4, !dbg !45
  %16 = load i32, i32* %10, align 4, !dbg !46
  %17 = icmp ult i32 %16, 128, !dbg !48
  br i1 %17, label %18, label %19, !dbg !49

; <label>:18:                                     ; preds = %3
  store i32 1, i32* %11, align 4, !dbg !50
  br label %81, !dbg !52

; <label>:19:                                     ; preds = %3
  %20 = load i32, i32* %10, align 4, !dbg !53
  %21 = icmp ult i32 %20, 194, !dbg !55
  br i1 %21, label %25, label %22, !dbg !56

; <label>:22:                                     ; preds = %19
  %23 = load i32, i32* %10, align 4, !dbg !57
  %24 = icmp ugt i32 %23, 244, !dbg !59
  br i1 %24, label %25, label %26, !dbg !60

; <label>:25:                                     ; preds = %22, %19
  store i32 0, i32* %4, align 4, !dbg !61
  br label %89, !dbg !61

; <label>:26:                                     ; preds = %22
  %27 = load i32, i32* %10, align 4, !dbg !63
  %28 = icmp ult i32 %27, 224, !dbg !65
  br i1 %28, label %29, label %32, !dbg !66

; <label>:29:                                     ; preds = %26
  %30 = load i32, i32* %10, align 4, !dbg !67
  %31 = sub i32 %30, 192, !dbg !67
  store i32 %31, i32* %10, align 4, !dbg !67
  store i32 2, i32* %11, align 4, !dbg !69
  br label %42, !dbg !70

; <label>:32:                                     ; preds = %26
  %33 = load i32, i32* %10, align 4, !dbg !71
  %34 = icmp ult i32 %33, 240, !dbg !74
  br i1 %34, label %35, label %38, !dbg !71

; <label>:35:                                     ; preds = %32
  %36 = load i32, i32* %10, align 4, !dbg !75
  %37 = sub i32 %36, 224, !dbg !75
  store i32 %37, i32* %10, align 4, !dbg !75
  store i32 3, i32* %11, align 4, !dbg !77
  br label %41, !dbg !78

; <label>:38:                                     ; preds = %32
  %39 = load i32, i32* %10, align 4, !dbg !79
  %40 = sub i32 %39, 240, !dbg !79
  store i32 %40, i32* %10, align 4, !dbg !79
  store i32 4, i32* %11, align 4, !dbg !81
  br label %41

; <label>:41:                                     ; preds = %38, %35
  br label %42

; <label>:42:                                     ; preds = %41, %29
  %43 = load i8*, i8** %8, align 8, !dbg !82
  %44 = load i32, i32* %11, align 4, !dbg !84
  %45 = sext i32 %44 to i64, !dbg !85
  %46 = getelementptr inbounds i8, i8* %43, i64 %45, !dbg !85
  store i8* %46, i8** %9, align 8, !dbg !86
  %47 = load i8*, i8** %6, align 8, !dbg !87
  %48 = icmp ugt i8* %46, %47, !dbg !88
  br i1 %48, label %49, label %50, !dbg !89

; <label>:49:                                     ; preds = %42
  store i32 0, i32* %4, align 4, !dbg !90
  br label %89, !dbg !90

; <label>:50:                                     ; preds = %42
  br label %51, !dbg !92

; <label>:51:                                     ; preds = %63, %50
  %52 = load i8*, i8** %8, align 8, !dbg !93
  %53 = getelementptr inbounds i8, i8* %52, i32 1, !dbg !93
  store i8* %53, i8** %8, align 8, !dbg !93
  %54 = load i8*, i8** %9, align 8, !dbg !95
  %55 = icmp ult i8* %53, %54, !dbg !96
  br i1 %55, label %56, label %72, !dbg !97

; <label>:56:                                     ; preds = %51
  %57 = load i8*, i8** %8, align 8, !dbg !98
  %58 = load i8, i8* %57, align 1, !dbg !101
  %59 = zext i8 %58 to i32, !dbg !101
  %60 = and i32 %59, 192, !dbg !102
  %61 = icmp ne i32 %60, 128, !dbg !103
  br i1 %61, label %62, label %63, !dbg !104

; <label>:62:                                     ; preds = %56
  store i32 0, i32* %4, align 4, !dbg !105
  br label %89, !dbg !105

; <label>:63:                                     ; preds = %56
  %64 = load i32, i32* %10, align 4, !dbg !107
  %65 = shl i32 %64, 6, !dbg !107
  store i32 %65, i32* %10, align 4, !dbg !107
  %66 = load i8*, i8** %8, align 8, !dbg !108
  %67 = load i8, i8* %66, align 1, !dbg !109
  %68 = zext i8 %67 to i32, !dbg !109
  %69 = sub nsw i32 %68, 128, !dbg !110
  %70 = load i32, i32* %10, align 4, !dbg !111
  %71 = add i32 %70, %69, !dbg !111
  store i32 %71, i32* %10, align 4, !dbg !111
  br label %51, !dbg !112, !llvm.loop !114

; <label>:72:                                     ; preds = %51
  %73 = load i32, i32* %10, align 4, !dbg !115
  %74 = load i32, i32* %11, align 4, !dbg !117
  %75 = mul nsw i32 %74, 5, !dbg !118
  %76 = sub nsw i32 %75, 4, !dbg !119
  %77 = shl i32 1, %76, !dbg !120
  %78 = icmp ult i32 %73, %77, !dbg !121
  br i1 %78, label %79, label %80, !dbg !122

; <label>:79:                                     ; preds = %72
  store i32 0, i32* %4, align 4, !dbg !123
  br label %89, !dbg !123

; <label>:80:                                     ; preds = %72
  br label %81, !dbg !125

; <label>:81:                                     ; preds = %80, %18
  %82 = load i32*, i32** %7, align 8, !dbg !127
  %83 = icmp ne i32* %82, null, !dbg !129
  br i1 %83, label %84, label %87, !dbg !130

; <label>:84:                                     ; preds = %81
  %85 = load i32, i32* %10, align 4, !dbg !131
  %86 = load i32*, i32** %7, align 8, !dbg !133
  store i32 %85, i32* %86, align 4, !dbg !134
  br label %87, !dbg !135

; <label>:87:                                     ; preds = %84, %81
  %88 = load i32, i32* %11, align 4, !dbg !136
  store i32 %88, i32* %4, align 4, !dbg !137
  br label %89, !dbg !137

; <label>:89:                                     ; preds = %87, %79, %62, %49, %25
  %90 = load i32, i32* %4, align 4, !dbg !138
  ret i32 %90, !dbg !138
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @CodeSet_LengthInCodePoints(i8*) #0 !dbg !139 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !142, metadata !28), !dbg !143
  call void @llvm.dbg.declare(metadata i8** %4, metadata !144, metadata !28), !dbg !145
  call void @llvm.dbg.declare(metadata i8** %5, metadata !146, metadata !28), !dbg !147
  call void @llvm.dbg.declare(metadata i32* %6, metadata !148, metadata !28), !dbg !149
  store i32 0, i32* %6, align 4, !dbg !149
  %8 = load i8*, i8** %3, align 8, !dbg !150
  store i8* %8, i8** %4, align 8, !dbg !151
  %9 = load i8*, i8** %4, align 8, !dbg !152
  %10 = load i8*, i8** %3, align 8, !dbg !153
  %11 = call i64 @strlen(i8* %10) #5, !dbg !154
  %12 = getelementptr inbounds i8, i8* %9, i64 %11, !dbg !155
  store i8* %12, i8** %5, align 8, !dbg !156
  br label %13, !dbg !157

; <label>:13:                                     ; preds = %24, %1
  %14 = load i8*, i8** %4, align 8, !dbg !158
  %15 = load i8*, i8** %5, align 8, !dbg !160
  %16 = icmp ult i8* %14, %15, !dbg !161
  br i1 %16, label %17, label %31, !dbg !162

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.declare(metadata i32* %7, metadata !163, metadata !28), !dbg !165
  %18 = load i8*, i8** %4, align 8, !dbg !166
  %19 = load i8*, i8** %5, align 8, !dbg !167
  %20 = call i32 @CodeSet_GetUtf8(i8* %18, i8* %19, i32* null), !dbg !168
  store i32 %20, i32* %7, align 4, !dbg !165
  %21 = load i32, i32* %7, align 4, !dbg !169
  %22 = icmp eq i32 %21, 0, !dbg !171
  br i1 %22, label %23, label %24, !dbg !172

; <label>:23:                                     ; preds = %17
  store i32 -1, i32* %2, align 4, !dbg !173
  br label %33, !dbg !173

; <label>:24:                                     ; preds = %17
  %25 = load i32, i32* %7, align 4, !dbg !175
  %26 = load i8*, i8** %4, align 8, !dbg !176
  %27 = zext i32 %25 to i64, !dbg !176
  %28 = getelementptr inbounds i8, i8* %26, i64 %27, !dbg !176
  store i8* %28, i8** %4, align 8, !dbg !176
  %29 = load i32, i32* %6, align 4, !dbg !177
  %30 = add i32 %29, 1, !dbg !177
  store i32 %30, i32* %6, align 4, !dbg !177
  br label %13, !dbg !178, !llvm.loop !180

; <label>:31:                                     ; preds = %13
  %32 = load i32, i32* %6, align 4, !dbg !181
  store i32 %32, i32* %2, align 4, !dbg !182
  br label %33, !dbg !182

; <label>:33:                                     ; preds = %31, %23
  %34 = load i32, i32* %2, align 4, !dbg !183
  ret i32 %34, !dbg !183
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @CodeSet_CodePointOffsetToByteOffset(i8*, i32) #0 !dbg !184 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !187, metadata !28), !dbg !188
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !189, metadata !28), !dbg !190
  call void @llvm.dbg.declare(metadata i8** %6, metadata !191, metadata !28), !dbg !192
  call void @llvm.dbg.declare(metadata i8** %7, metadata !193, metadata !28), !dbg !194
  %10 = load i8*, i8** %4, align 8, !dbg !195
  store i8* %10, i8** %6, align 8, !dbg !196
  %11 = load i8*, i8** %6, align 8, !dbg !197
  %12 = load i8*, i8** %4, align 8, !dbg !198
  %13 = call i64 @strlen(i8* %12) #5, !dbg !199
  %14 = getelementptr inbounds i8, i8* %11, i64 %13, !dbg !200
  store i8* %14, i8** %7, align 8, !dbg !201
  br label %15, !dbg !202

; <label>:15:                                     ; preds = %31, %2
  %16 = load i8*, i8** %6, align 8, !dbg !203
  %17 = load i8*, i8** %7, align 8, !dbg !205
  %18 = icmp ult i8* %16, %17, !dbg !206
  br i1 %18, label %19, label %22, !dbg !207

; <label>:19:                                     ; preds = %15
  %20 = load i32, i32* %5, align 4, !dbg !208
  %21 = icmp sgt i32 %20, 0, !dbg !210
  br label %22

; <label>:22:                                     ; preds = %19, %15
  %23 = phi i1 [ false, %15 ], [ %21, %19 ]
  br i1 %23, label %24, label %38, !dbg !211

; <label>:24:                                     ; preds = %22
  call void @llvm.dbg.declare(metadata i32* %8, metadata !213, metadata !28), !dbg !215
  call void @llvm.dbg.declare(metadata i32* %9, metadata !216, metadata !28), !dbg !217
  %25 = load i8*, i8** %6, align 8, !dbg !218
  %26 = load i8*, i8** %7, align 8, !dbg !219
  %27 = call i32 @CodeSet_GetUtf8(i8* %25, i8* %26, i32* %8), !dbg !220
  store i32 %27, i32* %9, align 4, !dbg !217
  %28 = load i32, i32* %9, align 4, !dbg !221
  %29 = icmp eq i32 %28, 0, !dbg !223
  br i1 %29, label %30, label %31, !dbg !224

; <label>:30:                                     ; preds = %24
  store i32 -1, i32* %3, align 4, !dbg !225
  br label %49, !dbg !225

; <label>:31:                                     ; preds = %24
  %32 = load i32, i32* %9, align 4, !dbg !227
  %33 = load i8*, i8** %6, align 8, !dbg !228
  %34 = zext i32 %32 to i64, !dbg !228
  %35 = getelementptr inbounds i8, i8* %33, i64 %34, !dbg !228
  store i8* %35, i8** %6, align 8, !dbg !228
  %36 = load i32, i32* %5, align 4, !dbg !229
  %37 = add nsw i32 %36, -1, !dbg !229
  store i32 %37, i32* %5, align 4, !dbg !229
  br label %15, !dbg !230, !llvm.loop !232

; <label>:38:                                     ; preds = %22
  %39 = load i32, i32* %5, align 4, !dbg !233
  %40 = icmp eq i32 %39, 0, !dbg !235
  br i1 %40, label %41, label %48, !dbg !236

; <label>:41:                                     ; preds = %38
  %42 = load i8*, i8** %6, align 8, !dbg !237
  %43 = load i8*, i8** %4, align 8, !dbg !239
  %44 = ptrtoint i8* %42 to i64, !dbg !240
  %45 = ptrtoint i8* %43 to i64, !dbg !240
  %46 = sub i64 %44, %45, !dbg !240
  %47 = trunc i64 %46 to i32, !dbg !237
  store i32 %47, i32* %3, align 4, !dbg !241
  br label %49, !dbg !241

; <label>:48:                                     ; preds = %38
  store i32 -1, i32* %3, align 4, !dbg !242
  br label %49, !dbg !242

; <label>:49:                                     ; preds = %48, %41, %30
  %50 = load i32, i32* %3, align 4, !dbg !244
  ret i32 %50, !dbg !244
}

; Function Attrs: nounwind uwtable
define signext i8 @CodeSet_UTF8ToUTF32(i8*, i8**) #0 !dbg !245 {
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !250, metadata !28), !dbg !251
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !252, metadata !28), !dbg !253
  call void @llvm.dbg.declare(metadata i8** %6, metadata !254, metadata !28), !dbg !255
  call void @llvm.dbg.declare(metadata i8** %7, metadata !256, metadata !28), !dbg !257
  call void @llvm.dbg.declare(metadata i32** %8, metadata !258, metadata !28), !dbg !259
  call void @llvm.dbg.declare(metadata i32* %9, metadata !260, metadata !28), !dbg !261
  %10 = load i8*, i8** %4, align 8, !dbg !262
  %11 = icmp eq i8* %10, null, !dbg !264
  br i1 %11, label %12, label %14, !dbg !265

; <label>:12:                                     ; preds = %2
  %13 = load i8**, i8*** %5, align 8, !dbg !266
  store i8* null, i8** %13, align 8, !dbg !268
  store i8 1, i8* %3, align 1, !dbg !269
  br label %51, !dbg !269

; <label>:14:                                     ; preds = %2
  %15 = load i8*, i8** %4, align 8, !dbg !270
  %16 = call i32 @CodeSet_LengthInCodePoints(i8* %15), !dbg !271
  store i32 %16, i32* %9, align 4, !dbg !272
  %17 = load i32, i32* %9, align 4, !dbg !273
  %18 = icmp eq i32 %17, -1, !dbg !275
  br i1 %18, label %19, label %21, !dbg !276

; <label>:19:                                     ; preds = %14
  %20 = load i8**, i8*** %5, align 8, !dbg !277
  store i8* null, i8** %20, align 8, !dbg !279
  store i8 0, i8* %3, align 1, !dbg !280
  br label %51, !dbg !280

; <label>:21:                                     ; preds = %14
  %22 = load i8*, i8** %4, align 8, !dbg !281
  store i8* %22, i8** %6, align 8, !dbg !282
  %23 = load i8*, i8** %6, align 8, !dbg !283
  %24 = load i8*, i8** %4, align 8, !dbg !284
  %25 = call i64 @strlen(i8* %24) #5, !dbg !285
  %26 = getelementptr inbounds i8, i8* %23, i64 %25, !dbg !286
  store i8* %26, i8** %7, align 8, !dbg !287
  %27 = load i32, i32* %9, align 4, !dbg !288
  %28 = add nsw i32 %27, 1, !dbg !289
  %29 = sext i32 %28 to i64, !dbg !290
  %30 = mul i64 4, %29, !dbg !291
  %31 = call i8* @UtilSafeMalloc0(i64 %30), !dbg !292
  %32 = bitcast i8* %31 to i32*, !dbg !292
  store i32* %32, i32** %8, align 8, !dbg !293
  %33 = load i32*, i32** %8, align 8, !dbg !294
  %34 = bitcast i32* %33 to i8*, !dbg !295
  %35 = load i8**, i8*** %5, align 8, !dbg !296
  store i8* %34, i8** %35, align 8, !dbg !297
  br label %36, !dbg !298

; <label>:36:                                     ; preds = %40, %21
  %37 = load i8*, i8** %6, align 8, !dbg !299
  %38 = load i8*, i8** %7, align 8, !dbg !301
  %39 = icmp ult i8* %37, %38, !dbg !302
  br i1 %39, label %40, label %49, !dbg !303

; <label>:40:                                     ; preds = %36
  %41 = load i8*, i8** %6, align 8, !dbg !304
  %42 = load i8*, i8** %7, align 8, !dbg !306
  %43 = load i32*, i32** %8, align 8, !dbg !307
  %44 = getelementptr inbounds i32, i32* %43, i32 1, !dbg !307
  store i32* %44, i32** %8, align 8, !dbg !307
  %45 = call i32 @CodeSet_GetUtf8(i8* %41, i8* %42, i32* %43), !dbg !308
  %46 = load i8*, i8** %6, align 8, !dbg !309
  %47 = sext i32 %45 to i64, !dbg !309
  %48 = getelementptr inbounds i8, i8* %46, i64 %47, !dbg !309
  store i8* %48, i8** %6, align 8, !dbg !309
  br label %36, !dbg !310, !llvm.loop !312

; <label>:49:                                     ; preds = %36
  %50 = load i32*, i32** %8, align 8, !dbg !313
  store i32 0, i32* %50, align 4, !dbg !314
  store i8 1, i8* %3, align 1, !dbg !315
  br label %51, !dbg !315

; <label>:51:                                     ; preds = %49, %19, %12
  %52 = load i8, i8* %3, align 1, !dbg !316
  ret i8 %52, !dbg !316
}

declare i8* @UtilSafeMalloc0(i64) #3

; Function Attrs: nounwind uwtable
define signext i8 @CodeSet_UTF32ToUTF8(i8*, i8**) #0 !dbg !317 {
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %union.anon, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !318, metadata !28), !dbg !319
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !320, metadata !28), !dbg !321
  call void @llvm.dbg.declare(metadata i32* %6, metadata !322, metadata !28), !dbg !323
  call void @llvm.dbg.declare(metadata i8** %7, metadata !324, metadata !28), !dbg !325
  call void @llvm.dbg.declare(metadata i8** %8, metadata !326, metadata !28), !dbg !327
  call void @llvm.dbg.declare(metadata i32* %9, metadata !328, metadata !28), !dbg !329
  call void @llvm.dbg.declare(metadata %union.anon* %10, metadata !330, metadata !28), !dbg !338
  %11 = load i8*, i8** %4, align 8, !dbg !339
  %12 = icmp eq i8* %11, null, !dbg !341
  br i1 %12, label %13, label %15, !dbg !342

; <label>:13:                                     ; preds = %2
  %14 = load i8**, i8*** %5, align 8, !dbg !343
  store i8* null, i8** %14, align 8, !dbg !345
  store i8 1, i8* %3, align 1, !dbg !346
  br label %183, !dbg !346

; <label>:15:                                     ; preds = %2
  store i32 0, i32* %9, align 4, !dbg !347
  %16 = load i8*, i8** %4, align 8, !dbg !348
  store i8* %16, i8** %7, align 8, !dbg !349
  br label %17, !dbg !350

; <label>:17:                                     ; preds = %15, %42
  %18 = load i8*, i8** %7, align 8, !dbg !351
  %19 = getelementptr inbounds i8, i8* %18, i32 1, !dbg !351
  store i8* %19, i8** %7, align 8, !dbg !351
  %20 = load i8, i8* %18, align 1, !dbg !353
  %21 = bitcast %union.anon* %10 to [4 x i8]*, !dbg !354
  %22 = getelementptr inbounds [4 x i8], [4 x i8]* %21, i64 0, i64 0, !dbg !355
  store i8 %20, i8* %22, align 4, !dbg !356
  %23 = load i8*, i8** %7, align 8, !dbg !357
  %24 = getelementptr inbounds i8, i8* %23, i32 1, !dbg !357
  store i8* %24, i8** %7, align 8, !dbg !357
  %25 = load i8, i8* %23, align 1, !dbg !358
  %26 = bitcast %union.anon* %10 to [4 x i8]*, !dbg !359
  %27 = getelementptr inbounds [4 x i8], [4 x i8]* %26, i64 0, i64 1, !dbg !360
  store i8 %25, i8* %27, align 1, !dbg !361
  %28 = load i8*, i8** %7, align 8, !dbg !362
  %29 = getelementptr inbounds i8, i8* %28, i32 1, !dbg !362
  store i8* %29, i8** %7, align 8, !dbg !362
  %30 = load i8, i8* %28, align 1, !dbg !363
  %31 = bitcast %union.anon* %10 to [4 x i8]*, !dbg !364
  %32 = getelementptr inbounds [4 x i8], [4 x i8]* %31, i64 0, i64 2, !dbg !365
  store i8 %30, i8* %32, align 2, !dbg !366
  %33 = load i8*, i8** %7, align 8, !dbg !367
  %34 = getelementptr inbounds i8, i8* %33, i32 1, !dbg !367
  store i8* %34, i8** %7, align 8, !dbg !367
  %35 = load i8, i8* %33, align 1, !dbg !368
  %36 = bitcast %union.anon* %10 to [4 x i8]*, !dbg !369
  %37 = getelementptr inbounds [4 x i8], [4 x i8]* %36, i64 0, i64 3, !dbg !370
  store i8 %35, i8* %37, align 1, !dbg !371
  %38 = bitcast %union.anon* %10 to i32*, !dbg !372
  %39 = load i32, i32* %38, align 4, !dbg !372
  %40 = icmp eq i32 %39, 0, !dbg !374
  br i1 %40, label %41, label %42, !dbg !375

; <label>:41:                                     ; preds = %17
  br label %45, !dbg !376

; <label>:42:                                     ; preds = %17
  %43 = load i32, i32* %9, align 4, !dbg !378
  %44 = add i32 %43, 1, !dbg !378
  store i32 %44, i32* %9, align 4, !dbg !378
  br label %17, !dbg !379, !llvm.loop !381

; <label>:45:                                     ; preds = %41
  %46 = load i32, i32* %9, align 4, !dbg !382
  %47 = mul i32 4, %46, !dbg !383
  %48 = add i32 %47, 1, !dbg !384
  %49 = zext i32 %48 to i64, !dbg !385
  %50 = call i8* @UtilSafeMalloc0(i64 %49), !dbg !386
  %51 = load i8**, i8*** %5, align 8, !dbg !387
  store i8* %50, i8** %51, align 8, !dbg !388
  %52 = load i8*, i8** %4, align 8, !dbg !389
  store i8* %52, i8** %7, align 8, !dbg !390
  %53 = load i8**, i8*** %5, align 8, !dbg !391
  %54 = load i8*, i8** %53, align 8, !dbg !392
  store i8* %54, i8** %8, align 8, !dbg !393
  store i32 0, i32* %6, align 4, !dbg !394
  br label %55, !dbg !396

; <label>:55:                                     ; preds = %178, %45
  %56 = load i32, i32* %6, align 4, !dbg !397
  %57 = load i32, i32* %9, align 4, !dbg !400
  %58 = icmp ult i32 %56, %57, !dbg !401
  br i1 %58, label %59, label %181, !dbg !402

; <label>:59:                                     ; preds = %55
  %60 = load i8*, i8** %7, align 8, !dbg !403
  %61 = getelementptr inbounds i8, i8* %60, i32 1, !dbg !403
  store i8* %61, i8** %7, align 8, !dbg !403
  %62 = load i8, i8* %60, align 1, !dbg !405
  %63 = bitcast %union.anon* %10 to [4 x i8]*, !dbg !406
  %64 = getelementptr inbounds [4 x i8], [4 x i8]* %63, i64 0, i64 0, !dbg !407
  store i8 %62, i8* %64, align 4, !dbg !408
  %65 = load i8*, i8** %7, align 8, !dbg !409
  %66 = getelementptr inbounds i8, i8* %65, i32 1, !dbg !409
  store i8* %66, i8** %7, align 8, !dbg !409
  %67 = load i8, i8* %65, align 1, !dbg !410
  %68 = bitcast %union.anon* %10 to [4 x i8]*, !dbg !411
  %69 = getelementptr inbounds [4 x i8], [4 x i8]* %68, i64 0, i64 1, !dbg !412
  store i8 %67, i8* %69, align 1, !dbg !413
  %70 = load i8*, i8** %7, align 8, !dbg !414
  %71 = getelementptr inbounds i8, i8* %70, i32 1, !dbg !414
  store i8* %71, i8** %7, align 8, !dbg !414
  %72 = load i8, i8* %70, align 1, !dbg !415
  %73 = bitcast %union.anon* %10 to [4 x i8]*, !dbg !416
  %74 = getelementptr inbounds [4 x i8], [4 x i8]* %73, i64 0, i64 2, !dbg !417
  store i8 %72, i8* %74, align 2, !dbg !418
  %75 = load i8*, i8** %7, align 8, !dbg !419
  %76 = getelementptr inbounds i8, i8* %75, i32 1, !dbg !419
  store i8* %76, i8** %7, align 8, !dbg !419
  %77 = load i8, i8* %75, align 1, !dbg !420
  %78 = bitcast %union.anon* %10 to [4 x i8]*, !dbg !421
  %79 = getelementptr inbounds [4 x i8], [4 x i8]* %78, i64 0, i64 3, !dbg !422
  store i8 %77, i8* %79, align 1, !dbg !423
  %80 = bitcast %union.anon* %10 to i32*, !dbg !424
  %81 = load i32, i32* %80, align 4, !dbg !424
  %82 = icmp ult i32 %81, 128, !dbg !426
  br i1 %82, label %83, label %89, !dbg !427

; <label>:83:                                     ; preds = %59
  %84 = bitcast %union.anon* %10 to i32*, !dbg !428
  %85 = load i32, i32* %84, align 4, !dbg !428
  %86 = trunc i32 %85 to i8, !dbg !430
  %87 = load i8*, i8** %8, align 8, !dbg !431
  %88 = getelementptr inbounds i8, i8* %87, i32 1, !dbg !431
  store i8* %88, i8** %8, align 8, !dbg !431
  store i8 %86, i8* %87, align 1, !dbg !432
  br label %177, !dbg !433

; <label>:89:                                     ; preds = %59
  %90 = bitcast %union.anon* %10 to i32*, !dbg !434
  %91 = load i32, i32* %90, align 4, !dbg !434
  %92 = icmp ult i32 %91, 2048, !dbg !437
  br i1 %92, label %93, label %108, !dbg !438

; <label>:93:                                     ; preds = %89
  %94 = bitcast %union.anon* %10 to i32*, !dbg !439
  %95 = load i32, i32* %94, align 4, !dbg !439
  %96 = lshr i32 %95, 6, !dbg !441
  %97 = or i32 192, %96, !dbg !442
  %98 = trunc i32 %97 to i8, !dbg !443
  %99 = load i8*, i8** %8, align 8, !dbg !444
  %100 = getelementptr inbounds i8, i8* %99, i32 1, !dbg !444
  store i8* %100, i8** %8, align 8, !dbg !444
  store i8 %98, i8* %99, align 1, !dbg !445
  %101 = bitcast %union.anon* %10 to i32*, !dbg !446
  %102 = load i32, i32* %101, align 4, !dbg !446
  %103 = and i32 %102, 63, !dbg !447
  %104 = or i32 128, %103, !dbg !448
  %105 = trunc i32 %104 to i8, !dbg !449
  %106 = load i8*, i8** %8, align 8, !dbg !450
  %107 = getelementptr inbounds i8, i8* %106, i32 1, !dbg !450
  store i8* %107, i8** %8, align 8, !dbg !450
  store i8 %105, i8* %106, align 1, !dbg !451
  br label %176, !dbg !452

; <label>:108:                                    ; preds = %89
  %109 = bitcast %union.anon* %10 to i32*, !dbg !453
  %110 = load i32, i32* %109, align 4, !dbg !453
  %111 = icmp ult i32 %110, 65536, !dbg !456
  br i1 %111, label %112, label %135, !dbg !457

; <label>:112:                                    ; preds = %108
  %113 = bitcast %union.anon* %10 to i32*, !dbg !458
  %114 = load i32, i32* %113, align 4, !dbg !458
  %115 = lshr i32 %114, 12, !dbg !460
  %116 = or i32 224, %115, !dbg !461
  %117 = trunc i32 %116 to i8, !dbg !462
  %118 = load i8*, i8** %8, align 8, !dbg !463
  %119 = getelementptr inbounds i8, i8* %118, i32 1, !dbg !463
  store i8* %119, i8** %8, align 8, !dbg !463
  store i8 %117, i8* %118, align 1, !dbg !464
  %120 = bitcast %union.anon* %10 to i32*, !dbg !465
  %121 = load i32, i32* %120, align 4, !dbg !465
  %122 = lshr i32 %121, 6, !dbg !466
  %123 = and i32 %122, 63, !dbg !467
  %124 = or i32 128, %123, !dbg !468
  %125 = trunc i32 %124 to i8, !dbg !469
  %126 = load i8*, i8** %8, align 8, !dbg !470
  %127 = getelementptr inbounds i8, i8* %126, i32 1, !dbg !470
  store i8* %127, i8** %8, align 8, !dbg !470
  store i8 %125, i8* %126, align 1, !dbg !471
  %128 = bitcast %union.anon* %10 to i32*, !dbg !472
  %129 = load i32, i32* %128, align 4, !dbg !472
  %130 = and i32 %129, 63, !dbg !473
  %131 = or i32 128, %130, !dbg !474
  %132 = trunc i32 %131 to i8, !dbg !475
  %133 = load i8*, i8** %8, align 8, !dbg !476
  %134 = getelementptr inbounds i8, i8* %133, i32 1, !dbg !476
  store i8* %134, i8** %8, align 8, !dbg !476
  store i8 %132, i8* %133, align 1, !dbg !477
  br label %175, !dbg !478

; <label>:135:                                    ; preds = %108
  %136 = bitcast %union.anon* %10 to i32*, !dbg !479
  %137 = load i32, i32* %136, align 4, !dbg !479
  %138 = icmp ult i32 %137, 1114112, !dbg !482
  br i1 %138, label %139, label %170, !dbg !483

; <label>:139:                                    ; preds = %135
  %140 = bitcast %union.anon* %10 to i32*, !dbg !484
  %141 = load i32, i32* %140, align 4, !dbg !484
  %142 = lshr i32 %141, 18, !dbg !486
  %143 = or i32 240, %142, !dbg !487
  %144 = trunc i32 %143 to i8, !dbg !488
  %145 = load i8*, i8** %8, align 8, !dbg !489
  %146 = getelementptr inbounds i8, i8* %145, i32 1, !dbg !489
  store i8* %146, i8** %8, align 8, !dbg !489
  store i8 %144, i8* %145, align 1, !dbg !490
  %147 = bitcast %union.anon* %10 to i32*, !dbg !491
  %148 = load i32, i32* %147, align 4, !dbg !491
  %149 = lshr i32 %148, 12, !dbg !492
  %150 = and i32 %149, 63, !dbg !493
  %151 = or i32 128, %150, !dbg !494
  %152 = trunc i32 %151 to i8, !dbg !495
  %153 = load i8*, i8** %8, align 8, !dbg !496
  %154 = getelementptr inbounds i8, i8* %153, i32 1, !dbg !496
  store i8* %154, i8** %8, align 8, !dbg !496
  store i8 %152, i8* %153, align 1, !dbg !497
  %155 = bitcast %union.anon* %10 to i32*, !dbg !498
  %156 = load i32, i32* %155, align 4, !dbg !498
  %157 = lshr i32 %156, 6, !dbg !499
  %158 = and i32 %157, 63, !dbg !500
  %159 = or i32 128, %158, !dbg !501
  %160 = trunc i32 %159 to i8, !dbg !502
  %161 = load i8*, i8** %8, align 8, !dbg !503
  %162 = getelementptr inbounds i8, i8* %161, i32 1, !dbg !503
  store i8* %162, i8** %8, align 8, !dbg !503
  store i8 %160, i8* %161, align 1, !dbg !504
  %163 = bitcast %union.anon* %10 to i32*, !dbg !505
  %164 = load i32, i32* %163, align 4, !dbg !505
  %165 = and i32 %164, 63, !dbg !506
  %166 = or i32 128, %165, !dbg !507
  %167 = trunc i32 %166 to i8, !dbg !508
  %168 = load i8*, i8** %8, align 8, !dbg !509
  %169 = getelementptr inbounds i8, i8* %168, i32 1, !dbg !509
  store i8* %169, i8** %8, align 8, !dbg !509
  store i8 %167, i8* %168, align 1, !dbg !510
  br label %174, !dbg !511

; <label>:170:                                    ; preds = %135
  %171 = load i8**, i8*** %5, align 8, !dbg !512
  %172 = load i8*, i8** %171, align 8, !dbg !514
  call void @free(i8* %172) #6, !dbg !515
  %173 = load i8**, i8*** %5, align 8, !dbg !516
  store i8* null, i8** %173, align 8, !dbg !517
  store i8 0, i8* %3, align 1, !dbg !518
  br label %183, !dbg !518

; <label>:174:                                    ; preds = %139
  br label %175

; <label>:175:                                    ; preds = %174, %112
  br label %176

; <label>:176:                                    ; preds = %175, %93
  br label %177

; <label>:177:                                    ; preds = %176, %83
  br label %178, !dbg !519

; <label>:178:                                    ; preds = %177
  %179 = load i32, i32* %6, align 4, !dbg !520
  %180 = add i32 %179, 1, !dbg !520
  store i32 %180, i32* %6, align 4, !dbg !520
  br label %55, !dbg !522, !llvm.loop !523

; <label>:181:                                    ; preds = %55
  %182 = load i8*, i8** %8, align 8, !dbg !525
  store i8 0, i8* %182, align 1, !dbg !526
  store i8 1, i8* %3, align 1, !dbg !527
  br label %183, !dbg !527

; <label>:183:                                    ; preds = %181, %170, %13
  %184 = load i8, i8* %3, align 1, !dbg !528
  ret i8 %184, !dbg !528
}

; Function Attrs: nounwind
declare void @free(i8*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "codesetBase.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line556")
!2 = !{}
!3 = !{!4, !10, !11}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !6, line: 177, baseType: !7)
!6 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line556")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !8, line: 48, baseType: !9)
!8 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line556")
!9 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!13 = !{i32 2, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!16 = distinct !DISubprogram(name: "CodeSet_GetUtf8", scope: !17, file: !17, line: 51, type: !18, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!17 = !DIFile(filename: "codesetBase.c", directory: "/home/lichi/Desktop/open-vm-tools/line556")
!18 = !DISubroutineType(types: !19)
!19 = !{!20, !21, !21, !23}
!20 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !6, line: 173, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !8, line: 51, baseType: !26)
!26 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!27 = !DILocalVariable(name: "string", arg: 1, scope: !16, file: !17, line: 51, type: !21)
!28 = !DIExpression()
!29 = !DILocation(line: 51, column: 29, scope: !16)
!30 = !DILocalVariable(name: "end", arg: 2, scope: !16, file: !17, line: 52, type: !21)
!31 = !DILocation(line: 52, column: 29, scope: !16)
!32 = !DILocalVariable(name: "uchar", arg: 3, scope: !16, file: !17, line: 53, type: !23)
!33 = !DILocation(line: 53, column: 25, scope: !16)
!34 = !DILocalVariable(name: "p", scope: !16, file: !17, line: 55, type: !4)
!35 = !DILocation(line: 55, column: 11, scope: !16)
!36 = !DILocation(line: 55, column: 25, scope: !16)
!37 = !DILocalVariable(name: "e", scope: !16, file: !17, line: 56, type: !4)
!38 = !DILocation(line: 56, column: 11, scope: !16)
!39 = !DILocalVariable(name: "c", scope: !16, file: !17, line: 57, type: !24)
!40 = !DILocation(line: 57, column: 11, scope: !16)
!41 = !DILocalVariable(name: "len", scope: !16, file: !17, line: 58, type: !20)
!42 = !DILocation(line: 58, column: 8, scope: !16)
!43 = !DILocation(line: 61, column: 9, scope: !16)
!44 = !DILocation(line: 61, column: 8, scope: !16)
!45 = !DILocation(line: 61, column: 6, scope: !16)
!46 = !DILocation(line: 63, column: 8, scope: !47)
!47 = distinct !DILexicalBlock(scope: !16, file: !17, line: 63, column: 8)
!48 = !DILocation(line: 63, column: 10, scope: !47)
!49 = !DILocation(line: 63, column: 8, scope: !16)
!50 = !DILocation(line: 65, column: 11, scope: !51)
!51 = distinct !DILexicalBlock(scope: !47, file: !17, line: 63, column: 18)
!52 = !DILocation(line: 66, column: 7, scope: !51)
!53 = !DILocation(line: 69, column: 9, scope: !54)
!54 = distinct !DILexicalBlock(scope: !16, file: !17, line: 69, column: 8)
!55 = !DILocation(line: 69, column: 11, scope: !54)
!56 = !DILocation(line: 69, column: 19, scope: !54)
!57 = !DILocation(line: 69, column: 23, scope: !58)
!58 = !DILexicalBlockFile(scope: !54, file: !17, discriminator: 1)
!59 = !DILocation(line: 69, column: 25, scope: !58)
!60 = !DILocation(line: 69, column: 8, scope: !58)
!61 = !DILocation(line: 73, column: 7, scope: !62)
!62 = distinct !DILexicalBlock(scope: !54, file: !17, line: 69, column: 34)
!63 = !DILocation(line: 76, column: 8, scope: !64)
!64 = distinct !DILexicalBlock(scope: !16, file: !17, line: 76, column: 8)
!65 = !DILocation(line: 76, column: 10, scope: !64)
!66 = !DILocation(line: 76, column: 8, scope: !16)
!67 = !DILocation(line: 78, column: 9, scope: !68)
!68 = distinct !DILexicalBlock(scope: !64, file: !17, line: 76, column: 18)
!69 = !DILocation(line: 79, column: 11, scope: !68)
!70 = !DILocation(line: 80, column: 4, scope: !68)
!71 = !DILocation(line: 80, column: 15, scope: !72)
!72 = !DILexicalBlockFile(scope: !73, file: !17, discriminator: 1)
!73 = distinct !DILexicalBlock(scope: !64, file: !17, line: 80, column: 15)
!74 = !DILocation(line: 80, column: 17, scope: !72)
!75 = !DILocation(line: 82, column: 9, scope: !76)
!76 = distinct !DILexicalBlock(scope: !73, file: !17, line: 80, column: 25)
!77 = !DILocation(line: 83, column: 11, scope: !76)
!78 = !DILocation(line: 84, column: 4, scope: !76)
!79 = !DILocation(line: 86, column: 9, scope: !80)
!80 = distinct !DILexicalBlock(scope: !73, file: !17, line: 84, column: 11)
!81 = !DILocation(line: 87, column: 11, scope: !80)
!82 = !DILocation(line: 90, column: 13, scope: !83)
!83 = distinct !DILexicalBlock(scope: !16, file: !17, line: 90, column: 8)
!84 = !DILocation(line: 90, column: 17, scope: !83)
!85 = !DILocation(line: 90, column: 15, scope: !83)
!86 = !DILocation(line: 90, column: 11, scope: !83)
!87 = !DILocation(line: 90, column: 34, scope: !83)
!88 = !DILocation(line: 90, column: 22, scope: !83)
!89 = !DILocation(line: 90, column: 8, scope: !16)
!90 = !DILocation(line: 92, column: 7, scope: !91)
!91 = distinct !DILexicalBlock(scope: !83, file: !17, line: 90, column: 39)
!92 = !DILocation(line: 95, column: 4, scope: !16)
!93 = !DILocation(line: 95, column: 11, scope: !94)
!94 = !DILexicalBlockFile(scope: !16, file: !17, discriminator: 1)
!95 = !DILocation(line: 95, column: 17, scope: !94)
!96 = !DILocation(line: 95, column: 15, scope: !94)
!97 = !DILocation(line: 95, column: 4, scope: !94)
!98 = !DILocation(line: 96, column: 13, scope: !99)
!99 = distinct !DILexicalBlock(scope: !100, file: !17, line: 96, column: 11)
!100 = distinct !DILexicalBlock(scope: !16, file: !17, line: 95, column: 20)
!101 = !DILocation(line: 96, column: 12, scope: !99)
!102 = !DILocation(line: 96, column: 15, scope: !99)
!103 = !DILocation(line: 96, column: 23, scope: !99)
!104 = !DILocation(line: 96, column: 11, scope: !100)
!105 = !DILocation(line: 98, column: 10, scope: !106)
!106 = distinct !DILexicalBlock(scope: !99, file: !17, line: 96, column: 32)
!107 = !DILocation(line: 100, column: 9, scope: !100)
!108 = !DILocation(line: 101, column: 13, scope: !100)
!109 = !DILocation(line: 101, column: 12, scope: !100)
!110 = !DILocation(line: 101, column: 15, scope: !100)
!111 = !DILocation(line: 101, column: 9, scope: !100)
!112 = !DILocation(line: 95, column: 4, scope: !113)
!113 = !DILexicalBlockFile(scope: !16, file: !17, discriminator: 2)
!114 = distinct !{!114, !92}
!115 = !DILocation(line: 115, column: 8, scope: !116)
!116 = distinct !DILexicalBlock(scope: !16, file: !17, line: 115, column: 8)
!117 = !DILocation(line: 115, column: 19, scope: !116)
!118 = !DILocation(line: 115, column: 23, scope: !116)
!119 = !DILocation(line: 115, column: 27, scope: !116)
!120 = !DILocation(line: 115, column: 15, scope: !116)
!121 = !DILocation(line: 115, column: 10, scope: !116)
!122 = !DILocation(line: 115, column: 8, scope: !16)
!123 = !DILocation(line: 116, column: 7, scope: !124)
!124 = distinct !DILexicalBlock(scope: !116, file: !17, line: 115, column: 33)
!125 = !DILocation(line: 115, column: 30, scope: !126)
!126 = !DILexicalBlockFile(scope: !116, file: !17, discriminator: 1)
!127 = !DILocation(line: 120, column: 8, scope: !128)
!128 = distinct !DILexicalBlock(scope: !16, file: !17, line: 120, column: 8)
!129 = !DILocation(line: 120, column: 14, scope: !128)
!130 = !DILocation(line: 120, column: 8, scope: !16)
!131 = !DILocation(line: 121, column: 16, scope: !132)
!132 = distinct !DILexicalBlock(scope: !128, file: !17, line: 120, column: 22)
!133 = !DILocation(line: 121, column: 8, scope: !132)
!134 = !DILocation(line: 121, column: 14, scope: !132)
!135 = !DILocation(line: 122, column: 4, scope: !132)
!136 = !DILocation(line: 124, column: 11, scope: !16)
!137 = !DILocation(line: 124, column: 4, scope: !16)
!138 = !DILocation(line: 125, column: 1, scope: !16)
!139 = distinct !DISubprogram(name: "CodeSet_LengthInCodePoints", scope: !17, file: !17, line: 149, type: !140, isLocal: false, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!140 = !DISubroutineType(types: !141)
!141 = !{!20, !21}
!142 = !DILocalVariable(name: "utf8", arg: 1, scope: !139, file: !17, line: 149, type: !21)
!143 = !DILocation(line: 149, column: 40, scope: !139)
!144 = !DILocalVariable(name: "p", scope: !139, file: !17, line: 151, type: !11)
!145 = !DILocation(line: 151, column: 10, scope: !139)
!146 = !DILocalVariable(name: "end", scope: !139, file: !17, line: 152, type: !11)
!147 = !DILocation(line: 152, column: 10, scope: !139)
!148 = !DILocalVariable(name: "codePoints", scope: !139, file: !17, line: 153, type: !24)
!149 = !DILocation(line: 153, column: 11, scope: !139)
!150 = !DILocation(line: 157, column: 17, scope: !139)
!151 = !DILocation(line: 157, column: 6, scope: !139)
!152 = !DILocation(line: 158, column: 10, scope: !139)
!153 = !DILocation(line: 158, column: 21, scope: !139)
!154 = !DILocation(line: 158, column: 14, scope: !139)
!155 = !DILocation(line: 158, column: 12, scope: !139)
!156 = !DILocation(line: 158, column: 8, scope: !139)
!157 = !DILocation(line: 160, column: 4, scope: !139)
!158 = !DILocation(line: 160, column: 11, scope: !159)
!159 = !DILexicalBlockFile(scope: !139, file: !17, discriminator: 1)
!160 = !DILocation(line: 160, column: 15, scope: !159)
!161 = !DILocation(line: 160, column: 13, scope: !159)
!162 = !DILocation(line: 160, column: 4, scope: !159)
!163 = !DILocalVariable(name: "len", scope: !164, file: !17, line: 161, type: !24)
!164 = distinct !DILexicalBlock(scope: !139, file: !17, line: 160, column: 20)
!165 = !DILocation(line: 161, column: 14, scope: !164)
!166 = !DILocation(line: 161, column: 36, scope: !164)
!167 = !DILocation(line: 161, column: 39, scope: !164)
!168 = !DILocation(line: 161, column: 20, scope: !164)
!169 = !DILocation(line: 163, column: 11, scope: !170)
!170 = distinct !DILexicalBlock(scope: !164, file: !17, line: 163, column: 11)
!171 = !DILocation(line: 163, column: 15, scope: !170)
!172 = !DILocation(line: 163, column: 11, scope: !164)
!173 = !DILocation(line: 164, column: 10, scope: !174)
!174 = distinct !DILexicalBlock(scope: !170, file: !17, line: 163, column: 21)
!175 = !DILocation(line: 167, column: 12, scope: !164)
!176 = !DILocation(line: 167, column: 9, scope: !164)
!177 = !DILocation(line: 168, column: 17, scope: !164)
!178 = !DILocation(line: 160, column: 4, scope: !179)
!179 = !DILexicalBlockFile(scope: !139, file: !17, discriminator: 2)
!180 = distinct !{!180, !157}
!181 = !DILocation(line: 171, column: 11, scope: !139)
!182 = !DILocation(line: 171, column: 4, scope: !139)
!183 = !DILocation(line: 172, column: 1, scope: !139)
!184 = distinct !DISubprogram(name: "CodeSet_CodePointOffsetToByteOffset", scope: !17, file: !17, line: 193, type: !185, isLocal: false, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!185 = !DISubroutineType(types: !186)
!186 = !{!20, !21, !20}
!187 = !DILocalVariable(name: "utf8", arg: 1, scope: !184, file: !17, line: 193, type: !21)
!188 = !DILocation(line: 193, column: 49, scope: !184)
!189 = !DILocalVariable(name: "codePointOffset", arg: 2, scope: !184, file: !17, line: 194, type: !20)
!190 = !DILocation(line: 194, column: 41, scope: !184)
!191 = !DILocalVariable(name: "p", scope: !184, file: !17, line: 196, type: !21)
!192 = !DILocation(line: 196, column: 16, scope: !184)
!193 = !DILocalVariable(name: "end", scope: !184, file: !17, line: 197, type: !21)
!194 = !DILocation(line: 197, column: 16, scope: !184)
!195 = !DILocation(line: 201, column: 8, scope: !184)
!196 = !DILocation(line: 201, column: 6, scope: !184)
!197 = !DILocation(line: 202, column: 10, scope: !184)
!198 = !DILocation(line: 202, column: 21, scope: !184)
!199 = !DILocation(line: 202, column: 14, scope: !184)
!200 = !DILocation(line: 202, column: 12, scope: !184)
!201 = !DILocation(line: 202, column: 8, scope: !184)
!202 = !DILocation(line: 204, column: 4, scope: !184)
!203 = !DILocation(line: 204, column: 11, scope: !204)
!204 = !DILexicalBlockFile(scope: !184, file: !17, discriminator: 1)
!205 = !DILocation(line: 204, column: 15, scope: !204)
!206 = !DILocation(line: 204, column: 13, scope: !204)
!207 = !DILocation(line: 204, column: 19, scope: !204)
!208 = !DILocation(line: 204, column: 22, scope: !209)
!209 = !DILexicalBlockFile(scope: !184, file: !17, discriminator: 2)
!210 = !DILocation(line: 204, column: 38, scope: !209)
!211 = !DILocation(line: 204, column: 4, scope: !212)
!212 = !DILexicalBlockFile(scope: !184, file: !17, discriminator: 3)
!213 = !DILocalVariable(name: "utf32", scope: !214, file: !17, line: 205, type: !24)
!214 = distinct !DILexicalBlock(scope: !184, file: !17, line: 204, column: 43)
!215 = !DILocation(line: 205, column: 14, scope: !214)
!216 = !DILocalVariable(name: "len", scope: !214, file: !17, line: 206, type: !24)
!217 = !DILocation(line: 206, column: 14, scope: !214)
!218 = !DILocation(line: 206, column: 36, scope: !214)
!219 = !DILocation(line: 206, column: 39, scope: !214)
!220 = !DILocation(line: 206, column: 20, scope: !214)
!221 = !DILocation(line: 208, column: 11, scope: !222)
!222 = distinct !DILexicalBlock(scope: !214, file: !17, line: 208, column: 11)
!223 = !DILocation(line: 208, column: 15, scope: !222)
!224 = !DILocation(line: 208, column: 11, scope: !214)
!225 = !DILocation(line: 209, column: 10, scope: !226)
!226 = distinct !DILexicalBlock(scope: !222, file: !17, line: 208, column: 21)
!227 = !DILocation(line: 212, column: 12, scope: !214)
!228 = !DILocation(line: 212, column: 9, scope: !214)
!229 = !DILocation(line: 213, column: 22, scope: !214)
!230 = !DILocation(line: 204, column: 4, scope: !231)
!231 = !DILexicalBlockFile(scope: !184, file: !17, discriminator: 4)
!232 = distinct !{!232, !202}
!233 = !DILocation(line: 216, column: 8, scope: !234)
!234 = distinct !DILexicalBlock(scope: !184, file: !17, line: 216, column: 8)
!235 = !DILocation(line: 216, column: 24, scope: !234)
!236 = !DILocation(line: 216, column: 8, scope: !184)
!237 = !DILocation(line: 217, column: 14, scope: !238)
!238 = distinct !DILexicalBlock(scope: !234, file: !17, line: 216, column: 30)
!239 = !DILocation(line: 217, column: 18, scope: !238)
!240 = !DILocation(line: 217, column: 16, scope: !238)
!241 = !DILocation(line: 217, column: 7, scope: !238)
!242 = !DILocation(line: 219, column: 7, scope: !243)
!243 = distinct !DILexicalBlock(scope: !234, file: !17, line: 218, column: 11)
!244 = !DILocation(line: 221, column: 1, scope: !184)
!245 = distinct !DISubprogram(name: "CodeSet_UTF8ToUTF32", scope: !17, file: !17, line: 243, type: !246, isLocal: false, isDefinition: true, scopeLine: 245, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!246 = !DISubroutineType(types: !247)
!247 = !{!248, !21, !249}
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !6, line: 230, baseType: !12)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!250 = !DILocalVariable(name: "utf8", arg: 1, scope: !245, file: !17, line: 243, type: !21)
!251 = !DILocation(line: 243, column: 33, scope: !245)
!252 = !DILocalVariable(name: "utf32", arg: 2, scope: !245, file: !17, line: 244, type: !249)
!253 = !DILocation(line: 244, column: 28, scope: !245)
!254 = !DILocalVariable(name: "p", scope: !245, file: !17, line: 246, type: !11)
!255 = !DILocation(line: 246, column: 10, scope: !245)
!256 = !DILocalVariable(name: "end", scope: !245, file: !17, line: 247, type: !11)
!257 = !DILocation(line: 247, column: 10, scope: !245)
!258 = !DILocalVariable(name: "ptr", scope: !245, file: !17, line: 248, type: !23)
!259 = !DILocation(line: 248, column: 12, scope: !245)
!260 = !DILocalVariable(name: "codePoints", scope: !245, file: !17, line: 249, type: !20)
!261 = !DILocation(line: 249, column: 8, scope: !245)
!262 = !DILocation(line: 253, column: 8, scope: !263)
!263 = distinct !DILexicalBlock(scope: !245, file: !17, line: 253, column: 8)
!264 = !DILocation(line: 253, column: 13, scope: !263)
!265 = !DILocation(line: 253, column: 8, scope: !245)
!266 = !DILocation(line: 254, column: 8, scope: !267)
!267 = distinct !DILexicalBlock(scope: !263, file: !17, line: 253, column: 21)
!268 = !DILocation(line: 254, column: 14, scope: !267)
!269 = !DILocation(line: 256, column: 7, scope: !267)
!270 = !DILocation(line: 259, column: 44, scope: !245)
!271 = !DILocation(line: 259, column: 17, scope: !245)
!272 = !DILocation(line: 259, column: 15, scope: !245)
!273 = !DILocation(line: 260, column: 8, scope: !274)
!274 = distinct !DILexicalBlock(scope: !245, file: !17, line: 260, column: 8)
!275 = !DILocation(line: 260, column: 19, scope: !274)
!276 = !DILocation(line: 260, column: 8, scope: !245)
!277 = !DILocation(line: 261, column: 8, scope: !278)
!278 = distinct !DILexicalBlock(scope: !274, file: !17, line: 260, column: 26)
!279 = !DILocation(line: 261, column: 14, scope: !278)
!280 = !DILocation(line: 263, column: 7, scope: !278)
!281 = !DILocation(line: 266, column: 17, scope: !245)
!282 = !DILocation(line: 266, column: 6, scope: !245)
!283 = !DILocation(line: 267, column: 10, scope: !245)
!284 = !DILocation(line: 267, column: 21, scope: !245)
!285 = !DILocation(line: 267, column: 14, scope: !245)
!286 = !DILocation(line: 267, column: 12, scope: !245)
!287 = !DILocation(line: 267, column: 8, scope: !245)
!288 = !DILocation(line: 269, column: 42, scope: !245)
!289 = !DILocation(line: 269, column: 53, scope: !245)
!290 = !DILocation(line: 269, column: 41, scope: !245)
!291 = !DILocation(line: 269, column: 39, scope: !245)
!292 = !DILocation(line: 269, column: 10, scope: !245)
!293 = !DILocation(line: 269, column: 8, scope: !245)
!294 = !DILocation(line: 270, column: 22, scope: !245)
!295 = !DILocation(line: 270, column: 13, scope: !245)
!296 = !DILocation(line: 270, column: 5, scope: !245)
!297 = !DILocation(line: 270, column: 11, scope: !245)
!298 = !DILocation(line: 272, column: 4, scope: !245)
!299 = !DILocation(line: 272, column: 11, scope: !300)
!300 = !DILexicalBlockFile(scope: !245, file: !17, discriminator: 1)
!301 = !DILocation(line: 272, column: 15, scope: !300)
!302 = !DILocation(line: 272, column: 13, scope: !300)
!303 = !DILocation(line: 272, column: 4, scope: !300)
!304 = !DILocation(line: 273, column: 28, scope: !305)
!305 = distinct !DILexicalBlock(scope: !245, file: !17, line: 272, column: 20)
!306 = !DILocation(line: 273, column: 31, scope: !305)
!307 = !DILocation(line: 273, column: 39, scope: !305)
!308 = !DILocation(line: 273, column: 12, scope: !305)
!309 = !DILocation(line: 273, column: 9, scope: !305)
!310 = !DILocation(line: 272, column: 4, scope: !311)
!311 = !DILexicalBlockFile(scope: !245, file: !17, discriminator: 2)
!312 = distinct !{!312, !298}
!313 = !DILocation(line: 276, column: 5, scope: !245)
!314 = !DILocation(line: 276, column: 9, scope: !245)
!315 = !DILocation(line: 278, column: 4, scope: !245)
!316 = !DILocation(line: 279, column: 1, scope: !245)
!317 = distinct !DISubprogram(name: "CodeSet_UTF32ToUTF8", scope: !17, file: !17, line: 302, type: !246, isLocal: false, isDefinition: true, scopeLine: 304, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!318 = !DILocalVariable(name: "utf32", arg: 1, scope: !317, file: !17, line: 302, type: !21)
!319 = !DILocation(line: 302, column: 33, scope: !317)
!320 = !DILocalVariable(name: "utf8", arg: 2, scope: !317, file: !17, line: 303, type: !249)
!321 = !DILocation(line: 303, column: 28, scope: !317)
!322 = !DILocalVariable(name: "i", scope: !317, file: !17, line: 305, type: !24)
!323 = !DILocation(line: 305, column: 11, scope: !317)
!324 = !DILocalVariable(name: "p", scope: !317, file: !17, line: 306, type: !4)
!325 = !DILocation(line: 306, column: 11, scope: !317)
!326 = !DILocalVariable(name: "q", scope: !317, file: !17, line: 307, type: !4)
!327 = !DILocation(line: 307, column: 11, scope: !317)
!328 = !DILocalVariable(name: "len", scope: !317, file: !17, line: 308, type: !24)
!329 = !DILocation(line: 308, column: 11, scope: !317)
!330 = !DILocalVariable(name: "value", scope: !317, file: !17, line: 312, type: !331)
!331 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !317, file: !17, line: 309, size: 32, align: 32, elements: !332)
!332 = !{!333, !334}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !331, file: !17, line: 310, baseType: !24, size: 32, align: 32)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !331, file: !17, line: 311, baseType: !335, size: 32, align: 8)
!335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 32, align: 8, elements: !336)
!336 = !{!337}
!337 = !DISubrange(count: 4)
!338 = !DILocation(line: 312, column: 6, scope: !317)
!339 = !DILocation(line: 316, column: 8, scope: !340)
!340 = distinct !DILexicalBlock(scope: !317, file: !17, line: 316, column: 8)
!341 = !DILocation(line: 316, column: 14, scope: !340)
!342 = !DILocation(line: 316, column: 8, scope: !317)
!343 = !DILocation(line: 317, column: 8, scope: !344)
!344 = distinct !DILexicalBlock(scope: !340, file: !17, line: 316, column: 22)
!345 = !DILocation(line: 317, column: 13, scope: !344)
!346 = !DILocation(line: 319, column: 7, scope: !344)
!347 = !DILocation(line: 327, column: 8, scope: !317)
!348 = !DILocation(line: 328, column: 18, scope: !317)
!349 = !DILocation(line: 328, column: 6, scope: !317)
!350 = !DILocation(line: 330, column: 4, scope: !317)
!351 = !DILocation(line: 331, column: 26, scope: !352)
!352 = distinct !DILexicalBlock(scope: !317, file: !17, line: 330, column: 14)
!353 = !DILocation(line: 331, column: 24, scope: !352)
!354 = !DILocation(line: 331, column: 13, scope: !352)
!355 = !DILocation(line: 331, column: 7, scope: !352)
!356 = !DILocation(line: 331, column: 22, scope: !352)
!357 = !DILocation(line: 332, column: 26, scope: !352)
!358 = !DILocation(line: 332, column: 24, scope: !352)
!359 = !DILocation(line: 332, column: 13, scope: !352)
!360 = !DILocation(line: 332, column: 7, scope: !352)
!361 = !DILocation(line: 332, column: 22, scope: !352)
!362 = !DILocation(line: 333, column: 26, scope: !352)
!363 = !DILocation(line: 333, column: 24, scope: !352)
!364 = !DILocation(line: 333, column: 13, scope: !352)
!365 = !DILocation(line: 333, column: 7, scope: !352)
!366 = !DILocation(line: 333, column: 22, scope: !352)
!367 = !DILocation(line: 334, column: 26, scope: !352)
!368 = !DILocation(line: 334, column: 24, scope: !352)
!369 = !DILocation(line: 334, column: 13, scope: !352)
!370 = !DILocation(line: 334, column: 7, scope: !352)
!371 = !DILocation(line: 334, column: 22, scope: !352)
!372 = !DILocation(line: 336, column: 17, scope: !373)
!373 = distinct !DILexicalBlock(scope: !352, file: !17, line: 336, column: 11)
!374 = !DILocation(line: 336, column: 22, scope: !373)
!375 = !DILocation(line: 336, column: 11, scope: !352)
!376 = !DILocation(line: 337, column: 10, scope: !377)
!377 = distinct !DILexicalBlock(scope: !373, file: !17, line: 336, column: 28)
!378 = !DILocation(line: 340, column: 10, scope: !352)
!379 = !DILocation(line: 330, column: 4, scope: !380)
!380 = !DILexicalBlockFile(scope: !317, file: !17, discriminator: 1)
!381 = distinct !{!381, !350}
!382 = !DILocation(line: 351, column: 34, scope: !317)
!383 = !DILocation(line: 351, column: 32, scope: !317)
!384 = !DILocation(line: 351, column: 39, scope: !317)
!385 = !DILocation(line: 351, column: 28, scope: !317)
!386 = !DILocation(line: 351, column: 12, scope: !317)
!387 = !DILocation(line: 351, column: 5, scope: !317)
!388 = !DILocation(line: 351, column: 10, scope: !317)
!389 = !DILocation(line: 358, column: 18, scope: !317)
!390 = !DILocation(line: 358, column: 6, scope: !317)
!391 = !DILocation(line: 359, column: 19, scope: !317)
!392 = !DILocation(line: 359, column: 18, scope: !317)
!393 = !DILocation(line: 359, column: 6, scope: !317)
!394 = !DILocation(line: 361, column: 11, scope: !395)
!395 = distinct !DILexicalBlock(scope: !317, file: !17, line: 361, column: 4)
!396 = !DILocation(line: 361, column: 9, scope: !395)
!397 = !DILocation(line: 361, column: 16, scope: !398)
!398 = !DILexicalBlockFile(scope: !399, file: !17, discriminator: 1)
!399 = distinct !DILexicalBlock(scope: !395, file: !17, line: 361, column: 4)
!400 = !DILocation(line: 361, column: 20, scope: !398)
!401 = !DILocation(line: 361, column: 18, scope: !398)
!402 = !DILocation(line: 361, column: 4, scope: !398)
!403 = !DILocation(line: 362, column: 26, scope: !404)
!404 = distinct !DILexicalBlock(scope: !399, file: !17, line: 361, column: 30)
!405 = !DILocation(line: 362, column: 24, scope: !404)
!406 = !DILocation(line: 362, column: 13, scope: !404)
!407 = !DILocation(line: 362, column: 7, scope: !404)
!408 = !DILocation(line: 362, column: 22, scope: !404)
!409 = !DILocation(line: 363, column: 26, scope: !404)
!410 = !DILocation(line: 363, column: 24, scope: !404)
!411 = !DILocation(line: 363, column: 13, scope: !404)
!412 = !DILocation(line: 363, column: 7, scope: !404)
!413 = !DILocation(line: 363, column: 22, scope: !404)
!414 = !DILocation(line: 364, column: 26, scope: !404)
!415 = !DILocation(line: 364, column: 24, scope: !404)
!416 = !DILocation(line: 364, column: 13, scope: !404)
!417 = !DILocation(line: 364, column: 7, scope: !404)
!418 = !DILocation(line: 364, column: 22, scope: !404)
!419 = !DILocation(line: 365, column: 26, scope: !404)
!420 = !DILocation(line: 365, column: 24, scope: !404)
!421 = !DILocation(line: 365, column: 13, scope: !404)
!422 = !DILocation(line: 365, column: 7, scope: !404)
!423 = !DILocation(line: 365, column: 22, scope: !404)
!424 = !DILocation(line: 367, column: 17, scope: !425)
!425 = distinct !DILexicalBlock(scope: !404, file: !17, line: 367, column: 11)
!426 = !DILocation(line: 367, column: 22, scope: !425)
!427 = !DILocation(line: 367, column: 11, scope: !404)
!428 = !DILocation(line: 368, column: 23, scope: !429)
!429 = distinct !DILexicalBlock(scope: !425, file: !17, line: 367, column: 30)
!430 = !DILocation(line: 368, column: 17, scope: !429)
!431 = !DILocation(line: 368, column: 12, scope: !429)
!432 = !DILocation(line: 368, column: 15, scope: !429)
!433 = !DILocation(line: 369, column: 7, scope: !429)
!434 = !DILocation(line: 369, column: 24, scope: !435)
!435 = !DILexicalBlockFile(scope: !436, file: !17, discriminator: 1)
!436 = distinct !DILexicalBlock(scope: !425, file: !17, line: 369, column: 18)
!437 = !DILocation(line: 369, column: 29, scope: !435)
!438 = !DILocation(line: 369, column: 18, scope: !435)
!439 = !DILocation(line: 370, column: 31, scope: !440)
!440 = distinct !DILexicalBlock(scope: !436, file: !17, line: 369, column: 38)
!441 = !DILocation(line: 370, column: 36, scope: !440)
!442 = !DILocation(line: 370, column: 22, scope: !440)
!443 = !DILocation(line: 370, column: 17, scope: !440)
!444 = !DILocation(line: 370, column: 12, scope: !440)
!445 = !DILocation(line: 370, column: 15, scope: !440)
!446 = !DILocation(line: 371, column: 31, scope: !440)
!447 = !DILocation(line: 371, column: 36, scope: !440)
!448 = !DILocation(line: 371, column: 22, scope: !440)
!449 = !DILocation(line: 371, column: 17, scope: !440)
!450 = !DILocation(line: 371, column: 12, scope: !440)
!451 = !DILocation(line: 371, column: 15, scope: !440)
!452 = !DILocation(line: 372, column: 7, scope: !440)
!453 = !DILocation(line: 372, column: 24, scope: !454)
!454 = !DILexicalBlockFile(scope: !455, file: !17, discriminator: 1)
!455 = distinct !DILexicalBlock(scope: !436, file: !17, line: 372, column: 18)
!456 = !DILocation(line: 372, column: 29, scope: !454)
!457 = !DILocation(line: 372, column: 18, scope: !454)
!458 = !DILocation(line: 373, column: 31, scope: !459)
!459 = distinct !DILexicalBlock(scope: !455, file: !17, line: 372, column: 40)
!460 = !DILocation(line: 373, column: 36, scope: !459)
!461 = !DILocation(line: 373, column: 22, scope: !459)
!462 = !DILocation(line: 373, column: 17, scope: !459)
!463 = !DILocation(line: 373, column: 12, scope: !459)
!464 = !DILocation(line: 373, column: 15, scope: !459)
!465 = !DILocation(line: 374, column: 32, scope: !459)
!466 = !DILocation(line: 374, column: 37, scope: !459)
!467 = !DILocation(line: 374, column: 43, scope: !459)
!468 = !DILocation(line: 374, column: 22, scope: !459)
!469 = !DILocation(line: 374, column: 17, scope: !459)
!470 = !DILocation(line: 374, column: 12, scope: !459)
!471 = !DILocation(line: 374, column: 15, scope: !459)
!472 = !DILocation(line: 375, column: 31, scope: !459)
!473 = !DILocation(line: 375, column: 36, scope: !459)
!474 = !DILocation(line: 375, column: 22, scope: !459)
!475 = !DILocation(line: 375, column: 17, scope: !459)
!476 = !DILocation(line: 375, column: 12, scope: !459)
!477 = !DILocation(line: 375, column: 15, scope: !459)
!478 = !DILocation(line: 376, column: 7, scope: !459)
!479 = !DILocation(line: 376, column: 24, scope: !480)
!480 = !DILexicalBlockFile(scope: !481, file: !17, discriminator: 1)
!481 = distinct !DILexicalBlock(scope: !455, file: !17, line: 376, column: 18)
!482 = !DILocation(line: 376, column: 29, scope: !480)
!483 = !DILocation(line: 376, column: 18, scope: !480)
!484 = !DILocation(line: 377, column: 31, scope: !485)
!485 = distinct !DILexicalBlock(scope: !481, file: !17, line: 376, column: 41)
!486 = !DILocation(line: 377, column: 36, scope: !485)
!487 = !DILocation(line: 377, column: 22, scope: !485)
!488 = !DILocation(line: 377, column: 17, scope: !485)
!489 = !DILocation(line: 377, column: 12, scope: !485)
!490 = !DILocation(line: 377, column: 15, scope: !485)
!491 = !DILocation(line: 378, column: 32, scope: !485)
!492 = !DILocation(line: 378, column: 37, scope: !485)
!493 = !DILocation(line: 378, column: 44, scope: !485)
!494 = !DILocation(line: 378, column: 22, scope: !485)
!495 = !DILocation(line: 378, column: 17, scope: !485)
!496 = !DILocation(line: 378, column: 12, scope: !485)
!497 = !DILocation(line: 378, column: 15, scope: !485)
!498 = !DILocation(line: 379, column: 32, scope: !485)
!499 = !DILocation(line: 379, column: 37, scope: !485)
!500 = !DILocation(line: 379, column: 43, scope: !485)
!501 = !DILocation(line: 379, column: 22, scope: !485)
!502 = !DILocation(line: 379, column: 17, scope: !485)
!503 = !DILocation(line: 379, column: 12, scope: !485)
!504 = !DILocation(line: 379, column: 15, scope: !485)
!505 = !DILocation(line: 380, column: 31, scope: !485)
!506 = !DILocation(line: 380, column: 36, scope: !485)
!507 = !DILocation(line: 380, column: 22, scope: !485)
!508 = !DILocation(line: 380, column: 17, scope: !485)
!509 = !DILocation(line: 380, column: 12, scope: !485)
!510 = !DILocation(line: 380, column: 15, scope: !485)
!511 = !DILocation(line: 381, column: 7, scope: !485)
!512 = !DILocation(line: 382, column: 16, scope: !513)
!513 = distinct !DILexicalBlock(scope: !481, file: !17, line: 381, column: 14)
!514 = !DILocation(line: 382, column: 15, scope: !513)
!515 = !DILocation(line: 382, column: 10, scope: !513)
!516 = !DILocation(line: 383, column: 11, scope: !513)
!517 = !DILocation(line: 383, column: 16, scope: !513)
!518 = !DILocation(line: 385, column: 10, scope: !513)
!519 = !DILocation(line: 387, column: 4, scope: !404)
!520 = !DILocation(line: 361, column: 26, scope: !521)
!521 = !DILexicalBlockFile(scope: !399, file: !17, discriminator: 2)
!522 = !DILocation(line: 361, column: 4, scope: !521)
!523 = distinct !{!523, !524}
!524 = !DILocation(line: 361, column: 4, scope: !317)
!525 = !DILocation(line: 389, column: 5, scope: !317)
!526 = !DILocation(line: 389, column: 7, scope: !317)
!527 = !DILocation(line: 391, column: 4, scope: !317)
!528 = !DILocation(line: 392, column: 1, scope: !317)
