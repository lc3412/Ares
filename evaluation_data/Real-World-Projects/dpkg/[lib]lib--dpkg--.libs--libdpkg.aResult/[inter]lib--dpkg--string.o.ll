; ModuleID = './[inter]lib--dpkg--string.o.i'
source_filename = "./[inter]lib--dpkg--string.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: nounwind uwtable
define i8* @str_concat(i8*, ...) #0 !dbg !17 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !24, metadata !25), !dbg !26
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !27, metadata !25), !dbg !44
  call void @llvm.dbg.declare(metadata i8** %4, metadata !45, metadata !25), !dbg !48
  call void @llvm.dbg.declare(metadata i64* %5, metadata !49, metadata !25), !dbg !53
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !54
  %7 = bitcast %struct.__va_list_tag* %6 to i8*, !dbg !54
  call void @llvm.va_start(i8* %7), !dbg !54
  br label %8, !dbg !55

; <label>:8:                                      ; preds = %28, %1
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !56
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %9, i32 0, i32 0, !dbg !56
  %11 = load i32, i32* %10, align 16, !dbg !56
  %12 = icmp ule i32 %11, 40, !dbg !56
  br i1 %12, label %13, label %19, !dbg !56

; <label>:13:                                     ; preds = %8
  %14 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %9, i32 0, i32 3, !dbg !58
  %15 = load i8*, i8** %14, align 16, !dbg !58
  %16 = getelementptr i8, i8* %15, i32 %11, !dbg !58
  %17 = bitcast i8* %16 to i8**, !dbg !58
  %18 = add i32 %11, 8, !dbg !58
  store i32 %18, i32* %10, align 16, !dbg !58
  br label %24, !dbg !58

; <label>:19:                                     ; preds = %8
  %20 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %9, i32 0, i32 2, !dbg !60
  %21 = load i8*, i8** %20, align 8, !dbg !60
  %22 = bitcast i8* %21 to i8**, !dbg !60
  %23 = getelementptr i8, i8* %21, i32 8, !dbg !60
  store i8* %23, i8** %20, align 8, !dbg !60
  br label %24, !dbg !60

; <label>:24:                                     ; preds = %19, %13
  %25 = phi i8** [ %17, %13 ], [ %22, %19 ], !dbg !62
  %26 = load i8*, i8** %25, align 8, !dbg !62
  store i8* %26, i8** %4, align 8, !dbg !64
  %27 = icmp ne i8* %26, null, !dbg !65
  br i1 %27, label %28, label %37, !dbg !65

; <label>:28:                                     ; preds = %24
  %29 = load i8*, i8** %4, align 8, !dbg !66
  %30 = call i64 @strlen(i8* %29) #7, !dbg !68
  store i64 %30, i64* %5, align 8, !dbg !69
  %31 = load i8*, i8** %2, align 8, !dbg !70
  %32 = load i8*, i8** %4, align 8, !dbg !71
  %33 = load i64, i64* %5, align 8, !dbg !72
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 %33, i32 1, i1 false), !dbg !73
  %34 = load i64, i64* %5, align 8, !dbg !74
  %35 = load i8*, i8** %2, align 8, !dbg !75
  %36 = getelementptr inbounds i8, i8* %35, i64 %34, !dbg !75
  store i8* %36, i8** %2, align 8, !dbg !75
  br label %8, !dbg !76, !llvm.loop !78

; <label>:37:                                     ; preds = %24
  %38 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !79
  %39 = bitcast %struct.__va_list_tag* %38 to i8*, !dbg !79
  call void @llvm.va_end(i8* %39), !dbg !79
  %40 = load i8*, i8** %2, align 8, !dbg !80
  store i8 0, i8* %40, align 1, !dbg !81
  %41 = load i8*, i8** %2, align 8, !dbg !82
  ret i8* %41, !dbg !83
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: nounwind uwtable
define zeroext i1 @str_match_end(i8*, i8*) #0 !dbg !84 {
  %3 = alloca i1, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !88, metadata !25), !dbg !89
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !90, metadata !25), !dbg !91
  call void @llvm.dbg.declare(metadata i64* %6, metadata !92, metadata !25), !dbg !93
  %9 = load i8*, i8** %4, align 8, !dbg !94
  %10 = call i64 @strlen(i8* %9) #7, !dbg !95
  store i64 %10, i64* %6, align 8, !dbg !93
  call void @llvm.dbg.declare(metadata i64* %7, metadata !96, metadata !25), !dbg !97
  %11 = load i8*, i8** %5, align 8, !dbg !98
  %12 = call i64 @strlen(i8* %11) #7, !dbg !99
  store i64 %12, i64* %7, align 8, !dbg !97
  call void @llvm.dbg.declare(metadata i8** %8, metadata !100, metadata !25), !dbg !101
  %13 = load i8*, i8** %4, align 8, !dbg !102
  %14 = load i64, i64* %6, align 8, !dbg !103
  %15 = getelementptr inbounds i8, i8* %13, i64 %14, !dbg !104
  %16 = load i64, i64* %7, align 8, !dbg !105
  %17 = sub i64 0, %16, !dbg !106
  %18 = getelementptr inbounds i8, i8* %15, i64 %17, !dbg !106
  store i8* %18, i8** %8, align 8, !dbg !101
  %19 = load i64, i64* %6, align 8, !dbg !107
  %20 = load i64, i64* %7, align 8, !dbg !109
  %21 = icmp uge i64 %19, %20, !dbg !110
  br i1 %21, label %22, label %28, !dbg !111

; <label>:22:                                     ; preds = %2
  %23 = load i8*, i8** %8, align 8, !dbg !112
  %24 = load i8*, i8** %5, align 8, !dbg !114
  %25 = call i32 @strcmp(i8* %23, i8* %24) #7, !dbg !115
  %26 = icmp eq i32 %25, 0, !dbg !116
  br i1 %26, label %27, label %28, !dbg !117

; <label>:27:                                     ; preds = %22
  store i1 true, i1* %3, align 1, !dbg !118
  br label %29, !dbg !118

; <label>:28:                                     ; preds = %22, %2
  store i1 false, i1* %3, align 1, !dbg !119
  br label %29, !dbg !119

; <label>:29:                                     ; preds = %28, %27
  %30 = load i1, i1* %3, align 1, !dbg !120
  ret i1 %30, !dbg !120
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define i8* @str_fmt(i8*, ...) #0 !dbg !121 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !124, metadata !25), !dbg !125
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !126, metadata !25), !dbg !127
  call void @llvm.dbg.declare(metadata i8** %4, metadata !128, metadata !25), !dbg !129
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !130
  %6 = bitcast %struct.__va_list_tag* %5 to i8*, !dbg !130
  call void @llvm.va_start(i8* %6), !dbg !130
  %7 = load i8*, i8** %2, align 8, !dbg !131
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !132
  %9 = call i32 @m_vasprintf(i8** %4, i8* %7, %struct.__va_list_tag* %8), !dbg !133
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !134
  %11 = bitcast %struct.__va_list_tag* %10 to i8*, !dbg !134
  call void @llvm.va_end(i8* %11), !dbg !134
  %12 = load i8*, i8** %4, align 8, !dbg !135
  ret i8* %12, !dbg !136
}

declare i32 @m_vasprintf(i8**, i8*, %struct.__va_list_tag*) #5

; Function Attrs: nounwind uwtable
define i8* @str_escape_fmt(i8*, i8*, i64) #0 !dbg !137 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !140, metadata !25), !dbg !141
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !142, metadata !25), !dbg !143
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !144, metadata !25), !dbg !145
  call void @llvm.dbg.declare(metadata i8** %8, metadata !146, metadata !25), !dbg !147
  %10 = load i8*, i8** %5, align 8, !dbg !148
  store i8* %10, i8** %8, align 8, !dbg !147
  call void @llvm.dbg.declare(metadata i8** %9, metadata !149, metadata !25), !dbg !150
  %11 = load i8*, i8** %6, align 8, !dbg !151
  store i8* %11, i8** %9, align 8, !dbg !150
  %12 = load i64, i64* %7, align 8, !dbg !152
  %13 = icmp eq i64 %12, 0, !dbg !154
  br i1 %13, label %14, label %16, !dbg !155

; <label>:14:                                     ; preds = %3
  %15 = load i8*, i8** %8, align 8, !dbg !156
  store i8* %15, i8** %4, align 8, !dbg !157
  br label %48, !dbg !157

; <label>:16:                                     ; preds = %3
  br label %17, !dbg !158

; <label>:17:                                     ; preds = %39, %16
  %18 = load i8*, i8** %9, align 8, !dbg !159
  %19 = load i8, i8* %18, align 1, !dbg !161
  %20 = icmp ne i8 %19, 0, !dbg !162
  br i1 %20, label %21, label %45, !dbg !162

; <label>:21:                                     ; preds = %17
  %22 = load i8*, i8** %9, align 8, !dbg !163
  %23 = load i8, i8* %22, align 1, !dbg !166
  %24 = sext i8 %23 to i32, !dbg !166
  %25 = icmp eq i32 %24, 37, !dbg !167
  br i1 %25, label %26, label %34, !dbg !168

; <label>:26:                                     ; preds = %21
  %27 = load i64, i64* %7, align 8, !dbg !169
  %28 = add i64 %27, -1, !dbg !169
  store i64 %28, i64* %7, align 8, !dbg !169
  %29 = icmp ule i64 %27, 2, !dbg !172
  br i1 %29, label %30, label %31, !dbg !173

; <label>:30:                                     ; preds = %26
  br label %45, !dbg !174

; <label>:31:                                     ; preds = %26
  %32 = load i8*, i8** %8, align 8, !dbg !175
  %33 = getelementptr inbounds i8, i8* %32, i32 1, !dbg !175
  store i8* %33, i8** %8, align 8, !dbg !175
  store i8 37, i8* %32, align 1, !dbg !176
  br label %34, !dbg !177

; <label>:34:                                     ; preds = %31, %21
  %35 = load i64, i64* %7, align 8, !dbg !178
  %36 = add i64 %35, -1, !dbg !178
  store i64 %36, i64* %7, align 8, !dbg !178
  %37 = icmp ule i64 %35, 1, !dbg !180
  br i1 %37, label %38, label %39, !dbg !181

; <label>:38:                                     ; preds = %34
  br label %45, !dbg !182

; <label>:39:                                     ; preds = %34
  %40 = load i8*, i8** %9, align 8, !dbg !183
  %41 = getelementptr inbounds i8, i8* %40, i32 1, !dbg !183
  store i8* %41, i8** %9, align 8, !dbg !183
  %42 = load i8, i8* %40, align 1, !dbg !184
  %43 = load i8*, i8** %8, align 8, !dbg !185
  %44 = getelementptr inbounds i8, i8* %43, i32 1, !dbg !185
  store i8* %44, i8** %8, align 8, !dbg !185
  store i8 %42, i8* %43, align 1, !dbg !186
  br label %17, !dbg !187, !llvm.loop !189

; <label>:45:                                     ; preds = %38, %30, %17
  %46 = load i8*, i8** %8, align 8, !dbg !190
  store i8 0, i8* %46, align 1, !dbg !191
  %47 = load i8*, i8** %8, align 8, !dbg !192
  store i8* %47, i8** %4, align 8, !dbg !193
  br label %48, !dbg !193

; <label>:48:                                     ; preds = %45, %14
  %49 = load i8*, i8** %4, align 8, !dbg !194
  ret i8* %49, !dbg !194
}

; Function Attrs: nounwind uwtable
define i8* @str_quote_meta(i8*) #0 !dbg !195 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !198, metadata !25), !dbg !199
  call void @llvm.dbg.declare(metadata i8** %3, metadata !200, metadata !25), !dbg !201
  call void @llvm.dbg.declare(metadata i8** %4, metadata !202, metadata !25), !dbg !203
  %5 = load i8*, i8** %2, align 8, !dbg !204
  %6 = call i64 @strlen(i8* %5) #7, !dbg !205
  %7 = mul i64 %6, 2, !dbg !206
  %8 = call i8* @m_malloc(i64 %7), !dbg !207
  store i8* %8, i8** %4, align 8, !dbg !209
  store i8* %8, i8** %3, align 8, !dbg !210
  br label %9, !dbg !211

; <label>:9:                                      ; preds = %26, %1
  %10 = load i8*, i8** %2, align 8, !dbg !212
  %11 = load i8, i8* %10, align 1, !dbg !213
  %12 = icmp ne i8 %11, 0, !dbg !214
  br i1 %12, label %13, label %32, !dbg !214

; <label>:13:                                     ; preds = %9
  %14 = load i8*, i8** %2, align 8, !dbg !215
  %15 = load i8, i8* %14, align 1, !dbg !218
  %16 = sext i8 %15 to i32, !dbg !218
  %17 = call zeroext i1 @c_isdigit(i32 %16), !dbg !219
  br i1 %17, label %26, label %18, !dbg !220

; <label>:18:                                     ; preds = %13
  %19 = load i8*, i8** %2, align 8, !dbg !221
  %20 = load i8, i8* %19, align 1, !dbg !223
  %21 = sext i8 %20 to i32, !dbg !223
  %22 = call zeroext i1 @c_isalpha(i32 %21), !dbg !224
  br i1 %22, label %26, label %23, !dbg !225

; <label>:23:                                     ; preds = %18
  %24 = load i8*, i8** %4, align 8, !dbg !226
  %25 = getelementptr inbounds i8, i8* %24, i32 1, !dbg !226
  store i8* %25, i8** %4, align 8, !dbg !226
  store i8 92, i8* %24, align 1, !dbg !227
  br label %26, !dbg !228

; <label>:26:                                     ; preds = %23, %18, %13
  %27 = load i8*, i8** %2, align 8, !dbg !229
  %28 = getelementptr inbounds i8, i8* %27, i32 1, !dbg !229
  store i8* %28, i8** %2, align 8, !dbg !229
  %29 = load i8, i8* %27, align 1, !dbg !230
  %30 = load i8*, i8** %4, align 8, !dbg !231
  %31 = getelementptr inbounds i8, i8* %30, i32 1, !dbg !231
  store i8* %31, i8** %4, align 8, !dbg !231
  store i8 %29, i8* %30, align 1, !dbg !232
  br label %9, !dbg !233, !llvm.loop !235

; <label>:32:                                     ; preds = %9
  %33 = load i8*, i8** %4, align 8, !dbg !236
  store i8 0, i8* %33, align 1, !dbg !237
  %34 = load i8*, i8** %3, align 8, !dbg !238
  ret i8* %34, !dbg !239
}

declare i8* @m_malloc(i64) #5

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @c_isdigit(i32) #6 !dbg !240 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !244, metadata !25), !dbg !245
  %3 = load i32, i32* %2, align 4, !dbg !246
  %4 = call zeroext i1 @c_isbits(i32 %3, i32 32), !dbg !247
  ret i1 %4, !dbg !248
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @c_isalpha(i32) #6 !dbg !249 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !250, metadata !25), !dbg !251
  %3 = load i32, i32* %2, align 4, !dbg !252
  %4 = call zeroext i1 @c_isbits(i32 %3, i32 24), !dbg !253
  ret i1 %4, !dbg !254
}

; Function Attrs: nounwind uwtable
define i8* @str_strip_quotes(i8*) #0 !dbg !255 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !258, metadata !25), !dbg !259
  %5 = load i8*, i8** %3, align 8, !dbg !260
  %6 = getelementptr inbounds i8, i8* %5, i64 0, !dbg !260
  %7 = load i8, i8* %6, align 1, !dbg !260
  %8 = sext i8 %7 to i32, !dbg !260
  %9 = icmp eq i32 %8, 34, !dbg !262
  br i1 %9, label %16, label %10, !dbg !263

; <label>:10:                                     ; preds = %1
  %11 = load i8*, i8** %3, align 8, !dbg !264
  %12 = getelementptr inbounds i8, i8* %11, i64 0, !dbg !264
  %13 = load i8, i8* %12, align 1, !dbg !264
  %14 = sext i8 %13 to i32, !dbg !264
  %15 = icmp eq i32 %14, 39, !dbg !266
  br i1 %15, label %16, label %38, !dbg !267

; <label>:16:                                     ; preds = %10, %1
  call void @llvm.dbg.declare(metadata i64* %4, metadata !268, metadata !25), !dbg !270
  %17 = load i8*, i8** %3, align 8, !dbg !271
  %18 = call i64 @strlen(i8* %17) #7, !dbg !272
  store i64 %18, i64* %4, align 8, !dbg !270
  %19 = load i8*, i8** %3, align 8, !dbg !273
  %20 = getelementptr inbounds i8, i8* %19, i64 0, !dbg !273
  %21 = load i8, i8* %20, align 1, !dbg !273
  %22 = sext i8 %21 to i32, !dbg !273
  %23 = load i64, i64* %4, align 8, !dbg !275
  %24 = sub i64 %23, 1, !dbg !276
  %25 = load i8*, i8** %3, align 8, !dbg !277
  %26 = getelementptr inbounds i8, i8* %25, i64 %24, !dbg !277
  %27 = load i8, i8* %26, align 1, !dbg !277
  %28 = sext i8 %27 to i32, !dbg !277
  %29 = icmp ne i32 %22, %28, !dbg !278
  br i1 %29, label %30, label %31, !dbg !279

; <label>:30:                                     ; preds = %16
  store i8* null, i8** %2, align 8, !dbg !280
  br label %40, !dbg !280

; <label>:31:                                     ; preds = %16
  %32 = load i64, i64* %4, align 8, !dbg !281
  %33 = sub i64 %32, 1, !dbg !282
  %34 = load i8*, i8** %3, align 8, !dbg !283
  %35 = getelementptr inbounds i8, i8* %34, i64 %33, !dbg !283
  store i8 0, i8* %35, align 1, !dbg !284
  %36 = load i8*, i8** %3, align 8, !dbg !285
  %37 = getelementptr inbounds i8, i8* %36, i32 1, !dbg !285
  store i8* %37, i8** %3, align 8, !dbg !285
  br label %38, !dbg !286

; <label>:38:                                     ; preds = %31, %10
  %39 = load i8*, i8** %3, align 8, !dbg !287
  store i8* %39, i8** %2, align 8, !dbg !288
  br label %40, !dbg !288

; <label>:40:                                     ; preds = %38, %30
  %41 = load i8*, i8** %2, align 8, !dbg !289
  ret i8* %41, !dbg !289
}

declare zeroext i1 @c_isbits(i32, i32) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "[inter]lib--dpkg--string.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "c_ctype_bit", file: !4, line: 32, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../lib/dpkg/c-ctype.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13}
!6 = !DIEnumerator(name: "C_CTYPE_BLANK", value: 1)
!7 = !DIEnumerator(name: "C_CTYPE_WHITE", value: 2)
!8 = !DIEnumerator(name: "C_CTYPE_SPACE", value: 4)
!9 = !DIEnumerator(name: "C_CTYPE_UPPER", value: 8)
!10 = !DIEnumerator(name: "C_CTYPE_LOWER", value: 16)
!11 = !DIEnumerator(name: "C_CTYPE_DIGIT", value: 32)
!12 = !DIEnumerator(name: "C_CTYPE_ALPHA", value: 24)
!13 = !DIEnumerator(name: "C_CTYPE_ALNUM", value: 56)
!14 = !{i32 2, !"Dwarf Version", i32 4}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!17 = distinct !DISubprogram(name: "str_concat", scope: !18, file: !18, line: 32, type: !19, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !23)
!18 = !DIFile(filename: "string.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!19 = !DISubroutineType(types: !20)
!20 = !{!21, !21, null}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!22 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!23 = !{}
!24 = !DILocalVariable(name: "dst", arg: 1, scope: !17, file: !18, line: 32, type: !21)
!25 = !DIExpression()
!26 = !DILocation(line: 32, column: 18, scope: !17)
!27 = !DILocalVariable(name: "args", scope: !17, file: !18, line: 34, type: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !29, line: 79, baseType: !30)
!29 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !31, line: 40, baseType: !32)
!31 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 34, baseType: !33)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 192, align: 64, elements: !42)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 34, size: 192, align: 64, elements: !35)
!35 = !{!36, !38, !39, !41}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !34, file: !1, line: 34, baseType: !37, size: 32, align: 32)
!37 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !34, file: !1, line: 34, baseType: !37, size: 32, align: 32, offset: 32)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !34, file: !1, line: 34, baseType: !40, size: 64, align: 64, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !34, file: !1, line: 34, baseType: !40, size: 64, align: 64, offset: 128)
!42 = !{!43}
!43 = !DISubrange(count: 1)
!44 = !DILocation(line: 34, column: 10, scope: !17)
!45 = !DILocalVariable(name: "src", scope: !17, file: !18, line: 35, type: !46)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!48 = !DILocation(line: 35, column: 14, scope: !17)
!49 = !DILocalVariable(name: "len", scope: !17, file: !18, line: 36, type: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !51, line: 216, baseType: !52)
!51 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!52 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!53 = !DILocation(line: 36, column: 9, scope: !17)
!54 = !DILocation(line: 38, column: 1, scope: !17)
!55 = !DILocation(line: 39, column: 2, scope: !17)
!56 = !DILocation(line: 39, column: 15, scope: !57)
!57 = !DILexicalBlockFile(scope: !17, file: !18, discriminator: 1)
!58 = !DILocation(line: 39, column: 15, scope: !59)
!59 = !DILexicalBlockFile(scope: !17, file: !18, discriminator: 2)
!60 = !DILocation(line: 39, column: 15, scope: !61)
!61 = !DILexicalBlockFile(scope: !17, file: !18, discriminator: 3)
!62 = !DILocation(line: 39, column: 15, scope: !63)
!63 = !DILexicalBlockFile(scope: !17, file: !18, discriminator: 4)
!64 = !DILocation(line: 39, column: 14, scope: !63)
!65 = !DILocation(line: 39, column: 2, scope: !63)
!66 = !DILocation(line: 40, column: 16, scope: !67)
!67 = distinct !DILexicalBlock(scope: !17, file: !18, line: 39, column: 44)
!68 = !DILocation(line: 40, column: 9, scope: !67)
!69 = !DILocation(line: 40, column: 7, scope: !67)
!70 = !DILocation(line: 41, column: 10, scope: !67)
!71 = !DILocation(line: 41, column: 15, scope: !67)
!72 = !DILocation(line: 41, column: 20, scope: !67)
!73 = !DILocation(line: 41, column: 3, scope: !67)
!74 = !DILocation(line: 42, column: 10, scope: !67)
!75 = !DILocation(line: 42, column: 7, scope: !67)
!76 = !DILocation(line: 39, column: 2, scope: !77)
!77 = !DILexicalBlockFile(scope: !17, file: !18, discriminator: 5)
!78 = distinct !{!78, !55}
!79 = !DILocation(line: 44, column: 1, scope: !17)
!80 = !DILocation(line: 45, column: 3, scope: !17)
!81 = !DILocation(line: 45, column: 7, scope: !17)
!82 = !DILocation(line: 47, column: 9, scope: !17)
!83 = !DILocation(line: 47, column: 2, scope: !17)
!84 = distinct !DISubprogram(name: "str_match_end", scope: !18, file: !18, line: 59, type: !85, isLocal: false, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !23)
!85 = !DISubroutineType(types: !86)
!86 = !{!87, !46, !46}
!87 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!88 = !DILocalVariable(name: "str", arg: 1, scope: !84, file: !18, line: 59, type: !46)
!89 = !DILocation(line: 59, column: 27, scope: !84)
!90 = !DILocalVariable(name: "end", arg: 2, scope: !84, file: !18, line: 59, type: !46)
!91 = !DILocation(line: 59, column: 44, scope: !84)
!92 = !DILocalVariable(name: "str_len", scope: !84, file: !18, line: 61, type: !50)
!93 = !DILocation(line: 61, column: 9, scope: !84)
!94 = !DILocation(line: 61, column: 26, scope: !84)
!95 = !DILocation(line: 61, column: 19, scope: !84)
!96 = !DILocalVariable(name: "end_len", scope: !84, file: !18, line: 62, type: !50)
!97 = !DILocation(line: 62, column: 9, scope: !84)
!98 = !DILocation(line: 62, column: 26, scope: !84)
!99 = !DILocation(line: 62, column: 19, scope: !84)
!100 = !DILocalVariable(name: "str_end", scope: !84, file: !18, line: 63, type: !46)
!101 = !DILocation(line: 63, column: 14, scope: !84)
!102 = !DILocation(line: 63, column: 24, scope: !84)
!103 = !DILocation(line: 63, column: 30, scope: !84)
!104 = !DILocation(line: 63, column: 28, scope: !84)
!105 = !DILocation(line: 63, column: 40, scope: !84)
!106 = !DILocation(line: 63, column: 38, scope: !84)
!107 = !DILocation(line: 65, column: 6, scope: !108)
!108 = distinct !DILexicalBlock(scope: !84, file: !18, line: 65, column: 6)
!109 = !DILocation(line: 65, column: 17, scope: !108)
!110 = !DILocation(line: 65, column: 14, scope: !108)
!111 = !DILocation(line: 65, column: 25, scope: !108)
!112 = !DILocation(line: 65, column: 35, scope: !113)
!113 = !DILexicalBlockFile(scope: !108, file: !18, discriminator: 1)
!114 = !DILocation(line: 65, column: 44, scope: !113)
!115 = !DILocation(line: 65, column: 28, scope: !113)
!116 = !DILocation(line: 65, column: 49, scope: !113)
!117 = !DILocation(line: 65, column: 6, scope: !113)
!118 = !DILocation(line: 66, column: 3, scope: !108)
!119 = !DILocation(line: 68, column: 3, scope: !108)
!120 = !DILocation(line: 69, column: 1, scope: !84)
!121 = distinct !DISubprogram(name: "str_fmt", scope: !18, file: !18, line: 80, type: !122, isLocal: false, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !23)
!122 = !DISubroutineType(types: !123)
!123 = !{!21, !46, null}
!124 = !DILocalVariable(name: "fmt", arg: 1, scope: !121, file: !18, line: 80, type: !46)
!125 = !DILocation(line: 80, column: 21, scope: !121)
!126 = !DILocalVariable(name: "args", scope: !121, file: !18, line: 82, type: !28)
!127 = !DILocation(line: 82, column: 10, scope: !121)
!128 = !DILocalVariable(name: "str", scope: !121, file: !18, line: 83, type: !21)
!129 = !DILocation(line: 83, column: 8, scope: !121)
!130 = !DILocation(line: 85, column: 1, scope: !121)
!131 = !DILocation(line: 86, column: 20, scope: !121)
!132 = !DILocation(line: 86, column: 25, scope: !121)
!133 = !DILocation(line: 86, column: 2, scope: !121)
!134 = !DILocation(line: 87, column: 1, scope: !121)
!135 = !DILocation(line: 89, column: 9, scope: !121)
!136 = !DILocation(line: 89, column: 2, scope: !121)
!137 = distinct !DISubprogram(name: "str_escape_fmt", scope: !18, file: !18, line: 102, type: !138, isLocal: false, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !23)
!138 = !DISubroutineType(types: !139)
!139 = !{!21, !21, !46, !50}
!140 = !DILocalVariable(name: "dst", arg: 1, scope: !137, file: !18, line: 102, type: !21)
!141 = !DILocation(line: 102, column: 22, scope: !137)
!142 = !DILocalVariable(name: "src", arg: 2, scope: !137, file: !18, line: 102, type: !46)
!143 = !DILocation(line: 102, column: 39, scope: !137)
!144 = !DILocalVariable(name: "n", arg: 3, scope: !137, file: !18, line: 102, type: !50)
!145 = !DILocation(line: 102, column: 51, scope: !137)
!146 = !DILocalVariable(name: "d", scope: !137, file: !18, line: 104, type: !21)
!147 = !DILocation(line: 104, column: 8, scope: !137)
!148 = !DILocation(line: 104, column: 12, scope: !137)
!149 = !DILocalVariable(name: "s", scope: !137, file: !18, line: 105, type: !46)
!150 = !DILocation(line: 105, column: 14, scope: !137)
!151 = !DILocation(line: 105, column: 18, scope: !137)
!152 = !DILocation(line: 107, column: 6, scope: !153)
!153 = distinct !DILexicalBlock(scope: !137, file: !18, line: 107, column: 6)
!154 = !DILocation(line: 107, column: 8, scope: !153)
!155 = !DILocation(line: 107, column: 6, scope: !137)
!156 = !DILocation(line: 108, column: 10, scope: !153)
!157 = !DILocation(line: 108, column: 3, scope: !153)
!158 = !DILocation(line: 110, column: 2, scope: !137)
!159 = !DILocation(line: 110, column: 10, scope: !160)
!160 = !DILexicalBlockFile(scope: !137, file: !18, discriminator: 1)
!161 = !DILocation(line: 110, column: 9, scope: !160)
!162 = !DILocation(line: 110, column: 2, scope: !160)
!163 = !DILocation(line: 111, column: 8, scope: !164)
!164 = distinct !DILexicalBlock(scope: !165, file: !18, line: 111, column: 7)
!165 = distinct !DILexicalBlock(scope: !137, file: !18, line: 110, column: 13)
!166 = !DILocation(line: 111, column: 7, scope: !164)
!167 = !DILocation(line: 111, column: 10, scope: !164)
!168 = !DILocation(line: 111, column: 7, scope: !165)
!169 = !DILocation(line: 112, column: 9, scope: !170)
!170 = distinct !DILexicalBlock(scope: !171, file: !18, line: 112, column: 8)
!171 = distinct !DILexicalBlock(scope: !164, file: !18, line: 111, column: 18)
!172 = !DILocation(line: 112, column: 12, scope: !170)
!173 = !DILocation(line: 112, column: 8, scope: !171)
!174 = !DILocation(line: 113, column: 5, scope: !170)
!175 = !DILocation(line: 114, column: 6, scope: !171)
!176 = !DILocation(line: 114, column: 9, scope: !171)
!177 = !DILocation(line: 115, column: 3, scope: !171)
!178 = !DILocation(line: 116, column: 8, scope: !179)
!179 = distinct !DILexicalBlock(scope: !165, file: !18, line: 116, column: 7)
!180 = !DILocation(line: 116, column: 11, scope: !179)
!181 = !DILocation(line: 116, column: 7, scope: !165)
!182 = !DILocation(line: 117, column: 4, scope: !179)
!183 = !DILocation(line: 118, column: 12, scope: !165)
!184 = !DILocation(line: 118, column: 10, scope: !165)
!185 = !DILocation(line: 118, column: 5, scope: !165)
!186 = !DILocation(line: 118, column: 8, scope: !165)
!187 = !DILocation(line: 110, column: 2, scope: !188)
!188 = !DILexicalBlockFile(scope: !137, file: !18, discriminator: 2)
!189 = distinct !{!189, !158}
!190 = !DILocation(line: 121, column: 3, scope: !137)
!191 = !DILocation(line: 121, column: 5, scope: !137)
!192 = !DILocation(line: 123, column: 9, scope: !137)
!193 = !DILocation(line: 123, column: 2, scope: !137)
!194 = !DILocation(line: 124, column: 1, scope: !137)
!195 = distinct !DISubprogram(name: "str_quote_meta", scope: !18, file: !18, line: 137, type: !196, isLocal: false, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !23)
!196 = !DISubroutineType(types: !197)
!197 = !{!21, !46}
!198 = !DILocalVariable(name: "src", arg: 1, scope: !195, file: !18, line: 137, type: !46)
!199 = !DILocation(line: 137, column: 28, scope: !195)
!200 = !DILocalVariable(name: "new_dst", scope: !195, file: !18, line: 139, type: !21)
!201 = !DILocation(line: 139, column: 8, scope: !195)
!202 = !DILocalVariable(name: "dst", scope: !195, file: !18, line: 139, type: !21)
!203 = !DILocation(line: 139, column: 18, scope: !195)
!204 = !DILocation(line: 141, column: 34, scope: !195)
!205 = !DILocation(line: 141, column: 27, scope: !195)
!206 = !DILocation(line: 141, column: 39, scope: !195)
!207 = !DILocation(line: 141, column: 18, scope: !208)
!208 = !DILexicalBlockFile(scope: !195, file: !18, discriminator: 1)
!209 = !DILocation(line: 141, column: 16, scope: !195)
!210 = !DILocation(line: 141, column: 10, scope: !195)
!211 = !DILocation(line: 143, column: 2, scope: !195)
!212 = !DILocation(line: 143, column: 10, scope: !208)
!213 = !DILocation(line: 143, column: 9, scope: !208)
!214 = !DILocation(line: 143, column: 2, scope: !208)
!215 = !DILocation(line: 144, column: 19, scope: !216)
!216 = distinct !DILexicalBlock(scope: !217, file: !18, line: 144, column: 7)
!217 = distinct !DILexicalBlock(scope: !195, file: !18, line: 143, column: 15)
!218 = !DILocation(line: 144, column: 18, scope: !216)
!219 = !DILocation(line: 144, column: 8, scope: !216)
!220 = !DILocation(line: 144, column: 24, scope: !216)
!221 = !DILocation(line: 144, column: 39, scope: !222)
!222 = !DILexicalBlockFile(scope: !216, file: !18, discriminator: 1)
!223 = !DILocation(line: 144, column: 38, scope: !222)
!224 = !DILocation(line: 144, column: 28, scope: !222)
!225 = !DILocation(line: 144, column: 7, scope: !222)
!226 = !DILocation(line: 145, column: 8, scope: !216)
!227 = !DILocation(line: 145, column: 11, scope: !216)
!228 = !DILocation(line: 145, column: 4, scope: !216)
!229 = !DILocation(line: 147, column: 16, scope: !217)
!230 = !DILocation(line: 147, column: 12, scope: !217)
!231 = !DILocation(line: 147, column: 7, scope: !217)
!232 = !DILocation(line: 147, column: 10, scope: !217)
!233 = !DILocation(line: 143, column: 2, scope: !234)
!234 = !DILexicalBlockFile(scope: !195, file: !18, discriminator: 2)
!235 = distinct !{!235, !211}
!236 = !DILocation(line: 150, column: 3, scope: !195)
!237 = !DILocation(line: 150, column: 7, scope: !195)
!238 = !DILocation(line: 152, column: 9, scope: !195)
!239 = !DILocation(line: 152, column: 2, scope: !195)
!240 = distinct !DISubprogram(name: "c_isdigit", scope: !4, file: !4, line: 78, type: !241, isLocal: true, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !23)
!241 = !DISubroutineType(types: !242)
!242 = !{!87, !243}
!243 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!244 = !DILocalVariable(name: "c", arg: 1, scope: !240, file: !4, line: 78, type: !243)
!245 = !DILocation(line: 78, column: 15, scope: !240)
!246 = !DILocation(line: 80, column: 18, scope: !240)
!247 = !DILocation(line: 80, column: 9, scope: !240)
!248 = !DILocation(line: 80, column: 2, scope: !240)
!249 = distinct !DISubprogram(name: "c_isalpha", scope: !4, file: !4, line: 105, type: !241, isLocal: true, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !23)
!250 = !DILocalVariable(name: "c", arg: 1, scope: !249, file: !4, line: 105, type: !243)
!251 = !DILocation(line: 105, column: 15, scope: !249)
!252 = !DILocation(line: 107, column: 18, scope: !249)
!253 = !DILocation(line: 107, column: 9, scope: !249)
!254 = !DILocation(line: 107, column: 2, scope: !249)
!255 = distinct !DISubprogram(name: "str_strip_quotes", scope: !18, file: !18, line: 163, type: !256, isLocal: false, isDefinition: true, scopeLine: 164, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !23)
!256 = !DISubroutineType(types: !257)
!257 = !{!21, !21}
!258 = !DILocalVariable(name: "str", arg: 1, scope: !255, file: !18, line: 163, type: !21)
!259 = !DILocation(line: 163, column: 24, scope: !255)
!260 = !DILocation(line: 165, column: 6, scope: !261)
!261 = distinct !DILexicalBlock(scope: !255, file: !18, line: 165, column: 6)
!262 = !DILocation(line: 165, column: 13, scope: !261)
!263 = !DILocation(line: 165, column: 20, scope: !261)
!264 = !DILocation(line: 165, column: 23, scope: !265)
!265 = !DILexicalBlockFile(scope: !261, file: !18, discriminator: 1)
!266 = !DILocation(line: 165, column: 30, scope: !265)
!267 = !DILocation(line: 165, column: 6, scope: !265)
!268 = !DILocalVariable(name: "str_len", scope: !269, file: !18, line: 166, type: !50)
!269 = distinct !DILexicalBlock(scope: !261, file: !18, line: 165, column: 39)
!270 = !DILocation(line: 166, column: 10, scope: !269)
!271 = !DILocation(line: 166, column: 27, scope: !269)
!272 = !DILocation(line: 166, column: 20, scope: !269)
!273 = !DILocation(line: 168, column: 7, scope: !274)
!274 = distinct !DILexicalBlock(scope: !269, file: !18, line: 168, column: 7)
!275 = !DILocation(line: 168, column: 21, scope: !274)
!276 = !DILocation(line: 168, column: 29, scope: !274)
!277 = !DILocation(line: 168, column: 17, scope: !274)
!278 = !DILocation(line: 168, column: 14, scope: !274)
!279 = !DILocation(line: 168, column: 7, scope: !269)
!280 = !DILocation(line: 169, column: 4, scope: !274)
!281 = !DILocation(line: 172, column: 7, scope: !269)
!282 = !DILocation(line: 172, column: 15, scope: !269)
!283 = !DILocation(line: 172, column: 3, scope: !269)
!284 = !DILocation(line: 172, column: 20, scope: !269)
!285 = !DILocation(line: 173, column: 6, scope: !269)
!286 = !DILocation(line: 174, column: 2, scope: !269)
!287 = !DILocation(line: 176, column: 9, scope: !255)
!288 = !DILocation(line: 176, column: 2, scope: !255)
!289 = !DILocation(line: 177, column: 1, scope: !255)
