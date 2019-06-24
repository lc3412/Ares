; ModuleID = './[inter]asn.o.i'
source_filename = "./[inter]asn.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stream = type { i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [44 x i8] c"ber_parse_header(), expected tag %d, got %d\00", align 1

; Function Attrs: nounwind uwtable
define i32 @ber_parse_header(%struct.stream*, i32, i32*) #0 !dbg !25 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.stream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %5, metadata !51, metadata !52), !dbg !53
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !54, metadata !52), !dbg !55
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !56, metadata !52), !dbg !57
  call void @llvm.dbg.declare(metadata i32* %8, metadata !58, metadata !52), !dbg !59
  call void @llvm.dbg.declare(metadata i32* %9, metadata !60, metadata !52), !dbg !61
  %10 = load i32, i32* %6, align 4, !dbg !62
  %11 = icmp sgt i32 %10, 255, !dbg !64
  br i1 %11, label %12, label %28, !dbg !65

; <label>:12:                                     ; preds = %3
  %13 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !66
  %14 = getelementptr inbounds %struct.stream, %struct.stream* %13, i32 0, i32 0, !dbg !69
  %15 = load i8*, i8** %14, align 8, !dbg !70
  %16 = getelementptr inbounds i8, i8* %15, i32 1, !dbg !70
  store i8* %16, i8** %14, align 8, !dbg !70
  %17 = load i8, i8* %15, align 1, !dbg !71
  %18 = zext i8 %17 to i32, !dbg !71
  store i32 %18, i32* %8, align 4, !dbg !72
  %19 = load i32, i32* %8, align 4, !dbg !73
  %20 = shl i32 %19, 8, !dbg !74
  %21 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !75
  %22 = getelementptr inbounds %struct.stream, %struct.stream* %21, i32 0, i32 0, !dbg !76
  %23 = load i8*, i8** %22, align 8, !dbg !77
  %24 = getelementptr inbounds i8, i8* %23, i32 1, !dbg !77
  store i8* %24, i8** %22, align 8, !dbg !77
  %25 = load i8, i8* %23, align 1, !dbg !78
  %26 = zext i8 %25 to i32, !dbg !78
  %27 = add nsw i32 %20, %26, !dbg !79
  store i32 %27, i32* %8, align 4, !dbg !80
  br label %35, !dbg !81

; <label>:28:                                     ; preds = %3
  %29 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !82
  %30 = getelementptr inbounds %struct.stream, %struct.stream* %29, i32 0, i32 0, !dbg !84
  %31 = load i8*, i8** %30, align 8, !dbg !85
  %32 = getelementptr inbounds i8, i8* %31, i32 1, !dbg !85
  store i8* %32, i8** %30, align 8, !dbg !85
  %33 = load i8, i8* %31, align 1, !dbg !86
  %34 = zext i8 %33 to i32, !dbg !86
  store i32 %34, i32* %8, align 4, !dbg !87
  br label %35

; <label>:35:                                     ; preds = %28, %12
  %36 = load i32, i32* %8, align 4, !dbg !88
  %37 = load i32, i32* %6, align 4, !dbg !90
  %38 = icmp ne i32 %36, %37, !dbg !91
  br i1 %38, label %39, label %42, !dbg !92

; <label>:39:                                     ; preds = %35
  %40 = load i32, i32* %6, align 4, !dbg !93
  %41 = load i32, i32* %8, align 4, !dbg !95
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i32 0, i32 0), i32 %40, i32 %41), !dbg !96
  store i32 0, i32* %4, align 4, !dbg !97
  br label %85, !dbg !97

; <label>:42:                                     ; preds = %35
  %43 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !98
  %44 = getelementptr inbounds %struct.stream, %struct.stream* %43, i32 0, i32 0, !dbg !99
  %45 = load i8*, i8** %44, align 8, !dbg !100
  %46 = getelementptr inbounds i8, i8* %45, i32 1, !dbg !100
  store i8* %46, i8** %44, align 8, !dbg !100
  %47 = load i8, i8* %45, align 1, !dbg !101
  %48 = zext i8 %47 to i32, !dbg !101
  store i32 %48, i32* %9, align 4, !dbg !102
  %49 = load i32, i32* %9, align 4, !dbg !103
  %50 = and i32 %49, 128, !dbg !105
  %51 = icmp ne i32 %50, 0, !dbg !105
  br i1 %51, label %52, label %73, !dbg !106

; <label>:52:                                     ; preds = %42
  %53 = load i32, i32* %9, align 4, !dbg !107
  %54 = and i32 %53, -129, !dbg !107
  store i32 %54, i32* %9, align 4, !dbg !107
  %55 = load i32*, i32** %7, align 8, !dbg !109
  store i32 0, i32* %55, align 4, !dbg !110
  br label %56, !dbg !111

; <label>:56:                                     ; preds = %60, %52
  %57 = load i32, i32* %9, align 4, !dbg !112
  %58 = add nsw i32 %57, -1, !dbg !112
  store i32 %58, i32* %9, align 4, !dbg !112
  %59 = icmp ne i32 %57, 0, !dbg !114
  br i1 %59, label %60, label %72, !dbg !114

; <label>:60:                                     ; preds = %56
  %61 = load i32*, i32** %7, align 8, !dbg !115
  %62 = load i32, i32* %61, align 4, !dbg !116
  %63 = shl i32 %62, 8, !dbg !117
  %64 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !118
  %65 = getelementptr inbounds %struct.stream, %struct.stream* %64, i32 0, i32 0, !dbg !119
  %66 = load i8*, i8** %65, align 8, !dbg !120
  %67 = getelementptr inbounds i8, i8* %66, i32 1, !dbg !120
  store i8* %67, i8** %65, align 8, !dbg !120
  %68 = load i8, i8* %66, align 1, !dbg !121
  %69 = zext i8 %68 to i32, !dbg !121
  %70 = add nsw i32 %63, %69, !dbg !122
  %71 = load i32*, i32** %7, align 8, !dbg !123
  store i32 %70, i32* %71, align 4, !dbg !124
  br label %56, !dbg !125, !llvm.loop !127

; <label>:72:                                     ; preds = %56
  br label %76, !dbg !128

; <label>:73:                                     ; preds = %42
  %74 = load i32, i32* %9, align 4, !dbg !129
  %75 = load i32*, i32** %7, align 8, !dbg !130
  store i32 %74, i32* %75, align 4, !dbg !131
  br label %76

; <label>:76:                                     ; preds = %73, %72
  %77 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !132
  %78 = getelementptr inbounds %struct.stream, %struct.stream* %77, i32 0, i32 0, !dbg !133
  %79 = load i8*, i8** %78, align 8, !dbg !133
  %80 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !134
  %81 = getelementptr inbounds %struct.stream, %struct.stream* %80, i32 0, i32 1, !dbg !135
  %82 = load i8*, i8** %81, align 8, !dbg !135
  %83 = icmp ule i8* %79, %82, !dbg !136
  %84 = zext i1 %83 to i32, !dbg !136
  store i32 %84, i32* %4, align 4, !dbg !137
  br label %85, !dbg !137

; <label>:85:                                     ; preds = %76, %39
  %86 = load i32, i32* %4, align 4, !dbg !138
  ret i32 %86, !dbg !138
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @logger(i32, i32, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @ber_out_sequence(%struct.stream*, %struct.stream*) #0 !dbg !139 {
  %3 = alloca %struct.stream*, align 8
  %4 = alloca %struct.stream*, align 8
  %5 = alloca i64, align 8
  store %struct.stream* %0, %struct.stream** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %3, metadata !142, metadata !52), !dbg !143
  store %struct.stream* %1, %struct.stream** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %4, metadata !144, metadata !52), !dbg !145
  call void @llvm.dbg.declare(metadata i64* %5, metadata !146, metadata !52), !dbg !150
  %6 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !151
  %7 = icmp ne %struct.stream* %6, null, !dbg !151
  br i1 %7, label %8, label %18, !dbg !151

; <label>:8:                                      ; preds = %2
  %9 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !152
  %10 = getelementptr inbounds %struct.stream, %struct.stream* %9, i32 0, i32 1, !dbg !154
  %11 = load i8*, i8** %10, align 8, !dbg !154
  %12 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !155
  %13 = getelementptr inbounds %struct.stream, %struct.stream* %12, i32 0, i32 2, !dbg !156
  %14 = load i8*, i8** %13, align 8, !dbg !156
  %15 = ptrtoint i8* %11 to i64, !dbg !157
  %16 = ptrtoint i8* %14 to i64, !dbg !157
  %17 = sub i64 %15, %16, !dbg !157
  br label %19, !dbg !158

; <label>:18:                                     ; preds = %2
  br label %19, !dbg !159

; <label>:19:                                     ; preds = %18, %8
  %20 = phi i64 [ %17, %8 ], [ 0, %18 ], !dbg !161
  store i64 %20, i64* %5, align 8, !dbg !163
  %21 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !164
  %22 = load i64, i64* %5, align 8, !dbg !165
  %23 = trunc i64 %22 to i32, !dbg !165
  call void @ber_out_header(%struct.stream* %21, i32 48, i32 %23), !dbg !166
  %24 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !167
  %25 = icmp ne %struct.stream* %24, null, !dbg !167
  br i1 %25, label %26, label %55, !dbg !169

; <label>:26:                                     ; preds = %19
  %27 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !170
  %28 = getelementptr inbounds %struct.stream, %struct.stream* %27, i32 0, i32 0, !dbg !172
  %29 = load i8*, i8** %28, align 8, !dbg !172
  %30 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !173
  %31 = getelementptr inbounds %struct.stream, %struct.stream* %30, i32 0, i32 2, !dbg !174
  %32 = load i8*, i8** %31, align 8, !dbg !174
  %33 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !175
  %34 = getelementptr inbounds %struct.stream, %struct.stream* %33, i32 0, i32 1, !dbg !176
  %35 = load i8*, i8** %34, align 8, !dbg !176
  %36 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !177
  %37 = getelementptr inbounds %struct.stream, %struct.stream* %36, i32 0, i32 2, !dbg !178
  %38 = load i8*, i8** %37, align 8, !dbg !178
  %39 = ptrtoint i8* %35 to i64, !dbg !179
  %40 = ptrtoint i8* %38 to i64, !dbg !179
  %41 = sub i64 %39, %40, !dbg !179
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %32, i64 %41, i32 1, i1 false), !dbg !180
  %42 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !181
  %43 = getelementptr inbounds %struct.stream, %struct.stream* %42, i32 0, i32 1, !dbg !182
  %44 = load i8*, i8** %43, align 8, !dbg !182
  %45 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !183
  %46 = getelementptr inbounds %struct.stream, %struct.stream* %45, i32 0, i32 2, !dbg !184
  %47 = load i8*, i8** %46, align 8, !dbg !184
  %48 = ptrtoint i8* %44 to i64, !dbg !185
  %49 = ptrtoint i8* %47 to i64, !dbg !185
  %50 = sub i64 %48, %49, !dbg !185
  %51 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !186
  %52 = getelementptr inbounds %struct.stream, %struct.stream* %51, i32 0, i32 0, !dbg !187
  %53 = load i8*, i8** %52, align 8, !dbg !188
  %54 = getelementptr inbounds i8, i8* %53, i64 %50, !dbg !188
  store i8* %54, i8** %52, align 8, !dbg !188
  br label %55, !dbg !189

; <label>:55:                                     ; preds = %26, %19
  ret void, !dbg !190
}

; Function Attrs: nounwind uwtable
define void @ber_out_header(%struct.stream*, i32, i32) #0 !dbg !191 {
  %4 = alloca %struct.stream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %4, metadata !194, metadata !52), !dbg !195
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !196, metadata !52), !dbg !197
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !198, metadata !52), !dbg !199
  %7 = load i32, i32* %5, align 4, !dbg !200
  %8 = icmp sgt i32 %7, 255, !dbg !202
  br i1 %8, label %9, label %25, !dbg !203

; <label>:9:                                      ; preds = %3
  %10 = load i32, i32* %5, align 4, !dbg !204
  %11 = ashr i32 %10, 8, !dbg !207
  %12 = and i32 %11, 255, !dbg !208
  %13 = trunc i32 %12 to i8, !dbg !209
  %14 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !210
  %15 = getelementptr inbounds %struct.stream, %struct.stream* %14, i32 0, i32 0, !dbg !211
  %16 = load i8*, i8** %15, align 8, !dbg !212
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !212
  store i8* %17, i8** %15, align 8, !dbg !212
  store i8 %13, i8* %16, align 1, !dbg !213
  %18 = load i32, i32* %5, align 4, !dbg !214
  %19 = and i32 %18, 255, !dbg !215
  %20 = trunc i32 %19 to i8, !dbg !216
  %21 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !217
  %22 = getelementptr inbounds %struct.stream, %struct.stream* %21, i32 0, i32 0, !dbg !218
  %23 = load i8*, i8** %22, align 8, !dbg !219
  %24 = getelementptr inbounds i8, i8* %23, i32 1, !dbg !219
  store i8* %24, i8** %22, align 8, !dbg !219
  store i8 %20, i8* %23, align 1, !dbg !220
  br label %32, !dbg !221

; <label>:25:                                     ; preds = %3
  %26 = load i32, i32* %5, align 4, !dbg !222
  %27 = trunc i32 %26 to i8, !dbg !222
  %28 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !224
  %29 = getelementptr inbounds %struct.stream, %struct.stream* %28, i32 0, i32 0, !dbg !225
  %30 = load i8*, i8** %29, align 8, !dbg !226
  %31 = getelementptr inbounds i8, i8* %30, i32 1, !dbg !226
  store i8* %31, i8** %29, align 8, !dbg !226
  store i8 %27, i8* %30, align 1, !dbg !227
  br label %32

; <label>:32:                                     ; preds = %25, %9
  %33 = load i32, i32* %6, align 4, !dbg !228
  %34 = icmp sge i32 %33, 128, !dbg !230
  br i1 %34, label %35, label %55, !dbg !231

; <label>:35:                                     ; preds = %32
  %36 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !232
  %37 = getelementptr inbounds %struct.stream, %struct.stream* %36, i32 0, i32 0, !dbg !234
  %38 = load i8*, i8** %37, align 8, !dbg !235
  %39 = getelementptr inbounds i8, i8* %38, i32 1, !dbg !235
  store i8* %39, i8** %37, align 8, !dbg !235
  store i8 -126, i8* %38, align 1, !dbg !236
  %40 = load i32, i32* %6, align 4, !dbg !237
  %41 = ashr i32 %40, 8, !dbg !239
  %42 = and i32 %41, 255, !dbg !240
  %43 = trunc i32 %42 to i8, !dbg !241
  %44 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !242
  %45 = getelementptr inbounds %struct.stream, %struct.stream* %44, i32 0, i32 0, !dbg !243
  %46 = load i8*, i8** %45, align 8, !dbg !244
  %47 = getelementptr inbounds i8, i8* %46, i32 1, !dbg !244
  store i8* %47, i8** %45, align 8, !dbg !244
  store i8 %43, i8* %46, align 1, !dbg !245
  %48 = load i32, i32* %6, align 4, !dbg !246
  %49 = and i32 %48, 255, !dbg !247
  %50 = trunc i32 %49 to i8, !dbg !248
  %51 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !249
  %52 = getelementptr inbounds %struct.stream, %struct.stream* %51, i32 0, i32 0, !dbg !250
  %53 = load i8*, i8** %52, align 8, !dbg !251
  %54 = getelementptr inbounds i8, i8* %53, i32 1, !dbg !251
  store i8* %54, i8** %52, align 8, !dbg !251
  store i8 %50, i8* %53, align 1, !dbg !252
  br label %62, !dbg !253

; <label>:55:                                     ; preds = %32
  %56 = load i32, i32* %6, align 4, !dbg !254
  %57 = trunc i32 %56 to i8, !dbg !254
  %58 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !255
  %59 = getelementptr inbounds %struct.stream, %struct.stream* %58, i32 0, i32 0, !dbg !256
  %60 = load i8*, i8** %59, align 8, !dbg !257
  %61 = getelementptr inbounds i8, i8* %60, i32 1, !dbg !257
  store i8* %61, i8** %59, align 8, !dbg !257
  store i8 %57, i8* %60, align 1, !dbg !258
  br label %62

; <label>:62:                                     ; preds = %55, %35
  ret void, !dbg !259
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define void @ber_out_integer(%struct.stream*, i32) #0 !dbg !260 {
  %3 = alloca %struct.stream*, align 8
  %4 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %3, metadata !263, metadata !52), !dbg !264
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !265, metadata !52), !dbg !266
  %5 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !267
  call void @ber_out_header(%struct.stream* %5, i32 2, i32 2), !dbg !268
  %6 = load i32, i32* %4, align 4, !dbg !269
  %7 = ashr i32 %6, 8, !dbg !271
  %8 = and i32 %7, 255, !dbg !272
  %9 = trunc i32 %8 to i8, !dbg !273
  %10 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !274
  %11 = getelementptr inbounds %struct.stream, %struct.stream* %10, i32 0, i32 0, !dbg !275
  %12 = load i8*, i8** %11, align 8, !dbg !276
  %13 = getelementptr inbounds i8, i8* %12, i32 1, !dbg !276
  store i8* %13, i8** %11, align 8, !dbg !276
  store i8 %9, i8* %12, align 1, !dbg !277
  %14 = load i32, i32* %4, align 4, !dbg !278
  %15 = and i32 %14, 255, !dbg !279
  %16 = trunc i32 %15 to i8, !dbg !280
  %17 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !281
  %18 = getelementptr inbounds %struct.stream, %struct.stream* %17, i32 0, i32 0, !dbg !282
  %19 = load i8*, i8** %18, align 8, !dbg !283
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !283
  store i8* %20, i8** %18, align 8, !dbg !283
  store i8 %16, i8* %19, align 1, !dbg !284
  ret void, !dbg !285
}

; Function Attrs: nounwind uwtable
define i32 @ber_in_header(%struct.stream*, i32*, i32*) #0 !dbg !286 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.stream*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.stream* %0, %struct.stream** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %5, metadata !289, metadata !52), !dbg !290
  store i32* %1, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !291, metadata !52), !dbg !292
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !293, metadata !52), !dbg !294
  %8 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !295
  %9 = getelementptr inbounds %struct.stream, %struct.stream* %8, i32 0, i32 0, !dbg !296
  %10 = load i8*, i8** %9, align 8, !dbg !297
  %11 = getelementptr inbounds i8, i8* %10, i32 1, !dbg !297
  store i8* %11, i8** %9, align 8, !dbg !297
  %12 = load i8, i8* %10, align 1, !dbg !298
  %13 = zext i8 %12 to i32, !dbg !298
  %14 = load i32*, i32** %6, align 8, !dbg !299
  store i32 %13, i32* %14, align 4, !dbg !300
  %15 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !301
  %16 = getelementptr inbounds %struct.stream, %struct.stream* %15, i32 0, i32 0, !dbg !302
  %17 = load i8*, i8** %16, align 8, !dbg !303
  %18 = getelementptr inbounds i8, i8* %17, i32 1, !dbg !303
  store i8* %18, i8** %16, align 8, !dbg !303
  %19 = load i8, i8* %17, align 1, !dbg !304
  %20 = zext i8 %19 to i32, !dbg !304
  %21 = load i32*, i32** %7, align 8, !dbg !305
  store i32 %20, i32* %21, align 4, !dbg !306
  %22 = load i32*, i32** %7, align 8, !dbg !307
  %23 = load i32, i32* %22, align 4, !dbg !309
  %24 = icmp slt i32 %23, 128, !dbg !310
  br i1 %24, label %25, label %26, !dbg !311

; <label>:25:                                     ; preds = %3
  store i32 1, i32* %4, align 4, !dbg !312
  br label %64, !dbg !312

; <label>:26:                                     ; preds = %3
  %27 = load i32*, i32** %7, align 8, !dbg !313
  %28 = load i32, i32* %27, align 4, !dbg !315
  %29 = icmp eq i32 %28, 129, !dbg !316
  br i1 %29, label %30, label %38, !dbg !317

; <label>:30:                                     ; preds = %26
  %31 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !318
  %32 = getelementptr inbounds %struct.stream, %struct.stream* %31, i32 0, i32 0, !dbg !320
  %33 = load i8*, i8** %32, align 8, !dbg !321
  %34 = getelementptr inbounds i8, i8* %33, i32 1, !dbg !321
  store i8* %34, i8** %32, align 8, !dbg !321
  %35 = load i8, i8* %33, align 1, !dbg !322
  %36 = zext i8 %35 to i32, !dbg !322
  %37 = load i32*, i32** %7, align 8, !dbg !323
  store i32 %36, i32* %37, align 4, !dbg !324
  store i32 1, i32* %4, align 4, !dbg !325
  br label %64, !dbg !325

; <label>:38:                                     ; preds = %26
  %39 = load i32*, i32** %7, align 8, !dbg !326
  %40 = load i32, i32* %39, align 4, !dbg !328
  %41 = icmp eq i32 %40, 130, !dbg !329
  br i1 %41, label %42, label %61, !dbg !330

; <label>:42:                                     ; preds = %38
  %43 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !331
  %44 = getelementptr inbounds %struct.stream, %struct.stream* %43, i32 0, i32 0, !dbg !334
  %45 = load i8*, i8** %44, align 8, !dbg !335
  %46 = getelementptr inbounds i8, i8* %45, i32 1, !dbg !335
  store i8* %46, i8** %44, align 8, !dbg !335
  %47 = load i8, i8* %45, align 1, !dbg !336
  %48 = zext i8 %47 to i32, !dbg !336
  %49 = load i32*, i32** %7, align 8, !dbg !337
  store i32 %48, i32* %49, align 4, !dbg !338
  %50 = load i32*, i32** %7, align 8, !dbg !339
  %51 = load i32, i32* %50, align 4, !dbg !340
  %52 = shl i32 %51, 8, !dbg !341
  %53 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !342
  %54 = getelementptr inbounds %struct.stream, %struct.stream* %53, i32 0, i32 0, !dbg !343
  %55 = load i8*, i8** %54, align 8, !dbg !344
  %56 = getelementptr inbounds i8, i8* %55, i32 1, !dbg !344
  store i8* %56, i8** %54, align 8, !dbg !344
  %57 = load i8, i8* %55, align 1, !dbg !345
  %58 = zext i8 %57 to i32, !dbg !345
  %59 = add nsw i32 %52, %58, !dbg !346
  %60 = load i32*, i32** %7, align 8, !dbg !347
  store i32 %59, i32* %60, align 4, !dbg !348
  store i32 1, i32* %4, align 4, !dbg !349
  br label %64, !dbg !349

; <label>:61:                                     ; preds = %38
  br label %62

; <label>:62:                                     ; preds = %61
  br label %63

; <label>:63:                                     ; preds = %62
  store i32 0, i32* %4, align 4, !dbg !350
  br label %64, !dbg !350

; <label>:64:                                     ; preds = %63, %42, %30, %25
  %65 = load i32, i32* %4, align 4, !dbg !351
  ret i32 %65, !dbg !351
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!22, !23}
!llvm.ident = !{!24}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "[inter]asn.o.i", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!2 = !{!3, !15}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "log_subject_t", file: !4, line: 46, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "utils.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14}
!6 = !DIEnumerator(name: "GUI", value: 0)
!7 = !DIEnumerator(name: "Keyboard", value: 1)
!8 = !DIEnumerator(name: "Clipboard", value: 2)
!9 = !DIEnumerator(name: "Sound", value: 3)
!10 = !DIEnumerator(name: "Protocol", value: 4)
!11 = !DIEnumerator(name: "Graphics", value: 5)
!12 = !DIEnumerator(name: "Core", value: 6)
!13 = !DIEnumerator(name: "SmartCard", value: 7)
!14 = !DIEnumerator(name: "Disk", value: 8)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "log_level_t", file: !4, line: 37, size: 32, align: 32, elements: !16)
!16 = !{!17, !18, !19, !20, !21}
!17 = !DIEnumerator(name: "Debug", value: 0)
!18 = !DIEnumerator(name: "Verbose", value: 1)
!19 = !DIEnumerator(name: "Warning", value: 2)
!20 = !DIEnumerator(name: "Error", value: 3)
!21 = !DIEnumerator(name: "Notice", value: 4)
!22 = !{i32 2, !"Dwarf Version", i32 4}
!23 = !{i32 2, !"Debug Info Version", i32 3}
!24 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!25 = distinct !DISubprogram(name: "ber_parse_header", scope: !26, file: !26, line: 25, type: !27, isLocal: false, isDefinition: true, scopeLine: 26, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !50)
!26 = !DIFile(filename: "asn.c", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!27 = !DISubroutineType(types: !28)
!28 = !{!29, !32, !31, !49}
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_BOOL", file: !30, line: 28, baseType: !31)
!30 = !DIFile(filename: "types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!31 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "STREAM", file: !33, line: 40, baseType: !34)
!33 = !DIFile(filename: "stream.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stream", file: !33, line: 25, size: 576, align: 64, elements: !36)
!36 = !{!37, !40, !41, !42, !44, !45, !46, !47, !48}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !35, file: !33, line: 27, baseType: !38, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !35, file: !33, line: 28, baseType: !38, size: 64, align: 64, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !35, file: !33, line: 29, baseType: !38, size: 64, align: 64, offset: 128)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !35, file: !33, line: 30, baseType: !43, size: 32, align: 32, offset: 192)
!43 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "iso_hdr", scope: !35, file: !33, line: 33, baseType: !38, size: 64, align: 64, offset: 256)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "mcs_hdr", scope: !35, file: !33, line: 34, baseType: !38, size: 64, align: 64, offset: 320)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "sec_hdr", scope: !35, file: !33, line: 35, baseType: !38, size: 64, align: 64, offset: 384)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "rdp_hdr", scope: !35, file: !33, line: 36, baseType: !38, size: 64, align: 64, offset: 448)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "channel_hdr", scope: !35, file: !33, line: 37, baseType: !38, size: 64, align: 64, offset: 512)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!50 = !{}
!51 = !DILocalVariable(name: "s", arg: 1, scope: !25, file: !26, line: 25, type: !32)
!52 = !DIExpression()
!53 = !DILocation(line: 25, column: 25, scope: !25)
!54 = !DILocalVariable(name: "tagval", arg: 2, scope: !25, file: !26, line: 25, type: !31)
!55 = !DILocation(line: 25, column: 32, scope: !25)
!56 = !DILocalVariable(name: "length", arg: 3, scope: !25, file: !26, line: 25, type: !49)
!57 = !DILocation(line: 25, column: 45, scope: !25)
!58 = !DILocalVariable(name: "tag", scope: !25, file: !26, line: 27, type: !31)
!59 = !DILocation(line: 27, column: 6, scope: !25)
!60 = !DILocalVariable(name: "len", scope: !25, file: !26, line: 27, type: !31)
!61 = !DILocation(line: 27, column: 11, scope: !25)
!62 = !DILocation(line: 29, column: 6, scope: !63)
!63 = distinct !DILexicalBlock(scope: !25, file: !26, line: 29, column: 6)
!64 = !DILocation(line: 29, column: 13, scope: !63)
!65 = !DILocation(line: 29, column: 6, scope: !25)
!66 = !DILocation(line: 31, column: 14, scope: !67)
!67 = distinct !DILexicalBlock(scope: !68, file: !26, line: 31, column: 3)
!68 = distinct !DILexicalBlock(scope: !63, file: !26, line: 30, column: 2)
!69 = !DILocation(line: 31, column: 18, scope: !67)
!70 = !DILocation(line: 31, column: 19, scope: !67)
!71 = !DILocation(line: 31, column: 11, scope: !67)
!72 = !DILocation(line: 31, column: 9, scope: !67)
!73 = !DILocation(line: 31, column: 32, scope: !67)
!74 = !DILocation(line: 31, column: 37, scope: !67)
!75 = !DILocation(line: 31, column: 48, scope: !67)
!76 = !DILocation(line: 31, column: 52, scope: !67)
!77 = !DILocation(line: 31, column: 53, scope: !67)
!78 = !DILocation(line: 31, column: 45, scope: !67)
!79 = !DILocation(line: 31, column: 43, scope: !67)
!80 = !DILocation(line: 31, column: 28, scope: !67)
!81 = !DILocation(line: 32, column: 2, scope: !68)
!82 = !DILocation(line: 35, column: 12, scope: !83)
!83 = distinct !DILexicalBlock(scope: !63, file: !26, line: 34, column: 2)
!84 = !DILocation(line: 35, column: 16, scope: !83)
!85 = !DILocation(line: 35, column: 17, scope: !83)
!86 = !DILocation(line: 35, column: 9, scope: !83)
!87 = !DILocation(line: 35, column: 7, scope: !83)
!88 = !DILocation(line: 38, column: 6, scope: !89)
!89 = distinct !DILexicalBlock(scope: !25, file: !26, line: 38, column: 6)
!90 = !DILocation(line: 38, column: 13, scope: !89)
!91 = !DILocation(line: 38, column: 10, scope: !89)
!92 = !DILocation(line: 38, column: 6, scope: !25)
!93 = !DILocation(line: 40, column: 70, scope: !94)
!94 = distinct !DILexicalBlock(scope: !89, file: !26, line: 39, column: 2)
!95 = !DILocation(line: 40, column: 78, scope: !94)
!96 = !DILocation(line: 40, column: 3, scope: !94)
!97 = !DILocation(line: 41, column: 3, scope: !94)
!98 = !DILocation(line: 44, column: 11, scope: !25)
!99 = !DILocation(line: 44, column: 15, scope: !25)
!100 = !DILocation(line: 44, column: 16, scope: !25)
!101 = !DILocation(line: 44, column: 8, scope: !25)
!102 = !DILocation(line: 44, column: 6, scope: !25)
!103 = !DILocation(line: 46, column: 6, scope: !104)
!104 = distinct !DILexicalBlock(scope: !25, file: !26, line: 46, column: 6)
!105 = !DILocation(line: 46, column: 10, scope: !104)
!106 = !DILocation(line: 46, column: 6, scope: !25)
!107 = !DILocation(line: 48, column: 7, scope: !108)
!108 = distinct !DILexicalBlock(scope: !104, file: !26, line: 47, column: 2)
!109 = !DILocation(line: 49, column: 4, scope: !108)
!110 = !DILocation(line: 49, column: 11, scope: !108)
!111 = !DILocation(line: 50, column: 3, scope: !108)
!112 = !DILocation(line: 50, column: 13, scope: !113)
!113 = !DILexicalBlockFile(scope: !108, file: !26, discriminator: 1)
!114 = !DILocation(line: 50, column: 3, scope: !113)
!115 = !DILocation(line: 51, column: 17, scope: !108)
!116 = !DILocation(line: 51, column: 16, scope: !108)
!117 = !DILocation(line: 51, column: 25, scope: !108)
!118 = !DILocation(line: 51, column: 36, scope: !108)
!119 = !DILocation(line: 51, column: 40, scope: !108)
!120 = !DILocation(line: 51, column: 41, scope: !108)
!121 = !DILocation(line: 51, column: 33, scope: !108)
!122 = !DILocation(line: 51, column: 31, scope: !108)
!123 = !DILocation(line: 51, column: 5, scope: !108)
!124 = !DILocation(line: 51, column: 12, scope: !108)
!125 = !DILocation(line: 50, column: 3, scope: !126)
!126 = !DILexicalBlockFile(scope: !108, file: !26, discriminator: 2)
!127 = distinct !{!127, !111}
!128 = !DILocation(line: 52, column: 2, scope: !108)
!129 = !DILocation(line: 54, column: 13, scope: !104)
!130 = !DILocation(line: 54, column: 4, scope: !104)
!131 = !DILocation(line: 54, column: 11, scope: !104)
!132 = !DILocation(line: 56, column: 11, scope: !25)
!133 = !DILocation(line: 56, column: 15, scope: !25)
!134 = !DILocation(line: 56, column: 21, scope: !25)
!135 = !DILocation(line: 56, column: 25, scope: !25)
!136 = !DILocation(line: 56, column: 17, scope: !25)
!137 = !DILocation(line: 56, column: 2, scope: !25)
!138 = !DILocation(line: 57, column: 1, scope: !25)
!139 = distinct !DISubprogram(name: "ber_out_sequence", scope: !26, file: !26, line: 60, type: !140, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !50)
!140 = !DISubroutineType(types: !141)
!141 = !{null, !32, !32}
!142 = !DILocalVariable(name: "out", arg: 1, scope: !139, file: !26, line: 60, type: !32)
!143 = !DILocation(line: 60, column: 25, scope: !139)
!144 = !DILocalVariable(name: "content", arg: 2, scope: !139, file: !26, line: 60, type: !32)
!145 = !DILocation(line: 60, column: 37, scope: !139)
!146 = !DILocalVariable(name: "length", scope: !139, file: !26, line: 62, type: !147)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !148, line: 216, baseType: !149)
!148 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!149 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!150 = !DILocation(line: 62, column: 9, scope: !139)
!151 = !DILocation(line: 63, column: 12, scope: !139)
!152 = !DILocation(line: 63, column: 24, scope: !153)
!153 = !DILexicalBlockFile(scope: !139, file: !26, discriminator: 1)
!154 = !DILocation(line: 63, column: 34, scope: !153)
!155 = !DILocation(line: 63, column: 41, scope: !153)
!156 = !DILocation(line: 63, column: 51, scope: !153)
!157 = !DILocation(line: 63, column: 38, scope: !153)
!158 = !DILocation(line: 63, column: 12, scope: !153)
!159 = !DILocation(line: 63, column: 12, scope: !160)
!160 = !DILexicalBlockFile(scope: !139, file: !26, discriminator: 2)
!161 = !DILocation(line: 63, column: 12, scope: !162)
!162 = !DILexicalBlockFile(scope: !139, file: !26, discriminator: 3)
!163 = !DILocation(line: 63, column: 9, scope: !162)
!164 = !DILocation(line: 64, column: 17, scope: !139)
!165 = !DILocation(line: 64, column: 33, scope: !139)
!166 = !DILocation(line: 64, column: 2, scope: !139)
!167 = !DILocation(line: 65, column: 6, scope: !168)
!168 = distinct !DILexicalBlock(scope: !139, file: !26, line: 65, column: 6)
!169 = !DILocation(line: 65, column: 6, scope: !139)
!170 = !DILocation(line: 66, column: 13, scope: !171)
!171 = distinct !DILexicalBlock(scope: !168, file: !26, line: 66, column: 3)
!172 = !DILocation(line: 66, column: 19, scope: !171)
!173 = !DILocation(line: 66, column: 22, scope: !171)
!174 = !DILocation(line: 66, column: 32, scope: !171)
!175 = !DILocation(line: 66, column: 40, scope: !171)
!176 = !DILocation(line: 66, column: 51, scope: !171)
!177 = !DILocation(line: 66, column: 59, scope: !171)
!178 = !DILocation(line: 66, column: 70, scope: !171)
!179 = !DILocation(line: 66, column: 55, scope: !171)
!180 = !DILocation(line: 66, column: 5, scope: !171)
!181 = !DILocation(line: 66, column: 93, scope: !171)
!182 = !DILocation(line: 66, column: 104, scope: !171)
!183 = !DILocation(line: 66, column: 112, scope: !171)
!184 = !DILocation(line: 66, column: 123, scope: !171)
!185 = !DILocation(line: 66, column: 108, scope: !171)
!186 = !DILocation(line: 66, column: 79, scope: !171)
!187 = !DILocation(line: 66, column: 85, scope: !171)
!188 = !DILocation(line: 66, column: 87, scope: !171)
!189 = !DILocation(line: 66, column: 130, scope: !171)
!190 = !DILocation(line: 67, column: 1, scope: !139)
!191 = distinct !DISubprogram(name: "ber_out_header", scope: !26, file: !26, line: 72, type: !192, isLocal: false, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !50)
!192 = !DISubroutineType(types: !193)
!193 = !{null, !32, !31, !31}
!194 = !DILocalVariable(name: "s", arg: 1, scope: !191, file: !26, line: 72, type: !32)
!195 = !DILocation(line: 72, column: 23, scope: !191)
!196 = !DILocalVariable(name: "tagval", arg: 2, scope: !191, file: !26, line: 72, type: !31)
!197 = !DILocation(line: 72, column: 30, scope: !191)
!198 = !DILocalVariable(name: "length", arg: 3, scope: !191, file: !26, line: 72, type: !31)
!199 = !DILocation(line: 72, column: 42, scope: !191)
!200 = !DILocation(line: 74, column: 6, scope: !201)
!201 = distinct !DILexicalBlock(scope: !191, file: !26, line: 74, column: 6)
!202 = !DILocation(line: 74, column: 13, scope: !201)
!203 = !DILocation(line: 74, column: 6, scope: !191)
!204 = !DILocation(line: 76, column: 21, scope: !205)
!205 = distinct !DILexicalBlock(scope: !206, file: !26, line: 76, column: 3)
!206 = distinct !DILexicalBlock(scope: !201, file: !26, line: 75, column: 2)
!207 = !DILocation(line: 76, column: 29, scope: !205)
!208 = !DILocation(line: 76, column: 35, scope: !205)
!209 = !DILocation(line: 76, column: 19, scope: !205)
!210 = !DILocation(line: 76, column: 8, scope: !205)
!211 = !DILocation(line: 76, column: 12, scope: !205)
!212 = !DILocation(line: 76, column: 13, scope: !205)
!213 = !DILocation(line: 76, column: 17, scope: !205)
!214 = !DILocation(line: 76, column: 58, scope: !205)
!215 = !DILocation(line: 76, column: 66, scope: !205)
!216 = !DILocation(line: 76, column: 57, scope: !205)
!217 = !DILocation(line: 76, column: 46, scope: !205)
!218 = !DILocation(line: 76, column: 50, scope: !205)
!219 = !DILocation(line: 76, column: 51, scope: !205)
!220 = !DILocation(line: 76, column: 55, scope: !205)
!221 = !DILocation(line: 77, column: 2, scope: !206)
!222 = !DILocation(line: 80, column: 17, scope: !223)
!223 = distinct !DILexicalBlock(scope: !201, file: !26, line: 79, column: 2)
!224 = !DILocation(line: 80, column: 6, scope: !223)
!225 = !DILocation(line: 80, column: 10, scope: !223)
!226 = !DILocation(line: 80, column: 11, scope: !223)
!227 = !DILocation(line: 80, column: 15, scope: !223)
!228 = !DILocation(line: 83, column: 6, scope: !229)
!229 = distinct !DILexicalBlock(scope: !191, file: !26, line: 83, column: 6)
!230 = !DILocation(line: 83, column: 13, scope: !229)
!231 = !DILocation(line: 83, column: 6, scope: !191)
!232 = !DILocation(line: 85, column: 6, scope: !233)
!233 = distinct !DILexicalBlock(scope: !229, file: !26, line: 84, column: 2)
!234 = !DILocation(line: 85, column: 10, scope: !233)
!235 = !DILocation(line: 85, column: 11, scope: !233)
!236 = !DILocation(line: 85, column: 15, scope: !233)
!237 = !DILocation(line: 86, column: 21, scope: !238)
!238 = distinct !DILexicalBlock(scope: !233, file: !26, line: 86, column: 3)
!239 = !DILocation(line: 86, column: 29, scope: !238)
!240 = !DILocation(line: 86, column: 35, scope: !238)
!241 = !DILocation(line: 86, column: 19, scope: !238)
!242 = !DILocation(line: 86, column: 8, scope: !238)
!243 = !DILocation(line: 86, column: 12, scope: !238)
!244 = !DILocation(line: 86, column: 13, scope: !238)
!245 = !DILocation(line: 86, column: 17, scope: !238)
!246 = !DILocation(line: 86, column: 58, scope: !238)
!247 = !DILocation(line: 86, column: 66, scope: !238)
!248 = !DILocation(line: 86, column: 57, scope: !238)
!249 = !DILocation(line: 86, column: 46, scope: !238)
!250 = !DILocation(line: 86, column: 50, scope: !238)
!251 = !DILocation(line: 86, column: 51, scope: !238)
!252 = !DILocation(line: 86, column: 55, scope: !238)
!253 = !DILocation(line: 87, column: 2, scope: !233)
!254 = !DILocation(line: 89, column: 17, scope: !229)
!255 = !DILocation(line: 89, column: 6, scope: !229)
!256 = !DILocation(line: 89, column: 10, scope: !229)
!257 = !DILocation(line: 89, column: 11, scope: !229)
!258 = !DILocation(line: 89, column: 15, scope: !229)
!259 = !DILocation(line: 90, column: 1, scope: !191)
!260 = distinct !DISubprogram(name: "ber_out_integer", scope: !26, file: !26, line: 94, type: !261, isLocal: false, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !50)
!261 = !DISubroutineType(types: !262)
!262 = !{null, !32, !31}
!263 = !DILocalVariable(name: "s", arg: 1, scope: !260, file: !26, line: 94, type: !32)
!264 = !DILocation(line: 94, column: 24, scope: !260)
!265 = !DILocalVariable(name: "value", arg: 2, scope: !260, file: !26, line: 94, type: !31)
!266 = !DILocation(line: 94, column: 31, scope: !260)
!267 = !DILocation(line: 96, column: 17, scope: !260)
!268 = !DILocation(line: 96, column: 2, scope: !260)
!269 = !DILocation(line: 97, column: 20, scope: !270)
!270 = distinct !DILexicalBlock(scope: !260, file: !26, line: 97, column: 2)
!271 = !DILocation(line: 97, column: 27, scope: !270)
!272 = !DILocation(line: 97, column: 33, scope: !270)
!273 = !DILocation(line: 97, column: 18, scope: !270)
!274 = !DILocation(line: 97, column: 7, scope: !270)
!275 = !DILocation(line: 97, column: 11, scope: !270)
!276 = !DILocation(line: 97, column: 12, scope: !270)
!277 = !DILocation(line: 97, column: 16, scope: !270)
!278 = !DILocation(line: 97, column: 56, scope: !270)
!279 = !DILocation(line: 97, column: 63, scope: !270)
!280 = !DILocation(line: 97, column: 55, scope: !270)
!281 = !DILocation(line: 97, column: 44, scope: !270)
!282 = !DILocation(line: 97, column: 48, scope: !270)
!283 = !DILocation(line: 97, column: 49, scope: !270)
!284 = !DILocation(line: 97, column: 53, scope: !270)
!285 = !DILocation(line: 98, column: 1, scope: !260)
!286 = distinct !DISubprogram(name: "ber_in_header", scope: !26, file: !26, line: 101, type: !287, isLocal: false, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !50)
!287 = !DISubroutineType(types: !288)
!288 = !{!29, !32, !49, !49}
!289 = !DILocalVariable(name: "s", arg: 1, scope: !286, file: !26, line: 101, type: !32)
!290 = !DILocation(line: 101, column: 22, scope: !286)
!291 = !DILocalVariable(name: "tagval", arg: 2, scope: !286, file: !26, line: 101, type: !49)
!292 = !DILocation(line: 101, column: 30, scope: !286)
!293 = !DILocalVariable(name: "decoded_len", arg: 3, scope: !286, file: !26, line: 101, type: !49)
!294 = !DILocation(line: 101, column: 43, scope: !286)
!295 = !DILocation(line: 103, column: 15, scope: !286)
!296 = !DILocation(line: 103, column: 19, scope: !286)
!297 = !DILocation(line: 103, column: 20, scope: !286)
!298 = !DILocation(line: 103, column: 12, scope: !286)
!299 = !DILocation(line: 103, column: 3, scope: !286)
!300 = !DILocation(line: 103, column: 10, scope: !286)
!301 = !DILocation(line: 104, column: 20, scope: !286)
!302 = !DILocation(line: 104, column: 24, scope: !286)
!303 = !DILocation(line: 104, column: 25, scope: !286)
!304 = !DILocation(line: 104, column: 17, scope: !286)
!305 = !DILocation(line: 104, column: 3, scope: !286)
!306 = !DILocation(line: 104, column: 15, scope: !286)
!307 = !DILocation(line: 106, column: 7, scope: !308)
!308 = distinct !DILexicalBlock(scope: !286, file: !26, line: 106, column: 6)
!309 = !DILocation(line: 106, column: 6, scope: !308)
!310 = !DILocation(line: 106, column: 19, scope: !308)
!311 = !DILocation(line: 106, column: 6, scope: !286)
!312 = !DILocation(line: 107, column: 3, scope: !308)
!313 = !DILocation(line: 108, column: 12, scope: !314)
!314 = distinct !DILexicalBlock(scope: !308, file: !26, line: 108, column: 11)
!315 = !DILocation(line: 108, column: 11, scope: !314)
!316 = !DILocation(line: 108, column: 24, scope: !314)
!317 = !DILocation(line: 108, column: 11, scope: !308)
!318 = !DILocation(line: 110, column: 21, scope: !319)
!319 = distinct !DILexicalBlock(scope: !314, file: !26, line: 109, column: 2)
!320 = !DILocation(line: 110, column: 25, scope: !319)
!321 = !DILocation(line: 110, column: 26, scope: !319)
!322 = !DILocation(line: 110, column: 18, scope: !319)
!323 = !DILocation(line: 110, column: 4, scope: !319)
!324 = !DILocation(line: 110, column: 16, scope: !319)
!325 = !DILocation(line: 111, column: 3, scope: !319)
!326 = !DILocation(line: 113, column: 12, scope: !327)
!327 = distinct !DILexicalBlock(scope: !314, file: !26, line: 113, column: 11)
!328 = !DILocation(line: 113, column: 11, scope: !327)
!329 = !DILocation(line: 113, column: 24, scope: !327)
!330 = !DILocation(line: 113, column: 11, scope: !314)
!331 = !DILocation(line: 115, column: 23, scope: !332)
!332 = distinct !DILexicalBlock(scope: !333, file: !26, line: 115, column: 3)
!333 = distinct !DILexicalBlock(scope: !327, file: !26, line: 114, column: 2)
!334 = !DILocation(line: 115, column: 27, scope: !332)
!335 = !DILocation(line: 115, column: 28, scope: !332)
!336 = !DILocation(line: 115, column: 20, scope: !332)
!337 = !DILocation(line: 115, column: 6, scope: !332)
!338 = !DILocation(line: 115, column: 18, scope: !332)
!339 = !DILocation(line: 115, column: 51, scope: !332)
!340 = !DILocation(line: 115, column: 50, scope: !332)
!341 = !DILocation(line: 115, column: 64, scope: !332)
!342 = !DILocation(line: 115, column: 75, scope: !332)
!343 = !DILocation(line: 115, column: 79, scope: !332)
!344 = !DILocation(line: 115, column: 80, scope: !332)
!345 = !DILocation(line: 115, column: 72, scope: !332)
!346 = !DILocation(line: 115, column: 70, scope: !332)
!347 = !DILocation(line: 115, column: 34, scope: !332)
!348 = !DILocation(line: 115, column: 46, scope: !332)
!349 = !DILocation(line: 116, column: 3, scope: !333)
!350 = !DILocation(line: 119, column: 2, scope: !286)
!351 = !DILocation(line: 120, column: 1, scope: !286)
