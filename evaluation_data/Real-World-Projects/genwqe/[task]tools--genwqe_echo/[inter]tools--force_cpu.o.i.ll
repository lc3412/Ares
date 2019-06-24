; ModuleID = '/home/lichi/Desktop/genwqe/[task]tools--genwqe_echo/[inter]tools--force_cpu.o.i'
source_filename = "/home/lichi/Desktop/genwqe/[task]tools--genwqe_echo/[inter]tools--force_cpu.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.cpu_set_t = type { [16 x i64] }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c" CPU: %4d = %s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"no \00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Default possible CPUs:\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Running on CPU %d, want to run on CPU %d...\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.6 = private unnamed_addr constant [51 x i8] c"err: desired CPU %d does not match current CPU %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"New possible CPUs:\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Running on CPU %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @print_cpu_mask() #0 !dbg !14 {
  %1 = alloca %struct.cpu_set_t*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.cpu_set_t** %1, metadata !18, metadata !27), !dbg !28
  call void @llvm.dbg.declare(metadata i64* %2, metadata !29, metadata !27), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %3, metadata !33, metadata !27), !dbg !35
  call void @llvm.dbg.declare(metadata i32* %4, metadata !36, metadata !27), !dbg !37
  store i32 1024, i32* %3, align 4, !dbg !38
  %9 = load i32, i32* %3, align 4, !dbg !39
  %10 = sext i32 %9 to i64, !dbg !39
  %11 = call %struct.cpu_set_t* @__sched_cpualloc(i64 %10) #5, !dbg !39
  store %struct.cpu_set_t* %11, %struct.cpu_set_t** %1, align 8, !dbg !40
  %12 = load %struct.cpu_set_t*, %struct.cpu_set_t** %1, align 8, !dbg !41
  %13 = icmp eq %struct.cpu_set_t* %12, null, !dbg !43
  br i1 %13, label %14, label %15, !dbg !44

; <label>:14:                                     ; preds = %0
  br label %106, !dbg !45

; <label>:15:                                     ; preds = %0
  %16 = load i32, i32* %3, align 4, !dbg !46
  %17 = sext i32 %16 to i64, !dbg !47
  %18 = add i64 %17, 64, !dbg !48
  %19 = sub i64 %18, 1, !dbg !49
  %20 = udiv i64 %19, 64, !dbg !50
  %21 = mul i64 %20, 8, !dbg !51
  store i64 %21, i64* %2, align 8, !dbg !52
  br label %22, !dbg !53, !llvm.loop !54

; <label>:22:                                     ; preds = %15
  %23 = load %struct.cpu_set_t*, %struct.cpu_set_t** %1, align 8, !dbg !55
  %24 = bitcast %struct.cpu_set_t* %23 to i8*, !dbg !57
  %25 = load i64, i64* %2, align 8, !dbg !55
  call void @llvm.memset.p0i8.i64(i8* %24, i8 0, i64 %25, i32 8, i1 false), !dbg !57
  br label %26, !dbg !57

; <label>:26:                                     ; preds = %22
  %27 = load i64, i64* %2, align 8, !dbg !58
  %28 = load %struct.cpu_set_t*, %struct.cpu_set_t** %1, align 8, !dbg !60
  %29 = call i32 @sched_getaffinity(i32 0, i64 %27, %struct.cpu_set_t* %28) #5, !dbg !61
  %30 = icmp slt i32 %29, 0, !dbg !62
  br i1 %30, label %31, label %33, !dbg !63

; <label>:31:                                     ; preds = %26
  %32 = load %struct.cpu_set_t*, %struct.cpu_set_t** %1, align 8, !dbg !64
  call void @__sched_cpufree(%struct.cpu_set_t* %32) #5, !dbg !64
  br label %106, !dbg !66

; <label>:33:                                     ; preds = %26
  store i32 0, i32* %4, align 4, !dbg !67
  br label %34, !dbg !69

; <label>:34:                                     ; preds = %101, %33
  %35 = load i32, i32* %4, align 4, !dbg !70
  %36 = load i32, i32* %3, align 4, !dbg !73
  %37 = icmp slt i32 %35, %36, !dbg !74
  br i1 %37, label %38, label %104, !dbg !75

; <label>:38:                                     ; preds = %34
  call void @llvm.dbg.declare(metadata i64* %5, metadata !76, metadata !27), !dbg !80
  %39 = load i32, i32* %4, align 4, !dbg !81
  %40 = sext i32 %39 to i64, !dbg !82
  store i64 %40, i64* %5, align 8, !dbg !80
  %41 = load i64, i64* %5, align 8, !dbg !83
  %42 = udiv i64 %41, 8, !dbg !84
  %43 = load i64, i64* %2, align 8, !dbg !81
  %44 = icmp ult i64 %42, %43, !dbg !85
  br i1 %44, label %45, label %59, !dbg !83

; <label>:45:                                     ; preds = %38
  %46 = load i64, i64* %5, align 8, !dbg !86
  %47 = udiv i64 %46, 64, !dbg !88
  %48 = load %struct.cpu_set_t*, %struct.cpu_set_t** %1, align 8, !dbg !89
  %49 = getelementptr inbounds %struct.cpu_set_t, %struct.cpu_set_t* %48, i32 0, i32 0, !dbg !90
  %50 = getelementptr inbounds [16 x i64], [16 x i64]* %49, i32 0, i32 0, !dbg !91
  %51 = getelementptr inbounds i64, i64* %50, i64 %47, !dbg !91
  %52 = load i64, i64* %51, align 8, !dbg !91
  %53 = load i64, i64* %5, align 8, !dbg !92
  %54 = urem i64 %53, 64, !dbg !93
  %55 = shl i64 1, %54, !dbg !94
  %56 = and i64 %52, %55, !dbg !95
  %57 = icmp ne i64 %56, 0, !dbg !96
  %58 = zext i1 %57 to i32, !dbg !96
  br label %60, !dbg !90

; <label>:59:                                     ; preds = %38
  br label %60, !dbg !97

; <label>:60:                                     ; preds = %59, %45
  %61 = phi i32 [ %58, %45 ], [ 0, %59 ], !dbg !99
  store i32 %61, i32* %6, align 4, !dbg !101
  %62 = load i32, i32* %6, align 4, !dbg !102
  %63 = icmp ne i32 %62, 0, !dbg !103
  br i1 %63, label %66, label %64, !dbg !104

; <label>:64:                                     ; preds = %60
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)), !dbg !105
  br label %104, !dbg !107

; <label>:66:                                     ; preds = %60
  %67 = load i32, i32* %4, align 4, !dbg !108
  call void @llvm.dbg.declare(metadata i64* %7, metadata !109, metadata !27), !dbg !111
  %68 = load i32, i32* %4, align 4, !dbg !112
  %69 = sext i32 %68 to i64, !dbg !113
  store i64 %69, i64* %7, align 8, !dbg !111
  %70 = load i64, i64* %7, align 8, !dbg !114
  %71 = udiv i64 %70, 8, !dbg !115
  %72 = load i64, i64* %2, align 8, !dbg !112
  %73 = icmp ult i64 %71, %72, !dbg !116
  br i1 %73, label %74, label %88, !dbg !114

; <label>:74:                                     ; preds = %66
  %75 = load i64, i64* %7, align 8, !dbg !117
  %76 = udiv i64 %75, 64, !dbg !119
  %77 = load %struct.cpu_set_t*, %struct.cpu_set_t** %1, align 8, !dbg !120
  %78 = getelementptr inbounds %struct.cpu_set_t, %struct.cpu_set_t* %77, i32 0, i32 0, !dbg !121
  %79 = getelementptr inbounds [16 x i64], [16 x i64]* %78, i32 0, i32 0, !dbg !122
  %80 = getelementptr inbounds i64, i64* %79, i64 %76, !dbg !122
  %81 = load i64, i64* %80, align 8, !dbg !122
  %82 = load i64, i64* %7, align 8, !dbg !123
  %83 = urem i64 %82, 64, !dbg !124
  %84 = shl i64 1, %83, !dbg !125
  %85 = and i64 %81, %84, !dbg !126
  %86 = icmp ne i64 %85, 0, !dbg !127
  %87 = zext i1 %86 to i32, !dbg !127
  br label %89, !dbg !121

; <label>:88:                                     ; preds = %66
  br label %89, !dbg !128

; <label>:89:                                     ; preds = %88, %74
  %90 = phi i32 [ %87, %74 ], [ 0, %88 ], !dbg !130
  store i32 %90, i32* %8, align 4, !dbg !132
  %91 = load i32, i32* %8, align 4, !dbg !133
  %92 = icmp ne i32 %91, 0, !dbg !134
  %93 = select i1 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), !dbg !134
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 %67, i8* %93), !dbg !135
  %95 = load i32, i32* %4, align 4, !dbg !137
  %96 = and i32 %95, 3, !dbg !139
  %97 = icmp eq i32 %96, 3, !dbg !140
  br i1 %97, label %98, label %100, !dbg !141

; <label>:98:                                     ; preds = %89
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)), !dbg !142
  br label %100, !dbg !142

; <label>:100:                                    ; preds = %98, %89
  br label %101, !dbg !143

; <label>:101:                                    ; preds = %100
  %102 = load i32, i32* %4, align 4, !dbg !144
  %103 = add nsw i32 %102, 1, !dbg !144
  store i32 %103, i32* %4, align 4, !dbg !144
  br label %34, !dbg !146, !llvm.loop !147

; <label>:104:                                    ; preds = %64, %34
  %105 = load %struct.cpu_set_t*, %struct.cpu_set_t** %1, align 8, !dbg !149
  call void @__sched_cpufree(%struct.cpu_set_t* %105) #5, !dbg !149
  br label %106, !dbg !150

; <label>:106:                                    ; preds = %104, %31, %14
  ret void, !dbg !151
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare %struct.cpu_set_t* @__sched_cpualloc(i64) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

; Function Attrs: nounwind
declare i32 @sched_getaffinity(i32, i64, %struct.cpu_set_t*) #2

; Function Attrs: nounwind
declare void @__sched_cpufree(%struct.cpu_set_t*) #2

declare i32 @printf(i8*, ...) #4

; Function Attrs: nounwind uwtable
define i32 @pin_to_cpu(i32) #0 !dbg !152 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpu_set_t*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !155, metadata !27), !dbg !156
  call void @llvm.dbg.declare(metadata %struct.cpu_set_t** %4, metadata !157, metadata !27), !dbg !158
  call void @llvm.dbg.declare(metadata i64* %5, metadata !159, metadata !27), !dbg !160
  call void @llvm.dbg.declare(metadata i32* %6, metadata !161, metadata !27), !dbg !162
  store i32 1024, i32* %6, align 4, !dbg !163
  %9 = load i32, i32* %6, align 4, !dbg !164
  %10 = sext i32 %9 to i64, !dbg !164
  %11 = call %struct.cpu_set_t* @__sched_cpualloc(i64 %10) #5, !dbg !164
  store %struct.cpu_set_t* %11, %struct.cpu_set_t** %4, align 8, !dbg !165
  %12 = load %struct.cpu_set_t*, %struct.cpu_set_t** %4, align 8, !dbg !166
  %13 = icmp eq %struct.cpu_set_t* %12, null, !dbg !168
  br i1 %13, label %14, label %16, !dbg !169

; <label>:14:                                     ; preds = %1
  %15 = call i32 @sched_getcpu() #5, !dbg !170
  store i32 %15, i32* %2, align 4, !dbg !172
  br label %60, !dbg !172

; <label>:16:                                     ; preds = %1
  %17 = load i32, i32* %6, align 4, !dbg !173
  %18 = sext i32 %17 to i64, !dbg !174
  %19 = add i64 %18, 64, !dbg !175
  %20 = sub i64 %19, 1, !dbg !176
  %21 = udiv i64 %20, 64, !dbg !177
  %22 = mul i64 %21, 8, !dbg !178
  store i64 %22, i64* %5, align 8, !dbg !179
  br label %23, !dbg !180, !llvm.loop !181

; <label>:23:                                     ; preds = %16
  %24 = load %struct.cpu_set_t*, %struct.cpu_set_t** %4, align 8, !dbg !182
  %25 = bitcast %struct.cpu_set_t* %24 to i8*, !dbg !184
  %26 = load i64, i64* %5, align 8, !dbg !182
  call void @llvm.memset.p0i8.i64(i8* %25, i8 0, i64 %26, i32 8, i1 false), !dbg !184
  br label %27, !dbg !184

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.declare(metadata i64* %7, metadata !185, metadata !27), !dbg !187
  %28 = load i32, i32* %3, align 4, !dbg !188
  %29 = sext i32 %28 to i64, !dbg !189
  store i64 %29, i64* %7, align 8, !dbg !187
  %30 = load i64, i64* %7, align 8, !dbg !190
  %31 = udiv i64 %30, 8, !dbg !191
  %32 = load i64, i64* %5, align 8, !dbg !188
  %33 = icmp ult i64 %31, %32, !dbg !192
  br i1 %33, label %34, label %46, !dbg !190

; <label>:34:                                     ; preds = %27
  %35 = load i64, i64* %7, align 8, !dbg !193
  %36 = urem i64 %35, 64, !dbg !195
  %37 = shl i64 1, %36, !dbg !196
  %38 = load i64, i64* %7, align 8, !dbg !197
  %39 = udiv i64 %38, 64, !dbg !198
  %40 = load %struct.cpu_set_t*, %struct.cpu_set_t** %4, align 8, !dbg !199
  %41 = getelementptr inbounds %struct.cpu_set_t, %struct.cpu_set_t* %40, i32 0, i32 0, !dbg !200
  %42 = getelementptr inbounds [16 x i64], [16 x i64]* %41, i32 0, i32 0, !dbg !201
  %43 = getelementptr inbounds i64, i64* %42, i64 %39, !dbg !201
  %44 = load i64, i64* %43, align 8, !dbg !202
  %45 = or i64 %44, %37, !dbg !202
  store i64 %45, i64* %43, align 8, !dbg !202
  br label %47, !dbg !200

; <label>:46:                                     ; preds = %27
  br label %47, !dbg !203

; <label>:47:                                     ; preds = %46, %34
  %48 = phi i64 [ %45, %34 ], [ 0, %46 ], !dbg !205
  store i64 %48, i64* %8, align 8, !dbg !207
  %49 = load i64, i64* %8, align 8, !dbg !208
  %50 = load i64, i64* %5, align 8, !dbg !209
  %51 = load %struct.cpu_set_t*, %struct.cpu_set_t** %4, align 8, !dbg !211
  %52 = call i32 @sched_setaffinity(i32 0, i64 %50, %struct.cpu_set_t* %51) #5, !dbg !212
  %53 = icmp slt i32 %52, 0, !dbg !213
  br i1 %53, label %54, label %57, !dbg !214

; <label>:54:                                     ; preds = %47
  %55 = load %struct.cpu_set_t*, %struct.cpu_set_t** %4, align 8, !dbg !215
  call void @__sched_cpufree(%struct.cpu_set_t* %55) #5, !dbg !215
  %56 = call i32 @sched_getcpu() #5, !dbg !217
  store i32 %56, i32* %2, align 4, !dbg !218
  br label %60, !dbg !218

; <label>:57:                                     ; preds = %47
  %58 = load %struct.cpu_set_t*, %struct.cpu_set_t** %4, align 8, !dbg !219
  call void @__sched_cpufree(%struct.cpu_set_t* %58) #5, !dbg !219
  %59 = load i32, i32* %3, align 4, !dbg !220
  store i32 %59, i32* %2, align 4, !dbg !221
  br label %60, !dbg !221

; <label>:60:                                     ; preds = %57, %54, %14
  %61 = load i32, i32* %2, align 4, !dbg !222
  ret i32 %61, !dbg !222
}

; Function Attrs: nounwind
declare i32 @sched_getcpu() #2

; Function Attrs: nounwind
declare i32 @sched_setaffinity(i32, i64, %struct.cpu_set_t*) #2

; Function Attrs: nounwind uwtable
define i32 @switch_cpu(i32, i32) #0 !dbg !223 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !226, metadata !27), !dbg !227
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !228, metadata !27), !dbg !229
  call void @llvm.dbg.declare(metadata i32* %6, metadata !230, metadata !27), !dbg !231
  %7 = load i32, i32* %4, align 4, !dbg !232
  %8 = icmp slt i32 %7, 0, !dbg !234
  br i1 %8, label %9, label %10, !dbg !235

; <label>:9:                                      ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !236
  br label %37, !dbg !236

; <label>:10:                                     ; preds = %2
  %11 = load i32, i32* %5, align 4, !dbg !237
  %12 = icmp ne i32 %11, 0, !dbg !237
  br i1 %12, label %13, label %18, !dbg !239

; <label>:13:                                     ; preds = %10
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0)), !dbg !240
  call void @print_cpu_mask(), !dbg !242
  %15 = call i32 @sched_getcpu() #5, !dbg !243
  %16 = load i32, i32* %4, align 4, !dbg !244
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i32 0, i32 0), i32 %15, i32 %16), !dbg !245
  br label %18, !dbg !246

; <label>:18:                                     ; preds = %13, %10
  %19 = load i32, i32* %4, align 4, !dbg !247
  %20 = call i32 @pin_to_cpu(i32 %19), !dbg !248
  store i32 %20, i32* %6, align 4, !dbg !249
  %21 = load i32, i32* %6, align 4, !dbg !250
  %22 = load i32, i32* %4, align 4, !dbg !252
  %23 = icmp ne i32 %21, %22, !dbg !253
  br i1 %23, label %24, label %29, !dbg !254

; <label>:24:                                     ; preds = %18
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !255
  %26 = load i32, i32* %4, align 4, !dbg !257
  %27 = load i32, i32* %6, align 4, !dbg !258
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i32 0, i32 0), i32 %26, i32 %27), !dbg !259
  store i32 -1, i32* %3, align 4, !dbg !260
  br label %37, !dbg !260

; <label>:29:                                     ; preds = %18
  %30 = load i32, i32* %5, align 4, !dbg !261
  %31 = icmp ne i32 %30, 0, !dbg !261
  br i1 %31, label %32, label %36, !dbg !263

; <label>:32:                                     ; preds = %29
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0)), !dbg !264
  call void @print_cpu_mask(), !dbg !266
  %34 = load i32, i32* %6, align 4, !dbg !267
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0), i32 %34), !dbg !268
  br label %36, !dbg !269

; <label>:36:                                     ; preds = %32, %29
  store i32 0, i32* %3, align 4, !dbg !270
  br label %37, !dbg !270

; <label>:37:                                     ; preds = %36, %24, %9
  %38 = load i32, i32* %3, align 4, !dbg !271
  ret i32 %38, !dbg !271
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/home/lichi/Desktop/genwqe/[task]tools--genwqe_echo/[inter]tools--force_cpu.o.i", directory: "/home/lichi/Desktop")
!2 = !{}
!3 = !{!4, !5, !7, !10}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__cpu_mask", file: !8, line: 118, baseType: !9)
!8 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sched.h", directory: "/home/lichi/Desktop")
!9 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!11 = !{i32 2, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!14 = distinct !DISubprogram(name: "print_cpu_mask", scope: !15, file: !15, line: 42, type: !16, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!15 = !DIFile(filename: "force_cpu.c", directory: "/home/lichi/Desktop")
!16 = !DISubroutineType(types: !17)
!17 = !{null}
!18 = !DILocalVariable(name: "cpusetp", scope: !14, file: !15, line: 44, type: !19)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpu_set_t", file: !8, line: 128, baseType: !21)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 125, size: 1024, align: 64, elements: !22)
!22 = !{!23}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "__bits", scope: !21, file: !8, line: 127, baseType: !24, size: 1024, align: 64)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 1024, align: 64, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 16)
!27 = !DIExpression()
!28 = !DILocation(line: 44, column: 13, scope: !14)
!29 = !DILocalVariable(name: "size", scope: !14, file: !15, line: 45, type: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !31, line: 216, baseType: !9)
!31 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop")
!32 = !DILocation(line: 45, column: 9, scope: !14)
!33 = !DILocalVariable(name: "num_cpus", scope: !14, file: !15, line: 46, type: !34)
!34 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!35 = !DILocation(line: 46, column: 6, scope: !14)
!36 = !DILocalVariable(name: "cpu", scope: !14, file: !15, line: 46, type: !34)
!37 = !DILocation(line: 46, column: 16, scope: !14)
!38 = !DILocation(line: 48, column: 11, scope: !14)
!39 = !DILocation(line: 49, column: 11, scope: !14)
!40 = !DILocation(line: 49, column: 10, scope: !14)
!41 = !DILocation(line: 50, column: 6, scope: !42)
!42 = distinct !DILexicalBlock(scope: !14, file: !15, line: 50, column: 6)
!43 = !DILocation(line: 50, column: 14, scope: !42)
!44 = !DILocation(line: 50, column: 6, scope: !14)
!45 = !DILocation(line: 51, column: 3, scope: !42)
!46 = !DILocation(line: 52, column: 8, scope: !14)
!47 = !DILocation(line: 52, column: 11, scope: !14)
!48 = !DILocation(line: 52, column: 10, scope: !14)
!49 = !DILocation(line: 52, column: 38, scope: !14)
!50 = !DILocation(line: 52, column: 43, scope: !14)
!51 = !DILocation(line: 52, column: 72, scope: !14)
!52 = !DILocation(line: 52, column: 7, scope: !14)
!53 = !DILocation(line: 55, column: 1, scope: !14)
!54 = distinct !{!54, !53}
!55 = !DILocation(line: 55, column: 1, scope: !56)
!56 = !DILexicalBlockFile(scope: !14, file: !15, discriminator: 1)
!57 = !DILocation(line: 55, column: 4, scope: !56)
!58 = !DILocation(line: 56, column: 27, scope: !59)
!59 = distinct !DILexicalBlock(scope: !14, file: !15, line: 56, column: 6)
!60 = !DILocation(line: 56, column: 33, scope: !59)
!61 = !DILocation(line: 56, column: 6, scope: !59)
!62 = !DILocation(line: 56, column: 42, scope: !59)
!63 = !DILocation(line: 56, column: 6, scope: !14)
!64 = !DILocation(line: 57, column: 2, scope: !65)
!65 = distinct !DILexicalBlock(scope: !59, file: !15, line: 56, column: 47)
!66 = !DILocation(line: 58, column: 3, scope: !65)
!67 = !DILocation(line: 60, column: 11, scope: !68)
!68 = distinct !DILexicalBlock(scope: !14, file: !15, line: 60, column: 2)
!69 = !DILocation(line: 60, column: 7, scope: !68)
!70 = !DILocation(line: 60, column: 16, scope: !71)
!71 = !DILexicalBlockFile(scope: !72, file: !15, discriminator: 1)
!72 = distinct !DILexicalBlock(scope: !68, file: !15, line: 60, column: 2)
!73 = !DILocation(line: 60, column: 22, scope: !71)
!74 = !DILocation(line: 60, column: 20, scope: !71)
!75 = !DILocation(line: 60, column: 2, scope: !71)
!76 = !DILocalVariable(name: "__cpu", scope: !77, file: !15, line: 61, type: !30)
!77 = distinct !DILexicalBlock(scope: !78, file: !15, line: 61, column: 23)
!78 = distinct !DILexicalBlock(scope: !79, file: !15, line: 61, column: 7)
!79 = distinct !DILexicalBlock(scope: !72, file: !15, line: 60, column: 42)
!80 = !DILocation(line: 61, column: 32, scope: !77)
!81 = !DILocation(line: 61, column: 7, scope: !77)
!82 = !DILocation(line: 61, column: 40, scope: !77)
!83 = !DILocation(line: 61, column: 10, scope: !77)
!84 = !DILocation(line: 61, column: 16, scope: !77)
!85 = !DILocation(line: 61, column: 20, scope: !77)
!86 = !DILocation(line: 61, column: 21, scope: !87)
!87 = !DILexicalBlockFile(scope: !77, file: !15, discriminator: 1)
!88 = !DILocation(line: 61, column: 28, scope: !87)
!89 = !DILocation(line: 61, column: 7, scope: !87)
!90 = !DILocation(line: 61, column: 10, scope: !87)
!91 = !DILocation(line: 61, column: 13, scope: !87)
!92 = !DILocation(line: 61, column: 81, scope: !87)
!93 = !DILocation(line: 61, column: 88, scope: !87)
!94 = !DILocation(line: 61, column: 76, scope: !87)
!95 = !DILocation(line: 61, column: 58, scope: !87)
!96 = !DILocation(line: 61, column: 120, scope: !87)
!97 = !DILocation(line: 61, column: 10, scope: !98)
!98 = !DILexicalBlockFile(scope: !77, file: !15, discriminator: 2)
!99 = !DILocation(line: 61, column: 10, scope: !100)
!100 = !DILexicalBlockFile(scope: !77, file: !15, discriminator: 3)
!101 = !DILocation(line: 61, column: 25, scope: !100)
!102 = !DILocation(line: 61, column: 130, scope: !100)
!103 = !DILocation(line: 61, column: 22, scope: !100)
!104 = !DILocation(line: 61, column: 7, scope: !100)
!105 = !DILocation(line: 62, column: 4, scope: !106)
!106 = distinct !DILexicalBlock(scope: !78, file: !15, line: 61, column: 40)
!107 = !DILocation(line: 63, column: 4, scope: !106)
!108 = !DILocation(line: 65, column: 28, scope: !79)
!109 = !DILocalVariable(name: "__cpu", scope: !110, file: !15, line: 66, type: !30)
!110 = distinct !DILexicalBlock(scope: !79, file: !15, line: 66, column: 25)
!111 = !DILocation(line: 66, column: 34, scope: !110)
!112 = !DILocation(line: 66, column: 9, scope: !110)
!113 = !DILocation(line: 66, column: 42, scope: !110)
!114 = !DILocation(line: 66, column: 12, scope: !110)
!115 = !DILocation(line: 66, column: 18, scope: !110)
!116 = !DILocation(line: 66, column: 22, scope: !110)
!117 = !DILocation(line: 66, column: 23, scope: !118)
!118 = !DILexicalBlockFile(scope: !110, file: !15, discriminator: 1)
!119 = !DILocation(line: 66, column: 30, scope: !118)
!120 = !DILocation(line: 66, column: 9, scope: !118)
!121 = !DILocation(line: 66, column: 12, scope: !118)
!122 = !DILocation(line: 66, column: 15, scope: !118)
!123 = !DILocation(line: 66, column: 83, scope: !118)
!124 = !DILocation(line: 66, column: 90, scope: !118)
!125 = !DILocation(line: 66, column: 78, scope: !118)
!126 = !DILocation(line: 66, column: 60, scope: !118)
!127 = !DILocation(line: 66, column: 122, scope: !118)
!128 = !DILocation(line: 66, column: 12, scope: !129)
!129 = !DILexicalBlockFile(scope: !110, file: !15, discriminator: 2)
!130 = !DILocation(line: 66, column: 12, scope: !131)
!131 = !DILexicalBlockFile(scope: !110, file: !15, discriminator: 3)
!132 = !DILocation(line: 66, column: 27, scope: !131)
!133 = !DILocation(line: 66, column: 132, scope: !131)
!134 = !DILocation(line: 66, column: 9, scope: !131)
!135 = !DILocation(line: 65, column: 3, scope: !136)
!136 = !DILexicalBlockFile(scope: !79, file: !15, discriminator: 1)
!137 = !DILocation(line: 68, column: 8, scope: !138)
!138 = distinct !DILexicalBlock(scope: !79, file: !15, line: 68, column: 7)
!139 = !DILocation(line: 68, column: 12, scope: !138)
!140 = !DILocation(line: 68, column: 19, scope: !138)
!141 = !DILocation(line: 68, column: 7, scope: !79)
!142 = !DILocation(line: 69, column: 4, scope: !138)
!143 = !DILocation(line: 71, column: 2, scope: !79)
!144 = !DILocation(line: 60, column: 36, scope: !145)
!145 = !DILexicalBlockFile(scope: !72, file: !15, discriminator: 2)
!146 = !DILocation(line: 60, column: 2, scope: !145)
!147 = distinct !{!147, !148}
!148 = !DILocation(line: 60, column: 2, scope: !14)
!149 = !DILocation(line: 72, column: 1, scope: !14)
!150 = !DILocation(line: 73, column: 1, scope: !14)
!151 = !DILocation(line: 73, column: 1, scope: !56)
!152 = distinct !DISubprogram(name: "pin_to_cpu", scope: !15, file: !15, line: 79, type: !153, isLocal: false, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!153 = !DISubroutineType(types: !154)
!154 = !{!34, !34}
!155 = !DILocalVariable(name: "run_cpu", arg: 1, scope: !152, file: !15, line: 79, type: !34)
!156 = !DILocation(line: 79, column: 20, scope: !152)
!157 = !DILocalVariable(name: "cpusetp", scope: !152, file: !15, line: 81, type: !19)
!158 = !DILocation(line: 81, column: 13, scope: !152)
!159 = !DILocalVariable(name: "size", scope: !152, file: !15, line: 82, type: !30)
!160 = !DILocation(line: 82, column: 9, scope: !152)
!161 = !DILocalVariable(name: "num_cpus", scope: !152, file: !15, line: 83, type: !34)
!162 = !DILocation(line: 83, column: 6, scope: !152)
!163 = !DILocation(line: 85, column: 11, scope: !152)
!164 = !DILocation(line: 86, column: 11, scope: !152)
!165 = !DILocation(line: 86, column: 10, scope: !152)
!166 = !DILocation(line: 87, column: 6, scope: !167)
!167 = distinct !DILexicalBlock(scope: !152, file: !15, line: 87, column: 6)
!168 = !DILocation(line: 87, column: 14, scope: !167)
!169 = !DILocation(line: 87, column: 6, scope: !152)
!170 = !DILocation(line: 88, column: 10, scope: !171)
!171 = distinct !DILexicalBlock(scope: !167, file: !15, line: 87, column: 22)
!172 = !DILocation(line: 88, column: 3, scope: !171)
!173 = !DILocation(line: 90, column: 8, scope: !152)
!174 = !DILocation(line: 90, column: 11, scope: !152)
!175 = !DILocation(line: 90, column: 10, scope: !152)
!176 = !DILocation(line: 90, column: 38, scope: !152)
!177 = !DILocation(line: 90, column: 43, scope: !152)
!178 = !DILocation(line: 90, column: 72, scope: !152)
!179 = !DILocation(line: 90, column: 7, scope: !152)
!180 = !DILocation(line: 92, column: 1, scope: !152)
!181 = distinct !{!181, !180}
!182 = !DILocation(line: 92, column: 1, scope: !183)
!183 = !DILexicalBlockFile(scope: !152, file: !15, discriminator: 1)
!184 = !DILocation(line: 92, column: 4, scope: !183)
!185 = !DILocalVariable(name: "__cpu", scope: !186, file: !15, line: 93, type: !30)
!186 = distinct !DILexicalBlock(scope: !152, file: !15, line: 93, column: 17)
!187 = !DILocation(line: 93, column: 26, scope: !186)
!188 = !DILocation(line: 93, column: 1, scope: !186)
!189 = !DILocation(line: 93, column: 34, scope: !186)
!190 = !DILocation(line: 93, column: 4, scope: !186)
!191 = !DILocation(line: 93, column: 10, scope: !186)
!192 = !DILocation(line: 93, column: 14, scope: !186)
!193 = !DILocation(line: 93, column: 76, scope: !194)
!194 = !DILexicalBlockFile(scope: !186, file: !15, discriminator: 1)
!195 = !DILocation(line: 93, column: 83, scope: !194)
!196 = !DILocation(line: 93, column: 71, scope: !194)
!197 = !DILocation(line: 93, column: 15, scope: !194)
!198 = !DILocation(line: 93, column: 22, scope: !194)
!199 = !DILocation(line: 93, column: 1, scope: !194)
!200 = !DILocation(line: 93, column: 4, scope: !194)
!201 = !DILocation(line: 93, column: 6, scope: !194)
!202 = !DILocation(line: 93, column: 52, scope: !194)
!203 = !DILocation(line: 93, column: 4, scope: !204)
!204 = !DILexicalBlockFile(scope: !186, file: !15, discriminator: 2)
!205 = !DILocation(line: 93, column: 4, scope: !206)
!206 = !DILexicalBlockFile(scope: !186, file: !15, discriminator: 3)
!207 = !DILocation(line: 93, column: 19, scope: !206)
!208 = !DILocation(line: 93, column: 119, scope: !206)
!209 = !DILocation(line: 94, column: 27, scope: !210)
!210 = distinct !DILexicalBlock(scope: !152, file: !15, line: 94, column: 6)
!211 = !DILocation(line: 94, column: 33, scope: !210)
!212 = !DILocation(line: 94, column: 6, scope: !210)
!213 = !DILocation(line: 94, column: 42, scope: !210)
!214 = !DILocation(line: 94, column: 6, scope: !152)
!215 = !DILocation(line: 95, column: 2, scope: !216)
!216 = distinct !DILexicalBlock(scope: !210, file: !15, line: 94, column: 47)
!217 = !DILocation(line: 96, column: 10, scope: !216)
!218 = !DILocation(line: 96, column: 3, scope: !216)
!219 = !DILocation(line: 100, column: 1, scope: !152)
!220 = !DILocation(line: 101, column: 9, scope: !152)
!221 = !DILocation(line: 101, column: 2, scope: !152)
!222 = !DILocation(line: 102, column: 1, scope: !152)
!223 = distinct !DISubprogram(name: "switch_cpu", scope: !15, file: !15, line: 104, type: !224, isLocal: false, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!224 = !DISubroutineType(types: !225)
!225 = !{!34, !34, !34}
!226 = !DILocalVariable(name: "cpu", arg: 1, scope: !223, file: !15, line: 104, type: !34)
!227 = !DILocation(line: 104, column: 20, scope: !223)
!228 = !DILocalVariable(name: "verbose", arg: 2, scope: !223, file: !15, line: 104, type: !34)
!229 = !DILocation(line: 104, column: 29, scope: !223)
!230 = !DILocalVariable(name: "new_cpu", scope: !223, file: !15, line: 106, type: !34)
!231 = !DILocation(line: 106, column: 6, scope: !223)
!232 = !DILocation(line: 109, column: 6, scope: !233)
!233 = distinct !DILexicalBlock(scope: !223, file: !15, line: 109, column: 6)
!234 = !DILocation(line: 109, column: 10, scope: !233)
!235 = !DILocation(line: 109, column: 6, scope: !223)
!236 = !DILocation(line: 110, column: 3, scope: !233)
!237 = !DILocation(line: 112, column: 6, scope: !238)
!238 = distinct !DILexicalBlock(scope: !223, file: !15, line: 112, column: 6)
!239 = !DILocation(line: 112, column: 6, scope: !223)
!240 = !DILocation(line: 113, column: 3, scope: !241)
!241 = distinct !DILexicalBlock(scope: !238, file: !15, line: 112, column: 15)
!242 = !DILocation(line: 114, column: 3, scope: !241)
!243 = !DILocation(line: 116, column: 10, scope: !241)
!244 = !DILocation(line: 116, column: 26, scope: !241)
!245 = !DILocation(line: 115, column: 3, scope: !241)
!246 = !DILocation(line: 117, column: 2, scope: !241)
!247 = !DILocation(line: 118, column: 23, scope: !223)
!248 = !DILocation(line: 118, column: 12, scope: !223)
!249 = !DILocation(line: 118, column: 10, scope: !223)
!250 = !DILocation(line: 119, column: 6, scope: !251)
!251 = distinct !DILexicalBlock(scope: !223, file: !15, line: 119, column: 6)
!252 = !DILocation(line: 119, column: 17, scope: !251)
!253 = !DILocation(line: 119, column: 14, scope: !251)
!254 = !DILocation(line: 119, column: 6, scope: !223)
!255 = !DILocation(line: 120, column: 10, scope: !256)
!256 = distinct !DILexicalBlock(scope: !251, file: !15, line: 119, column: 22)
!257 = !DILocation(line: 121, column: 16, scope: !256)
!258 = !DILocation(line: 121, column: 21, scope: !256)
!259 = !DILocation(line: 120, column: 3, scope: !256)
!260 = !DILocation(line: 122, column: 3, scope: !256)
!261 = !DILocation(line: 124, column: 6, scope: !262)
!262 = distinct !DILexicalBlock(scope: !223, file: !15, line: 124, column: 6)
!263 = !DILocation(line: 124, column: 6, scope: !223)
!264 = !DILocation(line: 125, column: 3, scope: !265)
!265 = distinct !DILexicalBlock(scope: !262, file: !15, line: 124, column: 15)
!266 = !DILocation(line: 126, column: 3, scope: !265)
!267 = !DILocation(line: 127, column: 33, scope: !265)
!268 = !DILocation(line: 127, column: 3, scope: !265)
!269 = !DILocation(line: 128, column: 2, scope: !265)
!270 = !DILocation(line: 129, column: 2, scope: !223)
!271 = !DILocation(line: 130, column: 1, scope: !223)
