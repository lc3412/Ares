; ModuleID = './line1-gen.o.i'
source_filename = "./line1-gen.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stats_t = type { double, double, double, double, double, i32, i8, i8 }

@.str = private unnamed_addr constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 1
@alphabet = global i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i32 0, i32 0), align 8

; Function Attrs: nounwind uwtable
define void @init_statst(%struct.stats_t*) #0 !dbg !14 {
  %2 = alloca %struct.stats_t*, align 8
  store %struct.stats_t* %0, %struct.stats_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stats_t** %2, metadata !31, metadata !32), !dbg !33
  %3 = load %struct.stats_t*, %struct.stats_t** %2, align 8, !dbg !34
  %4 = bitcast %struct.stats_t* %3 to i8*, !dbg !35
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 48, i32 8, i1 false), !dbg !35
  %5 = load %struct.stats_t*, %struct.stats_t** %2, align 8, !dbg !36
  %6 = getelementptr inbounds %struct.stats_t, %struct.stats_t* %5, i32 0, i32 1, !dbg !37
  store double 0x430C6BF52633FFFF, double* %6, align 8, !dbg !38
  %7 = load %struct.stats_t*, %struct.stats_t** %2, align 8, !dbg !39
  %8 = getelementptr inbounds %struct.stats_t, %struct.stats_t* %7, i32 0, i32 1, !dbg !40
  %9 = load double, double* %8, align 8, !dbg !40
  %10 = fsub double -0.000000e+00, %9, !dbg !41
  %11 = load %struct.stats_t*, %struct.stats_t** %2, align 8, !dbg !42
  %12 = getelementptr inbounds %struct.stats_t, %struct.stats_t* %11, i32 0, i32 3, !dbg !43
  store double %10, double* %12, align 8, !dbg !44
  ret void, !dbg !45
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @update_statst(%struct.stats_t*, double) #0 !dbg !46 {
  %3 = alloca %struct.stats_t*, align 8
  %4 = alloca double, align 8
  store %struct.stats_t* %0, %struct.stats_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.stats_t** %3, metadata !49, metadata !32), !dbg !50
  store double %1, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !51, metadata !32), !dbg !52
  %5 = load double, double* %4, align 8, !dbg !53
  %6 = load %struct.stats_t*, %struct.stats_t** %3, align 8, !dbg !54
  %7 = getelementptr inbounds %struct.stats_t, %struct.stats_t* %6, i32 0, i32 0, !dbg !55
  store double %5, double* %7, align 8, !dbg !56
  %8 = load %struct.stats_t*, %struct.stats_t** %3, align 8, !dbg !57
  %9 = getelementptr inbounds %struct.stats_t, %struct.stats_t* %8, i32 0, i32 1, !dbg !58
  %10 = load double, double* %9, align 8, !dbg !58
  %11 = load double, double* %4, align 8, !dbg !59
  %12 = fcmp olt double %10, %11, !dbg !60
  br i1 %12, label %13, label %17, !dbg !61

; <label>:13:                                     ; preds = %2
  %14 = load %struct.stats_t*, %struct.stats_t** %3, align 8, !dbg !62
  %15 = getelementptr inbounds %struct.stats_t, %struct.stats_t* %14, i32 0, i32 1, !dbg !64
  %16 = load double, double* %15, align 8, !dbg !64
  br label %19, !dbg !65

; <label>:17:                                     ; preds = %2
  %18 = load double, double* %4, align 8, !dbg !66
  br label %19, !dbg !68

; <label>:19:                                     ; preds = %17, %13
  %20 = phi double [ %16, %13 ], [ %18, %17 ], !dbg !69
  %21 = load %struct.stats_t*, %struct.stats_t** %3, align 8, !dbg !71
  %22 = getelementptr inbounds %struct.stats_t, %struct.stats_t* %21, i32 0, i32 1, !dbg !72
  store double %20, double* %22, align 8, !dbg !73
  %23 = load %struct.stats_t*, %struct.stats_t** %3, align 8, !dbg !74
  %24 = getelementptr inbounds %struct.stats_t, %struct.stats_t* %23, i32 0, i32 3, !dbg !75
  %25 = load double, double* %24, align 8, !dbg !75
  %26 = load double, double* %4, align 8, !dbg !76
  %27 = fcmp ogt double %25, %26, !dbg !77
  br i1 %27, label %28, label %32, !dbg !78

; <label>:28:                                     ; preds = %19
  %29 = load %struct.stats_t*, %struct.stats_t** %3, align 8, !dbg !79
  %30 = getelementptr inbounds %struct.stats_t, %struct.stats_t* %29, i32 0, i32 3, !dbg !80
  %31 = load double, double* %30, align 8, !dbg !80
  br label %34, !dbg !81

; <label>:32:                                     ; preds = %19
  %33 = load double, double* %4, align 8, !dbg !82
  br label %34, !dbg !83

; <label>:34:                                     ; preds = %32, %28
  %35 = phi double [ %31, %28 ], [ %33, %32 ], !dbg !84
  %36 = load %struct.stats_t*, %struct.stats_t** %3, align 8, !dbg !85
  %37 = getelementptr inbounds %struct.stats_t, %struct.stats_t* %36, i32 0, i32 3, !dbg !86
  store double %35, double* %37, align 8, !dbg !87
  %38 = load double, double* %4, align 8, !dbg !88
  %39 = load %struct.stats_t*, %struct.stats_t** %3, align 8, !dbg !89
  %40 = getelementptr inbounds %struct.stats_t, %struct.stats_t* %39, i32 0, i32 2, !dbg !90
  %41 = load double, double* %40, align 8, !dbg !91
  %42 = fadd double %41, %38, !dbg !91
  store double %42, double* %40, align 8, !dbg !91
  %43 = load double, double* %4, align 8, !dbg !92
  %44 = load double, double* %4, align 8, !dbg !93
  %45 = fmul double %43, %44, !dbg !94
  %46 = load %struct.stats_t*, %struct.stats_t** %3, align 8, !dbg !95
  %47 = getelementptr inbounds %struct.stats_t, %struct.stats_t* %46, i32 0, i32 4, !dbg !96
  %48 = load double, double* %47, align 8, !dbg !97
  %49 = fadd double %48, %45, !dbg !97
  store double %49, double* %47, align 8, !dbg !97
  %50 = load %struct.stats_t*, %struct.stats_t** %3, align 8, !dbg !98
  %51 = getelementptr inbounds %struct.stats_t, %struct.stats_t* %50, i32 0, i32 5, !dbg !99
  %52 = load i32, i32* %51, align 8, !dbg !100
  %53 = add nsw i32 %52, 1, !dbg !100
  store i32 %53, i32* %51, align 8, !dbg !100
  %54 = load %struct.stats_t*, %struct.stats_t** %3, align 8, !dbg !101
  %55 = getelementptr inbounds %struct.stats_t, %struct.stats_t* %54, i32 0, i32 6, !dbg !102
  store i8 1, i8* %55, align 4, !dbg !103
  %56 = load %struct.stats_t*, %struct.stats_t** %3, align 8, !dbg !104
  %57 = getelementptr inbounds %struct.stats_t, %struct.stats_t* %56, i32 0, i32 7, !dbg !105
  store i8 1, i8* %57, align 1, !dbg !106
  ret void, !dbg !107
}

; Function Attrs: nounwind uwtable
define void @reset_statst_cur(%struct.stats_t*) #0 !dbg !108 {
  %2 = alloca %struct.stats_t*, align 8
  store %struct.stats_t* %0, %struct.stats_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stats_t** %2, metadata !109, metadata !32), !dbg !110
  %3 = load %struct.stats_t*, %struct.stats_t** %2, align 8, !dbg !111
  %4 = getelementptr inbounds %struct.stats_t, %struct.stats_t* %3, i32 0, i32 7, !dbg !112
  store i8 0, i8* %4, align 1, !dbg !113
  ret void, !dbg !114
}

; Function Attrs: nounwind uwtable
define double @calc_sd(%struct.stats_t*) #0 !dbg !115 {
  %2 = alloca double, align 8
  %3 = alloca %struct.stats_t*, align 8
  %4 = alloca double, align 8
  store %struct.stats_t* %0, %struct.stats_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.stats_t** %3, metadata !118, metadata !32), !dbg !119
  call void @llvm.dbg.declare(metadata double* %4, metadata !120, metadata !32), !dbg !121
  store double 0.000000e+00, double* %4, align 8, !dbg !121
  %5 = load %struct.stats_t*, %struct.stats_t** %3, align 8, !dbg !122
  %6 = getelementptr inbounds %struct.stats_t, %struct.stats_t* %5, i32 0, i32 5, !dbg !124
  %7 = load i32, i32* %6, align 8, !dbg !124
  %8 = icmp eq i32 %7, 0, !dbg !125
  br i1 %8, label %14, label %9, !dbg !126

; <label>:9:                                      ; preds = %1
  %10 = load %struct.stats_t*, %struct.stats_t** %3, align 8, !dbg !127
  %11 = getelementptr inbounds %struct.stats_t, %struct.stats_t* %10, i32 0, i32 6, !dbg !129
  %12 = load i8, i8* %11, align 4, !dbg !129
  %13 = icmp ne i8 %12, 0, !dbg !127
  br i1 %13, label %15, label %14, !dbg !130

; <label>:14:                                     ; preds = %9, %1
  store double 0.000000e+00, double* %2, align 8, !dbg !131
  br label %36, !dbg !131

; <label>:15:                                     ; preds = %9
  %16 = load %struct.stats_t*, %struct.stats_t** %3, align 8, !dbg !132
  %17 = getelementptr inbounds %struct.stats_t, %struct.stats_t* %16, i32 0, i32 2, !dbg !133
  %18 = load double, double* %17, align 8, !dbg !133
  %19 = load %struct.stats_t*, %struct.stats_t** %3, align 8, !dbg !134
  %20 = getelementptr inbounds %struct.stats_t, %struct.stats_t* %19, i32 0, i32 5, !dbg !135
  %21 = load i32, i32* %20, align 8, !dbg !135
  %22 = sitofp i32 %21 to double, !dbg !136
  %23 = fdiv double %18, %22, !dbg !137
  store double %23, double* %4, align 8, !dbg !138
  %24 = load %struct.stats_t*, %struct.stats_t** %3, align 8, !dbg !139
  %25 = getelementptr inbounds %struct.stats_t, %struct.stats_t* %24, i32 0, i32 4, !dbg !140
  %26 = load double, double* %25, align 8, !dbg !140
  %27 = load %struct.stats_t*, %struct.stats_t** %3, align 8, !dbg !141
  %28 = getelementptr inbounds %struct.stats_t, %struct.stats_t* %27, i32 0, i32 5, !dbg !142
  %29 = load i32, i32* %28, align 8, !dbg !142
  %30 = sitofp i32 %29 to double, !dbg !143
  %31 = fdiv double %26, %30, !dbg !144
  %32 = load double, double* %4, align 8, !dbg !145
  %33 = call double @pow(double %32, double 2.000000e+00) #4, !dbg !146
  %34 = fsub double %31, %33, !dbg !147
  %35 = call double @sqrt(double %34) #4, !dbg !148
  store double %35, double* %2, align 8, !dbg !150
  br label %36, !dbg !150

; <label>:36:                                     ; preds = %15, %14
  %37 = load double, double* %2, align 8, !dbg !151
  ret double %37, !dbg !151
}

; Function Attrs: nounwind
declare double @sqrt(double) #3

; Function Attrs: nounwind
declare double @pow(double, double) #3

; Function Attrs: nounwind uwtable
define void @encode_tryptique(i8*, i8*) #0 !dbg !152 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !156, metadata !32), !dbg !157
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !158, metadata !32), !dbg !159
  call void @llvm.dbg.declare(metadata i32* %5, metadata !160, metadata !32), !dbg !161
  call void @llvm.dbg.declare(metadata i32* %6, metadata !162, metadata !32), !dbg !163
  %7 = load i8*, i8** %3, align 8, !dbg !164
  %8 = getelementptr inbounds i8, i8* %7, i64 0, !dbg !164
  %9 = load i8, i8* %8, align 1, !dbg !164
  %10 = sext i8 %9 to i32, !dbg !164
  store i32 %10, i32* %5, align 4, !dbg !165
  %11 = load i32, i32* %5, align 4, !dbg !166
  %12 = mul nsw i32 %11, 256, !dbg !166
  store i32 %12, i32* %5, align 4, !dbg !166
  %13 = load i8*, i8** %3, align 8, !dbg !167
  %14 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !167
  %15 = load i8, i8* %14, align 1, !dbg !167
  %16 = sext i8 %15 to i32, !dbg !167
  %17 = load i32, i32* %5, align 4, !dbg !168
  %18 = add nsw i32 %17, %16, !dbg !168
  store i32 %18, i32* %5, align 4, !dbg !168
  %19 = load i32, i32* %5, align 4, !dbg !169
  %20 = mul nsw i32 %19, 256, !dbg !169
  store i32 %20, i32* %5, align 4, !dbg !169
  %21 = load i8*, i8** %3, align 8, !dbg !170
  %22 = getelementptr inbounds i8, i8* %21, i64 2, !dbg !170
  %23 = load i8, i8* %22, align 1, !dbg !170
  %24 = sext i8 %23 to i32, !dbg !170
  %25 = load i32, i32* %5, align 4, !dbg !171
  %26 = add nsw i32 %25, %24, !dbg !171
  store i32 %26, i32* %5, align 4, !dbg !171
  store i32 0, i32* %6, align 4, !dbg !172
  br label %27, !dbg !174

; <label>:27:                                     ; preds = %44, %2
  %28 = load i32, i32* %6, align 4, !dbg !175
  %29 = icmp slt i32 %28, 4, !dbg !178
  br i1 %29, label %30, label %47, !dbg !179

; <label>:30:                                     ; preds = %27
  %31 = load i32, i32* %5, align 4, !dbg !180
  %32 = srem i32 %31, 64, !dbg !182
  %33 = sext i32 %32 to i64, !dbg !183
  %34 = load i8*, i8** @alphabet, align 8, !dbg !183
  %35 = getelementptr inbounds i8, i8* %34, i64 %33, !dbg !183
  %36 = load i8, i8* %35, align 1, !dbg !183
  %37 = load i32, i32* %6, align 4, !dbg !184
  %38 = sub nsw i32 3, %37, !dbg !185
  %39 = sext i32 %38 to i64, !dbg !186
  %40 = load i8*, i8** %4, align 8, !dbg !186
  %41 = getelementptr inbounds i8, i8* %40, i64 %39, !dbg !186
  store i8 %36, i8* %41, align 1, !dbg !187
  %42 = load i32, i32* %5, align 4, !dbg !188
  %43 = sdiv i32 %42, 64, !dbg !188
  store i32 %43, i32* %5, align 4, !dbg !188
  br label %44, !dbg !189

; <label>:44:                                     ; preds = %30
  %45 = load i32, i32* %6, align 4, !dbg !190
  %46 = add nsw i32 %45, 1, !dbg !190
  store i32 %46, i32* %6, align 4, !dbg !190
  br label %27, !dbg !192, !llvm.loop !193

; <label>:47:                                     ; preds = %27
  ret void, !dbg !195
}

; Function Attrs: nounwind uwtable
define i32 @enc_b64(i8*, i32, i8*) #0 !dbg !196 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [3 x i8], align 1
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !199, metadata !32), !dbg !200
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !201, metadata !32), !dbg !202
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !203, metadata !32), !dbg !204
  br label %8, !dbg !205

; <label>:8:                                      ; preds = %11, %3
  %9 = load i32, i32* %5, align 4, !dbg !206
  %10 = icmp sge i32 %9, 3, !dbg !208
  br i1 %10, label %11, label %20, !dbg !209

; <label>:11:                                     ; preds = %8
  %12 = load i8*, i8** %4, align 8, !dbg !210
  %13 = load i8*, i8** %6, align 8, !dbg !212
  call void @encode_tryptique(i8* %12, i8* %13), !dbg !213
  %14 = load i32, i32* %5, align 4, !dbg !214
  %15 = sub nsw i32 %14, 3, !dbg !214
  store i32 %15, i32* %5, align 4, !dbg !214
  %16 = load i8*, i8** %4, align 8, !dbg !215
  %17 = getelementptr inbounds i8, i8* %16, i64 3, !dbg !215
  store i8* %17, i8** %4, align 8, !dbg !215
  %18 = load i8*, i8** %6, align 8, !dbg !216
  %19 = getelementptr inbounds i8, i8* %18, i64 4, !dbg !216
  store i8* %19, i8** %6, align 8, !dbg !216
  br label %8, !dbg !217, !llvm.loop !219

; <label>:20:                                     ; preds = %8
  %21 = load i32, i32* %5, align 4, !dbg !220
  %22 = icmp sgt i32 %21, 0, !dbg !222
  br i1 %22, label %23, label %41, !dbg !223

; <label>:23:                                     ; preds = %20
  call void @llvm.dbg.declare(metadata [3 x i8]* %7, metadata !224, metadata !32), !dbg !229
  %24 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i32 0, i32 0, !dbg !230
  call void @llvm.memset.p0i8.i64(i8* %24, i8 0, i64 3, i32 1, i1 false), !dbg !230
  %25 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i32 0, i32 0, !dbg !231
  %26 = load i8*, i8** %4, align 8, !dbg !232
  %27 = load i32, i32* %5, align 4, !dbg !233
  %28 = sext i32 %27 to i64, !dbg !233
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 %28, i32 1, i1 false), !dbg !231
  %29 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i32 0, i32 0, !dbg !234
  %30 = load i8*, i8** %6, align 8, !dbg !235
  call void @encode_tryptique(i8* %29, i8* %30), !dbg !236
  %31 = load i8*, i8** %6, align 8, !dbg !237
  %32 = getelementptr inbounds i8, i8* %31, i64 3, !dbg !237
  store i8 61, i8* %32, align 1, !dbg !238
  %33 = load i32, i32* %5, align 4, !dbg !239
  %34 = icmp eq i32 %33, 1, !dbg !241
  br i1 %34, label %35, label %38, !dbg !242

; <label>:35:                                     ; preds = %23
  %36 = load i8*, i8** %6, align 8, !dbg !243
  %37 = getelementptr inbounds i8, i8* %36, i64 2, !dbg !243
  store i8 61, i8* %37, align 1, !dbg !245
  br label %38, !dbg !243

; <label>:38:                                     ; preds = %35, %23
  %39 = load i8*, i8** %6, align 8, !dbg !246
  %40 = getelementptr inbounds i8, i8* %39, i64 4, !dbg !246
  store i8* %40, i8** %6, align 8, !dbg !246
  br label %41, !dbg !247

; <label>:41:                                     ; preds = %38, %20
  %42 = load i8*, i8** %6, align 8, !dbg !248
  %43 = getelementptr inbounds i8, i8* %42, i64 0, !dbg !248
  store i8 0, i8* %43, align 1, !dbg !249
  ret i32 1, !dbg !250
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !5)
!1 = !DIFile(filename: "line1-gen.o.i", directory: "/home/lichi/Desktop/httping/task1")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!5 = !{!6}
!6 = distinct !DIGlobalVariable(name: "alphabet", scope: !0, file: !7, line: 44, type: !8, isLocal: false, isDefinition: true, variable: i8** @alphabet)
!7 = !DIFile(filename: "gen.c", directory: "/home/lichi/Desktop/httping/task1")
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!10 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!11 = !{i32 2, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!14 = distinct !DISubprogram(name: "init_statst", scope: !7, file: !7, line: 6, type: !15, isLocal: false, isDefinition: true, scopeLine: 7, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "stats_t", file: !19, line: 49, baseType: !20)
!19 = !DIFile(filename: "gen.h", directory: "/home/lichi/Desktop/httping/task1")
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 44, size: 384, align: 64, elements: !21)
!21 = !{!22, !23, !24, !25, !26, !27, !29, !30}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !20, file: !19, line: 46, baseType: !4, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !20, file: !19, line: 46, baseType: !4, size: 64, align: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !20, file: !19, line: 46, baseType: !4, size: 64, align: 64, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !20, file: !19, line: 46, baseType: !4, size: 64, align: 64, offset: 192)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !20, file: !19, line: 46, baseType: !4, size: 64, align: 64, offset: 256)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !20, file: !19, line: 47, baseType: !28, size: 32, align: 32, offset: 320)
!28 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !20, file: !19, line: 48, baseType: !10, size: 8, align: 8, offset: 352)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "cur_valid", scope: !20, file: !19, line: 48, baseType: !10, size: 8, align: 8, offset: 360)
!31 = !DILocalVariable(name: "data", arg: 1, scope: !14, file: !7, line: 6, type: !17)
!32 = !DIExpression()
!33 = !DILocation(line: 6, column: 27, scope: !14)
!34 = !DILocation(line: 8, column: 9, scope: !14)
!35 = !DILocation(line: 8, column: 2, scope: !14)
!36 = !DILocation(line: 10, column: 2, scope: !14)
!37 = !DILocation(line: 10, column: 10, scope: !14)
!38 = !DILocation(line: 10, column: 14, scope: !14)
!39 = !DILocation(line: 11, column: 17, scope: !14)
!40 = !DILocation(line: 11, column: 25, scope: !14)
!41 = !DILocation(line: 11, column: 16, scope: !14)
!42 = !DILocation(line: 11, column: 2, scope: !14)
!43 = !DILocation(line: 11, column: 10, scope: !14)
!44 = !DILocation(line: 11, column: 14, scope: !14)
!45 = !DILocation(line: 12, column: 1, scope: !14)
!46 = distinct !DISubprogram(name: "update_statst", scope: !7, file: !7, line: 14, type: !47, isLocal: false, isDefinition: true, scopeLine: 15, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!47 = !DISubroutineType(types: !48)
!48 = !{null, !17, !4}
!49 = !DILocalVariable(name: "data", arg: 1, scope: !46, file: !7, line: 14, type: !17)
!50 = !DILocation(line: 14, column: 29, scope: !46)
!51 = !DILocalVariable(name: "in", arg: 2, scope: !46, file: !7, line: 14, type: !4)
!52 = !DILocation(line: 14, column: 42, scope: !46)
!53 = !DILocation(line: 16, column: 16, scope: !46)
!54 = !DILocation(line: 16, column: 2, scope: !46)
!55 = !DILocation(line: 16, column: 10, scope: !46)
!56 = !DILocation(line: 16, column: 14, scope: !46)
!57 = !DILocation(line: 17, column: 18, scope: !46)
!58 = !DILocation(line: 17, column: 26, scope: !46)
!59 = !DILocation(line: 17, column: 34, scope: !46)
!60 = !DILocation(line: 17, column: 31, scope: !46)
!61 = !DILocation(line: 17, column: 17, scope: !46)
!62 = !DILocation(line: 17, column: 41, scope: !63)
!63 = !DILexicalBlockFile(scope: !46, file: !7, discriminator: 1)
!64 = !DILocation(line: 17, column: 49, scope: !63)
!65 = !DILocation(line: 17, column: 17, scope: !63)
!66 = !DILocation(line: 17, column: 57, scope: !67)
!67 = !DILexicalBlockFile(scope: !46, file: !7, discriminator: 2)
!68 = !DILocation(line: 17, column: 17, scope: !67)
!69 = !DILocation(line: 17, column: 17, scope: !70)
!70 = !DILexicalBlockFile(scope: !46, file: !7, discriminator: 3)
!71 = !DILocation(line: 17, column: 2, scope: !70)
!72 = !DILocation(line: 17, column: 10, scope: !70)
!73 = !DILocation(line: 17, column: 14, scope: !70)
!74 = !DILocation(line: 18, column: 18, scope: !46)
!75 = !DILocation(line: 18, column: 26, scope: !46)
!76 = !DILocation(line: 18, column: 34, scope: !46)
!77 = !DILocation(line: 18, column: 31, scope: !46)
!78 = !DILocation(line: 18, column: 17, scope: !46)
!79 = !DILocation(line: 18, column: 41, scope: !63)
!80 = !DILocation(line: 18, column: 49, scope: !63)
!81 = !DILocation(line: 18, column: 17, scope: !63)
!82 = !DILocation(line: 18, column: 57, scope: !67)
!83 = !DILocation(line: 18, column: 17, scope: !67)
!84 = !DILocation(line: 18, column: 17, scope: !70)
!85 = !DILocation(line: 18, column: 2, scope: !70)
!86 = !DILocation(line: 18, column: 10, scope: !70)
!87 = !DILocation(line: 18, column: 14, scope: !70)
!88 = !DILocation(line: 19, column: 17, scope: !46)
!89 = !DILocation(line: 19, column: 2, scope: !46)
!90 = !DILocation(line: 19, column: 10, scope: !46)
!91 = !DILocation(line: 19, column: 14, scope: !46)
!92 = !DILocation(line: 20, column: 16, scope: !46)
!93 = !DILocation(line: 20, column: 21, scope: !46)
!94 = !DILocation(line: 20, column: 19, scope: !46)
!95 = !DILocation(line: 20, column: 2, scope: !46)
!96 = !DILocation(line: 20, column: 10, scope: !46)
!97 = !DILocation(line: 20, column: 13, scope: !46)
!98 = !DILocation(line: 21, column: 3, scope: !46)
!99 = !DILocation(line: 21, column: 11, scope: !46)
!100 = !DILocation(line: 21, column: 13, scope: !46)
!101 = !DILocation(line: 22, column: 2, scope: !46)
!102 = !DILocation(line: 22, column: 10, scope: !46)
!103 = !DILocation(line: 22, column: 16, scope: !46)
!104 = !DILocation(line: 23, column: 2, scope: !46)
!105 = !DILocation(line: 23, column: 10, scope: !46)
!106 = !DILocation(line: 23, column: 20, scope: !46)
!107 = !DILocation(line: 24, column: 1, scope: !46)
!108 = distinct !DISubprogram(name: "reset_statst_cur", scope: !7, file: !7, line: 26, type: !15, isLocal: false, isDefinition: true, scopeLine: 27, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!109 = !DILocalVariable(name: "data", arg: 1, scope: !108, file: !7, line: 26, type: !17)
!110 = !DILocation(line: 26, column: 32, scope: !108)
!111 = !DILocation(line: 28, column: 2, scope: !108)
!112 = !DILocation(line: 28, column: 10, scope: !108)
!113 = !DILocation(line: 28, column: 20, scope: !108)
!114 = !DILocation(line: 29, column: 1, scope: !108)
!115 = distinct !DISubprogram(name: "calc_sd", scope: !7, file: !7, line: 31, type: !116, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!116 = !DISubroutineType(types: !117)
!117 = !{!4, !17}
!118 = !DILocalVariable(name: "in", arg: 1, scope: !115, file: !7, line: 31, type: !17)
!119 = !DILocation(line: 31, column: 25, scope: !115)
!120 = !DILocalVariable(name: "avg", scope: !115, file: !7, line: 33, type: !4)
!121 = !DILocation(line: 33, column: 9, scope: !115)
!122 = !DILocation(line: 35, column: 6, scope: !123)
!123 = distinct !DILexicalBlock(scope: !115, file: !7, line: 35, column: 6)
!124 = !DILocation(line: 35, column: 12, scope: !123)
!125 = !DILocation(line: 35, column: 14, scope: !123)
!126 = !DILocation(line: 35, column: 19, scope: !123)
!127 = !DILocation(line: 35, column: 23, scope: !128)
!128 = !DILexicalBlockFile(scope: !123, file: !7, discriminator: 1)
!129 = !DILocation(line: 35, column: 29, scope: !128)
!130 = !DILocation(line: 35, column: 6, scope: !128)
!131 = !DILocation(line: 36, column: 3, scope: !123)
!132 = !DILocation(line: 38, column: 8, scope: !115)
!133 = !DILocation(line: 38, column: 14, scope: !115)
!134 = !DILocation(line: 38, column: 28, scope: !115)
!135 = !DILocation(line: 38, column: 34, scope: !115)
!136 = !DILocation(line: 38, column: 20, scope: !115)
!137 = !DILocation(line: 38, column: 18, scope: !115)
!138 = !DILocation(line: 38, column: 6, scope: !115)
!139 = !DILocation(line: 40, column: 15, scope: !115)
!140 = !DILocation(line: 40, column: 21, scope: !115)
!141 = !DILocation(line: 40, column: 34, scope: !115)
!142 = !DILocation(line: 40, column: 40, scope: !115)
!143 = !DILocation(line: 40, column: 26, scope: !115)
!144 = !DILocation(line: 40, column: 24, scope: !115)
!145 = !DILocation(line: 40, column: 49, scope: !115)
!146 = !DILocation(line: 40, column: 45, scope: !115)
!147 = !DILocation(line: 40, column: 43, scope: !115)
!148 = !DILocation(line: 40, column: 9, scope: !149)
!149 = !DILexicalBlockFile(scope: !115, file: !7, discriminator: 1)
!150 = !DILocation(line: 40, column: 2, scope: !115)
!151 = !DILocation(line: 41, column: 1, scope: !115)
!152 = distinct !DISubprogram(name: "encode_tryptique", scope: !7, file: !7, line: 46, type: !153, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!153 = !DISubroutineType(types: !154)
!154 = !{null, !155, !155}
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!156 = !DILocalVariable(name: "source", arg: 1, scope: !152, file: !7, line: 46, type: !155)
!157 = !DILocation(line: 46, column: 28, scope: !152)
!158 = !DILocalVariable(name: "result", arg: 2, scope: !152, file: !7, line: 46, type: !155)
!159 = !DILocation(line: 46, column: 44, scope: !152)
!160 = !DILocalVariable(name: "tryptique", scope: !152, file: !7, line: 49, type: !28)
!161 = !DILocation(line: 49, column: 9, scope: !152)
!162 = !DILocalVariable(name: "i", scope: !152, file: !7, line: 49, type: !28)
!163 = !DILocation(line: 49, column: 20, scope: !152)
!164 = !DILocation(line: 50, column: 17, scope: !152)
!165 = !DILocation(line: 50, column: 15, scope: !152)
!166 = !DILocation(line: 51, column: 15, scope: !152)
!167 = !DILocation(line: 52, column: 18, scope: !152)
!168 = !DILocation(line: 52, column: 15, scope: !152)
!169 = !DILocation(line: 53, column: 15, scope: !152)
!170 = !DILocation(line: 54, column: 18, scope: !152)
!171 = !DILocation(line: 54, column: 15, scope: !152)
!172 = !DILocation(line: 55, column: 11, scope: !173)
!173 = distinct !DILexicalBlock(scope: !152, file: !7, line: 55, column: 5)
!174 = !DILocation(line: 55, column: 10, scope: !173)
!175 = !DILocation(line: 55, column: 15, scope: !176)
!176 = !DILexicalBlockFile(scope: !177, file: !7, discriminator: 1)
!177 = distinct !DILexicalBlock(scope: !173, file: !7, line: 55, column: 5)
!178 = !DILocation(line: 55, column: 16, scope: !176)
!179 = !DILocation(line: 55, column: 5, scope: !176)
!180 = !DILocation(line: 57, column: 26, scope: !181)
!181 = distinct !DILexicalBlock(scope: !177, file: !7, line: 56, column: 5)
!182 = !DILocation(line: 57, column: 35, scope: !181)
!183 = !DILocation(line: 57, column: 17, scope: !181)
!184 = !DILocation(line: 57, column: 12, scope: !181)
!185 = !DILocation(line: 57, column: 11, scope: !181)
!186 = !DILocation(line: 57, column: 3, scope: !181)
!187 = !DILocation(line: 57, column: 15, scope: !181)
!188 = !DILocation(line: 58, column: 12, scope: !181)
!189 = !DILocation(line: 59, column: 5, scope: !181)
!190 = !DILocation(line: 55, column: 21, scope: !191)
!191 = !DILexicalBlockFile(scope: !177, file: !7, discriminator: 2)
!192 = !DILocation(line: 55, column: 5, scope: !191)
!193 = distinct !{!193, !194}
!194 = !DILocation(line: 55, column: 5, scope: !152)
!195 = !DILocation(line: 60, column: 1, scope: !152)
!196 = distinct !DISubprogram(name: "enc_b64", scope: !7, file: !7, line: 62, type: !197, isLocal: false, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!197 = !DISubroutineType(types: !198)
!198 = !{!28, !155, !28, !155}
!199 = !DILocalVariable(name: "source", arg: 1, scope: !196, file: !7, line: 62, type: !155)
!200 = !DILocation(line: 62, column: 19, scope: !196)
!201 = !DILocalVariable(name: "source_lenght", arg: 2, scope: !196, file: !7, line: 62, type: !28)
!202 = !DILocation(line: 62, column: 31, scope: !196)
!203 = !DILocalVariable(name: "target", arg: 3, scope: !196, file: !7, line: 62, type: !155)
!204 = !DILocation(line: 62, column: 52, scope: !196)
!205 = !DILocation(line: 65, column: 2, scope: !196)
!206 = !DILocation(line: 65, column: 9, scope: !207)
!207 = !DILexicalBlockFile(scope: !196, file: !7, discriminator: 1)
!208 = !DILocation(line: 65, column: 23, scope: !207)
!209 = !DILocation(line: 65, column: 2, scope: !207)
!210 = !DILocation(line: 66, column: 20, scope: !211)
!211 = distinct !DILexicalBlock(scope: !196, file: !7, line: 65, column: 29)
!212 = !DILocation(line: 66, column: 28, scope: !211)
!213 = !DILocation(line: 66, column: 3, scope: !211)
!214 = !DILocation(line: 67, column: 17, scope: !211)
!215 = !DILocation(line: 68, column: 10, scope: !211)
!216 = !DILocation(line: 69, column: 10, scope: !211)
!217 = !DILocation(line: 65, column: 2, scope: !218)
!218 = !DILexicalBlockFile(scope: !196, file: !7, discriminator: 2)
!219 = distinct !{!219, !205}
!220 = !DILocation(line: 72, column: 6, scope: !221)
!221 = distinct !DILexicalBlock(scope: !196, file: !7, line: 72, column: 6)
!222 = !DILocation(line: 72, column: 20, scope: !221)
!223 = !DILocation(line: 72, column: 6, scope: !196)
!224 = !DILocalVariable(name: "pad", scope: !225, file: !7, line: 73, type: !226)
!225 = distinct !DILexicalBlock(scope: !221, file: !7, line: 72, column: 25)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 24, align: 8, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 3)
!229 = !DILocation(line: 73, column: 8, scope: !225)
!230 = !DILocation(line: 74, column: 4, scope: !225)
!231 = !DILocation(line: 75, column: 3, scope: !225)
!232 = !DILocation(line: 75, column: 15, scope: !225)
!233 = !DILocation(line: 75, column: 23, scope: !225)
!234 = !DILocation(line: 76, column: 20, scope: !225)
!235 = !DILocation(line: 76, column: 25, scope: !225)
!236 = !DILocation(line: 76, column: 3, scope: !225)
!237 = !DILocation(line: 77, column: 3, scope: !225)
!238 = !DILocation(line: 77, column: 13, scope: !225)
!239 = !DILocation(line: 78, column: 7, scope: !240)
!240 = distinct !DILexicalBlock(scope: !225, file: !7, line: 78, column: 7)
!241 = !DILocation(line: 78, column: 21, scope: !240)
!242 = !DILocation(line: 78, column: 7, scope: !225)
!243 = !DILocation(line: 78, column: 27, scope: !244)
!244 = !DILexicalBlockFile(scope: !240, file: !7, discriminator: 1)
!245 = !DILocation(line: 78, column: 37, scope: !244)
!246 = !DILocation(line: 79, column: 10, scope: !225)
!247 = !DILocation(line: 80, column: 2, scope: !225)
!248 = !DILocation(line: 81, column: 2, scope: !196)
!249 = !DILocation(line: 81, column: 12, scope: !196)
!250 = !DILocation(line: 82, column: 2, scope: !196)
