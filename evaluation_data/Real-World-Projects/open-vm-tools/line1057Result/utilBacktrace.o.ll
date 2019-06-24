; ModuleID = './utilBacktrace.o.i'
source_filename = "./utilBacktrace.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UtilBacktraceFromPointerData = type { i64, void (i8*, i8*, ...)*, i8*, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._Unwind_Context = type opaque
%struct.UtilBacktraceToBufferData = type { i64, i64*, i64 }

@.str = private unnamed_addr constant [12 x i8] c"Backtrace:\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Backtrace for bugNr=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [99 x i8] c"Backtrace[%u] %016lx rip=%016lx rbx=%016lx rbp=%016lx r12=%016lx r13=%016lx r14=%016lx r15=%016lx\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @Util_BacktraceFromPointer(i64*) #0 !dbg !24 {
  %2 = alloca i64*, align 8
  store i64* %0, i64** %2, align 8
  call void @llvm.dbg.declare(metadata i64** %2, metadata !29, metadata !30), !dbg !31
  %3 = load i64*, i64** %2, align 8, !dbg !32
  call void @Util_BacktraceFromPointerWithFunc(i64* %3, void (i8*, i8*, ...)* @UtilLogWrapper, i8* null), !dbg !33
  ret void, !dbg !34
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define void @Util_BacktraceFromPointerWithFunc(i64*, void (i8*, i8*, ...)*, i8*) #0 !dbg !35 {
  %4 = alloca i64*, align 8
  %5 = alloca void (i8*, i8*, ...)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.UtilBacktraceFromPointerData, align 8
  store i64* %0, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !46, metadata !30), !dbg !47
  store void (i8*, i8*, ...)* %1, void (i8*, i8*, ...)** %5, align 8
  call void @llvm.dbg.declare(metadata void (i8*, i8*, ...)** %5, metadata !48, metadata !30), !dbg !49
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !50, metadata !30), !dbg !51
  call void @llvm.dbg.declare(metadata %struct.UtilBacktraceFromPointerData* %7, metadata !52, metadata !30), !dbg !61
  %8 = load i64*, i64** %4, align 8, !dbg !62
  %9 = ptrtoint i64* %8 to i64, !dbg !63
  %10 = getelementptr inbounds %struct.UtilBacktraceFromPointerData, %struct.UtilBacktraceFromPointerData* %7, i32 0, i32 0, !dbg !64
  store i64 %9, i64* %10, align 8, !dbg !65
  %11 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %5, align 8, !dbg !66
  %12 = getelementptr inbounds %struct.UtilBacktraceFromPointerData, %struct.UtilBacktraceFromPointerData* %7, i32 0, i32 1, !dbg !67
  store void (i8*, i8*, ...)* %11, void (i8*, i8*, ...)** %12, align 8, !dbg !68
  %13 = load i8*, i8** %6, align 8, !dbg !69
  %14 = getelementptr inbounds %struct.UtilBacktraceFromPointerData, %struct.UtilBacktraceFromPointerData* %7, i32 0, i32 2, !dbg !70
  store i8* %13, i8** %14, align 8, !dbg !71
  %15 = getelementptr inbounds %struct.UtilBacktraceFromPointerData, %struct.UtilBacktraceFromPointerData* %7, i32 0, i32 3, !dbg !72
  store i32 0, i32* %15, align 8, !dbg !73
  %16 = getelementptr inbounds %struct.UtilBacktraceFromPointerData, %struct.UtilBacktraceFromPointerData* %7, i32 0, i32 4, !dbg !74
  store i32 0, i32* %16, align 4, !dbg !75
  %17 = bitcast %struct.UtilBacktraceFromPointerData* %7 to i8*, !dbg !76
  %18 = call i32 @_Unwind_Backtrace(i32 (%struct._Unwind_Context*, i8*)* @UtilBacktraceFromPointerCallback, i8* %17), !dbg !77
  ret void, !dbg !78
}

; Function Attrs: nounwind uwtable
define internal void @UtilLogWrapper(i8*, i8*, ...) #0 !dbg !79 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  %7 = alloca [511 x i8], align 16
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !80, metadata !30), !dbg !81
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !82, metadata !30), !dbg !83
  call void @llvm.dbg.declare(metadata i32* %5, metadata !84, metadata !30), !dbg !88
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %6, metadata !89, metadata !30), !dbg !103
  call void @llvm.dbg.declare(metadata [511 x i8]* %7, metadata !104, metadata !30), !dbg !108
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i32 0, i32 0, !dbg !109
  %9 = bitcast %struct.__va_list_tag* %8 to i8*, !dbg !109
  call void @llvm.va_start(i8* %9), !dbg !109
  %10 = getelementptr inbounds [511 x i8], [511 x i8]* %7, i32 0, i32 0, !dbg !110
  %11 = load i8*, i8** %4, align 8, !dbg !111
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i32 0, i32 0, !dbg !112
  %13 = call i32 @Str_Vsnprintf(i8* %10, i64 509, i8* %11, %struct.__va_list_tag* %12), !dbg !113
  store i32 %13, i32* %5, align 4, !dbg !114
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i32 0, i32 0, !dbg !115
  %15 = bitcast %struct.__va_list_tag* %14 to i8*, !dbg !115
  call void @llvm.va_end(i8* %15), !dbg !115
  %16 = load i32, i32* %5, align 4, !dbg !116
  %17 = icmp uge i32 %16, 509, !dbg !118
  br i1 %17, label %18, label %19, !dbg !119

; <label>:18:                                     ; preds = %2
  store i32 508, i32* %5, align 4, !dbg !120
  br label %19, !dbg !122

; <label>:19:                                     ; preds = %18, %2
  %20 = load i32, i32* %5, align 4, !dbg !123
  %21 = sub i32 %20, 1, !dbg !125
  %22 = zext i32 %21 to i64, !dbg !126
  %23 = getelementptr inbounds [511 x i8], [511 x i8]* %7, i64 0, i64 %22, !dbg !126
  %24 = load i8, i8* %23, align 1, !dbg !126
  %25 = sext i8 %24 to i32, !dbg !126
  %26 = icmp ne i32 %25, 10, !dbg !127
  br i1 %26, label %27, label %35, !dbg !128

; <label>:27:                                     ; preds = %19
  %28 = load i32, i32* %5, align 4, !dbg !129
  %29 = zext i32 %28 to i64, !dbg !131
  %30 = getelementptr inbounds [511 x i8], [511 x i8]* %7, i64 0, i64 %29, !dbg !131
  store i8 10, i8* %30, align 1, !dbg !132
  %31 = load i32, i32* %5, align 4, !dbg !133
  %32 = add i32 %31, 1, !dbg !134
  %33 = zext i32 %32 to i64, !dbg !135
  %34 = getelementptr inbounds [511 x i8], [511 x i8]* %7, i64 0, i64 %33, !dbg !135
  store i8 0, i8* %34, align 1, !dbg !136
  br label %35, !dbg !137

; <label>:35:                                     ; preds = %27, %19
  %36 = getelementptr inbounds [511 x i8], [511 x i8]* %7, i32 0, i32 0, !dbg !138
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* %36), !dbg !139
  ret void, !dbg !140
}

declare i32 @_Unwind_Backtrace(i32 (%struct._Unwind_Context*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @UtilBacktraceFromPointerCallback(%struct._Unwind_Context*, i8*) #0 !dbg !141 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._Unwind_Context*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.UtilBacktraceFromPointerData*, align 8
  %7 = alloca i64, align 8
  store %struct._Unwind_Context* %0, %struct._Unwind_Context** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._Unwind_Context** %4, metadata !147, metadata !30), !dbg !148
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !149, metadata !30), !dbg !150
  call void @llvm.dbg.declare(metadata %struct.UtilBacktraceFromPointerData** %6, metadata !151, metadata !30), !dbg !153
  %8 = load i8*, i8** %5, align 8, !dbg !154
  %9 = bitcast i8* %8 to %struct.UtilBacktraceFromPointerData*, !dbg !154
  store %struct.UtilBacktraceFromPointerData* %9, %struct.UtilBacktraceFromPointerData** %6, align 8, !dbg !153
  call void @llvm.dbg.declare(metadata i64* %7, metadata !155, metadata !30), !dbg !156
  %10 = load %struct._Unwind_Context*, %struct._Unwind_Context** %4, align 8, !dbg !157
  %11 = call i64 @_Unwind_GetCFA(%struct._Unwind_Context* %10), !dbg !158
  store i64 %11, i64* %7, align 8, !dbg !156
  %12 = load i64, i64* %7, align 8, !dbg !159
  %13 = load %struct.UtilBacktraceFromPointerData*, %struct.UtilBacktraceFromPointerData** %6, align 8, !dbg !161
  %14 = getelementptr inbounds %struct.UtilBacktraceFromPointerData, %struct.UtilBacktraceFromPointerData* %13, i32 0, i32 0, !dbg !162
  %15 = load i64, i64* %14, align 8, !dbg !162
  %16 = icmp uge i64 %12, %15, !dbg !163
  br i1 %16, label %17, label %55, !dbg !164

; <label>:17:                                     ; preds = %2
  %18 = load %struct.UtilBacktraceFromPointerData*, %struct.UtilBacktraceFromPointerData** %6, align 8, !dbg !165
  %19 = getelementptr inbounds %struct.UtilBacktraceFromPointerData, %struct.UtilBacktraceFromPointerData* %18, i32 0, i32 3, !dbg !167
  %20 = load i32, i32* %19, align 8, !dbg !167
  %21 = icmp ult i32 %20, 500, !dbg !168
  br i1 %21, label %22, label %55, !dbg !169

; <label>:22:                                     ; preds = %17
  %23 = load i64, i64* %7, align 8, !dbg !170
  %24 = add i64 %23, 8, !dbg !172
  %25 = load %struct.UtilBacktraceFromPointerData*, %struct.UtilBacktraceFromPointerData** %6, align 8, !dbg !173
  %26 = getelementptr inbounds %struct.UtilBacktraceFromPointerData, %struct.UtilBacktraceFromPointerData* %25, i32 0, i32 0, !dbg !174
  store i64 %24, i64* %26, align 8, !dbg !175
  %27 = load %struct.UtilBacktraceFromPointerData*, %struct.UtilBacktraceFromPointerData** %6, align 8, !dbg !176
  %28 = getelementptr inbounds %struct.UtilBacktraceFromPointerData, %struct.UtilBacktraceFromPointerData* %27, i32 0, i32 1, !dbg !177
  %29 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %28, align 8, !dbg !177
  %30 = load %struct.UtilBacktraceFromPointerData*, %struct.UtilBacktraceFromPointerData** %6, align 8, !dbg !178
  %31 = getelementptr inbounds %struct.UtilBacktraceFromPointerData, %struct.UtilBacktraceFromPointerData* %30, i32 0, i32 2, !dbg !179
  %32 = load i8*, i8** %31, align 8, !dbg !179
  %33 = load %struct.UtilBacktraceFromPointerData*, %struct.UtilBacktraceFromPointerData** %6, align 8, !dbg !180
  %34 = getelementptr inbounds %struct.UtilBacktraceFromPointerData, %struct.UtilBacktraceFromPointerData* %33, i32 0, i32 3, !dbg !181
  %35 = load i32, i32* %34, align 8, !dbg !181
  %36 = load i64, i64* %7, align 8, !dbg !182
  %37 = load %struct._Unwind_Context*, %struct._Unwind_Context** %4, align 8, !dbg !183
  %38 = call i64 @_Unwind_GetIP(%struct._Unwind_Context* %37), !dbg !184
  %39 = load %struct._Unwind_Context*, %struct._Unwind_Context** %4, align 8, !dbg !185
  %40 = call i64 @_Unwind_GetGR(%struct._Unwind_Context* %39, i32 3), !dbg !186
  %41 = load %struct._Unwind_Context*, %struct._Unwind_Context** %4, align 8, !dbg !187
  %42 = call i64 @_Unwind_GetGR(%struct._Unwind_Context* %41, i32 6), !dbg !188
  %43 = load %struct._Unwind_Context*, %struct._Unwind_Context** %4, align 8, !dbg !190
  %44 = call i64 @_Unwind_GetGR(%struct._Unwind_Context* %43, i32 12), !dbg !191
  %45 = load %struct._Unwind_Context*, %struct._Unwind_Context** %4, align 8, !dbg !192
  %46 = call i64 @_Unwind_GetGR(%struct._Unwind_Context* %45, i32 13), !dbg !193
  %47 = load %struct._Unwind_Context*, %struct._Unwind_Context** %4, align 8, !dbg !194
  %48 = call i64 @_Unwind_GetGR(%struct._Unwind_Context* %47, i32 14), !dbg !195
  %49 = load %struct._Unwind_Context*, %struct._Unwind_Context** %4, align 8, !dbg !196
  %50 = call i64 @_Unwind_GetGR(%struct._Unwind_Context* %49, i32 15), !dbg !197
  call void (i8*, i8*, ...) %29(i8* %32, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.3, i32 0, i32 0), i32 %35, i64 %36, i64 %38, i64 %40, i64 %42, i64 %44, i64 %46, i64 %48, i64 %50), !dbg !176
  %51 = load %struct.UtilBacktraceFromPointerData*, %struct.UtilBacktraceFromPointerData** %6, align 8, !dbg !198
  %52 = getelementptr inbounds %struct.UtilBacktraceFromPointerData, %struct.UtilBacktraceFromPointerData* %51, i32 0, i32 3, !dbg !199
  %53 = load i32, i32* %52, align 8, !dbg !200
  %54 = add i32 %53, 1, !dbg !200
  store i32 %54, i32* %52, align 8, !dbg !200
  store i32 0, i32* %3, align 4, !dbg !201
  br label %72, !dbg !201

; <label>:55:                                     ; preds = %17, %2
  %56 = load %struct.UtilBacktraceFromPointerData*, %struct.UtilBacktraceFromPointerData** %6, align 8, !dbg !202
  %57 = getelementptr inbounds %struct.UtilBacktraceFromPointerData, %struct.UtilBacktraceFromPointerData* %56, i32 0, i32 4, !dbg !204
  %58 = load i32, i32* %57, align 4, !dbg !204
  %59 = icmp ult i32 %58, 10, !dbg !205
  br i1 %59, label %60, label %70, !dbg !206

; <label>:60:                                     ; preds = %55
  %61 = load %struct.UtilBacktraceFromPointerData*, %struct.UtilBacktraceFromPointerData** %6, align 8, !dbg !207
  %62 = getelementptr inbounds %struct.UtilBacktraceFromPointerData, %struct.UtilBacktraceFromPointerData* %61, i32 0, i32 3, !dbg !209
  %63 = load i32, i32* %62, align 8, !dbg !209
  %64 = icmp ne i32 %63, 0, !dbg !207
  br i1 %64, label %70, label %65, !dbg !210

; <label>:65:                                     ; preds = %60
  %66 = load %struct.UtilBacktraceFromPointerData*, %struct.UtilBacktraceFromPointerData** %6, align 8, !dbg !211
  %67 = getelementptr inbounds %struct.UtilBacktraceFromPointerData, %struct.UtilBacktraceFromPointerData* %66, i32 0, i32 4, !dbg !213
  %68 = load i32, i32* %67, align 4, !dbg !214
  %69 = add i32 %68, 1, !dbg !214
  store i32 %69, i32* %67, align 4, !dbg !214
  store i32 0, i32* %3, align 4, !dbg !215
  br label %72, !dbg !215

; <label>:70:                                     ; preds = %60, %55
  br label %71

; <label>:71:                                     ; preds = %70
  store i32 5, i32* %3, align 4, !dbg !216
  br label %72, !dbg !216

; <label>:72:                                     ; preds = %71, %65, %22
  %73 = load i32, i32* %3, align 4, !dbg !217
  ret i32 %73, !dbg !217
}

; Function Attrs: nounwind uwtable
define void @Util_BacktraceToBuffer(i64*, i64*, i32) #0 !dbg !218 {
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.UtilBacktraceToBufferData, align 8
  store i64* %0, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !222, metadata !30), !dbg !223
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !224, metadata !30), !dbg !225
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !226, metadata !30), !dbg !227
  call void @llvm.dbg.declare(metadata %struct.UtilBacktraceToBufferData* %7, metadata !228, metadata !30), !dbg !236
  %8 = load i64*, i64** %4, align 8, !dbg !237
  %9 = ptrtoint i64* %8 to i64, !dbg !238
  %10 = getelementptr inbounds %struct.UtilBacktraceToBufferData, %struct.UtilBacktraceToBufferData* %7, i32 0, i32 0, !dbg !239
  store i64 %9, i64* %10, align 8, !dbg !240
  %11 = load i64*, i64** %5, align 8, !dbg !241
  %12 = getelementptr inbounds %struct.UtilBacktraceToBufferData, %struct.UtilBacktraceToBufferData* %7, i32 0, i32 1, !dbg !242
  store i64* %11, i64** %12, align 8, !dbg !243
  %13 = load i32, i32* %6, align 4, !dbg !244
  %14 = sext i32 %13 to i64, !dbg !244
  %15 = getelementptr inbounds %struct.UtilBacktraceToBufferData, %struct.UtilBacktraceToBufferData* %7, i32 0, i32 2, !dbg !245
  store i64 %14, i64* %15, align 8, !dbg !246
  %16 = bitcast %struct.UtilBacktraceToBufferData* %7 to i8*, !dbg !247
  %17 = call i32 @_Unwind_Backtrace(i32 (%struct._Unwind_Context*, i8*)* @UtilBacktraceToBufferCallback, i8* %16), !dbg !248
  ret void, !dbg !249
}

; Function Attrs: nounwind uwtable
define internal i32 @UtilBacktraceToBufferCallback(%struct._Unwind_Context*, i8*) #0 !dbg !250 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._Unwind_Context*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.UtilBacktraceToBufferData*, align 8
  %7 = alloca i64, align 8
  store %struct._Unwind_Context* %0, %struct._Unwind_Context** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._Unwind_Context** %4, metadata !251, metadata !30), !dbg !252
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !253, metadata !30), !dbg !254
  call void @llvm.dbg.declare(metadata %struct.UtilBacktraceToBufferData** %6, metadata !255, metadata !30), !dbg !257
  %8 = load i8*, i8** %5, align 8, !dbg !258
  %9 = bitcast i8* %8 to %struct.UtilBacktraceToBufferData*, !dbg !258
  store %struct.UtilBacktraceToBufferData* %9, %struct.UtilBacktraceToBufferData** %6, align 8, !dbg !257
  call void @llvm.dbg.declare(metadata i64* %7, metadata !259, metadata !30), !dbg !260
  %10 = load %struct._Unwind_Context*, %struct._Unwind_Context** %4, align 8, !dbg !261
  %11 = call i64 @_Unwind_GetCFA(%struct._Unwind_Context* %10), !dbg !262
  store i64 %11, i64* %7, align 8, !dbg !260
  %12 = load i64, i64* %7, align 8, !dbg !263
  %13 = load %struct.UtilBacktraceToBufferData*, %struct.UtilBacktraceToBufferData** %6, align 8, !dbg !265
  %14 = getelementptr inbounds %struct.UtilBacktraceToBufferData, %struct.UtilBacktraceToBufferData* %13, i32 0, i32 0, !dbg !266
  %15 = load i64, i64* %14, align 8, !dbg !266
  %16 = icmp uge i64 %12, %15, !dbg !267
  br i1 %16, label %17, label %35, !dbg !268

; <label>:17:                                     ; preds = %2
  %18 = load %struct.UtilBacktraceToBufferData*, %struct.UtilBacktraceToBufferData** %6, align 8, !dbg !269
  %19 = getelementptr inbounds %struct.UtilBacktraceToBufferData, %struct.UtilBacktraceToBufferData* %18, i32 0, i32 2, !dbg !272
  %20 = load i64, i64* %19, align 8, !dbg !272
  %21 = icmp ne i64 %20, 0, !dbg !269
  br i1 %21, label %22, label %33, !dbg !273

; <label>:22:                                     ; preds = %17
  %23 = load %struct._Unwind_Context*, %struct._Unwind_Context** %4, align 8, !dbg !274
  %24 = call i64 @_Unwind_GetIP(%struct._Unwind_Context* %23), !dbg !276
  %25 = load %struct.UtilBacktraceToBufferData*, %struct.UtilBacktraceToBufferData** %6, align 8, !dbg !277
  %26 = getelementptr inbounds %struct.UtilBacktraceToBufferData, %struct.UtilBacktraceToBufferData* %25, i32 0, i32 1, !dbg !278
  %27 = load i64*, i64** %26, align 8, !dbg !279
  %28 = getelementptr inbounds i64, i64* %27, i32 1, !dbg !279
  store i64* %28, i64** %26, align 8, !dbg !279
  store i64 %24, i64* %27, align 8, !dbg !280
  %29 = load %struct.UtilBacktraceToBufferData*, %struct.UtilBacktraceToBufferData** %6, align 8, !dbg !281
  %30 = getelementptr inbounds %struct.UtilBacktraceToBufferData, %struct.UtilBacktraceToBufferData* %29, i32 0, i32 2, !dbg !282
  %31 = load i64, i64* %30, align 8, !dbg !283
  %32 = add i64 %31, -1, !dbg !283
  store i64 %32, i64* %30, align 8, !dbg !283
  br label %34, !dbg !284

; <label>:33:                                     ; preds = %17
  store i32 5, i32* %3, align 4, !dbg !285
  br label %36, !dbg !285

; <label>:34:                                     ; preds = %22
  br label %35, !dbg !287

; <label>:35:                                     ; preds = %34, %2
  store i32 0, i32* %3, align 4, !dbg !288
  br label %36, !dbg !288

; <label>:36:                                     ; preds = %35, %33
  %37 = load i32, i32* %3, align 4, !dbg !289
  ret i32 %37, !dbg !289
}

; Function Attrs: nounwind uwtable
define void @Util_Backtrace(i32) #0 !dbg !290 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !293, metadata !30), !dbg !294
  %3 = load i32, i32* %2, align 4, !dbg !295
  call void @Util_BacktraceWithFunc(i32 %3, void (i8*, i8*, ...)* @UtilLogWrapper, i8* null), !dbg !296
  ret void, !dbg !297
}

; Function Attrs: nounwind uwtable
define void @Util_BacktraceWithFunc(i32, void (i8*, i8*, ...)*, i8*) #0 !dbg !298 {
  %4 = alloca i32, align 4
  %5 = alloca void (i8*, i8*, ...)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !301, metadata !30), !dbg !302
  store void (i8*, i8*, ...)* %1, void (i8*, i8*, ...)** %5, align 8
  call void @llvm.dbg.declare(metadata void (i8*, i8*, ...)** %5, metadata !303, metadata !30), !dbg !304
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !305, metadata !30), !dbg !306
  call void @llvm.dbg.declare(metadata i64** %7, metadata !307, metadata !30), !dbg !308
  %8 = bitcast i32* %4 to i64*, !dbg !309
  store i64* %8, i64** %7, align 8, !dbg !308
  %9 = load i32, i32* %4, align 4, !dbg !310
  %10 = icmp eq i32 %9, 0, !dbg !312
  br i1 %10, label %11, label %14, !dbg !313

; <label>:11:                                     ; preds = %3
  %12 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %5, align 8, !dbg !314
  %13 = load i8*, i8** %6, align 8, !dbg !316
  call void (i8*, i8*, ...) %12(i8* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0)), !dbg !314
  br label %18, !dbg !317

; <label>:14:                                     ; preds = %3
  %15 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %5, align 8, !dbg !318
  %16 = load i8*, i8** %6, align 8, !dbg !320
  %17 = load i32, i32* %4, align 4, !dbg !321
  call void (i8*, i8*, ...) %15(i8* %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 %17), !dbg !318
  br label %18

; <label>:18:                                     ; preds = %14, %11
  %19 = load i64*, i64** %7, align 8, !dbg !322
  %20 = getelementptr inbounds i64, i64* %19, i64 -2, !dbg !322
  %21 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %5, align 8, !dbg !323
  %22 = load i8*, i8** %6, align 8, !dbg !324
  call void @Util_BacktraceFromPointerWithFunc(i64* %20, void (i8*, i8*, ...)* %21, i8* %22), !dbg !325
  ret void, !dbg !326
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

declare i32 @Str_Vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

declare void @Log(i8*, ...) #2

declare i64 @_Unwind_GetCFA(%struct._Unwind_Context*) #2

declare i64 @_Unwind_GetIP(%struct._Unwind_Context*) #2

declare i64 @_Unwind_GetGR(%struct._Unwind_Context*, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!21, !22}
!llvm.ident = !{!23}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !15)
!1 = !DIFile(filename: "utilBacktrace.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1057")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 65, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/unwind.h", directory: "/home/lichi/Desktop/open-vm-tools/line1057")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14}
!6 = !DIEnumerator(name: "_URC_NO_REASON", value: 0)
!7 = !DIEnumerator(name: "_URC_FOREIGN_EXCEPTION_CAUGHT", value: 1)
!8 = !DIEnumerator(name: "_URC_FATAL_PHASE2_ERROR", value: 2)
!9 = !DIEnumerator(name: "_URC_FATAL_PHASE1_ERROR", value: 3)
!10 = !DIEnumerator(name: "_URC_NORMAL_STOP", value: 4)
!11 = !DIEnumerator(name: "_URC_END_OF_STACK", value: 5)
!12 = !DIEnumerator(name: "_URC_HANDLER_FOUND", value: 6)
!13 = !DIEnumerator(name: "_URC_INSTALL_CONTEXT", value: 7)
!14 = !DIEnumerator(name: "_URC_CONTINUE_UNWIND", value: 8)
!15 = !{!16, !17, !20}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !18, line: 122, baseType: !19)
!18 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line1057")
!19 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!21 = !{i32 2, !"Dwarf Version", i32 4}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!24 = distinct !DISubprogram(name: "Util_BacktraceFromPointer", scope: !25, file: !25, line: 319, type: !26, isLocal: false, isDefinition: true, scopeLine: 320, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!25 = !DIFile(filename: "utilBacktrace.c", directory: "/home/lichi/Desktop/open-vm-tools/line1057")
!26 = !DISubroutineType(types: !27)
!27 = !{null, !20}
!28 = !{}
!29 = !DILocalVariable(name: "basePtr", arg: 1, scope: !24, file: !25, line: 319, type: !20)
!30 = !DIExpression()
!31 = !DILocation(line: 319, column: 38, scope: !24)
!32 = !DILocation(line: 321, column: 38, scope: !24)
!33 = !DILocation(line: 321, column: 4, scope: !24)
!34 = !DILocation(line: 322, column: 1, scope: !24)
!35 = distinct !DISubprogram(name: "Util_BacktraceFromPointerWithFunc", scope: !25, file: !25, line: 344, type: !36, isLocal: false, isDefinition: true, scopeLine: 347, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !20, !38, !16}
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "Util_OutputFunc", file: !39, line: 107, baseType: !40)
!39 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/util.h", directory: "/home/lichi/Desktop/open-vm-tools/line1057")
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !16, !43, null}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!46 = !DILocalVariable(name: "basePtr", arg: 1, scope: !35, file: !25, line: 344, type: !20)
!47 = !DILocation(line: 344, column: 46, scope: !35)
!48 = !DILocalVariable(name: "outFunc", arg: 2, scope: !35, file: !25, line: 345, type: !38)
!49 = !DILocation(line: 345, column: 51, scope: !35)
!50 = !DILocalVariable(name: "outFuncData", arg: 3, scope: !35, file: !25, line: 346, type: !16)
!51 = !DILocation(line: 346, column: 41, scope: !35)
!52 = !DILocalVariable(name: "data", scope: !35, file: !25, line: 349, type: !53)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UtilBacktraceFromPointerData", file: !25, line: 65, size: 256, align: 64, elements: !54)
!54 = !{!55, !56, !57, !58, !60}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "basePtr", scope: !53, file: !25, line: 66, baseType: !17, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "outFunc", scope: !53, file: !25, line: 67, baseType: !38, size: 64, align: 64, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "outFuncData", scope: !53, file: !25, line: 68, baseType: !16, size: 64, align: 64, offset: 128)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "frameNr", scope: !53, file: !25, line: 69, baseType: !59, size: 32, align: 32, offset: 192)
!59 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "skippedFrames", scope: !53, file: !25, line: 70, baseType: !59, size: 32, align: 32, offset: 224)
!61 = !DILocation(line: 349, column: 40, scope: !35)
!62 = !DILocation(line: 351, column: 30, scope: !35)
!63 = !DILocation(line: 351, column: 19, scope: !35)
!64 = !DILocation(line: 351, column: 9, scope: !35)
!65 = !DILocation(line: 351, column: 17, scope: !35)
!66 = !DILocation(line: 352, column: 19, scope: !35)
!67 = !DILocation(line: 352, column: 9, scope: !35)
!68 = !DILocation(line: 352, column: 17, scope: !35)
!69 = !DILocation(line: 353, column: 23, scope: !35)
!70 = !DILocation(line: 353, column: 9, scope: !35)
!71 = !DILocation(line: 353, column: 21, scope: !35)
!72 = !DILocation(line: 354, column: 9, scope: !35)
!73 = !DILocation(line: 354, column: 17, scope: !35)
!74 = !DILocation(line: 355, column: 9, scope: !35)
!75 = !DILocation(line: 355, column: 23, scope: !35)
!76 = !DILocation(line: 356, column: 56, scope: !35)
!77 = !DILocation(line: 356, column: 4, scope: !35)
!78 = !DILocation(line: 412, column: 1, scope: !35)
!79 = distinct !DISubprogram(name: "UtilLogWrapper", scope: !25, file: !25, line: 102, type: !41, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!80 = !DILocalVariable(name: "ignored", arg: 1, scope: !79, file: !25, line: 102, type: !16)
!81 = !DILocation(line: 102, column: 22, scope: !79)
!82 = !DILocalVariable(name: "fmt", arg: 2, scope: !79, file: !25, line: 103, type: !43)
!83 = !DILocation(line: 103, column: 28, scope: !79)
!84 = !DILocalVariable(name: "len", scope: !79, file: !25, line: 106, type: !85)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !86, line: 173, baseType: !87)
!86 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1057")
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !18, line: 51, baseType: !59)
!88 = !DILocation(line: 106, column: 11, scope: !79)
!89 = !DILocalVariable(name: "ap", scope: !79, file: !25, line: 107, type: !90)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !91, line: 98, baseType: !92)
!91 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/open-vm-tools/line1057")
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !91, line: 40, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 107, baseType: !94)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 192, align: 64, elements: !101)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 107, size: 192, align: 64, elements: !96)
!96 = !{!97, !98, !99, !100}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !95, file: !1, line: 107, baseType: !59, size: 32, align: 32)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !95, file: !1, line: 107, baseType: !59, size: 32, align: 32, offset: 32)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !95, file: !1, line: 107, baseType: !16, size: 64, align: 64, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !95, file: !1, line: 107, baseType: !16, size: 64, align: 64, offset: 128)
!101 = !{!102}
!102 = !DISubrange(count: 1)
!103 = !DILocation(line: 107, column: 12, scope: !79)
!104 = !DILocalVariable(name: "thisLine", scope: !79, file: !25, line: 108, type: !105)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 4088, align: 8, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 511)
!108 = !DILocation(line: 108, column: 9, scope: !79)
!109 = !DILocation(line: 110, column: 3, scope: !79)
!110 = !DILocation(line: 111, column: 24, scope: !79)
!111 = !DILocation(line: 111, column: 45, scope: !79)
!112 = !DILocation(line: 111, column: 50, scope: !79)
!113 = !DILocation(line: 111, column: 10, scope: !79)
!114 = !DILocation(line: 111, column: 8, scope: !79)
!115 = !DILocation(line: 112, column: 3, scope: !79)
!116 = !DILocation(line: 114, column: 8, scope: !117)
!117 = distinct !DILexicalBlock(scope: !79, file: !25, line: 114, column: 8)
!118 = !DILocation(line: 114, column: 12, scope: !117)
!119 = !DILocation(line: 114, column: 8, scope: !79)
!120 = !DILocation(line: 115, column: 11, scope: !121)
!121 = distinct !DILexicalBlock(scope: !117, file: !25, line: 114, column: 26)
!122 = !DILocation(line: 116, column: 4, scope: !121)
!123 = !DILocation(line: 118, column: 17, scope: !124)
!124 = distinct !DILexicalBlock(scope: !79, file: !25, line: 118, column: 8)
!125 = !DILocation(line: 118, column: 21, scope: !124)
!126 = !DILocation(line: 118, column: 8, scope: !124)
!127 = !DILocation(line: 118, column: 26, scope: !124)
!128 = !DILocation(line: 118, column: 8, scope: !79)
!129 = !DILocation(line: 119, column: 16, scope: !130)
!130 = distinct !DILexicalBlock(scope: !124, file: !25, line: 118, column: 35)
!131 = !DILocation(line: 119, column: 7, scope: !130)
!132 = !DILocation(line: 119, column: 21, scope: !130)
!133 = !DILocation(line: 120, column: 16, scope: !130)
!134 = !DILocation(line: 120, column: 20, scope: !130)
!135 = !DILocation(line: 120, column: 7, scope: !130)
!136 = !DILocation(line: 120, column: 25, scope: !130)
!137 = !DILocation(line: 121, column: 4, scope: !130)
!138 = !DILocation(line: 123, column: 14, scope: !79)
!139 = !DILocation(line: 123, column: 4, scope: !79)
!140 = !DILocation(line: 124, column: 1, scope: !79)
!141 = distinct !DISubprogram(name: "UtilBacktraceFromPointerCallback", scope: !25, file: !25, line: 190, type: !142, isLocal: true, isDefinition: true, scopeLine: 192, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!142 = !DISubroutineType(types: !143)
!143 = !{!144, !145, !16}
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Unwind_Reason_Code", file: !4, line: 76, baseType: !3)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64, align: 64)
!146 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Unwind_Context", file: !4, line: 128, flags: DIFlagFwdDecl)
!147 = !DILocalVariable(name: "ctx", arg: 1, scope: !141, file: !25, line: 190, type: !145)
!148 = !DILocation(line: 190, column: 58, scope: !141)
!149 = !DILocalVariable(name: "cbData", arg: 2, scope: !141, file: !25, line: 191, type: !16)
!150 = !DILocation(line: 191, column: 40, scope: !141)
!151 = !DILocalVariable(name: "data", scope: !141, file: !25, line: 193, type: !152)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!153 = !DILocation(line: 193, column: 41, scope: !141)
!154 = !DILocation(line: 193, column: 48, scope: !141)
!155 = !DILocalVariable(name: "cfa", scope: !141, file: !25, line: 194, type: !17)
!156 = !DILocation(line: 194, column: 14, scope: !141)
!157 = !DILocation(line: 194, column: 35, scope: !141)
!158 = !DILocation(line: 194, column: 20, scope: !141)
!159 = !DILocation(line: 200, column: 8, scope: !160)
!160 = distinct !DILexicalBlock(scope: !141, file: !25, line: 200, column: 8)
!161 = !DILocation(line: 200, column: 15, scope: !160)
!162 = !DILocation(line: 200, column: 21, scope: !160)
!163 = !DILocation(line: 200, column: 12, scope: !160)
!164 = !DILocation(line: 200, column: 29, scope: !160)
!165 = !DILocation(line: 200, column: 32, scope: !166)
!166 = !DILexicalBlockFile(scope: !160, file: !25, discriminator: 1)
!167 = !DILocation(line: 200, column: 38, scope: !166)
!168 = !DILocation(line: 200, column: 46, scope: !166)
!169 = !DILocation(line: 200, column: 8, scope: !166)
!170 = !DILocation(line: 205, column: 23, scope: !171)
!171 = distinct !DILexicalBlock(scope: !160, file: !25, line: 200, column: 53)
!172 = !DILocation(line: 205, column: 27, scope: !171)
!173 = !DILocation(line: 205, column: 7, scope: !171)
!174 = !DILocation(line: 205, column: 13, scope: !171)
!175 = !DILocation(line: 205, column: 21, scope: !171)
!176 = !DILocation(line: 207, column: 7, scope: !171)
!177 = !DILocation(line: 207, column: 13, scope: !171)
!178 = !DILocation(line: 207, column: 21, scope: !171)
!179 = !DILocation(line: 207, column: 27, scope: !171)
!180 = !DILocation(line: 210, column: 21, scope: !171)
!181 = !DILocation(line: 210, column: 27, scope: !171)
!182 = !DILocation(line: 210, column: 36, scope: !171)
!183 = !DILocation(line: 210, column: 55, scope: !171)
!184 = !DILocation(line: 210, column: 41, scope: !171)
!185 = !DILocation(line: 211, column: 35, scope: !171)
!186 = !DILocation(line: 211, column: 21, scope: !171)
!187 = !DILocation(line: 211, column: 58, scope: !171)
!188 = !DILocation(line: 211, column: 44, scope: !189)
!189 = !DILexicalBlockFile(scope: !171, file: !25, discriminator: 1)
!190 = !DILocation(line: 212, column: 35, scope: !171)
!191 = !DILocation(line: 212, column: 21, scope: !171)
!192 = !DILocation(line: 212, column: 59, scope: !171)
!193 = !DILocation(line: 212, column: 45, scope: !189)
!194 = !DILocation(line: 213, column: 35, scope: !171)
!195 = !DILocation(line: 213, column: 21, scope: !171)
!196 = !DILocation(line: 213, column: 59, scope: !171)
!197 = !DILocation(line: 213, column: 45, scope: !189)
!198 = !DILocation(line: 214, column: 7, scope: !171)
!199 = !DILocation(line: 214, column: 13, scope: !171)
!200 = !DILocation(line: 214, column: 20, scope: !171)
!201 = !DILocation(line: 215, column: 7, scope: !171)
!202 = !DILocation(line: 216, column: 15, scope: !203)
!203 = distinct !DILexicalBlock(scope: !160, file: !25, line: 216, column: 15)
!204 = !DILocation(line: 216, column: 21, scope: !203)
!205 = !DILocation(line: 216, column: 35, scope: !203)
!206 = !DILocation(line: 216, column: 40, scope: !203)
!207 = !DILocation(line: 216, column: 44, scope: !208)
!208 = !DILexicalBlockFile(scope: !203, file: !25, discriminator: 1)
!209 = !DILocation(line: 216, column: 50, scope: !208)
!210 = !DILocation(line: 216, column: 15, scope: !208)
!211 = !DILocation(line: 222, column: 7, scope: !212)
!212 = distinct !DILexicalBlock(scope: !203, file: !25, line: 216, column: 59)
!213 = !DILocation(line: 222, column: 13, scope: !212)
!214 = !DILocation(line: 222, column: 26, scope: !212)
!215 = !DILocation(line: 223, column: 7, scope: !212)
!216 = !DILocation(line: 225, column: 4, scope: !141)
!217 = !DILocation(line: 226, column: 1, scope: !141)
!218 = distinct !DISubprogram(name: "Util_BacktraceToBuffer", scope: !25, file: !25, line: 432, type: !219, isLocal: false, isDefinition: true, scopeLine: 435, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!219 = !DISubroutineType(types: !220)
!220 = !{null, !20, !20, !221}
!221 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!222 = !DILocalVariable(name: "basePtr", arg: 1, scope: !218, file: !25, line: 432, type: !20)
!223 = !DILocation(line: 432, column: 35, scope: !218)
!224 = !DILocalVariable(name: "buffer", arg: 2, scope: !218, file: !25, line: 433, type: !20)
!225 = !DILocation(line: 433, column: 35, scope: !218)
!226 = !DILocalVariable(name: "len", arg: 3, scope: !218, file: !25, line: 434, type: !221)
!227 = !DILocation(line: 434, column: 28, scope: !218)
!228 = !DILocalVariable(name: "data", scope: !218, file: !25, line: 437, type: !229)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UtilBacktraceToBufferData", file: !25, line: 73, size: 192, align: 64, elements: !230)
!230 = !{!231, !232, !233}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "basePtr", scope: !229, file: !25, line: 74, baseType: !17, size: 64, align: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !229, file: !25, line: 75, baseType: !20, size: 64, align: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !229, file: !25, line: 76, baseType: !234, size: 64, align: 64, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !235, line: 216, baseType: !19)
!235 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line1057")
!236 = !DILocation(line: 437, column: 37, scope: !218)
!237 = !DILocation(line: 439, column: 30, scope: !218)
!238 = !DILocation(line: 439, column: 19, scope: !218)
!239 = !DILocation(line: 439, column: 9, scope: !218)
!240 = !DILocation(line: 439, column: 17, scope: !218)
!241 = !DILocation(line: 440, column: 18, scope: !218)
!242 = !DILocation(line: 440, column: 9, scope: !218)
!243 = !DILocation(line: 440, column: 16, scope: !218)
!244 = !DILocation(line: 441, column: 15, scope: !218)
!245 = !DILocation(line: 441, column: 9, scope: !218)
!246 = !DILocation(line: 441, column: 13, scope: !218)
!247 = !DILocation(line: 442, column: 53, scope: !218)
!248 = !DILocation(line: 442, column: 4, scope: !218)
!249 = !DILocation(line: 456, column: 1, scope: !218)
!250 = distinct !DISubprogram(name: "UtilBacktraceToBufferCallback", scope: !25, file: !25, line: 150, type: !142, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!251 = !DILocalVariable(name: "ctx", arg: 1, scope: !250, file: !25, line: 150, type: !145)
!252 = !DILocation(line: 150, column: 55, scope: !250)
!253 = !DILocalVariable(name: "cbData", arg: 2, scope: !250, file: !25, line: 151, type: !16)
!254 = !DILocation(line: 151, column: 37, scope: !250)
!255 = !DILocalVariable(name: "data", scope: !250, file: !25, line: 153, type: !256)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64, align: 64)
!257 = !DILocation(line: 153, column: 38, scope: !250)
!258 = !DILocation(line: 153, column: 45, scope: !250)
!259 = !DILocalVariable(name: "cfa", scope: !250, file: !25, line: 154, type: !17)
!260 = !DILocation(line: 154, column: 14, scope: !250)
!261 = !DILocation(line: 154, column: 35, scope: !250)
!262 = !DILocation(line: 154, column: 20, scope: !250)
!263 = !DILocation(line: 159, column: 8, scope: !264)
!264 = distinct !DILexicalBlock(scope: !250, file: !25, line: 159, column: 8)
!265 = !DILocation(line: 159, column: 15, scope: !264)
!266 = !DILocation(line: 159, column: 21, scope: !264)
!267 = !DILocation(line: 159, column: 12, scope: !264)
!268 = !DILocation(line: 159, column: 8, scope: !250)
!269 = !DILocation(line: 160, column: 11, scope: !270)
!270 = distinct !DILexicalBlock(scope: !271, file: !25, line: 160, column: 11)
!271 = distinct !DILexicalBlock(scope: !264, file: !25, line: 159, column: 30)
!272 = !DILocation(line: 160, column: 17, scope: !270)
!273 = !DILocation(line: 160, column: 11, scope: !271)
!274 = !DILocation(line: 161, column: 42, scope: !275)
!275 = distinct !DILexicalBlock(scope: !270, file: !25, line: 160, column: 22)
!276 = !DILocation(line: 161, column: 28, scope: !275)
!277 = !DILocation(line: 161, column: 11, scope: !275)
!278 = !DILocation(line: 161, column: 17, scope: !275)
!279 = !DILocation(line: 161, column: 23, scope: !275)
!280 = !DILocation(line: 161, column: 26, scope: !275)
!281 = !DILocation(line: 162, column: 10, scope: !275)
!282 = !DILocation(line: 162, column: 16, scope: !275)
!283 = !DILocation(line: 162, column: 19, scope: !275)
!284 = !DILocation(line: 163, column: 7, scope: !275)
!285 = !DILocation(line: 164, column: 10, scope: !286)
!286 = distinct !DILexicalBlock(scope: !270, file: !25, line: 163, column: 14)
!287 = !DILocation(line: 166, column: 4, scope: !271)
!288 = !DILocation(line: 167, column: 4, scope: !250)
!289 = !DILocation(line: 168, column: 1, scope: !250)
!290 = distinct !DISubprogram(name: "Util_Backtrace", scope: !25, file: !25, line: 477, type: !291, isLocal: false, isDefinition: true, scopeLine: 478, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!291 = !DISubroutineType(types: !292)
!292 = !{null, !221}
!293 = !DILocalVariable(name: "bugNr", arg: 1, scope: !290, file: !25, line: 477, type: !221)
!294 = !DILocation(line: 477, column: 20, scope: !290)
!295 = !DILocation(line: 479, column: 27, scope: !290)
!296 = !DILocation(line: 479, column: 4, scope: !290)
!297 = !DILocation(line: 480, column: 1, scope: !290)
!298 = distinct !DISubprogram(name: "Util_BacktraceWithFunc", scope: !25, file: !25, line: 502, type: !299, isLocal: false, isDefinition: true, scopeLine: 505, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!299 = !DISubroutineType(types: !300)
!300 = !{null, !221, !38, !16}
!301 = !DILocalVariable(name: "bugNr", arg: 1, scope: !298, file: !25, line: 502, type: !221)
!302 = !DILocation(line: 502, column: 28, scope: !298)
!303 = !DILocalVariable(name: "outFunc", arg: 2, scope: !298, file: !25, line: 503, type: !38)
!304 = !DILocation(line: 503, column: 40, scope: !298)
!305 = !DILocalVariable(name: "outFuncData", arg: 3, scope: !298, file: !25, line: 504, type: !16)
!306 = !DILocation(line: 504, column: 30, scope: !298)
!307 = !DILocalVariable(name: "x", scope: !298, file: !25, line: 512, type: !20)
!308 = !DILocation(line: 512, column: 15, scope: !298)
!309 = !DILocation(line: 512, column: 19, scope: !298)
!310 = !DILocation(line: 514, column: 8, scope: !311)
!311 = distinct !DILexicalBlock(scope: !298, file: !25, line: 514, column: 8)
!312 = !DILocation(line: 514, column: 14, scope: !311)
!313 = !DILocation(line: 514, column: 8, scope: !298)
!314 = !DILocation(line: 515, column: 7, scope: !315)
!315 = distinct !DILexicalBlock(scope: !311, file: !25, line: 514, column: 20)
!316 = !DILocation(line: 515, column: 15, scope: !315)
!317 = !DILocation(line: 516, column: 4, scope: !315)
!318 = !DILocation(line: 517, column: 7, scope: !319)
!319 = distinct !DILexicalBlock(scope: !311, file: !25, line: 516, column: 11)
!320 = !DILocation(line: 517, column: 15, scope: !319)
!321 = !DILocation(line: 517, column: 55, scope: !319)
!322 = !DILocation(line: 519, column: 39, scope: !298)
!323 = !DILocation(line: 519, column: 46, scope: !298)
!324 = !DILocation(line: 519, column: 55, scope: !298)
!325 = !DILocation(line: 519, column: 4, scope: !298)
!326 = !DILocation(line: 521, column: 1, scope: !298)
