; ModuleID = './cpName.o.i'
source_filename = "./cpName.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [36 x i8] c"%s: error: first char can't be NUL\0A\00", align 1
@__FUNCTION__.CPName_GetComponent = private unnamed_addr constant [20 x i8] c"CPName_GetComponent\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"%s: error: last char can't be NUL\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"%s: error: not enough room for escaping\0A\00", align 1
@__FUNCTION__.CPNameEscapeAndConvertFrom = private unnamed_addr constant [27 x i8] c"CPNameEscapeAndConvertFrom\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"%s: error: get next component failed\0A\00", align 1
@__FUNCTION__.CPNameConvertFrom = private unnamed_addr constant [18 x i8] c"CPNameConvertFrom\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"%s: error: found dot/dotdot\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"%s: error: not enough room\0A\00", align 1
@CPName_Print.out = internal global [128 x i8] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i32 @CPName_GetComponent(i8*, i8*, i8**) #0 !dbg !23 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !27, metadata !28), !dbg !29
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !30, metadata !28), !dbg !31
  store i8** %2, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !32, metadata !28), !dbg !33
  call void @llvm.dbg.declare(metadata i8** %8, metadata !34, metadata !28), !dbg !35
  call void @llvm.dbg.declare(metadata i8** %9, metadata !36, metadata !28), !dbg !37
  call void @llvm.dbg.declare(metadata i64* %10, metadata !38, metadata !28), !dbg !39
  %11 = load i8*, i8** %5, align 8, !dbg !40
  store i8* %11, i8** %8, align 8, !dbg !42
  br label %12, !dbg !43

; <label>:12:                                     ; preds = %52, %3
  %13 = load i8*, i8** %8, align 8, !dbg !44
  %14 = load i8*, i8** %6, align 8, !dbg !48
  %15 = icmp eq i8* %13, %14, !dbg !49
  br i1 %15, label %16, label %18, !dbg !50

; <label>:16:                                     ; preds = %12
  %17 = load i8*, i8** %6, align 8, !dbg !51
  store i8* %17, i8** %9, align 8, !dbg !53
  br label %55, !dbg !54

; <label>:18:                                     ; preds = %12
  %19 = load i8*, i8** %8, align 8, !dbg !55
  %20 = load i8, i8* %19, align 1, !dbg !57
  %21 = sext i8 %20 to i32, !dbg !57
  %22 = icmp eq i32 %21, 0, !dbg !58
  br i1 %22, label %23, label %51, !dbg !59

; <label>:23:                                     ; preds = %18
  %24 = load i8*, i8** %8, align 8, !dbg !60
  %25 = load i8*, i8** %5, align 8, !dbg !63
  %26 = icmp eq i8* %24, %25, !dbg !64
  br i1 %26, label %27, label %28, !dbg !65

; <label>:27:                                     ; preds = %23
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.CPName_GetComponent, i32 0, i32 0)), !dbg !66
  store i32 -1, i32* %4, align 4, !dbg !68
  br label %65, !dbg !68

; <label>:28:                                     ; preds = %23
  %29 = load i8*, i8** %8, align 8, !dbg !69
  %30 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !70
  store i8* %30, i8** %9, align 8, !dbg !71
  br label %31, !dbg !72

; <label>:31:                                     ; preds = %42, %28
  %32 = load i8*, i8** %9, align 8, !dbg !73
  %33 = load i8, i8* %32, align 1, !dbg !75
  %34 = sext i8 %33 to i32, !dbg !75
  %35 = icmp eq i32 %34, 0, !dbg !76
  br i1 %35, label %36, label %40, !dbg !77

; <label>:36:                                     ; preds = %31
  %37 = load i8*, i8** %9, align 8, !dbg !78
  %38 = load i8*, i8** %6, align 8, !dbg !80
  %39 = icmp ne i8* %37, %38, !dbg !81
  br label %40

; <label>:40:                                     ; preds = %36, %31
  %41 = phi i1 [ false, %31 ], [ %39, %36 ]
  br i1 %41, label %42, label %45, !dbg !82

; <label>:42:                                     ; preds = %40
  %43 = load i8*, i8** %9, align 8, !dbg !84
  %44 = getelementptr inbounds i8, i8* %43, i32 1, !dbg !84
  store i8* %44, i8** %9, align 8, !dbg !84
  br label %31, !dbg !86, !llvm.loop !88

; <label>:45:                                     ; preds = %40
  %46 = load i8*, i8** %9, align 8, !dbg !89
  %47 = load i8*, i8** %6, align 8, !dbg !91
  %48 = icmp eq i8* %46, %47, !dbg !92
  br i1 %48, label %49, label %50, !dbg !93

; <label>:49:                                     ; preds = %45
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.CPName_GetComponent, i32 0, i32 0)), !dbg !94
  store i32 -1, i32* %4, align 4, !dbg !96
  br label %65, !dbg !96

; <label>:50:                                     ; preds = %45
  br label %55, !dbg !97

; <label>:51:                                     ; preds = %18
  br label %52, !dbg !98

; <label>:52:                                     ; preds = %51
  %53 = load i8*, i8** %8, align 8, !dbg !99
  %54 = getelementptr inbounds i8, i8* %53, i32 1, !dbg !99
  store i8* %54, i8** %8, align 8, !dbg !99
  br label %12, !dbg !101, !llvm.loop !102

; <label>:55:                                     ; preds = %50, %16
  %56 = load i8*, i8** %8, align 8, !dbg !104
  %57 = load i8*, i8** %5, align 8, !dbg !105
  %58 = ptrtoint i8* %56 to i64, !dbg !106
  %59 = ptrtoint i8* %57 to i64, !dbg !106
  %60 = sub i64 %58, %59, !dbg !106
  store i64 %60, i64* %10, align 8, !dbg !107
  %61 = load i8*, i8** %9, align 8, !dbg !108
  %62 = load i8**, i8*** %7, align 8, !dbg !109
  store i8* %61, i8** %62, align 8, !dbg !110
  %63 = load i64, i64* %10, align 8, !dbg !111
  %64 = trunc i64 %63 to i32, !dbg !112
  store i32 %64, i32* %4, align 4, !dbg !113
  br label %65, !dbg !113

; <label>:65:                                     ; preds = %55, %49, %27
  %66 = load i32, i32* %4, align 4, !dbg !114
  ret i32 %66, !dbg !114
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @Log(i8*, ...) #2

; Function Attrs: nounwind uwtable
define i32 @CPNameEscapeAndConvertFrom(i8**, i64*, i64*, i8**, i8 signext) #0 !dbg !115 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store i8** %0, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !121, metadata !28), !dbg !122
  store i64* %1, i64** %8, align 8
  call void @llvm.dbg.declare(metadata i64** %8, metadata !123, metadata !28), !dbg !124
  store i64* %2, i64** %9, align 8
  call void @llvm.dbg.declare(metadata i64** %9, metadata !125, metadata !28), !dbg !126
  store i8** %3, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !127, metadata !28), !dbg !128
  store i8 %4, i8* %11, align 1
  call void @llvm.dbg.declare(metadata i8* %11, metadata !129, metadata !28), !dbg !130
  call void @llvm.dbg.declare(metadata i32* %12, metadata !131, metadata !28), !dbg !132
  call void @llvm.dbg.declare(metadata i32* %13, metadata !133, metadata !28), !dbg !134
  %17 = load i8**, i8*** %7, align 8, !dbg !135
  %18 = load i8*, i8** %17, align 8, !dbg !136
  %19 = load i64*, i64** %8, align 8, !dbg !137
  %20 = load i64, i64* %19, align 8, !dbg !138
  %21 = trunc i64 %20 to i32, !dbg !138
  %22 = call i32 @HgfsEscape_GetSize(i8* %18, i32 %21), !dbg !139
  store i32 %22, i32* %13, align 4, !dbg !140
  %23 = load i32, i32* %13, align 4, !dbg !141
  %24 = icmp slt i32 %23, 0, !dbg !143
  br i1 %24, label %25, label %26, !dbg !144

; <label>:25:                                     ; preds = %5
  store i32 -1, i32* %12, align 4, !dbg !145
  br label %73, !dbg !147

; <label>:26:                                     ; preds = %5
  %27 = load i32, i32* %13, align 4, !dbg !148
  %28 = icmp ne i32 %27, 0, !dbg !151
  br i1 %28, label %29, label %65, !dbg !148

; <label>:29:                                     ; preds = %26
  call void @llvm.dbg.declare(metadata i8** %14, metadata !152, metadata !28), !dbg !154
  %30 = load i8**, i8*** %10, align 8, !dbg !155
  %31 = load i8*, i8** %30, align 8, !dbg !156
  store i8* %31, i8** %14, align 8, !dbg !154
  call void @llvm.dbg.declare(metadata i8** %15, metadata !157, metadata !28), !dbg !158
  %32 = load i8*, i8** %14, align 8, !dbg !159
  store i8* %32, i8** %15, align 8, !dbg !158
  call void @llvm.dbg.declare(metadata i64* %16, metadata !160, metadata !28), !dbg !161
  %33 = load i64*, i64** %9, align 8, !dbg !162
  %34 = load i64, i64* %33, align 8, !dbg !163
  store i64 %34, i64* %16, align 8, !dbg !161
  %35 = load i32, i32* %13, align 4, !dbg !164
  %36 = sext i32 %35 to i64, !dbg !164
  %37 = load i64*, i64** %9, align 8, !dbg !166
  %38 = load i64, i64* %37, align 8, !dbg !167
  %39 = icmp ugt i64 %36, %38, !dbg !168
  br i1 %39, label %40, label %41, !dbg !169

; <label>:40:                                     ; preds = %29
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.CPNameEscapeAndConvertFrom, i32 0, i32 0)), !dbg !170
  store i32 -1, i32* %6, align 4, !dbg !172
  br label %75, !dbg !172

; <label>:41:                                     ; preds = %29
  %42 = load i8**, i8*** %7, align 8, !dbg !173
  %43 = load i8*, i8** %42, align 8, !dbg !174
  %44 = load i64*, i64** %8, align 8, !dbg !175
  %45 = load i64, i64* %44, align 8, !dbg !176
  %46 = trunc i64 %45 to i32, !dbg !176
  %47 = load i64, i64* %16, align 8, !dbg !177
  %48 = trunc i64 %47 to i32, !dbg !177
  %49 = load i8*, i8** %14, align 8, !dbg !178
  %50 = getelementptr inbounds i8, i8* %49, i64 1, !dbg !179
  %51 = call i32 @HgfsEscape_Do(i8* %43, i32 %46, i32 %48, i8* %50), !dbg !180
  %52 = sext i32 %51 to i64, !dbg !180
  %53 = load i64*, i64** %8, align 8, !dbg !181
  store i64 %52, i64* %53, align 8, !dbg !182
  %54 = load i64*, i64** %8, align 8, !dbg !183
  %55 = load i64*, i64** %9, align 8, !dbg !184
  %56 = load i8**, i8*** %10, align 8, !dbg !185
  %57 = load i8, i8* %11, align 1, !dbg !186
  %58 = call i32 @CPNameConvertFrom(i8** %15, i64* %54, i64* %55, i8** %56, i8 signext %57), !dbg !187
  store i32 %58, i32* %12, align 4, !dbg !188
  %59 = load i64*, i64** %8, align 8, !dbg !189
  %60 = load i64, i64* %59, align 8, !dbg !190
  %61 = load i8**, i8*** %7, align 8, !dbg !191
  %62 = load i8*, i8** %61, align 8, !dbg !192
  %63 = getelementptr inbounds i8, i8* %62, i64 %60, !dbg !192
  store i8* %63, i8** %61, align 8, !dbg !192
  %64 = load i64*, i64** %8, align 8, !dbg !193
  store i64 0, i64* %64, align 8, !dbg !194
  br label %72, !dbg !195

; <label>:65:                                     ; preds = %26
  %66 = load i8**, i8*** %7, align 8, !dbg !196
  %67 = load i64*, i64** %8, align 8, !dbg !198
  %68 = load i64*, i64** %9, align 8, !dbg !199
  %69 = load i8**, i8*** %10, align 8, !dbg !200
  %70 = load i8, i8* %11, align 1, !dbg !201
  %71 = call i32 @CPNameConvertFrom(i8** %66, i64* %67, i64* %68, i8** %69, i8 signext %70), !dbg !202
  store i32 %71, i32* %12, align 4, !dbg !203
  br label %72

; <label>:72:                                     ; preds = %65, %41
  br label %73

; <label>:73:                                     ; preds = %72, %25
  %74 = load i32, i32* %12, align 4, !dbg !204
  store i32 %74, i32* %6, align 4, !dbg !205
  br label %75, !dbg !205

; <label>:75:                                     ; preds = %73, %40
  %76 = load i32, i32* %6, align 4, !dbg !206
  ret i32 %76, !dbg !206
}

declare i32 @HgfsEscape_GetSize(i8*, i32) #2

declare i32 @HgfsEscape_Do(i8*, i32, i32, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @CPNameConvertFrom(i8**, i64*, i64*, i8**, i8 signext) #0 !dbg !207 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8, align 1
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8** %0, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !208, metadata !28), !dbg !209
  store i64* %1, i64** %8, align 8
  call void @llvm.dbg.declare(metadata i64** %8, metadata !210, metadata !28), !dbg !211
  store i64* %2, i64** %9, align 8
  call void @llvm.dbg.declare(metadata i64** %9, metadata !212, metadata !28), !dbg !213
  store i8** %3, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !214, metadata !28), !dbg !215
  store i8 %4, i8* %11, align 1
  call void @llvm.dbg.declare(metadata i8* %11, metadata !216, metadata !28), !dbg !217
  call void @llvm.dbg.declare(metadata i8** %12, metadata !218, metadata !28), !dbg !219
  call void @llvm.dbg.declare(metadata i8** %13, metadata !220, metadata !28), !dbg !221
  call void @llvm.dbg.declare(metadata i64* %14, metadata !222, metadata !28), !dbg !223
  call void @llvm.dbg.declare(metadata i8** %15, metadata !224, metadata !28), !dbg !225
  call void @llvm.dbg.declare(metadata i8* %16, metadata !226, metadata !28), !dbg !229
  %20 = load i8**, i8*** %7, align 8, !dbg !230
  %21 = load i8*, i8** %20, align 8, !dbg !231
  %22 = load i8**, i8*** %10, align 8, !dbg !232
  %23 = load i8*, i8** %22, align 8, !dbg !233
  %24 = icmp eq i8* %21, %23, !dbg !234
  %25 = zext i1 %24 to i32, !dbg !234
  %26 = trunc i32 %25 to i8, !dbg !235
  store i8 %26, i8* %16, align 1, !dbg !229
  %27 = load i8**, i8*** %7, align 8, !dbg !236
  %28 = load i8*, i8** %27, align 8, !dbg !237
  store i8* %28, i8** %12, align 8, !dbg !238
  %29 = load i8, i8* %16, align 1, !dbg !239
  %30 = icmp ne i8 %29, 0, !dbg !239
  br i1 %30, label %31, label %34, !dbg !241

; <label>:31:                                     ; preds = %5
  %32 = load i8*, i8** %12, align 8, !dbg !242
  %33 = getelementptr inbounds i8, i8* %32, i32 1, !dbg !242
  store i8* %33, i8** %12, align 8, !dbg !242
  br label %34, !dbg !244

; <label>:34:                                     ; preds = %31, %5
  %35 = load i8*, i8** %12, align 8, !dbg !245
  %36 = load i64*, i64** %8, align 8, !dbg !246
  %37 = load i64, i64* %36, align 8, !dbg !247
  %38 = getelementptr inbounds i8, i8* %35, i64 %37, !dbg !248
  store i8* %38, i8** %13, align 8, !dbg !249
  %39 = load i64*, i64** %9, align 8, !dbg !250
  %40 = load i64, i64* %39, align 8, !dbg !251
  store i64 %40, i64* %14, align 8, !dbg !252
  %41 = load i8**, i8*** %10, align 8, !dbg !253
  %42 = load i8*, i8** %41, align 8, !dbg !254
  store i8* %42, i8** %15, align 8, !dbg !255
  br label %43, !dbg !256

; <label>:43:                                     ; preds = %101, %34
  call void @llvm.dbg.declare(metadata i8** %17, metadata !257, metadata !28), !dbg !261
  call void @llvm.dbg.declare(metadata i32* %18, metadata !262, metadata !28), !dbg !263
  call void @llvm.dbg.declare(metadata i32* %19, metadata !264, metadata !28), !dbg !265
  %44 = load i8*, i8** %12, align 8, !dbg !266
  %45 = load i8*, i8** %13, align 8, !dbg !267
  %46 = call i32 @CPName_GetComponent(i8* %44, i8* %45, i8** %17), !dbg !268
  store i32 %46, i32* %18, align 4, !dbg !269
  %47 = load i32, i32* %18, align 4, !dbg !270
  %48 = icmp slt i32 %47, 0, !dbg !272
  br i1 %48, label %49, label %51, !dbg !273

; <label>:49:                                     ; preds = %43
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.CPNameConvertFrom, i32 0, i32 0)), !dbg !274
  %50 = load i32, i32* %18, align 4, !dbg !276
  store i32 %50, i32* %6, align 4, !dbg !277
  br label %128, !dbg !277

; <label>:51:                                     ; preds = %43
  %52 = load i32, i32* %18, align 4, !dbg !278
  %53 = icmp eq i32 %52, 1, !dbg !280
  br i1 %53, label %54, label %59, !dbg !281

; <label>:54:                                     ; preds = %51
  %55 = load i8*, i8** %12, align 8, !dbg !282
  %56 = load i8, i8* %55, align 1, !dbg !284
  %57 = sext i8 %56 to i32, !dbg !284
  %58 = icmp eq i32 %57, 46, !dbg !285
  br i1 %58, label %74, label %59, !dbg !286

; <label>:59:                                     ; preds = %54, %51
  %60 = load i32, i32* %18, align 4, !dbg !287
  %61 = icmp eq i32 %60, 2, !dbg !288
  br i1 %61, label %62, label %75, !dbg !289

; <label>:62:                                     ; preds = %59
  %63 = load i8*, i8** %12, align 8, !dbg !290
  %64 = getelementptr inbounds i8, i8* %63, i64 0, !dbg !290
  %65 = load i8, i8* %64, align 1, !dbg !290
  %66 = sext i8 %65 to i32, !dbg !290
  %67 = icmp eq i32 %66, 46, !dbg !291
  br i1 %67, label %68, label %75, !dbg !292

; <label>:68:                                     ; preds = %62
  %69 = load i8*, i8** %12, align 8, !dbg !293
  %70 = getelementptr inbounds i8, i8* %69, i64 1, !dbg !293
  %71 = load i8, i8* %70, align 1, !dbg !293
  %72 = sext i8 %71 to i32, !dbg !293
  %73 = icmp eq i32 %72, 46, !dbg !295
  br i1 %73, label %74, label %75, !dbg !296

; <label>:74:                                     ; preds = %68, %54
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.CPNameConvertFrom, i32 0, i32 0)), !dbg !298
  store i32 -1, i32* %6, align 4, !dbg !300
  br label %128, !dbg !300

; <label>:75:                                     ; preds = %68, %62, %59
  %76 = load i32, i32* %18, align 4, !dbg !301
  %77 = icmp eq i32 %76, 0, !dbg !303
  br i1 %77, label %78, label %79, !dbg !304

; <label>:78:                                     ; preds = %75
  br label %107, !dbg !305

; <label>:79:                                     ; preds = %75
  %80 = load i64, i64* %14, align 8, !dbg !307
  %81 = trunc i64 %80 to i32, !dbg !308
  %82 = load i32, i32* %18, align 4, !dbg !309
  %83 = sub nsw i32 %81, %82, !dbg !310
  %84 = sub nsw i32 %83, 1, !dbg !311
  store i32 %84, i32* %19, align 4, !dbg !312
  %85 = load i32, i32* %19, align 4, !dbg !313
  %86 = icmp slt i32 %85, 0, !dbg !315
  br i1 %86, label %87, label %88, !dbg !316

; <label>:87:                                     ; preds = %79
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.CPNameConvertFrom, i32 0, i32 0)), !dbg !317
  store i32 -1, i32* %6, align 4, !dbg !319
  br label %128, !dbg !319

; <label>:88:                                     ; preds = %79
  %89 = load i32, i32* %19, align 4, !dbg !320
  %90 = sext i32 %89 to i64, !dbg !321
  store i64 %90, i64* %14, align 8, !dbg !322
  %91 = load i8, i8* %11, align 1, !dbg !323
  %92 = load i8*, i8** %15, align 8, !dbg !324
  %93 = getelementptr inbounds i8, i8* %92, i32 1, !dbg !324
  store i8* %93, i8** %15, align 8, !dbg !324
  store i8 %91, i8* %92, align 1, !dbg !325
  %94 = load i8, i8* %16, align 1, !dbg !326
  %95 = icmp ne i8 %94, 0, !dbg !326
  br i1 %95, label %101, label %96, !dbg !328

; <label>:96:                                     ; preds = %88
  %97 = load i8*, i8** %15, align 8, !dbg !329
  %98 = load i8*, i8** %12, align 8, !dbg !331
  %99 = load i32, i32* %18, align 4, !dbg !332
  %100 = sext i32 %99 to i64, !dbg !332
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %97, i8* %98, i64 %100, i32 1, i1 false), !dbg !333
  br label %101, !dbg !334

; <label>:101:                                    ; preds = %96, %88
  %102 = load i32, i32* %18, align 4, !dbg !335
  %103 = load i8*, i8** %15, align 8, !dbg !336
  %104 = sext i32 %102 to i64, !dbg !336
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !336
  store i8* %105, i8** %15, align 8, !dbg !336
  %106 = load i8*, i8** %17, align 8, !dbg !337
  store i8* %106, i8** %12, align 8, !dbg !338
  br label %43, !dbg !339, !llvm.loop !341

; <label>:107:                                    ; preds = %78
  %108 = load i64, i64* %14, align 8, !dbg !342
  %109 = icmp ult i64 %108, 1, !dbg !344
  br i1 %109, label %110, label %111, !dbg !345

; <label>:110:                                    ; preds = %107
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.CPNameConvertFrom, i32 0, i32 0)), !dbg !346
  store i32 -1, i32* %6, align 4, !dbg !348
  br label %128, !dbg !348

; <label>:111:                                    ; preds = %107
  %112 = load i8*, i8** %15, align 8, !dbg !349
  store i8 0, i8* %112, align 1, !dbg !350
  %113 = load i8*, i8** %12, align 8, !dbg !351
  %114 = load i8**, i8*** %7, align 8, !dbg !352
  %115 = load i8*, i8** %114, align 8, !dbg !353
  %116 = ptrtoint i8* %113 to i64, !dbg !354
  %117 = ptrtoint i8* %115 to i64, !dbg !354
  %118 = sub i64 %116, %117, !dbg !354
  %119 = load i64*, i64** %8, align 8, !dbg !355
  %120 = load i64, i64* %119, align 8, !dbg !356
  %121 = sub i64 %120, %118, !dbg !356
  store i64 %121, i64* %119, align 8, !dbg !356
  %122 = load i64, i64* %14, align 8, !dbg !357
  %123 = load i64*, i64** %9, align 8, !dbg !358
  store i64 %122, i64* %123, align 8, !dbg !359
  %124 = load i8*, i8** %12, align 8, !dbg !360
  %125 = load i8**, i8*** %7, align 8, !dbg !361
  store i8* %124, i8** %125, align 8, !dbg !362
  %126 = load i8*, i8** %15, align 8, !dbg !363
  %127 = load i8**, i8*** %10, align 8, !dbg !364
  store i8* %126, i8** %127, align 8, !dbg !365
  store i32 0, i32* %6, align 4, !dbg !366
  br label %128, !dbg !366

; <label>:128:                                    ; preds = %111, %110, %87, %74, %49
  %129 = load i32, i32* %6, align 4, !dbg !367
  ret i32 %129, !dbg !367
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define i8* @CPName_Print(i8*, i64) #0 !dbg !10 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !368, metadata !28), !dbg !369
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !370, metadata !28), !dbg !371
  call void @llvm.dbg.declare(metadata i64* %5, metadata !372, metadata !28), !dbg !373
  %6 = load i64, i64* %4, align 8, !dbg !374
  %7 = icmp ugt i64 %6, 127, !dbg !376
  br i1 %7, label %8, label %20, !dbg !377

; <label>:8:                                      ; preds = %2
  store i64 124, i64* %4, align 8, !dbg !378
  %9 = load i64, i64* %4, align 8, !dbg !380
  %10 = getelementptr inbounds [128 x i8], [128 x i8]* @CPName_Print.out, i64 0, i64 %9, !dbg !381
  store i8 46, i8* %10, align 1, !dbg !382
  %11 = load i64, i64* %4, align 8, !dbg !383
  %12 = add i64 %11, 1, !dbg !384
  %13 = getelementptr inbounds [128 x i8], [128 x i8]* @CPName_Print.out, i64 0, i64 %12, !dbg !385
  store i8 46, i8* %13, align 1, !dbg !386
  %14 = load i64, i64* %4, align 8, !dbg !387
  %15 = add i64 %14, 2, !dbg !388
  %16 = getelementptr inbounds [128 x i8], [128 x i8]* @CPName_Print.out, i64 0, i64 %15, !dbg !389
  store i8 46, i8* %16, align 1, !dbg !390
  %17 = load i64, i64* %4, align 8, !dbg !391
  %18 = add i64 %17, 3, !dbg !392
  %19 = getelementptr inbounds [128 x i8], [128 x i8]* @CPName_Print.out, i64 0, i64 %18, !dbg !393
  store i8 0, i8* %19, align 1, !dbg !394
  br label %23, !dbg !395

; <label>:20:                                     ; preds = %2
  %21 = load i64, i64* %4, align 8, !dbg !396
  %22 = getelementptr inbounds [128 x i8], [128 x i8]* @CPName_Print.out, i64 0, i64 %21, !dbg !398
  store i8 0, i8* %22, align 1, !dbg !399
  br label %23

; <label>:23:                                     ; preds = %20, %8
  store i64 0, i64* %5, align 8, !dbg !400
  br label %24, !dbg !402

; <label>:24:                                     ; preds = %47, %23
  %25 = load i64, i64* %5, align 8, !dbg !403
  %26 = load i64, i64* %4, align 8, !dbg !406
  %27 = icmp ult i64 %25, %26, !dbg !407
  br i1 %27, label %28, label %50, !dbg !408

; <label>:28:                                     ; preds = %24
  %29 = load i64, i64* %5, align 8, !dbg !409
  %30 = load i8*, i8** %3, align 8, !dbg !411
  %31 = getelementptr inbounds i8, i8* %30, i64 %29, !dbg !411
  %32 = load i8, i8* %31, align 1, !dbg !411
  %33 = sext i8 %32 to i32, !dbg !411
  %34 = icmp ne i32 %33, 0, !dbg !412
  br i1 %34, label %35, label %41, !dbg !411

; <label>:35:                                     ; preds = %28
  %36 = load i64, i64* %5, align 8, !dbg !413
  %37 = load i8*, i8** %3, align 8, !dbg !415
  %38 = getelementptr inbounds i8, i8* %37, i64 %36, !dbg !415
  %39 = load i8, i8* %38, align 1, !dbg !415
  %40 = sext i8 %39 to i32, !dbg !415
  br label %42, !dbg !416

; <label>:41:                                     ; preds = %28
  br label %42, !dbg !417

; <label>:42:                                     ; preds = %41, %35
  %43 = phi i32 [ %40, %35 ], [ 124, %41 ], !dbg !419
  %44 = trunc i32 %43 to i8, !dbg !419
  %45 = load i64, i64* %5, align 8, !dbg !421
  %46 = getelementptr inbounds [128 x i8], [128 x i8]* @CPName_Print.out, i64 0, i64 %45, !dbg !422
  store i8 %44, i8* %46, align 1, !dbg !423
  br label %47, !dbg !424

; <label>:47:                                     ; preds = %42
  %48 = load i64, i64* %5, align 8, !dbg !425
  %49 = add i64 %48, 1, !dbg !425
  store i64 %49, i64* %5, align 8, !dbg !425
  br label %24, !dbg !427, !llvm.loop !428

; <label>:50:                                     ; preds = %24
  ret i8* getelementptr inbounds ([128 x i8], [128 x i8]* @CPName_Print.out, i32 0, i32 0), !dbg !430
}

; Function Attrs: nounwind uwtable
define i32 @CPName_LinuxConvertTo(i8*, i64, i8*) #0 !dbg !431 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !434, metadata !28), !dbg !435
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !436, metadata !28), !dbg !437
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !438, metadata !28), !dbg !439
  %7 = load i8*, i8** %4, align 8, !dbg !440
  %8 = load i64, i64* %5, align 8, !dbg !441
  %9 = load i8*, i8** %6, align 8, !dbg !442
  %10 = call i32 @CPNameConvertTo(i8* %7, i64 %8, i8* %9, i8 signext 47), !dbg !443
  ret i32 %10, !dbg !444
}

; Function Attrs: nounwind uwtable
define i32 @CPNameConvertTo(i8*, i64, i8*, i8 signext) #0 !dbg !445 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !448, metadata !28), !dbg !449
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !450, metadata !28), !dbg !451
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !452, metadata !28), !dbg !453
  store i8 %3, i8* %9, align 1
  call void @llvm.dbg.declare(metadata i8* %9, metadata !454, metadata !28), !dbg !455
  call void @llvm.dbg.declare(metadata i8** %10, metadata !456, metadata !28), !dbg !457
  %13 = load i8*, i8** %8, align 8, !dbg !458
  store i8* %13, i8** %10, align 8, !dbg !457
  call void @llvm.dbg.declare(metadata i8** %11, metadata !459, metadata !28), !dbg !460
  %14 = load i8*, i8** %8, align 8, !dbg !461
  %15 = load i64, i64* %7, align 8, !dbg !462
  %16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !463
  store i8* %16, i8** %11, align 8, !dbg !460
  call void @llvm.dbg.declare(metadata i64* %12, metadata !464, metadata !28), !dbg !465
  store i64 0, i64* %12, align 8, !dbg !465
  br label %17, !dbg !466

; <label>:17:                                     ; preds = %24, %4
  %18 = load i8*, i8** %6, align 8, !dbg !467
  %19 = load i8, i8* %18, align 1, !dbg !469
  %20 = sext i8 %19 to i32, !dbg !469
  %21 = load i8, i8* %9, align 1, !dbg !470
  %22 = sext i8 %21 to i32, !dbg !470
  %23 = icmp eq i32 %20, %22, !dbg !471
  br i1 %23, label %24, label %27, !dbg !472

; <label>:24:                                     ; preds = %17
  %25 = load i8*, i8** %6, align 8, !dbg !473
  %26 = getelementptr inbounds i8, i8* %25, i32 1, !dbg !473
  store i8* %26, i8** %6, align 8, !dbg !473
  br label %17, !dbg !475, !llvm.loop !477

; <label>:27:                                     ; preds = %17
  br label %28, !dbg !478

; <label>:28:                                     ; preds = %65, %27
  %29 = load i8*, i8** %6, align 8, !dbg !479
  %30 = load i8, i8* %29, align 1, !dbg !480
  %31 = sext i8 %30 to i32, !dbg !480
  %32 = icmp ne i32 %31, 0, !dbg !481
  br i1 %32, label %33, label %37, !dbg !482

; <label>:33:                                     ; preds = %28
  %34 = load i8*, i8** %8, align 8, !dbg !483
  %35 = load i8*, i8** %11, align 8, !dbg !484
  %36 = icmp ult i8* %34, %35, !dbg !485
  br label %37

; <label>:37:                                     ; preds = %33, %28
  %38 = phi i1 [ false, %28 ], [ %36, %33 ]
  br i1 %38, label %39, label %68, !dbg !486

; <label>:39:                                     ; preds = %37
  %40 = load i8*, i8** %6, align 8, !dbg !488
  %41 = load i8, i8* %40, align 1, !dbg !491
  %42 = sext i8 %41 to i32, !dbg !491
  %43 = load i8, i8* %9, align 1, !dbg !492
  %44 = sext i8 %43 to i32, !dbg !492
  %45 = icmp eq i32 %42, %44, !dbg !493
  br i1 %45, label %46, label %59, !dbg !494

; <label>:46:                                     ; preds = %39
  %47 = load i8*, i8** %8, align 8, !dbg !495
  store i8 0, i8* %47, align 1, !dbg !497
  br label %48, !dbg !498, !llvm.loop !499

; <label>:48:                                     ; preds = %51, %46
  %49 = load i8*, i8** %6, align 8, !dbg !500
  %50 = getelementptr inbounds i8, i8* %49, i32 1, !dbg !500
  store i8* %50, i8** %6, align 8, !dbg !500
  br label %51, !dbg !502

; <label>:51:                                     ; preds = %48
  %52 = load i8*, i8** %6, align 8, !dbg !503
  %53 = load i8, i8* %52, align 1, !dbg !505
  %54 = sext i8 %53 to i32, !dbg !505
  %55 = load i8, i8* %9, align 1, !dbg !506
  %56 = sext i8 %55 to i32, !dbg !506
  %57 = icmp eq i32 %54, %56, !dbg !507
  br i1 %57, label %48, label %58, !dbg !508, !llvm.loop !499

; <label>:58:                                     ; preds = %51
  br label %65, !dbg !509

; <label>:59:                                     ; preds = %39
  %60 = load i8*, i8** %6, align 8, !dbg !510
  %61 = load i8, i8* %60, align 1, !dbg !512
  %62 = load i8*, i8** %8, align 8, !dbg !513
  store i8 %61, i8* %62, align 1, !dbg !514
  %63 = load i8*, i8** %6, align 8, !dbg !515
  %64 = getelementptr inbounds i8, i8* %63, i32 1, !dbg !515
  store i8* %64, i8** %6, align 8, !dbg !515
  br label %65

; <label>:65:                                     ; preds = %59, %58
  %66 = load i8*, i8** %8, align 8, !dbg !516
  %67 = getelementptr inbounds i8, i8* %66, i32 1, !dbg !516
  store i8* %67, i8** %8, align 8, !dbg !516
  br label %28, !dbg !517, !llvm.loop !519

; <label>:68:                                     ; preds = %37
  %69 = load i8*, i8** %8, align 8, !dbg !520
  %70 = load i8*, i8** %11, align 8, !dbg !522
  %71 = icmp eq i8* %69, %70, !dbg !523
  br i1 %71, label %72, label %73, !dbg !524

; <label>:72:                                     ; preds = %68
  store i32 -1, i32* %5, align 4, !dbg !525
  br label %104, !dbg !525

; <label>:73:                                     ; preds = %68
  %74 = load i8*, i8** %8, align 8, !dbg !527
  store i8 0, i8* %74, align 1, !dbg !528
  %75 = load i8*, i8** %8, align 8, !dbg !529
  %76 = load i8*, i8** %10, align 8, !dbg !530
  %77 = ptrtoint i8* %75 to i64, !dbg !531
  %78 = ptrtoint i8* %76 to i64, !dbg !531
  %79 = sub i64 %77, %78, !dbg !531
  store i64 %79, i64* %12, align 8, !dbg !532
  br label %80, !dbg !533

; <label>:80:                                     ; preds = %93, %73
  %81 = load i64, i64* %12, align 8, !dbg !534
  %82 = icmp uge i64 %81, 1, !dbg !535
  br i1 %82, label %83, label %91, !dbg !536

; <label>:83:                                     ; preds = %80
  %84 = load i64, i64* %12, align 8, !dbg !537
  %85 = sub i64 %84, 1, !dbg !538
  %86 = load i8*, i8** %10, align 8, !dbg !539
  %87 = getelementptr inbounds i8, i8* %86, i64 %85, !dbg !539
  %88 = load i8, i8* %87, align 1, !dbg !539
  %89 = sext i8 %88 to i32, !dbg !539
  %90 = icmp eq i32 %89, 0, !dbg !540
  br label %91

; <label>:91:                                     ; preds = %83, %80
  %92 = phi i1 [ false, %80 ], [ %90, %83 ]
  br i1 %92, label %93, label %96, !dbg !541

; <label>:93:                                     ; preds = %91
  %94 = load i64, i64* %12, align 8, !dbg !542
  %95 = add i64 %94, -1, !dbg !542
  store i64 %95, i64* %12, align 8, !dbg !542
  br label %80, !dbg !544, !llvm.loop !545

; <label>:96:                                     ; preds = %91
  %97 = load i8*, i8** %10, align 8, !dbg !546
  %98 = load i64, i64* %12, align 8, !dbg !547
  %99 = trunc i64 %98 to i32, !dbg !547
  %100 = call i32 @HgfsEscape_Undo(i8* %97, i32 %99), !dbg !548
  %101 = zext i32 %100 to i64, !dbg !548
  store i64 %101, i64* %12, align 8, !dbg !549
  %102 = load i64, i64* %12, align 8, !dbg !550
  %103 = trunc i64 %102 to i32, !dbg !551
  store i32 %103, i32* %5, align 4, !dbg !552
  br label %104, !dbg !552

; <label>:104:                                    ; preds = %96, %72
  %105 = load i32, i32* %5, align 4, !dbg !553
  ret i32 %105, !dbg !553
}

; Function Attrs: nounwind uwtable
define i32 @CPName_WindowsConvertTo(i8*, i64, i8*) #0 !dbg !554 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !555, metadata !28), !dbg !556
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !557, metadata !28), !dbg !558
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !559, metadata !28), !dbg !560
  %7 = load i8*, i8** %4, align 8, !dbg !561
  %8 = load i64, i64* %5, align 8, !dbg !562
  %9 = load i8*, i8** %6, align 8, !dbg !563
  %10 = call i32 @CPNameConvertTo(i8* %7, i64 %8, i8* %9, i8 signext 92), !dbg !564
  ret i32 %10, !dbg !565
}

declare i32 @HgfsEscape_Undo(i8*, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!20, !21}
!llvm.ident = !{!22}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !8)
!1 = !DIFile(filename: "cpName.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line303")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !6, line: 216, baseType: !7)
!6 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line303")
!7 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!8 = !{!9}
!9 = distinct !DIGlobalVariable(name: "out", scope: !10, file: !11, line: 312, type: !17, isLocal: true, isDefinition: true, variable: [128 x i8]* @CPName_Print.out)
!10 = distinct !DISubprogram(name: "CPName_Print", scope: !11, file: !11, line: 308, type: !12, isLocal: false, isDefinition: true, scopeLine: 310, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!11 = !DIFile(filename: "cpName.c", directory: "/home/lichi/Desktop/open-vm-tools/line303")
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !14, !5}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 1024, align: 8, elements: !18)
!18 = !{!19}
!19 = !DISubrange(count: 128)
!20 = !{i32 2, !"Dwarf Version", i32 4}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!23 = distinct !DISubprogram(name: "CPName_GetComponent", scope: !11, file: !11, line: 74, type: !24, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!24 = !DISubroutineType(types: !25)
!25 = !{!4, !14, !14, !26}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!27 = !DILocalVariable(name: "begin", arg: 1, scope: !23, file: !11, line: 74, type: !14)
!28 = !DIExpression()
!29 = !DILocation(line: 74, column: 33, scope: !23)
!30 = !DILocalVariable(name: "end", arg: 2, scope: !23, file: !11, line: 75, type: !14)
!31 = !DILocation(line: 75, column: 33, scope: !23)
!32 = !DILocalVariable(name: "next", arg: 3, scope: !23, file: !11, line: 76, type: !26)
!33 = !DILocation(line: 76, column: 34, scope: !23)
!34 = !DILocalVariable(name: "walk", scope: !23, file: !11, line: 78, type: !14)
!35 = !DILocation(line: 78, column: 16, scope: !23)
!36 = !DILocalVariable(name: "myNext", scope: !23, file: !11, line: 79, type: !14)
!37 = !DILocation(line: 79, column: 16, scope: !23)
!38 = !DILocalVariable(name: "len", scope: !23, file: !11, line: 80, type: !5)
!39 = !DILocation(line: 80, column: 11, scope: !23)
!40 = !DILocation(line: 87, column: 16, scope: !41)
!41 = distinct !DILexicalBlock(scope: !23, file: !11, line: 87, column: 4)
!42 = !DILocation(line: 87, column: 14, scope: !41)
!43 = !DILocation(line: 87, column: 9, scope: !41)
!44 = !DILocation(line: 88, column: 11, scope: !45)
!45 = distinct !DILexicalBlock(scope: !46, file: !11, line: 88, column: 11)
!46 = distinct !DILexicalBlock(scope: !47, file: !11, line: 87, column: 33)
!47 = distinct !DILexicalBlock(scope: !41, file: !11, line: 87, column: 4)
!48 = !DILocation(line: 88, column: 19, scope: !45)
!49 = !DILocation(line: 88, column: 16, scope: !45)
!50 = !DILocation(line: 88, column: 11, scope: !46)
!51 = !DILocation(line: 91, column: 19, scope: !52)
!52 = distinct !DILexicalBlock(scope: !45, file: !11, line: 88, column: 24)
!53 = !DILocation(line: 91, column: 17, scope: !52)
!54 = !DILocation(line: 92, column: 10, scope: !52)
!55 = !DILocation(line: 95, column: 12, scope: !56)
!56 = distinct !DILexicalBlock(scope: !46, file: !11, line: 95, column: 11)
!57 = !DILocation(line: 95, column: 11, scope: !56)
!58 = !DILocation(line: 95, column: 17, scope: !56)
!59 = !DILocation(line: 95, column: 11, scope: !46)
!60 = !DILocation(line: 98, column: 14, scope: !61)
!61 = distinct !DILexicalBlock(scope: !62, file: !11, line: 98, column: 14)
!62 = distinct !DILexicalBlock(scope: !56, file: !11, line: 95, column: 26)
!63 = !DILocation(line: 98, column: 22, scope: !61)
!64 = !DILocation(line: 98, column: 19, scope: !61)
!65 = !DILocation(line: 98, column: 14, scope: !62)
!66 = !DILocation(line: 99, column: 13, scope: !67)
!67 = distinct !DILexicalBlock(scope: !61, file: !11, line: 98, column: 29)
!68 = !DILocation(line: 100, column: 13, scope: !67)
!69 = !DILocation(line: 103, column: 19, scope: !62)
!70 = !DILocation(line: 103, column: 24, scope: !62)
!71 = !DILocation(line: 103, column: 17, scope: !62)
!72 = !DILocation(line: 105, column: 10, scope: !62)
!73 = !DILocation(line: 105, column: 19, scope: !74)
!74 = !DILexicalBlockFile(scope: !62, file: !11, discriminator: 1)
!75 = !DILocation(line: 105, column: 18, scope: !74)
!76 = !DILocation(line: 105, column: 26, scope: !74)
!77 = !DILocation(line: 105, column: 35, scope: !74)
!78 = !DILocation(line: 105, column: 39, scope: !79)
!79 = !DILexicalBlockFile(scope: !62, file: !11, discriminator: 2)
!80 = !DILocation(line: 105, column: 49, scope: !79)
!81 = !DILocation(line: 105, column: 46, scope: !79)
!82 = !DILocation(line: 105, column: 10, scope: !83)
!83 = !DILexicalBlockFile(scope: !62, file: !11, discriminator: 3)
!84 = !DILocation(line: 106, column: 19, scope: !85)
!85 = distinct !DILexicalBlock(scope: !62, file: !11, line: 105, column: 55)
!86 = !DILocation(line: 105, column: 10, scope: !87)
!87 = !DILexicalBlockFile(scope: !62, file: !11, discriminator: 4)
!88 = distinct !{!88, !72}
!89 = !DILocation(line: 108, column: 14, scope: !90)
!90 = distinct !DILexicalBlock(scope: !62, file: !11, line: 108, column: 14)
!91 = !DILocation(line: 108, column: 24, scope: !90)
!92 = !DILocation(line: 108, column: 21, scope: !90)
!93 = !DILocation(line: 108, column: 14, scope: !62)
!94 = !DILocation(line: 110, column: 13, scope: !95)
!95 = distinct !DILexicalBlock(scope: !90, file: !11, line: 108, column: 29)
!96 = !DILocation(line: 111, column: 13, scope: !95)
!97 = !DILocation(line: 114, column: 10, scope: !62)
!98 = !DILocation(line: 116, column: 4, scope: !46)
!99 = !DILocation(line: 87, column: 29, scope: !100)
!100 = !DILexicalBlockFile(scope: !47, file: !11, discriminator: 1)
!101 = !DILocation(line: 87, column: 4, scope: !100)
!102 = distinct !{!102, !103}
!103 = !DILocation(line: 87, column: 4, scope: !23)
!104 = !DILocation(line: 118, column: 10, scope: !23)
!105 = !DILocation(line: 118, column: 17, scope: !23)
!106 = !DILocation(line: 118, column: 15, scope: !23)
!107 = !DILocation(line: 118, column: 8, scope: !23)
!108 = !DILocation(line: 120, column: 12, scope: !23)
!109 = !DILocation(line: 120, column: 5, scope: !23)
!110 = !DILocation(line: 120, column: 10, scope: !23)
!111 = !DILocation(line: 121, column: 17, scope: !23)
!112 = !DILocation(line: 121, column: 11, scope: !23)
!113 = !DILocation(line: 121, column: 4, scope: !23)
!114 = !DILocation(line: 122, column: 1, scope: !23)
!115 = distinct !DISubprogram(name: "CPNameEscapeAndConvertFrom", scope: !11, file: !11, line: 150, type: !116, isLocal: false, isDefinition: true, scopeLine: 155, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!116 = !DISubroutineType(types: !117)
!117 = !{!4, !26, !118, !118, !119, !16}
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!121 = !DILocalVariable(name: "bufIn", arg: 1, scope: !115, file: !11, line: 150, type: !26)
!122 = !DILocation(line: 150, column: 41, scope: !115)
!123 = !DILocalVariable(name: "inSize", arg: 2, scope: !115, file: !11, line: 151, type: !118)
!124 = !DILocation(line: 151, column: 36, scope: !115)
!125 = !DILocalVariable(name: "outSize", arg: 3, scope: !115, file: !11, line: 152, type: !118)
!126 = !DILocation(line: 152, column: 36, scope: !115)
!127 = !DILocalVariable(name: "bufOut", arg: 4, scope: !115, file: !11, line: 153, type: !119)
!128 = !DILocation(line: 153, column: 35, scope: !115)
!129 = !DILocalVariable(name: "pathSep", arg: 5, scope: !115, file: !11, line: 154, type: !16)
!130 = !DILocation(line: 154, column: 33, scope: !115)
!131 = !DILocalVariable(name: "result", scope: !115, file: !11, line: 156, type: !4)
!132 = !DILocation(line: 156, column: 8, scope: !115)
!133 = !DILocalVariable(name: "inputSize", scope: !115, file: !11, line: 157, type: !4)
!134 = !DILocation(line: 157, column: 8, scope: !115)
!135 = !DILocation(line: 158, column: 36, scope: !115)
!136 = !DILocation(line: 158, column: 35, scope: !115)
!137 = !DILocation(line: 158, column: 44, scope: !115)
!138 = !DILocation(line: 158, column: 43, scope: !115)
!139 = !DILocation(line: 158, column: 16, scope: !115)
!140 = !DILocation(line: 158, column: 14, scope: !115)
!141 = !DILocation(line: 159, column: 8, scope: !142)
!142 = distinct !DILexicalBlock(scope: !115, file: !11, line: 159, column: 8)
!143 = !DILocation(line: 159, column: 18, scope: !142)
!144 = !DILocation(line: 159, column: 8, scope: !115)
!145 = !DILocation(line: 160, column: 14, scope: !146)
!146 = distinct !DILexicalBlock(scope: !142, file: !11, line: 159, column: 23)
!147 = !DILocation(line: 161, column: 4, scope: !146)
!148 = !DILocation(line: 161, column: 15, scope: !149)
!149 = !DILexicalBlockFile(scope: !150, file: !11, discriminator: 1)
!150 = distinct !DILexicalBlock(scope: !142, file: !11, line: 161, column: 15)
!151 = !DILocation(line: 161, column: 25, scope: !149)
!152 = !DILocalVariable(name: "savedBufOut", scope: !153, file: !11, line: 162, type: !120)
!153 = distinct !DILexicalBlock(scope: !150, file: !11, line: 161, column: 31)
!154 = !DILocation(line: 162, column: 13, scope: !153)
!155 = !DILocation(line: 162, column: 28, scope: !153)
!156 = !DILocation(line: 162, column: 27, scope: !153)
!157 = !DILocalVariable(name: "savedOutConst", scope: !153, file: !11, line: 163, type: !14)
!158 = !DILocation(line: 163, column: 19, scope: !153)
!159 = !DILocation(line: 163, column: 35, scope: !153)
!160 = !DILocalVariable(name: "savedOutSize", scope: !153, file: !11, line: 164, type: !5)
!161 = !DILocation(line: 164, column: 14, scope: !153)
!162 = !DILocation(line: 164, column: 30, scope: !153)
!163 = !DILocation(line: 164, column: 29, scope: !153)
!164 = !DILocation(line: 165, column: 11, scope: !165)
!165 = distinct !DILexicalBlock(scope: !153, file: !11, line: 165, column: 11)
!166 = !DILocation(line: 165, column: 24, scope: !165)
!167 = !DILocation(line: 165, column: 23, scope: !165)
!168 = !DILocation(line: 165, column: 21, scope: !165)
!169 = !DILocation(line: 165, column: 11, scope: !153)
!170 = !DILocation(line: 166, column: 10, scope: !171)
!171 = distinct !DILexicalBlock(scope: !165, file: !11, line: 165, column: 33)
!172 = !DILocation(line: 167, column: 10, scope: !171)
!173 = !DILocation(line: 171, column: 32, scope: !153)
!174 = !DILocation(line: 171, column: 31, scope: !153)
!175 = !DILocation(line: 171, column: 40, scope: !153)
!176 = !DILocation(line: 171, column: 39, scope: !153)
!177 = !DILocation(line: 171, column: 48, scope: !153)
!178 = !DILocation(line: 171, column: 62, scope: !153)
!179 = !DILocation(line: 171, column: 74, scope: !153)
!180 = !DILocation(line: 171, column: 17, scope: !153)
!181 = !DILocation(line: 171, column: 8, scope: !153)
!182 = !DILocation(line: 171, column: 15, scope: !153)
!183 = !DILocation(line: 172, column: 50, scope: !153)
!184 = !DILocation(line: 172, column: 58, scope: !153)
!185 = !DILocation(line: 172, column: 67, scope: !153)
!186 = !DILocation(line: 172, column: 75, scope: !153)
!187 = !DILocation(line: 172, column: 16, scope: !153)
!188 = !DILocation(line: 172, column: 14, scope: !153)
!189 = !DILocation(line: 173, column: 18, scope: !153)
!190 = !DILocation(line: 173, column: 17, scope: !153)
!191 = !DILocation(line: 173, column: 8, scope: !153)
!192 = !DILocation(line: 173, column: 14, scope: !153)
!193 = !DILocation(line: 174, column: 8, scope: !153)
!194 = !DILocation(line: 174, column: 15, scope: !153)
!195 = !DILocation(line: 175, column: 4, scope: !153)
!196 = !DILocation(line: 176, column: 34, scope: !197)
!197 = distinct !DILexicalBlock(scope: !150, file: !11, line: 175, column: 11)
!198 = !DILocation(line: 176, column: 41, scope: !197)
!199 = !DILocation(line: 176, column: 49, scope: !197)
!200 = !DILocation(line: 176, column: 58, scope: !197)
!201 = !DILocation(line: 176, column: 66, scope: !197)
!202 = !DILocation(line: 176, column: 16, scope: !197)
!203 = !DILocation(line: 176, column: 14, scope: !197)
!204 = !DILocation(line: 178, column: 11, scope: !115)
!205 = !DILocation(line: 178, column: 4, scope: !115)
!206 = !DILocation(line: 179, column: 1, scope: !115)
!207 = distinct !DISubprogram(name: "CPNameConvertFrom", scope: !11, file: !11, line: 206, type: !116, isLocal: false, isDefinition: true, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!208 = !DILocalVariable(name: "bufIn", arg: 1, scope: !207, file: !11, line: 206, type: !26)
!209 = !DILocation(line: 206, column: 32, scope: !207)
!210 = !DILocalVariable(name: "inSize", arg: 2, scope: !207, file: !11, line: 207, type: !118)
!211 = !DILocation(line: 207, column: 27, scope: !207)
!212 = !DILocalVariable(name: "outSize", arg: 3, scope: !207, file: !11, line: 208, type: !118)
!213 = !DILocation(line: 208, column: 27, scope: !207)
!214 = !DILocalVariable(name: "bufOut", arg: 4, scope: !207, file: !11, line: 209, type: !119)
!215 = !DILocation(line: 209, column: 26, scope: !207)
!216 = !DILocalVariable(name: "pathSep", arg: 5, scope: !207, file: !11, line: 210, type: !16)
!217 = !DILocation(line: 210, column: 24, scope: !207)
!218 = !DILocalVariable(name: "in", scope: !207, file: !11, line: 212, type: !14)
!219 = !DILocation(line: 212, column: 16, scope: !207)
!220 = !DILocalVariable(name: "inEnd", scope: !207, file: !11, line: 213, type: !14)
!221 = !DILocation(line: 213, column: 16, scope: !207)
!222 = !DILocalVariable(name: "myOutSize", scope: !207, file: !11, line: 214, type: !5)
!223 = !DILocation(line: 214, column: 11, scope: !207)
!224 = !DILocalVariable(name: "out", scope: !207, file: !11, line: 215, type: !120)
!225 = !DILocation(line: 215, column: 10, scope: !207)
!226 = !DILocalVariable(name: "inPlaceConvertion", scope: !207, file: !11, line: 216, type: !227)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !228, line: 230, baseType: !16)
!228 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line303")
!229 = !DILocation(line: 216, column: 9, scope: !207)
!230 = !DILocation(line: 216, column: 31, scope: !207)
!231 = !DILocation(line: 216, column: 30, scope: !207)
!232 = !DILocation(line: 216, column: 41, scope: !207)
!233 = !DILocation(line: 216, column: 40, scope: !207)
!234 = !DILocation(line: 216, column: 37, scope: !207)
!235 = !DILocation(line: 216, column: 29, scope: !207)
!236 = !DILocation(line: 223, column: 10, scope: !207)
!237 = !DILocation(line: 223, column: 9, scope: !207)
!238 = !DILocation(line: 223, column: 7, scope: !207)
!239 = !DILocation(line: 224, column: 8, scope: !240)
!240 = distinct !DILexicalBlock(scope: !207, file: !11, line: 224, column: 8)
!241 = !DILocation(line: 224, column: 8, scope: !207)
!242 = !DILocation(line: 225, column: 9, scope: !243)
!243 = distinct !DILexicalBlock(scope: !240, file: !11, line: 224, column: 27)
!244 = !DILocation(line: 226, column: 4, scope: !243)
!245 = !DILocation(line: 227, column: 12, scope: !207)
!246 = !DILocation(line: 227, column: 18, scope: !207)
!247 = !DILocation(line: 227, column: 17, scope: !207)
!248 = !DILocation(line: 227, column: 15, scope: !207)
!249 = !DILocation(line: 227, column: 10, scope: !207)
!250 = !DILocation(line: 228, column: 17, scope: !207)
!251 = !DILocation(line: 228, column: 16, scope: !207)
!252 = !DILocation(line: 228, column: 14, scope: !207)
!253 = !DILocation(line: 229, column: 11, scope: !207)
!254 = !DILocation(line: 229, column: 10, scope: !207)
!255 = !DILocation(line: 229, column: 8, scope: !207)
!256 = !DILocation(line: 231, column: 4, scope: !207)
!257 = !DILocalVariable(name: "next", scope: !258, file: !11, line: 232, type: !14)
!258 = distinct !DILexicalBlock(scope: !259, file: !11, line: 231, column: 13)
!259 = distinct !DILexicalBlock(scope: !260, file: !11, line: 231, column: 4)
!260 = distinct !DILexicalBlock(scope: !207, file: !11, line: 231, column: 4)
!261 = !DILocation(line: 232, column: 19, scope: !258)
!262 = !DILocalVariable(name: "len", scope: !258, file: !11, line: 233, type: !4)
!263 = !DILocation(line: 233, column: 11, scope: !258)
!264 = !DILocalVariable(name: "newLen", scope: !258, file: !11, line: 234, type: !4)
!265 = !DILocation(line: 234, column: 11, scope: !258)
!266 = !DILocation(line: 236, column: 33, scope: !258)
!267 = !DILocation(line: 236, column: 37, scope: !258)
!268 = !DILocation(line: 236, column: 13, scope: !258)
!269 = !DILocation(line: 236, column: 11, scope: !258)
!270 = !DILocation(line: 237, column: 11, scope: !271)
!271 = distinct !DILexicalBlock(scope: !258, file: !11, line: 237, column: 11)
!272 = !DILocation(line: 237, column: 15, scope: !271)
!273 = !DILocation(line: 237, column: 11, scope: !258)
!274 = !DILocation(line: 238, column: 10, scope: !275)
!275 = distinct !DILexicalBlock(scope: !271, file: !11, line: 237, column: 20)
!276 = !DILocation(line: 239, column: 17, scope: !275)
!277 = !DILocation(line: 239, column: 10, scope: !275)
!278 = !DILocation(line: 243, column: 12, scope: !279)
!279 = distinct !DILexicalBlock(scope: !258, file: !11, line: 243, column: 11)
!280 = !DILocation(line: 243, column: 16, scope: !279)
!281 = !DILocation(line: 243, column: 21, scope: !279)
!282 = !DILocation(line: 243, column: 25, scope: !283)
!283 = !DILexicalBlockFile(scope: !279, file: !11, discriminator: 1)
!284 = !DILocation(line: 243, column: 24, scope: !283)
!285 = !DILocation(line: 243, column: 28, scope: !283)
!286 = !DILocation(line: 243, column: 36, scope: !283)
!287 = !DILocation(line: 244, column: 12, scope: !279)
!288 = !DILocation(line: 244, column: 16, scope: !279)
!289 = !DILocation(line: 244, column: 21, scope: !279)
!290 = !DILocation(line: 244, column: 24, scope: !283)
!291 = !DILocation(line: 244, column: 30, scope: !283)
!292 = !DILocation(line: 244, column: 37, scope: !283)
!293 = !DILocation(line: 244, column: 40, scope: !294)
!294 = !DILexicalBlockFile(scope: !279, file: !11, discriminator: 2)
!295 = !DILocation(line: 244, column: 46, scope: !294)
!296 = !DILocation(line: 243, column: 11, scope: !297)
!297 = !DILexicalBlockFile(scope: !258, file: !11, discriminator: 2)
!298 = !DILocation(line: 245, column: 10, scope: !299)
!299 = distinct !DILexicalBlock(scope: !279, file: !11, line: 244, column: 55)
!300 = !DILocation(line: 246, column: 10, scope: !299)
!301 = !DILocation(line: 249, column: 11, scope: !302)
!302 = distinct !DILexicalBlock(scope: !258, file: !11, line: 249, column: 11)
!303 = !DILocation(line: 249, column: 15, scope: !302)
!304 = !DILocation(line: 249, column: 11, scope: !258)
!305 = !DILocation(line: 251, column: 10, scope: !306)
!306 = distinct !DILexicalBlock(scope: !302, file: !11, line: 249, column: 21)
!307 = !DILocation(line: 254, column: 23, scope: !258)
!308 = !DILocation(line: 254, column: 17, scope: !258)
!309 = !DILocation(line: 254, column: 36, scope: !258)
!310 = !DILocation(line: 254, column: 34, scope: !258)
!311 = !DILocation(line: 254, column: 40, scope: !258)
!312 = !DILocation(line: 254, column: 14, scope: !258)
!313 = !DILocation(line: 255, column: 11, scope: !314)
!314 = distinct !DILexicalBlock(scope: !258, file: !11, line: 255, column: 11)
!315 = !DILocation(line: 255, column: 18, scope: !314)
!316 = !DILocation(line: 255, column: 11, scope: !258)
!317 = !DILocation(line: 256, column: 10, scope: !318)
!318 = distinct !DILexicalBlock(scope: !314, file: !11, line: 255, column: 23)
!319 = !DILocation(line: 257, column: 10, scope: !318)
!320 = !DILocation(line: 259, column: 28, scope: !258)
!321 = !DILocation(line: 259, column: 19, scope: !258)
!322 = !DILocation(line: 259, column: 17, scope: !258)
!323 = !DILocation(line: 261, column: 16, scope: !258)
!324 = !DILocation(line: 261, column: 11, scope: !258)
!325 = !DILocation(line: 261, column: 14, scope: !258)
!326 = !DILocation(line: 262, column: 12, scope: !327)
!327 = distinct !DILexicalBlock(scope: !258, file: !11, line: 262, column: 11)
!328 = !DILocation(line: 262, column: 11, scope: !258)
!329 = !DILocation(line: 263, column: 17, scope: !330)
!330 = distinct !DILexicalBlock(scope: !327, file: !11, line: 262, column: 31)
!331 = !DILocation(line: 263, column: 22, scope: !330)
!332 = !DILocation(line: 263, column: 26, scope: !330)
!333 = !DILocation(line: 263, column: 10, scope: !330)
!334 = !DILocation(line: 264, column: 7, scope: !330)
!335 = !DILocation(line: 265, column: 14, scope: !258)
!336 = !DILocation(line: 265, column: 11, scope: !258)
!337 = !DILocation(line: 267, column: 12, scope: !258)
!338 = !DILocation(line: 267, column: 10, scope: !258)
!339 = !DILocation(line: 231, column: 4, scope: !340)
!340 = !DILexicalBlockFile(scope: !259, file: !11, discriminator: 1)
!341 = distinct !{!341, !256}
!342 = !DILocation(line: 271, column: 8, scope: !343)
!343 = distinct !DILexicalBlock(scope: !207, file: !11, line: 271, column: 8)
!344 = !DILocation(line: 271, column: 18, scope: !343)
!345 = !DILocation(line: 271, column: 8, scope: !207)
!346 = !DILocation(line: 272, column: 7, scope: !347)
!347 = distinct !DILexicalBlock(scope: !343, file: !11, line: 271, column: 23)
!348 = !DILocation(line: 273, column: 7, scope: !347)
!349 = !DILocation(line: 275, column: 5, scope: !207)
!350 = !DILocation(line: 275, column: 9, scope: !207)
!351 = !DILocation(line: 281, column: 16, scope: !207)
!352 = !DILocation(line: 281, column: 22, scope: !207)
!353 = !DILocation(line: 281, column: 21, scope: !207)
!354 = !DILocation(line: 281, column: 19, scope: !207)
!355 = !DILocation(line: 281, column: 5, scope: !207)
!356 = !DILocation(line: 281, column: 12, scope: !207)
!357 = !DILocation(line: 282, column: 15, scope: !207)
!358 = !DILocation(line: 282, column: 5, scope: !207)
!359 = !DILocation(line: 282, column: 13, scope: !207)
!360 = !DILocation(line: 283, column: 13, scope: !207)
!361 = !DILocation(line: 283, column: 5, scope: !207)
!362 = !DILocation(line: 283, column: 11, scope: !207)
!363 = !DILocation(line: 284, column: 14, scope: !207)
!364 = !DILocation(line: 284, column: 5, scope: !207)
!365 = !DILocation(line: 284, column: 12, scope: !207)
!366 = !DILocation(line: 286, column: 4, scope: !207)
!367 = !DILocation(line: 287, column: 1, scope: !207)
!368 = !DILocalVariable(name: "in", arg: 1, scope: !10, file: !11, line: 308, type: !14)
!369 = !DILocation(line: 308, column: 26, scope: !10)
!370 = !DILocalVariable(name: "size", arg: 2, scope: !10, file: !11, line: 309, type: !5)
!371 = !DILocation(line: 309, column: 21, scope: !10)
!372 = !DILocalVariable(name: "i", scope: !10, file: !11, line: 313, type: !5)
!373 = !DILocation(line: 313, column: 11, scope: !10)
!374 = !DILocation(line: 318, column: 8, scope: !375)
!375 = distinct !DILexicalBlock(scope: !10, file: !11, line: 318, column: 8)
!376 = !DILocation(line: 318, column: 13, scope: !375)
!377 = !DILocation(line: 318, column: 8, scope: !10)
!378 = !DILocation(line: 319, column: 12, scope: !379)
!379 = distinct !DILexicalBlock(scope: !375, file: !11, line: 318, column: 31)
!380 = !DILocation(line: 320, column: 11, scope: !379)
!381 = !DILocation(line: 320, column: 7, scope: !379)
!382 = !DILocation(line: 320, column: 17, scope: !379)
!383 = !DILocation(line: 321, column: 11, scope: !379)
!384 = !DILocation(line: 321, column: 16, scope: !379)
!385 = !DILocation(line: 321, column: 7, scope: !379)
!386 = !DILocation(line: 321, column: 21, scope: !379)
!387 = !DILocation(line: 322, column: 11, scope: !379)
!388 = !DILocation(line: 322, column: 16, scope: !379)
!389 = !DILocation(line: 322, column: 7, scope: !379)
!390 = !DILocation(line: 322, column: 21, scope: !379)
!391 = !DILocation(line: 323, column: 11, scope: !379)
!392 = !DILocation(line: 323, column: 16, scope: !379)
!393 = !DILocation(line: 323, column: 7, scope: !379)
!394 = !DILocation(line: 323, column: 21, scope: !379)
!395 = !DILocation(line: 324, column: 4, scope: !379)
!396 = !DILocation(line: 325, column: 11, scope: !397)
!397 = distinct !DILexicalBlock(scope: !375, file: !11, line: 324, column: 11)
!398 = !DILocation(line: 325, column: 7, scope: !397)
!399 = !DILocation(line: 325, column: 17, scope: !397)
!400 = !DILocation(line: 328, column: 11, scope: !401)
!401 = distinct !DILexicalBlock(scope: !10, file: !11, line: 328, column: 4)
!402 = !DILocation(line: 328, column: 9, scope: !401)
!403 = !DILocation(line: 328, column: 16, scope: !404)
!404 = !DILexicalBlockFile(scope: !405, file: !11, discriminator: 1)
!405 = distinct !DILexicalBlock(scope: !401, file: !11, line: 328, column: 4)
!406 = !DILocation(line: 328, column: 20, scope: !404)
!407 = !DILocation(line: 328, column: 18, scope: !404)
!408 = !DILocation(line: 328, column: 4, scope: !404)
!409 = !DILocation(line: 329, column: 19, scope: !410)
!410 = distinct !DILexicalBlock(scope: !405, file: !11, line: 328, column: 31)
!411 = !DILocation(line: 329, column: 16, scope: !410)
!412 = !DILocation(line: 329, column: 22, scope: !410)
!413 = !DILocation(line: 329, column: 35, scope: !414)
!414 = !DILexicalBlockFile(scope: !410, file: !11, discriminator: 1)
!415 = !DILocation(line: 329, column: 32, scope: !414)
!416 = !DILocation(line: 329, column: 16, scope: !414)
!417 = !DILocation(line: 329, column: 16, scope: !418)
!418 = !DILexicalBlockFile(scope: !410, file: !11, discriminator: 2)
!419 = !DILocation(line: 329, column: 16, scope: !420)
!420 = !DILexicalBlockFile(scope: !410, file: !11, discriminator: 3)
!421 = !DILocation(line: 329, column: 11, scope: !420)
!422 = !DILocation(line: 329, column: 7, scope: !420)
!423 = !DILocation(line: 329, column: 14, scope: !420)
!424 = !DILocation(line: 330, column: 4, scope: !410)
!425 = !DILocation(line: 328, column: 27, scope: !426)
!426 = !DILexicalBlockFile(scope: !405, file: !11, discriminator: 2)
!427 = !DILocation(line: 328, column: 4, scope: !426)
!428 = distinct !{!428, !429}
!429 = !DILocation(line: 328, column: 4, scope: !10)
!430 = !DILocation(line: 332, column: 4, scope: !10)
!431 = distinct !DISubprogram(name: "CPName_LinuxConvertTo", scope: !11, file: !11, line: 359, type: !432, isLocal: false, isDefinition: true, scopeLine: 362, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!432 = !DISubroutineType(types: !433)
!433 = !{!4, !14, !5, !120}
!434 = !DILocalVariable(name: "nameIn", arg: 1, scope: !431, file: !11, line: 359, type: !14)
!435 = !DILocation(line: 359, column: 35, scope: !431)
!436 = !DILocalVariable(name: "bufOutSize", arg: 2, scope: !431, file: !11, line: 360, type: !5)
!437 = !DILocation(line: 360, column: 30, scope: !431)
!438 = !DILocalVariable(name: "bufOut", arg: 3, scope: !431, file: !11, line: 361, type: !120)
!439 = !DILocation(line: 361, column: 29, scope: !431)
!440 = !DILocation(line: 363, column: 27, scope: !431)
!441 = !DILocation(line: 363, column: 35, scope: !431)
!442 = !DILocation(line: 363, column: 47, scope: !431)
!443 = !DILocation(line: 363, column: 11, scope: !431)
!444 = !DILocation(line: 363, column: 4, scope: !431)
!445 = distinct !DISubprogram(name: "CPNameConvertTo", scope: !11, file: !11, line: 422, type: !446, isLocal: false, isDefinition: true, scopeLine: 426, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!446 = !DISubroutineType(types: !447)
!447 = !{!4, !14, !5, !120, !16}
!448 = !DILocalVariable(name: "nameIn", arg: 1, scope: !445, file: !11, line: 422, type: !14)
!449 = !DILocation(line: 422, column: 29, scope: !445)
!450 = !DILocalVariable(name: "bufOutSize", arg: 2, scope: !445, file: !11, line: 423, type: !5)
!451 = !DILocation(line: 423, column: 24, scope: !445)
!452 = !DILocalVariable(name: "bufOut", arg: 3, scope: !445, file: !11, line: 424, type: !120)
!453 = !DILocation(line: 424, column: 23, scope: !445)
!454 = !DILocalVariable(name: "pathSep", arg: 4, scope: !445, file: !11, line: 425, type: !16)
!455 = !DILocation(line: 425, column: 22, scope: !445)
!456 = !DILocalVariable(name: "origOut", scope: !445, file: !11, line: 427, type: !120)
!457 = !DILocation(line: 427, column: 10, scope: !445)
!458 = !DILocation(line: 427, column: 20, scope: !445)
!459 = !DILocalVariable(name: "endOut", scope: !445, file: !11, line: 428, type: !14)
!460 = !DILocation(line: 428, column: 16, scope: !445)
!461 = !DILocation(line: 428, column: 25, scope: !445)
!462 = !DILocation(line: 428, column: 34, scope: !445)
!463 = !DILocation(line: 428, column: 32, scope: !445)
!464 = !DILocalVariable(name: "cpNameLength", scope: !445, file: !11, line: 429, type: !5)
!465 = !DILocation(line: 429, column: 11, scope: !445)
!466 = !DILocation(line: 435, column: 4, scope: !445)
!467 = !DILocation(line: 435, column: 12, scope: !468)
!468 = !DILexicalBlockFile(scope: !445, file: !11, discriminator: 1)
!469 = !DILocation(line: 435, column: 11, scope: !468)
!470 = !DILocation(line: 435, column: 22, scope: !468)
!471 = !DILocation(line: 435, column: 19, scope: !468)
!472 = !DILocation(line: 435, column: 4, scope: !468)
!473 = !DILocation(line: 436, column: 13, scope: !474)
!474 = distinct !DILexicalBlock(scope: !445, file: !11, line: 435, column: 31)
!475 = !DILocation(line: 435, column: 4, scope: !476)
!476 = !DILexicalBlockFile(scope: !445, file: !11, discriminator: 2)
!477 = distinct !{!477, !466}
!478 = !DILocation(line: 444, column: 4, scope: !445)
!479 = !DILocation(line: 444, column: 12, scope: !468)
!480 = !DILocation(line: 444, column: 11, scope: !468)
!481 = !DILocation(line: 444, column: 19, scope: !468)
!482 = !DILocation(line: 444, column: 27, scope: !468)
!483 = !DILocation(line: 444, column: 30, scope: !476)
!484 = !DILocation(line: 444, column: 39, scope: !476)
!485 = !DILocation(line: 444, column: 37, scope: !476)
!486 = !DILocation(line: 444, column: 4, scope: !487)
!487 = !DILexicalBlockFile(scope: !445, file: !11, discriminator: 3)
!488 = !DILocation(line: 445, column: 12, scope: !489)
!489 = distinct !DILexicalBlock(scope: !490, file: !11, line: 445, column: 11)
!490 = distinct !DILexicalBlock(scope: !445, file: !11, line: 444, column: 47)
!491 = !DILocation(line: 445, column: 11, scope: !489)
!492 = !DILocation(line: 445, column: 22, scope: !489)
!493 = !DILocation(line: 445, column: 19, scope: !489)
!494 = !DILocation(line: 445, column: 11, scope: !490)
!495 = !DILocation(line: 446, column: 11, scope: !496)
!496 = distinct !DILexicalBlock(scope: !489, file: !11, line: 445, column: 31)
!497 = !DILocation(line: 446, column: 18, scope: !496)
!498 = !DILocation(line: 447, column: 10, scope: !496)
!499 = distinct !{!499, !498}
!500 = !DILocation(line: 448, column: 19, scope: !501)
!501 = distinct !DILexicalBlock(scope: !496, file: !11, line: 447, column: 13)
!502 = !DILocation(line: 449, column: 10, scope: !501)
!503 = !DILocation(line: 449, column: 20, scope: !504)
!504 = !DILexicalBlockFile(scope: !496, file: !11, discriminator: 1)
!505 = !DILocation(line: 449, column: 19, scope: !504)
!506 = !DILocation(line: 449, column: 30, scope: !504)
!507 = !DILocation(line: 449, column: 27, scope: !504)
!508 = !DILocation(line: 449, column: 10, scope: !504)
!509 = !DILocation(line: 450, column: 7, scope: !496)
!510 = !DILocation(line: 451, column: 21, scope: !511)
!511 = distinct !DILexicalBlock(scope: !489, file: !11, line: 450, column: 14)
!512 = !DILocation(line: 451, column: 20, scope: !511)
!513 = !DILocation(line: 451, column: 11, scope: !511)
!514 = !DILocation(line: 451, column: 18, scope: !511)
!515 = !DILocation(line: 452, column: 16, scope: !511)
!516 = !DILocation(line: 454, column: 13, scope: !490)
!517 = !DILocation(line: 444, column: 4, scope: !518)
!518 = !DILexicalBlockFile(scope: !445, file: !11, discriminator: 4)
!519 = distinct !{!519, !478}
!520 = !DILocation(line: 463, column: 8, scope: !521)
!521 = distinct !DILexicalBlock(scope: !445, file: !11, line: 463, column: 8)
!522 = !DILocation(line: 463, column: 18, scope: !521)
!523 = !DILocation(line: 463, column: 15, scope: !521)
!524 = !DILocation(line: 463, column: 8, scope: !445)
!525 = !DILocation(line: 464, column: 7, scope: !526)
!526 = distinct !DILexicalBlock(scope: !521, file: !11, line: 463, column: 26)
!527 = !DILocation(line: 466, column: 5, scope: !445)
!528 = !DILocation(line: 466, column: 12, scope: !445)
!529 = !DILocation(line: 472, column: 19, scope: !445)
!530 = !DILocation(line: 472, column: 28, scope: !445)
!531 = !DILocation(line: 472, column: 26, scope: !445)
!532 = !DILocation(line: 472, column: 17, scope: !445)
!533 = !DILocation(line: 473, column: 4, scope: !445)
!534 = !DILocation(line: 473, column: 12, scope: !468)
!535 = !DILocation(line: 473, column: 25, scope: !468)
!536 = !DILocation(line: 473, column: 31, scope: !468)
!537 = !DILocation(line: 473, column: 43, scope: !476)
!538 = !DILocation(line: 473, column: 56, scope: !476)
!539 = !DILocation(line: 473, column: 35, scope: !476)
!540 = !DILocation(line: 473, column: 61, scope: !476)
!541 = !DILocation(line: 473, column: 4, scope: !487)
!542 = !DILocation(line: 474, column: 19, scope: !543)
!543 = distinct !DILexicalBlock(scope: !445, file: !11, line: 473, column: 68)
!544 = !DILocation(line: 473, column: 4, scope: !518)
!545 = distinct !{!545, !533}
!546 = !DILocation(line: 476, column: 35, scope: !445)
!547 = !DILocation(line: 476, column: 44, scope: !445)
!548 = !DILocation(line: 476, column: 19, scope: !445)
!549 = !DILocation(line: 476, column: 17, scope: !445)
!550 = !DILocation(line: 479, column: 17, scope: !445)
!551 = !DILocation(line: 479, column: 11, scope: !445)
!552 = !DILocation(line: 479, column: 4, scope: !445)
!553 = !DILocation(line: 480, column: 1, scope: !445)
!554 = distinct !DISubprogram(name: "CPName_WindowsConvertTo", scope: !11, file: !11, line: 390, type: !432, isLocal: false, isDefinition: true, scopeLine: 393, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!555 = !DILocalVariable(name: "nameIn", arg: 1, scope: !554, file: !11, line: 390, type: !14)
!556 = !DILocation(line: 390, column: 37, scope: !554)
!557 = !DILocalVariable(name: "bufOutSize", arg: 2, scope: !554, file: !11, line: 391, type: !5)
!558 = !DILocation(line: 391, column: 32, scope: !554)
!559 = !DILocalVariable(name: "bufOut", arg: 3, scope: !554, file: !11, line: 392, type: !120)
!560 = !DILocation(line: 392, column: 31, scope: !554)
!561 = !DILocation(line: 394, column: 27, scope: !554)
!562 = !DILocation(line: 394, column: 35, scope: !554)
!563 = !DILocation(line: 394, column: 47, scope: !554)
!564 = !DILocation(line: 394, column: 11, scope: !554)
!565 = !DILocation(line: 394, column: 4, scope: !554)
