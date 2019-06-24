; ModuleID = './str.o.i'
source_filename = "./str.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [24 x i8] c"%s:%d Buffer too small\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"str.c\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"VERIFY %s:%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @Str_Vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #0 !dbg !10 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.__va_list_tag*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !28, metadata !29), !dbg !30
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !31, metadata !29), !dbg !32
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !33, metadata !29), !dbg !34
  store %struct.__va_list_tag* %3, %struct.__va_list_tag** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %9, metadata !35, metadata !29), !dbg !36
  call void @llvm.dbg.declare(metadata i32* %10, metadata !37, metadata !29), !dbg !38
  %12 = load i8*, i8** %6, align 8, !dbg !39
  %13 = load i64, i64* %7, align 8, !dbg !40
  %14 = load i8*, i8** %8, align 8, !dbg !41
  %15 = load %struct.__va_list_tag*, %struct.__va_list_tag** %9, align 8, !dbg !42
  %16 = call i32 @vsnprintf(i8* %12, i64 %13, i8* %14, %struct.__va_list_tag* %15) #4, !dbg !43
  store i32 %16, i32* %10, align 4, !dbg !44
  %17 = load i32, i32* %10, align 4, !dbg !45
  %18 = icmp slt i32 %17, 0, !dbg !47
  br i1 %18, label %24, label %19, !dbg !48

; <label>:19:                                     ; preds = %4
  %20 = load i32, i32* %10, align 4, !dbg !49
  %21 = sext i32 %20 to i64, !dbg !49
  %22 = load i64, i64* %7, align 8, !dbg !51
  %23 = icmp uge i64 %21, %22, !dbg !52
  br i1 %23, label %24, label %38, !dbg !53

; <label>:24:                                     ; preds = %19, %4
  %25 = load i64, i64* %7, align 8, !dbg !54
  %26 = icmp ugt i64 %25, 0, !dbg !57
  br i1 %26, label %27, label %37, !dbg !58

; <label>:27:                                     ; preds = %24
  call void @llvm.dbg.declare(metadata i32* %11, metadata !59, metadata !29), !dbg !61
  %28 = load i8*, i8** %6, align 8, !dbg !62
  %29 = load i64, i64* %7, align 8, !dbg !63
  %30 = sub i64 %29, 1, !dbg !64
  %31 = call i64 @CodeSet_Utf8FindCodePointBoundary(i8* %28, i64 %30), !dbg !65
  %32 = trunc i64 %31 to i32, !dbg !65
  store i32 %32, i32* %11, align 4, !dbg !61
  %33 = load i32, i32* %11, align 4, !dbg !66
  %34 = sext i32 %33 to i64, !dbg !67
  %35 = load i8*, i8** %6, align 8, !dbg !67
  %36 = getelementptr inbounds i8, i8* %35, i64 %34, !dbg !67
  store i8 0, i8* %36, align 1, !dbg !68
  br label %37, !dbg !69

; <label>:37:                                     ; preds = %27, %24
  br label %38, !dbg !70

; <label>:38:                                     ; preds = %37, %19
  %39 = load i32, i32* %10, align 4, !dbg !71
  %40 = sext i32 %39 to i64, !dbg !71
  %41 = load i64, i64* %7, align 8, !dbg !73
  %42 = icmp uge i64 %40, %41, !dbg !74
  br i1 %42, label %43, label %44, !dbg !75

; <label>:43:                                     ; preds = %38
  store i32 -1, i32* %5, align 4, !dbg !76
  br label %46, !dbg !76

; <label>:44:                                     ; preds = %38
  %45 = load i32, i32* %10, align 4, !dbg !78
  store i32 %45, i32* %5, align 4, !dbg !79
  br label %46, !dbg !79

; <label>:46:                                     ; preds = %44, %43
  %47 = load i32, i32* %5, align 4, !dbg !80
  ret i32 %47, !dbg !80
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @CodeSet_Utf8FindCodePointBoundary(i8*, i64) #3 !dbg !81 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !85, metadata !29), !dbg !86
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !87, metadata !29), !dbg !88
  call void @llvm.dbg.declare(metadata i64* %6, metadata !89, metadata !29), !dbg !90
  %8 = load i64, i64* %5, align 8, !dbg !91
  store i64 %8, i64* %6, align 8, !dbg !90
  call void @llvm.dbg.declare(metadata i8* %7, metadata !92, metadata !29), !dbg !94
  %9 = load i64, i64* %5, align 8, !dbg !95
  %10 = icmp ugt i64 %9, 0, !dbg !97
  br i1 %10, label %11, label %51, !dbg !98

; <label>:11:                                     ; preds = %2
  %12 = load i64, i64* %5, align 8, !dbg !99
  %13 = add i64 %12, -1, !dbg !99
  store i64 %13, i64* %5, align 8, !dbg !99
  br label %14, !dbg !101

; <label>:14:                                     ; preds = %27, %11
  %15 = load i64, i64* %5, align 8, !dbg !102
  %16 = icmp ugt i64 %15, 0, !dbg !104
  br i1 %16, label %17, label %25, !dbg !105

; <label>:17:                                     ; preds = %14
  %18 = load i64, i64* %5, align 8, !dbg !106
  %19 = load i8*, i8** %4, align 8, !dbg !108
  %20 = getelementptr inbounds i8, i8* %19, i64 %18, !dbg !108
  %21 = load i8, i8* %20, align 1, !dbg !108
  %22 = sext i8 %21 to i32, !dbg !108
  %23 = and i32 %22, 192, !dbg !109
  %24 = icmp eq i32 %23, 128, !dbg !110
  br label %25

; <label>:25:                                     ; preds = %17, %14
  %26 = phi i1 [ false, %14 ], [ %24, %17 ]
  br i1 %26, label %27, label %30, !dbg !111

; <label>:27:                                     ; preds = %25
  %28 = load i64, i64* %5, align 8, !dbg !113
  %29 = add i64 %28, -1, !dbg !113
  store i64 %29, i64* %5, align 8, !dbg !113
  br label %14, !dbg !115, !llvm.loop !117

; <label>:30:                                     ; preds = %25
  %31 = load i64, i64* %5, align 8, !dbg !118
  %32 = load i8*, i8** %4, align 8, !dbg !119
  %33 = getelementptr inbounds i8, i8* %32, i64 %31, !dbg !119
  %34 = load i8, i8* %33, align 1, !dbg !119
  store i8 %34, i8* %7, align 1, !dbg !120
  %35 = load i8, i8* %7, align 1, !dbg !121
  %36 = sext i8 %35 to i32, !dbg !121
  %37 = icmp sge i32 %36, 0, !dbg !123
  br i1 %37, label %48, label %38, !dbg !124

; <label>:38:                                     ; preds = %30
  %39 = load i8, i8* %7, align 1, !dbg !125
  %40 = sext i8 %39 to i32, !dbg !125
  %41 = load i64, i64* %6, align 8, !dbg !127
  %42 = sub i64 7, %41, !dbg !128
  %43 = load i64, i64* %5, align 8, !dbg !129
  %44 = add i64 %42, %43, !dbg !130
  %45 = trunc i64 %44 to i32, !dbg !131
  %46 = ashr i32 %40, %45, !dbg !131
  %47 = icmp eq i32 %46, -2, !dbg !132
  br i1 %47, label %48, label %50, !dbg !133

; <label>:48:                                     ; preds = %38, %30
  %49 = load i64, i64* %6, align 8, !dbg !134
  store i64 %49, i64* %3, align 8, !dbg !136
  br label %53, !dbg !136

; <label>:50:                                     ; preds = %38
  br label %51, !dbg !137

; <label>:51:                                     ; preds = %50, %2
  %52 = load i64, i64* %5, align 8, !dbg !138
  store i64 %52, i64* %3, align 8, !dbg !139
  br label %53, !dbg !139

; <label>:53:                                     ; preds = %51, %48
  %54 = load i64, i64* %3, align 8, !dbg !140
  ret i64 %54, !dbg !140
}

; Function Attrs: nounwind uwtable
define i32 @Str_Sprintf(i8*, i64, i8*, ...) #0 !dbg !141 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !144, metadata !29), !dbg !145
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !146, metadata !29), !dbg !147
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !148, metadata !29), !dbg !149
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !150, metadata !29), !dbg !159
  call void @llvm.dbg.declare(metadata i32* %8, metadata !160, metadata !29), !dbg !161
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !162
  %10 = bitcast %struct.__va_list_tag* %9 to i8*, !dbg !162
  call void @llvm.va_start(i8* %10), !dbg !162
  %11 = load i8*, i8** %4, align 8, !dbg !163
  %12 = load i64, i64* %5, align 8, !dbg !164
  %13 = load i8*, i8** %6, align 8, !dbg !165
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !166
  %15 = call i32 @Str_Vsnprintf(i8* %11, i64 %12, i8* %13, %struct.__va_list_tag* %14), !dbg !167
  store i32 %15, i32* %8, align 4, !dbg !168
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !169
  %17 = bitcast %struct.__va_list_tag* %16 to i8*, !dbg !169
  call void @llvm.va_end(i8* %17), !dbg !169
  %18 = load i32, i32* %8, align 4, !dbg !170
  %19 = icmp slt i32 %18, 0, !dbg !172
  br i1 %19, label %20, label %21, !dbg !173

; <label>:20:                                     ; preds = %3
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 228) #9, !dbg !174
  unreachable, !dbg !174

; <label>:21:                                     ; preds = %3
  %22 = load i32, i32* %8, align 4, !dbg !176
  ret i32 %22, !dbg !177
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #5

; Function Attrs: nounwind uwtable
define i32 @Str_Snprintf(i8*, i64, i8*, ...) #0 !dbg !178 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !179, metadata !29), !dbg !180
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !181, metadata !29), !dbg !182
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !183, metadata !29), !dbg !184
  call void @llvm.dbg.declare(metadata i32* %7, metadata !185, metadata !29), !dbg !186
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %8, metadata !187, metadata !29), !dbg !188
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i32 0, i32 0, !dbg !189
  %10 = bitcast %struct.__va_list_tag* %9 to i8*, !dbg !189
  call void @llvm.va_start(i8* %10), !dbg !189
  %11 = load i8*, i8** %4, align 8, !dbg !190
  %12 = load i64, i64* %5, align 8, !dbg !191
  %13 = load i8*, i8** %6, align 8, !dbg !192
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i32 0, i32 0, !dbg !193
  %15 = call i32 @Str_Vsnprintf(i8* %11, i64 %12, i8* %13, %struct.__va_list_tag* %14), !dbg !194
  store i32 %15, i32* %7, align 4, !dbg !195
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i32 0, i32 0, !dbg !196
  %17 = bitcast %struct.__va_list_tag* %16 to i8*, !dbg !196
  call void @llvm.va_end(i8* %17), !dbg !196
  %18 = load i32, i32* %7, align 4, !dbg !197
  ret i32 %18, !dbg !198
}

; Function Attrs: nounwind uwtable
define i8* @Str_Strcpy(i8*, i8*, i64) #0 !dbg !199 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !202, metadata !29), !dbg !203
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !204, metadata !29), !dbg !205
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !206, metadata !29), !dbg !207
  call void @llvm.dbg.declare(metadata i64* %7, metadata !208, metadata !29), !dbg !209
  %8 = load i8*, i8** %5, align 8, !dbg !210
  %9 = call i64 @strlen(i8* %8) #10, !dbg !211
  store i64 %9, i64* %7, align 8, !dbg !212
  %10 = load i64, i64* %7, align 8, !dbg !213
  %11 = load i64, i64* %6, align 8, !dbg !215
  %12 = icmp uge i64 %10, %11, !dbg !216
  br i1 %12, label %13, label %14, !dbg !217

; <label>:13:                                     ; preds = %3
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 298) #9, !dbg !218
  unreachable, !dbg !218

; <label>:14:                                     ; preds = %3
  %15 = load i8*, i8** %4, align 8, !dbg !220
  %16 = load i8*, i8** %5, align 8, !dbg !221
  %17 = load i64, i64* %7, align 8, !dbg !222
  %18 = add i64 %17, 1, !dbg !223
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 %18, i32 1, i1 false), !dbg !224
  ret i8* %15, !dbg !225
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #6

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind uwtable
define i8* @Str_Strncpy(i8*, i64, i8*, i64) #0 !dbg !226 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !229, metadata !29), !dbg !230
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !231, metadata !29), !dbg !232
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !233, metadata !29), !dbg !234
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !235, metadata !29), !dbg !236
  %9 = load i8*, i8** %7, align 8, !dbg !237
  %10 = load i64, i64* %8, align 8, !dbg !238
  %11 = call i64 @Str_Strlen(i8* %9, i64 %10), !dbg !239
  store i64 %11, i64* %8, align 8, !dbg !240
  %12 = load i64, i64* %8, align 8, !dbg !241
  %13 = load i64, i64* %6, align 8, !dbg !243
  %14 = icmp uge i64 %12, %13, !dbg !244
  br i1 %14, label %15, label %16, !dbg !245

; <label>:15:                                     ; preds = %4
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 336) #9, !dbg !246
  unreachable, !dbg !246

; <label>:16:                                     ; preds = %4
  %17 = load i8*, i8** %5, align 8, !dbg !248
  %18 = load i8*, i8** %7, align 8, !dbg !249
  %19 = load i64, i64* %8, align 8, !dbg !250
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 %19, i32 1, i1 false), !dbg !251
  %20 = load i64, i64* %8, align 8, !dbg !252
  %21 = load i8*, i8** %5, align 8, !dbg !253
  %22 = getelementptr inbounds i8, i8* %21, i64 %20, !dbg !253
  store i8 0, i8* %22, align 1, !dbg !254
  %23 = load i8*, i8** %5, align 8, !dbg !255
  ret i8* %23, !dbg !256
}

; Function Attrs: nounwind uwtable
define i64 @Str_Strlen(i8*, i64) #0 !dbg !257 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !258, metadata !29), !dbg !259
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !260, metadata !29), !dbg !261
  call void @llvm.dbg.declare(metadata i8** %6, metadata !262, metadata !29), !dbg !263
  %7 = load i8*, i8** %4, align 8, !dbg !264
  %8 = load i64, i64* %5, align 8, !dbg !266
  %9 = call i8* @memchr(i8* %7, i32 0, i64 %8) #10, !dbg !267
  store i8* %9, i8** %6, align 8, !dbg !268
  %10 = icmp eq i8* %9, null, !dbg !269
  br i1 %10, label %11, label %13, !dbg !270

; <label>:11:                                     ; preds = %2
  %12 = load i64, i64* %5, align 8, !dbg !271
  store i64 %12, i64* %3, align 8, !dbg !273
  br label %19, !dbg !273

; <label>:13:                                     ; preds = %2
  %14 = load i8*, i8** %6, align 8, !dbg !274
  %15 = load i8*, i8** %4, align 8, !dbg !275
  %16 = ptrtoint i8* %14 to i64, !dbg !276
  %17 = ptrtoint i8* %15 to i64, !dbg !276
  %18 = sub i64 %16, %17, !dbg !276
  store i64 %18, i64* %3, align 8, !dbg !277
  br label %19, !dbg !277

; <label>:19:                                     ; preds = %13, %11
  %20 = load i64, i64* %3, align 8, !dbg !278
  ret i64 %20, !dbg !278
}

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #6

; Function Attrs: nounwind uwtable
define i8* @Str_Strnstr(i8*, i8*, i64) #0 !dbg !279 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !282, metadata !29), !dbg !283
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !284, metadata !29), !dbg !285
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !286, metadata !29), !dbg !287
  call void @llvm.dbg.declare(metadata i64* %8, metadata !288, metadata !29), !dbg !289
  call void @llvm.dbg.declare(metadata i8** %9, metadata !290, metadata !29), !dbg !291
  %10 = load i8*, i8** %6, align 8, !dbg !292
  %11 = call i64 @strlen(i8* %10) #10, !dbg !294
  store i64 %11, i64* %8, align 8, !dbg !295
  %12 = icmp eq i64 %11, 0, !dbg !296
  br i1 %12, label %13, label %15, !dbg !297

; <label>:13:                                     ; preds = %3
  %14 = load i8*, i8** %5, align 8, !dbg !298
  store i8* %14, i8** %4, align 8, !dbg !300
  br label %62, !dbg !300

; <label>:15:                                     ; preds = %3
  %16 = load i8*, i8** %5, align 8, !dbg !301
  %17 = load i64, i64* %7, align 8, !dbg !303
  %18 = call i8* @memchr(i8* %16, i32 0, i64 %17) #10, !dbg !304
  store i8* %18, i8** %9, align 8, !dbg !305
  %19 = icmp eq i8* %18, null, !dbg !306
  br i1 %19, label %20, label %24, !dbg !307

; <label>:20:                                     ; preds = %15
  %21 = load i8*, i8** %5, align 8, !dbg !308
  %22 = load i64, i64* %7, align 8, !dbg !310
  %23 = getelementptr inbounds i8, i8* %21, i64 %22, !dbg !311
  store i8* %23, i8** %9, align 8, !dbg !312
  br label %24, !dbg !313

; <label>:24:                                     ; preds = %20, %15
  %25 = load i64, i64* %8, align 8, !dbg !314
  %26 = sub i64 %25, 1, !dbg !315
  %27 = load i8*, i8** %9, align 8, !dbg !316
  %28 = sub i64 0, %26, !dbg !316
  %29 = getelementptr inbounds i8, i8* %27, i64 %28, !dbg !316
  store i8* %29, i8** %9, align 8, !dbg !316
  %30 = load i8*, i8** %9, align 8, !dbg !317
  %31 = load i8*, i8** %5, align 8, !dbg !319
  %32 = icmp ule i8* %30, %31, !dbg !320
  br i1 %32, label %33, label %34, !dbg !321

; <label>:33:                                     ; preds = %24
  store i8* null, i8** %4, align 8, !dbg !322
  br label %62, !dbg !322

; <label>:34:                                     ; preds = %24
  br label %35, !dbg !324

; <label>:35:                                     ; preds = %57, %34
  %36 = load i8*, i8** %5, align 8, !dbg !325
  %37 = load i8*, i8** %6, align 8, !dbg !328
  %38 = getelementptr inbounds i8, i8* %37, i64 0, !dbg !328
  %39 = load i8, i8* %38, align 1, !dbg !328
  %40 = sext i8 %39 to i32, !dbg !328
  %41 = load i8*, i8** %9, align 8, !dbg !329
  %42 = load i8*, i8** %5, align 8, !dbg !330
  %43 = ptrtoint i8* %41 to i64, !dbg !331
  %44 = ptrtoint i8* %42 to i64, !dbg !331
  %45 = sub i64 %43, %44, !dbg !331
  %46 = call i8* @memchr(i8* %36, i32 %40, i64 %45) #10, !dbg !332
  store i8* %46, i8** %5, align 8, !dbg !333
  %47 = icmp ne i8* %46, null, !dbg !334
  br i1 %47, label %48, label %54, !dbg !335

; <label>:48:                                     ; preds = %35
  %49 = load i8*, i8** %5, align 8, !dbg !336
  %50 = load i8*, i8** %6, align 8, !dbg !337
  %51 = load i64, i64* %8, align 8, !dbg !338
  %52 = call i32 @memcmp(i8* %49, i8* %50, i64 %51) #10, !dbg !339
  %53 = icmp ne i32 %52, 0, !dbg !340
  br label %54

; <label>:54:                                     ; preds = %48, %35
  %55 = phi i1 [ false, %35 ], [ %53, %48 ]
  br i1 %55, label %56, label %60, !dbg !341

; <label>:56:                                     ; preds = %54
  br label %57, !dbg !343

; <label>:57:                                     ; preds = %56
  %58 = load i8*, i8** %5, align 8, !dbg !345
  %59 = getelementptr inbounds i8, i8* %58, i32 1, !dbg !345
  store i8* %59, i8** %5, align 8, !dbg !345
  br label %35, !dbg !346, !llvm.loop !348

; <label>:60:                                     ; preds = %54
  %61 = load i8*, i8** %5, align 8, !dbg !349
  store i8* %61, i8** %4, align 8, !dbg !350
  br label %62, !dbg !350

; <label>:62:                                     ; preds = %60, %33, %13
  %63 = load i8*, i8** %4, align 8, !dbg !351
  ret i8* %63, !dbg !351
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #6

; Function Attrs: nounwind uwtable
define i8* @Str_Strcat(i8*, i8*, i64) #0 !dbg !352 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !353, metadata !29), !dbg !354
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !355, metadata !29), !dbg !356
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !357, metadata !29), !dbg !358
  call void @llvm.dbg.declare(metadata i64* %7, metadata !359, metadata !29), !dbg !360
  call void @llvm.dbg.declare(metadata i64* %8, metadata !361, metadata !29), !dbg !362
  %9 = load i8*, i8** %4, align 8, !dbg !363
  %10 = call i64 @strlen(i8* %9) #10, !dbg !364
  store i64 %10, i64* %7, align 8, !dbg !365
  %11 = load i8*, i8** %5, align 8, !dbg !366
  %12 = call i64 @strlen(i8* %11) #10, !dbg !367
  store i64 %12, i64* %8, align 8, !dbg !368
  %13 = load i64, i64* %7, align 8, !dbg !369
  %14 = load i64, i64* %8, align 8, !dbg !371
  %15 = add i64 %13, %14, !dbg !372
  %16 = load i64, i64* %8, align 8, !dbg !373
  %17 = icmp ult i64 %15, %16, !dbg !374
  br i1 %17, label %24, label %18, !dbg !375

; <label>:18:                                     ; preds = %3
  %19 = load i64, i64* %7, align 8, !dbg !376
  %20 = load i64, i64* %8, align 8, !dbg !378
  %21 = add i64 %19, %20, !dbg !379
  %22 = load i64, i64* %6, align 8, !dbg !380
  %23 = icmp uge i64 %21, %22, !dbg !381
  br i1 %23, label %24, label %25, !dbg !382

; <label>:24:                                     ; preds = %18, %3
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 458) #9, !dbg !383
  unreachable, !dbg !383

; <label>:25:                                     ; preds = %18
  %26 = load i8*, i8** %4, align 8, !dbg !385
  %27 = load i64, i64* %7, align 8, !dbg !386
  %28 = getelementptr inbounds i8, i8* %26, i64 %27, !dbg !387
  %29 = load i8*, i8** %5, align 8, !dbg !388
  %30 = load i64, i64* %8, align 8, !dbg !389
  %31 = add i64 %30, 1, !dbg !390
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 %31, i32 1, i1 false), !dbg !391
  %32 = load i8*, i8** %4, align 8, !dbg !392
  ret i8* %32, !dbg !393
}

; Function Attrs: nounwind uwtable
define i8* @Str_Strncat(i8*, i64, i8*, i64) #0 !dbg !394 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !395, metadata !29), !dbg !396
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !397, metadata !29), !dbg !398
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !399, metadata !29), !dbg !400
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !401, metadata !29), !dbg !402
  call void @llvm.dbg.declare(metadata i64* %9, metadata !403, metadata !29), !dbg !404
  %10 = load i8*, i8** %5, align 8, !dbg !405
  %11 = call i64 @strlen(i8* %10) #10, !dbg !406
  store i64 %11, i64* %9, align 8, !dbg !407
  %12 = load i64, i64* %9, align 8, !dbg !408
  %13 = load i64, i64* %6, align 8, !dbg !409
  %14 = icmp ult i64 %12, %13, !dbg !410
  br i1 %14, label %15, label %17, !dbg !411

; <label>:15:                                     ; preds = %4
  %16 = load i64, i64* %9, align 8, !dbg !412
  br label %19, !dbg !414

; <label>:17:                                     ; preds = %4
  %18 = load i64, i64* %6, align 8, !dbg !415
  br label %19, !dbg !417

; <label>:19:                                     ; preds = %17, %15
  %20 = phi i64 [ %16, %15 ], [ %18, %17 ], !dbg !418
  store i64 %20, i64* %9, align 8, !dbg !420
  %21 = load i64, i64* %9, align 8, !dbg !421
  %22 = load i64, i64* %8, align 8, !dbg !423
  %23 = add i64 %21, %22, !dbg !424
  %24 = load i64, i64* %6, align 8, !dbg !425
  %25 = icmp ult i64 %23, %24, !dbg !426
  br i1 %25, label %34, label %26, !dbg !427

; <label>:26:                                     ; preds = %19
  %27 = load i64, i64* %9, align 8, !dbg !428
  %28 = load i8*, i8** %7, align 8, !dbg !429
  %29 = call i64 @strlen(i8* %28) #10, !dbg !430
  %30 = add i64 %27, %29, !dbg !431
  %31 = load i64, i64* %6, align 8, !dbg !432
  %32 = icmp ult i64 %30, %31, !dbg !433
  br i1 %32, label %34, label %33, !dbg !434

; <label>:33:                                     ; preds = %26
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 512) #9, !dbg !435
  unreachable, !dbg !435

; <label>:34:                                     ; preds = %26, %19
  %35 = load i8*, i8** %5, align 8, !dbg !437
  %36 = load i8*, i8** %7, align 8, !dbg !438
  %37 = load i64, i64* %8, align 8, !dbg !439
  %38 = call i8* @strncat(i8* %35, i8* %36, i64 %37) #4, !dbg !440
  ret i8* %38, !dbg !441
}

; Function Attrs: nounwind
declare i8* @strncat(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define i8* @Str_Asprintf(i64*, i8*, ...) #0 !dbg !442 {
  %3 = alloca i64*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = alloca i8*, align 8
  store i64* %0, i64** %3, align 8
  call void @llvm.dbg.declare(metadata i64** %3, metadata !446, metadata !29), !dbg !447
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !448, metadata !29), !dbg !449
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !450, metadata !29), !dbg !451
  call void @llvm.dbg.declare(metadata i8** %6, metadata !452, metadata !29), !dbg !453
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !454
  %8 = bitcast %struct.__va_list_tag* %7 to i8*, !dbg !454
  call void @llvm.va_start(i8* %8), !dbg !454
  %9 = load i64*, i64** %3, align 8, !dbg !455
  %10 = load i8*, i8** %4, align 8, !dbg !456
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !457
  %12 = call i8* @Str_Vasprintf(i64* %9, i8* %10, %struct.__va_list_tag* %11), !dbg !458
  store i8* %12, i8** %6, align 8, !dbg !459
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !460
  %14 = bitcast %struct.__va_list_tag* %13 to i8*, !dbg !460
  call void @llvm.va_end(i8* %14), !dbg !460
  %15 = load i8*, i8** %6, align 8, !dbg !461
  ret i8* %15, !dbg !462
}

; Function Attrs: nounwind uwtable
define i8* @Str_Vasprintf(i64*, i8*, %struct.__va_list_tag*) #0 !dbg !463 {
  %4 = alloca i64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.__va_list_tag*, align 8
  store i64* %0, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !466, metadata !29), !dbg !467
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !468, metadata !29), !dbg !469
  store %struct.__va_list_tag* %2, %struct.__va_list_tag** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %6, metadata !470, metadata !29), !dbg !471
  %7 = load i64*, i64** %4, align 8, !dbg !472
  %8 = load i8*, i8** %5, align 8, !dbg !473
  %9 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8, !dbg !474
  %10 = call i8* @StrVasprintfInternal(i64* %7, i8* %8, %struct.__va_list_tag* %9, i8 signext 0), !dbg !475
  ret i8* %10, !dbg !476
}

; Function Attrs: nounwind uwtable
define i8* @Str_SafeAsprintf(i64*, i8*, ...) #0 !dbg !477 {
  %3 = alloca i64*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = alloca i8*, align 8
  store i64* %0, i64** %3, align 8
  call void @llvm.dbg.declare(metadata i64** %3, metadata !478, metadata !29), !dbg !479
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !480, metadata !29), !dbg !481
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !482, metadata !29), !dbg !483
  call void @llvm.dbg.declare(metadata i8** %6, metadata !484, metadata !29), !dbg !485
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !486
  %8 = bitcast %struct.__va_list_tag* %7 to i8*, !dbg !486
  call void @llvm.va_start(i8* %8), !dbg !486
  %9 = load i64*, i64** %3, align 8, !dbg !487
  %10 = load i8*, i8** %4, align 8, !dbg !488
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !489
  %12 = call i8* @Str_SafeVasprintf(i64* %9, i8* %10, %struct.__va_list_tag* %11), !dbg !490
  store i8* %12, i8** %6, align 8, !dbg !491
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !492
  %14 = bitcast %struct.__va_list_tag* %13 to i8*, !dbg !492
  call void @llvm.va_end(i8* %14), !dbg !492
  %15 = load i8*, i8** %6, align 8, !dbg !493
  ret i8* %15, !dbg !494
}

; Function Attrs: nounwind uwtable
define i8* @Str_SafeVasprintf(i64*, i8*, %struct.__va_list_tag*) #0 !dbg !495 {
  %4 = alloca i64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.__va_list_tag*, align 8
  store i64* %0, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !496, metadata !29), !dbg !497
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !498, metadata !29), !dbg !499
  store %struct.__va_list_tag* %2, %struct.__va_list_tag** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %6, metadata !500, metadata !29), !dbg !501
  %7 = load i64*, i64** %4, align 8, !dbg !502
  %8 = load i8*, i8** %5, align 8, !dbg !503
  %9 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8, !dbg !504
  %10 = call i8* @StrVasprintfInternal(i64* %7, i8* %8, %struct.__va_list_tag* %9, i8 signext 1), !dbg !505
  ret i8* %10, !dbg !506
}

; Function Attrs: nounwind uwtable
define internal i8* @StrVasprintfInternal(i64*, i8*, %struct.__va_list_tag*, i8 signext) #0 !dbg !507 {
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.__va_list_tag*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !512, metadata !29), !dbg !513
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !514, metadata !29), !dbg !515
  store %struct.__va_list_tag* %2, %struct.__va_list_tag** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %7, metadata !516, metadata !29), !dbg !517
  store i8 %3, i8* %8, align 1
  call void @llvm.dbg.declare(metadata i8* %8, metadata !518, metadata !29), !dbg !519
  call void @llvm.dbg.declare(metadata i8** %9, metadata !520, metadata !29), !dbg !521
  store i8* null, i8** %9, align 8, !dbg !521
  call void @llvm.dbg.declare(metadata i32* %10, metadata !522, metadata !29), !dbg !523
  %11 = load i8*, i8** %6, align 8, !dbg !524
  %12 = load %struct.__va_list_tag*, %struct.__va_list_tag** %7, align 8, !dbg !525
  %13 = call i32 @vasprintf(i8** %9, i8* %11, %struct.__va_list_tag* %12), !dbg !526
  store i32 %13, i32* %10, align 4, !dbg !527
  %14 = load i32, i32* %10, align 4, !dbg !528
  %15 = icmp slt i32 %14, 0, !dbg !530
  br i1 %15, label %16, label %17, !dbg !531

; <label>:16:                                     ; preds = %4
  store i8* null, i8** %9, align 8, !dbg !532
  br label %25, !dbg !534

; <label>:17:                                     ; preds = %4
  %18 = load i64*, i64** %5, align 8, !dbg !535
  %19 = icmp ne i64* %18, null, !dbg !537
  br i1 %19, label %20, label %24, !dbg !538

; <label>:20:                                     ; preds = %17
  %21 = load i32, i32* %10, align 4, !dbg !539
  %22 = sext i32 %21 to i64, !dbg !539
  %23 = load i64*, i64** %5, align 8, !dbg !541
  store i64 %22, i64* %23, align 8, !dbg !542
  br label %24, !dbg !543

; <label>:24:                                     ; preds = %20, %17
  br label %25, !dbg !544

; <label>:25:                                     ; preds = %24, %16
  %26 = load i8, i8* %8, align 1, !dbg !546
  %27 = icmp ne i8 %26, 0, !dbg !546
  br i1 %27, label %28, label %37, !dbg !548

; <label>:28:                                     ; preds = %25
  %29 = load i8*, i8** %9, align 8, !dbg !549
  %30 = icmp ne i8* %29, null, !dbg !553
  %31 = xor i1 %30, true, !dbg !553
  %32 = zext i1 %31 to i32, !dbg !553
  %33 = sext i32 %32 to i64, !dbg !554
  %34 = icmp ne i64 %33, 0, !dbg !555
  br i1 %34, label %35, label %36, !dbg !556

; <label>:35:                                     ; preds = %28
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 671) #9, !dbg !557
  unreachable, !dbg !557

; <label>:36:                                     ; preds = %28
  br label %37, !dbg !560

; <label>:37:                                     ; preds = %36, %25
  %38 = load i8*, i8** %9, align 8, !dbg !561
  ret i8* %38, !dbg !562
}

; Function Attrs: nounwind uwtable
define i8* @Str_ToLower(i8*) #0 !dbg !563 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !566, metadata !29), !dbg !567
  call void @llvm.dbg.declare(metadata i8** %3, metadata !568, metadata !29), !dbg !569
  %4 = load i8*, i8** %2, align 8, !dbg !570
  store i8* %4, i8** %3, align 8, !dbg !569
  br label %5, !dbg !571

; <label>:5:                                      ; preds = %28, %1
  %6 = load i8*, i8** %3, align 8, !dbg !572
  %7 = load i8, i8* %6, align 1, !dbg !574
  %8 = icmp ne i8 %7, 0, !dbg !575
  br i1 %8, label %9, label %34, !dbg !575

; <label>:9:                                      ; preds = %5
  %10 = load i8*, i8** %3, align 8, !dbg !576
  %11 = load i8, i8* %10, align 1, !dbg !578
  %12 = sext i8 %11 to i32, !dbg !578
  %13 = icmp sge i32 %12, 65, !dbg !579
  br i1 %13, label %14, label %24, !dbg !580

; <label>:14:                                     ; preds = %9
  %15 = load i8*, i8** %3, align 8, !dbg !581
  %16 = load i8, i8* %15, align 1, !dbg !583
  %17 = sext i8 %16 to i32, !dbg !583
  %18 = icmp sle i32 %17, 90, !dbg !584
  br i1 %18, label %19, label %24, !dbg !585

; <label>:19:                                     ; preds = %14
  %20 = load i8*, i8** %3, align 8, !dbg !586
  %21 = load i8, i8* %20, align 1, !dbg !588
  %22 = sext i8 %21 to i32, !dbg !588
  %23 = add nsw i32 %22, 32, !dbg !589
  br label %28, !dbg !590

; <label>:24:                                     ; preds = %14, %9
  %25 = load i8*, i8** %3, align 8, !dbg !591
  %26 = load i8, i8* %25, align 1, !dbg !593
  %27 = sext i8 %26 to i32, !dbg !593
  br label %28, !dbg !594

; <label>:28:                                     ; preds = %24, %19
  %29 = phi i32 [ %23, %19 ], [ %27, %24 ], !dbg !595
  %30 = trunc i32 %29 to i8, !dbg !595
  %31 = load i8*, i8** %3, align 8, !dbg !597
  store i8 %30, i8* %31, align 1, !dbg !598
  %32 = load i8*, i8** %3, align 8, !dbg !599
  %33 = getelementptr inbounds i8, i8* %32, i32 1, !dbg !599
  store i8* %33, i8** %3, align 8, !dbg !599
  br label %5, !dbg !600, !llvm.loop !602

; <label>:34:                                     ; preds = %5
  %35 = load i8*, i8** %2, align 8, !dbg !603
  ret i8* %35, !dbg !604
}

; Function Attrs: nounwind uwtable
define i8* @Str_ToUpper(i8*) #0 !dbg !605 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !606, metadata !29), !dbg !607
  call void @llvm.dbg.declare(metadata i8** %3, metadata !608, metadata !29), !dbg !609
  %4 = load i8*, i8** %2, align 8, !dbg !610
  store i8* %4, i8** %3, align 8, !dbg !609
  br label %5, !dbg !611

; <label>:5:                                      ; preds = %28, %1
  %6 = load i8*, i8** %3, align 8, !dbg !612
  %7 = load i8, i8* %6, align 1, !dbg !614
  %8 = icmp ne i8 %7, 0, !dbg !615
  br i1 %8, label %9, label %34, !dbg !615

; <label>:9:                                      ; preds = %5
  %10 = load i8*, i8** %3, align 8, !dbg !616
  %11 = load i8, i8* %10, align 1, !dbg !618
  %12 = sext i8 %11 to i32, !dbg !618
  %13 = icmp sge i32 %12, 97, !dbg !619
  br i1 %13, label %14, label %24, !dbg !620

; <label>:14:                                     ; preds = %9
  %15 = load i8*, i8** %3, align 8, !dbg !621
  %16 = load i8, i8* %15, align 1, !dbg !623
  %17 = sext i8 %16 to i32, !dbg !623
  %18 = icmp sle i32 %17, 122, !dbg !624
  br i1 %18, label %19, label %24, !dbg !625

; <label>:19:                                     ; preds = %14
  %20 = load i8*, i8** %3, align 8, !dbg !626
  %21 = load i8, i8* %20, align 1, !dbg !628
  %22 = sext i8 %21 to i32, !dbg !628
  %23 = sub nsw i32 %22, 32, !dbg !629
  br label %28, !dbg !630

; <label>:24:                                     ; preds = %14, %9
  %25 = load i8*, i8** %3, align 8, !dbg !631
  %26 = load i8, i8* %25, align 1, !dbg !633
  %27 = sext i8 %26 to i32, !dbg !633
  br label %28, !dbg !634

; <label>:28:                                     ; preds = %24, %19
  %29 = phi i32 [ %23, %19 ], [ %27, %24 ], !dbg !635
  %30 = trunc i32 %29 to i8, !dbg !635
  %31 = load i8*, i8** %3, align 8, !dbg !637
  store i8 %30, i8* %31, align 1, !dbg !638
  %32 = load i8*, i8** %3, align 8, !dbg !639
  %33 = getelementptr inbounds i8, i8* %32, i32 1, !dbg !639
  store i8* %33, i8** %3, align 8, !dbg !639
  br label %5, !dbg !640, !llvm.loop !642

; <label>:34:                                     ; preds = %5
  %35 = load i8*, i8** %2, align 8, !dbg !643
  ret i8* %35, !dbg !644
}

declare i32 @vasprintf(i8**, i8*, %struct.__va_list_tag*) #8

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn }
attributes #10 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "str.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line892")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!7 = !{i32 2, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!10 = distinct !DISubprogram(name: "Str_Vsnprintf", scope: !11, file: !11, line: 108, type: !12, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!11 = !DIFile(filename: "str.c", directory: "/home/lichi/Desktop/open-vm-tools/line892")
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !5, !15, !18, !20}
!14 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !16, line: 216, baseType: !17)
!16 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line892")
!17 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, align: 64, elements: !22)
!22 = !{!23, !25, !26, !27}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !21, file: !1, baseType: !24, size: 32, align: 32)
!24 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !21, file: !1, baseType: !24, size: 32, align: 32, offset: 32)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !21, file: !1, baseType: !4, size: 64, align: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !21, file: !1, baseType: !4, size: 64, align: 64, offset: 128)
!28 = !DILocalVariable(name: "str", arg: 1, scope: !10, file: !11, line: 108, type: !5)
!29 = !DIExpression()
!30 = !DILocation(line: 108, column: 21, scope: !10)
!31 = !DILocalVariable(name: "size", arg: 2, scope: !10, file: !11, line: 109, type: !15)
!32 = !DILocation(line: 109, column: 22, scope: !10)
!33 = !DILocalVariable(name: "format", arg: 3, scope: !10, file: !11, line: 110, type: !18)
!34 = !DILocation(line: 110, column: 27, scope: !10)
!35 = !DILocalVariable(name: "ap", arg: 4, scope: !10, file: !11, line: 111, type: !20)
!36 = !DILocation(line: 111, column: 23, scope: !10)
!37 = !DILocalVariable(name: "retval", scope: !10, file: !11, line: 113, type: !14)
!38 = !DILocation(line: 113, column: 8, scope: !10)
!39 = !DILocation(line: 130, column: 23, scope: !10)
!40 = !DILocation(line: 130, column: 28, scope: !10)
!41 = !DILocation(line: 130, column: 34, scope: !10)
!42 = !DILocation(line: 130, column: 42, scope: !10)
!43 = !DILocation(line: 130, column: 13, scope: !10)
!44 = !DILocation(line: 130, column: 11, scope: !10)
!45 = !DILocation(line: 133, column: 9, scope: !46)
!46 = distinct !DILexicalBlock(scope: !10, file: !11, line: 133, column: 8)
!47 = !DILocation(line: 133, column: 16, scope: !46)
!48 = !DILocation(line: 133, column: 21, scope: !46)
!49 = !DILocation(line: 133, column: 25, scope: !50)
!50 = !DILexicalBlockFile(scope: !46, file: !11, discriminator: 1)
!51 = !DILocation(line: 133, column: 35, scope: !50)
!52 = !DILocation(line: 133, column: 32, scope: !50)
!53 = !DILocation(line: 133, column: 8, scope: !50)
!54 = !DILocation(line: 134, column: 11, scope: !55)
!55 = distinct !DILexicalBlock(scope: !56, file: !11, line: 134, column: 11)
!56 = distinct !DILexicalBlock(scope: !46, file: !11, line: 133, column: 42)
!57 = !DILocation(line: 134, column: 16, scope: !55)
!58 = !DILocation(line: 134, column: 11, scope: !56)
!59 = !DILocalVariable(name: "trunc", scope: !60, file: !11, line: 136, type: !14)
!60 = distinct !DILexicalBlock(scope: !55, file: !11, line: 134, column: 21)
!61 = !DILocation(line: 136, column: 14, scope: !60)
!62 = !DILocation(line: 136, column: 56, scope: !60)
!63 = !DILocation(line: 136, column: 61, scope: !60)
!64 = !DILocation(line: 136, column: 66, scope: !60)
!65 = !DILocation(line: 136, column: 22, scope: !60)
!66 = !DILocation(line: 138, column: 14, scope: !60)
!67 = !DILocation(line: 138, column: 10, scope: !60)
!68 = !DILocation(line: 138, column: 21, scope: !60)
!69 = !DILocation(line: 139, column: 7, scope: !60)
!70 = !DILocation(line: 140, column: 4, scope: !56)
!71 = !DILocation(line: 141, column: 8, scope: !72)
!72 = distinct !DILexicalBlock(scope: !10, file: !11, line: 141, column: 8)
!73 = !DILocation(line: 141, column: 18, scope: !72)
!74 = !DILocation(line: 141, column: 15, scope: !72)
!75 = !DILocation(line: 141, column: 8, scope: !10)
!76 = !DILocation(line: 142, column: 7, scope: !77)
!77 = distinct !DILexicalBlock(scope: !72, file: !11, line: 141, column: 24)
!78 = !DILocation(line: 144, column: 11, scope: !10)
!79 = !DILocation(line: 144, column: 4, scope: !10)
!80 = !DILocation(line: 145, column: 1, scope: !10)
!81 = distinct !DISubprogram(name: "CodeSet_Utf8FindCodePointBoundary", scope: !82, file: !82, line: 484, type: !83, isLocal: true, isDefinition: true, scopeLine: 486, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!82 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/codeset.h", directory: "/home/lichi/Desktop/open-vm-tools/line892")
!83 = !DISubroutineType(types: !84)
!84 = !{!15, !18, !15}
!85 = !DILocalVariable(name: "buf", arg: 1, scope: !81, file: !82, line: 484, type: !18)
!86 = !DILocation(line: 484, column: 47, scope: !81)
!87 = !DILocalVariable(name: "offset", arg: 2, scope: !81, file: !82, line: 485, type: !15)
!88 = !DILocation(line: 485, column: 42, scope: !81)
!89 = !DILocalVariable(name: "origOffset", scope: !81, file: !82, line: 487, type: !15)
!90 = !DILocation(line: 487, column: 11, scope: !81)
!91 = !DILocation(line: 487, column: 24, scope: !81)
!92 = !DILocalVariable(name: "c", scope: !81, file: !82, line: 488, type: !93)
!93 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!94 = !DILocation(line: 488, column: 16, scope: !81)
!95 = !DILocation(line: 490, column: 8, scope: !96)
!96 = distinct !DILexicalBlock(scope: !81, file: !82, line: 490, column: 8)
!97 = !DILocation(line: 490, column: 15, scope: !96)
!98 = !DILocation(line: 490, column: 8, scope: !81)
!99 = !DILocation(line: 497, column: 13, scope: !100)
!100 = distinct !DILexicalBlock(scope: !96, file: !82, line: 490, column: 20)
!101 = !DILocation(line: 498, column: 7, scope: !100)
!102 = !DILocation(line: 498, column: 14, scope: !103)
!103 = !DILexicalBlockFile(scope: !100, file: !82, discriminator: 1)
!104 = !DILocation(line: 498, column: 21, scope: !103)
!105 = !DILocation(line: 498, column: 25, scope: !103)
!106 = !DILocation(line: 498, column: 33, scope: !107)
!107 = !DILexicalBlockFile(scope: !100, file: !82, discriminator: 2)
!108 = !DILocation(line: 498, column: 29, scope: !107)
!109 = !DILocation(line: 498, column: 41, scope: !107)
!110 = !DILocation(line: 498, column: 49, scope: !107)
!111 = !DILocation(line: 498, column: 7, scope: !112)
!112 = !DILexicalBlockFile(scope: !100, file: !82, discriminator: 3)
!113 = !DILocation(line: 499, column: 16, scope: !114)
!114 = distinct !DILexicalBlock(scope: !100, file: !82, line: 498, column: 58)
!115 = !DILocation(line: 498, column: 7, scope: !116)
!116 = !DILexicalBlockFile(scope: !100, file: !82, discriminator: 4)
!117 = distinct !{!117, !101}
!118 = !DILocation(line: 508, column: 15, scope: !100)
!119 = !DILocation(line: 508, column: 11, scope: !100)
!120 = !DILocation(line: 508, column: 9, scope: !100)
!121 = !DILocation(line: 532, column: 11, scope: !122)
!122 = distinct !DILexicalBlock(scope: !100, file: !82, line: 532, column: 11)
!123 = !DILocation(line: 532, column: 13, scope: !122)
!124 = !DILocation(line: 532, column: 18, scope: !122)
!125 = !DILocation(line: 532, column: 22, scope: !126)
!126 = !DILexicalBlockFile(scope: !122, file: !82, discriminator: 1)
!127 = !DILocation(line: 532, column: 32, scope: !126)
!128 = !DILocation(line: 532, column: 30, scope: !126)
!129 = !DILocation(line: 532, column: 45, scope: !126)
!130 = !DILocation(line: 532, column: 43, scope: !126)
!131 = !DILocation(line: 532, column: 24, scope: !126)
!132 = !DILocation(line: 532, column: 54, scope: !126)
!133 = !DILocation(line: 532, column: 11, scope: !126)
!134 = !DILocation(line: 533, column: 17, scope: !135)
!135 = distinct !DILexicalBlock(scope: !122, file: !82, line: 532, column: 61)
!136 = !DILocation(line: 533, column: 10, scope: !135)
!137 = !DILocation(line: 539, column: 4, scope: !100)
!138 = !DILocation(line: 540, column: 11, scope: !81)
!139 = !DILocation(line: 540, column: 4, scope: !81)
!140 = !DILocation(line: 541, column: 1, scope: !81)
!141 = distinct !DISubprogram(name: "Str_Sprintf", scope: !11, file: !11, line: 216, type: !142, isLocal: false, isDefinition: true, scopeLine: 220, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!142 = !DISubroutineType(types: !143)
!143 = !{!14, !5, !15, !18, null}
!144 = !DILocalVariable(name: "buf", arg: 1, scope: !141, file: !11, line: 216, type: !5)
!145 = !DILocation(line: 216, column: 19, scope: !141)
!146 = !DILocalVariable(name: "maxSize", arg: 2, scope: !141, file: !11, line: 217, type: !15)
!147 = !DILocation(line: 217, column: 20, scope: !141)
!148 = !DILocalVariable(name: "fmt", arg: 3, scope: !141, file: !11, line: 218, type: !18)
!149 = !DILocation(line: 218, column: 25, scope: !141)
!150 = !DILocalVariable(name: "args", scope: !141, file: !11, line: 221, type: !151)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !152, line: 79, baseType: !153)
!152 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/open-vm-tools/line892")
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !154, line: 40, baseType: !155)
!154 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/open-vm-tools/line892")
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 221, baseType: !156)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 192, align: 64, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 1)
!159 = !DILocation(line: 221, column: 12, scope: !141)
!160 = !DILocalVariable(name: "i", scope: !141, file: !11, line: 222, type: !14)
!161 = !DILocation(line: 222, column: 8, scope: !141)
!162 = !DILocation(line: 224, column: 3, scope: !141)
!163 = !DILocation(line: 225, column: 22, scope: !141)
!164 = !DILocation(line: 225, column: 27, scope: !141)
!165 = !DILocation(line: 225, column: 36, scope: !141)
!166 = !DILocation(line: 225, column: 41, scope: !141)
!167 = !DILocation(line: 225, column: 8, scope: !141)
!168 = !DILocation(line: 225, column: 6, scope: !141)
!169 = !DILocation(line: 226, column: 3, scope: !141)
!170 = !DILocation(line: 227, column: 8, scope: !171)
!171 = distinct !DILexicalBlock(scope: !141, file: !11, line: 227, column: 8)
!172 = !DILocation(line: 227, column: 10, scope: !171)
!173 = !DILocation(line: 227, column: 8, scope: !141)
!174 = !DILocation(line: 228, column: 7, scope: !175)
!175 = distinct !DILexicalBlock(scope: !171, file: !11, line: 227, column: 15)
!176 = !DILocation(line: 230, column: 11, scope: !141)
!177 = !DILocation(line: 230, column: 4, scope: !141)
!178 = distinct !DISubprogram(name: "Str_Snprintf", scope: !11, file: !11, line: 251, type: !142, isLocal: false, isDefinition: true, scopeLine: 255, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!179 = !DILocalVariable(name: "str", arg: 1, scope: !178, file: !11, line: 251, type: !5)
!180 = !DILocation(line: 251, column: 20, scope: !178)
!181 = !DILocalVariable(name: "size", arg: 2, scope: !178, file: !11, line: 252, type: !15)
!182 = !DILocation(line: 252, column: 21, scope: !178)
!183 = !DILocalVariable(name: "format", arg: 3, scope: !178, file: !11, line: 253, type: !18)
!184 = !DILocation(line: 253, column: 26, scope: !178)
!185 = !DILocalVariable(name: "retval", scope: !178, file: !11, line: 256, type: !14)
!186 = !DILocation(line: 256, column: 8, scope: !178)
!187 = !DILocalVariable(name: "args", scope: !178, file: !11, line: 257, type: !151)
!188 = !DILocation(line: 257, column: 12, scope: !178)
!189 = !DILocation(line: 262, column: 3, scope: !178)
!190 = !DILocation(line: 263, column: 27, scope: !178)
!191 = !DILocation(line: 263, column: 32, scope: !178)
!192 = !DILocation(line: 263, column: 38, scope: !178)
!193 = !DILocation(line: 263, column: 46, scope: !178)
!194 = !DILocation(line: 263, column: 13, scope: !178)
!195 = !DILocation(line: 263, column: 11, scope: !178)
!196 = !DILocation(line: 264, column: 3, scope: !178)
!197 = !DILocation(line: 266, column: 11, scope: !178)
!198 = !DILocation(line: 266, column: 4, scope: !178)
!199 = distinct !DISubprogram(name: "Str_Strcpy", scope: !11, file: !11, line: 287, type: !200, isLocal: false, isDefinition: true, scopeLine: 290, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!200 = !DISubroutineType(types: !201)
!201 = !{!5, !5, !18, !15}
!202 = !DILocalVariable(name: "buf", arg: 1, scope: !199, file: !11, line: 287, type: !5)
!203 = !DILocation(line: 287, column: 18, scope: !199)
!204 = !DILocalVariable(name: "src", arg: 2, scope: !199, file: !11, line: 288, type: !18)
!205 = !DILocation(line: 288, column: 24, scope: !199)
!206 = !DILocalVariable(name: "maxSize", arg: 3, scope: !199, file: !11, line: 289, type: !15)
!207 = !DILocation(line: 289, column: 19, scope: !199)
!208 = !DILocalVariable(name: "len", scope: !199, file: !11, line: 291, type: !15)
!209 = !DILocation(line: 291, column: 11, scope: !199)
!210 = !DILocation(line: 296, column: 17, scope: !199)
!211 = !DILocation(line: 296, column: 10, scope: !199)
!212 = !DILocation(line: 296, column: 8, scope: !199)
!213 = !DILocation(line: 297, column: 8, scope: !214)
!214 = distinct !DILexicalBlock(scope: !199, file: !11, line: 297, column: 8)
!215 = !DILocation(line: 297, column: 15, scope: !214)
!216 = !DILocation(line: 297, column: 12, scope: !214)
!217 = !DILocation(line: 297, column: 8, scope: !199)
!218 = !DILocation(line: 298, column: 7, scope: !219)
!219 = distinct !DILexicalBlock(scope: !214, file: !11, line: 297, column: 24)
!220 = !DILocation(line: 300, column: 18, scope: !199)
!221 = !DILocation(line: 300, column: 23, scope: !199)
!222 = !DILocation(line: 300, column: 28, scope: !199)
!223 = !DILocation(line: 300, column: 32, scope: !199)
!224 = !DILocation(line: 300, column: 11, scope: !199)
!225 = !DILocation(line: 300, column: 4, scope: !199)
!226 = distinct !DISubprogram(name: "Str_Strncpy", scope: !11, file: !11, line: 325, type: !227, isLocal: false, isDefinition: true, scopeLine: 329, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!227 = !DISubroutineType(types: !228)
!228 = !{!5, !5, !15, !18, !15}
!229 = !DILocalVariable(name: "dest", arg: 1, scope: !226, file: !11, line: 325, type: !5)
!230 = !DILocation(line: 325, column: 19, scope: !226)
!231 = !DILocalVariable(name: "destSize", arg: 2, scope: !226, file: !11, line: 326, type: !15)
!232 = !DILocation(line: 326, column: 20, scope: !226)
!233 = !DILocalVariable(name: "src", arg: 3, scope: !226, file: !11, line: 327, type: !18)
!234 = !DILocation(line: 327, column: 25, scope: !226)
!235 = !DILocalVariable(name: "n", arg: 4, scope: !226, file: !11, line: 328, type: !15)
!236 = !DILocation(line: 328, column: 20, scope: !226)
!237 = !DILocation(line: 333, column: 19, scope: !226)
!238 = !DILocation(line: 333, column: 24, scope: !226)
!239 = !DILocation(line: 333, column: 8, scope: !226)
!240 = !DILocation(line: 333, column: 6, scope: !226)
!241 = !DILocation(line: 335, column: 8, scope: !242)
!242 = distinct !DILexicalBlock(scope: !226, file: !11, line: 335, column: 8)
!243 = !DILocation(line: 335, column: 13, scope: !242)
!244 = !DILocation(line: 335, column: 10, scope: !242)
!245 = !DILocation(line: 335, column: 8, scope: !226)
!246 = !DILocation(line: 336, column: 7, scope: !247)
!247 = distinct !DILexicalBlock(scope: !242, file: !11, line: 335, column: 23)
!248 = !DILocation(line: 339, column: 11, scope: !226)
!249 = !DILocation(line: 339, column: 17, scope: !226)
!250 = !DILocation(line: 339, column: 22, scope: !226)
!251 = !DILocation(line: 339, column: 4, scope: !226)
!252 = !DILocation(line: 340, column: 9, scope: !226)
!253 = !DILocation(line: 340, column: 4, scope: !226)
!254 = !DILocation(line: 340, column: 12, scope: !226)
!255 = !DILocation(line: 341, column: 11, scope: !226)
!256 = !DILocation(line: 341, column: 4, scope: !226)
!257 = distinct !DISubprogram(name: "Str_Strlen", scope: !11, file: !11, line: 364, type: !83, isLocal: false, isDefinition: true, scopeLine: 367, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!258 = !DILocalVariable(name: "s", arg: 1, scope: !257, file: !11, line: 364, type: !18)
!259 = !DILocation(line: 364, column: 24, scope: !257)
!260 = !DILocalVariable(name: "maxLen", arg: 2, scope: !257, file: !11, line: 365, type: !15)
!261 = !DILocation(line: 365, column: 19, scope: !257)
!262 = !DILocalVariable(name: "end", scope: !257, file: !11, line: 368, type: !18)
!263 = !DILocation(line: 368, column: 16, scope: !257)
!264 = !DILocation(line: 372, column: 22, scope: !265)
!265 = distinct !DILexicalBlock(scope: !257, file: !11, line: 372, column: 8)
!266 = !DILocation(line: 372, column: 31, scope: !265)
!267 = !DILocation(line: 372, column: 15, scope: !265)
!268 = !DILocation(line: 372, column: 13, scope: !265)
!269 = !DILocation(line: 372, column: 40, scope: !265)
!270 = !DILocation(line: 372, column: 8, scope: !257)
!271 = !DILocation(line: 373, column: 14, scope: !272)
!272 = distinct !DILexicalBlock(scope: !265, file: !11, line: 372, column: 48)
!273 = !DILocation(line: 373, column: 7, scope: !272)
!274 = !DILocation(line: 375, column: 11, scope: !257)
!275 = !DILocation(line: 375, column: 17, scope: !257)
!276 = !DILocation(line: 375, column: 15, scope: !257)
!277 = !DILocation(line: 375, column: 4, scope: !257)
!278 = !DILocation(line: 376, column: 1, scope: !257)
!279 = distinct !DISubprogram(name: "Str_Strnstr", scope: !11, file: !11, line: 397, type: !280, isLocal: false, isDefinition: true, scopeLine: 400, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!280 = !DISubroutineType(types: !281)
!281 = !{!5, !18, !18, !15}
!282 = !DILocalVariable(name: "src", arg: 1, scope: !279, file: !11, line: 397, type: !18)
!283 = !DILocation(line: 397, column: 25, scope: !279)
!284 = !DILocalVariable(name: "sub", arg: 2, scope: !279, file: !11, line: 398, type: !18)
!285 = !DILocation(line: 398, column: 25, scope: !279)
!286 = !DILocalVariable(name: "n", arg: 3, scope: !279, file: !11, line: 399, type: !15)
!287 = !DILocation(line: 399, column: 20, scope: !279)
!288 = !DILocalVariable(name: "subLen", scope: !279, file: !11, line: 401, type: !15)
!289 = !DILocation(line: 401, column: 11, scope: !279)
!290 = !DILocalVariable(name: "end", scope: !279, file: !11, line: 402, type: !18)
!291 = !DILocation(line: 402, column: 16, scope: !279)
!292 = !DILocation(line: 407, column: 25, scope: !293)
!293 = distinct !DILexicalBlock(scope: !279, file: !11, line: 407, column: 8)
!294 = !DILocation(line: 407, column: 18, scope: !293)
!295 = !DILocation(line: 407, column: 16, scope: !293)
!296 = !DILocation(line: 407, column: 31, scope: !293)
!297 = !DILocation(line: 407, column: 8, scope: !279)
!298 = !DILocation(line: 408, column: 23, scope: !299)
!299 = distinct !DILexicalBlock(scope: !293, file: !11, line: 407, column: 37)
!300 = !DILocation(line: 408, column: 7, scope: !299)
!301 = !DILocation(line: 410, column: 22, scope: !302)
!302 = distinct !DILexicalBlock(scope: !279, file: !11, line: 410, column: 8)
!303 = !DILocation(line: 410, column: 33, scope: !302)
!304 = !DILocation(line: 410, column: 15, scope: !302)
!305 = !DILocation(line: 410, column: 13, scope: !302)
!306 = !DILocation(line: 410, column: 37, scope: !302)
!307 = !DILocation(line: 410, column: 8, scope: !279)
!308 = !DILocation(line: 411, column: 13, scope: !309)
!309 = distinct !DILexicalBlock(scope: !302, file: !11, line: 410, column: 45)
!310 = !DILocation(line: 411, column: 19, scope: !309)
!311 = !DILocation(line: 411, column: 17, scope: !309)
!312 = !DILocation(line: 411, column: 11, scope: !309)
!313 = !DILocation(line: 412, column: 4, scope: !309)
!314 = !DILocation(line: 413, column: 11, scope: !279)
!315 = !DILocation(line: 413, column: 18, scope: !279)
!316 = !DILocation(line: 413, column: 8, scope: !279)
!317 = !DILocation(line: 414, column: 8, scope: !318)
!318 = distinct !DILexicalBlock(scope: !279, file: !11, line: 414, column: 8)
!319 = !DILocation(line: 414, column: 15, scope: !318)
!320 = !DILocation(line: 414, column: 12, scope: !318)
!321 = !DILocation(line: 414, column: 8, scope: !279)
!322 = !DILocation(line: 415, column: 7, scope: !323)
!323 = distinct !DILexicalBlock(scope: !318, file: !11, line: 414, column: 20)
!324 = !DILocation(line: 417, column: 4, scope: !279)
!325 = !DILocation(line: 418, column: 22, scope: !326)
!326 = distinct !DILexicalBlock(scope: !327, file: !11, line: 417, column: 4)
!327 = distinct !DILexicalBlock(scope: !279, file: !11, line: 417, column: 4)
!328 = !DILocation(line: 418, column: 27, scope: !326)
!329 = !DILocation(line: 418, column: 35, scope: !326)
!330 = !DILocation(line: 418, column: 41, scope: !326)
!331 = !DILocation(line: 418, column: 39, scope: !326)
!332 = !DILocation(line: 418, column: 15, scope: !326)
!333 = !DILocation(line: 418, column: 13, scope: !326)
!334 = !DILocation(line: 418, column: 47, scope: !326)
!335 = !DILocation(line: 418, column: 54, scope: !326)
!336 = !DILocation(line: 419, column: 16, scope: !326)
!337 = !DILocation(line: 419, column: 21, scope: !326)
!338 = !DILocation(line: 419, column: 26, scope: !326)
!339 = !DILocation(line: 419, column: 9, scope: !326)
!340 = !DILocation(line: 419, column: 34, scope: !326)
!341 = !DILocation(line: 417, column: 4, scope: !342)
!342 = !DILexicalBlockFile(scope: !327, file: !11, discriminator: 1)
!343 = !DILocation(line: 421, column: 4, scope: !344)
!344 = distinct !DILexicalBlock(scope: !326, file: !11, line: 420, column: 16)
!345 = !DILocation(line: 420, column: 12, scope: !326)
!346 = !DILocation(line: 417, column: 4, scope: !347)
!347 = !DILexicalBlockFile(scope: !326, file: !11, discriminator: 2)
!348 = distinct !{!348, !324}
!349 = !DILocation(line: 422, column: 20, scope: !279)
!350 = !DILocation(line: 422, column: 4, scope: !279)
!351 = !DILocation(line: 423, column: 1, scope: !279)
!352 = distinct !DISubprogram(name: "Str_Strcat", scope: !11, file: !11, line: 443, type: !200, isLocal: false, isDefinition: true, scopeLine: 446, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!353 = !DILocalVariable(name: "buf", arg: 1, scope: !352, file: !11, line: 443, type: !5)
!354 = !DILocation(line: 443, column: 18, scope: !352)
!355 = !DILocalVariable(name: "src", arg: 2, scope: !352, file: !11, line: 444, type: !18)
!356 = !DILocation(line: 444, column: 24, scope: !352)
!357 = !DILocalVariable(name: "maxSize", arg: 3, scope: !352, file: !11, line: 445, type: !15)
!358 = !DILocation(line: 445, column: 19, scope: !352)
!359 = !DILocalVariable(name: "bufLen", scope: !352, file: !11, line: 447, type: !15)
!360 = !DILocation(line: 447, column: 11, scope: !352)
!361 = !DILocalVariable(name: "srcLen", scope: !352, file: !11, line: 448, type: !15)
!362 = !DILocation(line: 448, column: 11, scope: !352)
!363 = !DILocation(line: 453, column: 20, scope: !352)
!364 = !DILocation(line: 453, column: 13, scope: !352)
!365 = !DILocation(line: 453, column: 11, scope: !352)
!366 = !DILocation(line: 454, column: 20, scope: !352)
!367 = !DILocation(line: 454, column: 13, scope: !352)
!368 = !DILocation(line: 454, column: 11, scope: !352)
!369 = !DILocation(line: 457, column: 8, scope: !370)
!370 = distinct !DILexicalBlock(scope: !352, file: !11, line: 457, column: 8)
!371 = !DILocation(line: 457, column: 17, scope: !370)
!372 = !DILocation(line: 457, column: 15, scope: !370)
!373 = !DILocation(line: 457, column: 26, scope: !370)
!374 = !DILocation(line: 457, column: 24, scope: !370)
!375 = !DILocation(line: 457, column: 33, scope: !370)
!376 = !DILocation(line: 457, column: 36, scope: !377)
!377 = !DILexicalBlockFile(scope: !370, file: !11, discriminator: 1)
!378 = !DILocation(line: 457, column: 45, scope: !377)
!379 = !DILocation(line: 457, column: 43, scope: !377)
!380 = !DILocation(line: 457, column: 55, scope: !377)
!381 = !DILocation(line: 457, column: 52, scope: !377)
!382 = !DILocation(line: 457, column: 8, scope: !377)
!383 = !DILocation(line: 458, column: 7, scope: !384)
!384 = distinct !DILexicalBlock(scope: !370, file: !11, line: 457, column: 64)
!385 = !DILocation(line: 461, column: 11, scope: !352)
!386 = !DILocation(line: 461, column: 17, scope: !352)
!387 = !DILocation(line: 461, column: 15, scope: !352)
!388 = !DILocation(line: 461, column: 25, scope: !352)
!389 = !DILocation(line: 461, column: 30, scope: !352)
!390 = !DILocation(line: 461, column: 37, scope: !352)
!391 = !DILocation(line: 461, column: 4, scope: !352)
!392 = !DILocation(line: 463, column: 11, scope: !352)
!393 = !DILocation(line: 463, column: 4, scope: !352)
!394 = distinct !DISubprogram(name: "Str_Strncat", scope: !11, file: !11, line: 489, type: !227, isLocal: false, isDefinition: true, scopeLine: 493, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!395 = !DILocalVariable(name: "buf", arg: 1, scope: !394, file: !11, line: 489, type: !5)
!396 = !DILocation(line: 489, column: 19, scope: !394)
!397 = !DILocalVariable(name: "bufSize", arg: 2, scope: !394, file: !11, line: 490, type: !15)
!398 = !DILocation(line: 490, column: 20, scope: !394)
!399 = !DILocalVariable(name: "src", arg: 3, scope: !394, file: !11, line: 491, type: !18)
!400 = !DILocation(line: 491, column: 25, scope: !394)
!401 = !DILocalVariable(name: "n", arg: 4, scope: !394, file: !11, line: 492, type: !15)
!402 = !DILocation(line: 492, column: 20, scope: !394)
!403 = !DILocalVariable(name: "bufLen", scope: !394, file: !11, line: 494, type: !15)
!404 = !DILocation(line: 494, column: 11, scope: !394)
!405 = !DILocation(line: 507, column: 20, scope: !394)
!406 = !DILocation(line: 507, column: 13, scope: !394)
!407 = !DILocation(line: 507, column: 11, scope: !394)
!408 = !DILocation(line: 508, column: 16, scope: !394)
!409 = !DILocation(line: 508, column: 27, scope: !394)
!410 = !DILocation(line: 508, column: 24, scope: !394)
!411 = !DILocation(line: 508, column: 14, scope: !394)
!412 = !DILocation(line: 508, column: 40, scope: !413)
!413 = !DILexicalBlockFile(scope: !394, file: !11, discriminator: 1)
!414 = !DILocation(line: 508, column: 14, scope: !413)
!415 = !DILocation(line: 508, column: 51, scope: !416)
!416 = !DILexicalBlockFile(scope: !394, file: !11, discriminator: 2)
!417 = !DILocation(line: 508, column: 14, scope: !416)
!418 = !DILocation(line: 508, column: 14, scope: !419)
!419 = !DILexicalBlockFile(scope: !394, file: !11, discriminator: 3)
!420 = !DILocation(line: 508, column: 11, scope: !419)
!421 = !DILocation(line: 510, column: 10, scope: !422)
!422 = distinct !DILexicalBlock(scope: !394, file: !11, line: 510, column: 8)
!423 = !DILocation(line: 510, column: 19, scope: !422)
!424 = !DILocation(line: 510, column: 17, scope: !422)
!425 = !DILocation(line: 510, column: 23, scope: !422)
!426 = !DILocation(line: 510, column: 21, scope: !422)
!427 = !DILocation(line: 510, column: 31, scope: !422)
!428 = !DILocation(line: 511, column: 10, scope: !422)
!429 = !DILocation(line: 511, column: 26, scope: !422)
!430 = !DILocation(line: 511, column: 19, scope: !422)
!431 = !DILocation(line: 511, column: 17, scope: !422)
!432 = !DILocation(line: 511, column: 33, scope: !422)
!433 = !DILocation(line: 511, column: 31, scope: !422)
!434 = !DILocation(line: 510, column: 8, scope: !413)
!435 = !DILocation(line: 512, column: 7, scope: !436)
!436 = distinct !DILexicalBlock(scope: !422, file: !11, line: 511, column: 43)
!437 = !DILocation(line: 520, column: 19, scope: !394)
!438 = !DILocation(line: 520, column: 24, scope: !394)
!439 = !DILocation(line: 520, column: 29, scope: !394)
!440 = !DILocation(line: 520, column: 11, scope: !394)
!441 = !DILocation(line: 520, column: 4, scope: !394)
!442 = distinct !DISubprogram(name: "Str_Asprintf", scope: !11, file: !11, line: 541, type: !443, isLocal: false, isDefinition: true, scopeLine: 544, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!443 = !DISubroutineType(types: !444)
!444 = !{!5, !445, !18, null}
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!446 = !DILocalVariable(name: "length", arg: 1, scope: !442, file: !11, line: 541, type: !445)
!447 = !DILocation(line: 541, column: 22, scope: !442)
!448 = !DILocalVariable(name: "format", arg: 2, scope: !442, file: !11, line: 542, type: !18)
!449 = !DILocation(line: 542, column: 26, scope: !442)
!450 = !DILocalVariable(name: "arguments", scope: !442, file: !11, line: 545, type: !151)
!451 = !DILocation(line: 545, column: 12, scope: !442)
!452 = !DILocalVariable(name: "result", scope: !442, file: !11, line: 546, type: !5)
!453 = !DILocation(line: 546, column: 10, scope: !442)
!454 = !DILocation(line: 548, column: 3, scope: !442)
!455 = !DILocation(line: 549, column: 27, scope: !442)
!456 = !DILocation(line: 549, column: 35, scope: !442)
!457 = !DILocation(line: 549, column: 43, scope: !442)
!458 = !DILocation(line: 549, column: 13, scope: !442)
!459 = !DILocation(line: 549, column: 11, scope: !442)
!460 = !DILocation(line: 550, column: 3, scope: !442)
!461 = !DILocation(line: 552, column: 11, scope: !442)
!462 = !DILocation(line: 552, column: 4, scope: !442)
!463 = distinct !DISubprogram(name: "Str_Vasprintf", scope: !11, file: !11, line: 695, type: !464, isLocal: false, isDefinition: true, scopeLine: 698, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!464 = !DISubroutineType(types: !465)
!465 = !{!5, !445, !18, !20}
!466 = !DILocalVariable(name: "length", arg: 1, scope: !463, file: !11, line: 695, type: !445)
!467 = !DILocation(line: 695, column: 23, scope: !463)
!468 = !DILocalVariable(name: "format", arg: 2, scope: !463, file: !11, line: 696, type: !18)
!469 = !DILocation(line: 696, column: 27, scope: !463)
!470 = !DILocalVariable(name: "arguments", arg: 3, scope: !463, file: !11, line: 697, type: !20)
!471 = !DILocation(line: 697, column: 23, scope: !463)
!472 = !DILocation(line: 699, column: 32, scope: !463)
!473 = !DILocation(line: 699, column: 40, scope: !463)
!474 = !DILocation(line: 699, column: 48, scope: !463)
!475 = !DILocation(line: 699, column: 11, scope: !463)
!476 = !DILocation(line: 699, column: 4, scope: !463)
!477 = distinct !DISubprogram(name: "Str_SafeAsprintf", scope: !11, file: !11, line: 573, type: !443, isLocal: false, isDefinition: true, scopeLine: 576, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!478 = !DILocalVariable(name: "length", arg: 1, scope: !477, file: !11, line: 573, type: !445)
!479 = !DILocation(line: 573, column: 26, scope: !477)
!480 = !DILocalVariable(name: "format", arg: 2, scope: !477, file: !11, line: 574, type: !18)
!481 = !DILocation(line: 574, column: 30, scope: !477)
!482 = !DILocalVariable(name: "arguments", scope: !477, file: !11, line: 577, type: !151)
!483 = !DILocation(line: 577, column: 12, scope: !477)
!484 = !DILocalVariable(name: "result", scope: !477, file: !11, line: 578, type: !5)
!485 = !DILocation(line: 578, column: 10, scope: !477)
!486 = !DILocation(line: 580, column: 3, scope: !477)
!487 = !DILocation(line: 581, column: 31, scope: !477)
!488 = !DILocation(line: 581, column: 39, scope: !477)
!489 = !DILocation(line: 581, column: 47, scope: !477)
!490 = !DILocation(line: 581, column: 13, scope: !477)
!491 = !DILocation(line: 581, column: 11, scope: !477)
!492 = !DILocation(line: 582, column: 3, scope: !477)
!493 = !DILocation(line: 584, column: 11, scope: !477)
!494 = !DILocation(line: 584, column: 4, scope: !477)
!495 = distinct !DISubprogram(name: "Str_SafeVasprintf", scope: !11, file: !11, line: 722, type: !464, isLocal: false, isDefinition: true, scopeLine: 725, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!496 = !DILocalVariable(name: "length", arg: 1, scope: !495, file: !11, line: 722, type: !445)
!497 = !DILocation(line: 722, column: 27, scope: !495)
!498 = !DILocalVariable(name: "format", arg: 2, scope: !495, file: !11, line: 723, type: !18)
!499 = !DILocation(line: 723, column: 31, scope: !495)
!500 = !DILocalVariable(name: "arguments", arg: 3, scope: !495, file: !11, line: 724, type: !20)
!501 = !DILocation(line: 724, column: 27, scope: !495)
!502 = !DILocation(line: 726, column: 32, scope: !495)
!503 = !DILocation(line: 726, column: 40, scope: !495)
!504 = !DILocation(line: 726, column: 48, scope: !495)
!505 = !DILocation(line: 726, column: 11, scope: !495)
!506 = !DILocation(line: 726, column: 4, scope: !495)
!507 = distinct !DISubprogram(name: "StrVasprintfInternal", scope: !11, file: !11, line: 613, type: !508, isLocal: true, isDefinition: true, scopeLine: 617, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!508 = !DISubroutineType(types: !509)
!509 = !{!5, !445, !18, !20, !510}
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !511, line: 230, baseType: !6)
!511 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line892")
!512 = !DILocalVariable(name: "length", arg: 1, scope: !507, file: !11, line: 613, type: !445)
!513 = !DILocation(line: 613, column: 30, scope: !507)
!514 = !DILocalVariable(name: "format", arg: 2, scope: !507, file: !11, line: 614, type: !18)
!515 = !DILocation(line: 614, column: 34, scope: !507)
!516 = !DILocalVariable(name: "arguments", arg: 3, scope: !507, file: !11, line: 615, type: !20)
!517 = !DILocation(line: 615, column: 30, scope: !507)
!518 = !DILocalVariable(name: "assertOnFailure", arg: 4, scope: !507, file: !11, line: 616, type: !510)
!519 = !DILocation(line: 616, column: 27, scope: !507)
!520 = !DILocalVariable(name: "buf", scope: !507, file: !11, line: 618, type: !5)
!521 = !DILocation(line: 618, column: 10, scope: !507)
!522 = !DILocalVariable(name: "ret", scope: !507, file: !11, line: 619, type: !14)
!523 = !DILocation(line: 619, column: 8, scope: !507)
!524 = !DILocation(line: 625, column: 26, scope: !507)
!525 = !DILocation(line: 625, column: 34, scope: !507)
!526 = !DILocation(line: 625, column: 10, scope: !507)
!527 = !DILocation(line: 625, column: 8, scope: !507)
!528 = !DILocation(line: 661, column: 8, scope: !529)
!529 = distinct !DILexicalBlock(scope: !507, file: !11, line: 661, column: 8)
!530 = !DILocation(line: 661, column: 12, scope: !529)
!531 = !DILocation(line: 661, column: 8, scope: !507)
!532 = !DILocation(line: 662, column: 11, scope: !533)
!533 = distinct !DILexicalBlock(scope: !529, file: !11, line: 661, column: 17)
!534 = !DILocation(line: 663, column: 7, scope: !533)
!535 = !DILocation(line: 665, column: 8, scope: !536)
!536 = distinct !DILexicalBlock(scope: !507, file: !11, line: 665, column: 8)
!537 = !DILocation(line: 665, column: 15, scope: !536)
!538 = !DILocation(line: 665, column: 8, scope: !507)
!539 = !DILocation(line: 666, column: 17, scope: !540)
!540 = distinct !DILexicalBlock(scope: !536, file: !11, line: 665, column: 23)
!541 = !DILocation(line: 666, column: 8, scope: !540)
!542 = !DILocation(line: 666, column: 15, scope: !540)
!543 = !DILocation(line: 667, column: 4, scope: !540)
!544 = !DILocation(line: 665, column: 27, scope: !545)
!545 = !DILexicalBlockFile(scope: !536, file: !11, discriminator: 1)
!546 = !DILocation(line: 670, column: 8, scope: !547)
!547 = distinct !DILexicalBlock(scope: !507, file: !11, line: 670, column: 8)
!548 = !DILocation(line: 670, column: 8, scope: !507)
!549 = !DILocation(line: 671, column: 33, scope: !550)
!550 = distinct !DILexicalBlock(scope: !551, file: !11, line: 671, column: 13)
!551 = distinct !DILexicalBlock(scope: !552, file: !11, line: 671, column: 8)
!552 = distinct !DILexicalBlock(scope: !547, file: !11, line: 670, column: 25)
!553 = !DILocation(line: 671, column: 31, scope: !550)
!554 = !DILocation(line: 671, column: 30, scope: !550)
!555 = !DILocation(line: 671, column: 13, scope: !550)
!556 = !DILocation(line: 671, column: 13, scope: !551)
!557 = !DILocation(line: 671, column: 46, scope: !558)
!558 = !DILexicalBlockFile(scope: !559, file: !11, discriminator: 1)
!559 = distinct !DILexicalBlock(scope: !550, file: !11, line: 671, column: 44)
!560 = !DILocation(line: 672, column: 4, scope: !552)
!561 = !DILocation(line: 673, column: 11, scope: !507)
!562 = !DILocation(line: 673, column: 4, scope: !507)
!563 = distinct !DISubprogram(name: "Str_ToLower", scope: !11, file: !11, line: 1213, type: !564, isLocal: false, isDefinition: true, scopeLine: 1214, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!564 = !DISubroutineType(types: !565)
!565 = !{!5, !5}
!566 = !DILocalVariable(name: "string", arg: 1, scope: !563, file: !11, line: 1213, type: !5)
!567 = !DILocation(line: 1213, column: 19, scope: !563)
!568 = !DILocalVariable(name: "c", scope: !563, file: !11, line: 1215, type: !5)
!569 = !DILocation(line: 1215, column: 10, scope: !563)
!570 = !DILocation(line: 1215, column: 14, scope: !563)
!571 = !DILocation(line: 1217, column: 4, scope: !563)
!572 = !DILocation(line: 1217, column: 12, scope: !573)
!573 = !DILexicalBlockFile(scope: !563, file: !11, discriminator: 1)
!574 = !DILocation(line: 1217, column: 11, scope: !573)
!575 = !DILocation(line: 1217, column: 4, scope: !573)
!576 = !DILocation(line: 1218, column: 14, scope: !577)
!577 = distinct !DILexicalBlock(scope: !563, file: !11, line: 1217, column: 15)
!578 = !DILocation(line: 1218, column: 13, scope: !577)
!579 = !DILocation(line: 1218, column: 16, scope: !577)
!580 = !DILocation(line: 1218, column: 23, scope: !577)
!581 = !DILocation(line: 1218, column: 27, scope: !582)
!582 = !DILexicalBlockFile(scope: !577, file: !11, discriminator: 1)
!583 = !DILocation(line: 1218, column: 26, scope: !582)
!584 = !DILocation(line: 1218, column: 29, scope: !582)
!585 = !DILocation(line: 1218, column: 12, scope: !582)
!586 = !DILocation(line: 1218, column: 40, scope: !587)
!587 = !DILexicalBlockFile(scope: !577, file: !11, discriminator: 2)
!588 = !DILocation(line: 1218, column: 39, scope: !587)
!589 = !DILocation(line: 1218, column: 42, scope: !587)
!590 = !DILocation(line: 1218, column: 12, scope: !587)
!591 = !DILocation(line: 1218, column: 59, scope: !592)
!592 = !DILexicalBlockFile(scope: !577, file: !11, discriminator: 3)
!593 = !DILocation(line: 1218, column: 58, scope: !592)
!594 = !DILocation(line: 1218, column: 12, scope: !592)
!595 = !DILocation(line: 1218, column: 12, scope: !596)
!596 = !DILexicalBlockFile(scope: !577, file: !11, discriminator: 4)
!597 = !DILocation(line: 1218, column: 8, scope: !596)
!598 = !DILocation(line: 1218, column: 10, scope: !596)
!599 = !DILocation(line: 1219, column: 8, scope: !577)
!600 = !DILocation(line: 1217, column: 4, scope: !601)
!601 = !DILexicalBlockFile(scope: !563, file: !11, discriminator: 2)
!602 = distinct !{!602, !571}
!603 = !DILocation(line: 1222, column: 11, scope: !563)
!604 = !DILocation(line: 1222, column: 4, scope: !563)
!605 = distinct !DISubprogram(name: "Str_ToUpper", scope: !11, file: !11, line: 1245, type: !564, isLocal: false, isDefinition: true, scopeLine: 1246, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!606 = !DILocalVariable(name: "string", arg: 1, scope: !605, file: !11, line: 1245, type: !5)
!607 = !DILocation(line: 1245, column: 19, scope: !605)
!608 = !DILocalVariable(name: "c", scope: !605, file: !11, line: 1247, type: !5)
!609 = !DILocation(line: 1247, column: 10, scope: !605)
!610 = !DILocation(line: 1247, column: 14, scope: !605)
!611 = !DILocation(line: 1249, column: 4, scope: !605)
!612 = !DILocation(line: 1249, column: 12, scope: !613)
!613 = !DILexicalBlockFile(scope: !605, file: !11, discriminator: 1)
!614 = !DILocation(line: 1249, column: 11, scope: !613)
!615 = !DILocation(line: 1249, column: 4, scope: !613)
!616 = !DILocation(line: 1250, column: 14, scope: !617)
!617 = distinct !DILexicalBlock(scope: !605, file: !11, line: 1249, column: 15)
!618 = !DILocation(line: 1250, column: 13, scope: !617)
!619 = !DILocation(line: 1250, column: 16, scope: !617)
!620 = !DILocation(line: 1250, column: 23, scope: !617)
!621 = !DILocation(line: 1250, column: 27, scope: !622)
!622 = !DILexicalBlockFile(scope: !617, file: !11, discriminator: 1)
!623 = !DILocation(line: 1250, column: 26, scope: !622)
!624 = !DILocation(line: 1250, column: 29, scope: !622)
!625 = !DILocation(line: 1250, column: 12, scope: !622)
!626 = !DILocation(line: 1250, column: 40, scope: !627)
!627 = !DILexicalBlockFile(scope: !617, file: !11, discriminator: 2)
!628 = !DILocation(line: 1250, column: 39, scope: !627)
!629 = !DILocation(line: 1250, column: 42, scope: !627)
!630 = !DILocation(line: 1250, column: 12, scope: !627)
!631 = !DILocation(line: 1250, column: 59, scope: !632)
!632 = !DILexicalBlockFile(scope: !617, file: !11, discriminator: 3)
!633 = !DILocation(line: 1250, column: 58, scope: !632)
!634 = !DILocation(line: 1250, column: 12, scope: !632)
!635 = !DILocation(line: 1250, column: 12, scope: !636)
!636 = !DILexicalBlockFile(scope: !617, file: !11, discriminator: 4)
!637 = !DILocation(line: 1250, column: 8, scope: !636)
!638 = !DILocation(line: 1250, column: 10, scope: !636)
!639 = !DILocation(line: 1251, column: 8, scope: !617)
!640 = !DILocation(line: 1249, column: 4, scope: !641)
!641 = !DILexicalBlockFile(scope: !605, file: !11, discriminator: 2)
!642 = distinct !{!642, !611}
!643 = !DILocation(line: 1254, column: 11, scope: !605)
!644 = !DILocation(line: 1254, column: 4, scope: !605)
