; ModuleID = './hashMap.o.i'
source_filename = "./hashMap.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.HashMap = type { i8*, i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.HashMapEntryHeader = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"NOT_REACHED %s:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"hashMap.c\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Ran out of room in the hashtable\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.HashMap* @HashMap_AllocMap(i32, i64, i64) #0 !dbg !32 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !52, metadata !53), !dbg !54
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !55, metadata !53), !dbg !56
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !57, metadata !53), !dbg !58
  %7 = load i32, i32* %4, align 4, !dbg !59
  %8 = load i64, i64* %5, align 8, !dbg !60
  %9 = load i64, i64* %6, align 8, !dbg !61
  %10 = call %struct.HashMap* @HashMap_AllocMapAlpha(i32 %7, i32 2, i64 %8, i64 %9), !dbg !62
  ret %struct.HashMap* %10, !dbg !63
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define %struct.HashMap* @HashMap_AllocMapAlpha(i32, i32, i64, i64) #0 !dbg !64 {
  %5 = alloca %struct.HashMap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.HashMap*, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !67, metadata !53), !dbg !68
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !69, metadata !53), !dbg !70
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !71, metadata !53), !dbg !72
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !73, metadata !53), !dbg !74
  call void @llvm.dbg.declare(metadata %struct.HashMap** %10, metadata !75, metadata !53), !dbg !77
  %11 = call noalias i8* @calloc(i64 1, i64 64) #8, !dbg !78
  %12 = bitcast i8* %11 to %struct.HashMap*, !dbg !78
  store %struct.HashMap* %12, %struct.HashMap** %10, align 8, !dbg !79
  %13 = load %struct.HashMap*, %struct.HashMap** %10, align 8, !dbg !80
  %14 = icmp ne %struct.HashMap* %13, null, !dbg !80
  br i1 %14, label %15, label %26, !dbg !82

; <label>:15:                                     ; preds = %4
  %16 = load %struct.HashMap*, %struct.HashMap** %10, align 8, !dbg !83
  %17 = load i32, i32* %6, align 4, !dbg !86
  %18 = load i32, i32* %7, align 4, !dbg !87
  %19 = load i64, i64* %8, align 8, !dbg !88
  %20 = load i64, i64* %9, align 8, !dbg !89
  %21 = call signext i8 @InitMap(%struct.HashMap* %16, i32 %17, i32 %18, i64 %19, i64 %20), !dbg !90
  %22 = icmp ne i8 %21, 0, !dbg !90
  br i1 %22, label %25, label %23, !dbg !91

; <label>:23:                                     ; preds = %15
  %24 = load %struct.HashMap*, %struct.HashMap** %10, align 8, !dbg !92
  call void @HashMap_DestroyMap(%struct.HashMap* %24), !dbg !94
  store %struct.HashMap* null, %struct.HashMap** %5, align 8, !dbg !95
  br label %28, !dbg !95

; <label>:25:                                     ; preds = %15
  br label %26, !dbg !96

; <label>:26:                                     ; preds = %25, %4
  %27 = load %struct.HashMap*, %struct.HashMap** %10, align 8, !dbg !97
  store %struct.HashMap* %27, %struct.HashMap** %5, align 8, !dbg !98
  br label %28, !dbg !98

; <label>:28:                                     ; preds = %26, %23
  %29 = load %struct.HashMap*, %struct.HashMap** %5, align 8, !dbg !99
  ret %struct.HashMap* %29, !dbg !99
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind uwtable
define internal signext i8 @InitMap(%struct.HashMap*, i32, i32, i64, i64) #0 !dbg !100 {
  %6 = alloca %struct.HashMap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.HashMap* %0, %struct.HashMap** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.HashMap** %6, metadata !105, metadata !53), !dbg !106
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !107, metadata !53), !dbg !108
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !109, metadata !53), !dbg !110
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !111, metadata !53), !dbg !112
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !113, metadata !53), !dbg !114
  %11 = load i32, i32* %8, align 4, !dbg !115
  %12 = load i32, i32* %7, align 4, !dbg !116
  %13 = mul i32 %12, %11, !dbg !116
  store i32 %13, i32* %7, align 4, !dbg !116
  %14 = load i32, i32* %7, align 4, !dbg !117
  %15 = load %struct.HashMap*, %struct.HashMap** %6, align 8, !dbg !118
  %16 = getelementptr inbounds %struct.HashMap, %struct.HashMap* %15, i32 0, i32 1, !dbg !119
  store i32 %14, i32* %16, align 8, !dbg !120
  %17 = load i32, i32* %8, align 4, !dbg !121
  %18 = load %struct.HashMap*, %struct.HashMap** %6, align 8, !dbg !122
  %19 = getelementptr inbounds %struct.HashMap, %struct.HashMap* %18, i32 0, i32 3, !dbg !123
  store i32 %17, i32* %19, align 8, !dbg !124
  %20 = load i64, i64* %9, align 8, !dbg !125
  %21 = load %struct.HashMap*, %struct.HashMap** %6, align 8, !dbg !126
  %22 = getelementptr inbounds %struct.HashMap, %struct.HashMap* %21, i32 0, i32 4, !dbg !127
  store i64 %20, i64* %22, align 8, !dbg !128
  %23 = load i64, i64* %10, align 8, !dbg !129
  %24 = load %struct.HashMap*, %struct.HashMap** %6, align 8, !dbg !130
  %25 = getelementptr inbounds %struct.HashMap, %struct.HashMap* %24, i32 0, i32 5, !dbg !131
  store i64 %23, i64* %25, align 8, !dbg !132
  %26 = load %struct.HashMap*, %struct.HashMap** %6, align 8, !dbg !133
  call void @CalculateEntrySize(%struct.HashMap* %26), !dbg !134
  %27 = load i32, i32* %7, align 4, !dbg !135
  %28 = zext i32 %27 to i64, !dbg !135
  %29 = load %struct.HashMap*, %struct.HashMap** %6, align 8, !dbg !136
  %30 = getelementptr inbounds %struct.HashMap, %struct.HashMap* %29, i32 0, i32 6, !dbg !137
  %31 = load i64, i64* %30, align 8, !dbg !137
  %32 = call noalias i8* @calloc(i64 %28, i64 %31) #8, !dbg !138
  %33 = load %struct.HashMap*, %struct.HashMap** %6, align 8, !dbg !139
  %34 = getelementptr inbounds %struct.HashMap, %struct.HashMap* %33, i32 0, i32 0, !dbg !140
  store i8* %32, i8** %34, align 8, !dbg !141
  %35 = load %struct.HashMap*, %struct.HashMap** %6, align 8, !dbg !142
  %36 = getelementptr inbounds %struct.HashMap, %struct.HashMap* %35, i32 0, i32 0, !dbg !144
  %37 = load i8*, i8** %36, align 8, !dbg !144
  %38 = icmp ne i8* %37, null, !dbg !142
  br i1 %38, label %39, label %41, !dbg !145

; <label>:39:                                     ; preds = %5
  %40 = load %struct.HashMap*, %struct.HashMap** %6, align 8, !dbg !146
  call void @EnsureSanity(%struct.HashMap* %40), !dbg !148
  br label %41, !dbg !149

; <label>:41:                                     ; preds = %39, %5
  %42 = load %struct.HashMap*, %struct.HashMap** %6, align 8, !dbg !150
  %43 = getelementptr inbounds %struct.HashMap, %struct.HashMap* %42, i32 0, i32 0, !dbg !151
  %44 = load i8*, i8** %43, align 8, !dbg !151
  %45 = icmp ne i8* %44, null, !dbg !152
  %46 = zext i1 %45 to i32, !dbg !152
  %47 = trunc i32 %46 to i8, !dbg !150
  ret i8 %47, !dbg !153
}

; Function Attrs: nounwind uwtable
define void @HashMap_DestroyMap(%struct.HashMap*) #0 !dbg !154 {
  %2 = alloca %struct.HashMap*, align 8
  store %struct.HashMap* %0, %struct.HashMap** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.HashMap** %2, metadata !157, metadata !53), !dbg !158
  %3 = load %struct.HashMap*, %struct.HashMap** %2, align 8, !dbg !159
  %4 = icmp ne %struct.HashMap* %3, null, !dbg !159
  br i1 %4, label %5, label %9, !dbg !161

; <label>:5:                                      ; preds = %1
  %6 = load %struct.HashMap*, %struct.HashMap** %2, align 8, !dbg !162
  %7 = getelementptr inbounds %struct.HashMap, %struct.HashMap* %6, i32 0, i32 0, !dbg !164
  %8 = load i8*, i8** %7, align 8, !dbg !164
  call void @free(i8* %8) #8, !dbg !165
  br label %9, !dbg !166

; <label>:9:                                      ; preds = %5, %1
  %10 = load %struct.HashMap*, %struct.HashMap** %2, align 8, !dbg !167
  %11 = bitcast %struct.HashMap* %10 to i8*, !dbg !167
  call void @free(i8* %11) #8, !dbg !168
  ret void, !dbg !169
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define signext i8 @HashMap_Put(%struct.HashMap*, i8*, i8*) #0 !dbg !170 {
  %4 = alloca i8, align 1
  %5 = alloca %struct.HashMap*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.HashMapEntryHeader*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.HashMap* %0, %struct.HashMap** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.HashMap** %5, metadata !175, metadata !53), !dbg !176
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !177, metadata !53), !dbg !178
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !179, metadata !53), !dbg !180
  call void @llvm.dbg.declare(metadata i32* %8, metadata !181, metadata !53), !dbg !182
  call void @llvm.dbg.declare(metadata %struct.HashMapEntryHeader** %9, metadata !183, metadata !53), !dbg !184
  call void @llvm.dbg.declare(metadata i8** %10, metadata !185, metadata !53), !dbg !186
  %13 = load %struct.HashMap*, %struct.HashMap** %5, align 8, !dbg !187
  %14 = load i8*, i8** %6, align 8, !dbg !189
  %15 = call signext i8 @LookupKey(%struct.HashMap* %13, i8* %14, i8 signext 0, %struct.HashMapEntryHeader** %9, i8** %10, i32* %8), !dbg !190
  %16 = icmp ne i8 %15, 0, !dbg !190
  br i1 %16, label %53, label %17, !dbg !191

; <label>:17:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata i32* %11, metadata !192, metadata !53), !dbg !194
  %18 = load %struct.HashMap*, %struct.HashMap** %5, align 8, !dbg !195
  %19 = load i8*, i8** %6, align 8, !dbg !196
  %20 = call i32 @ComputeHash(%struct.HashMap* %18, i8* %19), !dbg !197
  store i32 %20, i32* %11, align 4, !dbg !194
  call void @llvm.dbg.declare(metadata i8** %12, metadata !198, metadata !53), !dbg !199
  %21 = load %struct.HashMap*, %struct.HashMap** %5, align 8, !dbg !200
  %22 = call signext i8 @NeedsResize(%struct.HashMap* %21), !dbg !202
  %23 = icmp ne i8 %22, 0, !dbg !202
  br i1 %23, label %24, label %36, !dbg !203

; <label>:24:                                     ; preds = %17
  %25 = load %struct.HashMap*, %struct.HashMap** %5, align 8, !dbg !204
  call void @Resize(%struct.HashMap* %25), !dbg !206
  %26 = load %struct.HashMap*, %struct.HashMap** %5, align 8, !dbg !207
  %27 = load i8*, i8** %6, align 8, !dbg !209
  %28 = call signext i8 @LookupKey(%struct.HashMap* %26, i8* %27, i8 signext 0, %struct.HashMapEntryHeader** %9, i8** %10, i32* %8), !dbg !210
  %29 = icmp ne i8 %28, 0, !dbg !210
  br i1 %29, label %30, label %31, !dbg !211

; <label>:30:                                     ; preds = %24
  br label %31, !dbg !212

; <label>:31:                                     ; preds = %30, %24
  %32 = load i32, i32* %8, align 4, !dbg !214
  %33 = icmp eq i32 %32, -1, !dbg !216
  br i1 %33, label %34, label %35, !dbg !217

; <label>:34:                                     ; preds = %31
  store i8 0, i8* %4, align 1, !dbg !218
  br label %60, !dbg !218

; <label>:35:                                     ; preds = %31
  br label %36, !dbg !220

; <label>:36:                                     ; preds = %35, %17
  %37 = load %struct.HashMap*, %struct.HashMap** %5, align 8, !dbg !221
  %38 = getelementptr inbounds %struct.HashMap, %struct.HashMap* %37, i32 0, i32 2, !dbg !222
  %39 = load i32, i32* %38, align 4, !dbg !223
  %40 = add i32 %39, 1, !dbg !223
  store i32 %40, i32* %38, align 4, !dbg !223
  %41 = load %struct.HashMap*, %struct.HashMap** %5, align 8, !dbg !224
  %42 = load i32, i32* %8, align 4, !dbg !225
  call void @GetEntry(%struct.HashMap* %41, i32 %42, %struct.HashMapEntryHeader** %9, i8** %12, i8** %10), !dbg !226
  %43 = load %struct.HashMapEntryHeader*, %struct.HashMapEntryHeader** %9, align 8, !dbg !227
  %44 = getelementptr inbounds %struct.HashMapEntryHeader, %struct.HashMapEntryHeader* %43, i32 0, i32 0, !dbg !228
  store i32 1, i32* %44, align 4, !dbg !229
  %45 = load i32, i32* %11, align 4, !dbg !230
  %46 = load %struct.HashMapEntryHeader*, %struct.HashMapEntryHeader** %9, align 8, !dbg !231
  %47 = getelementptr inbounds %struct.HashMapEntryHeader, %struct.HashMapEntryHeader* %46, i32 0, i32 1, !dbg !232
  store i32 %45, i32* %47, align 4, !dbg !233
  %48 = load i8*, i8** %12, align 8, !dbg !234
  %49 = load i8*, i8** %6, align 8, !dbg !235
  %50 = load %struct.HashMap*, %struct.HashMap** %5, align 8, !dbg !236
  %51 = getelementptr inbounds %struct.HashMap, %struct.HashMap* %50, i32 0, i32 4, !dbg !237
  %52 = load i64, i64* %51, align 8, !dbg !237
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %49, i64 %52, i32 1, i1 false), !dbg !238
  br label %53, !dbg !239

; <label>:53:                                     ; preds = %36, %3
  %54 = load i8*, i8** %10, align 8, !dbg !240
  %55 = load i8*, i8** %7, align 8, !dbg !241
  %56 = load %struct.HashMap*, %struct.HashMap** %5, align 8, !dbg !242
  %57 = getelementptr inbounds %struct.HashMap, %struct.HashMap* %56, i32 0, i32 5, !dbg !243
  %58 = load i64, i64* %57, align 8, !dbg !243
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 %58, i32 1, i1 false), !dbg !244
  %59 = load %struct.HashMap*, %struct.HashMap** %5, align 8, !dbg !245
  call void @EnsureSanity(%struct.HashMap* %59), !dbg !246
  store i8 1, i8* %4, align 1, !dbg !247
  br label %60, !dbg !247

; <label>:60:                                     ; preds = %53, %34
  %61 = load i8, i8* %4, align 1, !dbg !248
  ret i8 %61, !dbg !248
}

; Function Attrs: nounwind uwtable
define internal signext i8 @LookupKey(%struct.HashMap*, i8*, i8 signext, %struct.HashMapEntryHeader**, i8**, i32*) #0 !dbg !249 {
  %7 = alloca %struct.HashMap*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca %struct.HashMapEntryHeader**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store %struct.HashMap* %0, %struct.HashMap** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.HashMap** %7, metadata !255, metadata !53), !dbg !256
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !257, metadata !53), !dbg !258
  store i8 %2, i8* %9, align 1
  call void @llvm.dbg.declare(metadata i8* %9, metadata !259, metadata !53), !dbg !260
  store %struct.HashMapEntryHeader** %3, %struct.HashMapEntryHeader*** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.HashMapEntryHeader*** %10, metadata !261, metadata !53), !dbg !262
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !263, metadata !53), !dbg !264
  store i32* %5, i32** %12, align 8
  call void @llvm.dbg.declare(metadata i32** %12, metadata !265, metadata !53), !dbg !266
  call void @llvm.dbg.declare(metadata i32* %13, metadata !267, metadata !53), !dbg !268
  %20 = load %struct.HashMap*, %struct.HashMap** %7, align 8, !dbg !269
  %21 = load i8*, i8** %8, align 8, !dbg !270
  %22 = call i32 @ComputeHash(%struct.HashMap* %20, i8* %21), !dbg !271
  store i32 %22, i32* %13, align 4, !dbg !268
  call void @llvm.dbg.declare(metadata i32* %14, metadata !272, metadata !53), !dbg !273
  %23 = load i32, i32* %13, align 4, !dbg !274
  %24 = load %struct.HashMap*, %struct.HashMap** %7, align 8, !dbg !275
  %25 = getelementptr inbounds %struct.HashMap, %struct.HashMap* %24, i32 0, i32 1, !dbg !276
  %26 = load i32, i32* %25, align 8, !dbg !276
  %27 = urem i32 %23, %26, !dbg !277
  store i32 %27, i32* %14, align 4, !dbg !273
  call void @llvm.dbg.declare(metadata i32* %15, metadata !278, metadata !53), !dbg !279
  store i32 0, i32* %15, align 4, !dbg !279
  call void @llvm.dbg.declare(metadata i8* %16, metadata !280, metadata !53), !dbg !281
  store i8 0, i8* %16, align 1, !dbg !281
  call void @llvm.dbg.declare(metadata i8* %17, metadata !282, metadata !53), !dbg !283
  store i8 0, i8* %17, align 1, !dbg !283
  call void @llvm.dbg.declare(metadata i8** %18, metadata !284, metadata !53), !dbg !285
  %28 = load i32*, i32** %12, align 8, !dbg !286
  store i32 -1, i32* %28, align 4, !dbg !287
  br label %29, !dbg !288

; <label>:29:                                     ; preds = %93, %6
  %30 = load i8, i8* %16, align 1, !dbg !289
  %31 = icmp ne i8 %30, 0, !dbg !289
  br i1 %31, label %39, label %32, !dbg !291

; <label>:32:                                     ; preds = %29
  %33 = load i32, i32* %15, align 4, !dbg !292
  %34 = load %struct.HashMap*, %struct.HashMap** %7, align 8, !dbg !294
  %35 = getelementptr inbounds %struct.HashMap, %struct.HashMap* %34, i32 0, i32 1, !dbg !295
  %36 = load i32, i32* %35, align 8, !dbg !295
  %37 = add i32 %36, 1, !dbg !296
  %38 = icmp ult i32 %33, %37, !dbg !297
  br label %39

; <label>:39:                                     ; preds = %32, %29
  %40 = phi i1 [ false, %29 ], [ %38, %32 ]
  br i1 %40, label %41, label %96, !dbg !298

; <label>:41:                                     ; preds = %39
  call void @llvm.dbg.declare(metadata i32* %19, metadata !300, metadata !53), !dbg !302
  %42 = load i32, i32* %14, align 4, !dbg !303
  %43 = load i32, i32* %15, align 4, !dbg !304
  %44 = add i32 %42, %43, !dbg !305
  %45 = load %struct.HashMap*, %struct.HashMap** %7, align 8, !dbg !306
  %46 = getelementptr inbounds %struct.HashMap, %struct.HashMap* %45, i32 0, i32 1, !dbg !307
  %47 = load i32, i32* %46, align 8, !dbg !307
  %48 = urem i32 %44, %47, !dbg !308
  store i32 %48, i32* %19, align 4, !dbg !302
  %49 = load %struct.HashMap*, %struct.HashMap** %7, align 8, !dbg !309
  %50 = load i32, i32* %19, align 4, !dbg !310
  %51 = load %struct.HashMapEntryHeader**, %struct.HashMapEntryHeader*** %10, align 8, !dbg !311
  %52 = load i8**, i8*** %11, align 8, !dbg !312
  call void @GetEntry(%struct.HashMap* %49, i32 %50, %struct.HashMapEntryHeader** %51, i8** %18, i8** %52), !dbg !313
  %53 = load %struct.HashMapEntryHeader**, %struct.HashMapEntryHeader*** %10, align 8, !dbg !314
  %54 = load %struct.HashMapEntryHeader*, %struct.HashMapEntryHeader** %53, align 8, !dbg !315
  %55 = getelementptr inbounds %struct.HashMapEntryHeader, %struct.HashMapEntryHeader* %54, i32 0, i32 0, !dbg !316
  %56 = load i32, i32* %55, align 4, !dbg !316
  switch i32 %56, label %92 [
    i32 0, label %57
    i32 2, label %58
    i32 1, label %66
  ], !dbg !317

; <label>:57:                                     ; preds = %41
  store i8 1, i8* %16, align 1, !dbg !318
  br label %58, !dbg !320

; <label>:58:                                     ; preds = %41, %57
  %59 = load i32*, i32** %12, align 8, !dbg !321
  %60 = load i32, i32* %59, align 4, !dbg !323
  %61 = icmp eq i32 %60, -1, !dbg !324
  br i1 %61, label %62, label %65, !dbg !325

; <label>:62:                                     ; preds = %58
  %63 = load i32, i32* %19, align 4, !dbg !326
  %64 = load i32*, i32** %12, align 8, !dbg !328
  store i32 %63, i32* %64, align 4, !dbg !329
  br label %65, !dbg !330

; <label>:65:                                     ; preds = %62, %58
  br label %93, !dbg !331

; <label>:66:                                     ; preds = %41
  %67 = load %struct.HashMapEntryHeader**, %struct.HashMapEntryHeader*** %10, align 8, !dbg !332
  %68 = load %struct.HashMapEntryHeader*, %struct.HashMapEntryHeader** %67, align 8, !dbg !334
  %69 = getelementptr inbounds %struct.HashMapEntryHeader, %struct.HashMapEntryHeader* %68, i32 0, i32 1, !dbg !335
  %70 = load i32, i32* %69, align 4, !dbg !335
  %71 = load i32, i32* %13, align 4, !dbg !336
  %72 = icmp eq i32 %70, %71, !dbg !337
  br i1 %72, label %73, label %91, !dbg !338

; <label>:73:                                     ; preds = %66
  %74 = load i8, i8* %9, align 1, !dbg !339
  %75 = icmp ne i8 %74, 0, !dbg !339
  br i1 %75, label %76, label %81, !dbg !342

; <label>:76:                                     ; preds = %73
  %77 = load %struct.HashMap*, %struct.HashMap** %7, align 8, !dbg !343
  %78 = load i8*, i8** %8, align 8, !dbg !345
  %79 = load i8*, i8** %18, align 8, !dbg !346
  %80 = call signext i8 @ConstTimeCompareKeys(%struct.HashMap* %77, i8* %78, i8* %79), !dbg !347
  store i8 %80, i8* %17, align 1, !dbg !348
  br label %86, !dbg !349

; <label>:81:                                     ; preds = %73
  %82 = load %struct.HashMap*, %struct.HashMap** %7, align 8, !dbg !350
  %83 = load i8*, i8** %8, align 8, !dbg !352
  %84 = load i8*, i8** %18, align 8, !dbg !353
  %85 = call signext i8 @CompareKeys(%struct.HashMap* %82, i8* %83, i8* %84), !dbg !354
  store i8 %85, i8* %17, align 1, !dbg !355
  br label %86

; <label>:86:                                     ; preds = %81, %76
  %87 = load i8, i8* %17, align 1, !dbg !356
  %88 = icmp ne i8 %87, 0, !dbg !356
  br i1 %88, label %89, label %90, !dbg !358

; <label>:89:                                     ; preds = %86
  store i8 1, i8* %16, align 1, !dbg !359
  br label %90, !dbg !361

; <label>:90:                                     ; preds = %89, %86
  br label %91, !dbg !362

; <label>:91:                                     ; preds = %90, %66
  br label %93, !dbg !363

; <label>:92:                                     ; preds = %41
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 701) #9, !dbg !364
  unreachable, !dbg !364

; <label>:93:                                     ; preds = %91, %65
  %94 = load i32, i32* %15, align 4, !dbg !365
  %95 = add i32 %94, 1, !dbg !365
  store i32 %95, i32* %15, align 4, !dbg !365
  br label %29, !dbg !366, !llvm.loop !368

; <label>:96:                                     ; preds = %39
  %97 = load i8, i8* %17, align 1, !dbg !369
  ret i8 %97, !dbg !370
}

; Function Attrs: nounwind uwtable
define internal i32 @ComputeHash(%struct.HashMap*, i8*) #0 !dbg !371 {
  %3 = alloca %struct.HashMap*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.HashMap* %0, %struct.HashMap** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.HashMap** %3, metadata !374, metadata !53), !dbg !375
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !376, metadata !53), !dbg !377
  call void @llvm.dbg.declare(metadata i32* %5, metadata !378, metadata !53), !dbg !379
  store i32 5381, i32* %5, align 4, !dbg !379
  call void @llvm.dbg.declare(metadata i8** %6, metadata !380, metadata !53), !dbg !383
  call void @llvm.dbg.declare(metadata i64* %7, metadata !384, metadata !53), !dbg !385
  store i64 0, i64* %7, align 8, !dbg !385
  %8 = load i8*, i8** %4, align 8, !dbg !386
  store i8* %8, i8** %6, align 8, !dbg !388
  store i64 0, i64* %7, align 8, !dbg !389
  br label %9, !dbg !390

; <label>:9:                                      ; preds = %23, %2
  %10 = load i64, i64* %7, align 8, !dbg !391
  %11 = load %struct.HashMap*, %struct.HashMap** %3, align 8, !dbg !394
  %12 = getelementptr inbounds %struct.HashMap, %struct.HashMap* %11, i32 0, i32 4, !dbg !395
  %13 = load i64, i64* %12, align 8, !dbg !395
  %14 = icmp ult i64 %10, %13, !dbg !396
  br i1 %14, label %15, label %28, !dbg !397

; <label>:15:                                     ; preds = %9
  %16 = load i32, i32* %5, align 4, !dbg !398
  %17 = mul i32 %16, 33, !dbg !398
  store i32 %17, i32* %5, align 4, !dbg !398
  %18 = load i8*, i8** %6, align 8, !dbg !400
  %19 = load i8, i8* %18, align 1, !dbg !401
  %20 = zext i8 %19 to i32, !dbg !401
  %21 = load i32, i32* %5, align 4, !dbg !402
  %22 = add i32 %21, %20, !dbg !402
  store i32 %22, i32* %5, align 4, !dbg !402
  br label %23, !dbg !403

; <label>:23:                                     ; preds = %15
  %24 = load i8*, i8** %6, align 8, !dbg !404
  %25 = getelementptr inbounds i8, i8* %24, i32 1, !dbg !404
  store i8* %25, i8** %6, align 8, !dbg !404
  %26 = load i64, i64* %7, align 8, !dbg !406
  %27 = add i64 %26, 1, !dbg !406
  store i64 %27, i64* %7, align 8, !dbg !406
  br label %9, !dbg !407, !llvm.loop !408

; <label>:28:                                     ; preds = %9
  %29 = load i32, i32* %5, align 4, !dbg !410
  ret i32 %29, !dbg !411
}

; Function Attrs: nounwind uwtable
define internal signext i8 @NeedsResize(%struct.HashMap*) #0 !dbg !412 {
  %2 = alloca %struct.HashMap*, align 8
  %3 = alloca i32, align 4
  store %struct.HashMap* %0, %struct.HashMap** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.HashMap** %2, metadata !415, metadata !53), !dbg !416
  call void @llvm.dbg.declare(metadata i32* %3, metadata !417, metadata !53), !dbg !418
  %4 = load %struct.HashMap*, %struct.HashMap** %2, align 8, !dbg !419
  %5 = getelementptr inbounds %struct.HashMap, %struct.HashMap* %4, i32 0, i32 2, !dbg !420
  %6 = load i32, i32* %5, align 4, !dbg !420
  %7 = load %struct.HashMap*, %struct.HashMap** %2, align 8, !dbg !421
  %8 = getelementptr inbounds %struct.HashMap, %struct.HashMap* %7, i32 0, i32 3, !dbg !422
  %9 = load i32, i32* %8, align 8, !dbg !422
  %10 = call signext i8 @Clamped_UMul32(i32* %3, i32 %6, i32 %9), !dbg !423
  %11 = load i32, i32* %3, align 4, !dbg !424
  %12 = load %struct.HashMap*, %struct.HashMap** %2, align 8, !dbg !425
  %13 = getelementptr inbounds %struct.HashMap, %struct.HashMap* %12, i32 0, i32 1, !dbg !426
  %14 = load i32, i32* %13, align 8, !dbg !426
  %15 = icmp uge i32 %11, %14, !dbg !427
  %16 = zext i1 %15 to i32, !dbg !427
  %17 = trunc i32 %16 to i8, !dbg !424
  ret i8 %17, !dbg !428
}

; Function Attrs: nounwind uwtable
define internal void @Resize(%struct.HashMap*) #0 !dbg !429 {
  %2 = alloca %struct.HashMap*, align 8
  %3 = alloca %struct.HashMap, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.HashMapEntryHeader*, align 8
  %6 = alloca %struct.HashMapEntryHeader*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.HashMap* %0, %struct.HashMap** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.HashMap** %2, metadata !430, metadata !53), !dbg !431
  call void @llvm.dbg.declare(metadata %struct.HashMap* %3, metadata !432, metadata !53), !dbg !433
  %12 = load %struct.HashMap*, %struct.HashMap** %2, align 8, !dbg !434
  %13 = bitcast %struct.HashMap* %3 to i8*, !dbg !435
  %14 = bitcast %struct.HashMap* %12 to i8*, !dbg !435
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 64, i32 8, i1 false), !dbg !435
  call void @llvm.dbg.declare(metadata i32* %4, metadata !436, metadata !53), !dbg !438
  %15 = load %struct.HashMap*, %struct.HashMap** %2, align 8, !dbg !439
  %16 = getelementptr inbounds %struct.HashMap, %struct.HashMap* %15, i32 0, i32 1, !dbg !441
  %17 = load i32, i32* %16, align 8, !dbg !441
  %18 = icmp eq i32 %17, -1, !dbg !442
  br i1 %18, label %19, label %26, !dbg !443

; <label>:19:                                     ; preds = %1
  %20 = load %struct.HashMap*, %struct.HashMap** %2, align 8, !dbg !444
  %21 = getelementptr inbounds %struct.HashMap, %struct.HashMap* %20, i32 0, i32 2, !dbg !447
  %22 = load i32, i32* %21, align 4, !dbg !447
  %23 = icmp ult i32 %22, -1, !dbg !448
  br i1 %23, label %24, label %25, !dbg !449

; <label>:24:                                     ; preds = %19
  br label %113, !dbg !450

; <label>:25:                                     ; preds = %19
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0)) #9, !dbg !452
  unreachable, !dbg !452

; <label>:26:                                     ; preds = %1
  %27 = getelementptr inbounds %struct.HashMap, %struct.HashMap* %3, i32 0, i32 1, !dbg !454
  %28 = load i32, i32* %27, align 8, !dbg !454
  %29 = mul i32 %28, 2, !dbg !455
  %30 = zext i32 %29 to i64, !dbg !456
  %31 = getelementptr inbounds %struct.HashMap, %struct.HashMap* %3, i32 0, i32 6, !dbg !457
  %32 = load i64, i64* %31, align 8, !dbg !457
  %33 = call noalias i8* @calloc(i64 %30, i64 %32) #8, !dbg !458
  %34 = load %struct.HashMap*, %struct.HashMap** %2, align 8, !dbg !459
  %35 = getelementptr inbounds %struct.HashMap, %struct.HashMap* %34, i32 0, i32 0, !dbg !460
  store i8* %33, i8** %35, align 8, !dbg !461
  %36 = load %struct.HashMap*, %struct.HashMap** %2, align 8, !dbg !462
  %37 = getelementptr inbounds %struct.HashMap, %struct.HashMap* %36, i32 0, i32 0, !dbg !464
  %38 = load i8*, i8** %37, align 8, !dbg !464
  %39 = icmp ne i8* %38, null, !dbg !462
  br i1 %39, label %45, label %40, !dbg !465

; <label>:40:                                     ; preds = %26
  %41 = getelementptr inbounds %struct.HashMap, %struct.HashMap* %3, i32 0, i32 0, !dbg !466
  %42 = load i8*, i8** %41, align 8, !dbg !466
  %43 = load %struct.HashMap*, %struct.HashMap** %2, align 8, !dbg !468
  %44 = getelementptr inbounds %struct.HashMap, %struct.HashMap* %43, i32 0, i32 0, !dbg !469
  store i8* %42, i8** %44, align 8, !dbg !470
  br label %113, !dbg !471

; <label>:45:                                     ; preds = %26
  br label %46, !dbg !472, !llvm.loop !473

; <label>:46:                                     ; preds = %56, %45
  %47 = load %struct.HashMap*, %struct.HashMap** %2, align 8, !dbg !474
  %48 = getelementptr inbounds %struct.HashMap, %struct.HashMap* %47, i32 0, i32 1, !dbg !477
  %49 = load %struct.HashMap*, %struct.HashMap** %2, align 8, !dbg !478
  %50 = getelementptr inbounds %struct.HashMap, %struct.HashMap* %49, i32 0, i32 1, !dbg !479
  %51 = load i32, i32* %50, align 8, !dbg !479
  %52 = call signext i8 @Clamped_UMul32(i32* %48, i32 %51, i32 2), !dbg !480
  %53 = icmp ne i8 %52, 0, !dbg !480
  br i1 %53, label %55, label %54, !dbg !481

; <label>:54:                                     ; preds = %46
  br label %60, !dbg !482

; <label>:55:                                     ; preds = %46
  br label %56, !dbg !484

; <label>:56:                                     ; preds = %55
  %57 = load %struct.HashMap*, %struct.HashMap** %2, align 8, !dbg !485
  %58 = call signext i8 @NeedsResize(%struct.HashMap* %57), !dbg !487
  %59 = icmp ne i8 %58, 0, !dbg !488
  br i1 %59, label %46, label %60, !dbg !488, !llvm.loop !473

; <label>:60:                                     ; preds = %56, %54
  %61 = load %struct.HashMap*, %struct.HashMap** %2, align 8, !dbg !489
  %62 = getelementptr inbounds %struct.HashMap, %struct.HashMap* %61, i32 0, i32 2, !dbg !490
  store i32 0, i32* %62, align 4, !dbg !491
  store i32 0, i32* %4, align 4, !dbg !492
  br label %63, !dbg !494

; <label>:63:                                     ; preds = %106, %60
  %64 = load i32, i32* %4, align 4, !dbg !495
  %65 = getelementptr inbounds %struct.HashMap, %struct.HashMap* %3, i32 0, i32 1, !dbg !498
  %66 = load i32, i32* %65, align 8, !dbg !498
  %67 = icmp ult i32 %64, %66, !dbg !499
  br i1 %67, label %68, label %109, !dbg !500

; <label>:68:                                     ; preds = %63
  call void @llvm.dbg.declare(metadata %struct.HashMapEntryHeader** %5, metadata !501, metadata !53), !dbg !503
  call void @llvm.dbg.declare(metadata %struct.HashMapEntryHeader** %6, metadata !504, metadata !53), !dbg !505
  call void @llvm.dbg.declare(metadata i8** %7, metadata !506, metadata !53), !dbg !507
  call void @llvm.dbg.declare(metadata i8** %8, metadata !508, metadata !53), !dbg !509
  call void @llvm.dbg.declare(metadata i8** %9, metadata !510, metadata !53), !dbg !511
  call void @llvm.dbg.declare(metadata i8** %10, metadata !512, metadata !53), !dbg !513
  call void @llvm.dbg.declare(metadata i32* %11, metadata !514, metadata !53), !dbg !515
  %69 = load i32, i32* %4, align 4, !dbg !516
  call void @GetEntry(%struct.HashMap* %3, i32 %69, %struct.HashMapEntryHeader** %5, i8** %7, i8** %8), !dbg !517
  %70 = load %struct.HashMapEntryHeader*, %struct.HashMapEntryHeader** %5, align 8, !dbg !518
  %71 = getelementptr inbounds %struct.HashMapEntryHeader, %struct.HashMapEntryHeader* %70, i32 0, i32 0, !dbg !519
  %72 = load i32, i32* %71, align 4, !dbg !519
  switch i32 %72, label %105 [
    i32 0, label %73
    i32 2, label %73
    i32 1, label %74
  ], !dbg !520

; <label>:73:                                     ; preds = %68, %68
  br label %106, !dbg !521

; <label>:74:                                     ; preds = %68
  %75 = load %struct.HashMap*, %struct.HashMap** %2, align 8, !dbg !523
  %76 = load i8*, i8** %7, align 8, !dbg !525
  %77 = call signext i8 @LookupKey(%struct.HashMap* %75, i8* %76, i8 signext 0, %struct.HashMapEntryHeader** %6, i8** %10, i32* %11), !dbg !526
  %78 = icmp ne i8 %77, 0, !dbg !526
  br i1 %78, label %103, label %79, !dbg !527

; <label>:79:                                     ; preds = %74
  %80 = load %struct.HashMap*, %struct.HashMap** %2, align 8, !dbg !528
  %81 = load i32, i32* %11, align 4, !dbg !530
  call void @GetEntry(%struct.HashMap* %80, i32 %81, %struct.HashMapEntryHeader** %6, i8** %9, i8** %10), !dbg !531
  %82 = load %struct.HashMapEntryHeader*, %struct.HashMapEntryHeader** %5, align 8, !dbg !532
  %83 = getelementptr inbounds %struct.HashMapEntryHeader, %struct.HashMapEntryHeader* %82, i32 0, i32 1, !dbg !533
  %84 = load i32, i32* %83, align 4, !dbg !533
  %85 = load %struct.HashMapEntryHeader*, %struct.HashMapEntryHeader** %6, align 8, !dbg !534
  %86 = getelementptr inbounds %struct.HashMapEntryHeader, %struct.HashMapEntryHeader* %85, i32 0, i32 1, !dbg !535
  store i32 %84, i32* %86, align 4, !dbg !536
  %87 = load %struct.HashMapEntryHeader*, %struct.HashMapEntryHeader** %6, align 8, !dbg !537
  %88 = getelementptr inbounds %struct.HashMapEntryHeader, %struct.HashMapEntryHeader* %87, i32 0, i32 0, !dbg !538
  store i32 1, i32* %88, align 4, !dbg !539
  %89 = load i8*, i8** %9, align 8, !dbg !540
  %90 = load i8*, i8** %7, align 8, !dbg !541
  %91 = load %struct.HashMap*, %struct.HashMap** %2, align 8, !dbg !542
  %92 = getelementptr inbounds %struct.HashMap, %struct.HashMap* %91, i32 0, i32 4, !dbg !543
  %93 = load i64, i64* %92, align 8, !dbg !543
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %89, i8* %90, i64 %93, i32 1, i1 false), !dbg !544
  %94 = load i8*, i8** %10, align 8, !dbg !545
  %95 = load i8*, i8** %8, align 8, !dbg !546
  %96 = load %struct.HashMap*, %struct.HashMap** %2, align 8, !dbg !547
  %97 = getelementptr inbounds %struct.HashMap, %struct.HashMap* %96, i32 0, i32 5, !dbg !548
  %98 = load i64, i64* %97, align 8, !dbg !548
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %94, i8* %95, i64 %98, i32 1, i1 false), !dbg !549
  %99 = load %struct.HashMap*, %struct.HashMap** %2, align 8, !dbg !550
  %100 = getelementptr inbounds %struct.HashMap, %struct.HashMap* %99, i32 0, i32 2, !dbg !551
  %101 = load i32, i32* %100, align 4, !dbg !552
  %102 = add i32 %101, 1, !dbg !552
  store i32 %102, i32* %100, align 4, !dbg !552
  br label %104, !dbg !553

; <label>:103:                                    ; preds = %74
  br label %106, !dbg !554

; <label>:104:                                    ; preds = %79
  br label %105, !dbg !556

; <label>:105:                                    ; preds = %104, %68
  br label %106, !dbg !557

; <label>:106:                                    ; preds = %105, %103, %73
  %107 = load i32, i32* %4, align 4, !dbg !558
  %108 = add nsw i32 %107, 1, !dbg !558
  store i32 %108, i32* %4, align 4, !dbg !558
  br label %63, !dbg !560, !llvm.loop !561

; <label>:109:                                    ; preds = %63
  %110 = getelementptr inbounds %struct.HashMap, %struct.HashMap* %3, i32 0, i32 0, !dbg !563
  %111 = load i8*, i8** %110, align 8, !dbg !563
  call void @free(i8* %111) #8, !dbg !564
  %112 = load %struct.HashMap*, %struct.HashMap** %2, align 8, !dbg !565
  call void @EnsureSanity(%struct.HashMap* %112), !dbg !566
  br label %113, !dbg !567

; <label>:113:                                    ; preds = %109, %40, %24
  ret void, !dbg !568
}

; Function Attrs: nounwind uwtable
define internal void @GetEntry(%struct.HashMap*, i32, %struct.HashMapEntryHeader**, i8**, i8**) #0 !dbg !569 {
  %6 = alloca %struct.HashMap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.HashMapEntryHeader**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  store %struct.HashMap* %0, %struct.HashMap** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.HashMap** %6, metadata !572, metadata !53), !dbg !573
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !574, metadata !53), !dbg !575
  store %struct.HashMapEntryHeader** %2, %struct.HashMapEntryHeader*** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.HashMapEntryHeader*** %8, metadata !576, metadata !53), !dbg !577
  store i8** %3, i8*** %9, align 8
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !578, metadata !53), !dbg !579
  store i8** %4, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !580, metadata !53), !dbg !581
  call void @llvm.dbg.declare(metadata i8** %11, metadata !582, metadata !53), !dbg !583
  %12 = load %struct.HashMap*, %struct.HashMap** %6, align 8, !dbg !584
  %13 = getelementptr inbounds %struct.HashMap, %struct.HashMap* %12, i32 0, i32 0, !dbg !585
  %14 = load i8*, i8** %13, align 8, !dbg !585
  %15 = load %struct.HashMap*, %struct.HashMap** %6, align 8, !dbg !586
  %16 = getelementptr inbounds %struct.HashMap, %struct.HashMap* %15, i32 0, i32 6, !dbg !587
  %17 = load i64, i64* %16, align 8, !dbg !587
  %18 = load i32, i32* %7, align 4, !dbg !588
  %19 = zext i32 %18 to i64, !dbg !588
  %20 = mul i64 %17, %19, !dbg !589
  %21 = getelementptr inbounds i8, i8* %14, i64 %20, !dbg !590
  store i8* %21, i8** %11, align 8, !dbg !591
  %22 = load i8*, i8** %11, align 8, !dbg !592
  %23 = bitcast i8* %22 to %struct.HashMapEntryHeader*, !dbg !593
  %24 = load %struct.HashMapEntryHeader**, %struct.HashMapEntryHeader*** %8, align 8, !dbg !594
  store %struct.HashMapEntryHeader* %23, %struct.HashMapEntryHeader** %24, align 8, !dbg !595
  %25 = load i8*, i8** %11, align 8, !dbg !596
  %26 = load %struct.HashMap*, %struct.HashMap** %6, align 8, !dbg !597
  %27 = getelementptr inbounds %struct.HashMap, %struct.HashMap* %26, i32 0, i32 7, !dbg !598
  %28 = load i64, i64* %27, align 8, !dbg !598
  %29 = getelementptr inbounds i8, i8* %25, i64 %28, !dbg !599
  %30 = load i8**, i8*** %9, align 8, !dbg !600
  store i8* %29, i8** %30, align 8, !dbg !601
  %31 = load i8*, i8** %11, align 8, !dbg !602
  %32 = load %struct.HashMap*, %struct.HashMap** %6, align 8, !dbg !603
  %33 = getelementptr inbounds %struct.HashMap, %struct.HashMap* %32, i32 0, i32 8, !dbg !604
  %34 = load i64, i64* %33, align 8, !dbg !604
  %35 = getelementptr inbounds i8, i8* %31, i64 %34, !dbg !605
  %36 = load i8**, i8*** %10, align 8, !dbg !606
  store i8* %35, i8** %36, align 8, !dbg !607
  ret void, !dbg !608
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: inlinehint nounwind uwtable
define void @EnsureSanity(%struct.HashMap*) #4 !dbg !609 {
  %2 = alloca %struct.HashMap*, align 8
  store %struct.HashMap* %0, %struct.HashMap** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.HashMap** %2, metadata !612, metadata !53), !dbg !613
  ret void, !dbg !614
}

; Function Attrs: nounwind uwtable
define i8* @HashMap_Get(%struct.HashMap*, i8*) #0 !dbg !615 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.HashMap*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.HashMapEntryHeader*, align 8
  store %struct.HashMap* %0, %struct.HashMap** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.HashMap** %4, metadata !618, metadata !53), !dbg !619
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !620, metadata !53), !dbg !621
  call void @llvm.dbg.declare(metadata i8** %6, metadata !622, metadata !53), !dbg !623
  call void @llvm.dbg.declare(metadata i32* %7, metadata !624, metadata !53), !dbg !625
  call void @llvm.dbg.declare(metadata %struct.HashMapEntryHeader** %8, metadata !626, metadata !53), !dbg !627
  %9 = load %struct.HashMap*, %struct.HashMap** %4, align 8, !dbg !628
  %10 = load i8*, i8** %5, align 8, !dbg !630
  %11 = call signext i8 @LookupKey(%struct.HashMap* %9, i8* %10, i8 signext 0, %struct.HashMapEntryHeader** %8, i8** %6, i32* %7), !dbg !631
  %12 = icmp ne i8 %11, 0, !dbg !631
  br i1 %12, label %13, label %15, !dbg !632

; <label>:13:                                     ; preds = %2
  %14 = load i8*, i8** %6, align 8, !dbg !633
  store i8* %14, i8** %3, align 8, !dbg !635
  br label %16, !dbg !635

; <label>:15:                                     ; preds = %2
  store i8* null, i8** %3, align 8, !dbg !636
  br label %16, !dbg !636

; <label>:16:                                     ; preds = %15, %13
  %17 = load i8*, i8** %3, align 8, !dbg !637
  ret i8* %17, !dbg !637
}

; Function Attrs: nounwind uwtable
define i8* @HashMap_ConstTimeGet(%struct.HashMap*, i8*) #0 !dbg !638 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.HashMap*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.HashMapEntryHeader*, align 8
  store %struct.HashMap* %0, %struct.HashMap** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.HashMap** %4, metadata !639, metadata !53), !dbg !640
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !641, metadata !53), !dbg !642
  call void @llvm.dbg.declare(metadata i8** %6, metadata !643, metadata !53), !dbg !644
  call void @llvm.dbg.declare(metadata i32* %7, metadata !645, metadata !53), !dbg !646
  call void @llvm.dbg.declare(metadata %struct.HashMapEntryHeader** %8, metadata !647, metadata !53), !dbg !648
  %9 = load %struct.HashMap*, %struct.HashMap** %4, align 8, !dbg !649
  %10 = load i8*, i8** %5, align 8, !dbg !651
  %11 = call signext i8 @LookupKey(%struct.HashMap* %9, i8* %10, i8 signext 1, %struct.HashMapEntryHeader** %8, i8** %6, i32* %7), !dbg !652
  %12 = icmp ne i8 %11, 0, !dbg !652
  br i1 %12, label %13, label %15, !dbg !653

; <label>:13:                                     ; preds = %2
  %14 = load i8*, i8** %6, align 8, !dbg !654
  store i8* %14, i8** %3, align 8, !dbg !656
  br label %16, !dbg !656

; <label>:15:                                     ; preds = %2
  store i8* null, i8** %3, align 8, !dbg !657
  br label %16, !dbg !657

; <label>:16:                                     ; preds = %15, %13
  %17 = load i8*, i8** %3, align 8, !dbg !658
  ret i8* %17, !dbg !658
}

; Function Attrs: nounwind uwtable
define void @HashMap_Clear(%struct.HashMap*) #0 !dbg !659 {
  %2 = alloca %struct.HashMap*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.HashMapEntryHeader*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.HashMap* %0, %struct.HashMap** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.HashMap** %2, metadata !660, metadata !53), !dbg !661
  call void @llvm.dbg.declare(metadata i32* %3, metadata !662, metadata !53), !dbg !663
  store i32 0, i32* %3, align 4, !dbg !663
  call void @llvm.dbg.declare(metadata %struct.HashMapEntryHeader** %4, metadata !664, metadata !53), !dbg !665
  call void @llvm.dbg.declare(metadata i8** %5, metadata !666, metadata !53), !dbg !667
  call void @llvm.dbg.declare(metadata i8** %6, metadata !668, metadata !53), !dbg !669
  store i32 0, i32* %3, align 4, !dbg !670
  br label %7, !dbg !672

; <label>:7:                                      ; preds = %18, %1
  %8 = load i32, i32* %3, align 4, !dbg !673
  %9 = load %struct.HashMap*, %struct.HashMap** %2, align 8, !dbg !676
  %10 = getelementptr inbounds %struct.HashMap, %struct.HashMap* %9, i32 0, i32 1, !dbg !677
  %11 = load i32, i32* %10, align 8, !dbg !677
  %12 = icmp ult i32 %8, %11, !dbg !678
  br i1 %12, label %13, label %21, !dbg !679

; <label>:13:                                     ; preds = %7
  %14 = load %struct.HashMap*, %struct.HashMap** %2, align 8, !dbg !680
  %15 = load i32, i32* %3, align 4, !dbg !682
  call void @GetEntry(%struct.HashMap* %14, i32 %15, %struct.HashMapEntryHeader** %4, i8** %5, i8** %6), !dbg !683
  %16 = load %struct.HashMapEntryHeader*, %struct.HashMapEntryHeader** %4, align 8, !dbg !684
  %17 = getelementptr inbounds %struct.HashMapEntryHeader, %struct.HashMapEntryHeader* %16, i32 0, i32 0, !dbg !685
  store i32 0, i32* %17, align 4, !dbg !686
  br label %18, !dbg !687

; <label>:18:                                     ; preds = %13
  %19 = load i32, i32* %3, align 4, !dbg !688
  %20 = add nsw i32 %19, 1, !dbg !688
  store i32 %20, i32* %3, align 4, !dbg !688
  br label %7, !dbg !690, !llvm.loop !691

; <label>:21:                                     ; preds = %7
  %22 = load %struct.HashMap*, %struct.HashMap** %2, align 8, !dbg !693
  %23 = getelementptr inbounds %struct.HashMap, %struct.HashMap* %22, i32 0, i32 2, !dbg !694
  store i32 0, i32* %23, align 4, !dbg !695
  %24 = load %struct.HashMap*, %struct.HashMap** %2, align 8, !dbg !696
  call void @EnsureSanity(%struct.HashMap* %24), !dbg !697
  ret void, !dbg !698
}

; Function Attrs: nounwind uwtable
define signext i8 @HashMap_Remove(%struct.HashMap*, i8*) #0 !dbg !699 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.HashMap*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.HashMapEntryHeader*, align 8
  %8 = alloca i8*, align 8
  store %struct.HashMap* %0, %struct.HashMap** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.HashMap** %4, metadata !702, metadata !53), !dbg !703
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !704, metadata !53), !dbg !705
  call void @llvm.dbg.declare(metadata i32* %6, metadata !706, metadata !53), !dbg !707
  call void @llvm.dbg.declare(metadata %struct.HashMapEntryHeader** %7, metadata !708, metadata !53), !dbg !709
  call void @llvm.dbg.declare(metadata i8** %8, metadata !710, metadata !53), !dbg !711
  %9 = load %struct.HashMap*, %struct.HashMap** %4, align 8, !dbg !712
  %10 = load i8*, i8** %5, align 8, !dbg !714
  %11 = call signext i8 @LookupKey(%struct.HashMap* %9, i8* %10, i8 signext 0, %struct.HashMapEntryHeader** %7, i8** %8, i32* %6), !dbg !715
  %12 = icmp ne i8 %11, 0, !dbg !715
  br i1 %12, label %14, label %13, !dbg !716

; <label>:13:                                     ; preds = %2
  store i8 0, i8* %3, align 1, !dbg !717
  br label %22, !dbg !717

; <label>:14:                                     ; preds = %2
  %15 = load %struct.HashMap*, %struct.HashMap** %4, align 8, !dbg !719
  %16 = getelementptr inbounds %struct.HashMap, %struct.HashMap* %15, i32 0, i32 2, !dbg !720
  %17 = load i32, i32* %16, align 4, !dbg !721
  %18 = add i32 %17, -1, !dbg !721
  store i32 %18, i32* %16, align 4, !dbg !721
  %19 = load %struct.HashMapEntryHeader*, %struct.HashMapEntryHeader** %7, align 8, !dbg !722
  %20 = getelementptr inbounds %struct.HashMapEntryHeader, %struct.HashMapEntryHeader* %19, i32 0, i32 0, !dbg !723
  store i32 2, i32* %20, align 4, !dbg !724
  %21 = load %struct.HashMap*, %struct.HashMap** %4, align 8, !dbg !725
  call void @EnsureSanity(%struct.HashMap* %21), !dbg !726
  store i8 1, i8* %3, align 1, !dbg !727
  br label %22, !dbg !727

; <label>:22:                                     ; preds = %14, %13
  %23 = load i8, i8* %3, align 1, !dbg !728
  ret i8 %23, !dbg !728
}

; Function Attrs: nounwind uwtable
define i32 @HashMap_Count(%struct.HashMap*) #0 !dbg !729 {
  %2 = alloca %struct.HashMap*, align 8
  store %struct.HashMap* %0, %struct.HashMap** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.HashMap** %2, metadata !732, metadata !53), !dbg !733
  %3 = load %struct.HashMap*, %struct.HashMap** %2, align 8, !dbg !734
  %4 = getelementptr inbounds %struct.HashMap, %struct.HashMap* %3, i32 0, i32 2, !dbg !735
  %5 = load i32, i32* %4, align 4, !dbg !735
  ret i32 %5, !dbg !736
}

; Function Attrs: nounwind uwtable
define void @HashMap_Iterate(%struct.HashMap*, void (i8*, i8*, i8*)*, i8 signext, i8*) #0 !dbg !737 {
  %5 = alloca %struct.HashMap*, align 8
  %6 = alloca void (i8*, i8*, i8*)*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.HashMapEntryHeader*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.HashMap* %0, %struct.HashMap** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.HashMap** %5, metadata !744, metadata !53), !dbg !745
  store void (i8*, i8*, i8*)* %1, void (i8*, i8*, i8*)** %6, align 8
  call void @llvm.dbg.declare(metadata void (i8*, i8*, i8*)** %6, metadata !746, metadata !53), !dbg !747
  store i8 %2, i8* %7, align 1
  call void @llvm.dbg.declare(metadata i8* %7, metadata !748, metadata !53), !dbg !749
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !750, metadata !53), !dbg !751
  call void @llvm.dbg.declare(metadata i32* %9, metadata !752, metadata !53), !dbg !753
  store i32 0, i32* %9, align 4, !dbg !753
  call void @llvm.dbg.declare(metadata %struct.HashMapEntryHeader** %10, metadata !754, metadata !53), !dbg !755
  call void @llvm.dbg.declare(metadata i8** %11, metadata !756, metadata !53), !dbg !757
  call void @llvm.dbg.declare(metadata i8** %12, metadata !758, metadata !53), !dbg !759
  store i32 0, i32* %9, align 4, !dbg !760
  br label %13, !dbg !762

; <label>:13:                                     ; preds = %46, %4
  %14 = load i32, i32* %9, align 4, !dbg !763
  %15 = load %struct.HashMap*, %struct.HashMap** %5, align 8, !dbg !766
  %16 = getelementptr inbounds %struct.HashMap, %struct.HashMap* %15, i32 0, i32 1, !dbg !767
  %17 = load i32, i32* %16, align 8, !dbg !767
  %18 = icmp ult i32 %14, %17, !dbg !768
  br i1 %18, label %19, label %49, !dbg !769

; <label>:19:                                     ; preds = %13
  %20 = load %struct.HashMap*, %struct.HashMap** %5, align 8, !dbg !770
  %21 = load i32, i32* %9, align 4, !dbg !772
  call void @GetEntry(%struct.HashMap* %20, i32 %21, %struct.HashMapEntryHeader** %10, i8** %11, i8** %12), !dbg !773
  %22 = load %struct.HashMapEntryHeader*, %struct.HashMapEntryHeader** %10, align 8, !dbg !774
  %23 = getelementptr inbounds %struct.HashMapEntryHeader, %struct.HashMapEntryHeader* %22, i32 0, i32 0, !dbg !776
  %24 = load i32, i32* %23, align 4, !dbg !776
  %25 = icmp eq i32 %24, 1, !dbg !777
  br i1 %25, label %26, label %39, !dbg !778

; <label>:26:                                     ; preds = %19
  %27 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %6, align 8, !dbg !779
  %28 = load i8*, i8** %11, align 8, !dbg !781
  %29 = load i8*, i8** %12, align 8, !dbg !782
  %30 = load i8*, i8** %8, align 8, !dbg !783
  call void %27(i8* %28, i8* %29, i8* %30), !dbg !779
  %31 = load i8, i8* %7, align 1, !dbg !784
  %32 = icmp ne i8 %31, 0, !dbg !784
  br i1 %32, label %33, label %38, !dbg !786

; <label>:33:                                     ; preds = %26
  %34 = load %struct.HashMap*, %struct.HashMap** %5, align 8, !dbg !787
  %35 = getelementptr inbounds %struct.HashMap, %struct.HashMap* %34, i32 0, i32 2, !dbg !789
  %36 = load i32, i32* %35, align 4, !dbg !790
  %37 = add i32 %36, -1, !dbg !790
  store i32 %37, i32* %35, align 4, !dbg !790
  br label %38, !dbg !791

; <label>:38:                                     ; preds = %33, %26
  br label %39, !dbg !792

; <label>:39:                                     ; preds = %38, %19
  %40 = load i8, i8* %7, align 1, !dbg !793
  %41 = icmp ne i8 %40, 0, !dbg !793
  br i1 %41, label %42, label %45, !dbg !795

; <label>:42:                                     ; preds = %39
  %43 = load %struct.HashMapEntryHeader*, %struct.HashMapEntryHeader** %10, align 8, !dbg !796
  %44 = getelementptr inbounds %struct.HashMapEntryHeader, %struct.HashMapEntryHeader* %43, i32 0, i32 0, !dbg !798
  store i32 0, i32* %44, align 4, !dbg !799
  br label %45, !dbg !800

; <label>:45:                                     ; preds = %42, %39
  br label %46, !dbg !801

; <label>:46:                                     ; preds = %45
  %47 = load i32, i32* %9, align 4, !dbg !802
  %48 = add nsw i32 %47, 1, !dbg !802
  store i32 %48, i32* %9, align 4, !dbg !802
  br label %13, !dbg !804, !llvm.loop !805

; <label>:49:                                     ; preds = %13
  ret void, !dbg !807
}

; Function Attrs: nounwind uwtable
define internal void @CalculateEntrySize(%struct.HashMap*) #0 !dbg !808 {
  %2 = alloca %struct.HashMap*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.HashMap* %0, %struct.HashMap** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.HashMap** %2, metadata !809, metadata !53), !dbg !810
  call void @llvm.dbg.declare(metadata i64* %3, metadata !811, metadata !53), !dbg !812
  call void @llvm.dbg.declare(metadata i64* %4, metadata !813, metadata !53), !dbg !814
  call void @llvm.dbg.declare(metadata i64* %5, metadata !815, metadata !53), !dbg !816
  call void @llvm.dbg.declare(metadata i64* %6, metadata !817, metadata !53), !dbg !818
  %7 = load %struct.HashMap*, %struct.HashMap** %2, align 8, !dbg !819
  %8 = getelementptr inbounds %struct.HashMap, %struct.HashMap* %7, i32 0, i32 4, !dbg !820
  %9 = load i64, i64* %8, align 8, !dbg !820
  %10 = add i64 %9, 4, !dbg !821
  %11 = sub i64 %10, 1, !dbg !822
  %12 = udiv i64 %11, 4, !dbg !823
  %13 = mul i64 %12, 4, !dbg !824
  store i64 %13, i64* %3, align 8, !dbg !825
  %14 = load %struct.HashMap*, %struct.HashMap** %2, align 8, !dbg !826
  %15 = getelementptr inbounds %struct.HashMap, %struct.HashMap* %14, i32 0, i32 5, !dbg !827
  %16 = load i64, i64* %15, align 8, !dbg !827
  %17 = add i64 %16, 4, !dbg !828
  %18 = sub i64 %17, 1, !dbg !829
  %19 = udiv i64 %18, 4, !dbg !830
  %20 = mul i64 %19, 4, !dbg !831
  store i64 %20, i64* %4, align 8, !dbg !832
  store i64 8, i64* %5, align 8, !dbg !833
  %21 = load i64, i64* %5, align 8, !dbg !834
  %22 = load i64, i64* %3, align 8, !dbg !835
  %23 = add i64 %21, %22, !dbg !836
  %24 = add i64 %23, 4, !dbg !837
  %25 = sub i64 %24, 1, !dbg !838
  %26 = udiv i64 %25, 4, !dbg !839
  %27 = mul i64 %26, 4, !dbg !840
  store i64 %27, i64* %6, align 8, !dbg !841
  %28 = load i64, i64* %3, align 8, !dbg !842
  %29 = add i64 8, %28, !dbg !843
  %30 = load i64, i64* %4, align 8, !dbg !844
  %31 = add i64 %29, %30, !dbg !845
  %32 = load %struct.HashMap*, %struct.HashMap** %2, align 8, !dbg !846
  %33 = getelementptr inbounds %struct.HashMap, %struct.HashMap* %32, i32 0, i32 6, !dbg !847
  store i64 %31, i64* %33, align 8, !dbg !848
  %34 = load i64, i64* %5, align 8, !dbg !849
  %35 = load %struct.HashMap*, %struct.HashMap** %2, align 8, !dbg !850
  %36 = getelementptr inbounds %struct.HashMap, %struct.HashMap* %35, i32 0, i32 7, !dbg !851
  store i64 %34, i64* %36, align 8, !dbg !852
  %37 = load i64, i64* %6, align 8, !dbg !853
  %38 = load %struct.HashMap*, %struct.HashMap** %2, align 8, !dbg !854
  %39 = getelementptr inbounds %struct.HashMap, %struct.HashMap* %38, i32 0, i32 8, !dbg !855
  store i64 %37, i64* %39, align 8, !dbg !856
  ret void, !dbg !857
}

; Function Attrs: nounwind uwtable
define internal signext i8 @ConstTimeCompareKeys(%struct.HashMap*, i8*, i8*) #0 !dbg !858 {
  %4 = alloca %struct.HashMap*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.HashMap* %0, %struct.HashMap** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.HashMap** %4, metadata !859, metadata !53), !dbg !860
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !861, metadata !53), !dbg !862
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !863, metadata !53), !dbg !864
  %7 = load i8*, i8** %5, align 8, !dbg !865
  %8 = load i8*, i8** %6, align 8, !dbg !866
  %9 = load %struct.HashMap*, %struct.HashMap** %4, align 8, !dbg !867
  %10 = getelementptr inbounds %struct.HashMap, %struct.HashMap* %9, i32 0, i32 4, !dbg !868
  %11 = load i64, i64* %10, align 8, !dbg !868
  %12 = call signext i8 @Util_ConstTimeMemDiff(i8* %7, i8* %8, i64 %11), !dbg !869
  %13 = sext i8 %12 to i32, !dbg !869
  %14 = icmp eq i32 %13, 0, !dbg !870
  %15 = zext i1 %14 to i32, !dbg !870
  %16 = trunc i32 %15 to i8, !dbg !869
  ret i8 %16, !dbg !871
}

; Function Attrs: nounwind uwtable
define internal signext i8 @CompareKeys(%struct.HashMap*, i8*, i8*) #0 !dbg !872 {
  %4 = alloca %struct.HashMap*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.HashMap* %0, %struct.HashMap** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.HashMap** %4, metadata !873, metadata !53), !dbg !874
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !875, metadata !53), !dbg !876
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !877, metadata !53), !dbg !878
  %7 = load i8*, i8** %5, align 8, !dbg !879
  %8 = load i8*, i8** %6, align 8, !dbg !880
  %9 = load %struct.HashMap*, %struct.HashMap** %4, align 8, !dbg !881
  %10 = getelementptr inbounds %struct.HashMap, %struct.HashMap* %9, i32 0, i32 4, !dbg !882
  %11 = load i64, i64* %10, align 8, !dbg !882
  %12 = call i32 @memcmp(i8* %7, i8* %8, i64 %11) #10, !dbg !883
  %13 = icmp eq i32 %12, 0, !dbg !884
  %14 = zext i1 %13 to i32, !dbg !884
  %15 = trunc i32 %14 to i8, !dbg !883
  ret i8 %15, !dbg !885
}

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #5

declare signext i8 @Util_ConstTimeMemDiff(i8*, i8*, i64) #6

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #7

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @Clamped_UMul32(i32*, i32, i32) #4 !dbg !886 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !890, metadata !53), !dbg !891
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !892, metadata !53), !dbg !893
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !894, metadata !53), !dbg !895
  %7 = load i32*, i32** %4, align 8, !dbg !896
  %8 = load i32, i32* %5, align 4, !dbg !897
  %9 = zext i32 %8 to i64, !dbg !898
  %10 = load i32, i32* %6, align 4, !dbg !899
  %11 = zext i32 %10 to i64, !dbg !899
  %12 = mul i64 %9, %11, !dbg !900
  %13 = call signext i8 @Clamped_U64To32(i32* %7, i64 %12), !dbg !901
  ret i8 %13, !dbg !902
}

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @Clamped_U64To32(i32*, i64) #4 !dbg !903 {
  %3 = alloca i8, align 1
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !906, metadata !53), !dbg !907
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !908, metadata !53), !dbg !909
  call void @llvm.dbg.declare(metadata i32* %6, metadata !910, metadata !53), !dbg !911
  %7 = load i64, i64* %5, align 8, !dbg !912
  %8 = trunc i64 %7 to i32, !dbg !913
  store i32 %8, i32* %6, align 4, !dbg !911
  %9 = load i64, i64* %5, align 8, !dbg !914
  %10 = load i32, i32* %6, align 4, !dbg !916
  %11 = zext i32 %10 to i64, !dbg !916
  %12 = icmp ne i64 %9, %11, !dbg !917
  %13 = zext i1 %12 to i32, !dbg !917
  %14 = sext i32 %13 to i64, !dbg !918
  %15 = icmp ne i64 %14, 0, !dbg !919
  br i1 %15, label %16, label %18, !dbg !920

; <label>:16:                                     ; preds = %2
  %17 = load i32*, i32** %4, align 8, !dbg !921
  store i32 -1, i32* %17, align 4, !dbg !923
  store i8 0, i8* %3, align 1, !dbg !924
  br label %21, !dbg !924

; <label>:18:                                     ; preds = %2
  %19 = load i32, i32* %6, align 4, !dbg !925
  %20 = load i32*, i32** %4, align 8, !dbg !926
  store i32 %19, i32* %20, align 4, !dbg !927
  store i8 1, i8* %3, align 1, !dbg !928
  br label %21, !dbg !928

; <label>:21:                                     ; preds = %18, %16
  %22 = load i8, i8* %3, align 1, !dbg !929
  ret i8 %22, !dbg !929
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { noreturn }
attributes #10 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!29, !30}
!llvm.ident = !{!31}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !9)
!1 = !DIFile(filename: "hashMap.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line123")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 125, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "hashMap.c", directory: "/home/lichi/Desktop/open-vm-tools/line123")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "HashMapState_EMPTY", value: 0)
!7 = !DIEnumerator(name: "HashMapState_FILLED", value: 1)
!8 = !DIEnumerator(name: "HashMapState_DELETED", value: 2)
!9 = !{!10, !15, !16, !20, !26}
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !11, line: 173, baseType: !12)
!11 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line123")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !13, line: 51, baseType: !14)
!13 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line123")
!14 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !11, line: 177, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !13, line: 48, baseType: !19)
!19 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "HashMapEntryHeader", file: !4, line: 134, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 131, size: 64, align: 32, elements: !23)
!23 = !{!24, !25}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !22, file: !4, line: 132, baseType: !10, size: 32, align: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !22, file: !4, line: 133, baseType: !10, size: 32, align: 32, offset: 32)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !11, line: 171, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !13, line: 55, baseType: !28)
!28 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!29 = !{i32 2, !"Dwarf Version", i32 4}
!30 = !{i32 2, !"Debug Info Version", i32 3}
!31 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!32 = distinct !DISubprogram(name: "HashMap_AllocMap", scope: !4, file: !4, line: 218, type: !33, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !51)
!33 = !DISubroutineType(types: !34)
!34 = !{!35, !10, !45, !45}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "HashMap", file: !37, line: 45, baseType: !38)
!37 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/hashMap.h", directory: "/home/lichi/Desktop/open-vm-tools/line123")
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HashMap", file: !4, line: 92, size: 512, align: 64, elements: !39)
!39 = !{!40, !41, !42, !43, !44, !47, !48, !49, !50}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !38, file: !4, line: 93, baseType: !16, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "numEntries", scope: !38, file: !4, line: 94, baseType: !10, size: 32, align: 32, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !38, file: !4, line: 95, baseType: !10, size: 32, align: 32, offset: 96)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !38, file: !4, line: 96, baseType: !10, size: 32, align: 32, offset: 128)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "keySize", scope: !38, file: !4, line: 98, baseType: !45, size: 64, align: 64, offset: 192)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !46, line: 216, baseType: !28)
!46 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line123")
!47 = !DIDerivedType(tag: DW_TAG_member, name: "dataSize", scope: !38, file: !4, line: 99, baseType: !45, size: 64, align: 64, offset: 256)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "entrySize", scope: !38, file: !4, line: 100, baseType: !45, size: 64, align: 64, offset: 320)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "keyOffset", scope: !38, file: !4, line: 102, baseType: !45, size: 64, align: 64, offset: 384)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "dataOffset", scope: !38, file: !4, line: 103, baseType: !45, size: 64, align: 64, offset: 448)
!51 = !{}
!52 = !DILocalVariable(name: "numEntries", arg: 1, scope: !32, file: !4, line: 218, type: !10)
!53 = !DIExpression()
!54 = !DILocation(line: 218, column: 25, scope: !32)
!55 = !DILocalVariable(name: "keySize", arg: 2, scope: !32, file: !4, line: 219, type: !45)
!56 = !DILocation(line: 219, column: 25, scope: !32)
!57 = !DILocalVariable(name: "dataSize", arg: 3, scope: !32, file: !4, line: 220, type: !45)
!58 = !DILocation(line: 220, column: 25, scope: !32)
!59 = !DILocation(line: 222, column: 33, scope: !32)
!60 = !DILocation(line: 222, column: 48, scope: !32)
!61 = !DILocation(line: 222, column: 57, scope: !32)
!62 = !DILocation(line: 222, column: 11, scope: !32)
!63 = !DILocation(line: 222, column: 4, scope: !32)
!64 = distinct !DISubprogram(name: "HashMap_AllocMapAlpha", scope: !4, file: !4, line: 247, type: !65, isLocal: false, isDefinition: true, scopeLine: 251, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !51)
!65 = !DISubroutineType(types: !66)
!66 = !{!35, !10, !10, !45, !45}
!67 = !DILocalVariable(name: "numEntries", arg: 1, scope: !64, file: !4, line: 247, type: !10)
!68 = !DILocation(line: 247, column: 30, scope: !64)
!69 = !DILocalVariable(name: "alpha", arg: 2, scope: !64, file: !4, line: 248, type: !10)
!70 = !DILocation(line: 248, column: 30, scope: !64)
!71 = !DILocalVariable(name: "keySize", arg: 3, scope: !64, file: !4, line: 249, type: !45)
!72 = !DILocation(line: 249, column: 30, scope: !64)
!73 = !DILocalVariable(name: "dataSize", arg: 4, scope: !64, file: !4, line: 250, type: !45)
!74 = !DILocation(line: 250, column: 30, scope: !64)
!75 = !DILocalVariable(name: "map", scope: !64, file: !4, line: 252, type: !76)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!77 = !DILocation(line: 252, column: 20, scope: !64)
!78 = !DILocation(line: 253, column: 10, scope: !64)
!79 = !DILocation(line: 253, column: 8, scope: !64)
!80 = !DILocation(line: 257, column: 8, scope: !81)
!81 = distinct !DILexicalBlock(scope: !64, file: !4, line: 257, column: 8)
!82 = !DILocation(line: 257, column: 8, scope: !64)
!83 = !DILocation(line: 258, column: 20, scope: !84)
!84 = distinct !DILexicalBlock(scope: !85, file: !4, line: 258, column: 11)
!85 = distinct !DILexicalBlock(scope: !81, file: !4, line: 257, column: 13)
!86 = !DILocation(line: 258, column: 25, scope: !84)
!87 = !DILocation(line: 258, column: 37, scope: !84)
!88 = !DILocation(line: 258, column: 44, scope: !84)
!89 = !DILocation(line: 258, column: 53, scope: !84)
!90 = !DILocation(line: 258, column: 12, scope: !84)
!91 = !DILocation(line: 258, column: 11, scope: !85)
!92 = !DILocation(line: 259, column: 29, scope: !93)
!93 = distinct !DILexicalBlock(scope: !84, file: !4, line: 258, column: 64)
!94 = !DILocation(line: 259, column: 10, scope: !93)
!95 = !DILocation(line: 260, column: 10, scope: !93)
!96 = !DILocation(line: 262, column: 4, scope: !85)
!97 = !DILocation(line: 264, column: 11, scope: !64)
!98 = !DILocation(line: 264, column: 4, scope: !64)
!99 = !DILocation(line: 265, column: 1, scope: !64)
!100 = distinct !DISubprogram(name: "InitMap", scope: !4, file: !4, line: 315, type: !101, isLocal: true, isDefinition: true, scopeLine: 320, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !51)
!101 = !DISubroutineType(types: !102)
!102 = !{!103, !76, !10, !10, !45, !45}
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !11, line: 230, baseType: !104)
!104 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!105 = !DILocalVariable(name: "map", arg: 1, scope: !100, file: !4, line: 315, type: !76)
!106 = !DILocation(line: 315, column: 25, scope: !100)
!107 = !DILocalVariable(name: "numEntries", arg: 2, scope: !100, file: !4, line: 316, type: !10)
!108 = !DILocation(line: 316, column: 16, scope: !100)
!109 = !DILocalVariable(name: "alpha", arg: 3, scope: !100, file: !4, line: 317, type: !10)
!110 = !DILocation(line: 317, column: 16, scope: !100)
!111 = !DILocalVariable(name: "keySize", arg: 4, scope: !100, file: !4, line: 318, type: !45)
!112 = !DILocation(line: 318, column: 16, scope: !100)
!113 = !DILocalVariable(name: "dataSize", arg: 5, scope: !100, file: !4, line: 319, type: !45)
!114 = !DILocation(line: 319, column: 16, scope: !100)
!115 = !DILocation(line: 329, column: 18, scope: !100)
!116 = !DILocation(line: 329, column: 15, scope: !100)
!117 = !DILocation(line: 331, column: 22, scope: !100)
!118 = !DILocation(line: 331, column: 4, scope: !100)
!119 = !DILocation(line: 331, column: 9, scope: !100)
!120 = !DILocation(line: 331, column: 20, scope: !100)
!121 = !DILocation(line: 332, column: 17, scope: !100)
!122 = !DILocation(line: 332, column: 4, scope: !100)
!123 = !DILocation(line: 332, column: 9, scope: !100)
!124 = !DILocation(line: 332, column: 15, scope: !100)
!125 = !DILocation(line: 333, column: 19, scope: !100)
!126 = !DILocation(line: 333, column: 4, scope: !100)
!127 = !DILocation(line: 333, column: 9, scope: !100)
!128 = !DILocation(line: 333, column: 17, scope: !100)
!129 = !DILocation(line: 334, column: 20, scope: !100)
!130 = !DILocation(line: 334, column: 4, scope: !100)
!131 = !DILocation(line: 334, column: 9, scope: !100)
!132 = !DILocation(line: 334, column: 18, scope: !100)
!133 = !DILocation(line: 336, column: 23, scope: !100)
!134 = !DILocation(line: 336, column: 4, scope: !100)
!135 = !DILocation(line: 337, column: 26, scope: !100)
!136 = !DILocation(line: 337, column: 38, scope: !100)
!137 = !DILocation(line: 337, column: 43, scope: !100)
!138 = !DILocation(line: 337, column: 19, scope: !100)
!139 = !DILocation(line: 337, column: 4, scope: !100)
!140 = !DILocation(line: 337, column: 9, scope: !100)
!141 = !DILocation(line: 337, column: 17, scope: !100)
!142 = !DILocation(line: 339, column: 8, scope: !143)
!143 = distinct !DILexicalBlock(scope: !100, file: !4, line: 339, column: 8)
!144 = !DILocation(line: 339, column: 13, scope: !143)
!145 = !DILocation(line: 339, column: 8, scope: !100)
!146 = !DILocation(line: 340, column: 20, scope: !147)
!147 = distinct !DILexicalBlock(scope: !143, file: !4, line: 339, column: 22)
!148 = !DILocation(line: 340, column: 7, scope: !147)
!149 = !DILocation(line: 341, column: 4, scope: !147)
!150 = !DILocation(line: 343, column: 11, scope: !100)
!151 = !DILocation(line: 343, column: 16, scope: !100)
!152 = !DILocation(line: 343, column: 24, scope: !100)
!153 = !DILocation(line: 343, column: 4, scope: !100)
!154 = distinct !DISubprogram(name: "HashMap_DestroyMap", scope: !4, file: !4, line: 285, type: !155, isLocal: false, isDefinition: true, scopeLine: 286, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !51)
!155 = !DISubroutineType(types: !156)
!156 = !{null, !76}
!157 = !DILocalVariable(name: "map", arg: 1, scope: !154, file: !4, line: 285, type: !76)
!158 = !DILocation(line: 285, column: 36, scope: !154)
!159 = !DILocation(line: 287, column: 8, scope: !160)
!160 = distinct !DILexicalBlock(scope: !154, file: !4, line: 287, column: 8)
!161 = !DILocation(line: 287, column: 8, scope: !154)
!162 = !DILocation(line: 288, column: 12, scope: !163)
!163 = distinct !DILexicalBlock(scope: !160, file: !4, line: 287, column: 13)
!164 = !DILocation(line: 288, column: 17, scope: !163)
!165 = !DILocation(line: 288, column: 7, scope: !163)
!166 = !DILocation(line: 289, column: 4, scope: !163)
!167 = !DILocation(line: 290, column: 9, scope: !154)
!168 = !DILocation(line: 290, column: 4, scope: !154)
!169 = !DILocation(line: 291, column: 1, scope: !154)
!170 = distinct !DISubprogram(name: "HashMap_Put", scope: !4, file: !4, line: 367, type: !171, isLocal: false, isDefinition: true, scopeLine: 370, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !51)
!171 = !DISubroutineType(types: !172)
!172 = !{!103, !76, !173, !173}
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64, align: 64)
!174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!175 = !DILocalVariable(name: "map", arg: 1, scope: !170, file: !4, line: 367, type: !76)
!176 = !DILocation(line: 367, column: 29, scope: !170)
!177 = !DILocalVariable(name: "key", arg: 2, scope: !170, file: !4, line: 368, type: !173)
!178 = !DILocation(line: 368, column: 25, scope: !170)
!179 = !DILocalVariable(name: "data", arg: 3, scope: !170, file: !4, line: 369, type: !173)
!180 = !DILocation(line: 369, column: 25, scope: !170)
!181 = !DILocalVariable(name: "freeIndex", scope: !170, file: !4, line: 371, type: !10)
!182 = !DILocation(line: 371, column: 11, scope: !170)
!183 = !DILocalVariable(name: "header", scope: !170, file: !4, line: 372, type: !20)
!184 = !DILocation(line: 372, column: 24, scope: !170)
!185 = !DILocalVariable(name: "tableData", scope: !170, file: !4, line: 373, type: !15)
!186 = !DILocation(line: 373, column: 10, scope: !170)
!187 = !DILocation(line: 375, column: 19, scope: !188)
!188 = distinct !DILexicalBlock(scope: !170, file: !4, line: 375, column: 8)
!189 = !DILocation(line: 375, column: 24, scope: !188)
!190 = !DILocation(line: 375, column: 9, scope: !188)
!191 = !DILocation(line: 375, column: 8, scope: !170)
!192 = !DILocalVariable(name: "hash", scope: !193, file: !4, line: 376, type: !10)
!193 = distinct !DILexicalBlock(scope: !188, file: !4, line: 375, column: 66)
!194 = !DILocation(line: 376, column: 14, scope: !193)
!195 = !DILocation(line: 376, column: 33, scope: !193)
!196 = !DILocation(line: 376, column: 38, scope: !193)
!197 = !DILocation(line: 376, column: 21, scope: !193)
!198 = !DILocalVariable(name: "tableKey", scope: !193, file: !4, line: 377, type: !15)
!199 = !DILocation(line: 377, column: 13, scope: !193)
!200 = !DILocation(line: 379, column: 23, scope: !201)
!201 = distinct !DILexicalBlock(scope: !193, file: !4, line: 379, column: 11)
!202 = !DILocation(line: 379, column: 11, scope: !201)
!203 = !DILocation(line: 379, column: 11, scope: !193)
!204 = !DILocation(line: 380, column: 17, scope: !205)
!205 = distinct !DILexicalBlock(scope: !201, file: !4, line: 379, column: 29)
!206 = !DILocation(line: 380, column: 10, scope: !205)
!207 = !DILocation(line: 381, column: 24, scope: !208)
!208 = distinct !DILexicalBlock(scope: !205, file: !4, line: 381, column: 14)
!209 = !DILocation(line: 381, column: 29, scope: !208)
!210 = !DILocation(line: 381, column: 14, scope: !208)
!211 = !DILocation(line: 381, column: 14, scope: !205)
!212 = !DILocation(line: 386, column: 10, scope: !213)
!213 = distinct !DILexicalBlock(scope: !208, file: !4, line: 381, column: 71)
!214 = !DILocation(line: 387, column: 14, scope: !215)
!215 = distinct !DILexicalBlock(scope: !205, file: !4, line: 387, column: 14)
!216 = !DILocation(line: 387, column: 24, scope: !215)
!217 = !DILocation(line: 387, column: 14, scope: !205)
!218 = !DILocation(line: 391, column: 13, scope: !219)
!219 = distinct !DILexicalBlock(scope: !215, file: !4, line: 387, column: 42)
!220 = !DILocation(line: 393, column: 7, scope: !205)
!221 = !DILocation(line: 395, column: 7, scope: !193)
!222 = !DILocation(line: 395, column: 12, scope: !193)
!223 = !DILocation(line: 395, column: 17, scope: !193)
!224 = !DILocation(line: 396, column: 16, scope: !193)
!225 = !DILocation(line: 396, column: 21, scope: !193)
!226 = !DILocation(line: 396, column: 7, scope: !193)
!227 = !DILocation(line: 399, column: 7, scope: !193)
!228 = !DILocation(line: 399, column: 15, scope: !193)
!229 = !DILocation(line: 399, column: 21, scope: !193)
!230 = !DILocation(line: 400, column: 22, scope: !193)
!231 = !DILocation(line: 400, column: 7, scope: !193)
!232 = !DILocation(line: 400, column: 15, scope: !193)
!233 = !DILocation(line: 400, column: 20, scope: !193)
!234 = !DILocation(line: 401, column: 14, scope: !193)
!235 = !DILocation(line: 401, column: 24, scope: !193)
!236 = !DILocation(line: 401, column: 29, scope: !193)
!237 = !DILocation(line: 401, column: 34, scope: !193)
!238 = !DILocation(line: 401, column: 7, scope: !193)
!239 = !DILocation(line: 402, column: 4, scope: !193)
!240 = !DILocation(line: 405, column: 11, scope: !170)
!241 = !DILocation(line: 405, column: 22, scope: !170)
!242 = !DILocation(line: 405, column: 28, scope: !170)
!243 = !DILocation(line: 405, column: 33, scope: !170)
!244 = !DILocation(line: 405, column: 4, scope: !170)
!245 = !DILocation(line: 407, column: 17, scope: !170)
!246 = !DILocation(line: 407, column: 4, scope: !170)
!247 = !DILocation(line: 408, column: 4, scope: !170)
!248 = !DILocation(line: 409, column: 1, scope: !170)
!249 = distinct !DISubprogram(name: "LookupKey", scope: !4, file: !4, line: 642, type: !250, isLocal: true, isDefinition: true, scopeLine: 648, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !51)
!250 = !DISubroutineType(types: !251)
!251 = !{!103, !76, !173, !103, !252, !253, !254}
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!255 = !DILocalVariable(name: "map", arg: 1, scope: !249, file: !4, line: 642, type: !76)
!256 = !DILocation(line: 642, column: 27, scope: !249)
!257 = !DILocalVariable(name: "key", arg: 2, scope: !249, file: !4, line: 643, type: !173)
!258 = !DILocation(line: 643, column: 23, scope: !249)
!259 = !DILocalVariable(name: "constTimeLookup", arg: 3, scope: !249, file: !4, line: 644, type: !103)
!260 = !DILocation(line: 644, column: 16, scope: !249)
!261 = !DILocalVariable(name: "header", arg: 4, scope: !249, file: !4, line: 645, type: !252)
!262 = !DILocation(line: 645, column: 32, scope: !249)
!263 = !DILocalVariable(name: "data", arg: 5, scope: !249, file: !4, line: 646, type: !253)
!264 = !DILocation(line: 646, column: 18, scope: !249)
!265 = !DILocalVariable(name: "freeIndex", arg: 6, scope: !249, file: !4, line: 647, type: !254)
!266 = !DILocation(line: 647, column: 19, scope: !249)
!267 = !DILocalVariable(name: "hash", scope: !249, file: !4, line: 649, type: !10)
!268 = !DILocation(line: 649, column: 11, scope: !249)
!269 = !DILocation(line: 649, column: 30, scope: !249)
!270 = !DILocation(line: 649, column: 35, scope: !249)
!271 = !DILocation(line: 649, column: 18, scope: !249)
!272 = !DILocalVariable(name: "index", scope: !249, file: !4, line: 650, type: !10)
!273 = !DILocation(line: 650, column: 11, scope: !249)
!274 = !DILocation(line: 650, column: 19, scope: !249)
!275 = !DILocation(line: 650, column: 26, scope: !249)
!276 = !DILocation(line: 650, column: 31, scope: !249)
!277 = !DILocation(line: 650, column: 24, scope: !249)
!278 = !DILocalVariable(name: "probe", scope: !249, file: !4, line: 651, type: !10)
!279 = !DILocation(line: 651, column: 11, scope: !249)
!280 = !DILocalVariable(name: "done", scope: !249, file: !4, line: 653, type: !103)
!281 = !DILocation(line: 653, column: 9, scope: !249)
!282 = !DILocalVariable(name: "found", scope: !249, file: !4, line: 653, type: !103)
!283 = !DILocation(line: 653, column: 19, scope: !249)
!284 = !DILocalVariable(name: "tableKey", scope: !249, file: !4, line: 654, type: !15)
!285 = !DILocation(line: 654, column: 10, scope: !249)
!286 = !DILocation(line: 661, column: 5, scope: !249)
!287 = !DILocation(line: 661, column: 15, scope: !249)
!288 = !DILocation(line: 663, column: 4, scope: !249)
!289 = !DILocation(line: 663, column: 12, scope: !290)
!290 = !DILexicalBlockFile(scope: !249, file: !4, discriminator: 1)
!291 = !DILocation(line: 663, column: 17, scope: !290)
!292 = !DILocation(line: 663, column: 20, scope: !293)
!293 = !DILexicalBlockFile(scope: !249, file: !4, discriminator: 2)
!294 = !DILocation(line: 663, column: 28, scope: !293)
!295 = !DILocation(line: 663, column: 33, scope: !293)
!296 = !DILocation(line: 663, column: 44, scope: !293)
!297 = !DILocation(line: 663, column: 26, scope: !293)
!298 = !DILocation(line: 663, column: 4, scope: !299)
!299 = !DILexicalBlockFile(scope: !249, file: !4, discriminator: 3)
!300 = !DILocalVariable(name: "currentIndex", scope: !301, file: !4, line: 664, type: !10)
!301 = distinct !DILexicalBlock(scope: !249, file: !4, line: 663, column: 49)
!302 = !DILocation(line: 664, column: 14, scope: !301)
!303 = !DILocation(line: 664, column: 30, scope: !301)
!304 = !DILocation(line: 664, column: 38, scope: !301)
!305 = !DILocation(line: 664, column: 36, scope: !301)
!306 = !DILocation(line: 664, column: 47, scope: !301)
!307 = !DILocation(line: 664, column: 52, scope: !301)
!308 = !DILocation(line: 664, column: 45, scope: !301)
!309 = !DILocation(line: 666, column: 16, scope: !301)
!310 = !DILocation(line: 666, column: 21, scope: !301)
!311 = !DILocation(line: 666, column: 35, scope: !301)
!312 = !DILocation(line: 666, column: 54, scope: !301)
!313 = !DILocation(line: 666, column: 7, scope: !301)
!314 = !DILocation(line: 669, column: 17, scope: !301)
!315 = !DILocation(line: 669, column: 16, scope: !301)
!316 = !DILocation(line: 669, column: 26, scope: !301)
!317 = !DILocation(line: 669, column: 7, scope: !301)
!318 = !DILocation(line: 671, column: 15, scope: !319)
!319 = distinct !DILexicalBlock(scope: !301, file: !4, line: 669, column: 33)
!320 = !DILocation(line: 671, column: 10, scope: !319)
!321 = !DILocation(line: 679, column: 15, scope: !322)
!322 = distinct !DILexicalBlock(scope: !319, file: !4, line: 679, column: 14)
!323 = !DILocation(line: 679, column: 14, scope: !322)
!324 = !DILocation(line: 679, column: 25, scope: !322)
!325 = !DILocation(line: 679, column: 14, scope: !319)
!326 = !DILocation(line: 680, column: 26, scope: !327)
!327 = distinct !DILexicalBlock(scope: !322, file: !4, line: 679, column: 43)
!328 = !DILocation(line: 680, column: 14, scope: !327)
!329 = !DILocation(line: 680, column: 24, scope: !327)
!330 = !DILocation(line: 681, column: 10, scope: !327)
!331 = !DILocation(line: 682, column: 10, scope: !319)
!332 = !DILocation(line: 684, column: 16, scope: !333)
!333 = distinct !DILexicalBlock(scope: !319, file: !4, line: 684, column: 14)
!334 = !DILocation(line: 684, column: 15, scope: !333)
!335 = !DILocation(line: 684, column: 25, scope: !333)
!336 = !DILocation(line: 684, column: 33, scope: !333)
!337 = !DILocation(line: 684, column: 30, scope: !333)
!338 = !DILocation(line: 684, column: 14, scope: !319)
!339 = !DILocation(line: 690, column: 17, scope: !340)
!340 = distinct !DILexicalBlock(scope: !341, file: !4, line: 690, column: 17)
!341 = distinct !DILexicalBlock(scope: !333, file: !4, line: 684, column: 39)
!342 = !DILocation(line: 690, column: 17, scope: !341)
!343 = !DILocation(line: 691, column: 45, scope: !344)
!344 = distinct !DILexicalBlock(scope: !340, file: !4, line: 690, column: 34)
!345 = !DILocation(line: 691, column: 50, scope: !344)
!346 = !DILocation(line: 691, column: 55, scope: !344)
!347 = !DILocation(line: 691, column: 24, scope: !344)
!348 = !DILocation(line: 691, column: 22, scope: !344)
!349 = !DILocation(line: 692, column: 13, scope: !344)
!350 = !DILocation(line: 693, column: 36, scope: !351)
!351 = distinct !DILexicalBlock(scope: !340, file: !4, line: 692, column: 20)
!352 = !DILocation(line: 693, column: 41, scope: !351)
!353 = !DILocation(line: 693, column: 46, scope: !351)
!354 = !DILocation(line: 693, column: 24, scope: !351)
!355 = !DILocation(line: 693, column: 22, scope: !351)
!356 = !DILocation(line: 695, column: 17, scope: !357)
!357 = distinct !DILexicalBlock(scope: !341, file: !4, line: 695, column: 17)
!358 = !DILocation(line: 695, column: 17, scope: !341)
!359 = !DILocation(line: 696, column: 21, scope: !360)
!360 = distinct !DILexicalBlock(scope: !357, file: !4, line: 695, column: 24)
!361 = !DILocation(line: 697, column: 13, scope: !360)
!362 = !DILocation(line: 698, column: 10, scope: !341)
!363 = !DILocation(line: 699, column: 10, scope: !319)
!364 = !DILocation(line: 701, column: 10, scope: !319)
!365 = !DILocation(line: 703, column: 12, scope: !301)
!366 = !DILocation(line: 663, column: 4, scope: !367)
!367 = !DILexicalBlockFile(scope: !249, file: !4, discriminator: 4)
!368 = distinct !{!368, !288}
!369 = !DILocation(line: 708, column: 11, scope: !249)
!370 = !DILocation(line: 708, column: 4, scope: !249)
!371 = distinct !DISubprogram(name: "ComputeHash", scope: !4, file: !4, line: 771, type: !372, isLocal: true, isDefinition: true, scopeLine: 773, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !51)
!372 = !DISubroutineType(types: !373)
!373 = !{!10, !76, !173}
!374 = !DILocalVariable(name: "map", arg: 1, scope: !371, file: !4, line: 771, type: !76)
!375 = !DILocation(line: 771, column: 29, scope: !371)
!376 = !DILocalVariable(name: "key", arg: 2, scope: !371, file: !4, line: 772, type: !173)
!377 = !DILocation(line: 772, column: 25, scope: !371)
!378 = !DILocalVariable(name: "h", scope: !371, file: !4, line: 782, type: !10)
!379 = !DILocation(line: 782, column: 11, scope: !371)
!380 = !DILocalVariable(name: "keyByte", scope: !371, file: !4, line: 783, type: !381)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64, align: 64)
!382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!383 = !DILocation(line: 783, column: 17, scope: !371)
!384 = !DILocalVariable(name: "i", scope: !371, file: !4, line: 784, type: !45)
!385 = !DILocation(line: 784, column: 11, scope: !371)
!386 = !DILocation(line: 786, column: 19, scope: !387)
!387 = distinct !DILexicalBlock(scope: !371, file: !4, line: 786, column: 4)
!388 = !DILocation(line: 786, column: 17, scope: !387)
!389 = !DILocation(line: 786, column: 26, scope: !387)
!390 = !DILocation(line: 786, column: 9, scope: !387)
!391 = !DILocation(line: 786, column: 31, scope: !392)
!392 = !DILexicalBlockFile(scope: !393, file: !4, discriminator: 1)
!393 = distinct !DILexicalBlock(scope: !387, file: !4, line: 786, column: 4)
!394 = !DILocation(line: 786, column: 35, scope: !392)
!395 = !DILocation(line: 786, column: 40, scope: !392)
!396 = !DILocation(line: 786, column: 33, scope: !392)
!397 = !DILocation(line: 786, column: 4, scope: !392)
!398 = !DILocation(line: 787, column: 9, scope: !399)
!399 = distinct !DILexicalBlock(scope: !393, file: !4, line: 786, column: 65)
!400 = !DILocation(line: 788, column: 13, scope: !399)
!401 = !DILocation(line: 788, column: 12, scope: !399)
!402 = !DILocation(line: 788, column: 9, scope: !399)
!403 = !DILocation(line: 789, column: 4, scope: !399)
!404 = !DILocation(line: 786, column: 56, scope: !405)
!405 = !DILexicalBlockFile(scope: !393, file: !4, discriminator: 2)
!406 = !DILocation(line: 786, column: 61, scope: !405)
!407 = !DILocation(line: 786, column: 4, scope: !405)
!408 = distinct !{!408, !409}
!409 = !DILocation(line: 786, column: 4, scope: !371)
!410 = !DILocation(line: 790, column: 11, scope: !371)
!411 = !DILocation(line: 790, column: 4, scope: !371)
!412 = distinct !DISubprogram(name: "NeedsResize", scope: !4, file: !4, line: 867, type: !413, isLocal: true, isDefinition: true, scopeLine: 868, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !51)
!413 = !DISubroutineType(types: !414)
!414 = !{!103, !76}
!415 = !DILocalVariable(name: "map", arg: 1, scope: !412, file: !4, line: 867, type: !76)
!416 = !DILocation(line: 867, column: 29, scope: !412)
!417 = !DILocalVariable(name: "required", scope: !412, file: !4, line: 869, type: !10)
!418 = !DILocation(line: 869, column: 11, scope: !412)
!419 = !DILocation(line: 871, column: 30, scope: !412)
!420 = !DILocation(line: 871, column: 35, scope: !412)
!421 = !DILocation(line: 871, column: 42, scope: !412)
!422 = !DILocation(line: 871, column: 47, scope: !412)
!423 = !DILocation(line: 871, column: 4, scope: !412)
!424 = !DILocation(line: 873, column: 11, scope: !412)
!425 = !DILocation(line: 873, column: 23, scope: !412)
!426 = !DILocation(line: 873, column: 28, scope: !412)
!427 = !DILocation(line: 873, column: 20, scope: !412)
!428 = !DILocation(line: 873, column: 4, scope: !412)
!429 = distinct !DISubprogram(name: "Resize", scope: !4, file: !4, line: 897, type: !155, isLocal: true, isDefinition: true, scopeLine: 898, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !51)
!430 = !DILocalVariable(name: "map", arg: 1, scope: !429, file: !4, line: 897, type: !76)
!431 = !DILocation(line: 897, column: 24, scope: !429)
!432 = !DILocalVariable(name: "oldHashMap", scope: !429, file: !4, line: 899, type: !38)
!433 = !DILocation(line: 899, column: 19, scope: !429)
!434 = !DILocation(line: 899, column: 33, scope: !429)
!435 = !DILocation(line: 899, column: 32, scope: !429)
!436 = !DILocalVariable(name: "i", scope: !429, file: !4, line: 900, type: !437)
!437 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!438 = !DILocation(line: 900, column: 8, scope: !429)
!439 = !DILocation(line: 902, column: 8, scope: !440)
!440 = distinct !DILexicalBlock(scope: !429, file: !4, line: 902, column: 8)
!441 = !DILocation(line: 902, column: 13, scope: !440)
!442 = !DILocation(line: 902, column: 24, scope: !440)
!443 = !DILocation(line: 902, column: 8, scope: !429)
!444 = !DILocation(line: 903, column: 11, scope: !445)
!445 = distinct !DILexicalBlock(scope: !446, file: !4, line: 903, column: 11)
!446 = distinct !DILexicalBlock(scope: !440, file: !4, line: 902, column: 49)
!447 = !DILocation(line: 903, column: 16, scope: !445)
!448 = !DILocation(line: 903, column: 22, scope: !445)
!449 = !DILocation(line: 903, column: 11, scope: !446)
!450 = !DILocation(line: 908, column: 10, scope: !451)
!451 = distinct !DILexicalBlock(scope: !445, file: !4, line: 903, column: 46)
!452 = !DILocation(line: 914, column: 10, scope: !453)
!453 = distinct !DILexicalBlock(scope: !445, file: !4, line: 909, column: 14)
!454 = !DILocation(line: 924, column: 37, scope: !429)
!455 = !DILocation(line: 924, column: 48, scope: !429)
!456 = !DILocation(line: 924, column: 26, scope: !429)
!457 = !DILocation(line: 924, column: 64, scope: !429)
!458 = !DILocation(line: 924, column: 19, scope: !429)
!459 = !DILocation(line: 924, column: 4, scope: !429)
!460 = !DILocation(line: 924, column: 9, scope: !429)
!461 = !DILocation(line: 924, column: 17, scope: !429)
!462 = !DILocation(line: 925, column: 9, scope: !463)
!463 = distinct !DILexicalBlock(scope: !429, file: !4, line: 925, column: 8)
!464 = !DILocation(line: 925, column: 14, scope: !463)
!465 = !DILocation(line: 925, column: 8, scope: !429)
!466 = !DILocation(line: 926, column: 33, scope: !467)
!467 = distinct !DILexicalBlock(scope: !463, file: !4, line: 925, column: 23)
!468 = !DILocation(line: 926, column: 7, scope: !467)
!469 = !DILocation(line: 926, column: 12, scope: !467)
!470 = !DILocation(line: 926, column: 20, scope: !467)
!471 = !DILocation(line: 927, column: 7, scope: !467)
!472 = !DILocation(line: 930, column: 4, scope: !429)
!473 = distinct !{!473, !472}
!474 = !DILocation(line: 931, column: 28, scope: !475)
!475 = distinct !DILexicalBlock(scope: !476, file: !4, line: 931, column: 11)
!476 = distinct !DILexicalBlock(scope: !429, file: !4, line: 930, column: 7)
!477 = !DILocation(line: 931, column: 33, scope: !475)
!478 = !DILocation(line: 931, column: 45, scope: !475)
!479 = !DILocation(line: 931, column: 50, scope: !475)
!480 = !DILocation(line: 931, column: 12, scope: !475)
!481 = !DILocation(line: 931, column: 11, scope: !476)
!482 = !DILocation(line: 933, column: 10, scope: !483)
!483 = distinct !DILexicalBlock(scope: !475, file: !4, line: 931, column: 66)
!484 = !DILocation(line: 935, column: 4, scope: !476)
!485 = !DILocation(line: 935, column: 25, scope: !486)
!486 = !DILexicalBlockFile(scope: !429, file: !4, discriminator: 1)
!487 = !DILocation(line: 935, column: 13, scope: !486)
!488 = !DILocation(line: 935, column: 4, scope: !486)
!489 = !DILocation(line: 937, column: 4, scope: !429)
!490 = !DILocation(line: 937, column: 9, scope: !429)
!491 = !DILocation(line: 937, column: 15, scope: !429)
!492 = !DILocation(line: 939, column: 11, scope: !493)
!493 = distinct !DILexicalBlock(scope: !429, file: !4, line: 939, column: 4)
!494 = !DILocation(line: 939, column: 9, scope: !493)
!495 = !DILocation(line: 939, column: 16, scope: !496)
!496 = !DILexicalBlockFile(scope: !497, file: !4, discriminator: 1)
!497 = distinct !DILexicalBlock(scope: !493, file: !4, line: 939, column: 4)
!498 = !DILocation(line: 939, column: 31, scope: !496)
!499 = !DILocation(line: 939, column: 18, scope: !496)
!500 = !DILocation(line: 939, column: 4, scope: !496)
!501 = !DILocalVariable(name: "oldHeader", scope: !502, file: !4, line: 940, type: !20)
!502 = distinct !DILexicalBlock(scope: !497, file: !4, line: 939, column: 48)
!503 = !DILocation(line: 940, column: 27, scope: !502)
!504 = !DILocalVariable(name: "newHeader", scope: !502, file: !4, line: 941, type: !20)
!505 = !DILocation(line: 941, column: 27, scope: !502)
!506 = !DILocalVariable(name: "oldKey", scope: !502, file: !4, line: 942, type: !15)
!507 = !DILocation(line: 942, column: 13, scope: !502)
!508 = !DILocalVariable(name: "oldData", scope: !502, file: !4, line: 943, type: !15)
!509 = !DILocation(line: 943, column: 13, scope: !502)
!510 = !DILocalVariable(name: "newKey", scope: !502, file: !4, line: 944, type: !15)
!511 = !DILocation(line: 944, column: 13, scope: !502)
!512 = !DILocalVariable(name: "newData", scope: !502, file: !4, line: 945, type: !15)
!513 = !DILocation(line: 945, column: 13, scope: !502)
!514 = !DILocalVariable(name: "freeIndex", scope: !502, file: !4, line: 946, type: !10)
!515 = !DILocation(line: 946, column: 14, scope: !502)
!516 = !DILocation(line: 948, column: 29, scope: !502)
!517 = !DILocation(line: 948, column: 7, scope: !502)
!518 = !DILocation(line: 949, column: 15, scope: !502)
!519 = !DILocation(line: 949, column: 26, scope: !502)
!520 = !DILocation(line: 949, column: 7, scope: !502)
!521 = !DILocation(line: 952, column: 10, scope: !522)
!522 = distinct !DILexicalBlock(scope: !502, file: !4, line: 949, column: 33)
!523 = !DILocation(line: 954, column: 25, scope: !524)
!524 = distinct !DILexicalBlock(scope: !522, file: !4, line: 954, column: 14)
!525 = !DILocation(line: 954, column: 30, scope: !524)
!526 = !DILocation(line: 954, column: 15, scope: !524)
!527 = !DILocation(line: 954, column: 14, scope: !522)
!528 = !DILocation(line: 955, column: 22, scope: !529)
!529 = distinct !DILexicalBlock(scope: !524, file: !4, line: 954, column: 76)
!530 = !DILocation(line: 955, column: 27, scope: !529)
!531 = !DILocation(line: 955, column: 13, scope: !529)
!532 = !DILocation(line: 957, column: 31, scope: !529)
!533 = !DILocation(line: 957, column: 42, scope: !529)
!534 = !DILocation(line: 957, column: 13, scope: !529)
!535 = !DILocation(line: 957, column: 24, scope: !529)
!536 = !DILocation(line: 957, column: 29, scope: !529)
!537 = !DILocation(line: 958, column: 13, scope: !529)
!538 = !DILocation(line: 958, column: 24, scope: !529)
!539 = !DILocation(line: 958, column: 30, scope: !529)
!540 = !DILocation(line: 959, column: 20, scope: !529)
!541 = !DILocation(line: 959, column: 28, scope: !529)
!542 = !DILocation(line: 959, column: 36, scope: !529)
!543 = !DILocation(line: 959, column: 41, scope: !529)
!544 = !DILocation(line: 959, column: 13, scope: !529)
!545 = !DILocation(line: 960, column: 20, scope: !529)
!546 = !DILocation(line: 960, column: 29, scope: !529)
!547 = !DILocation(line: 960, column: 38, scope: !529)
!548 = !DILocation(line: 960, column: 43, scope: !529)
!549 = !DILocation(line: 960, column: 13, scope: !529)
!550 = !DILocation(line: 962, column: 13, scope: !529)
!551 = !DILocation(line: 962, column: 18, scope: !529)
!552 = !DILocation(line: 962, column: 23, scope: !529)
!553 = !DILocation(line: 963, column: 10, scope: !529)
!554 = !DILocation(line: 969, column: 13, scope: !555)
!555 = distinct !DILexicalBlock(scope: !524, file: !4, line: 963, column: 17)
!556 = !DILocation(line: 971, column: 7, scope: !522)
!557 = !DILocation(line: 972, column: 4, scope: !502)
!558 = !DILocation(line: 939, column: 44, scope: !559)
!559 = !DILexicalBlockFile(scope: !497, file: !4, discriminator: 2)
!560 = !DILocation(line: 939, column: 4, scope: !559)
!561 = distinct !{!561, !562}
!562 = !DILocation(line: 939, column: 4, scope: !429)
!563 = !DILocation(line: 975, column: 20, scope: !429)
!564 = !DILocation(line: 975, column: 4, scope: !429)
!565 = !DILocation(line: 976, column: 17, scope: !429)
!566 = !DILocation(line: 976, column: 4, scope: !429)
!567 = !DILocation(line: 977, column: 1, scope: !429)
!568 = !DILocation(line: 977, column: 1, scope: !486)
!569 = distinct !DISubprogram(name: "GetEntry", scope: !4, file: !4, line: 731, type: !570, isLocal: true, isDefinition: true, scopeLine: 736, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !51)
!570 = !DISubroutineType(types: !571)
!571 = !{null, !76, !10, !252, !253, !253}
!572 = !DILocalVariable(name: "map", arg: 1, scope: !569, file: !4, line: 731, type: !76)
!573 = !DILocation(line: 731, column: 26, scope: !569)
!574 = !DILocalVariable(name: "index", arg: 2, scope: !569, file: !4, line: 732, type: !10)
!575 = !DILocation(line: 732, column: 17, scope: !569)
!576 = !DILocalVariable(name: "header", arg: 3, scope: !569, file: !4, line: 733, type: !252)
!577 = !DILocation(line: 733, column: 31, scope: !569)
!578 = !DILocalVariable(name: "key", arg: 4, scope: !569, file: !4, line: 734, type: !253)
!579 = !DILocation(line: 734, column: 17, scope: !569)
!580 = !DILocalVariable(name: "data", arg: 5, scope: !569, file: !4, line: 735, type: !253)
!581 = !DILocation(line: 735, column: 17, scope: !569)
!582 = !DILocalVariable(name: "entry", scope: !569, file: !4, line: 737, type: !16)
!583 = !DILocation(line: 737, column: 11, scope: !569)
!584 = !DILocation(line: 745, column: 22, scope: !569)
!585 = !DILocation(line: 745, column: 27, scope: !569)
!586 = !DILocation(line: 745, column: 39, scope: !569)
!587 = !DILocation(line: 745, column: 44, scope: !569)
!588 = !DILocation(line: 745, column: 56, scope: !569)
!589 = !DILocation(line: 745, column: 54, scope: !569)
!590 = !DILocation(line: 745, column: 36, scope: !569)
!591 = !DILocation(line: 745, column: 10, scope: !569)
!592 = !DILocation(line: 747, column: 38, scope: !569)
!593 = !DILocation(line: 747, column: 14, scope: !569)
!594 = !DILocation(line: 747, column: 5, scope: !569)
!595 = !DILocation(line: 747, column: 12, scope: !569)
!596 = !DILocation(line: 748, column: 20, scope: !569)
!597 = !DILocation(line: 748, column: 28, scope: !569)
!598 = !DILocation(line: 748, column: 33, scope: !569)
!599 = !DILocation(line: 748, column: 26, scope: !569)
!600 = !DILocation(line: 748, column: 5, scope: !569)
!601 = !DILocation(line: 748, column: 9, scope: !569)
!602 = !DILocation(line: 749, column: 21, scope: !569)
!603 = !DILocation(line: 749, column: 29, scope: !569)
!604 = !DILocation(line: 749, column: 34, scope: !569)
!605 = !DILocation(line: 749, column: 27, scope: !569)
!606 = !DILocation(line: 749, column: 5, scope: !569)
!607 = !DILocation(line: 749, column: 10, scope: !569)
!608 = !DILocation(line: 750, column: 1, scope: !569)
!609 = distinct !DISubprogram(name: "EnsureSanity", scope: !4, file: !4, line: 1049, type: !610, isLocal: false, isDefinition: true, scopeLine: 1050, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !51)
!610 = !DISubroutineType(types: !611)
!611 = !{null, !35}
!612 = !DILocalVariable(name: "map", arg: 1, scope: !609, file: !4, line: 1049, type: !35)
!613 = !DILocation(line: 1049, column: 23, scope: !609)
!614 = !DILocation(line: 1052, column: 1, scope: !609)
!615 = distinct !DISubprogram(name: "HashMap_Get", scope: !4, file: !4, line: 430, type: !616, isLocal: false, isDefinition: true, scopeLine: 432, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !51)
!616 = !DISubroutineType(types: !617)
!617 = !{!15, !76, !173}
!618 = !DILocalVariable(name: "map", arg: 1, scope: !615, file: !4, line: 430, type: !76)
!619 = !DILocation(line: 430, column: 29, scope: !615)
!620 = !DILocalVariable(name: "key", arg: 2, scope: !615, file: !4, line: 431, type: !173)
!621 = !DILocation(line: 431, column: 25, scope: !615)
!622 = !DILocalVariable(name: "data", scope: !615, file: !4, line: 433, type: !15)
!623 = !DILocation(line: 433, column: 10, scope: !615)
!624 = !DILocalVariable(name: "freeIndex", scope: !615, file: !4, line: 434, type: !10)
!625 = !DILocation(line: 434, column: 11, scope: !615)
!626 = !DILocalVariable(name: "header", scope: !615, file: !4, line: 435, type: !20)
!627 = !DILocation(line: 435, column: 24, scope: !615)
!628 = !DILocation(line: 437, column: 18, scope: !629)
!629 = distinct !DILexicalBlock(scope: !615, file: !4, line: 437, column: 8)
!630 = !DILocation(line: 437, column: 23, scope: !629)
!631 = !DILocation(line: 437, column: 8, scope: !629)
!632 = !DILocation(line: 437, column: 8, scope: !615)
!633 = !DILocation(line: 438, column: 14, scope: !634)
!634 = distinct !DILexicalBlock(scope: !629, file: !4, line: 437, column: 60)
!635 = !DILocation(line: 438, column: 7, scope: !634)
!636 = !DILocation(line: 441, column: 4, scope: !615)
!637 = !DILocation(line: 442, column: 1, scope: !615)
!638 = distinct !DISubprogram(name: "HashMap_ConstTimeGet", scope: !4, file: !4, line: 467, type: !616, isLocal: false, isDefinition: true, scopeLine: 469, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !51)
!639 = !DILocalVariable(name: "map", arg: 1, scope: !638, file: !4, line: 467, type: !76)
!640 = !DILocation(line: 467, column: 38, scope: !638)
!641 = !DILocalVariable(name: "key", arg: 2, scope: !638, file: !4, line: 468, type: !173)
!642 = !DILocation(line: 468, column: 34, scope: !638)
!643 = !DILocalVariable(name: "data", scope: !638, file: !4, line: 470, type: !15)
!644 = !DILocation(line: 470, column: 10, scope: !638)
!645 = !DILocalVariable(name: "freeIndex", scope: !638, file: !4, line: 471, type: !10)
!646 = !DILocation(line: 471, column: 11, scope: !638)
!647 = !DILocalVariable(name: "header", scope: !638, file: !4, line: 472, type: !20)
!648 = !DILocation(line: 472, column: 24, scope: !638)
!649 = !DILocation(line: 474, column: 18, scope: !650)
!650 = distinct !DILexicalBlock(scope: !638, file: !4, line: 474, column: 8)
!651 = !DILocation(line: 474, column: 23, scope: !650)
!652 = !DILocation(line: 474, column: 8, scope: !650)
!653 = !DILocation(line: 474, column: 8, scope: !638)
!654 = !DILocation(line: 475, column: 14, scope: !655)
!655 = distinct !DILexicalBlock(scope: !650, file: !4, line: 474, column: 60)
!656 = !DILocation(line: 475, column: 7, scope: !655)
!657 = !DILocation(line: 478, column: 4, scope: !638)
!658 = !DILocation(line: 479, column: 1, scope: !638)
!659 = distinct !DISubprogram(name: "HashMap_Clear", scope: !4, file: !4, line: 499, type: !155, isLocal: false, isDefinition: true, scopeLine: 500, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !51)
!660 = !DILocalVariable(name: "map", arg: 1, scope: !659, file: !4, line: 499, type: !76)
!661 = !DILocation(line: 499, column: 31, scope: !659)
!662 = !DILocalVariable(name: "i", scope: !659, file: !4, line: 501, type: !437)
!663 = !DILocation(line: 501, column: 8, scope: !659)
!664 = !DILocalVariable(name: "header", scope: !659, file: !4, line: 502, type: !20)
!665 = !DILocation(line: 502, column: 24, scope: !659)
!666 = !DILocalVariable(name: "key", scope: !659, file: !4, line: 503, type: !15)
!667 = !DILocation(line: 503, column: 10, scope: !659)
!668 = !DILocalVariable(name: "data", scope: !659, file: !4, line: 503, type: !15)
!669 = !DILocation(line: 503, column: 16, scope: !659)
!670 = !DILocation(line: 506, column: 11, scope: !671)
!671 = distinct !DILexicalBlock(scope: !659, file: !4, line: 506, column: 4)
!672 = !DILocation(line: 506, column: 9, scope: !671)
!673 = !DILocation(line: 506, column: 16, scope: !674)
!674 = !DILexicalBlockFile(scope: !675, file: !4, discriminator: 1)
!675 = distinct !DILexicalBlock(scope: !671, file: !4, line: 506, column: 4)
!676 = !DILocation(line: 506, column: 20, scope: !674)
!677 = !DILocation(line: 506, column: 25, scope: !674)
!678 = !DILocation(line: 506, column: 18, scope: !674)
!679 = !DILocation(line: 506, column: 4, scope: !674)
!680 = !DILocation(line: 507, column: 16, scope: !681)
!681 = distinct !DILexicalBlock(scope: !675, file: !4, line: 506, column: 42)
!682 = !DILocation(line: 507, column: 21, scope: !681)
!683 = !DILocation(line: 507, column: 7, scope: !681)
!684 = !DILocation(line: 509, column: 7, scope: !681)
!685 = !DILocation(line: 509, column: 15, scope: !681)
!686 = !DILocation(line: 509, column: 21, scope: !681)
!687 = !DILocation(line: 510, column: 4, scope: !681)
!688 = !DILocation(line: 506, column: 38, scope: !689)
!689 = !DILexicalBlockFile(scope: !675, file: !4, discriminator: 2)
!690 = !DILocation(line: 506, column: 4, scope: !689)
!691 = distinct !{!691, !692}
!692 = !DILocation(line: 506, column: 4, scope: !659)
!693 = !DILocation(line: 511, column: 4, scope: !659)
!694 = !DILocation(line: 511, column: 9, scope: !659)
!695 = !DILocation(line: 511, column: 15, scope: !659)
!696 = !DILocation(line: 512, column: 17, scope: !659)
!697 = !DILocation(line: 512, column: 4, scope: !659)
!698 = !DILocation(line: 513, column: 1, scope: !659)
!699 = distinct !DISubprogram(name: "HashMap_Remove", scope: !4, file: !4, line: 534, type: !700, isLocal: false, isDefinition: true, scopeLine: 536, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !51)
!700 = !DISubroutineType(types: !701)
!701 = !{!103, !76, !173}
!702 = !DILocalVariable(name: "map", arg: 1, scope: !699, file: !4, line: 534, type: !76)
!703 = !DILocation(line: 534, column: 32, scope: !699)
!704 = !DILocalVariable(name: "key", arg: 2, scope: !699, file: !4, line: 535, type: !173)
!705 = !DILocation(line: 535, column: 28, scope: !699)
!706 = !DILocalVariable(name: "freeIndex", scope: !699, file: !4, line: 537, type: !10)
!707 = !DILocation(line: 537, column: 11, scope: !699)
!708 = !DILocalVariable(name: "header", scope: !699, file: !4, line: 538, type: !20)
!709 = !DILocation(line: 538, column: 24, scope: !699)
!710 = !DILocalVariable(name: "tableData", scope: !699, file: !4, line: 539, type: !15)
!711 = !DILocation(line: 539, column: 10, scope: !699)
!712 = !DILocation(line: 541, column: 19, scope: !713)
!713 = distinct !DILexicalBlock(scope: !699, file: !4, line: 541, column: 8)
!714 = !DILocation(line: 541, column: 24, scope: !713)
!715 = !DILocation(line: 541, column: 9, scope: !713)
!716 = !DILocation(line: 541, column: 8, scope: !699)
!717 = !DILocation(line: 542, column: 7, scope: !718)
!718 = distinct !DILexicalBlock(scope: !713, file: !4, line: 541, column: 66)
!719 = !DILocation(line: 549, column: 4, scope: !699)
!720 = !DILocation(line: 549, column: 9, scope: !699)
!721 = !DILocation(line: 549, column: 14, scope: !699)
!722 = !DILocation(line: 550, column: 4, scope: !699)
!723 = !DILocation(line: 550, column: 12, scope: !699)
!724 = !DILocation(line: 550, column: 18, scope: !699)
!725 = !DILocation(line: 552, column: 17, scope: !699)
!726 = !DILocation(line: 552, column: 4, scope: !699)
!727 = !DILocation(line: 554, column: 4, scope: !699)
!728 = !DILocation(line: 555, column: 1, scope: !699)
!729 = distinct !DISubprogram(name: "HashMap_Count", scope: !4, file: !4, line: 575, type: !730, isLocal: false, isDefinition: true, scopeLine: 576, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !51)
!730 = !DISubroutineType(types: !731)
!731 = !{!10, !76}
!732 = !DILocalVariable(name: "map", arg: 1, scope: !729, file: !4, line: 575, type: !76)
!733 = !DILocation(line: 575, column: 31, scope: !729)
!734 = !DILocation(line: 577, column: 11, scope: !729)
!735 = !DILocation(line: 577, column: 16, scope: !729)
!736 = !DILocation(line: 577, column: 4, scope: !729)
!737 = distinct !DISubprogram(name: "HashMap_Iterate", scope: !4, file: !4, line: 1000, type: !738, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !51)
!738 = !DISubroutineType(types: !739)
!739 = !{null, !35, !740, !103, !15}
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "HashMapIteratorFn", file: !37, line: 66, baseType: !741)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64, align: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{null, !15, !15, !15}
!744 = !DILocalVariable(name: "map", arg: 1, scope: !737, file: !4, line: 1000, type: !35)
!745 = !DILocation(line: 1000, column: 26, scope: !737)
!746 = !DILocalVariable(name: "itFn", arg: 2, scope: !737, file: !4, line: 1001, type: !740)
!747 = !DILocation(line: 1001, column: 35, scope: !737)
!748 = !DILocalVariable(name: "clear", arg: 3, scope: !737, file: !4, line: 1002, type: !103)
!749 = !DILocation(line: 1002, column: 22, scope: !737)
!750 = !DILocalVariable(name: "userData", arg: 4, scope: !737, file: !4, line: 1003, type: !15)
!751 = !DILocation(line: 1003, column: 23, scope: !737)
!752 = !DILocalVariable(name: "i", scope: !737, file: !4, line: 1005, type: !437)
!753 = !DILocation(line: 1005, column: 8, scope: !737)
!754 = !DILocalVariable(name: "header", scope: !737, file: !4, line: 1006, type: !20)
!755 = !DILocation(line: 1006, column: 24, scope: !737)
!756 = !DILocalVariable(name: "key", scope: !737, file: !4, line: 1007, type: !15)
!757 = !DILocation(line: 1007, column: 10, scope: !737)
!758 = !DILocalVariable(name: "data", scope: !737, file: !4, line: 1007, type: !15)
!759 = !DILocation(line: 1007, column: 16, scope: !737)
!760 = !DILocation(line: 1012, column: 11, scope: !761)
!761 = distinct !DILexicalBlock(scope: !737, file: !4, line: 1012, column: 4)
!762 = !DILocation(line: 1012, column: 9, scope: !761)
!763 = !DILocation(line: 1012, column: 16, scope: !764)
!764 = !DILexicalBlockFile(scope: !765, file: !4, discriminator: 1)
!765 = distinct !DILexicalBlock(scope: !761, file: !4, line: 1012, column: 4)
!766 = !DILocation(line: 1012, column: 20, scope: !764)
!767 = !DILocation(line: 1012, column: 25, scope: !764)
!768 = !DILocation(line: 1012, column: 18, scope: !764)
!769 = !DILocation(line: 1012, column: 4, scope: !764)
!770 = !DILocation(line: 1013, column: 16, scope: !771)
!771 = distinct !DILexicalBlock(scope: !765, file: !4, line: 1012, column: 42)
!772 = !DILocation(line: 1013, column: 21, scope: !771)
!773 = !DILocation(line: 1013, column: 7, scope: !771)
!774 = !DILocation(line: 1014, column: 11, scope: !775)
!775 = distinct !DILexicalBlock(scope: !771, file: !4, line: 1014, column: 11)
!776 = !DILocation(line: 1014, column: 19, scope: !775)
!777 = !DILocation(line: 1014, column: 25, scope: !775)
!778 = !DILocation(line: 1014, column: 11, scope: !771)
!779 = !DILocation(line: 1015, column: 10, scope: !780)
!780 = distinct !DILexicalBlock(scope: !775, file: !4, line: 1014, column: 49)
!781 = !DILocation(line: 1015, column: 15, scope: !780)
!782 = !DILocation(line: 1015, column: 20, scope: !780)
!783 = !DILocation(line: 1015, column: 26, scope: !780)
!784 = !DILocation(line: 1016, column: 14, scope: !785)
!785 = distinct !DILexicalBlock(scope: !780, file: !4, line: 1016, column: 14)
!786 = !DILocation(line: 1016, column: 14, scope: !780)
!787 = !DILocation(line: 1017, column: 13, scope: !788)
!788 = distinct !DILexicalBlock(scope: !785, file: !4, line: 1016, column: 21)
!789 = !DILocation(line: 1017, column: 18, scope: !788)
!790 = !DILocation(line: 1017, column: 23, scope: !788)
!791 = !DILocation(line: 1018, column: 10, scope: !788)
!792 = !DILocation(line: 1019, column: 7, scope: !780)
!793 = !DILocation(line: 1020, column: 11, scope: !794)
!794 = distinct !DILexicalBlock(scope: !771, file: !4, line: 1020, column: 11)
!795 = !DILocation(line: 1020, column: 11, scope: !771)
!796 = !DILocation(line: 1021, column: 10, scope: !797)
!797 = distinct !DILexicalBlock(scope: !794, file: !4, line: 1020, column: 18)
!798 = !DILocation(line: 1021, column: 18, scope: !797)
!799 = !DILocation(line: 1021, column: 24, scope: !797)
!800 = !DILocation(line: 1022, column: 7, scope: !797)
!801 = !DILocation(line: 1023, column: 4, scope: !771)
!802 = !DILocation(line: 1012, column: 38, scope: !803)
!803 = !DILexicalBlockFile(scope: !765, file: !4, discriminator: 2)
!804 = !DILocation(line: 1012, column: 4, scope: !803)
!805 = distinct !{!805, !806}
!806 = !DILocation(line: 1012, column: 4, scope: !737)
!807 = !DILocation(line: 1026, column: 1, scope: !737)
!808 = distinct !DISubprogram(name: "CalculateEntrySize", scope: !4, file: !4, line: 598, type: !155, isLocal: true, isDefinition: true, scopeLine: 599, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !51)
!809 = !DILocalVariable(name: "map", arg: 1, scope: !808, file: !4, line: 598, type: !76)
!810 = !DILocation(line: 598, column: 36, scope: !808)
!811 = !DILocalVariable(name: "alignKeySize", scope: !808, file: !4, line: 600, type: !45)
!812 = !DILocation(line: 600, column: 11, scope: !808)
!813 = !DILocalVariable(name: "alignDataSize", scope: !808, file: !4, line: 600, type: !45)
!814 = !DILocation(line: 600, column: 25, scope: !808)
!815 = !DILocalVariable(name: "alignKeyOffset", scope: !808, file: !4, line: 601, type: !45)
!816 = !DILocation(line: 601, column: 11, scope: !808)
!817 = !DILocalVariable(name: "alignDataOffset", scope: !808, file: !4, line: 601, type: !45)
!818 = !DILocation(line: 601, column: 27, scope: !808)
!819 = !DILocation(line: 605, column: 22, scope: !808)
!820 = !DILocation(line: 605, column: 27, scope: !808)
!821 = !DILocation(line: 605, column: 36, scope: !808)
!822 = !DILocation(line: 605, column: 42, scope: !808)
!823 = !DILocation(line: 605, column: 47, scope: !808)
!824 = !DILocation(line: 605, column: 53, scope: !808)
!825 = !DILocation(line: 605, column: 17, scope: !808)
!826 = !DILocation(line: 606, column: 23, scope: !808)
!827 = !DILocation(line: 606, column: 28, scope: !808)
!828 = !DILocation(line: 606, column: 38, scope: !808)
!829 = !DILocation(line: 606, column: 44, scope: !808)
!830 = !DILocation(line: 606, column: 49, scope: !808)
!831 = !DILocation(line: 606, column: 55, scope: !808)
!832 = !DILocation(line: 606, column: 18, scope: !808)
!833 = !DILocation(line: 608, column: 19, scope: !808)
!834 = !DILocation(line: 609, column: 25, scope: !808)
!835 = !DILocation(line: 609, column: 42, scope: !808)
!836 = !DILocation(line: 609, column: 40, scope: !808)
!837 = !DILocation(line: 609, column: 56, scope: !808)
!838 = !DILocation(line: 609, column: 62, scope: !808)
!839 = !DILocation(line: 609, column: 67, scope: !808)
!840 = !DILocation(line: 609, column: 73, scope: !808)
!841 = !DILocation(line: 609, column: 20, scope: !808)
!842 = !DILocation(line: 611, column: 51, scope: !808)
!843 = !DILocation(line: 611, column: 49, scope: !808)
!844 = !DILocation(line: 611, column: 66, scope: !808)
!845 = !DILocation(line: 611, column: 64, scope: !808)
!846 = !DILocation(line: 611, column: 4, scope: !808)
!847 = !DILocation(line: 611, column: 9, scope: !808)
!848 = !DILocation(line: 611, column: 19, scope: !808)
!849 = !DILocation(line: 612, column: 21, scope: !808)
!850 = !DILocation(line: 612, column: 4, scope: !808)
!851 = !DILocation(line: 612, column: 9, scope: !808)
!852 = !DILocation(line: 612, column: 19, scope: !808)
!853 = !DILocation(line: 613, column: 22, scope: !808)
!854 = !DILocation(line: 613, column: 4, scope: !808)
!855 = !DILocation(line: 613, column: 9, scope: !808)
!856 = !DILocation(line: 613, column: 20, scope: !808)
!857 = !DILocation(line: 614, column: 1, scope: !808)
!858 = distinct !DISubprogram(name: "ConstTimeCompareKeys", scope: !4, file: !4, line: 840, type: !171, isLocal: true, isDefinition: true, scopeLine: 843, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !51)
!859 = !DILocalVariable(name: "map", arg: 1, scope: !858, file: !4, line: 840, type: !76)
!860 = !DILocation(line: 840, column: 38, scope: !858)
!861 = !DILocalVariable(name: "key", arg: 2, scope: !858, file: !4, line: 841, type: !173)
!862 = !DILocation(line: 841, column: 34, scope: !858)
!863 = !DILocalVariable(name: "compare", arg: 3, scope: !858, file: !4, line: 842, type: !173)
!864 = !DILocation(line: 842, column: 34, scope: !858)
!865 = !DILocation(line: 844, column: 33, scope: !858)
!866 = !DILocation(line: 844, column: 38, scope: !858)
!867 = !DILocation(line: 844, column: 47, scope: !858)
!868 = !DILocation(line: 844, column: 52, scope: !858)
!869 = !DILocation(line: 844, column: 11, scope: !858)
!870 = !DILocation(line: 844, column: 61, scope: !858)
!871 = !DILocation(line: 844, column: 4, scope: !858)
!872 = distinct !DISubprogram(name: "CompareKeys", scope: !4, file: !4, line: 812, type: !171, isLocal: true, isDefinition: true, scopeLine: 815, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !51)
!873 = !DILocalVariable(name: "map", arg: 1, scope: !872, file: !4, line: 812, type: !76)
!874 = !DILocation(line: 812, column: 29, scope: !872)
!875 = !DILocalVariable(name: "key", arg: 2, scope: !872, file: !4, line: 813, type: !173)
!876 = !DILocation(line: 813, column: 25, scope: !872)
!877 = !DILocalVariable(name: "compare", arg: 3, scope: !872, file: !4, line: 814, type: !173)
!878 = !DILocation(line: 814, column: 25, scope: !872)
!879 = !DILocation(line: 816, column: 18, scope: !872)
!880 = !DILocation(line: 816, column: 23, scope: !872)
!881 = !DILocation(line: 816, column: 32, scope: !872)
!882 = !DILocation(line: 816, column: 37, scope: !872)
!883 = !DILocation(line: 816, column: 11, scope: !872)
!884 = !DILocation(line: 816, column: 46, scope: !872)
!885 = !DILocation(line: 816, column: 4, scope: !872)
!886 = distinct !DISubprogram(name: "Clamped_UMul32", scope: !887, file: !887, line: 203, type: !888, isLocal: true, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !51)
!887 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/clamped.h", directory: "/home/lichi/Desktop/open-vm-tools/line123")
!888 = !DISubroutineType(types: !889)
!889 = !{!103, !254, !10, !10}
!890 = !DILocalVariable(name: "out", arg: 1, scope: !886, file: !887, line: 203, type: !254)
!891 = !DILocation(line: 203, column: 24, scope: !886)
!892 = !DILocalVariable(name: "a", arg: 2, scope: !886, file: !887, line: 204, type: !10)
!893 = !DILocation(line: 204, column: 23, scope: !886)
!894 = !DILocalVariable(name: "b", arg: 3, scope: !886, file: !887, line: 205, type: !10)
!895 = !DILocation(line: 205, column: 23, scope: !886)
!896 = !DILocation(line: 207, column: 27, scope: !886)
!897 = !DILocation(line: 207, column: 40, scope: !886)
!898 = !DILocation(line: 207, column: 32, scope: !886)
!899 = !DILocation(line: 207, column: 44, scope: !886)
!900 = !DILocation(line: 207, column: 42, scope: !886)
!901 = !DILocation(line: 207, column: 11, scope: !886)
!902 = !DILocation(line: 207, column: 4, scope: !886)
!903 = distinct !DISubprogram(name: "Clamped_U64To32", scope: !887, file: !887, line: 70, type: !904, isLocal: true, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !51)
!904 = !DISubroutineType(types: !905)
!905 = !{!103, !254, !26}
!906 = !DILocalVariable(name: "out", arg: 1, scope: !903, file: !887, line: 70, type: !254)
!907 = !DILocation(line: 70, column: 25, scope: !903)
!908 = !DILocalVariable(name: "a", arg: 2, scope: !903, file: !887, line: 71, type: !26)
!909 = !DILocation(line: 71, column: 24, scope: !903)
!910 = !DILocalVariable(name: "clamped", scope: !903, file: !887, line: 73, type: !10)
!911 = !DILocation(line: 73, column: 11, scope: !903)
!912 = !DILocation(line: 73, column: 29, scope: !903)
!913 = !DILocation(line: 73, column: 21, scope: !903)
!914 = !DILocation(line: 75, column: 26, scope: !915)
!915 = distinct !DILexicalBlock(scope: !903, file: !887, line: 75, column: 8)
!916 = !DILocation(line: 75, column: 31, scope: !915)
!917 = !DILocation(line: 75, column: 28, scope: !915)
!918 = !DILocation(line: 75, column: 25, scope: !915)
!919 = !DILocation(line: 75, column: 8, scope: !915)
!920 = !DILocation(line: 75, column: 8, scope: !903)
!921 = !DILocation(line: 76, column: 8, scope: !922)
!922 = distinct !DILexicalBlock(scope: !915, file: !887, line: 75, column: 45)
!923 = !DILocation(line: 76, column: 12, scope: !922)
!924 = !DILocation(line: 77, column: 7, scope: !922)
!925 = !DILocation(line: 80, column: 11, scope: !903)
!926 = !DILocation(line: 80, column: 5, scope: !903)
!927 = !DILocation(line: 80, column: 9, scope: !903)
!928 = !DILocation(line: 81, column: 4, scope: !903)
!929 = !DILocation(line: 82, column: 1, scope: !903)
