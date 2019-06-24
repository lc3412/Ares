; ModuleID = './strutil.o.i'
source_filename = "./strutil.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.DynBuf = type { i8*, i64, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@StrUtil_FormatSizeInBytesUnlocalized.epsilon = internal constant double 1.000000e-02, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s TB\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s GB\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s MB\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s KB\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%s bytes\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%s byte\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%%.%uf\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"VERIFY %s:%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"strutil.c\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"%s%c%s\00", align 1

; Function Attrs: nounwind uwtable
define i8* @StrUtil_GetNextToken(i32*, i8*, i8*) #0 !dbg !48 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !54, metadata !55), !dbg !56
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !57, metadata !55), !dbg !58
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !59, metadata !55), !dbg !60
  call void @llvm.dbg.declare(metadata i32* %8, metadata !61, metadata !55), !dbg !62
  call void @llvm.dbg.declare(metadata i32* %9, metadata !63, metadata !55), !dbg !64
  call void @llvm.dbg.declare(metadata i8** %10, metadata !65, metadata !55), !dbg !66
  br label %11, !dbg !67

; <label>:11:                                     ; preds = %34, %3
  %12 = load i32*, i32** %5, align 8, !dbg !68
  %13 = load i32, i32* %12, align 4, !dbg !73
  %14 = zext i32 %13 to i64, !dbg !74
  %15 = load i8*, i8** %6, align 8, !dbg !74
  %16 = getelementptr inbounds i8, i8* %15, i64 %14, !dbg !74
  %17 = load i8, i8* %16, align 1, !dbg !74
  %18 = sext i8 %17 to i32, !dbg !74
  %19 = icmp eq i32 %18, 0, !dbg !75
  br i1 %19, label %20, label %21, !dbg !76

; <label>:20:                                     ; preds = %11
  store i8* null, i8** %4, align 8, !dbg !77
  br label %92, !dbg !77

; <label>:21:                                     ; preds = %11
  %22 = load i8*, i8** %7, align 8, !dbg !79
  %23 = load i32*, i32** %5, align 8, !dbg !81
  %24 = load i32, i32* %23, align 4, !dbg !82
  %25 = zext i32 %24 to i64, !dbg !83
  %26 = load i8*, i8** %6, align 8, !dbg !83
  %27 = getelementptr inbounds i8, i8* %26, i64 %25, !dbg !83
  %28 = load i8, i8* %27, align 1, !dbg !83
  %29 = sext i8 %28 to i32, !dbg !83
  %30 = call i8* @strchr(i8* %22, i32 %29) #10, !dbg !84
  %31 = icmp eq i8* %30, null, !dbg !85
  br i1 %31, label %32, label %33, !dbg !86

; <label>:32:                                     ; preds = %21
  br label %38, !dbg !87

; <label>:33:                                     ; preds = %21
  br label %34, !dbg !89

; <label>:34:                                     ; preds = %33
  %35 = load i32*, i32** %5, align 8, !dbg !90
  %36 = load i32, i32* %35, align 4, !dbg !92
  %37 = add i32 %36, 1, !dbg !92
  store i32 %37, i32* %35, align 4, !dbg !92
  br label %11, !dbg !93, !llvm.loop !94

; <label>:38:                                     ; preds = %32
  %39 = load i32*, i32** %5, align 8, !dbg !95
  %40 = load i32, i32* %39, align 4, !dbg !96
  store i32 %40, i32* %8, align 4, !dbg !97
  %41 = load i32*, i32** %5, align 8, !dbg !98
  %42 = load i32, i32* %41, align 4, !dbg !100
  %43 = add i32 %42, 1, !dbg !100
  store i32 %43, i32* %41, align 4, !dbg !100
  br label %44, !dbg !101

; <label>:44:                                     ; preds = %67, %38
  %45 = load i32*, i32** %5, align 8, !dbg !102
  %46 = load i32, i32* %45, align 4, !dbg !105
  %47 = zext i32 %46 to i64, !dbg !106
  %48 = load i8*, i8** %6, align 8, !dbg !106
  %49 = getelementptr inbounds i8, i8* %48, i64 %47, !dbg !106
  %50 = load i8, i8* %49, align 1, !dbg !106
  %51 = sext i8 %50 to i32, !dbg !106
  %52 = icmp ne i32 %51, 0, !dbg !107
  br i1 %52, label %53, label %64, !dbg !108

; <label>:53:                                     ; preds = %44
  %54 = load i8*, i8** %7, align 8, !dbg !109
  %55 = load i32*, i32** %5, align 8, !dbg !111
  %56 = load i32, i32* %55, align 4, !dbg !112
  %57 = zext i32 %56 to i64, !dbg !113
  %58 = load i8*, i8** %6, align 8, !dbg !113
  %59 = getelementptr inbounds i8, i8* %58, i64 %57, !dbg !113
  %60 = load i8, i8* %59, align 1, !dbg !113
  %61 = sext i8 %60 to i32, !dbg !113
  %62 = call i8* @strchr(i8* %54, i32 %61) #10, !dbg !114
  %63 = icmp eq i8* %62, null, !dbg !115
  br label %64

; <label>:64:                                     ; preds = %53, %44
  %65 = phi i1 [ false, %44 ], [ %63, %53 ]
  br i1 %65, label %66, label %71, !dbg !116

; <label>:66:                                     ; preds = %64
  br label %67, !dbg !118

; <label>:67:                                     ; preds = %66
  %68 = load i32*, i32** %5, align 8, !dbg !120
  %69 = load i32, i32* %68, align 4, !dbg !122
  %70 = add i32 %69, 1, !dbg !122
  store i32 %70, i32* %68, align 4, !dbg !122
  br label %44, !dbg !123, !llvm.loop !124

; <label>:71:                                     ; preds = %64
  %72 = load i32*, i32** %5, align 8, !dbg !126
  %73 = load i32, i32* %72, align 4, !dbg !127
  %74 = load i32, i32* %8, align 4, !dbg !128
  %75 = sub i32 %73, %74, !dbg !129
  store i32 %75, i32* %9, align 4, !dbg !130
  %76 = load i32, i32* %9, align 4, !dbg !131
  %77 = add i32 %76, 1, !dbg !132
  %78 = zext i32 %77 to i64, !dbg !133
  %79 = call i8* @UtilSafeMalloc0(i64 %78), !dbg !134
  store i8* %79, i8** %10, align 8, !dbg !135
  %80 = load i8*, i8** %10, align 8, !dbg !136
  %81 = load i8*, i8** %6, align 8, !dbg !137
  %82 = load i32, i32* %8, align 4, !dbg !138
  %83 = zext i32 %82 to i64, !dbg !139
  %84 = getelementptr inbounds i8, i8* %81, i64 %83, !dbg !139
  %85 = load i32, i32* %9, align 4, !dbg !140
  %86 = zext i32 %85 to i64, !dbg !140
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %80, i8* %84, i64 %86, i32 1, i1 false), !dbg !141
  %87 = load i32, i32* %9, align 4, !dbg !142
  %88 = zext i32 %87 to i64, !dbg !143
  %89 = load i8*, i8** %10, align 8, !dbg !143
  %90 = getelementptr inbounds i8, i8* %89, i64 %88, !dbg !143
  store i8 0, i8* %90, align 1, !dbg !144
  %91 = load i8*, i8** %10, align 8, !dbg !145
  store i8* %91, i8** %4, align 8, !dbg !146
  br label %92, !dbg !146

; <label>:92:                                     ; preds = %71, %20
  %93 = load i8*, i8** %4, align 8, !dbg !147
  ret i8* %93, !dbg !147
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

declare i8* @UtilSafeMalloc0(i64) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define signext i8 @StrUtil_GetNextIntToken(i32*, i32*, i8*, i8*) #0 !dbg !148 {
  %5 = alloca i8, align 1
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  store i32* %0, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !153, metadata !55), !dbg !154
  store i32* %1, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !155, metadata !55), !dbg !156
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !157, metadata !55), !dbg !158
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !159, metadata !55), !dbg !160
  call void @llvm.dbg.declare(metadata i8** %10, metadata !161, metadata !55), !dbg !162
  call void @llvm.dbg.declare(metadata i8* %11, metadata !163, metadata !55), !dbg !164
  store i8 0, i8* %11, align 1, !dbg !164
  %12 = load i32*, i32** %7, align 8, !dbg !165
  %13 = load i8*, i8** %8, align 8, !dbg !166
  %14 = load i8*, i8** %9, align 8, !dbg !167
  %15 = call i8* @StrUtil_GetNextToken(i32* %12, i8* %13, i8* %14), !dbg !168
  store i8* %15, i8** %10, align 8, !dbg !169
  %16 = load i8*, i8** %10, align 8, !dbg !170
  %17 = icmp eq i8* %16, null, !dbg !172
  br i1 %17, label %18, label %19, !dbg !173

; <label>:18:                                     ; preds = %4
  store i8 0, i8* %5, align 1, !dbg !174
  br label %25, !dbg !174

; <label>:19:                                     ; preds = %4
  %20 = load i32*, i32** %6, align 8, !dbg !176
  %21 = load i8*, i8** %10, align 8, !dbg !177
  %22 = call signext i8 @StrUtil_StrToInt(i32* %20, i8* %21), !dbg !178
  store i8 %22, i8* %11, align 1, !dbg !179
  %23 = load i8*, i8** %10, align 8, !dbg !180
  call void @free(i8* %23) #8, !dbg !181
  %24 = load i8, i8* %11, align 1, !dbg !182
  store i8 %24, i8* %5, align 1, !dbg !183
  br label %25, !dbg !183

; <label>:25:                                     ; preds = %19, %18
  %26 = load i8, i8* %5, align 1, !dbg !184
  ret i8 %26, !dbg !184
}

; Function Attrs: nounwind uwtable
define signext i8 @StrUtil_StrToInt(i32*, i8*) #0 !dbg !185 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  call void @llvm.dbg.declare(metadata i32** %3, metadata !188, metadata !55), !dbg !189
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !190, metadata !55), !dbg !191
  call void @llvm.dbg.declare(metadata i8** %5, metadata !192, metadata !55), !dbg !193
  call void @llvm.dbg.declare(metadata i64* %6, metadata !194, metadata !55), !dbg !196
  %7 = call i32* @__errno_location() #1, !dbg !197
  store i32 0, i32* %7, align 4, !dbg !198
  %8 = load i8*, i8** %4, align 8, !dbg !199
  %9 = call i64 @strtol(i8* %8, i8** %5, i32 0) #8, !dbg !200
  store i64 %9, i64* %6, align 8, !dbg !201
  %10 = load i64, i64* %6, align 8, !dbg !202
  %11 = trunc i64 %10 to i32, !dbg !203
  %12 = load i32*, i32** %3, align 8, !dbg !204
  store i32 %11, i32* %12, align 4, !dbg !205
  %13 = load i8*, i8** %5, align 8, !dbg !206
  %14 = load i8*, i8** %4, align 8, !dbg !207
  %15 = icmp ne i8* %13, %14, !dbg !208
  br i1 %15, label %16, label %39, !dbg !209

; <label>:16:                                     ; preds = %2
  %17 = load i8*, i8** %5, align 8, !dbg !210
  %18 = load i8, i8* %17, align 1, !dbg !212
  %19 = sext i8 %18 to i32, !dbg !212
  %20 = icmp eq i32 %19, 0, !dbg !213
  br i1 %20, label %21, label %39, !dbg !214

; <label>:21:                                     ; preds = %16
  %22 = call i32* @__errno_location() #1, !dbg !215
  %23 = load i32, i32* %22, align 4, !dbg !217
  %24 = icmp ne i32 %23, 34, !dbg !218
  br i1 %24, label %25, label %39, !dbg !219

; <label>:25:                                     ; preds = %21
  %26 = load i64, i64* %6, align 8, !dbg !220
  %27 = load i64, i64* %6, align 8, !dbg !221
  %28 = trunc i64 %27 to i32, !dbg !222
  %29 = sext i32 %28 to i64, !dbg !222
  %30 = icmp eq i64 %26, %29, !dbg !223
  br i1 %30, label %37, label %31, !dbg !224

; <label>:31:                                     ; preds = %25
  %32 = load i64, i64* %6, align 8, !dbg !225
  %33 = load i64, i64* %6, align 8, !dbg !226
  %34 = trunc i64 %33 to i32, !dbg !227
  %35 = zext i32 %34 to i64, !dbg !227
  %36 = icmp eq i64 %32, %35, !dbg !228
  br label %37, !dbg !229

; <label>:37:                                     ; preds = %31, %25
  %38 = phi i1 [ true, %25 ], [ %36, %31 ]
  br label %39

; <label>:39:                                     ; preds = %37, %21, %16, %2
  %40 = phi i1 [ false, %21 ], [ false, %16 ], [ false, %2 ], [ %38, %37 ]
  %41 = zext i1 %40 to i32, !dbg !230
  %42 = trunc i32 %41 to i8, !dbg !232
  ret i8 %42, !dbg !233
}

; Function Attrs: nounwind
declare void @free(i8*) #5

; Function Attrs: nounwind uwtable
define signext i8 @StrUtil_GetNextUintToken(i32*, i32*, i8*, i8*) #0 !dbg !234 {
  %5 = alloca i8, align 1
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  store i32* %0, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !238, metadata !55), !dbg !239
  store i32* %1, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !240, metadata !55), !dbg !241
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !242, metadata !55), !dbg !243
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !244, metadata !55), !dbg !245
  call void @llvm.dbg.declare(metadata i8** %10, metadata !246, metadata !55), !dbg !247
  call void @llvm.dbg.declare(metadata i8* %11, metadata !248, metadata !55), !dbg !249
  store i8 0, i8* %11, align 1, !dbg !249
  %12 = load i32*, i32** %7, align 8, !dbg !250
  %13 = load i8*, i8** %8, align 8, !dbg !251
  %14 = load i8*, i8** %9, align 8, !dbg !252
  %15 = call i8* @StrUtil_GetNextToken(i32* %12, i8* %13, i8* %14), !dbg !253
  store i8* %15, i8** %10, align 8, !dbg !254
  %16 = load i8*, i8** %10, align 8, !dbg !255
  %17 = icmp eq i8* %16, null, !dbg !257
  br i1 %17, label %18, label %19, !dbg !258

; <label>:18:                                     ; preds = %4
  store i8 0, i8* %5, align 1, !dbg !259
  br label %25, !dbg !259

; <label>:19:                                     ; preds = %4
  %20 = load i32*, i32** %6, align 8, !dbg !261
  %21 = load i8*, i8** %10, align 8, !dbg !262
  %22 = call signext i8 @StrUtil_StrToUint(i32* %20, i8* %21), !dbg !263
  store i8 %22, i8* %11, align 1, !dbg !264
  %23 = load i8*, i8** %10, align 8, !dbg !265
  call void @free(i8* %23) #8, !dbg !266
  %24 = load i8, i8* %11, align 1, !dbg !267
  store i8 %24, i8* %5, align 1, !dbg !268
  br label %25, !dbg !268

; <label>:25:                                     ; preds = %19, %18
  %26 = load i8, i8* %5, align 1, !dbg !269
  ret i8 %26, !dbg !269
}

; Function Attrs: nounwind uwtable
define signext i8 @StrUtil_StrToUint(i32*, i8*) #0 !dbg !270 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  call void @llvm.dbg.declare(metadata i32** %3, metadata !273, metadata !55), !dbg !274
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !275, metadata !55), !dbg !276
  call void @llvm.dbg.declare(metadata i8** %5, metadata !277, metadata !55), !dbg !278
  call void @llvm.dbg.declare(metadata i64* %6, metadata !279, metadata !55), !dbg !280
  %7 = call i32* @__errno_location() #1, !dbg !281
  store i32 0, i32* %7, align 4, !dbg !282
  %8 = load i8*, i8** %4, align 8, !dbg !283
  %9 = call i64 @strtoul(i8* %8, i8** %5, i32 0) #8, !dbg !284
  store i64 %9, i64* %6, align 8, !dbg !285
  %10 = load i64, i64* %6, align 8, !dbg !286
  %11 = trunc i64 %10 to i32, !dbg !287
  %12 = load i32*, i32** %3, align 8, !dbg !288
  store i32 %11, i32* %12, align 4, !dbg !289
  %13 = load i8*, i8** %5, align 8, !dbg !290
  %14 = load i8*, i8** %4, align 8, !dbg !291
  %15 = icmp ne i8* %13, %14, !dbg !292
  br i1 %15, label %16, label %39, !dbg !293

; <label>:16:                                     ; preds = %2
  %17 = load i8*, i8** %5, align 8, !dbg !294
  %18 = load i8, i8* %17, align 1, !dbg !296
  %19 = sext i8 %18 to i32, !dbg !296
  %20 = icmp eq i32 %19, 0, !dbg !297
  br i1 %20, label %21, label %39, !dbg !298

; <label>:21:                                     ; preds = %16
  %22 = call i32* @__errno_location() #1, !dbg !299
  %23 = load i32, i32* %22, align 4, !dbg !301
  %24 = icmp ne i32 %23, 34, !dbg !302
  br i1 %24, label %25, label %39, !dbg !303

; <label>:25:                                     ; preds = %21
  %26 = load i64, i64* %6, align 8, !dbg !304
  %27 = load i64, i64* %6, align 8, !dbg !305
  %28 = trunc i64 %27 to i32, !dbg !306
  %29 = zext i32 %28 to i64, !dbg !306
  %30 = icmp eq i64 %26, %29, !dbg !307
  br i1 %30, label %37, label %31, !dbg !308

; <label>:31:                                     ; preds = %25
  %32 = load i64, i64* %6, align 8, !dbg !309
  %33 = load i64, i64* %6, align 8, !dbg !310
  %34 = trunc i64 %33 to i32, !dbg !311
  %35 = sext i32 %34 to i64, !dbg !311
  %36 = icmp eq i64 %32, %35, !dbg !312
  br label %37, !dbg !313

; <label>:37:                                     ; preds = %31, %25
  %38 = phi i1 [ true, %25 ], [ %36, %31 ]
  br label %39

; <label>:39:                                     ; preds = %37, %21, %16, %2
  %40 = phi i1 [ false, %21 ], [ false, %16 ], [ false, %2 ], [ %38, %37 ]
  %41 = zext i1 %40 to i32, !dbg !314
  %42 = trunc i32 %41 to i8, !dbg !316
  ret i8 %42, !dbg !317
}

; Function Attrs: nounwind uwtable
define signext i8 @StrUtil_GetNextInt64Token(i64*, i32*, i8*, i8*) #0 !dbg !318 {
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  store i64* %0, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !324, metadata !55), !dbg !325
  store i32* %1, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !326, metadata !55), !dbg !327
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !328, metadata !55), !dbg !329
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !330, metadata !55), !dbg !331
  call void @llvm.dbg.declare(metadata i8** %9, metadata !332, metadata !55), !dbg !333
  call void @llvm.dbg.declare(metadata i8* %10, metadata !334, metadata !55), !dbg !335
  %11 = load i32*, i32** %6, align 8, !dbg !336
  %12 = load i8*, i8** %7, align 8, !dbg !337
  %13 = load i8*, i8** %8, align 8, !dbg !338
  %14 = call i8* @StrUtil_GetNextToken(i32* %11, i8* %12, i8* %13), !dbg !339
  store i8* %14, i8** %9, align 8, !dbg !340
  %15 = load i8*, i8** %9, align 8, !dbg !341
  %16 = icmp ne i8* %15, null, !dbg !341
  br i1 %16, label %17, label %22, !dbg !341

; <label>:17:                                     ; preds = %4
  %18 = load i64*, i64** %5, align 8, !dbg !342
  %19 = load i8*, i8** %9, align 8, !dbg !344
  %20 = call signext i8 @StrUtil_StrToInt64(i64* %18, i8* %19), !dbg !345
  %21 = sext i8 %20 to i32, !dbg !345
  br label %23, !dbg !346

; <label>:22:                                     ; preds = %4
  br label %23, !dbg !347

; <label>:23:                                     ; preds = %22, %17
  %24 = phi i32 [ %21, %17 ], [ 0, %22 ], !dbg !349
  %25 = trunc i32 %24 to i8, !dbg !349
  store i8 %25, i8* %10, align 1, !dbg !351
  %26 = load i8*, i8** %9, align 8, !dbg !352
  call void @free(i8* %26) #8, !dbg !353
  %27 = load i8, i8* %10, align 1, !dbg !354
  ret i8 %27, !dbg !355
}

; Function Attrs: nounwind uwtable
define signext i8 @StrUtil_StrToInt64(i64*, i8*) #0 !dbg !356 {
  %3 = alloca i64*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i64* %0, i64** %3, align 8
  call void @llvm.dbg.declare(metadata i64** %3, metadata !359, metadata !55), !dbg !360
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !361, metadata !55), !dbg !362
  call void @llvm.dbg.declare(metadata i8** %5, metadata !363, metadata !55), !dbg !364
  %6 = call i32* @__errno_location() #1, !dbg !365
  store i32 0, i32* %6, align 4, !dbg !366
  %7 = load i8*, i8** %4, align 8, !dbg !367
  %8 = call i64 @strtoll(i8* %7, i8** %5, i32 0) #8, !dbg !368
  %9 = load i64*, i64** %3, align 8, !dbg !369
  store i64 %8, i64* %9, align 8, !dbg !370
  %10 = load i8*, i8** %5, align 8, !dbg !371
  %11 = load i8*, i8** %4, align 8, !dbg !372
  %12 = icmp ne i8* %10, %11, !dbg !373
  br i1 %12, label %13, label %23, !dbg !374

; <label>:13:                                     ; preds = %2
  %14 = load i8*, i8** %5, align 8, !dbg !375
  %15 = getelementptr inbounds i8, i8* %14, i64 0, !dbg !375
  %16 = load i8, i8* %15, align 1, !dbg !375
  %17 = sext i8 %16 to i32, !dbg !375
  %18 = icmp eq i32 %17, 0, !dbg !377
  br i1 %18, label %19, label %23, !dbg !378

; <label>:19:                                     ; preds = %13
  %20 = call i32* @__errno_location() #1, !dbg !379
  %21 = load i32, i32* %20, align 4, !dbg !381
  %22 = icmp ne i32 %21, 34, !dbg !382
  br label %23

; <label>:23:                                     ; preds = %19, %13, %2
  %24 = phi i1 [ false, %13 ], [ false, %2 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32, !dbg !383
  %26 = trunc i32 %25 to i8, !dbg !385
  ret i8 %26, !dbg !386
}

; Function Attrs: nounwind uwtable
define signext i8 @StrUtil_DecimalStrToUint(i32*, i8**) #0 !dbg !387 {
  %3 = alloca i8, align 1
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !391, metadata !55), !dbg !392
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !393, metadata !55), !dbg !394
  call void @llvm.dbg.declare(metadata i64* %6, metadata !395, metadata !55), !dbg !396
  call void @llvm.dbg.declare(metadata i8** %7, metadata !397, metadata !55), !dbg !398
  %8 = call i32* @__errno_location() #1, !dbg !399
  store i32 0, i32* %8, align 4, !dbg !400
  %9 = load i8**, i8*** %5, align 8, !dbg !401
  %10 = load i8*, i8** %9, align 8, !dbg !402
  %11 = call i64 @strtoul(i8* %10, i8** %7, i32 10) #8, !dbg !403
  store i64 %11, i64* %6, align 8, !dbg !404
  %12 = load i8*, i8** %7, align 8, !dbg !405
  %13 = load i8**, i8*** %5, align 8, !dbg !407
  %14 = load i8*, i8** %13, align 8, !dbg !408
  %15 = icmp eq i8* %12, %14, !dbg !409
  br i1 %15, label %26, label %16, !dbg !410

; <label>:16:                                     ; preds = %2
  %17 = call i32* @__errno_location() #1, !dbg !411
  %18 = load i32, i32* %17, align 4, !dbg !413
  %19 = icmp eq i32 %18, 34, !dbg !414
  br i1 %19, label %26, label %20, !dbg !415

; <label>:20:                                     ; preds = %16
  %21 = load i64, i64* %6, align 8, !dbg !416
  %22 = load i64, i64* %6, align 8, !dbg !418
  %23 = trunc i64 %22 to i32, !dbg !419
  %24 = zext i32 %23 to i64, !dbg !419
  %25 = icmp ne i64 %21, %24, !dbg !420
  br i1 %25, label %26, label %27, !dbg !421

; <label>:26:                                     ; preds = %20, %16, %2
  store i8 0, i8* %3, align 1, !dbg !422
  br label %33, !dbg !422

; <label>:27:                                     ; preds = %20
  %28 = load i8*, i8** %7, align 8, !dbg !424
  %29 = load i8**, i8*** %5, align 8, !dbg !425
  store i8* %28, i8** %29, align 8, !dbg !426
  %30 = load i64, i64* %6, align 8, !dbg !427
  %31 = trunc i64 %30 to i32, !dbg !428
  %32 = load i32*, i32** %4, align 8, !dbg !429
  store i32 %31, i32* %32, align 4, !dbg !430
  store i8 1, i8* %3, align 1, !dbg !431
  br label %33, !dbg !431

; <label>:33:                                     ; preds = %27, %26
  %34 = load i8, i8* %3, align 1, !dbg !432
  ret i8 %34, !dbg !432
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

; Function Attrs: nounwind
declare i64 @strtoul(i8*, i8**, i32) #5

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #5

; Function Attrs: nounwind
declare i64 @strtoll(i8*, i8**, i32) #5

; Function Attrs: nounwind uwtable
define signext i8 @StrUtil_StrToUint64(i64*, i8*) #0 !dbg !433 {
  %3 = alloca i64*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i64* %0, i64** %3, align 8
  call void @llvm.dbg.declare(metadata i64** %3, metadata !437, metadata !55), !dbg !438
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !439, metadata !55), !dbg !440
  call void @llvm.dbg.declare(metadata i8** %5, metadata !441, metadata !55), !dbg !442
  %6 = call i32* @__errno_location() #1, !dbg !443
  store i32 0, i32* %6, align 4, !dbg !444
  %7 = load i8*, i8** %4, align 8, !dbg !445
  %8 = call i64 @strtoull(i8* %7, i8** %5, i32 0) #8, !dbg !446
  %9 = load i64*, i64** %3, align 8, !dbg !447
  store i64 %8, i64* %9, align 8, !dbg !448
  %10 = load i8*, i8** %5, align 8, !dbg !449
  %11 = load i8*, i8** %4, align 8, !dbg !450
  %12 = icmp ne i8* %10, %11, !dbg !451
  br i1 %12, label %13, label %27, !dbg !452

; <label>:13:                                     ; preds = %2
  %14 = load i8*, i8** %5, align 8, !dbg !453
  %15 = getelementptr inbounds i8, i8* %14, i64 0, !dbg !453
  %16 = load i8, i8* %15, align 1, !dbg !453
  %17 = sext i8 %16 to i32, !dbg !453
  %18 = icmp eq i32 %17, 0, !dbg !455
  br i1 %18, label %19, label %27, !dbg !456

; <label>:19:                                     ; preds = %13
  %20 = call i32* @__errno_location() #1, !dbg !457
  %21 = load i32, i32* %20, align 4, !dbg !459
  %22 = icmp ne i32 %21, 34, !dbg !460
  br i1 %22, label %23, label %27, !dbg !461

; <label>:23:                                     ; preds = %19
  %24 = call i32* @__errno_location() #1, !dbg !462
  %25 = load i32, i32* %24, align 4, !dbg !464
  %26 = icmp ne i32 %25, 22, !dbg !465
  br label %27

; <label>:27:                                     ; preds = %23, %19, %13, %2
  %28 = phi i1 [ false, %19 ], [ false, %13 ], [ false, %2 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32, !dbg !466
  %30 = trunc i32 %29 to i8, !dbg !468
  ret i8 %30, !dbg !469
}

; Function Attrs: nounwind
declare i64 @strtoull(i8*, i8**, i32) #5

; Function Attrs: nounwind uwtable
define signext i8 @StrUtil_StrToSizet(i64*, i8*) #0 !dbg !470 {
  %3 = alloca i64*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i64* %0, i64** %3, align 8
  call void @llvm.dbg.declare(metadata i64** %3, metadata !476, metadata !55), !dbg !477
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !478, metadata !55), !dbg !479
  call void @llvm.dbg.declare(metadata i8** %5, metadata !480, metadata !55), !dbg !481
  %6 = call i32* @__errno_location() #1, !dbg !482
  store i32 0, i32* %6, align 4, !dbg !483
  br label %7, !dbg !484, !llvm.loop !485

; <label>:7:                                      ; preds = %2
  br label %8, !dbg !486

; <label>:8:                                      ; preds = %7
  %9 = load i8*, i8** %4, align 8, !dbg !489
  %10 = call i64 @strtoull(i8* %9, i8** %5, i32 0) #8, !dbg !490
  %11 = load i64*, i64** %3, align 8, !dbg !491
  store i64 %10, i64* %11, align 8, !dbg !492
  %12 = load i8*, i8** %5, align 8, !dbg !493
  %13 = load i8*, i8** %4, align 8, !dbg !494
  %14 = icmp ne i8* %12, %13, !dbg !495
  br i1 %14, label %15, label %24, !dbg !496

; <label>:15:                                     ; preds = %8
  %16 = load i8*, i8** %5, align 8, !dbg !497
  %17 = load i8, i8* %16, align 1, !dbg !499
  %18 = sext i8 %17 to i32, !dbg !499
  %19 = icmp eq i32 %18, 0, !dbg !500
  br i1 %19, label %20, label %24, !dbg !501

; <label>:20:                                     ; preds = %15
  %21 = call i32* @__errno_location() #1, !dbg !502
  %22 = load i32, i32* %21, align 4, !dbg !504
  %23 = icmp ne i32 %22, 34, !dbg !505
  br label %24

; <label>:24:                                     ; preds = %20, %15, %8
  %25 = phi i1 [ false, %15 ], [ false, %8 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32, !dbg !506
  %27 = trunc i32 %26 to i8, !dbg !508
  ret i8 %27, !dbg !509
}

; Function Attrs: nounwind uwtable
define signext i8 @StrUtil_StrToDouble(double*, i8*) #0 !dbg !510 {
  %3 = alloca double*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store double* %0, double** %3, align 8
  call void @llvm.dbg.declare(metadata double** %3, metadata !514, metadata !55), !dbg !515
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !516, metadata !55), !dbg !517
  call void @llvm.dbg.declare(metadata i8** %5, metadata !518, metadata !55), !dbg !519
  store i8* null, i8** %5, align 8, !dbg !519
  %6 = call i32* @__errno_location() #1, !dbg !520
  store i32 0, i32* %6, align 4, !dbg !521
  %7 = load i8*, i8** %4, align 8, !dbg !522
  %8 = call double @strtod(i8* %7, i8** %5) #8, !dbg !523
  %9 = load double*, double** %3, align 8, !dbg !524
  store double %8, double* %9, align 8, !dbg !525
  %10 = load i8*, i8** %5, align 8, !dbg !526
  %11 = load i8*, i8** %4, align 8, !dbg !527
  %12 = icmp ne i8* %10, %11, !dbg !528
  br i1 %12, label %13, label %22, !dbg !529

; <label>:13:                                     ; preds = %2
  %14 = load i8*, i8** %5, align 8, !dbg !530
  %15 = load i8, i8* %14, align 1, !dbg !532
  %16 = sext i8 %15 to i32, !dbg !532
  %17 = icmp eq i32 %16, 0, !dbg !533
  br i1 %17, label %18, label %22, !dbg !534

; <label>:18:                                     ; preds = %13
  %19 = call i32* @__errno_location() #1, !dbg !535
  %20 = load i32, i32* %19, align 4, !dbg !537
  %21 = icmp ne i32 %20, 34, !dbg !538
  br label %22

; <label>:22:                                     ; preds = %18, %13, %2
  %23 = phi i1 [ false, %13 ], [ false, %2 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32, !dbg !539
  %25 = trunc i32 %24 to i8, !dbg !541
  ret i8 %25, !dbg !542
}

; Function Attrs: nounwind
declare double @strtod(i8*, i8**) #5

; Function Attrs: nounwind uwtable
define signext i8 @StrUtil_CapacityToBytes(i64*, i8*, i32) #0 !dbg !543 {
  %4 = alloca i8, align 1
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  store i64* %0, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !546, metadata !55), !dbg !547
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !548, metadata !55), !dbg !549
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !550, metadata !55), !dbg !551
  call void @llvm.dbg.declare(metadata double* %8, metadata !552, metadata !55), !dbg !553
  call void @llvm.dbg.declare(metadata i8** %9, metadata !554, metadata !55), !dbg !555
  %12 = call i32* @__errno_location() #1, !dbg !556
  store i32 0, i32* %12, align 4, !dbg !557
  %13 = load i8*, i8** %6, align 8, !dbg !558
  %14 = call double @strtod(i8* %13, i8** %9) #8, !dbg !559
  store double %14, double* %8, align 8, !dbg !560
  %15 = call i32* @__errno_location() #1, !dbg !561
  %16 = load i32, i32* %15, align 4, !dbg !563
  %17 = icmp eq i32 %16, 34, !dbg !564
  br i1 %17, label %18, label %19, !dbg !565

; <label>:18:                                     ; preds = %3
  store i8 0, i8* %4, align 1, !dbg !566
  br label %84, !dbg !566

; <label>:19:                                     ; preds = %3
  br label %20, !dbg !568

; <label>:20:                                     ; preds = %32, %19
  %21 = load i8*, i8** %9, align 8, !dbg !569
  %22 = load i8, i8* %21, align 1, !dbg !571
  %23 = sext i8 %22 to i32, !dbg !571
  %24 = icmp eq i32 %23, 32, !dbg !572
  br i1 %24, label %30, label %25, !dbg !573

; <label>:25:                                     ; preds = %20
  %26 = load i8*, i8** %9, align 8, !dbg !574
  %27 = load i8, i8* %26, align 1, !dbg !576
  %28 = sext i8 %27 to i32, !dbg !576
  %29 = icmp eq i32 %28, 9, !dbg !577
  br label %30, !dbg !578

; <label>:30:                                     ; preds = %25, %20
  %31 = phi i1 [ true, %20 ], [ %29, %25 ]
  br i1 %31, label %32, label %35, !dbg !579

; <label>:32:                                     ; preds = %30
  %33 = load i8*, i8** %9, align 8, !dbg !581
  %34 = getelementptr inbounds i8, i8* %33, i32 1, !dbg !581
  store i8* %34, i8** %9, align 8, !dbg !581
  br label %20, !dbg !583, !llvm.loop !585

; <label>:35:                                     ; preds = %30
  %36 = load i8*, i8** %9, align 8, !dbg !586
  %37 = load i8, i8* %36, align 1, !dbg !588
  %38 = sext i8 %37 to i32, !dbg !588
  %39 = icmp ne i32 %38, 0, !dbg !589
  br i1 %39, label %40, label %75, !dbg !590

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.declare(metadata i64* %10, metadata !591, metadata !55), !dbg !593
  call void @llvm.dbg.declare(metadata i8* %11, metadata !594, metadata !55), !dbg !595
  store i8 1, i8* %11, align 1, !dbg !595
  %41 = load i8*, i8** %9, align 8, !dbg !596
  %42 = load i8, i8* %41, align 1, !dbg !597
  %43 = sext i8 %42 to i32, !dbg !597
  switch i32 %43, label %50 [
    i32 98, label %44
    i32 66, label %44
    i32 115, label %45
    i32 83, label %45
    i32 107, label %46
    i32 75, label %46
    i32 109, label %47
    i32 77, label %47
    i32 103, label %48
    i32 71, label %48
    i32 116, label %49
    i32 84, label %49
  ], !dbg !598

; <label>:44:                                     ; preds = %40, %40
  store i64 0, i64* %10, align 8, !dbg !599
  store i8 0, i8* %11, align 1, !dbg !601
  br label %51, !dbg !602

; <label>:45:                                     ; preds = %40, %40
  store i64 9, i64* %10, align 8, !dbg !603
  store i8 0, i8* %11, align 1, !dbg !604
  br label %51, !dbg !605

; <label>:46:                                     ; preds = %40, %40
  store i64 10, i64* %10, align 8, !dbg !606
  br label %51, !dbg !607

; <label>:47:                                     ; preds = %40, %40
  store i64 20, i64* %10, align 8, !dbg !608
  br label %51, !dbg !609

; <label>:48:                                     ; preds = %40, %40
  store i64 30, i64* %10, align 8, !dbg !610
  br label %51, !dbg !611

; <label>:49:                                     ; preds = %40, %40
  store i64 40, i64* %10, align 8, !dbg !612
  br label %51, !dbg !613

; <label>:50:                                     ; preds = %40
  store i8 0, i8* %4, align 1, !dbg !614
  br label %84, !dbg !614

; <label>:51:                                     ; preds = %49, %48, %47, %46, %45, %44
  %52 = load i8*, i8** %9, align 8, !dbg !615
  %53 = getelementptr inbounds i8, i8* %52, i32 1, !dbg !615
  store i8* %53, i8** %9, align 8, !dbg !615
  %54 = load i8, i8* %53, align 1, !dbg !616
  %55 = sext i8 %54 to i32, !dbg !616
  switch i32 %55, label %68 [
    i32 0, label %56
    i32 98, label %57
    i32 66, label %57
  ], !dbg !617

; <label>:56:                                     ; preds = %51
  br label %69, !dbg !618

; <label>:57:                                     ; preds = %51, %51
  %58 = load i8, i8* %11, align 1, !dbg !620
  %59 = sext i8 %58 to i32, !dbg !620
  %60 = icmp ne i32 %59, 0, !dbg !620
  br i1 %60, label %61, label %67, !dbg !622

; <label>:61:                                     ; preds = %57
  %62 = load i8*, i8** %9, align 8, !dbg !623
  %63 = getelementptr inbounds i8, i8* %62, i32 1, !dbg !623
  store i8* %63, i8** %9, align 8, !dbg !623
  %64 = load i8, i8* %63, align 1, !dbg !625
  %65 = icmp ne i8 %64, 0, !dbg !625
  br i1 %65, label %67, label %66, !dbg !626

; <label>:66:                                     ; preds = %61
  br label %69, !dbg !627

; <label>:67:                                     ; preds = %61, %57
  br label %68, !dbg !629

; <label>:68:                                     ; preds = %51, %67
  store i8 0, i8* %4, align 1, !dbg !631
  br label %84, !dbg !631

; <label>:69:                                     ; preds = %66, %56
  %70 = load i64, i64* %10, align 8, !dbg !632
  %71 = shl i64 1, %70, !dbg !633
  %72 = uitofp i64 %71 to double, !dbg !634
  %73 = load double, double* %8, align 8, !dbg !635
  %74 = fmul double %73, %72, !dbg !635
  store double %74, double* %8, align 8, !dbg !635
  br label %80, !dbg !636

; <label>:75:                                     ; preds = %35
  %76 = load i32, i32* %7, align 4, !dbg !637
  %77 = uitofp i32 %76 to double, !dbg !637
  %78 = load double, double* %8, align 8, !dbg !639
  %79 = fmul double %78, %77, !dbg !639
  store double %79, double* %8, align 8, !dbg !639
  br label %80

; <label>:80:                                     ; preds = %75, %69
  %81 = load double, double* %8, align 8, !dbg !640
  %82 = fptoui double %81 to i64, !dbg !640
  %83 = load i64*, i64** %5, align 8, !dbg !641
  store i64 %82, i64* %83, align 8, !dbg !642
  store i8 1, i8* %4, align 1, !dbg !643
  br label %84, !dbg !643

; <label>:84:                                     ; preds = %80, %68, %50, %18
  %85 = load i8, i8* %4, align 1, !dbg !644
  ret i8 %85, !dbg !644
}

; Function Attrs: nounwind uwtable
define signext i8 @StrUtil_CapacityToSectorType(i64*, i8*, i32) #0 !dbg !645 {
  %4 = alloca i8, align 1
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !649, metadata !55), !dbg !650
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !651, metadata !55), !dbg !652
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !653, metadata !55), !dbg !654
  call void @llvm.dbg.declare(metadata i64* %8, metadata !655, metadata !55), !dbg !656
  %9 = load i8*, i8** %6, align 8, !dbg !657
  %10 = load i32, i32* %7, align 4, !dbg !659
  %11 = call signext i8 @StrUtil_CapacityToBytes(i64* %8, i8* %9, i32 %10), !dbg !660
  %12 = sext i8 %11 to i32, !dbg !660
  %13 = icmp eq i32 %12, 0, !dbg !661
  br i1 %13, label %14, label %15, !dbg !662

; <label>:14:                                     ; preds = %3
  store i8 0, i8* %4, align 1, !dbg !663
  br label %20, !dbg !663

; <label>:15:                                     ; preds = %3
  %16 = load i64, i64* %8, align 8, !dbg !665
  %17 = add i64 %16, 256, !dbg !666
  %18 = udiv i64 %17, 512, !dbg !667
  %19 = load i64*, i64** %5, align 8, !dbg !668
  store i64 %18, i64* %19, align 8, !dbg !669
  store i8 1, i8* %4, align 1, !dbg !670
  br label %20, !dbg !670

; <label>:20:                                     ; preds = %15, %14
  %21 = load i8, i8* %4, align 1, !dbg !671
  ret i8 %21, !dbg !671
}

; Function Attrs: nounwind uwtable
define i8* @StrUtil_FormatSizeInBytesUnlocalized(i64) #0 !dbg !39 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca double, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !672, metadata !55), !dbg !673
  call void @llvm.dbg.declare(metadata i8** %3, metadata !674, metadata !55), !dbg !675
  call void @llvm.dbg.declare(metadata double* %4, metadata !676, metadata !55), !dbg !677
  call void @llvm.dbg.declare(metadata i32* %5, metadata !678, metadata !55), !dbg !679
  call void @llvm.dbg.declare(metadata i8** %6, metadata !680, metadata !55), !dbg !681
  call void @llvm.dbg.declare(metadata i8** %7, metadata !682, metadata !55), !dbg !683
  call void @llvm.dbg.declare(metadata i8** %8, metadata !684, metadata !55), !dbg !685
  call void @llvm.dbg.declare(metadata double* %9, metadata !686, metadata !55), !dbg !687
  %10 = load i64, i64* %2, align 8, !dbg !688
  %11 = icmp uge i64 %10, 1099511627776, !dbg !690
  br i1 %11, label %12, label %16, !dbg !691

; <label>:12:                                     ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8** %3, align 8, !dbg !692
  %13 = load i64, i64* %2, align 8, !dbg !694
  %14 = uitofp i64 %13 to double, !dbg !695
  %15 = fdiv double %14, 0x4270000000000000, !dbg !696
  store double %15, double* %4, align 8, !dbg !697
  store i32 1, i32* %5, align 4, !dbg !698
  br label %57, !dbg !699

; <label>:16:                                     ; preds = %1
  %17 = load i64, i64* %2, align 8, !dbg !700
  %18 = icmp uge i64 %17, 1073741824, !dbg !703
  br i1 %18, label %19, label %23, !dbg !700

; <label>:19:                                     ; preds = %16
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8** %3, align 8, !dbg !704
  %20 = load i64, i64* %2, align 8, !dbg !706
  %21 = uitofp i64 %20 to double, !dbg !707
  %22 = fdiv double %21, 0x41D0000000000000, !dbg !708
  store double %22, double* %4, align 8, !dbg !709
  store i32 1, i32* %5, align 4, !dbg !710
  br label %56, !dbg !711

; <label>:23:                                     ; preds = %16
  %24 = load i64, i64* %2, align 8, !dbg !712
  %25 = icmp uge i64 %24, 1048576, !dbg !715
  br i1 %25, label %26, label %30, !dbg !712

; <label>:26:                                     ; preds = %23
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8** %3, align 8, !dbg !716
  %27 = load i64, i64* %2, align 8, !dbg !718
  %28 = uitofp i64 %27 to double, !dbg !719
  %29 = fdiv double %28, 1.048576e+06, !dbg !720
  store double %29, double* %4, align 8, !dbg !721
  store i32 1, i32* %5, align 4, !dbg !722
  br label %55, !dbg !723

; <label>:30:                                     ; preds = %23
  %31 = load i64, i64* %2, align 8, !dbg !724
  %32 = icmp uge i64 %31, 1024, !dbg !727
  br i1 %32, label %33, label %37, !dbg !724

; <label>:33:                                     ; preds = %30
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8** %3, align 8, !dbg !728
  %34 = load i64, i64* %2, align 8, !dbg !730
  %35 = uitofp i64 %34 to double, !dbg !731
  %36 = fdiv double %35, 1.024000e+03, !dbg !732
  store double %36, double* %4, align 8, !dbg !733
  store i32 1, i32* %5, align 4, !dbg !734
  br label %54, !dbg !735

; <label>:37:                                     ; preds = %30
  %38 = load i64, i64* %2, align 8, !dbg !736
  %39 = icmp uge i64 %38, 2, !dbg !739
  br i1 %39, label %40, label %43, !dbg !736

; <label>:40:                                     ; preds = %37
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8** %3, align 8, !dbg !740
  %41 = load i64, i64* %2, align 8, !dbg !742
  %42 = uitofp i64 %41 to double, !dbg !743
  store double %42, double* %4, align 8, !dbg !744
  store i32 0, i32* %5, align 4, !dbg !745
  br label %53, !dbg !746

; <label>:43:                                     ; preds = %37
  %44 = load i64, i64* %2, align 8, !dbg !747
  %45 = icmp uge i64 %44, 1, !dbg !750
  br i1 %45, label %46, label %49, !dbg !747

; <label>:46:                                     ; preds = %43
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8** %3, align 8, !dbg !751
  %47 = load i64, i64* %2, align 8, !dbg !753
  %48 = uitofp i64 %47 to double, !dbg !754
  store double %48, double* %4, align 8, !dbg !755
  store i32 0, i32* %5, align 4, !dbg !756
  br label %52, !dbg !757

; <label>:49:                                     ; preds = %43
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8** %3, align 8, !dbg !758
  %50 = load i64, i64* %2, align 8, !dbg !760
  %51 = uitofp i64 %50 to double, !dbg !761
  store double %51, double* %4, align 8, !dbg !762
  store i32 0, i32* %5, align 4, !dbg !763
  br label %52

; <label>:52:                                     ; preds = %49, %46
  br label %53

; <label>:53:                                     ; preds = %52, %40
  br label %54

; <label>:54:                                     ; preds = %53, %33
  br label %55

; <label>:55:                                     ; preds = %54, %26
  br label %56

; <label>:56:                                     ; preds = %55, %19
  br label %57

; <label>:57:                                     ; preds = %56, %12
  %58 = load double, double* %4, align 8, !dbg !764
  %59 = fadd double %58, 5.000000e-01, !dbg !765
  %60 = fptoui double %59 to i32, !dbg !766
  %61 = uitofp i32 %60 to double, !dbg !766
  %62 = load double, double* %4, align 8, !dbg !767
  %63 = fsub double %61, %62, !dbg !768
  store double %63, double* %9, align 8, !dbg !769
  %64 = load double, double* %9, align 8, !dbg !770
  %65 = fcmp olt double %64, 0.000000e+00, !dbg !772
  br i1 %65, label %66, label %69, !dbg !773

; <label>:66:                                     ; preds = %57
  %67 = load double, double* %9, align 8, !dbg !774
  %68 = fsub double -0.000000e+00, %67, !dbg !776
  store double %68, double* %9, align 8, !dbg !777
  br label %69, !dbg !778

; <label>:69:                                     ; preds = %66, %57
  %70 = load double, double* %9, align 8, !dbg !779
  %71 = fcmp ole double %70, 1.000000e-02, !dbg !781
  br i1 %71, label %72, label %77, !dbg !782

; <label>:72:                                     ; preds = %69
  store i32 0, i32* %5, align 4, !dbg !783
  %73 = load double, double* %4, align 8, !dbg !785
  %74 = fadd double %73, 5.000000e-01, !dbg !786
  %75 = fptoui double %74 to i32, !dbg !787
  %76 = uitofp i32 %75 to double, !dbg !788
  store double %76, double* %4, align 8, !dbg !789
  br label %77, !dbg !790

; <label>:77:                                     ; preds = %72, %69
  %78 = load i32, i32* %5, align 4, !dbg !791
  %79 = call i8* (i64*, i8*, ...) @Str_Asprintf(i64* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 %78), !dbg !792
  store i8* %79, i8** %6, align 8, !dbg !793
  %80 = load i8*, i8** %6, align 8, !dbg !794
  %81 = load double, double* %4, align 8, !dbg !795
  %82 = call i8* (i64*, i8*, ...) @Str_Asprintf(i64* null, i8* %80, double %81), !dbg !796
  store i8* %82, i8** %7, align 8, !dbg !797
  %83 = load i8*, i8** %3, align 8, !dbg !798
  %84 = load i8*, i8** %7, align 8, !dbg !799
  %85 = call i8* (i64*, i8*, ...) @Str_Asprintf(i64* null, i8* %83, i8* %84), !dbg !800
  store i8* %85, i8** %8, align 8, !dbg !801
  %86 = load i8*, i8** %6, align 8, !dbg !802
  call void @free(i8* %86) #8, !dbg !803
  %87 = load i8*, i8** %7, align 8, !dbg !804
  call void @free(i8* %87) #8, !dbg !805
  %88 = load i8*, i8** %8, align 8, !dbg !806
  ret i8* %88, !dbg !807
}

declare i8* @Str_Asprintf(i64*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define i64 @StrUtil_GetLongestLineLength(i8*, i64) #0 !dbg !808 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !811, metadata !55), !dbg !812
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !813, metadata !55), !dbg !814
  call void @llvm.dbg.declare(metadata i64* %5, metadata !815, metadata !55), !dbg !816
  store i64 0, i64* %5, align 8, !dbg !816
  br label %8, !dbg !817

; <label>:8:                                      ; preds = %33, %2
  %9 = load i64, i64* %4, align 8, !dbg !818
  %10 = icmp ne i64 %9, 0, !dbg !820
  br i1 %10, label %11, label %38, !dbg !820

; <label>:11:                                     ; preds = %8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !821, metadata !55), !dbg !823
  call void @llvm.dbg.declare(metadata i64* %7, metadata !824, metadata !55), !dbg !825
  %12 = load i8*, i8** %3, align 8, !dbg !826
  %13 = load i64, i64* %4, align 8, !dbg !827
  %14 = call i8* @memchr(i8* %12, i32 10, i64 %13) #10, !dbg !828
  store i8* %14, i8** %6, align 8, !dbg !829
  %15 = load i8*, i8** %6, align 8, !dbg !830
  %16 = icmp ne i8* %15, null, !dbg !830
  br i1 %16, label %17, label %25, !dbg !832

; <label>:17:                                     ; preds = %11
  %18 = load i8*, i8** %6, align 8, !dbg !833
  %19 = getelementptr inbounds i8, i8* %18, i32 1, !dbg !833
  store i8* %19, i8** %6, align 8, !dbg !833
  %20 = load i8*, i8** %6, align 8, !dbg !835
  %21 = load i8*, i8** %3, align 8, !dbg !836
  %22 = ptrtoint i8* %20 to i64, !dbg !837
  %23 = ptrtoint i8* %21 to i64, !dbg !837
  %24 = sub i64 %22, %23, !dbg !837
  store i64 %24, i64* %7, align 8, !dbg !838
  br label %27, !dbg !839

; <label>:25:                                     ; preds = %11
  %26 = load i64, i64* %4, align 8, !dbg !840
  store i64 %26, i64* %7, align 8, !dbg !842
  br label %27

; <label>:27:                                     ; preds = %25, %17
  %28 = load i64, i64* %7, align 8, !dbg !843
  %29 = load i64, i64* %5, align 8, !dbg !845
  %30 = icmp ugt i64 %28, %29, !dbg !846
  br i1 %30, label %31, label %33, !dbg !847

; <label>:31:                                     ; preds = %27
  %32 = load i64, i64* %7, align 8, !dbg !848
  store i64 %32, i64* %5, align 8, !dbg !850
  br label %33, !dbg !851

; <label>:33:                                     ; preds = %31, %27
  %34 = load i64, i64* %7, align 8, !dbg !852
  %35 = load i64, i64* %4, align 8, !dbg !853
  %36 = sub i64 %35, %34, !dbg !853
  store i64 %36, i64* %4, align 8, !dbg !853
  %37 = load i8*, i8** %6, align 8, !dbg !854
  store i8* %37, i8** %3, align 8, !dbg !855
  br label %8, !dbg !856, !llvm.loop !858

; <label>:38:                                     ; preds = %8
  %39 = load i64, i64* %5, align 8, !dbg !859
  ret i64 %39, !dbg !860
}

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #2

; Function Attrs: nounwind uwtable
define signext i8 @StrUtil_StartsWith(i8*, i8*) #0 !dbg !861 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !864, metadata !55), !dbg !865
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !866, metadata !55), !dbg !867
  br label %5, !dbg !868

; <label>:5:                                      ; preds = %20, %2
  %6 = load i8*, i8** %4, align 8, !dbg !869
  %7 = load i8, i8* %6, align 1, !dbg !871
  %8 = sext i8 %7 to i32, !dbg !871
  %9 = icmp ne i32 %8, 0, !dbg !871
  br i1 %9, label %10, label %18, !dbg !872

; <label>:10:                                     ; preds = %5
  %11 = load i8*, i8** %4, align 8, !dbg !873
  %12 = load i8, i8* %11, align 1, !dbg !875
  %13 = sext i8 %12 to i32, !dbg !875
  %14 = load i8*, i8** %3, align 8, !dbg !876
  %15 = load i8, i8* %14, align 1, !dbg !877
  %16 = sext i8 %15 to i32, !dbg !877
  %17 = icmp eq i32 %13, %16, !dbg !878
  br label %18

; <label>:18:                                     ; preds = %10, %5
  %19 = phi i1 [ false, %5 ], [ %17, %10 ]
  br i1 %19, label %20, label %25, !dbg !879

; <label>:20:                                     ; preds = %18
  %21 = load i8*, i8** %4, align 8, !dbg !881
  %22 = getelementptr inbounds i8, i8* %21, i32 1, !dbg !881
  store i8* %22, i8** %4, align 8, !dbg !881
  %23 = load i8*, i8** %3, align 8, !dbg !883
  %24 = getelementptr inbounds i8, i8* %23, i32 1, !dbg !883
  store i8* %24, i8** %3, align 8, !dbg !883
  br label %5, !dbg !884, !llvm.loop !886

; <label>:25:                                     ; preds = %18
  %26 = load i8*, i8** %4, align 8, !dbg !887
  %27 = load i8, i8* %26, align 1, !dbg !888
  %28 = sext i8 %27 to i32, !dbg !888
  %29 = icmp eq i32 %28, 0, !dbg !889
  %30 = zext i1 %29 to i32, !dbg !889
  %31 = trunc i32 %30 to i8, !dbg !888
  ret i8 %31, !dbg !890
}

; Function Attrs: nounwind uwtable
define signext i8 @StrUtil_CaselessStartsWith(i8*, i8*) #0 !dbg !891 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !892, metadata !55), !dbg !893
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !894, metadata !55), !dbg !895
  %5 = load i8*, i8** %3, align 8, !dbg !896
  %6 = load i8*, i8** %4, align 8, !dbg !897
  %7 = load i8*, i8** %4, align 8, !dbg !898
  %8 = call i64 @strlen(i8* %7) #10, !dbg !899
  %9 = call i32 @strncasecmp(i8* %5, i8* %6, i64 %8) #10, !dbg !900
  %10 = icmp eq i32 %9, 0, !dbg !902
  %11 = zext i1 %10 to i32, !dbg !902
  %12 = trunc i32 %11 to i8, !dbg !903
  ret i8 %12, !dbg !904
}

; Function Attrs: nounwind readonly
declare i32 @strncasecmp(i8*, i8*, i64) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind uwtable
define signext i8 @StrUtil_EndsWith(i8*, i8*) #0 !dbg !905 {
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !906, metadata !55), !dbg !907
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !908, metadata !55), !dbg !909
  call void @llvm.dbg.declare(metadata i64* %6, metadata !910, metadata !55), !dbg !911
  call void @llvm.dbg.declare(metadata i64* %7, metadata !912, metadata !55), !dbg !913
  %8 = load i8*, i8** %4, align 8, !dbg !914
  %9 = call i64 @strlen(i8* %8) #10, !dbg !915
  store i64 %9, i64* %6, align 8, !dbg !916
  %10 = load i8*, i8** %5, align 8, !dbg !917
  %11 = call i64 @strlen(i8* %10) #10, !dbg !918
  store i64 %11, i64* %7, align 8, !dbg !919
  %12 = load i64, i64* %7, align 8, !dbg !920
  %13 = load i64, i64* %6, align 8, !dbg !922
  %14 = icmp ugt i64 %12, %13, !dbg !923
  br i1 %14, label %15, label %16, !dbg !924

; <label>:15:                                     ; preds = %2
  store i8 0, i8* %3, align 1, !dbg !925
  br label %28, !dbg !925

; <label>:16:                                     ; preds = %2
  %17 = load i8*, i8** %4, align 8, !dbg !927
  %18 = load i64, i64* %6, align 8, !dbg !928
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !929
  %20 = load i64, i64* %7, align 8, !dbg !930
  %21 = sub i64 0, %20, !dbg !931
  %22 = getelementptr inbounds i8, i8* %19, i64 %21, !dbg !931
  %23 = load i8*, i8** %5, align 8, !dbg !932
  %24 = call i32 @strcmp(i8* %22, i8* %23) #10, !dbg !933
  %25 = icmp eq i32 %24, 0, !dbg !934
  %26 = zext i1 %25 to i32, !dbg !934
  %27 = trunc i32 %26 to i8, !dbg !933
  store i8 %27, i8* %3, align 1, !dbg !935
  br label %28, !dbg !935

; <label>:28:                                     ; preds = %16, %15
  %29 = load i8, i8* %3, align 1, !dbg !936
  ret i8 %29, !dbg !936
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define signext i8 @StrUtil_CaselessEndsWith(i8*, i8*) #0 !dbg !937 {
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !938, metadata !55), !dbg !939
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !940, metadata !55), !dbg !941
  call void @llvm.dbg.declare(metadata i64* %6, metadata !942, metadata !55), !dbg !943
  call void @llvm.dbg.declare(metadata i64* %7, metadata !944, metadata !55), !dbg !945
  %8 = load i8*, i8** %4, align 8, !dbg !946
  %9 = call i64 @strlen(i8* %8) #10, !dbg !947
  store i64 %9, i64* %6, align 8, !dbg !948
  %10 = load i8*, i8** %5, align 8, !dbg !949
  %11 = call i64 @strlen(i8* %10) #10, !dbg !950
  store i64 %11, i64* %7, align 8, !dbg !951
  %12 = load i64, i64* %7, align 8, !dbg !952
  %13 = load i64, i64* %6, align 8, !dbg !954
  %14 = icmp ugt i64 %12, %13, !dbg !955
  br i1 %14, label %15, label %16, !dbg !956

; <label>:15:                                     ; preds = %2
  store i8 0, i8* %3, align 1, !dbg !957
  br label %27, !dbg !957

; <label>:16:                                     ; preds = %2
  %17 = load i8*, i8** %4, align 8, !dbg !959
  %18 = load i64, i64* %6, align 8, !dbg !960
  %19 = load i64, i64* %7, align 8, !dbg !961
  %20 = sub i64 %18, %19, !dbg !962
  %21 = getelementptr inbounds i8, i8* %17, i64 %20, !dbg !963
  %22 = load i8*, i8** %5, align 8, !dbg !964
  %23 = call i32 @strcasecmp(i8* %21, i8* %22) #10, !dbg !965
  %24 = icmp eq i32 %23, 0, !dbg !966
  %25 = zext i1 %24 to i32, !dbg !966
  %26 = trunc i32 %25 to i8, !dbg !965
  store i8 %26, i8* %3, align 1, !dbg !967
  br label %27, !dbg !967

; <label>:27:                                     ; preds = %16, %15
  %28 = load i8, i8* %3, align 1, !dbg !968
  ret i8 %28, !dbg !968
}

; Function Attrs: nounwind readonly
declare i32 @strcasecmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define signext i8 @StrUtil_IsASCII(i8*) #0 !dbg !969 {
  %2 = alloca i8, align 1
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !972, metadata !55), !dbg !973
  br label %4, !dbg !974

; <label>:4:                                      ; preds = %16, %1
  %5 = load i8*, i8** %3, align 8, !dbg !975
  %6 = load i8, i8* %5, align 1, !dbg !977
  %7 = sext i8 %6 to i32, !dbg !977
  %8 = icmp ne i32 %7, 0, !dbg !978
  br i1 %8, label %9, label %19, !dbg !979

; <label>:9:                                      ; preds = %4
  %10 = load i8*, i8** %3, align 8, !dbg !980
  %11 = load i8, i8* %10, align 1, !dbg !983
  %12 = sext i8 %11 to i32, !dbg !980
  %13 = and i32 %12, -128, !dbg !980
  %14 = icmp eq i32 %13, 0, !dbg !984
  br i1 %14, label %16, label %15, !dbg !985

; <label>:15:                                     ; preds = %9
  store i8 0, i8* %2, align 1, !dbg !986
  br label %20, !dbg !986

; <label>:16:                                     ; preds = %9
  %17 = load i8*, i8** %3, align 8, !dbg !988
  %18 = getelementptr inbounds i8, i8* %17, i32 1, !dbg !988
  store i8* %18, i8** %3, align 8, !dbg !988
  br label %4, !dbg !989, !llvm.loop !991

; <label>:19:                                     ; preds = %4
  store i8 1, i8* %2, align 1, !dbg !992
  br label %20, !dbg !992

; <label>:20:                                     ; preds = %19, %15
  %21 = load i8, i8* %2, align 1, !dbg !993
  ret i8 %21, !dbg !993
}

; Function Attrs: nounwind uwtable
define signext i8 @StrUtil_VDynBufPrintf(%struct.DynBuf*, i8*, %struct.__va_list_tag*) #0 !dbg !994 {
  %4 = alloca i8, align 1
  %5 = alloca %struct.DynBuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.__va_list_tag*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  %13 = alloca [1 x %struct.__va_list_tag], align 16
  %14 = alloca i8, align 1
  store %struct.DynBuf* %0, %struct.DynBuf** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %5, metadata !1012, metadata !55), !dbg !1013
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1014, metadata !55), !dbg !1015
  store %struct.__va_list_tag* %2, %struct.__va_list_tag** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %7, metadata !1016, metadata !55), !dbg !1017
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1018, metadata !55), !dbg !1020
  store i64 128, i64* %8, align 8, !dbg !1020
  br label %15, !dbg !1021

; <label>:15:                                     ; preds = %3, %28, %70
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1022, metadata !55), !dbg !1024
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1025, metadata !55), !dbg !1026
  %16 = load %struct.DynBuf*, %struct.DynBuf** %5, align 8, !dbg !1027
  %17 = call i64 @DynBuf_GetSize(%struct.DynBuf* %16), !dbg !1028
  store i64 %17, i64* %10, align 8, !dbg !1026
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1029, metadata !55), !dbg !1030
  %18 = load %struct.DynBuf*, %struct.DynBuf** %5, align 8, !dbg !1031
  %19 = call i64 @DynBuf_GetAllocatedSize(%struct.DynBuf* %18), !dbg !1032
  store i64 %19, i64* %11, align 8, !dbg !1030
  %20 = load i64, i64* %11, align 8, !dbg !1033
  %21 = icmp ult i64 %20, 128, !dbg !1035
  br i1 %21, label %22, label %29, !dbg !1036

; <label>:22:                                     ; preds = %15
  call void @llvm.dbg.declare(metadata i8* %12, metadata !1037, metadata !55), !dbg !1039
  %23 = load %struct.DynBuf*, %struct.DynBuf** %5, align 8, !dbg !1040
  %24 = call signext i8 @DynBuf_Enlarge(%struct.DynBuf* %23, i64 128), !dbg !1041
  store i8 %24, i8* %12, align 1, !dbg !1039
  %25 = load i8, i8* %12, align 1, !dbg !1042
  %26 = icmp ne i8 %25, 0, !dbg !1042
  br i1 %26, label %28, label %27, !dbg !1044

; <label>:27:                                     ; preds = %22
  store i8 0, i8* %4, align 1, !dbg !1045
  br label %72, !dbg !1045

; <label>:28:                                     ; preds = %22
  br label %15, !dbg !1047, !llvm.loop !1048

; <label>:29:                                     ; preds = %15
  %30 = load i64, i64* %11, align 8, !dbg !1049
  %31 = load i64, i64* %10, align 8, !dbg !1051
  %32 = sub i64 %30, %31, !dbg !1052
  %33 = icmp ugt i64 %32, 0, !dbg !1053
  br i1 %33, label %34, label %51, !dbg !1054

; <label>:34:                                     ; preds = %29
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %13, metadata !1055, metadata !55), !dbg !1065
  %35 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %13, i32 0, i32 0, !dbg !1066
  %36 = load %struct.__va_list_tag*, %struct.__va_list_tag** %7, align 8, !dbg !1066
  %37 = bitcast %struct.__va_list_tag* %35 to i8*, !dbg !1066
  %38 = bitcast %struct.__va_list_tag* %36 to i8*, !dbg !1066
  call void @llvm.va_copy(i8* %37, i8* %38), !dbg !1066
  %39 = load %struct.DynBuf*, %struct.DynBuf** %5, align 8, !dbg !1067
  %40 = call i8* @DynBuf_Get(%struct.DynBuf* %39), !dbg !1068
  %41 = load i64, i64* %10, align 8, !dbg !1069
  %42 = getelementptr inbounds i8, i8* %40, i64 %41, !dbg !1070
  %43 = load i64, i64* %11, align 8, !dbg !1071
  %44 = load i64, i64* %10, align 8, !dbg !1072
  %45 = sub i64 %43, %44, !dbg !1073
  %46 = load i8*, i8** %6, align 8, !dbg !1074
  %47 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %13, i32 0, i32 0, !dbg !1075
  %48 = call i32 @Str_Vsnprintf(i8* %42, i64 %45, i8* %46, %struct.__va_list_tag* %47), !dbg !1076
  store i32 %48, i32* %9, align 4, !dbg !1078
  %49 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %13, i32 0, i32 0, !dbg !1079
  %50 = bitcast %struct.__va_list_tag* %49 to i8*, !dbg !1079
  call void @llvm.va_end(i8* %50), !dbg !1079
  br label %52, !dbg !1080

; <label>:51:                                     ; preds = %29
  store i32 -1, i32* %9, align 4, !dbg !1081
  br label %52

; <label>:52:                                     ; preds = %51, %34
  %53 = load i32, i32* %9, align 4, !dbg !1083
  %54 = icmp sge i32 %53, 0, !dbg !1085
  br i1 %54, label %55, label %61, !dbg !1086

; <label>:55:                                     ; preds = %52
  %56 = load %struct.DynBuf*, %struct.DynBuf** %5, align 8, !dbg !1087
  %57 = load i64, i64* %10, align 8, !dbg !1089
  %58 = load i32, i32* %9, align 4, !dbg !1090
  %59 = sext i32 %58 to i64, !dbg !1090
  %60 = add i64 %57, %59, !dbg !1091
  call void @DynBuf_SetSize(%struct.DynBuf* %56, i64 %60), !dbg !1092
  br label %71, !dbg !1093

; <label>:61:                                     ; preds = %52
  call void @llvm.dbg.declare(metadata i8* %14, metadata !1094, metadata !55), !dbg !1096
  %62 = load %struct.DynBuf*, %struct.DynBuf** %5, align 8, !dbg !1097
  %63 = load i64, i64* %10, align 8, !dbg !1098
  %64 = add i64 %63, 128, !dbg !1099
  %65 = call signext i8 @DynBuf_Enlarge(%struct.DynBuf* %62, i64 %64), !dbg !1100
  store i8 %65, i8* %14, align 1, !dbg !1096
  %66 = load i8, i8* %14, align 1, !dbg !1101
  %67 = icmp ne i8 %66, 0, !dbg !1101
  br i1 %67, label %69, label %68, !dbg !1103

; <label>:68:                                     ; preds = %61
  store i8 0, i8* %4, align 1, !dbg !1104
  br label %72, !dbg !1104

; <label>:69:                                     ; preds = %61
  br label %70

; <label>:70:                                     ; preds = %69
  br label %15, !dbg !1106, !llvm.loop !1048

; <label>:71:                                     ; preds = %55
  store i8 1, i8* %4, align 1, !dbg !1108
  br label %72, !dbg !1108

; <label>:72:                                     ; preds = %71, %68, %27
  %73 = load i8, i8* %4, align 1, !dbg !1109
  ret i8 %73, !dbg !1109
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @DynBuf_GetSize(%struct.DynBuf*) #7 !dbg !1110 {
  %2 = alloca %struct.DynBuf*, align 8
  store %struct.DynBuf* %0, %struct.DynBuf** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %2, metadata !1115, metadata !55), !dbg !1116
  %3 = load %struct.DynBuf*, %struct.DynBuf** %2, align 8, !dbg !1117
  %4 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %3, i32 0, i32 1, !dbg !1118
  %5 = load i64, i64* %4, align 8, !dbg !1118
  ret i64 %5, !dbg !1119
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @DynBuf_GetAllocatedSize(%struct.DynBuf*) #7 !dbg !1120 {
  %2 = alloca %struct.DynBuf*, align 8
  store %struct.DynBuf* %0, %struct.DynBuf** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %2, metadata !1121, metadata !55), !dbg !1122
  %3 = load %struct.DynBuf*, %struct.DynBuf** %2, align 8, !dbg !1123
  %4 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %3, i32 0, i32 2, !dbg !1124
  %5 = load i64, i64* %4, align 8, !dbg !1124
  ret i64 %5, !dbg !1125
}

declare signext i8 @DynBuf_Enlarge(%struct.DynBuf*, i64) #3

; Function Attrs: nounwind
declare void @llvm.va_copy(i8*, i8*) #8

declare i32 @Str_Vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @DynBuf_Get(%struct.DynBuf*) #7 !dbg !1126 {
  %2 = alloca %struct.DynBuf*, align 8
  store %struct.DynBuf* %0, %struct.DynBuf** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %2, metadata !1129, metadata !55), !dbg !1130
  %3 = load %struct.DynBuf*, %struct.DynBuf** %2, align 8, !dbg !1131
  %4 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %3, i32 0, i32 0, !dbg !1132
  %5 = load i8*, i8** %4, align 8, !dbg !1132
  ret i8* %5, !dbg !1133
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #8

; Function Attrs: inlinehint nounwind uwtable
define internal void @DynBuf_SetSize(%struct.DynBuf*, i64) #7 !dbg !1134 {
  %3 = alloca %struct.DynBuf*, align 8
  %4 = alloca i64, align 8
  store %struct.DynBuf* %0, %struct.DynBuf** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %3, metadata !1137, metadata !55), !dbg !1138
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1139, metadata !55), !dbg !1140
  %5 = load i64, i64* %4, align 8, !dbg !1141
  %6 = load %struct.DynBuf*, %struct.DynBuf** %3, align 8, !dbg !1142
  %7 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %6, i32 0, i32 1, !dbg !1143
  store i64 %5, i64* %7, align 8, !dbg !1144
  ret void, !dbg !1145
}

; Function Attrs: nounwind uwtable
define signext i8 @StrUtil_DynBufPrintf(%struct.DynBuf*, i8*, ...) #0 !dbg !1146 {
  %3 = alloca %struct.DynBuf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = alloca i8, align 1
  store %struct.DynBuf* %0, %struct.DynBuf** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %3, metadata !1149, metadata !55), !dbg !1150
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1151, metadata !55), !dbg !1152
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !1153, metadata !55), !dbg !1154
  call void @llvm.dbg.declare(metadata i8* %6, metadata !1155, metadata !55), !dbg !1156
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !1157
  %8 = bitcast %struct.__va_list_tag* %7 to i8*, !dbg !1157
  call void @llvm.va_start(i8* %8), !dbg !1157
  %9 = load %struct.DynBuf*, %struct.DynBuf** %3, align 8, !dbg !1158
  %10 = load i8*, i8** %4, align 8, !dbg !1159
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !1160
  %12 = call signext i8 @StrUtil_VDynBufPrintf(%struct.DynBuf* %9, i8* %10, %struct.__va_list_tag* %11), !dbg !1161
  store i8 %12, i8* %6, align 1, !dbg !1162
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !1163
  %14 = bitcast %struct.__va_list_tag* %13 to i8*, !dbg !1163
  call void @llvm.va_end(i8* %14), !dbg !1163
  %15 = load i8, i8* %6, align 1, !dbg !1164
  ret i8 %15, !dbg !1165
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #8

; Function Attrs: nounwind uwtable
define void @StrUtil_SafeDynBufPrintf(%struct.DynBuf*, i8*, ...) #0 !dbg !1166 {
  %3 = alloca %struct.DynBuf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = alloca i8, align 1
  store %struct.DynBuf* %0, %struct.DynBuf** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %3, metadata !1169, metadata !55), !dbg !1170
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1171, metadata !55), !dbg !1172
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !1173, metadata !55), !dbg !1174
  call void @llvm.dbg.declare(metadata i8* %6, metadata !1175, metadata !55), !dbg !1176
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !1177
  %8 = bitcast %struct.__va_list_tag* %7 to i8*, !dbg !1177
  call void @llvm.va_start(i8* %8), !dbg !1177
  %9 = load %struct.DynBuf*, %struct.DynBuf** %3, align 8, !dbg !1178
  %10 = load i8*, i8** %4, align 8, !dbg !1179
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !1180
  %12 = call signext i8 @StrUtil_VDynBufPrintf(%struct.DynBuf* %9, i8* %10, %struct.__va_list_tag* %11), !dbg !1181
  store i8 %12, i8* %6, align 1, !dbg !1182
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !1183
  %14 = bitcast %struct.__va_list_tag* %13 to i8*, !dbg !1183
  call void @llvm.va_end(i8* %14), !dbg !1183
  %15 = load i8, i8* %6, align 1, !dbg !1184
  %16 = icmp ne i8 %15, 0, !dbg !1187
  %17 = xor i1 %16, true, !dbg !1187
  %18 = zext i1 %17 to i32, !dbg !1187
  %19 = sext i32 %18 to i64, !dbg !1188
  %20 = icmp ne i64 %19, 0, !dbg !1189
  br i1 %20, label %21, label %22, !dbg !1190

; <label>:21:                                     ; preds = %2
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i32 1165) #11, !dbg !1191
  unreachable, !dbg !1191

; <label>:22:                                     ; preds = %2
  ret void, !dbg !1194
}

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #9

; Function Attrs: nounwind uwtable
define void @StrUtil_SafeStrcat(i8**, i8*) #0 !dbg !1195 {
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !1199, metadata !55), !dbg !1200
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1201, metadata !55), !dbg !1202
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1203, metadata !55), !dbg !1204
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1205, metadata !55), !dbg !1206
  %8 = load i8**, i8*** %3, align 8, !dbg !1207
  %9 = load i8*, i8** %8, align 8, !dbg !1208
  %10 = icmp eq i8* %9, null, !dbg !1209
  br i1 %10, label %11, label %12, !dbg !1210

; <label>:11:                                     ; preds = %2
  br label %16, !dbg !1211

; <label>:12:                                     ; preds = %2
  %13 = load i8**, i8*** %3, align 8, !dbg !1213
  %14 = load i8*, i8** %13, align 8, !dbg !1215
  %15 = call i64 @strlen(i8* %14) #10, !dbg !1216
  br label %16, !dbg !1217

; <label>:16:                                     ; preds = %12, %11
  %17 = phi i64 [ 0, %11 ], [ %15, %12 ], !dbg !1218
  store i64 %17, i64* %6, align 8, !dbg !1220
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1221, metadata !55), !dbg !1222
  %18 = load i8*, i8** %4, align 8, !dbg !1223
  %19 = call i64 @strlen(i8* %18) #10, !dbg !1224
  store i64 %19, i64* %7, align 8, !dbg !1222
  %20 = load i64, i64* %6, align 8, !dbg !1225
  %21 = icmp ult i64 %20, 9223372036854775807, !dbg !1228
  br i1 %21, label %22, label %25, !dbg !1229

; <label>:22:                                     ; preds = %16
  %23 = load i64, i64* %7, align 8, !dbg !1230
  %24 = icmp ult i64 %23, 9223372036854775807, !dbg !1232
  br label %25

; <label>:25:                                     ; preds = %22, %16
  %26 = phi i1 [ false, %16 ], [ %24, %22 ]
  %27 = xor i1 %26, true, !dbg !1233
  %28 = zext i1 %27 to i32, !dbg !1233
  %29 = sext i32 %28 to i64, !dbg !1235
  %30 = icmp ne i64 %29, 0, !dbg !1236
  br i1 %30, label %31, label %32, !dbg !1236

; <label>:31:                                     ; preds = %25
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i32 1201) #11, !dbg !1237
  unreachable, !dbg !1237

; <label>:32:                                     ; preds = %25
  %33 = load i8**, i8*** %3, align 8, !dbg !1240
  %34 = load i8*, i8** %33, align 8, !dbg !1241
  %35 = load i64, i64* %6, align 8, !dbg !1242
  %36 = load i64, i64* %7, align 8, !dbg !1243
  %37 = add i64 %35, %36, !dbg !1244
  %38 = add i64 %37, 1, !dbg !1245
  %39 = call i8* @UtilSafeRealloc0(i8* %34, i64 %38), !dbg !1246
  store i8* %39, i8** %5, align 8, !dbg !1247
  %40 = load i8*, i8** %5, align 8, !dbg !1248
  %41 = load i64, i64* %6, align 8, !dbg !1249
  %42 = getelementptr inbounds i8, i8* %40, i64 %41, !dbg !1250
  %43 = load i8*, i8** %4, align 8, !dbg !1251
  %44 = load i64, i64* %7, align 8, !dbg !1252
  %45 = add i64 %44, 1, !dbg !1253
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 %45, i32 1, i1 false), !dbg !1254
  %46 = load i8*, i8** %5, align 8, !dbg !1255
  %47 = load i8**, i8*** %3, align 8, !dbg !1256
  store i8* %46, i8** %47, align 8, !dbg !1257
  ret void, !dbg !1258
}

declare i8* @UtilSafeRealloc0(i8*, i64) #3

; Function Attrs: nounwind uwtable
define void @StrUtil_SafeStrcatFV(i8**, i8*, %struct.__va_list_tag*) #0 !dbg !1259 {
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.__va_list_tag*, align 8
  %7 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !1262, metadata !55), !dbg !1263
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1264, metadata !55), !dbg !1265
  store %struct.__va_list_tag* %2, %struct.__va_list_tag** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %6, metadata !1266, metadata !55), !dbg !1267
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1268, metadata !55), !dbg !1269
  %8 = load i8*, i8** %5, align 8, !dbg !1270
  %9 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8, !dbg !1271
  %10 = call i8* @Str_SafeVasprintf(i64* null, i8* %8, %struct.__va_list_tag* %9), !dbg !1272
  store i8* %10, i8** %7, align 8, !dbg !1269
  %11 = load i8**, i8*** %4, align 8, !dbg !1273
  %12 = load i8*, i8** %7, align 8, !dbg !1274
  call void @StrUtil_SafeStrcat(i8** %11, i8* %12), !dbg !1275
  %13 = load i8*, i8** %7, align 8, !dbg !1276
  call void @free(i8* %13) #8, !dbg !1277
  ret void, !dbg !1278
}

declare i8* @Str_SafeVasprintf(i64*, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind uwtable
define void @StrUtil_SafeStrcatF(i8**, i8*, ...) #0 !dbg !1279 {
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !1282, metadata !55), !dbg !1283
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1284, metadata !55), !dbg !1285
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !1286, metadata !55), !dbg !1287
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !1288
  %7 = bitcast %struct.__va_list_tag* %6 to i8*, !dbg !1288
  call void @llvm.va_start(i8* %7), !dbg !1288
  %8 = load i8**, i8*** %3, align 8, !dbg !1289
  %9 = load i8*, i8** %4, align 8, !dbg !1290
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !1291
  call void @StrUtil_SafeStrcatFV(i8** %8, i8* %9, %struct.__va_list_tag* %10), !dbg !1292
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !1293
  %12 = bitcast %struct.__va_list_tag* %11 to i8*, !dbg !1293
  call void @llvm.va_end(i8* %12), !dbg !1293
  ret void, !dbg !1294
}

; Function Attrs: nounwind uwtable
define i8* @StrUtil_TrimWhitespace(i8*) #0 !dbg !1295 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1298, metadata !55), !dbg !1299
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1300, metadata !55), !dbg !1301
  %7 = load i8*, i8** %3, align 8, !dbg !1302
  store i8* %7, i8** %4, align 8, !dbg !1301
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1303, metadata !55), !dbg !1304
  store i8* null, i8** %5, align 8, !dbg !1304
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1305, metadata !55), !dbg !1306
  br label %8, !dbg !1307

; <label>:8:                                      ; preds = %27, %1
  %9 = load i8*, i8** %4, align 8, !dbg !1308
  %10 = load i8, i8* %9, align 1, !dbg !1310
  %11 = sext i8 %10 to i32, !dbg !1310
  %12 = icmp ne i32 %11, 0, !dbg !1310
  br i1 %12, label %13, label %25, !dbg !1311

; <label>:13:                                     ; preds = %8
  %14 = load i8*, i8** %4, align 8, !dbg !1312
  %15 = load i8, i8* %14, align 1, !dbg !1314
  %16 = sext i8 %15 to i32, !dbg !1315
  %17 = sext i32 %16 to i64, !dbg !1312
  %18 = call i16** @__ctype_b_loc() #1, !dbg !1316
  %19 = load i16*, i16** %18, align 8, !dbg !1317
  %20 = getelementptr inbounds i16, i16* %19, i64 %17, !dbg !1312
  %21 = load i16, i16* %20, align 2, !dbg !1312
  %22 = zext i16 %21 to i32, !dbg !1312
  %23 = and i32 %22, 8192, !dbg !1318
  %24 = icmp ne i32 %23, 0, !dbg !1319
  br label %25

; <label>:25:                                     ; preds = %13, %8
  %26 = phi i1 [ false, %8 ], [ %24, %13 ]
  br i1 %26, label %27, label %30, !dbg !1320

; <label>:27:                                     ; preds = %25
  %28 = load i8*, i8** %4, align 8, !dbg !1322
  %29 = getelementptr inbounds i8, i8* %28, i32 1, !dbg !1322
  store i8* %29, i8** %4, align 8, !dbg !1322
  br label %8, !dbg !1324, !llvm.loop !1326

; <label>:30:                                     ; preds = %25
  %31 = load i8*, i8** %4, align 8, !dbg !1327
  %32 = call i8* @UtilSafeStrdup0(i8* %31), !dbg !1328
  store i8* %32, i8** %5, align 8, !dbg !1329
  %33 = load i8*, i8** %5, align 8, !dbg !1330
  %34 = call i64 @strlen(i8* %33) #10, !dbg !1331
  store i64 %34, i64* %6, align 8, !dbg !1332
  %35 = load i64, i64* %6, align 8, !dbg !1333
  %36 = icmp eq i64 %35, 0, !dbg !1335
  br i1 %36, label %37, label %39, !dbg !1336

; <label>:37:                                     ; preds = %30
  %38 = load i8*, i8** %5, align 8, !dbg !1337
  store i8* %38, i8** %2, align 8, !dbg !1339
  br label %70, !dbg !1339

; <label>:39:                                     ; preds = %30
  %40 = load i8*, i8** %5, align 8, !dbg !1340
  %41 = load i64, i64* %6, align 8, !dbg !1341
  %42 = getelementptr inbounds i8, i8* %40, i64 %41, !dbg !1342
  %43 = getelementptr inbounds i8, i8* %42, i64 -1, !dbg !1343
  store i8* %43, i8** %4, align 8, !dbg !1344
  br label %44, !dbg !1345

; <label>:44:                                     ; preds = %62, %39
  %45 = load i8*, i8** %4, align 8, !dbg !1346
  %46 = load i8*, i8** %5, align 8, !dbg !1347
  %47 = icmp ugt i8* %45, %46, !dbg !1348
  br i1 %47, label %48, label %60, !dbg !1349

; <label>:48:                                     ; preds = %44
  %49 = load i8*, i8** %4, align 8, !dbg !1350
  %50 = load i8, i8* %49, align 1, !dbg !1351
  %51 = sext i8 %50 to i32, !dbg !1352
  %52 = sext i32 %51 to i64, !dbg !1350
  %53 = call i16** @__ctype_b_loc() #1, !dbg !1353
  %54 = load i16*, i16** %53, align 8, !dbg !1354
  %55 = getelementptr inbounds i16, i16* %54, i64 %52, !dbg !1350
  %56 = load i16, i16* %55, align 2, !dbg !1350
  %57 = zext i16 %56 to i32, !dbg !1350
  %58 = and i32 %57, 8192, !dbg !1355
  %59 = icmp ne i32 %58, 0, !dbg !1356
  br label %60

; <label>:60:                                     ; preds = %48, %44
  %61 = phi i1 [ false, %44 ], [ %59, %48 ]
  br i1 %61, label %62, label %65, !dbg !1357

; <label>:62:                                     ; preds = %60
  %63 = load i8*, i8** %4, align 8, !dbg !1358
  %64 = getelementptr inbounds i8, i8* %63, i32 -1, !dbg !1358
  store i8* %64, i8** %4, align 8, !dbg !1358
  br label %44, !dbg !1360, !llvm.loop !1361

; <label>:65:                                     ; preds = %60
  %66 = load i8*, i8** %4, align 8, !dbg !1362
  %67 = getelementptr inbounds i8, i8* %66, i32 1, !dbg !1362
  store i8* %67, i8** %4, align 8, !dbg !1362
  %68 = load i8*, i8** %4, align 8, !dbg !1363
  store i8 0, i8* %68, align 1, !dbg !1364
  %69 = load i8*, i8** %5, align 8, !dbg !1365
  store i8* %69, i8** %2, align 8, !dbg !1366
  br label %70, !dbg !1366

; <label>:70:                                     ; preds = %65, %37
  %71 = load i8*, i8** %2, align 8, !dbg !1367
  ret i8* %71, !dbg !1367
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #6

declare i8* @UtilSafeStrdup0(i8*) #3

; Function Attrs: nounwind uwtable
define i8* @StrUtil_ReplaceAll(i8*, i8*, i8*) #0 !dbg !1368 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1371, metadata !55), !dbg !1372
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1373, metadata !55), !dbg !1374
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1375, metadata !55), !dbg !1376
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1377, metadata !55), !dbg !1378
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1379, metadata !55), !dbg !1380
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1381, metadata !55), !dbg !1382
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1383, metadata !55), !dbg !1384
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1385, metadata !55), !dbg !1386
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1387, metadata !55), !dbg !1388
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1389, metadata !55), !dbg !1390
  store i64 0, i64* %13, align 8, !dbg !1390
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1391, metadata !55), !dbg !1392
  %15 = load i8*, i8** %5, align 8, !dbg !1393
  %16 = call i64 @strlen(i8* %15) #10, !dbg !1394
  store i64 %16, i64* %10, align 8, !dbg !1395
  %17 = load i8*, i8** %6, align 8, !dbg !1396
  %18 = call i64 @strlen(i8* %17) #10, !dbg !1397
  store i64 %18, i64* %11, align 8, !dbg !1398
  %19 = load i8*, i8** %4, align 8, !dbg !1399
  store i8* %19, i8** %8, align 8, !dbg !1400
  br label %20, !dbg !1401

; <label>:20:                                     ; preds = %25, %3
  %21 = load i8*, i8** %8, align 8, !dbg !1402
  %22 = load i8*, i8** %5, align 8, !dbg !1404
  %23 = call i8* @strstr(i8* %21, i8* %22) #10, !dbg !1405
  store i8* %23, i8** %9, align 8, !dbg !1406
  %24 = icmp ne i8* %23, null, !dbg !1407
  br i1 %24, label %25, label %31, !dbg !1408

; <label>:25:                                     ; preds = %20
  %26 = load i8*, i8** %9, align 8, !dbg !1409
  %27 = load i64, i64* %10, align 8, !dbg !1411
  %28 = getelementptr inbounds i8, i8* %26, i64 %27, !dbg !1412
  store i8* %28, i8** %8, align 8, !dbg !1413
  %29 = load i64, i64* %13, align 8, !dbg !1414
  %30 = add i64 %29, 1, !dbg !1414
  store i64 %30, i64* %13, align 8, !dbg !1414
  br label %20, !dbg !1415, !llvm.loop !1417

; <label>:31:                                     ; preds = %20
  %32 = load i8*, i8** %4, align 8, !dbg !1418
  %33 = call i64 @strlen(i8* %32) #10, !dbg !1419
  %34 = load i64, i64* %11, align 8, !dbg !1420
  %35 = load i64, i64* %10, align 8, !dbg !1421
  %36 = sub i64 %34, %35, !dbg !1422
  %37 = load i64, i64* %13, align 8, !dbg !1423
  %38 = mul i64 %36, %37, !dbg !1424
  %39 = add i64 %33, %38, !dbg !1425
  store i64 %39, i64* %14, align 8, !dbg !1426
  %40 = load i64, i64* %14, align 8, !dbg !1427
  %41 = add i64 %40, 1, !dbg !1428
  %42 = call i8* @UtilSafeMalloc0(i64 %41), !dbg !1429
  store i8* %42, i8** %9, align 8, !dbg !1430
  %43 = load i8*, i8** %9, align 8, !dbg !1431
  store i8* %43, i8** %7, align 8, !dbg !1432
  br label %44, !dbg !1433

; <label>:44:                                     ; preds = %48, %31
  %45 = load i64, i64* %13, align 8, !dbg !1434
  %46 = add i64 %45, -1, !dbg !1434
  store i64 %46, i64* %13, align 8, !dbg !1434
  %47 = icmp ne i64 %45, 0, !dbg !1435
  br i1 %47, label %48, label %74, !dbg !1435

; <label>:48:                                     ; preds = %44
  %49 = load i8*, i8** %4, align 8, !dbg !1436
  %50 = load i8*, i8** %5, align 8, !dbg !1438
  %51 = call i8* @strstr(i8* %49, i8* %50) #10, !dbg !1439
  store i8* %51, i8** %8, align 8, !dbg !1440
  %52 = load i8*, i8** %8, align 8, !dbg !1441
  %53 = load i8*, i8** %4, align 8, !dbg !1442
  %54 = ptrtoint i8* %52 to i64, !dbg !1443
  %55 = ptrtoint i8* %53 to i64, !dbg !1443
  %56 = sub i64 %54, %55, !dbg !1443
  store i64 %56, i64* %12, align 8, !dbg !1444
  %57 = load i8*, i8** %9, align 8, !dbg !1445
  %58 = load i8*, i8** %4, align 8, !dbg !1446
  %59 = load i64, i64* %12, align 8, !dbg !1447
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* %58, i64 %59, i32 1, i1 false), !dbg !1448
  store i8* %57, i8** %9, align 8, !dbg !1449
  %60 = load i64, i64* %12, align 8, !dbg !1450
  %61 = load i8*, i8** %9, align 8, !dbg !1451
  %62 = getelementptr inbounds i8, i8* %61, i64 %60, !dbg !1451
  store i8* %62, i8** %9, align 8, !dbg !1451
  %63 = load i8*, i8** %9, align 8, !dbg !1452
  %64 = load i8*, i8** %6, align 8, !dbg !1453
  %65 = load i64, i64* %11, align 8, !dbg !1454
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* %64, i64 %65, i32 1, i1 false), !dbg !1455
  store i8* %63, i8** %9, align 8, !dbg !1456
  %66 = load i64, i64* %11, align 8, !dbg !1457
  %67 = load i8*, i8** %9, align 8, !dbg !1458
  %68 = getelementptr inbounds i8, i8* %67, i64 %66, !dbg !1458
  store i8* %68, i8** %9, align 8, !dbg !1458
  %69 = load i64, i64* %12, align 8, !dbg !1459
  %70 = load i64, i64* %10, align 8, !dbg !1460
  %71 = add i64 %69, %70, !dbg !1461
  %72 = load i8*, i8** %4, align 8, !dbg !1462
  %73 = getelementptr inbounds i8, i8* %72, i64 %71, !dbg !1462
  store i8* %73, i8** %4, align 8, !dbg !1462
  br label %44, !dbg !1463, !llvm.loop !1464

; <label>:74:                                     ; preds = %44
  %75 = load i8*, i8** %9, align 8, !dbg !1465
  %76 = load i8*, i8** %4, align 8, !dbg !1466
  %77 = load i8*, i8** %4, align 8, !dbg !1467
  %78 = call i64 @strlen(i8* %77) #10, !dbg !1468
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %75, i8* %76, i64 %78, i32 1, i1 false), !dbg !1469
  %79 = load i64, i64* %14, align 8, !dbg !1470
  %80 = load i8*, i8** %7, align 8, !dbg !1471
  %81 = getelementptr inbounds i8, i8* %80, i64 %79, !dbg !1471
  store i8 0, i8* %81, align 1, !dbg !1472
  %82 = load i8*, i8** %7, align 8, !dbg !1473
  ret i8* %82, !dbg !1474
}

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define i8* @StrUtil_GetNextItem(i8**, i8 signext) #0 !dbg !1475 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !1478, metadata !55), !dbg !1479
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1480, metadata !55), !dbg !1481
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1482, metadata !55), !dbg !1483
  %8 = load i8**, i8*** %4, align 8, !dbg !1484
  %9 = load i8*, i8** %8, align 8, !dbg !1485
  store i8* %9, i8** %6, align 8, !dbg !1483
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1486, metadata !55), !dbg !1487
  %10 = load i8**, i8*** %4, align 8, !dbg !1488
  %11 = load i8*, i8** %10, align 8, !dbg !1490
  %12 = icmp eq i8* %11, null, !dbg !1491
  br i1 %12, label %13, label %14, !dbg !1492

; <label>:13:                                     ; preds = %2
  store i8* null, i8** %3, align 8, !dbg !1493
  br label %32, !dbg !1493

; <label>:14:                                     ; preds = %2
  %15 = load i8**, i8*** %4, align 8, !dbg !1495
  %16 = load i8*, i8** %15, align 8, !dbg !1496
  %17 = load i8, i8* %5, align 1, !dbg !1497
  %18 = sext i8 %17 to i32, !dbg !1497
  %19 = call i8* @strchr(i8* %16, i32 %18) #10, !dbg !1498
  store i8* %19, i8** %7, align 8, !dbg !1499
  %20 = load i8*, i8** %7, align 8, !dbg !1500
  %21 = icmp ne i8* %20, null, !dbg !1502
  br i1 %21, label %22, label %28, !dbg !1503

; <label>:22:                                     ; preds = %14
  %23 = load i8*, i8** %7, align 8, !dbg !1504
  %24 = getelementptr inbounds i8, i8* %23, i64 0, !dbg !1504
  store i8 0, i8* %24, align 1, !dbg !1506
  %25 = load i8*, i8** %7, align 8, !dbg !1507
  %26 = getelementptr inbounds i8, i8* %25, i64 1, !dbg !1508
  %27 = load i8**, i8*** %4, align 8, !dbg !1509
  store i8* %26, i8** %27, align 8, !dbg !1510
  br label %30, !dbg !1511

; <label>:28:                                     ; preds = %14
  %29 = load i8**, i8*** %4, align 8, !dbg !1512
  store i8* null, i8** %29, align 8, !dbg !1514
  br label %30

; <label>:30:                                     ; preds = %28, %22
  %31 = load i8*, i8** %6, align 8, !dbg !1515
  store i8* %31, i8** %3, align 8, !dbg !1516
  br label %32, !dbg !1516

; <label>:32:                                     ; preds = %30, %13
  %33 = load i8*, i8** %3, align 8, !dbg !1517
  ret i8* %33, !dbg !1517
}

; Function Attrs: nounwind uwtable
define i8* @StrUtil_GetLastItem(i8**, i8 signext) #0 !dbg !1518 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !1519, metadata !55), !dbg !1520
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1521, metadata !55), !dbg !1522
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1523, metadata !55), !dbg !1524
  %8 = load i8**, i8*** %4, align 8, !dbg !1525
  %9 = load i8*, i8** %8, align 8, !dbg !1526
  store i8* %9, i8** %6, align 8, !dbg !1524
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1527, metadata !55), !dbg !1528
  %10 = load i8**, i8*** %4, align 8, !dbg !1529
  %11 = load i8*, i8** %10, align 8, !dbg !1531
  %12 = icmp eq i8* %11, null, !dbg !1532
  br i1 %12, label %13, label %14, !dbg !1533

; <label>:13:                                     ; preds = %2
  store i8* null, i8** %3, align 8, !dbg !1534
  br label %31, !dbg !1534

; <label>:14:                                     ; preds = %2
  %15 = load i8**, i8*** %4, align 8, !dbg !1536
  %16 = load i8*, i8** %15, align 8, !dbg !1537
  %17 = load i8, i8* %5, align 1, !dbg !1538
  %18 = sext i8 %17 to i32, !dbg !1538
  %19 = call i8* @strrchr(i8* %16, i32 %18) #10, !dbg !1539
  store i8* %19, i8** %7, align 8, !dbg !1540
  %20 = load i8*, i8** %7, align 8, !dbg !1541
  %21 = icmp ne i8* %20, null, !dbg !1543
  br i1 %21, label %22, label %27, !dbg !1544

; <label>:22:                                     ; preds = %14
  %23 = load i8*, i8** %7, align 8, !dbg !1545
  %24 = getelementptr inbounds i8, i8* %23, i64 0, !dbg !1545
  store i8 0, i8* %24, align 1, !dbg !1547
  %25 = load i8*, i8** %7, align 8, !dbg !1548
  %26 = getelementptr inbounds i8, i8* %25, i64 1, !dbg !1549
  store i8* %26, i8** %6, align 8, !dbg !1550
  br label %29, !dbg !1551

; <label>:27:                                     ; preds = %14
  %28 = load i8**, i8*** %4, align 8, !dbg !1552
  store i8* null, i8** %28, align 8, !dbg !1554
  br label %29

; <label>:29:                                     ; preds = %27, %22
  %30 = load i8*, i8** %6, align 8, !dbg !1555
  store i8* %30, i8** %3, align 8, !dbg !1556
  br label %31, !dbg !1556

; <label>:31:                                     ; preds = %29, %13
  %32 = load i8*, i8** %3, align 8, !dbg !1557
  ret i8* %32, !dbg !1557
}

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #2

; Function Attrs: nounwind uwtable
define signext i8 @StrUtil_HasListItem(i8*, i8 signext, i8*) #0 !dbg !1558 {
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1561, metadata !55), !dbg !1562
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1563, metadata !55), !dbg !1564
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1565, metadata !55), !dbg !1566
  %7 = load i8*, i8** %4, align 8, !dbg !1567
  %8 = load i8, i8* %5, align 1, !dbg !1568
  %9 = load i8*, i8** %6, align 8, !dbg !1569
  %10 = call signext i8 @StrUtilHasListItem(i8* %7, i8 signext %8, i8* %9, i32 (i8*, i8*, i64)* @StrUtilStrncmp), !dbg !1570
  ret i8 %10, !dbg !1571
}

; Function Attrs: nounwind uwtable
define internal signext i8 @StrUtilHasListItem(i8*, i8 signext, i8*, i32 (i8*, i8*, i64)*) #0 !dbg !1572 {
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i32 (i8*, i8*, i64)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1578, metadata !55), !dbg !1579
  store i8 %1, i8* %7, align 1
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1580, metadata !55), !dbg !1581
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1582, metadata !55), !dbg !1583
  store i32 (i8*, i8*, i64)* %3, i32 (i8*, i8*, i64)** %9, align 8
  call void @llvm.dbg.declare(metadata i32 (i8*, i8*, i64)** %9, metadata !1584, metadata !55), !dbg !1585
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1586, metadata !55), !dbg !1587
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1588, metadata !55), !dbg !1589
  %13 = load i8*, i8** %8, align 8, !dbg !1590
  %14 = call i64 @strlen(i8* %13) #10, !dbg !1591
  %15 = trunc i64 %14 to i32, !dbg !1591
  store i32 %15, i32* %11, align 4, !dbg !1589
  %16 = load i8*, i8** %6, align 8, !dbg !1592
  %17 = icmp eq i8* %16, null, !dbg !1594
  br i1 %17, label %18, label %19, !dbg !1595

; <label>:18:                                     ; preds = %4
  store i8 0, i8* %5, align 1, !dbg !1596
  br label %63, !dbg !1596

; <label>:19:                                     ; preds = %4
  br label %20, !dbg !1598, !llvm.loop !1599

; <label>:20:                                     ; preds = %59, %19
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1600, metadata !55), !dbg !1602
  %21 = load i8*, i8** %6, align 8, !dbg !1603
  %22 = load i8, i8* %7, align 1, !dbg !1604
  %23 = sext i8 %22 to i32, !dbg !1604
  %24 = call i8* @strchr(i8* %21, i32 %23) #10, !dbg !1605
  store i8* %24, i8** %10, align 8, !dbg !1606
  %25 = load i8*, i8** %10, align 8, !dbg !1607
  %26 = icmp eq i8* %25, null, !dbg !1609
  br i1 %26, label %27, label %31, !dbg !1610

; <label>:27:                                     ; preds = %20
  %28 = load i8*, i8** %6, align 8, !dbg !1611
  %29 = call i64 @strlen(i8* %28) #10, !dbg !1613
  %30 = trunc i64 %29 to i32, !dbg !1613
  store i32 %30, i32* %12, align 4, !dbg !1614
  br label %38, !dbg !1615

; <label>:31:                                     ; preds = %20
  %32 = load i8*, i8** %10, align 8, !dbg !1616
  %33 = load i8*, i8** %6, align 8, !dbg !1618
  %34 = ptrtoint i8* %32 to i64, !dbg !1619
  %35 = ptrtoint i8* %33 to i64, !dbg !1619
  %36 = sub i64 %34, %35, !dbg !1619
  %37 = trunc i64 %36 to i32, !dbg !1616
  store i32 %37, i32* %12, align 4, !dbg !1620
  br label %38

; <label>:38:                                     ; preds = %31, %27
  %39 = load i32, i32* %11, align 4, !dbg !1621
  %40 = load i32, i32* %12, align 4, !dbg !1623
  %41 = icmp eq i32 %39, %40, !dbg !1624
  br i1 %41, label %42, label %51, !dbg !1625

; <label>:42:                                     ; preds = %38
  %43 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %9, align 8, !dbg !1626
  %44 = load i8*, i8** %8, align 8, !dbg !1628
  %45 = load i8*, i8** %6, align 8, !dbg !1629
  %46 = load i32, i32* %11, align 4, !dbg !1630
  %47 = sext i32 %46 to i64, !dbg !1630
  %48 = call i32 %43(i8* %44, i8* %45, i64 %47), !dbg !1626
  %49 = icmp eq i32 %48, 0, !dbg !1631
  br i1 %49, label %50, label %51, !dbg !1632

; <label>:50:                                     ; preds = %42
  store i8 1, i8* %5, align 1, !dbg !1633
  br label %63, !dbg !1633

; <label>:51:                                     ; preds = %42, %38
  %52 = load i8*, i8** %10, align 8, !dbg !1635
  %53 = icmp ne i8* %52, null, !dbg !1637
  br i1 %53, label %54, label %57, !dbg !1638

; <label>:54:                                     ; preds = %51
  %55 = load i8*, i8** %10, align 8, !dbg !1639
  %56 = getelementptr inbounds i8, i8* %55, i64 1, !dbg !1641
  store i8* %56, i8** %6, align 8, !dbg !1642
  br label %57, !dbg !1643

; <label>:57:                                     ; preds = %54, %51
  br label %58

; <label>:58:                                     ; preds = %57
  br label %59, !dbg !1644

; <label>:59:                                     ; preds = %58
  %60 = load i8*, i8** %10, align 8, !dbg !1645
  %61 = icmp ne i8* %60, null, !dbg !1647
  br i1 %61, label %20, label %62, !dbg !1648, !llvm.loop !1599

; <label>:62:                                     ; preds = %59
  store i8 0, i8* %5, align 1, !dbg !1649
  br label %63, !dbg !1649

; <label>:63:                                     ; preds = %62, %50, %18
  %64 = load i8, i8* %5, align 1, !dbg !1650
  ret i8 %64, !dbg !1650
}

; Function Attrs: nounwind uwtable
define internal i32 @StrUtilStrncmp(i8*, i8*, i64) #0 !dbg !1651 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1652, metadata !55), !dbg !1653
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1654, metadata !55), !dbg !1655
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1656, metadata !55), !dbg !1657
  %7 = load i8*, i8** %4, align 8, !dbg !1658
  %8 = load i8*, i8** %5, align 8, !dbg !1659
  %9 = load i64, i64* %6, align 8, !dbg !1660
  %10 = call i32 @strncmp(i8* %7, i8* %8, i64 %9) #10, !dbg !1661
  ret i32 %10, !dbg !1662
}

; Function Attrs: nounwind uwtable
define signext i8 @StrUtil_HasListItemCase(i8*, i8 signext, i8*) #0 !dbg !1663 {
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1664, metadata !55), !dbg !1665
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1666, metadata !55), !dbg !1667
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1668, metadata !55), !dbg !1669
  %7 = load i8*, i8** %4, align 8, !dbg !1670
  %8 = load i8, i8* %5, align 1, !dbg !1671
  %9 = load i8*, i8** %6, align 8, !dbg !1672
  %10 = call signext i8 @StrUtilHasListItem(i8* %7, i8 signext %8, i8* %9, i32 (i8*, i8*, i64)* @StrUtilStrncasecmp), !dbg !1673
  ret i8 %10, !dbg !1674
}

; Function Attrs: nounwind uwtable
define internal i32 @StrUtilStrncasecmp(i8*, i8*, i64) #0 !dbg !1675 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1676, metadata !55), !dbg !1677
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1678, metadata !55), !dbg !1679
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1680, metadata !55), !dbg !1681
  %7 = load i8*, i8** %4, align 8, !dbg !1682
  %8 = load i8*, i8** %5, align 8, !dbg !1683
  %9 = load i64, i64* %6, align 8, !dbg !1684
  %10 = call i32 @strncasecmp(i8* %7, i8* %8, i64 %9) #10, !dbg !1685
  ret i32 %10, !dbg !1686
}

; Function Attrs: nounwind uwtable
define i8* @StrUtil_AppendListItem(i8*, i8 signext, i8*) #0 !dbg !1687 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1690, metadata !55), !dbg !1691
  store i8 %1, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !1692, metadata !55), !dbg !1693
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1694, metadata !55), !dbg !1695
  %8 = load i8*, i8** %5, align 8, !dbg !1696
  %9 = icmp eq i8* %8, null, !dbg !1698
  br i1 %9, label %10, label %13, !dbg !1699

; <label>:10:                                     ; preds = %3
  %11 = load i8*, i8** %7, align 8, !dbg !1700
  %12 = call i8* (i64*, i8*, ...) @Str_Asprintf(i64* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* %11), !dbg !1702
  store i8* %12, i8** %4, align 8, !dbg !1703
  br label %19, !dbg !1703

; <label>:13:                                     ; preds = %3
  %14 = load i8*, i8** %5, align 8, !dbg !1704
  %15 = load i8, i8* %6, align 1, !dbg !1706
  %16 = sext i8 %15 to i32, !dbg !1706
  %17 = load i8*, i8** %7, align 8, !dbg !1707
  %18 = call i8* (i64*, i8*, ...) @Str_Asprintf(i64* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* %14, i32 %16, i8* %17), !dbg !1708
  store i8* %18, i8** %4, align 8, !dbg !1709
  br label %19, !dbg !1709

; <label>:19:                                     ; preds = %13, %10
  %20 = load i8*, i8** %4, align 8, !dbg !1710
  ret i8* %20, !dbg !1710
}

; Function Attrs: nounwind uwtable
define void @StrUtil_RemoveListItem(i8*, i8 signext, i8*) #0 !dbg !1711 {
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1715, metadata !55), !dbg !1716
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1717, metadata !55), !dbg !1718
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1719, metadata !55), !dbg !1720
  %7 = load i8*, i8** %4, align 8, !dbg !1721
  %8 = load i8, i8* %5, align 1, !dbg !1722
  %9 = load i8*, i8** %6, align 8, !dbg !1723
  call void @StrUtilRemoveListItem(i8* %7, i8 signext %8, i8* %9, i32 (i8*, i8*)* @StrUtilStrcmp), !dbg !1724
  ret void, !dbg !1725
}

; Function Attrs: nounwind uwtable
define internal void @StrUtilRemoveListItem(i8*, i8 signext, i8*, i32 (i8*, i8*)*) #0 !dbg !1726 {
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i32 (i8*, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1732, metadata !55), !dbg !1733
  store i8 %1, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !1734, metadata !55), !dbg !1735
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1736, metadata !55), !dbg !1737
  store i32 (i8*, i8*)* %3, i32 (i8*, i8*)** %8, align 8
  call void @llvm.dbg.declare(metadata i32 (i8*, i8*)** %8, metadata !1738, metadata !55), !dbg !1739
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1740, metadata !55), !dbg !1741
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1742, metadata !55), !dbg !1743
  %12 = load i8*, i8** %5, align 8, !dbg !1744
  store i8* %12, i8** %10, align 8, !dbg !1743
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1745, metadata !55), !dbg !1746
  %13 = load i8*, i8** %5, align 8, !dbg !1747
  %14 = call i64 @strlen(i8* %13) #10, !dbg !1748
  %15 = add i64 %14, 1, !dbg !1749
  %16 = trunc i64 %15 to i32, !dbg !1748
  store i32 %16, i32* %11, align 4, !dbg !1746
  br label %17, !dbg !1750

; <label>:17:                                     ; preds = %56, %4
  %18 = load i8, i8* %6, align 1, !dbg !1751
  %19 = call i8* @StrUtil_GetNextItem(i8** %10, i8 signext %18), !dbg !1753
  store i8* %19, i8** %9, align 8, !dbg !1754
  %20 = icmp ne i8* %19, null, !dbg !1755
  br i1 %20, label %21, label %57, !dbg !1756

; <label>:21:                                     ; preds = %17
  %22 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %8, align 8, !dbg !1757
  %23 = load i8*, i8** %9, align 8, !dbg !1760
  %24 = load i8*, i8** %7, align 8, !dbg !1761
  %25 = call i32 %22(i8* %23, i8* %24), !dbg !1757
  %26 = icmp eq i32 %25, 0, !dbg !1762
  br i1 %26, label %27, label %48, !dbg !1763

; <label>:27:                                     ; preds = %21
  %28 = load i8*, i8** %10, align 8, !dbg !1764
  %29 = icmp ne i8* %28, null, !dbg !1767
  br i1 %29, label %30, label %36, !dbg !1768

; <label>:30:                                     ; preds = %27
  %31 = load i8*, i8** %9, align 8, !dbg !1769
  %32 = load i8*, i8** %10, align 8, !dbg !1771
  %33 = load i32, i32* %11, align 4, !dbg !1772
  %34 = sext i32 %33 to i64, !dbg !1772
  %35 = call i8* @Str_Strcpy(i8* %31, i8* %32, i64 %34), !dbg !1773
  br label %47, !dbg !1774

; <label>:36:                                     ; preds = %27
  %37 = load i8*, i8** %9, align 8, !dbg !1775
  %38 = load i8*, i8** %5, align 8, !dbg !1778
  %39 = icmp eq i8* %37, %38, !dbg !1779
  br i1 %39, label %40, label %43, !dbg !1775

; <label>:40:                                     ; preds = %36
  %41 = load i8*, i8** %9, align 8, !dbg !1780
  %42 = getelementptr inbounds i8, i8* %41, i64 0, !dbg !1780
  store i8 0, i8* %42, align 1, !dbg !1782
  br label %46, !dbg !1783

; <label>:43:                                     ; preds = %36
  %44 = load i8*, i8** %9, align 8, !dbg !1784
  %45 = getelementptr inbounds i8, i8* %44, i64 -1, !dbg !1784
  store i8 0, i8* %45, align 1, !dbg !1786
  br label %46

; <label>:46:                                     ; preds = %43, %40
  br label %47

; <label>:47:                                     ; preds = %46, %30
  br label %57, !dbg !1787

; <label>:48:                                     ; preds = %21
  %49 = load i8*, i8** %10, align 8, !dbg !1788
  %50 = icmp ne i8* %49, null, !dbg !1790
  br i1 %50, label %51, label %55, !dbg !1791

; <label>:51:                                     ; preds = %48
  %52 = load i8, i8* %6, align 1, !dbg !1792
  %53 = load i8*, i8** %10, align 8, !dbg !1794
  %54 = getelementptr inbounds i8, i8* %53, i64 -1, !dbg !1794
  store i8 %52, i8* %54, align 1, !dbg !1795
  br label %55, !dbg !1796

; <label>:55:                                     ; preds = %51, %48
  br label %56

; <label>:56:                                     ; preds = %55
  br label %17, !dbg !1797, !llvm.loop !1799

; <label>:57:                                     ; preds = %47, %17
  ret void, !dbg !1800
}

; Function Attrs: nounwind uwtable
define internal i32 @StrUtilStrcmp(i8*, i8*) #0 !dbg !1801 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1802, metadata !55), !dbg !1803
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1804, metadata !55), !dbg !1805
  %5 = load i8*, i8** %3, align 8, !dbg !1806
  %6 = load i8*, i8** %4, align 8, !dbg !1807
  %7 = call i32 @strcmp(i8* %5, i8* %6) #10, !dbg !1808
  ret i32 %7, !dbg !1809
}

; Function Attrs: nounwind uwtable
define void @StrUtil_RemoveListItemCase(i8*, i8 signext, i8*) #0 !dbg !1810 {
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1811, metadata !55), !dbg !1812
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1813, metadata !55), !dbg !1814
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1815, metadata !55), !dbg !1816
  %7 = load i8*, i8** %4, align 8, !dbg !1817
  %8 = load i8, i8* %5, align 1, !dbg !1818
  %9 = load i8*, i8** %6, align 8, !dbg !1819
  call void @StrUtilRemoveListItem(i8* %7, i8 signext %8, i8* %9, i32 (i8*, i8*)* @StrUtilStrcasecmp), !dbg !1820
  ret void, !dbg !1821
}

; Function Attrs: nounwind uwtable
define internal i32 @StrUtilStrcasecmp(i8*, i8*) #0 !dbg !1822 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1823, metadata !55), !dbg !1824
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1825, metadata !55), !dbg !1826
  %5 = load i8*, i8** %3, align 8, !dbg !1827
  %6 = load i8*, i8** %4, align 8, !dbg !1828
  %7 = call i32 @strcasecmp(i8* %5, i8* %6) #10, !dbg !1829
  ret i32 %7, !dbg !1830
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #2

declare i8* @Str_Strcpy(i8*, i8*, i64) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readonly }
attributes #11 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!45, !46}
!llvm.ident = !{!47}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !18, globals: !37)
!1 = !DIFile(filename: "strutil.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line718")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 46, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/lichi/Desktop/open-vm-tools/line718")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17}
!6 = !DIEnumerator(name: "_ISupper", value: 256)
!7 = !DIEnumerator(name: "_ISlower", value: 512)
!8 = !DIEnumerator(name: "_ISalpha", value: 1024)
!9 = !DIEnumerator(name: "_ISdigit", value: 2048)
!10 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!11 = !DIEnumerator(name: "_ISspace", value: 8192)
!12 = !DIEnumerator(name: "_ISprint", value: 16384)
!13 = !DIEnumerator(name: "_ISgraph", value: 32768)
!14 = !DIEnumerator(name: "_ISblank", value: 1)
!15 = !DIEnumerator(name: "_IScntrl", value: 2)
!16 = !DIEnumerator(name: "_ISpunct", value: 4)
!17 = !DIEnumerator(name: "_ISalnum", value: 8)
!18 = !{!19, !20, !21, !26, !29, !33, !34, !25, !36}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!20 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32", file: !22, line: 174, baseType: !23)
!22 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line718")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !24, line: 196, baseType: !25)
!24 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line718")
!25 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !22, line: 173, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !28, line: 51, baseType: !20)
!28 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line718")
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "SectorType", file: !22, line: 567, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !22, line: 171, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !28, line: 55, baseType: !32)
!32 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!33 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!35 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!36 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!37 = !{!38}
!38 = distinct !DIGlobalVariable(name: "epsilon", scope: !39, file: !40, line: 721, type: !44, isLocal: true, isDefinition: true, variable: double* @StrUtil_FormatSizeInBytesUnlocalized.epsilon)
!39 = distinct !DISubprogram(name: "StrUtil_FormatSizeInBytesUnlocalized", scope: !40, file: !40, line: 706, type: !41, isLocal: false, isDefinition: true, scopeLine: 707, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !43)
!40 = !DIFile(filename: "strutil.c", directory: "/home/lichi/Desktop/open-vm-tools/line718")
!41 = !DISubroutineType(types: !42)
!42 = !{!34, !30}
!43 = !{}
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!45 = !{i32 2, !"Dwarf Version", i32 4}
!46 = !{i32 2, !"Debug Info Version", i32 3}
!47 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!48 = distinct !DISubprogram(name: "StrUtil_GetNextToken", scope: !40, file: !40, line: 90, type: !49, isLocal: false, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !43)
!49 = !DISubroutineType(types: !50)
!50 = !{!34, !51, !52, !52}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!54 = !DILocalVariable(name: "index", arg: 1, scope: !48, file: !40, line: 90, type: !51)
!55 = !DIExpression()
!56 = !DILocation(line: 90, column: 36, scope: !48)
!57 = !DILocalVariable(name: "str", arg: 2, scope: !48, file: !40, line: 91, type: !52)
!58 = !DILocation(line: 91, column: 34, scope: !48)
!59 = !DILocalVariable(name: "delimiters", arg: 3, scope: !48, file: !40, line: 92, type: !52)
!60 = !DILocation(line: 92, column: 34, scope: !48)
!61 = !DILocalVariable(name: "startIndex", scope: !48, file: !40, line: 94, type: !20)
!62 = !DILocation(line: 94, column: 17, scope: !48)
!63 = !DILocalVariable(name: "length", scope: !48, file: !40, line: 95, type: !20)
!64 = !DILocation(line: 95, column: 17, scope: !48)
!65 = !DILocalVariable(name: "token", scope: !48, file: !40, line: 96, type: !34)
!66 = !DILocation(line: 96, column: 10, scope: !48)
!67 = !DILocation(line: 106, column: 4, scope: !48)
!68 = !DILocation(line: 107, column: 16, scope: !69)
!69 = distinct !DILexicalBlock(scope: !70, file: !40, line: 107, column: 11)
!70 = distinct !DILexicalBlock(scope: !71, file: !40, line: 106, column: 25)
!71 = distinct !DILexicalBlock(scope: !72, file: !40, line: 106, column: 4)
!72 = distinct !DILexicalBlock(scope: !48, file: !40, line: 106, column: 4)
!73 = !DILocation(line: 107, column: 15, scope: !69)
!74 = !DILocation(line: 107, column: 11, scope: !69)
!75 = !DILocation(line: 107, column: 23, scope: !69)
!76 = !DILocation(line: 107, column: 11, scope: !70)
!77 = !DILocation(line: 108, column: 10, scope: !78)
!78 = distinct !DILexicalBlock(scope: !69, file: !40, line: 107, column: 32)
!79 = !DILocation(line: 111, column: 19, scope: !80)
!80 = distinct !DILexicalBlock(scope: !70, file: !40, line: 111, column: 11)
!81 = !DILocation(line: 111, column: 36, scope: !80)
!82 = !DILocation(line: 111, column: 35, scope: !80)
!83 = !DILocation(line: 111, column: 31, scope: !80)
!84 = !DILocation(line: 111, column: 12, scope: !80)
!85 = !DILocation(line: 111, column: 44, scope: !80)
!86 = !DILocation(line: 111, column: 11, scope: !70)
!87 = !DILocation(line: 112, column: 10, scope: !88)
!88 = distinct !DILexicalBlock(scope: !80, file: !40, line: 111, column: 13)
!89 = !DILocation(line: 114, column: 4, scope: !70)
!90 = !DILocation(line: 106, column: 15, scope: !91)
!91 = !DILexicalBlockFile(scope: !71, file: !40, discriminator: 1)
!92 = !DILocation(line: 106, column: 21, scope: !91)
!93 = !DILocation(line: 106, column: 4, scope: !91)
!94 = distinct !{!94, !67}
!95 = !DILocation(line: 115, column: 18, scope: !48)
!96 = !DILocation(line: 115, column: 17, scope: !48)
!97 = !DILocation(line: 115, column: 15, scope: !48)
!98 = !DILocation(line: 121, column: 11, scope: !99)
!99 = distinct !DILexicalBlock(scope: !48, file: !40, line: 121, column: 4)
!100 = !DILocation(line: 121, column: 17, scope: !99)
!101 = !DILocation(line: 121, column: 9, scope: !99)
!102 = !DILocation(line: 121, column: 26, scope: !103)
!103 = !DILexicalBlockFile(scope: !104, file: !40, discriminator: 1)
!104 = distinct !DILexicalBlock(scope: !99, file: !40, line: 121, column: 4)
!105 = !DILocation(line: 121, column: 25, scope: !103)
!106 = !DILocation(line: 121, column: 21, scope: !103)
!107 = !DILocation(line: 121, column: 33, scope: !103)
!108 = !DILocation(line: 121, column: 41, scope: !103)
!109 = !DILocation(line: 121, column: 52, scope: !110)
!110 = !DILexicalBlockFile(scope: !104, file: !40, discriminator: 2)
!111 = !DILocation(line: 121, column: 69, scope: !110)
!112 = !DILocation(line: 121, column: 68, scope: !110)
!113 = !DILocation(line: 121, column: 64, scope: !110)
!114 = !DILocation(line: 121, column: 45, scope: !110)
!115 = !DILocation(line: 121, column: 77, scope: !110)
!116 = !DILocation(line: 121, column: 4, scope: !117)
!117 = !DILexicalBlockFile(scope: !99, file: !40, discriminator: 3)
!118 = !DILocation(line: 122, column: 4, scope: !119)
!119 = distinct !DILexicalBlock(scope: !104, file: !40, line: 121, column: 58)
!120 = !DILocation(line: 121, column: 48, scope: !121)
!121 = !DILexicalBlockFile(scope: !104, file: !40, discriminator: 4)
!122 = !DILocation(line: 121, column: 54, scope: !121)
!123 = !DILocation(line: 121, column: 4, scope: !121)
!124 = distinct !{!124, !125}
!125 = !DILocation(line: 121, column: 4, scope: !48)
!126 = !DILocation(line: 126, column: 14, scope: !48)
!127 = !DILocation(line: 126, column: 13, scope: !48)
!128 = !DILocation(line: 126, column: 22, scope: !48)
!129 = !DILocation(line: 126, column: 20, scope: !48)
!130 = !DILocation(line: 126, column: 11, scope: !48)
!131 = !DILocation(line: 128, column: 29, scope: !48)
!132 = !DILocation(line: 128, column: 36, scope: !48)
!133 = !DILocation(line: 128, column: 28, scope: !48)
!134 = !DILocation(line: 128, column: 12, scope: !48)
!135 = !DILocation(line: 128, column: 10, scope: !48)
!136 = !DILocation(line: 129, column: 11, scope: !48)
!137 = !DILocation(line: 129, column: 18, scope: !48)
!138 = !DILocation(line: 129, column: 24, scope: !48)
!139 = !DILocation(line: 129, column: 22, scope: !48)
!140 = !DILocation(line: 129, column: 36, scope: !48)
!141 = !DILocation(line: 129, column: 4, scope: !48)
!142 = !DILocation(line: 130, column: 10, scope: !48)
!143 = !DILocation(line: 130, column: 4, scope: !48)
!144 = !DILocation(line: 130, column: 18, scope: !48)
!145 = !DILocation(line: 132, column: 11, scope: !48)
!146 = !DILocation(line: 132, column: 4, scope: !48)
!147 = !DILocation(line: 133, column: 1, scope: !48)
!148 = distinct !DISubprogram(name: "StrUtil_GetNextIntToken", scope: !40, file: !40, line: 154, type: !149, isLocal: false, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !43)
!149 = !DISubroutineType(types: !150)
!150 = !{!151, !152, !51, !52, !52}
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !22, line: 230, baseType: !35)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!153 = !DILocalVariable(name: "out", arg: 1, scope: !148, file: !40, line: 154, type: !152)
!154 = !DILocation(line: 154, column: 32, scope: !148)
!155 = !DILocalVariable(name: "index", arg: 2, scope: !148, file: !40, line: 155, type: !51)
!156 = !DILocation(line: 155, column: 39, scope: !148)
!157 = !DILocalVariable(name: "str", arg: 3, scope: !148, file: !40, line: 156, type: !52)
!158 = !DILocation(line: 156, column: 37, scope: !148)
!159 = !DILocalVariable(name: "delimiters", arg: 4, scope: !148, file: !40, line: 157, type: !52)
!160 = !DILocation(line: 157, column: 37, scope: !148)
!161 = !DILocalVariable(name: "resultStr", scope: !148, file: !40, line: 159, type: !34)
!162 = !DILocation(line: 159, column: 10, scope: !148)
!163 = !DILocalVariable(name: "valid", scope: !148, file: !40, line: 160, type: !151)
!164 = !DILocation(line: 160, column: 9, scope: !148)
!165 = !DILocation(line: 167, column: 37, scope: !148)
!166 = !DILocation(line: 167, column: 44, scope: !148)
!167 = !DILocation(line: 167, column: 49, scope: !148)
!168 = !DILocation(line: 167, column: 16, scope: !148)
!169 = !DILocation(line: 167, column: 14, scope: !148)
!170 = !DILocation(line: 168, column: 8, scope: !171)
!171 = distinct !DILexicalBlock(scope: !148, file: !40, line: 168, column: 8)
!172 = !DILocation(line: 168, column: 18, scope: !171)
!173 = !DILocation(line: 168, column: 8, scope: !148)
!174 = !DILocation(line: 169, column: 7, scope: !175)
!175 = distinct !DILexicalBlock(scope: !171, file: !40, line: 168, column: 26)
!176 = !DILocation(line: 172, column: 29, scope: !148)
!177 = !DILocation(line: 172, column: 34, scope: !148)
!178 = !DILocation(line: 172, column: 12, scope: !148)
!179 = !DILocation(line: 172, column: 10, scope: !148)
!180 = !DILocation(line: 173, column: 9, scope: !148)
!181 = !DILocation(line: 173, column: 4, scope: !148)
!182 = !DILocation(line: 175, column: 11, scope: !148)
!183 = !DILocation(line: 175, column: 4, scope: !148)
!184 = !DILocation(line: 176, column: 1, scope: !148)
!185 = distinct !DISubprogram(name: "StrUtil_StrToInt", scope: !40, file: !40, line: 320, type: !186, isLocal: false, isDefinition: true, scopeLine: 322, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !43)
!186 = !DISubroutineType(types: !187)
!187 = !{!151, !152, !52}
!188 = !DILocalVariable(name: "out", arg: 1, scope: !185, file: !40, line: 320, type: !152)
!189 = !DILocation(line: 320, column: 25, scope: !185)
!190 = !DILocalVariable(name: "str", arg: 2, scope: !185, file: !40, line: 321, type: !52)
!191 = !DILocation(line: 321, column: 30, scope: !185)
!192 = !DILocalVariable(name: "ptr", scope: !185, file: !40, line: 323, type: !34)
!193 = !DILocation(line: 323, column: 10, scope: !185)
!194 = !DILocalVariable(name: "val", scope: !185, file: !40, line: 324, type: !195)
!195 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!196 = !DILocation(line: 324, column: 9, scope: !185)
!197 = !DILocation(line: 329, column: 5, scope: !185)
!198 = !DILocation(line: 329, column: 9, scope: !185)
!199 = !DILocation(line: 331, column: 17, scope: !185)
!200 = !DILocation(line: 331, column: 10, scope: !185)
!201 = !DILocation(line: 331, column: 8, scope: !185)
!202 = !DILocation(line: 332, column: 18, scope: !185)
!203 = !DILocation(line: 332, column: 11, scope: !185)
!204 = !DILocation(line: 332, column: 5, scope: !185)
!205 = !DILocation(line: 332, column: 9, scope: !185)
!206 = !DILocation(line: 339, column: 11, scope: !185)
!207 = !DILocation(line: 339, column: 18, scope: !185)
!208 = !DILocation(line: 339, column: 15, scope: !185)
!209 = !DILocation(line: 339, column: 22, scope: !185)
!210 = !DILocation(line: 339, column: 26, scope: !211)
!211 = !DILexicalBlockFile(scope: !185, file: !40, discriminator: 1)
!212 = !DILocation(line: 339, column: 25, scope: !211)
!213 = !DILocation(line: 339, column: 30, scope: !211)
!214 = !DILocation(line: 339, column: 38, scope: !211)
!215 = !DILocation(line: 339, column: 42, scope: !216)
!216 = !DILexicalBlockFile(scope: !185, file: !40, discriminator: 2)
!217 = !DILocation(line: 339, column: 41, scope: !216)
!218 = !DILocation(line: 339, column: 46, scope: !216)
!219 = !DILocation(line: 339, column: 56, scope: !216)
!220 = !DILocation(line: 340, column: 12, scope: !185)
!221 = !DILocation(line: 340, column: 26, scope: !185)
!222 = !DILocation(line: 340, column: 19, scope: !185)
!223 = !DILocation(line: 340, column: 16, scope: !185)
!224 = !DILocation(line: 340, column: 30, scope: !185)
!225 = !DILocation(line: 340, column: 33, scope: !211)
!226 = !DILocation(line: 340, column: 48, scope: !211)
!227 = !DILocation(line: 340, column: 40, scope: !211)
!228 = !DILocation(line: 340, column: 37, scope: !211)
!229 = !DILocation(line: 340, column: 30, scope: !211)
!230 = !DILocation(line: 339, column: 56, scope: !231)
!231 = !DILexicalBlockFile(scope: !185, file: !40, discriminator: 3)
!232 = !DILocation(line: 339, column: 11, scope: !231)
!233 = !DILocation(line: 339, column: 4, scope: !231)
!234 = distinct !DISubprogram(name: "StrUtil_GetNextUintToken", scope: !40, file: !40, line: 197, type: !235, isLocal: false, isDefinition: true, scopeLine: 201, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !43)
!235 = !DISubroutineType(types: !236)
!236 = !{!151, !237, !51, !52, !52}
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!238 = !DILocalVariable(name: "out", arg: 1, scope: !234, file: !40, line: 197, type: !237)
!239 = !DILocation(line: 197, column: 34, scope: !234)
!240 = !DILocalVariable(name: "index", arg: 2, scope: !234, file: !40, line: 198, type: !51)
!241 = !DILocation(line: 198, column: 40, scope: !234)
!242 = !DILocalVariable(name: "str", arg: 3, scope: !234, file: !40, line: 199, type: !52)
!243 = !DILocation(line: 199, column: 38, scope: !234)
!244 = !DILocalVariable(name: "delimiters", arg: 4, scope: !234, file: !40, line: 200, type: !52)
!245 = !DILocation(line: 200, column: 38, scope: !234)
!246 = !DILocalVariable(name: "resultStr", scope: !234, file: !40, line: 202, type: !34)
!247 = !DILocation(line: 202, column: 10, scope: !234)
!248 = !DILocalVariable(name: "valid", scope: !234, file: !40, line: 203, type: !151)
!249 = !DILocation(line: 203, column: 9, scope: !234)
!250 = !DILocation(line: 210, column: 37, scope: !234)
!251 = !DILocation(line: 210, column: 44, scope: !234)
!252 = !DILocation(line: 210, column: 49, scope: !234)
!253 = !DILocation(line: 210, column: 16, scope: !234)
!254 = !DILocation(line: 210, column: 14, scope: !234)
!255 = !DILocation(line: 211, column: 8, scope: !256)
!256 = distinct !DILexicalBlock(scope: !234, file: !40, line: 211, column: 8)
!257 = !DILocation(line: 211, column: 18, scope: !256)
!258 = !DILocation(line: 211, column: 8, scope: !234)
!259 = !DILocation(line: 212, column: 7, scope: !260)
!260 = distinct !DILexicalBlock(scope: !256, file: !40, line: 211, column: 26)
!261 = !DILocation(line: 215, column: 30, scope: !234)
!262 = !DILocation(line: 215, column: 35, scope: !234)
!263 = !DILocation(line: 215, column: 12, scope: !234)
!264 = !DILocation(line: 215, column: 10, scope: !234)
!265 = !DILocation(line: 216, column: 9, scope: !234)
!266 = !DILocation(line: 216, column: 4, scope: !234)
!267 = !DILocation(line: 218, column: 11, scope: !234)
!268 = !DILocation(line: 218, column: 4, scope: !234)
!269 = !DILocation(line: 219, column: 1, scope: !234)
!270 = distinct !DISubprogram(name: "StrUtil_StrToUint", scope: !40, file: !40, line: 362, type: !271, isLocal: false, isDefinition: true, scopeLine: 364, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !43)
!271 = !DISubroutineType(types: !272)
!272 = !{!151, !237, !52}
!273 = !DILocalVariable(name: "out", arg: 1, scope: !270, file: !40, line: 362, type: !237)
!274 = !DILocation(line: 362, column: 27, scope: !270)
!275 = !DILocalVariable(name: "str", arg: 2, scope: !270, file: !40, line: 363, type: !52)
!276 = !DILocation(line: 363, column: 31, scope: !270)
!277 = !DILocalVariable(name: "ptr", scope: !270, file: !40, line: 365, type: !34)
!278 = !DILocation(line: 365, column: 10, scope: !270)
!279 = !DILocalVariable(name: "val", scope: !270, file: !40, line: 366, type: !32)
!280 = !DILocation(line: 366, column: 18, scope: !270)
!281 = !DILocation(line: 371, column: 5, scope: !270)
!282 = !DILocation(line: 371, column: 9, scope: !270)
!283 = !DILocation(line: 373, column: 18, scope: !270)
!284 = !DILocation(line: 373, column: 10, scope: !270)
!285 = !DILocation(line: 373, column: 8, scope: !270)
!286 = !DILocation(line: 374, column: 19, scope: !270)
!287 = !DILocation(line: 374, column: 11, scope: !270)
!288 = !DILocation(line: 374, column: 5, scope: !270)
!289 = !DILocation(line: 374, column: 9, scope: !270)
!290 = !DILocation(line: 381, column: 11, scope: !270)
!291 = !DILocation(line: 381, column: 18, scope: !270)
!292 = !DILocation(line: 381, column: 15, scope: !270)
!293 = !DILocation(line: 381, column: 22, scope: !270)
!294 = !DILocation(line: 381, column: 26, scope: !295)
!295 = !DILexicalBlockFile(scope: !270, file: !40, discriminator: 1)
!296 = !DILocation(line: 381, column: 25, scope: !295)
!297 = !DILocation(line: 381, column: 30, scope: !295)
!298 = !DILocation(line: 381, column: 38, scope: !295)
!299 = !DILocation(line: 381, column: 42, scope: !300)
!300 = !DILexicalBlockFile(scope: !270, file: !40, discriminator: 2)
!301 = !DILocation(line: 381, column: 41, scope: !300)
!302 = !DILocation(line: 381, column: 46, scope: !300)
!303 = !DILocation(line: 381, column: 56, scope: !300)
!304 = !DILocation(line: 382, column: 12, scope: !270)
!305 = !DILocation(line: 382, column: 27, scope: !270)
!306 = !DILocation(line: 382, column: 19, scope: !270)
!307 = !DILocation(line: 382, column: 16, scope: !270)
!308 = !DILocation(line: 382, column: 31, scope: !270)
!309 = !DILocation(line: 382, column: 34, scope: !295)
!310 = !DILocation(line: 382, column: 48, scope: !295)
!311 = !DILocation(line: 382, column: 41, scope: !295)
!312 = !DILocation(line: 382, column: 38, scope: !295)
!313 = !DILocation(line: 382, column: 31, scope: !295)
!314 = !DILocation(line: 381, column: 56, scope: !315)
!315 = !DILexicalBlockFile(scope: !270, file: !40, discriminator: 3)
!316 = !DILocation(line: 381, column: 11, scope: !315)
!317 = !DILocation(line: 381, column: 4, scope: !315)
!318 = distinct !DISubprogram(name: "StrUtil_GetNextInt64Token", scope: !40, file: !40, line: 240, type: !319, isLocal: false, isDefinition: true, scopeLine: 244, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !43)
!319 = !DISubroutineType(types: !320)
!320 = !{!151, !321, !51, !52, !52}
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64, align: 64)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !22, line: 172, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !24, line: 197, baseType: !195)
!324 = !DILocalVariable(name: "out", arg: 1, scope: !318, file: !40, line: 240, type: !321)
!325 = !DILocation(line: 240, column: 34, scope: !318)
!326 = !DILocalVariable(name: "index", arg: 2, scope: !318, file: !40, line: 241, type: !51)
!327 = !DILocation(line: 241, column: 41, scope: !318)
!328 = !DILocalVariable(name: "str", arg: 3, scope: !318, file: !40, line: 242, type: !52)
!329 = !DILocation(line: 242, column: 39, scope: !318)
!330 = !DILocalVariable(name: "delimiters", arg: 4, scope: !318, file: !40, line: 243, type: !52)
!331 = !DILocation(line: 243, column: 39, scope: !318)
!332 = !DILocalVariable(name: "resultStr", scope: !318, file: !40, line: 245, type: !34)
!333 = !DILocation(line: 245, column: 10, scope: !318)
!334 = !DILocalVariable(name: "result", scope: !318, file: !40, line: 246, type: !151)
!335 = !DILocation(line: 246, column: 9, scope: !318)
!336 = !DILocation(line: 253, column: 37, scope: !318)
!337 = !DILocation(line: 253, column: 44, scope: !318)
!338 = !DILocation(line: 253, column: 49, scope: !318)
!339 = !DILocation(line: 253, column: 16, scope: !318)
!340 = !DILocation(line: 253, column: 14, scope: !318)
!341 = !DILocation(line: 254, column: 13, scope: !318)
!342 = !DILocation(line: 254, column: 44, scope: !343)
!343 = !DILexicalBlockFile(scope: !318, file: !40, discriminator: 1)
!344 = !DILocation(line: 254, column: 49, scope: !343)
!345 = !DILocation(line: 254, column: 25, scope: !343)
!346 = !DILocation(line: 254, column: 13, scope: !343)
!347 = !DILocation(line: 254, column: 13, scope: !348)
!348 = !DILexicalBlockFile(scope: !318, file: !40, discriminator: 2)
!349 = !DILocation(line: 254, column: 13, scope: !350)
!350 = !DILexicalBlockFile(scope: !318, file: !40, discriminator: 3)
!351 = !DILocation(line: 254, column: 11, scope: !350)
!352 = !DILocation(line: 255, column: 9, scope: !318)
!353 = !DILocation(line: 255, column: 4, scope: !318)
!354 = !DILocation(line: 257, column: 11, scope: !318)
!355 = !DILocation(line: 257, column: 4, scope: !318)
!356 = distinct !DISubprogram(name: "StrUtil_StrToInt64", scope: !40, file: !40, line: 404, type: !357, isLocal: false, isDefinition: true, scopeLine: 406, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !43)
!357 = !DISubroutineType(types: !358)
!358 = !{!151, !321, !52}
!359 = !DILocalVariable(name: "out", arg: 1, scope: !356, file: !40, line: 404, type: !321)
!360 = !DILocation(line: 404, column: 27, scope: !356)
!361 = !DILocalVariable(name: "str", arg: 2, scope: !356, file: !40, line: 405, type: !52)
!362 = !DILocation(line: 405, column: 32, scope: !356)
!363 = !DILocalVariable(name: "ptr", scope: !356, file: !40, line: 407, type: !34)
!364 = !DILocation(line: 407, column: 10, scope: !356)
!365 = !DILocation(line: 412, column: 5, scope: !356)
!366 = !DILocation(line: 412, column: 9, scope: !356)
!367 = !DILocation(line: 419, column: 19, scope: !356)
!368 = !DILocation(line: 419, column: 11, scope: !356)
!369 = !DILocation(line: 419, column: 5, scope: !356)
!370 = !DILocation(line: 419, column: 9, scope: !356)
!371 = !DILocation(line: 422, column: 11, scope: !356)
!372 = !DILocation(line: 422, column: 18, scope: !356)
!373 = !DILocation(line: 422, column: 15, scope: !356)
!374 = !DILocation(line: 422, column: 22, scope: !356)
!375 = !DILocation(line: 422, column: 25, scope: !376)
!376 = !DILexicalBlockFile(scope: !356, file: !40, discriminator: 1)
!377 = !DILocation(line: 422, column: 32, scope: !376)
!378 = !DILocation(line: 422, column: 40, scope: !376)
!379 = !DILocation(line: 422, column: 44, scope: !380)
!380 = !DILexicalBlockFile(scope: !356, file: !40, discriminator: 2)
!381 = !DILocation(line: 422, column: 43, scope: !380)
!382 = !DILocation(line: 422, column: 48, scope: !380)
!383 = !DILocation(line: 422, column: 40, scope: !384)
!384 = !DILexicalBlockFile(scope: !356, file: !40, discriminator: 3)
!385 = !DILocation(line: 422, column: 11, scope: !384)
!386 = !DILocation(line: 422, column: 4, scope: !384)
!387 = distinct !DISubprogram(name: "StrUtil_DecimalStrToUint", scope: !40, file: !40, line: 281, type: !388, isLocal: false, isDefinition: true, scopeLine: 283, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !43)
!388 = !DISubroutineType(types: !389)
!389 = !{!151, !51, !390}
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!391 = !DILocalVariable(name: "out", arg: 1, scope: !387, file: !40, line: 281, type: !51)
!392 = !DILocation(line: 281, column: 40, scope: !387)
!393 = !DILocalVariable(name: "str", arg: 2, scope: !387, file: !40, line: 282, type: !390)
!394 = !DILocation(line: 282, column: 39, scope: !387)
!395 = !DILocalVariable(name: "val", scope: !387, file: !40, line: 284, type: !32)
!396 = !DILocation(line: 284, column: 18, scope: !387)
!397 = !DILocalVariable(name: "ptr", scope: !387, file: !40, line: 285, type: !34)
!398 = !DILocation(line: 285, column: 10, scope: !387)
!399 = !DILocation(line: 290, column: 5, scope: !387)
!400 = !DILocation(line: 290, column: 9, scope: !387)
!401 = !DILocation(line: 291, column: 19, scope: !387)
!402 = !DILocation(line: 291, column: 18, scope: !387)
!403 = !DILocation(line: 291, column: 10, scope: !387)
!404 = !DILocation(line: 291, column: 8, scope: !387)
!405 = !DILocation(line: 292, column: 8, scope: !406)
!406 = distinct !DILexicalBlock(scope: !387, file: !40, line: 292, column: 8)
!407 = !DILocation(line: 292, column: 16, scope: !406)
!408 = !DILocation(line: 292, column: 15, scope: !406)
!409 = !DILocation(line: 292, column: 12, scope: !406)
!410 = !DILocation(line: 292, column: 20, scope: !406)
!411 = !DILocation(line: 292, column: 24, scope: !412)
!412 = !DILexicalBlockFile(scope: !406, file: !40, discriminator: 1)
!413 = !DILocation(line: 292, column: 23, scope: !412)
!414 = !DILocation(line: 292, column: 28, scope: !412)
!415 = !DILocation(line: 292, column: 38, scope: !412)
!416 = !DILocation(line: 292, column: 41, scope: !417)
!417 = !DILexicalBlockFile(scope: !406, file: !40, discriminator: 2)
!418 = !DILocation(line: 292, column: 62, scope: !417)
!419 = !DILocation(line: 292, column: 48, scope: !417)
!420 = !DILocation(line: 292, column: 45, scope: !417)
!421 = !DILocation(line: 292, column: 8, scope: !417)
!422 = !DILocation(line: 293, column: 7, scope: !423)
!423 = distinct !DILexicalBlock(scope: !406, file: !40, line: 292, column: 67)
!424 = !DILocation(line: 295, column: 11, scope: !387)
!425 = !DILocation(line: 295, column: 5, scope: !387)
!426 = !DILocation(line: 295, column: 9, scope: !387)
!427 = !DILocation(line: 296, column: 25, scope: !387)
!428 = !DILocation(line: 296, column: 11, scope: !387)
!429 = !DILocation(line: 296, column: 5, scope: !387)
!430 = !DILocation(line: 296, column: 9, scope: !387)
!431 = !DILocation(line: 297, column: 4, scope: !387)
!432 = !DILocation(line: 298, column: 1, scope: !387)
!433 = distinct !DISubprogram(name: "StrUtil_StrToUint64", scope: !40, file: !40, line: 444, type: !434, isLocal: false, isDefinition: true, scopeLine: 446, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !43)
!434 = !DISubroutineType(types: !435)
!435 = !{!151, !436, !52}
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!437 = !DILocalVariable(name: "out", arg: 1, scope: !433, file: !40, line: 444, type: !436)
!438 = !DILocation(line: 444, column: 29, scope: !433)
!439 = !DILocalVariable(name: "str", arg: 2, scope: !433, file: !40, line: 445, type: !52)
!440 = !DILocation(line: 445, column: 33, scope: !433)
!441 = !DILocalVariable(name: "ptr", scope: !433, file: !40, line: 447, type: !34)
!442 = !DILocation(line: 447, column: 10, scope: !433)
!443 = !DILocation(line: 452, column: 5, scope: !433)
!444 = !DILocation(line: 452, column: 9, scope: !433)
!445 = !DILocation(line: 459, column: 20, scope: !433)
!446 = !DILocation(line: 459, column: 11, scope: !433)
!447 = !DILocation(line: 459, column: 5, scope: !433)
!448 = !DILocation(line: 459, column: 9, scope: !433)
!449 = !DILocation(line: 462, column: 11, scope: !433)
!450 = !DILocation(line: 462, column: 18, scope: !433)
!451 = !DILocation(line: 462, column: 15, scope: !433)
!452 = !DILocation(line: 462, column: 22, scope: !433)
!453 = !DILocation(line: 462, column: 25, scope: !454)
!454 = !DILexicalBlockFile(scope: !433, file: !40, discriminator: 1)
!455 = !DILocation(line: 462, column: 32, scope: !454)
!456 = !DILocation(line: 462, column: 40, scope: !454)
!457 = !DILocation(line: 462, column: 44, scope: !458)
!458 = !DILexicalBlockFile(scope: !433, file: !40, discriminator: 2)
!459 = !DILocation(line: 462, column: 43, scope: !458)
!460 = !DILocation(line: 462, column: 48, scope: !458)
!461 = !DILocation(line: 462, column: 58, scope: !458)
!462 = !DILocation(line: 462, column: 63, scope: !463)
!463 = !DILexicalBlockFile(scope: !433, file: !40, discriminator: 3)
!464 = !DILocation(line: 462, column: 62, scope: !463)
!465 = !DILocation(line: 462, column: 67, scope: !463)
!466 = !DILocation(line: 462, column: 58, scope: !467)
!467 = !DILexicalBlockFile(scope: !433, file: !40, discriminator: 4)
!468 = !DILocation(line: 462, column: 11, scope: !467)
!469 = !DILocation(line: 462, column: 4, scope: !467)
!470 = distinct !DISubprogram(name: "StrUtil_StrToSizet", scope: !40, file: !40, line: 485, type: !471, isLocal: false, isDefinition: true, scopeLine: 487, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !43)
!471 = !DISubroutineType(types: !472)
!472 = !{!151, !473, !52}
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64, align: 64)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !475, line: 216, baseType: !32)
!475 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line718")
!476 = !DILocalVariable(name: "out", arg: 1, scope: !470, file: !40, line: 485, type: !473)
!477 = !DILocation(line: 485, column: 28, scope: !470)
!478 = !DILocalVariable(name: "str", arg: 2, scope: !470, file: !40, line: 486, type: !52)
!479 = !DILocation(line: 486, column: 32, scope: !470)
!480 = !DILocalVariable(name: "ptr", scope: !470, file: !40, line: 488, type: !34)
!481 = !DILocation(line: 488, column: 10, scope: !470)
!482 = !DILocation(line: 493, column: 5, scope: !470)
!483 = !DILocation(line: 493, column: 9, scope: !470)
!484 = !DILocation(line: 495, column: 4, scope: !470)
!485 = distinct !{!485, !484}
!486 = !DILocation(line: 495, column: 89, scope: !487)
!487 = !DILexicalBlockFile(scope: !488, file: !40, discriminator: 1)
!488 = distinct !DILexicalBlock(scope: !470, file: !40, line: 495, column: 7)
!489 = !DILocation(line: 501, column: 20, scope: !470)
!490 = !DILocation(line: 501, column: 11, scope: !470)
!491 = !DILocation(line: 501, column: 5, scope: !470)
!492 = !DILocation(line: 501, column: 9, scope: !470)
!493 = !DILocation(line: 508, column: 11, scope: !470)
!494 = !DILocation(line: 508, column: 18, scope: !470)
!495 = !DILocation(line: 508, column: 15, scope: !470)
!496 = !DILocation(line: 508, column: 22, scope: !470)
!497 = !DILocation(line: 508, column: 26, scope: !498)
!498 = !DILexicalBlockFile(scope: !470, file: !40, discriminator: 1)
!499 = !DILocation(line: 508, column: 25, scope: !498)
!500 = !DILocation(line: 508, column: 30, scope: !498)
!501 = !DILocation(line: 508, column: 38, scope: !498)
!502 = !DILocation(line: 508, column: 42, scope: !503)
!503 = !DILexicalBlockFile(scope: !470, file: !40, discriminator: 2)
!504 = !DILocation(line: 508, column: 41, scope: !503)
!505 = !DILocation(line: 508, column: 46, scope: !503)
!506 = !DILocation(line: 508, column: 38, scope: !507)
!507 = !DILexicalBlockFile(scope: !470, file: !40, discriminator: 3)
!508 = !DILocation(line: 508, column: 11, scope: !507)
!509 = !DILocation(line: 508, column: 4, scope: !507)
!510 = distinct !DISubprogram(name: "StrUtil_StrToDouble", scope: !40, file: !40, line: 531, type: !511, isLocal: false, isDefinition: true, scopeLine: 533, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !43)
!511 = !DISubroutineType(types: !512)
!512 = !{!151, !513, !52}
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!514 = !DILocalVariable(name: "out", arg: 1, scope: !510, file: !40, line: 531, type: !513)
!515 = !DILocation(line: 531, column: 29, scope: !510)
!516 = !DILocalVariable(name: "str", arg: 2, scope: !510, file: !40, line: 532, type: !52)
!517 = !DILocation(line: 532, column: 33, scope: !510)
!518 = !DILocalVariable(name: "ptr", scope: !510, file: !40, line: 534, type: !34)
!519 = !DILocation(line: 534, column: 10, scope: !510)
!520 = !DILocation(line: 539, column: 5, scope: !510)
!521 = !DILocation(line: 539, column: 9, scope: !510)
!522 = !DILocation(line: 541, column: 18, scope: !510)
!523 = !DILocation(line: 541, column: 11, scope: !510)
!524 = !DILocation(line: 541, column: 5, scope: !510)
!525 = !DILocation(line: 541, column: 9, scope: !510)
!526 = !DILocation(line: 547, column: 11, scope: !510)
!527 = !DILocation(line: 547, column: 18, scope: !510)
!528 = !DILocation(line: 547, column: 15, scope: !510)
!529 = !DILocation(line: 547, column: 22, scope: !510)
!530 = !DILocation(line: 547, column: 26, scope: !531)
!531 = !DILexicalBlockFile(scope: !510, file: !40, discriminator: 1)
!532 = !DILocation(line: 547, column: 25, scope: !531)
!533 = !DILocation(line: 547, column: 30, scope: !531)
!534 = !DILocation(line: 547, column: 38, scope: !531)
!535 = !DILocation(line: 547, column: 42, scope: !536)
!536 = !DILexicalBlockFile(scope: !510, file: !40, discriminator: 2)
!537 = !DILocation(line: 547, column: 41, scope: !536)
!538 = !DILocation(line: 547, column: 46, scope: !536)
!539 = !DILocation(line: 547, column: 38, scope: !540)
!540 = !DILexicalBlockFile(scope: !510, file: !40, discriminator: 3)
!541 = !DILocation(line: 547, column: 11, scope: !540)
!542 = !DILocation(line: 547, column: 4, scope: !540)
!543 = distinct !DISubprogram(name: "StrUtil_CapacityToBytes", scope: !40, file: !40, line: 572, type: !544, isLocal: false, isDefinition: true, scopeLine: 577, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !43)
!544 = !DISubroutineType(types: !545)
!545 = !{!151, !436, !52, !20}
!546 = !DILocalVariable(name: "out", arg: 1, scope: !543, file: !40, line: 572, type: !436)
!547 = !DILocation(line: 572, column: 33, scope: !543)
!548 = !DILocalVariable(name: "str", arg: 2, scope: !543, file: !40, line: 573, type: !52)
!549 = !DILocation(line: 573, column: 37, scope: !543)
!550 = !DILocalVariable(name: "bytes", arg: 3, scope: !543, file: !40, line: 574, type: !20)
!551 = !DILocation(line: 574, column: 38, scope: !543)
!552 = !DILocalVariable(name: "quantity", scope: !543, file: !40, line: 578, type: !33)
!553 = !DILocation(line: 578, column: 11, scope: !543)
!554 = !DILocalVariable(name: "rest", scope: !543, file: !40, line: 579, type: !34)
!555 = !DILocation(line: 579, column: 10, scope: !543)
!556 = !DILocation(line: 584, column: 5, scope: !543)
!557 = !DILocation(line: 584, column: 9, scope: !543)
!558 = !DILocation(line: 585, column: 22, scope: !543)
!559 = !DILocation(line: 585, column: 15, scope: !543)
!560 = !DILocation(line: 585, column: 13, scope: !543)
!561 = !DILocation(line: 586, column: 9, scope: !562)
!562 = distinct !DILexicalBlock(scope: !543, file: !40, line: 586, column: 7)
!563 = !DILocation(line: 586, column: 8, scope: !562)
!564 = !DILocation(line: 586, column: 13, scope: !562)
!565 = !DILocation(line: 586, column: 7, scope: !543)
!566 = !DILocation(line: 587, column: 7, scope: !567)
!567 = distinct !DILexicalBlock(scope: !562, file: !40, line: 586, column: 24)
!568 = !DILocation(line: 591, column: 4, scope: !543)
!569 = !DILocation(line: 591, column: 12, scope: !570)
!570 = !DILexicalBlockFile(scope: !543, file: !40, discriminator: 1)
!571 = !DILocation(line: 591, column: 11, scope: !570)
!572 = !DILocation(line: 591, column: 17, scope: !570)
!573 = !DILocation(line: 591, column: 24, scope: !570)
!574 = !DILocation(line: 591, column: 28, scope: !575)
!575 = !DILexicalBlockFile(scope: !543, file: !40, discriminator: 2)
!576 = !DILocation(line: 591, column: 27, scope: !575)
!577 = !DILocation(line: 591, column: 33, scope: !575)
!578 = !DILocation(line: 591, column: 24, scope: !575)
!579 = !DILocation(line: 591, column: 4, scope: !580)
!580 = !DILexicalBlockFile(scope: !543, file: !40, discriminator: 3)
!581 = !DILocation(line: 592, column: 11, scope: !582)
!582 = distinct !DILexicalBlock(scope: !543, file: !40, line: 591, column: 42)
!583 = !DILocation(line: 591, column: 4, scope: !584)
!584 = !DILexicalBlockFile(scope: !543, file: !40, discriminator: 4)
!585 = distinct !{!585, !568}
!586 = !DILocation(line: 594, column: 9, scope: !587)
!587 = distinct !DILexicalBlock(scope: !543, file: !40, line: 594, column: 8)
!588 = !DILocation(line: 594, column: 8, scope: !587)
!589 = !DILocation(line: 594, column: 14, scope: !587)
!590 = !DILocation(line: 594, column: 8, scope: !543)
!591 = !DILocalVariable(name: "shift", scope: !592, file: !40, line: 595, type: !30)
!592 = distinct !DILexicalBlock(scope: !587, file: !40, line: 594, column: 23)
!593 = !DILocation(line: 595, column: 14, scope: !592)
!594 = !DILocalVariable(name: "suffixOK", scope: !592, file: !40, line: 596, type: !151)
!595 = !DILocation(line: 596, column: 12, scope: !592)
!596 = !DILocation(line: 606, column: 16, scope: !592)
!597 = !DILocation(line: 606, column: 15, scope: !592)
!598 = !DILocation(line: 606, column: 7, scope: !592)
!599 = !DILocation(line: 607, column: 33, scope: !600)
!600 = distinct !DILexicalBlock(scope: !592, file: !40, line: 606, column: 22)
!601 = !DILocation(line: 607, column: 47, scope: !600)
!602 = !DILocation(line: 607, column: 52, scope: !600)
!603 = !DILocation(line: 608, column: 33, scope: !600)
!604 = !DILocation(line: 608, column: 47, scope: !600)
!605 = !DILocation(line: 608, column: 52, scope: !600)
!606 = !DILocation(line: 609, column: 33, scope: !600)
!607 = !DILocation(line: 609, column: 39, scope: !600)
!608 = !DILocation(line: 610, column: 33, scope: !600)
!609 = !DILocation(line: 610, column: 39, scope: !600)
!610 = !DILocation(line: 611, column: 33, scope: !600)
!611 = !DILocation(line: 611, column: 39, scope: !600)
!612 = !DILocation(line: 612, column: 33, scope: !600)
!613 = !DILocation(line: 612, column: 39, scope: !600)
!614 = !DILocation(line: 613, column: 17, scope: !600)
!615 = !DILocation(line: 615, column: 15, scope: !592)
!616 = !DILocation(line: 615, column: 14, scope: !592)
!617 = !DILocation(line: 615, column: 7, scope: !592)
!618 = !DILocation(line: 617, column: 10, scope: !619)
!619 = distinct !DILexicalBlock(scope: !592, file: !40, line: 615, column: 23)
!620 = !DILocation(line: 619, column: 14, scope: !621)
!621 = distinct !DILexicalBlock(scope: !619, file: !40, line: 619, column: 14)
!622 = !DILocation(line: 619, column: 23, scope: !621)
!623 = !DILocation(line: 619, column: 28, scope: !624)
!624 = !DILexicalBlockFile(scope: !621, file: !40, discriminator: 1)
!625 = !DILocation(line: 619, column: 27, scope: !624)
!626 = !DILocation(line: 619, column: 14, scope: !624)
!627 = !DILocation(line: 620, column: 13, scope: !628)
!628 = distinct !DILexicalBlock(scope: !621, file: !40, line: 619, column: 36)
!629 = !DILocation(line: 619, column: 30, scope: !630)
!630 = !DILexicalBlockFile(scope: !621, file: !40, discriminator: 2)
!631 = !DILocation(line: 624, column: 10, scope: !619)
!632 = !DILocation(line: 626, column: 26, scope: !592)
!633 = !DILocation(line: 626, column: 23, scope: !592)
!634 = !DILocation(line: 626, column: 19, scope: !592)
!635 = !DILocation(line: 626, column: 16, scope: !592)
!636 = !DILocation(line: 627, column: 4, scope: !592)
!637 = !DILocation(line: 632, column: 19, scope: !638)
!638 = distinct !DILexicalBlock(scope: !587, file: !40, line: 627, column: 11)
!639 = !DILocation(line: 632, column: 16, scope: !638)
!640 = !DILocation(line: 635, column: 11, scope: !543)
!641 = !DILocation(line: 635, column: 5, scope: !543)
!642 = !DILocation(line: 635, column: 9, scope: !543)
!643 = !DILocation(line: 637, column: 4, scope: !543)
!644 = !DILocation(line: 638, column: 1, scope: !543)
!645 = distinct !DISubprogram(name: "StrUtil_CapacityToSectorType", scope: !40, file: !40, line: 661, type: !646, isLocal: false, isDefinition: true, scopeLine: 666, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !43)
!646 = !DISubroutineType(types: !647)
!647 = !{!151, !648, !52, !20}
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!649 = !DILocalVariable(name: "out", arg: 1, scope: !645, file: !40, line: 661, type: !648)
!650 = !DILocation(line: 661, column: 42, scope: !645)
!651 = !DILocalVariable(name: "str", arg: 2, scope: !645, file: !40, line: 662, type: !52)
!652 = !DILocation(line: 662, column: 42, scope: !645)
!653 = !DILocalVariable(name: "bytes", arg: 3, scope: !645, file: !40, line: 663, type: !20)
!654 = !DILocation(line: 663, column: 43, scope: !645)
!655 = !DILocalVariable(name: "quantityInBytes", scope: !645, file: !40, line: 667, type: !30)
!656 = !DILocation(line: 667, column: 11, scope: !645)
!657 = !DILocation(line: 669, column: 50, scope: !658)
!658 = distinct !DILexicalBlock(scope: !645, file: !40, line: 669, column: 8)
!659 = !DILocation(line: 669, column: 55, scope: !658)
!660 = !DILocation(line: 669, column: 8, scope: !658)
!661 = !DILocation(line: 669, column: 62, scope: !658)
!662 = !DILocation(line: 669, column: 8, scope: !645)
!663 = !DILocation(line: 670, column: 7, scope: !664)
!664 = distinct !DILexicalBlock(scope: !658, file: !40, line: 669, column: 68)
!665 = !DILocation(line: 681, column: 25, scope: !645)
!666 = !DILocation(line: 681, column: 41, scope: !645)
!667 = !DILocation(line: 681, column: 48, scope: !645)
!668 = !DILocation(line: 681, column: 5, scope: !645)
!669 = !DILocation(line: 681, column: 9, scope: !645)
!670 = !DILocation(line: 683, column: 4, scope: !645)
!671 = !DILocation(line: 684, column: 1, scope: !645)
!672 = !DILocalVariable(name: "size", arg: 1, scope: !39, file: !40, line: 706, type: !30)
!673 = !DILocation(line: 706, column: 45, scope: !39)
!674 = !DILocalVariable(name: "fmt", scope: !39, file: !40, line: 715, type: !52)
!675 = !DILocation(line: 715, column: 16, scope: !39)
!676 = !DILocalVariable(name: "sizeInSelectedUnit", scope: !39, file: !40, line: 716, type: !33)
!677 = !DILocation(line: 716, column: 11, scope: !39)
!678 = !DILocalVariable(name: "precision", scope: !39, file: !40, line: 717, type: !20)
!679 = !DILocation(line: 717, column: 17, scope: !39)
!680 = !DILocalVariable(name: "sizeFormat", scope: !39, file: !40, line: 718, type: !34)
!681 = !DILocation(line: 718, column: 10, scope: !39)
!682 = !DILocalVariable(name: "sizeString", scope: !39, file: !40, line: 719, type: !34)
!683 = !DILocation(line: 719, column: 10, scope: !39)
!684 = !DILocalVariable(name: "result", scope: !39, file: !40, line: 720, type: !34)
!685 = !DILocation(line: 720, column: 10, scope: !39)
!686 = !DILocalVariable(name: "delta", scope: !39, file: !40, line: 722, type: !33)
!687 = !DILocation(line: 722, column: 11, scope: !39)
!688 = !DILocation(line: 724, column: 8, scope: !689)
!689 = distinct !DILexicalBlock(scope: !39, file: !40, line: 724, column: 8)
!690 = !DILocation(line: 724, column: 13, scope: !689)
!691 = !DILocation(line: 724, column: 8, scope: !39)
!692 = !DILocation(line: 725, column: 11, scope: !693)
!693 = distinct !DILexicalBlock(scope: !689, file: !40, line: 724, column: 28)
!694 = !DILocation(line: 726, column: 36, scope: !693)
!695 = !DILocation(line: 726, column: 28, scope: !693)
!696 = !DILocation(line: 726, column: 41, scope: !693)
!697 = !DILocation(line: 726, column: 26, scope: !693)
!698 = !DILocation(line: 727, column: 17, scope: !693)
!699 = !DILocation(line: 728, column: 4, scope: !693)
!700 = !DILocation(line: 728, column: 15, scope: !701)
!701 = !DILexicalBlockFile(scope: !702, file: !40, discriminator: 1)
!702 = distinct !DILexicalBlock(scope: !689, file: !40, line: 728, column: 15)
!703 = !DILocation(line: 728, column: 20, scope: !701)
!704 = !DILocation(line: 729, column: 11, scope: !705)
!705 = distinct !DILexicalBlock(scope: !702, file: !40, line: 728, column: 35)
!706 = !DILocation(line: 730, column: 36, scope: !705)
!707 = !DILocation(line: 730, column: 28, scope: !705)
!708 = !DILocation(line: 730, column: 41, scope: !705)
!709 = !DILocation(line: 730, column: 26, scope: !705)
!710 = !DILocation(line: 731, column: 17, scope: !705)
!711 = !DILocation(line: 732, column: 4, scope: !705)
!712 = !DILocation(line: 732, column: 15, scope: !713)
!713 = !DILexicalBlockFile(scope: !714, file: !40, discriminator: 1)
!714 = distinct !DILexicalBlock(scope: !702, file: !40, line: 732, column: 15)
!715 = !DILocation(line: 732, column: 20, scope: !713)
!716 = !DILocation(line: 733, column: 11, scope: !717)
!717 = distinct !DILexicalBlock(scope: !714, file: !40, line: 732, column: 35)
!718 = !DILocation(line: 734, column: 36, scope: !717)
!719 = !DILocation(line: 734, column: 28, scope: !717)
!720 = !DILocation(line: 734, column: 41, scope: !717)
!721 = !DILocation(line: 734, column: 26, scope: !717)
!722 = !DILocation(line: 735, column: 17, scope: !717)
!723 = !DILocation(line: 736, column: 4, scope: !717)
!724 = !DILocation(line: 736, column: 15, scope: !725)
!725 = !DILexicalBlockFile(scope: !726, file: !40, discriminator: 1)
!726 = distinct !DILexicalBlock(scope: !714, file: !40, line: 736, column: 15)
!727 = !DILocation(line: 736, column: 20, scope: !725)
!728 = !DILocation(line: 737, column: 11, scope: !729)
!729 = distinct !DILexicalBlock(scope: !726, file: !40, line: 736, column: 35)
!730 = !DILocation(line: 738, column: 36, scope: !729)
!731 = !DILocation(line: 738, column: 28, scope: !729)
!732 = !DILocation(line: 738, column: 41, scope: !729)
!733 = !DILocation(line: 738, column: 26, scope: !729)
!734 = !DILocation(line: 739, column: 17, scope: !729)
!735 = !DILocation(line: 740, column: 4, scope: !729)
!736 = !DILocation(line: 740, column: 15, scope: !737)
!737 = !DILexicalBlockFile(scope: !738, file: !40, discriminator: 1)
!738 = distinct !DILexicalBlock(scope: !726, file: !40, line: 740, column: 15)
!739 = !DILocation(line: 740, column: 20, scope: !737)
!740 = !DILocation(line: 741, column: 11, scope: !741)
!741 = distinct !DILexicalBlock(scope: !738, file: !40, line: 740, column: 29)
!742 = !DILocation(line: 742, column: 36, scope: !741)
!743 = !DILocation(line: 742, column: 28, scope: !741)
!744 = !DILocation(line: 742, column: 26, scope: !741)
!745 = !DILocation(line: 743, column: 17, scope: !741)
!746 = !DILocation(line: 744, column: 4, scope: !741)
!747 = !DILocation(line: 744, column: 15, scope: !748)
!748 = !DILexicalBlockFile(scope: !749, file: !40, discriminator: 1)
!749 = distinct !DILexicalBlock(scope: !738, file: !40, line: 744, column: 15)
!750 = !DILocation(line: 744, column: 20, scope: !748)
!751 = !DILocation(line: 745, column: 11, scope: !752)
!752 = distinct !DILexicalBlock(scope: !749, file: !40, line: 744, column: 29)
!753 = !DILocation(line: 746, column: 36, scope: !752)
!754 = !DILocation(line: 746, column: 28, scope: !752)
!755 = !DILocation(line: 746, column: 26, scope: !752)
!756 = !DILocation(line: 747, column: 17, scope: !752)
!757 = !DILocation(line: 748, column: 4, scope: !752)
!758 = !DILocation(line: 750, column: 11, scope: !759)
!759 = distinct !DILexicalBlock(scope: !749, file: !40, line: 748, column: 11)
!760 = !DILocation(line: 751, column: 36, scope: !759)
!761 = !DILocation(line: 751, column: 28, scope: !759)
!762 = !DILocation(line: 751, column: 26, scope: !759)
!763 = !DILocation(line: 752, column: 17, scope: !759)
!764 = !DILocation(line: 761, column: 21, scope: !39)
!765 = !DILocation(line: 761, column: 40, scope: !39)
!766 = !DILocation(line: 761, column: 12, scope: !39)
!767 = !DILocation(line: 761, column: 49, scope: !39)
!768 = !DILocation(line: 761, column: 47, scope: !39)
!769 = !DILocation(line: 761, column: 10, scope: !39)
!770 = !DILocation(line: 762, column: 8, scope: !771)
!771 = distinct !DILexicalBlock(scope: !39, file: !40, line: 762, column: 8)
!772 = !DILocation(line: 762, column: 14, scope: !771)
!773 = !DILocation(line: 762, column: 8, scope: !39)
!774 = !DILocation(line: 763, column: 16, scope: !775)
!775 = distinct !DILexicalBlock(scope: !771, file: !40, line: 762, column: 19)
!776 = !DILocation(line: 763, column: 15, scope: !775)
!777 = !DILocation(line: 763, column: 13, scope: !775)
!778 = !DILocation(line: 764, column: 4, scope: !775)
!779 = !DILocation(line: 765, column: 8, scope: !780)
!780 = distinct !DILexicalBlock(scope: !39, file: !40, line: 765, column: 8)
!781 = !DILocation(line: 765, column: 14, scope: !780)
!782 = !DILocation(line: 765, column: 8, scope: !39)
!783 = !DILocation(line: 766, column: 17, scope: !784)
!784 = distinct !DILexicalBlock(scope: !780, file: !40, line: 765, column: 26)
!785 = !DILocation(line: 767, column: 45, scope: !784)
!786 = !DILocation(line: 767, column: 64, scope: !784)
!787 = !DILocation(line: 767, column: 36, scope: !784)
!788 = !DILocation(line: 767, column: 28, scope: !784)
!789 = !DILocation(line: 767, column: 26, scope: !784)
!790 = !DILocation(line: 768, column: 4, scope: !784)
!791 = !DILocation(line: 770, column: 45, scope: !39)
!792 = !DILocation(line: 770, column: 17, scope: !39)
!793 = !DILocation(line: 770, column: 15, scope: !39)
!794 = !DILocation(line: 771, column: 35, scope: !39)
!795 = !DILocation(line: 771, column: 47, scope: !39)
!796 = !DILocation(line: 771, column: 17, scope: !39)
!797 = !DILocation(line: 771, column: 15, scope: !39)
!798 = !DILocation(line: 772, column: 31, scope: !39)
!799 = !DILocation(line: 772, column: 36, scope: !39)
!800 = !DILocation(line: 772, column: 13, scope: !39)
!801 = !DILocation(line: 772, column: 11, scope: !39)
!802 = !DILocation(line: 773, column: 9, scope: !39)
!803 = !DILocation(line: 773, column: 4, scope: !39)
!804 = !DILocation(line: 774, column: 9, scope: !39)
!805 = !DILocation(line: 774, column: 4, scope: !39)
!806 = !DILocation(line: 776, column: 11, scope: !39)
!807 = !DILocation(line: 776, column: 4, scope: !39)
!808 = distinct !DISubprogram(name: "StrUtil_GetLongestLineLength", scope: !40, file: !40, line: 807, type: !809, isLocal: false, isDefinition: true, scopeLine: 809, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !43)
!809 = !DISubroutineType(types: !810)
!810 = !{!474, !52, !474}
!811 = !DILocalVariable(name: "buf", arg: 1, scope: !808, file: !40, line: 807, type: !52)
!812 = !DILocation(line: 807, column: 42, scope: !808)
!813 = !DILocalVariable(name: "bufLength", arg: 2, scope: !808, file: !40, line: 808, type: !474)
!814 = !DILocation(line: 808, column: 37, scope: !808)
!815 = !DILocalVariable(name: "longest", scope: !808, file: !40, line: 810, type: !474)
!816 = !DILocation(line: 810, column: 12, scope: !808)
!817 = !DILocation(line: 812, column: 5, scope: !808)
!818 = !DILocation(line: 812, column: 12, scope: !819)
!819 = !DILexicalBlockFile(scope: !808, file: !40, discriminator: 1)
!820 = !DILocation(line: 812, column: 5, scope: !819)
!821 = !DILocalVariable(name: "next", scope: !822, file: !40, line: 813, type: !52)
!822 = distinct !DILexicalBlock(scope: !808, file: !40, line: 812, column: 23)
!823 = !DILocation(line: 813, column: 20, scope: !822)
!824 = !DILocalVariable(name: "len", scope: !822, file: !40, line: 814, type: !474)
!825 = !DILocation(line: 814, column: 15, scope: !822)
!826 = !DILocation(line: 816, column: 22, scope: !822)
!827 = !DILocation(line: 816, column: 33, scope: !822)
!828 = !DILocation(line: 816, column: 15, scope: !822)
!829 = !DILocation(line: 816, column: 13, scope: !822)
!830 = !DILocation(line: 817, column: 12, scope: !831)
!831 = distinct !DILexicalBlock(scope: !822, file: !40, line: 817, column: 12)
!832 = !DILocation(line: 817, column: 12, scope: !822)
!833 = !DILocation(line: 818, column: 15, scope: !834)
!834 = distinct !DILexicalBlock(scope: !831, file: !40, line: 817, column: 18)
!835 = !DILocation(line: 819, column: 17, scope: !834)
!836 = !DILocation(line: 819, column: 24, scope: !834)
!837 = !DILocation(line: 819, column: 22, scope: !834)
!838 = !DILocation(line: 819, column: 15, scope: !834)
!839 = !DILocation(line: 820, column: 8, scope: !834)
!840 = !DILocation(line: 821, column: 17, scope: !841)
!841 = distinct !DILexicalBlock(scope: !831, file: !40, line: 820, column: 15)
!842 = !DILocation(line: 821, column: 15, scope: !841)
!843 = !DILocation(line: 823, column: 12, scope: !844)
!844 = distinct !DILexicalBlock(scope: !822, file: !40, line: 823, column: 12)
!845 = !DILocation(line: 823, column: 18, scope: !844)
!846 = !DILocation(line: 823, column: 16, scope: !844)
!847 = !DILocation(line: 823, column: 12, scope: !822)
!848 = !DILocation(line: 824, column: 21, scope: !849)
!849 = distinct !DILexicalBlock(scope: !844, file: !40, line: 823, column: 27)
!850 = !DILocation(line: 824, column: 19, scope: !849)
!851 = !DILocation(line: 825, column: 8, scope: !849)
!852 = !DILocation(line: 826, column: 21, scope: !822)
!853 = !DILocation(line: 826, column: 18, scope: !822)
!854 = !DILocation(line: 827, column: 14, scope: !822)
!855 = !DILocation(line: 827, column: 12, scope: !822)
!856 = !DILocation(line: 812, column: 5, scope: !857)
!857 = !DILexicalBlockFile(scope: !808, file: !40, discriminator: 2)
!858 = distinct !{!858, !817}
!859 = !DILocation(line: 830, column: 12, scope: !808)
!860 = !DILocation(line: 830, column: 5, scope: !808)
!861 = distinct !DISubprogram(name: "StrUtil_StartsWith", scope: !40, file: !40, line: 851, type: !862, isLocal: false, isDefinition: true, scopeLine: 853, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !43)
!862 = !DISubroutineType(types: !863)
!863 = !{!151, !52, !52}
!864 = !DILocalVariable(name: "s", arg: 1, scope: !861, file: !40, line: 851, type: !52)
!865 = !DILocation(line: 851, column: 32, scope: !861)
!866 = !DILocalVariable(name: "prefix", arg: 2, scope: !861, file: !40, line: 852, type: !52)
!867 = !DILocation(line: 852, column: 32, scope: !861)
!868 = !DILocation(line: 857, column: 4, scope: !861)
!869 = !DILocation(line: 857, column: 12, scope: !870)
!870 = !DILexicalBlockFile(scope: !861, file: !40, discriminator: 1)
!871 = !DILocation(line: 857, column: 11, scope: !870)
!872 = !DILocation(line: 857, column: 19, scope: !870)
!873 = !DILocation(line: 857, column: 23, scope: !874)
!874 = !DILexicalBlockFile(scope: !861, file: !40, discriminator: 2)
!875 = !DILocation(line: 857, column: 22, scope: !874)
!876 = !DILocation(line: 857, column: 34, scope: !874)
!877 = !DILocation(line: 857, column: 33, scope: !874)
!878 = !DILocation(line: 857, column: 30, scope: !874)
!879 = !DILocation(line: 857, column: 4, scope: !880)
!880 = !DILexicalBlockFile(scope: !861, file: !40, discriminator: 3)
!881 = !DILocation(line: 858, column: 13, scope: !882)
!882 = distinct !DILexicalBlock(scope: !861, file: !40, line: 857, column: 37)
!883 = !DILocation(line: 859, column: 8, scope: !882)
!884 = !DILocation(line: 857, column: 4, scope: !885)
!885 = !DILexicalBlockFile(scope: !861, file: !40, discriminator: 4)
!886 = distinct !{!886, !868}
!887 = !DILocation(line: 862, column: 12, scope: !861)
!888 = !DILocation(line: 862, column: 11, scope: !861)
!889 = !DILocation(line: 862, column: 19, scope: !861)
!890 = !DILocation(line: 862, column: 4, scope: !861)
!891 = distinct !DISubprogram(name: "StrUtil_CaselessStartsWith", scope: !40, file: !40, line: 883, type: !862, isLocal: false, isDefinition: true, scopeLine: 885, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !43)
!892 = !DILocalVariable(name: "s", arg: 1, scope: !891, file: !40, line: 883, type: !52)
!893 = !DILocation(line: 883, column: 40, scope: !891)
!894 = !DILocalVariable(name: "prefix", arg: 2, scope: !891, file: !40, line: 884, type: !52)
!895 = !DILocation(line: 884, column: 40, scope: !891)
!896 = !DILocation(line: 889, column: 23, scope: !891)
!897 = !DILocation(line: 889, column: 26, scope: !891)
!898 = !DILocation(line: 889, column: 41, scope: !891)
!899 = !DILocation(line: 889, column: 34, scope: !891)
!900 = !DILocation(line: 889, column: 11, scope: !901)
!901 = !DILexicalBlockFile(scope: !891, file: !40, discriminator: 1)
!902 = !DILocation(line: 889, column: 50, scope: !891)
!903 = !DILocation(line: 889, column: 11, scope: !891)
!904 = !DILocation(line: 889, column: 4, scope: !891)
!905 = distinct !DISubprogram(name: "StrUtil_EndsWith", scope: !40, file: !40, line: 911, type: !862, isLocal: false, isDefinition: true, scopeLine: 913, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !43)
!906 = !DILocalVariable(name: "s", arg: 1, scope: !905, file: !40, line: 911, type: !52)
!907 = !DILocation(line: 911, column: 30, scope: !905)
!908 = !DILocalVariable(name: "suffix", arg: 2, scope: !905, file: !40, line: 912, type: !52)
!909 = !DILocation(line: 912, column: 30, scope: !905)
!910 = !DILocalVariable(name: "slen", scope: !905, file: !40, line: 914, type: !474)
!911 = !DILocation(line: 914, column: 11, scope: !905)
!912 = !DILocalVariable(name: "suffixlen", scope: !905, file: !40, line: 915, type: !474)
!913 = !DILocation(line: 915, column: 11, scope: !905)
!914 = !DILocation(line: 920, column: 18, scope: !905)
!915 = !DILocation(line: 920, column: 11, scope: !905)
!916 = !DILocation(line: 920, column: 9, scope: !905)
!917 = !DILocation(line: 921, column: 23, scope: !905)
!918 = !DILocation(line: 921, column: 16, scope: !905)
!919 = !DILocation(line: 921, column: 14, scope: !905)
!920 = !DILocation(line: 923, column: 8, scope: !921)
!921 = distinct !DILexicalBlock(scope: !905, file: !40, line: 923, column: 8)
!922 = !DILocation(line: 923, column: 20, scope: !921)
!923 = !DILocation(line: 923, column: 18, scope: !921)
!924 = !DILocation(line: 923, column: 8, scope: !905)
!925 = !DILocation(line: 924, column: 7, scope: !926)
!926 = distinct !DILexicalBlock(scope: !921, file: !40, line: 923, column: 26)
!927 = !DILocation(line: 927, column: 18, scope: !905)
!928 = !DILocation(line: 927, column: 22, scope: !905)
!929 = !DILocation(line: 927, column: 20, scope: !905)
!930 = !DILocation(line: 927, column: 29, scope: !905)
!931 = !DILocation(line: 927, column: 27, scope: !905)
!932 = !DILocation(line: 927, column: 40, scope: !905)
!933 = !DILocation(line: 927, column: 11, scope: !905)
!934 = !DILocation(line: 927, column: 48, scope: !905)
!935 = !DILocation(line: 927, column: 4, scope: !905)
!936 = !DILocation(line: 928, column: 1, scope: !905)
!937 = distinct !DISubprogram(name: "StrUtil_CaselessEndsWith", scope: !40, file: !40, line: 949, type: !862, isLocal: false, isDefinition: true, scopeLine: 951, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !43)
!938 = !DILocalVariable(name: "s", arg: 1, scope: !937, file: !40, line: 949, type: !52)
!939 = !DILocation(line: 949, column: 38, scope: !937)
!940 = !DILocalVariable(name: "suffix", arg: 2, scope: !937, file: !40, line: 950, type: !52)
!941 = !DILocation(line: 950, column: 38, scope: !937)
!942 = !DILocalVariable(name: "slen", scope: !937, file: !40, line: 952, type: !474)
!943 = !DILocation(line: 952, column: 11, scope: !937)
!944 = !DILocalVariable(name: "suffixlen", scope: !937, file: !40, line: 953, type: !474)
!945 = !DILocation(line: 953, column: 11, scope: !937)
!946 = !DILocation(line: 959, column: 18, scope: !937)
!947 = !DILocation(line: 959, column: 11, scope: !937)
!948 = !DILocation(line: 959, column: 9, scope: !937)
!949 = !DILocation(line: 960, column: 23, scope: !937)
!950 = !DILocation(line: 960, column: 16, scope: !937)
!951 = !DILocation(line: 960, column: 14, scope: !937)
!952 = !DILocation(line: 962, column: 8, scope: !953)
!953 = distinct !DILexicalBlock(scope: !937, file: !40, line: 962, column: 8)
!954 = !DILocation(line: 962, column: 20, scope: !953)
!955 = !DILocation(line: 962, column: 18, scope: !953)
!956 = !DILocation(line: 962, column: 8, scope: !937)
!957 = !DILocation(line: 963, column: 7, scope: !958)
!958 = distinct !DILexicalBlock(scope: !953, file: !40, line: 962, column: 26)
!959 = !DILocation(line: 966, column: 22, scope: !937)
!960 = !DILocation(line: 966, column: 27, scope: !937)
!961 = !DILocation(line: 966, column: 34, scope: !937)
!962 = !DILocation(line: 966, column: 32, scope: !937)
!963 = !DILocation(line: 966, column: 24, scope: !937)
!964 = !DILocation(line: 966, column: 46, scope: !937)
!965 = !DILocation(line: 966, column: 11, scope: !937)
!966 = !DILocation(line: 966, column: 54, scope: !937)
!967 = !DILocation(line: 966, column: 4, scope: !937)
!968 = !DILocation(line: 967, column: 1, scope: !937)
!969 = distinct !DISubprogram(name: "StrUtil_IsASCII", scope: !40, file: !40, line: 986, type: !970, isLocal: false, isDefinition: true, scopeLine: 987, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !43)
!970 = !DISubroutineType(types: !971)
!971 = !{!151, !52}
!972 = !DILocalVariable(name: "s", arg: 1, scope: !969, file: !40, line: 986, type: !52)
!973 = !DILocation(line: 986, column: 29, scope: !969)
!974 = !DILocation(line: 990, column: 4, scope: !969)
!975 = !DILocation(line: 990, column: 12, scope: !976)
!976 = !DILexicalBlockFile(scope: !969, file: !40, discriminator: 1)
!977 = !DILocation(line: 990, column: 11, scope: !976)
!978 = !DILocation(line: 990, column: 14, scope: !976)
!979 = !DILocation(line: 990, column: 4, scope: !976)
!980 = !DILocation(line: 991, column: 13, scope: !981)
!981 = distinct !DILexicalBlock(scope: !982, file: !40, line: 991, column: 11)
!982 = distinct !DILexicalBlock(scope: !969, file: !40, line: 990, column: 23)
!983 = !DILocation(line: 991, column: 12, scope: !981)
!984 = !DILocation(line: 991, column: 22, scope: !981)
!985 = !DILocation(line: 991, column: 11, scope: !982)
!986 = !DILocation(line: 992, column: 10, scope: !987)
!987 = distinct !DILexicalBlock(scope: !981, file: !40, line: 991, column: 30)
!988 = !DILocation(line: 994, column: 8, scope: !982)
!989 = !DILocation(line: 990, column: 4, scope: !990)
!990 = !DILexicalBlockFile(scope: !969, file: !40, discriminator: 2)
!991 = distinct !{!991, !974}
!992 = !DILocation(line: 997, column: 4, scope: !969)
!993 = !DILocation(line: 998, column: 1, scope: !969)
!994 = distinct !DISubprogram(name: "StrUtil_VDynBufPrintf", scope: !40, file: !40, line: 1023, type: !995, isLocal: false, isDefinition: true, scopeLine: 1026, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !43)
!995 = !DISubroutineType(types: !996)
!996 = !{!151, !997, !52, !1005}
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64, align: 64)
!998 = !DIDerivedType(tag: DW_TAG_typedef, name: "DynBuf", file: !999, line: 40, baseType: !1000)
!999 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/dynbuf.h", directory: "/home/lichi/Desktop/open-vm-tools/line718")
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DynBuf", file: !999, line: 36, size: 192, align: 64, elements: !1001)
!1001 = !{!1002, !1003, !1004}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1000, file: !999, line: 37, baseType: !34, size: 64, align: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1000, file: !999, line: 38, baseType: !474, size: 64, align: 64, offset: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !1000, file: !999, line: 39, baseType: !474, size: 64, align: 64, offset: 128)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64, align: 64)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 998, size: 192, align: 64, elements: !1007)
!1007 = !{!1008, !1009, !1010, !1011}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1006, file: !1, line: 998, baseType: !20, size: 32, align: 32)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1006, file: !1, line: 998, baseType: !20, size: 32, align: 32, offset: 32)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1006, file: !1, line: 998, baseType: !19, size: 64, align: 64, offset: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1006, file: !1, line: 998, baseType: !19, size: 64, align: 64, offset: 128)
!1012 = !DILocalVariable(name: "b", arg: 1, scope: !994, file: !40, line: 1023, type: !997)
!1013 = !DILocation(line: 1023, column: 31, scope: !994)
!1014 = !DILocalVariable(name: "fmt", arg: 2, scope: !994, file: !40, line: 1024, type: !52)
!1015 = !DILocation(line: 1024, column: 35, scope: !994)
!1016 = !DILocalVariable(name: "args", arg: 3, scope: !994, file: !40, line: 1025, type: !1005)
!1017 = !DILocation(line: 1025, column: 31, scope: !994)
!1018 = !DILocalVariable(name: "minAllocSize", scope: !994, file: !40, line: 1032, type: !1019)
!1019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !474)
!1020 = !DILocation(line: 1032, column: 17, scope: !994)
!1021 = !DILocation(line: 1034, column: 4, scope: !994)
!1022 = !DILocalVariable(name: "i", scope: !1023, file: !40, line: 1035, type: !25)
!1023 = distinct !DILexicalBlock(scope: !994, file: !40, line: 1034, column: 14)
!1024 = !DILocation(line: 1035, column: 11, scope: !1023)
!1025 = !DILocalVariable(name: "size", scope: !1023, file: !40, line: 1036, type: !474)
!1026 = !DILocation(line: 1036, column: 14, scope: !1023)
!1027 = !DILocation(line: 1036, column: 36, scope: !1023)
!1028 = !DILocation(line: 1036, column: 21, scope: !1023)
!1029 = !DILocalVariable(name: "allocSize", scope: !1023, file: !40, line: 1037, type: !474)
!1030 = !DILocation(line: 1037, column: 14, scope: !1023)
!1031 = !DILocation(line: 1037, column: 50, scope: !1023)
!1032 = !DILocation(line: 1037, column: 26, scope: !1023)
!1033 = !DILocation(line: 1040, column: 11, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1023, file: !40, line: 1040, column: 11)
!1035 = !DILocation(line: 1040, column: 21, scope: !1034)
!1036 = !DILocation(line: 1040, column: 11, scope: !1023)
!1037 = !DILocalVariable(name: "success", scope: !1038, file: !40, line: 1041, type: !151)
!1038 = distinct !DILexicalBlock(scope: !1034, file: !40, line: 1040, column: 37)
!1039 = !DILocation(line: 1041, column: 15, scope: !1038)
!1040 = !DILocation(line: 1041, column: 40, scope: !1038)
!1041 = !DILocation(line: 1041, column: 25, scope: !1038)
!1042 = !DILocation(line: 1042, column: 15, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1038, file: !40, line: 1042, column: 14)
!1044 = !DILocation(line: 1042, column: 14, scope: !1038)
!1045 = !DILocation(line: 1043, column: 13, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1043, file: !40, line: 1042, column: 24)
!1047 = !DILocation(line: 1045, column: 10, scope: !1038)
!1048 = distinct !{!1048, !1021}
!1049 = !DILocation(line: 1054, column: 11, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1023, file: !40, line: 1054, column: 11)
!1051 = !DILocation(line: 1054, column: 23, scope: !1050)
!1052 = !DILocation(line: 1054, column: 21, scope: !1050)
!1053 = !DILocation(line: 1054, column: 28, scope: !1050)
!1054 = !DILocation(line: 1054, column: 11, scope: !1023)
!1055 = !DILocalVariable(name: "tmpArgs", scope: !1056, file: !40, line: 1055, type: !1057)
!1056 = distinct !DILexicalBlock(scope: !1050, file: !40, line: 1054, column: 33)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1058, line: 79, baseType: !1059)
!1058 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/open-vm-tools/line718")
!1059 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1060, line: 40, baseType: !1061)
!1060 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/open-vm-tools/line718")
!1061 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 1055, baseType: !1062)
!1062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1006, size: 192, align: 64, elements: !1063)
!1063 = !{!1064}
!1064 = !DISubrange(count: 1)
!1065 = !DILocation(line: 1055, column: 18, scope: !1056)
!1066 = !DILocation(line: 1057, column: 9, scope: !1056)
!1067 = !DILocation(line: 1063, column: 48, scope: !1056)
!1068 = !DILocation(line: 1063, column: 37, scope: !1056)
!1069 = !DILocation(line: 1063, column: 53, scope: !1056)
!1070 = !DILocation(line: 1063, column: 51, scope: !1056)
!1071 = !DILocation(line: 1063, column: 59, scope: !1056)
!1072 = !DILocation(line: 1063, column: 71, scope: !1056)
!1073 = !DILocation(line: 1063, column: 69, scope: !1056)
!1074 = !DILocation(line: 1064, column: 28, scope: !1056)
!1075 = !DILocation(line: 1064, column: 33, scope: !1056)
!1076 = !DILocation(line: 1063, column: 14, scope: !1077)
!1077 = !DILexicalBlockFile(scope: !1056, file: !40, discriminator: 1)
!1078 = !DILocation(line: 1063, column: 12, scope: !1056)
!1079 = !DILocation(line: 1065, column: 9, scope: !1056)
!1080 = !DILocation(line: 1066, column: 7, scope: !1056)
!1081 = !DILocation(line: 1067, column: 12, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1050, file: !40, line: 1066, column: 14)
!1083 = !DILocation(line: 1070, column: 11, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1023, file: !40, line: 1070, column: 11)
!1085 = !DILocation(line: 1070, column: 13, scope: !1084)
!1086 = !DILocation(line: 1070, column: 11, scope: !1023)
!1087 = !DILocation(line: 1082, column: 25, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1084, file: !40, line: 1070, column: 19)
!1089 = !DILocation(line: 1082, column: 28, scope: !1088)
!1090 = !DILocation(line: 1082, column: 35, scope: !1088)
!1091 = !DILocation(line: 1082, column: 33, scope: !1088)
!1092 = !DILocation(line: 1082, column: 10, scope: !1088)
!1093 = !DILocation(line: 1083, column: 10, scope: !1088)
!1094 = !DILocalVariable(name: "success", scope: !1095, file: !40, line: 1092, type: !151)
!1095 = distinct !DILexicalBlock(scope: !1084, file: !40, line: 1085, column: 14)
!1096 = !DILocation(line: 1092, column: 15, scope: !1095)
!1097 = !DILocation(line: 1092, column: 40, scope: !1095)
!1098 = !DILocation(line: 1092, column: 43, scope: !1095)
!1099 = !DILocation(line: 1092, column: 48, scope: !1095)
!1100 = !DILocation(line: 1092, column: 25, scope: !1095)
!1101 = !DILocation(line: 1094, column: 15, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1095, file: !40, line: 1094, column: 14)
!1103 = !DILocation(line: 1094, column: 14, scope: !1095)
!1104 = !DILocation(line: 1095, column: 13, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1102, file: !40, line: 1094, column: 24)
!1106 = !DILocation(line: 1034, column: 4, scope: !1107)
!1107 = !DILexicalBlockFile(scope: !994, file: !40, discriminator: 1)
!1108 = !DILocation(line: 1100, column: 4, scope: !994)
!1109 = !DILocation(line: 1101, column: 1, scope: !994)
!1110 = distinct !DISubprogram(name: "DynBuf_GetSize", scope: !999, file: !999, line: 174, type: !1111, isLocal: true, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !43)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!474, !1113}
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64, align: 64)
!1114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !998)
!1115 = !DILocalVariable(name: "b", arg: 1, scope: !1110, file: !999, line: 174, type: !1113)
!1116 = !DILocation(line: 174, column: 30, scope: !1110)
!1117 = !DILocation(line: 178, column: 11, scope: !1110)
!1118 = !DILocation(line: 178, column: 14, scope: !1110)
!1119 = !DILocation(line: 178, column: 4, scope: !1110)
!1120 = distinct !DISubprogram(name: "DynBuf_GetAllocatedSize", scope: !999, file: !999, line: 234, type: !1111, isLocal: true, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !43)
!1121 = !DILocalVariable(name: "b", arg: 1, scope: !1120, file: !999, line: 234, type: !1113)
!1122 = !DILocation(line: 234, column: 39, scope: !1120)
!1123 = !DILocation(line: 238, column: 11, scope: !1120)
!1124 = !DILocation(line: 238, column: 14, scope: !1120)
!1125 = !DILocation(line: 238, column: 4, scope: !1120)
!1126 = distinct !DISubprogram(name: "DynBuf_Get", scope: !999, file: !999, line: 113, type: !1127, isLocal: true, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !43)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!19, !1113}
!1129 = !DILocalVariable(name: "b", arg: 1, scope: !1126, file: !999, line: 113, type: !1113)
!1130 = !DILocation(line: 113, column: 26, scope: !1126)
!1131 = !DILocation(line: 117, column: 11, scope: !1126)
!1132 = !DILocation(line: 117, column: 14, scope: !1126)
!1133 = !DILocation(line: 117, column: 4, scope: !1126)
!1134 = distinct !DISubprogram(name: "DynBuf_SetSize", scope: !999, file: !999, line: 203, type: !1135, isLocal: true, isDefinition: true, scopeLine: 205, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !43)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{null, !997, !474}
!1137 = !DILocalVariable(name: "b", arg: 1, scope: !1134, file: !999, line: 203, type: !997)
!1138 = !DILocation(line: 203, column: 24, scope: !1134)
!1139 = !DILocalVariable(name: "size", arg: 2, scope: !1134, file: !999, line: 204, type: !474)
!1140 = !DILocation(line: 204, column: 23, scope: !1134)
!1141 = !DILocation(line: 209, column: 14, scope: !1134)
!1142 = !DILocation(line: 209, column: 4, scope: !1134)
!1143 = !DILocation(line: 209, column: 7, scope: !1134)
!1144 = !DILocation(line: 209, column: 12, scope: !1134)
!1145 = !DILocation(line: 210, column: 1, scope: !1134)
!1146 = distinct !DISubprogram(name: "StrUtil_DynBufPrintf", scope: !40, file: !40, line: 1121, type: !1147, isLocal: false, isDefinition: true, scopeLine: 1124, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !43)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!151, !997, !52, null}
!1149 = !DILocalVariable(name: "b", arg: 1, scope: !1146, file: !40, line: 1121, type: !997)
!1150 = !DILocation(line: 1121, column: 30, scope: !1146)
!1151 = !DILocalVariable(name: "fmt", arg: 2, scope: !1146, file: !40, line: 1122, type: !52)
!1152 = !DILocation(line: 1122, column: 34, scope: !1146)
!1153 = !DILocalVariable(name: "args", scope: !1146, file: !40, line: 1125, type: !1057)
!1154 = !DILocation(line: 1125, column: 12, scope: !1146)
!1155 = !DILocalVariable(name: "success", scope: !1146, file: !40, line: 1126, type: !151)
!1156 = !DILocation(line: 1126, column: 9, scope: !1146)
!1157 = !DILocation(line: 1128, column: 3, scope: !1146)
!1158 = !DILocation(line: 1129, column: 36, scope: !1146)
!1159 = !DILocation(line: 1129, column: 39, scope: !1146)
!1160 = !DILocation(line: 1129, column: 44, scope: !1146)
!1161 = !DILocation(line: 1129, column: 14, scope: !1146)
!1162 = !DILocation(line: 1129, column: 12, scope: !1146)
!1163 = !DILocation(line: 1130, column: 3, scope: !1146)
!1164 = !DILocation(line: 1132, column: 11, scope: !1146)
!1165 = !DILocation(line: 1132, column: 4, scope: !1146)
!1166 = distinct !DISubprogram(name: "StrUtil_SafeDynBufPrintf", scope: !40, file: !40, line: 1154, type: !1167, isLocal: false, isDefinition: true, scopeLine: 1157, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !43)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{null, !997, !52, null}
!1169 = !DILocalVariable(name: "b", arg: 1, scope: !1166, file: !40, line: 1154, type: !997)
!1170 = !DILocation(line: 1154, column: 34, scope: !1166)
!1171 = !DILocalVariable(name: "fmt", arg: 2, scope: !1166, file: !40, line: 1155, type: !52)
!1172 = !DILocation(line: 1155, column: 38, scope: !1166)
!1173 = !DILocalVariable(name: "args", scope: !1166, file: !40, line: 1158, type: !1057)
!1174 = !DILocation(line: 1158, column: 12, scope: !1166)
!1175 = !DILocalVariable(name: "success", scope: !1166, file: !40, line: 1159, type: !151)
!1176 = !DILocation(line: 1159, column: 9, scope: !1166)
!1177 = !DILocation(line: 1161, column: 3, scope: !1166)
!1178 = !DILocation(line: 1162, column: 36, scope: !1166)
!1179 = !DILocation(line: 1162, column: 39, scope: !1166)
!1180 = !DILocation(line: 1162, column: 44, scope: !1166)
!1181 = !DILocation(line: 1162, column: 14, scope: !1166)
!1182 = !DILocation(line: 1162, column: 12, scope: !1166)
!1183 = !DILocation(line: 1163, column: 3, scope: !1166)
!1184 = !DILocation(line: 1165, column: 30, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !40, line: 1165, column: 10)
!1186 = distinct !DILexicalBlock(scope: !1166, file: !40, line: 1165, column: 5)
!1187 = !DILocation(line: 1165, column: 28, scope: !1185)
!1188 = !DILocation(line: 1165, column: 27, scope: !1185)
!1189 = !DILocation(line: 1165, column: 10, scope: !1185)
!1190 = !DILocation(line: 1165, column: 10, scope: !1186)
!1191 = !DILocation(line: 1165, column: 47, scope: !1192)
!1192 = !DILexicalBlockFile(scope: !1193, file: !40, discriminator: 1)
!1193 = distinct !DILexicalBlock(scope: !1185, file: !40, line: 1165, column: 45)
!1194 = !DILocation(line: 1166, column: 1, scope: !1166)
!1195 = distinct !DISubprogram(name: "StrUtil_SafeStrcat", scope: !40, file: !40, line: 1187, type: !1196, isLocal: false, isDefinition: true, scopeLine: 1189, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !43)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{null, !1198, !52}
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!1199 = !DILocalVariable(name: "prefix", arg: 1, scope: !1195, file: !40, line: 1187, type: !1198)
!1200 = !DILocation(line: 1187, column: 27, scope: !1195)
!1201 = !DILocalVariable(name: "str", arg: 2, scope: !1195, file: !40, line: 1188, type: !52)
!1202 = !DILocation(line: 1188, column: 32, scope: !1195)
!1203 = !DILocalVariable(name: "tmp", scope: !1195, file: !40, line: 1190, type: !34)
!1204 = !DILocation(line: 1190, column: 10, scope: !1195)
!1205 = !DILocalVariable(name: "plen", scope: !1195, file: !40, line: 1191, type: !474)
!1206 = !DILocation(line: 1191, column: 11, scope: !1195)
!1207 = !DILocation(line: 1191, column: 20, scope: !1195)
!1208 = !DILocation(line: 1191, column: 19, scope: !1195)
!1209 = !DILocation(line: 1191, column: 27, scope: !1195)
!1210 = !DILocation(line: 1191, column: 18, scope: !1195)
!1211 = !DILocation(line: 1191, column: 18, scope: !1212)
!1212 = !DILexicalBlockFile(scope: !1195, file: !40, discriminator: 1)
!1213 = !DILocation(line: 1191, column: 49, scope: !1214)
!1214 = !DILexicalBlockFile(scope: !1195, file: !40, discriminator: 2)
!1215 = !DILocation(line: 1191, column: 48, scope: !1214)
!1216 = !DILocation(line: 1191, column: 41, scope: !1214)
!1217 = !DILocation(line: 1191, column: 18, scope: !1214)
!1218 = !DILocation(line: 1191, column: 18, scope: !1219)
!1219 = !DILexicalBlockFile(scope: !1195, file: !40, discriminator: 3)
!1220 = !DILocation(line: 1191, column: 11, scope: !1219)
!1221 = !DILocalVariable(name: "slen", scope: !1195, file: !40, line: 1192, type: !474)
!1222 = !DILocation(line: 1192, column: 11, scope: !1195)
!1223 = !DILocation(line: 1192, column: 25, scope: !1195)
!1224 = !DILocation(line: 1192, column: 18, scope: !1195)
!1225 = !DILocation(line: 1201, column: 31, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !40, line: 1201, column: 10)
!1227 = distinct !DILexicalBlock(scope: !1195, file: !40, line: 1201, column: 5)
!1228 = !DILocation(line: 1201, column: 36, scope: !1226)
!1229 = !DILocation(line: 1201, column: 8, scope: !1226)
!1230 = !DILocation(line: 1201, column: 12, scope: !1231)
!1231 = !DILexicalBlockFile(scope: !1226, file: !40, discriminator: 1)
!1232 = !DILocation(line: 1201, column: 17, scope: !1231)
!1233 = !DILocation(line: 1201, column: 28, scope: !1234)
!1234 = !DILexicalBlockFile(scope: !1226, file: !40, discriminator: 2)
!1235 = !DILocation(line: 1201, column: 27, scope: !1234)
!1236 = !DILocation(line: 1201, column: 10, scope: !1234)
!1237 = !DILocation(line: 1201, column: 17, scope: !1238)
!1238 = !DILexicalBlockFile(scope: !1239, file: !40, discriminator: 3)
!1239 = distinct !DILexicalBlock(scope: !1226, file: !40, line: 1201, column: 15)
!1240 = !DILocation(line: 1203, column: 29, scope: !1195)
!1241 = !DILocation(line: 1203, column: 28, scope: !1195)
!1242 = !DILocation(line: 1203, column: 39, scope: !1195)
!1243 = !DILocation(line: 1203, column: 46, scope: !1195)
!1244 = !DILocation(line: 1203, column: 44, scope: !1195)
!1245 = !DILocation(line: 1203, column: 51, scope: !1195)
!1246 = !DILocation(line: 1203, column: 10, scope: !1195)
!1247 = !DILocation(line: 1203, column: 8, scope: !1195)
!1248 = !DILocation(line: 1205, column: 11, scope: !1195)
!1249 = !DILocation(line: 1205, column: 17, scope: !1195)
!1250 = !DILocation(line: 1205, column: 15, scope: !1195)
!1251 = !DILocation(line: 1205, column: 23, scope: !1195)
!1252 = !DILocation(line: 1205, column: 28, scope: !1195)
!1253 = !DILocation(line: 1205, column: 33, scope: !1195)
!1254 = !DILocation(line: 1205, column: 4, scope: !1195)
!1255 = !DILocation(line: 1206, column: 14, scope: !1195)
!1256 = !DILocation(line: 1206, column: 5, scope: !1195)
!1257 = !DILocation(line: 1206, column: 12, scope: !1195)
!1258 = !DILocation(line: 1207, column: 1, scope: !1195)
!1259 = distinct !DISubprogram(name: "StrUtil_SafeStrcatFV", scope: !40, file: !40, line: 1228, type: !1260, isLocal: false, isDefinition: true, scopeLine: 1231, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !43)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{null, !1198, !52, !1005}
!1262 = !DILocalVariable(name: "prefix", arg: 1, scope: !1259, file: !40, line: 1228, type: !1198)
!1263 = !DILocation(line: 1228, column: 29, scope: !1259)
!1264 = !DILocalVariable(name: "fmt", arg: 2, scope: !1259, file: !40, line: 1229, type: !52)
!1265 = !DILocation(line: 1229, column: 34, scope: !1259)
!1266 = !DILocalVariable(name: "args", arg: 3, scope: !1259, file: !40, line: 1230, type: !1005)
!1267 = !DILocation(line: 1230, column: 30, scope: !1259)
!1268 = !DILocalVariable(name: "str", scope: !1259, file: !40, line: 1232, type: !34)
!1269 = !DILocation(line: 1232, column: 10, scope: !1259)
!1270 = !DILocation(line: 1232, column: 39, scope: !1259)
!1271 = !DILocation(line: 1232, column: 44, scope: !1259)
!1272 = !DILocation(line: 1232, column: 16, scope: !1259)
!1273 = !DILocation(line: 1233, column: 23, scope: !1259)
!1274 = !DILocation(line: 1233, column: 31, scope: !1259)
!1275 = !DILocation(line: 1233, column: 4, scope: !1259)
!1276 = !DILocation(line: 1234, column: 9, scope: !1259)
!1277 = !DILocation(line: 1234, column: 4, scope: !1259)
!1278 = !DILocation(line: 1235, column: 1, scope: !1259)
!1279 = distinct !DISubprogram(name: "StrUtil_SafeStrcatF", scope: !40, file: !40, line: 1256, type: !1280, isLocal: false, isDefinition: true, scopeLine: 1259, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !43)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{null, !1198, !52, null}
!1282 = !DILocalVariable(name: "prefix", arg: 1, scope: !1279, file: !40, line: 1256, type: !1198)
!1283 = !DILocation(line: 1256, column: 28, scope: !1279)
!1284 = !DILocalVariable(name: "fmt", arg: 2, scope: !1279, file: !40, line: 1257, type: !52)
!1285 = !DILocation(line: 1257, column: 33, scope: !1279)
!1286 = !DILocalVariable(name: "args", scope: !1279, file: !40, line: 1260, type: !1057)
!1287 = !DILocation(line: 1260, column: 12, scope: !1279)
!1288 = !DILocation(line: 1262, column: 3, scope: !1279)
!1289 = !DILocation(line: 1263, column: 25, scope: !1279)
!1290 = !DILocation(line: 1263, column: 33, scope: !1279)
!1291 = !DILocation(line: 1263, column: 38, scope: !1279)
!1292 = !DILocation(line: 1263, column: 4, scope: !1279)
!1293 = !DILocation(line: 1264, column: 3, scope: !1279)
!1294 = !DILocation(line: 1265, column: 1, scope: !1279)
!1295 = distinct !DISubprogram(name: "StrUtil_TrimWhitespace", scope: !40, file: !40, line: 1286, type: !1296, isLocal: false, isDefinition: true, scopeLine: 1287, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !43)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!34, !52}
!1298 = !DILocalVariable(name: "str", arg: 1, scope: !1295, file: !40, line: 1286, type: !52)
!1299 = !DILocation(line: 1286, column: 36, scope: !1295)
!1300 = !DILocalVariable(name: "cur", scope: !1295, file: !40, line: 1288, type: !34)
!1301 = !DILocation(line: 1288, column: 10, scope: !1295)
!1302 = !DILocation(line: 1288, column: 24, scope: !1295)
!1303 = !DILocalVariable(name: "res", scope: !1295, file: !40, line: 1289, type: !34)
!1304 = !DILocation(line: 1289, column: 10, scope: !1295)
!1305 = !DILocalVariable(name: "len", scope: !1295, file: !40, line: 1290, type: !474)
!1306 = !DILocation(line: 1290, column: 11, scope: !1295)
!1307 = !DILocation(line: 1293, column: 4, scope: !1295)
!1308 = !DILocation(line: 1293, column: 12, scope: !1309)
!1309 = !DILexicalBlockFile(scope: !1295, file: !40, discriminator: 1)
!1310 = !DILocation(line: 1293, column: 11, scope: !1309)
!1311 = !DILocation(line: 1293, column: 16, scope: !1309)
!1312 = !DILocation(line: 1293, column: 19, scope: !1313)
!1313 = !DILexicalBlockFile(scope: !1295, file: !40, discriminator: 2)
!1314 = !DILocation(line: 1293, column: 18, scope: !1313)
!1315 = !DILocation(line: 1293, column: 39, scope: !1313)
!1316 = !DILocation(line: 1293, column: 21, scope: !1313)
!1317 = !DILocation(line: 1293, column: 20, scope: !1313)
!1318 = !DILocation(line: 1293, column: 22, scope: !1313)
!1319 = !DILocation(line: 1293, column: 16, scope: !1313)
!1320 = !DILocation(line: 1293, column: 4, scope: !1321)
!1321 = !DILexicalBlockFile(scope: !1295, file: !40, discriminator: 3)
!1322 = !DILocation(line: 1294, column: 10, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1295, file: !40, line: 1293, column: 33)
!1324 = !DILocation(line: 1293, column: 4, scope: !1325)
!1325 = !DILexicalBlockFile(scope: !1295, file: !40, discriminator: 4)
!1326 = distinct !{!1326, !1307}
!1327 = !DILocation(line: 1298, column: 27, scope: !1295)
!1328 = !DILocation(line: 1298, column: 10, scope: !1295)
!1329 = !DILocation(line: 1298, column: 8, scope: !1295)
!1330 = !DILocation(line: 1301, column: 17, scope: !1295)
!1331 = !DILocation(line: 1301, column: 10, scope: !1295)
!1332 = !DILocation(line: 1301, column: 8, scope: !1295)
!1333 = !DILocation(line: 1302, column: 8, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1295, file: !40, line: 1302, column: 8)
!1335 = !DILocation(line: 1302, column: 12, scope: !1334)
!1336 = !DILocation(line: 1302, column: 8, scope: !1295)
!1337 = !DILocation(line: 1303, column: 14, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1334, file: !40, line: 1302, column: 18)
!1339 = !DILocation(line: 1303, column: 7, scope: !1338)
!1340 = !DILocation(line: 1306, column: 10, scope: !1295)
!1341 = !DILocation(line: 1306, column: 16, scope: !1295)
!1342 = !DILocation(line: 1306, column: 14, scope: !1295)
!1343 = !DILocation(line: 1306, column: 20, scope: !1295)
!1344 = !DILocation(line: 1306, column: 8, scope: !1295)
!1345 = !DILocation(line: 1307, column: 4, scope: !1295)
!1346 = !DILocation(line: 1307, column: 11, scope: !1309)
!1347 = !DILocation(line: 1307, column: 17, scope: !1309)
!1348 = !DILocation(line: 1307, column: 15, scope: !1309)
!1349 = !DILocation(line: 1307, column: 21, scope: !1309)
!1350 = !DILocation(line: 1307, column: 24, scope: !1313)
!1351 = !DILocation(line: 1307, column: 23, scope: !1313)
!1352 = !DILocation(line: 1307, column: 44, scope: !1313)
!1353 = !DILocation(line: 1307, column: 26, scope: !1313)
!1354 = !DILocation(line: 1307, column: 25, scope: !1313)
!1355 = !DILocation(line: 1307, column: 27, scope: !1313)
!1356 = !DILocation(line: 1307, column: 21, scope: !1313)
!1357 = !DILocation(line: 1307, column: 4, scope: !1321)
!1358 = !DILocation(line: 1308, column: 10, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1295, file: !40, line: 1307, column: 38)
!1360 = !DILocation(line: 1307, column: 4, scope: !1325)
!1361 = distinct !{!1361, !1345}
!1362 = !DILocation(line: 1312, column: 7, scope: !1295)
!1363 = !DILocation(line: 1313, column: 5, scope: !1295)
!1364 = !DILocation(line: 1313, column: 9, scope: !1295)
!1365 = !DILocation(line: 1315, column: 11, scope: !1295)
!1366 = !DILocation(line: 1315, column: 4, scope: !1295)
!1367 = !DILocation(line: 1316, column: 1, scope: !1295)
!1368 = distinct !DISubprogram(name: "StrUtil_ReplaceAll", scope: !40, file: !40, line: 1335, type: !1369, isLocal: false, isDefinition: true, scopeLine: 1338, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !43)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!34, !52, !52, !52}
!1371 = !DILocalVariable(name: "orig", arg: 1, scope: !1368, file: !40, line: 1335, type: !52)
!1372 = !DILocation(line: 1335, column: 32, scope: !1368)
!1373 = !DILocalVariable(name: "what", arg: 2, scope: !1368, file: !40, line: 1336, type: !52)
!1374 = !DILocation(line: 1336, column: 32, scope: !1368)
!1375 = !DILocalVariable(name: "with", arg: 3, scope: !1368, file: !40, line: 1337, type: !52)
!1376 = !DILocation(line: 1337, column: 32, scope: !1368)
!1377 = !DILocalVariable(name: "result", scope: !1368, file: !40, line: 1339, type: !34)
!1378 = !DILocation(line: 1339, column: 11, scope: !1368)
!1379 = !DILocalVariable(name: "current", scope: !1368, file: !40, line: 1340, type: !52)
!1380 = !DILocation(line: 1340, column: 17, scope: !1368)
!1381 = !DILocalVariable(name: "tmp", scope: !1368, file: !40, line: 1341, type: !34)
!1382 = !DILocation(line: 1341, column: 11, scope: !1368)
!1383 = !DILocalVariable(name: "lenWhat", scope: !1368, file: !40, line: 1342, type: !474)
!1384 = !DILocation(line: 1342, column: 12, scope: !1368)
!1385 = !DILocalVariable(name: "lenWith", scope: !1368, file: !40, line: 1343, type: !474)
!1386 = !DILocation(line: 1343, column: 12, scope: !1368)
!1387 = !DILocalVariable(name: "lenBefore", scope: !1368, file: !40, line: 1344, type: !474)
!1388 = !DILocation(line: 1344, column: 12, scope: !1368)
!1389 = !DILocalVariable(name: "occurrences", scope: !1368, file: !40, line: 1345, type: !474)
!1390 = !DILocation(line: 1345, column: 12, scope: !1368)
!1391 = !DILocalVariable(name: "lenNew", scope: !1368, file: !40, line: 1346, type: !474)
!1392 = !DILocation(line: 1346, column: 12, scope: !1368)
!1393 = !DILocation(line: 1352, column: 22, scope: !1368)
!1394 = !DILocation(line: 1352, column: 15, scope: !1368)
!1395 = !DILocation(line: 1352, column: 13, scope: !1368)
!1396 = !DILocation(line: 1353, column: 22, scope: !1368)
!1397 = !DILocation(line: 1353, column: 15, scope: !1368)
!1398 = !DILocation(line: 1353, column: 13, scope: !1368)
!1399 = !DILocation(line: 1355, column: 15, scope: !1368)
!1400 = !DILocation(line: 1355, column: 13, scope: !1368)
!1401 = !DILocation(line: 1356, column: 5, scope: !1368)
!1402 = !DILocation(line: 1356, column: 26, scope: !1403)
!1403 = !DILexicalBlockFile(scope: !1368, file: !40, discriminator: 1)
!1404 = !DILocation(line: 1356, column: 35, scope: !1403)
!1405 = !DILocation(line: 1356, column: 19, scope: !1403)
!1406 = !DILocation(line: 1356, column: 17, scope: !1403)
!1407 = !DILocation(line: 1356, column: 42, scope: !1403)
!1408 = !DILocation(line: 1356, column: 5, scope: !1403)
!1409 = !DILocation(line: 1357, column: 18, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1368, file: !40, line: 1356, column: 50)
!1411 = !DILocation(line: 1357, column: 24, scope: !1410)
!1412 = !DILocation(line: 1357, column: 22, scope: !1410)
!1413 = !DILocation(line: 1357, column: 16, scope: !1410)
!1414 = !DILocation(line: 1358, column: 8, scope: !1410)
!1415 = !DILocation(line: 1356, column: 5, scope: !1416)
!1416 = !DILexicalBlockFile(scope: !1368, file: !40, discriminator: 2)
!1417 = distinct !{!1417, !1401}
!1418 = !DILocation(line: 1361, column: 21, scope: !1368)
!1419 = !DILocation(line: 1361, column: 14, scope: !1368)
!1420 = !DILocation(line: 1361, column: 30, scope: !1368)
!1421 = !DILocation(line: 1361, column: 40, scope: !1368)
!1422 = !DILocation(line: 1361, column: 38, scope: !1368)
!1423 = !DILocation(line: 1361, column: 51, scope: !1368)
!1424 = !DILocation(line: 1361, column: 49, scope: !1368)
!1425 = !DILocation(line: 1361, column: 27, scope: !1368)
!1426 = !DILocation(line: 1361, column: 12, scope: !1368)
!1427 = !DILocation(line: 1362, column: 28, scope: !1368)
!1428 = !DILocation(line: 1362, column: 35, scope: !1368)
!1429 = !DILocation(line: 1362, column: 11, scope: !1368)
!1430 = !DILocation(line: 1362, column: 9, scope: !1368)
!1431 = !DILocation(line: 1363, column: 14, scope: !1368)
!1432 = !DILocation(line: 1363, column: 12, scope: !1368)
!1433 = !DILocation(line: 1365, column: 5, scope: !1368)
!1434 = !DILocation(line: 1365, column: 23, scope: !1403)
!1435 = !DILocation(line: 1365, column: 5, scope: !1403)
!1436 = !DILocation(line: 1366, column: 25, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1368, file: !40, line: 1365, column: 27)
!1438 = !DILocation(line: 1366, column: 31, scope: !1437)
!1439 = !DILocation(line: 1366, column: 18, scope: !1437)
!1440 = !DILocation(line: 1366, column: 16, scope: !1437)
!1441 = !DILocation(line: 1367, column: 20, scope: !1437)
!1442 = !DILocation(line: 1367, column: 30, scope: !1437)
!1443 = !DILocation(line: 1367, column: 28, scope: !1437)
!1444 = !DILocation(line: 1367, column: 18, scope: !1437)
!1445 = !DILocation(line: 1368, column: 21, scope: !1437)
!1446 = !DILocation(line: 1368, column: 26, scope: !1437)
!1447 = !DILocation(line: 1368, column: 32, scope: !1437)
!1448 = !DILocation(line: 1368, column: 14, scope: !1437)
!1449 = !DILocation(line: 1368, column: 12, scope: !1437)
!1450 = !DILocation(line: 1369, column: 15, scope: !1437)
!1451 = !DILocation(line: 1369, column: 12, scope: !1437)
!1452 = !DILocation(line: 1370, column: 21, scope: !1437)
!1453 = !DILocation(line: 1370, column: 26, scope: !1437)
!1454 = !DILocation(line: 1370, column: 32, scope: !1437)
!1455 = !DILocation(line: 1370, column: 14, scope: !1437)
!1456 = !DILocation(line: 1370, column: 12, scope: !1437)
!1457 = !DILocation(line: 1371, column: 15, scope: !1437)
!1458 = !DILocation(line: 1371, column: 12, scope: !1437)
!1459 = !DILocation(line: 1372, column: 16, scope: !1437)
!1460 = !DILocation(line: 1372, column: 28, scope: !1437)
!1461 = !DILocation(line: 1372, column: 26, scope: !1437)
!1462 = !DILocation(line: 1372, column: 13, scope: !1437)
!1463 = !DILocation(line: 1365, column: 5, scope: !1416)
!1464 = distinct !{!1464, !1433}
!1465 = !DILocation(line: 1374, column: 12, scope: !1368)
!1466 = !DILocation(line: 1374, column: 17, scope: !1368)
!1467 = !DILocation(line: 1374, column: 30, scope: !1368)
!1468 = !DILocation(line: 1374, column: 23, scope: !1368)
!1469 = !DILocation(line: 1374, column: 5, scope: !1403)
!1470 = !DILocation(line: 1376, column: 12, scope: !1368)
!1471 = !DILocation(line: 1376, column: 5, scope: !1368)
!1472 = !DILocation(line: 1376, column: 20, scope: !1368)
!1473 = !DILocation(line: 1378, column: 12, scope: !1368)
!1474 = !DILocation(line: 1378, column: 5, scope: !1368)
!1475 = distinct !DISubprogram(name: "StrUtil_GetNextItem", scope: !40, file: !40, line: 1497, type: !1476, isLocal: false, isDefinition: true, scopeLine: 1499, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !43)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!34, !1198, !35}
!1478 = !DILocalVariable(name: "list", arg: 1, scope: !1475, file: !40, line: 1497, type: !1198)
!1479 = !DILocation(line: 1497, column: 28, scope: !1475)
!1480 = !DILocalVariable(name: "delim", arg: 2, scope: !1475, file: !40, line: 1498, type: !35)
!1481 = !DILocation(line: 1498, column: 26, scope: !1475)
!1482 = !DILocalVariable(name: "token", scope: !1475, file: !40, line: 1500, type: !34)
!1483 = !DILocation(line: 1500, column: 10, scope: !1475)
!1484 = !DILocation(line: 1500, column: 19, scope: !1475)
!1485 = !DILocation(line: 1500, column: 18, scope: !1475)
!1486 = !DILocalVariable(name: "foundDelim", scope: !1475, file: !40, line: 1501, type: !34)
!1487 = !DILocation(line: 1501, column: 10, scope: !1475)
!1488 = !DILocation(line: 1503, column: 9, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1475, file: !40, line: 1503, column: 8)
!1490 = !DILocation(line: 1503, column: 8, scope: !1489)
!1491 = !DILocation(line: 1503, column: 14, scope: !1489)
!1492 = !DILocation(line: 1503, column: 8, scope: !1475)
!1493 = !DILocation(line: 1504, column: 7, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1489, file: !40, line: 1503, column: 22)
!1495 = !DILocation(line: 1507, column: 25, scope: !1475)
!1496 = !DILocation(line: 1507, column: 24, scope: !1475)
!1497 = !DILocation(line: 1507, column: 31, scope: !1475)
!1498 = !DILocation(line: 1507, column: 17, scope: !1475)
!1499 = !DILocation(line: 1507, column: 15, scope: !1475)
!1500 = !DILocation(line: 1508, column: 8, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1475, file: !40, line: 1508, column: 8)
!1502 = !DILocation(line: 1508, column: 19, scope: !1501)
!1503 = !DILocation(line: 1508, column: 8, scope: !1475)
!1504 = !DILocation(line: 1509, column: 7, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1501, file: !40, line: 1508, column: 27)
!1506 = !DILocation(line: 1509, column: 21, scope: !1505)
!1507 = !DILocation(line: 1510, column: 15, scope: !1505)
!1508 = !DILocation(line: 1510, column: 26, scope: !1505)
!1509 = !DILocation(line: 1510, column: 8, scope: !1505)
!1510 = !DILocation(line: 1510, column: 13, scope: !1505)
!1511 = !DILocation(line: 1511, column: 4, scope: !1505)
!1512 = !DILocation(line: 1512, column: 8, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1501, file: !40, line: 1511, column: 11)
!1514 = !DILocation(line: 1512, column: 13, scope: !1513)
!1515 = !DILocation(line: 1515, column: 11, scope: !1475)
!1516 = !DILocation(line: 1515, column: 4, scope: !1475)
!1517 = !DILocation(line: 1516, column: 1, scope: !1475)
!1518 = distinct !DISubprogram(name: "StrUtil_GetLastItem", scope: !40, file: !40, line: 1537, type: !1476, isLocal: false, isDefinition: true, scopeLine: 1539, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !43)
!1519 = !DILocalVariable(name: "list", arg: 1, scope: !1518, file: !40, line: 1537, type: !1198)
!1520 = !DILocation(line: 1537, column: 28, scope: !1518)
!1521 = !DILocalVariable(name: "delim", arg: 2, scope: !1518, file: !40, line: 1538, type: !35)
!1522 = !DILocation(line: 1538, column: 26, scope: !1518)
!1523 = !DILocalVariable(name: "token", scope: !1518, file: !40, line: 1540, type: !34)
!1524 = !DILocation(line: 1540, column: 10, scope: !1518)
!1525 = !DILocation(line: 1540, column: 19, scope: !1518)
!1526 = !DILocation(line: 1540, column: 18, scope: !1518)
!1527 = !DILocalVariable(name: "foundDelim", scope: !1518, file: !40, line: 1541, type: !34)
!1528 = !DILocation(line: 1541, column: 10, scope: !1518)
!1529 = !DILocation(line: 1543, column: 9, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1518, file: !40, line: 1543, column: 8)
!1531 = !DILocation(line: 1543, column: 8, scope: !1530)
!1532 = !DILocation(line: 1543, column: 14, scope: !1530)
!1533 = !DILocation(line: 1543, column: 8, scope: !1518)
!1534 = !DILocation(line: 1544, column: 7, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1530, file: !40, line: 1543, column: 22)
!1536 = !DILocation(line: 1547, column: 26, scope: !1518)
!1537 = !DILocation(line: 1547, column: 25, scope: !1518)
!1538 = !DILocation(line: 1547, column: 32, scope: !1518)
!1539 = !DILocation(line: 1547, column: 17, scope: !1518)
!1540 = !DILocation(line: 1547, column: 15, scope: !1518)
!1541 = !DILocation(line: 1548, column: 8, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1518, file: !40, line: 1548, column: 8)
!1543 = !DILocation(line: 1548, column: 19, scope: !1542)
!1544 = !DILocation(line: 1548, column: 8, scope: !1518)
!1545 = !DILocation(line: 1549, column: 7, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1542, file: !40, line: 1548, column: 27)
!1547 = !DILocation(line: 1549, column: 21, scope: !1546)
!1548 = !DILocation(line: 1550, column: 15, scope: !1546)
!1549 = !DILocation(line: 1550, column: 26, scope: !1546)
!1550 = !DILocation(line: 1550, column: 13, scope: !1546)
!1551 = !DILocation(line: 1551, column: 4, scope: !1546)
!1552 = !DILocation(line: 1552, column: 8, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1542, file: !40, line: 1551, column: 11)
!1554 = !DILocation(line: 1552, column: 13, scope: !1553)
!1555 = !DILocation(line: 1555, column: 11, scope: !1518)
!1556 = !DILocation(line: 1555, column: 4, scope: !1518)
!1557 = !DILocation(line: 1556, column: 1, scope: !1518)
!1558 = distinct !DISubprogram(name: "StrUtil_HasListItem", scope: !40, file: !40, line: 1629, type: !1559, isLocal: false, isDefinition: true, scopeLine: 1632, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !43)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!151, !52, !35, !52}
!1561 = !DILocalVariable(name: "list", arg: 1, scope: !1558, file: !40, line: 1629, type: !52)
!1562 = !DILocation(line: 1629, column: 33, scope: !1558)
!1563 = !DILocalVariable(name: "delim", arg: 2, scope: !1558, file: !40, line: 1630, type: !35)
!1564 = !DILocation(line: 1630, column: 26, scope: !1558)
!1565 = !DILocalVariable(name: "item", arg: 3, scope: !1558, file: !40, line: 1631, type: !52)
!1566 = !DILocation(line: 1631, column: 33, scope: !1558)
!1567 = !DILocation(line: 1633, column: 30, scope: !1558)
!1568 = !DILocation(line: 1633, column: 36, scope: !1558)
!1569 = !DILocation(line: 1633, column: 43, scope: !1558)
!1570 = !DILocation(line: 1633, column: 11, scope: !1558)
!1571 = !DILocation(line: 1633, column: 4, scope: !1558)
!1572 = distinct !DISubprogram(name: "StrUtilHasListItem", scope: !40, file: !40, line: 1577, type: !1573, isLocal: true, isDefinition: true, scopeLine: 1581, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !43)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!151, !52, !35, !52, !1575}
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64, align: 64)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{!25, !52, !52, !474}
!1578 = !DILocalVariable(name: "list", arg: 1, scope: !1572, file: !40, line: 1577, type: !52)
!1579 = !DILocation(line: 1577, column: 32, scope: !1572)
!1580 = !DILocalVariable(name: "delim", arg: 2, scope: !1572, file: !40, line: 1578, type: !35)
!1581 = !DILocation(line: 1578, column: 25, scope: !1572)
!1582 = !DILocalVariable(name: "item", arg: 3, scope: !1572, file: !40, line: 1579, type: !52)
!1583 = !DILocation(line: 1579, column: 32, scope: !1572)
!1584 = !DILocalVariable(name: "ncmp", arg: 4, scope: !1572, file: !40, line: 1580, type: !1575)
!1585 = !DILocation(line: 1580, column: 26, scope: !1572)
!1586 = !DILocalVariable(name: "foundDelim", scope: !1572, file: !40, line: 1582, type: !34)
!1587 = !DILocation(line: 1582, column: 10, scope: !1572)
!1588 = !DILocalVariable(name: "itemLen", scope: !1572, file: !40, line: 1583, type: !25)
!1589 = !DILocation(line: 1583, column: 8, scope: !1572)
!1590 = !DILocation(line: 1583, column: 25, scope: !1572)
!1591 = !DILocation(line: 1583, column: 18, scope: !1572)
!1592 = !DILocation(line: 1585, column: 8, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1572, file: !40, line: 1585, column: 8)
!1594 = !DILocation(line: 1585, column: 13, scope: !1593)
!1595 = !DILocation(line: 1585, column: 8, scope: !1572)
!1596 = !DILocation(line: 1586, column: 7, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1593, file: !40, line: 1585, column: 21)
!1598 = !DILocation(line: 1589, column: 4, scope: !1572)
!1599 = distinct !{!1599, !1598}
!1600 = !DILocalVariable(name: "tokenLen", scope: !1601, file: !40, line: 1590, type: !25)
!1601 = distinct !DILexicalBlock(scope: !1572, file: !40, line: 1589, column: 7)
!1602 = !DILocation(line: 1590, column: 11, scope: !1601)
!1603 = !DILocation(line: 1592, column: 27, scope: !1601)
!1604 = !DILocation(line: 1592, column: 33, scope: !1601)
!1605 = !DILocation(line: 1592, column: 20, scope: !1601)
!1606 = !DILocation(line: 1592, column: 18, scope: !1601)
!1607 = !DILocation(line: 1593, column: 11, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1601, file: !40, line: 1593, column: 11)
!1609 = !DILocation(line: 1593, column: 22, scope: !1608)
!1610 = !DILocation(line: 1593, column: 11, scope: !1601)
!1611 = !DILocation(line: 1594, column: 28, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1608, file: !40, line: 1593, column: 30)
!1613 = !DILocation(line: 1594, column: 21, scope: !1612)
!1614 = !DILocation(line: 1594, column: 19, scope: !1612)
!1615 = !DILocation(line: 1595, column: 7, scope: !1612)
!1616 = !DILocation(line: 1596, column: 21, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1608, file: !40, line: 1595, column: 14)
!1618 = !DILocation(line: 1596, column: 34, scope: !1617)
!1619 = !DILocation(line: 1596, column: 32, scope: !1617)
!1620 = !DILocation(line: 1596, column: 19, scope: !1617)
!1621 = !DILocation(line: 1599, column: 11, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1601, file: !40, line: 1599, column: 11)
!1623 = !DILocation(line: 1599, column: 22, scope: !1622)
!1624 = !DILocation(line: 1599, column: 19, scope: !1622)
!1625 = !DILocation(line: 1599, column: 31, scope: !1622)
!1626 = !DILocation(line: 1599, column: 34, scope: !1627)
!1627 = !DILexicalBlockFile(scope: !1622, file: !40, discriminator: 1)
!1628 = !DILocation(line: 1599, column: 39, scope: !1627)
!1629 = !DILocation(line: 1599, column: 45, scope: !1627)
!1630 = !DILocation(line: 1599, column: 51, scope: !1627)
!1631 = !DILocation(line: 1599, column: 60, scope: !1627)
!1632 = !DILocation(line: 1599, column: 11, scope: !1627)
!1633 = !DILocation(line: 1600, column: 10, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1622, file: !40, line: 1599, column: 66)
!1635 = !DILocation(line: 1601, column: 18, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1622, file: !40, line: 1601, column: 18)
!1637 = !DILocation(line: 1601, column: 29, scope: !1636)
!1638 = !DILocation(line: 1601, column: 18, scope: !1622)
!1639 = !DILocation(line: 1603, column: 17, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1636, file: !40, line: 1601, column: 37)
!1641 = !DILocation(line: 1603, column: 28, scope: !1640)
!1642 = !DILocation(line: 1603, column: 15, scope: !1640)
!1643 = !DILocation(line: 1604, column: 7, scope: !1640)
!1644 = !DILocation(line: 1605, column: 4, scope: !1601)
!1645 = !DILocation(line: 1605, column: 13, scope: !1646)
!1646 = !DILexicalBlockFile(scope: !1572, file: !40, discriminator: 1)
!1647 = !DILocation(line: 1605, column: 24, scope: !1646)
!1648 = !DILocation(line: 1605, column: 4, scope: !1646)
!1649 = !DILocation(line: 1607, column: 4, scope: !1572)
!1650 = !DILocation(line: 1608, column: 1, scope: !1572)
!1651 = distinct !DISubprogram(name: "StrUtilStrncmp", scope: !40, file: !40, line: 1424, type: !1576, isLocal: true, isDefinition: true, scopeLine: 1425, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !43)
!1652 = !DILocalVariable(name: "s1", arg: 1, scope: !1651, file: !40, line: 1424, type: !52)
!1653 = !DILocation(line: 1424, column: 28, scope: !1651)
!1654 = !DILocalVariable(name: "s2", arg: 2, scope: !1651, file: !40, line: 1424, type: !52)
!1655 = !DILocation(line: 1424, column: 44, scope: !1651)
!1656 = !DILocalVariable(name: "n", arg: 3, scope: !1651, file: !40, line: 1424, type: !474)
!1657 = !DILocation(line: 1424, column: 55, scope: !1651)
!1658 = !DILocation(line: 1426, column: 19, scope: !1651)
!1659 = !DILocation(line: 1426, column: 23, scope: !1651)
!1660 = !DILocation(line: 1426, column: 27, scope: !1651)
!1661 = !DILocation(line: 1426, column: 11, scope: !1651)
!1662 = !DILocation(line: 1426, column: 4, scope: !1651)
!1663 = distinct !DISubprogram(name: "StrUtil_HasListItemCase", scope: !40, file: !40, line: 1656, type: !1559, isLocal: false, isDefinition: true, scopeLine: 1659, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !43)
!1664 = !DILocalVariable(name: "list", arg: 1, scope: !1663, file: !40, line: 1656, type: !52)
!1665 = !DILocation(line: 1656, column: 37, scope: !1663)
!1666 = !DILocalVariable(name: "delim", arg: 2, scope: !1663, file: !40, line: 1657, type: !35)
!1667 = !DILocation(line: 1657, column: 30, scope: !1663)
!1668 = !DILocalVariable(name: "item", arg: 3, scope: !1663, file: !40, line: 1658, type: !52)
!1669 = !DILocation(line: 1658, column: 37, scope: !1663)
!1670 = !DILocation(line: 1660, column: 30, scope: !1663)
!1671 = !DILocation(line: 1660, column: 36, scope: !1663)
!1672 = !DILocation(line: 1660, column: 43, scope: !1663)
!1673 = !DILocation(line: 1660, column: 11, scope: !1663)
!1674 = !DILocation(line: 1660, column: 4, scope: !1663)
!1675 = distinct !DISubprogram(name: "StrUtilStrncasecmp", scope: !40, file: !40, line: 1472, type: !1576, isLocal: true, isDefinition: true, scopeLine: 1473, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !43)
!1676 = !DILocalVariable(name: "s1", arg: 1, scope: !1675, file: !40, line: 1472, type: !52)
!1677 = !DILocation(line: 1472, column: 32, scope: !1675)
!1678 = !DILocalVariable(name: "s2", arg: 2, scope: !1675, file: !40, line: 1472, type: !52)
!1679 = !DILocation(line: 1472, column: 48, scope: !1675)
!1680 = !DILocalVariable(name: "n", arg: 3, scope: !1675, file: !40, line: 1472, type: !474)
!1681 = !DILocation(line: 1472, column: 59, scope: !1675)
!1682 = !DILocation(line: 1474, column: 23, scope: !1675)
!1683 = !DILocation(line: 1474, column: 27, scope: !1675)
!1684 = !DILocation(line: 1474, column: 31, scope: !1675)
!1685 = !DILocation(line: 1474, column: 11, scope: !1675)
!1686 = !DILocation(line: 1474, column: 4, scope: !1675)
!1687 = distinct !DISubprogram(name: "StrUtil_AppendListItem", scope: !40, file: !40, line: 1682, type: !1688, isLocal: false, isDefinition: true, scopeLine: 1685, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !43)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{!34, !52, !35, !52}
!1690 = !DILocalVariable(name: "list", arg: 1, scope: !1687, file: !40, line: 1682, type: !52)
!1691 = !DILocation(line: 1682, column: 36, scope: !1687)
!1692 = !DILocalVariable(name: "delim", arg: 2, scope: !1687, file: !40, line: 1683, type: !35)
!1693 = !DILocation(line: 1683, column: 29, scope: !1687)
!1694 = !DILocalVariable(name: "item", arg: 3, scope: !1687, file: !40, line: 1684, type: !52)
!1695 = !DILocation(line: 1684, column: 36, scope: !1687)
!1696 = !DILocation(line: 1686, column: 8, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1687, file: !40, line: 1686, column: 8)
!1698 = !DILocation(line: 1686, column: 13, scope: !1697)
!1699 = !DILocation(line: 1686, column: 8, scope: !1687)
!1700 = !DILocation(line: 1687, column: 38, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1697, file: !40, line: 1686, column: 21)
!1702 = !DILocation(line: 1687, column: 14, scope: !1701)
!1703 = !DILocation(line: 1687, column: 7, scope: !1701)
!1704 = !DILocation(line: 1689, column: 42, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1697, file: !40, line: 1688, column: 11)
!1706 = !DILocation(line: 1689, column: 48, scope: !1705)
!1707 = !DILocation(line: 1689, column: 55, scope: !1705)
!1708 = !DILocation(line: 1689, column: 14, scope: !1705)
!1709 = !DILocation(line: 1689, column: 7, scope: !1705)
!1710 = !DILocation(line: 1691, column: 1, scope: !1687)
!1711 = distinct !DISubprogram(name: "StrUtil_RemoveListItem", scope: !40, file: !40, line: 1759, type: !1712, isLocal: false, isDefinition: true, scopeLine: 1762, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !43)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{null, !1714, !35, !52}
!1714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!1715 = !DILocalVariable(name: "list", arg: 1, scope: !1711, file: !40, line: 1759, type: !1714)
!1716 = !DILocation(line: 1759, column: 37, scope: !1711)
!1717 = !DILocalVariable(name: "delim", arg: 2, scope: !1711, file: !40, line: 1760, type: !35)
!1718 = !DILocation(line: 1760, column: 29, scope: !1711)
!1719 = !DILocalVariable(name: "item", arg: 3, scope: !1711, file: !40, line: 1761, type: !52)
!1720 = !DILocation(line: 1761, column: 36, scope: !1711)
!1721 = !DILocation(line: 1763, column: 26, scope: !1711)
!1722 = !DILocation(line: 1763, column: 32, scope: !1711)
!1723 = !DILocation(line: 1763, column: 39, scope: !1711)
!1724 = !DILocation(line: 1763, column: 4, scope: !1711)
!1725 = !DILocation(line: 1764, column: 1, scope: !1711)
!1726 = distinct !DISubprogram(name: "StrUtilRemoveListItem", scope: !40, file: !40, line: 1712, type: !1727, isLocal: true, isDefinition: true, scopeLine: 1716, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !43)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{null, !1714, !35, !52, !1729}
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64, align: 64)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!25, !52, !52}
!1732 = !DILocalVariable(name: "list", arg: 1, scope: !1726, file: !40, line: 1712, type: !1714)
!1733 = !DILocation(line: 1712, column: 36, scope: !1726)
!1734 = !DILocalVariable(name: "delim", arg: 2, scope: !1726, file: !40, line: 1713, type: !35)
!1735 = !DILocation(line: 1713, column: 28, scope: !1726)
!1736 = !DILocalVariable(name: "item", arg: 3, scope: !1726, file: !40, line: 1714, type: !52)
!1737 = !DILocation(line: 1714, column: 35, scope: !1726)
!1738 = !DILocalVariable(name: "cmp", arg: 4, scope: !1726, file: !40, line: 1715, type: !1729)
!1739 = !DILocation(line: 1715, column: 29, scope: !1726)
!1740 = !DILocalVariable(name: "tok", scope: !1726, file: !40, line: 1717, type: !34)
!1741 = !DILocation(line: 1717, column: 10, scope: !1726)
!1742 = !DILocalVariable(name: "work", scope: !1726, file: !40, line: 1718, type: !34)
!1743 = !DILocation(line: 1718, column: 10, scope: !1726)
!1744 = !DILocation(line: 1718, column: 17, scope: !1726)
!1745 = !DILocalVariable(name: "maxSize", scope: !1726, file: !40, line: 1719, type: !25)
!1746 = !DILocation(line: 1719, column: 8, scope: !1726)
!1747 = !DILocation(line: 1719, column: 25, scope: !1726)
!1748 = !DILocation(line: 1719, column: 18, scope: !1726)
!1749 = !DILocation(line: 1719, column: 31, scope: !1726)
!1750 = !DILocation(line: 1721, column: 4, scope: !1726)
!1751 = !DILocation(line: 1721, column: 45, scope: !1752)
!1752 = !DILexicalBlockFile(scope: !1726, file: !40, discriminator: 1)
!1753 = !DILocation(line: 1721, column: 18, scope: !1752)
!1754 = !DILocation(line: 1721, column: 16, scope: !1752)
!1755 = !DILocation(line: 1721, column: 53, scope: !1752)
!1756 = !DILocation(line: 1721, column: 4, scope: !1752)
!1757 = !DILocation(line: 1722, column: 11, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !40, line: 1722, column: 11)
!1759 = distinct !DILexicalBlock(scope: !1726, file: !40, line: 1721, column: 61)
!1760 = !DILocation(line: 1722, column: 15, scope: !1758)
!1761 = !DILocation(line: 1722, column: 20, scope: !1758)
!1762 = !DILocation(line: 1722, column: 26, scope: !1758)
!1763 = !DILocation(line: 1722, column: 11, scope: !1759)
!1764 = !DILocation(line: 1723, column: 14, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !40, line: 1723, column: 14)
!1766 = distinct !DILexicalBlock(scope: !1758, file: !40, line: 1722, column: 32)
!1767 = !DILocation(line: 1723, column: 19, scope: !1765)
!1768 = !DILocation(line: 1723, column: 14, scope: !1766)
!1769 = !DILocation(line: 1725, column: 24, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1765, file: !40, line: 1723, column: 27)
!1771 = !DILocation(line: 1725, column: 29, scope: !1770)
!1772 = !DILocation(line: 1725, column: 35, scope: !1770)
!1773 = !DILocation(line: 1725, column: 13, scope: !1770)
!1774 = !DILocation(line: 1726, column: 10, scope: !1770)
!1775 = !DILocation(line: 1726, column: 21, scope: !1776)
!1776 = !DILexicalBlockFile(scope: !1777, file: !40, discriminator: 1)
!1777 = distinct !DILexicalBlock(scope: !1765, file: !40, line: 1726, column: 21)
!1778 = !DILocation(line: 1726, column: 28, scope: !1776)
!1779 = !DILocation(line: 1726, column: 25, scope: !1776)
!1780 = !DILocation(line: 1727, column: 13, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1777, file: !40, line: 1726, column: 34)
!1782 = !DILocation(line: 1727, column: 20, scope: !1781)
!1783 = !DILocation(line: 1728, column: 10, scope: !1781)
!1784 = !DILocation(line: 1729, column: 13, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1777, file: !40, line: 1728, column: 17)
!1786 = !DILocation(line: 1729, column: 21, scope: !1785)
!1787 = !DILocation(line: 1732, column: 10, scope: !1766)
!1788 = !DILocation(line: 1733, column: 18, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1758, file: !40, line: 1733, column: 18)
!1790 = !DILocation(line: 1733, column: 23, scope: !1789)
!1791 = !DILocation(line: 1733, column: 18, scope: !1758)
!1792 = !DILocation(line: 1735, column: 21, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1789, file: !40, line: 1733, column: 31)
!1794 = !DILocation(line: 1735, column: 10, scope: !1793)
!1795 = !DILocation(line: 1735, column: 19, scope: !1793)
!1796 = !DILocation(line: 1736, column: 7, scope: !1793)
!1797 = !DILocation(line: 1721, column: 4, scope: !1798)
!1798 = !DILexicalBlockFile(scope: !1726, file: !40, discriminator: 2)
!1799 = distinct !{!1799, !1750}
!1800 = !DILocation(line: 1738, column: 1, scope: !1726)
!1801 = distinct !DISubprogram(name: "StrUtilStrcmp", scope: !40, file: !40, line: 1400, type: !1730, isLocal: true, isDefinition: true, scopeLine: 1401, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !43)
!1802 = !DILocalVariable(name: "s1", arg: 1, scope: !1801, file: !40, line: 1400, type: !52)
!1803 = !DILocation(line: 1400, column: 27, scope: !1801)
!1804 = !DILocalVariable(name: "s2", arg: 2, scope: !1801, file: !40, line: 1400, type: !52)
!1805 = !DILocation(line: 1400, column: 43, scope: !1801)
!1806 = !DILocation(line: 1402, column: 18, scope: !1801)
!1807 = !DILocation(line: 1402, column: 22, scope: !1801)
!1808 = !DILocation(line: 1402, column: 11, scope: !1801)
!1809 = !DILocation(line: 1402, column: 4, scope: !1801)
!1810 = distinct !DISubprogram(name: "StrUtil_RemoveListItemCase", scope: !40, file: !40, line: 1785, type: !1712, isLocal: false, isDefinition: true, scopeLine: 1788, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !43)
!1811 = !DILocalVariable(name: "list", arg: 1, scope: !1810, file: !40, line: 1785, type: !1714)
!1812 = !DILocation(line: 1785, column: 41, scope: !1810)
!1813 = !DILocalVariable(name: "delim", arg: 2, scope: !1810, file: !40, line: 1786, type: !35)
!1814 = !DILocation(line: 1786, column: 33, scope: !1810)
!1815 = !DILocalVariable(name: "item", arg: 3, scope: !1810, file: !40, line: 1787, type: !52)
!1816 = !DILocation(line: 1787, column: 40, scope: !1810)
!1817 = !DILocation(line: 1789, column: 26, scope: !1810)
!1818 = !DILocation(line: 1789, column: 32, scope: !1810)
!1819 = !DILocation(line: 1789, column: 39, scope: !1810)
!1820 = !DILocation(line: 1789, column: 4, scope: !1810)
!1821 = !DILocation(line: 1790, column: 1, scope: !1810)
!1822 = distinct !DISubprogram(name: "StrUtilStrcasecmp", scope: !40, file: !40, line: 1448, type: !1730, isLocal: true, isDefinition: true, scopeLine: 1449, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !43)
!1823 = !DILocalVariable(name: "s1", arg: 1, scope: !1822, file: !40, line: 1448, type: !52)
!1824 = !DILocation(line: 1448, column: 31, scope: !1822)
!1825 = !DILocalVariable(name: "s2", arg: 2, scope: !1822, file: !40, line: 1448, type: !52)
!1826 = !DILocation(line: 1448, column: 47, scope: !1822)
!1827 = !DILocation(line: 1450, column: 22, scope: !1822)
!1828 = !DILocation(line: 1450, column: 26, scope: !1822)
!1829 = !DILocation(line: 1450, column: 11, scope: !1822)
!1830 = !DILocation(line: 1450, column: 4, scope: !1822)
