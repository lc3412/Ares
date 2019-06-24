; ModuleID = './cpNameUtil.o.i'
source_filename = "./cpNameUtil.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"root\00", align 1
@CPNameUtil_WindowsConvertToRoot.partialName = internal constant [5 x i8] c"root\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"\5Cunc\5C\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"\5Cdrive\5C\00", align 1

; Function Attrs: nounwind uwtable
define i8* @CPNameUtil_Strrchr(i8*, i64, i8 signext) #0 !dbg !24 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !27, metadata !28), !dbg !29
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !30, metadata !28), !dbg !31
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !32, metadata !28), !dbg !33
  call void @llvm.dbg.declare(metadata i64* %7, metadata !34, metadata !28), !dbg !40
  %8 = load i64, i64* %5, align 8, !dbg !41
  %9 = sub i64 %8, 1, !dbg !43
  store i64 %9, i64* %7, align 8, !dbg !44
  br label %10, !dbg !45

; <label>:10:                                     ; preds = %25, %3
  %11 = load i64, i64* %7, align 8, !dbg !46
  %12 = load i8*, i8** %4, align 8, !dbg !48
  %13 = getelementptr inbounds i8, i8* %12, i64 %11, !dbg !48
  %14 = load i8, i8* %13, align 1, !dbg !48
  %15 = sext i8 %14 to i32, !dbg !48
  %16 = load i8, i8* %6, align 1, !dbg !49
  %17 = sext i8 %16 to i32, !dbg !49
  %18 = icmp ne i32 %15, %17, !dbg !50
  br i1 %18, label %19, label %22, !dbg !51

; <label>:19:                                     ; preds = %10
  %20 = load i64, i64* %7, align 8, !dbg !52
  %21 = icmp sge i64 %20, 0, !dbg !54
  br label %22

; <label>:22:                                     ; preds = %19, %10
  %23 = phi i1 [ false, %10 ], [ %21, %19 ]
  br i1 %23, label %24, label %28, !dbg !55

; <label>:24:                                     ; preds = %22
  br label %25, !dbg !57

; <label>:25:                                     ; preds = %24
  %26 = load i64, i64* %7, align 8, !dbg !59
  %27 = add nsw i64 %26, -1, !dbg !59
  store i64 %27, i64* %7, align 8, !dbg !59
  br label %10, !dbg !60, !llvm.loop !62

; <label>:28:                                     ; preds = %22
  %29 = load i64, i64* %7, align 8, !dbg !64
  %30 = icmp slt i64 %29, 0, !dbg !65
  br i1 %30, label %31, label %32, !dbg !66

; <label>:31:                                     ; preds = %28
  br label %36, !dbg !67

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %4, align 8, !dbg !69
  %34 = load i64, i64* %7, align 8, !dbg !71
  %35 = getelementptr inbounds i8, i8* %33, i64 %34, !dbg !72
  br label %36, !dbg !73

; <label>:36:                                     ; preds = %32, %31
  %37 = phi i8* [ null, %31 ], [ %35, %32 ], !dbg !74
  ret i8* %37, !dbg !76
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @CPNameUtil_LinuxConvertToRoot(i8*, i64, i8*) #0 !dbg !77 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !78, metadata !28), !dbg !79
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !80, metadata !28), !dbg !81
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !82, metadata !28), !dbg !83
  call void @llvm.dbg.declare(metadata i64* %8, metadata !84, metadata !28), !dbg !86
  store i64 4, i64* %8, align 8, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %9, metadata !87, metadata !28), !dbg !88
  %10 = load i64, i64* %6, align 8, !dbg !89
  %11 = icmp ule i64 %10, 4, !dbg !91
  br i1 %11, label %12, label %13, !dbg !92

; <label>:12:                                     ; preds = %3
  store i32 -1, i32* %4, align 4, !dbg !93
  br label %37, !dbg !93

; <label>:13:                                     ; preds = %3
  %14 = load i8*, i8** %7, align 8, !dbg !95
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 4, i32 1, i1 false), !dbg !96
  %15 = load i8*, i8** %7, align 8, !dbg !97
  %16 = getelementptr inbounds i8, i8* %15, i64 4, !dbg !97
  store i8 0, i8* %16, align 1, !dbg !98
  %17 = load i8*, i8** %5, align 8, !dbg !99
  %18 = load i64, i64* %6, align 8, !dbg !100
  %19 = sub i64 %18, 4, !dbg !101
  %20 = sub i64 %19, 1, !dbg !102
  %21 = load i8*, i8** %7, align 8, !dbg !103
  %22 = getelementptr inbounds i8, i8* %21, i64 4, !dbg !104
  %23 = getelementptr inbounds i8, i8* %22, i64 1, !dbg !105
  %24 = call i32 @CPName_LinuxConvertTo(i8* %17, i64 %20, i8* %23), !dbg !106
  store i32 %24, i32* %9, align 4, !dbg !107
  %25 = load i32, i32* %9, align 4, !dbg !108
  %26 = icmp slt i32 %25, 0, !dbg !109
  br i1 %26, label %27, label %29, !dbg !110

; <label>:27:                                     ; preds = %13
  %28 = load i32, i32* %9, align 4, !dbg !111
  br label %35, !dbg !113

; <label>:29:                                     ; preds = %13
  %30 = load i32, i32* %9, align 4, !dbg !114
  %31 = sext i32 %30 to i64, !dbg !114
  %32 = add i64 %31, 4, !dbg !116
  %33 = add i64 %32, 1, !dbg !117
  %34 = trunc i64 %33 to i32, !dbg !118
  br label %35, !dbg !119

; <label>:35:                                     ; preds = %29, %27
  %36 = phi i32 [ %28, %27 ], [ %34, %29 ], !dbg !120
  store i32 %36, i32* %4, align 4, !dbg !122
  br label %37, !dbg !122

; <label>:37:                                     ; preds = %35, %12
  %38 = load i32, i32* %4, align 4, !dbg !123
  ret i32 %38, !dbg !123
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @CPName_LinuxConvertTo(i8*, i64, i8*) #3

; Function Attrs: nounwind uwtable
define i32 @CPNameUtil_WindowsConvertToRoot(i8*, i64, i8*) #0 !dbg !9 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !124, metadata !28), !dbg !125
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !126, metadata !28), !dbg !127
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !128, metadata !28), !dbg !129
  call void @llvm.dbg.declare(metadata i64* %7, metadata !130, metadata !28), !dbg !131
  store i64 4, i64* %7, align 8, !dbg !131
  call void @llvm.dbg.declare(metadata i8** %8, metadata !132, metadata !28), !dbg !133
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8** %8, align 8, !dbg !133
  call void @llvm.dbg.declare(metadata i64* %9, metadata !134, metadata !28), !dbg !135
  call void @llvm.dbg.declare(metadata i8** %10, metadata !136, metadata !28), !dbg !137
  call void @llvm.dbg.declare(metadata i64* %11, metadata !138, metadata !28), !dbg !139
  call void @llvm.dbg.declare(metadata i64* %12, metadata !140, metadata !28), !dbg !141
  call void @llvm.dbg.declare(metadata i32* %13, metadata !142, metadata !28), !dbg !143
  %14 = load i8*, i8** %4, align 8, !dbg !144
  %15 = getelementptr inbounds i8, i8* %14, i64 0, !dbg !144
  %16 = load i8, i8* %15, align 1, !dbg !144
  %17 = sext i8 %16 to i32, !dbg !144
  %18 = icmp eq i32 %17, 92, !dbg !146
  br i1 %18, label %19, label %26, !dbg !147

; <label>:19:                                     ; preds = %3
  %20 = load i8*, i8** %4, align 8, !dbg !148
  %21 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !148
  %22 = load i8, i8* %21, align 1, !dbg !148
  %23 = sext i8 %22 to i32, !dbg !148
  %24 = icmp eq i32 %23, 92, !dbg !150
  br i1 %24, label %25, label %26, !dbg !151

; <label>:25:                                     ; preds = %19
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8** %8, align 8, !dbg !152
  store i64 5, i64* %9, align 8, !dbg !154
  br label %27, !dbg !155

; <label>:26:                                     ; preds = %19, %3
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8** %8, align 8, !dbg !156
  store i64 7, i64* %9, align 8, !dbg !158
  br label %27

; <label>:27:                                     ; preds = %26, %25
  br label %28, !dbg !159

; <label>:28:                                     ; preds = %33, %27
  %29 = load i8*, i8** %4, align 8, !dbg !160
  %30 = load i8, i8* %29, align 1, !dbg !162
  %31 = sext i8 %30 to i32, !dbg !162
  %32 = icmp eq i32 %31, 92, !dbg !163
  br i1 %32, label %33, label %36, !dbg !164

; <label>:33:                                     ; preds = %28
  %34 = load i8*, i8** %4, align 8, !dbg !165
  %35 = getelementptr inbounds i8, i8* %34, i32 1, !dbg !165
  store i8* %35, i8** %4, align 8, !dbg !165
  br label %28, !dbg !167, !llvm.loop !169

; <label>:36:                                     ; preds = %28
  %37 = load i8*, i8** %4, align 8, !dbg !170
  %38 = call i64 @strlen(i8* %37) #6, !dbg !171
  store i64 %38, i64* %12, align 8, !dbg !172
  %39 = load i64, i64* %9, align 8, !dbg !173
  %40 = add i64 4, %39, !dbg !174
  %41 = load i64, i64* %12, align 8, !dbg !175
  %42 = add i64 %40, %41, !dbg !176
  store i64 %42, i64* %11, align 8, !dbg !177
  %43 = load i64, i64* %11, align 8, !dbg !178
  %44 = add i64 %43, 1, !dbg !179
  %45 = call i8* @UtilSafeMalloc0(i64 %44), !dbg !180
  store i8* %45, i8** %10, align 8, !dbg !181
  %46 = load i8*, i8** %10, align 8, !dbg !182
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @CPNameUtil_WindowsConvertToRoot.partialName, i32 0, i32 0), i64 4, i32 1, i1 false), !dbg !183
  %47 = load i8*, i8** %10, align 8, !dbg !184
  %48 = getelementptr inbounds i8, i8* %47, i64 4, !dbg !185
  %49 = load i8*, i8** %8, align 8, !dbg !186
  %50 = load i64, i64* %9, align 8, !dbg !187
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %49, i64 %50, i32 1, i1 false), !dbg !188
  %51 = load i8*, i8** %4, align 8, !dbg !189
  %52 = getelementptr inbounds i8, i8* %51, i64 1, !dbg !189
  %53 = load i8, i8* %52, align 1, !dbg !189
  %54 = sext i8 %53 to i32, !dbg !189
  %55 = icmp eq i32 %54, 58, !dbg !191
  br i1 %55, label %56, label %75, !dbg !192

; <label>:56:                                     ; preds = %36
  %57 = load i8*, i8** %4, align 8, !dbg !193
  %58 = getelementptr inbounds i8, i8* %57, i64 0, !dbg !193
  %59 = load i8, i8* %58, align 1, !dbg !193
  %60 = load i64, i64* %9, align 8, !dbg !195
  %61 = add i64 4, %60, !dbg !196
  %62 = load i8*, i8** %10, align 8, !dbg !197
  %63 = getelementptr inbounds i8, i8* %62, i64 %61, !dbg !197
  store i8 %59, i8* %63, align 1, !dbg !198
  %64 = load i8*, i8** %10, align 8, !dbg !199
  %65 = getelementptr inbounds i8, i8* %64, i64 4, !dbg !200
  %66 = load i64, i64* %9, align 8, !dbg !201
  %67 = getelementptr inbounds i8, i8* %65, i64 %66, !dbg !202
  %68 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !203
  %69 = load i8*, i8** %4, align 8, !dbg !204
  %70 = getelementptr inbounds i8, i8* %69, i64 2, !dbg !205
  %71 = load i64, i64* %12, align 8, !dbg !206
  %72 = sub i64 %71, 2, !dbg !207
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %70, i64 %72, i32 1, i1 false), !dbg !208
  %73 = load i64, i64* %11, align 8, !dbg !209
  %74 = add i64 %73, -1, !dbg !209
  store i64 %74, i64* %11, align 8, !dbg !209
  br label %82, !dbg !210

; <label>:75:                                     ; preds = %36
  %76 = load i8*, i8** %10, align 8, !dbg !211
  %77 = getelementptr inbounds i8, i8* %76, i64 4, !dbg !213
  %78 = load i64, i64* %9, align 8, !dbg !214
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !215
  %80 = load i8*, i8** %4, align 8, !dbg !216
  %81 = load i64, i64* %12, align 8, !dbg !217
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %79, i8* %80, i64 %81, i32 1, i1 false), !dbg !218
  br label %82

; <label>:82:                                     ; preds = %75, %56
  %83 = load i64, i64* %11, align 8, !dbg !219
  %84 = load i8*, i8** %10, align 8, !dbg !220
  %85 = getelementptr inbounds i8, i8* %84, i64 %83, !dbg !220
  store i8 0, i8* %85, align 1, !dbg !221
  %86 = load i8*, i8** %10, align 8, !dbg !222
  %87 = load i64, i64* %5, align 8, !dbg !223
  %88 = load i8*, i8** %6, align 8, !dbg !224
  %89 = call i32 @CPName_WindowsConvertTo(i8* %86, i64 %87, i8* %88), !dbg !225
  store i32 %89, i32* %13, align 4, !dbg !226
  %90 = load i8*, i8** %10, align 8, !dbg !227
  call void @free(i8* %90) #7, !dbg !228
  %91 = load i32, i32* %13, align 4, !dbg !229
  ret i32 %91, !dbg !230
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i8* @UtilSafeMalloc0(i64) #3

declare i32 @CPName_WindowsConvertTo(i8*, i64, i8*) #3

; Function Attrs: nounwind
declare void @free(i8*) #5

; Function Attrs: nounwind uwtable
define signext i8 @CPNameUtil_Utf8FormHostToUtf8FormC(i8*, i64, i8**, i64*) #0 !dbg !231 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !238, metadata !28), !dbg !239
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !240, metadata !28), !dbg !241
  store i8** %2, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !242, metadata !28), !dbg !243
  store i64* %3, i64** %8, align 8
  call void @llvm.dbg.declare(metadata i64** %8, metadata !244, metadata !28), !dbg !245
  %9 = load i8*, i8** %5, align 8, !dbg !246
  %10 = load i64, i64* %6, align 8, !dbg !247
  %11 = load i8**, i8*** %7, align 8, !dbg !248
  %12 = load i64*, i64** %8, align 8, !dbg !249
  %13 = call signext i8 @CPNameUtilConvertUtf8FormCAndD(i8* %9, i64 %10, i8 signext 1, i8** %11, i64* %12), !dbg !250
  ret i8 %13, !dbg !251
}

declare signext i8 @CPNameUtilConvertUtf8FormCAndD(i8*, i64, i8 signext, i8**, i64*) #3

; Function Attrs: nounwind uwtable
define signext i8 @CPNameUtil_Utf8FormCToUtf8FormHost(i8*, i64, i8**, i64*) #0 !dbg !252 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !253, metadata !28), !dbg !254
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !255, metadata !28), !dbg !256
  store i8** %2, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !257, metadata !28), !dbg !258
  store i64* %3, i64** %8, align 8
  call void @llvm.dbg.declare(metadata i64** %8, metadata !259, metadata !28), !dbg !260
  %9 = load i8*, i8** %5, align 8, !dbg !261
  %10 = load i64, i64* %6, align 8, !dbg !262
  %11 = load i8**, i8*** %7, align 8, !dbg !263
  %12 = load i64*, i64** %8, align 8, !dbg !264
  %13 = call signext i8 @CPNameUtilConvertUtf8FormCAndD(i8* %9, i64 %10, i8 signext 0, i8** %11, i64* %12), !dbg !265
  ret i8 %13, !dbg !266
}

; Function Attrs: nounwind uwtable
define void @CPNameUtil_CharReplace(i8*, i64, i8 signext, i8 signext) #0 !dbg !267 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !270, metadata !28), !dbg !271
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !272, metadata !28), !dbg !273
  store i8 %2, i8* %7, align 1
  call void @llvm.dbg.declare(metadata i8* %7, metadata !274, metadata !28), !dbg !275
  store i8 %3, i8* %8, align 1
  call void @llvm.dbg.declare(metadata i8* %8, metadata !276, metadata !28), !dbg !277
  call void @llvm.dbg.declare(metadata i64* %9, metadata !278, metadata !28), !dbg !279
  store i64 0, i64* %9, align 8, !dbg !280
  br label %10, !dbg !282

; <label>:10:                                     ; preds = %29, %4
  %11 = load i64, i64* %9, align 8, !dbg !283
  %12 = load i64, i64* %6, align 8, !dbg !286
  %13 = icmp ult i64 %11, %12, !dbg !287
  br i1 %13, label %14, label %32, !dbg !288

; <label>:14:                                     ; preds = %10
  %15 = load i64, i64* %9, align 8, !dbg !289
  %16 = load i8*, i8** %5, align 8, !dbg !292
  %17 = getelementptr inbounds i8, i8* %16, i64 %15, !dbg !292
  %18 = load i8, i8* %17, align 1, !dbg !292
  %19 = sext i8 %18 to i32, !dbg !292
  %20 = load i8, i8* %7, align 1, !dbg !293
  %21 = sext i8 %20 to i32, !dbg !293
  %22 = icmp eq i32 %19, %21, !dbg !294
  br i1 %22, label %23, label %28, !dbg !295

; <label>:23:                                     ; preds = %14
  %24 = load i8, i8* %8, align 1, !dbg !296
  %25 = load i64, i64* %9, align 8, !dbg !298
  %26 = load i8*, i8** %5, align 8, !dbg !299
  %27 = getelementptr inbounds i8, i8* %26, i64 %25, !dbg !299
  store i8 %24, i8* %27, align 1, !dbg !300
  br label %28, !dbg !301

; <label>:28:                                     ; preds = %23, %14
  br label %29, !dbg !302

; <label>:29:                                     ; preds = %28
  %30 = load i64, i64* %9, align 8, !dbg !303
  %31 = add i64 %30, 1, !dbg !303
  store i64 %31, i64* %9, align 8, !dbg !303
  br label %10, !dbg !305, !llvm.loop !306

; <label>:32:                                     ; preds = %10
  ret void, !dbg !308
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { argmemonly nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!21, !22}
!llvm.ident = !{!23}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !7)
!1 = !DIFile(filename: "cpNameUtil.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line322")
!2 = !{}
!3 = !{!4, !6}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!6 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!7 = !{!8}
!8 = distinct !DIGlobalVariable(name: "partialName", scope: !9, file: !10, line: 162, type: !18, isLocal: true, isDefinition: true, variable: [5 x i8]* @CPNameUtil_WindowsConvertToRoot.partialName)
!9 = distinct !DISubprogram(name: "CPNameUtil_WindowsConvertToRoot", scope: !10, file: !10, line: 158, type: !11, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!10 = !DIFile(filename: "cpNameUtil.c", directory: "/home/lichi/Desktop/open-vm-tools/line322")
!11 = !DISubroutineType(types: !12)
!12 = !{!6, !13, !15, !4}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !16, line: 216, baseType: !17)
!16 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line322")
!17 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 40, align: 8, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 5)
!21 = !{i32 2, !"Dwarf Version", i32 4}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!24 = distinct !DISubprogram(name: "CPNameUtil_Strrchr", scope: !10, file: !10, line: 73, type: !25, isLocal: false, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!25 = !DISubroutineType(types: !26)
!26 = !{!4, !13, !15, !5}
!27 = !DILocalVariable(name: "cpNameIn", arg: 1, scope: !24, file: !10, line: 73, type: !13)
!28 = !DIExpression()
!29 = !DILocation(line: 73, column: 32, scope: !24)
!30 = !DILocalVariable(name: "cpNameInSize", arg: 2, scope: !24, file: !10, line: 74, type: !15)
!31 = !DILocation(line: 74, column: 27, scope: !24)
!32 = !DILocalVariable(name: "searchChar", arg: 3, scope: !24, file: !10, line: 75, type: !5)
!33 = !DILocation(line: 75, column: 25, scope: !24)
!34 = !DILocalVariable(name: "index", scope: !24, file: !10, line: 77, type: !35)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !36, line: 109, baseType: !37)
!36 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line322")
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !38, line: 172, baseType: !39)
!38 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line322")
!39 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!40 = !DILocation(line: 77, column: 12, scope: !24)
!41 = !DILocation(line: 82, column: 17, scope: !42)
!42 = distinct !DILexicalBlock(scope: !24, file: !10, line: 82, column: 4)
!43 = !DILocation(line: 82, column: 30, scope: !42)
!44 = !DILocation(line: 82, column: 15, scope: !42)
!45 = !DILocation(line: 82, column: 9, scope: !42)
!46 = !DILocation(line: 83, column: 18, scope: !47)
!47 = distinct !DILexicalBlock(scope: !42, file: !10, line: 82, column: 4)
!48 = !DILocation(line: 83, column: 9, scope: !47)
!49 = !DILocation(line: 83, column: 28, scope: !47)
!50 = !DILocation(line: 83, column: 25, scope: !47)
!51 = !DILocation(line: 83, column: 39, scope: !47)
!52 = !DILocation(line: 83, column: 42, scope: !53)
!53 = !DILexicalBlockFile(scope: !47, file: !10, discriminator: 1)
!54 = !DILocation(line: 83, column: 48, scope: !53)
!55 = !DILocation(line: 82, column: 4, scope: !56)
!56 = !DILexicalBlockFile(scope: !42, file: !10, discriminator: 1)
!57 = !DILocation(line: 82, column: 4, scope: !58)
!58 = !DILexicalBlockFile(scope: !42, file: !10, discriminator: 2)
!59 = !DILocation(line: 84, column: 14, scope: !47)
!60 = !DILocation(line: 82, column: 4, scope: !61)
!61 = !DILexicalBlockFile(scope: !47, file: !10, discriminator: 3)
!62 = distinct !{!62, !63}
!63 = !DILocation(line: 82, column: 4, scope: !24)
!64 = !DILocation(line: 86, column: 12, scope: !24)
!65 = !DILocation(line: 86, column: 18, scope: !24)
!66 = !DILocation(line: 86, column: 11, scope: !24)
!67 = !DILocation(line: 86, column: 11, scope: !68)
!68 = !DILexicalBlockFile(scope: !24, file: !10, discriminator: 1)
!69 = !DILocation(line: 86, column: 40, scope: !70)
!70 = !DILexicalBlockFile(scope: !24, file: !10, discriminator: 2)
!71 = !DILocation(line: 86, column: 51, scope: !70)
!72 = !DILocation(line: 86, column: 49, scope: !70)
!73 = !DILocation(line: 86, column: 11, scope: !70)
!74 = !DILocation(line: 86, column: 11, scope: !75)
!75 = !DILexicalBlockFile(scope: !24, file: !10, discriminator: 3)
!76 = !DILocation(line: 86, column: 4, scope: !75)
!77 = distinct !DISubprogram(name: "CPNameUtil_LinuxConvertToRoot", scope: !10, file: !10, line: 110, type: !11, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!78 = !DILocalVariable(name: "nameIn", arg: 1, scope: !77, file: !10, line: 110, type: !13)
!79 = !DILocation(line: 110, column: 43, scope: !77)
!80 = !DILocalVariable(name: "bufOutSize", arg: 2, scope: !77, file: !10, line: 111, type: !15)
!81 = !DILocation(line: 111, column: 38, scope: !77)
!82 = !DILocalVariable(name: "bufOut", arg: 3, scope: !77, file: !10, line: 112, type: !4)
!83 = !DILocation(line: 112, column: 37, scope: !77)
!84 = !DILocalVariable(name: "shareNameSize", scope: !77, file: !10, line: 114, type: !85)
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!86 = !DILocation(line: 114, column: 17, scope: !77)
!87 = !DILocalVariable(name: "result", scope: !77, file: !10, line: 116, type: !6)
!88 = !DILocation(line: 116, column: 8, scope: !77)
!89 = !DILocation(line: 121, column: 8, scope: !90)
!90 = distinct !DILexicalBlock(scope: !77, file: !10, line: 121, column: 8)
!91 = !DILocation(line: 121, column: 19, scope: !90)
!92 = !DILocation(line: 121, column: 8, scope: !77)
!93 = !DILocation(line: 122, column: 7, scope: !94)
!94 = distinct !DILexicalBlock(scope: !90, file: !10, line: 121, column: 37)
!95 = !DILocation(line: 126, column: 11, scope: !77)
!96 = !DILocation(line: 126, column: 4, scope: !77)
!97 = !DILocation(line: 127, column: 4, scope: !77)
!98 = !DILocation(line: 127, column: 26, scope: !77)
!99 = !DILocation(line: 129, column: 35, scope: !77)
!100 = !DILocation(line: 129, column: 43, scope: !77)
!101 = !DILocation(line: 129, column: 54, scope: !77)
!102 = !DILocation(line: 129, column: 70, scope: !77)
!103 = !DILocation(line: 130, column: 35, scope: !77)
!104 = !DILocation(line: 130, column: 42, scope: !77)
!105 = !DILocation(line: 130, column: 58, scope: !77)
!106 = !DILocation(line: 129, column: 13, scope: !77)
!107 = !DILocation(line: 129, column: 11, scope: !77)
!108 = !DILocation(line: 133, column: 12, scope: !77)
!109 = !DILocation(line: 133, column: 19, scope: !77)
!110 = !DILocation(line: 133, column: 11, scope: !77)
!111 = !DILocation(line: 133, column: 26, scope: !112)
!112 = !DILexicalBlockFile(scope: !77, file: !10, discriminator: 1)
!113 = !DILocation(line: 133, column: 11, scope: !112)
!114 = !DILocation(line: 133, column: 41, scope: !115)
!115 = !DILexicalBlockFile(scope: !77, file: !10, discriminator: 2)
!116 = !DILocation(line: 133, column: 48, scope: !115)
!117 = !DILocation(line: 133, column: 64, scope: !115)
!118 = !DILocation(line: 133, column: 35, scope: !115)
!119 = !DILocation(line: 133, column: 11, scope: !115)
!120 = !DILocation(line: 133, column: 11, scope: !121)
!121 = !DILexicalBlockFile(scope: !77, file: !10, discriminator: 3)
!122 = !DILocation(line: 133, column: 4, scope: !121)
!123 = !DILocation(line: 134, column: 1, scope: !77)
!124 = !DILocalVariable(name: "nameIn", arg: 1, scope: !9, file: !10, line: 158, type: !13)
!125 = !DILocation(line: 158, column: 45, scope: !9)
!126 = !DILocalVariable(name: "bufOutSize", arg: 2, scope: !9, file: !10, line: 159, type: !15)
!127 = !DILocation(line: 159, column: 40, scope: !9)
!128 = !DILocalVariable(name: "bufOut", arg: 3, scope: !9, file: !10, line: 160, type: !4)
!129 = !DILocation(line: 160, column: 39, scope: !9)
!130 = !DILocalVariable(name: "partialNameLen", scope: !9, file: !10, line: 163, type: !85)
!131 = !DILocation(line: 163, column: 17, scope: !9)
!132 = !DILocalVariable(name: "partialNameSuffix", scope: !9, file: !10, line: 164, type: !13)
!133 = !DILocation(line: 164, column: 16, scope: !9)
!134 = !DILocalVariable(name: "partialNameSuffixLen", scope: !9, file: !10, line: 165, type: !15)
!135 = !DILocation(line: 165, column: 11, scope: !9)
!136 = !DILocalVariable(name: "fullName", scope: !9, file: !10, line: 166, type: !4)
!137 = !DILocation(line: 166, column: 10, scope: !9)
!138 = !DILocalVariable(name: "fullNameLen", scope: !9, file: !10, line: 167, type: !15)
!139 = !DILocation(line: 167, column: 11, scope: !9)
!140 = !DILocalVariable(name: "nameLen", scope: !9, file: !10, line: 168, type: !15)
!141 = !DILocation(line: 168, column: 11, scope: !9)
!142 = !DILocalVariable(name: "result", scope: !9, file: !10, line: 169, type: !6)
!143 = !DILocation(line: 169, column: 8, scope: !9)
!144 = !DILocation(line: 183, column: 8, scope: !145)
!145 = distinct !DILexicalBlock(scope: !9, file: !10, line: 183, column: 8)
!146 = !DILocation(line: 183, column: 18, scope: !145)
!147 = !DILocation(line: 183, column: 26, scope: !145)
!148 = !DILocation(line: 183, column: 29, scope: !149)
!149 = !DILexicalBlockFile(scope: !145, file: !10, discriminator: 1)
!150 = !DILocation(line: 183, column: 39, scope: !149)
!151 = !DILocation(line: 183, column: 8, scope: !149)
!152 = !DILocation(line: 184, column: 25, scope: !153)
!153 = distinct !DILexicalBlock(scope: !145, file: !10, line: 183, column: 48)
!154 = !DILocation(line: 185, column: 28, scope: !153)
!155 = !DILocation(line: 188, column: 4, scope: !153)
!156 = !DILocation(line: 189, column: 25, scope: !157)
!157 = distinct !DILexicalBlock(scope: !145, file: !10, line: 188, column: 11)
!158 = !DILocation(line: 190, column: 28, scope: !157)
!159 = !DILocation(line: 196, column: 4, scope: !9)
!160 = !DILocation(line: 196, column: 12, scope: !161)
!161 = !DILexicalBlockFile(scope: !9, file: !10, discriminator: 1)
!162 = !DILocation(line: 196, column: 11, scope: !161)
!163 = !DILocation(line: 196, column: 19, scope: !161)
!164 = !DILocation(line: 196, column: 4, scope: !161)
!165 = !DILocation(line: 197, column: 13, scope: !166)
!166 = distinct !DILexicalBlock(scope: !9, file: !10, line: 196, column: 28)
!167 = !DILocation(line: 196, column: 4, scope: !168)
!168 = !DILexicalBlockFile(scope: !9, file: !10, discriminator: 2)
!169 = distinct !{!169, !159}
!170 = !DILocation(line: 200, column: 21, scope: !9)
!171 = !DILocation(line: 200, column: 14, scope: !9)
!172 = !DILocation(line: 200, column: 12, scope: !9)
!173 = !DILocation(line: 201, column: 35, scope: !9)
!174 = !DILocation(line: 201, column: 33, scope: !9)
!175 = !DILocation(line: 201, column: 58, scope: !9)
!176 = !DILocation(line: 201, column: 56, scope: !9)
!177 = !DILocation(line: 201, column: 16, scope: !9)
!178 = !DILocation(line: 202, column: 40, scope: !9)
!179 = !DILocation(line: 202, column: 52, scope: !9)
!180 = !DILocation(line: 202, column: 23, scope: !9)
!181 = !DILocation(line: 202, column: 13, scope: !9)
!182 = !DILocation(line: 204, column: 11, scope: !9)
!183 = !DILocation(line: 204, column: 4, scope: !9)
!184 = !DILocation(line: 206, column: 11, scope: !9)
!185 = !DILocation(line: 206, column: 20, scope: !9)
!186 = !DILocation(line: 206, column: 38, scope: !9)
!187 = !DILocation(line: 206, column: 57, scope: !9)
!188 = !DILocation(line: 206, column: 4, scope: !9)
!189 = !DILocation(line: 207, column: 8, scope: !190)
!190 = distinct !DILexicalBlock(scope: !9, file: !10, line: 207, column: 8)
!191 = !DILocation(line: 207, column: 18, scope: !190)
!192 = !DILocation(line: 207, column: 8, scope: !9)
!193 = !DILocation(line: 213, column: 57, scope: !194)
!194 = distinct !DILexicalBlock(scope: !190, file: !10, line: 207, column: 26)
!195 = !DILocation(line: 213, column: 33, scope: !194)
!196 = !DILocation(line: 213, column: 31, scope: !194)
!197 = !DILocation(line: 213, column: 7, scope: !194)
!198 = !DILocation(line: 213, column: 55, scope: !194)
!199 = !DILocation(line: 214, column: 14, scope: !194)
!200 = !DILocation(line: 214, column: 23, scope: !194)
!201 = !DILocation(line: 214, column: 42, scope: !194)
!202 = !DILocation(line: 214, column: 40, scope: !194)
!203 = !DILocation(line: 214, column: 63, scope: !194)
!204 = !DILocation(line: 214, column: 68, scope: !194)
!205 = !DILocation(line: 214, column: 75, scope: !194)
!206 = !DILocation(line: 214, column: 80, scope: !194)
!207 = !DILocation(line: 214, column: 88, scope: !194)
!208 = !DILocation(line: 214, column: 7, scope: !194)
!209 = !DILocation(line: 215, column: 18, scope: !194)
!210 = !DILocation(line: 216, column: 4, scope: !194)
!211 = !DILocation(line: 217, column: 14, scope: !212)
!212 = distinct !DILexicalBlock(scope: !190, file: !10, line: 216, column: 11)
!213 = !DILocation(line: 217, column: 23, scope: !212)
!214 = !DILocation(line: 217, column: 42, scope: !212)
!215 = !DILocation(line: 217, column: 40, scope: !212)
!216 = !DILocation(line: 217, column: 64, scope: !212)
!217 = !DILocation(line: 217, column: 72, scope: !212)
!218 = !DILocation(line: 217, column: 7, scope: !212)
!219 = !DILocation(line: 219, column: 13, scope: !9)
!220 = !DILocation(line: 219, column: 4, scope: !9)
!221 = !DILocation(line: 219, column: 26, scope: !9)
!222 = !DILocation(line: 222, column: 37, scope: !9)
!223 = !DILocation(line: 222, column: 47, scope: !9)
!224 = !DILocation(line: 222, column: 59, scope: !9)
!225 = !DILocation(line: 222, column: 13, scope: !9)
!226 = !DILocation(line: 222, column: 11, scope: !9)
!227 = !DILocation(line: 223, column: 9, scope: !9)
!228 = !DILocation(line: 223, column: 4, scope: !9)
!229 = !DILocation(line: 225, column: 11, scope: !9)
!230 = !DILocation(line: 225, column: 4, scope: !9)
!231 = distinct !DISubprogram(name: "CPNameUtil_Utf8FormHostToUtf8FormC", scope: !10, file: !10, line: 254, type: !232, isLocal: false, isDefinition: true, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!232 = !DISubroutineType(types: !233)
!233 = !{!234, !13, !15, !236, !237}
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !235, line: 230, baseType: !5)
!235 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line322")
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!238 = !DILocalVariable(name: "cpNameToConvert", arg: 1, scope: !231, file: !10, line: 254, type: !13)
!239 = !DILocation(line: 254, column: 48, scope: !231)
!240 = !DILocalVariable(name: "cpNameToConvertLen", arg: 2, scope: !231, file: !10, line: 255, type: !15)
!241 = !DILocation(line: 255, column: 43, scope: !231)
!242 = !DILocalVariable(name: "cpUtf8FormCName", arg: 3, scope: !231, file: !10, line: 256, type: !236)
!243 = !DILocation(line: 256, column: 43, scope: !231)
!244 = !DILocalVariable(name: "cpUtf8FormCNameLen", arg: 4, scope: !231, file: !10, line: 257, type: !237)
!245 = !DILocation(line: 257, column: 44, scope: !231)
!246 = !DILocation(line: 259, column: 42, scope: !231)
!247 = !DILocation(line: 260, column: 42, scope: !231)
!248 = !DILocation(line: 262, column: 42, scope: !231)
!249 = !DILocation(line: 263, column: 42, scope: !231)
!250 = !DILocation(line: 259, column: 11, scope: !231)
!251 = !DILocation(line: 259, column: 4, scope: !231)
!252 = distinct !DISubprogram(name: "CPNameUtil_Utf8FormCToUtf8FormHost", scope: !10, file: !10, line: 290, type: !232, isLocal: false, isDefinition: true, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!253 = !DILocalVariable(name: "cpUtf8FormCName", arg: 1, scope: !252, file: !10, line: 290, type: !13)
!254 = !DILocation(line: 290, column: 48, scope: !252)
!255 = !DILocalVariable(name: "cpUtf8FormCNameLen", arg: 2, scope: !252, file: !10, line: 291, type: !15)
!256 = !DILocation(line: 291, column: 43, scope: !252)
!257 = !DILocalVariable(name: "cpConvertedName", arg: 3, scope: !252, file: !10, line: 292, type: !236)
!258 = !DILocation(line: 292, column: 43, scope: !252)
!259 = !DILocalVariable(name: "cpConvertedNameLen", arg: 4, scope: !252, file: !10, line: 293, type: !237)
!260 = !DILocation(line: 293, column: 44, scope: !252)
!261 = !DILocation(line: 295, column: 42, scope: !252)
!262 = !DILocation(line: 296, column: 42, scope: !252)
!263 = !DILocation(line: 298, column: 42, scope: !252)
!264 = !DILocation(line: 299, column: 42, scope: !252)
!265 = !DILocation(line: 295, column: 11, scope: !252)
!266 = !DILocation(line: 295, column: 4, scope: !252)
!267 = distinct !DISubprogram(name: "CPNameUtil_CharReplace", scope: !10, file: !10, line: 324, type: !268, isLocal: false, isDefinition: true, scopeLine: 329, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!268 = !DISubroutineType(types: !269)
!269 = !{null, !4, !15, !5, !5}
!270 = !DILocalVariable(name: "buf", arg: 1, scope: !267, file: !10, line: 324, type: !4)
!271 = !DILocation(line: 324, column: 30, scope: !267)
!272 = !DILocalVariable(name: "bufSize", arg: 2, scope: !267, file: !10, line: 325, type: !15)
!273 = !DILocation(line: 325, column: 31, scope: !267)
!274 = !DILocalVariable(name: "oldChar", arg: 3, scope: !267, file: !10, line: 326, type: !5)
!275 = !DILocation(line: 326, column: 29, scope: !267)
!276 = !DILocalVariable(name: "newChar", arg: 4, scope: !267, file: !10, line: 327, type: !5)
!277 = !DILocation(line: 327, column: 29, scope: !267)
!278 = !DILocalVariable(name: "i", scope: !267, file: !10, line: 330, type: !15)
!279 = !DILocation(line: 330, column: 11, scope: !267)
!280 = !DILocation(line: 334, column: 11, scope: !281)
!281 = distinct !DILexicalBlock(scope: !267, file: !10, line: 334, column: 4)
!282 = !DILocation(line: 334, column: 9, scope: !281)
!283 = !DILocation(line: 334, column: 16, scope: !284)
!284 = !DILexicalBlockFile(scope: !285, file: !10, discriminator: 1)
!285 = distinct !DILexicalBlock(scope: !281, file: !10, line: 334, column: 4)
!286 = !DILocation(line: 334, column: 20, scope: !284)
!287 = !DILocation(line: 334, column: 18, scope: !284)
!288 = !DILocation(line: 334, column: 4, scope: !284)
!289 = !DILocation(line: 335, column: 15, scope: !290)
!290 = distinct !DILexicalBlock(scope: !291, file: !10, line: 335, column: 11)
!291 = distinct !DILexicalBlock(scope: !285, file: !10, line: 334, column: 34)
!292 = !DILocation(line: 335, column: 11, scope: !290)
!293 = !DILocation(line: 335, column: 21, scope: !290)
!294 = !DILocation(line: 335, column: 18, scope: !290)
!295 = !DILocation(line: 335, column: 11, scope: !291)
!296 = !DILocation(line: 336, column: 19, scope: !297)
!297 = distinct !DILexicalBlock(scope: !290, file: !10, line: 335, column: 30)
!298 = !DILocation(line: 336, column: 14, scope: !297)
!299 = !DILocation(line: 336, column: 10, scope: !297)
!300 = !DILocation(line: 336, column: 17, scope: !297)
!301 = !DILocation(line: 337, column: 7, scope: !297)
!302 = !DILocation(line: 338, column: 4, scope: !291)
!303 = !DILocation(line: 334, column: 30, scope: !304)
!304 = !DILexicalBlockFile(scope: !285, file: !10, discriminator: 2)
!305 = !DILocation(line: 334, column: 4, scope: !304)
!306 = distinct !{!306, !307}
!307 = !DILocation(line: 334, column: 4, scope: !267)
!308 = !DILocation(line: 339, column: 1, scope: !267)
