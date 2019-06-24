; ModuleID = './[inter]stream.o.i'
source_filename = "./[inter]stream.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stream = type { i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8* }

@_out_utf16s.icv_local_to_utf16 = internal global i8* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"out_utf16s(), iconv(2) fail, errno %d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"UTF-16LE\00", align 1
@g_codepage = external global [16 x i8], align 16
@.str.2 = private unnamed_addr constant [48 x i8] c"locale_to_utf16(), iconv_open[%s -> %s] fail %p\00", align 1

; Function Attrs: nounwind uwtable
define void @s_realloc(%struct.stream*, i32) #0 !dbg !65 {
  %3 = alloca %struct.stream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.stream* %0, %struct.stream** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %3, metadata !68, metadata !69), !dbg !70
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !71, metadata !69), !dbg !72
  call void @llvm.dbg.declare(metadata i8** %5, metadata !73, metadata !69), !dbg !74
  %6 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !75
  %7 = getelementptr inbounds %struct.stream, %struct.stream* %6, i32 0, i32 3, !dbg !77
  %8 = load i32, i32* %7, align 8, !dbg !77
  %9 = load i32, i32* %4, align 4, !dbg !78
  %10 = icmp uge i32 %8, %9, !dbg !79
  br i1 %10, label %11, label %12, !dbg !80

; <label>:11:                                     ; preds = %2
  br label %116, !dbg !81

; <label>:12:                                     ; preds = %2
  %13 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !82
  %14 = getelementptr inbounds %struct.stream, %struct.stream* %13, i32 0, i32 2, !dbg !83
  %15 = load i8*, i8** %14, align 8, !dbg !83
  store i8* %15, i8** %5, align 8, !dbg !84
  %16 = load i32, i32* %4, align 4, !dbg !85
  %17 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !86
  %18 = getelementptr inbounds %struct.stream, %struct.stream* %17, i32 0, i32 3, !dbg !87
  store i32 %16, i32* %18, align 8, !dbg !88
  %19 = load i8*, i8** %5, align 8, !dbg !89
  %20 = load i32, i32* %4, align 4, !dbg !90
  %21 = zext i32 %20 to i64, !dbg !90
  %22 = call i8* @xrealloc(i8* %19, i64 %21), !dbg !91
  %23 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !92
  %24 = getelementptr inbounds %struct.stream, %struct.stream* %23, i32 0, i32 2, !dbg !93
  store i8* %22, i8** %24, align 8, !dbg !94
  %25 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !95
  %26 = getelementptr inbounds %struct.stream, %struct.stream* %25, i32 0, i32 2, !dbg !96
  %27 = load i8*, i8** %26, align 8, !dbg !96
  %28 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !97
  %29 = getelementptr inbounds %struct.stream, %struct.stream* %28, i32 0, i32 0, !dbg !98
  %30 = load i8*, i8** %29, align 8, !dbg !98
  %31 = load i8*, i8** %5, align 8, !dbg !99
  %32 = ptrtoint i8* %30 to i64, !dbg !100
  %33 = ptrtoint i8* %31 to i64, !dbg !100
  %34 = sub i64 %32, %33, !dbg !100
  %35 = getelementptr inbounds i8, i8* %27, i64 %34, !dbg !101
  %36 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !102
  %37 = getelementptr inbounds %struct.stream, %struct.stream* %36, i32 0, i32 0, !dbg !103
  store i8* %35, i8** %37, align 8, !dbg !104
  %38 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !105
  %39 = getelementptr inbounds %struct.stream, %struct.stream* %38, i32 0, i32 2, !dbg !106
  %40 = load i8*, i8** %39, align 8, !dbg !106
  %41 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !107
  %42 = getelementptr inbounds %struct.stream, %struct.stream* %41, i32 0, i32 1, !dbg !108
  %43 = load i8*, i8** %42, align 8, !dbg !108
  %44 = load i8*, i8** %5, align 8, !dbg !109
  %45 = ptrtoint i8* %43 to i64, !dbg !110
  %46 = ptrtoint i8* %44 to i64, !dbg !110
  %47 = sub i64 %45, %46, !dbg !110
  %48 = getelementptr inbounds i8, i8* %40, i64 %47, !dbg !111
  %49 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !112
  %50 = getelementptr inbounds %struct.stream, %struct.stream* %49, i32 0, i32 1, !dbg !113
  store i8* %48, i8** %50, align 8, !dbg !114
  %51 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !115
  %52 = getelementptr inbounds %struct.stream, %struct.stream* %51, i32 0, i32 2, !dbg !116
  %53 = load i8*, i8** %52, align 8, !dbg !116
  %54 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !117
  %55 = getelementptr inbounds %struct.stream, %struct.stream* %54, i32 0, i32 4, !dbg !118
  %56 = load i8*, i8** %55, align 8, !dbg !118
  %57 = load i8*, i8** %5, align 8, !dbg !119
  %58 = ptrtoint i8* %56 to i64, !dbg !120
  %59 = ptrtoint i8* %57 to i64, !dbg !120
  %60 = sub i64 %58, %59, !dbg !120
  %61 = getelementptr inbounds i8, i8* %53, i64 %60, !dbg !121
  %62 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !122
  %63 = getelementptr inbounds %struct.stream, %struct.stream* %62, i32 0, i32 4, !dbg !123
  store i8* %61, i8** %63, align 8, !dbg !124
  %64 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !125
  %65 = getelementptr inbounds %struct.stream, %struct.stream* %64, i32 0, i32 2, !dbg !126
  %66 = load i8*, i8** %65, align 8, !dbg !126
  %67 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !127
  %68 = getelementptr inbounds %struct.stream, %struct.stream* %67, i32 0, i32 5, !dbg !128
  %69 = load i8*, i8** %68, align 8, !dbg !128
  %70 = load i8*, i8** %5, align 8, !dbg !129
  %71 = ptrtoint i8* %69 to i64, !dbg !130
  %72 = ptrtoint i8* %70 to i64, !dbg !130
  %73 = sub i64 %71, %72, !dbg !130
  %74 = getelementptr inbounds i8, i8* %66, i64 %73, !dbg !131
  %75 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !132
  %76 = getelementptr inbounds %struct.stream, %struct.stream* %75, i32 0, i32 5, !dbg !133
  store i8* %74, i8** %76, align 8, !dbg !134
  %77 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !135
  %78 = getelementptr inbounds %struct.stream, %struct.stream* %77, i32 0, i32 2, !dbg !136
  %79 = load i8*, i8** %78, align 8, !dbg !136
  %80 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !137
  %81 = getelementptr inbounds %struct.stream, %struct.stream* %80, i32 0, i32 6, !dbg !138
  %82 = load i8*, i8** %81, align 8, !dbg !138
  %83 = load i8*, i8** %5, align 8, !dbg !139
  %84 = ptrtoint i8* %82 to i64, !dbg !140
  %85 = ptrtoint i8* %83 to i64, !dbg !140
  %86 = sub i64 %84, %85, !dbg !140
  %87 = getelementptr inbounds i8, i8* %79, i64 %86, !dbg !141
  %88 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !142
  %89 = getelementptr inbounds %struct.stream, %struct.stream* %88, i32 0, i32 6, !dbg !143
  store i8* %87, i8** %89, align 8, !dbg !144
  %90 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !145
  %91 = getelementptr inbounds %struct.stream, %struct.stream* %90, i32 0, i32 2, !dbg !146
  %92 = load i8*, i8** %91, align 8, !dbg !146
  %93 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !147
  %94 = getelementptr inbounds %struct.stream, %struct.stream* %93, i32 0, i32 7, !dbg !148
  %95 = load i8*, i8** %94, align 8, !dbg !148
  %96 = load i8*, i8** %5, align 8, !dbg !149
  %97 = ptrtoint i8* %95 to i64, !dbg !150
  %98 = ptrtoint i8* %96 to i64, !dbg !150
  %99 = sub i64 %97, %98, !dbg !150
  %100 = getelementptr inbounds i8, i8* %92, i64 %99, !dbg !151
  %101 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !152
  %102 = getelementptr inbounds %struct.stream, %struct.stream* %101, i32 0, i32 7, !dbg !153
  store i8* %100, i8** %102, align 8, !dbg !154
  %103 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !155
  %104 = getelementptr inbounds %struct.stream, %struct.stream* %103, i32 0, i32 2, !dbg !156
  %105 = load i8*, i8** %104, align 8, !dbg !156
  %106 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !157
  %107 = getelementptr inbounds %struct.stream, %struct.stream* %106, i32 0, i32 8, !dbg !158
  %108 = load i8*, i8** %107, align 8, !dbg !158
  %109 = load i8*, i8** %5, align 8, !dbg !159
  %110 = ptrtoint i8* %108 to i64, !dbg !160
  %111 = ptrtoint i8* %109 to i64, !dbg !160
  %112 = sub i64 %110, %111, !dbg !160
  %113 = getelementptr inbounds i8, i8* %105, i64 %112, !dbg !161
  %114 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !162
  %115 = getelementptr inbounds %struct.stream, %struct.stream* %114, i32 0, i32 8, !dbg !163
  store i8* %113, i8** %115, align 8, !dbg !164
  br label %116, !dbg !165

; <label>:116:                                    ; preds = %12, %11
  ret void, !dbg !166
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @xrealloc(i8*, i64) #2

; Function Attrs: nounwind uwtable
define void @s_reset(%struct.stream*) #0 !dbg !168 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca %struct.stream, align 8
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !171, metadata !69), !dbg !172
  call void @llvm.dbg.declare(metadata %struct.stream* %3, metadata !173, metadata !69), !dbg !174
  %4 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !175
  %5 = bitcast %struct.stream* %3 to i8*, !dbg !176
  %6 = bitcast %struct.stream* %4 to i8*, !dbg !176
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 72, i32 8, i1 false), !dbg !176
  %7 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !177
  %8 = bitcast %struct.stream* %7 to i8*, !dbg !178
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 72, i32 8, i1 false), !dbg !178
  %9 = getelementptr inbounds %struct.stream, %struct.stream* %3, i32 0, i32 3, !dbg !179
  %10 = load i32, i32* %9, align 8, !dbg !179
  %11 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !180
  %12 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 3, !dbg !181
  store i32 %10, i32* %12, align 8, !dbg !182
  %13 = getelementptr inbounds %struct.stream, %struct.stream* %3, i32 0, i32 2, !dbg !183
  %14 = load i8*, i8** %13, align 8, !dbg !183
  %15 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !184
  %16 = getelementptr inbounds %struct.stream, %struct.stream* %15, i32 0, i32 2, !dbg !185
  store i8* %14, i8** %16, align 8, !dbg !186
  %17 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !187
  %18 = getelementptr inbounds %struct.stream, %struct.stream* %17, i32 0, i32 0, !dbg !188
  store i8* %14, i8** %18, align 8, !dbg !189
  %19 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !190
  %20 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 1, !dbg !191
  store i8* %14, i8** %20, align 8, !dbg !192
  ret void, !dbg !193
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define void @s_free(%struct.stream*) #0 !dbg !194 {
  %2 = alloca %struct.stream*, align 8
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !195, metadata !69), !dbg !196
  %3 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !197
  %4 = getelementptr inbounds %struct.stream, %struct.stream* %3, i32 0, i32 2, !dbg !198
  %5 = load i8*, i8** %4, align 8, !dbg !198
  call void @free(i8* %5) #9, !dbg !199
  %6 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !200
  %7 = bitcast %struct.stream* %6 to i8*, !dbg !200
  call void @free(i8* %7) #9, !dbg !201
  ret void, !dbg !202
}

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind uwtable
define void @out_utf16s_padded(%struct.stream*, i8*, i64, i8 zeroext) #0 !dbg !203 {
  %5 = alloca %struct.stream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.stream* %0, %struct.stream** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %5, metadata !206, metadata !69), !dbg !207
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !208, metadata !69), !dbg !209
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !210, metadata !69), !dbg !211
  store i8 %3, i8* %8, align 1
  call void @llvm.dbg.declare(metadata i8* %8, metadata !212, metadata !69), !dbg !213
  call void @llvm.dbg.declare(metadata i64* %9, metadata !214, metadata !69), !dbg !215
  call void @llvm.dbg.declare(metadata i64* %10, metadata !216, metadata !69), !dbg !217
  %11 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !218
  %12 = load i64, i64* %7, align 8, !dbg !219
  %13 = sub i64 %12, 2, !dbg !220
  %14 = load i8*, i8** %6, align 8, !dbg !221
  %15 = call i64 @_out_utf16s(%struct.stream* %11, i64 %13, i8* %14), !dbg !222
  store i64 %15, i64* %10, align 8, !dbg !223
  %16 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !224
  %17 = getelementptr inbounds %struct.stream, %struct.stream* %16, i32 0, i32 0, !dbg !226
  %18 = load i8*, i8** %17, align 8, !dbg !226
  %19 = bitcast i8* %18 to i16*, !dbg !227
  store i16 0, i16* %19, align 2, !dbg !228
  %20 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !229
  %21 = getelementptr inbounds %struct.stream, %struct.stream* %20, i32 0, i32 0, !dbg !230
  %22 = load i8*, i8** %21, align 8, !dbg !231
  %23 = getelementptr inbounds i8, i8* %22, i64 2, !dbg !231
  store i8* %23, i8** %21, align 8, !dbg !231
  %24 = load i64, i64* %10, align 8, !dbg !232
  %25 = add i64 %24, 2, !dbg !232
  store i64 %25, i64* %10, align 8, !dbg !232
  store i64 0, i64* %9, align 8, !dbg !233
  br label %26, !dbg !235

; <label>:26:                                     ; preds = %38, %4
  %27 = load i64, i64* %9, align 8, !dbg !236
  %28 = load i64, i64* %7, align 8, !dbg !239
  %29 = load i64, i64* %10, align 8, !dbg !240
  %30 = sub i64 %28, %29, !dbg !241
  %31 = icmp ult i64 %27, %30, !dbg !242
  br i1 %31, label %32, label %41, !dbg !243

; <label>:32:                                     ; preds = %26
  %33 = load i8, i8* %8, align 1, !dbg !244
  %34 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !245
  %35 = getelementptr inbounds %struct.stream, %struct.stream* %34, i32 0, i32 0, !dbg !246
  %36 = load i8*, i8** %35, align 8, !dbg !247
  %37 = getelementptr inbounds i8, i8* %36, i32 1, !dbg !247
  store i8* %37, i8** %35, align 8, !dbg !247
  store i8 %33, i8* %36, align 1, !dbg !248
  br label %38, !dbg !249

; <label>:38:                                     ; preds = %32
  %39 = load i64, i64* %9, align 8, !dbg !250
  %40 = add i64 %39, 1, !dbg !250
  store i64 %40, i64* %9, align 8, !dbg !250
  br label %26, !dbg !252, !llvm.loop !253

; <label>:41:                                     ; preds = %26
  ret void, !dbg !255
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @_out_utf16s(%struct.stream*, i64, i8*) #5 !dbg !40 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.stream*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.stream* %0, %struct.stream** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %5, metadata !256, metadata !69), !dbg !257
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !258, metadata !69), !dbg !259
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !260, metadata !69), !dbg !261
  call void @llvm.dbg.declare(metadata i64* %8, metadata !262, metadata !69), !dbg !263
  call void @llvm.dbg.declare(metadata i64* %9, metadata !264, metadata !69), !dbg !265
  call void @llvm.dbg.declare(metadata i64* %10, metadata !266, metadata !69), !dbg !267
  call void @llvm.dbg.declare(metadata i8** %11, metadata !268, metadata !69), !dbg !269
  call void @llvm.dbg.declare(metadata i8** %12, metadata !270, metadata !69), !dbg !271
  %13 = load i8*, i8** %7, align 8, !dbg !272
  %14 = icmp eq i8* %13, null, !dbg !274
  br i1 %14, label %15, label %16, !dbg !275

; <label>:15:                                     ; preds = %3
  store i64 0, i64* %4, align 8, !dbg !276
  br label %67, !dbg !276

; <label>:16:                                     ; preds = %3
  %17 = load i8*, i8** @_out_utf16s.icv_local_to_utf16, align 8, !dbg !277
  %18 = icmp ne i8* %17, null, !dbg !277
  br i1 %18, label %21, label %19, !dbg !279

; <label>:19:                                     ; preds = %16
  %20 = call i8* @local_to_utf16(), !dbg !280
  store i8* %20, i8** @_out_utf16s.icv_local_to_utf16, align 8, !dbg !282
  br label %21, !dbg !283

; <label>:21:                                     ; preds = %19, %16
  %22 = load i8*, i8** %7, align 8, !dbg !284
  %23 = call i64 @strlen(i8* %22) #10, !dbg !285
  store i64 %23, i64* %9, align 8, !dbg !286
  %24 = load i64, i64* %6, align 8, !dbg !287
  %25 = icmp ne i64 %24, 0, !dbg !287
  br i1 %25, label %26, label %28, !dbg !287

; <label>:26:                                     ; preds = %21
  %27 = load i64, i64* %6, align 8, !dbg !288
  br label %43, !dbg !290

; <label>:28:                                     ; preds = %21
  %29 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !291
  %30 = getelementptr inbounds %struct.stream, %struct.stream* %29, i32 0, i32 3, !dbg !293
  %31 = load i32, i32* %30, align 8, !dbg !293
  %32 = zext i32 %31 to i64, !dbg !294
  %33 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !295
  %34 = getelementptr inbounds %struct.stream, %struct.stream* %33, i32 0, i32 0, !dbg !296
  %35 = load i8*, i8** %34, align 8, !dbg !296
  %36 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !297
  %37 = getelementptr inbounds %struct.stream, %struct.stream* %36, i32 0, i32 2, !dbg !298
  %38 = load i8*, i8** %37, align 8, !dbg !298
  %39 = ptrtoint i8* %35 to i64, !dbg !299
  %40 = ptrtoint i8* %38 to i64, !dbg !299
  %41 = sub i64 %39, %40, !dbg !299
  %42 = sub nsw i64 %32, %41, !dbg !300
  br label %43, !dbg !301

; <label>:43:                                     ; preds = %28, %26
  %44 = phi i64 [ %27, %26 ], [ %42, %28 ], !dbg !302
  store i64 %44, i64* %10, align 8, !dbg !304
  %45 = load i8*, i8** %7, align 8, !dbg !305
  store i8* %45, i8** %11, align 8, !dbg !306
  %46 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !307
  %47 = getelementptr inbounds %struct.stream, %struct.stream* %46, i32 0, i32 0, !dbg !308
  %48 = load i8*, i8** %47, align 8, !dbg !308
  store i8* %48, i8** %12, align 8, !dbg !309
  %49 = load i8*, i8** @_out_utf16s.icv_local_to_utf16, align 8, !dbg !310
  %50 = call i64 @libiconv(i8* %49, i8** %11, i64* %9, i8** %12, i64* %10), !dbg !312
  %51 = icmp eq i64 %50, -1, !dbg !313
  br i1 %51, label %52, label %55, !dbg !314

; <label>:52:                                     ; preds = %43
  %53 = call i32* @__errno_location() #1, !dbg !315
  %54 = load i32, i32* %53, align 4, !dbg !317
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i32 0, i32 0), i32 %54), !dbg !318
  call void @abort() #11, !dbg !320
  unreachable, !dbg !320

; <label>:55:                                     ; preds = %43
  %56 = load i8*, i8** %12, align 8, !dbg !321
  %57 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !322
  %58 = getelementptr inbounds %struct.stream, %struct.stream* %57, i32 0, i32 0, !dbg !323
  %59 = load i8*, i8** %58, align 8, !dbg !323
  %60 = ptrtoint i8* %56 to i64, !dbg !324
  %61 = ptrtoint i8* %59 to i64, !dbg !324
  %62 = sub i64 %60, %61, !dbg !324
  store i64 %62, i64* %8, align 8, !dbg !325
  %63 = load i8*, i8** %12, align 8, !dbg !326
  %64 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !327
  %65 = getelementptr inbounds %struct.stream, %struct.stream* %64, i32 0, i32 0, !dbg !328
  store i8* %63, i8** %65, align 8, !dbg !329
  %66 = load i64, i64* %8, align 8, !dbg !330
  store i64 %66, i64* %4, align 8, !dbg !331
  br label %67, !dbg !331

; <label>:67:                                     ; preds = %55, %15
  %68 = load i64, i64* %4, align 8, !dbg !332
  ret i64 %68, !dbg !332
}

; Function Attrs: nounwind uwtable
define void @out_utf16s(%struct.stream*, i8*) #0 !dbg !333 {
  %3 = alloca %struct.stream*, align 8
  %4 = alloca i8*, align 8
  store %struct.stream* %0, %struct.stream** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %3, metadata !336, metadata !69), !dbg !337
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !338, metadata !69), !dbg !339
  %5 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !340
  %6 = load i8*, i8** %4, align 8, !dbg !341
  %7 = call i64 @_out_utf16s(%struct.stream* %5, i64 0, i8* %6), !dbg !342
  %8 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !343
  %9 = getelementptr inbounds %struct.stream, %struct.stream* %8, i32 0, i32 0, !dbg !345
  %10 = load i8*, i8** %9, align 8, !dbg !345
  %11 = bitcast i8* %10 to i16*, !dbg !346
  store i16 0, i16* %11, align 2, !dbg !347
  %12 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !348
  %13 = getelementptr inbounds %struct.stream, %struct.stream* %12, i32 0, i32 0, !dbg !349
  %14 = load i8*, i8** %13, align 8, !dbg !350
  %15 = getelementptr inbounds i8, i8* %14, i64 2, !dbg !350
  store i8* %15, i8** %13, align 8, !dbg !350
  ret void, !dbg !351
}

; Function Attrs: nounwind uwtable
define void @out_utf16s_no_eos(%struct.stream*, i8*) #0 !dbg !352 {
  %3 = alloca %struct.stream*, align 8
  %4 = alloca i8*, align 8
  store %struct.stream* %0, %struct.stream** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %3, metadata !353, metadata !69), !dbg !354
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !355, metadata !69), !dbg !356
  %5 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !357
  %6 = load i8*, i8** %4, align 8, !dbg !358
  %7 = call i64 @_out_utf16s(%struct.stream* %5, i64 0, i8* %6), !dbg !359
  ret void, !dbg !360
}

; Function Attrs: nounwind uwtable
define i64 @in_ansi_string(%struct.stream*, i8*, i64) #0 !dbg !361 {
  %4 = alloca %struct.stream*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.stream* %0, %struct.stream** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %4, metadata !364, metadata !69), !dbg !365
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !366, metadata !69), !dbg !367
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !368, metadata !69), !dbg !369
  call void @llvm.dbg.declare(metadata i8** %7, metadata !370, metadata !69), !dbg !371
  call void @llvm.dbg.declare(metadata i64* %8, metadata !372, metadata !69), !dbg !373
  %9 = load i8*, i8** %5, align 8, !dbg !374
  store i8* %9, i8** %7, align 8, !dbg !375
  %10 = load i64, i64* %6, align 8, !dbg !376
  store i64 %10, i64* %8, align 8, !dbg !377
  br label %11, !dbg !378

; <label>:11:                                     ; preds = %31, %3
  %12 = load i64, i64* %8, align 8, !dbg !379
  %13 = add i64 %12, -1, !dbg !379
  store i64 %13, i64* %8, align 8, !dbg !379
  %14 = icmp ne i64 %12, 0, !dbg !381
  br i1 %14, label %15, label %34, !dbg !381

; <label>:15:                                     ; preds = %11
  %16 = load i64, i64* %8, align 8, !dbg !382
  %17 = icmp eq i64 %16, 0, !dbg !385
  br i1 %17, label %18, label %19, !dbg !386

; <label>:18:                                     ; preds = %15
  br label %34, !dbg !387

; <label>:19:                                     ; preds = %15
  %20 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !388
  %21 = getelementptr inbounds %struct.stream, %struct.stream* %20, i32 0, i32 0, !dbg !389
  %22 = load i8*, i8** %21, align 8, !dbg !390
  %23 = getelementptr inbounds i8, i8* %22, i32 1, !dbg !390
  store i8* %23, i8** %21, align 8, !dbg !390
  %24 = load i8, i8* %22, align 1, !dbg !391
  %25 = load i8*, i8** %7, align 8, !dbg !392
  store i8 %24, i8* %25, align 1, !dbg !393
  %26 = load i8*, i8** %7, align 8, !dbg !394
  %27 = load i8, i8* %26, align 1, !dbg !396
  %28 = sext i8 %27 to i32, !dbg !396
  %29 = icmp eq i32 %28, 0, !dbg !397
  br i1 %29, label %30, label %31, !dbg !398

; <label>:30:                                     ; preds = %19
  br label %34, !dbg !399

; <label>:31:                                     ; preds = %19
  %32 = load i8*, i8** %7, align 8, !dbg !400
  %33 = getelementptr inbounds i8, i8* %32, i32 1, !dbg !400
  store i8* %33, i8** %7, align 8, !dbg !400
  br label %11, !dbg !401, !llvm.loop !403

; <label>:34:                                     ; preds = %30, %18, %11
  %35 = load i64, i64* %6, align 8, !dbg !404
  %36 = load i64, i64* %8, align 8, !dbg !405
  %37 = sub i64 %35, %36, !dbg !406
  ret i64 %37, !dbg !407
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #6

declare i64 @libiconv(i8*, i8**, i64*, i8**, i64*) #2

declare void @logger(i32, i32, i8*, ...) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #7

; Function Attrs: noreturn nounwind
declare void @abort() #8

; Function Attrs: nounwind uwtable
define internal i8* @local_to_utf16() #0 !dbg !408 {
  %1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !411, metadata !69), !dbg !412
  %2 = call i8* @libiconv_open(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_codepage, i32 0, i32 0)), !dbg !413
  store i8* %2, i8** %1, align 8, !dbg !414
  %3 = load i8*, i8** %1, align 8, !dbg !415
  %4 = icmp eq i8* %3, inttoptr (i64 -1 to i8*), !dbg !417
  br i1 %4, label %5, label %7, !dbg !418

; <label>:5:                                      ; preds = %0
  %6 = load i8*, i8** %1, align 8, !dbg !419
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_codepage, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* %6), !dbg !421
  call void @abort() #11, !dbg !422
  unreachable, !dbg !422

; <label>:7:                                      ; preds = %0
  %8 = load i8*, i8** %1, align 8, !dbg !423
  ret i8* %8, !dbg !424
}

declare i8* @libiconv_open(i8*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly }
attributes #11 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!62, !63}
!llvm.ident = !{!64}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !22, globals: !38)
!1 = !DIFile(filename: "[inter]stream.o.i", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
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
!22 = !{!23, !27, !28, !31, !33, !34, !36}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !25, line: 41, baseType: !26)
!25 = !DIFile(filename: "types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!26 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !29, line: 216, baseType: !30)
!29 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!30 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!32 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!35 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "libiconv_t", file: !37, line: 46, baseType: !27)
!37 = !DIFile(filename: "/usr/local/include/iconv.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!38 = !{!39}
!39 = distinct !DIGlobalVariable(name: "icv_local_to_utf16", scope: !40, file: !41, line: 86, type: !36, isLocal: true, isDefinition: true, variable: i8** @_out_utf16s.icv_local_to_utf16)
!40 = distinct !DISubprogram(name: "_out_utf16s", scope: !41, file: !41, line: 84, type: !42, isLocal: true, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !61)
!41 = !DIFile(filename: "stream.c", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!42 = !DISubroutineType(types: !43)
!43 = !{!28, !44, !28, !59}
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "STREAM", file: !45, line: 40, baseType: !46)
!45 = !DIFile(filename: "stream.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stream", file: !45, line: 25, size: 576, align: 64, elements: !48)
!48 = !{!49, !50, !51, !52, !54, !55, !56, !57, !58}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !47, file: !45, line: 27, baseType: !34, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !47, file: !45, line: 28, baseType: !34, size: 64, align: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !47, file: !45, line: 29, baseType: !34, size: 64, align: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !47, file: !45, line: 30, baseType: !53, size: 32, align: 32, offset: 192)
!53 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "iso_hdr", scope: !47, file: !45, line: 33, baseType: !34, size: 64, align: 64, offset: 256)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "mcs_hdr", scope: !47, file: !45, line: 34, baseType: !34, size: 64, align: 64, offset: 320)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "sec_hdr", scope: !47, file: !45, line: 35, baseType: !34, size: 64, align: 64, offset: 384)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "rdp_hdr", scope: !47, file: !45, line: 36, baseType: !34, size: 64, align: 64, offset: 448)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "channel_hdr", scope: !47, file: !45, line: 37, baseType: !34, size: 64, align: 64, offset: 512)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!61 = !{}
!62 = !{i32 2, !"Dwarf Version", i32 4}
!63 = !{i32 2, !"Debug Info Version", i32 3}
!64 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!65 = distinct !DISubprogram(name: "s_realloc", scope: !41, file: !41, line: 29, type: !66, isLocal: false, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !61)
!66 = !DISubroutineType(types: !67)
!67 = !{null, !44, !53}
!68 = !DILocalVariable(name: "s", arg: 1, scope: !65, file: !41, line: 29, type: !44)
!69 = !DIExpression()
!70 = !DILocation(line: 29, column: 18, scope: !65)
!71 = !DILocalVariable(name: "size", arg: 2, scope: !65, file: !41, line: 29, type: !53)
!72 = !DILocation(line: 29, column: 34, scope: !65)
!73 = !DILocalVariable(name: "data", scope: !65, file: !41, line: 31, type: !34)
!74 = !DILocation(line: 31, column: 23, scope: !65)
!75 = !DILocation(line: 33, column: 12, scope: !76)
!76 = distinct !DILexicalBlock(scope: !65, file: !41, line: 33, column: 12)
!77 = !DILocation(line: 33, column: 15, scope: !76)
!78 = !DILocation(line: 33, column: 23, scope: !76)
!79 = !DILocation(line: 33, column: 20, scope: !76)
!80 = !DILocation(line: 33, column: 12, scope: !65)
!81 = !DILocation(line: 34, column: 16, scope: !76)
!82 = !DILocation(line: 36, column: 15, scope: !65)
!83 = !DILocation(line: 36, column: 18, scope: !65)
!84 = !DILocation(line: 36, column: 13, scope: !65)
!85 = !DILocation(line: 37, column: 18, scope: !65)
!86 = !DILocation(line: 37, column: 8, scope: !65)
!87 = !DILocation(line: 37, column: 11, scope: !65)
!88 = !DILocation(line: 37, column: 16, scope: !65)
!89 = !DILocation(line: 38, column: 27, scope: !65)
!90 = !DILocation(line: 38, column: 33, scope: !65)
!91 = !DILocation(line: 38, column: 18, scope: !65)
!92 = !DILocation(line: 38, column: 8, scope: !65)
!93 = !DILocation(line: 38, column: 11, scope: !65)
!94 = !DILocation(line: 38, column: 16, scope: !65)
!95 = !DILocation(line: 39, column: 15, scope: !65)
!96 = !DILocation(line: 39, column: 18, scope: !65)
!97 = !DILocation(line: 39, column: 26, scope: !65)
!98 = !DILocation(line: 39, column: 29, scope: !65)
!99 = !DILocation(line: 39, column: 33, scope: !65)
!100 = !DILocation(line: 39, column: 31, scope: !65)
!101 = !DILocation(line: 39, column: 23, scope: !65)
!102 = !DILocation(line: 39, column: 8, scope: !65)
!103 = !DILocation(line: 39, column: 11, scope: !65)
!104 = !DILocation(line: 39, column: 13, scope: !65)
!105 = !DILocation(line: 40, column: 17, scope: !65)
!106 = !DILocation(line: 40, column: 20, scope: !65)
!107 = !DILocation(line: 40, column: 28, scope: !65)
!108 = !DILocation(line: 40, column: 31, scope: !65)
!109 = !DILocation(line: 40, column: 37, scope: !65)
!110 = !DILocation(line: 40, column: 35, scope: !65)
!111 = !DILocation(line: 40, column: 25, scope: !65)
!112 = !DILocation(line: 40, column: 8, scope: !65)
!113 = !DILocation(line: 40, column: 11, scope: !65)
!114 = !DILocation(line: 40, column: 15, scope: !65)
!115 = !DILocation(line: 41, column: 21, scope: !65)
!116 = !DILocation(line: 41, column: 24, scope: !65)
!117 = !DILocation(line: 41, column: 32, scope: !65)
!118 = !DILocation(line: 41, column: 35, scope: !65)
!119 = !DILocation(line: 41, column: 45, scope: !65)
!120 = !DILocation(line: 41, column: 43, scope: !65)
!121 = !DILocation(line: 41, column: 29, scope: !65)
!122 = !DILocation(line: 41, column: 8, scope: !65)
!123 = !DILocation(line: 41, column: 11, scope: !65)
!124 = !DILocation(line: 41, column: 19, scope: !65)
!125 = !DILocation(line: 42, column: 21, scope: !65)
!126 = !DILocation(line: 42, column: 24, scope: !65)
!127 = !DILocation(line: 42, column: 32, scope: !65)
!128 = !DILocation(line: 42, column: 35, scope: !65)
!129 = !DILocation(line: 42, column: 45, scope: !65)
!130 = !DILocation(line: 42, column: 43, scope: !65)
!131 = !DILocation(line: 42, column: 29, scope: !65)
!132 = !DILocation(line: 42, column: 8, scope: !65)
!133 = !DILocation(line: 42, column: 11, scope: !65)
!134 = !DILocation(line: 42, column: 19, scope: !65)
!135 = !DILocation(line: 43, column: 21, scope: !65)
!136 = !DILocation(line: 43, column: 24, scope: !65)
!137 = !DILocation(line: 43, column: 32, scope: !65)
!138 = !DILocation(line: 43, column: 35, scope: !65)
!139 = !DILocation(line: 43, column: 45, scope: !65)
!140 = !DILocation(line: 43, column: 43, scope: !65)
!141 = !DILocation(line: 43, column: 29, scope: !65)
!142 = !DILocation(line: 43, column: 8, scope: !65)
!143 = !DILocation(line: 43, column: 11, scope: !65)
!144 = !DILocation(line: 43, column: 19, scope: !65)
!145 = !DILocation(line: 44, column: 21, scope: !65)
!146 = !DILocation(line: 44, column: 24, scope: !65)
!147 = !DILocation(line: 44, column: 32, scope: !65)
!148 = !DILocation(line: 44, column: 35, scope: !65)
!149 = !DILocation(line: 44, column: 45, scope: !65)
!150 = !DILocation(line: 44, column: 43, scope: !65)
!151 = !DILocation(line: 44, column: 29, scope: !65)
!152 = !DILocation(line: 44, column: 8, scope: !65)
!153 = !DILocation(line: 44, column: 11, scope: !65)
!154 = !DILocation(line: 44, column: 19, scope: !65)
!155 = !DILocation(line: 45, column: 25, scope: !65)
!156 = !DILocation(line: 45, column: 28, scope: !65)
!157 = !DILocation(line: 45, column: 36, scope: !65)
!158 = !DILocation(line: 45, column: 39, scope: !65)
!159 = !DILocation(line: 45, column: 53, scope: !65)
!160 = !DILocation(line: 45, column: 51, scope: !65)
!161 = !DILocation(line: 45, column: 33, scope: !65)
!162 = !DILocation(line: 45, column: 8, scope: !65)
!163 = !DILocation(line: 45, column: 11, scope: !65)
!164 = !DILocation(line: 45, column: 23, scope: !65)
!165 = !DILocation(line: 46, column: 1, scope: !65)
!166 = !DILocation(line: 46, column: 1, scope: !167)
!167 = !DILexicalBlockFile(scope: !65, file: !41, discriminator: 1)
!168 = distinct !DISubprogram(name: "s_reset", scope: !41, file: !41, line: 49, type: !169, isLocal: false, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !61)
!169 = !DISubroutineType(types: !170)
!170 = !{null, !44}
!171 = !DILocalVariable(name: "s", arg: 1, scope: !168, file: !41, line: 49, type: !44)
!172 = !DILocation(line: 49, column: 16, scope: !168)
!173 = !DILocalVariable(name: "tmp", scope: !168, file: !41, line: 51, type: !47)
!174 = !DILocation(line: 51, column: 17, scope: !168)
!175 = !DILocation(line: 52, column: 10, scope: !168)
!176 = !DILocation(line: 52, column: 9, scope: !168)
!177 = !DILocation(line: 53, column: 10, scope: !168)
!178 = !DILocation(line: 53, column: 3, scope: !168)
!179 = !DILocation(line: 54, column: 17, scope: !168)
!180 = !DILocation(line: 54, column: 3, scope: !168)
!181 = !DILocation(line: 54, column: 6, scope: !168)
!182 = !DILocation(line: 54, column: 11, scope: !168)
!183 = !DILocation(line: 55, column: 33, scope: !168)
!184 = !DILocation(line: 55, column: 19, scope: !168)
!185 = !DILocation(line: 55, column: 22, scope: !168)
!186 = !DILocation(line: 55, column: 27, scope: !168)
!187 = !DILocation(line: 55, column: 12, scope: !168)
!188 = !DILocation(line: 55, column: 15, scope: !168)
!189 = !DILocation(line: 55, column: 17, scope: !168)
!190 = !DILocation(line: 55, column: 3, scope: !168)
!191 = !DILocation(line: 55, column: 6, scope: !168)
!192 = !DILocation(line: 55, column: 10, scope: !168)
!193 = !DILocation(line: 56, column: 1, scope: !168)
!194 = distinct !DISubprogram(name: "s_free", scope: !41, file: !41, line: 60, type: !169, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !61)
!195 = !DILocalVariable(name: "s", arg: 1, scope: !194, file: !41, line: 60, type: !44)
!196 = !DILocation(line: 60, column: 15, scope: !194)
!197 = !DILocation(line: 62, column: 13, scope: !194)
!198 = !DILocation(line: 62, column: 16, scope: !194)
!199 = !DILocation(line: 62, column: 8, scope: !194)
!200 = !DILocation(line: 63, column: 13, scope: !194)
!201 = !DILocation(line: 63, column: 8, scope: !194)
!202 = !DILocation(line: 64, column: 1, scope: !194)
!203 = distinct !DISubprogram(name: "out_utf16s_padded", scope: !41, file: !41, line: 123, type: !204, isLocal: false, isDefinition: true, scopeLine: 124, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !61)
!204 = !DISubroutineType(types: !205)
!205 = !{null, !44, !59, !28, !35}
!206 = !DILocalVariable(name: "s", arg: 1, scope: !203, file: !41, line: 123, type: !44)
!207 = !DILocation(line: 123, column: 26, scope: !203)
!208 = !DILocalVariable(name: "string", arg: 2, scope: !203, file: !41, line: 123, type: !59)
!209 = !DILocation(line: 123, column: 41, scope: !203)
!210 = !DILocalVariable(name: "length", arg: 3, scope: !203, file: !41, line: 123, type: !28)
!211 = !DILocation(line: 123, column: 56, scope: !203)
!212 = !DILocalVariable(name: "pad", arg: 4, scope: !203, file: !41, line: 123, type: !35)
!213 = !DILocation(line: 123, column: 78, scope: !203)
!214 = !DILocalVariable(name: "i", scope: !203, file: !41, line: 125, type: !28)
!215 = !DILocation(line: 125, column: 10, scope: !203)
!216 = !DILocalVariable(name: "bl", scope: !203, file: !41, line: 125, type: !28)
!217 = !DILocation(line: 125, column: 13, scope: !203)
!218 = !DILocation(line: 126, column: 20, scope: !203)
!219 = !DILocation(line: 126, column: 23, scope: !203)
!220 = !DILocation(line: 126, column: 30, scope: !203)
!221 = !DILocation(line: 126, column: 35, scope: !203)
!222 = !DILocation(line: 126, column: 8, scope: !203)
!223 = !DILocation(line: 126, column: 6, scope: !203)
!224 = !DILocation(line: 129, column: 18, scope: !225)
!225 = distinct !DILexicalBlock(scope: !203, file: !41, line: 129, column: 3)
!226 = !DILocation(line: 129, column: 22, scope: !225)
!227 = !DILocation(line: 129, column: 5, scope: !225)
!228 = !DILocation(line: 129, column: 25, scope: !225)
!229 = !DILocation(line: 129, column: 31, scope: !225)
!230 = !DILocation(line: 129, column: 35, scope: !225)
!231 = !DILocation(line: 129, column: 37, scope: !225)
!232 = !DILocation(line: 130, column: 6, scope: !203)
!233 = !DILocation(line: 132, column: 10, scope: !234)
!234 = distinct !DILexicalBlock(scope: !203, file: !41, line: 132, column: 3)
!235 = !DILocation(line: 132, column: 8, scope: !234)
!236 = !DILocation(line: 132, column: 15, scope: !237)
!237 = !DILexicalBlockFile(scope: !238, file: !41, discriminator: 1)
!238 = distinct !DILexicalBlock(scope: !234, file: !41, line: 132, column: 3)
!239 = !DILocation(line: 132, column: 20, scope: !237)
!240 = !DILocation(line: 132, column: 29, scope: !237)
!241 = !DILocation(line: 132, column: 27, scope: !237)
!242 = !DILocation(line: 132, column: 17, scope: !237)
!243 = !DILocation(line: 132, column: 3, scope: !237)
!244 = !DILocation(line: 133, column: 19, scope: !238)
!245 = !DILocation(line: 133, column: 8, scope: !238)
!246 = !DILocation(line: 133, column: 12, scope: !238)
!247 = !DILocation(line: 133, column: 13, scope: !238)
!248 = !DILocation(line: 133, column: 17, scope: !238)
!249 = !DILocation(line: 133, column: 5, scope: !238)
!250 = !DILocation(line: 132, column: 35, scope: !251)
!251 = !DILexicalBlockFile(scope: !238, file: !41, discriminator: 2)
!252 = !DILocation(line: 132, column: 3, scope: !251)
!253 = distinct !{!253, !254}
!254 = !DILocation(line: 132, column: 3, scope: !203)
!255 = !DILocation(line: 134, column: 1, scope: !203)
!256 = !DILocalVariable(name: "s", arg: 1, scope: !40, file: !41, line: 84, type: !44)
!257 = !DILocation(line: 84, column: 20, scope: !40)
!258 = !DILocalVariable(name: "maxlength", arg: 2, scope: !40, file: !41, line: 84, type: !28)
!259 = !DILocation(line: 84, column: 30, scope: !40)
!260 = !DILocalVariable(name: "string", arg: 3, scope: !40, file: !41, line: 84, type: !59)
!261 = !DILocation(line: 84, column: 53, scope: !40)
!262 = !DILocalVariable(name: "bl", scope: !40, file: !41, line: 87, type: !28)
!263 = !DILocation(line: 87, column: 10, scope: !40)
!264 = !DILocalVariable(name: "ibl", scope: !40, file: !41, line: 87, type: !28)
!265 = !DILocation(line: 87, column: 14, scope: !40)
!266 = !DILocalVariable(name: "obl", scope: !40, file: !41, line: 87, type: !28)
!267 = !DILocation(line: 87, column: 19, scope: !40)
!268 = !DILocalVariable(name: "pin", scope: !40, file: !41, line: 88, type: !59)
!269 = !DILocation(line: 88, column: 15, scope: !40)
!270 = !DILocalVariable(name: "pout", scope: !40, file: !41, line: 89, type: !31)
!271 = !DILocation(line: 89, column: 9, scope: !40)
!272 = !DILocation(line: 91, column: 7, scope: !273)
!273 = distinct !DILexicalBlock(scope: !40, file: !41, line: 91, column: 7)
!274 = !DILocation(line: 91, column: 14, scope: !273)
!275 = !DILocation(line: 91, column: 7, scope: !40)
!276 = !DILocation(line: 92, column: 5, scope: !273)
!277 = !DILocation(line: 94, column: 8, scope: !278)
!278 = distinct !DILexicalBlock(scope: !40, file: !41, line: 94, column: 7)
!279 = !DILocation(line: 94, column: 7, scope: !40)
!280 = !DILocation(line: 96, column: 28, scope: !281)
!281 = distinct !DILexicalBlock(scope: !278, file: !41, line: 95, column: 5)
!282 = !DILocation(line: 96, column: 26, scope: !281)
!283 = !DILocation(line: 97, column: 5, scope: !281)
!284 = !DILocation(line: 99, column: 16, scope: !40)
!285 = !DILocation(line: 99, column: 9, scope: !40)
!286 = !DILocation(line: 99, column: 7, scope: !40)
!287 = !DILocation(line: 100, column: 9, scope: !40)
!288 = !DILocation(line: 100, column: 21, scope: !289)
!289 = !DILexicalBlockFile(scope: !40, file: !41, discriminator: 1)
!290 = !DILocation(line: 100, column: 9, scope: !289)
!291 = !DILocation(line: 100, column: 43, scope: !292)
!292 = !DILexicalBlockFile(scope: !40, file: !41, discriminator: 2)
!293 = !DILocation(line: 100, column: 47, scope: !292)
!294 = !DILocation(line: 100, column: 42, scope: !292)
!295 = !DILocation(line: 100, column: 56, scope: !292)
!296 = !DILocation(line: 100, column: 60, scope: !292)
!297 = !DILocation(line: 100, column: 65, scope: !292)
!298 = !DILocation(line: 100, column: 69, scope: !292)
!299 = !DILocation(line: 100, column: 62, scope: !292)
!300 = !DILocation(line: 100, column: 52, scope: !292)
!301 = !DILocation(line: 100, column: 9, scope: !292)
!302 = !DILocation(line: 100, column: 9, scope: !303)
!303 = !DILexicalBlockFile(scope: !40, file: !41, discriminator: 3)
!304 = !DILocation(line: 100, column: 7, scope: !303)
!305 = !DILocation(line: 101, column: 9, scope: !40)
!306 = !DILocation(line: 101, column: 7, scope: !40)
!307 = !DILocation(line: 102, column: 19, scope: !40)
!308 = !DILocation(line: 102, column: 22, scope: !40)
!309 = !DILocation(line: 102, column: 8, scope: !40)
!310 = !DILocation(line: 104, column: 12, scope: !311)
!311 = distinct !DILexicalBlock(scope: !40, file: !41, line: 104, column: 6)
!312 = !DILocation(line: 104, column: 6, scope: !311)
!313 = !DILocation(line: 104, column: 67, scope: !311)
!314 = !DILocation(line: 104, column: 6, scope: !40)
!315 = !DILocation(line: 106, column: 73, scope: !316)
!316 = distinct !DILexicalBlock(scope: !311, file: !41, line: 105, column: 5)
!317 = !DILocation(line: 106, column: 72, scope: !316)
!318 = !DILocation(line: 106, column: 7, scope: !319)
!319 = !DILexicalBlockFile(scope: !316, file: !41, discriminator: 1)
!320 = !DILocation(line: 107, column: 7, scope: !316)
!321 = !DILocation(line: 110, column: 24, scope: !40)
!322 = !DILocation(line: 110, column: 31, scope: !40)
!323 = !DILocation(line: 110, column: 34, scope: !40)
!324 = !DILocation(line: 110, column: 29, scope: !40)
!325 = !DILocation(line: 110, column: 6, scope: !40)
!326 = !DILocation(line: 112, column: 27, scope: !40)
!327 = !DILocation(line: 112, column: 3, scope: !40)
!328 = !DILocation(line: 112, column: 6, scope: !40)
!329 = !DILocation(line: 112, column: 8, scope: !40)
!330 = !DILocation(line: 114, column: 10, scope: !40)
!331 = !DILocation(line: 114, column: 3, scope: !40)
!332 = !DILocation(line: 115, column: 1, scope: !40)
!333 = distinct !DISubprogram(name: "out_utf16s", scope: !41, file: !41, line: 140, type: !334, isLocal: false, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !61)
!334 = !DISubroutineType(types: !335)
!335 = !{null, !44, !59}
!336 = !DILocalVariable(name: "s", arg: 1, scope: !333, file: !41, line: 140, type: !44)
!337 = !DILocation(line: 140, column: 19, scope: !333)
!338 = !DILocalVariable(name: "string", arg: 2, scope: !333, file: !41, line: 140, type: !59)
!339 = !DILocation(line: 140, column: 34, scope: !333)
!340 = !DILocation(line: 142, column: 15, scope: !333)
!341 = !DILocation(line: 142, column: 21, scope: !333)
!342 = !DILocation(line: 142, column: 3, scope: !333)
!343 = !DILocation(line: 145, column: 18, scope: !344)
!344 = distinct !DILexicalBlock(scope: !333, file: !41, line: 145, column: 3)
!345 = !DILocation(line: 145, column: 22, scope: !344)
!346 = !DILocation(line: 145, column: 5, scope: !344)
!347 = !DILocation(line: 145, column: 25, scope: !344)
!348 = !DILocation(line: 145, column: 31, scope: !344)
!349 = !DILocation(line: 145, column: 35, scope: !344)
!350 = !DILocation(line: 145, column: 37, scope: !344)
!351 = !DILocation(line: 146, column: 1, scope: !333)
!352 = distinct !DISubprogram(name: "out_utf16s_no_eos", scope: !41, file: !41, line: 152, type: !334, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !61)
!353 = !DILocalVariable(name: "s", arg: 1, scope: !352, file: !41, line: 152, type: !44)
!354 = !DILocation(line: 152, column: 26, scope: !352)
!355 = !DILocalVariable(name: "string", arg: 2, scope: !352, file: !41, line: 152, type: !59)
!356 = !DILocation(line: 152, column: 41, scope: !352)
!357 = !DILocation(line: 154, column: 15, scope: !352)
!358 = !DILocation(line: 154, column: 21, scope: !352)
!359 = !DILocation(line: 154, column: 3, scope: !352)
!360 = !DILocation(line: 155, column: 1, scope: !352)
!361 = distinct !DISubprogram(name: "in_ansi_string", scope: !41, file: !41, line: 161, type: !362, isLocal: false, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !61)
!362 = !DISubroutineType(types: !363)
!363 = !{!28, !44, !31, !28}
!364 = !DILocalVariable(name: "s", arg: 1, scope: !361, file: !41, line: 161, type: !44)
!365 = !DILocation(line: 161, column: 23, scope: !361)
!366 = !DILocalVariable(name: "string", arg: 2, scope: !361, file: !41, line: 161, type: !31)
!367 = !DILocation(line: 161, column: 32, scope: !361)
!368 = !DILocalVariable(name: "len", arg: 3, scope: !361, file: !41, line: 161, type: !28)
!369 = !DILocation(line: 161, column: 47, scope: !361)
!370 = !DILocalVariable(name: "ps", scope: !361, file: !41, line: 163, type: !31)
!371 = !DILocation(line: 163, column: 9, scope: !361)
!372 = !DILocalVariable(name: "left", scope: !361, file: !41, line: 164, type: !28)
!373 = !DILocation(line: 164, column: 10, scope: !361)
!374 = !DILocation(line: 165, column: 8, scope: !361)
!375 = !DILocation(line: 165, column: 6, scope: !361)
!376 = !DILocation(line: 167, column: 10, scope: !361)
!377 = !DILocation(line: 167, column: 8, scope: !361)
!378 = !DILocation(line: 168, column: 3, scope: !361)
!379 = !DILocation(line: 168, column: 13, scope: !380)
!380 = !DILexicalBlockFile(scope: !361, file: !41, discriminator: 1)
!381 = !DILocation(line: 168, column: 3, scope: !380)
!382 = !DILocation(line: 170, column: 9, scope: !383)
!383 = distinct !DILexicalBlock(scope: !384, file: !41, line: 170, column: 9)
!384 = distinct !DILexicalBlock(scope: !361, file: !41, line: 169, column: 3)
!385 = !DILocation(line: 170, column: 14, scope: !383)
!386 = !DILocation(line: 170, column: 9, scope: !384)
!387 = !DILocation(line: 171, column: 7, scope: !383)
!388 = !DILocation(line: 173, column: 14, scope: !384)
!389 = !DILocation(line: 173, column: 18, scope: !384)
!390 = !DILocation(line: 173, column: 19, scope: !384)
!391 = !DILocation(line: 173, column: 11, scope: !384)
!392 = !DILocation(line: 173, column: 6, scope: !384)
!393 = !DILocation(line: 173, column: 9, scope: !384)
!394 = !DILocation(line: 175, column: 10, scope: !395)
!395 = distinct !DILexicalBlock(scope: !384, file: !41, line: 175, column: 9)
!396 = !DILocation(line: 175, column: 9, scope: !395)
!397 = !DILocation(line: 175, column: 13, scope: !395)
!398 = !DILocation(line: 175, column: 9, scope: !384)
!399 = !DILocation(line: 176, column: 7, scope: !395)
!400 = !DILocation(line: 178, column: 7, scope: !384)
!401 = !DILocation(line: 168, column: 3, scope: !402)
!402 = !DILexicalBlockFile(scope: !361, file: !41, discriminator: 2)
!403 = distinct !{!403, !378}
!404 = !DILocation(line: 181, column: 10, scope: !361)
!405 = !DILocation(line: 181, column: 16, scope: !361)
!406 = !DILocation(line: 181, column: 14, scope: !361)
!407 = !DILocation(line: 181, column: 3, scope: !361)
!408 = distinct !DISubprogram(name: "local_to_utf16", scope: !41, file: !41, line: 67, type: !409, isLocal: true, isDefinition: true, scopeLine: 68, isOptimized: false, unit: !0, variables: !61)
!409 = !DISubroutineType(types: !410)
!410 = !{!36}
!411 = !DILocalVariable(name: "icv", scope: !408, file: !41, line: 69, type: !36)
!412 = !DILocation(line: 69, column: 10, scope: !408)
!413 = !DILocation(line: 70, column: 8, scope: !408)
!414 = !DILocation(line: 70, column: 7, scope: !408)
!415 = !DILocation(line: 71, column: 7, scope: !416)
!416 = distinct !DILexicalBlock(scope: !408, file: !41, line: 71, column: 7)
!417 = !DILocation(line: 71, column: 11, scope: !416)
!418 = !DILocation(line: 71, column: 7, scope: !408)
!419 = !DILocation(line: 74, column: 29, scope: !420)
!420 = distinct !DILexicalBlock(scope: !416, file: !41, line: 72, column: 3)
!421 = !DILocation(line: 73, column: 5, scope: !420)
!422 = !DILocation(line: 75, column: 5, scope: !420)
!423 = !DILocation(line: 77, column: 10, scope: !408)
!424 = !DILocation(line: 77, column: 3, scope: !408)
