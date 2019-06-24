; ModuleID = './line2-logbuf.o.i'
source_filename = "./line2-logbuf.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.logbuf = type { i8*, i64, i8*, i64, %struct.logbuf* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: nounwind uwtable
define noalias %struct.logbuf* @logbuf_new(i8*, i64, %struct.logbuf*) #0 !dbg !11 {
  %4 = alloca %struct.logbuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.logbuf*, align 8
  %8 = alloca %struct.logbuf*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !36, metadata !37), !dbg !38
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !39, metadata !37), !dbg !40
  store %struct.logbuf* %2, %struct.logbuf** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.logbuf** %7, metadata !41, metadata !37), !dbg !42
  call void @llvm.dbg.declare(metadata %struct.logbuf** %8, metadata !43, metadata !37), !dbg !44
  %9 = call noalias i8* @malloc(i64 40) #4, !dbg !45
  %10 = bitcast i8* %9 to %struct.logbuf*, !dbg !45
  store %struct.logbuf* %10, %struct.logbuf** %8, align 8, !dbg !47
  %11 = icmp ne %struct.logbuf* %10, null, !dbg !47
  br i1 %11, label %18, label %12, !dbg !48

; <label>:12:                                     ; preds = %3
  %13 = load i8*, i8** %5, align 8, !dbg !49
  %14 = icmp ne i8* %13, null, !dbg !49
  br i1 %14, label %15, label %17, !dbg !52

; <label>:15:                                     ; preds = %12
  %16 = load i8*, i8** %5, align 8, !dbg !53
  call void @free(i8* %16) #4, !dbg !54
  br label %17, !dbg !54

; <label>:17:                                     ; preds = %15, %12
  store %struct.logbuf* null, %struct.logbuf** %4, align 8, !dbg !55
  br label %50, !dbg !55

; <label>:18:                                     ; preds = %3
  %19 = load i8*, i8** %5, align 8, !dbg !56
  %20 = load %struct.logbuf*, %struct.logbuf** %8, align 8, !dbg !57
  %21 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %20, i32 0, i32 0, !dbg !58
  store i8* %19, i8** %21, align 8, !dbg !59
  %22 = load i64, i64* %6, align 8, !dbg !60
  %23 = load %struct.logbuf*, %struct.logbuf** %8, align 8, !dbg !61
  %24 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %23, i32 0, i32 1, !dbg !62
  store i64 %22, i64* %24, align 8, !dbg !63
  %25 = load %struct.logbuf*, %struct.logbuf** %7, align 8, !dbg !64
  %26 = icmp ne %struct.logbuf* %25, null, !dbg !64
  br i1 %26, label %27, label %41, !dbg !66

; <label>:27:                                     ; preds = %18
  %28 = load %struct.logbuf*, %struct.logbuf** %7, align 8, !dbg !67
  %29 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %28, i32 0, i32 2, !dbg !69
  %30 = load i8*, i8** %29, align 8, !dbg !69
  %31 = load %struct.logbuf*, %struct.logbuf** %8, align 8, !dbg !70
  %32 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %31, i32 0, i32 2, !dbg !71
  store i8* %30, i8** %32, align 8, !dbg !72
  %33 = load %struct.logbuf*, %struct.logbuf** %7, align 8, !dbg !73
  %34 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %33, i32 0, i32 3, !dbg !74
  %35 = load i64, i64* %34, align 8, !dbg !74
  %36 = load %struct.logbuf*, %struct.logbuf** %8, align 8, !dbg !75
  %37 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %36, i32 0, i32 3, !dbg !76
  store i64 %35, i64* %37, align 8, !dbg !77
  %38 = load %struct.logbuf*, %struct.logbuf** %7, align 8, !dbg !78
  %39 = load %struct.logbuf*, %struct.logbuf** %8, align 8, !dbg !79
  %40 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %39, i32 0, i32 4, !dbg !80
  store %struct.logbuf* %38, %struct.logbuf** %40, align 8, !dbg !81
  br label %48, !dbg !82

; <label>:41:                                     ; preds = %18
  %42 = load %struct.logbuf*, %struct.logbuf** %8, align 8, !dbg !83
  %43 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %42, i32 0, i32 2, !dbg !85
  store i8* null, i8** %43, align 8, !dbg !86
  %44 = load %struct.logbuf*, %struct.logbuf** %8, align 8, !dbg !87
  %45 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %44, i32 0, i32 3, !dbg !88
  store i64 0, i64* %45, align 8, !dbg !89
  %46 = load %struct.logbuf*, %struct.logbuf** %8, align 8, !dbg !90
  %47 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %46, i32 0, i32 4, !dbg !91
  store %struct.logbuf* null, %struct.logbuf** %47, align 8, !dbg !92
  br label %48

; <label>:48:                                     ; preds = %41, %27
  %49 = load %struct.logbuf*, %struct.logbuf** %8, align 8, !dbg !93
  store %struct.logbuf* %49, %struct.logbuf** %4, align 8, !dbg !94
  br label %50, !dbg !94

; <label>:50:                                     ; preds = %48, %17
  %51 = load %struct.logbuf*, %struct.logbuf** %4, align 8, !dbg !95
  ret %struct.logbuf* %51, !dbg !95
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define noalias %struct.logbuf* @logbuf_new_alloc(i64, %struct.logbuf*) #0 !dbg !96 {
  %3 = alloca %struct.logbuf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.logbuf*, align 8
  %6 = alloca %struct.logbuf*, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !99, metadata !37), !dbg !100
  store %struct.logbuf* %1, %struct.logbuf** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.logbuf** %5, metadata !101, metadata !37), !dbg !102
  call void @llvm.dbg.declare(metadata %struct.logbuf** %6, metadata !103, metadata !37), !dbg !104
  %7 = call noalias i8* @malloc(i64 40) #4, !dbg !105
  %8 = bitcast i8* %7 to %struct.logbuf*, !dbg !105
  store %struct.logbuf* %8, %struct.logbuf** %6, align 8, !dbg !107
  %9 = icmp ne %struct.logbuf* %8, null, !dbg !107
  br i1 %9, label %11, label %10, !dbg !108

; <label>:10:                                     ; preds = %2
  store %struct.logbuf* null, %struct.logbuf** %3, align 8, !dbg !109
  br label %49, !dbg !109

; <label>:11:                                     ; preds = %2
  %12 = load i64, i64* %4, align 8, !dbg !110
  %13 = call noalias i8* @malloc(i64 %12) #4, !dbg !112
  %14 = load %struct.logbuf*, %struct.logbuf** %6, align 8, !dbg !113
  %15 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %14, i32 0, i32 0, !dbg !114
  store i8* %13, i8** %15, align 8, !dbg !115
  %16 = icmp ne i8* %13, null, !dbg !115
  br i1 %16, label %20, label %17, !dbg !116

; <label>:17:                                     ; preds = %11
  %18 = load %struct.logbuf*, %struct.logbuf** %6, align 8, !dbg !117
  %19 = bitcast %struct.logbuf* %18 to i8*, !dbg !117
  call void @free(i8* %19) #4, !dbg !119
  store %struct.logbuf* null, %struct.logbuf** %3, align 8, !dbg !120
  br label %49, !dbg !120

; <label>:20:                                     ; preds = %11
  %21 = load i64, i64* %4, align 8, !dbg !121
  %22 = load %struct.logbuf*, %struct.logbuf** %6, align 8, !dbg !122
  %23 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %22, i32 0, i32 1, !dbg !123
  store i64 %21, i64* %23, align 8, !dbg !124
  %24 = load %struct.logbuf*, %struct.logbuf** %5, align 8, !dbg !125
  %25 = icmp ne %struct.logbuf* %24, null, !dbg !125
  br i1 %25, label %26, label %40, !dbg !127

; <label>:26:                                     ; preds = %20
  %27 = load %struct.logbuf*, %struct.logbuf** %5, align 8, !dbg !128
  %28 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %27, i32 0, i32 2, !dbg !130
  %29 = load i8*, i8** %28, align 8, !dbg !130
  %30 = load %struct.logbuf*, %struct.logbuf** %6, align 8, !dbg !131
  %31 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %30, i32 0, i32 2, !dbg !132
  store i8* %29, i8** %31, align 8, !dbg !133
  %32 = load %struct.logbuf*, %struct.logbuf** %5, align 8, !dbg !134
  %33 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %32, i32 0, i32 3, !dbg !135
  %34 = load i64, i64* %33, align 8, !dbg !135
  %35 = load %struct.logbuf*, %struct.logbuf** %6, align 8, !dbg !136
  %36 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %35, i32 0, i32 3, !dbg !137
  store i64 %34, i64* %36, align 8, !dbg !138
  %37 = load %struct.logbuf*, %struct.logbuf** %5, align 8, !dbg !139
  %38 = load %struct.logbuf*, %struct.logbuf** %6, align 8, !dbg !140
  %39 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %38, i32 0, i32 4, !dbg !141
  store %struct.logbuf* %37, %struct.logbuf** %39, align 8, !dbg !142
  br label %47, !dbg !143

; <label>:40:                                     ; preds = %20
  %41 = load %struct.logbuf*, %struct.logbuf** %6, align 8, !dbg !144
  %42 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %41, i32 0, i32 2, !dbg !146
  store i8* null, i8** %42, align 8, !dbg !147
  %43 = load %struct.logbuf*, %struct.logbuf** %6, align 8, !dbg !148
  %44 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %43, i32 0, i32 3, !dbg !149
  store i64 0, i64* %44, align 8, !dbg !150
  %45 = load %struct.logbuf*, %struct.logbuf** %6, align 8, !dbg !151
  %46 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %45, i32 0, i32 4, !dbg !152
  store %struct.logbuf* null, %struct.logbuf** %46, align 8, !dbg !153
  br label %47

; <label>:47:                                     ; preds = %40, %26
  %48 = load %struct.logbuf*, %struct.logbuf** %6, align 8, !dbg !154
  store %struct.logbuf* %48, %struct.logbuf** %3, align 8, !dbg !155
  br label %49, !dbg !155

; <label>:49:                                     ; preds = %47, %17, %10
  %50 = load %struct.logbuf*, %struct.logbuf** %3, align 8, !dbg !156
  ret %struct.logbuf* %50, !dbg !156
}

; Function Attrs: nounwind uwtable
define noalias %struct.logbuf* @logbuf_new_copy(i8*, i64, %struct.logbuf*) #0 !dbg !157 {
  %4 = alloca %struct.logbuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.logbuf*, align 8
  %8 = alloca %struct.logbuf*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !162, metadata !37), !dbg !163
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !164, metadata !37), !dbg !165
  store %struct.logbuf* %2, %struct.logbuf** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.logbuf** %7, metadata !166, metadata !37), !dbg !167
  call void @llvm.dbg.declare(metadata %struct.logbuf** %8, metadata !168, metadata !37), !dbg !169
  %9 = call noalias i8* @malloc(i64 40) #4, !dbg !170
  %10 = bitcast i8* %9 to %struct.logbuf*, !dbg !170
  store %struct.logbuf* %10, %struct.logbuf** %8, align 8, !dbg !172
  %11 = icmp ne %struct.logbuf* %10, null, !dbg !172
  br i1 %11, label %13, label %12, !dbg !173

; <label>:12:                                     ; preds = %3
  store %struct.logbuf* null, %struct.logbuf** %4, align 8, !dbg !174
  br label %56, !dbg !174

; <label>:13:                                     ; preds = %3
  %14 = load i64, i64* %6, align 8, !dbg !175
  %15 = call noalias i8* @malloc(i64 %14) #4, !dbg !177
  %16 = load %struct.logbuf*, %struct.logbuf** %8, align 8, !dbg !178
  %17 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %16, i32 0, i32 0, !dbg !179
  store i8* %15, i8** %17, align 8, !dbg !180
  %18 = icmp ne i8* %15, null, !dbg !180
  br i1 %18, label %22, label %19, !dbg !181

; <label>:19:                                     ; preds = %13
  %20 = load %struct.logbuf*, %struct.logbuf** %8, align 8, !dbg !182
  %21 = bitcast %struct.logbuf* %20 to i8*, !dbg !182
  call void @free(i8* %21) #4, !dbg !184
  store %struct.logbuf* null, %struct.logbuf** %4, align 8, !dbg !185
  br label %56, !dbg !185

; <label>:22:                                     ; preds = %13
  %23 = load %struct.logbuf*, %struct.logbuf** %8, align 8, !dbg !186
  %24 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %23, i32 0, i32 0, !dbg !187
  %25 = load i8*, i8** %24, align 8, !dbg !187
  %26 = load i8*, i8** %5, align 8, !dbg !188
  %27 = load i64, i64* %6, align 8, !dbg !189
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 %27, i32 1, i1 false), !dbg !190
  %28 = load i64, i64* %6, align 8, !dbg !191
  %29 = load %struct.logbuf*, %struct.logbuf** %8, align 8, !dbg !192
  %30 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %29, i32 0, i32 1, !dbg !193
  store i64 %28, i64* %30, align 8, !dbg !194
  %31 = load %struct.logbuf*, %struct.logbuf** %7, align 8, !dbg !195
  %32 = icmp ne %struct.logbuf* %31, null, !dbg !195
  br i1 %32, label %33, label %47, !dbg !197

; <label>:33:                                     ; preds = %22
  %34 = load %struct.logbuf*, %struct.logbuf** %7, align 8, !dbg !198
  %35 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %34, i32 0, i32 2, !dbg !200
  %36 = load i8*, i8** %35, align 8, !dbg !200
  %37 = load %struct.logbuf*, %struct.logbuf** %8, align 8, !dbg !201
  %38 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %37, i32 0, i32 2, !dbg !202
  store i8* %36, i8** %38, align 8, !dbg !203
  %39 = load %struct.logbuf*, %struct.logbuf** %7, align 8, !dbg !204
  %40 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %39, i32 0, i32 3, !dbg !205
  %41 = load i64, i64* %40, align 8, !dbg !205
  %42 = load %struct.logbuf*, %struct.logbuf** %8, align 8, !dbg !206
  %43 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %42, i32 0, i32 3, !dbg !207
  store i64 %41, i64* %43, align 8, !dbg !208
  %44 = load %struct.logbuf*, %struct.logbuf** %7, align 8, !dbg !209
  %45 = load %struct.logbuf*, %struct.logbuf** %8, align 8, !dbg !210
  %46 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %45, i32 0, i32 4, !dbg !211
  store %struct.logbuf* %44, %struct.logbuf** %46, align 8, !dbg !212
  br label %54, !dbg !213

; <label>:47:                                     ; preds = %22
  %48 = load %struct.logbuf*, %struct.logbuf** %8, align 8, !dbg !214
  %49 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %48, i32 0, i32 2, !dbg !216
  store i8* null, i8** %49, align 8, !dbg !217
  %50 = load %struct.logbuf*, %struct.logbuf** %8, align 8, !dbg !218
  %51 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %50, i32 0, i32 3, !dbg !219
  store i64 0, i64* %51, align 8, !dbg !220
  %52 = load %struct.logbuf*, %struct.logbuf** %8, align 8, !dbg !221
  %53 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %52, i32 0, i32 4, !dbg !222
  store %struct.logbuf* null, %struct.logbuf** %53, align 8, !dbg !223
  br label %54

; <label>:54:                                     ; preds = %47, %33
  %55 = load %struct.logbuf*, %struct.logbuf** %8, align 8, !dbg !224
  store %struct.logbuf* %55, %struct.logbuf** %4, align 8, !dbg !225
  br label %56, !dbg !225

; <label>:56:                                     ; preds = %54, %19, %12
  %57 = load %struct.logbuf*, %struct.logbuf** %4, align 8, !dbg !226
  ret %struct.logbuf* %57, !dbg !226
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define noalias %struct.logbuf* @logbuf_new_printf(%struct.logbuf*, i8*, ...) #0 !dbg !227 {
  %3 = alloca %struct.logbuf*, align 8
  %4 = alloca %struct.logbuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  %7 = alloca %struct.logbuf*, align 8
  store %struct.logbuf* %0, %struct.logbuf** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.logbuf** %4, metadata !232, metadata !37), !dbg !233
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !234, metadata !37), !dbg !235
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %6, metadata !236, metadata !37), !dbg !251
  call void @llvm.dbg.declare(metadata %struct.logbuf** %7, metadata !252, metadata !37), !dbg !253
  %8 = call noalias i8* @malloc(i64 40) #4, !dbg !254
  %9 = bitcast i8* %8 to %struct.logbuf*, !dbg !254
  store %struct.logbuf* %9, %struct.logbuf** %7, align 8, !dbg !256
  %10 = icmp ne %struct.logbuf* %9, null, !dbg !256
  br i1 %10, label %12, label %11, !dbg !257

; <label>:11:                                     ; preds = %2
  store %struct.logbuf* null, %struct.logbuf** %3, align 8, !dbg !258
  br label %58, !dbg !258

; <label>:12:                                     ; preds = %2
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i32 0, i32 0, !dbg !259
  %14 = bitcast %struct.__va_list_tag* %13 to i8*, !dbg !259
  call void @llvm.va_start(i8* %14), !dbg !259
  %15 = load %struct.logbuf*, %struct.logbuf** %7, align 8, !dbg !260
  %16 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %15, i32 0, i32 0, !dbg !261
  %17 = load i8*, i8** %5, align 8, !dbg !262
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i32 0, i32 0, !dbg !263
  %19 = call i32 @vasprintf(i8** %16, i8* %17, %struct.__va_list_tag* %18) #4, !dbg !264
  %20 = sext i32 %19 to i64, !dbg !264
  %21 = load %struct.logbuf*, %struct.logbuf** %7, align 8, !dbg !265
  %22 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %21, i32 0, i32 1, !dbg !266
  store i64 %20, i64* %22, align 8, !dbg !267
  %23 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i32 0, i32 0, !dbg !268
  %24 = bitcast %struct.__va_list_tag* %23 to i8*, !dbg !268
  call void @llvm.va_end(i8* %24), !dbg !268
  %25 = load %struct.logbuf*, %struct.logbuf** %7, align 8, !dbg !269
  %26 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %25, i32 0, i32 1, !dbg !271
  %27 = load i64, i64* %26, align 8, !dbg !271
  %28 = icmp slt i64 %27, 0, !dbg !272
  br i1 %28, label %29, label %32, !dbg !273

; <label>:29:                                     ; preds = %12
  %30 = load %struct.logbuf*, %struct.logbuf** %7, align 8, !dbg !274
  %31 = bitcast %struct.logbuf* %30 to i8*, !dbg !274
  call void @free(i8* %31) #4, !dbg !276
  store %struct.logbuf* null, %struct.logbuf** %3, align 8, !dbg !277
  br label %58, !dbg !277

; <label>:32:                                     ; preds = %12
  %33 = load %struct.logbuf*, %struct.logbuf** %4, align 8, !dbg !278
  %34 = icmp ne %struct.logbuf* %33, null, !dbg !278
  br i1 %34, label %35, label %49, !dbg !280

; <label>:35:                                     ; preds = %32
  %36 = load %struct.logbuf*, %struct.logbuf** %4, align 8, !dbg !281
  %37 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %36, i32 0, i32 2, !dbg !283
  %38 = load i8*, i8** %37, align 8, !dbg !283
  %39 = load %struct.logbuf*, %struct.logbuf** %7, align 8, !dbg !284
  %40 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %39, i32 0, i32 2, !dbg !285
  store i8* %38, i8** %40, align 8, !dbg !286
  %41 = load %struct.logbuf*, %struct.logbuf** %4, align 8, !dbg !287
  %42 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %41, i32 0, i32 3, !dbg !288
  %43 = load i64, i64* %42, align 8, !dbg !288
  %44 = load %struct.logbuf*, %struct.logbuf** %7, align 8, !dbg !289
  %45 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %44, i32 0, i32 3, !dbg !290
  store i64 %43, i64* %45, align 8, !dbg !291
  %46 = load %struct.logbuf*, %struct.logbuf** %4, align 8, !dbg !292
  %47 = load %struct.logbuf*, %struct.logbuf** %7, align 8, !dbg !293
  %48 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %47, i32 0, i32 4, !dbg !294
  store %struct.logbuf* %46, %struct.logbuf** %48, align 8, !dbg !295
  br label %56, !dbg !296

; <label>:49:                                     ; preds = %32
  %50 = load %struct.logbuf*, %struct.logbuf** %7, align 8, !dbg !297
  %51 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %50, i32 0, i32 2, !dbg !299
  store i8* null, i8** %51, align 8, !dbg !300
  %52 = load %struct.logbuf*, %struct.logbuf** %7, align 8, !dbg !301
  %53 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %52, i32 0, i32 3, !dbg !302
  store i64 0, i64* %53, align 8, !dbg !303
  %54 = load %struct.logbuf*, %struct.logbuf** %7, align 8, !dbg !304
  %55 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %54, i32 0, i32 4, !dbg !305
  store %struct.logbuf* null, %struct.logbuf** %55, align 8, !dbg !306
  br label %56

; <label>:56:                                     ; preds = %49, %35
  %57 = load %struct.logbuf*, %struct.logbuf** %7, align 8, !dbg !307
  store %struct.logbuf* %57, %struct.logbuf** %3, align 8, !dbg !308
  br label %58, !dbg !308

; <label>:58:                                     ; preds = %56, %29, %11
  %59 = load %struct.logbuf*, %struct.logbuf** %3, align 8, !dbg !309
  ret %struct.logbuf* %59, !dbg !309
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: nounwind
declare i32 @vasprintf(i8**, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: nounwind uwtable
define noalias %struct.logbuf* @logbuf_new_deepcopy(%struct.logbuf*, i32) #0 !dbg !310 {
  %3 = alloca %struct.logbuf*, align 8
  %4 = alloca %struct.logbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.logbuf*, align 8
  %7 = alloca i8*, align 8
  store %struct.logbuf* %0, %struct.logbuf** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.logbuf** %4, metadata !314, metadata !37), !dbg !315
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !316, metadata !37), !dbg !317
  call void @llvm.dbg.declare(metadata %struct.logbuf** %6, metadata !318, metadata !37), !dbg !319
  call void @llvm.dbg.declare(metadata i8** %7, metadata !320, metadata !37), !dbg !321
  %8 = load %struct.logbuf*, %struct.logbuf** %4, align 8, !dbg !322
  %9 = icmp ne %struct.logbuf* %8, null, !dbg !322
  br i1 %9, label %11, label %10, !dbg !324

; <label>:10:                                     ; preds = %2
  store %struct.logbuf* null, %struct.logbuf** %3, align 8, !dbg !325
  br label %85, !dbg !325

; <label>:11:                                     ; preds = %2
  %12 = load i32, i32* %5, align 4, !dbg !326
  %13 = icmp ne i32 %12, 0, !dbg !326
  br i1 %13, label %14, label %55, !dbg !328

; <label>:14:                                     ; preds = %11
  %15 = load %struct.logbuf*, %struct.logbuf** %4, align 8, !dbg !329
  %16 = call i64 @logbuf_size(%struct.logbuf* %15), !dbg !331
  %17 = call noalias %struct.logbuf* @logbuf_new_alloc(i64 %16, %struct.logbuf* null), !dbg !332
  store %struct.logbuf* %17, %struct.logbuf** %6, align 8, !dbg !334
  %18 = load %struct.logbuf*, %struct.logbuf** %6, align 8, !dbg !335
  %19 = icmp ne %struct.logbuf* %18, null, !dbg !335
  br i1 %19, label %21, label %20, !dbg !337

; <label>:20:                                     ; preds = %14
  store %struct.logbuf* null, %struct.logbuf** %3, align 8, !dbg !338
  br label %85, !dbg !338

; <label>:21:                                     ; preds = %14
  %22 = load %struct.logbuf*, %struct.logbuf** %4, align 8, !dbg !339
  %23 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %22, i32 0, i32 2, !dbg !340
  %24 = load i8*, i8** %23, align 8, !dbg !340
  %25 = load %struct.logbuf*, %struct.logbuf** %6, align 8, !dbg !341
  %26 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %25, i32 0, i32 2, !dbg !342
  store i8* %24, i8** %26, align 8, !dbg !343
  %27 = load %struct.logbuf*, %struct.logbuf** %4, align 8, !dbg !344
  %28 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %27, i32 0, i32 3, !dbg !345
  %29 = load i64, i64* %28, align 8, !dbg !345
  %30 = load %struct.logbuf*, %struct.logbuf** %6, align 8, !dbg !346
  %31 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %30, i32 0, i32 3, !dbg !347
  store i64 %29, i64* %31, align 8, !dbg !348
  %32 = load %struct.logbuf*, %struct.logbuf** %6, align 8, !dbg !349
  %33 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %32, i32 0, i32 0, !dbg !350
  %34 = load i8*, i8** %33, align 8, !dbg !350
  store i8* %34, i8** %7, align 8, !dbg !351
  br label %35, !dbg !352

; <label>:35:                                     ; preds = %38, %21
  %36 = load %struct.logbuf*, %struct.logbuf** %4, align 8, !dbg !353
  %37 = icmp ne %struct.logbuf* %36, null, !dbg !354
  br i1 %37, label %38, label %54, !dbg !354

; <label>:38:                                     ; preds = %35
  %39 = load i8*, i8** %7, align 8, !dbg !355
  %40 = load %struct.logbuf*, %struct.logbuf** %4, align 8, !dbg !357
  %41 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %40, i32 0, i32 0, !dbg !358
  %42 = load i8*, i8** %41, align 8, !dbg !358
  %43 = load %struct.logbuf*, %struct.logbuf** %4, align 8, !dbg !359
  %44 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %43, i32 0, i32 1, !dbg !360
  %45 = load i64, i64* %44, align 8, !dbg !360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %42, i64 %45, i32 1, i1 false), !dbg !361
  %46 = load %struct.logbuf*, %struct.logbuf** %4, align 8, !dbg !362
  %47 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %46, i32 0, i32 1, !dbg !363
  %48 = load i64, i64* %47, align 8, !dbg !363
  %49 = load i8*, i8** %7, align 8, !dbg !364
  %50 = getelementptr inbounds i8, i8* %49, i64 %48, !dbg !364
  store i8* %50, i8** %7, align 8, !dbg !364
  %51 = load %struct.logbuf*, %struct.logbuf** %4, align 8, !dbg !365
  %52 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %51, i32 0, i32 4, !dbg !366
  %53 = load %struct.logbuf*, %struct.logbuf** %52, align 8, !dbg !366
  store %struct.logbuf* %53, %struct.logbuf** %4, align 8, !dbg !367
  br label %35, !dbg !368, !llvm.loop !370

; <label>:54:                                     ; preds = %35
  br label %83, !dbg !371

; <label>:55:                                     ; preds = %11
  %56 = load %struct.logbuf*, %struct.logbuf** %4, align 8, !dbg !372
  %57 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %56, i32 0, i32 0, !dbg !374
  %58 = load i8*, i8** %57, align 8, !dbg !374
  %59 = load %struct.logbuf*, %struct.logbuf** %4, align 8, !dbg !375
  %60 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %59, i32 0, i32 1, !dbg !376
  %61 = load i64, i64* %60, align 8, !dbg !376
  %62 = call noalias %struct.logbuf* @logbuf_new_copy(i8* %58, i64 %61, %struct.logbuf* null), !dbg !377
  store %struct.logbuf* %62, %struct.logbuf** %6, align 8, !dbg !378
  %63 = load %struct.logbuf*, %struct.logbuf** %6, align 8, !dbg !379
  %64 = icmp ne %struct.logbuf* %63, null, !dbg !379
  br i1 %64, label %66, label %65, !dbg !381

; <label>:65:                                     ; preds = %55
  store %struct.logbuf* null, %struct.logbuf** %3, align 8, !dbg !382
  br label %85, !dbg !382

; <label>:66:                                     ; preds = %55
  %67 = load %struct.logbuf*, %struct.logbuf** %4, align 8, !dbg !383
  %68 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %67, i32 0, i32 2, !dbg !384
  %69 = load i8*, i8** %68, align 8, !dbg !384
  %70 = load %struct.logbuf*, %struct.logbuf** %6, align 8, !dbg !385
  %71 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %70, i32 0, i32 2, !dbg !386
  store i8* %69, i8** %71, align 8, !dbg !387
  %72 = load %struct.logbuf*, %struct.logbuf** %4, align 8, !dbg !388
  %73 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %72, i32 0, i32 3, !dbg !389
  %74 = load i64, i64* %73, align 8, !dbg !389
  %75 = load %struct.logbuf*, %struct.logbuf** %6, align 8, !dbg !390
  %76 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %75, i32 0, i32 3, !dbg !391
  store i64 %74, i64* %76, align 8, !dbg !392
  %77 = load %struct.logbuf*, %struct.logbuf** %4, align 8, !dbg !393
  %78 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %77, i32 0, i32 4, !dbg !394
  %79 = load %struct.logbuf*, %struct.logbuf** %78, align 8, !dbg !394
  %80 = call noalias %struct.logbuf* @logbuf_new_deepcopy(%struct.logbuf* %79, i32 0), !dbg !395
  %81 = load %struct.logbuf*, %struct.logbuf** %6, align 8, !dbg !396
  %82 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %81, i32 0, i32 4, !dbg !397
  store %struct.logbuf* %80, %struct.logbuf** %82, align 8, !dbg !398
  br label %83

; <label>:83:                                     ; preds = %66, %54
  %84 = load %struct.logbuf*, %struct.logbuf** %6, align 8, !dbg !399
  store %struct.logbuf* %84, %struct.logbuf** %3, align 8, !dbg !400
  br label %85, !dbg !400

; <label>:85:                                     ; preds = %83, %65, %20, %10
  %86 = load %struct.logbuf*, %struct.logbuf** %3, align 8, !dbg !401
  ret %struct.logbuf* %86, !dbg !401
}

; Function Attrs: nounwind uwtable
define i64 @logbuf_size(%struct.logbuf* nonnull) #0 !dbg !402 {
  %2 = alloca %struct.logbuf*, align 8
  %3 = alloca i64, align 8
  store %struct.logbuf* %0, %struct.logbuf** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.logbuf** %2, metadata !405, metadata !37), !dbg !406
  call void @llvm.dbg.declare(metadata i64* %3, metadata !407, metadata !37), !dbg !408
  %4 = load %struct.logbuf*, %struct.logbuf** %2, align 8, !dbg !409
  %5 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %4, i32 0, i32 1, !dbg !410
  %6 = load i64, i64* %5, align 8, !dbg !410
  store i64 %6, i64* %3, align 8, !dbg !411
  %7 = load %struct.logbuf*, %struct.logbuf** %2, align 8, !dbg !412
  %8 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %7, i32 0, i32 4, !dbg !414
  %9 = load %struct.logbuf*, %struct.logbuf** %8, align 8, !dbg !414
  %10 = icmp ne %struct.logbuf* %9, null, !dbg !412
  br i1 %10, label %11, label %18, !dbg !415

; <label>:11:                                     ; preds = %1
  %12 = load %struct.logbuf*, %struct.logbuf** %2, align 8, !dbg !416
  %13 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %12, i32 0, i32 4, !dbg !418
  %14 = load %struct.logbuf*, %struct.logbuf** %13, align 8, !dbg !418
  %15 = call i64 @logbuf_size(%struct.logbuf* %14), !dbg !419
  %16 = load i64, i64* %3, align 8, !dbg !420
  %17 = add nsw i64 %16, %15, !dbg !420
  store i64 %17, i64* %3, align 8, !dbg !420
  br label %18, !dbg !421

; <label>:18:                                     ; preds = %11, %1
  %19 = load i64, i64* %3, align 8, !dbg !422
  ret i64 %19, !dbg !423
}

; Function Attrs: nounwind uwtable
define %struct.logbuf* @logbuf_make_contiguous(%struct.logbuf*) #0 !dbg !424 {
  %2 = alloca %struct.logbuf*, align 8
  %3 = alloca %struct.logbuf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.logbuf*, align 8
  store %struct.logbuf* %0, %struct.logbuf** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.logbuf** %3, metadata !427, metadata !37), !dbg !428
  call void @llvm.dbg.declare(metadata i8** %4, metadata !429, metadata !37), !dbg !430
  call void @llvm.dbg.declare(metadata %struct.logbuf** %5, metadata !431, metadata !37), !dbg !432
  %6 = load %struct.logbuf*, %struct.logbuf** %3, align 8, !dbg !433
  %7 = icmp ne %struct.logbuf* %6, null, !dbg !433
  br i1 %7, label %9, label %8, !dbg !435

; <label>:8:                                      ; preds = %1
  store %struct.logbuf* null, %struct.logbuf** %2, align 8, !dbg !436
  br label %68, !dbg !436

; <label>:9:                                      ; preds = %1
  %10 = load %struct.logbuf*, %struct.logbuf** %3, align 8, !dbg !437
  %11 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %10, i32 0, i32 4, !dbg !439
  %12 = load %struct.logbuf*, %struct.logbuf** %11, align 8, !dbg !439
  %13 = icmp ne %struct.logbuf* %12, null, !dbg !437
  br i1 %13, label %16, label %14, !dbg !440

; <label>:14:                                     ; preds = %9
  %15 = load %struct.logbuf*, %struct.logbuf** %3, align 8, !dbg !441
  store %struct.logbuf* %15, %struct.logbuf** %2, align 8, !dbg !442
  br label %68, !dbg !442

; <label>:16:                                     ; preds = %9
  %17 = load %struct.logbuf*, %struct.logbuf** %3, align 8, !dbg !443
  %18 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %17, i32 0, i32 0, !dbg !444
  %19 = load i8*, i8** %18, align 8, !dbg !444
  %20 = load %struct.logbuf*, %struct.logbuf** %3, align 8, !dbg !445
  %21 = call i64 @logbuf_size(%struct.logbuf* %20), !dbg !446
  %22 = call i8* @realloc(i8* %19, i64 %21) #4, !dbg !447
  store i8* %22, i8** %4, align 8, !dbg !449
  %23 = load i8*, i8** %4, align 8, !dbg !450
  %24 = icmp ne i8* %23, null, !dbg !450
  br i1 %24, label %26, label %25, !dbg !452

; <label>:25:                                     ; preds = %16
  store %struct.logbuf* null, %struct.logbuf** %2, align 8, !dbg !453
  br label %68, !dbg !453

; <label>:26:                                     ; preds = %16
  %27 = load i8*, i8** %4, align 8, !dbg !454
  %28 = load %struct.logbuf*, %struct.logbuf** %3, align 8, !dbg !455
  %29 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %28, i32 0, i32 0, !dbg !456
  store i8* %27, i8** %29, align 8, !dbg !457
  %30 = load %struct.logbuf*, %struct.logbuf** %3, align 8, !dbg !458
  store %struct.logbuf* %30, %struct.logbuf** %5, align 8, !dbg !459
  %31 = load %struct.logbuf*, %struct.logbuf** %5, align 8, !dbg !460
  %32 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %31, i32 0, i32 1, !dbg !461
  %33 = load i64, i64* %32, align 8, !dbg !461
  %34 = load i8*, i8** %4, align 8, !dbg !462
  %35 = getelementptr inbounds i8, i8* %34, i64 %33, !dbg !462
  store i8* %35, i8** %4, align 8, !dbg !462
  br label %36, !dbg !463

; <label>:36:                                     ; preds = %41, %26
  %37 = load %struct.logbuf*, %struct.logbuf** %5, align 8, !dbg !464
  %38 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %37, i32 0, i32 4, !dbg !465
  %39 = load %struct.logbuf*, %struct.logbuf** %38, align 8, !dbg !465
  store %struct.logbuf* %39, %struct.logbuf** %5, align 8, !dbg !466
  %40 = icmp ne %struct.logbuf* %39, null, !dbg !467
  br i1 %40, label %41, label %61, !dbg !467

; <label>:41:                                     ; preds = %36
  %42 = load i8*, i8** %4, align 8, !dbg !468
  %43 = load %struct.logbuf*, %struct.logbuf** %5, align 8, !dbg !470
  %44 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %43, i32 0, i32 0, !dbg !471
  %45 = load i8*, i8** %44, align 8, !dbg !471
  %46 = load %struct.logbuf*, %struct.logbuf** %5, align 8, !dbg !472
  %47 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %46, i32 0, i32 1, !dbg !473
  %48 = load i64, i64* %47, align 8, !dbg !473
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %45, i64 %48, i32 1, i1 false), !dbg !474
  %49 = load %struct.logbuf*, %struct.logbuf** %5, align 8, !dbg !475
  %50 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %49, i32 0, i32 1, !dbg !476
  %51 = load i64, i64* %50, align 8, !dbg !476
  %52 = load %struct.logbuf*, %struct.logbuf** %3, align 8, !dbg !477
  %53 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %52, i32 0, i32 1, !dbg !478
  %54 = load i64, i64* %53, align 8, !dbg !479
  %55 = add nsw i64 %54, %51, !dbg !479
  store i64 %55, i64* %53, align 8, !dbg !479
  %56 = load %struct.logbuf*, %struct.logbuf** %5, align 8, !dbg !480
  %57 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %56, i32 0, i32 1, !dbg !481
  %58 = load i64, i64* %57, align 8, !dbg !481
  %59 = load i8*, i8** %4, align 8, !dbg !482
  %60 = getelementptr inbounds i8, i8* %59, i64 %58, !dbg !482
  store i8* %60, i8** %4, align 8, !dbg !482
  br label %36, !dbg !483, !llvm.loop !485

; <label>:61:                                     ; preds = %36
  %62 = load %struct.logbuf*, %struct.logbuf** %3, align 8, !dbg !486
  %63 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %62, i32 0, i32 4, !dbg !487
  %64 = load %struct.logbuf*, %struct.logbuf** %63, align 8, !dbg !487
  call void @logbuf_free(%struct.logbuf* %64), !dbg !488
  %65 = load %struct.logbuf*, %struct.logbuf** %3, align 8, !dbg !489
  %66 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %65, i32 0, i32 4, !dbg !490
  store %struct.logbuf* null, %struct.logbuf** %66, align 8, !dbg !491
  %67 = load %struct.logbuf*, %struct.logbuf** %3, align 8, !dbg !492
  store %struct.logbuf* %67, %struct.logbuf** %2, align 8, !dbg !493
  br label %68, !dbg !493

; <label>:68:                                     ; preds = %61, %25, %14, %8
  %69 = load %struct.logbuf*, %struct.logbuf** %2, align 8, !dbg !494
  ret %struct.logbuf* %69, !dbg !494
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #2

; Function Attrs: nounwind uwtable
define void @logbuf_free(%struct.logbuf* nonnull) #0 !dbg !495 {
  %2 = alloca %struct.logbuf*, align 8
  store %struct.logbuf* %0, %struct.logbuf** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.logbuf** %2, metadata !498, metadata !37), !dbg !499
  %3 = load %struct.logbuf*, %struct.logbuf** %2, align 8, !dbg !500
  %4 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %3, i32 0, i32 0, !dbg !502
  %5 = load i8*, i8** %4, align 8, !dbg !502
  %6 = icmp ne i8* %5, null, !dbg !500
  br i1 %6, label %7, label %11, !dbg !503

; <label>:7:                                      ; preds = %1
  %8 = load %struct.logbuf*, %struct.logbuf** %2, align 8, !dbg !504
  %9 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %8, i32 0, i32 0, !dbg !506
  %10 = load i8*, i8** %9, align 8, !dbg !506
  call void @free(i8* %10) #4, !dbg !507
  br label %11, !dbg !508

; <label>:11:                                     ; preds = %7, %1
  %12 = load %struct.logbuf*, %struct.logbuf** %2, align 8, !dbg !509
  %13 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %12, i32 0, i32 4, !dbg !511
  %14 = load %struct.logbuf*, %struct.logbuf** %13, align 8, !dbg !511
  %15 = icmp ne %struct.logbuf* %14, null, !dbg !509
  br i1 %15, label %16, label %20, !dbg !512

; <label>:16:                                     ; preds = %11
  %17 = load %struct.logbuf*, %struct.logbuf** %2, align 8, !dbg !513
  %18 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %17, i32 0, i32 4, !dbg !515
  %19 = load %struct.logbuf*, %struct.logbuf** %18, align 8, !dbg !515
  call void @logbuf_free(%struct.logbuf* %19), !dbg !516
  br label %20, !dbg !517

; <label>:20:                                     ; preds = %16, %11
  %21 = load %struct.logbuf*, %struct.logbuf** %2, align 8, !dbg !518
  %22 = bitcast %struct.logbuf* %21 to i8*, !dbg !518
  call void @free(i8* %22) #4, !dbg !519
  ret void, !dbg !520
}

; Function Attrs: nounwind uwtable
define i64 @logbuf_write_free(%struct.logbuf* nonnull, i64 (i8*, i64, i8*, i64)*) #0 !dbg !521 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.logbuf*, align 8
  %5 = alloca i64 (i8*, i64, i8*, i64)*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.logbuf* %0, %struct.logbuf** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.logbuf** %4, metadata !528, metadata !37), !dbg !529
  store i64 (i8*, i64, i8*, i64)* %1, i64 (i8*, i64, i8*, i64)** %5, align 8
  call void @llvm.dbg.declare(metadata i64 (i8*, i64, i8*, i64)** %5, metadata !530, metadata !37), !dbg !531
  call void @llvm.dbg.declare(metadata i64* %6, metadata !532, metadata !37), !dbg !533
  call void @llvm.dbg.declare(metadata i64* %7, metadata !534, metadata !37), !dbg !535
  store i64 0, i64* %7, align 8, !dbg !535
  %8 = load i64 (i8*, i64, i8*, i64)*, i64 (i8*, i64, i8*, i64)** %5, align 8, !dbg !536
  %9 = load %struct.logbuf*, %struct.logbuf** %4, align 8, !dbg !537
  %10 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %9, i32 0, i32 2, !dbg !538
  %11 = load i8*, i8** %10, align 8, !dbg !538
  %12 = load %struct.logbuf*, %struct.logbuf** %4, align 8, !dbg !539
  %13 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %12, i32 0, i32 3, !dbg !540
  %14 = load i64, i64* %13, align 8, !dbg !540
  %15 = load %struct.logbuf*, %struct.logbuf** %4, align 8, !dbg !541
  %16 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %15, i32 0, i32 0, !dbg !542
  %17 = load i8*, i8** %16, align 8, !dbg !542
  %18 = load %struct.logbuf*, %struct.logbuf** %4, align 8, !dbg !543
  %19 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %18, i32 0, i32 1, !dbg !544
  %20 = load i64, i64* %19, align 8, !dbg !544
  %21 = call i64 %8(i8* %11, i64 %14, i8* %17, i64 %20), !dbg !536
  store i64 %21, i64* %6, align 8, !dbg !545
  %22 = load %struct.logbuf*, %struct.logbuf** %4, align 8, !dbg !546
  %23 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %22, i32 0, i32 0, !dbg !548
  %24 = load i8*, i8** %23, align 8, !dbg !548
  %25 = icmp ne i8* %24, null, !dbg !546
  br i1 %25, label %26, label %30, !dbg !549

; <label>:26:                                     ; preds = %2
  %27 = load %struct.logbuf*, %struct.logbuf** %4, align 8, !dbg !550
  %28 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %27, i32 0, i32 0, !dbg !552
  %29 = load i8*, i8** %28, align 8, !dbg !552
  call void @free(i8* %29) #4, !dbg !553
  br label %30, !dbg !554

; <label>:30:                                     ; preds = %26, %2
  %31 = load %struct.logbuf*, %struct.logbuf** %4, align 8, !dbg !555
  %32 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %31, i32 0, i32 4, !dbg !557
  %33 = load %struct.logbuf*, %struct.logbuf** %32, align 8, !dbg !557
  %34 = icmp ne %struct.logbuf* %33, null, !dbg !555
  br i1 %34, label %35, label %56, !dbg !558

; <label>:35:                                     ; preds = %30
  %36 = load i64, i64* %6, align 8, !dbg !559
  %37 = icmp eq i64 %36, -1, !dbg !562
  br i1 %37, label %38, label %42, !dbg !563

; <label>:38:                                     ; preds = %35
  %39 = load %struct.logbuf*, %struct.logbuf** %4, align 8, !dbg !564
  %40 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %39, i32 0, i32 4, !dbg !566
  %41 = load %struct.logbuf*, %struct.logbuf** %40, align 8, !dbg !566
  call void @logbuf_free(%struct.logbuf* %41), !dbg !567
  br label %55, !dbg !568

; <label>:42:                                     ; preds = %35
  %43 = load %struct.logbuf*, %struct.logbuf** %4, align 8, !dbg !569
  %44 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %43, i32 0, i32 2, !dbg !571
  %45 = load i8*, i8** %44, align 8, !dbg !571
  %46 = load %struct.logbuf*, %struct.logbuf** %4, align 8, !dbg !572
  %47 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %46, i32 0, i32 4, !dbg !573
  %48 = load %struct.logbuf*, %struct.logbuf** %47, align 8, !dbg !573
  %49 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %48, i32 0, i32 2, !dbg !574
  store i8* %45, i8** %49, align 8, !dbg !575
  %50 = load %struct.logbuf*, %struct.logbuf** %4, align 8, !dbg !576
  %51 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %50, i32 0, i32 4, !dbg !577
  %52 = load %struct.logbuf*, %struct.logbuf** %51, align 8, !dbg !577
  %53 = load i64 (i8*, i64, i8*, i64)*, i64 (i8*, i64, i8*, i64)** %5, align 8, !dbg !578
  %54 = call i64 @logbuf_write_free(%struct.logbuf* %52, i64 (i8*, i64, i8*, i64)* %53), !dbg !579
  store i64 %54, i64* %7, align 8, !dbg !580
  br label %55

; <label>:55:                                     ; preds = %42, %38
  br label %56, !dbg !581

; <label>:56:                                     ; preds = %55, %30
  %57 = load %struct.logbuf*, %struct.logbuf** %4, align 8, !dbg !582
  %58 = bitcast %struct.logbuf* %57 to i8*, !dbg !582
  call void @free(i8* %58) #4, !dbg !583
  %59 = load i64, i64* %6, align 8, !dbg !584
  %60 = icmp eq i64 %59, -1, !dbg !586
  br i1 %60, label %64, label %61, !dbg !587

; <label>:61:                                     ; preds = %56
  %62 = load i64, i64* %7, align 8, !dbg !588
  %63 = icmp eq i64 %62, -1, !dbg !590
  br i1 %63, label %64, label %65, !dbg !591

; <label>:64:                                     ; preds = %61, %56
  store i64 -1, i64* %3, align 8, !dbg !592
  br label %69, !dbg !592

; <label>:65:                                     ; preds = %61
  %66 = load i64, i64* %6, align 8, !dbg !593
  %67 = load i64, i64* %7, align 8, !dbg !594
  %68 = add nsw i64 %66, %67, !dbg !595
  store i64 %68, i64* %3, align 8, !dbg !596
  br label %69, !dbg !596

; <label>:69:                                     ; preds = %65, %64
  %70 = load i64, i64* %3, align 8, !dbg !597
  ret i64 %70, !dbg !597
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "line2-logbuf.o.i", directory: "/home/lichi/Desktop/sslsplit/task1")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!7 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!8 = !{i32 2, !"Dwarf Version", i32 4}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!11 = distinct !DISubprogram(name: "logbuf_new", scope: !12, file: !12, line: 48, type: !13, isLocal: false, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!12 = !DIFile(filename: "logbuf.c", directory: "/home/lichi/Desktop/sslsplit/task1")
!13 = !DISubroutineType(types: !14)
!14 = !{!15, !4, !34, !15}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "logbuf_t", file: !17, line: 43, baseType: !18)
!17 = !DIFile(filename: "logbuf.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "logbuf", file: !17, line: 37, size: 320, align: 64, elements: !19)
!19 = !{!20, !23, !29, !30, !32}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !18, file: !17, line: 38, baseType: !21, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!22 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !18, file: !17, line: 39, baseType: !24, size: 64, align: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !25, line: 109, baseType: !26)
!25 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !27, line: 172, baseType: !28)
!27 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!28 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "fh", scope: !18, file: !17, line: 40, baseType: !4, size: 64, align: 64, offset: 128)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "ctl", scope: !18, file: !17, line: 41, baseType: !31, size: 64, align: 64, offset: 192)
!31 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !18, file: !17, line: 42, baseType: !33, size: 64, align: 64, offset: 256)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !35, line: 216, baseType: !31)
!35 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!36 = !DILocalVariable(name: "buf", arg: 1, scope: !11, file: !12, line: 48, type: !4)
!37 = !DIExpression()
!38 = !DILocation(line: 48, column: 18, scope: !11)
!39 = !DILocalVariable(name: "sz", arg: 2, scope: !11, file: !12, line: 48, type: !34)
!40 = !DILocation(line: 48, column: 30, scope: !11)
!41 = !DILocalVariable(name: "next", arg: 3, scope: !11, file: !12, line: 48, type: !15)
!42 = !DILocation(line: 48, column: 44, scope: !11)
!43 = !DILocalVariable(name: "lb", scope: !11, file: !12, line: 50, type: !15)
!44 = !DILocation(line: 50, column: 12, scope: !11)
!45 = !DILocation(line: 52, column: 13, scope: !46)
!46 = distinct !DILexicalBlock(scope: !11, file: !12, line: 52, column: 6)
!47 = !DILocation(line: 52, column: 11, scope: !46)
!48 = !DILocation(line: 52, column: 6, scope: !11)
!49 = !DILocation(line: 53, column: 7, scope: !50)
!50 = distinct !DILexicalBlock(scope: !51, file: !12, line: 53, column: 7)
!51 = distinct !DILexicalBlock(scope: !46, file: !12, line: 52, column: 40)
!52 = !DILocation(line: 53, column: 7, scope: !51)
!53 = !DILocation(line: 54, column: 9, scope: !50)
!54 = !DILocation(line: 54, column: 4, scope: !50)
!55 = !DILocation(line: 55, column: 3, scope: !51)
!56 = !DILocation(line: 57, column: 12, scope: !11)
!57 = !DILocation(line: 57, column: 2, scope: !11)
!58 = !DILocation(line: 57, column: 6, scope: !11)
!59 = !DILocation(line: 57, column: 10, scope: !11)
!60 = !DILocation(line: 58, column: 11, scope: !11)
!61 = !DILocation(line: 58, column: 2, scope: !11)
!62 = !DILocation(line: 58, column: 6, scope: !11)
!63 = !DILocation(line: 58, column: 9, scope: !11)
!64 = !DILocation(line: 59, column: 6, scope: !65)
!65 = distinct !DILexicalBlock(scope: !11, file: !12, line: 59, column: 6)
!66 = !DILocation(line: 59, column: 6, scope: !11)
!67 = !DILocation(line: 60, column: 12, scope: !68)
!68 = distinct !DILexicalBlock(scope: !65, file: !12, line: 59, column: 12)
!69 = !DILocation(line: 60, column: 18, scope: !68)
!70 = !DILocation(line: 60, column: 3, scope: !68)
!71 = !DILocation(line: 60, column: 7, scope: !68)
!72 = !DILocation(line: 60, column: 10, scope: !68)
!73 = !DILocation(line: 61, column: 13, scope: !68)
!74 = !DILocation(line: 61, column: 19, scope: !68)
!75 = !DILocation(line: 61, column: 3, scope: !68)
!76 = !DILocation(line: 61, column: 7, scope: !68)
!77 = !DILocation(line: 61, column: 11, scope: !68)
!78 = !DILocation(line: 62, column: 14, scope: !68)
!79 = !DILocation(line: 62, column: 3, scope: !68)
!80 = !DILocation(line: 62, column: 7, scope: !68)
!81 = !DILocation(line: 62, column: 12, scope: !68)
!82 = !DILocation(line: 63, column: 2, scope: !68)
!83 = !DILocation(line: 64, column: 3, scope: !84)
!84 = distinct !DILexicalBlock(scope: !65, file: !12, line: 63, column: 9)
!85 = !DILocation(line: 64, column: 7, scope: !84)
!86 = !DILocation(line: 64, column: 10, scope: !84)
!87 = !DILocation(line: 65, column: 3, scope: !84)
!88 = !DILocation(line: 65, column: 7, scope: !84)
!89 = !DILocation(line: 65, column: 11, scope: !84)
!90 = !DILocation(line: 66, column: 3, scope: !84)
!91 = !DILocation(line: 66, column: 7, scope: !84)
!92 = !DILocation(line: 66, column: 12, scope: !84)
!93 = !DILocation(line: 68, column: 9, scope: !11)
!94 = !DILocation(line: 68, column: 2, scope: !11)
!95 = !DILocation(line: 69, column: 1, scope: !11)
!96 = distinct !DISubprogram(name: "logbuf_new_alloc", scope: !12, file: !12, line: 75, type: !97, isLocal: false, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!97 = !DISubroutineType(types: !98)
!98 = !{!15, !34, !15}
!99 = !DILocalVariable(name: "sz", arg: 1, scope: !96, file: !12, line: 75, type: !34)
!100 = !DILocation(line: 75, column: 25, scope: !96)
!101 = !DILocalVariable(name: "next", arg: 2, scope: !96, file: !12, line: 75, type: !15)
!102 = !DILocation(line: 75, column: 39, scope: !96)
!103 = !DILocalVariable(name: "lb", scope: !96, file: !12, line: 77, type: !15)
!104 = !DILocation(line: 77, column: 12, scope: !96)
!105 = !DILocation(line: 79, column: 13, scope: !106)
!106 = distinct !DILexicalBlock(scope: !96, file: !12, line: 79, column: 6)
!107 = !DILocation(line: 79, column: 11, scope: !106)
!108 = !DILocation(line: 79, column: 6, scope: !96)
!109 = !DILocation(line: 80, column: 3, scope: !106)
!110 = !DILocation(line: 81, column: 25, scope: !111)
!111 = distinct !DILexicalBlock(scope: !96, file: !12, line: 81, column: 6)
!112 = !DILocation(line: 81, column: 18, scope: !111)
!113 = !DILocation(line: 81, column: 8, scope: !111)
!114 = !DILocation(line: 81, column: 12, scope: !111)
!115 = !DILocation(line: 81, column: 16, scope: !111)
!116 = !DILocation(line: 81, column: 6, scope: !96)
!117 = !DILocation(line: 82, column: 8, scope: !118)
!118 = distinct !DILexicalBlock(scope: !111, file: !12, line: 81, column: 31)
!119 = !DILocation(line: 82, column: 3, scope: !118)
!120 = !DILocation(line: 83, column: 3, scope: !118)
!121 = !DILocation(line: 85, column: 11, scope: !96)
!122 = !DILocation(line: 85, column: 2, scope: !96)
!123 = !DILocation(line: 85, column: 6, scope: !96)
!124 = !DILocation(line: 85, column: 9, scope: !96)
!125 = !DILocation(line: 86, column: 6, scope: !126)
!126 = distinct !DILexicalBlock(scope: !96, file: !12, line: 86, column: 6)
!127 = !DILocation(line: 86, column: 6, scope: !96)
!128 = !DILocation(line: 87, column: 12, scope: !129)
!129 = distinct !DILexicalBlock(scope: !126, file: !12, line: 86, column: 12)
!130 = !DILocation(line: 87, column: 18, scope: !129)
!131 = !DILocation(line: 87, column: 3, scope: !129)
!132 = !DILocation(line: 87, column: 7, scope: !129)
!133 = !DILocation(line: 87, column: 10, scope: !129)
!134 = !DILocation(line: 88, column: 13, scope: !129)
!135 = !DILocation(line: 88, column: 19, scope: !129)
!136 = !DILocation(line: 88, column: 3, scope: !129)
!137 = !DILocation(line: 88, column: 7, scope: !129)
!138 = !DILocation(line: 88, column: 11, scope: !129)
!139 = !DILocation(line: 89, column: 14, scope: !129)
!140 = !DILocation(line: 89, column: 3, scope: !129)
!141 = !DILocation(line: 89, column: 7, scope: !129)
!142 = !DILocation(line: 89, column: 12, scope: !129)
!143 = !DILocation(line: 90, column: 2, scope: !129)
!144 = !DILocation(line: 91, column: 3, scope: !145)
!145 = distinct !DILexicalBlock(scope: !126, file: !12, line: 90, column: 9)
!146 = !DILocation(line: 91, column: 7, scope: !145)
!147 = !DILocation(line: 91, column: 10, scope: !145)
!148 = !DILocation(line: 92, column: 3, scope: !145)
!149 = !DILocation(line: 92, column: 7, scope: !145)
!150 = !DILocation(line: 92, column: 11, scope: !145)
!151 = !DILocation(line: 93, column: 3, scope: !145)
!152 = !DILocation(line: 93, column: 7, scope: !145)
!153 = !DILocation(line: 93, column: 12, scope: !145)
!154 = !DILocation(line: 95, column: 9, scope: !96)
!155 = !DILocation(line: 95, column: 2, scope: !96)
!156 = !DILocation(line: 96, column: 1, scope: !96)
!157 = distinct !DISubprogram(name: "logbuf_new_copy", scope: !12, file: !12, line: 102, type: !158, isLocal: false, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!158 = !DISubroutineType(types: !159)
!159 = !{!15, !160, !34, !15}
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64, align: 64)
!161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!162 = !DILocalVariable(name: "buf", arg: 1, scope: !157, file: !12, line: 102, type: !160)
!163 = !DILocation(line: 102, column: 29, scope: !157)
!164 = !DILocalVariable(name: "sz", arg: 2, scope: !157, file: !12, line: 102, type: !34)
!165 = !DILocation(line: 102, column: 41, scope: !157)
!166 = !DILocalVariable(name: "next", arg: 3, scope: !157, file: !12, line: 102, type: !15)
!167 = !DILocation(line: 102, column: 55, scope: !157)
!168 = !DILocalVariable(name: "lb", scope: !157, file: !12, line: 104, type: !15)
!169 = !DILocation(line: 104, column: 12, scope: !157)
!170 = !DILocation(line: 106, column: 13, scope: !171)
!171 = distinct !DILexicalBlock(scope: !157, file: !12, line: 106, column: 6)
!172 = !DILocation(line: 106, column: 11, scope: !171)
!173 = !DILocation(line: 106, column: 6, scope: !157)
!174 = !DILocation(line: 107, column: 3, scope: !171)
!175 = !DILocation(line: 108, column: 25, scope: !176)
!176 = distinct !DILexicalBlock(scope: !157, file: !12, line: 108, column: 6)
!177 = !DILocation(line: 108, column: 18, scope: !176)
!178 = !DILocation(line: 108, column: 8, scope: !176)
!179 = !DILocation(line: 108, column: 12, scope: !176)
!180 = !DILocation(line: 108, column: 16, scope: !176)
!181 = !DILocation(line: 108, column: 6, scope: !157)
!182 = !DILocation(line: 109, column: 8, scope: !183)
!183 = distinct !DILexicalBlock(scope: !176, file: !12, line: 108, column: 31)
!184 = !DILocation(line: 109, column: 3, scope: !183)
!185 = !DILocation(line: 110, column: 3, scope: !183)
!186 = !DILocation(line: 112, column: 9, scope: !157)
!187 = !DILocation(line: 112, column: 13, scope: !157)
!188 = !DILocation(line: 112, column: 18, scope: !157)
!189 = !DILocation(line: 112, column: 23, scope: !157)
!190 = !DILocation(line: 112, column: 2, scope: !157)
!191 = !DILocation(line: 113, column: 11, scope: !157)
!192 = !DILocation(line: 113, column: 2, scope: !157)
!193 = !DILocation(line: 113, column: 6, scope: !157)
!194 = !DILocation(line: 113, column: 9, scope: !157)
!195 = !DILocation(line: 114, column: 6, scope: !196)
!196 = distinct !DILexicalBlock(scope: !157, file: !12, line: 114, column: 6)
!197 = !DILocation(line: 114, column: 6, scope: !157)
!198 = !DILocation(line: 115, column: 12, scope: !199)
!199 = distinct !DILexicalBlock(scope: !196, file: !12, line: 114, column: 12)
!200 = !DILocation(line: 115, column: 18, scope: !199)
!201 = !DILocation(line: 115, column: 3, scope: !199)
!202 = !DILocation(line: 115, column: 7, scope: !199)
!203 = !DILocation(line: 115, column: 10, scope: !199)
!204 = !DILocation(line: 116, column: 13, scope: !199)
!205 = !DILocation(line: 116, column: 19, scope: !199)
!206 = !DILocation(line: 116, column: 3, scope: !199)
!207 = !DILocation(line: 116, column: 7, scope: !199)
!208 = !DILocation(line: 116, column: 11, scope: !199)
!209 = !DILocation(line: 117, column: 14, scope: !199)
!210 = !DILocation(line: 117, column: 3, scope: !199)
!211 = !DILocation(line: 117, column: 7, scope: !199)
!212 = !DILocation(line: 117, column: 12, scope: !199)
!213 = !DILocation(line: 118, column: 2, scope: !199)
!214 = !DILocation(line: 119, column: 3, scope: !215)
!215 = distinct !DILexicalBlock(scope: !196, file: !12, line: 118, column: 9)
!216 = !DILocation(line: 119, column: 7, scope: !215)
!217 = !DILocation(line: 119, column: 10, scope: !215)
!218 = !DILocation(line: 120, column: 3, scope: !215)
!219 = !DILocation(line: 120, column: 7, scope: !215)
!220 = !DILocation(line: 120, column: 11, scope: !215)
!221 = !DILocation(line: 121, column: 3, scope: !215)
!222 = !DILocation(line: 121, column: 7, scope: !215)
!223 = !DILocation(line: 121, column: 12, scope: !215)
!224 = !DILocation(line: 123, column: 9, scope: !157)
!225 = !DILocation(line: 123, column: 2, scope: !157)
!226 = !DILocation(line: 124, column: 1, scope: !157)
!227 = distinct !DISubprogram(name: "logbuf_new_printf", scope: !12, file: !12, line: 130, type: !228, isLocal: false, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!228 = !DISubroutineType(types: !229)
!229 = !{!15, !15, !230, null}
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64, align: 64)
!231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!232 = !DILocalVariable(name: "next", arg: 1, scope: !227, file: !12, line: 130, type: !15)
!233 = !DILocation(line: 130, column: 29, scope: !227)
!234 = !DILocalVariable(name: "fmt", arg: 2, scope: !227, file: !12, line: 130, type: !230)
!235 = !DILocation(line: 130, column: 47, scope: !227)
!236 = !DILocalVariable(name: "ap", scope: !227, file: !12, line: 132, type: !237)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !238, line: 98, baseType: !239)
!238 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !238, line: 40, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 132, baseType: !241)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 192, align: 64, elements: !249)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 132, size: 192, align: 64, elements: !243)
!243 = !{!244, !246, !247, !248}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !242, file: !1, line: 132, baseType: !245, size: 32, align: 32)
!245 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !242, file: !1, line: 132, baseType: !245, size: 32, align: 32, offset: 32)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !242, file: !1, line: 132, baseType: !4, size: 64, align: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !242, file: !1, line: 132, baseType: !4, size: 64, align: 64, offset: 128)
!249 = !{!250}
!250 = !DISubrange(count: 1)
!251 = !DILocation(line: 132, column: 10, scope: !227)
!252 = !DILocalVariable(name: "lb", scope: !227, file: !12, line: 133, type: !15)
!253 = !DILocation(line: 133, column: 12, scope: !227)
!254 = !DILocation(line: 135, column: 13, scope: !255)
!255 = distinct !DILexicalBlock(scope: !227, file: !12, line: 135, column: 6)
!256 = !DILocation(line: 135, column: 11, scope: !255)
!257 = !DILocation(line: 135, column: 6, scope: !227)
!258 = !DILocation(line: 136, column: 3, scope: !255)
!259 = !DILocation(line: 137, column: 1, scope: !227)
!260 = !DILocation(line: 138, column: 30, scope: !227)
!261 = !DILocation(line: 138, column: 34, scope: !227)
!262 = !DILocation(line: 138, column: 39, scope: !227)
!263 = !DILocation(line: 138, column: 44, scope: !227)
!264 = !DILocation(line: 138, column: 11, scope: !227)
!265 = !DILocation(line: 138, column: 2, scope: !227)
!266 = !DILocation(line: 138, column: 6, scope: !227)
!267 = !DILocation(line: 138, column: 9, scope: !227)
!268 = !DILocation(line: 139, column: 1, scope: !227)
!269 = !DILocation(line: 140, column: 6, scope: !270)
!270 = distinct !DILexicalBlock(scope: !227, file: !12, line: 140, column: 6)
!271 = !DILocation(line: 140, column: 10, scope: !270)
!272 = !DILocation(line: 140, column: 13, scope: !270)
!273 = !DILocation(line: 140, column: 6, scope: !227)
!274 = !DILocation(line: 141, column: 8, scope: !275)
!275 = distinct !DILexicalBlock(scope: !270, file: !12, line: 140, column: 18)
!276 = !DILocation(line: 141, column: 3, scope: !275)
!277 = !DILocation(line: 142, column: 3, scope: !275)
!278 = !DILocation(line: 144, column: 6, scope: !279)
!279 = distinct !DILexicalBlock(scope: !227, file: !12, line: 144, column: 6)
!280 = !DILocation(line: 144, column: 6, scope: !227)
!281 = !DILocation(line: 145, column: 12, scope: !282)
!282 = distinct !DILexicalBlock(scope: !279, file: !12, line: 144, column: 12)
!283 = !DILocation(line: 145, column: 18, scope: !282)
!284 = !DILocation(line: 145, column: 3, scope: !282)
!285 = !DILocation(line: 145, column: 7, scope: !282)
!286 = !DILocation(line: 145, column: 10, scope: !282)
!287 = !DILocation(line: 146, column: 13, scope: !282)
!288 = !DILocation(line: 146, column: 19, scope: !282)
!289 = !DILocation(line: 146, column: 3, scope: !282)
!290 = !DILocation(line: 146, column: 7, scope: !282)
!291 = !DILocation(line: 146, column: 11, scope: !282)
!292 = !DILocation(line: 147, column: 14, scope: !282)
!293 = !DILocation(line: 147, column: 3, scope: !282)
!294 = !DILocation(line: 147, column: 7, scope: !282)
!295 = !DILocation(line: 147, column: 12, scope: !282)
!296 = !DILocation(line: 148, column: 2, scope: !282)
!297 = !DILocation(line: 149, column: 3, scope: !298)
!298 = distinct !DILexicalBlock(scope: !279, file: !12, line: 148, column: 9)
!299 = !DILocation(line: 149, column: 7, scope: !298)
!300 = !DILocation(line: 149, column: 10, scope: !298)
!301 = !DILocation(line: 150, column: 3, scope: !298)
!302 = !DILocation(line: 150, column: 7, scope: !298)
!303 = !DILocation(line: 150, column: 11, scope: !298)
!304 = !DILocation(line: 151, column: 3, scope: !298)
!305 = !DILocation(line: 151, column: 7, scope: !298)
!306 = !DILocation(line: 151, column: 12, scope: !298)
!307 = !DILocation(line: 153, column: 9, scope: !227)
!308 = !DILocation(line: 153, column: 2, scope: !227)
!309 = !DILocation(line: 154, column: 1, scope: !227)
!310 = distinct !DISubprogram(name: "logbuf_new_deepcopy", scope: !12, file: !12, line: 161, type: !311, isLocal: false, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!311 = !DISubroutineType(types: !312)
!312 = !{!15, !15, !313}
!313 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!314 = !DILocalVariable(name: "lb", arg: 1, scope: !310, file: !12, line: 161, type: !15)
!315 = !DILocation(line: 161, column: 31, scope: !310)
!316 = !DILocalVariable(name: "combine", arg: 2, scope: !310, file: !12, line: 161, type: !313)
!317 = !DILocation(line: 161, column: 39, scope: !310)
!318 = !DILocalVariable(name: "lbnew", scope: !310, file: !12, line: 163, type: !15)
!319 = !DILocation(line: 163, column: 12, scope: !310)
!320 = !DILocalVariable(name: "p", scope: !310, file: !12, line: 164, type: !21)
!321 = !DILocation(line: 164, column: 17, scope: !310)
!322 = !DILocation(line: 166, column: 7, scope: !323)
!323 = distinct !DILexicalBlock(scope: !310, file: !12, line: 166, column: 6)
!324 = !DILocation(line: 166, column: 6, scope: !310)
!325 = !DILocation(line: 167, column: 3, scope: !323)
!326 = !DILocation(line: 169, column: 6, scope: !327)
!327 = distinct !DILexicalBlock(scope: !310, file: !12, line: 169, column: 6)
!328 = !DILocation(line: 169, column: 6, scope: !310)
!329 = !DILocation(line: 170, column: 40, scope: !330)
!330 = distinct !DILexicalBlock(scope: !327, file: !12, line: 169, column: 15)
!331 = !DILocation(line: 170, column: 28, scope: !330)
!332 = !DILocation(line: 170, column: 11, scope: !333)
!333 = !DILexicalBlockFile(scope: !330, file: !12, discriminator: 1)
!334 = !DILocation(line: 170, column: 9, scope: !330)
!335 = !DILocation(line: 171, column: 8, scope: !336)
!336 = distinct !DILexicalBlock(scope: !330, file: !12, line: 171, column: 7)
!337 = !DILocation(line: 171, column: 7, scope: !330)
!338 = !DILocation(line: 172, column: 4, scope: !336)
!339 = !DILocation(line: 173, column: 15, scope: !330)
!340 = !DILocation(line: 173, column: 19, scope: !330)
!341 = !DILocation(line: 173, column: 3, scope: !330)
!342 = !DILocation(line: 173, column: 10, scope: !330)
!343 = !DILocation(line: 173, column: 13, scope: !330)
!344 = !DILocation(line: 174, column: 16, scope: !330)
!345 = !DILocation(line: 174, column: 20, scope: !330)
!346 = !DILocation(line: 174, column: 3, scope: !330)
!347 = !DILocation(line: 174, column: 10, scope: !330)
!348 = !DILocation(line: 174, column: 14, scope: !330)
!349 = !DILocation(line: 175, column: 7, scope: !330)
!350 = !DILocation(line: 175, column: 14, scope: !330)
!351 = !DILocation(line: 175, column: 5, scope: !330)
!352 = !DILocation(line: 176, column: 3, scope: !330)
!353 = !DILocation(line: 176, column: 10, scope: !333)
!354 = !DILocation(line: 176, column: 3, scope: !333)
!355 = !DILocation(line: 177, column: 11, scope: !356)
!356 = distinct !DILexicalBlock(scope: !330, file: !12, line: 176, column: 14)
!357 = !DILocation(line: 177, column: 14, scope: !356)
!358 = !DILocation(line: 177, column: 18, scope: !356)
!359 = !DILocation(line: 177, column: 23, scope: !356)
!360 = !DILocation(line: 177, column: 27, scope: !356)
!361 = !DILocation(line: 177, column: 4, scope: !356)
!362 = !DILocation(line: 178, column: 9, scope: !356)
!363 = !DILocation(line: 178, column: 13, scope: !356)
!364 = !DILocation(line: 178, column: 6, scope: !356)
!365 = !DILocation(line: 179, column: 9, scope: !356)
!366 = !DILocation(line: 179, column: 13, scope: !356)
!367 = !DILocation(line: 179, column: 7, scope: !356)
!368 = !DILocation(line: 176, column: 3, scope: !369)
!369 = !DILexicalBlockFile(scope: !330, file: !12, discriminator: 2)
!370 = distinct !{!370, !352}
!371 = !DILocation(line: 181, column: 2, scope: !330)
!372 = !DILocation(line: 182, column: 27, scope: !373)
!373 = distinct !DILexicalBlock(scope: !327, file: !12, line: 181, column: 9)
!374 = !DILocation(line: 182, column: 31, scope: !373)
!375 = !DILocation(line: 182, column: 36, scope: !373)
!376 = !DILocation(line: 182, column: 40, scope: !373)
!377 = !DILocation(line: 182, column: 11, scope: !373)
!378 = !DILocation(line: 182, column: 9, scope: !373)
!379 = !DILocation(line: 183, column: 8, scope: !380)
!380 = distinct !DILexicalBlock(scope: !373, file: !12, line: 183, column: 7)
!381 = !DILocation(line: 183, column: 7, scope: !373)
!382 = !DILocation(line: 184, column: 4, scope: !380)
!383 = !DILocation(line: 185, column: 15, scope: !373)
!384 = !DILocation(line: 185, column: 19, scope: !373)
!385 = !DILocation(line: 185, column: 3, scope: !373)
!386 = !DILocation(line: 185, column: 10, scope: !373)
!387 = !DILocation(line: 185, column: 13, scope: !373)
!388 = !DILocation(line: 186, column: 16, scope: !373)
!389 = !DILocation(line: 186, column: 20, scope: !373)
!390 = !DILocation(line: 186, column: 3, scope: !373)
!391 = !DILocation(line: 186, column: 10, scope: !373)
!392 = !DILocation(line: 186, column: 14, scope: !373)
!393 = !DILocation(line: 187, column: 37, scope: !373)
!394 = !DILocation(line: 187, column: 41, scope: !373)
!395 = !DILocation(line: 187, column: 17, scope: !373)
!396 = !DILocation(line: 187, column: 3, scope: !373)
!397 = !DILocation(line: 187, column: 10, scope: !373)
!398 = !DILocation(line: 187, column: 15, scope: !373)
!399 = !DILocation(line: 189, column: 9, scope: !310)
!400 = !DILocation(line: 189, column: 2, scope: !310)
!401 = !DILocation(line: 190, column: 1, scope: !310)
!402 = distinct !DISubprogram(name: "logbuf_size", scope: !12, file: !12, line: 221, type: !403, isLocal: false, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!403 = !DISubroutineType(types: !404)
!404 = !{!24, !15}
!405 = !DILocalVariable(name: "lb", arg: 1, scope: !402, file: !12, line: 221, type: !15)
!406 = !DILocation(line: 221, column: 23, scope: !402)
!407 = !DILocalVariable(name: "sz", scope: !402, file: !12, line: 223, type: !24)
!408 = !DILocation(line: 223, column: 10, scope: !402)
!409 = !DILocation(line: 225, column: 7, scope: !402)
!410 = !DILocation(line: 225, column: 11, scope: !402)
!411 = !DILocation(line: 225, column: 5, scope: !402)
!412 = !DILocation(line: 226, column: 6, scope: !413)
!413 = distinct !DILexicalBlock(scope: !402, file: !12, line: 226, column: 6)
!414 = !DILocation(line: 226, column: 10, scope: !413)
!415 = !DILocation(line: 226, column: 6, scope: !402)
!416 = !DILocation(line: 227, column: 21, scope: !417)
!417 = distinct !DILexicalBlock(scope: !413, file: !12, line: 226, column: 16)
!418 = !DILocation(line: 227, column: 25, scope: !417)
!419 = !DILocation(line: 227, column: 9, scope: !417)
!420 = !DILocation(line: 227, column: 6, scope: !417)
!421 = !DILocation(line: 228, column: 2, scope: !417)
!422 = !DILocation(line: 229, column: 9, scope: !402)
!423 = !DILocation(line: 229, column: 2, scope: !402)
!424 = distinct !DISubprogram(name: "logbuf_make_contiguous", scope: !12, file: !12, line: 193, type: !425, isLocal: false, isDefinition: true, scopeLine: 193, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!425 = !DISubroutineType(types: !426)
!426 = !{!15, !15}
!427 = !DILocalVariable(name: "lb", arg: 1, scope: !424, file: !12, line: 193, type: !15)
!428 = !DILocation(line: 193, column: 34, scope: !424)
!429 = !DILocalVariable(name: "p", scope: !424, file: !12, line: 194, type: !21)
!430 = !DILocation(line: 194, column: 17, scope: !424)
!431 = !DILocalVariable(name: "lbtmp", scope: !424, file: !12, line: 195, type: !15)
!432 = !DILocation(line: 195, column: 12, scope: !424)
!433 = !DILocation(line: 197, column: 7, scope: !434)
!434 = distinct !DILexicalBlock(scope: !424, file: !12, line: 197, column: 6)
!435 = !DILocation(line: 197, column: 6, scope: !424)
!436 = !DILocation(line: 198, column: 3, scope: !434)
!437 = !DILocation(line: 199, column: 7, scope: !438)
!438 = distinct !DILexicalBlock(scope: !424, file: !12, line: 199, column: 6)
!439 = !DILocation(line: 199, column: 11, scope: !438)
!440 = !DILocation(line: 199, column: 6, scope: !424)
!441 = !DILocation(line: 200, column: 10, scope: !438)
!442 = !DILocation(line: 200, column: 3, scope: !438)
!443 = !DILocation(line: 201, column: 14, scope: !424)
!444 = !DILocation(line: 201, column: 18, scope: !424)
!445 = !DILocation(line: 201, column: 35, scope: !424)
!446 = !DILocation(line: 201, column: 23, scope: !424)
!447 = !DILocation(line: 201, column: 6, scope: !448)
!448 = !DILexicalBlockFile(scope: !424, file: !12, discriminator: 1)
!449 = !DILocation(line: 201, column: 4, scope: !424)
!450 = !DILocation(line: 202, column: 7, scope: !451)
!451 = distinct !DILexicalBlock(scope: !424, file: !12, line: 202, column: 6)
!452 = !DILocation(line: 202, column: 6, scope: !424)
!453 = !DILocation(line: 203, column: 3, scope: !451)
!454 = !DILocation(line: 204, column: 12, scope: !424)
!455 = !DILocation(line: 204, column: 2, scope: !424)
!456 = !DILocation(line: 204, column: 6, scope: !424)
!457 = !DILocation(line: 204, column: 10, scope: !424)
!458 = !DILocation(line: 205, column: 10, scope: !424)
!459 = !DILocation(line: 205, column: 8, scope: !424)
!460 = !DILocation(line: 206, column: 7, scope: !424)
!461 = !DILocation(line: 206, column: 14, scope: !424)
!462 = !DILocation(line: 206, column: 4, scope: !424)
!463 = !DILocation(line: 207, column: 2, scope: !424)
!464 = !DILocation(line: 207, column: 18, scope: !448)
!465 = !DILocation(line: 207, column: 25, scope: !448)
!466 = !DILocation(line: 207, column: 16, scope: !448)
!467 = !DILocation(line: 207, column: 2, scope: !448)
!468 = !DILocation(line: 208, column: 10, scope: !469)
!469 = distinct !DILexicalBlock(scope: !424, file: !12, line: 207, column: 32)
!470 = !DILocation(line: 208, column: 13, scope: !469)
!471 = !DILocation(line: 208, column: 20, scope: !469)
!472 = !DILocation(line: 208, column: 25, scope: !469)
!473 = !DILocation(line: 208, column: 32, scope: !469)
!474 = !DILocation(line: 208, column: 3, scope: !469)
!475 = !DILocation(line: 209, column: 13, scope: !469)
!476 = !DILocation(line: 209, column: 20, scope: !469)
!477 = !DILocation(line: 209, column: 3, scope: !469)
!478 = !DILocation(line: 209, column: 7, scope: !469)
!479 = !DILocation(line: 209, column: 10, scope: !469)
!480 = !DILocation(line: 210, column: 8, scope: !469)
!481 = !DILocation(line: 210, column: 15, scope: !469)
!482 = !DILocation(line: 210, column: 5, scope: !469)
!483 = !DILocation(line: 207, column: 2, scope: !484)
!484 = !DILexicalBlockFile(scope: !424, file: !12, discriminator: 2)
!485 = distinct !{!485, !463}
!486 = !DILocation(line: 212, column: 14, scope: !424)
!487 = !DILocation(line: 212, column: 18, scope: !424)
!488 = !DILocation(line: 212, column: 2, scope: !424)
!489 = !DILocation(line: 213, column: 2, scope: !424)
!490 = !DILocation(line: 213, column: 6, scope: !424)
!491 = !DILocation(line: 213, column: 11, scope: !424)
!492 = !DILocation(line: 214, column: 9, scope: !424)
!493 = !DILocation(line: 214, column: 2, scope: !424)
!494 = !DILocation(line: 215, column: 1, scope: !424)
!495 = distinct !DISubprogram(name: "logbuf_free", scope: !12, file: !12, line: 264, type: !496, isLocal: false, isDefinition: true, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!496 = !DISubroutineType(types: !497)
!497 = !{null, !15}
!498 = !DILocalVariable(name: "lb", arg: 1, scope: !495, file: !12, line: 264, type: !15)
!499 = !DILocation(line: 264, column: 23, scope: !495)
!500 = !DILocation(line: 266, column: 6, scope: !501)
!501 = distinct !DILexicalBlock(scope: !495, file: !12, line: 266, column: 6)
!502 = !DILocation(line: 266, column: 10, scope: !501)
!503 = !DILocation(line: 266, column: 6, scope: !495)
!504 = !DILocation(line: 267, column: 8, scope: !505)
!505 = distinct !DILexicalBlock(scope: !501, file: !12, line: 266, column: 15)
!506 = !DILocation(line: 267, column: 12, scope: !505)
!507 = !DILocation(line: 267, column: 3, scope: !505)
!508 = !DILocation(line: 268, column: 2, scope: !505)
!509 = !DILocation(line: 269, column: 6, scope: !510)
!510 = distinct !DILexicalBlock(scope: !495, file: !12, line: 269, column: 6)
!511 = !DILocation(line: 269, column: 10, scope: !510)
!512 = !DILocation(line: 269, column: 6, scope: !495)
!513 = !DILocation(line: 270, column: 15, scope: !514)
!514 = distinct !DILexicalBlock(scope: !510, file: !12, line: 269, column: 16)
!515 = !DILocation(line: 270, column: 19, scope: !514)
!516 = !DILocation(line: 270, column: 3, scope: !514)
!517 = !DILocation(line: 271, column: 2, scope: !514)
!518 = !DILocation(line: 272, column: 7, scope: !495)
!519 = !DILocation(line: 272, column: 2, scope: !495)
!520 = !DILocation(line: 273, column: 1, scope: !495)
!521 = distinct !DISubprogram(name: "logbuf_write_free", scope: !12, file: !12, line: 238, type: !522, isLocal: false, isDefinition: true, scopeLine: 239, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!522 = !DISubroutineType(types: !523)
!523 = !{!24, !15, !524}
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "writefunc_t", file: !17, line: 45, baseType: !525)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64, align: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!24, !4, !31, !160, !34}
!528 = !DILocalVariable(name: "lb", arg: 1, scope: !521, file: !12, line: 238, type: !15)
!529 = !DILocation(line: 238, column: 29, scope: !521)
!530 = !DILocalVariable(name: "writefunc", arg: 2, scope: !521, file: !12, line: 238, type: !524)
!531 = !DILocation(line: 238, column: 45, scope: !521)
!532 = !DILocalVariable(name: "rv1", scope: !521, file: !12, line: 240, type: !24)
!533 = !DILocation(line: 240, column: 10, scope: !521)
!534 = !DILocalVariable(name: "rv2", scope: !521, file: !12, line: 240, type: !24)
!535 = !DILocation(line: 240, column: 15, scope: !521)
!536 = !DILocation(line: 241, column: 8, scope: !521)
!537 = !DILocation(line: 241, column: 18, scope: !521)
!538 = !DILocation(line: 241, column: 22, scope: !521)
!539 = !DILocation(line: 241, column: 26, scope: !521)
!540 = !DILocation(line: 241, column: 30, scope: !521)
!541 = !DILocation(line: 241, column: 35, scope: !521)
!542 = !DILocation(line: 241, column: 39, scope: !521)
!543 = !DILocation(line: 241, column: 44, scope: !521)
!544 = !DILocation(line: 241, column: 48, scope: !521)
!545 = !DILocation(line: 241, column: 6, scope: !521)
!546 = !DILocation(line: 242, column: 6, scope: !547)
!547 = distinct !DILexicalBlock(scope: !521, file: !12, line: 242, column: 6)
!548 = !DILocation(line: 242, column: 10, scope: !547)
!549 = !DILocation(line: 242, column: 6, scope: !521)
!550 = !DILocation(line: 243, column: 8, scope: !551)
!551 = distinct !DILexicalBlock(scope: !547, file: !12, line: 242, column: 15)
!552 = !DILocation(line: 243, column: 12, scope: !551)
!553 = !DILocation(line: 243, column: 3, scope: !551)
!554 = !DILocation(line: 244, column: 2, scope: !551)
!555 = !DILocation(line: 245, column: 6, scope: !556)
!556 = distinct !DILexicalBlock(scope: !521, file: !12, line: 245, column: 6)
!557 = !DILocation(line: 245, column: 10, scope: !556)
!558 = !DILocation(line: 245, column: 6, scope: !521)
!559 = !DILocation(line: 246, column: 7, scope: !560)
!560 = distinct !DILexicalBlock(scope: !561, file: !12, line: 246, column: 7)
!561 = distinct !DILexicalBlock(scope: !556, file: !12, line: 245, column: 16)
!562 = !DILocation(line: 246, column: 11, scope: !560)
!563 = !DILocation(line: 246, column: 7, scope: !561)
!564 = !DILocation(line: 247, column: 16, scope: !565)
!565 = distinct !DILexicalBlock(scope: !560, file: !12, line: 246, column: 18)
!566 = !DILocation(line: 247, column: 20, scope: !565)
!567 = !DILocation(line: 247, column: 4, scope: !565)
!568 = !DILocation(line: 248, column: 3, scope: !565)
!569 = !DILocation(line: 249, column: 19, scope: !570)
!570 = distinct !DILexicalBlock(scope: !560, file: !12, line: 248, column: 10)
!571 = !DILocation(line: 249, column: 23, scope: !570)
!572 = !DILocation(line: 249, column: 4, scope: !570)
!573 = !DILocation(line: 249, column: 8, scope: !570)
!574 = !DILocation(line: 249, column: 14, scope: !570)
!575 = !DILocation(line: 249, column: 17, scope: !570)
!576 = !DILocation(line: 250, column: 28, scope: !570)
!577 = !DILocation(line: 250, column: 32, scope: !570)
!578 = !DILocation(line: 250, column: 38, scope: !570)
!579 = !DILocation(line: 250, column: 10, scope: !570)
!580 = !DILocation(line: 250, column: 8, scope: !570)
!581 = !DILocation(line: 252, column: 2, scope: !561)
!582 = !DILocation(line: 253, column: 7, scope: !521)
!583 = !DILocation(line: 253, column: 2, scope: !521)
!584 = !DILocation(line: 254, column: 6, scope: !585)
!585 = distinct !DILexicalBlock(scope: !521, file: !12, line: 254, column: 6)
!586 = !DILocation(line: 254, column: 10, scope: !585)
!587 = !DILocation(line: 254, column: 16, scope: !585)
!588 = !DILocation(line: 254, column: 19, scope: !589)
!589 = !DILexicalBlockFile(scope: !585, file: !12, discriminator: 1)
!590 = !DILocation(line: 254, column: 23, scope: !589)
!591 = !DILocation(line: 254, column: 6, scope: !589)
!592 = !DILocation(line: 255, column: 3, scope: !585)
!593 = !DILocation(line: 257, column: 10, scope: !585)
!594 = !DILocation(line: 257, column: 16, scope: !585)
!595 = !DILocation(line: 257, column: 14, scope: !585)
!596 = !DILocation(line: 257, column: 3, scope: !585)
!597 = !DILocation(line: 258, column: 1, scope: !521)
