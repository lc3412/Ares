; ModuleID = './[inter]lib--timer.o.i'
source_filename = "./[inter]lib--timer.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.timespec = type { i64, i64 }

@time_now = common global %struct.timeval zeroinitializer, align 8
@monotonic_gettimeofday.mono_offset = internal global %struct.timespec zeroinitializer, align 8
@monotonic_gettimeofday.initialised = internal global i8 0, align 1

; Function Attrs: nounwind uwtable
define { i64, i64 } @timer_add_long(i64, i64, i64) #0 !dbg !37 {
  %4 = alloca %struct.timeval, align 8
  %5 = alloca %struct.timeval, align 8
  %6 = alloca i64, align 8
  %7 = bitcast %struct.timeval* %5 to { i64, i64 }*
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 0
  store i64 %0, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 1
  store i64 %1, i64* %9, align 8
  call void @llvm.dbg.declare(metadata %struct.timeval* %5, metadata !41, metadata !42), !dbg !43
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !44, metadata !42), !dbg !45
  %10 = load i64, i64* %6, align 8, !dbg !46
  %11 = icmp eq i64 %10, -1, !dbg !48
  br i1 %11, label %12, label %17, !dbg !49

; <label>:12:                                     ; preds = %3
  %13 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1, !dbg !50
  store i64 999999, i64* %13, align 8, !dbg !52
  %14 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0, !dbg !53
  store i64 9223372036854775807, i64* %14, align 8, !dbg !54
  %15 = bitcast %struct.timeval* %4 to i8*, !dbg !55
  %16 = bitcast %struct.timeval* %5 to i8*, !dbg !55
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 16, i32 8, i1 false), !dbg !55
  br label %41, !dbg !56

; <label>:17:                                     ; preds = %3
  %18 = load i64, i64* %6, align 8, !dbg !57
  %19 = urem i64 %18, 1000000, !dbg !58
  %20 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1, !dbg !59
  %21 = load i64, i64* %20, align 8, !dbg !60
  %22 = add i64 %21, %19, !dbg !60
  store i64 %22, i64* %20, align 8, !dbg !60
  %23 = load i64, i64* %6, align 8, !dbg !61
  %24 = udiv i64 %23, 1000000, !dbg !62
  %25 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0, !dbg !63
  %26 = load i64, i64* %25, align 8, !dbg !64
  %27 = add i64 %26, %24, !dbg !64
  store i64 %27, i64* %25, align 8, !dbg !64
  %28 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1, !dbg !65
  %29 = load i64, i64* %28, align 8, !dbg !65
  %30 = icmp sge i64 %29, 1000000, !dbg !67
  br i1 %30, label %31, label %38, !dbg !68

; <label>:31:                                     ; preds = %17
  %32 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0, !dbg !69
  %33 = load i64, i64* %32, align 8, !dbg !71
  %34 = add nsw i64 %33, 1, !dbg !71
  store i64 %34, i64* %32, align 8, !dbg !71
  %35 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1, !dbg !72
  %36 = load i64, i64* %35, align 8, !dbg !73
  %37 = sub nsw i64 %36, 1000000, !dbg !73
  store i64 %37, i64* %35, align 8, !dbg !73
  br label %38, !dbg !74

; <label>:38:                                     ; preds = %31, %17
  %39 = bitcast %struct.timeval* %4 to i8*, !dbg !75
  %40 = bitcast %struct.timeval* %5 to i8*, !dbg !75
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 16, i32 8, i1 false), !dbg !75
  br label %41, !dbg !76

; <label>:41:                                     ; preds = %38, %12
  %42 = bitcast %struct.timeval* %4 to { i64, i64 }*, !dbg !77
  %43 = load { i64, i64 }, { i64, i64 }* %42, align 8, !dbg !77
  ret { i64, i64 } %43, !dbg !77
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define { i64, i64 } @timer_sub_long(i64, i64, i64) #0 !dbg !78 {
  %4 = alloca %struct.timeval, align 8
  %5 = alloca %struct.timeval, align 8
  %6 = alloca i64, align 8
  %7 = bitcast %struct.timeval* %5 to { i64, i64 }*
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 0
  store i64 %0, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 1
  store i64 %1, i64* %9, align 8
  call void @llvm.dbg.declare(metadata %struct.timeval* %5, metadata !79, metadata !42), !dbg !80
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !81, metadata !42), !dbg !82
  %10 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1, !dbg !83
  %11 = load i64, i64* %10, align 8, !dbg !83
  %12 = load i64, i64* %6, align 8, !dbg !85
  %13 = urem i64 %12, 1000000, !dbg !86
  %14 = icmp slt i64 %11, %13, !dbg !87
  br i1 %14, label %15, label %22, !dbg !88

; <label>:15:                                     ; preds = %3
  %16 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1, !dbg !89
  %17 = load i64, i64* %16, align 8, !dbg !91
  %18 = add nsw i64 %17, 1000000, !dbg !91
  store i64 %18, i64* %16, align 8, !dbg !91
  %19 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0, !dbg !92
  %20 = load i64, i64* %19, align 8, !dbg !93
  %21 = add nsw i64 %20, -1, !dbg !93
  store i64 %21, i64* %19, align 8, !dbg !93
  br label %22, !dbg !94

; <label>:22:                                     ; preds = %15, %3
  %23 = load i64, i64* %6, align 8, !dbg !95
  %24 = urem i64 %23, 1000000, !dbg !96
  %25 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1, !dbg !97
  %26 = load i64, i64* %25, align 8, !dbg !98
  %27 = sub i64 %26, %24, !dbg !98
  store i64 %27, i64* %25, align 8, !dbg !98
  %28 = load i64, i64* %6, align 8, !dbg !99
  %29 = udiv i64 %28, 1000000, !dbg !100
  %30 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0, !dbg !101
  %31 = load i64, i64* %30, align 8, !dbg !102
  %32 = sub i64 %31, %29, !dbg !102
  store i64 %32, i64* %30, align 8, !dbg !102
  %33 = bitcast %struct.timeval* %4 to i8*, !dbg !103
  %34 = bitcast %struct.timeval* %5 to i8*, !dbg !103
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 16, i32 8, i1 false), !dbg !103
  %35 = bitcast %struct.timeval* %4 to { i64, i64 }*, !dbg !104
  %36 = load { i64, i64 }, { i64, i64 }* %35, align 8, !dbg !104
  ret { i64, i64 } %36, !dbg !104
}

; Function Attrs: nounwind uwtable
define { i64, i64 } @timer_now() #0 !dbg !105 {
  %1 = alloca %struct.timeval, align 8
  %2 = alloca %struct.timeval, align 8
  call void @llvm.dbg.declare(metadata %struct.timeval* %2, metadata !108, metadata !42), !dbg !109
  %3 = call i32 @monotonic_gettimeofday(%struct.timeval* %2), !dbg !110
  %4 = bitcast %struct.timeval* %1 to i8*, !dbg !111
  %5 = bitcast %struct.timeval* %2 to i8*, !dbg !111
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 16, i32 8, i1 false), !dbg !111
  %6 = bitcast %struct.timeval* %1 to { i64, i64 }*, !dbg !112
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 8, !dbg !112
  ret { i64, i64 } %7, !dbg !112
}

; Function Attrs: nounwind uwtable
define internal i32 @monotonic_gettimeofday(%struct.timeval*) #0 !dbg !21 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.timeval*, align 8
  %4 = alloca %struct.timespec, align 8
  store %struct.timeval* %0, %struct.timeval** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.timeval** %3, metadata !113, metadata !42), !dbg !114
  call void @llvm.dbg.declare(metadata %struct.timespec* %4, metadata !115, metadata !42), !dbg !116
  %5 = load %struct.timeval*, %struct.timeval** %3, align 8, !dbg !117
  %6 = icmp ne %struct.timeval* %5, null, !dbg !117
  br i1 %6, label %9, label %7, !dbg !119

; <label>:7:                                      ; preds = %1
  %8 = call i32* @__errno_location() #1, !dbg !120
  store i32 14, i32* %8, align 4, !dbg !122
  store i32 -1, i32* %2, align 4, !dbg !123
  br label %43, !dbg !123

; <label>:9:                                      ; preds = %1
  %10 = load i8, i8* @monotonic_gettimeofday.initialised, align 1, !dbg !124
  %11 = trunc i8 %10 to i1, !dbg !124
  br i1 %11, label %13, label %12, !dbg !126

; <label>:12:                                     ; preds = %9
  call void @set_mono_offset(%struct.timespec* @monotonic_gettimeofday.mono_offset), !dbg !127
  store i8 1, i8* @monotonic_gettimeofday.initialised, align 1, !dbg !129
  br label %13, !dbg !130

; <label>:13:                                     ; preds = %12, %9
  %14 = call i32 @clock_gettime(i32 1, %struct.timespec* %4) #5, !dbg !131
  %15 = load i64, i64* getelementptr inbounds (%struct.timespec, %struct.timespec* @monotonic_gettimeofday.mono_offset, i32 0, i32 0), align 8, !dbg !132
  %16 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0, !dbg !133
  %17 = load i64, i64* %16, align 8, !dbg !134
  %18 = add nsw i64 %17, %15, !dbg !134
  store i64 %18, i64* %16, align 8, !dbg !134
  %19 = load i64, i64* getelementptr inbounds (%struct.timespec, %struct.timespec* @monotonic_gettimeofday.mono_offset, i32 0, i32 1), align 8, !dbg !135
  %20 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1, !dbg !136
  %21 = load i64, i64* %20, align 8, !dbg !137
  %22 = add nsw i64 %21, %19, !dbg !137
  store i64 %22, i64* %20, align 8, !dbg !137
  %23 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1, !dbg !138
  %24 = load i64, i64* %23, align 8, !dbg !138
  %25 = icmp sgt i64 %24, 1000000000, !dbg !140
  br i1 %25, label %26, label %33, !dbg !141

; <label>:26:                                     ; preds = %13
  %27 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1, !dbg !142
  %28 = load i64, i64* %27, align 8, !dbg !144
  %29 = sub nsw i64 %28, 1000000000, !dbg !144
  store i64 %29, i64* %27, align 8, !dbg !144
  %30 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0, !dbg !145
  %31 = load i64, i64* %30, align 8, !dbg !146
  %32 = add nsw i64 %31, 1, !dbg !146
  store i64 %32, i64* %30, align 8, !dbg !146
  br label %33, !dbg !147

; <label>:33:                                     ; preds = %26, %13
  %34 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0, !dbg !148
  %35 = load i64, i64* %34, align 8, !dbg !148
  %36 = load %struct.timeval*, %struct.timeval** %3, align 8, !dbg !150
  %37 = getelementptr inbounds %struct.timeval, %struct.timeval* %36, i32 0, i32 0, !dbg !148
  store i64 %35, i64* %37, align 8, !dbg !151
  %38 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1, !dbg !148
  %39 = load i64, i64* %38, align 8, !dbg !148
  %40 = sdiv i64 %39, 1000, !dbg !152
  %41 = load %struct.timeval*, %struct.timeval** %3, align 8, !dbg !150
  %42 = getelementptr inbounds %struct.timeval, %struct.timeval* %41, i32 0, i32 1, !dbg !148
  store i64 %40, i64* %42, align 8, !dbg !152
  store i32 0, i32* %2, align 4, !dbg !153
  br label %43, !dbg !153

; <label>:43:                                     ; preds = %33, %7
  %44 = load i32, i32* %2, align 4, !dbg !154
  ret i32 %44, !dbg !154
}

; Function Attrs: nounwind uwtable
define { i64, i64 } @set_time_now() #0 !dbg !155 {
  %1 = alloca %struct.timeval, align 8
  %2 = call i32 @monotonic_gettimeofday(%struct.timeval* @time_now), !dbg !156
  %3 = bitcast %struct.timeval* %1 to i8*, !dbg !157
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* bitcast (%struct.timeval* @time_now to i8*), i64 16, i32 8, i1 false), !dbg !157
  %4 = bitcast %struct.timeval* %1 to { i64, i64 }*, !dbg !158
  %5 = load { i64, i64 }, { i64, i64 }* %4, align 8, !dbg !158
  ret { i64, i64 } %5, !dbg !158
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

; Function Attrs: nounwind uwtable
define internal void @set_mono_offset(%struct.timespec*) #0 !dbg !159 {
  %2 = alloca %struct.timespec*, align 8
  %3 = alloca %struct.timespec, align 8
  %4 = alloca %struct.timespec, align 8
  %5 = alloca %struct.timespec, align 8
  store %struct.timespec* %0, %struct.timespec** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.timespec** %2, metadata !163, metadata !42), !dbg !164
  call void @llvm.dbg.declare(metadata %struct.timespec* %3, metadata !165, metadata !42), !dbg !166
  call void @llvm.dbg.declare(metadata %struct.timespec* %4, metadata !167, metadata !42), !dbg !168
  call void @llvm.dbg.declare(metadata %struct.timespec* %5, metadata !169, metadata !42), !dbg !170
  %6 = call i32 @clock_gettime(i32 0, %struct.timespec* %3) #5, !dbg !171
  %7 = call i32 @clock_gettime(i32 1, %struct.timespec* %5) #5, !dbg !172
  %8 = call i32 @clock_gettime(i32 0, %struct.timespec* %4) #5, !dbg !173
  %9 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 1, !dbg !174
  %10 = load i64, i64* %9, align 8, !dbg !174
  %11 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1, !dbg !175
  %12 = load i64, i64* %11, align 8, !dbg !175
  %13 = add nsw i64 %10, %12, !dbg !176
  %14 = sdiv i64 %13, 2, !dbg !177
  %15 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 1, !dbg !178
  store i64 %14, i64* %15, align 8, !dbg !179
  %16 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0, !dbg !180
  %17 = load i64, i64* %16, align 8, !dbg !180
  %18 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0, !dbg !182
  %19 = load i64, i64* %18, align 8, !dbg !182
  %20 = add nsw i64 %17, %19, !dbg !183
  %21 = and i64 %20, 1, !dbg !184
  %22 = icmp ne i64 %21, 0, !dbg !184
  br i1 %22, label %23, label %27, !dbg !185

; <label>:23:                                     ; preds = %1
  %24 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 1, !dbg !186
  %25 = load i64, i64* %24, align 8, !dbg !187
  %26 = add nsw i64 %25, 500000000, !dbg !187
  store i64 %26, i64* %24, align 8, !dbg !187
  br label %27, !dbg !188

; <label>:27:                                     ; preds = %23, %1
  %28 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0, !dbg !189
  %29 = load i64, i64* %28, align 8, !dbg !189
  %30 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0, !dbg !190
  %31 = load i64, i64* %30, align 8, !dbg !190
  %32 = add nsw i64 %29, %31, !dbg !191
  %33 = sdiv i64 %32, 2, !dbg !192
  %34 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0, !dbg !193
  store i64 %33, i64* %34, align 8, !dbg !194
  %35 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 1, !dbg !195
  %36 = load i64, i64* %35, align 8, !dbg !195
  %37 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 1, !dbg !197
  %38 = load i64, i64* %37, align 8, !dbg !197
  %39 = icmp slt i64 %36, %38, !dbg !198
  br i1 %39, label %40, label %47, !dbg !199

; <label>:40:                                     ; preds = %27
  %41 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 1, !dbg !200
  %42 = load i64, i64* %41, align 8, !dbg !202
  %43 = add nsw i64 %42, 1000000000, !dbg !202
  store i64 %43, i64* %41, align 8, !dbg !202
  %44 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0, !dbg !203
  %45 = load i64, i64* %44, align 8, !dbg !204
  %46 = add nsw i64 %45, -1, !dbg !204
  store i64 %46, i64* %44, align 8, !dbg !204
  br label %47, !dbg !205

; <label>:47:                                     ; preds = %40, %27
  %48 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0, !dbg !206
  %49 = load i64, i64* %48, align 8, !dbg !206
  %50 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0, !dbg !207
  %51 = load i64, i64* %50, align 8, !dbg !208
  %52 = sub nsw i64 %51, %49, !dbg !208
  store i64 %52, i64* %50, align 8, !dbg !208
  %53 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 1, !dbg !209
  %54 = load i64, i64* %53, align 8, !dbg !209
  %55 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 1, !dbg !210
  %56 = load i64, i64* %55, align 8, !dbg !211
  %57 = sub nsw i64 %56, %54, !dbg !211
  store i64 %57, i64* %55, align 8, !dbg !211
  %58 = load %struct.timespec*, %struct.timespec** %2, align 8, !dbg !212
  %59 = bitcast %struct.timespec* %58 to i8*, !dbg !213
  %60 = bitcast %struct.timespec* %3 to i8*, !dbg !213
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* %60, i64 16, i32 8, i1 false), !dbg !213
  ret void, !dbg !214
}

; Function Attrs: nounwind
declare i32 @clock_gettime(i32, %struct.timespec*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!34, !35}
!llvm.ident = !{!36}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !9)
!1 = !DIFile(filename: "[inter]lib--timer.o.i", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "suseconds_t", file: !5, line: 48, baseType: !6)
!5 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/select.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !7, line: 141, baseType: !8)
!7 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!8 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!9 = !{!10, !20, !32}
!10 = distinct !DIGlobalVariable(name: "time_now", scope: !0, file: !11, line: 37, type: !12, isLocal: false, isDefinition: true, variable: %struct.timeval* @time_now)
!11 = !DIFile(filename: "timer.c", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "timeval_t", file: !13, line: 31, baseType: !14)
!13 = !DIFile(filename: "timer.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !15, line: 30, size: 128, align: 64, elements: !16)
!15 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!16 = !{!17, !19}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !14, file: !15, line: 32, baseType: !18, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !7, line: 139, baseType: !8)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !14, file: !15, line: 33, baseType: !6, size: 64, align: 64, offset: 64)
!20 = distinct !DIGlobalVariable(name: "mono_offset", scope: !21, file: !11, line: 120, type: !26, isLocal: true, isDefinition: true, variable: %struct.timespec* @monotonic_gettimeofday.mono_offset)
!21 = distinct !DISubprogram(name: "monotonic_gettimeofday", scope: !11, file: !11, line: 118, type: !22, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!22 = !DISubroutineType(types: !23)
!23 = !{!24, !25}
!24 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !27, line: 120, size: 128, align: 64, elements: !28)
!27 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!28 = !{!29, !30}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !26, file: !27, line: 122, baseType: !18, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !26, file: !27, line: 123, baseType: !31, size: 64, align: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !7, line: 175, baseType: !8)
!32 = distinct !DIGlobalVariable(name: "initialised", scope: !21, file: !11, line: 121, type: !33, isLocal: true, isDefinition: true, variable: i8* @monotonic_gettimeofday.initialised)
!33 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!34 = !{i32 2, !"Dwarf Version", i32 4}
!35 = !{i32 2, !"Debug Info Version", i32 3}
!36 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!37 = distinct !DISubprogram(name: "timer_add_long", scope: !11, file: !11, line: 44, type: !38, isLocal: false, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!38 = !DISubroutineType(types: !39)
!39 = !{!12, !12, !40}
!40 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!41 = !DILocalVariable(name: "a", arg: 1, scope: !37, file: !11, line: 44, type: !12)
!42 = !DIExpression()
!43 = !DILocation(line: 44, column: 26, scope: !37)
!44 = !DILocalVariable(name: "b", arg: 2, scope: !37, file: !11, line: 44, type: !40)
!45 = !DILocation(line: 44, column: 43, scope: !37)
!46 = !DILocation(line: 46, column: 6, scope: !47)
!47 = distinct !DILexicalBlock(scope: !37, file: !11, line: 46, column: 6)
!48 = !DILocation(line: 46, column: 8, scope: !47)
!49 = !DILocation(line: 46, column: 6, scope: !37)
!50 = !DILocation(line: 48, column: 5, scope: !51)
!51 = distinct !DILexicalBlock(scope: !47, file: !11, line: 47, column: 2)
!52 = !DILocation(line: 48, column: 13, scope: !51)
!53 = !DILocation(line: 49, column: 5, scope: !51)
!54 = !DILocation(line: 49, column: 12, scope: !51)
!55 = !DILocation(line: 51, column: 10, scope: !51)
!56 = !DILocation(line: 51, column: 3, scope: !51)
!57 = !DILocation(line: 54, column: 15, scope: !37)
!58 = !DILocation(line: 54, column: 17, scope: !37)
!59 = !DILocation(line: 54, column: 4, scope: !37)
!60 = !DILocation(line: 54, column: 12, scope: !37)
!61 = !DILocation(line: 55, column: 14, scope: !37)
!62 = !DILocation(line: 55, column: 16, scope: !37)
!63 = !DILocation(line: 55, column: 4, scope: !37)
!64 = !DILocation(line: 55, column: 11, scope: !37)
!65 = !DILocation(line: 57, column: 8, scope: !66)
!66 = distinct !DILexicalBlock(scope: !37, file: !11, line: 57, column: 6)
!67 = !DILocation(line: 57, column: 16, scope: !66)
!68 = !DILocation(line: 57, column: 6, scope: !37)
!69 = !DILocation(line: 58, column: 5, scope: !70)
!70 = distinct !DILexicalBlock(scope: !66, file: !11, line: 57, column: 29)
!71 = !DILocation(line: 58, column: 11, scope: !70)
!72 = !DILocation(line: 59, column: 5, scope: !70)
!73 = !DILocation(line: 59, column: 13, scope: !70)
!74 = !DILocation(line: 60, column: 2, scope: !70)
!75 = !DILocation(line: 62, column: 9, scope: !37)
!76 = !DILocation(line: 62, column: 2, scope: !37)
!77 = !DILocation(line: 63, column: 1, scope: !37)
!78 = distinct !DISubprogram(name: "timer_sub_long", scope: !11, file: !11, line: 66, type: !38, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!79 = !DILocalVariable(name: "a", arg: 1, scope: !78, file: !11, line: 66, type: !12)
!80 = !DILocation(line: 66, column: 26, scope: !78)
!81 = !DILocalVariable(name: "b", arg: 2, scope: !78, file: !11, line: 66, type: !40)
!82 = !DILocation(line: 66, column: 43, scope: !78)
!83 = !DILocation(line: 68, column: 8, scope: !84)
!84 = distinct !DILexicalBlock(scope: !78, file: !11, line: 68, column: 6)
!85 = !DILocation(line: 68, column: 32, scope: !84)
!86 = !DILocation(line: 68, column: 34, scope: !84)
!87 = !DILocation(line: 68, column: 16, scope: !84)
!88 = !DILocation(line: 68, column: 6, scope: !78)
!89 = !DILocation(line: 69, column: 5, scope: !90)
!90 = distinct !DILexicalBlock(scope: !84, file: !11, line: 68, column: 47)
!91 = !DILocation(line: 69, column: 13, scope: !90)
!92 = !DILocation(line: 70, column: 5, scope: !90)
!93 = !DILocation(line: 70, column: 11, scope: !90)
!94 = !DILocation(line: 71, column: 2, scope: !90)
!95 = !DILocation(line: 72, column: 15, scope: !78)
!96 = !DILocation(line: 72, column: 17, scope: !78)
!97 = !DILocation(line: 72, column: 4, scope: !78)
!98 = !DILocation(line: 72, column: 12, scope: !78)
!99 = !DILocation(line: 73, column: 14, scope: !78)
!100 = !DILocation(line: 73, column: 16, scope: !78)
!101 = !DILocation(line: 73, column: 4, scope: !78)
!102 = !DILocation(line: 73, column: 11, scope: !78)
!103 = !DILocation(line: 75, column: 9, scope: !78)
!104 = !DILocation(line: 75, column: 2, scope: !78)
!105 = distinct !DISubprogram(name: "timer_now", scope: !11, file: !11, line: 154, type: !106, isLocal: false, isDefinition: true, scopeLine: 156, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!106 = !DISubroutineType(types: !107)
!107 = !{!12}
!108 = !DILocalVariable(name: "curr_time", scope: !105, file: !11, line: 157, type: !12)
!109 = !DILocation(line: 157, column: 12, scope: !105)
!110 = !DILocation(line: 160, column: 2, scope: !105)
!111 = !DILocation(line: 170, column: 9, scope: !105)
!112 = !DILocation(line: 170, column: 2, scope: !105)
!113 = !DILocalVariable(name: "now", arg: 1, scope: !21, file: !11, line: 118, type: !25)
!114 = !DILocation(line: 118, column: 35, scope: !21)
!115 = !DILocalVariable(name: "cur_time", scope: !21, file: !11, line: 122, type: !26)
!116 = !DILocation(line: 122, column: 18, scope: !21)
!117 = !DILocation(line: 124, column: 7, scope: !118)
!118 = distinct !DILexicalBlock(scope: !21, file: !11, line: 124, column: 6)
!119 = !DILocation(line: 124, column: 6, scope: !21)
!120 = !DILocation(line: 125, column: 4, scope: !121)
!121 = distinct !DILexicalBlock(scope: !118, file: !11, line: 124, column: 12)
!122 = !DILocation(line: 125, column: 8, scope: !121)
!123 = !DILocation(line: 126, column: 3, scope: !121)
!124 = !DILocation(line: 129, column: 7, scope: !125)
!125 = distinct !DILexicalBlock(scope: !21, file: !11, line: 129, column: 6)
!126 = !DILocation(line: 129, column: 6, scope: !21)
!127 = !DILocation(line: 130, column: 3, scope: !128)
!128 = distinct !DILexicalBlock(scope: !125, file: !11, line: 129, column: 20)
!129 = !DILocation(line: 131, column: 15, scope: !128)
!130 = !DILocation(line: 132, column: 2, scope: !128)
!131 = !DILocation(line: 136, column: 2, scope: !21)
!132 = !DILocation(line: 137, column: 33, scope: !21)
!133 = !DILocation(line: 137, column: 11, scope: !21)
!134 = !DILocation(line: 137, column: 18, scope: !21)
!135 = !DILocation(line: 138, column: 34, scope: !21)
!136 = !DILocation(line: 138, column: 11, scope: !21)
!137 = !DILocation(line: 138, column: 19, scope: !21)
!138 = !DILocation(line: 139, column: 15, scope: !139)
!139 = distinct !DILexicalBlock(scope: !21, file: !11, line: 139, column: 6)
!140 = !DILocation(line: 139, column: 23, scope: !139)
!141 = !DILocation(line: 139, column: 6, scope: !21)
!142 = !DILocation(line: 140, column: 12, scope: !143)
!143 = distinct !DILexicalBlock(scope: !139, file: !11, line: 139, column: 38)
!144 = !DILocation(line: 140, column: 20, scope: !143)
!145 = !DILocation(line: 141, column: 12, scope: !143)
!146 = !DILocation(line: 141, column: 18, scope: !143)
!147 = !DILocation(line: 142, column: 2, scope: !143)
!148 = !DILocation(line: 144, column: 4, scope: !149)
!149 = distinct !DILexicalBlock(scope: !21, file: !11, line: 144, column: 1)
!150 = !DILocation(line: 144, column: 1, scope: !149)
!151 = !DILocation(line: 144, column: 11, scope: !149)
!152 = !DILocation(line: 144, column: 12, scope: !149)
!153 = !DILocation(line: 146, column: 2, scope: !21)
!154 = !DILocation(line: 147, column: 1, scope: !21)
!155 = distinct !DISubprogram(name: "set_time_now", scope: !11, file: !11, line: 178, type: !106, isLocal: false, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!156 = !DILocation(line: 182, column: 2, scope: !155)
!157 = !DILocation(line: 192, column: 9, scope: !155)
!158 = !DILocation(line: 192, column: 2, scope: !155)
!159 = distinct !DISubprogram(name: "set_mono_offset", scope: !11, file: !11, line: 79, type: !160, isLocal: true, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!160 = !DISubroutineType(types: !161)
!161 = !{null, !162}
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!163 = !DILocalVariable(name: "ts", arg: 1, scope: !159, file: !11, line: 79, type: !162)
!164 = !DILocation(line: 79, column: 34, scope: !159)
!165 = !DILocalVariable(name: "realtime", scope: !159, file: !11, line: 81, type: !26)
!166 = !DILocation(line: 81, column: 18, scope: !159)
!167 = !DILocalVariable(name: "realtime_1", scope: !159, file: !11, line: 81, type: !26)
!168 = !DILocation(line: 81, column: 28, scope: !159)
!169 = !DILocalVariable(name: "mono_offset", scope: !159, file: !11, line: 81, type: !26)
!170 = !DILocation(line: 81, column: 40, scope: !159)
!171 = !DILocation(line: 87, column: 2, scope: !159)
!172 = !DILocation(line: 88, column: 2, scope: !159)
!173 = !DILocation(line: 89, column: 2, scope: !159)
!174 = !DILocation(line: 92, column: 31, scope: !159)
!175 = !DILocation(line: 92, column: 52, scope: !159)
!176 = !DILocation(line: 92, column: 39, scope: !159)
!177 = !DILocation(line: 92, column: 61, scope: !159)
!178 = !DILocation(line: 92, column: 11, scope: !159)
!179 = !DILocation(line: 92, column: 19, scope: !159)
!180 = !DILocation(line: 93, column: 16, scope: !181)
!181 = distinct !DILexicalBlock(scope: !159, file: !11, line: 93, column: 6)
!182 = !DILocation(line: 93, column: 36, scope: !181)
!183 = !DILocation(line: 93, column: 23, scope: !181)
!184 = !DILocation(line: 93, column: 44, scope: !181)
!185 = !DILocation(line: 93, column: 6, scope: !159)
!186 = !DILocation(line: 94, column: 12, scope: !181)
!187 = !DILocation(line: 94, column: 20, scope: !181)
!188 = !DILocation(line: 94, column: 3, scope: !181)
!189 = !DILocation(line: 95, column: 30, scope: !159)
!190 = !DILocation(line: 95, column: 50, scope: !159)
!191 = !DILocation(line: 95, column: 37, scope: !159)
!192 = !DILocation(line: 95, column: 58, scope: !159)
!193 = !DILocation(line: 95, column: 11, scope: !159)
!194 = !DILocation(line: 95, column: 18, scope: !159)
!195 = !DILocation(line: 97, column: 15, scope: !196)
!196 = distinct !DILexicalBlock(scope: !159, file: !11, line: 97, column: 6)
!197 = !DILocation(line: 97, column: 37, scope: !196)
!198 = !DILocation(line: 97, column: 23, scope: !196)
!199 = !DILocation(line: 97, column: 6, scope: !159)
!200 = !DILocation(line: 98, column: 12, scope: !201)
!201 = distinct !DILexicalBlock(scope: !196, file: !11, line: 97, column: 46)
!202 = !DILocation(line: 98, column: 20, scope: !201)
!203 = !DILocation(line: 99, column: 12, scope: !201)
!204 = !DILocation(line: 99, column: 18, scope: !201)
!205 = !DILocation(line: 100, column: 2, scope: !201)
!206 = !DILocation(line: 101, column: 33, scope: !159)
!207 = !DILocation(line: 101, column: 11, scope: !159)
!208 = !DILocation(line: 101, column: 18, scope: !159)
!209 = !DILocation(line: 102, column: 34, scope: !159)
!210 = !DILocation(line: 102, column: 11, scope: !159)
!211 = !DILocation(line: 102, column: 19, scope: !159)
!212 = !DILocation(line: 104, column: 3, scope: !159)
!213 = !DILocation(line: 104, column: 8, scope: !159)
!214 = !DILocation(line: 105, column: 1, scope: !159)
