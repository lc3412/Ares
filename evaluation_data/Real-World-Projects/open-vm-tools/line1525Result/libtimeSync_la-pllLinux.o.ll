; ModuleID = './libtimeSync_la-pllLinux.o.i'
source_filename = "./libtimeSync_la-pllLinux.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timex = type { i32, i64, i64, i64, i64, i32, i64, i64, i64, %struct.timeval, i64, i64, i64, i32, i64, i64, i64, i64, i64, i32, [44 x i8] }
%struct.timeval = type { i64, i64 }

@.str = private unnamed_addr constant [9 x i8] c"timeSync\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"%s: adjtimex failed: %d %s\0A\00", align 1
@__FUNCTION__.TimeSync_PLLSetFrequency = private unnamed_addr constant [25 x i8] c"TimeSync_PLLSetFrequency\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"%s: clamped offset at -500000\0A\00", align 1
@__FUNCTION__.TimeSync_PLLUpdate = private unnamed_addr constant [19 x i8] c"TimeSync_PLLUpdate\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"%s: clamped offset at 500000\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"%s: adjtimex set offset failed: %d %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"%s: adjtimex set time constant failed: %d %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Set PLL time constant\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"%s: adjtimex set status failed: %d %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"Set PLL status\0A\00", align 1
@.str.9 = private unnamed_addr constant [102 x i8] c"%s : off %ld freq %ld maxerr %ld esterr %ld status %d const %ld precision %ld tolerance %ld tick %ld\0A\00", align 1

; Function Attrs: nounwind uwtable
define signext i8 @TimeSync_PLLSupported() #0 !dbg !18 {
  ret i8 1, !dbg !26
}

; Function Attrs: nounwind uwtable
define signext i8 @TimeSync_PLLSetFrequency(i64) #0 !dbg !27 {
  %2 = alloca i8, align 1
  %3 = alloca i64, align 8
  %4 = alloca %struct.timex, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !34, metadata !35), !dbg !36
  call void @llvm.dbg.declare(metadata %struct.timex* %4, metadata !37, metadata !35), !dbg !72
  call void @llvm.dbg.declare(metadata i32* %5, metadata !73, metadata !35), !dbg !74
  %6 = getelementptr inbounds %struct.timex, %struct.timex* %4, i32 0, i32 0, !dbg !75
  store i32 2, i32* %6, align 8, !dbg !76
  %7 = load i64, i64* %3, align 8, !dbg !77
  %8 = getelementptr inbounds %struct.timex, %struct.timex* %4, i32 0, i32 2, !dbg !78
  store i64 %7, i64* %8, align 8, !dbg !79
  %9 = call i32 @adjtimex(%struct.timex* %4) #5, !dbg !80
  store i32 %9, i32* %5, align 4, !dbg !81
  %10 = load i32, i32* %5, align 4, !dbg !82
  %11 = icmp eq i32 %10, -1, !dbg !84
  br i1 %11, label %12, label %17, !dbg !85

; <label>:12:                                     ; preds = %1
  %13 = load i32, i32* %5, align 4, !dbg !86
  %14 = call i32* @__errno_location() #1, !dbg !88
  %15 = load i32, i32* %14, align 4, !dbg !89
  %16 = call i8* @strerror(i32 %15) #5, !dbg !90
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.TimeSync_PLLSetFrequency, i32 0, i32 0), i32 %13, i8* %16), !dbg !92
  store i8 0, i8* %2, align 1, !dbg !94
  br label %18, !dbg !94

; <label>:17:                                     ; preds = %1
  call void @TimeSyncLogPLLState(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.TimeSync_PLLSetFrequency, i32 0, i32 0), %struct.timex* %4), !dbg !95
  store i8 1, i8* %2, align 1, !dbg !96
  br label %18, !dbg !96

; <label>:18:                                     ; preds = %17, %12
  %19 = load i8, i8* %2, align 1, !dbg !97
  ret i8 %19, !dbg !97
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @adjtimex(%struct.timex*) #2

declare void @g_log(i8*, i32, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @strerror(i32) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

; Function Attrs: nounwind uwtable
define internal void @TimeSyncLogPLLState(i8*, %struct.timex*) #0 !dbg !98 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.timex*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !104, metadata !35), !dbg !105
  store %struct.timex* %1, %struct.timex** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.timex** %4, metadata !106, metadata !35), !dbg !107
  %5 = load i8*, i8** %3, align 8, !dbg !108
  %6 = load %struct.timex*, %struct.timex** %4, align 8, !dbg !109
  %7 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 1, !dbg !110
  %8 = load i64, i64* %7, align 8, !dbg !110
  %9 = load %struct.timex*, %struct.timex** %4, align 8, !dbg !111
  %10 = getelementptr inbounds %struct.timex, %struct.timex* %9, i32 0, i32 2, !dbg !112
  %11 = load i64, i64* %10, align 8, !dbg !112
  %12 = load %struct.timex*, %struct.timex** %4, align 8, !dbg !113
  %13 = getelementptr inbounds %struct.timex, %struct.timex* %12, i32 0, i32 3, !dbg !114
  %14 = load i64, i64* %13, align 8, !dbg !114
  %15 = load %struct.timex*, %struct.timex** %4, align 8, !dbg !115
  %16 = getelementptr inbounds %struct.timex, %struct.timex* %15, i32 0, i32 4, !dbg !116
  %17 = load i64, i64* %16, align 8, !dbg !116
  %18 = load %struct.timex*, %struct.timex** %4, align 8, !dbg !117
  %19 = getelementptr inbounds %struct.timex, %struct.timex* %18, i32 0, i32 5, !dbg !118
  %20 = load i32, i32* %19, align 8, !dbg !118
  %21 = load %struct.timex*, %struct.timex** %4, align 8, !dbg !119
  %22 = getelementptr inbounds %struct.timex, %struct.timex* %21, i32 0, i32 6, !dbg !120
  %23 = load i64, i64* %22, align 8, !dbg !120
  %24 = load %struct.timex*, %struct.timex** %4, align 8, !dbg !121
  %25 = getelementptr inbounds %struct.timex, %struct.timex* %24, i32 0, i32 7, !dbg !122
  %26 = load i64, i64* %25, align 8, !dbg !122
  %27 = load %struct.timex*, %struct.timex** %4, align 8, !dbg !123
  %28 = getelementptr inbounds %struct.timex, %struct.timex* %27, i32 0, i32 8, !dbg !124
  %29 = load i64, i64* %28, align 8, !dbg !124
  %30 = load %struct.timex*, %struct.timex** %4, align 8, !dbg !125
  %31 = getelementptr inbounds %struct.timex, %struct.timex* %30, i32 0, i32 10, !dbg !126
  %32 = load i64, i64* %31, align 8, !dbg !126
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.9, i32 0, i32 0), i8* %5, i64 %8, i64 %11, i64 %14, i64 %17, i32 %20, i64 %23, i64 %26, i64 %29, i64 %32), !dbg !127
  ret void, !dbg !128
}

; Function Attrs: nounwind uwtable
define signext i8 @TimeSync_PLLUpdate(i64) #0 !dbg !129 {
  %2 = alloca i8, align 1
  %3 = alloca i64, align 8
  %4 = alloca %struct.timex, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !130, metadata !35), !dbg !131
  call void @llvm.dbg.declare(metadata %struct.timex* %4, metadata !132, metadata !35), !dbg !133
  call void @llvm.dbg.declare(metadata i32* %5, metadata !134, metadata !35), !dbg !135
  %6 = load i64, i64* %3, align 8, !dbg !136
  %7 = icmp slt i64 %6, -500000, !dbg !138
  br i1 %7, label %8, label %9, !dbg !139

; <label>:8:                                      ; preds = %1
  store i64 -500000, i64* %3, align 8, !dbg !140
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.TimeSync_PLLUpdate, i32 0, i32 0)), !dbg !142
  br label %9, !dbg !143

; <label>:9:                                      ; preds = %8, %1
  %10 = load i64, i64* %3, align 8, !dbg !144
  %11 = icmp sgt i64 %10, 500000, !dbg !146
  br i1 %11, label %12, label %13, !dbg !147

; <label>:12:                                     ; preds = %9
  store i64 500000, i64* %3, align 8, !dbg !148
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.TimeSync_PLLUpdate, i32 0, i32 0)), !dbg !150
  br label %13, !dbg !151

; <label>:13:                                     ; preds = %12, %9
  %14 = getelementptr inbounds %struct.timex, %struct.timex* %4, i32 0, i32 0, !dbg !152
  store i32 13, i32* %14, align 8, !dbg !153
  %15 = load i64, i64* %3, align 8, !dbg !154
  %16 = getelementptr inbounds %struct.timex, %struct.timex* %4, i32 0, i32 1, !dbg !155
  store i64 %15, i64* %16, align 8, !dbg !156
  %17 = getelementptr inbounds %struct.timex, %struct.timex* %4, i32 0, i32 4, !dbg !157
  store i64 0, i64* %17, align 8, !dbg !158
  %18 = getelementptr inbounds %struct.timex, %struct.timex* %4, i32 0, i32 3, !dbg !159
  store i64 0, i64* %18, align 8, !dbg !160
  %19 = call i32 @adjtimex(%struct.timex* %4) #5, !dbg !161
  store i32 %19, i32* %5, align 4, !dbg !162
  %20 = load i32, i32* %5, align 4, !dbg !163
  %21 = icmp eq i32 %20, -1, !dbg !165
  br i1 %21, label %22, label %27, !dbg !166

; <label>:22:                                     ; preds = %13
  %23 = load i32, i32* %5, align 4, !dbg !167
  %24 = call i32* @__errno_location() #1, !dbg !169
  %25 = load i32, i32* %24, align 4, !dbg !170
  %26 = call i8* @strerror(i32 %25) #5, !dbg !171
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.TimeSync_PLLUpdate, i32 0, i32 0), i32 %23, i8* %26), !dbg !173
  store i8 0, i8* %2, align 1, !dbg !175
  br label %66, !dbg !175

; <label>:27:                                     ; preds = %13
  call void @TimeSyncLogPLLState(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.TimeSync_PLLUpdate, i32 0, i32 0), %struct.timex* %4), !dbg !176
  %28 = getelementptr inbounds %struct.timex, %struct.timex* %4, i32 0, i32 6, !dbg !177
  %29 = load i64, i64* %28, align 8, !dbg !177
  %30 = icmp ne i64 %29, 4, !dbg !179
  br i1 %30, label %31, label %43, !dbg !180

; <label>:31:                                     ; preds = %27
  %32 = getelementptr inbounds %struct.timex, %struct.timex* %4, i32 0, i32 0, !dbg !181
  store i32 32, i32* %32, align 8, !dbg !183
  %33 = getelementptr inbounds %struct.timex, %struct.timex* %4, i32 0, i32 6, !dbg !184
  store i64 0, i64* %33, align 8, !dbg !185
  %34 = call i32 @adjtimex(%struct.timex* %4) #5, !dbg !186
  store i32 %34, i32* %5, align 4, !dbg !187
  %35 = load i32, i32* %5, align 4, !dbg !188
  %36 = icmp eq i32 %35, -1, !dbg !190
  br i1 %36, label %37, label %42, !dbg !191

; <label>:37:                                     ; preds = %31
  %38 = load i32, i32* %5, align 4, !dbg !192
  %39 = call i32* @__errno_location() #1, !dbg !194
  %40 = load i32, i32* %39, align 4, !dbg !195
  %41 = call i8* @strerror(i32 %40) #5, !dbg !196
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.TimeSync_PLLUpdate, i32 0, i32 0), i32 %38, i8* %41), !dbg !198
  store i8 0, i8* %2, align 1, !dbg !200
  br label %66, !dbg !200

; <label>:42:                                     ; preds = %31
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0)), !dbg !201
  call void @TimeSyncLogPLLState(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.TimeSync_PLLUpdate, i32 0, i32 0), %struct.timex* %4), !dbg !202
  br label %43, !dbg !203

; <label>:43:                                     ; preds = %42, %27
  %44 = getelementptr inbounds %struct.timex, %struct.timex* %4, i32 0, i32 5, !dbg !204
  %45 = load i32, i32* %44, align 8, !dbg !204
  %46 = and i32 %45, 1, !dbg !206
  %47 = icmp ne i32 %46, 1, !dbg !207
  br i1 %47, label %53, label %48, !dbg !208

; <label>:48:                                     ; preds = %43
  %49 = getelementptr inbounds %struct.timex, %struct.timex* %4, i32 0, i32 5, !dbg !209
  %50 = load i32, i32* %49, align 8, !dbg !209
  %51 = and i32 %50, 64, !dbg !211
  %52 = icmp ne i32 %51, 0, !dbg !212
  br i1 %52, label %53, label %65, !dbg !213

; <label>:53:                                     ; preds = %48, %43
  %54 = getelementptr inbounds %struct.timex, %struct.timex* %4, i32 0, i32 0, !dbg !214
  store i32 16, i32* %54, align 8, !dbg !216
  %55 = getelementptr inbounds %struct.timex, %struct.timex* %4, i32 0, i32 5, !dbg !217
  store i32 1, i32* %55, align 8, !dbg !218
  %56 = call i32 @adjtimex(%struct.timex* %4) #5, !dbg !219
  store i32 %56, i32* %5, align 4, !dbg !220
  %57 = load i32, i32* %5, align 4, !dbg !221
  %58 = icmp eq i32 %57, -1, !dbg !223
  br i1 %58, label %59, label %64, !dbg !224

; <label>:59:                                     ; preds = %53
  %60 = load i32, i32* %5, align 4, !dbg !225
  %61 = call i32* @__errno_location() #1, !dbg !227
  %62 = load i32, i32* %61, align 4, !dbg !228
  %63 = call i8* @strerror(i32 %62) #5, !dbg !229
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.TimeSync_PLLUpdate, i32 0, i32 0), i32 %60, i8* %63), !dbg !231
  store i8 0, i8* %2, align 1, !dbg !233
  br label %66, !dbg !233

; <label>:64:                                     ; preds = %53
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0)), !dbg !234
  call void @TimeSyncLogPLLState(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.TimeSync_PLLUpdate, i32 0, i32 0), %struct.timex* %4), !dbg !235
  br label %65, !dbg !236

; <label>:65:                                     ; preds = %64, %48
  store i8 1, i8* %2, align 1, !dbg !237
  br label %66, !dbg !237

; <label>:66:                                     ; preds = %65, %59, %37, %22
  %67 = load i8, i8* %2, align 1, !dbg !238
  ret i8 %67, !dbg !238
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "libtimeSync_la-pllLinux.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1525")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 51, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/open-vm-tools/line1525")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14}
!6 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!7 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!8 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!9 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!10 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!11 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!12 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!13 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!14 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!15 = !{i32 2, !"Dwarf Version", i32 4}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!18 = distinct !DISubprogram(name: "TimeSync_PLLSupported", scope: !19, file: !19, line: 60, type: !20, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !25)
!19 = !DIFile(filename: "pllLinux.c", directory: "/home/lichi/Desktop/open-vm-tools/line1525")
!20 = !DISubroutineType(types: !21)
!21 = !{!22}
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !23, line: 230, baseType: !24)
!23 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1525")
!24 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!25 = !{}
!26 = !DILocation(line: 62, column: 4, scope: !18)
!27 = distinct !DISubprogram(name: "TimeSync_PLLSetFrequency", scope: !19, file: !19, line: 82, type: !28, isLocal: false, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !25)
!28 = !DISubroutineType(types: !29)
!29 = !{!22, !30}
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !23, line: 172, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !32, line: 40, baseType: !33)
!32 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line1525")
!33 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!34 = !DILocalVariable(name: "ppmCorrection", arg: 1, scope: !27, file: !19, line: 82, type: !30)
!35 = !DIExpression()
!36 = !DILocation(line: 82, column: 32, scope: !27)
!37 = !DILocalVariable(name: "tx", scope: !27, file: !19, line: 84, type: !38)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timex", file: !39, line: 25, size: 1664, align: 64, elements: !40)
!39 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/timex.h", directory: "/home/lichi/Desktop/open-vm-tools/line1525")
!40 = !{!41, !43, !46, !47, !48, !49, !51, !52, !53, !54, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !38, file: !39, line: 27, baseType: !42, size: 32, align: 32)
!42 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !38, file: !39, line: 28, baseType: !44, size: 64, align: 64, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !45, line: 175, baseType: !33)
!45 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1525")
!46 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !38, file: !39, line: 29, baseType: !44, size: 64, align: 64, offset: 128)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "maxerror", scope: !38, file: !39, line: 30, baseType: !44, size: 64, align: 64, offset: 192)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "esterror", scope: !38, file: !39, line: 31, baseType: !44, size: 64, align: 64, offset: 256)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !38, file: !39, line: 32, baseType: !50, size: 32, align: 32, offset: 320)
!50 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !38, file: !39, line: 33, baseType: !44, size: 64, align: 64, offset: 384)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !38, file: !39, line: 34, baseType: !44, size: 64, align: 64, offset: 448)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "tolerance", scope: !38, file: !39, line: 35, baseType: !44, size: 64, align: 64, offset: 512)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !38, file: !39, line: 36, baseType: !55, size: 128, align: 64, offset: 576)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !56, line: 30, size: 128, align: 64, elements: !57)
!56 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/open-vm-tools/line1525")
!57 = !{!58, !60}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !55, file: !56, line: 32, baseType: !59, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !45, line: 139, baseType: !33)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !55, file: !56, line: 33, baseType: !61, size: 64, align: 64, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !45, line: 141, baseType: !33)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "tick", scope: !38, file: !39, line: 37, baseType: !44, size: 64, align: 64, offset: 704)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "ppsfreq", scope: !38, file: !39, line: 38, baseType: !44, size: 64, align: 64, offset: 768)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "jitter", scope: !38, file: !39, line: 39, baseType: !44, size: 64, align: 64, offset: 832)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !38, file: !39, line: 40, baseType: !50, size: 32, align: 32, offset: 896)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "stabil", scope: !38, file: !39, line: 41, baseType: !44, size: 64, align: 64, offset: 960)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "jitcnt", scope: !38, file: !39, line: 42, baseType: !44, size: 64, align: 64, offset: 1024)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "calcnt", scope: !38, file: !39, line: 43, baseType: !44, size: 64, align: 64, offset: 1088)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "errcnt", scope: !38, file: !39, line: 44, baseType: !44, size: 64, align: 64, offset: 1152)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "stbcnt", scope: !38, file: !39, line: 45, baseType: !44, size: 64, align: 64, offset: 1216)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "tai", scope: !38, file: !39, line: 47, baseType: !50, size: 32, align: 32, offset: 1280)
!72 = !DILocation(line: 84, column: 17, scope: !27)
!73 = !DILocalVariable(name: "error", scope: !27, file: !19, line: 85, type: !50)
!74 = !DILocation(line: 85, column: 8, scope: !27)
!75 = !DILocation(line: 87, column: 7, scope: !27)
!76 = !DILocation(line: 87, column: 13, scope: !27)
!77 = !DILocation(line: 88, column: 14, scope: !27)
!78 = !DILocation(line: 88, column: 7, scope: !27)
!79 = !DILocation(line: 88, column: 12, scope: !27)
!80 = !DILocation(line: 90, column: 12, scope: !27)
!81 = !DILocation(line: 90, column: 10, scope: !27)
!82 = !DILocation(line: 91, column: 8, scope: !83)
!83 = distinct !DILexicalBlock(scope: !27, file: !19, line: 91, column: 8)
!84 = !DILocation(line: 91, column: 14, scope: !83)
!85 = !DILocation(line: 91, column: 8, scope: !27)
!86 = !DILocation(line: 92, column: 91, scope: !87)
!87 = distinct !DILexicalBlock(scope: !83, file: !19, line: 91, column: 21)
!88 = !DILocation(line: 92, column: 8, scope: !87)
!89 = !DILocation(line: 92, column: 7, scope: !87)
!90 = !DILocation(line: 92, column: 98, scope: !91)
!91 = !DILexicalBlockFile(scope: !87, file: !19, discriminator: 1)
!92 = !DILocation(line: 92, column: 7, scope: !93)
!93 = !DILexicalBlockFile(scope: !87, file: !19, discriminator: 2)
!94 = !DILocation(line: 94, column: 10, scope: !87)
!95 = !DILocation(line: 96, column: 4, scope: !27)
!96 = !DILocation(line: 98, column: 4, scope: !27)
!97 = !DILocation(line: 99, column: 1, scope: !27)
!98 = distinct !DISubprogram(name: "TimeSyncLogPLLState", scope: !19, file: !19, line: 39, type: !99, isLocal: true, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !25)
!99 = !DISubroutineType(types: !100)
!100 = !{null, !101, !103}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64, align: 64)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!104 = !DILocalVariable(name: "prefix", arg: 1, scope: !98, file: !19, line: 39, type: !101)
!105 = !DILocation(line: 39, column: 33, scope: !98)
!106 = !DILocalVariable(name: "tx", arg: 2, scope: !98, file: !19, line: 39, type: !103)
!107 = !DILocation(line: 39, column: 55, scope: !98)
!108 = !DILocation(line: 41, column: 151, scope: !98)
!109 = !DILocation(line: 41, column: 159, scope: !98)
!110 = !DILocation(line: 41, column: 163, scope: !98)
!111 = !DILocation(line: 41, column: 171, scope: !98)
!112 = !DILocation(line: 41, column: 175, scope: !98)
!113 = !DILocation(line: 41, column: 181, scope: !98)
!114 = !DILocation(line: 41, column: 185, scope: !98)
!115 = !DILocation(line: 41, column: 195, scope: !98)
!116 = !DILocation(line: 41, column: 199, scope: !98)
!117 = !DILocation(line: 41, column: 209, scope: !98)
!118 = !DILocation(line: 41, column: 213, scope: !98)
!119 = !DILocation(line: 41, column: 221, scope: !98)
!120 = !DILocation(line: 41, column: 225, scope: !98)
!121 = !DILocation(line: 41, column: 235, scope: !98)
!122 = !DILocation(line: 41, column: 239, scope: !98)
!123 = !DILocation(line: 41, column: 250, scope: !98)
!124 = !DILocation(line: 41, column: 254, scope: !98)
!125 = !DILocation(line: 41, column: 265, scope: !98)
!126 = !DILocation(line: 41, column: 269, scope: !98)
!127 = !DILocation(line: 41, column: 4, scope: !98)
!128 = !DILocation(line: 45, column: 1, scope: !98)
!129 = distinct !DISubprogram(name: "TimeSync_PLLUpdate", scope: !19, file: !19, line: 116, type: !28, isLocal: false, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !25)
!130 = !DILocalVariable(name: "offset", arg: 1, scope: !129, file: !19, line: 116, type: !30)
!131 = !DILocation(line: 116, column: 26, scope: !129)
!132 = !DILocalVariable(name: "tx", scope: !129, file: !19, line: 118, type: !38)
!133 = !DILocation(line: 118, column: 17, scope: !129)
!134 = !DILocalVariable(name: "error", scope: !129, file: !19, line: 119, type: !50)
!135 = !DILocation(line: 119, column: 8, scope: !129)
!136 = !DILocation(line: 121, column: 8, scope: !137)
!137 = distinct !DILexicalBlock(scope: !129, file: !19, line: 121, column: 8)
!138 = !DILocation(line: 121, column: 15, scope: !137)
!139 = !DILocation(line: 121, column: 8, scope: !129)
!140 = !DILocation(line: 122, column: 14, scope: !141)
!141 = distinct !DILexicalBlock(scope: !137, file: !19, line: 121, column: 26)
!142 = !DILocation(line: 123, column: 7, scope: !141)
!143 = !DILocation(line: 124, column: 4, scope: !141)
!144 = !DILocation(line: 125, column: 8, scope: !145)
!145 = distinct !DILexicalBlock(scope: !129, file: !19, line: 125, column: 8)
!146 = !DILocation(line: 125, column: 15, scope: !145)
!147 = !DILocation(line: 125, column: 8, scope: !129)
!148 = !DILocation(line: 126, column: 14, scope: !149)
!149 = distinct !DILexicalBlock(scope: !145, file: !19, line: 125, column: 25)
!150 = !DILocation(line: 127, column: 7, scope: !149)
!151 = !DILocation(line: 128, column: 4, scope: !149)
!152 = !DILocation(line: 131, column: 7, scope: !129)
!153 = !DILocation(line: 131, column: 13, scope: !129)
!154 = !DILocation(line: 132, column: 16, scope: !129)
!155 = !DILocation(line: 132, column: 7, scope: !129)
!156 = !DILocation(line: 132, column: 14, scope: !129)
!157 = !DILocation(line: 133, column: 7, scope: !129)
!158 = !DILocation(line: 133, column: 16, scope: !129)
!159 = !DILocation(line: 134, column: 7, scope: !129)
!160 = !DILocation(line: 134, column: 16, scope: !129)
!161 = !DILocation(line: 136, column: 12, scope: !129)
!162 = !DILocation(line: 136, column: 10, scope: !129)
!163 = !DILocation(line: 137, column: 8, scope: !164)
!164 = distinct !DILexicalBlock(scope: !129, file: !19, line: 137, column: 8)
!165 = !DILocation(line: 137, column: 14, scope: !164)
!166 = !DILocation(line: 137, column: 8, scope: !129)
!167 = !DILocation(line: 138, column: 102, scope: !168)
!168 = distinct !DILexicalBlock(scope: !164, file: !19, line: 137, column: 21)
!169 = !DILocation(line: 138, column: 8, scope: !168)
!170 = !DILocation(line: 138, column: 7, scope: !168)
!171 = !DILocation(line: 138, column: 109, scope: !172)
!172 = !DILexicalBlockFile(scope: !168, file: !19, discriminator: 1)
!173 = !DILocation(line: 138, column: 7, scope: !174)
!174 = !DILexicalBlockFile(scope: !168, file: !19, discriminator: 2)
!175 = !DILocation(line: 140, column: 10, scope: !168)
!176 = !DILocation(line: 142, column: 4, scope: !129)
!177 = !DILocation(line: 163, column: 11, scope: !178)
!178 = distinct !DILexicalBlock(scope: !129, file: !19, line: 163, column: 8)
!179 = !DILocation(line: 163, column: 20, scope: !178)
!180 = !DILocation(line: 163, column: 8, scope: !129)
!181 = !DILocation(line: 164, column: 10, scope: !182)
!182 = distinct !DILexicalBlock(scope: !178, file: !19, line: 163, column: 26)
!183 = !DILocation(line: 164, column: 16, scope: !182)
!184 = !DILocation(line: 165, column: 10, scope: !182)
!185 = !DILocation(line: 165, column: 19, scope: !182)
!186 = !DILocation(line: 166, column: 15, scope: !182)
!187 = !DILocation(line: 166, column: 13, scope: !182)
!188 = !DILocation(line: 167, column: 11, scope: !189)
!189 = distinct !DILexicalBlock(scope: !182, file: !19, line: 167, column: 11)
!190 = !DILocation(line: 167, column: 17, scope: !189)
!191 = !DILocation(line: 167, column: 11, scope: !182)
!192 = !DILocation(line: 168, column: 112, scope: !193)
!193 = distinct !DILexicalBlock(scope: !189, file: !19, line: 167, column: 24)
!194 = !DILocation(line: 168, column: 11, scope: !193)
!195 = !DILocation(line: 168, column: 10, scope: !193)
!196 = !DILocation(line: 168, column: 119, scope: !197)
!197 = !DILexicalBlockFile(scope: !193, file: !19, discriminator: 1)
!198 = !DILocation(line: 168, column: 10, scope: !199)
!199 = !DILexicalBlockFile(scope: !193, file: !19, discriminator: 2)
!200 = !DILocation(line: 170, column: 10, scope: !193)
!201 = !DILocation(line: 172, column: 7, scope: !182)
!202 = !DILocation(line: 173, column: 7, scope: !182)
!203 = !DILocation(line: 174, column: 4, scope: !182)
!204 = !DILocation(line: 175, column: 12, scope: !205)
!205 = distinct !DILexicalBlock(scope: !129, file: !19, line: 175, column: 8)
!206 = !DILocation(line: 175, column: 19, scope: !205)
!207 = !DILocation(line: 175, column: 29, scope: !205)
!208 = !DILocation(line: 175, column: 40, scope: !205)
!209 = !DILocation(line: 175, column: 47, scope: !210)
!210 = !DILexicalBlockFile(scope: !205, file: !19, discriminator: 1)
!211 = !DILocation(line: 175, column: 54, scope: !210)
!212 = !DILocation(line: 175, column: 68, scope: !210)
!213 = !DILocation(line: 175, column: 8, scope: !210)
!214 = !DILocation(line: 176, column: 10, scope: !215)
!215 = distinct !DILexicalBlock(scope: !205, file: !19, line: 175, column: 74)
!216 = !DILocation(line: 176, column: 16, scope: !215)
!217 = !DILocation(line: 177, column: 10, scope: !215)
!218 = !DILocation(line: 177, column: 17, scope: !215)
!219 = !DILocation(line: 178, column: 15, scope: !215)
!220 = !DILocation(line: 178, column: 13, scope: !215)
!221 = !DILocation(line: 179, column: 11, scope: !222)
!222 = distinct !DILexicalBlock(scope: !215, file: !19, line: 179, column: 11)
!223 = !DILocation(line: 179, column: 17, scope: !222)
!224 = !DILocation(line: 179, column: 11, scope: !215)
!225 = !DILocation(line: 180, column: 105, scope: !226)
!226 = distinct !DILexicalBlock(scope: !222, file: !19, line: 179, column: 24)
!227 = !DILocation(line: 180, column: 11, scope: !226)
!228 = !DILocation(line: 180, column: 10, scope: !226)
!229 = !DILocation(line: 180, column: 112, scope: !230)
!230 = !DILexicalBlockFile(scope: !226, file: !19, discriminator: 1)
!231 = !DILocation(line: 180, column: 10, scope: !232)
!232 = !DILexicalBlockFile(scope: !226, file: !19, discriminator: 2)
!233 = !DILocation(line: 182, column: 10, scope: !226)
!234 = !DILocation(line: 184, column: 7, scope: !215)
!235 = !DILocation(line: 185, column: 7, scope: !215)
!236 = !DILocation(line: 186, column: 4, scope: !215)
!237 = !DILocation(line: 187, column: 4, scope: !129)
!238 = !DILocation(line: 188, column: 1, scope: !129)
