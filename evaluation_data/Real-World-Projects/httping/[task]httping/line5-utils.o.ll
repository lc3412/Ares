; ModuleID = './line5-utils.o.i'
source_filename = "./line5-utils.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [20 x i8] c"gettimeofday failed\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%*.*f%s\00", align 1

; Function Attrs: nounwind uwtable
define double @get_ts() #0 !dbg !11 {
  %1 = alloca %struct.timeval, align 8
  %2 = alloca %struct.timezone, align 4
  call void @llvm.dbg.declare(metadata %struct.timeval* %1, metadata !15, metadata !25), !dbg !26
  call void @llvm.dbg.declare(metadata %struct.timezone* %2, metadata !27, metadata !25), !dbg !34
  %3 = call i32 @gettimeofday(%struct.timeval* %1, %struct.timezone* %2) #5, !dbg !35
  %4 = icmp eq i32 %3, -1, !dbg !37
  br i1 %4, label %5, label %7, !dbg !38

; <label>:5:                                      ; preds = %0
  %6 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0)) #5, !dbg !39
  call void (i8*, ...) @error_exit(i8* %6), !dbg !40
  br label %7, !dbg !42

; <label>:7:                                      ; preds = %5, %0
  %8 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0, !dbg !43
  %9 = load i64, i64* %8, align 8, !dbg !43
  %10 = sitofp i64 %9 to double, !dbg !44
  %11 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 1, !dbg !45
  %12 = load i64, i64* %11, align 8, !dbg !45
  %13 = sitofp i64 %12 to double, !dbg !46
  %14 = fdiv double %13, 1.000000e+06, !dbg !47
  %15 = fadd double %10, %14, !dbg !48
  %16 = getelementptr inbounds %struct.timezone, %struct.timezone* %2, i32 0, i32 0, !dbg !49
  %17 = load i32, i32* %16, align 4, !dbg !49
  %18 = mul nsw i32 %17, 60, !dbg !50
  %19 = sitofp i32 %18 to double, !dbg !51
  %20 = fadd double %15, %19, !dbg !52
  ret double %20, !dbg !53
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #2

declare void @error_exit(i8*, ...) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

; Function Attrs: nounwind uwtable
define void @split_string(i8*, i8*, i8***, i32*) #0 !dbg !54 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8***, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !61, metadata !25), !dbg !62
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !63, metadata !25), !dbg !64
  store i8*** %2, i8**** %7, align 8
  call void @llvm.dbg.declare(metadata i8**** %7, metadata !65, metadata !25), !dbg !66
  store i32* %3, i32** %8, align 8
  call void @llvm.dbg.declare(metadata i32** %8, metadata !67, metadata !25), !dbg !68
  call void @llvm.dbg.declare(metadata i8** %9, metadata !69, metadata !25), !dbg !70
  %13 = load i8*, i8** %5, align 8, !dbg !71
  %14 = call noalias i8* @strdup(i8* %13) #5, !dbg !72
  store i8* %14, i8** %9, align 8, !dbg !70
  call void @llvm.dbg.declare(metadata i8** %10, metadata !73, metadata !25), !dbg !74
  %15 = load i8*, i8** %9, align 8, !dbg !75
  store i8* %15, i8** %10, align 8, !dbg !74
  call void @llvm.dbg.declare(metadata i32* %11, metadata !76, metadata !25), !dbg !77
  %16 = load i8*, i8** %6, align 8, !dbg !78
  %17 = call i64 @strlen(i8* %16) #8, !dbg !79
  %18 = trunc i64 %17 to i32, !dbg !79
  store i32 %18, i32* %11, align 4, !dbg !77
  br label %19, !dbg !80

; <label>:19:                                     ; preds = %53, %4
  call void @llvm.dbg.declare(metadata i8** %12, metadata !81, metadata !25), !dbg !85
  %20 = load i8*, i8** %10, align 8, !dbg !86
  %21 = load i8*, i8** %6, align 8, !dbg !87
  %22 = call i8* @strstr(i8* %20, i8* %21) #8, !dbg !88
  store i8* %22, i8** %12, align 8, !dbg !85
  %23 = load i8*, i8** %12, align 8, !dbg !89
  %24 = icmp ne i8* %23, null, !dbg !89
  br i1 %24, label %25, label %27, !dbg !91

; <label>:25:                                     ; preds = %19
  %26 = load i8*, i8** %12, align 8, !dbg !92
  store i8 0, i8* %26, align 1, !dbg !93
  br label %27, !dbg !94

; <label>:27:                                     ; preds = %25, %19
  %28 = load i8***, i8**** %7, align 8, !dbg !95
  %29 = load i8**, i8*** %28, align 8, !dbg !96
  %30 = bitcast i8** %29 to i8*, !dbg !96
  %31 = load i32*, i32** %8, align 8, !dbg !97
  %32 = load i32, i32* %31, align 4, !dbg !98
  %33 = add nsw i32 %32, 1, !dbg !99
  %34 = sext i32 %33 to i64, !dbg !100
  %35 = mul i64 %34, 8, !dbg !101
  %36 = call i8* @realloc(i8* %30, i64 %35) #5, !dbg !102
  %37 = bitcast i8* %36 to i8**, !dbg !103
  %38 = load i8***, i8**** %7, align 8, !dbg !104
  store i8** %37, i8*** %38, align 8, !dbg !105
  %39 = load i8*, i8** %10, align 8, !dbg !106
  %40 = call noalias i8* @strdup(i8* %39) #5, !dbg !107
  %41 = load i32*, i32** %8, align 8, !dbg !108
  %42 = load i32, i32* %41, align 4, !dbg !109
  %43 = sext i32 %42 to i64, !dbg !110
  %44 = load i8***, i8**** %7, align 8, !dbg !111
  %45 = load i8**, i8*** %44, align 8, !dbg !112
  %46 = getelementptr inbounds i8*, i8** %45, i64 %43, !dbg !110
  store i8* %40, i8** %46, align 8, !dbg !113
  %47 = load i32*, i32** %8, align 8, !dbg !114
  %48 = load i32, i32* %47, align 4, !dbg !115
  %49 = add nsw i32 %48, 1, !dbg !115
  store i32 %49, i32* %47, align 4, !dbg !115
  %50 = load i8*, i8** %12, align 8, !dbg !116
  %51 = icmp ne i8* %50, null, !dbg !116
  br i1 %51, label %53, label %52, !dbg !118

; <label>:52:                                     ; preds = %27
  br label %58, !dbg !119

; <label>:53:                                     ; preds = %27
  %54 = load i8*, i8** %12, align 8, !dbg !120
  %55 = load i32, i32* %11, align 4, !dbg !121
  %56 = sext i32 %55 to i64, !dbg !122
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !122
  store i8* %57, i8** %10, align 8, !dbg !123
  br label %19, !dbg !124, !llvm.loop !126

; <label>:58:                                     ; preds = %52
  %59 = load i8*, i8** %9, align 8, !dbg !127
  call void @free(i8* %59) #5, !dbg !128
  ret void, !dbg !129
}

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #4

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #2

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @free_splitted_string(i8**, i32) #0 !dbg !130 {
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !133, metadata !25), !dbg !134
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !135, metadata !25), !dbg !136
  call void @llvm.dbg.declare(metadata i32* %5, metadata !137, metadata !25), !dbg !138
  store i32 0, i32* %5, align 4, !dbg !138
  store i32 0, i32* %5, align 4, !dbg !139
  br label %6, !dbg !141

; <label>:6:                                      ; preds = %16, %2
  %7 = load i32, i32* %5, align 4, !dbg !142
  %8 = load i32, i32* %4, align 4, !dbg !145
  %9 = icmp slt i32 %7, %8, !dbg !146
  br i1 %9, label %10, label %19, !dbg !147

; <label>:10:                                     ; preds = %6
  %11 = load i32, i32* %5, align 4, !dbg !148
  %12 = sext i32 %11 to i64, !dbg !149
  %13 = load i8**, i8*** %3, align 8, !dbg !149
  %14 = getelementptr inbounds i8*, i8** %13, i64 %12, !dbg !149
  %15 = load i8*, i8** %14, align 8, !dbg !149
  call void @free(i8* %15) #5, !dbg !150
  br label %16, !dbg !150

; <label>:16:                                     ; preds = %10
  %17 = load i32, i32* %5, align 4, !dbg !151
  %18 = add nsw i32 %17, 1, !dbg !151
  store i32 %18, i32* %5, align 4, !dbg !151
  br label %6, !dbg !153, !llvm.loop !154

; <label>:19:                                     ; preds = %6
  %20 = load i8**, i8*** %3, align 8, !dbg !156
  %21 = bitcast i8** %20 to i8*, !dbg !156
  call void @free(i8* %21) #5, !dbg !157
  ret void, !dbg !158
}

; Function Attrs: nounwind uwtable
define void @str_add(i8**, i8*, ...) #0 !dbg !159 {
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !162, metadata !25), !dbg !163
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !164, metadata !25), !dbg !165
  call void @llvm.dbg.declare(metadata i32* %5, metadata !166, metadata !25), !dbg !167
  %9 = load i8**, i8*** %3, align 8, !dbg !168
  %10 = load i8*, i8** %9, align 8, !dbg !169
  %11 = icmp ne i8* %10, null, !dbg !169
  br i1 %11, label %12, label %16, !dbg !169

; <label>:12:                                     ; preds = %2
  %13 = load i8**, i8*** %3, align 8, !dbg !170
  %14 = load i8*, i8** %13, align 8, !dbg !172
  %15 = call i64 @strlen(i8* %14) #8, !dbg !173
  br label %17, !dbg !174

; <label>:16:                                     ; preds = %2
  br label %17, !dbg !175

; <label>:17:                                     ; preds = %16, %12
  %18 = phi i64 [ %15, %12 ], [ 0, %16 ], !dbg !177
  %19 = trunc i64 %18 to i32, !dbg !177
  store i32 %19, i32* %5, align 4, !dbg !179
  call void @llvm.dbg.declare(metadata i8** %6, metadata !180, metadata !25), !dbg !181
  store i8* null, i8** %6, align 8, !dbg !181
  call void @llvm.dbg.declare(metadata i32* %7, metadata !182, metadata !25), !dbg !183
  store i32 0, i32* %7, align 4, !dbg !183
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %8, metadata !184, metadata !25), !dbg !200
  %20 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i32 0, i32 0, !dbg !201
  %21 = bitcast %struct.__va_list_tag* %20 to i8*, !dbg !201
  call void @llvm.va_start(i8* %21), !dbg !201
  %22 = load i8*, i8** %4, align 8, !dbg !202
  %23 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i32 0, i32 0, !dbg !203
  %24 = call i32 @vasprintf(i8** %6, i8* %22, %struct.__va_list_tag* %23) #5, !dbg !204
  store i32 %24, i32* %7, align 4, !dbg !205
  %25 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i32 0, i32 0, !dbg !206
  %26 = bitcast %struct.__va_list_tag* %25 to i8*, !dbg !206
  call void @llvm.va_end(i8* %26), !dbg !206
  %27 = load i8**, i8*** %3, align 8, !dbg !207
  %28 = load i8*, i8** %27, align 8, !dbg !208
  %29 = load i32, i32* %5, align 4, !dbg !209
  %30 = load i32, i32* %7, align 4, !dbg !210
  %31 = add nsw i32 %29, %30, !dbg !211
  %32 = add nsw i32 %31, 1, !dbg !212
  %33 = sext i32 %32 to i64, !dbg !209
  %34 = call i8* @realloc(i8* %28, i64 %33) #5, !dbg !213
  %35 = load i8**, i8*** %3, align 8, !dbg !214
  store i8* %34, i8** %35, align 8, !dbg !215
  %36 = load i32, i32* %5, align 4, !dbg !216
  %37 = sext i32 %36 to i64, !dbg !217
  %38 = load i8**, i8*** %3, align 8, !dbg !218
  %39 = load i8*, i8** %38, align 8, !dbg !219
  %40 = getelementptr inbounds i8, i8* %39, i64 %37, !dbg !217
  %41 = load i8*, i8** %6, align 8, !dbg !220
  %42 = load i32, i32* %7, align 4, !dbg !221
  %43 = sext i32 %42 to i64, !dbg !221
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 %43, i32 1, i1 false), !dbg !222
  %44 = load i32, i32* %5, align 4, !dbg !223
  %45 = load i32, i32* %7, align 4, !dbg !224
  %46 = add nsw i32 %44, %45, !dbg !225
  %47 = sext i32 %46 to i64, !dbg !226
  %48 = load i8**, i8*** %3, align 8, !dbg !227
  %49 = load i8*, i8** %48, align 8, !dbg !228
  %50 = getelementptr inbounds i8, i8* %49, i64 %47, !dbg !226
  store i8 0, i8* %50, align 1, !dbg !229
  %51 = load i8*, i8** %6, align 8, !dbg !230
  call void @free(i8* %51) #5, !dbg !231
  ret void, !dbg !232
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

; Function Attrs: nounwind
declare i32 @vasprintf(i8**, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: nounwind uwtable
define i8* @format_value(double, i32, i32, i8 signext) #0 !dbg !233 {
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !236, metadata !25), !dbg !237
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !238, metadata !25), !dbg !239
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !240, metadata !25), !dbg !241
  store i8 %3, i8* %8, align 1
  call void @llvm.dbg.declare(metadata i8* %8, metadata !242, metadata !25), !dbg !243
  call void @llvm.dbg.declare(metadata i8** %9, metadata !244, metadata !25), !dbg !245
  store i8* null, i8** %9, align 8, !dbg !245
  call void @llvm.dbg.declare(metadata i8** %10, metadata !246, metadata !25), !dbg !247
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8** %10, align 8, !dbg !247
  call void @llvm.dbg.declare(metadata double* %11, metadata !248, metadata !25), !dbg !249
  %13 = load double, double* %5, align 8, !dbg !250
  %14 = call double @fabs(double %13) #1, !dbg !251
  store double %14, double* %11, align 8, !dbg !249
  call void @llvm.dbg.declare(metadata double* %12, metadata !252, metadata !25), !dbg !253
  store double 1.000000e+00, double* %12, align 8, !dbg !253
  %15 = load i8, i8* %8, align 1, !dbg !254
  %16 = icmp ne i8 %15, 0, !dbg !254
  br i1 %16, label %18, label %17, !dbg !256

; <label>:17:                                     ; preds = %4
  br label %33, !dbg !257

; <label>:18:                                     ; preds = %4
  %19 = load double, double* %11, align 8, !dbg !259
  %20 = fcmp oge double %19, 1.000000e+09, !dbg !261
  br i1 %20, label %21, label %22, !dbg !262

; <label>:21:                                     ; preds = %18
  store double 1.000000e+09, double* %12, align 8, !dbg !263
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8** %10, align 8, !dbg !265
  br label %32, !dbg !266

; <label>:22:                                     ; preds = %18
  %23 = load double, double* %11, align 8, !dbg !267
  %24 = fcmp oge double %23, 1.000000e+06, !dbg !269
  br i1 %24, label %25, label %26, !dbg !270

; <label>:25:                                     ; preds = %22
  store double 1.000000e+06, double* %12, align 8, !dbg !271
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8** %10, align 8, !dbg !273
  br label %31, !dbg !274

; <label>:26:                                     ; preds = %22
  %27 = load double, double* %11, align 8, !dbg !275
  %28 = fcmp oge double %27, 1.000000e+03, !dbg !277
  br i1 %28, label %29, label %30, !dbg !278

; <label>:29:                                     ; preds = %26
  store double 1.000000e+03, double* %12, align 8, !dbg !279
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8** %10, align 8, !dbg !281
  br label %30, !dbg !282

; <label>:30:                                     ; preds = %29, %26
  br label %31

; <label>:31:                                     ; preds = %30, %25
  br label %32

; <label>:32:                                     ; preds = %31, %21
  br label %33

; <label>:33:                                     ; preds = %32, %17
  %34 = load i8*, i8** %10, align 8, !dbg !283
  %35 = getelementptr inbounds i8, i8* %34, i64 0, !dbg !283
  %36 = load i8, i8* %35, align 1, !dbg !283
  %37 = icmp ne i8 %36, 0, !dbg !283
  br i1 %37, label %38, label %41, !dbg !285

; <label>:38:                                     ; preds = %33
  %39 = load i32, i32* %6, align 4, !dbg !286
  %40 = add nsw i32 %39, -1, !dbg !286
  store i32 %40, i32* %6, align 4, !dbg !286
  br label %41, !dbg !287

; <label>:41:                                     ; preds = %38, %33
  %42 = load i32, i32* %6, align 4, !dbg !288
  %43 = load i32, i32* %7, align 4, !dbg !289
  %44 = load double, double* %5, align 8, !dbg !290
  %45 = load double, double* %12, align 8, !dbg !291
  %46 = fdiv double %44, %45, !dbg !292
  %47 = load i8*, i8** %10, align 8, !dbg !293
  %48 = call i32 (i8**, i8*, ...) @asprintf(i8** %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 %42, i32 %43, double %46, i8* %47) #5, !dbg !294
  %49 = load i8*, i8** %9, align 8, !dbg !295
  ret i8* %49, !dbg !296
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #7

; Function Attrs: nounwind
declare i32 @asprintf(i8**, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @myusleep(i32) #0 !dbg !297 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !303, metadata !25), !dbg !304
  call void @llvm.dbg.declare(metadata i32* %3, metadata !305, metadata !25), !dbg !306
  %4 = load i32, i32* %2, align 4, !dbg !307
  %5 = udiv i32 %4, 1000000, !dbg !308
  store i32 %5, i32* %3, align 4, !dbg !306
  %6 = load i32, i32* %3, align 4, !dbg !309
  %7 = icmp ne i32 %6, 0, !dbg !309
  br i1 %7, label %8, label %11, !dbg !311

; <label>:8:                                      ; preds = %1
  %9 = load i32, i32* %3, align 4, !dbg !312
  %10 = call i32 @sleep(i32 %9), !dbg !313
  br label %11, !dbg !313

; <label>:11:                                     ; preds = %8, %1
  %12 = load i32, i32* %2, align 4, !dbg !314
  %13 = urem i32 %12, 1000000, !dbg !314
  store i32 %13, i32* %2, align 4, !dbg !314
  %14 = load i32, i32* %2, align 4, !dbg !315
  %15 = icmp ne i32 %14, 0, !dbg !315
  br i1 %15, label %16, label %19, !dbg !317

; <label>:16:                                     ; preds = %11
  %17 = load i32, i32* %2, align 4, !dbg !318
  %18 = call i32 @usleep(i32 %17), !dbg !319
  br label %19, !dbg !319

; <label>:19:                                     ; preds = %16, %11
  ret void, !dbg !320
}

declare i32 @sleep(i32) #3

declare i32 @usleep(i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "line5-utils.o.i", directory: "/home/lichi/Desktop/httping/task1")
!2 = !{}
!3 = !{!4, !5, !6}
!4 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!7 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!8 = !{i32 2, !"Dwarf Version", i32 4}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!11 = distinct !DISubprogram(name: "get_ts", scope: !12, file: !12, line: 18, type: !13, isLocal: false, isDefinition: true, scopeLine: 19, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!12 = !DIFile(filename: "utils.c", directory: "/home/lichi/Desktop/httping/task1")
!13 = !DISubroutineType(types: !14)
!14 = !{!4}
!15 = !DILocalVariable(name: "ts", scope: !11, file: !12, line: 20, type: !16)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !17, line: 30, size: 128, align: 64, elements: !18)
!17 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/httping/task1")
!18 = !{!19, !23}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !16, file: !17, line: 32, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !21, line: 139, baseType: !22)
!21 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/httping/task1")
!22 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !16, file: !17, line: 33, baseType: !24, size: 64, align: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !21, line: 141, baseType: !22)
!25 = !DIExpression()
!26 = !DILocation(line: 20, column: 17, scope: !11)
!27 = !DILocalVariable(name: "tz", scope: !11, file: !12, line: 21, type: !28)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timezone", file: !29, line: 55, size: 64, align: 32, elements: !30)
!29 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/time.h", directory: "/home/lichi/Desktop/httping/task1")
!30 = !{!31, !33}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "tz_minuteswest", scope: !28, file: !29, line: 57, baseType: !32, size: 32, align: 32)
!32 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "tz_dsttime", scope: !28, file: !29, line: 58, baseType: !32, size: 32, align: 32, offset: 32)
!34 = !DILocation(line: 21, column: 25, scope: !11)
!35 = !DILocation(line: 23, column: 6, scope: !36)
!36 = distinct !DILexicalBlock(scope: !11, file: !12, line: 23, column: 6)
!37 = !DILocation(line: 23, column: 29, scope: !36)
!38 = !DILocation(line: 23, column: 6, scope: !11)
!39 = !DILocation(line: 24, column: 14, scope: !36)
!40 = !DILocation(line: 24, column: 3, scope: !41)
!41 = !DILexicalBlockFile(scope: !36, file: !12, discriminator: 1)
!42 = !DILocation(line: 24, column: 3, scope: !36)
!43 = !DILocation(line: 26, column: 20, scope: !11)
!44 = !DILocation(line: 26, column: 9, scope: !11)
!45 = !DILocation(line: 26, column: 41, scope: !11)
!46 = !DILocation(line: 26, column: 30, scope: !11)
!47 = !DILocation(line: 26, column: 49, scope: !11)
!48 = !DILocation(line: 26, column: 27, scope: !11)
!49 = !DILocation(line: 26, column: 74, scope: !11)
!50 = !DILocation(line: 26, column: 89, scope: !11)
!51 = !DILocation(line: 26, column: 62, scope: !11)
!52 = !DILocation(line: 26, column: 60, scope: !11)
!53 = !DILocation(line: 26, column: 2, scope: !11)
!54 = distinct !DISubprogram(name: "split_string", scope: !12, file: !12, line: 29, type: !55, isLocal: false, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!55 = !DISubroutineType(types: !56)
!56 = !{null, !57, !57, !59, !60}
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!61 = !DILocalVariable(name: "in", arg: 1, scope: !54, file: !12, line: 29, type: !57)
!62 = !DILocation(line: 29, column: 31, scope: !54)
!63 = !DILocalVariable(name: "split", arg: 2, scope: !54, file: !12, line: 29, type: !57)
!64 = !DILocation(line: 29, column: 47, scope: !54)
!65 = !DILocalVariable(name: "list", arg: 3, scope: !54, file: !12, line: 29, type: !59)
!66 = !DILocation(line: 29, column: 62, scope: !54)
!67 = !DILocalVariable(name: "list_n", arg: 4, scope: !54, file: !12, line: 29, type: !60)
!68 = !DILocation(line: 29, column: 73, scope: !54)
!69 = !DILocalVariable(name: "copy", scope: !54, file: !12, line: 31, type: !6)
!70 = !DILocation(line: 31, column: 8, scope: !54)
!71 = !DILocation(line: 31, column: 22, scope: !54)
!72 = !DILocation(line: 31, column: 15, scope: !54)
!73 = !DILocalVariable(name: "pc", scope: !54, file: !12, line: 31, type: !6)
!74 = !DILocation(line: 31, column: 28, scope: !54)
!75 = !DILocation(line: 31, column: 33, scope: !54)
!76 = !DILocalVariable(name: "split_len", scope: !54, file: !12, line: 32, type: !32)
!77 = !DILocation(line: 32, column: 6, scope: !54)
!78 = !DILocation(line: 32, column: 25, scope: !54)
!79 = !DILocation(line: 32, column: 18, scope: !54)
!80 = !DILocation(line: 34, column: 2, scope: !54)
!81 = !DILocalVariable(name: "term", scope: !82, file: !12, line: 36, type: !6)
!82 = distinct !DILexicalBlock(scope: !83, file: !12, line: 35, column: 2)
!83 = distinct !DILexicalBlock(scope: !84, file: !12, line: 34, column: 2)
!84 = distinct !DILexicalBlock(scope: !54, file: !12, line: 34, column: 2)
!85 = !DILocation(line: 36, column: 9, scope: !82)
!86 = !DILocation(line: 36, column: 23, scope: !82)
!87 = !DILocation(line: 36, column: 27, scope: !82)
!88 = !DILocation(line: 36, column: 16, scope: !82)
!89 = !DILocation(line: 38, column: 7, scope: !90)
!90 = distinct !DILexicalBlock(scope: !82, file: !12, line: 38, column: 7)
!91 = !DILocation(line: 38, column: 7, scope: !82)
!92 = !DILocation(line: 39, column: 5, scope: !90)
!93 = !DILocation(line: 39, column: 10, scope: !90)
!94 = !DILocation(line: 39, column: 4, scope: !90)
!95 = !DILocation(line: 41, column: 29, scope: !82)
!96 = !DILocation(line: 41, column: 28, scope: !82)
!97 = !DILocation(line: 41, column: 37, scope: !82)
!98 = !DILocation(line: 41, column: 36, scope: !82)
!99 = !DILocation(line: 41, column: 44, scope: !82)
!100 = !DILocation(line: 41, column: 35, scope: !82)
!101 = !DILocation(line: 41, column: 49, scope: !82)
!102 = !DILocation(line: 41, column: 20, scope: !82)
!103 = !DILocation(line: 41, column: 11, scope: !82)
!104 = !DILocation(line: 41, column: 4, scope: !82)
!105 = !DILocation(line: 41, column: 9, scope: !82)
!106 = !DILocation(line: 42, column: 29, scope: !82)
!107 = !DILocation(line: 42, column: 22, scope: !82)
!108 = !DILocation(line: 42, column: 12, scope: !82)
!109 = !DILocation(line: 42, column: 11, scope: !82)
!110 = !DILocation(line: 42, column: 3, scope: !82)
!111 = !DILocation(line: 42, column: 5, scope: !82)
!112 = !DILocation(line: 42, column: 4, scope: !82)
!113 = !DILocation(line: 42, column: 20, scope: !82)
!114 = !DILocation(line: 43, column: 5, scope: !82)
!115 = !DILocation(line: 43, column: 12, scope: !82)
!116 = !DILocation(line: 45, column: 8, scope: !117)
!117 = distinct !DILexicalBlock(scope: !82, file: !12, line: 45, column: 7)
!118 = !DILocation(line: 45, column: 7, scope: !82)
!119 = !DILocation(line: 46, column: 4, scope: !117)
!120 = !DILocation(line: 48, column: 8, scope: !82)
!121 = !DILocation(line: 48, column: 15, scope: !82)
!122 = !DILocation(line: 48, column: 13, scope: !82)
!123 = !DILocation(line: 48, column: 6, scope: !82)
!124 = !DILocation(line: 34, column: 2, scope: !125)
!125 = !DILexicalBlockFile(scope: !83, file: !12, discriminator: 1)
!126 = distinct !{!126, !80}
!127 = !DILocation(line: 51, column: 7, scope: !54)
!128 = !DILocation(line: 51, column: 2, scope: !54)
!129 = !DILocation(line: 52, column: 1, scope: !54)
!130 = distinct !DISubprogram(name: "free_splitted_string", scope: !12, file: !12, line: 54, type: !131, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!131 = !DISubroutineType(types: !132)
!132 = !{null, !5, !32}
!133 = !DILocalVariable(name: "list", arg: 1, scope: !130, file: !12, line: 54, type: !5)
!134 = !DILocation(line: 54, column: 34, scope: !130)
!135 = !DILocalVariable(name: "n", arg: 2, scope: !130, file: !12, line: 54, type: !32)
!136 = !DILocation(line: 54, column: 44, scope: !130)
!137 = !DILocalVariable(name: "index", scope: !130, file: !12, line: 56, type: !32)
!138 = !DILocation(line: 56, column: 6, scope: !130)
!139 = !DILocation(line: 58, column: 11, scope: !140)
!140 = distinct !DILexicalBlock(scope: !130, file: !12, line: 58, column: 2)
!141 = !DILocation(line: 58, column: 6, scope: !140)
!142 = !DILocation(line: 58, column: 15, scope: !143)
!143 = !DILexicalBlockFile(scope: !144, file: !12, discriminator: 1)
!144 = distinct !DILexicalBlock(scope: !140, file: !12, line: 58, column: 2)
!145 = !DILocation(line: 58, column: 21, scope: !143)
!146 = !DILocation(line: 58, column: 20, scope: !143)
!147 = !DILocation(line: 58, column: 2, scope: !143)
!148 = !DILocation(line: 59, column: 13, scope: !144)
!149 = !DILocation(line: 59, column: 8, scope: !144)
!150 = !DILocation(line: 59, column: 3, scope: !144)
!151 = !DILocation(line: 58, column: 29, scope: !152)
!152 = !DILexicalBlockFile(scope: !144, file: !12, discriminator: 2)
!153 = !DILocation(line: 58, column: 2, scope: !152)
!154 = distinct !{!154, !155}
!155 = !DILocation(line: 58, column: 2, scope: !130)
!156 = !DILocation(line: 61, column: 7, scope: !130)
!157 = !DILocation(line: 61, column: 2, scope: !130)
!158 = !DILocation(line: 62, column: 1, scope: !130)
!159 = distinct !DISubprogram(name: "str_add", scope: !12, file: !12, line: 64, type: !160, isLocal: false, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!160 = !DISubroutineType(types: !161)
!161 = !{null, !5, !57, null}
!162 = !DILocalVariable(name: "to", arg: 1, scope: !159, file: !12, line: 64, type: !5)
!163 = !DILocation(line: 64, column: 21, scope: !159)
!164 = !DILocalVariable(name: "what", arg: 2, scope: !159, file: !12, line: 64, type: !57)
!165 = !DILocation(line: 64, column: 37, scope: !159)
!166 = !DILocalVariable(name: "len_to", scope: !159, file: !12, line: 66, type: !32)
!167 = !DILocation(line: 66, column: 6, scope: !159)
!168 = !DILocation(line: 66, column: 16, scope: !159)
!169 = !DILocation(line: 66, column: 15, scope: !159)
!170 = !DILocation(line: 66, column: 29, scope: !171)
!171 = !DILexicalBlockFile(scope: !159, file: !12, discriminator: 1)
!172 = !DILocation(line: 66, column: 28, scope: !171)
!173 = !DILocation(line: 66, column: 21, scope: !171)
!174 = !DILocation(line: 66, column: 15, scope: !171)
!175 = !DILocation(line: 66, column: 15, scope: !176)
!176 = !DILexicalBlockFile(scope: !159, file: !12, discriminator: 2)
!177 = !DILocation(line: 66, column: 15, scope: !178)
!178 = !DILexicalBlockFile(scope: !159, file: !12, discriminator: 3)
!179 = !DILocation(line: 66, column: 6, scope: !178)
!180 = !DILocalVariable(name: "buffer", scope: !159, file: !12, line: 67, type: !6)
!181 = !DILocation(line: 67, column: 8, scope: !159)
!182 = !DILocalVariable(name: "len_what", scope: !159, file: !12, line: 68, type: !32)
!183 = !DILocation(line: 68, column: 6, scope: !159)
!184 = !DILocalVariable(name: "ap", scope: !159, file: !12, line: 70, type: !185)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !186, line: 98, baseType: !187)
!186 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/httping/task1")
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !186, line: 40, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 70, baseType: !189)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 192, align: 64, elements: !198)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 70, size: 192, align: 64, elements: !191)
!191 = !{!192, !194, !195, !197}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !190, file: !1, line: 70, baseType: !193, size: 32, align: 32)
!193 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !190, file: !1, line: 70, baseType: !193, size: 32, align: 32, offset: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !190, file: !1, line: 70, baseType: !196, size: 64, align: 64, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !190, file: !1, line: 70, baseType: !196, size: 64, align: 64, offset: 128)
!198 = !{!199}
!199 = !DISubrange(count: 1)
!200 = !DILocation(line: 70, column: 17, scope: !159)
!201 = !DILocation(line: 73, column: 8, scope: !159)
!202 = !DILocation(line: 74, column: 39, scope: !159)
!203 = !DILocation(line: 74, column: 45, scope: !159)
!204 = !DILocation(line: 74, column: 20, scope: !159)
!205 = !DILocation(line: 74, column: 18, scope: !159)
!206 = !DILocation(line: 75, column: 8, scope: !159)
!207 = !DILocation(line: 77, column: 25, scope: !159)
!208 = !DILocation(line: 77, column: 24, scope: !159)
!209 = !DILocation(line: 77, column: 29, scope: !159)
!210 = !DILocation(line: 77, column: 38, scope: !159)
!211 = !DILocation(line: 77, column: 36, scope: !159)
!212 = !DILocation(line: 77, column: 47, scope: !159)
!213 = !DILocation(line: 77, column: 16, scope: !159)
!214 = !DILocation(line: 77, column: 3, scope: !159)
!215 = !DILocation(line: 77, column: 6, scope: !159)
!216 = !DILocation(line: 79, column: 16, scope: !159)
!217 = !DILocation(line: 79, column: 10, scope: !159)
!218 = !DILocation(line: 79, column: 12, scope: !159)
!219 = !DILocation(line: 79, column: 11, scope: !159)
!220 = !DILocation(line: 79, column: 25, scope: !159)
!221 = !DILocation(line: 79, column: 33, scope: !159)
!222 = !DILocation(line: 79, column: 2, scope: !159)
!223 = !DILocation(line: 81, column: 8, scope: !159)
!224 = !DILocation(line: 81, column: 17, scope: !159)
!225 = !DILocation(line: 81, column: 15, scope: !159)
!226 = !DILocation(line: 81, column: 2, scope: !159)
!227 = !DILocation(line: 81, column: 4, scope: !159)
!228 = !DILocation(line: 81, column: 3, scope: !159)
!229 = !DILocation(line: 81, column: 27, scope: !159)
!230 = !DILocation(line: 83, column: 7, scope: !159)
!231 = !DILocation(line: 83, column: 2, scope: !159)
!232 = !DILocation(line: 84, column: 1, scope: !159)
!233 = distinct !DISubprogram(name: "format_value", scope: !12, file: !12, line: 86, type: !234, isLocal: false, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!234 = !DISubroutineType(types: !235)
!235 = !{!6, !4, !32, !32, !7}
!236 = !DILocalVariable(name: "value", arg: 1, scope: !233, file: !12, line: 86, type: !4)
!237 = !DILocation(line: 86, column: 28, scope: !233)
!238 = !DILocalVariable(name: "digits_sig", arg: 2, scope: !233, file: !12, line: 86, type: !32)
!239 = !DILocation(line: 86, column: 39, scope: !233)
!240 = !DILocalVariable(name: "digits_nsig", arg: 3, scope: !233, file: !12, line: 86, type: !32)
!241 = !DILocation(line: 86, column: 55, scope: !233)
!242 = !DILocalVariable(name: "abbreviate", arg: 4, scope: !233, file: !12, line: 86, type: !7)
!243 = !DILocation(line: 86, column: 73, scope: !233)
!244 = !DILocalVariable(name: "out", scope: !233, file: !12, line: 88, type: !6)
!245 = !DILocation(line: 88, column: 8, scope: !233)
!246 = !DILocalVariable(name: "mul", scope: !233, file: !12, line: 88, type: !6)
!247 = !DILocation(line: 88, column: 20, scope: !233)
!248 = !DILocalVariable(name: "a", scope: !233, file: !12, line: 89, type: !4)
!249 = !DILocation(line: 89, column: 9, scope: !233)
!250 = !DILocation(line: 89, column: 18, scope: !233)
!251 = !DILocation(line: 89, column: 13, scope: !233)
!252 = !DILocalVariable(name: "div", scope: !233, file: !12, line: 90, type: !4)
!253 = !DILocation(line: 90, column: 9, scope: !233)
!254 = !DILocation(line: 92, column: 7, scope: !255)
!255 = distinct !DILexicalBlock(scope: !233, file: !12, line: 92, column: 6)
!256 = !DILocation(line: 92, column: 6, scope: !233)
!257 = !DILocation(line: 94, column: 2, scope: !258)
!258 = distinct !DILexicalBlock(scope: !255, file: !12, line: 93, column: 2)
!259 = !DILocation(line: 95, column: 11, scope: !260)
!260 = distinct !DILexicalBlock(scope: !255, file: !12, line: 95, column: 11)
!261 = !DILocation(line: 95, column: 13, scope: !260)
!262 = !DILocation(line: 95, column: 11, scope: !255)
!263 = !DILocation(line: 97, column: 7, scope: !264)
!264 = distinct !DILexicalBlock(scope: !260, file: !12, line: 96, column: 2)
!265 = !DILocation(line: 98, column: 7, scope: !264)
!266 = !DILocation(line: 99, column: 2, scope: !264)
!267 = !DILocation(line: 100, column: 11, scope: !268)
!268 = distinct !DILexicalBlock(scope: !260, file: !12, line: 100, column: 11)
!269 = !DILocation(line: 100, column: 13, scope: !268)
!270 = !DILocation(line: 100, column: 11, scope: !260)
!271 = !DILocation(line: 102, column: 7, scope: !272)
!272 = distinct !DILexicalBlock(scope: !268, file: !12, line: 101, column: 2)
!273 = !DILocation(line: 103, column: 7, scope: !272)
!274 = !DILocation(line: 104, column: 2, scope: !272)
!275 = !DILocation(line: 105, column: 11, scope: !276)
!276 = distinct !DILexicalBlock(scope: !268, file: !12, line: 105, column: 11)
!277 = !DILocation(line: 105, column: 13, scope: !276)
!278 = !DILocation(line: 105, column: 11, scope: !268)
!279 = !DILocation(line: 107, column: 7, scope: !280)
!280 = distinct !DILexicalBlock(scope: !276, file: !12, line: 106, column: 2)
!281 = !DILocation(line: 108, column: 7, scope: !280)
!282 = !DILocation(line: 109, column: 2, scope: !280)
!283 = !DILocation(line: 111, column: 6, scope: !284)
!284 = distinct !DILexicalBlock(scope: !233, file: !12, line: 111, column: 6)
!285 = !DILocation(line: 111, column: 6, scope: !233)
!286 = !DILocation(line: 112, column: 13, scope: !284)
!287 = !DILocation(line: 112, column: 3, scope: !284)
!288 = !DILocation(line: 114, column: 34, scope: !233)
!289 = !DILocation(line: 114, column: 46, scope: !233)
!290 = !DILocation(line: 114, column: 59, scope: !233)
!291 = !DILocation(line: 114, column: 67, scope: !233)
!292 = !DILocation(line: 114, column: 65, scope: !233)
!293 = !DILocation(line: 114, column: 72, scope: !233)
!294 = !DILocation(line: 114, column: 8, scope: !233)
!295 = !DILocation(line: 116, column: 9, scope: !233)
!296 = !DILocation(line: 116, column: 2, scope: !233)
!297 = distinct !DISubprogram(name: "myusleep", scope: !12, file: !12, line: 119, type: !298, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!298 = !DISubroutineType(types: !299)
!299 = !{null, !300}
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "useconds_t", file: !301, line: 136, baseType: !302)
!301 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/httping/task1")
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__useconds_t", file: !21, line: 140, baseType: !193)
!303 = !DILocalVariable(name: "v", arg: 1, scope: !297, file: !12, line: 119, type: !300)
!304 = !DILocation(line: 119, column: 26, scope: !297)
!305 = !DILocalVariable(name: "s", scope: !297, file: !12, line: 121, type: !32)
!306 = !DILocation(line: 121, column: 6, scope: !297)
!307 = !DILocation(line: 121, column: 10, scope: !297)
!308 = !DILocation(line: 121, column: 12, scope: !297)
!309 = !DILocation(line: 123, column: 6, scope: !310)
!310 = distinct !DILexicalBlock(scope: !297, file: !12, line: 123, column: 6)
!311 = !DILocation(line: 123, column: 6, scope: !297)
!312 = !DILocation(line: 124, column: 9, scope: !310)
!313 = !DILocation(line: 124, column: 3, scope: !310)
!314 = !DILocation(line: 126, column: 4, scope: !297)
!315 = !DILocation(line: 127, column: 6, scope: !316)
!316 = distinct !DILexicalBlock(scope: !297, file: !12, line: 127, column: 6)
!317 = !DILocation(line: 127, column: 6, scope: !297)
!318 = !DILocation(line: 128, column: 10, scope: !316)
!319 = !DILocation(line: 128, column: 3, scope: !316)
!320 = !DILocation(line: 129, column: 1, scope: !297)
