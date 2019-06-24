; ModuleID = './[inter]lib--vector.o.i'
source_filename = "./[inter]lib--vector.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._vector = type { i32, i32, i8** }

@null_strvec_handler = internal global i8* (%struct._vector*, i64)* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define i8* (%struct._vector*, i64)* @register_null_strvec_handler(i8* (%struct._vector*, i64)*) #0 !dbg !32 {
  %2 = alloca i8* (%struct._vector*, i64)*, align 8
  %3 = alloca i8* (%struct._vector*, i64)*, align 8
  store i8* (%struct._vector*, i64)* %0, i8* (%struct._vector*, i64)** %2, align 8
  call void @llvm.dbg.declare(metadata i8* (%struct._vector*, i64)** %2, metadata !35, metadata !36), !dbg !37
  call void @llvm.dbg.declare(metadata i8* (%struct._vector*, i64)** %3, metadata !38, metadata !36), !dbg !39
  %4 = load i8* (%struct._vector*, i64)*, i8* (%struct._vector*, i64)** @null_strvec_handler, align 8, !dbg !40
  store i8* (%struct._vector*, i64)* %4, i8* (%struct._vector*, i64)** %3, align 8, !dbg !39
  %5 = load i8* (%struct._vector*, i64)*, i8* (%struct._vector*, i64)** %2, align 8, !dbg !41
  store i8* (%struct._vector*, i64)* %5, i8* (%struct._vector*, i64)** @null_strvec_handler, align 8, !dbg !42
  %6 = load i8* (%struct._vector*, i64)*, i8* (%struct._vector*, i64)** %3, align 8, !dbg !43
  ret i8* (%struct._vector*, i64)* %6, !dbg !44
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i8* (%struct._vector*, i64)* @unregister_null_strvec_handler() #0 !dbg !45 {
  %1 = alloca i8* (%struct._vector*, i64)*, align 8
  call void @llvm.dbg.declare(metadata i8* (%struct._vector*, i64)** %1, metadata !48, metadata !36), !dbg !49
  %2 = load i8* (%struct._vector*, i64)*, i8* (%struct._vector*, i64)** @null_strvec_handler, align 8, !dbg !50
  store i8* (%struct._vector*, i64)* %2, i8* (%struct._vector*, i64)** %1, align 8, !dbg !49
  store i8* (%struct._vector*, i64)* null, i8* (%struct._vector*, i64)** @null_strvec_handler, align 8, !dbg !51
  %3 = load i8* (%struct._vector*, i64)*, i8* (%struct._vector*, i64)** %1, align 8, !dbg !52
  ret i8* (%struct._vector*, i64)* %3, !dbg !53
}

; Function Attrs: nounwind uwtable
define i8* @strvec_slot(%struct._vector*, i64) #0 !dbg !54 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._vector*, align 8
  %5 = alloca i64, align 8
  store %struct._vector* %0, %struct._vector** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %4, metadata !57, metadata !36), !dbg !58
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !59, metadata !36), !dbg !60
  %6 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !61
  %7 = icmp ne %struct._vector* %6, null, !dbg !61
  br i1 %7, label %8, label %30, !dbg !63

; <label>:8:                                      ; preds = %2
  %9 = load i64, i64* %5, align 8, !dbg !64
  %10 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !65
  %11 = getelementptr inbounds %struct._vector, %struct._vector* %10, i32 0, i32 1, !dbg !66
  %12 = load i32, i32* %11, align 4, !dbg !66
  %13 = zext i32 %12 to i64, !dbg !67
  %14 = icmp ult i64 %9, %13, !dbg !68
  br i1 %14, label %15, label %30, !dbg !69

; <label>:15:                                     ; preds = %8
  %16 = load i64, i64* %5, align 8, !dbg !70
  %17 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !71
  %18 = getelementptr inbounds %struct._vector, %struct._vector* %17, i32 0, i32 2, !dbg !72
  %19 = load i8**, i8*** %18, align 8, !dbg !72
  %20 = getelementptr inbounds i8*, i8** %19, i64 %16, !dbg !71
  %21 = load i8*, i8** %20, align 8, !dbg !71
  %22 = icmp ne i8* %21, null, !dbg !71
  br i1 %22, label %23, label %30, !dbg !73

; <label>:23:                                     ; preds = %15
  %24 = load i64, i64* %5, align 8, !dbg !75
  %25 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !76
  %26 = getelementptr inbounds %struct._vector, %struct._vector* %25, i32 0, i32 2, !dbg !77
  %27 = load i8**, i8*** %26, align 8, !dbg !77
  %28 = getelementptr inbounds i8*, i8** %27, i64 %24, !dbg !76
  %29 = load i8*, i8** %28, align 8, !dbg !76
  store i8* %29, i8** %3, align 8, !dbg !78
  br label %39, !dbg !78

; <label>:30:                                     ; preds = %15, %8, %2
  %31 = load i8* (%struct._vector*, i64)*, i8* (%struct._vector*, i64)** @null_strvec_handler, align 8, !dbg !79
  %32 = icmp ne i8* (%struct._vector*, i64)* %31, null, !dbg !79
  br i1 %32, label %33, label %38, !dbg !81

; <label>:33:                                     ; preds = %30
  %34 = load i8* (%struct._vector*, i64)*, i8* (%struct._vector*, i64)** @null_strvec_handler, align 8, !dbg !82
  %35 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !83
  %36 = load i64, i64* %5, align 8, !dbg !84
  %37 = call i8* %34(%struct._vector* %35, i64 %36), !dbg !85
  br label %38, !dbg !85

; <label>:38:                                     ; preds = %33, %30
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8** %3, align 8, !dbg !86
  br label %39, !dbg !86

; <label>:39:                                     ; preds = %38, %23
  %40 = load i8*, i8** %3, align 8, !dbg !87
  ret i8* %40, !dbg !87
}

; Function Attrs: nounwind uwtable
define %struct._vector* @vector_alloc_r() #0 !dbg !88 {
  %1 = alloca %struct._vector*, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %1, metadata !91, metadata !36), !dbg !92
  %2 = call i8* @zalloc(i64 16), !dbg !93
  %3 = bitcast i8* %2 to %struct._vector*, !dbg !94
  store %struct._vector* %3, %struct._vector** %1, align 8, !dbg !92
  %4 = load %struct._vector*, %struct._vector** %1, align 8, !dbg !95
  ret %struct._vector* %4, !dbg !96
}

declare i8* @zalloc(i64) #2

; Function Attrs: nounwind uwtable
define void @vector_alloc_slot_r(%struct._vector*) #0 !dbg !97 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !100, metadata !36), !dbg !101
  %3 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !102
  %4 = getelementptr inbounds %struct._vector, %struct._vector* %3, i32 0, i32 1, !dbg !103
  %5 = load i32, i32* %4, align 4, !dbg !104
  %6 = add i32 %5, 1, !dbg !104
  store i32 %6, i32* %4, align 4, !dbg !104
  %7 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !105
  %8 = getelementptr inbounds %struct._vector, %struct._vector* %7, i32 0, i32 2, !dbg !107
  %9 = load i8**, i8*** %8, align 8, !dbg !107
  %10 = icmp ne i8** %9, null, !dbg !105
  br i1 %10, label %11, label %25, !dbg !108

; <label>:11:                                     ; preds = %1
  %12 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !109
  %13 = getelementptr inbounds %struct._vector, %struct._vector* %12, i32 0, i32 2, !dbg !110
  %14 = load i8**, i8*** %13, align 8, !dbg !110
  %15 = bitcast i8** %14 to i8*, !dbg !111
  %16 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !112
  %17 = getelementptr inbounds %struct._vector, %struct._vector* %16, i32 0, i32 1, !dbg !113
  %18 = load i32, i32* %17, align 4, !dbg !113
  %19 = zext i32 %18 to i64, !dbg !112
  %20 = mul i64 8, %19, !dbg !114
  %21 = call i8* @realloc(i8* %15, i64 %20) #4, !dbg !115
  %22 = bitcast i8* %21 to i8**, !dbg !116
  %23 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !117
  %24 = getelementptr inbounds %struct._vector, %struct._vector* %23, i32 0, i32 2, !dbg !118
  store i8** %22, i8*** %24, align 8, !dbg !119
  br label %35, !dbg !117

; <label>:25:                                     ; preds = %1
  %26 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !120
  %27 = getelementptr inbounds %struct._vector, %struct._vector* %26, i32 0, i32 1, !dbg !121
  %28 = load i32, i32* %27, align 4, !dbg !121
  %29 = zext i32 %28 to i64, !dbg !120
  %30 = mul i64 8, %29, !dbg !122
  %31 = call i8* @zalloc(i64 %30), !dbg !123
  %32 = bitcast i8* %31 to i8**, !dbg !124
  %33 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !125
  %34 = getelementptr inbounds %struct._vector, %struct._vector* %33, i32 0, i32 2, !dbg !126
  store i8** %32, i8*** %34, align 8, !dbg !127
  br label %35

; <label>:35:                                     ; preds = %25, %11
  ret void, !dbg !128
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #3

; Function Attrs: nounwind uwtable
define void @vector_set_slot(%struct._vector*, i8*) #0 !dbg !129 {
  %3 = alloca %struct._vector*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %3, metadata !132, metadata !36), !dbg !133
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !134, metadata !36), !dbg !135
  call void @llvm.dbg.declare(metadata i32* %5, metadata !136, metadata !36), !dbg !137
  %6 = load %struct._vector*, %struct._vector** %3, align 8, !dbg !138
  %7 = getelementptr inbounds %struct._vector, %struct._vector* %6, i32 0, i32 1, !dbg !139
  %8 = load i32, i32* %7, align 4, !dbg !139
  %9 = sub i32 %8, 1, !dbg !140
  store i32 %9, i32* %5, align 4, !dbg !137
  %10 = load i8*, i8** %4, align 8, !dbg !141
  %11 = load i32, i32* %5, align 4, !dbg !142
  %12 = zext i32 %11 to i64, !dbg !143
  %13 = load %struct._vector*, %struct._vector** %3, align 8, !dbg !143
  %14 = getelementptr inbounds %struct._vector, %struct._vector* %13, i32 0, i32 2, !dbg !144
  %15 = load i8**, i8*** %14, align 8, !dbg !144
  %16 = getelementptr inbounds i8*, i8** %15, i64 %12, !dbg !143
  store i8* %10, i8** %16, align 8, !dbg !145
  %17 = load %struct._vector*, %struct._vector** %3, align 8, !dbg !146
  %18 = getelementptr inbounds %struct._vector, %struct._vector* %17, i32 0, i32 1, !dbg !147
  %19 = load i32, i32* %18, align 4, !dbg !147
  %20 = load %struct._vector*, %struct._vector** %3, align 8, !dbg !148
  %21 = getelementptr inbounds %struct._vector, %struct._vector* %20, i32 0, i32 0, !dbg !149
  store i32 %19, i32* %21, align 8, !dbg !150
  ret void, !dbg !151
}

; Function Attrs: nounwind uwtable
define void @vector_unset(%struct._vector*, i32) #0 !dbg !152 {
  %3 = alloca %struct._vector*, align 8
  %4 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %3, metadata !155, metadata !36), !dbg !156
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !157, metadata !36), !dbg !158
  %5 = load i32, i32* %4, align 4, !dbg !159
  %6 = load %struct._vector*, %struct._vector** %3, align 8, !dbg !161
  %7 = getelementptr inbounds %struct._vector, %struct._vector* %6, i32 0, i32 1, !dbg !162
  %8 = load i32, i32* %7, align 4, !dbg !162
  %9 = icmp uge i32 %5, %8, !dbg !163
  br i1 %9, label %10, label %11, !dbg !164

; <label>:10:                                     ; preds = %2
  br label %52, !dbg !165

; <label>:11:                                     ; preds = %2
  %12 = load i32, i32* %4, align 4, !dbg !166
  %13 = zext i32 %12 to i64, !dbg !167
  %14 = load %struct._vector*, %struct._vector** %3, align 8, !dbg !167
  %15 = getelementptr inbounds %struct._vector, %struct._vector* %14, i32 0, i32 2, !dbg !168
  %16 = load i8**, i8*** %15, align 8, !dbg !168
  %17 = getelementptr inbounds i8*, i8** %16, i64 %13, !dbg !167
  store i8* null, i8** %17, align 8, !dbg !169
  %18 = load i32, i32* %4, align 4, !dbg !170
  %19 = add i32 %18, 1, !dbg !172
  %20 = load %struct._vector*, %struct._vector** %3, align 8, !dbg !173
  %21 = getelementptr inbounds %struct._vector, %struct._vector* %20, i32 0, i32 0, !dbg !174
  %22 = load i32, i32* %21, align 8, !dbg !174
  %23 = icmp eq i32 %19, %22, !dbg !175
  br i1 %23, label %24, label %52, !dbg !176

; <label>:24:                                     ; preds = %11
  %25 = load %struct._vector*, %struct._vector** %3, align 8, !dbg !177
  %26 = getelementptr inbounds %struct._vector, %struct._vector* %25, i32 0, i32 0, !dbg !179
  %27 = load i32, i32* %26, align 8, !dbg !180
  %28 = add i32 %27, -1, !dbg !180
  store i32 %28, i32* %26, align 8, !dbg !180
  br label %29, !dbg !181

; <label>:29:                                     ; preds = %50, %24
  %30 = load i32, i32* %4, align 4, !dbg !182
  %31 = icmp ne i32 %30, 0, !dbg !182
  br i1 %31, label %32, label %48, !dbg !184

; <label>:32:                                     ; preds = %29
  %33 = load i32, i32* %4, align 4, !dbg !185
  %34 = add i32 %33, -1, !dbg !185
  store i32 %34, i32* %4, align 4, !dbg !185
  %35 = zext i32 %34 to i64, !dbg !187
  %36 = load %struct._vector*, %struct._vector** %3, align 8, !dbg !187
  %37 = getelementptr inbounds %struct._vector, %struct._vector* %36, i32 0, i32 2, !dbg !188
  %38 = load i8**, i8*** %37, align 8, !dbg !188
  %39 = getelementptr inbounds i8*, i8** %38, i64 %35, !dbg !187
  %40 = load i8*, i8** %39, align 8, !dbg !187
  %41 = icmp eq i8* %40, null, !dbg !189
  br i1 %41, label %42, label %48, !dbg !190

; <label>:42:                                     ; preds = %32
  %43 = load %struct._vector*, %struct._vector** %3, align 8, !dbg !191
  %44 = getelementptr inbounds %struct._vector, %struct._vector* %43, i32 0, i32 0, !dbg !193
  %45 = load i32, i32* %44, align 8, !dbg !194
  %46 = add i32 %45, -1, !dbg !194
  store i32 %46, i32* %44, align 8, !dbg !194
  %47 = icmp ne i32 %45, 0, !dbg !195
  br label %48

; <label>:48:                                     ; preds = %42, %32, %29
  %49 = phi i1 [ false, %32 ], [ false, %29 ], [ %47, %42 ]
  br i1 %49, label %50, label %51, !dbg !196

; <label>:50:                                     ; preds = %48
  br label %29, !dbg !198, !llvm.loop !200

; <label>:51:                                     ; preds = %48
  br label %52, !dbg !201

; <label>:52:                                     ; preds = %10, %51, %11
  ret void, !dbg !202
}

; Function Attrs: nounwind uwtable
define i32 @vector_count(%struct._vector*) #0 !dbg !203 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !206, metadata !36), !dbg !207
  call void @llvm.dbg.declare(metadata i32* %3, metadata !208, metadata !36), !dbg !209
  call void @llvm.dbg.declare(metadata i32* %4, metadata !210, metadata !36), !dbg !211
  store i32 0, i32* %4, align 4, !dbg !211
  store i32 0, i32* %3, align 4, !dbg !212
  br label %5, !dbg !214

; <label>:5:                                      ; preds = %24, %1
  %6 = load i32, i32* %3, align 4, !dbg !215
  %7 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !218
  %8 = getelementptr inbounds %struct._vector, %struct._vector* %7, i32 0, i32 0, !dbg !219
  %9 = load i32, i32* %8, align 8, !dbg !219
  %10 = icmp ult i32 %6, %9, !dbg !220
  br i1 %10, label %11, label %27, !dbg !221

; <label>:11:                                     ; preds = %5
  %12 = load i32, i32* %3, align 4, !dbg !222
  %13 = zext i32 %12 to i64, !dbg !225
  %14 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !225
  %15 = getelementptr inbounds %struct._vector, %struct._vector* %14, i32 0, i32 2, !dbg !226
  %16 = load i8**, i8*** %15, align 8, !dbg !226
  %17 = getelementptr inbounds i8*, i8** %16, i64 %13, !dbg !225
  %18 = load i8*, i8** %17, align 8, !dbg !225
  %19 = icmp ne i8* %18, null, !dbg !227
  br i1 %19, label %20, label %23, !dbg !228

; <label>:20:                                     ; preds = %11
  %21 = load i32, i32* %4, align 4, !dbg !229
  %22 = add i32 %21, 1, !dbg !229
  store i32 %22, i32* %4, align 4, !dbg !229
  br label %23, !dbg !231

; <label>:23:                                     ; preds = %20, %11
  br label %24, !dbg !232

; <label>:24:                                     ; preds = %23
  %25 = load i32, i32* %3, align 4, !dbg !233
  %26 = add i32 %25, 1, !dbg !233
  store i32 %26, i32* %3, align 4, !dbg !233
  br label %5, !dbg !235, !llvm.loop !236

; <label>:27:                                     ; preds = %5
  %28 = load i32, i32* %4, align 4, !dbg !238
  ret i32 %28, !dbg !239
}

; Function Attrs: nounwind uwtable
define void @vector_free_r(%struct._vector*) #0 !dbg !240 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !241, metadata !36), !dbg !242
  %3 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !243
  %4 = getelementptr inbounds %struct._vector, %struct._vector* %3, i32 0, i32 2, !dbg !245
  %5 = load i8**, i8*** %4, align 8, !dbg !245
  %6 = icmp ne i8** %5, null, !dbg !243
  br i1 %6, label %7, label %14, !dbg !246

; <label>:7:                                      ; preds = %1
  %8 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !247
  %9 = getelementptr inbounds %struct._vector, %struct._vector* %8, i32 0, i32 2, !dbg !248
  %10 = load i8**, i8*** %9, align 8, !dbg !248
  %11 = bitcast i8** %10 to i8*, !dbg !247
  call void @free(i8* %11) #4, !dbg !249
  %12 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !250
  %13 = getelementptr inbounds %struct._vector, %struct._vector* %12, i32 0, i32 2, !dbg !251
  store i8** null, i8*** %13, align 8, !dbg !252
  br label %14, !dbg !253

; <label>:14:                                     ; preds = %7, %1
  %15 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !254
  %16 = bitcast %struct._vector* %15 to i8*, !dbg !254
  call void @free(i8* %16) #4, !dbg !255
  store %struct._vector* null, %struct._vector** %2, align 8, !dbg !256
  ret void, !dbg !257
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define void @free_strvec(%struct._vector*) #0 !dbg !258 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !259, metadata !36), !dbg !260
  call void @llvm.dbg.declare(metadata i32* %3, metadata !261, metadata !36), !dbg !262
  call void @llvm.dbg.declare(metadata i8** %4, metadata !263, metadata !36), !dbg !264
  %5 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !265
  %6 = icmp ne %struct._vector* %5, null, !dbg !265
  br i1 %6, label %8, label %7, !dbg !267

; <label>:7:                                      ; preds = %1
  br label %32, !dbg !268

; <label>:8:                                      ; preds = %1
  store i32 0, i32* %3, align 4, !dbg !269
  br label %9, !dbg !271

; <label>:9:                                      ; preds = %27, %8
  %10 = load i32, i32* %3, align 4, !dbg !272
  %11 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !275
  %12 = getelementptr inbounds %struct._vector, %struct._vector* %11, i32 0, i32 1, !dbg !276
  %13 = load i32, i32* %12, align 4, !dbg !276
  %14 = icmp ult i32 %10, %13, !dbg !277
  br i1 %14, label %15, label %30, !dbg !278

; <label>:15:                                     ; preds = %9
  %16 = load i32, i32* %3, align 4, !dbg !279
  %17 = zext i32 %16 to i64, !dbg !282
  %18 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !283
  %19 = getelementptr inbounds %struct._vector, %struct._vector* %18, i32 0, i32 2, !dbg !284
  %20 = load i8**, i8*** %19, align 8, !dbg !284
  %21 = getelementptr inbounds i8*, i8** %20, i64 %17, !dbg !282
  %22 = load i8*, i8** %21, align 8, !dbg !282
  store i8* %22, i8** %4, align 8, !dbg !285
  %23 = icmp ne i8* %22, null, !dbg !286
  br i1 %23, label %24, label %26, !dbg !287

; <label>:24:                                     ; preds = %15
  %25 = load i8*, i8** %4, align 8, !dbg !288
  call void @free(i8* %25) #4, !dbg !290
  store i8* null, i8** %4, align 8, !dbg !291
  br label %26, !dbg !292

; <label>:26:                                     ; preds = %24, %15
  br label %27, !dbg !293

; <label>:27:                                     ; preds = %26
  %28 = load i32, i32* %3, align 4, !dbg !294
  %29 = add i32 %28, 1, !dbg !294
  store i32 %29, i32* %3, align 4, !dbg !294
  br label %9, !dbg !296, !llvm.loop !297

; <label>:30:                                     ; preds = %9
  %31 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !299
  call void @vector_free_r(%struct._vector* %31), !dbg !300
  br label %32, !dbg !301

; <label>:32:                                     ; preds = %30, %7
  ret void, !dbg !302
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!29, !30}
!llvm.ident = !{!31}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !15)
!1 = !DIFile(filename: "[inter]lib--vector.o.i", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!2 = !{}
!3 = !{!4, !14}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "vector_t", file: !6, line: 34, baseType: !7)
!6 = !DIFile(filename: "vector.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vector", file: !6, line: 30, size: 128, align: 64, elements: !8)
!8 = !{!9, !11, !12}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !7, file: !6, line: 31, baseType: !10, size: 32, align: 32)
!10 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !7, file: !6, line: 32, baseType: !10, size: 32, align: 32, offset: 32)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !7, file: !6, line: 33, baseType: !13, size: 64, align: 64, offset: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!15 = !{!16}
!16 = distinct !DIGlobalVariable(name: "null_strvec_handler", scope: !0, file: !17, line: 29, type: !18, isLocal: true, isDefinition: true, variable: i8* (%struct._vector*, i64)** @null_strvec_handler)
!17 = !DIFile(filename: "vector.c", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "null_strvec_handler_t", file: !6, line: 36, baseType: !19)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DISubroutineType(types: !21)
!21 = !{!22, !24, !26}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !27, line: 216, baseType: !28)
!27 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!28 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!29 = !{i32 2, !"Dwarf Version", i32 4}
!30 = !{i32 2, !"Debug Info Version", i32 3}
!31 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!32 = distinct !DISubprogram(name: "register_null_strvec_handler", scope: !17, file: !17, line: 31, type: !33, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!33 = !DISubroutineType(types: !34)
!34 = !{!18, !18}
!35 = !DILocalVariable(name: "null_strvec_func", arg: 1, scope: !32, file: !17, line: 31, type: !18)
!36 = !DIExpression()
!37 = !DILocation(line: 31, column: 74, scope: !32)
!38 = !DILocalVariable(name: "old_handler", scope: !32, file: !17, line: 33, type: !18)
!39 = !DILocation(line: 33, column: 24, scope: !32)
!40 = !DILocation(line: 33, column: 38, scope: !32)
!41 = !DILocation(line: 35, column: 24, scope: !32)
!42 = !DILocation(line: 35, column: 22, scope: !32)
!43 = !DILocation(line: 37, column: 9, scope: !32)
!44 = !DILocation(line: 37, column: 2, scope: !32)
!45 = distinct !DISubprogram(name: "unregister_null_strvec_handler", scope: !17, file: !17, line: 40, type: !46, isLocal: false, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!46 = !DISubroutineType(types: !47)
!47 = !{!18}
!48 = !DILocalVariable(name: "old_handler", scope: !45, file: !17, line: 42, type: !18)
!49 = !DILocation(line: 42, column: 24, scope: !45)
!50 = !DILocation(line: 42, column: 38, scope: !45)
!51 = !DILocation(line: 44, column: 22, scope: !45)
!52 = !DILocation(line: 46, column: 9, scope: !45)
!53 = !DILocation(line: 46, column: 2, scope: !45)
!54 = distinct !DISubprogram(name: "strvec_slot", scope: !17, file: !17, line: 49, type: !55, isLocal: false, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!55 = !DISubroutineType(types: !56)
!56 = !{!14, !24, !26}
!57 = !DILocalVariable(name: "strvec", arg: 1, scope: !54, file: !17, line: 49, type: !24)
!58 = !DILocation(line: 49, column: 35, scope: !54)
!59 = !DILocalVariable(name: "index", arg: 2, scope: !54, file: !17, line: 49, type: !26)
!60 = !DILocation(line: 49, column: 50, scope: !54)
!61 = !DILocation(line: 51, column: 6, scope: !62)
!62 = distinct !DILexicalBlock(scope: !54, file: !17, line: 51, column: 6)
!63 = !DILocation(line: 51, column: 13, scope: !62)
!64 = !DILocation(line: 52, column: 6, scope: !62)
!65 = !DILocation(line: 52, column: 16, scope: !62)
!66 = !DILocation(line: 52, column: 25, scope: !62)
!67 = !DILocation(line: 52, column: 14, scope: !62)
!68 = !DILocation(line: 52, column: 12, scope: !62)
!69 = !DILocation(line: 52, column: 36, scope: !62)
!70 = !DILocation(line: 53, column: 19, scope: !62)
!71 = !DILocation(line: 53, column: 6, scope: !62)
!72 = !DILocation(line: 53, column: 14, scope: !62)
!73 = !DILocation(line: 51, column: 6, scope: !74)
!74 = !DILexicalBlockFile(scope: !54, file: !17, discriminator: 1)
!75 = !DILocation(line: 54, column: 23, scope: !62)
!76 = !DILocation(line: 54, column: 10, scope: !62)
!77 = !DILocation(line: 54, column: 18, scope: !62)
!78 = !DILocation(line: 54, column: 3, scope: !62)
!79 = !DILocation(line: 56, column: 6, scope: !80)
!80 = distinct !DILexicalBlock(scope: !54, file: !17, line: 56, column: 6)
!81 = !DILocation(line: 56, column: 6, scope: !54)
!82 = !DILocation(line: 57, column: 5, scope: !80)
!83 = !DILocation(line: 57, column: 26, scope: !80)
!84 = !DILocation(line: 57, column: 34, scope: !80)
!85 = !DILocation(line: 57, column: 3, scope: !80)
!86 = !DILocation(line: 59, column: 2, scope: !54)
!87 = !DILocation(line: 60, column: 1, scope: !54)
!88 = distinct !DISubprogram(name: "vector_alloc_r", scope: !17, file: !17, line: 67, type: !89, isLocal: false, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!89 = !DISubroutineType(types: !90)
!90 = !{!4}
!91 = !DILocalVariable(name: "v", scope: !88, file: !17, line: 69, type: !4)
!92 = !DILocation(line: 69, column: 12, scope: !88)
!93 = !DILocation(line: 69, column: 30, scope: !88)
!94 = !DILocation(line: 69, column: 16, scope: !88)
!95 = !DILocation(line: 70, column: 9, scope: !88)
!96 = !DILocation(line: 70, column: 2, scope: !88)
!97 = distinct !DISubprogram(name: "vector_alloc_slot_r", scope: !17, file: !17, line: 92, type: !98, isLocal: false, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!98 = !DISubroutineType(types: !99)
!99 = !{null, !4}
!100 = !DILocalVariable(name: "v", arg: 1, scope: !97, file: !17, line: 92, type: !4)
!101 = !DILocation(line: 92, column: 31, scope: !97)
!102 = !DILocation(line: 94, column: 2, scope: !97)
!103 = !DILocation(line: 94, column: 5, scope: !97)
!104 = !DILocation(line: 94, column: 15, scope: !97)
!105 = !DILocation(line: 95, column: 6, scope: !106)
!106 = distinct !DILexicalBlock(scope: !97, file: !17, line: 95, column: 6)
!107 = !DILocation(line: 95, column: 9, scope: !106)
!108 = !DILocation(line: 95, column: 6, scope: !97)
!109 = !DILocation(line: 96, column: 23, scope: !106)
!110 = !DILocation(line: 96, column: 26, scope: !106)
!111 = !DILocation(line: 96, column: 22, scope: !106)
!112 = !DILocation(line: 96, column: 51, scope: !106)
!113 = !DILocation(line: 96, column: 54, scope: !106)
!114 = !DILocation(line: 96, column: 49, scope: !106)
!115 = !DILocation(line: 96, column: 14, scope: !106)
!116 = !DILocation(line: 96, column: 13, scope: !106)
!117 = !DILocation(line: 96, column: 3, scope: !106)
!118 = !DILocation(line: 96, column: 6, scope: !106)
!119 = !DILocation(line: 96, column: 11, scope: !106)
!120 = !DILocation(line: 98, column: 48, scope: !106)
!121 = !DILocation(line: 98, column: 51, scope: !106)
!122 = !DILocation(line: 98, column: 46, scope: !106)
!123 = !DILocation(line: 98, column: 23, scope: !106)
!124 = !DILocation(line: 98, column: 13, scope: !106)
!125 = !DILocation(line: 98, column: 3, scope: !106)
!126 = !DILocation(line: 98, column: 6, scope: !106)
!127 = !DILocation(line: 98, column: 11, scope: !106)
!128 = !DILocation(line: 99, column: 1, scope: !97)
!129 = distinct !DISubprogram(name: "vector_set_slot", scope: !17, file: !17, line: 191, type: !130, isLocal: false, isDefinition: true, scopeLine: 192, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!130 = !DISubroutineType(types: !131)
!131 = !{null, !4, !14}
!132 = !DILocalVariable(name: "v", arg: 1, scope: !129, file: !17, line: 191, type: !4)
!133 = !DILocation(line: 191, column: 27, scope: !129)
!134 = !DILocalVariable(name: "value", arg: 2, scope: !129, file: !17, line: 191, type: !14)
!135 = !DILocation(line: 191, column: 36, scope: !129)
!136 = !DILocalVariable(name: "i", scope: !129, file: !17, line: 193, type: !10)
!137 = !DILocation(line: 193, column: 15, scope: !129)
!138 = !DILocation(line: 193, column: 19, scope: !129)
!139 = !DILocation(line: 193, column: 22, scope: !129)
!140 = !DILocation(line: 193, column: 32, scope: !129)
!141 = !DILocation(line: 195, column: 15, scope: !129)
!142 = !DILocation(line: 195, column: 10, scope: !129)
!143 = !DILocation(line: 195, column: 2, scope: !129)
!144 = !DILocation(line: 195, column: 5, scope: !129)
!145 = !DILocation(line: 195, column: 13, scope: !129)
!146 = !DILocation(line: 196, column: 14, scope: !129)
!147 = !DILocation(line: 196, column: 17, scope: !129)
!148 = !DILocation(line: 196, column: 2, scope: !129)
!149 = !DILocation(line: 196, column: 5, scope: !129)
!150 = !DILocation(line: 196, column: 12, scope: !129)
!151 = !DILocation(line: 197, column: 1, scope: !129)
!152 = distinct !DISubprogram(name: "vector_unset", scope: !17, file: !17, line: 234, type: !153, isLocal: false, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!153 = !DISubroutineType(types: !154)
!154 = !{null, !4, !10}
!155 = !DILocalVariable(name: "v", arg: 1, scope: !152, file: !17, line: 234, type: !4)
!156 = !DILocation(line: 234, column: 24, scope: !152)
!157 = !DILocalVariable(name: "i", arg: 2, scope: !152, file: !17, line: 234, type: !10)
!158 = !DILocation(line: 234, column: 40, scope: !152)
!159 = !DILocation(line: 236, column: 6, scope: !160)
!160 = distinct !DILexicalBlock(scope: !152, file: !17, line: 236, column: 6)
!161 = !DILocation(line: 236, column: 11, scope: !160)
!162 = !DILocation(line: 236, column: 14, scope: !160)
!163 = !DILocation(line: 236, column: 8, scope: !160)
!164 = !DILocation(line: 236, column: 6, scope: !152)
!165 = !DILocation(line: 237, column: 3, scope: !160)
!166 = !DILocation(line: 239, column: 10, scope: !152)
!167 = !DILocation(line: 239, column: 2, scope: !152)
!168 = !DILocation(line: 239, column: 5, scope: !152)
!169 = !DILocation(line: 239, column: 13, scope: !152)
!170 = !DILocation(line: 241, column: 6, scope: !171)
!171 = distinct !DILexicalBlock(scope: !152, file: !17, line: 241, column: 6)
!172 = !DILocation(line: 241, column: 8, scope: !171)
!173 = !DILocation(line: 241, column: 15, scope: !171)
!174 = !DILocation(line: 241, column: 18, scope: !171)
!175 = !DILocation(line: 241, column: 12, scope: !171)
!176 = !DILocation(line: 241, column: 6, scope: !152)
!177 = !DILocation(line: 242, column: 3, scope: !178)
!178 = distinct !DILexicalBlock(scope: !171, file: !17, line: 241, column: 26)
!179 = !DILocation(line: 242, column: 6, scope: !178)
!180 = !DILocation(line: 242, column: 12, scope: !178)
!181 = !DILocation(line: 243, column: 3, scope: !178)
!182 = !DILocation(line: 243, column: 10, scope: !183)
!183 = !DILexicalBlockFile(scope: !178, file: !17, discriminator: 1)
!184 = !DILocation(line: 243, column: 12, scope: !183)
!185 = !DILocation(line: 243, column: 23, scope: !186)
!186 = !DILexicalBlockFile(scope: !178, file: !17, discriminator: 2)
!187 = !DILocation(line: 243, column: 15, scope: !186)
!188 = !DILocation(line: 243, column: 18, scope: !186)
!189 = !DILocation(line: 243, column: 28, scope: !186)
!190 = !DILocation(line: 243, column: 35, scope: !186)
!191 = !DILocation(line: 243, column: 38, scope: !192)
!192 = !DILexicalBlockFile(scope: !178, file: !17, discriminator: 3)
!193 = !DILocation(line: 243, column: 41, scope: !192)
!194 = !DILocation(line: 243, column: 47, scope: !192)
!195 = !DILocation(line: 243, column: 35, scope: !192)
!196 = !DILocation(line: 243, column: 3, scope: !197)
!197 = !DILexicalBlockFile(scope: !178, file: !17, discriminator: 4)
!198 = !DILocation(line: 243, column: 3, scope: !199)
!199 = !DILexicalBlockFile(scope: !178, file: !17, discriminator: 5)
!200 = distinct !{!200, !181}
!201 = !DILocation(line: 245, column: 2, scope: !178)
!202 = !DILocation(line: 246, column: 1, scope: !152)
!203 = distinct !DISubprogram(name: "vector_count", scope: !17, file: !17, line: 250, type: !204, isLocal: false, isDefinition: true, scopeLine: 251, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!204 = !DISubroutineType(types: !205)
!205 = !{!10, !4}
!206 = !DILocalVariable(name: "v", arg: 1, scope: !203, file: !17, line: 250, type: !4)
!207 = !DILocation(line: 250, column: 24, scope: !203)
!208 = !DILocalVariable(name: "i", scope: !203, file: !17, line: 252, type: !10)
!209 = !DILocation(line: 252, column: 15, scope: !203)
!210 = !DILocalVariable(name: "count", scope: !203, file: !17, line: 253, type: !10)
!211 = !DILocation(line: 253, column: 11, scope: !203)
!212 = !DILocation(line: 255, column: 9, scope: !213)
!213 = distinct !DILexicalBlock(scope: !203, file: !17, line: 255, column: 2)
!214 = !DILocation(line: 255, column: 7, scope: !213)
!215 = !DILocation(line: 255, column: 14, scope: !216)
!216 = !DILexicalBlockFile(scope: !217, file: !17, discriminator: 1)
!217 = distinct !DILexicalBlock(scope: !213, file: !17, line: 255, column: 2)
!218 = !DILocation(line: 255, column: 18, scope: !216)
!219 = !DILocation(line: 255, column: 21, scope: !216)
!220 = !DILocation(line: 255, column: 16, scope: !216)
!221 = !DILocation(line: 255, column: 2, scope: !216)
!222 = !DILocation(line: 256, column: 15, scope: !223)
!223 = distinct !DILexicalBlock(scope: !224, file: !17, line: 256, column: 7)
!224 = distinct !DILexicalBlock(scope: !217, file: !17, line: 255, column: 34)
!225 = !DILocation(line: 256, column: 7, scope: !223)
!226 = !DILocation(line: 256, column: 10, scope: !223)
!227 = !DILocation(line: 256, column: 18, scope: !223)
!228 = !DILocation(line: 256, column: 7, scope: !224)
!229 = !DILocation(line: 257, column: 9, scope: !230)
!230 = distinct !DILexicalBlock(scope: !223, file: !17, line: 256, column: 26)
!231 = !DILocation(line: 258, column: 3, scope: !230)
!232 = !DILocation(line: 259, column: 2, scope: !224)
!233 = !DILocation(line: 255, column: 30, scope: !234)
!234 = !DILexicalBlockFile(scope: !217, file: !17, discriminator: 2)
!235 = !DILocation(line: 255, column: 2, scope: !234)
!236 = distinct !{!236, !237}
!237 = !DILocation(line: 255, column: 2, scope: !203)
!238 = !DILocation(line: 261, column: 9, scope: !203)
!239 = !DILocation(line: 261, column: 2, scope: !203)
!240 = distinct !DISubprogram(name: "vector_free_r", scope: !17, file: !17, line: 286, type: !98, isLocal: false, isDefinition: true, scopeLine: 287, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!241 = !DILocalVariable(name: "v", arg: 1, scope: !240, file: !17, line: 286, type: !4)
!242 = !DILocation(line: 286, column: 25, scope: !240)
!243 = !DILocation(line: 288, column: 6, scope: !244)
!244 = distinct !DILexicalBlock(scope: !240, file: !17, line: 288, column: 6)
!245 = !DILocation(line: 288, column: 9, scope: !244)
!246 = !DILocation(line: 288, column: 6, scope: !240)
!247 = !DILocation(line: 289, column: 9, scope: !244)
!248 = !DILocation(line: 289, column: 12, scope: !244)
!249 = !DILocation(line: 289, column: 4, scope: !244)
!250 = !DILocation(line: 289, column: 20, scope: !244)
!251 = !DILocation(line: 289, column: 23, scope: !244)
!252 = !DILocation(line: 289, column: 29, scope: !244)
!253 = !DILocation(line: 289, column: 3, scope: !244)
!254 = !DILocation(line: 290, column: 8, scope: !240)
!255 = !DILocation(line: 290, column: 3, scope: !240)
!256 = !DILocation(line: 290, column: 16, scope: !240)
!257 = !DILocation(line: 291, column: 1, scope: !240)
!258 = distinct !DISubprogram(name: "free_strvec", scope: !17, file: !17, line: 312, type: !98, isLocal: false, isDefinition: true, scopeLine: 313, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!259 = !DILocalVariable(name: "strvec", arg: 1, scope: !258, file: !17, line: 312, type: !4)
!260 = !DILocation(line: 312, column: 23, scope: !258)
!261 = !DILocalVariable(name: "i", scope: !258, file: !17, line: 314, type: !10)
!262 = !DILocation(line: 314, column: 15, scope: !258)
!263 = !DILocalVariable(name: "str", scope: !258, file: !17, line: 315, type: !22)
!264 = !DILocation(line: 315, column: 8, scope: !258)
!265 = !DILocation(line: 317, column: 7, scope: !266)
!266 = distinct !DILexicalBlock(scope: !258, file: !17, line: 317, column: 6)
!267 = !DILocation(line: 317, column: 6, scope: !258)
!268 = !DILocation(line: 318, column: 3, scope: !266)
!269 = !DILocation(line: 320, column: 9, scope: !270)
!270 = distinct !DILexicalBlock(scope: !258, file: !17, line: 320, column: 2)
!271 = !DILocation(line: 320, column: 7, scope: !270)
!272 = !DILocation(line: 320, column: 14, scope: !273)
!273 = !DILexicalBlockFile(scope: !274, file: !17, discriminator: 1)
!274 = distinct !DILexicalBlock(scope: !270, file: !17, line: 320, column: 2)
!275 = !DILocation(line: 320, column: 20, scope: !273)
!276 = !DILocation(line: 320, column: 29, scope: !273)
!277 = !DILocation(line: 320, column: 16, scope: !273)
!278 = !DILocation(line: 320, column: 2, scope: !273)
!279 = !DILocation(line: 321, column: 31, scope: !280)
!280 = distinct !DILexicalBlock(scope: !281, file: !17, line: 321, column: 7)
!281 = distinct !DILexicalBlock(scope: !274, file: !17, line: 320, column: 46)
!282 = !DILocation(line: 321, column: 15, scope: !280)
!283 = !DILocation(line: 321, column: 16, scope: !280)
!284 = !DILocation(line: 321, column: 25, scope: !280)
!285 = !DILocation(line: 321, column: 12, scope: !280)
!286 = !DILocation(line: 321, column: 37, scope: !280)
!287 = !DILocation(line: 321, column: 7, scope: !281)
!288 = !DILocation(line: 322, column: 10, scope: !289)
!289 = distinct !DILexicalBlock(scope: !280, file: !17, line: 321, column: 46)
!290 = !DILocation(line: 322, column: 5, scope: !289)
!291 = !DILocation(line: 322, column: 22, scope: !289)
!292 = !DILocation(line: 323, column: 3, scope: !289)
!293 = !DILocation(line: 324, column: 2, scope: !281)
!294 = !DILocation(line: 320, column: 42, scope: !295)
!295 = !DILexicalBlockFile(scope: !274, file: !17, discriminator: 2)
!296 = !DILocation(line: 320, column: 2, scope: !295)
!297 = distinct !{!297, !298}
!298 = !DILocation(line: 320, column: 2, scope: !258)
!299 = !DILocation(line: 326, column: 17, scope: !258)
!300 = !DILocation(line: 326, column: 3, scope: !258)
!301 = !DILocation(line: 327, column: 1, scope: !258)
!302 = !DILocation(line: 327, column: 1, scope: !303)
!303 = !DILexicalBlockFile(scope: !258, file: !17, discriminator: 1)
